; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $057", ROMX[$4000], BANK[$57]

	dec  c                                           ; $4000: $0d
	inc  bc                                          ; $4001: $03
	ld   l, d                                        ; $4002: $6a
	add  a                                           ; $4003: $87
	adc  h                                           ; $4004: $8c
	ld   h, a                                        ; $4005: $67
	ld   a, e                                        ; $4006: $7b
	rst  $38                                         ; $4007: $ff
	rst  $38                                         ; $4008: $ff
	sub  $d6                                         ; $4009: $d6 $d6
	sub  $9f                                         ; $400b: $d6 $9f
	dec  c                                           ; $400d: $0d
	nop                                              ; $400e: $00
	ld   a, [bc]                                     ; $400f: $0a
	ld   bc, $7463                                   ; $4010: $01 $63 $74
	halt                                             ; $4013: $76
	sbc  [hl]                                        ; $4014: $9e
	sub  b                                           ; $4015: $90
	ld   d, h                                        ; $4016: $54
	ld   [bc], a                                     ; $4017: $02
	ld   a, a                                        ; $4018: $7f
	ld   e, c                                        ; $4019: $59
	ld   a, b                                        ; $401a: $78
	ld   e, l                                        ; $401b: $5d
	ld   l, a                                        ; $401c: $6f
	sub  c                                           ; $401d: $91
	rst  $38                                         ; $401e: $ff
	rst  $38                                         ; $401f: $ff
	dec  c                                           ; $4020: $0d
	ld   [bc], a                                     ; $4021: $02
	and  l                                           ; $4022: $a5
	inc  b                                           ; $4023: $04
	xor  d                                           ; $4024: $aa
	sub  b                                           ; $4025: $90
	ld   [bc], a                                     ; $4026: $02
	jr   nz, jr_057_402d                             ; $4027: $20 $04

	xor  d                                           ; $4029: $aa
	sbc  [hl]                                        ; $402a: $9e
	dec  c                                           ; $402b: $0d
	ld   e, d                                        ; $402c: $5a

jr_057_402d:
	and  c                                           ; $402d: $a1
	ld   a, [hl]                                     ; $402e: $7e
	sbc  b                                           ; $402f: $98
	adc  h                                           ; $4030: $8c
	ld   h, l                                        ; $4031: $65
	sub  l                                           ; $4032: $95
	ld   d, h                                        ; $4033: $54
	sbc  a                                           ; $4034: $9f
	dec  c                                           ; $4035: $0d
	nop                                              ; $4036: $00
	ld   a, [bc]                                     ; $4037: $0a
	dec  c                                           ; $4038: $0d
	nop                                              ; $4039: $00
	nop                                              ; $403a: $00
	rrca                                             ; $403b: $0f
	nop                                              ; $403c: $00
	ld   bc, $1e09                                   ; $403d: $01 $09 $1e
	nop                                              ; $4040: $00
	rrca                                             ; $4041: $0f
	nop                                              ; $4042: $00
	ld   bc, $6301                                   ; $4043: $01 $01 $63
	ld   e, l                                        ; $4046: $5d
	sub  a                                           ; $4047: $97
	ld   h, e                                        ; $4048: $63
	and  c                                           ; $4049: $a1
	ld   a, h                                        ; $404a: $7c
	ld   h, l                                        ; $404b: $65
	sub  e                                           ; $404c: $93
	adc  l                                           ; $404d: $8d
	ld   [hl], c                                     ; $404e: $71
	ld   [hl], h                                     ; $404f: $74
	dec  c                                           ; $4050: $0d
	inc  b                                           ; $4051: $04
	ld   c, c                                        ; $4052: $49
	ld   [hl], l                                     ; $4053: $75
	ld   h, a                                        ; $4054: $67
	ld   e, c                                        ; $4055: $59
	ld   sp, hl                                      ; $4056: $f9
	dec  c                                           ; $4057: $0d
	nop                                              ; $4058: $00
	ld   a, [bc]                                     ; $4059: $0a
	inc  e                                           ; $405a: $1c
	ld   bc, $0000                                   ; $405b: $01 $00 $00
	ld   bc, $546b                                   ; $405e: $01 $6b $54
	ld   [hl], l                                     ; $4061: $75
	ld   h, a                                        ; $4062: $67
	ld   a, e                                        ; $4063: $7b
	rst  $38                                         ; $4064: $ff
	rst  $38                                         ; $4065: $ff
	halt                                             ; $4066: $76
	sbc  b                                           ; $4067: $98
	ld   l, l                                        ; $4068: $6d
	ld   [hl], h                                     ; $4069: $74
	ld   [hl], h                                     ; $406a: $74
	dec  c                                           ; $406b: $0d
	ld   [bc], a                                     ; $406c: $02
	sbc  l                                           ; $406d: $9d
	ld   d, h                                        ; $406e: $54
	ld   a, b                                        ; $406f: $78
	sub  a                                           ; $4070: $97
	sbc  [hl]                                        ; $4071: $9e
	ld   e, b                                        ; $4072: $58
	ld   h, e                                        ; $4073: $63
	ld   d, d                                        ; $4074: $52
	adc  c                                           ; $4075: $89
	ld   d, h                                        ; $4076: $54
	sub  d                                           ; $4077: $92
	dec  c                                           ; $4078: $0d
	ld   d, b                                        ; $4079: $50
	adc  l                                           ; $407a: $8d
	sub  b                                           ; $407b: $90
	ld   a, h                                        ; $407c: $7c
	ld   [hl], l                                     ; $407d: $75
	ld   h, a                                        ; $407e: $67
	ld   a, e                                        ; $407f: $7b
	sbc  a                                           ; $4080: $9f
	dec  c                                           ; $4081: $0d
	nop                                              ; $4082: $00
	ld   a, [bc]                                     ; $4083: $0a
	add  hl, de                                      ; $4084: $19
	dec  b                                           ; $4085: $05
	inc  bc                                          ; $4086: $03
	inc  b                                           ; $4087: $04
	xor  b                                           ; $4088: $a8
	inc  b                                           ; $4089: $04
	xor  c                                           ; $408a: $a9
	ld   [hl], l                                     ; $408b: $75
	ld   h, a                                        ; $408c: $67
	ld   a, e                                        ; $408d: $7b
	nop                                              ; $408e: $00
	nop                                              ; $408f: $00
	ld   [bc], a                                     ; $4090: $02
	and  [hl]                                        ; $4091: $a6
	inc  b                                           ; $4092: $04
	rra                                              ; $4093: $1f
	inc  b                                           ; $4094: $04
	jr   nz, jr_057_410c                             ; $4095: $20 $75

	ld   h, a                                        ; $4097: $67
	ld   a, e                                        ; $4098: $7b
	nop                                              ; $4099: $00
	ld   bc, $a502                                   ; $409a: $01 $02 $a5
	inc  b                                           ; $409d: $04
	add  hl, hl                                      ; $409e: $29
	ld   l, l                                        ; $409f: $6d
	ld   a, h                                        ; $40a0: $7c
	and  c                                           ; $40a1: $a1
	ld   [hl], l                                     ; $40a2: $75
	sub  b                                           ; $40a3: $90
	dec  b                                           ; $40a4: $05
	dec  d                                           ; $40a5: $15
	ld   d, d                                        ; $40a6: $52
	ld   [hl], l                                     ; $40a7: $75
	ld   h, a                                        ; $40a8: $67
	ld   e, c                                        ; $40a9: $59
	ld   sp, hl                                      ; $40aa: $f9
	nop                                              ; $40ab: $00
	ld   [bc], a                                     ; $40ac: $02
	rlca                                             ; $40ad: $07
	xor  $01                                         ; $40ae: $ee $01
	ld   [bc], a                                     ; $40b0: $02
	inc  bc                                          ; $40b1: $03
	ld   bc, $2000                                   ; $40b2: $01 $00 $20
	nop                                              ; $40b5: $00
	rlca                                             ; $40b6: $07
	ld   e, h                                        ; $40b7: $5c
	ld   [bc], a                                     ; $40b8: $02
	ld   [bc], a                                     ; $40b9: $02
	inc  bc                                          ; $40ba: $03
	ld   bc, $2001                                   ; $40bb: $01 $01 $20
	nop                                              ; $40be: $00
	rlca                                             ; $40bf: $07
	ret  z                                           ; $40c0: $c8

	ld   [bc], a                                     ; $40c1: $02
	ld   [bc], a                                     ; $40c2: $02
	inc  bc                                          ; $40c3: $03
	ld   bc, $2002                                   ; $40c4: $01 $02 $20
	nop                                              ; $40c7: $00
	ld   b, $01                                      ; $40c8: $06 $01
	inc  bc                                          ; $40ca: $03
	rrca                                             ; $40cb: $0f
	nop                                              ; $40cc: $00
	ld   bc, $0401                                   ; $40cd: $01 $01 $04
	xor  b                                           ; $40d0: $a8
	inc  b                                           ; $40d1: $04
	xor  c                                           ; $40d2: $a9
	ld   [hl], l                                     ; $40d3: $75
	ld   h, a                                        ; $40d4: $67
	ld   a, e                                        ; $40d5: $7b
	rst  $38                                         ; $40d6: $ff
	rst  $38                                         ; $40d7: $ff
	dec  c                                           ; $40d8: $0d
	nop                                              ; $40d9: $00
	ld   a, [bc]                                     ; $40da: $0a
	inc  e                                           ; $40db: $1c
	ld   bc, $0202                                   ; $40dc: $01 $02 $02
	dec  e                                           ; $40df: $1d
	ld   b, b                                        ; $40e0: $40
	ld   de, $1103                                   ; $40e1: $11 $03 $11
	ld   bc, $2902                                   ; $40e4: $01 $02 $29
	nop                                              ; $40e7: $00
	ld   bc, $546b                                   ; $40e8: $01 $6b $54
	ld   e, c                                        ; $40eb: $59
	sub  b                                           ; $40ec: $90
	inc  b                                           ; $40ed: $04
	dec  hl                                          ; $40ee: $2b
	sbc  d                                           ; $40ef: $9a
	adc  h                                           ; $40f0: $8c
	ld   l, c                                        ; $40f1: $69
	and  c                                           ; $40f2: $a1
	ld   e, a                                        ; $40f3: $5f
	ld   [hl], a                                     ; $40f4: $77
	sbc  [hl]                                        ; $40f5: $9e
	dec  c                                           ; $40f6: $0d
	nop                                              ; $40f7: $00
	dec  b                                           ; $40f8: $05
	ld   b, b                                        ; $40f9: $40
	ld   c, b                                        ; $40fa: $48
	ld   [bc], a                                     ; $40fb: $02
	nop                                              ; $40fc: $00
	nop                                              ; $40fd: $00
	ld   bc, $9a02                                   ; $40fe: $01 $02 $9a
	ld   e, e                                        ; $4101: $5b
	ld   a, b                                        ; $4102: $78
	and  c                                           ; $4103: $a1
	ld   l, [hl]                                     ; $4104: $6e
	ld   e, c                                        ; $4105: $59
	sub  a                                           ; $4106: $97
	dec  c                                           ; $4107: $0d
	nop                                              ; $4108: $00
	dec  b                                           ; $4109: $05
	ld   b, b                                        ; $410a: $40
	ld   c, [hl]                                     ; $410b: $4e

jr_057_410c:
	ld   bc, $0001                                   ; $410c: $01 $01 $00
	ld   bc, $5252                                   ; $410f: $01 $52 $52
	ld   h, [hl]                                     ; $4112: $66
	sub  c                                           ; $4113: $91
	ld   a, b                                        ; $4114: $78
	ld   d, d                                        ; $4115: $52
	ld   [hl], l                                     ; $4116: $75
	ld   h, a                                        ; $4117: $67
	ld   e, c                                        ; $4118: $59
	sbc  a                                           ; $4119: $9f
	dec  c                                           ; $411a: $0d
	nop                                              ; $411b: $00
	ld   a, [bc]                                     ; $411c: $0a
	ld   bc, $8d67                                   ; $411d: $01 $67 $8d
	adc  h                                           ; $4120: $8c
	ld   l, c                                        ; $4121: $69
	and  c                                           ; $4122: $a1
	sbc  [hl]                                        ; $4123: $9e
	sub  b                                           ; $4124: $90
	ld   d, h                                        ; $4125: $54
	ld   [bc], a                                     ; $4126: $02
	ld   a, a                                        ; $4127: $7f
	ld   e, e                                        ; $4128: $5b
	adc  h                                           ; $4129: $8c
	ld   h, a                                        ; $412a: $67
	ld   a, e                                        ; $412b: $7b
	sbc  a                                           ; $412c: $9f
	dec  c                                           ; $412d: $0d
	nop                                              ; $412e: $00
	ld   a, [bc]                                     ; $412f: $0a
	dec  c                                           ; $4130: $0d
	nop                                              ; $4131: $00
	nop                                              ; $4132: $00
	rrca                                             ; $4133: $0f
	nop                                              ; $4134: $00
	ld   bc, $1e09                                   ; $4135: $01 $09 $1e
	nop                                              ; $4138: $00
	rrca                                             ; $4139: $0f
	nop                                              ; $413a: $00
	ld   bc, $0201                                   ; $413b: $01 $01 $02
	and  [hl]                                        ; $413e: $a6
	inc  b                                           ; $413f: $04
	rra                                              ; $4140: $1f
	inc  b                                           ; $4141: $04
	jr   nz, jr_057_41b9                             ; $4142: $20 $75

	ld   h, a                                        ; $4144: $67
	ld   a, e                                        ; $4145: $7b
	sbc  a                                           ; $4146: $9f
	dec  c                                           ; $4147: $0d
	nop                                              ; $4148: $00
	ld   a, [bc]                                     ; $4149: $0a
	inc  e                                           ; $414a: $1c
	ld   bc, $0505                                   ; $414b: $01 $05 $05
	dec  e                                           ; $414e: $1d
	ld   b, b                                        ; $414f: $40
	ld   de, $1103                                   ; $4150: $11 $03 $11
	ld   bc, $2802                                   ; $4153: $01 $02 $28
	nop                                              ; $4156: $00
	ld   bc, $9e6b                                   ; $4157: $01 $6b $9e
	ld   l, e                                        ; $415a: $6b
	and  c                                           ; $415b: $a1
	ld   a, b                                        ; $415c: $78
	ld   h, c                                        ; $415d: $61
	halt                                             ; $415e: $76
	ld   a, b                                        ; $415f: $78
	ld   d, d                                        ; $4160: $52
	ld   [hl], l                                     ; $4161: $75
	ld   h, a                                        ; $4162: $67
	sub  [hl]                                        ; $4163: $96
	rst  $38                                         ; $4164: $ff
	rst  $38                                         ; $4165: $ff
	dec  c                                           ; $4166: $0d
	ld   [bc], a                                     ; $4167: $02
	sbc  d                                           ; $4168: $9a
	ld   e, e                                        ; $4169: $5b
	ld   [hl], l                                     ; $416a: $75
	sub  d                                           ; $416b: $92
	ld   [hl], c                                     ; $416c: $71
	ld   [hl], h                                     ; $416d: $74
	sbc  c                                           ; $416e: $99
	ld   l, [hl]                                     ; $416f: $6e
	ld   e, a                                        ; $4170: $5f
	ld   [hl], l                                     ; $4171: $75
	ld   h, a                                        ; $4172: $67
	ld   e, c                                        ; $4173: $59
	sub  a                                           ; $4174: $97
	dec  c                                           ; $4175: $0d
	inc  bc                                          ; $4176: $03
	ld   h, l                                        ; $4177: $65
	inc  bc                                          ; $4178: $03
	ld   l, e                                        ; $4179: $6b
	ld   e, l                                        ; $417a: $5d
	ld   a, b                                        ; $417b: $78
	ld   d, d                                        ; $417c: $52
	ld   [hl], l                                     ; $417d: $75
	ld   h, a                                        ; $417e: $67
	ld   h, l                                        ; $417f: $65
	rst  $38                                         ; $4180: $ff
	rst  $38                                         ; $4181: $ff
	dec  c                                           ; $4182: $0d
	nop                                              ; $4183: $00
	ld   a, [bc]                                     ; $4184: $0a
	ld   bc, $9e67                                   ; $4185: $01 $67 $9e
	ld   h, a                                        ; $4188: $67
	adc  l                                           ; $4189: $8d
	adc  h                                           ; $418a: $8c
	ld   l, c                                        ; $418b: $69
	and  c                                           ; $418c: $a1
	rst  $38                                         ; $418d: $ff
	rst  $38                                         ; $418e: $ff
	dec  c                                           ; $418f: $0d
	sub  b                                           ; $4190: $90
	ld   d, h                                        ; $4191: $54
	ld   [bc], a                                     ; $4192: $02
	ld   a, a                                        ; $4193: $7f
	ld   e, e                                        ; $4194: $5b
	adc  h                                           ; $4195: $8c
	ld   h, a                                        ; $4196: $67
	ld   a, e                                        ; $4197: $7b
	sbc  a                                           ; $4198: $9f
	dec  c                                           ; $4199: $0d
	nop                                              ; $419a: $00
	ld   a, [bc]                                     ; $419b: $0a
	dec  c                                           ; $419c: $0d
	nop                                              ; $419d: $00
	nop                                              ; $419e: $00
	rrca                                             ; $419f: $0f
	nop                                              ; $41a0: $00
	ld   bc, $1e09                                   ; $41a1: $01 $09 $1e
	nop                                              ; $41a4: $00
	rrca                                             ; $41a5: $0f
	nop                                              ; $41a6: $00
	ld   bc, $0201                                   ; $41a7: $01 $01 $02
	and  l                                           ; $41aa: $a5
	inc  b                                           ; $41ab: $04
	add  hl, hl                                      ; $41ac: $29
	ld   l, l                                        ; $41ad: $6d
	ld   a, h                                        ; $41ae: $7c
	and  c                                           ; $41af: $a1
	ld   [hl], l                                     ; $41b0: $75
	sub  b                                           ; $41b1: $90
	dec  b                                           ; $41b2: $05
	dec  d                                           ; $41b3: $15
	ld   d, d                                        ; $41b4: $52
	ld   [hl], l                                     ; $41b5: $75
	ld   h, a                                        ; $41b6: $67
	ld   e, c                                        ; $41b7: $59
	ld   sp, hl                                      ; $41b8: $f9

jr_057_41b9:
	dec  c                                           ; $41b9: $0d
	nop                                              ; $41ba: $00
	ld   a, [bc]                                     ; $41bb: $0a
	inc  e                                           ; $41bc: $1c
	ld   bc, $0101                                   ; $41bd: $01 $01 $01
	ld   bc, $527d                                   ; $41c0: $01 $7d $52
	sbc  a                                           ; $41c3: $9f
	dec  c                                           ; $41c4: $0d
	ld   [hl], d                                     ; $41c5: $72
	ld   e, l                                        ; $41c6: $5d
	sbc  e                                           ; $41c7: $9b
	ld   d, d                                        ; $41c8: $52
	sub  b                                           ; $41c9: $90
	ld   a, h                                        ; $41ca: $7c
	ld   e, [hl]                                     ; $41cb: $5e
	sub  a                                           ; $41cc: $97
	ld   d, d                                        ; $41cd: $52
	ld   [hl], l                                     ; $41ce: $75
	ld   h, l                                        ; $41cf: $65
	ld   l, l                                        ; $41d0: $6d
	sub  a                                           ; $41d1: $97
	dec  c                                           ; $41d2: $0d
	ld   d, d                                        ; $41d3: $52
	ld   [hl], d                                     ; $41d4: $72
	ld   [hl], l                                     ; $41d5: $75
	sub  b                                           ; $41d6: $90
	ld   [hl], a                                     ; $41d7: $77
	ld   d, h                                        ; $41d8: $54
	ld   l, h                                        ; $41d9: $6c
	sbc  a                                           ; $41da: $9f
	dec  c                                           ; $41db: $0d
	nop                                              ; $41dc: $00
	ld   a, [bc]                                     ; $41dd: $0a
	inc  e                                           ; $41de: $1c
	ld   bc, $0101                                   ; $41df: $01 $01 $01
	ld   bc, $7463                                   ; $41e2: $01 $63 $74
	halt                                             ; $41e5: $76
	sbc  [hl]                                        ; $41e6: $9e
	sub  b                                           ; $41e7: $90
	ld   d, h                                        ; $41e8: $54
	ld   [bc], a                                     ; $41e9: $02
	ld   a, a                                        ; $41ea: $7f
	ld   e, c                                        ; $41eb: $59
	ld   a, b                                        ; $41ec: $78
	ld   e, l                                        ; $41ed: $5d
	ld   l, a                                        ; $41ee: $6f
	sub  c                                           ; $41ef: $91
	rst  $38                                         ; $41f0: $ff
	rst  $38                                         ; $41f1: $ff
	dec  c                                           ; $41f2: $0d
	ld   [bc], a                                     ; $41f3: $02
	and  l                                           ; $41f4: $a5
	inc  b                                           ; $41f5: $04
	xor  d                                           ; $41f6: $aa
	sub  b                                           ; $41f7: $90
	ld   [bc], a                                     ; $41f8: $02
	jr   nz, jr_057_41ff                             ; $41f9: $20 $04

	xor  d                                           ; $41fb: $aa
	sbc  [hl]                                        ; $41fc: $9e
	dec  c                                           ; $41fd: $0d
	ld   e, d                                        ; $41fe: $5a

jr_057_41ff:
	and  c                                           ; $41ff: $a1
	ld   a, [hl]                                     ; $4200: $7e
	sbc  b                                           ; $4201: $98
	adc  h                                           ; $4202: $8c
	ld   h, l                                        ; $4203: $65
	sub  l                                           ; $4204: $95
	ld   d, h                                        ; $4205: $54
	sbc  a                                           ; $4206: $9f
	dec  c                                           ; $4207: $0d
	nop                                              ; $4208: $00
	ld   a, [bc]                                     ; $4209: $0a
	dec  c                                           ; $420a: $0d
	nop                                              ; $420b: $00
	nop                                              ; $420c: $00
	rrca                                             ; $420d: $0f
	nop                                              ; $420e: $00
	ld   bc, $1e09                                   ; $420f: $01 $09 $1e
	nop                                              ; $4212: $00
	rrca                                             ; $4213: $0f
	nop                                              ; $4214: $00
	ld   bc, $0201                                   ; $4215: $01 $01 $02
	and  l                                           ; $4218: $a5
	inc  b                                           ; $4219: $04
	xor  d                                           ; $421a: $aa
	ld   a, l                                        ; $421b: $7d
	dec  b                                           ; $421c: $05
	call nc, $8c9a                                   ; $421d: $d4 $9a $8c
	ld   h, a                                        ; $4220: $67
	ld   e, c                                        ; $4221: $59
	ld   a, e                                        ; $4222: $7b
	ld   sp, hl                                      ; $4223: $f9
	dec  c                                           ; $4224: $0d
	nop                                              ; $4225: $00
	ld   a, [bc]                                     ; $4226: $0a
	inc  e                                           ; $4227: $1c
	ld   bc, $0000                                   ; $4228: $01 $00 $00
	ld   bc, $0e04                                   ; $422b: $01 $04 $0e
	inc  bc                                          ; $422e: $03
	sbc  l                                           ; $422f: $9d
	inc  b                                           ; $4230: $04
	and  [hl]                                        ; $4231: $a6
	ld   l, [hl]                                     ; $4232: $6e
	halt                                             ; $4233: $76
	dec  b                                           ; $4234: $05
	pop  de                                          ; $4235: $d1
	ld   d, d                                        ; $4236: $52
	adc  h                                           ; $4237: $8c
	ld   h, a                                        ; $4238: $67
	sub  [hl]                                        ; $4239: $96
	sbc  a                                           ; $423a: $9f
	dec  c                                           ; $423b: $0d
	ld   d, d                                        ; $423c: $52
	ld   d, [hl]                                     ; $423d: $56
	sbc  [hl]                                        ; $423e: $9e
	ld   e, e                                        ; $423f: $5b
	ld   [hl], c                                     ; $4240: $71
	halt                                             ; $4241: $76
	dec  b                                           ; $4242: $05
	call nc, $8c9a                                   ; $4243: $d4 $9a $8c
	ld   h, a                                        ; $4246: $67
	sub  [hl]                                        ; $4247: $96
	sbc  a                                           ; $4248: $9f
	dec  c                                           ; $4249: $0d
	nop                                              ; $424a: $00
	ld   a, [bc]                                     ; $424b: $0a
	inc  e                                           ; $424c: $1c
	ld   bc, $0101                                   ; $424d: $01 $01 $01
	ld   bc, $6d50                                   ; $4250: $01 $50 $6d
	ld   h, l                                        ; $4253: $65
	sbc  [hl]                                        ; $4254: $9e
	dec  b                                           ; $4255: $05
	call nc, $6d9a                                   ; $4256: $d4 $9a $6d
	inc  b                                           ; $4259: $04
	xor  d                                           ; $425a: $aa
	ld   e, d                                        ; $425b: $5a
	dec  c                                           ; $425c: $0d
	inc  b                                           ; $425d: $04
	ld   c, $02                                      ; $425e: $0e $02
	sbc  d                                           ; $4260: $9a
	ld   e, e                                        ; $4261: $5b
	ld   [hl], l                                     ; $4262: $75
	ld   h, a                                        ; $4263: $67
	ld   e, c                                        ; $4264: $59
	sub  a                                           ; $4265: $97
	rst  $38                                         ; $4266: $ff
	rst  $38                                         ; $4267: $ff
	dec  c                                           ; $4268: $0d
	nop                                              ; $4269: $00
	ld   a, [bc]                                     ; $426a: $0a
	ld   bc, $7463                                   ; $426b: $01 $63 $74
	halt                                             ; $426e: $76
	sbc  [hl]                                        ; $426f: $9e
	sub  b                                           ; $4270: $90
	ld   d, h                                        ; $4271: $54
	ld   [bc], a                                     ; $4272: $02
	ld   a, a                                        ; $4273: $7f
	ld   e, c                                        ; $4274: $59
	ld   a, b                                        ; $4275: $78
	ld   e, l                                        ; $4276: $5d
	ld   l, a                                        ; $4277: $6f
	sub  c                                           ; $4278: $91
	rst  $38                                         ; $4279: $ff
	rst  $38                                         ; $427a: $ff
	dec  c                                           ; $427b: $0d
	ld   [bc], a                                     ; $427c: $02
	and  l                                           ; $427d: $a5
	inc  b                                           ; $427e: $04
	xor  d                                           ; $427f: $aa
	sub  b                                           ; $4280: $90
	ld   [bc], a                                     ; $4281: $02
	jr   nz, jr_057_4288                             ; $4282: $20 $04

	xor  d                                           ; $4284: $aa
	sbc  [hl]                                        ; $4285: $9e
	dec  c                                           ; $4286: $0d
	ld   e, d                                        ; $4287: $5a

jr_057_4288:
	and  c                                           ; $4288: $a1
	ld   a, [hl]                                     ; $4289: $7e
	sbc  b                                           ; $428a: $98
	adc  h                                           ; $428b: $8c
	ld   h, l                                        ; $428c: $65
	sub  l                                           ; $428d: $95
	ld   d, h                                        ; $428e: $54
	sbc  a                                           ; $428f: $9f
	dec  c                                           ; $4290: $0d
	nop                                              ; $4291: $00
	ld   a, [bc]                                     ; $4292: $0a
	dec  c                                           ; $4293: $0d
	nop                                              ; $4294: $00
	nop                                              ; $4295: $00
	rrca                                             ; $4296: $0f
	nop                                              ; $4297: $00
	ld   bc, $1e09                                   ; $4298: $01 $09 $1e
	nop                                              ; $429b: $00
	nop                                              ; $429c: $00
	inc  b                                           ; $429d: $04
	add  b                                           ; $429e: $80
	ld   l, l                                        ; $429f: $6d
	ld   bc, $2000                                   ; $42a0: $01 $00 $20
	nop                                              ; $42a3: $00
	ld   c, $2f                                      ; $42a4: $0e $2f
	inc  e                                           ; $42a6: $1c
	dec  c                                           ; $42a7: $0d
	nop                                              ; $42a8: $00
	nop                                              ; $42a9: $00
	ld   [bc], a                                     ; $42aa: $02
	ld   bc, $9750                                   ; $42ab: $01 $50 $97
	sbc  [hl]                                        ; $42ae: $9e
	ld   [$5d00], sp                                 ; $42af: $08 $00 $5d
	and  c                                           ; $42b2: $a1
	sbc  a                                           ; $42b3: $9f
	dec  c                                           ; $42b4: $0d
	nop                                              ; $42b5: $00
	ld   a, [bc]                                     ; $42b6: $0a
	ld   bc, $567b                                   ; $42b7: $01 $7b $56
	sbc  [hl]                                        ; $42ba: $9e
	ld   a, e                                        ; $42bb: $7b
	ld   d, [hl]                                     ; $42bc: $56
	inc  b                                           ; $42bd: $04
	dec  hl                                          ; $42be: $2b
	ld   [hl], c                                     ; $42bf: $71
	ld   [hl], h                                     ; $42c0: $74
	sbc  c                                           ; $42c1: $99
	ld   sp, hl                                      ; $42c2: $f9
	dec  c                                           ; $42c3: $0d
	rst  JumpTable                                         ; $42c4: $df
	db   $ec                                         ; $42c5: $ec
	and  e                                           ; $42c6: $a3
	ld   h, e                                        ; $42c7: $63
	and  c                                           ; $42c8: $a1
	sbc  [hl]                                        ; $42c9: $9e
	rst  $28                                         ; $42ca: $ef
	call nz, $fbac                                   ; $42cb: $c4 $ac $fb
	ld   e, d                                        ; $42ce: $5a
	dec  c                                           ; $42cf: $0d
	ld   d, b                                        ; $42d0: $50
	ld   e, c                                        ; $42d1: $59
	ld   a, b                                        ; $42d2: $78
	ld   e, l                                        ; $42d3: $5d
	ld   [hl], h                                     ; $42d4: $74
	dec  b                                           ; $42d5: $05
	sub  [hl]                                        ; $42d6: $96
	ld   [hl], c                                     ; $42d7: $71
	ld   [hl], h                                     ; $42d8: $74
	sbc  c                                           ; $42d9: $99
	sub  a                                           ; $42da: $97
	ld   h, l                                        ; $42db: $65
	ld   d, d                                        ; $42dc: $52
	ld   a, h                                        ; $42dd: $7c
	sbc  a                                           ; $42de: $9f
	dec  c                                           ; $42df: $0d
	nop                                              ; $42e0: $00
	ld   a, [bc]                                     ; $42e1: $0a
	inc  e                                           ; $42e2: $1c
	dec  c                                           ; $42e3: $0d
	ld   bc, $0101                                   ; $42e4: $01 $01 $01
	ld   [$5d00], sp                                 ; $42e7: $08 $00 $5d
	and  c                                           ; $42ea: $a1
	sbc  [hl]                                        ; $42eb: $9e
	dec  c                                           ; $42ec: $0d
	ld   d, b                                        ; $42ed: $50
	ld   e, a                                        ; $42ee: $5f
	ld   [hl], h                                     ; $42ef: $74
	ld   d, b                                        ; $42f0: $50
	ld   h, b                                        ; $42f1: $60
	sbc  d                                           ; $42f2: $9a
	ld   a, [hl]                                     ; $42f3: $7e
	ld   sp, hl                                      ; $42f4: $f9
	dec  c                                           ; $42f5: $0d
	nop                                              ; $42f6: $00
	ld   a, [bc]                                     ; $42f7: $0a
	ld   bc, $6e6d                                   ; $42f8: $01 $6d $6e
	sbc  [hl]                                        ; $42fb: $9e
	ld   [bc], a                                     ; $42fc: $02
	inc  a                                           ; $42fd: $3c
	inc  bc                                          ; $42fe: $03
	add  d                                           ; $42ff: $82
	ld   a, h                                        ; $4300: $7c
	rst  $28                                         ; $4301: $ef
	call nz, $fbac                                   ; $4302: $c4 $ac $fb
	ld   l, [hl]                                     ; $4305: $6e
	ld   e, c                                        ; $4306: $59
	sub  a                                           ; $4307: $97
	dec  c                                           ; $4308: $0d
	rst  JumpTable                                         ; $4309: $df
	db   $ec                                         ; $430a: $ec
	and  e                                           ; $430b: $a3
	ld   h, e                                        ; $430c: $63
	and  c                                           ; $430d: $a1
	ld   e, d                                        ; $430e: $5a
	ld   d, d                                        ; $430f: $52
	sbc  c                                           ; $4310: $99
	halt                                             ; $4311: $76
	ld   e, e                                        ; $4312: $5b
	ld   a, c                                        ; $4313: $79
	dec  c                                           ; $4314: $0d
	ld   h, l                                        ; $4315: $65
	ld   l, l                                        ; $4316: $6d
	adc  c                                           ; $4317: $89
	ld   d, h                                        ; $4318: $54
	ld   e, d                                        ; $4319: $5a
	ld   d, d                                        ; $431a: $52
	ld   d, d                                        ; $431b: $52
	sbc  l                                           ; $431c: $9d
	sub  [hl]                                        ; $431d: $96
	sbc  a                                           ; $431e: $9f
	dec  c                                           ; $431f: $0d
	nop                                              ; $4320: $00
	ld   a, [bc]                                     ; $4321: $0a
	inc  e                                           ; $4322: $1c
	dec  c                                           ; $4323: $0d
	nop                                              ; $4324: $00
	nop                                              ; $4325: $00
	ld   bc, $ecdf                                   ; $4326: $01 $df $ec
	and  e                                           ; $4329: $a3
	ld   h, e                                        ; $432a: $63
	and  c                                           ; $432b: $a1
	ld   a, h                                        ; $432c: $7c
	rst  $28                                         ; $432d: $ef
	call nz, $fbac                                   ; $432e: $c4 $ac $fb
	ld   a, l                                        ; $4331: $7d
	dec  c                                           ; $4332: $0d
	ld   [bc], a                                     ; $4333: $02
	jp   nc, Jump_057_7159                           ; $4334: $d2 $59 $71

	ld   [hl], h                                     ; $4337: $74
	ld   [bc], a                                     ; $4338: $02
	inc  e                                           ; $4339: $1c
	ld   e, c                                        ; $433a: $59
	sub  a                                           ; $433b: $97
	ld   l, [hl]                                     ; $433c: $6e
	halt                                             ; $433d: $76
	jr   @+$06                                       ; $433e: $18 $04

	ld   a, c                                        ; $4340: $79
	inc  b                                           ; $4341: $04
	call nc, $9e75                                   ; $4342: $d4 $75 $9e
	dec  c                                           ; $4345: $0d
	ld   [bc], a                                     ; $4346: $02
	jp   nc, Jump_057_7159                           ; $4347: $d2 $59 $71

	ld   [hl], h                                     ; $434a: $74
	inc  bc                                          ; $434b: $03
	ld   h, b                                        ; $434c: $60
	ld   e, c                                        ; $434d: $59
	sub  a                                           ; $434e: $97
	ld   l, [hl]                                     ; $434f: $6e
	halt                                             ; $4350: $76
	ld   [de], a                                     ; $4351: $12
	inc  b                                           ; $4352: $04
	ld   a, c                                        ; $4353: $79
	inc  b                                           ; $4354: $04
	call nc, $9e75                                   ; $4355: $d4 $75 $9e
	dec  c                                           ; $4358: $0d
	nop                                              ; $4359: $00
	ld   a, [bc]                                     ; $435a: $0a
	ld   bc, $d202                                   ; $435b: $01 $02 $d2
	ld   e, c                                        ; $435e: $59
	ld   [hl], c                                     ; $435f: $71
	ld   [hl], h                                     ; $4360: $74
	inc  bc                                          ; $4361: $03
	xor  l                                           ; $4362: $ad
	and  c                                           ; $4363: $a1
	inc  b                                           ; $4364: $04
	dec  bc                                          ; $4365: $0b
	ld   e, c                                        ; $4366: $59
	sub  a                                           ; $4367: $97
	ld   l, [hl]                                     ; $4368: $6e
	halt                                             ; $4369: $76
	sbc  [hl]                                        ; $436a: $9e
	dec  c                                           ; $436b: $0d
	inc  bc                                          ; $436c: $03
	ld   h, b                                        ; $436d: $60
	ld   a, c                                        ; $436e: $79
	inc  d                                           ; $436f: $14
	inc  b                                           ; $4370: $04
	ld   a, c                                        ; $4371: $79
	inc  b                                           ; $4372: $04
	call nc, $7c78                                   ; $4373: $d4 $78 $7c
	sub  [hl]                                        ; $4376: $96
	sbc  a                                           ; $4377: $9f
	dec  c                                           ; $4378: $0d
	nop                                              ; $4379: $00
	ld   a, [bc]                                     ; $437a: $0a
	inc  e                                           ; $437b: $1c
	dec  c                                           ; $437c: $0d
	ld   bc, $0101                                   ; $437d: $01 $01 $01
	ld   h, [hl]                                     ; $4380: $66
	sub  c                                           ; $4381: $91
	ld   d, b                                        ; $4382: $50
	ld   a, e                                        ; $4383: $7b
	sbc  a                                           ; $4384: $9f
	dec  c                                           ; $4385: $0d
	nop                                              ; $4386: $00
	ld   a, [bc]                                     ; $4387: $0a
	dec  b                                           ; $4388: $05
	add  b                                           ; $4389: $80
	ld   l, h                                        ; $438a: $6c
	ld   bc, $0001                                   ; $438b: $01 $01 $00
	nop                                              ; $438e: $00
	nop                                              ; $438f: $00
	inc  b                                           ; $4390: $04
	add  b                                           ; $4391: $80
	xor  [hl]                                        ; $4392: $ae
	ld   bc, $2000                                   ; $4393: $01 $00 $20
	nop                                              ; $4396: $00
	ld   c, $2f                                      ; $4397: $0e $2f
	inc  e                                           ; $4399: $1c
	inc  c                                           ; $439a: $0c
	nop                                              ; $439b: $00
	nop                                              ; $439c: $00
	ld   [bc], a                                     ; $439d: $02
	ld   bc, $0008                                   ; $439e: $01 $08 $00
	ld   h, e                                        ; $43a1: $63
	and  c                                           ; $43a2: $a1
	sbc  a                                           ; $43a3: $9f
	dec  c                                           ; $43a4: $0d
	nop                                              ; $43a5: $00
	ld   a, [bc]                                     ; $43a6: $0a
	inc  e                                           ; $43a7: $1c
	inc  c                                           ; $43a8: $0c
	inc  bc                                          ; $43a9: $03
	inc  bc                                          ; $43aa: $03
	ld   bc, $8d67                                   ; $43ab: $01 $67 $8d
	adc  h                                           ; $43ae: $8c
	ld   l, c                                        ; $43af: $69
	and  c                                           ; $43b0: $a1
	ld   e, d                                        ; $43b1: $5a
	sbc  [hl]                                        ; $43b2: $9e
	ld   l, l                                        ; $43b3: $6d
	ld   a, h                                        ; $43b4: $7c
	adc  h                                           ; $43b5: $8c
	sbc  d                                           ; $43b6: $9a
	ld   [hl], h                                     ; $43b7: $74
	dec  c                                           ; $43b8: $0d
	ld   e, l                                        ; $43b9: $5d
	sbc  d                                           ; $43ba: $9a
	adc  h                                           ; $43bb: $8c
	ld   l, c                                        ; $43bc: $69
	and  c                                           ; $43bd: $a1
	ld   e, c                                        ; $43be: $59
	ld   sp, hl                                      ; $43bf: $f9
	dec  c                                           ; $43c0: $0d
	nop                                              ; $43c1: $00
	ld   a, [bc]                                     ; $43c2: $0a
	inc  e                                           ; $43c3: $1c
	inc  c                                           ; $43c4: $0c
	nop                                              ; $43c5: $00
	nop                                              ; $43c6: $00
	ld   bc, $9a61                                   ; $43c7: $01 $61 $9a
	inc  bc                                          ; $43ca: $03
	ld   l, d                                        ; $43cb: $6a
	inc  bc                                          ; $43cc: $03
	db   $db                                         ; $43cd: $db
	ld   [hl], l                                     ; $43ce: $75
	add  b                                           ; $43cf: $80
	sbc  e                                           ; $43d0: $9b
	ld   [hl], c                                     ; $43d1: $71
	ld   l, l                                        ; $43d2: $6d
	and  c                                           ; $43d3: $a1
	ld   [hl], l                                     ; $43d4: $75
	ld   h, a                                        ; $43d5: $67
	ld   e, a                                        ; $43d6: $5f
	ld   [hl], a                                     ; $43d7: $77
	dec  c                                           ; $43d8: $0d
	ld   e, b                                        ; $43d9: $58
	ld   l, e                                        ; $43da: $6b
	sub  a                                           ; $43db: $97
	ld   e, l                                        ; $43dc: $5d
	ld   [bc], a                                     ; $43dd: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43de: $cf
	dec  b                                           ; $43df: $05
	ld   a, [de]                                     ; $43e0: $1a
	ld   h, e                                        ; $43e1: $63
	and  c                                           ; $43e2: $a1
	ld   a, h                                        ; $43e3: $7c
	ld   l, [hl]                                     ; $43e4: $6e
	halt                                             ; $43e5: $76
	dec  c                                           ; $43e6: $0d
	dec  b                                           ; $43e7: $05
	pop  de                                          ; $43e8: $d1
	ld   d, h                                        ; $43e9: $54
	and  c                                           ; $43ea: $a1
	ld   [hl], l                                     ; $43eb: $75
	ld   h, a                                        ; $43ec: $67
	sbc  a                                           ; $43ed: $9f
	dec  c                                           ; $43ee: $0d
	nop                                              ; $43ef: $00
	ld   a, [bc]                                     ; $43f0: $0a
	db   $10                                         ; $43f1: $10
	ld   sp, $0f00                                   ; $43f2: $31 $00 $0f
	nop                                              ; $43f5: $00
	ld   bc, $7801                                   ; $43f6: $01 $01 $78
	ld   l, d                                        ; $43f9: $6a
	ld   [bc], a                                     ; $43fa: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43fb: $cf
	dec  b                                           ; $43fc: $05
	ld   a, [de]                                     ; $43fd: $1a
	ld   h, e                                        ; $43fe: $63
	and  c                                           ; $43ff: $a1
	ld   a, h                                        ; $4400: $7c
	sub  b                                           ; $4401: $90
	ld   a, h                                        ; $4402: $7c
	ld   l, [hl]                                     ; $4403: $6e
	halt                                             ; $4404: $76
	rst  $38                                         ; $4405: $ff
	rst  $38                                         ; $4406: $ff
	ld   sp, hl                                      ; $4407: $f9
	dec  c                                           ; $4408: $0d
	nop                                              ; $4409: $00
	ld   a, [bc]                                     ; $440a: $0a
	inc  e                                           ; $440b: $1c
	inc  c                                           ; $440c: $0c
	inc  bc                                          ; $440d: $03
	inc  bc                                          ; $440e: $03
	ld   bc, $a161                                   ; $440f: $01 $61 $a1
	ld   a, b                                        ; $4412: $78
	ld   [bc], a                                     ; $4413: $02
	ld   e, b                                        ; $4414: $58
	ld   [bc], a                                     ; $4415: $02
	ld   d, [hl]                                     ; $4416: $56
	and  b                                           ; $4417: $a0
	inc  bc                                          ; $4418: $03
	xor  h                                           ; $4419: $ac
	sbc  c                                           ; $441a: $99
	ld   a, h                                        ; $441b: $7c
	ld   [hl], c                                     ; $441c: $71
	ld   [hl], h                                     ; $441d: $74
	dec  c                                           ; $441e: $0d
	ld   [bc], a                                     ; $441f: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4420: $cf
	dec  b                                           ; $4421: $05
	ld   a, [de]                                     ; $4422: $1a
	ld   h, e                                        ; $4423: $63
	and  c                                           ; $4424: $a1
	ld   e, l                                        ; $4425: $5d
	sub  a                                           ; $4426: $97
	ld   d, d                                        ; $4427: $52
	ld   [hl], l                                     ; $4428: $75
	ld   h, a                                        ; $4429: $67
	ld   e, c                                        ; $442a: $59
	sub  a                                           ; $442b: $97
	sbc  a                                           ; $442c: $9f
	dec  c                                           ; $442d: $0d
	nop                                              ; $442e: $00
	ld   a, [bc]                                     ; $442f: $0a
	inc  e                                           ; $4430: $1c
	inc  c                                           ; $4431: $0c
	ld   bc, $0101                                   ; $4432: $01 $01 $01
	dec  b                                           ; $4435: $05
	sub  [hl]                                        ; $4436: $96
	ld   [hl], c                                     ; $4437: $71
	ld   [hl], h                                     ; $4438: $74
	sbc  c                                           ; $4439: $99
	halt                                             ; $443a: $76
	dec  b                                           ; $443b: $05
	pop  de                                          ; $443c: $d1
	ld   d, d                                        ; $443d: $52
	adc  h                                           ; $443e: $8c
	ld   h, a                                        ; $443f: $67
	ld   a, h                                        ; $4440: $7c
	ld   [hl], l                                     ; $4441: $75
	sbc  [hl]                                        ; $4442: $9e
	dec  c                                           ; $4443: $0d
	ld   a, b                                        ; $4444: $78
	sbc  c                                           ; $4445: $99
	add  a                                           ; $4446: $87
	ld   e, l                                        ; $4447: $5d
	inc  bc                                          ; $4448: $03
	ld   [hl], b                                     ; $4449: $70
	adc  a                                           ; $444a: $8f
	ld   a, c                                        ; $444b: $79
	inc  bc                                          ; $444c: $03
	ld   [$7465], a                                  ; $444d: $ea $65 $74
	ld   d, b                                        ; $4450: $50
	ld   h, b                                        ; $4451: $60
	ld   [hl], h                                     ; $4452: $74
	dec  c                                           ; $4453: $0d
	ld   e, l                                        ; $4454: $5d
	ld   l, [hl]                                     ; $4455: $6e
	ld   h, e                                        ; $4456: $63
	ld   d, d                                        ; $4457: $52
	ld   a, e                                        ; $4458: $7b
	sbc  a                                           ; $4459: $9f
	dec  c                                           ; $445a: $0d
	nop                                              ; $445b: $00
	ld   a, [bc]                                     ; $445c: $0a
	rrca                                             ; $445d: $0f
	nop                                              ; $445e: $00
	ld   bc, $0101                                   ; $445f: $01 $01 $01
	inc  bc                                          ; $4462: $03
	inc  b                                           ; $4463: $04
	ld   c, c                                        ; $4464: $49
	ld   a, h                                        ; $4465: $7c
	ld   [bc], a                                     ; $4466: $02
	ld   e, b                                        ; $4467: $58
	ld   [bc], a                                     ; $4468: $02
	ld   d, [hl]                                     ; $4469: $56
	ld   l, [hl]                                     ; $446a: $6e
	or   h                                           ; $446b: $b4
	xor  $ff                                         ; $446c: $ee $ff
	rst  $38                                         ; $446e: $ff
	ld   bc, $0d04                                   ; $446f: $01 $04 $0d
	nop                                              ; $4472: $00
	ld   a, [bc]                                     ; $4473: $0a
	dec  b                                           ; $4474: $05
	add  b                                           ; $4475: $80
	add  hl, hl                                      ; $4476: $29
	ld   bc, $0001                                   ; $4477: $01 $01 $00
	nop                                              ; $447a: $00
	nop                                              ; $447b: $00
	rrca                                             ; $447c: $0f
	nop                                              ; $447d: $00
	ld   bc, $030d                                   ; $447e: $01 $0d $03
	nop                                              ; $4481: $00
	ld   [bc], a                                     ; $4482: $02
	dec  b                                           ; $4483: $05
	add  b                                           ; $4484: $80
	jp   $0101                                       ; $4485: $c3 $01 $01


	nop                                              ; $4488: $00
	ld   bc, $ecdf                                   ; $4489: $01 $df $ec
	and  e                                           ; $448c: $a3
	ld   h, e                                        ; $448d: $63
	and  c                                           ; $448e: $a1
	sbc  a                                           ; $448f: $9f
	dec  c                                           ; $4490: $0d
	nop                                              ; $4491: $00
	ld   a, [bc]                                     ; $4492: $0a
	inc  e                                           ; $4493: $1c
	inc  bc                                          ; $4494: $03
	nop                                              ; $4495: $00
	nop                                              ; $4496: $00
	ld   bc, $9750                                   ; $4497: $01 $50 $97
	sbc  [hl]                                        ; $449a: $9e
	ld   [hl], a                                     ; $449b: $77
	ld   d, h                                        ; $449c: $54
	ld   h, l                                        ; $449d: $65
	ld   l, l                                        ; $449e: $6d
	ld   a, h                                        ; $449f: $7c
	ld   sp, hl                                      ; $44a0: $f9
	dec  c                                           ; $44a1: $0d
	nop                                              ; $44a2: $00
	ld   a, [bc]                                     ; $44a3: $0a
	rrca                                             ; $44a4: $0f
	nop                                              ; $44a5: $00
	ld   bc, $0101                                   ; $44a6: $01 $01 $01
	inc  bc                                          ; $44a9: $03
	inc  b                                           ; $44aa: $04
	ld   c, c                                        ; $44ab: $49
	and  b                                           ; $44ac: $a0
	dec  b                                           ; $44ad: $05
	jr   nz, jr_057_451b                             ; $44ae: $20 $6b

	ld   d, h                                        ; $44b0: $54
	ld   e, c                                        ; $44b1: $59
	ld   a, b                                        ; $44b2: $78
	rst  $38                                         ; $44b3: $ff
	rst  $38                                         ; $44b4: $ff
	ld   bc, $0d04                                   ; $44b5: $01 $04 $0d
	nop                                              ; $44b8: $00
	ld   a, [bc]                                     ; $44b9: $0a
	add  hl, de                                      ; $44ba: $19
	dec  b                                           ; $44bb: $05
	inc  bc                                          ; $44bc: $03
	inc  bc                                          ; $44bd: $03
	daa                                              ; $44be: $27
	ld   [bc], a                                     ; $44bf: $02
	sub  c                                           ; $44c0: $91
	ld   a, h                                        ; $44c1: $7c
	dec  b                                           ; $44c2: $05
	add  hl, de                                      ; $44c3: $19
	inc  bc                                          ; $44c4: $03
	and  h                                           ; $44c5: $a4
	and  b                                           ; $44c6: $a0
	ld   h, l                                        ; $44c7: $65
	ld   l, l                                        ; $44c8: $6d
	ld   d, d                                        ; $44c9: $52
	nop                                              ; $44ca: $00
	nop                                              ; $44cb: $00
	inc  bc                                          ; $44cc: $03
	and  a                                           ; $44cd: $a7
	inc  b                                           ; $44ce: $04
	xor  d                                           ; $44cf: $aa
	ld   a, h                                        ; $44d0: $7c
	dec  b                                           ; $44d1: $05
	jr   nz, jr_057_44d4                             ; $44d2: $20 $00

jr_057_44d4:
	ld   bc, $9250                                   ; $44d4: $01 $50 $92
	adc  a                                           ; $44d7: $8f
	ld   a, h                                        ; $44d8: $7c
	dec  b                                           ; $44d9: $05
	jr   nz, jr_057_44dc                             ; $44da: $20 $00

jr_057_44dc:
	ld   [bc], a                                     ; $44dc: $02
	rlca                                             ; $44dd: $07
	and  l                                           ; $44de: $a5
	nop                                              ; $44df: $00
	ld   [bc], a                                     ; $44e0: $02
	inc  bc                                          ; $44e1: $03
	ld   bc, $2000                                   ; $44e2: $01 $00 $20
	nop                                              ; $44e5: $00
	rlca                                             ; $44e6: $07
	adc  l                                           ; $44e7: $8d
	ld   bc, $0302                                   ; $44e8: $01 $02 $03
	ld   bc, $2001                                   ; $44eb: $01 $01 $20
	nop                                              ; $44ee: $00
	rlca                                             ; $44ef: $07
	ld   d, [hl]                                     ; $44f0: $56
	inc  bc                                          ; $44f1: $03
	ld   [bc], a                                     ; $44f2: $02
	inc  bc                                          ; $44f3: $03
	ld   bc, $2002                                   ; $44f4: $01 $02 $20
	nop                                              ; $44f7: $00
	ld   b, $7f                                      ; $44f8: $06 $7f
	nop                                              ; $44fa: $00
	inc  e                                           ; $44fb: $1c
	inc  bc                                          ; $44fc: $03
	nop                                              ; $44fd: $00
	nop                                              ; $44fe: $00
	ld   bc, $fd03                                   ; $44ff: $01 $03 $fd
	ld   a, c                                        ; $4502: $79
	inc  b                                           ; $4503: $04
	di                                               ; $4504: $f3
	ld   a, l                                        ; $4505: $7d
	ld   a, b                                        ; $4506: $78
	ld   d, d                                        ; $4507: $52
	ld   a, h                                        ; $4508: $7c
	ld   a, e                                        ; $4509: $7b
	sbc  a                                           ; $450a: $9f
	dec  c                                           ; $450b: $0d
	ld   h, [hl]                                     ; $450c: $66
	sub  c                                           ; $450d: $91
	ld   d, b                                        ; $450e: $50
	sbc  [hl]                                        ; $450f: $9e
	inc  bc                                          ; $4510: $03
	add  e                                           ; $4511: $83
	dec  b                                           ; $4512: $05
	dec  c                                           ; $4513: $0d
	sbc  a                                           ; $4514: $9f
	dec  c                                           ; $4515: $0d
	nop                                              ; $4516: $00
	ld   a, [bc]                                     ; $4517: $0a
	dec  c                                           ; $4518: $0d
	nop                                              ; $4519: $00
	nop                                              ; $451a: $00

jr_057_451b:
	rrca                                             ; $451b: $0f
	nop                                              ; $451c: $00
	ld   bc, $1e09                                   ; $451d: $01 $09 $1e
	nop                                              ; $4520: $00
	rrca                                             ; $4521: $0f
	nop                                              ; $4522: $00
	ld   bc, $9001                                   ; $4523: $01 $01 $90
	ld   h, l                                        ; $4526: $65
	ld   e, b                                        ; $4527: $58
	inc  bc                                          ; $4528: $03
	ld   l, a                                        ; $4529: $6f
	ld   [bc], a                                     ; $452a: $02
	xor  c                                           ; $452b: $a9
	ld   e, d                                        ; $452c: $5a
	ld   d, b                                        ; $452d: $50
	ld   [hl], c                                     ; $452e: $71
	ld   l, l                                        ; $452f: $6d
	sub  a                                           ; $4530: $97
	dec  c                                           ; $4531: $0d
	inc  bc                                          ; $4532: $03
	daa                                              ; $4533: $27
	ld   [bc], a                                     ; $4534: $02
	sub  c                                           ; $4535: $91
	ld   a, h                                        ; $4536: $7c
	dec  b                                           ; $4537: $05
	add  hl, de                                      ; $4538: $19
	inc  bc                                          ; $4539: $03
	and  h                                           ; $453a: $a4
	and  b                                           ; $453b: $a0
	ld   e, b                                        ; $453c: $58
	ld   [bc], a                                     ; $453d: $02
	add  b                                           ; $453e: $80
	ld   d, d                                        ; $453f: $52
	dec  c                                           ; $4540: $0d
	ld   h, l                                        ; $4541: $65
	ld   l, l                                        ; $4542: $6d
	ld   d, d                                        ; $4543: $52
	ld   a, h                                        ; $4544: $7c
	ld   [hl], l                                     ; $4545: $75
	ld   h, a                                        ; $4546: $67
	ld   e, a                                        ; $4547: $5f
	ld   [hl], a                                     ; $4548: $77
	rst  $38                                         ; $4549: $ff
	rst  $38                                         ; $454a: $ff
	dec  c                                           ; $454b: $0d
	nop                                              ; $454c: $00
	ld   a, [bc]                                     ; $454d: $0a
	inc  e                                           ; $454e: $1c
	inc  bc                                          ; $454f: $03
	inc  bc                                          ; $4550: $03
	inc  bc                                          ; $4551: $03
	ld   bc, $9750                                   ; $4552: $01 $50 $97
	ld   [bc], a                                     ; $4555: $02
	scf                                              ; $4556: $37
	inc  bc                                          ; $4557: $03
	ld   [hl], l                                     ; $4558: $75
	ld   a, e                                        ; $4559: $7b
	rst  $38                                         ; $455a: $ff
	rst  $38                                         ; $455b: $ff
	dec  c                                           ; $455c: $0d
	ld   d, d                                        ; $455d: $52
	ld   d, d                                        ; $455e: $52
	sbc  l                                           ; $455f: $9d
	sub  [hl]                                        ; $4560: $96
	sbc  a                                           ; $4561: $9f
	dec  c                                           ; $4562: $0d
	nop                                              ; $4563: $00
	ld   a, [bc]                                     ; $4564: $0a
	ld   a, [de]                                     ; $4565: $1a
	inc  bc                                          ; $4566: $03
	rlca                                             ; $4567: $07
	nop                                              ; $4568: $00
	ld   bc, $0402                                   ; $4569: $01 $02 $04
	ld   bc, $2002                                   ; $456c: $01 $02 $20
	nop                                              ; $456f: $00
	rlca                                             ; $4570: $07
	inc  hl                                          ; $4571: $23
	ld   bc, $0402                                   ; $4572: $01 $02 $04
	ld   bc, $2001                                   ; $4575: $01 $01 $20
	nop                                              ; $4578: $00
	ld   b, $44                                      ; $4579: $06 $44
	ld   bc, $031c                                   ; $457b: $01 $1c $03
	inc  bc                                          ; $457e: $03
	inc  bc                                          ; $457f: $03
	dec  e                                           ; $4580: $1d
	ld   b, b                                        ; $4581: $40
	inc  de                                          ; $4582: $13
	inc  bc                                          ; $4583: $03
	inc  de                                          ; $4584: $13
	ld   bc, $2803                                   ; $4585: $01 $03 $28
	nop                                              ; $4588: $00
	ld   bc, $0008                                   ; $4589: $01 $08 $00
	ld   e, l                                        ; $458c: $5d
	and  c                                           ; $458d: $a1
	sbc  [hl]                                        ; $458e: $9e
	dec  c                                           ; $458f: $0d
	ld   h, a                                        ; $4590: $67
	ld   h, d                                        ; $4591: $62
	ld   d, d                                        ; $4592: $52
	ld   h, [hl]                                     ; $4593: $66
	sub  c                                           ; $4594: $91
	ld   a, b                                        ; $4595: $78
	ld   d, d                                        ; $4596: $52
	ld   a, h                                        ; $4597: $7c
	sbc  a                                           ; $4598: $9f
	dec  c                                           ; $4599: $0d
	nop                                              ; $459a: $00
	ld   a, [bc]                                     ; $459b: $0a
	ld   b, $6d                                      ; $459c: $06 $6d
	ld   bc, $031c                                   ; $459e: $01 $1c $03
	nop                                              ; $45a1: $00
	nop                                              ; $45a2: $00
	dec  e                                           ; $45a3: $1d
	ld   b, b                                        ; $45a4: $40
	inc  de                                          ; $45a5: $13
	inc  bc                                          ; $45a6: $03
	inc  de                                          ; $45a7: $13
	ld   bc, $2801                                   ; $45a8: $01 $01 $28
	nop                                              ; $45ab: $00
	ld   bc, $0008                                   ; $45ac: $01 $08 $00
	ld   e, l                                        ; $45af: $5d
	and  c                                           ; $45b0: $a1
	sbc  [hl]                                        ; $45b1: $9e
	dec  c                                           ; $45b2: $0d
	ld   d, d                                        ; $45b3: $52
	ld   d, d                                        ; $45b4: $52
	ld   e, c                                        ; $45b5: $59
	and  c                                           ; $45b6: $a1
	ld   h, [hl]                                     ; $45b7: $66
	ld   a, e                                        ; $45b8: $7b
	sbc  a                                           ; $45b9: $9f
	dec  c                                           ; $45ba: $0d
	nop                                              ; $45bb: $00
	ld   a, [bc]                                     ; $45bc: $0a
	ld   b, $6d                                      ; $45bd: $06 $6d
	ld   bc, $031c                                   ; $45bf: $01 $1c $03
	inc  b                                           ; $45c2: $04
	inc  b                                           ; $45c3: $04
	dec  e                                           ; $45c4: $1d
	ld   b, b                                        ; $45c5: $40
	inc  de                                          ; $45c6: $13
	inc  bc                                          ; $45c7: $03
	inc  de                                          ; $45c8: $13
	ld   bc, $2902                                   ; $45c9: $01 $02 $29
	nop                                              ; $45cc: $00
	ld   bc, $5490                                   ; $45cd: $01 $90 $54
	ld   l, a                                        ; $45d0: $6f
	sub  l                                           ; $45d1: $95
	ld   [hl], c                                     ; $45d2: $71
	halt                                             ; $45d3: $76
	ld   e, d                                        ; $45d4: $5a
	and  c                                           ; $45d5: $a1
	ld   a, [hl]                                     ; $45d6: $7e
	ld   [hl], c                                     ; $45d7: $71
	ld   l, l                                        ; $45d8: $6d
	adc  c                                           ; $45d9: $89
	ld   d, h                                        ; $45da: $54
	ld   e, d                                        ; $45db: $5a
	dec  c                                           ; $45dc: $0d
	ld   d, d                                        ; $45dd: $52
	ld   d, d                                        ; $45de: $52
	sbc  l                                           ; $45df: $9d
	ld   a, e                                        ; $45e0: $7b
	rst  $38                                         ; $45e1: $ff
	rst  $38                                         ; $45e2: $ff
	dec  c                                           ; $45e3: $0d
	nop                                              ; $45e4: $00
	ld   a, [bc]                                     ; $45e5: $0a
	ld   b, $6d                                      ; $45e6: $06 $6d
	ld   bc, $031c                                   ; $45e8: $01 $1c $03
	inc  bc                                          ; $45eb: $03
	inc  bc                                          ; $45ec: $03
	ld   bc, $0458                                   ; $45ed: $01 $58 $04
	ld   a, e                                        ; $45f0: $7b
	sbc  d                                           ; $45f1: $9a
	ld   h, e                                        ; $45f2: $63
	adc  h                                           ; $45f3: $8c
	sbc  a                                           ; $45f4: $9f
	dec  c                                           ; $45f5: $0d
	ld   h, [hl]                                     ; $45f6: $66
	sub  c                                           ; $45f7: $91
	sbc  [hl]                                        ; $45f8: $9e
	adc  h                                           ; $45f9: $8c
	ld   l, l                                        ; $45fa: $6d
	ld   a, e                                        ; $45fb: $7b
	sbc  a                                           ; $45fc: $9f
	dec  c                                           ; $45fd: $0d
	nop                                              ; $45fe: $00
	ld   a, [bc]                                     ; $45ff: $0a
	dec  c                                           ; $4600: $0d
	nop                                              ; $4601: $00
	nop                                              ; $4602: $00
	rrca                                             ; $4603: $0f
	nop                                              ; $4604: $00
	ld   bc, $1e09                                   ; $4605: $01 $09 $1e
	nop                                              ; $4608: $00
	rrca                                             ; $4609: $0f
	nop                                              ; $460a: $00
	ld   bc, $df01                                   ; $460b: $01 $01 $df
	db   $ec                                         ; $460e: $ec
	and  e                                           ; $460f: $a3
	ld   h, e                                        ; $4610: $63
	and  c                                           ; $4611: $a1
	ld   [hl], h                                     ; $4612: $74
	sbc  [hl]                                        ; $4613: $9e
	ld   e, b                                        ; $4614: $58
	inc  bc                                          ; $4615: $03
	and  a                                           ; $4616: $a7
	adc  l                                           ; $4617: $8d
	ld   a, h                                        ; $4618: $7c
	inc  b                                           ; $4619: $04
	xor  d                                           ; $461a: $aa
	ld   a, c                                        ; $461b: $79
	ld   a, l                                        ; $461c: $7d
	dec  c                                           ; $461d: $0d
	inc  b                                           ; $461e: $04
	ld   c, c                                        ; $461f: $49
	and  b                                           ; $4620: $a0
	ld   h, l                                        ; $4621: $65
	ld   [hl], h                                     ; $4622: $74
	sbc  c                                           ; $4623: $99
	and  c                                           ; $4624: $a1
	ld   [hl], l                                     ; $4625: $75
	ld   h, a                                        ; $4626: $67
	ld   e, c                                        ; $4627: $59
	ld   sp, hl                                      ; $4628: $f9
	dec  c                                           ; $4629: $0d
	nop                                              ; $462a: $00
	ld   a, [bc]                                     ; $462b: $0a
	inc  e                                           ; $462c: $1c
	inc  bc                                          ; $462d: $03
	nop                                              ; $462e: $00
	nop                                              ; $462f: $00
	ld   bc, $546b                                   ; $4630: $01 $6b $54
	ld   a, e                                        ; $4633: $7b
	rst  $38                                         ; $4634: $ff
	rst  $38                                         ; $4635: $ff
	dec  c                                           ; $4636: $0d
	inc  b                                           ; $4637: $04
	adc  a                                           ; $4638: $8f
	and  b                                           ; $4639: $a0
	inc  b                                           ; $463a: $04
	ld   de, $6ea1                                   ; $463b: $11 $a1 $6e
	sbc  b                                           ; $463e: $98
	sbc  [hl]                                        ; $463f: $9e
	ld   e, b                                        ; $4640: $58
	ld   [bc], a                                     ; $4641: $02
	and  c                                           ; $4642: $a1
	ld   a, c                                        ; $4643: $79
	inc  b                                           ; $4644: $04
	ld   b, l                                        ; $4645: $45
	sbc  b                                           ; $4646: $98
	ld   a, h                                        ; $4647: $7c
	dec  c                                           ; $4648: $0d
	xor  h                                           ; $4649: $ac
	sub  $a8                                         ; $464a: $d6 $a8
	ld   a, c                                        ; $464c: $79
	ld   [bc], a                                     ; $464d: $02
	ld   a, a                                        ; $464e: $7f
	ld   [hl], c                                     ; $464f: $71
	ld   l, l                                        ; $4650: $6d
	sbc  b                                           ; $4651: $98
	ld   h, l                                        ; $4652: $65
	ld   [hl], h                                     ; $4653: $74
	sbc  c                                           ; $4654: $99
	sbc  l                                           ; $4655: $9d
	sbc  a                                           ; $4656: $9f
	dec  c                                           ; $4657: $0d
	nop                                              ; $4658: $00
	ld   a, [bc]                                     ; $4659: $0a
	add  hl, de                                      ; $465a: $19
	dec  b                                           ; $465b: $05
	inc  bc                                          ; $465c: $03
	ld   e, b                                        ; $465d: $58
	ld   h, a                                        ; $465e: $67
	ld   h, a                                        ; $465f: $67
	adc  a                                           ; $4660: $8f
	ld   a, h                                        ; $4661: $7c
	inc  b                                           ; $4662: $04
	adc  a                                           ; $4663: $8f
	ld   a, l                                        ; $4664: $7d
	ld   d, b                                        ; $4665: $50
	sbc  b                                           ; $4666: $98
	adc  h                                           ; $4667: $8c
	ld   h, a                                        ; $4668: $67
	ld   e, c                                        ; $4669: $59
	ld   sp, hl                                      ; $466a: $f9
	nop                                              ; $466b: $00
	nop                                              ; $466c: $00
	ld   l, e                                        ; $466d: $6b
	ld   a, h                                        ; $466e: $7c
	xor  h                                           ; $466f: $ac
	sub  $a8                                         ; $4670: $d6 $a8
	ld   a, l                                        ; $4672: $7d
	ld   [hl], a                                     ; $4673: $77
	ld   h, c                                        ; $4674: $61
	ld   [hl], l                                     ; $4675: $75
	ld   h, a                                        ; $4676: $67
	ld   e, c                                        ; $4677: $59
	ld   sp, hl                                      ; $4678: $f9
	nop                                              ; $4679: $00
	ld   bc, $8c72                                   ; $467a: $01 $72 $8c
	sub  a                                           ; $467d: $97
	ld   a, b                                        ; $467e: $78
	ld   d, d                                        ; $467f: $52
	inc  bc                                          ; $4680: $03
	and  a                                           ; $4681: $a7
	inc  b                                           ; $4682: $04
	xor  d                                           ; $4683: $aa
	ld   [hl], l                                     ; $4684: $75
	ld   h, a                                        ; $4685: $67
	ld   a, e                                        ; $4686: $7b
	nop                                              ; $4687: $00
	ld   [bc], a                                     ; $4688: $02
	rlca                                             ; $4689: $07
	ld   c, e                                        ; $468a: $4b
	ld   [bc], a                                     ; $468b: $02
	ld   [bc], a                                     ; $468c: $02
	inc  bc                                          ; $468d: $03
	ld   bc, $2000                                   ; $468e: $01 $00 $20
	nop                                              ; $4691: $00
	rlca                                             ; $4692: $07
	and  d                                           ; $4693: $a2
	ld   [bc], a                                     ; $4694: $02
	ld   [bc], a                                     ; $4695: $02
	inc  bc                                          ; $4696: $03
	ld   bc, $2001                                   ; $4697: $01 $01 $20
	nop                                              ; $469a: $00
	rlca                                             ; $469b: $07
	push hl                                          ; $469c: $e5
	ld   [bc], a                                     ; $469d: $02
	ld   [bc], a                                     ; $469e: $02
	inc  bc                                          ; $469f: $03
	ld   bc, $2002                                   ; $46a0: $01 $02 $20
	nop                                              ; $46a3: $00
	ld   b, $2b                                      ; $46a4: $06 $2b
	ld   [bc], a                                     ; $46a6: $02
	inc  e                                           ; $46a7: $1c
	inc  bc                                          ; $46a8: $03
	nop                                              ; $46a9: $00
	nop                                              ; $46aa: $00
	ld   bc, $9166                                   ; $46ab: $01 $66 $91
	ld   d, b                                        ; $46ae: $50
	sbc  [hl]                                        ; $46af: $9e
	inc  bc                                          ; $46b0: $03
	ret  z                                           ; $46b1: $c8

	ld   a, l                                        ; $46b2: $7d
	inc  b                                           ; $46b3: $04
	di                                               ; $46b4: $f3
	ld   e, d                                        ; $46b5: $5a
	ld   d, b                                        ; $46b6: $50
	sbc  c                                           ; $46b7: $99
	ld   e, c                                        ; $46b8: $59
	sub  a                                           ; $46b9: $97
	sbc  a                                           ; $46ba: $9f
	dec  c                                           ; $46bb: $0d
	nop                                              ; $46bc: $00
	ld   a, [bc]                                     ; $46bd: $0a
	dec  c                                           ; $46be: $0d
	nop                                              ; $46bf: $00
	nop                                              ; $46c0: $00
	rrca                                             ; $46c1: $0f
	nop                                              ; $46c2: $00
	ld   bc, $1e09                                   ; $46c3: $01 $09 $1e
	nop                                              ; $46c6: $00
	rrca                                             ; $46c7: $0f
	nop                                              ; $46c8: $00
	ld   bc, $5801                                   ; $46c9: $01 $01 $58
	ld   h, a                                        ; $46cc: $67
	ld   h, a                                        ; $46cd: $67
	adc  a                                           ; $46ce: $8f
	ld   a, h                                        ; $46cf: $7c
	inc  b                                           ; $46d0: $04
	adc  a                                           ; $46d1: $8f
	ld   a, l                                        ; $46d2: $7d
	ld   d, b                                        ; $46d3: $50
	sbc  b                                           ; $46d4: $98
	adc  h                                           ; $46d5: $8c
	ld   h, a                                        ; $46d6: $67
	ld   e, c                                        ; $46d7: $59
	ld   sp, hl                                      ; $46d8: $f9
	dec  c                                           ; $46d9: $0d
	nop                                              ; $46da: $00
	ld   a, [bc]                                     ; $46db: $0a
	inc  e                                           ; $46dc: $1c
	inc  bc                                          ; $46dd: $03
	inc  bc                                          ; $46de: $03
	inc  bc                                          ; $46df: $03
	dec  e                                           ; $46e0: $1d
	ld   b, b                                        ; $46e1: $40
	inc  de                                          ; $46e2: $13
	inc  bc                                          ; $46e3: $03
	inc  de                                          ; $46e4: $13
	ld   bc, $2801                                   ; $46e5: $01 $01 $28
	nop                                              ; $46e8: $00
	ld   bc, $9a6b                                   ; $46e9: $01 $6b $9a
	ld   a, b                                        ; $46ec: $78
	sub  a                                           ; $46ed: $97
	jp   z, $c9ba                                    ; $46ee: $ca $ba $c9

	xor  c                                           ; $46f1: $a9
	sub  $ba                                         ; $46f2: $d6 $ba
	xor  [hl]                                        ; $46f4: $ae
	ei                                               ; $46f5: $fb
	ld   a, h                                        ; $46f6: $7c
	dec  c                                           ; $46f7: $0d
	ld   bc, $0307                                   ; $46f8: $01 $07 $03
	ld   e, $76                                      ; $46fb: $1e $76
	inc  b                                           ; $46fd: $04
	and  d                                           ; $46fe: $a2
	ld   bc, $5a08                                   ; $46ff: $01 $08 $5a
	ld   d, d                                        ; $4702: $52
	ld   d, d                                        ; $4703: $52
	sbc  l                                           ; $4704: $9d
	sub  [hl]                                        ; $4705: $96
	sbc  a                                           ; $4706: $9f
	dec  c                                           ; $4707: $0d
	inc  bc                                          ; $4708: $03
	ld   d, l                                        ; $4709: $55
	ld   [bc], a                                     ; $470a: $02
	ld   e, c                                        ; $470b: $59
	ld   a, c                                        ; $470c: $79
	ld   d, b                                        ; $470d: $50
	sbc  c                                           ; $470e: $99
	ld   e, c                                        ; $470f: $59
	sub  a                                           ; $4710: $97
	inc  b                                           ; $4711: $04
	ld   de, $788d                                   ; $4712: $11 $8d $78
	ld   h, e                                        ; $4715: $63
	ld   d, d                                        ; $4716: $52
	sbc  a                                           ; $4717: $9f
	dec  c                                           ; $4718: $0d
	nop                                              ; $4719: $00
	ld   a, [bc]                                     ; $471a: $0a
	ld   b, $3a                                      ; $471b: $06 $3a
	inc  bc                                          ; $471d: $03
	rrca                                             ; $471e: $0f
	nop                                              ; $471f: $00
	ld   bc, $6b01                                   ; $4720: $01 $01 $6b
	ld   a, h                                        ; $4723: $7c
	xor  h                                           ; $4724: $ac
	sub  $a8                                         ; $4725: $d6 $a8
	ld   a, l                                        ; $4727: $7d
	ld   [hl], a                                     ; $4728: $77
	ld   h, c                                        ; $4729: $61
	ld   a, c                                        ; $472a: $79
	ld   d, b                                        ; $472b: $50
	sbc  c                                           ; $472c: $99
	ld   a, h                                        ; $472d: $7c
	dec  c                                           ; $472e: $0d
	ld   [hl], l                                     ; $472f: $75
	ld   h, a                                        ; $4730: $67
	ld   e, c                                        ; $4731: $59
	ld   sp, hl                                      ; $4732: $f9
	dec  c                                           ; $4733: $0d
	nop                                              ; $4734: $00
	ld   a, [bc]                                     ; $4735: $0a
	inc  e                                           ; $4736: $1c
	inc  bc                                          ; $4737: $03
	inc  bc                                          ; $4738: $03
	inc  bc                                          ; $4739: $03
	ld   bc, $a002                                   ; $473a: $01 $02 $a0
	ld   e, l                                        ; $473d: $5d
	ld   a, c                                        ; $473e: $79
	ld   d, b                                        ; $473f: $50
	sbc  c                                           ; $4740: $99
	sbc  l                                           ; $4741: $9d
	sub  [hl]                                        ; $4742: $96
	sbc  a                                           ; $4743: $9f
	dec  c                                           ; $4744: $0d
	ld   [bc], a                                     ; $4745: $02
	ld   e, b                                        ; $4746: $58
	ld   [bc], a                                     ; $4747: $02
	add  [hl]                                        ; $4748: $86
	ld   e, d                                        ; $4749: $5a
	ld   d, b                                        ; $474a: $50
	ld   [hl], c                                     ; $474b: $71
	ld   l, l                                        ; $474c: $6d
	sub  a                                           ; $474d: $97
	sbc  [hl]                                        ; $474e: $9e
	ld   [hl], d                                     ; $474f: $72
	sbc  d                                           ; $4750: $9a
	ld   [hl], h                                     ; $4751: $74
	ld   d, d                                        ; $4752: $52
	ld   [hl], c                                     ; $4753: $71
	ld   [hl], h                                     ; $4754: $74
	dec  c                                           ; $4755: $0d
	ld   d, b                                        ; $4756: $50
	ld   h, b                                        ; $4757: $60
	sbc  c                                           ; $4758: $99
	sbc  l                                           ; $4759: $9d
	sbc  a                                           ; $475a: $9f
	dec  c                                           ; $475b: $0d
	nop                                              ; $475c: $00
	ld   a, [bc]                                     ; $475d: $0a
	ld   b, $3a                                      ; $475e: $06 $3a
	inc  bc                                          ; $4760: $03
	rrca                                             ; $4761: $0f
	nop                                              ; $4762: $00
	ld   bc, $7201                                   ; $4763: $01 $01 $72
	adc  h                                           ; $4766: $8c
	sub  a                                           ; $4767: $97
	ld   a, b                                        ; $4768: $78
	ld   d, d                                        ; $4769: $52
	inc  bc                                          ; $476a: $03
	and  a                                           ; $476b: $a7
	inc  b                                           ; $476c: $04
	xor  d                                           ; $476d: $aa
	ld   [hl], l                                     ; $476e: $75
	ld   h, a                                        ; $476f: $67
	ld   a, e                                        ; $4770: $7b
	rst  $38                                         ; $4771: $ff
	rst  $38                                         ; $4772: $ff
	dec  c                                           ; $4773: $0d
	nop                                              ; $4774: $00
	ld   a, [bc]                                     ; $4775: $0a
	inc  e                                           ; $4776: $1c
	inc  bc                                          ; $4777: $03
	ld   [bc], a                                     ; $4778: $02
	ld   [bc], a                                     ; $4779: $02
	dec  e                                           ; $477a: $1d
	ld   b, b                                        ; $477b: $40
	inc  de                                          ; $477c: $13
	inc  bc                                          ; $477d: $03
	inc  de                                          ; $477e: $13
	ld   bc, $2902                                   ; $477f: $01 $02 $29
	nop                                              ; $4782: $00
	ld   bc, $8c72                                   ; $4783: $01 $72 $8c
	sub  a                                           ; $4786: $97
	ld   a, b                                        ; $4787: $78
	ld   d, d                                        ; $4788: $52
	ld   e, c                                        ; $4789: $59
	ld   [hl], a                                     ; $478a: $77
	ld   d, h                                        ; $478b: $54
	ld   e, c                                        ; $478c: $59
	ld   a, l                                        ; $478d: $7d
	dec  c                                           ; $478e: $0d
	nop                                              ; $478f: $00
	dec  b                                           ; $4790: $05
	ld   b, b                                        ; $4791: $40
	ld   c, d                                        ; $4792: $4a
	ld   [bc], a                                     ; $4793: $02
	nop                                              ; $4794: $00
	nop                                              ; $4795: $00
	ld   bc, $8203                                   ; $4796: $01 $03 $82
	ld   l, e                                        ; $4799: $6b
	sbc  d                                           ; $479a: $9a
	ld   l, h                                        ; $479b: $6c
	sbc  d                                           ; $479c: $9a
	ld   a, h                                        ; $479d: $7c
	ld   [bc], a                                     ; $479e: $02
	rst  $38                                         ; $479f: $ff
	ld   e, a                                        ; $47a0: $5f
	inc  bc                                          ; $47a1: $03
	ld   b, c                                        ; $47a2: $41
	adc  a                                           ; $47a3: $8f
	inc  b                                           ; $47a4: $04
	ld   a, b                                        ; $47a5: $78
	dec  c                                           ; $47a6: $0d
	nop                                              ; $47a7: $00
	dec  b                                           ; $47a8: $05
	ld   b, b                                        ; $47a9: $40
	ld   d, b                                        ; $47aa: $50
	ld   bc, $0001                                   ; $47ab: $01 $01 $00
	ld   bc, $6575                                   ; $47ae: $01 $75 $65
	sub  l                                           ; $47b1: $95
	ld   a, [$000d]                                  ; $47b2: $fa $0d $00
	ld   a, [bc]                                     ; $47b5: $0a
	ld   bc, $9166                                   ; $47b6: $01 $66 $91
	ld   d, b                                        ; $47b9: $50
	sbc  [hl]                                        ; $47ba: $9e
	inc  bc                                          ; $47bb: $03
	ret  z                                           ; $47bc: $c8

	ld   a, l                                        ; $47bd: $7d
	inc  b                                           ; $47be: $04
	di                                               ; $47bf: $f3
	ld   e, d                                        ; $47c0: $5a
	ld   d, b                                        ; $47c1: $50
	sbc  c                                           ; $47c2: $99
	ld   e, c                                        ; $47c3: $59
	sub  a                                           ; $47c4: $97
	sbc  a                                           ; $47c5: $9f
	dec  c                                           ; $47c6: $0d
	nop                                              ; $47c7: $00
	ld   a, [bc]                                     ; $47c8: $0a
	dec  c                                           ; $47c9: $0d
	nop                                              ; $47ca: $00
	nop                                              ; $47cb: $00
	rrca                                             ; $47cc: $0f
	nop                                              ; $47cd: $00
	ld   bc, $1e09                                   ; $47ce: $01 $09 $1e
	nop                                              ; $47d1: $00
	rrca                                             ; $47d2: $0f
	nop                                              ; $47d3: $00
	ld   bc, $5001                                   ; $47d4: $01 $01 $50
	sub  d                                           ; $47d7: $92
	adc  a                                           ; $47d8: $8f
	ld   h, e                                        ; $47d9: $63
	and  c                                           ; $47da: $a1
	ld   [hl], h                                     ; $47db: $74
	sbc  [hl]                                        ; $47dc: $9e
	rst  JumpTable                                         ; $47dd: $df
	db   $ec                                         ; $47de: $ec
	and  e                                           ; $47df: $a3
	ld   h, e                                        ; $47e0: $63
	and  c                                           ; $47e1: $a1
	ld   e, c                                        ; $47e2: $59
	sub  a                                           ; $47e3: $97
	dec  c                                           ; $47e4: $0d
	ld   [bc], a                                     ; $47e5: $02
	sub  l                                           ; $47e6: $95
	ld   [hl], h                                     ; $47e7: $74
	sbc  [hl]                                        ; $47e8: $9e
	ld   [hl], a                                     ; $47e9: $77
	and  c                                           ; $47ea: $a1
	ld   a, b                                        ; $47eb: $78
	inc  b                                           ; $47ec: $04
	ld   a, b                                        ; $47ed: $78
	ld   [hl], l                                     ; $47ee: $75
	ld   h, a                                        ; $47ef: $67
	ld   e, c                                        ; $47f0: $59
	ld   sp, hl                                      ; $47f1: $f9
	dec  c                                           ; $47f2: $0d
	nop                                              ; $47f3: $00
	ld   a, [bc]                                     ; $47f4: $0a
	inc  e                                           ; $47f5: $1c
	inc  bc                                          ; $47f6: $03
	nop                                              ; $47f7: $00
	nop                                              ; $47f8: $00
	ld   bc, $546b                                   ; $47f9: $01 $6b $54
	ld   a, e                                        ; $47fc: $7b
	rst  $38                                         ; $47fd: $ff
	rst  $38                                         ; $47fe: $ff
	halt                                             ; $47ff: $76
	ld   [hl], h                                     ; $4800: $74
	sub  b                                           ; $4801: $90
	cp   d                                           ; $4802: $ba
	rst  ToBoot                                         ; $4803: $c7
	xor  [hl]                                        ; $4804: $ae
	ld   a, b                                        ; $4805: $78
	dec  c                                           ; $4806: $0d
	inc  bc                                          ; $4807: $03
	ld   l, [hl]                                     ; $4808: $6e
	ld   [bc], a                                     ; $4809: $02
	db   $fc                                         ; $480a: $fc
	ld   l, [hl]                                     ; $480b: $6e
	halt                                             ; $480c: $76
	dec  b                                           ; $480d: $05
	pop  de                                          ; $480e: $d1
	ld   d, h                                        ; $480f: $54
	sbc  l                                           ; $4810: $9d
	sbc  a                                           ; $4811: $9f
	dec  c                                           ; $4812: $0d
	dec  b                                           ; $4813: $05
	ld   a, d                                        ; $4814: $7a
	inc  bc                                          ; $4815: $03
	add  d                                           ; $4816: $82
	halt                                             ; $4817: $76
	ld   h, l                                        ; $4818: $65
	ld   [hl], h                                     ; $4819: $74
	sub  b                                           ; $481a: $90
	dec  b                                           ; $481b: $05
	ld   d, $04                                      ; $481c: $16 $04
	sbc  l                                           ; $481e: $9d
	ld   l, [hl]                                     ; $481f: $6e
	ld   h, l                                        ; $4820: $65
	rst  $38                                         ; $4821: $ff
	rst  $38                                         ; $4822: $ff
	dec  c                                           ; $4823: $0d
	nop                                              ; $4824: $00
	ld   a, [bc]                                     ; $4825: $0a
	ld   bc, $1d06                                   ; $4826: $01 $06 $1d
	inc  bc                                          ; $4829: $03
	ld   l, [hl]                                     ; $482a: $6e
	ld   e, d                                        ; $482b: $5a
	ld   d, d                                        ; $482c: $52
	ld   a, b                                        ; $482d: $78
	ld   e, c                                        ; $482e: $59
	ld   [hl], c                                     ; $482f: $71
	ld   l, l                                        ; $4830: $6d
	sub  a                                           ; $4831: $97
	sbc  [hl]                                        ; $4832: $9e
	inc  bc                                          ; $4833: $03
	ret  z                                           ; $4834: $c8

	ld   e, d                                        ; $4835: $5a
	dec  c                                           ; $4836: $0d
	ld   h, c                                        ; $4837: $61
	ld   h, c                                        ; $4838: $61
	ld   a, c                                        ; $4839: $79
	dec  b                                           ; $483a: $05
	db   $10                                         ; $483b: $10
	sbc  c                                           ; $483c: $99
	ld   h, c                                        ; $483d: $61
	halt                                             ; $483e: $76
	ld   a, l                                        ; $483f: $7d
	ld   a, b                                        ; $4840: $78
	ld   e, c                                        ; $4841: $59
	ld   [hl], c                                     ; $4842: $71
	ld   l, l                                        ; $4843: $6d
	halt                                             ; $4844: $76
	dec  c                                           ; $4845: $0d
	dec  b                                           ; $4846: $05
	pop  de                                          ; $4847: $d1
	ld   d, h                                        ; $4848: $54
	sbc  l                                           ; $4849: $9d
	sbc  a                                           ; $484a: $9f
	dec  c                                           ; $484b: $0d
	nop                                              ; $484c: $00
	ld   a, [bc]                                     ; $484d: $0a
	ld   bc, $9166                                   ; $484e: $01 $66 $91
	ld   d, b                                        ; $4851: $50
	sbc  [hl]                                        ; $4852: $9e
	inc  bc                                          ; $4853: $03
	ret  z                                           ; $4854: $c8

	ld   a, l                                        ; $4855: $7d
	inc  b                                           ; $4856: $04
	di                                               ; $4857: $f3
	ld   e, d                                        ; $4858: $5a
	ld   d, b                                        ; $4859: $50
	sbc  c                                           ; $485a: $99
	ld   e, c                                        ; $485b: $59
	sub  a                                           ; $485c: $97
	sbc  a                                           ; $485d: $9f
	dec  c                                           ; $485e: $0d
	nop                                              ; $485f: $00
	ld   a, [bc]                                     ; $4860: $0a
	dec  c                                           ; $4861: $0d
	nop                                              ; $4862: $00
	nop                                              ; $4863: $00
	rrca                                             ; $4864: $0f
	nop                                              ; $4865: $00
	ld   bc, $1e09                                   ; $4866: $01 $09 $1e
	nop                                              ; $4869: $00
	nop                                              ; $486a: $00
	inc  e                                           ; $486b: $1c
	ld   bc, $0000                                   ; $486c: $01 $00 $00
	ld   [bc], a                                     ; $486f: $02
	dec  b                                           ; $4870: $05
	add  b                                           ; $4871: $80
	pop  bc                                          ; $4872: $c1
	ld   bc, $0001                                   ; $4873: $01 $01 $00
	ld   bc, $7d58                                   ; $4876: $01 $58 $7d
	sub  [hl]                                        ; $4879: $96
	ld   d, h                                        ; $487a: $54
	ld   h, d                                        ; $487b: $62
	ld   h, h                                        ; $487c: $64
	ld   d, d                                        ; $487d: $52
	adc  h                                           ; $487e: $8c
	ld   h, a                                        ; $487f: $67
	sbc  a                                           ; $4880: $9f
	dec  c                                           ; $4881: $0d
	ld   [$6300], sp                                 ; $4882: $08 $00 $63
	and  c                                           ; $4885: $a1
	sbc  a                                           ; $4886: $9f
	dec  c                                           ; $4887: $0d
	nop                                              ; $4888: $00
	ld   a, [bc]                                     ; $4889: $0a
	rrca                                             ; $488a: $0f
	nop                                              ; $488b: $00
	ld   bc, $6301                                   ; $488c: $01 $01 $63
	ld   e, l                                        ; $488f: $5d
	sub  a                                           ; $4890: $97
	ld   h, e                                        ; $4891: $63
	and  c                                           ; $4892: $a1
	sbc  [hl]                                        ; $4893: $9e
	dec  c                                           ; $4894: $0d
	ld   e, b                                        ; $4895: $58
	ld   a, l                                        ; $4896: $7d
	sub  [hl]                                        ; $4897: $96
	ld   d, h                                        ; $4898: $54
	ld   h, d                                        ; $4899: $62
	ld   h, h                                        ; $489a: $64
	ld   d, d                                        ; $489b: $52
	adc  h                                           ; $489c: $8c
	ld   h, a                                        ; $489d: $67
	sbc  a                                           ; $489e: $9f
	dec  c                                           ; $489f: $0d
	ld   bc, $7803                                   ; $48a0: $01 $03 $78
	ld   a, c                                        ; $48a3: $79
	and  b                                           ; $48a4: $a0
	ld   [bc], a                                     ; $48a5: $02
	jp   nz, Jump_057_5461                           ; $48a6: $c2 $61 $54

	ld   e, c                                        ; $48a9: $59
	ld   a, b                                        ; $48aa: $78
	rst  $38                                         ; $48ab: $ff
	rst  $38                                         ; $48ac: $ff
	ld   bc, $0d04                                   ; $48ad: $01 $04 $0d
	nop                                              ; $48b0: $00
	ld   a, [bc]                                     ; $48b1: $0a
	add  hl, de                                      ; $48b2: $19
	dec  b                                           ; $48b3: $05
	inc  bc                                          ; $48b4: $03
	ld   e, a                                        ; $48b5: $5f
	ld   d, d                                        ; $48b6: $52
	ld   h, c                                        ; $48b7: $61
	and  b                                           ; $48b8: $a0
	ld   [hl], d                                     ; $48b9: $72
	ld   e, a                                        ; $48ba: $5f
	ld   [hl], h                                     ; $48bb: $74
	sub  b                                           ; $48bc: $90
	sub  a                                           ; $48bd: $97
	ld   d, h                                        ; $48be: $54
	nop                                              ; $48bf: $00
	nop                                              ; $48c0: $00
	inc  bc                                          ; $48c1: $03
	and  a                                           ; $48c2: $a7
	inc  b                                           ; $48c3: $04
	xor  d                                           ; $48c4: $aa
	ld   a, h                                        ; $48c5: $7c
	ld   h, a                                        ; $48c6: $67
	ld   h, d                                        ; $48c7: $62
	ld   h, l                                        ; $48c8: $65
	inc  b                                           ; $48c9: $04
	ld   a, b                                        ; $48ca: $78
	ld   a, c                                        ; $48cb: $79
	ld   [hl], d                                     ; $48cc: $72
	ld   d, d                                        ; $48cd: $52
	ld   [hl], h                                     ; $48ce: $74
	ld   [bc], a                                     ; $48cf: $02
	jp   nz, $005d                                   ; $48d0: $c2 $5d $00

	ld   bc, $a5a3                                   ; $48d3: $01 $a3 $a5
	db   $ec                                         ; $48d6: $ec
	cp   d                                           ; $48d7: $ba
	ld   a, c                                        ; $48d8: $79
	ld   [hl], d                                     ; $48d9: $72
	ld   d, d                                        ; $48da: $52
	ld   [hl], h                                     ; $48db: $74
	ld   [bc], a                                     ; $48dc: $02
	jp   nz, $005d                                   ; $48dd: $c2 $5d $00

	ld   [bc], a                                     ; $48e0: $02
	rlca                                             ; $48e1: $07
	adc  a                                           ; $48e2: $8f
	ld   bc, $0302                                   ; $48e3: $01 $02 $03
	ld   bc, $2000                                   ; $48e6: $01 $00 $20
	nop                                              ; $48e9: $00
	rlca                                             ; $48ea: $07
	xor  [hl]                                        ; $48eb: $ae
	ld   [bc], a                                     ; $48ec: $02
	ld   [bc], a                                     ; $48ed: $02
	inc  bc                                          ; $48ee: $03
	ld   bc, $2001                                   ; $48ef: $01 $01 $20
	nop                                              ; $48f2: $00
	rlca                                             ; $48f3: $07
	ld   b, e                                        ; $48f4: $43
	inc  bc                                          ; $48f5: $03
	ld   [bc], a                                     ; $48f6: $02
	inc  bc                                          ; $48f7: $03
	ld   bc, $2002                                   ; $48f8: $01 $02 $20
	nop                                              ; $48fb: $00
	ld   b, $94                                      ; $48fc: $06 $94
	nop                                              ; $48fe: $00
	rrca                                             ; $48ff: $0f
	nop                                              ; $4900: $00
	ld   bc, $ff01                                   ; $4901: $01 $01 $ff
	rst  $38                                         ; $4904: $ff
	rst  $38                                         ; $4905: $ff
	rst  $38                                         ; $4906: $ff
	dec  c                                           ; $4907: $0d
	nop                                              ; $4908: $00
	ld   a, [bc]                                     ; $4909: $0a
	rlca                                             ; $490a: $07
	ret  nz                                          ; $490b: $c0

	nop                                              ; $490c: $00
	inc  bc                                          ; $490d: $03
	ld   de, $a001                                   ; $490e: $11 $01 $a0
	inc  h                                           ; $4911: $24
	nop                                              ; $4912: $00
	rlca                                             ; $4913: $07
	db   $fd                                         ; $4914: $fd
	nop                                              ; $4915: $00
	inc  bc                                          ; $4916: $03
	ld   de, $a001                                   ; $4917: $11 $01 $a0
	inc  hl                                          ; $491a: $23
	inc  bc                                          ; $491b: $03
	ld   de, $8c01                                   ; $491c: $11 $01 $8c
	inc  h                                           ; $491f: $24
	inc  e                                           ; $4920: $1c
	nop                                              ; $4921: $00
	rlca                                             ; $4922: $07
	ld   b, d                                        ; $4923: $42
	ld   bc, $1103                                   ; $4924: $01 $03 $11
	ld   bc, $238c                                   ; $4927: $01 $8c $23
	nop                                              ; $492a: $00
	inc  e                                           ; $492b: $1c
	ld   bc, $0505                                   ; $492c: $01 $05 $05
	dec  e                                           ; $492f: $1d
	ld   b, b                                        ; $4930: $40
	ld   de, $1103                                   ; $4931: $11 $03 $11
	ld   bc, $2802                                   ; $4934: $01 $02 $28
	nop                                              ; $4937: $00
	ld   bc, $6e92                                   ; $4938: $01 $92 $6e
	rst  $38                                         ; $493b: $ff
	rst  $38                                         ; $493c: $ff
	dec  c                                           ; $493d: $0d
	ld   l, e                                        ; $493e: $6b
	and  c                                           ; $493f: $a1
	ld   a, b                                        ; $4940: $78
	ld   [bc], a                                     ; $4941: $02
	sub  l                                           ; $4942: $95
	ld   [hl], d                                     ; $4943: $72
	adc  a                                           ; $4944: $8f
	ld   a, b                                        ; $4945: $78
	ld   d, d                                        ; $4946: $52
	ld   [hl], l                                     ; $4947: $75
	ld   [bc], a                                     ; $4948: $02
	inc  [hl]                                        ; $4949: $34
	ld   h, e                                        ; $494a: $63
	ld   d, d                                        ; $494b: $52
	rst  $38                                         ; $494c: $ff
	rst  $38                                         ; $494d: $ff
	dec  c                                           ; $494e: $0d
	nop                                              ; $494f: $00
	ld   a, [bc]                                     ; $4950: $0a
	ld   bc, $9e65                                   ; $4951: $01 $65 $9e
	inc  bc                                          ; $4954: $03
	add  e                                           ; $4955: $83
	dec  b                                           ; $4956: $05
	dec  c                                           ; $4957: $0d
	ld   h, l                                        ; $4958: $65
	adc  h                                           ; $4959: $8c
	ld   h, a                                        ; $495a: $67
	ld   a, [$000d]                                  ; $495b: $fa $0d $00
	ld   a, [bc]                                     ; $495e: $0a
	dec  c                                           ; $495f: $0d
	nop                                              ; $4960: $00
	nop                                              ; $4961: $00
	rrca                                             ; $4962: $0f
	nop                                              ; $4963: $00
	ld   bc, $1e09                                   ; $4964: $01 $09 $1e
	nop                                              ; $4967: $00
	inc  e                                           ; $4968: $1c
	ld   bc, $0303                                   ; $4969: $01 $03 $03
	ld   bc, $4904                                   ; $496c: $01 $04 $49
	ld   e, c                                        ; $496f: $59
	ld   d, b                                        ; $4970: $50
	ld   l, l                                        ; $4971: $6d
	ld   h, l                                        ; $4972: $65
	ld   a, h                                        ; $4973: $7c
	ld   [bc], a                                     ; $4974: $02
	ld   [hl], d                                     ; $4975: $72
	ld   a, c                                        ; $4976: $79
	dec  c                                           ; $4977: $0d
	ld   [hl], d                                     ; $4978: $72
	ld   d, d                                        ; $4979: $52
	ld   [hl], h                                     ; $497a: $74
	adc  h                                           ; $497b: $8c
	ld   h, a                                        ; $497c: $67
	ld   e, c                                        ; $497d: $59
	ld   sp, hl                                      ; $497e: $f9
	dec  c                                           ; $497f: $0d
	nop                                              ; $4980: $00
	ld   a, [bc]                                     ; $4981: $0a
	rrca                                             ; $4982: $0f
	nop                                              ; $4983: $00
	ld   bc, $5201                                   ; $4984: $01 $01 $52
	sbc  [hl]                                        ; $4987: $9e
	ld   d, d                                        ; $4988: $52
	ld   d, [hl]                                     ; $4989: $56
	rst  $38                                         ; $498a: $ff
	rst  $38                                         ; $498b: $ff
	dec  c                                           ; $498c: $0d
	nop                                              ; $498d: $00
	ld   a, [bc]                                     ; $498e: $0a
	inc  e                                           ; $498f: $1c
	ld   bc, $0000                                   ; $4990: $01 $00 $00
	ld   bc, $9166                                   ; $4993: $01 $66 $91
	sbc  [hl]                                        ; $4996: $9e
	ld   d, b                                        ; $4997: $50
	ld   l, l                                        ; $4998: $6d
	ld   h, l                                        ; $4999: $65
	ld   [bc], a                                     ; $499a: $02
	ld   a, a                                        ; $499b: $7f
	ld   e, e                                        ; $499c: $5b
	adc  h                                           ; $499d: $8c
	ld   h, a                                        ; $499e: $67
	ld   a, e                                        ; $499f: $7b
	sbc  a                                           ; $49a0: $9f
	dec  c                                           ; $49a1: $0d
	nop                                              ; $49a2: $00
	ld   a, [bc]                                     ; $49a3: $0a
	dec  c                                           ; $49a4: $0d
	nop                                              ; $49a5: $00
	nop                                              ; $49a6: $00
	rrca                                             ; $49a7: $0f
	nop                                              ; $49a8: $00
	ld   bc, $1e09                                   ; $49a9: $01 $09 $1e
	nop                                              ; $49ac: $00
	inc  e                                           ; $49ad: $1c
	ld   bc, $0707                                   ; $49ae: $01 $07 $07
	ld   bc, $0462                                   ; $49b1: $01 $62 $04
	di                                               ; $49b4: $f3
	ld   e, d                                        ; $49b5: $5a
	ld   d, b                                        ; $49b6: $50
	sbc  c                                           ; $49b7: $99
	and  c                                           ; $49b8: $a1
	ld   h, [hl]                                     ; $49b9: $66
	sub  c                                           ; $49ba: $91
	dec  c                                           ; $49bb: $0d
	ld   a, b                                        ; $49bc: $78
	ld   e, c                                        ; $49bd: $59
	ld   [hl], c                                     ; $49be: $71
	ld   l, l                                        ; $49bf: $6d
	and  c                                           ; $49c0: $a1
	ld   [hl], l                                     ; $49c1: $75
	ld   h, a                                        ; $49c2: $67
	ld   e, c                                        ; $49c3: $59
	ld   sp, hl                                      ; $49c4: $f9
	dec  c                                           ; $49c5: $0d
	nop                                              ; $49c6: $00
	ld   a, [bc]                                     ; $49c7: $0a
	dec  e                                           ; $49c8: $1d
	ld   b, b                                        ; $49c9: $40
	ld   de, $1103                                   ; $49ca: $11 $03 $11
	ld   bc, $2902                                   ; $49cd: $01 $02 $29
	nop                                              ; $49d0: $00
	ld   bc, $4904                                   ; $49d1: $01 $04 $49
	sub  b                                           ; $49d4: $90
	ld   a, b                                        ; $49d5: $78
	ld   d, d                                        ; $49d6: $52
	ld   a, b                                        ; $49d7: $78
	sub  a                                           ; $49d8: $97
	ld   [bc], a                                     ; $49d9: $02
	ld   a, a                                        ; $49da: $7f
	ld   e, e                                        ; $49db: $5b
	adc  h                                           ; $49dc: $8c
	ld   h, a                                        ; $49dd: $67
	sub  [hl]                                        ; $49de: $96
	sbc  a                                           ; $49df: $9f
	dec  c                                           ; $49e0: $0d
	ld   l, e                                        ; $49e1: $6b
	sbc  d                                           ; $49e2: $9a
	ld   h, [hl]                                     ; $49e3: $66
	sub  c                                           ; $49e4: $91
	sbc  [hl]                                        ; $49e5: $9e
	inc  bc                                          ; $49e6: $03
	add  e                                           ; $49e7: $83
	dec  b                                           ; $49e8: $05
	dec  c                                           ; $49e9: $0d
	ld   h, l                                        ; $49ea: $65
	adc  h                                           ; $49eb: $8c
	ld   h, a                                        ; $49ec: $67
	sbc  a                                           ; $49ed: $9f
	dec  c                                           ; $49ee: $0d
	nop                                              ; $49ef: $00
	ld   a, [bc]                                     ; $49f0: $0a
	dec  c                                           ; $49f1: $0d
	nop                                              ; $49f2: $00
	nop                                              ; $49f3: $00
	rrca                                             ; $49f4: $0f
	nop                                              ; $49f5: $00
	ld   bc, $1e09                                   ; $49f6: $01 $09 $1e
	nop                                              ; $49f9: $00
	rrca                                             ; $49fa: $0f
	nop                                              ; $49fb: $00
	ld   bc, $0401                                   ; $49fc: $01 $01 $04
	ld   l, l                                        ; $49ff: $6d
	ld   a, c                                        ; $4a00: $79
	sbc  [hl]                                        ; $4a01: $9e
	ld   e, a                                        ; $4a02: $5f
	ld   d, d                                        ; $4a03: $52
	ld   h, c                                        ; $4a04: $61
	and  b                                           ; $4a05: $a0
	dec  c                                           ; $4a06: $0d
	ld   [hl], d                                     ; $4a07: $72
	ld   e, a                                        ; $4a08: $5f
	ld   [hl], h                                     ; $4a09: $74
	sub  b                                           ; $4a0a: $90
	sub  a                                           ; $4a0b: $97
	ld   d, [hl]                                     ; $4a0c: $56
	adc  h                                           ; $4a0d: $8c
	ld   l, c                                        ; $4a0e: $69
	and  c                                           ; $4a0f: $a1
	ld   e, c                                        ; $4a10: $59
	ld   sp, hl                                      ; $4a11: $f9
	dec  c                                           ; $4a12: $0d
	nop                                              ; $4a13: $00
	ld   a, [bc]                                     ; $4a14: $0a
	inc  e                                           ; $4a15: $1c
	ld   bc, $0101                                   ; $4a16: $01 $01 $01
	ld   bc, $5252                                   ; $4a19: $01 $52 $52
	ld   [hl], l                                     ; $4a1c: $75
	ld   h, a                                        ; $4a1d: $67
	sub  [hl]                                        ; $4a1e: $96
	sbc  a                                           ; $4a1f: $9f
	dec  c                                           ; $4a20: $0d
	ld   l, e                                        ; $4a21: $6b
	sbc  d                                           ; $4a22: $9a
	ld   h, [hl]                                     ; $4a23: $66
	sub  c                                           ; $4a24: $91
	sbc  [hl]                                        ; $4a25: $9e
	inc  b                                           ; $4a26: $04
	dec  bc                                          ; $4a27: $0b
	inc  b                                           ; $4a28: $04
	rra                                              ; $4a29: $1f
	ld   a, c                                        ; $4a2a: $79
	dec  b                                           ; $4a2b: $05
	ld   l, d                                        ; $4a2c: $6a
	inc  b                                           ; $4a2d: $04
	dec  de                                          ; $4a2e: $1b
	dec  c                                           ; $4a2f: $0d
	ld   h, l                                        ; $4a30: $65
	adc  h                                           ; $4a31: $8c
	ld   h, l                                        ; $4a32: $65
	sub  l                                           ; $4a33: $95
	ld   d, h                                        ; $4a34: $54
	ld   e, c                                        ; $4a35: $59
	sbc  a                                           ; $4a36: $9f
	dec  c                                           ; $4a37: $0d
	nop                                              ; $4a38: $00
	ld   a, [bc]                                     ; $4a39: $0a
	dec  c                                           ; $4a3a: $0d
	nop                                              ; $4a3b: $00
	nop                                              ; $4a3c: $00
	rrca                                             ; $4a3d: $0f
	nop                                              ; $4a3e: $00
	ld   bc, $9d23                                   ; $4a3f: $01 $23 $9d
	inc  e                                           ; $4a42: $1c
	ld   bc, $0000                                   ; $4a43: $01 $00 $00
	ld   bc, $7d75                                   ; $4a46: $01 $75 $7d
	sbc  [hl]                                        ; $4a49: $9e
	ld   a, l                                        ; $4a4a: $7d
	ld   h, [hl]                                     ; $4a4b: $66
	adc  a                                           ; $4a4c: $8f
	adc  h                                           ; $4a4d: $8c
	ld   h, a                                        ; $4a4e: $67
	sub  [hl]                                        ; $4a4f: $96
	sbc  a                                           ; $4a50: $9f
	dec  c                                           ; $4a51: $0d
	nop                                              ; $4a52: $00
	ld   a, [bc]                                     ; $4a53: $0a
	ld   a, [de]                                     ; $4a54: $1a
	ld   bc, $0607                                   ; $4a55: $01 $07 $06
	ld   [bc], a                                     ; $4a58: $02
	ld   [bc], a                                     ; $4a59: $02
	inc  b                                           ; $4a5a: $04
	ld   bc, $2002                                   ; $4a5b: $01 $02 $20
	nop                                              ; $4a5e: $00
	rlca                                             ; $4a5f: $07
	dec  hl                                          ; $4a60: $2b
	ld   [bc], a                                     ; $4a61: $02
	ld   [bc], a                                     ; $4a62: $02
	inc  b                                           ; $4a63: $04
	ld   bc, $2001                                   ; $4a64: $01 $01 $20
	nop                                              ; $4a67: $00
	rlca                                             ; $4a68: $07
	ld   d, d                                        ; $4a69: $52
	ld   [bc], a                                     ; $4a6a: $02
	ld   [bc], a                                     ; $4a6b: $02
	inc  b                                           ; $4a6c: $04
	ld   bc, $2000                                   ; $4a6d: $01 $00 $20
	nop                                              ; $4a70: $00
	inc  e                                           ; $4a71: $1c
	ld   bc, $0101                                   ; $4a72: $01 $01 $01
	dec  e                                           ; $4a75: $1d
	ld   b, b                                        ; $4a76: $40
	ld   de, $1103                                   ; $4a77: $11 $03 $11
	ld   bc, $2803                                   ; $4a7a: $01 $03 $28
	nop                                              ; $4a7d: $00
	ld   bc, $0008                                   ; $4a7e: $01 $08 $00
	ld   h, e                                        ; $4a81: $63
	and  c                                           ; $4a82: $a1
	sbc  [hl]                                        ; $4a83: $9e
	dec  c                                           ; $4a84: $0d
	ld   h, a                                        ; $4a85: $67
	ld   h, d                                        ; $4a86: $62
	ld   d, d                                        ; $4a87: $52
	ld   h, [hl]                                     ; $4a88: $66
	sub  c                                           ; $4a89: $91
	ld   a, b                                        ; $4a8a: $78
	ld   d, d                                        ; $4a8b: $52
	ld   [hl], l                                     ; $4a8c: $75
	ld   h, a                                        ; $4a8d: $67
	ld   e, c                                        ; $4a8e: $59
	ld   a, [$000d]                                  ; $4a8f: $fa $0d $00
	ld   a, [bc]                                     ; $4a92: $0a
	ld   b, $7c                                      ; $4a93: $06 $7c
	ld   [bc], a                                     ; $4a95: $02
	inc  e                                           ; $4a96: $1c
	ld   bc, $0000                                   ; $4a97: $01 $00 $00
	dec  e                                           ; $4a9a: $1d
	ld   b, b                                        ; $4a9b: $40
	ld   de, $1103                                   ; $4a9c: $11 $03 $11
	ld   bc, $2801                                   ; $4a9f: $01 $01 $28
	nop                                              ; $4aa2: $00
	ld   bc, $0008                                   ; $4aa3: $01 $08 $00
	ld   h, e                                        ; $4aa6: $63
	and  c                                           ; $4aa7: $a1
	sbc  [hl]                                        ; $4aa8: $9e
	dec  c                                           ; $4aa9: $0d
	ld   e, a                                        ; $4aaa: $5f
	ld   [hl], c                                     ; $4aab: $71
	ld   h, c                                        ; $4aac: $61
	ld   d, h                                        ; $4aad: $54
	ld   d, d                                        ; $4aae: $52
	ld   d, d                                        ; $4aaf: $52
	ld   e, c                                        ; $4ab0: $59
	and  c                                           ; $4ab1: $a1
	ld   h, [hl]                                     ; $4ab2: $66
	ld   [hl], l                                     ; $4ab3: $75
	ld   h, a                                        ; $4ab4: $67
	sub  [hl]                                        ; $4ab5: $96
	sbc  a                                           ; $4ab6: $9f
	dec  c                                           ; $4ab7: $0d
	nop                                              ; $4ab8: $00
	ld   a, [bc]                                     ; $4ab9: $0a
	ld   b, $7c                                      ; $4aba: $06 $7c
	ld   [bc], a                                     ; $4abc: $02
	inc  e                                           ; $4abd: $1c
	ld   bc, $0404                                   ; $4abe: $01 $04 $04
	dec  e                                           ; $4ac1: $1d
	ld   b, b                                        ; $4ac2: $40
	ld   de, $1103                                   ; $4ac3: $11 $03 $11
	ld   bc, $2902                                   ; $4ac6: $01 $02 $29
	nop                                              ; $4ac9: $00
	ld   bc, $5490                                   ; $4aca: $01 $90 $54
	ld   l, a                                        ; $4acd: $6f
	sub  l                                           ; $4ace: $95
	ld   [hl], c                                     ; $4acf: $71
	halt                                             ; $4ad0: $76
	ld   e, d                                        ; $4ad1: $5a
	and  c                                           ; $4ad2: $a1
	ld   a, [hl]                                     ; $4ad3: $7e
	ld   [hl], c                                     ; $4ad4: $71
	ld   l, l                                        ; $4ad5: $6d
	adc  c                                           ; $4ad6: $89
	ld   d, h                                        ; $4ad7: $54
	ld   e, d                                        ; $4ad8: $5a
	dec  c                                           ; $4ad9: $0d
	ld   d, d                                        ; $4ada: $52
	ld   d, d                                        ; $4adb: $52
	ld   [hl], l                                     ; $4adc: $75
	ld   h, a                                        ; $4add: $67
	ld   a, e                                        ; $4ade: $7b
	rst  $38                                         ; $4adf: $ff
	rst  $38                                         ; $4ae0: $ff
	dec  c                                           ; $4ae1: $0d
	nop                                              ; $4ae2: $00
	ld   a, [bc]                                     ; $4ae3: $0a
	ld   b, $7c                                      ; $4ae4: $06 $7c
	ld   [bc], a                                     ; $4ae6: $02
	inc  e                                           ; $4ae7: $1c
	ld   bc, $0101                                   ; $4ae8: $01 $01 $01
	ld   bc, $9a6b                                   ; $4aeb: $01 $6b $9a
	ld   h, [hl]                                     ; $4aee: $66
	sub  c                                           ; $4aef: $91
	sbc  [hl]                                        ; $4af0: $9e
	dec  c                                           ; $4af1: $0d
	ld   e, b                                        ; $4af2: $58
	inc  b                                           ; $4af3: $04
	ld   a, e                                        ; $4af4: $7b
	sbc  d                                           ; $4af5: $9a
	ld   h, e                                        ; $4af6: $63
	adc  h                                           ; $4af7: $8c
	ld   [hl], l                                     ; $4af8: $75
	ld   h, l                                        ; $4af9: $65
	ld   l, l                                        ; $4afa: $6d
	sbc  a                                           ; $4afb: $9f
	dec  c                                           ; $4afc: $0d
	adc  h                                           ; $4afd: $8c
	ld   l, l                                        ; $4afe: $6d
	ld   d, d                                        ; $4aff: $52
	ld   [hl], d                                     ; $4b00: $72
	ld   [hl], l                                     ; $4b01: $75
	sub  b                                           ; $4b02: $90
	ld   e, b                                        ; $4b03: $58
	ld   [bc], a                                     ; $4b04: $02
	ld   a, [de]                                     ; $4b05: $1a
	inc  bc                                          ; $4b06: $03
	ld   l, e                                        ; $4b07: $6b
	ld   h, l                                        ; $4b08: $65
	adc  h                                           ; $4b09: $8c
	ld   h, a                                        ; $4b0a: $67
	sub  [hl]                                        ; $4b0b: $96
	sbc  a                                           ; $4b0c: $9f
	dec  c                                           ; $4b0d: $0d
	nop                                              ; $4b0e: $00
	ld   a, [bc]                                     ; $4b0f: $0a
	dec  c                                           ; $4b10: $0d
	nop                                              ; $4b11: $00
	nop                                              ; $4b12: $00
	rrca                                             ; $4b13: $0f
	nop                                              ; $4b14: $00
	ld   bc, $1e09                                   ; $4b15: $01 $09 $1e
	nop                                              ; $4b18: $00
	rrca                                             ; $4b19: $0f
	nop                                              ; $4b1a: $00
	ld   bc, $0301                                   ; $4b1b: $01 $01 $03
	and  a                                           ; $4b1e: $a7
	adc  l                                           ; $4b1f: $8d
	ld   a, h                                        ; $4b20: $7c
	inc  b                                           ; $4b21: $04
	xor  d                                           ; $4b22: $aa
	halt                                             ; $4b23: $76
	ld   e, c                                        ; $4b24: $59
	dec  c                                           ; $4b25: $0d
	inc  b                                           ; $4b26: $04
	ld   c, c                                        ; $4b27: $49
	and  b                                           ; $4b28: $a0
	ld   h, l                                        ; $4b29: $65
	ld   [hl], h                                     ; $4b2a: $74
	sbc  c                                           ; $4b2b: $99
	and  c                                           ; $4b2c: $a1
	ld   [hl], l                                     ; $4b2d: $75
	ld   h, a                                        ; $4b2e: $67
	ld   e, c                                        ; $4b2f: $59
	ld   sp, hl                                      ; $4b30: $f9
	dec  c                                           ; $4b31: $0d
	nop                                              ; $4b32: $00
	ld   a, [bc]                                     ; $4b33: $0a
	inc  e                                           ; $4b34: $1c
	ld   bc, $0000                                   ; $4b35: $01 $00 $00
	ld   bc, $546b                                   ; $4b38: $01 $6b $54
	ld   [hl], l                                     ; $4b3b: $75
	ld   h, a                                        ; $4b3c: $67
	ld   a, e                                        ; $4b3d: $7b
	rst  $38                                         ; $4b3e: $ff
	rst  $38                                         ; $4b3f: $ff
	dec  c                                           ; $4b40: $0d
	inc  bc                                          ; $4b41: $03
	sub  [hl]                                        ; $4b42: $96
	inc  b                                           ; $4b43: $04
	sbc  a                                           ; $4b44: $9f
	halt                                             ; $4b45: $76
	ld   e, c                                        ; $4b46: $59
	ld   [bc], a                                     ; $4b47: $02
	or   a                                           ; $4b48: $b7
	inc  b                                           ; $4b49: $04
	dec  de                                          ; $4b4a: $1b
	dec  b                                           ; $4b4b: $05
	call c, $ad03                                    ; $4b4c: $dc $03 $ad
	and  b                                           ; $4b4f: $a0
	adc  l                                           ; $4b50: $8d
	ld   l, l                                        ; $4b51: $6d
	sbc  b                                           ; $4b52: $98
	dec  c                                           ; $4b53: $0d
	halt                                             ; $4b54: $76
	ld   e, c                                        ; $4b55: $59
	ld   h, l                                        ; $4b56: $65
	ld   [hl], h                                     ; $4b57: $74
	adc  h                                           ; $4b58: $8c
	ld   h, a                                        ; $4b59: $67
	ld   e, a                                        ; $4b5a: $5f
	ld   [hl], a                                     ; $4b5b: $77
	sbc  a                                           ; $4b5c: $9f
	dec  c                                           ; $4b5d: $0d
	nop                                              ; $4b5e: $00
	ld   a, [bc]                                     ; $4b5f: $0a
	inc  e                                           ; $4b60: $1c
	ld   bc, $0101                                   ; $4b61: $01 $01 $01
	ld   bc, $a502                                   ; $4b64: $01 $02 $a5
	inc  b                                           ; $4b67: $04
	xor  d                                           ; $4b68: $aa
	sub  b                                           ; $4b69: $90
	ld   h, c                                        ; $4b6a: $61
	sbc  d                                           ; $4b6b: $9a
	ld   e, c                                        ; $4b6c: $59
	sub  a                                           ; $4b6d: $97
	inc  bc                                          ; $4b6e: $03
	ld   h, l                                        ; $4b6f: $65
	inc  b                                           ; $4b70: $04
	rst  $20                                         ; $4b71: $e7
	ld   [bc], a                                     ; $4b72: $02
	sbc  c                                           ; $4b73: $99
	ld   [bc], a                                     ; $4b74: $02
	inc  c                                           ; $4b75: $0c
	and  b                                           ; $4b76: $a0
	dec  c                                           ; $4b77: $0d
	inc  bc                                          ; $4b78: $03
	sub  [hl]                                        ; $4b79: $96
	inc  b                                           ; $4b7a: $04
	sbc  a                                           ; $4b7b: $9f
	ld   h, l                                        ; $4b7c: $65
	ld   [hl], h                                     ; $4b7d: $74
	ld   h, c                                        ; $4b7e: $61
	sub  [hl]                                        ; $4b7f: $96
	ld   d, h                                        ; $4b80: $54
	ld   e, c                                        ; $4b81: $59
	halt                                             ; $4b82: $76
	dec  b                                           ; $4b83: $05
	pop  de                                          ; $4b84: $d1
	ld   [hl], c                                     ; $4b85: $71
	ld   [hl], h                                     ; $4b86: $74
	sbc  a                                           ; $4b87: $9f
	dec  c                                           ; $4b88: $0d
	nop                                              ; $4b89: $00
	ld   a, [bc]                                     ; $4b8a: $0a
	inc  e                                           ; $4b8b: $1c
	ld   bc, $0000                                   ; $4b8c: $01 $00 $00
	ld   bc, $9a6b                                   ; $4b8f: $01 $6b $9a
	ld   h, [hl]                                     ; $4b92: $66
	sub  c                                           ; $4b93: $91
	sbc  [hl]                                        ; $4b94: $9e
	ld   [$6300], sp                                 ; $4b95: $08 $00 $63
	and  c                                           ; $4b98: $a1
	sbc  a                                           ; $4b99: $9f
	dec  c                                           ; $4b9a: $0d
	adc  h                                           ; $4b9b: $8c
	ld   l, l                                        ; $4b9c: $6d
	ld   [bc], a                                     ; $4b9d: $02
	xor  d                                           ; $4b9e: $aa
	ld   [hl], l                                     ; $4b9f: $75
	rst  $38                                         ; $4ba0: $ff
	rst  $38                                         ; $4ba1: $ff
	dec  c                                           ; $4ba2: $0d
	nop                                              ; $4ba3: $00
	ld   a, [bc]                                     ; $4ba4: $0a
	dec  c                                           ; $4ba5: $0d
	nop                                              ; $4ba6: $00
	nop                                              ; $4ba7: $00
	rrca                                             ; $4ba8: $0f
	nop                                              ; $4ba9: $00
	ld   bc, $1e09                                   ; $4baa: $01 $09 $1e
	nop                                              ; $4bad: $00
	rrca                                             ; $4bae: $0f
	nop                                              ; $4baf: $00
	ld   bc, $6301                                   ; $4bb0: $01 $01 $63
	ld   e, l                                        ; $4bb3: $5d
	sub  a                                           ; $4bb4: $97
	ld   h, e                                        ; $4bb5: $63
	and  c                                           ; $4bb6: $a1
	ld   e, c                                        ; $4bb7: $59
	sub  a                                           ; $4bb8: $97
	ld   [bc], a                                     ; $4bb9: $02
	sub  l                                           ; $4bba: $95
	ld   [hl], h                                     ; $4bbb: $74
	sbc  [hl]                                        ; $4bbc: $9e
	dec  c                                           ; $4bbd: $0d
	and  e                                           ; $4bbe: $a3
	and  l                                           ; $4bbf: $a5
	db   $ec                                         ; $4bc0: $ec
	cp   d                                           ; $4bc1: $ba
	ld   [hl], c                                     ; $4bc2: $71
	ld   [hl], h                                     ; $4bc3: $74
	ld   [hl], a                                     ; $4bc4: $77
	and  c                                           ; $4bc5: $a1
	ld   a, b                                        ; $4bc6: $78
	inc  bc                                          ; $4bc7: $03
	add  [hl]                                        ; $4bc8: $86
	ld   [hl], l                                     ; $4bc9: $75
	ld   h, a                                        ; $4bca: $67
	ld   e, c                                        ; $4bcb: $59
	ld   sp, hl                                      ; $4bcc: $f9
	dec  c                                           ; $4bcd: $0d
	nop                                              ; $4bce: $00
	ld   a, [bc]                                     ; $4bcf: $0a
	inc  e                                           ; $4bd0: $1c
	ld   bc, $0101                                   ; $4bd1: $01 $01 $01
	ld   bc, $546b                                   ; $4bd4: $01 $6b $54
	ld   [hl], l                                     ; $4bd7: $75
	ld   h, a                                        ; $4bd8: $67
	ld   a, e                                        ; $4bd9: $7b
	rst  $38                                         ; $4bda: $ff
	rst  $38                                         ; $4bdb: $ff
	dec  c                                           ; $4bdc: $0d
	ld   [bc], a                                     ; $4bdd: $02
	adc  e                                           ; $4bde: $8b
	ld   [bc], a                                     ; $4bdf: $02
	dec  hl                                          ; $4be0: $2b
	ld   e, l                                        ; $4be1: $5d
	ld   [hl], h                                     ; $4be2: $74
	sbc  [hl]                                        ; $4be3: $9e
	adc  [hl]                                        ; $4be4: $8e
	ld   h, [hl]                                     ; $4be5: $66
	sub  c                                           ; $4be6: $91
	ld   e, e                                        ; $4be7: $5b
	ld   [hl], l                                     ; $4be8: $75
	dec  c                                           ; $4be9: $0d
	ld   b, $26                                      ; $4bea: $06 $26
	adc  l                                           ; $4bec: $8d
	ld   l, l                                        ; $4bed: $6d
	ld   d, d                                        ; $4bee: $52
	ld   a, b                                        ; $4bef: $78
	inc  bc                                          ; $4bf0: $03
	add  [hl]                                        ; $4bf1: $86
	ld   [hl], l                                     ; $4bf2: $75
	ld   h, a                                        ; $4bf3: $67
	sub  [hl]                                        ; $4bf4: $96
	sbc  a                                           ; $4bf5: $9f
	dec  c                                           ; $4bf6: $0d
	nop                                              ; $4bf7: $00
	ld   a, [bc]                                     ; $4bf8: $0a
	ld   bc, $9e50                                   ; $4bf9: $01 $50 $9e
	ld   [hl], l                                     ; $4bfc: $75
	sub  b                                           ; $4bfd: $90
	inc  bc                                          ; $4bfe: $03
	add  [hl]                                        ; $4bff: $86
	ld   [bc], a                                     ; $4c00: $02
	xor  l                                           ; $4c01: $ad
	ld   d, b                                        ; $4c02: $50
	ld   [hl], d                                     ; $4c03: $72
	ld   e, c                                        ; $4c04: $59
	ld   d, d                                        ; $4c05: $52
	ld   h, a                                        ; $4c06: $67
	sbc  c                                           ; $4c07: $99
	halt                                             ; $4c08: $76
	dec  c                                           ; $4c09: $0d
	ld   e, b                                        ; $4c0a: $58
	ld   h, c                                        ; $4c0b: $61
	sbc  c                                           ; $4c0c: $99
	ld   e, c                                        ; $4c0d: $59
	sub  a                                           ; $4c0e: $97
	sbc  [hl]                                        ; $4c0f: $9e
	ld   [$6300], sp                                 ; $4c10: $08 $00 $63
	and  c                                           ; $4c13: $a1
	sub  b                                           ; $4c14: $90
	dec  c                                           ; $4c15: $0d
	ld   [bc], a                                     ; $4c16: $02
	and  c                                           ; $4c17: $a1
	and  b                                           ; $4c18: $a0
	ld   [hl], d                                     ; $4c19: $72
	ld   e, a                                        ; $4c1a: $5f
	ld   [hl], h                                     ; $4c1b: $74
	ld   [bc], a                                     ; $4c1c: $02
	inc  [hl]                                        ; $4c1d: $34
	ld   h, e                                        ; $4c1e: $63
	ld   d, d                                        ; $4c1f: $52
	ld   a, e                                        ; $4c20: $7b
	sbc  a                                           ; $4c21: $9f
	dec  c                                           ; $4c22: $0d
	nop                                              ; $4c23: $00
	ld   a, [bc]                                     ; $4c24: $0a
	dec  c                                           ; $4c25: $0d
	nop                                              ; $4c26: $00
	nop                                              ; $4c27: $00
	rrca                                             ; $4c28: $0f
	nop                                              ; $4c29: $00
	ld   bc, $1e09                                   ; $4c2a: $01 $09 $1e
	nop                                              ; $4c2d: $00
	nop                                              ; $4c2e: $00
	ld   c, $56                                      ; $4c2f: $0e $56
	inc  e                                           ; $4c31: $1c
	inc  b                                           ; $4c32: $04
	ld   hl, $0209                                   ; $4c33: $21 $09 $02
	dec  b                                           ; $4c36: $05
	add  b                                           ; $4c37: $80
	push bc                                          ; $4c38: $c5
	ld   bc, $0001                                   ; $4c39: $01 $01 $00
	ld   bc, $9752                                   ; $4c3c: $01 $52 $97
	ld   [hl], c                                     ; $4c3f: $71
	ld   h, l                                        ; $4c40: $65
	sub  c                                           ; $4c41: $91
	ld   d, d                                        ; $4c42: $52
	sbc  [hl]                                        ; $4c43: $9e
	dec  c                                           ; $4c44: $0d
	ld   l, a                                        ; $4c45: $6f
	ld   d, d                                        ; $4c46: $52
	ld   [bc], a                                     ; $4c47: $02
	inc  de                                          ; $4c48: $13
	ld   l, a                                        ; $4c49: $6f
	sub  c                                           ; $4c4a: $91
	and  c                                           ; $4c4b: $a1
	sbc  a                                           ; $4c4c: $9f
	dec  c                                           ; $4c4d: $0d
	nop                                              ; $4c4e: $00
	ld   a, [bc]                                     ; $4c4f: $0a
	ld   bc, $a5a3                                   ; $4c50: $01 $a3 $a5
	db   $ec                                         ; $4c53: $ec
	cp   d                                           ; $4c54: $ba
	sbc  [hl]                                        ; $4c55: $9e
	ld   l, a                                        ; $4c56: $6f
	sub  l                                           ; $4c57: $95
	ld   [hl], c                                     ; $4c58: $71
	halt                                             ; $4c59: $76
	dec  c                                           ; $4c5a: $0d
	ld   e, b                                        ; $4c5b: $58
	ld   [hl], l                                     ; $4c5c: $75
	ld   e, c                                        ; $4c5d: $59
	ld   e, a                                        ; $4c5e: $5f
	ld   h, l                                        ; $4c5f: $65
	ld   [hl], h                                     ; $4c60: $74
	ld   e, l                                        ; $4c61: $5d
	sbc  c                                           ; $4c62: $99
	ld   e, c                                        ; $4c63: $59
	sub  a                                           ; $4c64: $97
	dec  c                                           ; $4c65: $0d
	cp   c                                           ; $4c66: $b9
	push hl                                          ; $4c67: $e5
	push af                                          ; $4c68: $f5
	sbc  $fb                                         ; $4c69: $de $fb
	db   $ed                                         ; $4c6b: $ed
	halt                                             ; $4c6c: $76
	ld   d, b                                        ; $4c6d: $50
	ld   l, e                                        ; $4c6e: $6b
	and  c                                           ; $4c6f: $a1
	ld   [hl], l                                     ; $4c70: $75
	ld   [hl], h                                     ; $4c71: $74
	ld   a, e                                        ; $4c72: $7b
	sbc  a                                           ; $4c73: $9f
	dec  c                                           ; $4c74: $0d
	nop                                              ; $4c75: $00
	ld   a, [bc]                                     ; $4c76: $0a
	db   $10                                         ; $4c77: $10
	ld   h, $00                                      ; $4c78: $26 $00
	add  hl, bc                                      ; $4c7a: $09
	ld   e, d                                        ; $4c7b: $5a
	dec  c                                           ; $4c7c: $0d
	nop                                              ; $4c7d: $00
	nop                                              ; $4c7e: $00
	rrca                                             ; $4c7f: $0f
	nop                                              ; $4c80: $00
	ld   bc, $0101                                   ; $4c81: $01 $01 $01
	inc  bc                                          ; $4c84: $03
	ld   [bc], a                                     ; $4c85: $02
	call nc, $2c02                                   ; $4c86: $d4 $02 $2c
	ld   a, c                                        ; $4c89: $79
	ld   [bc], a                                     ; $4c8a: $02
	rla                                              ; $4c8b: $17
	ld   h, l                                        ; $4c8c: $65
	ld   [hl], d                                     ; $4c8d: $72
	ld   e, a                                        ; $4c8e: $5f
	sub  a                                           ; $4c8f: $97
	sbc  d                                           ; $4c90: $9a
	ld   l, l                                        ; $4c91: $6d
	rst  $38                                         ; $4c92: $ff
	rst  $38                                         ; $4c93: $ff
	ld   bc, $0d04                                   ; $4c94: $01 $04 $0d
	nop                                              ; $4c97: $00
	ld   a, [bc]                                     ; $4c98: $0a
	add  hl, de                                      ; $4c99: $19
	rrca                                             ; $4c9a: $0f
	ld   bc, $5490                                   ; $4c9b: $01 $90 $54
	sub  d                                           ; $4c9e: $92
	adc  a                                           ; $4c9f: $8f
	sbc  c                                           ; $4ca0: $99
	nop                                              ; $4ca1: $00
	nop                                              ; $4ca2: $00
	rlca                                             ; $4ca3: $07
	jp   nz, $0200                                   ; $4ca4: $c2 $00 $02

	inc  bc                                          ; $4ca7: $03
	ld   bc, $2000                                   ; $4ca8: $01 $00 $20
	nop                                              ; $4cab: $00
	ld   b, $80                                      ; $4cac: $06 $80
	nop                                              ; $4cae: $00
	inc  e                                           ; $4caf: $1c
	inc  b                                           ; $4cb0: $04
	jr   nz, jr_057_4cbb                             ; $4cb1: $20 $08

	ld   bc, $6e6d                                   ; $4cb3: $01 $6d $6e
	ld   d, d                                        ; $4cb6: $52
	adc  h                                           ; $4cb7: $8c
	ei                                               ; $4cb8: $fb
	sbc  a                                           ; $4cb9: $9f
	dec  c                                           ; $4cba: $0d

jr_057_4cbb:
	nop                                              ; $4cbb: $00
	ld   a, [bc]                                     ; $4cbc: $0a
	inc  e                                           ; $4cbd: $1c
	inc  b                                           ; $4cbe: $04
	ld   hl, $1d09                                   ; $4cbf: $21 $09 $1d
	ld   b, b                                        ; $4cc2: $40
	inc  d                                           ; $4cc3: $14
	inc  bc                                          ; $4cc4: $03
	inc  d                                           ; $4cc5: $14
	ld   bc, $2803                                   ; $4cc6: $01 $03 $28
	nop                                              ; $4cc9: $00
	ld   bc, $916f                                   ; $4cca: $01 $6f $91
	and  c                                           ; $4ccd: $a1
	halt                                             ; $4cce: $76
	sbc  [hl]                                        ; $4ccf: $9e
	ld   d, b                                        ; $4cd0: $50
	ld   l, e                                        ; $4cd1: $6b
	and  c                                           ; $4cd2: $a1
	ld   [hl], l                                     ; $4cd3: $75
	ld   [hl], h                                     ; $4cd4: $74
	dec  c                                           ; $4cd5: $0d
	ld   e, l                                        ; $4cd6: $5d
	sbc  d                                           ; $4cd7: $9a
	ld   l, l                                        ; $4cd8: $6d
	and  c                                           ; $4cd9: $a1
	ld   l, [hl]                                     ; $4cda: $6e
	ld   a, e                                        ; $4cdb: $7b
	rst  $38                                         ; $4cdc: $ff
	rst  $38                                         ; $4cdd: $ff
	dec  c                                           ; $4cde: $0d
	ld   d, b                                        ; $4cdf: $50
	sbc  b                                           ; $4ce0: $98
	ld   e, d                                        ; $4ce1: $5a
	halt                                             ; $4ce2: $76
	ld   d, h                                        ; $4ce3: $54
	sbc  [hl]                                        ; $4ce4: $9e
	ld   l, a                                        ; $4ce5: $6f
	ld   d, d                                        ; $4ce6: $52
	ld   [bc], a                                     ; $4ce7: $02
	inc  de                                          ; $4ce8: $13
	ld   l, a                                        ; $4ce9: $6f
	sub  c                                           ; $4cea: $91
	and  c                                           ; $4ceb: $a1
	sbc  a                                           ; $4cec: $9f
	dec  c                                           ; $4ced: $0d
	nop                                              ; $4cee: $00
	ld   a, [bc]                                     ; $4cef: $0a
	nop                                              ; $4cf0: $00
	rrca                                             ; $4cf1: $0f
	nop                                              ; $4cf2: $00
	ld   bc, $9201                                   ; $4cf3: $01 $01 $92
	ei                                               ; $4cf6: $fb
	adc  a                                           ; $4cf7: $8f
	ld   l, l                                        ; $4cf8: $6d
	sbc  a                                           ; $4cf9: $9f
	dec  c                                           ; $4cfa: $0d
	nop                                              ; $4cfb: $00
	ld   a, [bc]                                     ; $4cfc: $0a
	dec  b                                           ; $4cfd: $05
	add  b                                           ; $4cfe: $80
	ld   b, e                                        ; $4cff: $43
	ld   bc, $0001                                   ; $4d00: $01 $01 $00
	nop                                              ; $4d03: $00
	nop                                              ; $4d04: $00
	inc  e                                           ; $4d05: $1c
	ld   b, $00                                      ; $4d06: $06 $00
	nop                                              ; $4d08: $00
	ld   [bc], a                                     ; $4d09: $02
	dec  b                                           ; $4d0a: $05
	add  b                                           ; $4d0b: $80
	adc  [hl]                                        ; $4d0c: $8e
	ld   bc, $0001                                   ; $4d0d: $01 $01 $00
	ld   bc, $9e58                                   ; $4d10: $01 $58 $9e
	ld   [$9f00], sp                                 ; $4d13: $08 $00 $9f
	dec  c                                           ; $4d16: $0d
	inc  b                                           ; $4d17: $04
	ld   c, c                                        ; $4d18: $49
	ld   e, c                                        ; $4d19: $59
	inc  b                                           ; $4d1a: $04
	di                                               ; $4d1b: $f3
	ld   e, c                                        ; $4d1c: $59
	ld   sp, hl                                      ; $4d1d: $f9
	dec  c                                           ; $4d1e: $0d
	nop                                              ; $4d1f: $00
	ld   a, [bc]                                     ; $4d20: $0a
	add  hl, de                                      ; $4d21: $19
	dec  b                                           ; $4d22: $05
	inc  bc                                          ; $4d23: $03
	ld   e, a                                        ; $4d24: $5f
	ld   d, d                                        ; $4d25: $52
	ld   h, c                                        ; $4d26: $61
	and  b                                           ; $4d27: $a0
	ld   [hl], d                                     ; $4d28: $72
	ld   e, a                                        ; $4d29: $5f
	ld   [hl], h                                     ; $4d2a: $74
	sub  b                                           ; $4d2b: $90
	sub  a                                           ; $4d2c: $97
	ld   d, h                                        ; $4d2d: $54
	nop                                              ; $4d2e: $00
	nop                                              ; $4d2f: $00
	inc  bc                                          ; $4d30: $03
	and  a                                           ; $4d31: $a7
	inc  b                                           ; $4d32: $04
	xor  d                                           ; $4d33: $aa
	ld   a, h                                        ; $4d34: $7c
	ld   h, a                                        ; $4d35: $67
	ld   h, d                                        ; $4d36: $62
	ld   h, l                                        ; $4d37: $65
	inc  b                                           ; $4d38: $04
	ld   a, b                                        ; $4d39: $78
	ld   a, c                                        ; $4d3a: $79
	ld   [hl], d                                     ; $4d3b: $72
	ld   d, d                                        ; $4d3c: $52
	ld   [hl], h                                     ; $4d3d: $74
	ld   [bc], a                                     ; $4d3e: $02
	jp   nz, $005d                                   ; $4d3f: $c2 $5d $00

	ld   bc, $ecdf                                   ; $4d42: $01 $df $ec
	and  e                                           ; $4d45: $a3
	ld   a, c                                        ; $4d46: $79
	ld   [hl], d                                     ; $4d47: $72
	ld   d, d                                        ; $4d48: $52
	ld   [hl], h                                     ; $4d49: $74
	ld   [bc], a                                     ; $4d4a: $02
	jp   nz, $005d                                   ; $4d4b: $c2 $5d $00

	ld   [bc], a                                     ; $4d4e: $02
	rlca                                             ; $4d4f: $07
	ld   h, h                                        ; $4d50: $64
	ld   bc, $0302                                   ; $4d51: $01 $02 $03
	ld   bc, $2000                                   ; $4d54: $01 $00 $20
	nop                                              ; $4d57: $00
	rlca                                             ; $4d58: $07
	inc  sp                                          ; $4d59: $33
	ld   [bc], a                                     ; $4d5a: $02
	ld   [bc], a                                     ; $4d5b: $02
	inc  bc                                          ; $4d5c: $03
	ld   bc, $2001                                   ; $4d5d: $01 $01 $20
	nop                                              ; $4d60: $00
	rlca                                             ; $4d61: $07
	db   $eb                                         ; $4d62: $eb
	ld   b, $02                                      ; $4d63: $06 $02
	inc  bc                                          ; $4d65: $03
	ld   bc, $2002                                   ; $4d66: $01 $02 $20
	nop                                              ; $4d69: $00
	ld   b, $68                                      ; $4d6a: $06 $68
	nop                                              ; $4d6c: $00
	rrca                                             ; $4d6d: $0f
	nop                                              ; $4d6e: $00
	ld   bc, $ff01                                   ; $4d6f: $01 $01 $ff
	rst  $38                                         ; $4d72: $ff
	rst  $38                                         ; $4d73: $ff
	rst  $38                                         ; $4d74: $ff
	dec  c                                           ; $4d75: $0d
	nop                                              ; $4d76: $00
	ld   a, [bc]                                     ; $4d77: $0a
	rlca                                             ; $4d78: $07
	push hl                                          ; $4d79: $e5
	nop                                              ; $4d7a: $00
	inc  bc                                          ; $4d7b: $03
	ld   d, $01                                      ; $4d7c: $16 $01
	and  l                                           ; $4d7e: $a5
	dec  h                                           ; $4d7f: $25
	nop                                              ; $4d80: $00
	rlca                                             ; $4d81: $07
	jr   z, jr_057_4d85                              ; $4d82: $28 $01

	inc  bc                                          ; $4d84: $03

jr_057_4d85:
	ld   d, $01                                      ; $4d85: $16 $01
	sub  c                                           ; $4d87: $91
	inc  hl                                          ; $4d88: $23
	nop                                              ; $4d89: $00
	inc  e                                           ; $4d8a: $1c
	ld   b, $00                                      ; $4d8b: $06 $00
	nop                                              ; $4d8d: $00
	ld   bc, $f9a1                                   ; $4d8e: $01 $a1 $f9
	db   $10                                         ; $4d91: $10
	ld   a, b                                        ; $4d92: $78
	and  c                                           ; $4d93: $a1
	ld   l, [hl]                                     ; $4d94: $6e
	ld   sp, hl                                      ; $4d95: $f9
	dec  c                                           ; $4d96: $0d
	ld   d, b                                        ; $4d97: $50
	ld   l, l                                        ; $4d98: $6d
	ld   d, d                                        ; $4d99: $52
	ld   a, h                                        ; $4d9a: $7c
	ld   [bc], a                                     ; $4d9b: $02
	ld   [hl], d                                     ; $4d9c: $72
	sbc  [hl]                                        ; $4d9d: $9e
	ld   l, e                                        ; $4d9e: $6b
	and  c                                           ; $4d9f: $a1
	ld   a, b                                        ; $4da0: $78
	ld   a, c                                        ; $4da1: $79
	dec  c                                           ; $4da2: $0d
	adc  l                                           ; $4da3: $8d
	sbc  b                                           ; $4da4: $98
	sub  l                                           ; $4da5: $95
	ld   e, l                                        ; $4da6: $5d
	inc  b                                           ; $4da7: $04
	jr   nz, jr_057_4e03                             ; $4da8: $20 $59

	ld   sp, hl                                      ; $4daa: $f9
	dec  c                                           ; $4dab: $0d
	nop                                              ; $4dac: $00
	ld   a, [bc]                                     ; $4dad: $0a
	rrca                                             ; $4dae: $0f
	nop                                              ; $4daf: $00
	ld   bc, $7d01                                   ; $4db0: $01 $01 $7d
	sbc  [hl]                                        ; $4db3: $9e
	ld   a, l                                        ; $4db4: $7d
	ld   d, d                                        ; $4db5: $52
	rst  $38                                         ; $4db6: $ff
	rst  $38                                         ; $4db7: $ff
	dec  c                                           ; $4db8: $0d
	nop                                              ; $4db9: $00
	ld   a, [bc]                                     ; $4dba: $0a
	inc  e                                           ; $4dbb: $1c
	ld   b, $01                                      ; $4dbc: $06 $01
	ld   bc, $7801                                   ; $4dbe: $01 $01 $78
	ld   a, c                                        ; $4dc1: $79
	sbc  [hl]                                        ; $4dc2: $9e
	adc  h                                           ; $4dc3: $8c
	ld   l, c                                        ; $4dc4: $69
	ld   l, l                                        ; $4dc5: $6d
	ld   h, c                                        ; $4dc6: $61
	halt                                             ; $4dc7: $76
	ld   [bc], a                                     ; $4dc8: $02
	sbc  l                                           ; $4dc9: $9d
	ld   [hl], c                                     ; $4dca: $71
	ld   [hl], h                                     ; $4dcb: $74
	and  c                                           ; $4dcc: $a1
	ld   l, [hl]                                     ; $4dcd: $6e
	sbc  a                                           ; $4dce: $9f
	dec  c                                           ; $4dcf: $0d
	db   $e3                                         ; $4dd0: $e3
	cp   b                                           ; $4dd1: $b8
	inc  bc                                          ; $4dd2: $03
	ld   l, d                                        ; $4dd3: $6a
	ld   d, h                                        ; $4dd4: $54
	ld   e, c                                        ; $4dd5: $59
	sub  a                                           ; $4dd6: $97
	adc  h                                           ; $4dd7: $8c
	ld   l, l                                        ; $4dd8: $6d
	ld   [bc], a                                     ; $4dd9: $02
	xor  d                                           ; $4dda: $aa
	ld   [hl], l                                     ; $4ddb: $75
	ld   a, b                                        ; $4ddc: $78
	sbc  a                                           ; $4ddd: $9f
	dec  c                                           ; $4dde: $0d
	nop                                              ; $4ddf: $00
	ld   a, [bc]                                     ; $4de0: $0a
	dec  c                                           ; $4de1: $0d
	nop                                              ; $4de2: $00
	nop                                              ; $4de3: $00
	rrca                                             ; $4de4: $0f
	nop                                              ; $4de5: $00
	ld   bc, $1e09                                   ; $4de6: $01 $09 $1e
	nop                                              ; $4de9: $00
	inc  e                                           ; $4dea: $1c
	ld   b, $04                                      ; $4deb: $06 $04
	inc  b                                           ; $4ded: $04
	dec  e                                           ; $4dee: $1d
	ld   b, b                                        ; $4def: $40
	ld   d, $03                                      ; $4df0: $16 $03
	ld   d, $01                                      ; $4df2: $16 $01
	ld   [bc], a                                     ; $4df4: $02
	jr   z, jr_057_4df7                              ; $4df5: $28 $00

jr_057_4df7:
	ld   bc, $9e78                                   ; $4df7: $01 $78 $9e
	ld   a, b                                        ; $4dfa: $78
	and  c                                           ; $4dfb: $a1
	ld   l, [hl]                                     ; $4dfc: $6e
	sub  [hl]                                        ; $4dfd: $96
	rst  $38                                         ; $4dfe: $ff
	rst  $38                                         ; $4dff: $ff
	dec  c                                           ; $4e00: $0d
	ld   h, [hl]                                     ; $4e01: $66
	ld   [hl], c                                     ; $4e02: $71

jr_057_4e03:
	halt                                             ; $4e03: $76
	ld   [bc], a                                     ; $4e04: $02
	sub  l                                           ; $4e05: $95
	sbc  c                                           ; $4e06: $99
	ld   a, b                                        ; $4e07: $78
	sub  [hl]                                        ; $4e08: $96
	sbc  a                                           ; $4e09: $9f
	dec  c                                           ; $4e0a: $0d
	inc  bc                                          ; $4e0b: $03
	ld   h, [hl]                                     ; $4e0c: $66
	sbc  d                                           ; $4e0d: $9a
	sbc  c                                           ; $4e0e: $99
	ld   h, [hl]                                     ; $4e0f: $66
	sub  c                                           ; $4e10: $91
	ld   a, b                                        ; $4e11: $78
	ld   d, d                                        ; $4e12: $52
	ld   e, c                                        ; $4e13: $59
	sub  [hl]                                        ; $4e14: $96
	rst  $38                                         ; $4e15: $ff
	rst  $38                                         ; $4e16: $ff
	dec  c                                           ; $4e17: $0d
	nop                                              ; $4e18: $00
	ld   a, [bc]                                     ; $4e19: $0a
	ld   bc, $718c                                   ; $4e1a: $01 $8c $71
	ld   l, l                                        ; $4e1d: $6d
	ld   e, l                                        ; $4e1e: $5d
	rst  $38                                         ; $4e1f: $ff
	rst  $38                                         ; $4e20: $ff
	dec  c                                           ; $4e21: $0d
	nop                                              ; $4e22: $00
	ld   a, [bc]                                     ; $4e23: $0a
	dec  c                                           ; $4e24: $0d
	nop                                              ; $4e25: $00
	nop                                              ; $4e26: $00
	rrca                                             ; $4e27: $0f
	nop                                              ; $4e28: $00
	ld   bc, $1e09                                   ; $4e29: $01 $09 $1e
	nop                                              ; $4e2c: $00
	inc  e                                           ; $4e2d: $1c
	ld   b, $00                                      ; $4e2e: $06 $00
	nop                                              ; $4e30: $00
	ld   bc, $4904                                   ; $4e31: $01 $04 $49
	ld   e, c                                        ; $4e34: $59
	inc  b                                           ; $4e35: $04
	di                                               ; $4e36: $f3
	ld   e, d                                        ; $4e37: $5a
	ld   d, b                                        ; $4e38: $50
	sbc  c                                           ; $4e39: $99
	and  c                                           ; $4e3a: $a1
	ld   h, [hl]                                     ; $4e3b: $66
	sub  c                                           ; $4e3c: $91
	ld   a, b                                        ; $4e3d: $78
	ld   d, d                                        ; $4e3e: $52
	ld   a, h                                        ; $4e3f: $7c
	ld   e, c                                        ; $4e40: $59
	ld   sp, hl                                      ; $4e41: $f9
	dec  c                                           ; $4e42: $0d
	nop                                              ; $4e43: $00
	ld   a, [bc]                                     ; $4e44: $0a
	ld   bc, $d604                                   ; $4e45: $01 $04 $d6
	ld   d, d                                        ; $4e48: $52
	ld   a, b                                        ; $4e49: $78
	sub  a                                           ; $4e4a: $97
	sbc  [hl]                                        ; $4e4b: $9e
	ld   h, a                                        ; $4e4c: $67
	adc  h                                           ; $4e4d: $8c
	ld   a, b                                        ; $4e4e: $78
	ld   d, d                                        ; $4e4f: $52
	ld   e, d                                        ; $4e50: $5a
	dec  c                                           ; $4e51: $0d
	ld   [bc], a                                     ; $4e52: $02
	and  l                                           ; $4e53: $a5
	ld   e, c                                        ; $4e54: $59
	sub  a                                           ; $4e55: $97
	db   $e3                                         ; $4e56: $e3
	cp   b                                           ; $4e57: $b8
	ld   a, b                                        ; $4e58: $78
	and  c                                           ; $4e59: $a1
	ld   [hl], l                                     ; $4e5a: $75
	ld   a, b                                        ; $4e5b: $78
	sbc  a                                           ; $4e5c: $9f
	dec  c                                           ; $4e5d: $0d
	nop                                              ; $4e5e: $00
	ld   a, [bc]                                     ; $4e5f: $0a
	dec  c                                           ; $4e60: $0d
	nop                                              ; $4e61: $00
	nop                                              ; $4e62: $00
	rrca                                             ; $4e63: $0f
	nop                                              ; $4e64: $00
	ld   bc, $1e09                                   ; $4e65: $01 $09 $1e
	nop                                              ; $4e68: $00
	rrca                                             ; $4e69: $0f
	nop                                              ; $4e6a: $00
	ld   bc, $0401                                   ; $4e6b: $01 $01 $04
	ld   l, l                                        ; $4e6e: $6d
	ld   a, c                                        ; $4e6f: $79
	ld   [bc], a                                     ; $4e70: $02
	or   [hl]                                        ; $4e71: $b6
	inc  bc                                          ; $4e72: $03
	ld   l, e                                        ; $4e73: $6b
	ld   a, h                                        ; $4e74: $7c
	ld   e, a                                        ; $4e75: $5f
	ld   d, d                                        ; $4e76: $52
	ld   h, c                                        ; $4e77: $61
	and  b                                           ; $4e78: $a0
	dec  c                                           ; $4e79: $0d
	ld   [hl], d                                     ; $4e7a: $72
	ld   e, a                                        ; $4e7b: $5f
	ld   [hl], h                                     ; $4e7c: $74
	sub  b                                           ; $4e7d: $90
	sub  a                                           ; $4e7e: $97
	ld   d, [hl]                                     ; $4e7f: $56
	adc  h                                           ; $4e80: $8c
	ld   l, c                                        ; $4e81: $69
	and  c                                           ; $4e82: $a1
	ld   e, c                                        ; $4e83: $59
	ld   sp, hl                                      ; $4e84: $f9
	dec  c                                           ; $4e85: $0d
	nop                                              ; $4e86: $00
	ld   a, [bc]                                     ; $4e87: $0a
	inc  e                                           ; $4e88: $1c
	ld   b, $01                                      ; $4e89: $06 $01
	ld   bc, $5801                                   ; $4e8b: $01 $01 $58
	ld   d, h                                        ; $4e8e: $54
	ld   a, [$5210]                                  ; $4e8f: $fa $10 $52
	ld   d, d                                        ; $4e92: $52
	ld   l, d                                        ; $4e93: $6a
	sbc  a                                           ; $4e94: $9f
	dec  c                                           ; $4e95: $0d
	nop                                              ; $4e96: $00
	ld   a, [bc]                                     ; $4e97: $0a
	ld   a, [de]                                     ; $4e98: $1a
	ld   b, $07                                      ; $4e99: $06 $07
	xor  d                                           ; $4e9b: $aa
	ld   bc, $0402                                   ; $4e9c: $01 $02 $04
	ld   bc, $2002                                   ; $4e9f: $01 $02 $20
	nop                                              ; $4ea2: $00
	rlca                                             ; $4ea3: $07
	adc  $01                                         ; $4ea4: $ce $01
	ld   [bc], a                                     ; $4ea6: $02
	inc  b                                           ; $4ea7: $04
	ld   bc, $2001                                   ; $4ea8: $01 $01 $20
	nop                                              ; $4eab: $00
	ld   b, $ed                                      ; $4eac: $06 $ed
	ld   bc, $061c                                   ; $4eae: $01 $1c $06
	rlca                                             ; $4eb1: $07
	rlca                                             ; $4eb2: $07
	dec  e                                           ; $4eb3: $1d
	ld   b, b                                        ; $4eb4: $40
	ld   d, $03                                      ; $4eb5: $16 $03
	ld   d, $01                                      ; $4eb7: $16 $01
	inc  bc                                          ; $4eb9: $03
	jr   z, jr_057_4ebc                              ; $4eba: $28 $00

jr_057_4ebc:
	ld   bc, $6267                                   ; $4ebc: $01 $67 $62
	ld   d, d                                        ; $4ebf: $52
	ld   l, d                                        ; $4ec0: $6a
	ld   [$9f00], sp                                 ; $4ec1: $08 $00 $9f
	dec  c                                           ; $4ec4: $0d
	sub  d                                           ; $4ec5: $92
	sbc  c                                           ; $4ec6: $99
	ld   h, [hl]                                     ; $4ec7: $66
	sub  c                                           ; $4ec8: $91
	ld   a, b                                        ; $4ec9: $78
	ld   d, d                                        ; $4eca: $52
	ld   e, c                                        ; $4ecb: $59
	sbc  a                                           ; $4ecc: $9f
	dec  c                                           ; $4ecd: $0d
	nop                                              ; $4ece: $00
	ld   a, [bc]                                     ; $4ecf: $0a
	ld   b, $1b                                      ; $4ed0: $06 $1b
	ld   [bc], a                                     ; $4ed2: $02
	inc  e                                           ; $4ed3: $1c
	ld   b, $01                                      ; $4ed4: $06 $01
	ld   bc, $401d                                   ; $4ed6: $01 $1d $40
	ld   d, $03                                      ; $4ed9: $16 $03
	ld   d, $01                                      ; $4edb: $16 $01
	ld   bc, $0028                                   ; $4edd: $01 $28 $00
	ld   bc, $508c                                   ; $4ee0: $01 $8c $50
	adc  h                                           ; $4ee3: $8c
	ld   d, b                                        ; $4ee4: $50
	ld   [hl], c                                     ; $4ee5: $71
	ld   [hl], h                                     ; $4ee6: $74
	halt                                             ; $4ee7: $76
	ld   h, c                                        ; $4ee8: $61
	ld   l, [hl]                                     ; $4ee9: $6e
	ld   a, b                                        ; $4eea: $78
	sbc  a                                           ; $4eeb: $9f
	dec  c                                           ; $4eec: $0d
	nop                                              ; $4eed: $00
	ld   a, [bc]                                     ; $4eee: $0a
	ld   b, $1b                                      ; $4eef: $06 $1b
	ld   [bc], a                                     ; $4ef1: $02
	inc  e                                           ; $4ef2: $1c
	ld   b, $05                                      ; $4ef3: $06 $05
	dec  b                                           ; $4ef5: $05
	dec  e                                           ; $4ef6: $1d
	ld   b, b                                        ; $4ef7: $40
	ld   d, $03                                      ; $4ef8: $16 $03
	ld   d, $01                                      ; $4efa: $16 $01
	ld   [bc], a                                     ; $4efc: $02
	add  hl, hl                                      ; $4efd: $29
	nop                                              ; $4efe: $00
	ld   bc, $a178                                   ; $4eff: $01 $78 $a1
	ld   l, [hl]                                     ; $4f02: $6e
	sub  [hl]                                        ; $4f03: $96
	db   $fc                                         ; $4f04: $fc
	sbc  a                                           ; $4f05: $9f
	dec  c                                           ; $4f06: $0d
	ld   l, d                                        ; $4f07: $6a
	and  c                                           ; $4f08: $a1
	ld   l, d                                        ; $4f09: $6a
	and  c                                           ; $4f0a: $a1
	pop  bc                                          ; $4f0b: $c1
	db   $e3                                         ; $4f0c: $e3
	ld   h, [hl]                                     ; $4f0d: $66
	sub  c                                           ; $4f0e: $91
	ld   a, b                                        ; $4f0f: $78
	ld   d, d                                        ; $4f10: $52
	ld   e, c                                        ; $4f11: $59
	sbc  a                                           ; $4f12: $9f
	dec  c                                           ; $4f13: $0d
	xor  l                                           ; $4f14: $ad
	call nz, $b8b0                                   ; $4f15: $c4 $b0 $b8
	rst  $38                                         ; $4f18: $ff
	rst  $38                                         ; $4f19: $ff
	dec  c                                           ; $4f1a: $0d
	nop                                              ; $4f1b: $00
	ld   a, [bc]                                     ; $4f1c: $0a
	ld   b, $1b                                      ; $4f1d: $06 $1b
	ld   [bc], a                                     ; $4f1f: $02
	inc  e                                           ; $4f20: $1c
	ld   b, $00                                      ; $4f21: $06 $00
	nop                                              ; $4f23: $00
	ld   bc, $9166                                   ; $4f24: $01 $66 $91
	sbc  [hl]                                        ; $4f27: $9e
	adc  h                                           ; $4f28: $8c
	ld   l, l                                        ; $4f29: $6d
	ld   a, b                                        ; $4f2a: $78
	sbc  a                                           ; $4f2b: $9f
	dec  c                                           ; $4f2c: $0d
	nop                                              ; $4f2d: $00
	ld   a, [bc]                                     ; $4f2e: $0a
	dec  c                                           ; $4f2f: $0d
	nop                                              ; $4f30: $00
	nop                                              ; $4f31: $00
	rrca                                             ; $4f32: $0f
	nop                                              ; $4f33: $00
	ld   bc, $1e09                                   ; $4f34: $01 $09 $1e
	nop                                              ; $4f37: $00
	rrca                                             ; $4f38: $0f
	nop                                              ; $4f39: $00
	ld   bc, $0301                                   ; $4f3a: $01 $01 $03
	and  a                                           ; $4f3d: $a7
	adc  l                                           ; $4f3e: $8d
	ld   a, h                                        ; $4f3f: $7c
	inc  b                                           ; $4f40: $04
	xor  d                                           ; $4f41: $aa
	halt                                             ; $4f42: $76
	ld   e, c                                        ; $4f43: $59
	dec  c                                           ; $4f44: $0d
	inc  b                                           ; $4f45: $04
	ld   c, c                                        ; $4f46: $49
	and  b                                           ; $4f47: $a0
	ld   h, l                                        ; $4f48: $65
	ld   [hl], h                                     ; $4f49: $74
	sbc  c                                           ; $4f4a: $99
	and  c                                           ; $4f4b: $a1
	ld   [hl], l                                     ; $4f4c: $75
	ld   h, a                                        ; $4f4d: $67
	ld   e, c                                        ; $4f4e: $59
	ld   sp, hl                                      ; $4f4f: $f9
	dec  c                                           ; $4f50: $0d
	nop                                              ; $4f51: $00
	ld   a, [bc]                                     ; $4f52: $0a
	inc  e                                           ; $4f53: $1c
	ld   b, $00                                      ; $4f54: $06 $00
	nop                                              ; $4f56: $00
	ld   bc, $986b                                   ; $4f57: $01 $6b $98
	sub  c                                           ; $4f5a: $91
	sub  b                                           ; $4f5b: $90
	ld   l, a                                        ; $4f5c: $6f
	sbc  e                                           ; $4f5d: $9b
	and  c                                           ; $4f5e: $a1
	dec  c                                           ; $4f5f: $0d
	ld   [bc], a                                     ; $4f60: $02
	or   [hl]                                        ; $4f61: $b6
	inc  bc                                          ; $4f62: $03
	ld   l, e                                        ; $4f63: $6b
	ld   a, h                                        ; $4f64: $7c
	ld   e, a                                        ; $4f65: $5f
	ld   d, d                                        ; $4f66: $52
	ld   h, c                                        ; $4f67: $61
	ld   h, e                                        ; $4f68: $63
	sbc  a                                           ; $4f69: $9f
	dec  c                                           ; $4f6a: $0d
	nop                                              ; $4f6b: $00
	ld   a, [bc]                                     ; $4f6c: $0a
	ld   bc, $546b                                   ; $4f6d: $01 $6b $54
	ld   l, [hl]                                     ; $4f70: $6e
	sbc  [hl]                                        ; $4f71: $9e
	ld   [$9f00], sp                                 ; $4f72: $08 $00 $9f
	dec  c                                           ; $4f75: $0d
	ld   e, c                                        ; $4f76: $59
	sbc  l                                           ; $4f77: $9d
	sub  a                                           ; $4f78: $97
	ld   [bc], a                                     ; $4f79: $02
	halt                                             ; $4f7a: $76
	sbc  c                                           ; $4f7b: $99
	ld   e, c                                        ; $4f7c: $59
	ld   sp, hl                                      ; $4f7d: $f9
	dec  c                                           ; $4f7e: $0d
	nop                                              ; $4f7f: $00
	ld   a, [bc]                                     ; $4f80: $0a
	add  hl, de                                      ; $4f81: $19
	dec  b                                           ; $4f82: $05
	ld   [bc], a                                     ; $4f83: $02
	ld   a, l                                        ; $4f84: $7d
	ld   d, d                                        ; $4f85: $52
	nop                                              ; $4f86: $00
	nop                                              ; $4f87: $00
	ld   d, d                                        ; $4f88: $52
	ld   d, d                                        ; $4f89: $52
	ld   d, [hl]                                     ; $4f8a: $56
	nop                                              ; $4f8b: $00
	ld   bc, $5b07                                   ; $4f8c: $01 $07 $5b
	inc  bc                                          ; $4f8f: $03
	ld   [bc], a                                     ; $4f90: $02
	inc  bc                                          ; $4f91: $03
	ld   bc, $2000                                   ; $4f92: $01 $00 $20
	nop                                              ; $4f95: $00
	rlca                                             ; $4f96: $07
	sbc  l                                           ; $4f97: $9d
	ld   [bc], a                                     ; $4f98: $02
	ld   [bc], a                                     ; $4f99: $02
	inc  bc                                          ; $4f9a: $03
	ld   bc, $2001                                   ; $4f9b: $01 $01 $20
	nop                                              ; $4f9e: $00
	ld   b, $e2                                      ; $4f9f: $06 $e2
	ld   [bc], a                                     ; $4fa1: $02
	rrca                                             ; $4fa2: $0f
	nop                                              ; $4fa3: $00
	ld   bc, $6701                                   ; $4fa4: $01 $01 $67
	adc  l                                           ; $4fa7: $8d
	adc  h                                           ; $4fa8: $8c
	ld   l, c                                        ; $4fa9: $69
	and  c                                           ; $4faa: $a1
	sbc  a                                           ; $4fab: $9f
	dec  c                                           ; $4fac: $0d
	ld   [bc], a                                     ; $4fad: $02
	and  l                                           ; $4fae: $a5
	ld   l, a                                        ; $4faf: $6f
	sub  l                                           ; $4fb0: $95
	ld   [hl], c                                     ; $4fb1: $71
	halt                                             ; $4fb2: $76
	inc  b                                           ; $4fb3: $04
	di                                               ; $4fb4: $f3
	ld   [bc], a                                     ; $4fb5: $02
	jp   $047c                                       ; $4fb6: $c3 $7c $04


	ld   [hl-], a                                    ; $4fb9: $32
	inc  b                                           ; $4fba: $04
	dec  bc                                          ; $4fbb: $0b
	dec  c                                           ; $4fbc: $0d
	ld   a, b                                        ; $4fbd: $78
	and  c                                           ; $4fbe: $a1
	ld   [hl], l                                     ; $4fbf: $75
	ld   h, a                                        ; $4fc0: $67
	sub  [hl]                                        ; $4fc1: $96
	sbc  a                                           ; $4fc2: $9f
	dec  c                                           ; $4fc3: $0d
	nop                                              ; $4fc4: $00
	ld   a, [bc]                                     ; $4fc5: $0a
	inc  e                                           ; $4fc6: $1c
	ld   b, $00                                      ; $4fc7: $06 $00
	nop                                              ; $4fc9: $00
	ld   bc, $546b                                   ; $4fca: $01 $6b $54
	ld   e, c                                        ; $4fcd: $59
	sbc  [hl]                                        ; $4fce: $9e
	ld   h, [hl]                                     ; $4fcf: $66
	sub  c                                           ; $4fd0: $91
	ld   d, b                                        ; $4fd1: $50
	adc  h                                           ; $4fd2: $8c
	ld   l, l                                        ; $4fd3: $6d
	dec  c                                           ; $4fd4: $0d
	ld   [bc], a                                     ; $4fd5: $02
	and  l                                           ; $4fd6: $a5
	inc  b                                           ; $4fd7: $04
	add  hl, hl                                      ; $4fd8: $29
	ld   a, b                                        ; $4fd9: $78
	sbc  a                                           ; $4fda: $9f
	dec  c                                           ; $4fdb: $0d
	nop                                              ; $4fdc: $00
	ld   a, [bc]                                     ; $4fdd: $0a
	dec  c                                           ; $4fde: $0d
	nop                                              ; $4fdf: $00
	nop                                              ; $4fe0: $00
	rrca                                             ; $4fe1: $0f
	nop                                              ; $4fe2: $00
	ld   bc, $1e09                                   ; $4fe3: $01 $09 $1e
	nop                                              ; $4fe6: $00
	inc  e                                           ; $4fe7: $1c
	ld   b, $05                                      ; $4fe8: $06 $05
	dec  b                                           ; $4fea: $05
	ld   bc, $ffff                                   ; $4feb: $01 $ff $ff
	ld   a, b                                        ; $4fee: $78
	and  c                                           ; $4fef: $a1
	ld   l, [hl]                                     ; $4ff0: $6e
	sub  [hl]                                        ; $4ff1: $96
	sbc  [hl]                                        ; $4ff2: $9e
	dec  c                                           ; $4ff3: $0d
	ret  nc                                          ; $4ff4: $d0

	call nz, $ecae                                   ; $4ff5: $c4 $ae $ec
	ld   h, l                                        ; $4ff8: $65
	ld   a, b                                        ; $4ff9: $78
	ld   d, d                                        ; $4ffa: $52
	sub  d                                           ; $4ffb: $92
	ld   [hl], d                                     ; $4ffc: $72
	ld   l, [hl]                                     ; $4ffd: $6e
	ld   a, b                                        ; $4ffe: $78
	ei                                               ; $4fff: $fb
	sbc  a                                           ; $5000: $9f
	dec  c                                           ; $5001: $0d
	nop                                              ; $5002: $00
	ld   a, [bc]                                     ; $5003: $0a
	ld   bc, $9789                                   ; $5004: $01 $89 $97
	sbc  [hl]                                        ; $5007: $9e
	ld   [de], a                                     ; $5008: $12
	ld   [bc], a                                     ; $5009: $02
	sub  e                                           ; $500a: $93
	xor  l                                           ; $500b: $ad
	ei                                               ; $500c: $fb
	push af                                          ; $500d: $f5
	halt                                             ; $500e: $76
	sub  d                                           ; $500f: $92
	ld   [hl], c                                     ; $5010: $71
	ld   [hl], h                                     ; $5011: $74
	dec  c                                           ; $5012: $0d
	adc  l                                           ; $5013: $8d
	sbc  e                                           ; $5014: $9b
	sub  [hl]                                        ; $5015: $96
	sbc  [hl]                                        ; $5016: $9e
	cp   d                                           ; $5017: $ba
	call nz, $ecae                                   ; $5018: $c4 $ae $ec
	ld   h, a                                        ; $501b: $67
	sbc  c                                           ; $501c: $99
	ld   l, d                                        ; $501d: $6a
	ld   a, [$000d]                                  ; $501e: $fa $0d $00
	ld   a, [bc]                                     ; $5021: $0a
	dec  c                                           ; $5022: $0d
	ld   b, $00                                      ; $5023: $06 $00
	rrca                                             ; $5025: $0f
	nop                                              ; $5026: $00
	ld   bc, $9d01                                   ; $5027: $01 $01 $9d
	ld   e, c                                        ; $502a: $59
	sbc  b                                           ; $502b: $98
	adc  h                                           ; $502c: $8c
	ld   h, l                                        ; $502d: $65
	ld   l, l                                        ; $502e: $6d
	sbc  [hl]                                        ; $502f: $9e
	dec  c                                           ; $5030: $0d
	ld   [hl], l                                     ; $5031: $75
	ld   a, l                                        ; $5032: $7d
	sbc  [hl]                                        ; $5033: $9e
	sub  d                                           ; $5034: $92
	ld   [hl], c                                     ; $5035: $71
	ld   [hl], h                                     ; $5036: $74
	adc  l                                           ; $5037: $8d
	adc  h                                           ; $5038: $8c
	ld   h, a                                        ; $5039: $67
	sbc  a                                           ; $503a: $9f
	dec  c                                           ; $503b: $0d
	nop                                              ; $503c: $00
	ld   a, [bc]                                     ; $503d: $0a
	inc  e                                           ; $503e: $1c
	ld   b, $00                                      ; $503f: $06 $00
	nop                                              ; $5041: $00
	ld   bc, $546b                                   ; $5042: $01 $6b $54
	ld   h, c                                        ; $5045: $61
	ld   a, b                                        ; $5046: $78
	ld   e, l                                        ; $5047: $5d
	ld   [hl], c                                     ; $5048: $71
	ld   l, a                                        ; $5049: $6f
	sub  c                                           ; $504a: $91
	ld   a, b                                        ; $504b: $78
	ld   a, [$960d]                                  ; $504c: $fa $0d $96
	ld   h, l                                        ; $504f: $65
	sbc  [hl]                                        ; $5050: $9e
	ld   h, [hl]                                     ; $5051: $66
	sub  c                                           ; $5052: $91
	ld   d, b                                        ; $5053: $50
	sbc  [hl]                                        ; $5054: $9e
	dec  b                                           ; $5055: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5056: $cf
	adc  a                                           ; $5057: $8f
	ld   a, [$0dfa]                                  ; $5058: $fa $fa $0d
	nop                                              ; $505b: $00
	ld   a, [bc]                                     ; $505c: $0a
	ld   b, $70                                      ; $505d: $06 $70
	inc  bc                                          ; $505f: $03
	inc  e                                           ; $5060: $1c
	ld   b, $02                                      ; $5061: $06 $02
	ld   [bc], a                                     ; $5063: $02
	ld   bc, $6596                                   ; $5064: $01 $96 $65
	sbc  a                                           ; $5067: $9f
	dec  c                                           ; $5068: $0d
	ld   h, [hl]                                     ; $5069: $66
	sub  c                                           ; $506a: $91
	ld   d, b                                        ; $506b: $50
	sbc  [hl]                                        ; $506c: $9e
	dec  b                                           ; $506d: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $506e: $cf
	adc  a                                           ; $506f: $8f
	ld   a, [$0dfa]                                  ; $5070: $fa $fa $0d
	nop                                              ; $5073: $00
	ld   a, [bc]                                     ; $5074: $0a
	add  hl, de                                      ; $5075: $19
	dec  b                                           ; $5076: $05
	inc  bc                                          ; $5077: $03
	add  hl, de                                      ; $5078: $19
	inc  b                                           ; $5079: $04
	push bc                                          ; $507a: $c5
	ld   [bc], a                                     ; $507b: $02
	halt                                             ; $507c: $76
	sbc  d                                           ; $507d: $9a
	ld   l, l                                        ; $507e: $6d
	nop                                              ; $507f: $00
	nop                                              ; $5080: $00
	inc  d                                           ; $5081: $14
	ld   de, $c504                                   ; $5082: $11 $04 $c5
	ld   [bc], a                                     ; $5085: $02
	halt                                             ; $5086: $76
	sbc  b                                           ; $5087: $98
	ld   l, l                                        ; $5088: $6d
	ld   e, c                                        ; $5089: $59
	ld   [hl], c                                     ; $508a: $71
	ld   l, l                                        ; $508b: $6d
	nop                                              ; $508c: $00
	ld   bc, $0416                                   ; $508d: $01 $16 $04
	push bc                                          ; $5090: $c5
	ld   [bc], a                                     ; $5091: $02
	halt                                             ; $5092: $76
	sbc  d                                           ; $5093: $9a
	ld   [hl], h                                     ; $5094: $74
	sub  [hl]                                        ; $5095: $96
	ld   e, c                                        ; $5096: $59
	ld   [hl], c                                     ; $5097: $71
	ld   l, l                                        ; $5098: $6d
	nop                                              ; $5099: $00
	ld   [bc], a                                     ; $509a: $02
	rlca                                             ; $509b: $07
	inc  l                                           ; $509c: $2c
	inc  b                                           ; $509d: $04
	ld   [bc], a                                     ; $509e: $02
	inc  bc                                          ; $509f: $03
	ld   bc, $2000                                   ; $50a0: $01 $00 $20
	nop                                              ; $50a3: $00
	rlca                                             ; $50a4: $07
	add  sp, $03                                     ; $50a5: $e8 $03
	ld   [bc], a                                     ; $50a7: $02
	inc  bc                                          ; $50a8: $03
	ld   bc, $2001                                   ; $50a9: $01 $01 $20
	nop                                              ; $50ac: $00
	rlca                                             ; $50ad: $07
	or   h                                           ; $50ae: $b4
	inc  bc                                          ; $50af: $03
	ld   [bc], a                                     ; $50b0: $02
	inc  bc                                          ; $50b1: $03
	ld   bc, $2002                                   ; $50b2: $01 $02 $20
	nop                                              ; $50b5: $00
	ld   b, $63                                      ; $50b6: $06 $63
	inc  b                                           ; $50b8: $04
	inc  e                                           ; $50b9: $1c
	ld   b, $01                                      ; $50ba: $06 $01
	ld   bc, $401d                                   ; $50bc: $01 $1d $40
	ld   d, $03                                      ; $50bf: $16 $03
	ld   d, $01                                      ; $50c1: $16 $01
	ld   bc, $0028                                   ; $50c3: $01 $28 $00
	ld   bc, $7158                                   ; $50c6: $01 $58 $71
	ld   a, [$1610]                                  ; $50c9: $fa $10 $16
	inc  b                                           ; $50cc: $04
	push bc                                          ; $50cd: $c5
	ld   e, c                                        ; $50ce: $59
	sbc  a                                           ; $50cf: $9f
	dec  c                                           ; $50d0: $0d
	adc  h                                           ; $50d1: $8c
	ld   d, b                                        ; $50d2: $50
	sbc  [hl]                                        ; $50d3: $9e
	adc  h                                           ; $50d4: $8c
	ld   d, b                                        ; $50d5: $50
	ld   [hl], c                                     ; $50d6: $71
	ld   [hl], h                                     ; $50d7: $74
	halt                                             ; $50d8: $76
	ld   h, c                                        ; $50d9: $61
	ld   e, c                                        ; $50da: $59
	sbc  a                                           ; $50db: $9f
	dec  c                                           ; $50dc: $0d
	ld   h, [hl]                                     ; $50dd: $66
	sub  c                                           ; $50de: $91
	ld   d, b                                        ; $50df: $50
	sbc  [hl]                                        ; $50e0: $9e
	sub  b                                           ; $50e1: $90
	ld   d, h                                        ; $50e2: $54
	ld   [de], a                                     ; $50e3: $12
	ld   [bc], a                                     ; $50e4: $02
	sub  e                                           ; $50e5: $93
	sbc  a                                           ; $50e6: $9f
	dec  c                                           ; $50e7: $0d
	nop                                              ; $50e8: $00
	ld   a, [bc]                                     ; $50e9: $0a
	ld   b, $9e                                      ; $50ea: $06 $9e
	inc  b                                           ; $50ec: $04
	inc  e                                           ; $50ed: $1c
	ld   b, $05                                      ; $50ee: $06 $05
	dec  b                                           ; $50f0: $05
	ld   bc, $9850                                   ; $50f1: $01 $50 $98
	sub  c                                           ; $50f4: $91
	ei                                               ; $50f5: $fb
	sbc  [hl]                                        ; $50f6: $9e
	inc  d                                           ; $50f7: $14
	ld   de, $c504                                   ; $50f8: $11 $04 $c5
	ld   e, l                                        ; $50fb: $5d
	sub  a                                           ; $50fc: $97
	ld   d, d                                        ; $50fd: $52
	dec  c                                           ; $50fe: $0d
	ld   [bc], a                                     ; $50ff: $02
	halt                                             ; $5100: $76
	sbc  b                                           ; $5101: $98

Call_057_5102:
	ld   l, e                                        ; $5102: $6b
	ld   d, h                                        ; $5103: $54
	ld   a, b                                        ; $5104: $78
	ld   d, d                                        ; $5105: $52
	ld   e, e                                        ; $5106: $5b
	ld   e, b                                        ; $5107: $58
	ld   d, d                                        ; $5108: $52
	ld   l, [hl]                                     ; $5109: $6e
	ld   [hl], c                                     ; $510a: $71
	ld   l, l                                        ; $510b: $6d
	ld   a, h                                        ; $510c: $7c
	ld   a, c                                        ; $510d: $79
	dec  c                                           ; $510e: $0d
	inc  d                                           ; $510f: $14
	inc  b                                           ; $5110: $04
	push bc                                          ; $5111: $c5
	ld   h, l                                        ; $5112: $65
	ld   e, c                                        ; $5113: $59
	ld   [bc], a                                     ; $5114: $02
	halt                                             ; $5115: $76
	sbc  d                                           ; $5116: $9a
	ld   [hl], h                                     ; $5117: $74
	ld   a, b                                        ; $5118: $78
	ld   d, d                                        ; $5119: $52
	ld   l, d                                        ; $511a: $6a
	sbc  a                                           ; $511b: $9f
	dec  c                                           ; $511c: $0d
	nop                                              ; $511d: $00
	ld   a, [bc]                                     ; $511e: $0a
	ld   bc, $9166                                   ; $511f: $01 $66 $91
	ld   d, b                                        ; $5122: $50
	sbc  [hl]                                        ; $5123: $9e
	sub  b                                           ; $5124: $90
	ld   d, h                                        ; $5125: $54
	ld   [de], a                                     ; $5126: $12
	ld   [bc], a                                     ; $5127: $02
	sub  e                                           ; $5128: $93
	ld   l, [hl]                                     ; $5129: $6e
	sbc  a                                           ; $512a: $9f
	dec  c                                           ; $512b: $0d
	nop                                              ; $512c: $00
	ld   a, [bc]                                     ; $512d: $0a
	ld   b, $9e                                      ; $512e: $06 $9e
	inc  b                                           ; $5130: $04
	inc  e                                           ; $5131: $1c
	ld   b, $01                                      ; $5132: $06 $01
	ld   bc, $401d                                   ; $5134: $01 $1d $40
	ld   d, $03                                      ; $5137: $16 $03
	ld   d, $01                                      ; $5139: $16 $01
	ld   [bc], a                                     ; $513b: $02
	jr   z, jr_057_513e                              ; $513c: $28 $00

jr_057_513e:
	ld   bc, $7158                                   ; $513e: $01 $58 $71
	ld   a, [$1910]                                  ; $5141: $fa $10 $19
	inc  b                                           ; $5144: $04
	push bc                                          ; $5145: $c5
	sub  b                                           ; $5146: $90
	ld   [bc], a                                     ; $5147: $02
	halt                                             ; $5148: $76
	sbc  c                                           ; $5149: $99
	halt                                             ; $514a: $76
	ld   a, l                                        ; $514b: $7d
	dec  c                                           ; $514c: $0d
	ld   a, b                                        ; $514d: $78
	ld   e, c                                        ; $514e: $59
	ld   a, b                                        ; $514f: $78
	ld   e, c                                        ; $5150: $59
	sub  d                                           ; $5151: $92
	sbc  c                                           ; $5152: $99
	ld   h, [hl]                                     ; $5153: $66
	sub  c                                           ; $5154: $91
	and  c                                           ; $5155: $a1
	sbc  a                                           ; $5156: $9f
	dec  c                                           ; $5157: $0d
	sub  [hl]                                        ; $5158: $96
	ld   h, l                                        ; $5159: $65
	sbc  [hl]                                        ; $515a: $9e
	sub  b                                           ; $515b: $90
	ld   d, h                                        ; $515c: $54
	ld   [de], a                                     ; $515d: $12
	ld   [bc], a                                     ; $515e: $02
	sub  e                                           ; $515f: $93
	ld   l, [hl]                                     ; $5160: $6e
	sbc  a                                           ; $5161: $9f
	dec  c                                           ; $5162: $0d
	nop                                              ; $5163: $00
	ld   a, [bc]                                     ; $5164: $0a
	ld   b, $9e                                      ; $5165: $06 $9e
	inc  b                                           ; $5167: $04
	inc  e                                           ; $5168: $1c
	ld   b, $05                                      ; $5169: $06 $05
	dec  b                                           ; $516b: $05
	dec  e                                           ; $516c: $1d
	ld   b, b                                        ; $516d: $40
	ld   d, $03                                      ; $516e: $16 $03
	ld   d, $01                                      ; $5170: $16 $01
	ld   [bc], a                                     ; $5172: $02
	add  hl, hl                                      ; $5173: $29
	nop                                              ; $5174: $00
	ld   bc, $a178                                   ; $5175: $01 $78 $a1
	ld   l, [hl]                                     ; $5178: $6e
	sub  [hl]                                        ; $5179: $96
	sbc  [hl]                                        ; $517a: $9e
	ld   h, c                                        ; $517b: $61
	and  c                                           ; $517c: $a1
	ld   a, b                                        ; $517d: $78
	ld   e, c                                        ; $517e: $59
	sbc  l                                           ; $517f: $9d
	sub  a                                           ; $5180: $97
	dec  c                                           ; $5181: $0d
	ld   e, [hl]                                     ; $5182: $5e
	sub  a                                           ; $5183: $97
	ld   d, d                                        ; $5184: $52
	ld   [hl], l                                     ; $5185: $75
	call nc, $a1d4                                   ; $5186: $d4 $d4 $a1
	ld   a, b                                        ; $5189: $78
	sub  [hl]                                        ; $518a: $96
	ld   a, b                                        ; $518b: $78
	sbc  a                                           ; $518c: $9f
	dec  c                                           ; $518d: $0d
	nop                                              ; $518e: $00
	inc  e                                           ; $518f: $1c
	ld   b, $02                                      ; $5190: $06 $02
	ld   [bc], a                                     ; $5192: $02
	ld   bc, $5490                                   ; $5193: $01 $90 $54
	ld   d, d                                        ; $5196: $52
	ld   d, d                                        ; $5197: $52
	sbc  [hl]                                        ; $5198: $9e
	ld   d, b                                        ; $5199: $50
	ld   [hl], c                                     ; $519a: $71
	ld   l, a                                        ; $519b: $6f
	ld   d, d                                        ; $519c: $52
	ld   e, a                                        ; $519d: $5f
	sbc  a                                           ; $519e: $9f
	dec  c                                           ; $519f: $0d
	nop                                              ; $51a0: $00
	ld   a, [bc]                                     ; $51a1: $0a
	nop                                              ; $51a2: $00
	add  hl, de                                      ; $51a3: $19
	dec  b                                           ; $51a4: $05
	inc  bc                                          ; $51a5: $03
	ld   [de], a                                     ; $51a6: $12
	rla                                              ; $51a7: $17
	inc  b                                           ; $51a8: $04
	push bc                                          ; $51a9: $c5
	ld   [bc], a                                     ; $51aa: $02
	halt                                             ; $51ab: $76
	ld   [hl], c                                     ; $51ac: $71
	ld   [hl], h                                     ; $51ad: $74
	or   h                                           ; $51ae: $b4
	rst  $10                                         ; $51af: $d7
	cp   b                                           ; $51b0: $b8
	ld   d, d                                        ; $51b1: $52
	ld   l, l                                        ; $51b2: $6d
	adc  a                                           ; $51b3: $8f
	ld   l, l                                        ; $51b4: $6d
	nop                                              ; $51b5: $00
	nop                                              ; $51b6: $00
	ld   [de], a                                     ; $51b7: $12
	inc  de                                          ; $51b8: $13
	inc  b                                           ; $51b9: $04
	push bc                                          ; $51ba: $c5
	ld   [bc], a                                     ; $51bb: $02
	halt                                             ; $51bc: $76
	sbc  d                                           ; $51bd: $9a
	ld   [hl], h                                     ; $51be: $74
	sub  [hl]                                        ; $51bf: $96
	ld   e, c                                        ; $51c0: $59
	ld   [hl], c                                     ; $51c1: $71
	ld   l, l                                        ; $51c2: $6d
	nop                                              ; $51c3: $00
	ld   bc, $1113                                   ; $51c4: $01 $13 $11
	inc  b                                           ; $51c7: $04
	push bc                                          ; $51c8: $c5
	ld   [bc], a                                     ; $51c9: $02
	halt                                             ; $51ca: $76
	sbc  d                                           ; $51cb: $9a
	ld   l, l                                        ; $51cc: $6d
	nop                                              ; $51cd: $00
	ld   [bc], a                                     ; $51ce: $02
	rlca                                             ; $51cf: $07
	add  sp, $04                                     ; $51d0: $e8 $04
	ld   [bc], a                                     ; $51d2: $02
	inc  bc                                          ; $51d3: $03
	ld   bc, $2000                                   ; $51d4: $01 $00 $20
	nop                                              ; $51d7: $00
	rlca                                             ; $51d8: $07
	ccf                                              ; $51d9: $3f
	dec  b                                           ; $51da: $05
	ld   [bc], a                                     ; $51db: $02
	inc  bc                                          ; $51dc: $03
	ld   bc, $2001                                   ; $51dd: $01 $01 $20
	nop                                              ; $51e0: $00
	rlca                                             ; $51e1: $07
	ld   [hl], a                                     ; $51e2: $77
	dec  b                                           ; $51e3: $05
	ld   [bc], a                                     ; $51e4: $02
	inc  bc                                          ; $51e5: $03
	ld   bc, $2002                                   ; $51e6: $01 $02 $20
	nop                                              ; $51e9: $00
	ld   b, $63                                      ; $51ea: $06 $63
	inc  b                                           ; $51ec: $04
	inc  e                                           ; $51ed: $1c
	ld   b, $03                                      ; $51ee: $06 $03
	inc  bc                                          ; $51f0: $03
	ld   bc, $9850                                   ; $51f1: $01 $50 $98
	sub  c                                           ; $51f4: $91
	sbc  b                                           ; $51f5: $98
	sub  c                                           ; $51f6: $91
	rst  $38                                         ; $51f7: $ff
	rst  $38                                         ; $51f8: $ff
	dec  c                                           ; $51f9: $0d
	ld   [$9e00], sp                                 ; $51fa: $08 $00 $9e
	ld   e, b                                        ; $51fd: $58
	inc  bc                                          ; $51fe: $03
	ld   c, a                                        ; $51ff: $4f
	or   h                                           ; $5200: $b4
	rst  $10                                         ; $5201: $d7
	cp   b                                           ; $5202: $b8
	dec  c                                           ; $5203: $0d
	ld   d, d                                        ; $5204: $52
	ld   l, l                                        ; $5205: $6d
	adc  a                                           ; $5206: $8f
	ld   [hl], h                                     ; $5207: $74
	sbc  c                                           ; $5208: $99
	ld   h, [hl]                                     ; $5209: $66
	sub  c                                           ; $520a: $91
	ld   a, b                                        ; $520b: $78
	ld   d, d                                        ; $520c: $52
	ld   e, c                                        ; $520d: $59
	sbc  a                                           ; $520e: $9f
	dec  c                                           ; $520f: $0d
	nop                                              ; $5210: $00
	ld   a, [bc]                                     ; $5211: $0a
	inc  e                                           ; $5212: $1c
	ld   b, $00                                      ; $5213: $06 $00
	nop                                              ; $5215: $00
	ld   bc, $9861                                   ; $5216: $01 $61 $98
	sub  c                                           ; $5219: $91
	sbc  [hl]                                        ; $521a: $9e
	sub  d                                           ; $521b: $92
	adc  a                                           ; $521c: $8f
	ld   l, l                                        ; $521d: $6d
	inc  b                                           ; $521e: $04
	ld   a, b                                        ; $521f: $78
	ld   e, d                                        ; $5220: $5a
	ld   d, d                                        ; $5221: $52
	ld   d, d                                        ; $5222: $52
	ld   a, b                                        ; $5223: $78
	sbc  a                                           ; $5224: $9f
	dec  c                                           ; $5225: $0d
	ld   [hl], l                                     ; $5226: $75
	sub  b                                           ; $5227: $90
	sbc  [hl]                                        ; $5228: $9e
	ld   [bc], a                                     ; $5229: $02
	ld   [hl], $05                                   ; $522a: $36 $05
	pop  bc                                          ; $522c: $c1
	ld   l, [hl]                                     ; $522d: $6e
	ld   e, c                                        ; $522e: $59
	sub  a                                           ; $522f: $97
	ld   h, a                                        ; $5230: $67
	ld   e, [hl]                                     ; $5231: $5e
	inc  bc                                          ; $5232: $03
	ld   sp, hl                                      ; $5233: $f9
	sbc  c                                           ; $5234: $99
	sub  [hl]                                        ; $5235: $96
	sbc  a                                           ; $5236: $9f
	dec  c                                           ; $5237: $0d
	ld   h, [hl]                                     ; $5238: $66
	sub  c                                           ; $5239: $91
	ld   d, b                                        ; $523a: $50
	sbc  [hl]                                        ; $523b: $9e
	adc  h                                           ; $523c: $8c
	ld   l, l                                        ; $523d: $6d
	ld   a, b                                        ; $523e: $78
	sbc  a                                           ; $523f: $9f
	dec  c                                           ; $5240: $0d
	nop                                              ; $5241: $00
	ld   a, [bc]                                     ; $5242: $0a
	nop                                              ; $5243: $00
	inc  e                                           ; $5244: $1c
	ld   b, $01                                      ; $5245: $06 $01
	ld   bc, $401d                                   ; $5247: $01 $1d $40
	ld   d, $03                                      ; $524a: $16 $03
	ld   d, $01                                      ; $524c: $16 $01
	ld   [bc], a                                     ; $524e: $02
	jr   z, jr_057_5251                              ; $524f: $28 $00

jr_057_5251:
	ld   bc, $5858                                   ; $5251: $01 $58 $58
	sbc  [hl]                                        ; $5254: $9e
	ld   [de], a                                     ; $5255: $12
	inc  de                                          ; $5256: $13
	inc  b                                           ; $5257: $04
	push bc                                          ; $5258: $c5
	sub  b                                           ; $5259: $90
	ld   [bc], a                                     ; $525a: $02
	halt                                             ; $525b: $76
	sbc  b                                           ; $525c: $98
	sub  d                                           ; $525d: $92
	ld   e, d                                        ; $525e: $5a
	ld   [hl], c                                     ; $525f: $71
	ld   l, l                                        ; $5260: $6d
	sbc  a                                           ; $5261: $9f
	dec  c                                           ; $5262: $0d
	ld   h, a                                        ; $5263: $67
	ld   h, d                                        ; $5264: $62
	ld   d, d                                        ; $5265: $52
	ld   a, b                                        ; $5266: $78
	sbc  [hl]                                        ; $5267: $9e
	ld   [$9f00], sp                                 ; $5268: $08 $00 $9f
	dec  c                                           ; $526b: $0d
	sub  [hl]                                        ; $526c: $96
	ld   h, l                                        ; $526d: $65
	sbc  [hl]                                        ; $526e: $9e
	db   $eb                                         ; $526f: $eb
	cp   d                                           ; $5270: $ba
	ret                                              ; $5271: $c9


	ld   [de], a                                     ; $5272: $12
	ld   [bc], a                                     ; $5273: $02
	sub  e                                           ; $5274: $93
	sbc  a                                           ; $5275: $9f

Jump_057_5276:
	dec  c                                           ; $5276: $0d
	nop                                              ; $5277: $00

Jump_057_5278:
	ld   a, [bc]                                     ; $5278: $0a
	ld   b, $b1                                      ; $5279: $06 $b1
	dec  b                                           ; $527b: $05
	inc  e                                           ; $527c: $1c
	ld   b, $03                                      ; $527d: $06 $03
	inc  bc                                          ; $527f: $03
	dec  e                                           ; $5280: $1d
	ld   b, b                                        ; $5281: $40
	ld   d, $03                                      ; $5282: $16 $03
	ld   d, $01                                      ; $5284: $16 $01
	inc  bc                                          ; $5286: $03
	jr   z, jr_057_5289                              ; $5287: $28 $00

jr_057_5289:
	ld   bc, $9d54                                   ; $5289: $01 $54 $9d
	ld   a, [$ba10]                                  ; $528c: $fa $10 $ba
	call nz, $fbb3                                   ; $528f: $c4 $b3 $fb
	inc  de                                          ; $5292: $13
	ld   de, $c504                                   ; $5293: $11 $04 $c5
	ld   a, [$080d]                                  ; $5296: $fa $0d $08
	nop                                              ; $5299: $00
	ld   e, c                                        ; $529a: $59
	ld   [hl], c                                     ; $529b: $71
	ld   h, c                                        ; $529c: $61
	ld   d, d                                        ; $529d: $52
	ld   d, d                                        ; $529e: $52
	ld   l, d                                        ; $529f: $6a
	sbc  a                                           ; $52a0: $9f
	dec  c                                           ; $52a1: $0d
	sub  [hl]                                        ; $52a2: $96
	ld   h, l                                        ; $52a3: $65
	sbc  [hl]                                        ; $52a4: $9e
	db   $eb                                         ; $52a5: $eb
	cp   d                                           ; $52a6: $ba
	ret                                              ; $52a7: $c9


	ld   [de], a                                     ; $52a8: $12
	ld   [bc], a                                     ; $52a9: $02
	sub  e                                           ; $52aa: $93
	sbc  a                                           ; $52ab: $9f
	dec  c                                           ; $52ac: $0d
	nop                                              ; $52ad: $00
	ld   a, [bc]                                     ; $52ae: $0a
	inc  e                                           ; $52af: $1c
	ld   b, $01                                      ; $52b0: $06 $01
	ld   bc, $b106                                   ; $52b2: $01 $06 $b1
	dec  b                                           ; $52b5: $05
	add  hl, de                                      ; $52b6: $19
	dec  b                                           ; $52b7: $05
	inc  bc                                          ; $52b8: $03
	dec  d                                           ; $52b9: $15
	ld   de, $c504                                   ; $52ba: $11 $04 $c5
	ld   [bc], a                                     ; $52bd: $02
	halt                                             ; $52be: $76
	ld   [hl], c                                     ; $52bf: $71
	ld   [hl], h                                     ; $52c0: $74
	or   h                                           ; $52c1: $b4
	rst  $10                                         ; $52c2: $d7
	cp   b                                           ; $52c3: $b8
	ld   d, d                                        ; $52c4: $52
	ld   l, l                                        ; $52c5: $6d
	adc  a                                           ; $52c6: $8f
	ld   l, l                                        ; $52c7: $6d
	nop                                              ; $52c8: $00
	nop                                              ; $52c9: $00
	add  hl, de                                      ; $52ca: $19
	inc  b                                           ; $52cb: $04
	push bc                                          ; $52cc: $c5
	ld   [bc], a                                     ; $52cd: $02
	halt                                             ; $52ce: $76
	sbc  b                                           ; $52cf: $98
	ld   l, l                                        ; $52d0: $6d
	ld   e, c                                        ; $52d1: $59
	ld   [hl], c                                     ; $52d2: $71
	ld   l, l                                        ; $52d3: $6d
	nop                                              ; $52d4: $00
	ld   bc, $0418                                   ; $52d5: $01 $18 $04
	push bc                                          ; $52d8: $c5
	ld   [bc], a                                     ; $52d9: $02
	halt                                             ; $52da: $76
	sbc  d                                           ; $52db: $9a
	ld   l, l                                        ; $52dc: $6d
	nop                                              ; $52dd: $00
	ld   [bc], a                                     ; $52de: $02
	rlca                                             ; $52df: $07
	ld   a, h                                        ; $52e0: $7c
	ld   b, $02                                      ; $52e1: $06 $02
	inc  bc                                          ; $52e3: $03
	ld   bc, $2000                                   ; $52e4: $01 $00 $20
	nop                                              ; $52e7: $00
	rlca                                             ; $52e8: $07
	ld   hl, sp+$05                                  ; $52e9: $f8 $05
	ld   [bc], a                                     ; $52eb: $02
	inc  bc                                          ; $52ec: $03
	ld   bc, $2001                                   ; $52ed: $01 $01 $20
	nop                                              ; $52f0: $00
	rlca                                             ; $52f1: $07
	dec  hl                                          ; $52f2: $2b
	ld   b, $02                                      ; $52f3: $06 $02
	inc  bc                                          ; $52f5: $03
	ld   bc, $2002                                   ; $52f6: $01 $02 $20
	nop                                              ; $52f9: $00
	ld   b, $63                                      ; $52fa: $06 $63
	inc  b                                           ; $52fc: $04
	inc  e                                           ; $52fd: $1c
	ld   b, $00                                      ; $52fe: $06 $00
	nop                                              ; $5300: $00
	dec  e                                           ; $5301: $1d
	ld   b, b                                        ; $5302: $40
	ld   d, $03                                      ; $5303: $16 $03
	ld   d, $01                                      ; $5305: $16 $01
	ld   bc, $0028                                   ; $5307: $01 $28 $00
	ld   bc, $7158                                   ; $530a: $01 $58 $71
	sbc  [hl]                                        ; $530d: $9e
	add  hl, de                                      ; $530e: $19
	inc  b                                           ; $530f: $04
	push bc                                          ; $5310: $c5
	ld   sp, hl                                      ; $5311: $f9
	dec  c                                           ; $5312: $0d
	rst  $38                                         ; $5313: $ff
	rst  $38                                         ; $5314: $ff
	ld   e, b                                        ; $5315: $58
	ld   h, l                                        ; $5316: $65
	ld   d, d                                        ; $5317: $52
	ld   a, b                                        ; $5318: $78
	sbc  [hl]                                        ; $5319: $9e
	ld   d, $04                                      ; $531a: $16 $04
	push bc                                          ; $531c: $c5
	ld   l, [hl]                                     ; $531d: $6e
	sbc  a                                           ; $531e: $9f
	dec  c                                           ; $531f: $0d
	adc  h                                           ; $5320: $8c
	ld   d, b                                        ; $5321: $50
	sbc  [hl]                                        ; $5322: $9e
	ld   l, e                                        ; $5323: $6b
	and  c                                           ; $5324: $a1
	ld   a, b                                        ; $5325: $78
	halt                                             ; $5326: $76
	ld   h, c                                        ; $5327: $61
	ld   e, c                                        ; $5328: $59
	sbc  a                                           ; $5329: $9f
	dec  c                                           ; $532a: $0d
	nop                                              ; $532b: $00
	ld   a, [bc]                                     ; $532c: $0a
	ld   b, $4e                                      ; $532d: $06 $4e
	ld   b, $1c                                      ; $532f: $06 $1c
	ld   b, $01                                      ; $5331: $06 $01
	ld   bc, $401d                                   ; $5333: $01 $1d $40
	ld   d, $03                                      ; $5336: $16 $03
	ld   d, $01                                      ; $5338: $16 $01
	ld   [bc], a                                     ; $533a: $02
	jr   z, jr_057_533d                              ; $533b: $28 $00

jr_057_533d:
	ld   bc, $9e58                                   ; $533d: $01 $58 $9e
	jr   jr_057_5346                                 ; $5340: $18 $04

	push bc                                          ; $5342: $c5
	ld   e, c                                        ; $5343: $59
	sbc  a                                           ; $5344: $9f
	dec  c                                           ; $5345: $0d

jr_057_5346:
	adc  h                                           ; $5346: $8c
	ld   l, b                                        ; $5347: $68
	adc  h                                           ; $5348: $8c
	ld   l, b                                        ; $5349: $68
	ld   l, [hl]                                     ; $534a: $6e
	ld   a, b                                        ; $534b: $78
	sbc  a                                           ; $534c: $9f
	dec  c                                           ; $534d: $0d
	nop                                              ; $534e: $00
	ld   a, [bc]                                     ; $534f: $0a
	ld   b, $4e                                      ; $5350: $06 $4e
	ld   b, $01                                      ; $5352: $06 $01
	ld   [hl], a                                     ; $5354: $77
	ld   d, h                                        ; $5355: $54
	ld   l, [hl]                                     ; $5356: $6e
	ld   d, d                                        ; $5357: $52
	sbc  a                                           ; $5358: $9f
	cp   d                                           ; $5359: $ba
	xor  h                                           ; $535a: $ac
	call nz, Call_057_6776                           ; $535b: $c4 $76 $67
	sbc  c                                           ; $535e: $99
	ld   l, [hl]                                     ; $535f: $6e
	sbc  e                                           ; $5360: $9b
	sbc  a                                           ; $5361: $9f
	dec  c                                           ; $5362: $0d
	adc  h                                           ; $5363: $8c
	ld   l, l                                        ; $5364: $6d
	ld   [bc], a                                     ; $5365: $02
	ld   e, b                                        ; $5366: $58
	ld   [bc], a                                     ; $5367: $02
	add  [hl]                                        ; $5368: $86
	ld   e, d                                        ; $5369: $5a
	ld   d, b                                        ; $536a: $50
	ld   [hl], c                                     ; $536b: $71
	ld   l, l                                        ; $536c: $6d
	sub  a                                           ; $536d: $97
	dec  c                                           ; $536e: $0d
	ld   [bc], a                                     ; $536f: $02
	halt                                             ; $5370: $76
	sub  a                                           ; $5371: $97
	ld   l, c                                        ; $5372: $69
	ld   [hl], h                                     ; $5373: $74
	sub  d                                           ; $5374: $92
	sbc  c                                           ; $5375: $99
	sub  [hl]                                        ; $5376: $96
	sbc  a                                           ; $5377: $9f
	ld   h, [hl]                                     ; $5378: $66
	sub  c                                           ; $5379: $91
	ld   d, b                                        ; $537a: $50
	ld   a, b                                        ; $537b: $78
	sbc  a                                           ; $537c: $9f
	dec  c                                           ; $537d: $0d
	nop                                              ; $537e: $00
	ld   a, [bc]                                     ; $537f: $0a
	nop                                              ; $5380: $00
	inc  e                                           ; $5381: $1c
	ld   b, $03                                      ; $5382: $06 $03
	inc  bc                                          ; $5384: $03
	ld   bc, $5258                                   ; $5385: $01 $58 $52
	ld   e, b                                        ; $5388: $58
	ld   d, d                                        ; $5389: $52
	ld   a, [$0dfa]                                  ; $538a: $fa $fa $0d
	nop                                              ; $538d: $00
	inc  e                                           ; $538e: $1c
	ld   b, $05                                      ; $538f: $06 $05
	dec  b                                           ; $5391: $05
	ld   bc, $a102                                   ; $5392: $01 $02 $a1
	ld   [bc], a                                     ; $5395: $02
	ld   a, e                                        ; $5396: $7b
	ld   d, d                                        ; $5397: $52
	ld   a, l                                        ; $5398: $7d
	adc  l                                           ; $5399: $8d
	halt                                             ; $539a: $76
	adc  a                                           ; $539b: $8f
	sbc  c                                           ; $539c: $99
	ld   e, a                                        ; $539d: $5f
	ld   [hl], a                                     ; $539e: $77
	dec  c                                           ; $539f: $0d
	ld   l, a                                        ; $53a0: $6f
	sub  l                                           ; $53a1: $95
	ld   [hl], c                                     ; $53a2: $71
	halt                                             ; $53a3: $76
	sub  d                                           ; $53a4: $92
	sbc  b                                           ; $53a5: $98
	ld   h, a                                        ; $53a6: $67
	ld   e, h                                        ; $53a7: $5c
	ld   l, [hl]                                     ; $53a8: $6e
	ld   l, d                                        ; $53a9: $6a
	sbc  a                                           ; $53aa: $9f
	dec  c                                           ; $53ab: $0d
	nop                                              ; $53ac: $00
	ld   a, [bc]                                     ; $53ad: $0a
	ld   bc, $9861                                   ; $53ae: $01 $61 $98
	sub  c                                           ; $53b1: $91
	sbc  [hl]                                        ; $53b2: $9e
	ld   [bc], a                                     ; $53b3: $02
	and  l                                           ; $53b4: $a5
	inc  b                                           ; $53b5: $04
	xor  d                                           ; $53b6: $aa
	ld   a, l                                        ; $53b7: $7d
	sub  d                                           ; $53b8: $92
	adc  a                                           ; $53b9: $8f
	ld   l, l                                        ; $53ba: $6d
	inc  b                                           ; $53bb: $04
	ld   a, b                                        ; $53bc: $78
	ld   e, d                                        ; $53bd: $5a
	dec  c                                           ; $53be: $0d
	ld   d, d                                        ; $53bf: $52
	ld   d, d                                        ; $53c0: $52
	ld   a, b                                        ; $53c1: $78
	sbc  a                                           ; $53c2: $9f
	dec  c                                           ; $53c3: $0d
	nop                                              ; $53c4: $00
	ld   a, [bc]                                     ; $53c5: $0a
	inc  e                                           ; $53c6: $1c
	ld   b, $00                                      ; $53c7: $06 $00
	nop                                              ; $53c9: $00
	ld   bc, $7650                                   ; $53ca: $01 $50 $76
	ld   [hl], l                                     ; $53cd: $75
	sbc  [hl]                                        ; $53ce: $9e
	ld   l, a                                        ; $53cf: $6f
	sub  c                                           ; $53d0: $91
	and  c                                           ; $53d1: $a1
	halt                                             ; $53d2: $76
	inc  bc                                          ; $53d3: $03
	ld   l, e                                        ; $53d4: $6b
	inc  b                                           ; $53d5: $04
	jr   jr_057_544c                                 ; $53d6: $18 $74

	dec  c                                           ; $53d8: $0d
	ld   h, l                                        ; $53d9: $65
	halt                                             ; $53da: $76
	ld   e, a                                        ; $53db: $5f
	sub  [hl]                                        ; $53dc: $96
	sbc  a                                           ; $53dd: $9f
	dec  c                                           ; $53de: $0d
	ld   h, [hl]                                     ; $53df: $66
	sub  c                                           ; $53e0: $91
	ld   d, b                                        ; $53e1: $50
	ld   a, b                                        ; $53e2: $78
	sbc  a                                           ; $53e3: $9f
	dec  c                                           ; $53e4: $0d
	nop                                              ; $53e5: $00
	ld   a, [bc]                                     ; $53e6: $0a
	dec  c                                           ; $53e7: $0d
	nop                                              ; $53e8: $00
	nop                                              ; $53e9: $00
	rrca                                             ; $53ea: $0f
	nop                                              ; $53eb: $00
	ld   bc, $1e09                                   ; $53ec: $01 $09 $1e
	nop                                              ; $53ef: $00
	rrca                                             ; $53f0: $0f
	nop                                              ; $53f1: $00
	ld   bc, $df01                                   ; $53f2: $01 $01 $df
	db   $ec                                         ; $53f5: $ec
	and  e                                           ; $53f6: $a3
	ld   h, e                                        ; $53f7: $63
	and  c                                           ; $53f8: $a1
	ld   [hl], h                                     ; $53f9: $74
	sbc  [hl]                                        ; $53fa: $9e
	dec  c                                           ; $53fb: $0d
	xor  h                                           ; $53fc: $ac
	push af                                          ; $53fd: $f5
	bit  4, e                                        ; $53fe: $cb $63
	and  c                                           ; $5400: $a1
	ld   e, c                                        ; $5401: $59
	sub  a                                           ; $5402: $97
	ld   [bc], a                                     ; $5403: $02
	sub  l                                           ; $5404: $95
	ld   [hl], h                                     ; $5405: $74
	dec  c                                           ; $5406: $0d
	ld   [hl], a                                     ; $5407: $77
	ld   d, h                                        ; $5408: $54
	ld   [hl], l                                     ; $5409: $75
	ld   h, a                                        ; $540a: $67
	ld   e, c                                        ; $540b: $59
	ld   sp, hl                                      ; $540c: $f9
	dec  c                                           ; $540d: $0d
	nop                                              ; $540e: $00
	ld   a, [bc]                                     ; $540f: $0a
	inc  e                                           ; $5410: $1c
	ld   b, $00                                      ; $5411: $06 $00
	nop                                              ; $5413: $00
	ld   bc, $ecdf                                   ; $5414: $01 $df $ec
	and  e                                           ; $5417: $a3
	ld   sp, hl                                      ; $5418: $f9
	dec  c                                           ; $5419: $0d
	adc  h                                           ; $541a: $8c
	ld   c, a                                        ; $541b: $4f
	ld   d, b                                        ; $541c: $50
	ld   d, d                                        ; $541d: $52
	ld   [hl], d                                     ; $541e: $72
	halt                                             ; $541f: $76
	ld   a, l                                        ; $5420: $7d
	ld   [bc], a                                     ; $5421: $02
	or   c                                           ; $5422: $b1
	ld   d, d                                        ; $5423: $52
	inc  b                                           ; $5424: $04
	ld   [hl], c                                     ; $5425: $71
	ld   e, e                                        ; $5426: $5b
	ld   [bc], a                                     ; $5427: $02
	ld   a, e                                        ; $5428: $7b
	ld   d, d                                        ; $5429: $52
	dec  c                                           ; $542a: $0d
	ld   l, [hl]                                     ; $542b: $6e
	ld   e, c                                        ; $542c: $59
	sub  a                                           ; $542d: $97
	ld   a, e                                        ; $542e: $7b
	sbc  a                                           ; $542f: $9f
	dec  c                                           ; $5430: $0d
	nop                                              ; $5431: $00
	ld   a, [bc]                                     ; $5432: $0a
	ld   bc, $a803                                   ; $5433: $01 $03 $a8
	inc  b                                           ; $5436: $04
	ld   a, d                                        ; $5437: $7a
	ld   [hl], l                                     ; $5438: $75
	ld   [bc], a                                     ; $5439: $02
	ld   h, $03                                      ; $543a: $26 $03
	ld   [hl], l                                     ; $543c: $75
	ld   h, l                                        ; $543d: $65
	ld   [hl], h                                     ; $543e: $74
	dec  c                                           ; $543f: $0d
	dec  b                                           ; $5440: $05
	ld   d, e                                        ; $5441: $53
	inc  b                                           ; $5442: $04
	dec  bc                                          ; $5443: $0b
	and  b                                           ; $5444: $a0
	adc  h                                           ; $5445: $8c
	ld   e, c                                        ; $5446: $59
	ld   l, c                                        ; $5447: $69
	sub  a                                           ; $5448: $97
	sbc  d                                           ; $5449: $9a
	sbc  c                                           ; $544a: $99
	dec  c                                           ; $544b: $0d

jr_057_544c:
	ld   d, b                                        ; $544c: $50
	ld   d, d                                        ; $544d: $52
	adc  d                                           ; $544e: $8a
	ld   d, h                                        ; $544f: $54
	ld   [hl], c                                     ; $5450: $71
	ld   [hl], h                                     ; $5451: $74
	sub  d                                           ; $5452: $92
	ld   [hl], d                                     ; $5453: $72
	ld   e, c                                        ; $5454: $59
	ld   a, b                                        ; $5455: $78
	sbc  a                                           ; $5456: $9f
	dec  c                                           ; $5457: $0d
	nop                                              ; $5458: $00
	ld   a, [bc]                                     ; $5459: $0a
	ld   bc, $8c67                                   ; $545a: $01 $67 $8c
	ld   a, b                                        ; $545d: $78
	ld   d, d                                        ; $545e: $52
	ld   e, d                                        ; $545f: $5a
	sbc  [hl]                                        ; $5460: $9e

Jump_057_5461:
	ld   [bc], a                                     ; $5461: $02
	and  l                                           ; $5462: $a5
	ld   e, c                                        ; $5463: $59
	sub  a                                           ; $5464: $97
	dec  c                                           ; $5465: $0d
	db   $e3                                         ; $5466: $e3
	cp   b                                           ; $5467: $b8
	ld   a, b                                        ; $5468: $78
	and  c                                           ; $5469: $a1
	ld   l, [hl]                                     ; $546a: $6e
	sbc  a                                           ; $546b: $9f
	ld   h, [hl]                                     ; $546c: $66
	sub  c                                           ; $546d: $91
	ld   d, b                                        ; $546e: $50
	ld   a, b                                        ; $546f: $78
	sbc  a                                           ; $5470: $9f
	dec  c                                           ; $5471: $0d
	nop                                              ; $5472: $00
	ld   a, [bc]                                     ; $5473: $0a
	dec  c                                           ; $5474: $0d
	nop                                              ; $5475: $00
	nop                                              ; $5476: $00
	rrca                                             ; $5477: $0f
	nop                                              ; $5478: $00
	ld   bc, $1e09                                   ; $5479: $01 $09 $1e

Jump_057_547c:
	nop                                              ; $547c: $00
	nop                                              ; $547d: $00
	rrca                                             ; $547e: $0f
	nop                                              ; $547f: $00
	ld   bc, $050d                                   ; $5480: $01 $0d $05
	nop                                              ; $5483: $00
	ld   [bc], a                                     ; $5484: $02
	dec  b                                           ; $5485: $05
	add  b                                           ; $5486: $80
	sbc  e                                           ; $5487: $9b
	ld   bc, $0001                                   ; $5488: $01 $01 $00
	ld   bc, $cf02                                   ; $548b: $01 $02 $cf
	dec  b                                           ; $548e: $05
	ld   a, [de]                                     ; $548f: $1a
	ld   h, e                                        ; $5490: $63
	and  c                                           ; $5491: $a1
	sbc  a                                           ; $5492: $9f
	dec  c                                           ; $5493: $0d
	ld   e, b                                        ; $5494: $58
	ld   a, l                                        ; $5495: $7d
	sub  [hl]                                        ; $5496: $96
	ld   d, h                                        ; $5497: $54
	ld   h, d                                        ; $5498: $62
	ld   h, h                                        ; $5499: $64
	ld   d, d                                        ; $549a: $52
	adc  h                                           ; $549b: $8c
	ld   h, a                                        ; $549c: $67
	sbc  a                                           ; $549d: $9f
	dec  c                                           ; $549e: $0d
	nop                                              ; $549f: $00
	ld   a, [bc]                                     ; $54a0: $0a
	inc  e                                           ; $54a1: $1c
	dec  b                                           ; $54a2: $05
	nop                                              ; $54a3: $00
	nop                                              ; $54a4: $00
	ld   bc, $0008                                   ; $54a5: $01 $08 $00
	ld   a, l                                        ; $54a8: $7d
	and  c                                           ; $54a9: $a1
	sbc  a                                           ; $54aa: $9f
	dec  c                                           ; $54ab: $0d
	ld   e, b                                        ; $54ac: $58
	ld   a, l                                        ; $54ad: $7d
	sub  [hl]                                        ; $54ae: $96
	ld   d, h                                        ; $54af: $54
	ld   h, e                                        ; $54b0: $63
	and  c                                           ; $54b1: $a1
	sbc  a                                           ; $54b2: $9f
	dec  c                                           ; $54b3: $0d
	nop                                              ; $54b4: $00
	ld   a, [bc]                                     ; $54b5: $0a
	inc  e                                           ; $54b6: $1c
	dec  b                                           ; $54b7: $05
	ld   [bc], a                                     ; $54b8: $02
	ld   [bc], a                                     ; $54b9: $02
	ld   bc, $f9a1                                   ; $54ba: $01 $a1 $f9
	db   $10                                         ; $54bd: $10
	ld   [$7d00], sp                                 ; $54be: $08 $00 $7d
	and  c                                           ; $54c1: $a1
	rst  $38                                         ; $54c2: $ff
	rst  $38                                         ; $54c3: $ff
	dec  c                                           ; $54c4: $0d
	ld   [hl], a                                     ; $54c5: $77
	ld   a, b                                        ; $54c6: $78
	ld   d, d                                        ; $54c7: $52
	ld   h, l                                        ; $54c8: $65
	ld   l, l                                        ; $54c9: $6d
	and  c                                           ; $54ca: $a1
	sub  d                                           ; $54cb: $92
	ld   sp, hl                                      ; $54cc: $f9
	dec  c                                           ; $54cd: $0d
	nop                                              ; $54ce: $00
	ld   a, [bc]                                     ; $54cf: $0a
	add  hl, de                                      ; $54d0: $19
	dec  b                                           ; $54d1: $05
	inc  bc                                          ; $54d2: $03
	inc  b                                           ; $54d3: $04
	ld   e, [hl]                                     ; $54d4: $5e
	inc  b                                           ; $54d5: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54d6: $cf
	ld   a, h                                        ; $54d7: $7c
	inc  bc                                          ; $54d8: $03
	ld   l, e                                        ; $54d9: $6b
	inc  b                                           ; $54da: $04
	ld   [de], a                                     ; $54db: $12
	ld   d, d                                        ; $54dc: $52
	and  b                                           ; $54dd: $a0
	dec  b                                           ; $54de: $05
	ld   b, [hl]                                     ; $54df: $46
	ld   h, l                                        ; $54e0: $65
	inc  bc                                          ; $54e1: $03
	add  b                                           ; $54e2: $80
	sbc  c                                           ; $54e3: $99
	nop                                              ; $54e4: $00
	nop                                              ; $54e5: $00
	inc  bc                                          ; $54e6: $03
	and  a                                           ; $54e7: $a7
	inc  b                                           ; $54e8: $04
	xor  d                                           ; $54e9: $aa
	ld   a, h                                        ; $54ea: $7c
	ld   h, a                                        ; $54eb: $67
	ld   h, d                                        ; $54ec: $62
	ld   h, l                                        ; $54ed: $65
	inc  b                                           ; $54ee: $04
	ld   a, b                                        ; $54ef: $78
	ld   a, c                                        ; $54f0: $79
	ld   [hl], d                                     ; $54f1: $72
	ld   d, d                                        ; $54f2: $52
	ld   [hl], h                                     ; $54f3: $74
	ld   [bc], a                                     ; $54f4: $02
	jp   nz, $005d                                   ; $54f5: $c2 $5d $00

	ld   bc, $9250                                   ; $54f8: $01 $50 $92
	adc  a                                           ; $54fb: $8f
	ld   a, c                                        ; $54fc: $79
	ld   [hl], d                                     ; $54fd: $72
	ld   d, d                                        ; $54fe: $52
	ld   [hl], h                                     ; $54ff: $74
	ld   [bc], a                                     ; $5500: $02
	jp   nz, $005d                                   ; $5501: $c2 $5d $00

	ld   [bc], a                                     ; $5504: $02
	rlca                                             ; $5505: $07
	xor  d                                           ; $5506: $aa
	ld   bc, $0302                                   ; $5507: $01 $02 $03
	ld   bc, $2000                                   ; $550a: $01 $00 $20
	nop                                              ; $550d: $00
	rlca                                             ; $550e: $07
	sbc  b                                           ; $550f: $98
	ld   [bc], a                                     ; $5510: $02
	ld   [bc], a                                     ; $5511: $02
	inc  bc                                          ; $5512: $03
	ld   bc, $2001                                   ; $5513: $01 $01 $20
	nop                                              ; $5516: $00
	rlca                                             ; $5517: $07
	db   $db                                         ; $5518: $db
	inc  bc                                          ; $5519: $03
	ld   [bc], a                                     ; $551a: $02
	inc  bc                                          ; $551b: $03
	ld   bc, $2002                                   ; $551c: $01 $02 $20
	nop                                              ; $551f: $00
	ld   b, $a5                                      ; $5520: $06 $a5
	nop                                              ; $5522: $00
	rrca                                             ; $5523: $0f
	nop                                              ; $5524: $00
	ld   bc, $ff01                                   ; $5525: $01 $01 $ff
	rst  $38                                         ; $5528: $ff
	rst  $38                                         ; $5529: $ff
	rst  $38                                         ; $552a: $ff
	dec  c                                           ; $552b: $0d
	nop                                              ; $552c: $00
	ld   a, [bc]                                     ; $552d: $0a
	rlca                                             ; $552e: $07
	push bc                                          ; $552f: $c5
	nop                                              ; $5530: $00
	inc  bc                                          ; $5531: $03
	dec  d                                           ; $5532: $15
	ld   bc, $25aa                                   ; $5533: $01 $aa $25
	nop                                              ; $5536: $00
	rlca                                             ; $5537: $07
	ld   hl, $0301                                   ; $5538: $21 $01 $03
	dec  d                                           ; $553b: $15
	ld   bc, $2596                                   ; $553c: $01 $96 $25
	nop                                              ; $553f: $00
	ld   b, $5f                                      ; $5540: $06 $5f
	ld   bc, $051c                                   ; $5542: $01 $1c $05
	inc  b                                           ; $5545: $04
	inc  b                                           ; $5546: $04
	ld   bc, $9e78                                   ; $5547: $01 $78 $9e
	ld   a, b                                        ; $554a: $78
	and  c                                           ; $554b: $a1
	sub  d                                           ; $554c: $92
	rst  $38                                         ; $554d: $ff
	dec  c                                           ; $554e: $0d
	ld   l, e                                        ; $554f: $6b
	and  c                                           ; $5550: $a1
	ld   a, b                                        ; $5551: $78
	ld   a, c                                        ; $5552: $79
	ld   [bc], a                                     ; $5553: $02
	sub  l                                           ; $5554: $95
	ld   [hl], d                                     ; $5555: $72
	adc  a                                           ; $5556: $8f
	ld   [hl], h                                     ; $5557: $74
	rst  $38                                         ; $5558: $ff
	rst  $38                                         ; $5559: $ff
	dec  c                                           ; $555a: $0d
	nop                                              ; $555b: $00
	ld   a, [bc]                                     ; $555c: $0a
	dec  e                                           ; $555d: $1d
	ld   b, b                                        ; $555e: $40
	dec  d                                           ; $555f: $15
	inc  bc                                          ; $5560: $03
	dec  d                                           ; $5561: $15
	ld   bc, $2802                                   ; $5562: $01 $02 $28
	nop                                              ; $5565: $00
	ld   bc, $9e74                                   ; $5566: $01 $74 $9e
	rst  ToBoot                                         ; $5569: $c7
	xor  $99                                         ; $556a: $ee $99
	sub  d                                           ; $556c: $92
	and  c                                           ; $556d: $a1
	rst  $38                                         ; $556e: $ff
	rst  $38                                         ; $556f: $ff
	dec  c                                           ; $5570: $0d
	nop                                              ; $5571: $00
	ld   a, [bc]                                     ; $5572: $0a
	ld   bc, $7889                                   ; $5573: $01 $89 $78
	rst  $38                                         ; $5576: $ff
	rst  $38                                         ; $5577: $ff
	sbc  [hl]                                        ; $5578: $9e
	inc  b                                           ; $5579: $04
	di                                               ; $557a: $f3
	ld   [bc], a                                     ; $557b: $02
	jp   Jump_057_5278                               ; $557c: $c3 $78 $52


	and  c                                           ; $557f: $a1
	sub  d                                           ; $5580: $92
	ld   [hl], c                                     ; $5581: $71
	ld   l, l                                        ; $5582: $6d
	sub  a                                           ; $5583: $97
	dec  c                                           ; $5584: $0d
	and  a                                           ; $5585: $a7
	jp   nz, Jump_057_5d52                           ; $5586: $c2 $52 $5d

	sbc  l                                           ; $5589: $9d
	sbc  a                                           ; $558a: $9f
	dec  c                                           ; $558b: $0d
	adc  c                                           ; $558c: $89
	ld   a, b                                        ; $558d: $78
	sbc  [hl]                                        ; $558e: $9e
	adc  h                                           ; $558f: $8c
	ld   l, l                                        ; $5590: $6d
	ld   a, b                                        ; $5591: $78
	sbc  a                                           ; $5592: $9f
	dec  c                                           ; $5593: $0d
	nop                                              ; $5594: $00
	ld   a, [bc]                                     ; $5595: $0a
	dec  c                                           ; $5596: $0d
	nop                                              ; $5597: $00
	nop                                              ; $5598: $00
	rrca                                             ; $5599: $0f
	nop                                              ; $559a: $00
	ld   bc, $1e09                                   ; $559b: $01 $09 $1e
	nop                                              ; $559e: $00
	inc  e                                           ; $559f: $1c
	dec  b                                           ; $55a0: $05
	nop                                              ; $55a1: $00
	nop                                              ; $55a2: $00
	ld   bc, wRandomNumStruct                                   ; $55a3: $01 $a7 $c2
	ld   a, h                                        ; $55a6: $7c
	ld   [bc], a                                     ; $55a7: $02
	ld   [hl], d                                     ; $55a8: $72
	ld   a, c                                        ; $55a9: $79
	ld   a, b                                        ; $55aa: $78
	ld   a, c                                        ; $55ab: $79
	ld   e, c                                        ; $55ac: $59
	dec  c                                           ; $55ad: $0d
	ld   [hl], d                                     ; $55ae: $72
	ld   d, d                                        ; $55af: $52
	ld   [hl], h                                     ; $55b0: $74
	sbc  c                                           ; $55b1: $99
	and  c                                           ; $55b2: $a1
	ld   e, c                                        ; $55b3: $59
	ld   sp, hl                                      ; $55b4: $f9
	dec  c                                           ; $55b5: $0d
	nop                                              ; $55b6: $00
	ld   a, [bc]                                     ; $55b7: $0a
	rrca                                             ; $55b8: $0f
	nop                                              ; $55b9: $00
	ld   bc, $5201                                   ; $55ba: $01 $01 $52
	ld   d, d                                        ; $55bd: $52
	ld   d, [hl]                                     ; $55be: $56
	rst  $38                                         ; $55bf: $ff
	dec  c                                           ; $55c0: $0d
	nop                                              ; $55c1: $00
	ld   a, [bc]                                     ; $55c2: $0a
	rrca                                             ; $55c3: $0f
	dec  b                                           ; $55c4: $05
	nop                                              ; $55c5: $00
	ld   bc, $7889                                   ; $55c6: $01 $89 $78
	sbc  [hl]                                        ; $55c9: $9e
	and  a                                           ; $55ca: $a7
	jp   nz, Jump_057_7f02                           ; $55cb: $c2 $02 $7f

	ld   e, l                                        ; $55ce: $5d
	sbc  l                                           ; $55cf: $9d
	sbc  a                                           ; $55d0: $9f
	dec  c                                           ; $55d1: $0d
	nop                                              ; $55d2: $00
	ld   a, [bc]                                     ; $55d3: $0a
	dec  c                                           ; $55d4: $0d
	nop                                              ; $55d5: $00
	nop                                              ; $55d6: $00
	rrca                                             ; $55d7: $0f
	nop                                              ; $55d8: $00
	ld   bc, $1e09                                   ; $55d9: $01 $09 $1e
	nop                                              ; $55dc: $00
	inc  e                                           ; $55dd: $1c
	dec  b                                           ; $55de: $05
	ld   [bc], a                                     ; $55df: $02
	ld   [bc], a                                     ; $55e0: $02
	ld   bc, $a178                                   ; $55e1: $01 $78 $a1
	sub  d                                           ; $55e4: $92
	ld   sp, hl                                      ; $55e5: $f9
	dec  c                                           ; $55e6: $0d
	ld   a, b                                        ; $55e7: $78
	and  c                                           ; $55e8: $a1
	ld   e, c                                        ; $55e9: $59
	inc  b                                           ; $55ea: $04
	di                                               ; $55eb: $f3
	ld   e, d                                        ; $55ec: $5a
	ld   d, b                                        ; $55ed: $50
	sbc  c                                           ; $55ee: $99
	and  c                                           ; $55ef: $a1
	halt                                             ; $55f0: $76
	dec  c                                           ; $55f1: $0d
	ld   l, a                                        ; $55f2: $6f
	sub  c                                           ; $55f3: $91
	ld   d, h                                        ; $55f4: $54
	ld   e, c                                        ; $55f5: $59
	ld   [hl], c                                     ; $55f6: $71
	ld   l, l                                        ; $55f7: $6d
	and  c                                           ; $55f8: $a1
	ld   e, c                                        ; $55f9: $59
	ld   sp, hl                                      ; $55fa: $f9
	dec  c                                           ; $55fb: $0d
	nop                                              ; $55fc: $00
	ld   a, [bc]                                     ; $55fd: $0a
	dec  e                                           ; $55fe: $1d
	ld   b, b                                        ; $55ff: $40
	dec  d                                           ; $5600: $15
	inc  bc                                          ; $5601: $03
	dec  d                                           ; $5602: $15
	ld   bc, $2901                                   ; $5603: $01 $01 $29
	nop                                              ; $5606: $00
	ld   bc, $4904                                   ; $5607: $01 $04 $49
	sub  b                                           ; $560a: $90
	ld   a, b                                        ; $560b: $78
	ld   d, d                                        ; $560c: $52
	and  c                                           ; $560d: $a1
	sub  d                                           ; $560e: $92
	ld   [hl], c                                     ; $560f: $71
	ld   l, l                                        ; $5610: $6d
	sub  a                                           ; $5611: $97
	dec  c                                           ; $5612: $0d
	ld   [bc], a                                     ; $5613: $02
	ld   a, a                                        ; $5614: $7f
	ld   e, l                                        ; $5615: $5d
	ld   [hl], l                                     ; $5616: $75
	sbc  a                                           ; $5617: $9f
	adc  c                                           ; $5618: $89
	ld   a, b                                        ; $5619: $78
	ld   a, b                                        ; $561a: $78
	sbc  a                                           ; $561b: $9f
	dec  c                                           ; $561c: $0d
	nop                                              ; $561d: $00
	ld   a, [bc]                                     ; $561e: $0a
	dec  c                                           ; $561f: $0d
	nop                                              ; $5620: $00
	nop                                              ; $5621: $00
	rrca                                             ; $5622: $0f
	nop                                              ; $5623: $00
	ld   bc, $1e09                                   ; $5624: $01 $09 $1e
	nop                                              ; $5627: $00
	rrca                                             ; $5628: $0f
	nop                                              ; $5629: $00
	ld   bc, $0401                                   ; $562a: $01 $01 $04
	ld   e, [hl]                                     ; $562d: $5e
	inc  b                                           ; $562e: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $562f: $cf
	ld   a, h                                        ; $5630: $7c
	ld   e, b                                        ; $5631: $58
	inc  bc                                          ; $5632: $03
	ld   l, e                                        ; $5633: $6b
	inc  b                                           ; $5634: $04
	ld   [de], a                                     ; $5635: $12
	ld   d, d                                        ; $5636: $52
	and  b                                           ; $5637: $a0
	dec  c                                           ; $5638: $0d
	ld   h, e                                        ; $5639: $63
	ld   l, c                                        ; $563a: $69
	ld   [hl], h                                     ; $563b: $74
	sub  b                                           ; $563c: $90
	sub  a                                           ; $563d: $97
	ld   e, b                                        ; $563e: $58
	ld   d, h                                        ; $563f: $54
	halt                                             ; $5640: $76
	dec  b                                           ; $5641: $05
	pop  de                                          ; $5642: $d1
	ld   d, d                                        ; $5643: $52
	adc  h                                           ; $5644: $8c
	ld   h, l                                        ; $5645: $65
	ld   [hl], h                                     ; $5646: $74
	rst  $38                                         ; $5647: $ff
	dec  c                                           ; $5648: $0d
	nop                                              ; $5649: $00
	ld   a, [bc]                                     ; $564a: $0a
	inc  e                                           ; $564b: $1c
	dec  b                                           ; $564c: $05
	ld   bc, $0101                                   ; $564d: $01 $01 $01
	ld   l, e                                        ; $5650: $6b
	ld   d, h                                        ; $5651: $54
	ld   e, c                                        ; $5652: $59
	sbc  [hl]                                        ; $5653: $9e
	adc  c                                           ; $5654: $89
	ld   a, b                                        ; $5655: $78
	sbc  [hl]                                        ; $5656: $9e
	dec  c                                           ; $5657: $0d
	inc  bc                                          ; $5658: $03
	ld   l, e                                        ; $5659: $6b
	inc  b                                           ; $565a: $04
	ld   [de], a                                     ; $565b: $12
	ld   [hl], c                                     ; $565c: $71
	ld   [hl], h                                     ; $565d: $74
	sub  b                                           ; $565e: $90
	sub  a                                           ; $565f: $97
	ld   e, b                                        ; $5660: $58
	sbc  a                                           ; $5661: $9f
	dec  c                                           ; $5662: $0d
	nop                                              ; $5663: $00
	ld   a, [bc]                                     ; $5664: $0a
	dec  c                                           ; $5665: $0d
	nop                                              ; $5666: $00
	nop                                              ; $5667: $00
	rrca                                             ; $5668: $0f
	nop                                              ; $5669: $00
	ld   bc, $051a                                   ; $566a: $01 $1a $05
	rlca                                             ; $566d: $07
	inc  b                                           ; $566e: $04
	ld   [bc], a                                     ; $566f: $02
	ld   [bc], a                                     ; $5670: $02
	inc  b                                           ; $5671: $04
	ld   bc, $2002                                   ; $5672: $01 $02 $20
	nop                                              ; $5675: $00
	rlca                                             ; $5676: $07
	ld   a, [hl+]                                    ; $5677: $2a
	ld   [bc], a                                     ; $5678: $02
	ld   [bc], a                                     ; $5679: $02
	inc  b                                           ; $567a: $04
	ld   bc, $2001                                   ; $567b: $01 $01 $20
	nop                                              ; $567e: $00
	ld   b, $4f                                      ; $567f: $06 $4f
	ld   [bc], a                                     ; $5681: $02
	inc  e                                           ; $5682: $1c
	dec  b                                           ; $5683: $05
	ld   bc, $1d01                                   ; $5684: $01 $01 $1d
	ld   b, b                                        ; $5687: $40
	dec  d                                           ; $5688: $15
	inc  bc                                          ; $5689: $03
	dec  d                                           ; $568a: $15
	ld   bc, $2803                                   ; $568b: $01 $03 $28
	nop                                              ; $568e: $00
	ld   bc, $6763                                   ; $568f: $01 $63 $67
	ld   e, d                                        ; $5692: $5a
	ld   [$7d00], sp                                 ; $5693: $08 $00 $7d
	and  c                                           ; $5696: $a1
	sub  d                                           ; $5697: $92
	sbc  a                                           ; $5698: $9f
	dec  c                                           ; $5699: $0d
	inc  bc                                          ; $569a: $03
	and  [hl]                                        ; $569b: $a6
	dec  b                                           ; $569c: $05
	call nc, Call_057_6597                           ; $569d: $d4 $97 $65
	ld   d, d                                        ; $56a0: $52
	ld   a, [$000d]                                  ; $56a1: $fa $0d $00
	ld   a, [bc]                                     ; $56a4: $0a
	ld   b, $79                                      ; $56a5: $06 $79
	ld   [bc], a                                     ; $56a7: $02
	inc  e                                           ; $56a8: $1c
	dec  b                                           ; $56a9: $05
	nop                                              ; $56aa: $00
	nop                                              ; $56ab: $00
	dec  e                                           ; $56ac: $1d
	ld   b, b                                        ; $56ad: $40
	dec  d                                           ; $56ae: $15
	inc  bc                                          ; $56af: $03
	dec  d                                           ; $56b0: $15
	ld   bc, $2801                                   ; $56b1: $01 $01 $28
	nop                                              ; $56b4: $00
	ld   bc, $0008                                   ; $56b5: $01 $08 $00
	ld   a, l                                        ; $56b8: $7d
	and  c                                           ; $56b9: $a1
	sbc  a                                           ; $56ba: $9f
	dec  c                                           ; $56bb: $0d
	ld   a, b                                        ; $56bc: $78
	ld   e, c                                        ; $56bd: $59
	ld   a, b                                        ; $56be: $78
	ld   e, c                                        ; $56bf: $59
	sbc  [hl]                                        ; $56c0: $9e
	sub  d                                           ; $56c1: $92
	sbc  c                                           ; $56c2: $99
	sub  d                                           ; $56c3: $92
	and  c                                           ; $56c4: $a1
	ld   e, c                                        ; $56c5: $59
	sbc  a                                           ; $56c6: $9f
	dec  c                                           ; $56c7: $0d
	nop                                              ; $56c8: $00
	ld   a, [bc]                                     ; $56c9: $0a
	ld   b, $79                                      ; $56ca: $06 $79
	ld   [bc], a                                     ; $56cc: $02
	inc  e                                           ; $56cd: $1c
	dec  b                                           ; $56ce: $05
	ld   [bc], a                                     ; $56cf: $02
	ld   [bc], a                                     ; $56d0: $02
	dec  e                                           ; $56d1: $1d
	ld   b, b                                        ; $56d2: $40
	dec  d                                           ; $56d3: $15
	inc  bc                                          ; $56d4: $03
	dec  d                                           ; $56d5: $15
	ld   bc, $2902                                   ; $56d6: $01 $02 $29
	nop                                              ; $56d9: $00
	ld   bc, $aca3                                   ; $56da: $01 $a3 $ac
	push af                                          ; $56dd: $f5
	ld   e, d                                        ; $56de: $5a
	ld   a, b                                        ; $56df: $78
	db   $fc                                         ; $56e0: $fc
	sbc  a                                           ; $56e1: $9f
	dec  c                                           ; $56e2: $0d
	sub  b                                           ; $56e3: $90
	ld   d, h                                        ; $56e4: $54
	ld   l, a                                        ; $56e5: $6f
	sub  l                                           ; $56e6: $95
	ld   [hl], c                                     ; $56e7: $71
	halt                                             ; $56e8: $76
	ld   e, d                                        ; $56e9: $5a
	and  c                                           ; $56ea: $a1
	ld   a, [hl]                                     ; $56eb: $7e
	ld   [hl], c                                     ; $56ec: $71
	ld   [hl], h                                     ; $56ed: $74
	db   $fc                                         ; $56ee: $fc
	ld   a, b                                        ; $56ef: $78
	sbc  a                                           ; $56f0: $9f
	dec  c                                           ; $56f1: $0d
	nop                                              ; $56f2: $00
	ld   a, [bc]                                     ; $56f3: $0a
	ld   b, $79                                      ; $56f4: $06 $79
	ld   [bc], a                                     ; $56f6: $02
	ld   bc, $0458                                   ; $56f7: $01 $58 $04
	ld   a, e                                        ; $56fa: $7b
	sbc  d                                           ; $56fb: $9a
	ld   h, e                                        ; $56fc: $63
	and  c                                           ; $56fd: $a1
	ld   [hl], l                                     ; $56fe: $75
	ld   h, l                                        ; $56ff: $65
	ld   l, l                                        ; $5700: $6d
	sbc  a                                           ; $5701: $9f
	dec  c                                           ; $5702: $0d
	adc  c                                           ; $5703: $89
	ld   a, b                                        ; $5704: $78
	sbc  [hl]                                        ; $5705: $9e
	adc  h                                           ; $5706: $8c
	ld   l, l                                        ; $5707: $6d
	ld   a, b                                        ; $5708: $78
	sbc  a                                           ; $5709: $9f
	dec  c                                           ; $570a: $0d
	nop                                              ; $570b: $00
	ld   a, [bc]                                     ; $570c: $0a
	dec  c                                           ; $570d: $0d
	nop                                              ; $570e: $00
	nop                                              ; $570f: $00
	rrca                                             ; $5710: $0f
	nop                                              ; $5711: $00
	ld   bc, $1e09                                   ; $5712: $01 $09 $1e
	nop                                              ; $5715: $00
	rrca                                             ; $5716: $0f
	nop                                              ; $5717: $00
	ld   bc, $0301                                   ; $5718: $01 $01 $03
	and  a                                           ; $571b: $a7
	adc  l                                           ; $571c: $8d
	ld   a, h                                        ; $571d: $7c
	inc  b                                           ; $571e: $04
	xor  d                                           ; $571f: $aa
	halt                                             ; $5720: $76
	ld   e, c                                        ; $5721: $59
	dec  c                                           ; $5722: $0d
	inc  b                                           ; $5723: $04
	ld   c, c                                        ; $5724: $49
	and  b                                           ; $5725: $a0
	ld   h, l                                        ; $5726: $65
	ld   [hl], h                                     ; $5727: $74
	sbc  c                                           ; $5728: $99
	and  c                                           ; $5729: $a1
	ld   [hl], l                                     ; $572a: $75
	ld   h, a                                        ; $572b: $67
	ld   e, c                                        ; $572c: $59
	ld   sp, hl                                      ; $572d: $f9
	dec  c                                           ; $572e: $0d
	nop                                              ; $572f: $00
	ld   a, [bc]                                     ; $5730: $0a
	inc  e                                           ; $5731: $1c
	dec  b                                           ; $5732: $05
	ld   [bc], a                                     ; $5733: $02
	ld   [bc], a                                     ; $5734: $02
	ld   de, $0100                                   ; $5735: $11 $00 $01
	ld   l, e                                        ; $5738: $6b
	sub  d                                           ; $5739: $92
	ld   a, b                                        ; $573a: $78
	rst  $38                                         ; $573b: $ff
	rst  $38                                         ; $573c: $ff
	dec  c                                           ; $573d: $0d
	sub  d                                           ; $573e: $92
	ld   [hl], c                                     ; $573f: $71
	ld   a, a                                        ; $5740: $7f
	ld   h, l                                        ; $5741: $65
	inc  b                                           ; $5742: $04
	ld   e, [hl]                                     ; $5743: $5e
	inc  b                                           ; $5744: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5745: $cf
	ld   e, c                                        ; $5746: $59
	ld   a, b                                        ; $5747: $78
	ld   sp, hl                                      ; $5748: $f9
	dec  c                                           ; $5749: $0d
	nop                                              ; $574a: $00
	ld   a, [bc]                                     ; $574b: $0a
	add  hl, de                                      ; $574c: $19
	dec  b                                           ; $574d: $05
	ld   [bc], a                                     ; $574e: $02
	sub  d                                           ; $574f: $92
	ld   [hl], c                                     ; $5750: $71
	ld   a, a                                        ; $5751: $7f
	sbc  b                                           ; $5752: $98
	nop                                              ; $5753: $00
	nop                                              ; $5754: $00
	ld   [bc], a                                     ; $5755: $02
	bit  7, c                                        ; $5756: $cb $79
	ld   [bc], a                                     ; $5758: $02
	ld   a, a                                        ; $5759: $7f
	ld   e, c                                        ; $575a: $59
	ld   a, b                                        ; $575b: $78
	ld   d, d                                        ; $575c: $52
	ld   a, h                                        ; $575d: $7c
	ld   sp, hl                                      ; $575e: $f9
	nop                                              ; $575f: $00
	ld   bc, $f807                                   ; $5760: $01 $07 $f8
	ld   [bc], a                                     ; $5763: $02
	ld   [bc], a                                     ; $5764: $02
	inc  bc                                          ; $5765: $03
	ld   bc, $2000                                   ; $5766: $01 $00 $20
	nop                                              ; $5769: $00
	rlca                                             ; $576a: $07
	ld   b, e                                        ; $576b: $43
	inc  bc                                          ; $576c: $03
	ld   [bc], a                                     ; $576d: $02
	inc  bc                                          ; $576e: $03
	ld   bc, $2001                                   ; $576f: $01 $01 $20
	nop                                              ; $5772: $00
	ld   b, $b2                                      ; $5773: $06 $b2
	inc  bc                                          ; $5775: $03
	rrca                                             ; $5776: $0f
	nop                                              ; $5777: $00
	ld   bc, rAUD1LEN                                   ; $5778: $01 $11 $ff
	ld   bc, $7192                                   ; $577b: $01 $92 $71
	ld   a, a                                        ; $577e: $7f
	sbc  b                                           ; $577f: $98
	sbc  [hl]                                        ; $5780: $9e
	ld   l, e                                        ; $5781: $6b
	ld   d, h                                        ; $5782: $54
	ld   a, b                                        ; $5783: $78
	and  c                                           ; $5784: $a1
	ld   [hl], l                                     ; $5785: $75
	ld   h, a                                        ; $5786: $67
	ld   a, e                                        ; $5787: $7b
	sbc  a                                           ; $5788: $9f
	dec  c                                           ; $5789: $0d
	nop                                              ; $578a: $00
	ld   a, [bc]                                     ; $578b: $0a
	inc  e                                           ; $578c: $1c
	dec  b                                           ; $578d: $05
	ld   b, $06                                      ; $578e: $06 $06
	dec  e                                           ; $5790: $1d
	ld   b, b                                        ; $5791: $40
	dec  d                                           ; $5792: $15
	inc  bc                                          ; $5793: $03
	dec  d                                           ; $5794: $15
	ld   bc, $2902                                   ; $5795: $01 $02 $29
	nop                                              ; $5798: $00
	ld   bc, $7192                                   ; $5799: $01 $92 $71
	ld   a, a                                        ; $579c: $7f
	sbc  b                                           ; $579d: $98
	ld   [hl], c                                     ; $579e: $71
	ld   [hl], h                                     ; $579f: $74
	ld   a, b                                        ; $57a0: $78
	and  c                                           ; $57a1: $a1
	sub  d                                           ; $57a2: $92
	ld   a, e                                        ; $57a3: $7b
	and  c                                           ; $57a4: $a1
	sbc  a                                           ; $57a5: $9f
	dec  c                                           ; $57a6: $0d
	ld   a, b                                        ; $57a7: $78
	and  c                                           ; $57a8: $a1
	ld   e, c                                        ; $57a9: $59
	sbc  [hl]                                        ; $57aa: $9e
	ld   [bc], a                                     ; $57ab: $02
	and  c                                           ; $57ac: $a1
	inc  b                                           ; $57ad: $04
	sbc  [hl]                                        ; $57ae: $9e
	ld   [bc], a                                     ; $57af: $02
	jr   z, jr_057_5804                              ; $57b0: $28 $52

	ld   a, b                                        ; $57b2: $78
	db   $fc                                         ; $57b3: $fc
	sbc  a                                           ; $57b4: $9f
	dec  c                                           ; $57b5: $0d
	nop                                              ; $57b6: $00
	ld   a, [bc]                                     ; $57b7: $0a
	dec  c                                           ; $57b8: $0d
	nop                                              ; $57b9: $00
	nop                                              ; $57ba: $00
	rrca                                             ; $57bb: $0f
	nop                                              ; $57bc: $00
	ld   bc, $1e09                                   ; $57bd: $01 $09 $1e
	nop                                              ; $57c0: $00
	rrca                                             ; $57c1: $0f
	nop                                              ; $57c2: $00
	ld   bc, $0201                                   ; $57c3: $01 $01 $02
	res  0, [hl]                                     ; $57c6: $cb $86
	ld   a, l                                        ; $57c8: $7d
	ld   [bc], a                                     ; $57c9: $02
	ld   a, a                                        ; $57ca: $7f
	ld   [hl], c                                     ; $57cb: $71
	ld   l, l                                        ; $57cc: $6d
	sbc  b                                           ; $57cd: $98
	ld   h, l                                        ; $57ce: $65
	ld   a, b                                        ; $57cf: $78
	ld   d, d                                        ; $57d0: $52
	ld   a, h                                        ; $57d1: $7c
	dec  c                                           ; $57d2: $0d
	ld   [hl], l                                     ; $57d3: $75
	ld   h, a                                        ; $57d4: $67
	ld   e, c                                        ; $57d5: $59
	ld   sp, hl                                      ; $57d6: $f9
	dec  c                                           ; $57d7: $0d
	nop                                              ; $57d8: $00
	ld   a, [bc]                                     ; $57d9: $0a
	inc  e                                           ; $57da: $1c
	dec  b                                           ; $57db: $05
	nop                                              ; $57dc: $00
	nop                                              ; $57dd: $00
	ld   bc, $7f02                                   ; $57de: $01 $02 $7f
	ld   e, l                                        ; $57e1: $5d
	ld   [hl], l                                     ; $57e2: $75
	sbc  a                                           ; $57e3: $9f
	dec  c                                           ; $57e4: $0d
	ld   [bc], a                                     ; $57e5: $02
	and  c                                           ; $57e6: $a1
	inc  b                                           ; $57e7: $04
	sbc  [hl]                                        ; $57e8: $9e
	ld   [hl], h                                     ; $57e9: $74
	and  c                                           ; $57ea: $a1
	ld   e, c                                        ; $57eb: $59
	and  c                                           ; $57ec: $a1
	ld   a, h                                        ; $57ed: $7c
	inc  bc                                          ; $57ee: $03
	sub  [hl]                                        ; $57ef: $96
	inc  b                                           ; $57f0: $04
	sbc  a                                           ; $57f1: $9f
	halt                                             ; $57f2: $76
	ld   e, c                                        ; $57f3: $59
	sbc  [hl]                                        ; $57f4: $9e
	dec  c                                           ; $57f5: $0d
	inc  b                                           ; $57f6: $04
	ld   e, [hl]                                     ; $57f7: $5e
	inc  b                                           ; $57f8: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57f9: $cf
	ld   [hl], l                                     ; $57fa: $75
	inc  bc                                          ; $57fb: $03
	xor  [hl]                                        ; $57fc: $ae
	ld   d, h                                        ; $57fd: $54
	inc  b                                           ; $57fe: $04
	sub  l                                           ; $57ff: $95
	inc  b                                           ; $5800: $04
	ld   h, c                                        ; $5801: $61
	ld   h, e                                        ; $5802: $63
	ld   e, d                                        ; $5803: $5a

jr_057_5804:
	ld   h, l                                        ; $5804: $65
	halt                                             ; $5805: $76
	ld   e, c                                        ; $5806: $59
	sbc  a                                           ; $5807: $9f
	dec  c                                           ; $5808: $0d
	nop                                              ; $5809: $00
	ld   a, [bc]                                     ; $580a: $0a
	ld   bc, $7889                                   ; $580b: $01 $89 $78
	sbc  [hl]                                        ; $580e: $9e
	and  a                                           ; $580f: $a7
	jp   nz, Jump_057_5e04                           ; $5810: $c2 $04 $5e

	inc  b                                           ; $5813: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5814: $cf
	ld   a, h                                        ; $5815: $7c
	dec  c                                           ; $5816: $0d
	inc  b                                           ; $5817: $04
	ld   [hl-], a                                    ; $5818: $32
	inc  b                                           ; $5819: $04
	dec  bc                                          ; $581a: $0b
	sub  d                                           ; $581b: $92
	ld   e, c                                        ; $581c: $59
	sub  a                                           ; $581d: $97
	sbc  a                                           ; $581e: $9f
	dec  c                                           ; $581f: $0d
	adc  h                                           ; $5820: $8c
	ld   l, l                                        ; $5821: $6d
	ld   a, b                                        ; $5822: $78
	sbc  a                                           ; $5823: $9f
	dec  c                                           ; $5824: $0d
	nop                                              ; $5825: $00
	ld   a, [bc]                                     ; $5826: $0a
	dec  c                                           ; $5827: $0d
	nop                                              ; $5828: $00
	nop                                              ; $5829: $00
	rrca                                             ; $582a: $0f
	nop                                              ; $582b: $00
	ld   bc, $1e09                                   ; $582c: $01 $09 $1e
	nop                                              ; $582f: $00
	inc  e                                           ; $5830: $1c
	dec  b                                           ; $5831: $05
	nop                                              ; $5832: $00
	nop                                              ; $5833: $00
	ld   bc, $7889                                   ; $5834: $01 $89 $78
	sbc  [hl]                                        ; $5837: $9e
	and  a                                           ; $5838: $a7
	jp   nz, Jump_057_5e04                           ; $5839: $c2 $04 $5e

	inc  b                                           ; $583c: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $583d: $cf
	ld   a, h                                        ; $583e: $7c
	dec  c                                           ; $583f: $0d
	inc  b                                           ; $5840: $04
	ld   [hl-], a                                    ; $5841: $32
	inc  b                                           ; $5842: $04
	dec  bc                                          ; $5843: $0b
	sub  d                                           ; $5844: $92
	ld   e, c                                        ; $5845: $59
	sub  a                                           ; $5846: $97
	sbc  a                                           ; $5847: $9f
	dec  c                                           ; $5848: $0d
	adc  h                                           ; $5849: $8c
	ld   l, l                                        ; $584a: $6d
	ld   a, b                                        ; $584b: $78
	sbc  a                                           ; $584c: $9f
	dec  c                                           ; $584d: $0d
	nop                                              ; $584e: $00
	ld   a, [bc]                                     ; $584f: $0a
	dec  c                                           ; $5850: $0d
	nop                                              ; $5851: $00
	nop                                              ; $5852: $00
	rrca                                             ; $5853: $0f
	nop                                              ; $5854: $00
	ld   bc, $1e09                                   ; $5855: $01 $09 $1e
	nop                                              ; $5858: $00
	rrca                                             ; $5859: $0f
	nop                                              ; $585a: $00
	ld   bc, $5001                                   ; $585b: $01 $01 $50
	sub  d                                           ; $585e: $92
	adc  a                                           ; $585f: $8f
	ld   h, e                                        ; $5860: $63
	and  c                                           ; $5861: $a1
	ld   [hl], h                                     ; $5862: $74
	sbc  [hl]                                        ; $5863: $9e
	ld   [bc], a                                     ; $5864: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5865: $cf
	dec  b                                           ; $5866: $05
	ld   a, [de]                                     ; $5867: $1a
	ld   h, e                                        ; $5868: $63
	and  c                                           ; $5869: $a1
	ld   e, c                                        ; $586a: $59
	sub  a                                           ; $586b: $97
	dec  c                                           ; $586c: $0d
	ld   [bc], a                                     ; $586d: $02
	sub  l                                           ; $586e: $95
	ld   [hl], h                                     ; $586f: $74
	sbc  [hl]                                        ; $5870: $9e
	ld   [hl], a                                     ; $5871: $77
	and  c                                           ; $5872: $a1
	ld   a, b                                        ; $5873: $78
	inc  b                                           ; $5874: $04
	ld   a, b                                        ; $5875: $78
	ld   [hl], l                                     ; $5876: $75
	ld   h, a                                        ; $5877: $67
	ld   e, c                                        ; $5878: $59
	ld   sp, hl                                      ; $5879: $f9
	dec  c                                           ; $587a: $0d
	nop                                              ; $587b: $00
	ld   a, [bc]                                     ; $587c: $0a
	inc  e                                           ; $587d: $1c
	dec  b                                           ; $587e: $05
	ld   bc, $0101                                   ; $587f: $01 $01 $01
	ld   d, b                                        ; $5882: $50
	sub  d                                           ; $5883: $92
	adc  a                                           ; $5884: $8f
	ld   a, l                                        ; $5885: $7d
	and  c                                           ; $5886: $a1
	ld   a, l                                        ; $5887: $7d
	sbc  [hl]                                        ; $5888: $9e
	and  a                                           ; $5889: $a7
	jp   nz, $067c                                   ; $588a: $c2 $7c $06

	ld   a, $03                                      ; $588d: $3e $03
	add  d                                           ; $588f: $82
	sub  d                                           ; $5890: $92
	sbc  a                                           ; $5891: $9f
	dec  c                                           ; $5892: $0d
	inc  b                                           ; $5893: $04
	dec  bc                                          ; $5894: $0b
	ld   [bc], a                                     ; $5895: $02
	adc  a                                           ; $5896: $8f
	ld   [hl], l                                     ; $5897: $75
	ld   [bc], a                                     ; $5898: $02
	jr   nz, jr_057_589e                             ; $5899: $20 $03

	add  d                                           ; $589b: $82
	adc  d                                           ; $589c: $8a
	ld   [hl], c                                     ; $589d: $71

jr_057_589e:
	ld   l, a                                        ; $589e: $6f
	sub  d                                           ; $589f: $92
	ld   [hl], c                                     ; $58a0: $71
	ld   l, l                                        ; $58a1: $6d
	and  a                                           ; $58a2: $a7
	jp   nz, $0da0                                   ; $58a3: $c2 $a0 $0d

	inc  b                                           ; $58a6: $04
	xor  d                                           ; $58a7: $aa
	inc  b                                           ; $58a8: $04
	adc  a                                           ; $58a9: $8f
	ld   a, c                                        ; $58aa: $79
	inc  b                                           ; $58ab: $04
	db   $fd                                         ; $58ac: $fd
	sbc  d                                           ; $58ad: $9a
	ld   [hl], h                                     ; $58ae: $74
	ld   e, e                                        ; $58af: $5b
	ld   [hl], h                                     ; $58b0: $74
	ld   e, l                                        ; $58b1: $5d
	sbc  d                                           ; $58b2: $9a
	ld   l, l                                        ; $58b3: $6d
	sbc  a                                           ; $58b4: $9f
	dec  c                                           ; $58b5: $0d
	nop                                              ; $58b6: $00
	ld   a, [bc]                                     ; $58b7: $0a
	ld   bc, $aa04                                   ; $58b8: $01 $04 $aa
	inc  b                                           ; $58bb: $04
	adc  a                                           ; $58bc: $8f
	ld   [hl], l                                     ; $58bd: $75
	inc  b                                           ; $58be: $04
	xor  [hl]                                        ; $58bf: $ae
	ld   [bc], a                                     ; $58c0: $02
	call nc, Call_057_6390                           ; $58c1: $d4 $90 $63
	ld   l, c                                        ; $58c4: $69
	ld   [hl], h                                     ; $58c5: $74
	ld   e, l                                        ; $58c6: $5d
	sbc  d                                           ; $58c7: $9a
	ld   l, l                                        ; $58c8: $6d
	ld   h, l                                        ; $58c9: $65
	sbc  [hl]                                        ; $58ca: $9e
	dec  c                                           ; $58cb: $0d
	and  a                                           ; $58cc: $a7
	jp   nz, $047c                                   ; $58cd: $c2 $7c $04

	ld   c, $02                                      ; $58d0: $0e $02
	sbc  d                                           ; $58d2: $9a
	ld   e, e                                        ; $58d3: $5b
	ld   a, b                                        ; $58d4: $78
	inc  b                                           ; $58d5: $04
	ld   e, [hl]                                     ; $58d6: $5e
	inc  b                                           ; $58d7: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58d8: $cf
	ld   l, [hl]                                     ; $58d9: $6e
	ld   [hl], c                                     ; $58da: $71
	ld   [hl], h                                     ; $58db: $74
	dec  c                                           ; $58dc: $0d
	ld   h, e                                        ; $58dd: $63
	ld   l, c                                        ; $58de: $69
	ld   [hl], h                                     ; $58df: $74
	ld   e, l                                        ; $58e0: $5d
	sbc  d                                           ; $58e1: $9a
	sbc  c                                           ; $58e2: $99
	sbc  a                                           ; $58e3: $9f
	dec  c                                           ; $58e4: $0d
	nop                                              ; $58e5: $00
	ld   a, [bc]                                     ; $58e6: $0a
	ld   bc, $9250                                   ; $58e7: $01 $50 $92
	adc  a                                           ; $58ea: $8f
	ld   a, l                                        ; $58eb: $7d
	and  c                                           ; $58ec: $a1
	ld   e, d                                        ; $58ed: $5a
	sbc  [hl]                                        ; $58ee: $9e
	ld   e, b                                        ; $58ef: $58
	sub  a                                           ; $58f0: $97
	and  c                                           ; $58f1: $a1
	ld   e, c                                        ; $58f2: $59
	ld   [hl], c                                     ; $58f3: $71
	ld   l, l                                        ; $58f4: $6d
	sub  a                                           ; $58f5: $97
	dec  c                                           ; $58f6: $0d
	ld   e, e                                        ; $58f7: $5b
	ld   [hl], c                                     ; $58f8: $71
	halt                                             ; $58f9: $76
	ld   [bc], a                                     ; $58fa: $02
	and  l                                           ; $58fb: $a5
	ld   a, h                                        ; $58fc: $7c
	and  a                                           ; $58fd: $a7
	jp   nz, $9e7d                                   ; $58fe: $c2 $7d $9e

	dec  c                                           ; $5901: $0d
	ld   e, b                                        ; $5902: $58
	sub  a                                           ; $5903: $97
	and  c                                           ; $5904: $a1
	ld   e, c                                        ; $5905: $59
	ld   [hl], c                                     ; $5906: $71
	ld   l, l                                        ; $5907: $6d
	halt                                             ; $5908: $76
	dec  b                                           ; $5909: $05
	pop  de                                          ; $590a: $d1
	ld   d, h                                        ; $590b: $54
	ld   [hl], l                                     ; $590c: $75
	sbc  a                                           ; $590d: $9f
	dec  c                                           ; $590e: $0d
	nop                                              ; $590f: $00
	ld   a, [bc]                                     ; $5910: $0a
	ld   bc, $7889                                   ; $5911: $01 $89 $78
	sbc  [hl]                                        ; $5914: $9e
	and  a                                           ; $5915: $a7
	jp   nz, Jump_057_5e04                           ; $5916: $c2 $04 $5e

	inc  b                                           ; $5919: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $591a: $cf
	ld   a, h                                        ; $591b: $7c
	dec  c                                           ; $591c: $0d
	inc  b                                           ; $591d: $04
	ld   [hl-], a                                    ; $591e: $32
	inc  b                                           ; $591f: $04
	dec  bc                                          ; $5920: $0b
	sub  d                                           ; $5921: $92
	ld   e, c                                        ; $5922: $59
	sub  a                                           ; $5923: $97
	sbc  a                                           ; $5924: $9f
	dec  c                                           ; $5925: $0d
	adc  h                                           ; $5926: $8c
	ld   l, l                                        ; $5927: $6d
	ld   a, b                                        ; $5928: $78
	sbc  a                                           ; $5929: $9f
	dec  c                                           ; $592a: $0d
	nop                                              ; $592b: $00
	ld   a, [bc]                                     ; $592c: $0a
	dec  c                                           ; $592d: $0d
	nop                                              ; $592e: $00
	nop                                              ; $592f: $00
	rrca                                             ; $5930: $0f
	nop                                              ; $5931: $00
	ld   bc, $1e09                                   ; $5932: $01 $09 $1e
	nop                                              ; $5935: $00
	nop                                              ; $5936: $00
	rrca                                             ; $5937: $0f
	nop                                              ; $5938: $00
	ld   bc, $020d                                   ; $5939: $01 $0d $02
	nop                                              ; $593c: $00
	ld   [bc], a                                     ; $593d: $02
	dec  b                                           ; $593e: $05
	add  b                                           ; $593f: $80
	sub  e                                           ; $5940: $93
	ld   bc, $0001                                   ; $5941: $01 $01 $00
	ld   bc, $8d67                                   ; $5944: $01 $67 $8d
	sbc  d                                           ; $5947: $9a
	ld   h, e                                        ; $5948: $63
	and  c                                           ; $5949: $a1
	sbc  a                                           ; $594a: $9f
	dec  c                                           ; $594b: $0d
	ld   l, a                                        ; $594c: $6f
	sub  l                                           ; $594d: $95
	ld   [hl], c                                     ; $594e: $71
	halt                                             ; $594f: $76
	ld   d, d                                        ; $5950: $52
	ld   d, d                                        ; $5951: $52
	ld   [hl], l                                     ; $5952: $75
	ld   h, a                                        ; $5953: $67
	ld   e, c                                        ; $5954: $59
	ld   sp, hl                                      ; $5955: $f9
	dec  c                                           ; $5956: $0d
	nop                                              ; $5957: $00
	ld   a, [bc]                                     ; $5958: $0a
	rrca                                             ; $5959: $0f
	ld   [bc], a                                     ; $595a: $02
	nop                                              ; $595b: $00
	ld   bc, $4904                                   ; $595c: $01 $04 $49
	ld   e, c                                        ; $595f: $59
	ld   h, l                                        ; $5960: $65
	sub  a                                           ; $5961: $97
	ld   sp, hl                                      ; $5962: $f9
	dec  c                                           ; $5963: $0d
	nop                                              ; $5964: $00
	ld   a, [bc]                                     ; $5965: $0a
	add  hl, de                                      ; $5966: $19
	dec  b                                           ; $5967: $05
	inc  bc                                          ; $5968: $03
	ld   e, a                                        ; $5969: $5f
	ld   d, d                                        ; $596a: $52
	ld   h, c                                        ; $596b: $61
	and  b                                           ; $596c: $a0
	ld   [hl], d                                     ; $596d: $72
	ld   e, a                                        ; $596e: $5f
	ld   [hl], h                                     ; $596f: $74
	sub  b                                           ; $5970: $90
	sub  a                                           ; $5971: $97
	ld   d, h                                        ; $5972: $54
	nop                                              ; $5973: $00
	nop                                              ; $5974: $00
	inc  bc                                          ; $5975: $03
	and  a                                           ; $5976: $a7
	inc  b                                           ; $5977: $04
	xor  d                                           ; $5978: $aa
	ld   a, h                                        ; $5979: $7c
	ld   h, a                                        ; $597a: $67
	ld   h, d                                        ; $597b: $62
	ld   h, l                                        ; $597c: $65
	inc  b                                           ; $597d: $04
	ld   a, b                                        ; $597e: $78
	ld   a, c                                        ; $597f: $79
	ld   [hl], d                                     ; $5980: $72
	ld   d, d                                        ; $5981: $52
	ld   [hl], h                                     ; $5982: $74
	ld   [bc], a                                     ; $5983: $02
	jp   nz, $005d                                   ; $5984: $c2 $5d $00

	ld   bc, $8d67                                   ; $5987: $01 $67 $8d
	sbc  d                                           ; $598a: $9a
	ld   a, h                                        ; $598b: $7c
	ld   h, c                                        ; $598c: $61
	halt                                             ; $598d: $76
	and  b                                           ; $598e: $a0
	ld   [bc], a                                     ; $598f: $02
	jp   nz, $005d                                   ; $5990: $c2 $5d $00

	ld   [bc], a                                     ; $5993: $02
	rlca                                             ; $5994: $07
	xor  d                                           ; $5995: $aa
	ld   bc, $0302                                   ; $5996: $01 $02 $03
	ld   bc, $2000                                   ; $5999: $01 $00 $20
	nop                                              ; $599c: $00
	rlca                                             ; $599d: $07
	and  e                                           ; $599e: $a3
	ld   [bc], a                                     ; $599f: $02
	ld   [bc], a                                     ; $59a0: $02
	inc  bc                                          ; $59a1: $03
	ld   bc, $2001                                   ; $59a2: $01 $01 $20
	nop                                              ; $59a5: $00
	rlca                                             ; $59a6: $07
	db   $e3                                         ; $59a7: $e3
	inc  bc                                          ; $59a8: $03
	ld   [bc], a                                     ; $59a9: $02
	inc  bc                                          ; $59aa: $03
	ld   bc, $2002                                   ; $59ab: $01 $02 $20
	nop                                              ; $59ae: $00
	ld   b, $7b                                      ; $59af: $06 $7b
	nop                                              ; $59b1: $00
	rrca                                             ; $59b2: $0f
	nop                                              ; $59b3: $00
	ld   bc, $ff01                                   ; $59b4: $01 $01 $ff
	rst  $38                                         ; $59b7: $ff
	rst  $38                                         ; $59b8: $ff
	rst  $38                                         ; $59b9: $ff
	dec  c                                           ; $59ba: $0d
	nop                                              ; $59bb: $00
	ld   a, [bc]                                     ; $59bc: $0a
	rlca                                             ; $59bd: $07
	and  a                                           ; $59be: $a7
	nop                                              ; $59bf: $00
	inc  bc                                          ; $59c0: $03
	ld   [de], a                                     ; $59c1: $12
	ld   bc, $25aa                                   ; $59c2: $01 $aa $25
	nop                                              ; $59c5: $00
	rlca                                             ; $59c6: $07
	nop                                              ; $59c7: $00
	ld   bc, $1203                                   ; $59c8: $01 $03 $12
	ld   bc, $2597                                   ; $59cb: $01 $97 $25
	inc  bc                                          ; $59ce: $03
	ld   [de], a                                     ; $59cf: $12
	ld   bc, $23a9                                   ; $59d0: $01 $a9 $23
	inc  e                                           ; $59d3: $1c
	nop                                              ; $59d4: $00
	rlca                                             ; $59d5: $07
	ld   d, a                                        ; $59d6: $57
	ld   bc, $1203                                   ; $59d7: $01 $03 $12
	ld   bc, $2396                                   ; $59da: $01 $96 $23
	nop                                              ; $59dd: $00
	inc  e                                           ; $59de: $1c
	ld   [bc], a                                     ; $59df: $02
	inc  b                                           ; $59e0: $04
	inc  b                                           ; $59e1: $04
	ld   bc, $9e78                                   ; $59e2: $01 $78 $9e
	inc  b                                           ; $59e5: $04
	ld   c, c                                        ; $59e6: $49
	ld   [hl], l                                     ; $59e7: $75
	ld   h, a                                        ; $59e8: $67
	ld   a, h                                        ; $59e9: $7c
	dec  c                                           ; $59ea: $0d
	ld   l, e                                        ; $59eb: $6b
	and  c                                           ; $59ec: $a1
	ld   a, b                                        ; $59ed: $78
	ld   [bc], a                                     ; $59ee: $02
	sub  l                                           ; $59ef: $95
	ld   [hl], d                                     ; $59f0: $72
	adc  a                                           ; $59f1: $8f
	ld   [hl], h                                     ; $59f2: $74
	rst  $38                                         ; $59f3: $ff
	rst  $38                                         ; $59f4: $ff
	dec  c                                           ; $59f5: $0d
	nop                                              ; $59f6: $00
	ld   a, [bc]                                     ; $59f7: $0a
	dec  e                                           ; $59f8: $1d
	ld   b, b                                        ; $59f9: $40
	ld   [de], a                                     ; $59fa: $12
	inc  bc                                          ; $59fb: $03
	ld   [de], a                                     ; $59fc: $12
	ld   bc, $2802                                   ; $59fd: $01 $02 $28
	nop                                              ; $5a00: $00
	ld   bc, $9e74                                   ; $5a01: $01 $74 $9e
	inc  bc                                          ; $5a04: $03
	ld   h, [hl]                                     ; $5a05: $66
	sbc  d                                           ; $5a06: $9a
	sbc  c                                           ; $5a07: $99
	ld   h, [hl]                                     ; $5a08: $66
	sub  c                                           ; $5a09: $91
	ld   d, b                                        ; $5a0a: $50
	sbc  b                                           ; $5a0b: $98
	adc  h                                           ; $5a0c: $8c
	ld   l, c                                        ; $5a0d: $69
	and  c                                           ; $5a0e: $a1
	ld   e, c                                        ; $5a0f: $59
	sbc  a                                           ; $5a10: $9f
	dec  c                                           ; $5a11: $0d
	halt                                             ; $5a12: $76
	ld   e, l                                        ; $5a13: $5d
	ld   a, c                                        ; $5a14: $79
	inc  b                                           ; $5a15: $04
	di                                               ; $5a16: $f3
	ld   e, d                                        ; $5a17: $5a
	ld   a, b                                        ; $5a18: $78
	ld   d, d                                        ; $5a19: $52
	ld   a, h                                        ; $5a1a: $7c
	ld   [hl], l                                     ; $5a1b: $75
	ld   h, l                                        ; $5a1c: $65
	ld   l, l                                        ; $5a1d: $6d
	sub  a                                           ; $5a1e: $97
	sbc  [hl]                                        ; $5a1f: $9e
	dec  c                                           ; $5a20: $0d
	inc  bc                                          ; $5a21: $03
	add  e                                           ; $5a22: $83
	dec  b                                           ; $5a23: $05
	dec  c                                           ; $5a24: $0d
	ld   h, l                                        ; $5a25: $65
	adc  h                                           ; $5a26: $8c
	ld   h, a                                        ; $5a27: $67
	sbc  l                                           ; $5a28: $9d
	rst  $38                                         ; $5a29: $ff
	rst  $38                                         ; $5a2a: $ff
	dec  c                                           ; $5a2b: $0d
	nop                                              ; $5a2c: $00
	ld   a, [bc]                                     ; $5a2d: $0a
	dec  c                                           ; $5a2e: $0d
	nop                                              ; $5a2f: $00
	nop                                              ; $5a30: $00
	rrca                                             ; $5a31: $0f
	nop                                              ; $5a32: $00
	ld   bc, $1e09                                   ; $5a33: $01 $09 $1e
	nop                                              ; $5a36: $00
	inc  e                                           ; $5a37: $1c
	ld   [bc], a                                     ; $5a38: $02
	nop                                              ; $5a39: $00
	nop                                              ; $5a3a: $00
	ld   bc, $6d9d                                   ; $5a3b: $01 $9d $6d
	ld   e, l                                        ; $5a3e: $5d
	ld   h, l                                        ; $5a3f: $65
	ld   a, h                                        ; $5a40: $7c
	ld   [bc], a                                     ; $5a41: $02
	ld   [hl], d                                     ; $5a42: $72
	ld   a, c                                        ; $5a43: $79
	ld   a, b                                        ; $5a44: $78
	ld   a, c                                        ; $5a45: $79
	ld   e, c                                        ; $5a46: $59
	dec  c                                           ; $5a47: $0d
	ld   [hl], d                                     ; $5a48: $72
	ld   d, d                                        ; $5a49: $52
	ld   [hl], h                                     ; $5a4a: $74
	adc  h                                           ; $5a4b: $8c
	ld   h, a                                        ; $5a4c: $67
	ld   a, h                                        ; $5a4d: $7c
	ld   sp, hl                                      ; $5a4e: $f9
	dec  c                                           ; $5a4f: $0d
	nop                                              ; $5a50: $00
	ld   a, [bc]                                     ; $5a51: $0a
	rrca                                             ; $5a52: $0f
	nop                                              ; $5a53: $00
	ld   bc, $5201                                   ; $5a54: $01 $01 $52
	sbc  [hl]                                        ; $5a57: $9e
	ld   d, d                                        ; $5a58: $52
	ld   d, [hl]                                     ; $5a59: $56
	rst  $38                                         ; $5a5a: $ff
	rst  $38                                         ; $5a5b: $ff
	dec  c                                           ; $5a5c: $0d
	nop                                              ; $5a5d: $00
	ld   a, [bc]                                     ; $5a5e: $0a
	rrca                                             ; $5a5f: $0f
	ld   [bc], a                                     ; $5a60: $02
	nop                                              ; $5a61: $00
	ld   bc, $546b                                   ; $5a62: $01 $6b $54
	ld   [hl], l                                     ; $5a65: $75
	ld   h, a                                        ; $5a66: $67
	ld   e, c                                        ; $5a67: $59
	sbc  a                                           ; $5a68: $9f
	dec  c                                           ; $5a69: $0d
	ld   [hl], l                                     ; $5a6a: $75
	ld   a, l                                        ; $5a6b: $7d
	sbc  [hl]                                        ; $5a6c: $9e
	sbc  l                                           ; $5a6d: $9d
	ld   l, l                                        ; $5a6e: $6d
	ld   e, l                                        ; $5a6f: $5d
	ld   h, l                                        ; $5a70: $65
	inc  b                                           ; $5a71: $04
	di                                               ; $5a72: $f3
	ld   e, d                                        ; $5a73: $5a
	ld   d, b                                        ; $5a74: $50
	sbc  b                                           ; $5a75: $98
	adc  h                                           ; $5a76: $8c
	ld   h, a                                        ; $5a77: $67
	dec  c                                           ; $5a78: $0d
	ld   e, c                                        ; $5a79: $59
	sub  a                                           ; $5a7a: $97
	rst  $38                                         ; $5a7b: $ff
	inc  bc                                          ; $5a7c: $03
	add  e                                           ; $5a7d: $83
	dec  b                                           ; $5a7e: $05
	dec  c                                           ; $5a7f: $0d
	rst  $38                                         ; $5a80: $ff
	rst  $38                                         ; $5a81: $ff
	dec  c                                           ; $5a82: $0d
	nop                                              ; $5a83: $00
	ld   a, [bc]                                     ; $5a84: $0a
	dec  c                                           ; $5a85: $0d
	nop                                              ; $5a86: $00
	nop                                              ; $5a87: $00
	rrca                                             ; $5a88: $0f
	nop                                              ; $5a89: $00
	ld   bc, $1e09                                   ; $5a8a: $01 $09 $1e
	nop                                              ; $5a8d: $00
	inc  e                                           ; $5a8e: $1c
	ld   [bc], a                                     ; $5a8f: $02

Jump_057_5a90:
	ld   [bc], a                                     ; $5a90: $02
	ld   [bc], a                                     ; $5a91: $02
	ld   bc, $4904                                   ; $5a92: $01 $04 $49
	ld   e, c                                        ; $5a95: $59
	ld   h, d                                        ; $5a96: $62
	inc  b                                           ; $5a97: $04
	di                                               ; $5a98: $f3
	ld   e, d                                        ; $5a99: $5a
	ld   d, b                                        ; $5a9a: $50
	sbc  c                                           ; $5a9b: $99
	and  c                                           ; $5a9c: $a1
	ld   h, [hl]                                     ; $5a9d: $66
	sub  c                                           ; $5a9e: $91
	dec  c                                           ; $5a9f: $0d
	ld   h, d                                        ; $5aa0: $62
	ld   h, h                                        ; $5aa1: $64
	ld   d, d                                        ; $5aa2: $52
	adc  h                                           ; $5aa3: $8c
	ld   l, c                                        ; $5aa4: $69
	and  c                                           ; $5aa5: $a1
	ld   h, c                                        ; $5aa6: $61
	halt                                             ; $5aa7: $76
	ld   sp, hl                                      ; $5aa8: $f9
	dec  c                                           ; $5aa9: $0d
	nop                                              ; $5aaa: $00
	ld   a, [bc]                                     ; $5aab: $0a
	dec  e                                           ; $5aac: $1d
	ld   b, b                                        ; $5aad: $40
	ld   [de], a                                     ; $5aae: $12
	inc  bc                                          ; $5aaf: $03
	ld   [de], a                                     ; $5ab0: $12
	ld   bc, $2901                                   ; $5ab1: $01 $01 $29
	nop                                              ; $5ab4: $00
	ld   bc, $5278                                   ; $5ab5: $01 $78 $52
	ld   a, b                                        ; $5ab8: $78
	sub  a                                           ; $5ab9: $97
	sbc  [hl]                                        ; $5aba: $9e
	sbc  l                                           ; $5abb: $9d
	ld   l, l                                        ; $5abc: $6d
	ld   e, l                                        ; $5abd: $5d
	ld   h, l                                        ; $5abe: $65
	ld   [bc], a                                     ; $5abf: $02
	ld   h, l                                        ; $5ac0: $65
	ld   d, [hl]                                     ; $5ac1: $56
	ld   [bc], a                                     ; $5ac2: $02
	jp   $0da0                                       ; $5ac3: $c3 $a0 $0d


	ld   h, l                                        ; $5ac6: $65
	ld   [hl], h                                     ; $5ac7: $74
	ld   e, b                                        ; $5ac8: $58
	sbc  b                                           ; $5ac9: $98
	adc  h                                           ; $5aca: $8c
	ld   h, a                                        ; $5acb: $67
	ld   a, h                                        ; $5acc: $7c
	ld   [hl], l                                     ; $5acd: $75
	sbc  [hl]                                        ; $5ace: $9e
	dec  c                                           ; $5acf: $0d
	ld   [bc], a                                     ; $5ad0: $02
	jr   nz, jr_057_5ad6                             ; $5ad1: $20 $03

	add  d                                           ; $5ad3: $82
	ld   a, c                                        ; $5ad4: $79
	ld   h, l                                        ; $5ad5: $65

jr_057_5ad6:
	ld   [hl], h                                     ; $5ad6: $74
	ld   l, a                                        ; $5ad7: $6f
	sub  l                                           ; $5ad8: $95
	ld   d, h                                        ; $5ad9: $54
	ld   l, [hl]                                     ; $5ada: $6e
	ld   d, d                                        ; $5adb: $52
	sbc  a                                           ; $5adc: $9f
	dec  c                                           ; $5add: $0d
	nop                                              ; $5ade: $00
	ld   a, [bc]                                     ; $5adf: $0a
	nop                                              ; $5ae0: $00
	rrca                                             ; $5ae1: $0f
	nop                                              ; $5ae2: $00
	ld   bc, $0401                                   ; $5ae3: $01 $01 $04
	ld   l, l                                        ; $5ae6: $6d
	ld   a, c                                        ; $5ae7: $79
	ld   h, a                                        ; $5ae8: $67
	adc  l                                           ; $5ae9: $8d
	sbc  d                                           ; $5aea: $9a
	ld   h, e                                        ; $5aeb: $63
	and  c                                           ; $5aec: $a1
	ld   a, h                                        ; $5aed: $7c
	ld   e, a                                        ; $5aee: $5f
	ld   d, d                                        ; $5aef: $52
	ld   h, c                                        ; $5af0: $61
	and  b                                           ; $5af1: $a0
	dec  c                                           ; $5af2: $0d
	ld   [hl], d                                     ; $5af3: $72
	ld   e, a                                        ; $5af4: $5f
	ld   [hl], h                                     ; $5af5: $74
	sub  b                                           ; $5af6: $90
	sub  a                                           ; $5af7: $97
	ld   d, [hl]                                     ; $5af8: $56
	adc  h                                           ; $5af9: $8c
	ld   l, c                                        ; $5afa: $69
	and  c                                           ; $5afb: $a1
	ld   e, c                                        ; $5afc: $59
	ld   sp, hl                                      ; $5afd: $f9
	dec  c                                           ; $5afe: $0d
	nop                                              ; $5aff: $00
	ld   a, [bc]                                     ; $5b00: $0a
	rrca                                             ; $5b01: $0f
	ld   [bc], a                                     ; $5b02: $02
	nop                                              ; $5b03: $00
	ld   bc, $9750                                   ; $5b04: $01 $50 $97
	sbc  [hl]                                        ; $5b07: $9e
	ld   l, b                                        ; $5b08: $68
	ld   d, d                                        ; $5b09: $52
	add  h                                           ; $5b0a: $84
	and  c                                           ; $5b0b: $a1
	halt                                             ; $5b0c: $76
	dec  c                                           ; $5b0d: $0d
	sub  d                                           ; $5b0e: $92
	sbc  c                                           ; $5b0f: $99
	ld   [bc], a                                     ; $5b10: $02
	and  c                                           ; $5b11: $a1
	ld   [hl], l                                     ; $5b12: $75
	ld   h, a                                        ; $5b13: $67
	sbc  l                                           ; $5b14: $9d
	ld   a, e                                        ; $5b15: $7b
	sbc  a                                           ; $5b16: $9f
	dec  c                                           ; $5b17: $0d
	ld   d, d                                        ; $5b18: $52
	ld   d, d                                        ; $5b19: $52
	ld   [hl], l                                     ; $5b1a: $75
	ld   h, a                                        ; $5b1b: $67
	sbc  l                                           ; $5b1c: $9d
	sub  [hl]                                        ; $5b1d: $96
	sbc  a                                           ; $5b1e: $9f
	dec  c                                           ; $5b1f: $0d
	nop                                              ; $5b20: $00
	ld   a, [bc]                                     ; $5b21: $0a
	dec  c                                           ; $5b22: $0d
	nop                                              ; $5b23: $00
	nop                                              ; $5b24: $00
	rrca                                             ; $5b25: $0f
	nop                                              ; $5b26: $00
	ld   bc, $021a                                   ; $5b27: $01 $1a $02
	rlca                                             ; $5b2a: $07
	ld   c, $02                                      ; $5b2b: $0e $02
	ld   [bc], a                                     ; $5b2d: $02
	inc  b                                           ; $5b2e: $04
	ld   bc, $2002                                   ; $5b2f: $01 $02 $20
	nop                                              ; $5b32: $00
	rlca                                             ; $5b33: $07
	ccf                                              ; $5b34: $3f
	ld   [bc], a                                     ; $5b35: $02
	ld   [bc], a                                     ; $5b36: $02
	inc  b                                           ; $5b37: $04
	ld   bc, $2001                                   ; $5b38: $01 $01 $20
	nop                                              ; $5b3b: $00
	rlca                                             ; $5b3c: $07
	ld   a, c                                        ; $5b3d: $79
	ld   [bc], a                                     ; $5b3e: $02
	ld   [bc], a                                     ; $5b3f: $02
	inc  b                                           ; $5b40: $04
	ld   bc, $2000                                   ; $5b41: $01 $00 $20
	nop                                              ; $5b44: $00
	inc  e                                           ; $5b45: $1c
	ld   [bc], a                                     ; $5b46: $02
	ld   b, $06                                      ; $5b47: $06 $06
	ld   bc, $9e9d                                   ; $5b49: $01 $9d $9e
	sbc  l                                           ; $5b4c: $9d
	ld   h, h                                        ; $5b4d: $64
	halt                                             ; $5b4e: $76
	inc  b                                           ; $5b4f: $04
	ld   a, l                                        ; $5b50: $7d
	ld   e, a                                        ; $5b51: $5f
	ld   [hl], h                                     ; $5b52: $74
	ld   h, e                                        ; $5b53: $63
	ld   h, l                                        ; $5b54: $65
	ld   d, b                                        ; $5b55: $50
	ld   h, b                                        ; $5b56: $60
	ld   l, l                                        ; $5b57: $6d
	dec  c                                           ; $5b58: $0d
	ld   a, h                                        ; $5b59: $7c
	ld   [hl], l                                     ; $5b5a: $75
	ld   h, a                                        ; $5b5b: $67
	sbc  l                                           ; $5b5c: $9d
	sub  [hl]                                        ; $5b5d: $96
	rst  $38                                         ; $5b5e: $ff
	rst  $38                                         ; $5b5f: $ff
	dec  c                                           ; $5b60: $0d
	ld   e, b                                        ; $5b61: $58
	ei                                               ; $5b62: $fb
	adc  c                                           ; $5b63: $89
	adc  c                                           ; $5b64: $89
	adc  c                                           ; $5b65: $89
	adc  c                                           ; $5b66: $89
	adc  c                                           ; $5b67: $89
	rst  $38                                         ; $5b68: $ff
	rst  $38                                         ; $5b69: $ff
	dec  c                                           ; $5b6a: $0d
	nop                                              ; $5b6b: $00
	ld   a, [bc]                                     ; $5b6c: $0a
	dec  c                                           ; $5b6d: $0d
	nop                                              ; $5b6e: $00
	nop                                              ; $5b6f: $00
	rrca                                             ; $5b70: $0f
	nop                                              ; $5b71: $00
	ld   bc, $1e09                                   ; $5b72: $01 $09 $1e
	nop                                              ; $5b75: $00
	inc  e                                           ; $5b76: $1c
	ld   [bc], a                                     ; $5b77: $02
	ld   bc, $0101                                   ; $5b78: $01 $01 $01
	ld   a, b                                        ; $5b7b: $78
	ld   e, c                                        ; $5b7c: $59
	ld   a, b                                        ; $5b7d: $78
	ld   e, c                                        ; $5b7e: $59
	sbc  [hl]                                        ; $5b7f: $9e
	ld   e, d                                        ; $5b80: $5a
	and  c                                           ; $5b81: $a1
	ld   a, [hl]                                     ; $5b82: $7e
	sbc  b                                           ; $5b83: $98
	adc  h                                           ; $5b84: $8c
	ld   h, l                                        ; $5b85: $65
	ld   l, l                                        ; $5b86: $6d
	ld   e, a                                        ; $5b87: $5f
	ld   [hl], a                                     ; $5b88: $77
	dec  c                                           ; $5b89: $0d
	sub  d                                           ; $5b8a: $92
	ld   a, l                                        ; $5b8b: $7d
	sbc  b                                           ; $5b8c: $98
	sbc  l                                           ; $5b8d: $9d
	ld   l, l                                        ; $5b8e: $6d
	ld   e, l                                        ; $5b8f: $5d
	ld   h, l                                        ; $5b90: $65
	ld   a, h                                        ; $5b91: $7c
	ld   [bc], a                                     ; $5b92: $02
	ld   a, [de]                                     ; $5b93: $1a
	inc  bc                                          ; $5b94: $03
	ld   l, e                                        ; $5b95: $6b
	ld   [hl], l                                     ; $5b96: $75
	ld   a, l                                        ; $5b97: $7d
	dec  c                                           ; $5b98: $0d
	ld   d, b                                        ; $5b99: $50
	sbc  b                                           ; $5b9a: $98
	adc  h                                           ; $5b9b: $8c
	ld   l, c                                        ; $5b9c: $69
	and  c                                           ; $5b9d: $a1
	ld   [hl], l                                     ; $5b9e: $75
	ld   h, l                                        ; $5b9f: $65
	ld   l, l                                        ; $5ba0: $6d
	sbc  l                                           ; $5ba1: $9d
	ld   a, e                                        ; $5ba2: $7b
	sbc  a                                           ; $5ba3: $9f
	dec  c                                           ; $5ba4: $0d
	nop                                              ; $5ba5: $00
	ld   a, [bc]                                     ; $5ba6: $0a
	dec  c                                           ; $5ba7: $0d
	nop                                              ; $5ba8: $00
	nop                                              ; $5ba9: $00
	rrca                                             ; $5baa: $0f
	nop                                              ; $5bab: $00
	ld   bc, $1e09                                   ; $5bac: $01 $09 $1e
	nop                                              ; $5baf: $00
	inc  e                                           ; $5bb0: $1c
	ld   [bc], a                                     ; $5bb1: $02
	jr   nc, jr_057_5bcd                             ; $5bb2: $30 $19

	ld   bc, $998c                                   ; $5bb4: $01 $8c $99
	ld   [hl], l                                     ; $5bb7: $75
	ld   [bc], a                                     ; $5bb8: $02
	ld   a, [de]                                     ; $5bb9: $1a
	inc  bc                                          ; $5bba: $03
	ld   l, e                                        ; $5bbb: $6b
	ld   a, c                                        ; $5bbc: $79
	ld   a, b                                        ; $5bbd: $78
	sbc  b                                           ; $5bbe: $98
	adc  h                                           ; $5bbf: $8c
	ld   l, c                                        ; $5bc0: $69
	and  c                                           ; $5bc1: $a1
	sbc  l                                           ; $5bc2: $9d
	ld   a, e                                        ; $5bc3: $7b
	sbc  a                                           ; $5bc4: $9f
	dec  c                                           ; $5bc5: $0d
	ld   e, b                                        ; $5bc6: $58
	ei                                               ; $5bc7: $fb
	adc  c                                           ; $5bc8: $89
	adc  c                                           ; $5bc9: $89
	adc  c                                           ; $5bca: $89
	adc  c                                           ; $5bcb: $89
	adc  c                                           ; $5bcc: $89

jr_057_5bcd:
	sbc  a                                           ; $5bcd: $9f
	dec  c                                           ; $5bce: $0d
	nop                                              ; $5bcf: $00
	ld   a, [bc]                                     ; $5bd0: $0a
	dec  c                                           ; $5bd1: $0d
	nop                                              ; $5bd2: $00
	nop                                              ; $5bd3: $00
	rrca                                             ; $5bd4: $0f
	nop                                              ; $5bd5: $00
	ld   bc, $1e09                                   ; $5bd6: $01 $09 $1e
	nop                                              ; $5bd9: $00
	rrca                                             ; $5bda: $0f
	nop                                              ; $5bdb: $00
	ld   bc, $0301                                   ; $5bdc: $01 $01 $03
	and  a                                           ; $5bdf: $a7
	adc  l                                           ; $5be0: $8d
	ld   a, h                                        ; $5be1: $7c
	inc  b                                           ; $5be2: $04
	xor  d                                           ; $5be3: $aa
	halt                                             ; $5be4: $76
	ld   e, c                                        ; $5be5: $59
	dec  c                                           ; $5be6: $0d
	inc  b                                           ; $5be7: $04
	ld   c, c                                        ; $5be8: $49
	and  b                                           ; $5be9: $a0
	ld   h, l                                        ; $5bea: $65
	ld   [hl], h                                     ; $5beb: $74
	sbc  c                                           ; $5bec: $99
	and  c                                           ; $5bed: $a1
	ld   [hl], l                                     ; $5bee: $75
	ld   h, a                                        ; $5bef: $67
	ld   e, c                                        ; $5bf0: $59
	ld   sp, hl                                      ; $5bf1: $f9
	dec  c                                           ; $5bf2: $0d
	nop                                              ; $5bf3: $00
	ld   a, [bc]                                     ; $5bf4: $0a
	rrca                                             ; $5bf5: $0f
	ld   [bc], a                                     ; $5bf6: $02
	nop                                              ; $5bf7: $00
	ld   bc, $546b                                   ; $5bf8: $01 $6b $54
	ld   [hl], l                                     ; $5bfb: $75
	ld   h, a                                        ; $5bfc: $67
	sbc  l                                           ; $5bfd: $9d
	ld   a, e                                        ; $5bfe: $7b
	rst  $38                                         ; $5bff: $ff
	rst  $38                                         ; $5c00: $ff
	dec  c                                           ; $5c01: $0d
	ld   e, b                                        ; $5c02: $58
	inc  bc                                          ; $5c03: $03
	jp   Jump_057_6d65                               ; $5c04: $c3 $65 $6d


	sbc  b                                           ; $5c07: $98
	sbc  [hl]                                        ; $5c08: $9e
	ld   e, b                                        ; $5c09: $58
	ld   [bc], a                                     ; $5c0a: $02
	sbc  b                                           ; $5c0b: $98
	and  b                                           ; $5c0c: $a0
	ld   [bc], a                                     ; $5c0d: $02
	or   a                                           ; $5c0e: $b7
	ld   e, a                                        ; $5c0f: $5f
	ld   l, l                                        ; $5c10: $6d
	sbc  b                                           ; $5c11: $98
	dec  c                                           ; $5c12: $0d
	ld   h, l                                        ; $5c13: $65
	ld   [hl], h                                     ; $5c14: $74
	ld   d, d                                        ; $5c15: $52
	adc  h                                           ; $5c16: $8c
	ld   h, a                                        ; $5c17: $67
	sbc  l                                           ; $5c18: $9d
	sbc  a                                           ; $5c19: $9f
	dec  c                                           ; $5c1a: $0d
	nop                                              ; $5c1b: $00
	ld   a, [bc]                                     ; $5c1c: $0a
	add  hl, de                                      ; $5c1d: $19
	dec  b                                           ; $5c1e: $05
	ld   [bc], a                                     ; $5c1f: $02
	sub  h                                           ; $5c20: $94
	ld   d, h                                        ; $5c21: $54
	ld   e, d                                        ; $5c22: $5a
	ld   [hl], l                                     ; $5c23: $75
	ld   h, a                                        ; $5c24: $67
	ld   a, e                                        ; $5c25: $7b
	nop                                              ; $5c26: $00
	nop                                              ; $5c27: $00
	ld   e, b                                        ; $5c28: $58
	ld   a, [hl]                                     ; $5c29: $7e
	ld   d, b                                        ; $5c2a: $50
	ld   h, e                                        ; $5c2b: $63
	and  c                                           ; $5c2c: $a1
	adc  l                                           ; $5c2d: $8d
	ld   l, l                                        ; $5c2e: $6d
	ld   d, d                                        ; $5c2f: $52
	ld   [hl], l                                     ; $5c30: $75
	ld   h, a                                        ; $5c31: $67
	ld   a, e                                        ; $5c32: $7b
	nop                                              ; $5c33: $00
	ld   bc, $1307                                   ; $5c34: $01 $07 $13
	inc  bc                                          ; $5c37: $03
	ld   [bc], a                                     ; $5c38: $02
	inc  bc                                          ; $5c39: $03
	ld   bc, $2000                                   ; $5c3a: $01 $00 $20
	nop                                              ; $5c3d: $00
	rlca                                             ; $5c3e: $07
	ld   d, e                                        ; $5c3f: $53
	inc  bc                                          ; $5c40: $03
	ld   [bc], a                                     ; $5c41: $02
	inc  bc                                          ; $5c42: $03
	ld   bc, $2001                                   ; $5c43: $01 $01 $20
	nop                                              ; $5c46: $00
	ld   b, $a5                                      ; $5c47: $06 $a5
	inc  bc                                          ; $5c49: $03
	rrca                                             ; $5c4a: $0f
	nop                                              ; $5c4b: $00
	ld   bc, $9401                                   ; $5c4c: $01 $01 $94
	ld   d, h                                        ; $5c4f: $54
	ld   e, d                                        ; $5c50: $5a
	ld   a, b                                        ; $5c51: $78
	ld   h, d                                        ; $5c52: $62
	ld   h, l                                        ; $5c53: $65
	sub  e                                           ; $5c54: $93
	adc  l                                           ; $5c55: $8d
	ld   [hl], l                                     ; $5c56: $75
	ld   h, a                                        ; $5c57: $67
	ld   a, e                                        ; $5c58: $7b
	sbc  a                                           ; $5c59: $9f
	dec  c                                           ; $5c5a: $0d
	nop                                              ; $5c5b: $00
	ld   a, [bc]                                     ; $5c5c: $0a
	inc  e                                           ; $5c5d: $1c
	ld   [bc], a                                     ; $5c5e: $02
	ld   bc, $1d01                                   ; $5c5f: $01 $01 $1d
	ld   b, b                                        ; $5c62: $40
	ld   [de], a                                     ; $5c63: $12
	inc  bc                                          ; $5c64: $03
	ld   [de], a                                     ; $5c65: $12
	ld   bc, $2802                                   ; $5c66: $01 $02 $28
	nop                                              ; $5c69: $00
	ld   bc, $c4c9                                   ; $5c6a: $01 $c9 $c4
	ret  c                                           ; $5c6d: $d8

	xor  $c8                                         ; $5c6e: $ee $c8
	and  h                                           ; $5c70: $a4
	ei                                               ; $5c71: $fb
	halt                                             ; $5c72: $76
	ld   h, l                                        ; $5c73: $65
	ld   [hl], h                                     ; $5c74: $74
	ld   a, h                                        ; $5c75: $7c
	dec  c                                           ; $5c76: $0d
	inc  b                                           ; $5c77: $04
	jr   jr_057_5c7d                                 ; $5c78: $18 $03

	sbc  c                                           ; $5c7a: $99
	ld   a, h                                        ; $5c7b: $7c
	ld   l, l                                        ; $5c7c: $6d

jr_057_5c7d:
	ld   h, l                                        ; $5c7d: $65
	ld   a, b                                        ; $5c7e: $78
	adc  l                                           ; $5c7f: $8d
	ld   [hl], l                                     ; $5c80: $75
	ld   h, a                                        ; $5c81: $67
	sbc  l                                           ; $5c82: $9d
	sbc  a                                           ; $5c83: $9f
	dec  c                                           ; $5c84: $0d
	nop                                              ; $5c85: $00
	ld   a, [bc]                                     ; $5c86: $0a
	ld   b, $a8                                      ; $5c87: $06 $a8
	inc  bc                                          ; $5c89: $03
	rrca                                             ; $5c8a: $0f
	nop                                              ; $5c8b: $00
	ld   bc, $5801                                   ; $5c8c: $01 $01 $58
	ld   a, [hl]                                     ; $5c8f: $7e
	ld   d, b                                        ; $5c90: $50
	ld   h, e                                        ; $5c91: $63
	and  c                                           ; $5c92: $a1
	adc  l                                           ; $5c93: $8d
	ld   l, l                                        ; $5c94: $6d
	ld   d, d                                        ; $5c95: $52
	ld   a, b                                        ; $5c96: $78
	dec  c                                           ; $5c97: $0d
	ld   h, l                                        ; $5c98: $65
	sub  e                                           ; $5c99: $93
	adc  l                                           ; $5c9a: $8d
	ld   [hl], l                                     ; $5c9b: $75
	ld   h, a                                        ; $5c9c: $67
	ld   a, e                                        ; $5c9d: $7b
	sbc  a                                           ; $5c9e: $9f
	dec  c                                           ; $5c9f: $0d
	nop                                              ; $5ca0: $00
	ld   a, [bc]                                     ; $5ca1: $0a
	inc  e                                           ; $5ca2: $1c
	ld   [bc], a                                     ; $5ca3: $02
	ld   [bc], a                                     ; $5ca4: $02
	ld   [bc], a                                     ; $5ca5: $02
	dec  e                                           ; $5ca6: $1d
	ld   b, b                                        ; $5ca7: $40
	ld   [de], a                                     ; $5ca8: $12
	inc  bc                                          ; $5ca9: $03
	ld   [de], a                                     ; $5caa: $12
	ld   bc, $2902                                   ; $5cab: $01 $02 $29
	nop                                              ; $5cae: $00
	ld   bc, $8303                                   ; $5caf: $01 $03 $83
	dec  b                                           ; $5cb2: $05
	dec  c                                           ; $5cb3: $0d
	ld   a, b                                        ; $5cb4: $78
	ld   a, [$610d]                                  ; $5cb5: $fa $0d $61
	sbc  d                                           ; $5cb8: $9a
	ld   a, l                                        ; $5cb9: $7d
	sbc  [hl]                                        ; $5cba: $9e
	ret                                              ; $5cbb: $c9


	call nz, $eed8                                   ; $5cbc: $c4 $d8 $ee
	ret  z                                           ; $5cbf: $c8

	and  h                                           ; $5cc0: $a4
	ei                                               ; $5cc1: $fb
	halt                                             ; $5cc2: $76
	ld   h, l                                        ; $5cc3: $65
	ld   [hl], h                                     ; $5cc4: $74
	dec  c                                           ; $5cc5: $0d
	inc  b                                           ; $5cc6: $04
	jr   jr_057_5ccc                                 ; $5cc7: $18 $03

	sbc  c                                           ; $5cc9: $99
	ld   a, h                                        ; $5cca: $7c
	ld   l, l                                        ; $5ccb: $6d

jr_057_5ccc:
	ld   h, l                                        ; $5ccc: $65
	ld   a, b                                        ; $5ccd: $78
	adc  l                                           ; $5cce: $8d
	ld   a, b                                        ; $5ccf: $78
	ld   a, h                                        ; $5cd0: $7c
	ld   [hl], l                                     ; $5cd1: $75
	ld   h, a                                        ; $5cd2: $67
	sbc  l                                           ; $5cd3: $9d
	sub  [hl]                                        ; $5cd4: $96
	sbc  a                                           ; $5cd5: $9f
	dec  c                                           ; $5cd6: $0d
	nop                                              ; $5cd7: $00
	ld   a, [bc]                                     ; $5cd8: $0a
	ld   b, $a8                                      ; $5cd9: $06 $a8
	inc  bc                                          ; $5cdb: $03
	rrca                                             ; $5cdc: $0f
	ld   [bc], a                                     ; $5cdd: $02
	nop                                              ; $5cde: $00
	ld   bc, $f304                                   ; $5cdf: $01 $04 $f3
	ld   a, l                                        ; $5ce2: $7d
	ld   l, e                                        ; $5ce3: $6b
	sbc  d                                           ; $5ce4: $9a
	ld   l, [hl]                                     ; $5ce5: $6e
	ld   e, a                                        ; $5ce6: $5f
	ld   [hl], l                                     ; $5ce7: $75
	ld   h, a                                        ; $5ce8: $67
	ld   e, c                                        ; $5ce9: $59
	ld   sp, hl                                      ; $5cea: $f9
	dec  c                                           ; $5ceb: $0d
	ld   [hl], l                                     ; $5cec: $75
	ld   a, l                                        ; $5ced: $7d
	sbc  [hl]                                        ; $5cee: $9e
	sbc  l                                           ; $5cef: $9d
	ld   l, l                                        ; $5cf0: $6d
	ld   e, l                                        ; $5cf1: $5d
	ld   h, l                                        ; $5cf2: $65
	ld   [bc], a                                     ; $5cf3: $02
	ld   h, l                                        ; $5cf4: $65
	ld   d, [hl]                                     ; $5cf5: $56
	ld   [bc], a                                     ; $5cf6: $02
	jp   $0da0                                       ; $5cf7: $c3 $a0 $0d


	ld   h, l                                        ; $5cfa: $65
	ld   [hl], h                                     ; $5cfb: $74
	ld   e, b                                        ; $5cfc: $58
	sbc  b                                           ; $5cfd: $98
	adc  h                                           ; $5cfe: $8c
	ld   h, a                                        ; $5cff: $67
	ld   a, h                                        ; $5d00: $7c
	ld   [hl], l                                     ; $5d01: $75
	rst  $38                                         ; $5d02: $ff
	rst  $38                                         ; $5d03: $ff
	dec  c                                           ; $5d04: $0d
	nop                                              ; $5d05: $00
	ld   a, [bc]                                     ; $5d06: $0a
	rrca                                             ; $5d07: $0f
	nop                                              ; $5d08: $00
	ld   bc, $7501                                   ; $5d09: $01 $01 $75
	ld   a, l                                        ; $5d0c: $7d
	sbc  [hl]                                        ; $5d0d: $9e
	inc  bc                                          ; $5d0e: $03
	add  e                                           ; $5d0f: $83
	dec  b                                           ; $5d10: $05
	dec  c                                           ; $5d11: $0d
	ld   h, l                                        ; $5d12: $65
	adc  h                                           ; $5d13: $8c
	ld   h, a                                        ; $5d14: $67
	sbc  a                                           ; $5d15: $9f
	dec  c                                           ; $5d16: $0d
	nop                                              ; $5d17: $00
	ld   a, [bc]                                     ; $5d18: $0a
	nop                                              ; $5d19: $00
	rrca                                             ; $5d1a: $0f
	nop                                              ; $5d1b: $00
	ld   bc, $6701                                   ; $5d1c: $01 $01 $67
	adc  l                                           ; $5d1f: $8d
	sbc  d                                           ; $5d20: $9a
	ld   h, e                                        ; $5d21: $63
	and  c                                           ; $5d22: $a1
	ld   a, h                                        ; $5d23: $7c
	ld   h, c                                        ; $5d24: $61
	halt                                             ; $5d25: $76
	and  b                                           ; $5d26: $a0
	dec  c                                           ; $5d27: $0d
	ld   [bc], a                                     ; $5d28: $02
	ret  nc                                          ; $5d29: $d0

	ld   d, [hl]                                     ; $5d2a: $56
	ld   [hl], h                                     ; $5d2b: $74
	ld   [bc], a                                     ; $5d2c: $02
	inc  [hl]                                        ; $5d2d: $34
	ld   h, e                                        ; $5d2e: $63
	ld   d, d                                        ; $5d2f: $52
	sbc  a                                           ; $5d30: $9f
	dec  c                                           ; $5d31: $0d
	nop                                              ; $5d32: $00
	ld   a, [bc]                                     ; $5d33: $0a
	rrca                                             ; $5d34: $0f
	ld   [bc], a                                     ; $5d35: $02
	ld   bc, $6b01                                   ; $5d36: $01 $01 $6b
	ld   d, h                                        ; $5d39: $54
	ld   [hl], l                                     ; $5d3a: $75
	ld   h, a                                        ; $5d3b: $67
	ld   a, e                                        ; $5d3c: $7b
	rst  $38                                         ; $5d3d: $ff
	rst  $38                                         ; $5d3e: $ff
	sbc  l                                           ; $5d3f: $9d
	ld   l, l                                        ; $5d40: $6d
	ld   e, l                                        ; $5d41: $5d
	ld   h, l                                        ; $5d42: $65
	dec  c                                           ; $5d43: $0d
	ld   bc, $0407                                   ; $5d44: $01 $07 $04
	db   $eb                                         ; $5d47: $eb
	inc  b                                           ; $5d48: $04
	ld   [hl], a                                     ; $5d49: $77
	pop  bc                                          ; $5d4a: $c1
	push af                                          ; $5d4b: $f5
	cp   d                                           ; $5d4c: $ba
	inc  b                                           ; $5d4d: $04
	call c, $8a02                                    ; $5d4e: $dc $02 $8a
	ld   [bc], a                                     ; $5d51: $02

Jump_057_5d52:
	sbc  $04                                         ; $5d52: $de $04
	ld   [de], a                                     ; $5d54: $12
	ld   bc, $0d08                                   ; $5d55: $01 $08 $0d
	ld   a, b                                        ; $5d58: $78
	and  c                                           ; $5d59: $a1
	ld   [hl], l                                     ; $5d5a: $75
	ld   h, a                                        ; $5d5b: $67
	ld   a, h                                        ; $5d5c: $7c
	sub  [hl]                                        ; $5d5d: $96
	sbc  a                                           ; $5d5e: $9f
	dec  c                                           ; $5d5f: $0d
	nop                                              ; $5d60: $00
	ld   a, [bc]                                     ; $5d61: $0a
	add  hl, de                                      ; $5d62: $19
	dec  b                                           ; $5d63: $05
	inc  bc                                          ; $5d64: $03
	ld   a, b                                        ; $5d65: $78
	and  c                                           ; $5d66: $a1
	ld   [hl], l                                     ; $5d67: $75
	ld   h, a                                        ; $5d68: $67
	ld   e, c                                        ; $5d69: $59
	sbc  [hl]                                        ; $5d6a: $9e
	ld   l, e                                        ; $5d6b: $6b
	sbc  d                                           ; $5d6c: $9a
	ld   sp, hl                                      ; $5d6d: $f9
	nop                                              ; $5d6e: $00
	nop                                              ; $5d6f: $00
	inc  b                                           ; $5d70: $04
	db   $eb                                         ; $5d71: $eb
	inc  b                                           ; $5d72: $04
	and  l                                           ; $5d73: $a5
	pop  bc                                          ; $5d74: $c1
	push af                                          ; $5d75: $f5
	cp   d                                           ; $5d76: $ba
	ld   sp, hl                                      ; $5d77: $f9
	nop                                              ; $5d78: $00
	ld   bc, $6d04                                   ; $5d79: $01 $04 $6d
	sub  b                                           ; $5d7c: $90
	ld   [hl], l                                     ; $5d7d: $75
	ld   h, a                                        ; $5d7e: $67
	nop                                              ; $5d7f: $00
	ld   [bc], a                                     ; $5d80: $02
	rlca                                             ; $5d81: $07
	ld   l, b                                        ; $5d82: $68
	inc  b                                           ; $5d83: $04
	ld   [bc], a                                     ; $5d84: $02
	inc  bc                                          ; $5d85: $03
	ld   bc, $2000                                   ; $5d86: $01 $00 $20
	nop                                              ; $5d89: $00
	rlca                                             ; $5d8a: $07
	add  sp, $04                                     ; $5d8b: $e8 $04
	ld   [bc], a                                     ; $5d8d: $02
	inc  bc                                          ; $5d8e: $03
	ld   bc, $2001                                   ; $5d8f: $01 $01 $20
	nop                                              ; $5d92: $00
	rlca                                             ; $5d93: $07
	ld   a, [hl]                                     ; $5d94: $7e
	dec  b                                           ; $5d95: $05
	ld   [bc], a                                     ; $5d96: $02
	inc  bc                                          ; $5d97: $03
	ld   bc, $2002                                   ; $5d98: $01 $02 $20
	nop                                              ; $5d9b: $00
	ld   b, $44                                      ; $5d9c: $06 $44
	ld   b, $0f                                      ; $5d9e: $06 $0f
	nop                                              ; $5da0: $00
	ld   bc, $0401                                   ; $5da1: $01 $01 $04
	ld   c, c                                        ; $5da4: $49
	ld   [hl], l                                     ; $5da5: $75
	ld   h, a                                        ; $5da6: $67
	ld   e, c                                        ; $5da7: $59
	sbc  [hl]                                        ; $5da8: $9e
	ld   l, e                                        ; $5da9: $6b
	ld   a, h                                        ; $5daa: $7c
	dec  c                                           ; $5dab: $0d
	ld   bc, $0407                                   ; $5dac: $01 $07 $04
	db   $eb                                         ; $5daf: $eb
	inc  b                                           ; $5db0: $04
	ld   [hl], a                                     ; $5db1: $77
	pop  bc                                          ; $5db2: $c1
	push af                                          ; $5db3: $f5
	cp   d                                           ; $5db4: $ba
	inc  b                                           ; $5db5: $04
	call c, $8a02                                    ; $5db6: $dc $02 $8a
	ld   [bc], a                                     ; $5db9: $02
	sbc  $04                                         ; $5dba: $de $04
	ld   [de], a                                     ; $5dbc: $12
	ld   bc, $7108                                   ; $5dbd: $01 $08 $71
	ld   [hl], h                                     ; $5dc0: $74
	sbc  a                                           ; $5dc1: $9f
	dec  c                                           ; $5dc2: $0d
	nop                                              ; $5dc3: $00
	ld   a, [bc]                                     ; $5dc4: $0a
	rrca                                             ; $5dc5: $0f
	ld   [bc], a                                     ; $5dc6: $02
	nop                                              ; $5dc7: $00
	ld   bc, $edf1                                   ; $5dc8: $01 $f1 $ed
	push bc                                          ; $5dcb: $c5
	sub  d                                           ; $5dcc: $92
	ret  nz                                          ; $5dcd: $c0

	push af                                          ; $5dce: $f5
	or   l                                           ; $5dcf: $b5
	sbc  a                                           ; $5dd0: $9f
	dec  c                                           ; $5dd1: $0d
	sub  $a2                                         ; $5dd2: $d6 $a2
	and  l                                           ; $5dd4: $a5
	and  $fb                                         ; $5dd5: $e6 $fb
	pop  bc                                          ; $5dd7: $c1
	push af                                          ; $5dd8: $f5
	cp   d                                           ; $5dd9: $ba
	sub  d                                           ; $5dda: $92
	dec  c                                           ; $5ddb: $0d
	or   h                                           ; $5ddc: $b4
	or   [hl]                                        ; $5ddd: $b6
	call nz, $c1b0                                   ; $5dde: $c4 $b0 $c1
	push af                                          ; $5de1: $f5
	cp   d                                           ; $5de2: $ba
	sbc  a                                           ; $5de3: $9f
	dec  c                                           ; $5de4: $0d
	nop                                              ; $5de5: $00
	ld   a, [bc]                                     ; $5de6: $0a
	ld   bc, $1903                                   ; $5de7: $01 $03 $19
	ld   [bc], a                                     ; $5dea: $02
	ld   b, d                                        ; $5deb: $42
	ld   a, c                                        ; $5dec: $79
	inc  bc                                          ; $5ded: $03
	sub  [hl]                                        ; $5dee: $96
	sub  a                                           ; $5def: $97
	ld   a, [hl]                                     ; $5df0: $7e
	sbc  c                                           ; $5df1: $99
	ld   d, b                                        ; $5df2: $50
	sbc  b                                           ; $5df3: $98
	halt                                             ; $5df4: $76
	ld   d, b                                        ; $5df5: $50
	sub  a                                           ; $5df6: $97
	sub  h                                           ; $5df7: $94
	sbc  c                                           ; $5df8: $99
	dec  c                                           ; $5df9: $0d
	pop  bc                                          ; $5dfa: $c1
	push af                                          ; $5dfb: $f5
	cp   d                                           ; $5dfc: $ba
	and  b                                           ; $5dfd: $a0
	ld   e, e                                        ; $5dfe: $5b
	sbc  l                                           ; $5dff: $9d
	adc  a                                           ; $5e00: $8f
	ld   l, l                                        ; $5e01: $6d
	inc  bc                                          ; $5e02: $03
	or   b                                           ; $5e03: $b0

Jump_057_5e04:
	ld   l, [hl]                                     ; $5e04: $6e
	ld   e, a                                        ; $5e05: $5f
	ld   e, d                                        ; $5e06: $5a
	dec  c                                           ; $5e07: $0d
	inc  bc                                          ; $5e08: $03
	ld   l, e                                        ; $5e09: $6b
	ld   a, c                                        ; $5e0a: $79
	inc  b                                           ; $5e0b: $04
	ld   b, l                                        ; $5e0c: $45
	sbc  d                                           ; $5e0d: $9a
	sub  a                                           ; $5e0e: $97
	sbc  d                                           ; $5e0f: $9a
	sbc  c                                           ; $5e10: $99
	inc  b                                           ; $5e11: $04
	call c, $8a02                                    ; $5e12: $dc $02 $8a
	ld   [hl], l                                     ; $5e15: $75
	ld   h, a                                        ; $5e16: $67
	sbc  l                                           ; $5e17: $9d
	sbc  a                                           ; $5e18: $9f
	dec  c                                           ; $5e19: $0d
	nop                                              ; $5e1a: $00
	ld   a, [bc]                                     ; $5e1b: $0a
	ld   b, $48                                      ; $5e1c: $06 $48
	ld   b, $0f                                      ; $5e1e: $06 $0f
	nop                                              ; $5e20: $00
	ld   bc, $0401                                   ; $5e21: $01 $01 $04
	db   $eb                                         ; $5e24: $eb
	inc  b                                           ; $5e25: $04
	and  l                                           ; $5e26: $a5
	pop  bc                                          ; $5e27: $c1
	push af                                          ; $5e28: $f5
	cp   d                                           ; $5e29: $ba
	inc  b                                           ; $5e2a: $04
	call c, $8a02                                    ; $5e2b: $dc $02 $8a
	ld   [bc], a                                     ; $5e2e: $02
	sbc  $04                                         ; $5e2f: $de $04
	ld   [de], a                                     ; $5e31: $12
	ld   sp, hl                                      ; $5e32: $f9
	dec  c                                           ; $5e33: $0d
	nop                                              ; $5e34: $00
	ld   a, [bc]                                     ; $5e35: $0a
	inc  e                                           ; $5e36: $1c
	ld   [bc], a                                     ; $5e37: $02
	inc  bc                                          ; $5e38: $03
	inc  bc                                          ; $5e39: $03
	ld   bc, $5a6f                                   ; $5e3a: $01 $6f $5a
	ld   d, d                                        ; $5e3d: $52
	adc  h                                           ; $5e3e: $8c
	ld   h, a                                        ; $5e3f: $67
	sbc  l                                           ; $5e40: $9d
	sbc  a                                           ; $5e41: $9f
	dec  c                                           ; $5e42: $0d
	inc  b                                           ; $5e43: $04
	db   $eb                                         ; $5e44: $eb
	inc  b                                           ; $5e45: $04
	ld   [hl], a                                     ; $5e46: $77
	pop  bc                                          ; $5e47: $c1
	push af                                          ; $5e48: $f5
	cp   d                                           ; $5e49: $ba
	inc  b                                           ; $5e4a: $04
	call c, $8a02                                    ; $5e4b: $dc $02 $8a
	ld   [bc], a                                     ; $5e4e: $02
	sbc  $04                                         ; $5e4f: $de $04
	ld   [de], a                                     ; $5e51: $12
	dec  c                                           ; $5e52: $0d
	ld   [hl], l                                     ; $5e53: $75
	ld   h, a                                        ; $5e54: $67
	sbc  l                                           ; $5e55: $9d
	sbc  a                                           ; $5e56: $9f
	dec  c                                           ; $5e57: $0d
	nop                                              ; $5e58: $00
	ld   a, [bc]                                     ; $5e59: $0a
	inc  e                                           ; $5e5a: $1c
	ld   [bc], a                                     ; $5e5b: $02
	nop                                              ; $5e5c: $00
	nop                                              ; $5e5d: $00
	ld   bc, $edf1                                   ; $5e5e: $01 $f1 $ed
	push bc                                          ; $5e61: $c5
	sub  d                                           ; $5e62: $92
	ret  nz                                          ; $5e63: $c0

	push af                                          ; $5e64: $f5
	or   l                                           ; $5e65: $b5
	sbc  a                                           ; $5e66: $9f
	dec  c                                           ; $5e67: $0d
	sub  $a2                                         ; $5e68: $d6 $a2
	and  l                                           ; $5e6a: $a5
	and  $fb                                         ; $5e6b: $e6 $fb
	pop  bc                                          ; $5e6d: $c1
	push af                                          ; $5e6e: $f5
	cp   d                                           ; $5e6f: $ba
	sub  d                                           ; $5e70: $92
	dec  c                                           ; $5e71: $0d
	or   h                                           ; $5e72: $b4
	or   [hl]                                        ; $5e73: $b6
	call nz, $c1b0                                   ; $5e74: $c4 $b0 $c1
	push af                                          ; $5e77: $f5
	cp   d                                           ; $5e78: $ba
	sbc  a                                           ; $5e79: $9f
	dec  c                                           ; $5e7a: $0d
	nop                                              ; $5e7b: $00
	ld   a, [bc]                                     ; $5e7c: $0a
	ld   bc, $1903                                   ; $5e7d: $01 $03 $19
	ld   [bc], a                                     ; $5e80: $02
	ld   b, d                                        ; $5e81: $42
	ld   a, c                                        ; $5e82: $79
	inc  bc                                          ; $5e83: $03
	sub  [hl]                                        ; $5e84: $96
	sub  a                                           ; $5e85: $97
	ld   a, [hl]                                     ; $5e86: $7e
	sbc  c                                           ; $5e87: $99
	ld   d, b                                        ; $5e88: $50
	sbc  b                                           ; $5e89: $98
	halt                                             ; $5e8a: $76
	ld   d, b                                        ; $5e8b: $50
	sub  a                                           ; $5e8c: $97
	sub  h                                           ; $5e8d: $94
	sbc  c                                           ; $5e8e: $99
	dec  c                                           ; $5e8f: $0d
	pop  bc                                          ; $5e90: $c1
	push af                                          ; $5e91: $f5
	cp   d                                           ; $5e92: $ba
	and  b                                           ; $5e93: $a0
	ld   e, e                                        ; $5e94: $5b
	sbc  l                                           ; $5e95: $9d
	adc  a                                           ; $5e96: $8f
	ld   l, l                                        ; $5e97: $6d
	inc  bc                                          ; $5e98: $03
	or   b                                           ; $5e99: $b0
	ld   l, [hl]                                     ; $5e9a: $6e
	ld   e, a                                        ; $5e9b: $5f
	ld   e, d                                        ; $5e9c: $5a
	dec  c                                           ; $5e9d: $0d
	inc  bc                                          ; $5e9e: $03
	ld   l, e                                        ; $5e9f: $6b
	ld   a, c                                        ; $5ea0: $79
	inc  b                                           ; $5ea1: $04
	ld   b, l                                        ; $5ea2: $45
	sbc  d                                           ; $5ea3: $9a
	sub  a                                           ; $5ea4: $97
	sbc  d                                           ; $5ea5: $9a
	sbc  c                                           ; $5ea6: $99
	inc  b                                           ; $5ea7: $04
	call c, $8a02                                    ; $5ea8: $dc $02 $8a
	ld   [hl], l                                     ; $5eab: $75
	ld   h, a                                        ; $5eac: $67
	sbc  l                                           ; $5ead: $9d
	sbc  a                                           ; $5eae: $9f
	dec  c                                           ; $5eaf: $0d
	nop                                              ; $5eb0: $00
	ld   a, [bc]                                     ; $5eb1: $0a
	ld   b, $48                                      ; $5eb2: $06 $48
	ld   b, $0f                                      ; $5eb4: $06 $0f
	nop                                              ; $5eb6: $00
	ld   bc, $0401                                   ; $5eb7: $01 $01 $04
	ld   l, l                                        ; $5eba: $6d
	sub  b                                           ; $5ebb: $90
	inc  bc                                          ; $5ebc: $03
	and  b                                           ; $5ebd: $a0
	ld   [hl], c                                     ; $5ebe: $71
	ld   [hl], h                                     ; $5ebf: $74
	adc  h                                           ; $5ec0: $8c
	ld   h, a                                        ; $5ec1: $67
	sbc  a                                           ; $5ec2: $9f
	dec  c                                           ; $5ec3: $0d
	ld   l, e                                        ; $5ec4: $6b
	ld   a, h                                        ; $5ec5: $7c
	inc  b                                           ; $5ec6: $04
	call c, $8a02                                    ; $5ec7: $dc $02 $8a
	sbc  a                                           ; $5eca: $9f
	dec  c                                           ; $5ecb: $0d
	nop                                              ; $5ecc: $00
	ld   a, [bc]                                     ; $5ecd: $0a
	inc  e                                           ; $5ece: $1c
	ld   [bc], a                                     ; $5ecf: $02
	ld   [bc], a                                     ; $5ed0: $02
	ld   [bc], a                                     ; $5ed1: $02
	dec  e                                           ; $5ed2: $1d
	ld   b, b                                        ; $5ed3: $40
	ld   [de], a                                     ; $5ed4: $12
	inc  bc                                          ; $5ed5: $03
	ld   [de], a                                     ; $5ed6: $12
	ld   bc, $2902                                   ; $5ed7: $01 $02 $29
	nop                                              ; $5eda: $00
	ld   bc, $6b54                                   ; $5edb: $01 $54 $6b
	ld   e, b                                        ; $5ede: $58
	ld   [hl], c                                     ; $5edf: $71
	ld   h, l                                        ; $5ee0: $65
	sub  c                                           ; $5ee1: $91
	ld   d, d                                        ; $5ee2: $52
	ld   a, [$040d]                                  ; $5ee3: $fa $0d $04
	db   $eb                                         ; $5ee6: $eb
	inc  b                                           ; $5ee7: $04
	ld   [hl], a                                     ; $5ee8: $77
	pop  bc                                          ; $5ee9: $c1
	push af                                          ; $5eea: $f5
	cp   d                                           ; $5eeb: $ba
	ld   [hl], c                                     ; $5eec: $71
	ld   [hl], h                                     ; $5eed: $74
	ld   d, d                                        ; $5eee: $52
	ld   d, h                                        ; $5eef: $54
	ld   a, h                                        ; $5ef0: $7c
	ld   a, l                                        ; $5ef1: $7d
	rst  $38                                         ; $5ef2: $ff
	rst  $38                                         ; $5ef3: $ff
	dec  c                                           ; $5ef4: $0d
	nop                                              ; $5ef5: $00
	ld   a, [bc]                                     ; $5ef6: $0a
	ld   bc, $edf1                                   ; $5ef7: $01 $f1 $ed
	push bc                                          ; $5efa: $c5
	sub  d                                           ; $5efb: $92
	ret  nz                                          ; $5efc: $c0

	push af                                          ; $5efd: $f5
	or   l                                           ; $5efe: $b5
	sbc  a                                           ; $5eff: $9f
	dec  c                                           ; $5f00: $0d
	sub  $a2                                         ; $5f01: $d6 $a2
	and  l                                           ; $5f03: $a5
	and  $fb                                         ; $5f04: $e6 $fb
	pop  bc                                          ; $5f06: $c1
	push af                                          ; $5f07: $f5
	cp   d                                           ; $5f08: $ba
	sub  d                                           ; $5f09: $92
	dec  c                                           ; $5f0a: $0d
	or   h                                           ; $5f0b: $b4
	or   [hl]                                        ; $5f0c: $b6
	call nz, $c1b0                                   ; $5f0d: $c4 $b0 $c1
	push af                                          ; $5f10: $f5
	cp   d                                           ; $5f11: $ba
	sbc  a                                           ; $5f12: $9f
	dec  c                                           ; $5f13: $0d
	nop                                              ; $5f14: $00
	ld   a, [bc]                                     ; $5f15: $0a
	ld   bc, $1903                                   ; $5f16: $01 $03 $19
	ld   [bc], a                                     ; $5f19: $02
	ld   b, d                                        ; $5f1a: $42
	ld   a, c                                        ; $5f1b: $79
	inc  bc                                          ; $5f1c: $03
	sub  [hl]                                        ; $5f1d: $96
	sub  a                                           ; $5f1e: $97
	ld   a, [hl]                                     ; $5f1f: $7e
	sbc  c                                           ; $5f20: $99
	ld   d, b                                        ; $5f21: $50
	sbc  b                                           ; $5f22: $98
	halt                                             ; $5f23: $76
	ld   d, b                                        ; $5f24: $50
	sub  a                                           ; $5f25: $97
	sub  h                                           ; $5f26: $94
	sbc  c                                           ; $5f27: $99
	dec  c                                           ; $5f28: $0d
	pop  bc                                          ; $5f29: $c1
	push af                                          ; $5f2a: $f5
	cp   d                                           ; $5f2b: $ba
	and  b                                           ; $5f2c: $a0
	ld   e, e                                        ; $5f2d: $5b
	sbc  l                                           ; $5f2e: $9d
	adc  a                                           ; $5f2f: $8f
	ld   l, l                                        ; $5f30: $6d
	inc  bc                                          ; $5f31: $03
	or   b                                           ; $5f32: $b0
	ld   l, [hl]                                     ; $5f33: $6e
	ld   e, a                                        ; $5f34: $5f
	ld   e, d                                        ; $5f35: $5a
	dec  c                                           ; $5f36: $0d
	inc  bc                                          ; $5f37: $03
	ld   l, e                                        ; $5f38: $6b
	ld   a, c                                        ; $5f39: $79
	inc  b                                           ; $5f3a: $04
	ld   b, l                                        ; $5f3b: $45
	sbc  d                                           ; $5f3c: $9a
	sub  a                                           ; $5f3d: $97
	sbc  d                                           ; $5f3e: $9a
	sbc  c                                           ; $5f3f: $99
	inc  b                                           ; $5f40: $04
	call c, $8a02                                    ; $5f41: $dc $02 $8a
	ld   [hl], l                                     ; $5f44: $75
	ld   h, a                                        ; $5f45: $67
	sbc  l                                           ; $5f46: $9d
	sbc  a                                           ; $5f47: $9f
	dec  c                                           ; $5f48: $0d
	nop                                              ; $5f49: $00
	ld   a, [bc]                                     ; $5f4a: $0a
	ld   bc, $a16b                                   ; $5f4b: $01 $6b $a1
	ld   h, [hl]                                     ; $5f4e: $66
	sub  l                                           ; $5f4f: $95
	ld   l, e                                        ; $5f50: $6b
	ld   h, c                                        ; $5f51: $61
	sub  a                                           ; $5f52: $97
	ld   a, h                                        ; $5f53: $7c
	inc  bc                                          ; $5f54: $03
	call nz, $de04                                   ; $5f55: $c4 $04 $de
	ld   e, d                                        ; $5f58: $5a
	dec  c                                           ; $5f59: $0d
	inc  bc                                          ; $5f5a: $03
	and  b                                           ; $5f5b: $a0
	ld   [hl], h                                     ; $5f5c: $74
	sbc  c                                           ; $5f5d: $99
	sub  [hl]                                        ; $5f5e: $96
	ld   d, h                                        ; $5f5f: $54
	ld   a, b                                        ; $5f60: $78
	inc  b                                           ; $5f61: $04
	call c, $8a02                                    ; $5f62: $dc $02 $8a
	ld   h, [hl]                                     ; $5f65: $66
	sub  c                                           ; $5f66: $91
	dec  c                                           ; $5f67: $0d
	ld   h, d                                        ; $5f68: $62
	ld   h, h                                        ; $5f69: $64
	ld   d, d                                        ; $5f6a: $52
	adc  h                                           ; $5f6b: $8c
	ld   l, c                                        ; $5f6c: $69
	and  c                                           ; $5f6d: $a1
	ld   a, h                                        ; $5f6e: $7c
	sub  [hl]                                        ; $5f6f: $96
	sbc  a                                           ; $5f70: $9f
	dec  c                                           ; $5f71: $0d
	nop                                              ; $5f72: $00
	ld   a, [bc]                                     ; $5f73: $0a
	inc  e                                           ; $5f74: $1c
	ld   [bc], a                                     ; $5f75: $02
	rlca                                             ; $5f76: $07
	rlca                                             ; $5f77: $07
	ld   b, $48                                      ; $5f78: $06 $48
	ld   b, $1c                                      ; $5f7a: $06 $1c
	ld   [bc], a                                     ; $5f7c: $02
	nop                                              ; $5f7d: $00
	nop                                              ; $5f7e: $00
	ld   bc, $f304                                   ; $5f7f: $01 $04 $f3
	ld   a, l                                        ; $5f82: $7d
	ld   l, e                                        ; $5f83: $6b
	sbc  d                                           ; $5f84: $9a
	ld   l, [hl]                                     ; $5f85: $6e
	ld   e, a                                        ; $5f86: $5f
	ld   [hl], l                                     ; $5f87: $75
	ld   h, a                                        ; $5f88: $67
	ld   e, c                                        ; $5f89: $59
	ld   sp, hl                                      ; $5f8a: $f9
	dec  c                                           ; $5f8b: $0d
	ld   [hl], l                                     ; $5f8c: $75
	ld   a, l                                        ; $5f8d: $7d
	sbc  [hl]                                        ; $5f8e: $9e
	sbc  l                                           ; $5f8f: $9d
	ld   l, l                                        ; $5f90: $6d
	ld   e, l                                        ; $5f91: $5d
	ld   h, l                                        ; $5f92: $65
	ld   [bc], a                                     ; $5f93: $02
	ld   h, l                                        ; $5f94: $65
	ld   d, [hl]                                     ; $5f95: $56
	ld   [bc], a                                     ; $5f96: $02
	jp   $0da0                                       ; $5f97: $c3 $a0 $0d


	ld   h, l                                        ; $5f9a: $65
	ld   [hl], h                                     ; $5f9b: $74
	ld   e, b                                        ; $5f9c: $58
	sbc  b                                           ; $5f9d: $98
	adc  h                                           ; $5f9e: $8c
	ld   h, a                                        ; $5f9f: $67
	ld   a, h                                        ; $5fa0: $7c
	ld   [hl], l                                     ; $5fa1: $75
	rst  $38                                         ; $5fa2: $ff
	rst  $38                                         ; $5fa3: $ff
	dec  c                                           ; $5fa4: $0d
	nop                                              ; $5fa5: $00
	ld   a, [bc]                                     ; $5fa6: $0a
	nop                                              ; $5fa7: $00
	nop                                              ; $5fa8: $00
	ld   c, $41                                      ; $5fa9: $0e $41
	rrca                                             ; $5fab: $0f
	nop                                              ; $5fac: $00
	ld   bc, $1c02                                   ; $5fad: $01 $02 $1c
	add  hl, bc                                      ; $5fb0: $09
	nop                                              ; $5fb1: $00
	nop                                              ; $5fb2: $00
	ld   bc, $0008                                   ; $5fb3: $01 $08 $00
	ld   e, l                                        ; $5fb6: $5d
	and  c                                           ; $5fb7: $a1
	ld   h, [hl]                                     ; $5fb8: $66
	sub  c                                           ; $5fb9: $91
	ld   a, b                                        ; $5fba: $78
	ld   d, d                                        ; $5fbb: $52
	ld   e, c                                        ; $5fbc: $59
	sbc  a                                           ; $5fbd: $9f
	dec  c                                           ; $5fbe: $0d
	ld   a, b                                        ; $5fbf: $78
	ld   a, c                                        ; $5fc0: $79
	ld   e, c                                        ; $5fc1: $59
	inc  b                                           ; $5fc2: $04
	di                                               ; $5fc3: $f3
	ld   e, c                                        ; $5fc4: $59
	ld   d, d                                        ; $5fc5: $52
	ld   sp, hl                                      ; $5fc6: $f9
	dec  c                                           ; $5fc7: $0d
	nop                                              ; $5fc8: $00
	ld   a, [bc]                                     ; $5fc9: $0a
	add  hl, de                                      ; $5fca: $19
	dec  b                                           ; $5fcb: $05
	ld   [bc], a                                     ; $5fcc: $02
	inc  b                                           ; $5fcd: $04
	ld   a, [bc]                                     ; $5fce: $0a
	ld   [bc], a                                     ; $5fcf: $02
	nop                                              ; $5fd0: $00
	ld   e, c                                        ; $5fd1: $59
	sub  a                                           ; $5fd2: $97
	ld   a, h                                        ; $5fd3: $7c
	inc  b                                           ; $5fd4: $04
	ld   d, a                                        ; $5fd5: $57
	inc  b                                           ; $5fd6: $04
	ld   h, e                                        ; $5fd7: $63
	and  b                                           ; $5fd8: $a0
	ld   [bc], a                                     ; $5fd9: $02
	jp   nz, $005d                                   ; $5fda: $c2 $5d $00

	nop                                              ; $5fdd: $00
	inc  bc                                          ; $5fde: $03
	ld   l, l                                        ; $5fdf: $6d
	dec  b                                           ; $5fe0: $05
	add  hl, de                                      ; $5fe1: $19
	ld   a, h                                        ; $5fe2: $7c
	and  e                                           ; $5fe3: $a3
	jp   z, $a5d1                                    ; $5fe4: $ca $d1 $a5

	cp   d                                           ; $5fe7: $ba
	and  b                                           ; $5fe8: $a0
	ld   [bc], a                                     ; $5fe9: $02
	jp   nz, $005d                                   ; $5fea: $c2 $5d $00

	ld   bc, $8b07                                   ; $5fed: $01 $07 $8b
	ld   bc, $0302                                   ; $5ff0: $01 $02 $03
	ld   bc, $2000                                   ; $5ff3: $01 $00 $20
	nop                                              ; $5ff6: $00
	rlca                                             ; $5ff7: $07
	ld   c, c                                        ; $5ff8: $49
	ld   a, [bc]                                     ; $5ff9: $0a
	ld   [bc], a                                     ; $5ffa: $02
	inc  bc                                          ; $5ffb: $03
	ld   bc, $2001                                   ; $5ffc: $01 $01 $20
	nop                                              ; $5fff: $00
	ld   b, $5a                                      ; $6000: $06 $5a
	nop                                              ; $6002: $00
	rrca                                             ; $6003: $0f
	nop                                              ; $6004: $00
	ld   bc, $5201                                   ; $6005: $01 $01 $52
	ld   d, [hl]                                     ; $6008: $56
	rst  $38                                         ; $6009: $ff
	rst  $38                                         ; $600a: $ff
	sbc  a                                           ; $600b: $9f
	dec  c                                           ; $600c: $0d
	halt                                             ; $600d: $76
	ld   e, l                                        ; $600e: $5d
	ld   a, c                                        ; $600f: $79
	inc  b                                           ; $6010: $04
	di                                               ; $6011: $f3
	ld   [bc], a                                     ; $6012: $02
	jp   Jump_057_5276                               ; $6013: $c3 $76 $52


	ld   d, h                                        ; $6016: $54
	sbc  l                                           ; $6017: $9d
	ld   e, a                                        ; $6018: $5f
	ld   [hl], l                                     ; $6019: $75
	ld   a, l                                        ; $601a: $7d
	rst  $38                                         ; $601b: $ff
	sbc  a                                           ; $601c: $9f
	dec  c                                           ; $601d: $0d
	nop                                              ; $601e: $00
	ld   a, [bc]                                     ; $601f: $0a
	rlca                                             ; $6020: $07
	rst  JumpTable                                         ; $6021: $df
	nop                                              ; $6022: $00
	inc  bc                                          ; $6023: $03
	jr   nz, jr_057_6027                             ; $6024: $20 $01

	ld   h, h                                        ; $6026: $64

jr_057_6027:
	inc  hl                                          ; $6027: $23
	nop                                              ; $6028: $00
	rrca                                             ; $6029: $0f
	add  hl, bc                                      ; $602a: $09
	nop                                              ; $602b: $00
	ld   bc, $546b                                   ; $602c: $01 $6b $54
	ld   e, c                                        ; $602f: $59
	rst  $38                                         ; $6030: $ff
	rst  $38                                         ; $6031: $ff
	adc  h                                           ; $6032: $8c
	ld   d, b                                        ; $6033: $50
	sbc  [hl]                                        ; $6034: $9e
	dec  c                                           ; $6035: $0d
	ld   a, b                                        ; $6036: $78
	ld   a, c                                        ; $6037: $79
	ld   e, c                                        ; $6038: $59
	ld   [bc], a                                     ; $6039: $02
	ld   a, [de]                                     ; $603a: $1a
	dec  b                                           ; $603b: $05
	ldh  a, [$5a]                                    ; $603c: $f0 $5a
	ld   d, b                                        ; $603e: $50
	sbc  c                                           ; $603f: $99
	ld   a, b                                        ; $6040: $78
	sub  a                                           ; $6041: $97
	dec  c                                           ; $6042: $0d
	ld   d, d                                        ; $6043: $52
	ld   [hl], d                                     ; $6044: $72
	ld   [hl], l                                     ; $6045: $75
	sub  b                                           ; $6046: $90
	dec  b                                           ; $6047: $05
	db   $10                                         ; $6048: $10
	sbc  c                                           ; $6049: $99
	halt                                             ; $604a: $76
	ld   d, d                                        ; $604b: $52
	ld   d, d                                        ; $604c: $52
	sbc  a                                           ; $604d: $9f
	dec  c                                           ; $604e: $0d
	nop                                              ; $604f: $00
	ld   a, [bc]                                     ; $6050: $0a
	rrca                                             ; $6051: $0f
	nop                                              ; $6052: $00
	ld   bc, $7d01                                   ; $6053: $01 $01 $7d
	rst  $38                                         ; $6056: $ff
	rst  $38                                         ; $6057: $ff
	ld   a, l                                        ; $6058: $7d
	ld   d, d                                        ; $6059: $52
	sbc  a                                           ; $605a: $9f
	dec  c                                           ; $605b: $0d
	ld   d, b                                        ; $605c: $50
	sbc  b                                           ; $605d: $98
	ld   e, d                                        ; $605e: $5a
	halt                                             ; $605f: $76
	ld   d, h                                        ; $6060: $54
	ld   h, d                                        ; $6061: $62
	ld   h, h                                        ; $6062: $64
	ld   d, d                                        ; $6063: $52
	adc  h                                           ; $6064: $8c
	ld   h, a                                        ; $6065: $67
	sbc  a                                           ; $6066: $9f
	dec  c                                           ; $6067: $0d
	nop                                              ; $6068: $00
	ld   a, [bc]                                     ; $6069: $0a
	rrca                                             ; $606a: $0f
	add  hl, bc                                      ; $606b: $09
	nop                                              ; $606c: $00
	ld   bc, $9a6b                                   ; $606d: $01 $6b $9a
	ld   h, [hl]                                     ; $6070: $66
	sub  c                                           ; $6071: $91
	sbc  [hl]                                        ; $6072: $9e
	dec  b                                           ; $6073: $05
	ld   [hl], e                                     ; $6074: $73
	sub  b                                           ; $6075: $90
	inc  bc                                          ; $6076: $03
	dec  c                                           ; $6077: $0d
	ld   [bc], a                                     ; $6078: $02
	jp   $505a                                       ; $6079: $c3 $5a $50


	sbc  c                                           ; $607c: $99
	ld   e, c                                        ; $607d: $59
	sub  a                                           ; $607e: $97
	dec  c                                           ; $607f: $0d
	ld   h, c                                        ; $6080: $61
	sbc  d                                           ; $6081: $9a
	ld   [hl], l                                     ; $6082: $75
	sbc  a                                           ; $6083: $9f
	dec  c                                           ; $6084: $0d
	nop                                              ; $6085: $00
	ld   a, [bc]                                     ; $6086: $0a
	nop                                              ; $6087: $00
	inc  e                                           ; $6088: $1c
	add  hl, bc                                      ; $6089: $09
	dec  b                                           ; $608a: $05
	ld   a, [bc]                                     ; $608b: $0a
	ld   bc, $0008                                   ; $608c: $01 $08 $00
	ld   e, l                                        ; $608f: $5d
	and  c                                           ; $6090: $a1
	sbc  a                                           ; $6091: $9f
	dec  c                                           ; $6092: $0d
	ld   a, b                                        ; $6093: $78
	and  c                                           ; $6094: $a1
	ld   l, [hl]                                     ; $6095: $6e
	ld   e, c                                        ; $6096: $59
	ld   [bc], a                                     ; $6097: $02
	ld   [hl], d                                     ; $6098: $72
	inc  bc                                          ; $6099: $03
	dec  bc                                          ; $609a: $0b
	ld   e, d                                        ; $609b: $5a
	ld   [bc], a                                     ; $609c: $02
	jr   z, jr_057_60f1                              ; $609d: $28 $52

	ld   l, h                                        ; $609f: $6c
	sbc  a                                           ; $60a0: $9f
	dec  c                                           ; $60a1: $0d
	nop                                              ; $60a2: $00
	ld   a, [bc]                                     ; $60a3: $0a
	inc  e                                           ; $60a4: $1c
	add  hl, bc                                      ; $60a5: $09
	nop                                              ; $60a6: $00
	nop                                              ; $60a7: $00
	ld   bc, $a15a                                   ; $60a8: $01 $5a $a1
	ld   a, [hl]                                     ; $60ab: $7e
	sbc  c                                           ; $60ac: $99
	ld   a, h                                        ; $60ad: $7c
	sub  b                                           ; $60ae: $90
	ld   d, d                                        ; $60af: $52
	ld   d, d                                        ; $60b0: $52
	ld   e, d                                        ; $60b1: $5a
	sbc  [hl]                                        ; $60b2: $9e
	dec  c                                           ; $60b3: $0d
	ld   l, l                                        ; $60b4: $6d
	adc  h                                           ; $60b5: $8c
	ld   a, c                                        ; $60b6: $79
	ld   a, l                                        ; $60b7: $7d
	inc  bc                                          ; $60b8: $03
	and  a                                           ; $60b9: $a7
	adc  l                                           ; $60ba: $8d
	and  b                                           ; $60bb: $a0
	halt                                             ; $60bc: $76
	sub  a                                           ; $60bd: $97
	ld   a, b                                        ; $60be: $78
	ld   d, d                                        ; $60bf: $52
	halt                                             ; $60c0: $76
	dec  c                                           ; $60c1: $0d
	inc  b                                           ; $60c2: $04
	dec  c                                           ; $60c3: $0d
	ld   e, d                                        ; $60c4: $5a
	sub  b                                           ; $60c5: $90
	ld   l, l                                        ; $60c6: $6d
	ld   a, b                                        ; $60c7: $78
	ld   d, d                                        ; $60c8: $52
	ld   l, h                                        ; $60c9: $6c
	sbc  a                                           ; $60ca: $9f
	dec  c                                           ; $60cb: $0d
	nop                                              ; $60cc: $00
	ld   a, [bc]                                     ; $60cd: $0a
	ld   bc, $0a04                                   ; $60ce: $01 $04 $0a
	ld   [bc], a                                     ; $60d1: $02
	nop                                              ; $60d2: $00
	ld   a, c                                        ; $60d3: $79
	halt                                             ; $60d4: $76
	ld   [hl], c                                     ; $60d5: $71
	ld   [hl], h                                     ; $60d6: $74
	ld   a, l                                        ; $60d7: $7d
	inc  bc                                          ; $60d8: $03
	sub  h                                           ; $60d9: $94
	dec  b                                           ; $60da: $05
	inc  sp                                          ; $60db: $33
	ld   [bc], a                                     ; $60dc: $02
	ld   l, b                                        ; $60dd: $68
	dec  b                                           ; $60de: $05
	ld   de, $0d90                                   ; $60df: $11 $90 $0d
	inc  b                                           ; $60e2: $04
	ld   c, $02                                      ; $60e3: $0e $02
	jp   $0378                                       ; $60e5: $c3 $78 $03


	dec  c                                           ; $60e8: $0d
	ld   [bc], a                                     ; $60e9: $02
	jp   Jump_057_547c                               ; $60ea: $c3 $7c $54


	ld   l, a                                        ; $60ed: $6f
	ld   l, [hl]                                     ; $60ee: $6e
	ld   e, c                                        ; $60ef: $59
	sub  a                                           ; $60f0: $97

jr_057_60f1:
	ld   a, b                                        ; $60f1: $78
	sbc  a                                           ; $60f2: $9f
	dec  c                                           ; $60f3: $0d
	nop                                              ; $60f4: $00
	ld   a, [bc]                                     ; $60f5: $0a
	rrca                                             ; $60f6: $0f
	nop                                              ; $60f7: $00
	ld   bc, $7d01                                   ; $60f8: $01 $01 $7d
	rst  $38                                         ; $60fb: $ff
	rst  $38                                         ; $60fc: $ff
	ld   a, l                                        ; $60fd: $7d
	ld   d, d                                        ; $60fe: $52
	sbc  a                                           ; $60ff: $9f
	dec  c                                           ; $6100: $0d
	ld   [bc], a                                     ; $6101: $02
	and  c                                           ; $6102: $a1
	and  b                                           ; $6103: $a0
	ld   [hl], d                                     ; $6104: $72
	ld   e, a                                        ; $6105: $5f
	adc  h                                           ; $6106: $8c
	ld   h, a                                        ; $6107: $67
	sbc  a                                           ; $6108: $9f
	dec  c                                           ; $6109: $0d
	nop                                              ; $610a: $00
	ld   a, [bc]                                     ; $610b: $0a
	inc  e                                           ; $610c: $1c
	add  hl, bc                                      ; $610d: $09
	ld   bc, $0101                                   ; $610e: $01 $01 $01
	ld   d, h                                        ; $6111: $54
	and  c                                           ; $6112: $a1
	sbc  a                                           ; $6113: $9f
	dec  c                                           ; $6114: $0d
	ld   l, e                                        ; $6115: $6b
	sbc  d                                           ; $6116: $9a
	ld   h, [hl]                                     ; $6117: $66
	sub  c                                           ; $6118: $91
	sbc  [hl]                                        ; $6119: $9e
	dec  b                                           ; $611a: $05
	ld   [hl], e                                     ; $611b: $73
	sub  b                                           ; $611c: $90
	ld   l, e                                        ; $611d: $6b
	sbc  e                                           ; $611e: $9b
	ld   l, e                                        ; $611f: $6b
	sbc  e                                           ; $6120: $9b
	inc  bc                                          ; $6121: $03
	dec  c                                           ; $6122: $0d
	ld   [bc], a                                     ; $6123: $02
	jp   $0d79                                       ; $6124: $c3 $79 $0d


	sub  b                                           ; $6127: $90
	ld   [hl], a                                     ; $6128: $77
	sbc  c                                           ; $6129: $99
	ld   e, c                                        ; $612a: $59
	sub  a                                           ; $612b: $97
	ld   h, c                                        ; $612c: $61
	sbc  d                                           ; $612d: $9a
	ld   [hl], l                                     ; $612e: $75
	sbc  a                                           ; $612f: $9f
	dec  c                                           ; $6130: $0d
	nop                                              ; $6131: $00
	ld   a, [bc]                                     ; $6132: $0a
	nop                                              ; $6133: $00
	rrca                                             ; $6134: $0f
	nop                                              ; $6135: $00
	ld   bc, $5001                                   ; $6136: $01 $01 $50
	ld   a, h                                        ; $6139: $7c
	rst  $38                                         ; $613a: $ff
	rst  $38                                         ; $613b: $ff
	ld   l, a                                        ; $613c: $6f
	sub  l                                           ; $613d: $95
	ld   [hl], c                                     ; $613e: $71
	halt                                             ; $613f: $76
	dec  c                                           ; $6140: $0d
	ld   e, b                                        ; $6141: $58
	ld   [bc], a                                     ; $6142: $02
	jp   nz, $655b                                   ; $6143: $c2 $5b $65

	ld   l, l                                        ; $6146: $6d
	ld   d, d                                        ; $6147: $52
	ld   h, c                                        ; $6148: $61
	halt                                             ; $6149: $76
	ld   e, d                                        ; $614a: $5a
	dec  c                                           ; $614b: $0d
	ld   d, b                                        ; $614c: $50
	sbc  c                                           ; $614d: $99
	and  c                                           ; $614e: $a1
	ld   [hl], l                                     ; $614f: $75
	ld   h, a                                        ; $6150: $67
	ld   e, a                                        ; $6151: $5f
	ld   [hl], a                                     ; $6152: $77
	rst  $38                                         ; $6153: $ff
	dec  c                                           ; $6154: $0d
	nop                                              ; $6155: $00
	ld   a, [bc]                                     ; $6156: $0a
	rrca                                             ; $6157: $0f
	add  hl, bc                                      ; $6158: $09
	nop                                              ; $6159: $00
	ld   bc, $ffff                                   ; $615a: $01 $ff $ff
	ld   [bc], a                                     ; $615d: $02
	jp   nz, Jump_057_6d5b                           ; $615e: $c2 $5b $6d

	ld   d, d                                        ; $6161: $52
	ld   h, c                                        ; $6162: $61
	halt                                             ; $6163: $76
	ld   sp, hl                                      ; $6164: $f9
	dec  c                                           ; $6165: $0d
	nop                                              ; $6166: $00
	ld   a, [bc]                                     ; $6167: $0a
	jr   jr_057_616d                                 ; $6168: $18 $03

	ld   bc, $5d63                                   ; $616a: $01 $63 $5d

jr_057_616d:
	sub  a                                           ; $616d: $97
	ld   e, c                                        ; $616e: $59
	sub  a                                           ; $616f: $97
	ld   a, h                                        ; $6170: $7c
	inc  b                                           ; $6171: $04
	ld   d, a                                        ; $6172: $57
	inc  b                                           ; $6173: $04
	ld   h, e                                        ; $6174: $63
	and  b                                           ; $6175: $a0
	ld   e, e                                        ; $6176: $5b
	ld   e, l                                        ; $6177: $5d
	nop                                              ; $6178: $00
	nop                                              ; $6179: $00
	ld   h, a                                        ; $617a: $67
	adc  l                                           ; $617b: $8d
	sbc  d                                           ; $617c: $9a
	ld   e, c                                        ; $617d: $59
	sub  a                                           ; $617e: $97
	ld   a, h                                        ; $617f: $7c
	inc  b                                           ; $6180: $04
	ld   d, a                                        ; $6181: $57
	inc  b                                           ; $6182: $04
	ld   h, e                                        ; $6183: $63
	and  b                                           ; $6184: $a0
	ld   e, e                                        ; $6185: $5b
	ld   e, l                                        ; $6186: $5d
	nop                                              ; $6187: $00
	ld   bc, $7c6b                                   ; $6188: $01 $6b $7c
	inc  b                                           ; $618b: $04
	ld   e, $7c                                      ; $618c: $1e $7c
	inc  bc                                          ; $618e: $03
	add  d                                           ; $618f: $82
	ld   a, h                                        ; $6190: $7c
	inc  b                                           ; $6191: $04
	ld   d, a                                        ; $6192: $57
	inc  b                                           ; $6193: $04
	ld   h, e                                        ; $6194: $63
	and  b                                           ; $6195: $a0
	ld   e, e                                        ; $6196: $5b
	ld   e, l                                        ; $6197: $5d
	nop                                              ; $6198: $00
	ld   [bc], a                                     ; $6199: $02
	rlca                                             ; $619a: $07
	ld   h, $03                                      ; $619b: $26 $03
	ld   [bc], a                                     ; $619d: $02
	ld   [bc], a                                     ; $619e: $02
	ld   bc, $2000                                   ; $619f: $01 $00 $20
	nop                                              ; $61a2: $00
	rlca                                             ; $61a3: $07
	ld   d, d                                        ; $61a4: $52
	inc  b                                           ; $61a5: $04
	ld   [bc], a                                     ; $61a6: $02
	ld   [bc], a                                     ; $61a7: $02
	ld   bc, $2001                                   ; $61a8: $01 $01 $20
	nop                                              ; $61ab: $00
	rlca                                             ; $61ac: $07
	inc  c                                           ; $61ad: $0c
	ld   [bc], a                                     ; $61ae: $02
	ld   [bc], a                                     ; $61af: $02
	ld   [bc], a                                     ; $61b0: $02
	ld   bc, $2002                                   ; $61b1: $01 $02 $20
	nop                                              ; $61b4: $00
	jr   jr_057_61ba                                 ; $61b5: $18 $03

	ld   bc, $ecdf                                   ; $61b7: $01 $df $ec

jr_057_61ba:
	and  e                                           ; $61ba: $a3
	ld   e, c                                        ; $61bb: $59
	sub  a                                           ; $61bc: $97
	ld   a, h                                        ; $61bd: $7c
	inc  b                                           ; $61be: $04
	ld   d, a                                        ; $61bf: $57
	inc  b                                           ; $61c0: $04
	ld   h, e                                        ; $61c1: $63
	and  b                                           ; $61c2: $a0
	ld   e, e                                        ; $61c3: $5b
	ld   e, l                                        ; $61c4: $5d
	nop                                              ; $61c5: $00
	nop                                              ; $61c6: $00
	xor  h                                           ; $61c7: $ac
	push af                                          ; $61c8: $f5
	bit  3, c                                        ; $61c9: $cb $59
	sub  a                                           ; $61cb: $97
	ld   a, h                                        ; $61cc: $7c
	inc  b                                           ; $61cd: $04
	ld   d, a                                        ; $61ce: $57
	inc  b                                           ; $61cf: $04
	ld   h, e                                        ; $61d0: $63
	and  b                                           ; $61d1: $a0
	ld   e, e                                        ; $61d2: $5b
	ld   e, l                                        ; $61d3: $5d
	nop                                              ; $61d4: $00
	ld   bc, $7c6b                                   ; $61d5: $01 $6b $7c
	inc  b                                           ; $61d8: $04
	ld   e, $7c                                      ; $61d9: $1e $7c
	inc  bc                                          ; $61db: $03
	add  d                                           ; $61dc: $82
	ld   a, h                                        ; $61dd: $7c
	inc  b                                           ; $61de: $04
	ld   d, a                                        ; $61df: $57
	inc  b                                           ; $61e0: $04
	ld   h, e                                        ; $61e1: $63
	and  b                                           ; $61e2: $a0
	ld   e, e                                        ; $61e3: $5b
	ld   e, l                                        ; $61e4: $5d
	nop                                              ; $61e5: $00
	ld   [bc], a                                     ; $61e6: $02
	rlca                                             ; $61e7: $07
	ld   a, [hl]                                     ; $61e8: $7e
	dec  b                                           ; $61e9: $05
	ld   [bc], a                                     ; $61ea: $02
	ld   [bc], a                                     ; $61eb: $02
	ld   bc, $2000                                   ; $61ec: $01 $00 $20
	nop                                              ; $61ef: $00
	rlca                                             ; $61f0: $07
	or   $08                                         ; $61f1: $f6 $08
	ld   [bc], a                                     ; $61f3: $02
	ld   [bc], a                                     ; $61f4: $02
	ld   bc, $2001                                   ; $61f5: $01 $01 $20
	nop                                              ; $61f8: $00
	rlca                                             ; $61f9: $07
	ld   e, c                                        ; $61fa: $59
	ld   [bc], a                                     ; $61fb: $02
	ld   [bc], a                                     ; $61fc: $02
	ld   [bc], a                                     ; $61fd: $02
	ld   bc, $2002                                   ; $61fe: $01 $02 $20
	nop                                              ; $6201: $00
	jr   jr_057_6207                                 ; $6202: $18 $03

	ld   bc, $cf02                                   ; $6204: $01 $02 $cf

jr_057_6207:
	dec  b                                           ; $6207: $05
	ld   a, [de]                                     ; $6208: $1a
	ld   e, c                                        ; $6209: $59
	sub  a                                           ; $620a: $97
	ld   a, h                                        ; $620b: $7c
	inc  b                                           ; $620c: $04
	ld   d, a                                        ; $620d: $57
	inc  b                                           ; $620e: $04
	ld   h, e                                        ; $620f: $63
	and  b                                           ; $6210: $a0
	ld   e, e                                        ; $6211: $5b
	ld   e, l                                        ; $6212: $5d
	nop                                              ; $6213: $00
	nop                                              ; $6214: $00
	and  e                                           ; $6215: $a3
	and  l                                           ; $6216: $a5
	db   $ec                                         ; $6217: $ec
	cp   d                                           ; $6218: $ba
	ld   e, c                                        ; $6219: $59
	sub  a                                           ; $621a: $97
	ld   a, h                                        ; $621b: $7c
	inc  b                                           ; $621c: $04
	ld   d, a                                        ; $621d: $57
	inc  b                                           ; $621e: $04
	ld   h, e                                        ; $621f: $63
	and  b                                           ; $6220: $a0
	ld   e, e                                        ; $6221: $5b
	ld   e, l                                        ; $6222: $5d
	nop                                              ; $6223: $00
	ld   bc, $7c6b                                   ; $6224: $01 $6b $7c
	inc  b                                           ; $6227: $04
	ld   e, $7c                                      ; $6228: $1e $7c
	inc  bc                                          ; $622a: $03
	add  d                                           ; $622b: $82
	ld   a, h                                        ; $622c: $7c
	inc  b                                           ; $622d: $04
	ld   d, a                                        ; $622e: $57
	inc  b                                           ; $622f: $04
	ld   h, e                                        ; $6230: $63
	and  b                                           ; $6231: $a0
	ld   e, e                                        ; $6232: $5b
	ld   e, l                                        ; $6233: $5d
	nop                                              ; $6234: $00
	ld   [bc], a                                     ; $6235: $02
	rlca                                             ; $6236: $07
	call z, $0207                                    ; $6237: $cc $07 $02
	ld   [bc], a                                     ; $623a: $02
	ld   bc, $2000                                   ; $623b: $01 $00 $20
	nop                                              ; $623e: $00
	rlca                                             ; $623f: $07
	and  h                                           ; $6240: $a4
	ld   b, $02                                      ; $6241: $06 $02
	ld   [bc], a                                     ; $6243: $02
	ld   bc, $2001                                   ; $6244: $01 $01 $20
	nop                                              ; $6247: $00
	rlca                                             ; $6248: $07
	xor  b                                           ; $6249: $a8
	ld   [bc], a                                     ; $624a: $02
	ld   [bc], a                                     ; $624b: $02
	ld   [bc], a                                     ; $624c: $02
	ld   bc, $2002                                   ; $624d: $01 $02 $20
	nop                                              ; $6250: $00
	jr   @+$04                                       ; $6251: $18 $02

	ld   bc, $7192                                   ; $6253: $01 $92 $71
	ld   a, a                                        ; $6256: $7f
	sbc  b                                           ; $6257: $98
	sub  d                                           ; $6258: $92
	adc  a                                           ; $6259: $8f
	sbc  c                                           ; $625a: $99
	nop                                              ; $625b: $00
	nop                                              ; $625c: $00
	ld   l, e                                        ; $625d: $6b
	ld   a, h                                        ; $625e: $7c
	inc  b                                           ; $625f: $04
	ld   e, $7c                                      ; $6260: $1e $7c
	inc  bc                                          ; $6262: $03
	add  d                                           ; $6263: $82
	ld   a, h                                        ; $6264: $7c
	inc  b                                           ; $6265: $04
	ld   d, a                                        ; $6266: $57
	inc  b                                           ; $6267: $04
	ld   h, e                                        ; $6268: $63
	and  b                                           ; $6269: $a0
	ld   e, e                                        ; $626a: $5b
	ld   e, l                                        ; $626b: $5d
	nop                                              ; $626c: $00
	ld   bc, $d707                                   ; $626d: $01 $07 $d7
	ld   [bc], a                                     ; $6270: $02
	ld   [bc], a                                     ; $6271: $02
	ld   [bc], a                                     ; $6272: $02
	ld   bc, $2000                                   ; $6273: $01 $00 $20
	nop                                              ; $6276: $00
	rlca                                             ; $6277: $07
	cp   a                                           ; $6278: $bf
	ld   bc, $0202                                   ; $6279: $01 $02 $02
	ld   bc, $2001                                   ; $627c: $01 $01 $20
	nop                                              ; $627f: $00
	rrca                                             ; $6280: $0f
	nop                                              ; $6281: $00
	ld   bc, $5001                                   ; $6282: $01 $01 $50
	sbc  [hl]                                        ; $6285: $9e
	sub  d                                           ; $6286: $92
	ld   [hl], c                                     ; $6287: $71
	ld   a, a                                        ; $6288: $7f
	sbc  b                                           ; $6289: $98
	ld   d, d                                        ; $628a: $52
	ld   d, d                                        ; $628b: $52
	ld   [hl], l                                     ; $628c: $75
	ld   h, a                                        ; $628d: $67
	sbc  a                                           ; $628e: $9f
	dec  c                                           ; $628f: $0d
	ld   [hl], l                                     ; $6290: $75
	ld   a, l                                        ; $6291: $7d
	sbc  [hl]                                        ; $6292: $9e
	inc  bc                                          ; $6293: $03
	add  e                                           ; $6294: $83
	dec  b                                           ; $6295: $05
	dec  c                                           ; $6296: $0d
	ld   h, l                                        ; $6297: $65
	adc  h                                           ; $6298: $8c
	ld   h, a                                        ; $6299: $67
	sbc  a                                           ; $629a: $9f
	dec  c                                           ; $629b: $0d
	nop                                              ; $629c: $00
	ld   a, [bc]                                     ; $629d: $0a
	rrca                                             ; $629e: $0f
	add  hl, bc                                      ; $629f: $09
	nop                                              ; $62a0: $00
	ld   bc, $546b                                   ; $62a1: $01 $6b $54
	ld   e, c                                        ; $62a4: $59
	ld   d, d                                        ; $62a5: $52
	sbc  a                                           ; $62a6: $9f
	dec  c                                           ; $62a7: $0d
	ld   [hl], l                                     ; $62a8: $75
	sub  b                                           ; $62a9: $90
	sbc  [hl]                                        ; $62aa: $9e
	inc  b                                           ; $62ab: $04
	di                                               ; $62ac: $f3
	ld   e, d                                        ; $62ad: $5a
	ld   d, b                                        ; $62ae: $50
	ld   [hl], c                                     ; $62af: $71
	ld   l, l                                        ; $62b0: $6d
	sub  a                                           ; $62b1: $97
	dec  c                                           ; $62b2: $0d
	ld   d, d                                        ; $62b3: $52
	ld   [hl], d                                     ; $62b4: $72
	ld   [hl], l                                     ; $62b5: $75
	sub  b                                           ; $62b6: $90
	dec  b                                           ; $62b7: $05
	db   $10                                         ; $62b8: $10
	sbc  c                                           ; $62b9: $99
	halt                                             ; $62ba: $76
	ld   d, d                                        ; $62bb: $52
	ld   d, d                                        ; $62bc: $52
	sbc  a                                           ; $62bd: $9f
	dec  c                                           ; $62be: $0d
	nop                                              ; $62bf: $00
	ld   a, [bc]                                     ; $62c0: $0a
	ld   bc, $9166                                   ; $62c1: $01 $66 $91
	sbc  [hl]                                        ; $62c4: $9e
	ld   e, d                                        ; $62c5: $5a
	and  c                                           ; $62c6: $a1
	ld   a, [hl]                                     ; $62c7: $7e
	sbc  d                                           ; $62c8: $9a
	sub  [hl]                                        ; $62c9: $96
	sbc  a                                           ; $62ca: $9f
	dec  c                                           ; $62cb: $0d
	nop                                              ; $62cc: $00
	ld   a, [bc]                                     ; $62cd: $0a
	nop                                              ; $62ce: $00
	rrca                                             ; $62cf: $0f
	nop                                              ; $62d0: $00
	ld   bc, $6301                                   ; $62d1: $01 $01 $63

jr_057_62d4:
	ld   e, l                                        ; $62d4: $5d
	sub  a                                           ; $62d5: $97
	ld   h, e                                        ; $62d6: $63
	and  c                                           ; $62d7: $a1
	ld   a, h                                        ; $62d8: $7c
	inc  b                                           ; $62d9: $04
	ld   l, l                                        ; $62da: $6d
	add  [hl]                                        ; $62db: $86
	ld   a, h                                        ; $62dc: $7c
	inc  b                                           ; $62dd: $04
	ld   d, a                                        ; $62de: $57
	inc  b                                           ; $62df: $04
	ld   h, e                                        ; $62e0: $63
	ld   [hl], c                                     ; $62e1: $71
	ld   [hl], h                                     ; $62e2: $74
	dec  c                                           ; $62e3: $0d
	ld   [hl], a                                     ; $62e4: $77
	ld   d, h                                        ; $62e5: $54
	ld   a, b                                        ; $62e6: $78
	and  c                                           ; $62e7: $a1
	ld   [hl], l                                     ; $62e8: $75
	ld   h, l                                        ; $62e9: $65
	sub  l                                           ; $62ea: $95

jr_057_62eb:
	ld   d, h                                        ; $62eb: $54
	ld   e, c                                        ; $62ec: $59
	ld   sp, hl                                      ; $62ed: $f9
	dec  c                                           ; $62ee: $0d
	nop                                              ; $62ef: $00
	ld   a, [bc]                                     ; $62f0: $0a
	rrca                                             ; $62f1: $0f
	add  hl, bc                                      ; $62f2: $09
	nop                                              ; $62f3: $00
	ld   bc, $8e83                                   ; $62f4: $01 $83 $8e
	sbc  [hl]                                        ; $62f7: $9e
	ld   l, e                                        ; $62f8: $6b
	ld   d, h                                        ; $62f9: $54
	ld   l, [hl]                                     ; $62fa: $6e
	ld   a, b                                        ; $62fb: $78
	rst  $38                                         ; $62fc: $ff
	rst  $38                                         ; $62fd: $ff
	dec  c                                           ; $62fe: $0d
	nop                                              ; $62ff: $00
	ld   a, [bc]                                     ; $6300: $0a
	rlca                                             ; $6301: $07
	ret  nz                                          ; $6302: $c0

	inc  bc                                          ; $6303: $03
	inc  bc                                          ; $6304: $03
	ld   de, $7301                                   ; $6305: $11 $01 $73
	inc  hl                                          ; $6308: $23
	nop                                              ; $6309: $00
	rlca                                             ; $630a: $07
	rrca                                             ; $630b: $0f
	inc  b                                           ; $630c: $04
	inc  bc                                          ; $630d: $03
	ld   de, $c401                                   ; $630e: $11 $01 $c4
	dec  h                                           ; $6311: $25
	nop                                              ; $6312: $00
	ld   bc, $5d63                                   ; $6313: $01 $63 $5d
	sub  a                                           ; $6316: $97
	ld   e, l                                        ; $6317: $5d
	and  c                                           ; $6318: $a1
	ld   a, h                                        ; $6319: $7c
	sbc  [hl]                                        ; $631a: $9e
	ld   [$5d00], sp                                 ; $631b: $08 $00 $5d
	and  c                                           ; $631e: $a1
	dec  c                                           ; $631f: $0d
	add  [hl]                                        ; $6320: $86
	ld   a, h                                        ; $6321: $7c
	inc  b                                           ; $6322: $04
	ld   d, a                                        ; $6323: $57
	inc  b                                           ; $6324: $04
	ld   h, e                                        ; $6325: $63
	ld   a, l                                        ; $6326: $7d
	sbc  [hl]                                        ; $6327: $9e
	adc  h                                           ; $6328: $8c
	ld   d, b                                        ; $6329: $50
	adc  h                                           ; $632a: $8c
	ld   d, b                                        ; $632b: $50
	dec  c                                           ; $632c: $0d
	halt                                             ; $632d: $76
	ld   d, d                                        ; $632e: $52
	ld   [hl], c                                     ; $632f: $71
	ld   l, l                                        ; $6330: $6d
	halt                                             ; $6331: $76
	ld   h, c                                        ; $6332: $61
	sbc  e                                           ; $6333: $9b
	ld   e, c                                        ; $6334: $59
	ld   a, b                                        ; $6335: $78
	sbc  a                                           ; $6336: $9f
	dec  c                                           ; $6337: $0d
	nop                                              ; $6338: $00
	ld   a, [bc]                                     ; $6339: $0a
	ld   bc, $5d76                                   ; $633a: $01 $76 $5d
	ld   a, c                                        ; $633d: $79
	ld   [bc], a                                     ; $633e: $02
	jr   z, jr_057_6393                              ; $633f: $28 $52

	dec  b                                           ; $6341: $05
	jr   nz, jr_057_62d4                             ; $6342: $20 $90

	ld   [bc], a                                     ; $6344: $02
	jp   nz, Jump_057_7859                           ; $6345: $c2 $59 $78

	ld   d, d                                        ; $6348: $52
	ld   h, l                                        ; $6349: $65
	rst  $38                                         ; $634a: $ff
	rst  $38                                         ; $634b: $ff
	dec  c                                           ; $634c: $0d
	ld   e, c                                        ; $634d: $59
	halt                                             ; $634e: $76
	ld   d, d                                        ; $634f: $52
	ld   [hl], c                                     ; $6350: $71
	ld   [hl], h                                     ; $6351: $74
	sbc  [hl]                                        ; $6352: $9e
	ld   d, d                                        ; $6353: $52
	ld   d, d                                        ; $6354: $52
	halt                                             ; $6355: $76
	ld   d, d                                        ; $6356: $52
	ld   d, h                                        ; $6357: $54
	dec  b                                           ; $6358: $05
	jr   nz, jr_057_62eb                             ; $6359: $20 $90

	dec  c                                           ; $635b: $0d
	ld   [bc], a                                     ; $635c: $02
	jp   nz, Jump_057_7859                           ; $635d: $c2 $59 $78

	ld   d, d                                        ; $6360: $52
	ld   a, b                                        ; $6361: $78
	sbc  a                                           ; $6362: $9f
	dec  c                                           ; $6363: $0d
	nop                                              ; $6364: $00
	ld   a, [bc]                                     ; $6365: $0a
	ld   b, $1c                                      ; $6366: $06 $1c
	ld   a, [bc]                                     ; $6368: $0a
	ld   bc, $5d63                                   ; $6369: $01 $63 $5d
	sub  a                                           ; $636c: $97
	ld   e, l                                        ; $636d: $5d
	and  c                                           ; $636e: $a1
	ld   a, h                                        ; $636f: $7c
	sbc  [hl]                                        ; $6370: $9e
	ld   [$5d00], sp                                 ; $6371: $08 $00 $5d
	and  c                                           ; $6374: $a1
	dec  c                                           ; $6375: $0d
	add  [hl]                                        ; $6376: $86
	ld   a, h                                        ; $6377: $7c
	inc  b                                           ; $6378: $04
	ld   d, a                                        ; $6379: $57
	inc  b                                           ; $637a: $04
	ld   h, e                                        ; $637b: $63
	ld   a, l                                        ; $637c: $7d
	rst  $38                                         ; $637d: $ff
	rst  $38                                         ; $637e: $ff
	dec  c                                           ; $637f: $0d
	ld   d, b                                        ; $6380: $50
	adc  h                                           ; $6381: $8c
	sbc  b                                           ; $6382: $98
	sub  [hl]                                        ; $6383: $96
	ld   e, l                                        ; $6384: $5d
	ld   a, b                                        ; $6385: $78
	ld   d, d                                        ; $6386: $52
	ld   a, b                                        ; $6387: $78
	sbc  a                                           ; $6388: $9f
	dec  c                                           ; $6389: $0d
	nop                                              ; $638a: $00
	ld   a, [bc]                                     ; $638b: $0a
	ld   bc, $7190                                   ; $638c: $01 $90 $71
	halt                                             ; $638f: $76

Call_057_6390:
	ld   [bc], a                                     ; $6390: $02
	ld   a, [de]                                     ; $6391: $1a
	inc  bc                                          ; $6392: $03

jr_057_6393:
	ld   l, e                                        ; $6393: $6b
	ld   a, h                                        ; $6394: $7c
	ld   [bc], a                                     ; $6395: $02
	and  c                                           ; $6396: $a1
	inc  bc                                          ; $6397: $03
	and  b                                           ; $6398: $a0
	ld   l, a                                        ; $6399: $6f
	and  b                                           ; $639a: $a0
	dec  c                                           ; $639b: $0d
	ld   [bc], a                                     ; $639c: $02
	ld   h, l                                        ; $639d: $65
	ld   d, [hl]                                     ; $639e: $56
	ld   [hl], h                                     ; $639f: $74
	ld   [bc], a                                     ; $63a0: $02
	ld   a, a                                        ; $63a1: $7f
	inc  b                                           ; $63a2: $04
	dec  de                                          ; $63a3: $1b
	ld   h, l                                        ; $63a4: $65
	ld   l, l                                        ; $63a5: $6d
	adc  c                                           ; $63a6: $89
	ld   d, h                                        ; $63a7: $54
	ld   e, d                                        ; $63a8: $5a
	ld   d, d                                        ; $63a9: $52
	ld   d, d                                        ; $63aa: $52
	halt                                             ; $63ab: $76
	dec  c                                           ; $63ac: $0d
	dec  b                                           ; $63ad: $05
	pop  de                                          ; $63ae: $d1
	ld   d, h                                        ; $63af: $54
	ld   l, h                                        ; $63b0: $6c
	sbc  a                                           ; $63b1: $9f
	dec  c                                           ; $63b2: $0d
	nop                                              ; $63b3: $00
	ld   a, [bc]                                     ; $63b4: $0a
	ld   b, $1c                                      ; $63b5: $06 $1c
	ld   a, [bc]                                     ; $63b7: $0a
	ld   bc, $5d63                                   ; $63b8: $01 $63 $5d
	sub  a                                           ; $63bb: $97
	ld   e, l                                        ; $63bc: $5d
	and  c                                           ; $63bd: $a1
	ld   a, h                                        ; $63be: $7c
	sbc  [hl]                                        ; $63bf: $9e
	ld   [$5d00], sp                                 ; $63c0: $08 $00 $5d
	and  c                                           ; $63c3: $a1
	dec  c                                           ; $63c4: $0d
	add  [hl]                                        ; $63c5: $86
	ld   a, h                                        ; $63c6: $7c
	inc  b                                           ; $63c7: $04
	ld   d, a                                        ; $63c8: $57
	inc  b                                           ; $63c9: $04
	ld   h, e                                        ; $63ca: $63
	ld   a, l                                        ; $63cb: $7d
	sbc  [hl]                                        ; $63cc: $9e
	ld   e, c                                        ; $63cd: $59
	ld   a, b                                        ; $63ce: $78
	sbc  b                                           ; $63cf: $98
	ld   d, d                                        ; $63d0: $52
	ld   d, d                                        ; $63d1: $52
	dec  c                                           ; $63d2: $0d
	halt                                             ; $63d3: $76
	dec  b                                           ; $63d4: $05
	pop  de                                          ; $63d5: $d1
	ld   d, h                                        ; $63d6: $54
	ld   l, h                                        ; $63d7: $6c
	sbc  a                                           ; $63d8: $9f
	dec  c                                           ; $63d9: $0d
	nop                                              ; $63da: $00
	ld   a, [bc]                                     ; $63db: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $63dc: $01 $02 $ca
	sub  b                                           ; $63df: $90
	ld   l, e                                        ; $63e0: $6b
	sbc  d                                           ; $63e1: $9a
	ld   a, c                                        ; $63e2: $79
	ld   [bc], a                                     ; $63e3: $02
	add  hl, bc                                      ; $63e4: $09
	ld   d, [hl]                                     ; $63e5: $56
	sub  a                                           ; $63e6: $97
	sbc  d                                           ; $63e7: $9a
	sbc  c                                           ; $63e8: $99
	sub  [hl]                                        ; $63e9: $96
	ld   d, h                                        ; $63ea: $54
	ld   a, c                                        ; $63eb: $79
	dec  c                                           ; $63ec: $0d
	ld   e, d                                        ; $63ed: $5a
	and  c                                           ; $63ee: $a1
	ld   a, [hl]                                     ; $63ef: $7e
	sbc  c                                           ; $63f0: $99
	and  c                                           ; $63f1: $a1
	ld   l, [hl]                                     ; $63f2: $6e
	ld   l, h                                        ; $63f3: $6c
	sbc  a                                           ; $63f4: $9f
	dec  c                                           ; $63f5: $0d
	nop                                              ; $63f6: $00
	ld   a, [bc]                                     ; $63f7: $0a
	ld   b, $1c                                      ; $63f8: $06 $1c
	ld   a, [bc]                                     ; $63fa: $0a
	rrca                                             ; $63fb: $0f
	nop                                              ; $63fc: $00
	ld   bc, $6701                                   ; $63fd: $01 $01 $67

jr_057_6400:
	adc  l                                           ; $6400: $8d
	sbc  d                                           ; $6401: $9a
	ld   h, e                                        ; $6402: $63
	and  c                                           ; $6403: $a1
	ld   a, h                                        ; $6404: $7c
	inc  b                                           ; $6405: $04
	ld   l, l                                        ; $6406: $6d
	add  [hl]                                        ; $6407: $86
	ld   a, h                                        ; $6408: $7c
	inc  b                                           ; $6409: $04
	ld   d, a                                        ; $640a: $57
	inc  b                                           ; $640b: $04
	ld   h, e                                        ; $640c: $63
	ld   [hl], c                                     ; $640d: $71
	ld   [hl], h                                     ; $640e: $74
	dec  c                                           ; $640f: $0d
	ld   [hl], a                                     ; $6410: $77
	ld   d, h                                        ; $6411: $54
	ld   a, b                                        ; $6412: $78
	and  c                                           ; $6413: $a1
	ld   [hl], l                                     ; $6414: $75
	ld   h, l                                        ; $6415: $65
	sub  l                                           ; $6416: $95

jr_057_6417:
	ld   d, h                                        ; $6417: $54
	ld   e, c                                        ; $6418: $59
	ld   sp, hl                                      ; $6419: $f9
	dec  c                                           ; $641a: $0d
	nop                                              ; $641b: $00
	ld   a, [bc]                                     ; $641c: $0a
	rrca                                             ; $641d: $0f
	add  hl, bc                                      ; $641e: $09
	nop                                              ; $641f: $00
	ld   bc, $8e83                                   ; $6420: $01 $83 $8e
	sbc  [hl]                                        ; $6423: $9e
	ld   l, e                                        ; $6424: $6b
	ld   d, h                                        ; $6425: $54
	ld   l, [hl]                                     ; $6426: $6e
	ld   a, b                                        ; $6427: $78
	rst  $38                                         ; $6428: $ff
	rst  $38                                         ; $6429: $ff
	dec  c                                           ; $642a: $0d
	nop                                              ; $642b: $00
	ld   a, [bc]                                     ; $642c: $0a
	rlca                                             ; $642d: $07
	db   $ec                                         ; $642e: $ec
	inc  b                                           ; $642f: $04
	inc  bc                                          ; $6430: $03
	ld   [de], a                                     ; $6431: $12
	ld   bc, $2373                                   ; $6432: $01 $73 $23
	nop                                              ; $6435: $00
	rlca                                             ; $6436: $07
	dec  sp                                          ; $6437: $3b
	dec  b                                           ; $6438: $05
	inc  bc                                          ; $6439: $03
	ld   [de], a                                     ; $643a: $12
	ld   bc, $25c4                                   ; $643b: $01 $c4 $25
	nop                                              ; $643e: $00
	ld   bc, $8d67                                   ; $643f: $01 $67 $8d
	sbc  d                                           ; $6442: $9a
	ld   e, l                                        ; $6443: $5d
	and  c                                           ; $6444: $a1
	ld   a, h                                        ; $6445: $7c
	sbc  [hl]                                        ; $6446: $9e
	ld   [$5d00], sp                                 ; $6447: $08 $00 $5d
	and  c                                           ; $644a: $a1
	dec  c                                           ; $644b: $0d
	add  [hl]                                        ; $644c: $86
	ld   a, h                                        ; $644d: $7c
	inc  b                                           ; $644e: $04
	ld   d, a                                        ; $644f: $57
	inc  b                                           ; $6450: $04
	ld   h, e                                        ; $6451: $63
	ld   a, l                                        ; $6452: $7d
	sbc  [hl]                                        ; $6453: $9e
	adc  h                                           ; $6454: $8c
	ld   d, b                                        ; $6455: $50
	adc  h                                           ; $6456: $8c
	ld   d, b                                        ; $6457: $50
	dec  c                                           ; $6458: $0d
	halt                                             ; $6459: $76
	ld   d, d                                        ; $645a: $52
	ld   [hl], c                                     ; $645b: $71
	ld   l, l                                        ; $645c: $6d
	halt                                             ; $645d: $76
	ld   h, c                                        ; $645e: $61
	sbc  e                                           ; $645f: $9b
	ld   e, c                                        ; $6460: $59
	ld   a, b                                        ; $6461: $78
	sbc  a                                           ; $6462: $9f
	dec  c                                           ; $6463: $0d
	nop                                              ; $6464: $00
	ld   a, [bc]                                     ; $6465: $0a
	ld   bc, $5d76                                   ; $6466: $01 $76 $5d
	ld   a, c                                        ; $6469: $79
	ld   [bc], a                                     ; $646a: $02
	jr   z, jr_057_64bf                              ; $646b: $28 $52

	dec  b                                           ; $646d: $05
	jr   nz, jr_057_6400                             ; $646e: $20 $90

	ld   [bc], a                                     ; $6470: $02
	jp   nz, Jump_057_7859                           ; $6471: $c2 $59 $78

	ld   d, d                                        ; $6474: $52
	ld   h, l                                        ; $6475: $65
	rst  $38                                         ; $6476: $ff
	rst  $38                                         ; $6477: $ff
	dec  c                                           ; $6478: $0d
	ld   e, c                                        ; $6479: $59
	halt                                             ; $647a: $76
	ld   d, d                                        ; $647b: $52
	ld   [hl], c                                     ; $647c: $71
	ld   [hl], h                                     ; $647d: $74
	sbc  [hl]                                        ; $647e: $9e
	ld   d, d                                        ; $647f: $52
	ld   d, d                                        ; $6480: $52
	halt                                             ; $6481: $76
	ld   d, d                                        ; $6482: $52
	ld   d, h                                        ; $6483: $54
	dec  b                                           ; $6484: $05
	jr   nz, jr_057_6417                             ; $6485: $20 $90

	dec  c                                           ; $6487: $0d
	ld   [bc], a                                     ; $6488: $02
	jp   nz, Jump_057_7859                           ; $6489: $c2 $59 $78

	ld   d, d                                        ; $648c: $52
	ld   a, b                                        ; $648d: $78
	sbc  a                                           ; $648e: $9f
	dec  c                                           ; $648f: $0d
	nop                                              ; $6490: $00
	ld   a, [bc]                                     ; $6491: $0a
	ld   b, $1c                                      ; $6492: $06 $1c
	ld   a, [bc]                                     ; $6494: $0a
	ld   bc, $8d67                                   ; $6495: $01 $67 $8d
	sbc  d                                           ; $6498: $9a
	ld   e, l                                        ; $6499: $5d
	and  c                                           ; $649a: $a1
	ld   a, h                                        ; $649b: $7c
	sbc  [hl]                                        ; $649c: $9e
	ld   [$5d00], sp                                 ; $649d: $08 $00 $5d
	and  c                                           ; $64a0: $a1
	dec  c                                           ; $64a1: $0d
	add  [hl]                                        ; $64a2: $86
	ld   a, h                                        ; $64a3: $7c
	inc  b                                           ; $64a4: $04
	ld   d, a                                        ; $64a5: $57
	inc  b                                           ; $64a6: $04
	ld   h, e                                        ; $64a7: $63
	ld   a, l                                        ; $64a8: $7d
	rst  $38                                         ; $64a9: $ff
	rst  $38                                         ; $64aa: $ff
	dec  c                                           ; $64ab: $0d
	ld   d, b                                        ; $64ac: $50
	adc  h                                           ; $64ad: $8c
	sbc  b                                           ; $64ae: $98
	sub  [hl]                                        ; $64af: $96
	ld   e, l                                        ; $64b0: $5d
	ld   a, b                                        ; $64b1: $78
	ld   d, d                                        ; $64b2: $52
	ld   a, b                                        ; $64b3: $78
	sbc  a                                           ; $64b4: $9f
	dec  c                                           ; $64b5: $0d
	nop                                              ; $64b6: $00
	ld   a, [bc]                                     ; $64b7: $0a
	ld   bc, $7190                                   ; $64b8: $01 $90 $71
	halt                                             ; $64bb: $76
	ld   [bc], a                                     ; $64bc: $02
	ld   a, [de]                                     ; $64bd: $1a
	inc  bc                                          ; $64be: $03

jr_057_64bf:
	ld   l, e                                        ; $64bf: $6b
	ld   a, h                                        ; $64c0: $7c
	ld   [bc], a                                     ; $64c1: $02
	and  c                                           ; $64c2: $a1
	inc  bc                                          ; $64c3: $03
	and  b                                           ; $64c4: $a0
	ld   l, a                                        ; $64c5: $6f
	and  b                                           ; $64c6: $a0
	dec  c                                           ; $64c7: $0d
	ld   [bc], a                                     ; $64c8: $02
	ld   h, l                                        ; $64c9: $65
	ld   d, [hl]                                     ; $64ca: $56
	ld   [hl], h                                     ; $64cb: $74
	ld   [bc], a                                     ; $64cc: $02
	ld   a, a                                        ; $64cd: $7f
	inc  b                                           ; $64ce: $04
	dec  de                                          ; $64cf: $1b
	ld   h, l                                        ; $64d0: $65
	ld   l, l                                        ; $64d1: $6d
	adc  c                                           ; $64d2: $89
	ld   d, h                                        ; $64d3: $54
	ld   e, d                                        ; $64d4: $5a
	ld   d, d                                        ; $64d5: $52
	ld   d, d                                        ; $64d6: $52
	halt                                             ; $64d7: $76
	dec  c                                           ; $64d8: $0d
	dec  b                                           ; $64d9: $05
	pop  de                                          ; $64da: $d1
	ld   d, h                                        ; $64db: $54
	ld   l, h                                        ; $64dc: $6c
	sbc  a                                           ; $64dd: $9f
	dec  c                                           ; $64de: $0d
	nop                                              ; $64df: $00
	ld   a, [bc]                                     ; $64e0: $0a
	ld   b, $1c                                      ; $64e1: $06 $1c
	ld   a, [bc]                                     ; $64e3: $0a
	ld   bc, $8d67                                   ; $64e4: $01 $67 $8d
	sbc  d                                           ; $64e7: $9a
	ld   e, l                                        ; $64e8: $5d
	and  c                                           ; $64e9: $a1
	ld   a, h                                        ; $64ea: $7c
	sbc  [hl]                                        ; $64eb: $9e
	ld   [$5d00], sp                                 ; $64ec: $08 $00 $5d
	and  c                                           ; $64ef: $a1
	dec  c                                           ; $64f0: $0d
	add  [hl]                                        ; $64f1: $86
	ld   a, h                                        ; $64f2: $7c
	inc  b                                           ; $64f3: $04
	ld   d, a                                        ; $64f4: $57
	inc  b                                           ; $64f5: $04
	ld   h, e                                        ; $64f6: $63
	ld   a, l                                        ; $64f7: $7d
	sbc  [hl]                                        ; $64f8: $9e
	ld   e, c                                        ; $64f9: $59
	ld   a, b                                        ; $64fa: $78
	sbc  b                                           ; $64fb: $98
	ld   d, d                                        ; $64fc: $52
	ld   d, d                                        ; $64fd: $52
	dec  c                                           ; $64fe: $0d
	halt                                             ; $64ff: $76
	dec  b                                           ; $6500: $05
	pop  de                                          ; $6501: $d1
	ld   d, h                                        ; $6502: $54
	ld   l, h                                        ; $6503: $6c
	sbc  a                                           ; $6504: $9f
	dec  c                                           ; $6505: $0d
	nop                                              ; $6506: $00
	ld   a, [bc]                                     ; $6507: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $6508: $01 $02 $ca
	sub  b                                           ; $650b: $90
	ld   l, e                                        ; $650c: $6b
	sbc  d                                           ; $650d: $9a
	ld   a, c                                        ; $650e: $79
	ld   [bc], a                                     ; $650f: $02
	add  hl, bc                                      ; $6510: $09
	ld   d, [hl]                                     ; $6511: $56
	sub  a                                           ; $6512: $97
	sbc  d                                           ; $6513: $9a
	sbc  c                                           ; $6514: $99
	sub  [hl]                                        ; $6515: $96
	ld   d, h                                        ; $6516: $54
	ld   a, c                                        ; $6517: $79
	dec  c                                           ; $6518: $0d
	ld   e, d                                        ; $6519: $5a
	and  c                                           ; $651a: $a1
	ld   a, [hl]                                     ; $651b: $7e
	sbc  c                                           ; $651c: $99
	and  c                                           ; $651d: $a1
	ld   l, [hl]                                     ; $651e: $6e
	ld   l, h                                        ; $651f: $6c
	sbc  a                                           ; $6520: $9f
	dec  c                                           ; $6521: $0d
	nop                                              ; $6522: $00
	ld   a, [bc]                                     ; $6523: $0a
	ld   b, $1c                                      ; $6524: $06 $1c
	ld   a, [bc]                                     ; $6526: $0a
	rrca                                             ; $6527: $0f
	nop                                              ; $6528: $00
	ld   bc, $df01                                   ; $6529: $01 $01 $df
	db   $ec                                         ; $652c: $ec
	and  e                                           ; $652d: $a3
	ld   h, e                                        ; $652e: $63
	and  c                                           ; $652f: $a1
	ld   a, h                                        ; $6530: $7c
	inc  b                                           ; $6531: $04
	ld   l, l                                        ; $6532: $6d
	add  [hl]                                        ; $6533: $86
	ld   a, h                                        ; $6534: $7c
	inc  b                                           ; $6535: $04
	ld   d, a                                        ; $6536: $57
	inc  b                                           ; $6537: $04
	ld   h, e                                        ; $6538: $63
	ld   [hl], c                                     ; $6539: $71
	ld   [hl], h                                     ; $653a: $74
	dec  c                                           ; $653b: $0d
	ld   [hl], a                                     ; $653c: $77
	ld   d, h                                        ; $653d: $54
	ld   a, b                                        ; $653e: $78
	and  c                                           ; $653f: $a1
	ld   [hl], l                                     ; $6540: $75

jr_057_6541:
	ld   h, l                                        ; $6541: $65
	sub  l                                           ; $6542: $95
	ld   d, h                                        ; $6543: $54
	ld   e, c                                        ; $6544: $59
	ld   sp, hl                                      ; $6545: $f9
	dec  c                                           ; $6546: $0d
	nop                                              ; $6547: $00
	ld   a, [bc]                                     ; $6548: $0a
	rrca                                             ; $6549: $0f
	add  hl, bc                                      ; $654a: $09
	nop                                              ; $654b: $00
	ld   bc, $8e83                                   ; $654c: $01 $83 $8e
	sbc  [hl]                                        ; $654f: $9e
	ld   l, e                                        ; $6550: $6b
	ld   d, h                                        ; $6551: $54
	ld   l, [hl]                                     ; $6552: $6e
	ld   a, b                                        ; $6553: $78
	rst  $38                                         ; $6554: $ff
	rst  $38                                         ; $6555: $ff
	dec  c                                           ; $6556: $0d
	nop                                              ; $6557: $00
	ld   a, [bc]                                     ; $6558: $0a
	rlca                                             ; $6559: $07
	ld   d, $06                                      ; $655a: $16 $06
	inc  bc                                          ; $655c: $03
	inc  de                                          ; $655d: $13
	ld   bc, $2373                                   ; $655e: $01 $73 $23
	nop                                              ; $6561: $00
	rlca                                             ; $6562: $07
	ld   h, e                                        ; $6563: $63
	ld   b, $03                                      ; $6564: $06 $03
	inc  de                                          ; $6566: $13
	ld   bc, $25c4                                   ; $6567: $01 $c4 $25
	nop                                              ; $656a: $00
	ld   bc, $ecdf                                   ; $656b: $01 $df $ec
	and  e                                           ; $656e: $a3
	ld   a, h                                        ; $656f: $7c
	sbc  [hl]                                        ; $6570: $9e
	ld   [$5d00], sp                                 ; $6571: $08 $00 $5d
	and  c                                           ; $6574: $a1
	dec  c                                           ; $6575: $0d
	add  [hl]                                        ; $6576: $86
	ld   a, h                                        ; $6577: $7c
	inc  b                                           ; $6578: $04
	ld   d, a                                        ; $6579: $57
	inc  b                                           ; $657a: $04
	ld   h, e                                        ; $657b: $63
	ld   a, l                                        ; $657c: $7d
	sbc  [hl]                                        ; $657d: $9e
	adc  h                                           ; $657e: $8c
	ld   d, b                                        ; $657f: $50
	adc  h                                           ; $6580: $8c
	ld   d, b                                        ; $6581: $50
	dec  c                                           ; $6582: $0d
	halt                                             ; $6583: $76
	ld   d, d                                        ; $6584: $52
	ld   [hl], c                                     ; $6585: $71
	ld   l, l                                        ; $6586: $6d
	halt                                             ; $6587: $76
	ld   h, c                                        ; $6588: $61
	sbc  e                                           ; $6589: $9b
	ld   e, c                                        ; $658a: $59
	ld   a, b                                        ; $658b: $78
	sbc  a                                           ; $658c: $9f
	dec  c                                           ; $658d: $0d
	nop                                              ; $658e: $00
	ld   a, [bc]                                     ; $658f: $0a
	ld   bc, $5d76                                   ; $6590: $01 $76 $5d
	ld   a, c                                        ; $6593: $79
	ld   [bc], a                                     ; $6594: $02
	jr   z, jr_057_65e9                              ; $6595: $28 $52

Call_057_6597:
	dec  b                                           ; $6597: $05
	jr   nz, @-$6e                                   ; $6598: $20 $90

	ld   [bc], a                                     ; $659a: $02
	jp   nz, Jump_057_7859                           ; $659b: $c2 $59 $78

	ld   d, d                                        ; $659e: $52
	ld   h, l                                        ; $659f: $65
	rst  $38                                         ; $65a0: $ff
	rst  $38                                         ; $65a1: $ff
	dec  c                                           ; $65a2: $0d
	ld   e, c                                        ; $65a3: $59
	halt                                             ; $65a4: $76
	ld   d, d                                        ; $65a5: $52
	ld   [hl], c                                     ; $65a6: $71
	ld   [hl], h                                     ; $65a7: $74
	sbc  [hl]                                        ; $65a8: $9e
	ld   d, d                                        ; $65a9: $52
	ld   d, d                                        ; $65aa: $52
	halt                                             ; $65ab: $76
	ld   d, d                                        ; $65ac: $52
	ld   d, h                                        ; $65ad: $54
	dec  b                                           ; $65ae: $05
	jr   nz, jr_057_6541                             ; $65af: $20 $90

	dec  c                                           ; $65b1: $0d
	ld   [bc], a                                     ; $65b2: $02
	jp   nz, Jump_057_7859                           ; $65b3: $c2 $59 $78

	ld   d, d                                        ; $65b6: $52
	ld   a, b                                        ; $65b7: $78
	sbc  a                                           ; $65b8: $9f
	dec  c                                           ; $65b9: $0d
	nop                                              ; $65ba: $00
	ld   a, [bc]                                     ; $65bb: $0a
	ld   b, $1c                                      ; $65bc: $06 $1c
	ld   a, [bc]                                     ; $65be: $0a
	ld   bc, $ecdf                                   ; $65bf: $01 $df $ec
	and  e                                           ; $65c2: $a3
	ld   a, h                                        ; $65c3: $7c
	sbc  [hl]                                        ; $65c4: $9e
	ld   [$5d00], sp                                 ; $65c5: $08 $00 $5d
	and  c                                           ; $65c8: $a1
	dec  c                                           ; $65c9: $0d
	add  [hl]                                        ; $65ca: $86
	ld   a, h                                        ; $65cb: $7c
	inc  b                                           ; $65cc: $04
	ld   d, a                                        ; $65cd: $57
	inc  b                                           ; $65ce: $04
	ld   h, e                                        ; $65cf: $63
	ld   a, l                                        ; $65d0: $7d
	rst  $38                                         ; $65d1: $ff
	rst  $38                                         ; $65d2: $ff
	dec  c                                           ; $65d3: $0d
	ld   d, b                                        ; $65d4: $50
	adc  h                                           ; $65d5: $8c
	sbc  b                                           ; $65d6: $98
	sub  [hl]                                        ; $65d7: $96
	ld   e, l                                        ; $65d8: $5d
	ld   a, b                                        ; $65d9: $78
	ld   d, d                                        ; $65da: $52
	ld   a, b                                        ; $65db: $78
	sbc  a                                           ; $65dc: $9f
	dec  c                                           ; $65dd: $0d
	nop                                              ; $65de: $00
	ld   a, [bc]                                     ; $65df: $0a
	ld   bc, $7190                                   ; $65e0: $01 $90 $71
	halt                                             ; $65e3: $76
	ld   [bc], a                                     ; $65e4: $02
	ld   a, [de]                                     ; $65e5: $1a
	inc  bc                                          ; $65e6: $03
	ld   l, e                                        ; $65e7: $6b
	ld   a, h                                        ; $65e8: $7c

jr_057_65e9:
	ld   [bc], a                                     ; $65e9: $02
	and  c                                           ; $65ea: $a1
	inc  bc                                          ; $65eb: $03
	and  b                                           ; $65ec: $a0
	ld   l, a                                        ; $65ed: $6f
	and  b                                           ; $65ee: $a0
	dec  c                                           ; $65ef: $0d
	ld   [bc], a                                     ; $65f0: $02
	ld   h, l                                        ; $65f1: $65
	ld   d, [hl]                                     ; $65f2: $56
	ld   [hl], h                                     ; $65f3: $74
	ld   [bc], a                                     ; $65f4: $02
	ld   a, a                                        ; $65f5: $7f
	inc  b                                           ; $65f6: $04
	dec  de                                          ; $65f7: $1b
	ld   h, l                                        ; $65f8: $65
	ld   l, l                                        ; $65f9: $6d
	adc  c                                           ; $65fa: $89
	ld   d, h                                        ; $65fb: $54
	ld   e, d                                        ; $65fc: $5a
	ld   d, d                                        ; $65fd: $52
	ld   d, d                                        ; $65fe: $52
	halt                                             ; $65ff: $76
	dec  c                                           ; $6600: $0d
	dec  b                                           ; $6601: $05
	pop  de                                          ; $6602: $d1
	ld   d, h                                        ; $6603: $54
	ld   l, h                                        ; $6604: $6c
	sbc  a                                           ; $6605: $9f
	dec  c                                           ; $6606: $0d
	nop                                              ; $6607: $00
	ld   a, [bc]                                     ; $6608: $0a
	ld   b, $1c                                      ; $6609: $06 $1c
	ld   a, [bc]                                     ; $660b: $0a
	ld   bc, $ecdf                                   ; $660c: $01 $df $ec
	and  e                                           ; $660f: $a3
	ld   a, h                                        ; $6610: $7c
	sbc  [hl]                                        ; $6611: $9e
	ld   [$5d00], sp                                 ; $6612: $08 $00 $5d
	and  c                                           ; $6615: $a1
	dec  c                                           ; $6616: $0d
	add  [hl]                                        ; $6617: $86
	ld   a, h                                        ; $6618: $7c
	inc  b                                           ; $6619: $04
	ld   d, a                                        ; $661a: $57
	inc  b                                           ; $661b: $04
	ld   h, e                                        ; $661c: $63
	ld   a, l                                        ; $661d: $7d
	sbc  [hl]                                        ; $661e: $9e
	ld   e, c                                        ; $661f: $59
	ld   a, b                                        ; $6620: $78
	sbc  b                                           ; $6621: $98
	ld   d, d                                        ; $6622: $52
	ld   d, d                                        ; $6623: $52
	dec  c                                           ; $6624: $0d
	halt                                             ; $6625: $76
	dec  b                                           ; $6626: $05
	pop  de                                          ; $6627: $d1
	ld   d, h                                        ; $6628: $54
	ld   l, h                                        ; $6629: $6c
	sbc  a                                           ; $662a: $9f
	dec  c                                           ; $662b: $0d
	nop                                              ; $662c: $00
	ld   a, [bc]                                     ; $662d: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $662e: $01 $02 $ca
	sub  b                                           ; $6631: $90
	ld   l, e                                        ; $6632: $6b
	sbc  d                                           ; $6633: $9a
	ld   a, c                                        ; $6634: $79
	ld   [bc], a                                     ; $6635: $02
	add  hl, bc                                      ; $6636: $09
	ld   d, [hl]                                     ; $6637: $56
	sub  a                                           ; $6638: $97
	sbc  d                                           ; $6639: $9a
	sbc  c                                           ; $663a: $99
	sub  [hl]                                        ; $663b: $96
	ld   d, h                                        ; $663c: $54
	ld   a, c                                        ; $663d: $79
	dec  c                                           ; $663e: $0d
	ld   e, d                                        ; $663f: $5a
	and  c                                           ; $6640: $a1
	ld   a, [hl]                                     ; $6641: $7e
	sbc  c                                           ; $6642: $99
	and  c                                           ; $6643: $a1
	ld   l, [hl]                                     ; $6644: $6e
	ld   l, h                                        ; $6645: $6c
	sbc  a                                           ; $6646: $9f
	dec  c                                           ; $6647: $0d
	nop                                              ; $6648: $00
	ld   a, [bc]                                     ; $6649: $0a
	ld   b, $1c                                      ; $664a: $06 $1c
	ld   a, [bc]                                     ; $664c: $0a
	rrca                                             ; $664d: $0f
	nop                                              ; $664e: $00
	ld   bc, $a301                                   ; $664f: $01 $01 $a3
	and  l                                           ; $6652: $a5
	db   $ec                                         ; $6653: $ec
	cp   d                                           ; $6654: $ba
	ld   a, h                                        ; $6655: $7c
	inc  b                                           ; $6656: $04
	ld   l, l                                        ; $6657: $6d
	add  [hl]                                        ; $6658: $86
	ld   a, h                                        ; $6659: $7c
	inc  b                                           ; $665a: $04
	ld   d, a                                        ; $665b: $57
	inc  b                                           ; $665c: $04
	ld   h, e                                        ; $665d: $63
	ld   [hl], c                                     ; $665e: $71
	ld   [hl], h                                     ; $665f: $74
	dec  c                                           ; $6660: $0d
	ld   [hl], a                                     ; $6661: $77
	ld   d, h                                        ; $6662: $54
	ld   a, b                                        ; $6663: $78
	and  c                                           ; $6664: $a1
	ld   [hl], l                                     ; $6665: $75
	ld   h, l                                        ; $6666: $65

jr_057_6667:
	sub  l                                           ; $6667: $95
	ld   d, h                                        ; $6668: $54
	ld   e, c                                        ; $6669: $59
	ld   sp, hl                                      ; $666a: $f9
	dec  c                                           ; $666b: $0d
	nop                                              ; $666c: $00
	ld   a, [bc]                                     ; $666d: $0a
	rrca                                             ; $666e: $0f
	add  hl, bc                                      ; $666f: $09
	nop                                              ; $6670: $00
	ld   bc, $8e83                                   ; $6671: $01 $83 $8e
	sbc  [hl]                                        ; $6674: $9e
	ld   l, e                                        ; $6675: $6b
	ld   d, h                                        ; $6676: $54
	ld   l, [hl]                                     ; $6677: $6e
	ld   a, b                                        ; $6678: $78
	rst  $38                                         ; $6679: $ff
	rst  $38                                         ; $667a: $ff
	dec  c                                           ; $667b: $0d
	nop                                              ; $667c: $00
	ld   a, [bc]                                     ; $667d: $0a
	rlca                                             ; $667e: $07
	inc  a                                           ; $667f: $3c
	rlca                                             ; $6680: $07
	inc  bc                                          ; $6681: $03
	inc  d                                           ; $6682: $14
	ld   bc, $2373                                   ; $6683: $01 $73 $23
	nop                                              ; $6686: $00
	rlca                                             ; $6687: $07
	adc  d                                           ; $6688: $8a
	rlca                                             ; $6689: $07
	inc  bc                                          ; $668a: $03
	inc  d                                           ; $668b: $14
	ld   bc, $25c4                                   ; $668c: $01 $c4 $25
	nop                                              ; $668f: $00
	ld   bc, $a5a3                                   ; $6690: $01 $a3 $a5
	db   $ec                                         ; $6693: $ec
	cp   d                                           ; $6694: $ba
	ld   a, h                                        ; $6695: $7c
	sbc  [hl]                                        ; $6696: $9e
	ld   [$5d00], sp                                 ; $6697: $08 $00 $5d
	and  c                                           ; $669a: $a1
	dec  c                                           ; $669b: $0d
	add  [hl]                                        ; $669c: $86
	ld   a, h                                        ; $669d: $7c
	inc  b                                           ; $669e: $04
	ld   d, a                                        ; $669f: $57
	inc  b                                           ; $66a0: $04
	ld   h, e                                        ; $66a1: $63
	ld   a, l                                        ; $66a2: $7d
	sbc  [hl]                                        ; $66a3: $9e
	adc  h                                           ; $66a4: $8c
	ld   d, b                                        ; $66a5: $50
	adc  h                                           ; $66a6: $8c
	ld   d, b                                        ; $66a7: $50
	dec  c                                           ; $66a8: $0d
	halt                                             ; $66a9: $76
	ld   d, d                                        ; $66aa: $52
	ld   [hl], c                                     ; $66ab: $71
	ld   l, l                                        ; $66ac: $6d
	halt                                             ; $66ad: $76
	ld   h, c                                        ; $66ae: $61
	sbc  e                                           ; $66af: $9b
	ld   e, c                                        ; $66b0: $59
	ld   a, b                                        ; $66b1: $78
	sbc  a                                           ; $66b2: $9f
	dec  c                                           ; $66b3: $0d
	nop                                              ; $66b4: $00
	ld   a, [bc]                                     ; $66b5: $0a
	ld   bc, $5d76                                   ; $66b6: $01 $76 $5d
	ld   a, c                                        ; $66b9: $79
	ld   [bc], a                                     ; $66ba: $02
	jr   z, jr_057_670f                              ; $66bb: $28 $52

	dec  b                                           ; $66bd: $05
	jr   nz, @-$6e                                   ; $66be: $20 $90

	ld   [bc], a                                     ; $66c0: $02
	jp   nz, Jump_057_7859                           ; $66c1: $c2 $59 $78

	ld   d, d                                        ; $66c4: $52
	ld   h, l                                        ; $66c5: $65
	rst  $38                                         ; $66c6: $ff
	rst  $38                                         ; $66c7: $ff
	dec  c                                           ; $66c8: $0d
	ld   e, c                                        ; $66c9: $59
	halt                                             ; $66ca: $76
	ld   d, d                                        ; $66cb: $52
	ld   [hl], c                                     ; $66cc: $71
	ld   [hl], h                                     ; $66cd: $74
	sbc  [hl]                                        ; $66ce: $9e
	ld   d, d                                        ; $66cf: $52
	ld   d, d                                        ; $66d0: $52
	halt                                             ; $66d1: $76
	ld   d, d                                        ; $66d2: $52
	ld   d, h                                        ; $66d3: $54
	dec  b                                           ; $66d4: $05
	jr   nz, jr_057_6667                             ; $66d5: $20 $90

	dec  c                                           ; $66d7: $0d
	ld   [bc], a                                     ; $66d8: $02
	jp   nz, Jump_057_7859                           ; $66d9: $c2 $59 $78

	ld   d, d                                        ; $66dc: $52
	ld   a, b                                        ; $66dd: $78
	sbc  a                                           ; $66de: $9f
	dec  c                                           ; $66df: $0d
	nop                                              ; $66e0: $00
	ld   a, [bc]                                     ; $66e1: $0a
	ld   b, $1c                                      ; $66e2: $06 $1c
	ld   a, [bc]                                     ; $66e4: $0a
	ld   bc, $a5a3                                   ; $66e5: $01 $a3 $a5
	db   $ec                                         ; $66e8: $ec
	cp   d                                           ; $66e9: $ba
	ld   a, h                                        ; $66ea: $7c
	sbc  [hl]                                        ; $66eb: $9e
	ld   [$5d00], sp                                 ; $66ec: $08 $00 $5d
	and  c                                           ; $66ef: $a1
	dec  c                                           ; $66f0: $0d
	add  [hl]                                        ; $66f1: $86
	ld   a, h                                        ; $66f2: $7c
	inc  b                                           ; $66f3: $04
	ld   d, a                                        ; $66f4: $57
	inc  b                                           ; $66f5: $04
	ld   h, e                                        ; $66f6: $63
	ld   a, l                                        ; $66f7: $7d
	rst  $38                                         ; $66f8: $ff
	rst  $38                                         ; $66f9: $ff
	dec  c                                           ; $66fa: $0d
	ld   d, b                                        ; $66fb: $50
	adc  h                                           ; $66fc: $8c
	sbc  b                                           ; $66fd: $98
	sub  [hl]                                        ; $66fe: $96
	ld   e, l                                        ; $66ff: $5d
	ld   a, b                                        ; $6700: $78
	ld   d, d                                        ; $6701: $52
	ld   a, b                                        ; $6702: $78
	sbc  a                                           ; $6703: $9f
	dec  c                                           ; $6704: $0d
	nop                                              ; $6705: $00
	ld   a, [bc]                                     ; $6706: $0a
	ld   bc, $7190                                   ; $6707: $01 $90 $71
	halt                                             ; $670a: $76
	ld   [bc], a                                     ; $670b: $02
	ld   a, [de]                                     ; $670c: $1a
	inc  bc                                          ; $670d: $03
	ld   l, e                                        ; $670e: $6b

jr_057_670f:
	ld   a, h                                        ; $670f: $7c
	ld   [bc], a                                     ; $6710: $02
	and  c                                           ; $6711: $a1
	inc  bc                                          ; $6712: $03
	and  b                                           ; $6713: $a0
	ld   l, a                                        ; $6714: $6f
	and  b                                           ; $6715: $a0
	dec  c                                           ; $6716: $0d
	ld   [bc], a                                     ; $6717: $02
	ld   h, l                                        ; $6718: $65
	ld   d, [hl]                                     ; $6719: $56
	ld   [hl], h                                     ; $671a: $74
	ld   [bc], a                                     ; $671b: $02
	ld   a, a                                        ; $671c: $7f
	inc  b                                           ; $671d: $04
	dec  de                                          ; $671e: $1b
	ld   h, l                                        ; $671f: $65
	ld   l, l                                        ; $6720: $6d
	adc  c                                           ; $6721: $89
	ld   d, h                                        ; $6722: $54
	ld   e, d                                        ; $6723: $5a
	ld   d, d                                        ; $6724: $52
	ld   d, d                                        ; $6725: $52
	halt                                             ; $6726: $76
	dec  c                                           ; $6727: $0d
	dec  b                                           ; $6728: $05
	pop  de                                          ; $6729: $d1
	ld   d, h                                        ; $672a: $54
	ld   l, h                                        ; $672b: $6c
	sbc  a                                           ; $672c: $9f
	dec  c                                           ; $672d: $0d
	nop                                              ; $672e: $00
	ld   a, [bc]                                     ; $672f: $0a
	ld   b, $1c                                      ; $6730: $06 $1c
	ld   a, [bc]                                     ; $6732: $0a
	ld   bc, $a5a3                                   ; $6733: $01 $a3 $a5
	db   $ec                                         ; $6736: $ec
	cp   d                                           ; $6737: $ba
	ld   a, h                                        ; $6738: $7c
	sbc  [hl]                                        ; $6739: $9e
	ld   [$5d00], sp                                 ; $673a: $08 $00 $5d
	and  c                                           ; $673d: $a1
	dec  c                                           ; $673e: $0d
	add  [hl]                                        ; $673f: $86
	ld   a, h                                        ; $6740: $7c
	inc  b                                           ; $6741: $04
	ld   d, a                                        ; $6742: $57
	inc  b                                           ; $6743: $04
	ld   h, e                                        ; $6744: $63
	ld   a, l                                        ; $6745: $7d
	sbc  [hl]                                        ; $6746: $9e
	ld   e, c                                        ; $6747: $59
	ld   a, b                                        ; $6748: $78
	sbc  b                                           ; $6749: $98
	ld   d, d                                        ; $674a: $52
	ld   d, d                                        ; $674b: $52
	dec  c                                           ; $674c: $0d
	halt                                             ; $674d: $76
	dec  b                                           ; $674e: $05
	pop  de                                          ; $674f: $d1
	ld   d, h                                        ; $6750: $54
	ld   l, h                                        ; $6751: $6c
	sbc  a                                           ; $6752: $9f
	dec  c                                           ; $6753: $0d
	nop                                              ; $6754: $00
	ld   a, [bc]                                     ; $6755: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $6756: $01 $02 $ca
	sub  b                                           ; $6759: $90
	ld   l, e                                        ; $675a: $6b
	sbc  d                                           ; $675b: $9a
	ld   a, c                                        ; $675c: $79
	ld   [bc], a                                     ; $675d: $02
	add  hl, bc                                      ; $675e: $09
	ld   d, [hl]                                     ; $675f: $56
	sub  a                                           ; $6760: $97
	sbc  d                                           ; $6761: $9a
	sbc  c                                           ; $6762: $99
	sub  [hl]                                        ; $6763: $96
	ld   d, h                                        ; $6764: $54
	ld   a, c                                        ; $6765: $79
	dec  c                                           ; $6766: $0d
	ld   e, d                                        ; $6767: $5a
	and  c                                           ; $6768: $a1
	ld   a, [hl]                                     ; $6769: $7e
	sbc  c                                           ; $676a: $99
	and  c                                           ; $676b: $a1
	ld   l, [hl]                                     ; $676c: $6e
	ld   l, h                                        ; $676d: $6c
	sbc  a                                           ; $676e: $9f
	dec  c                                           ; $676f: $0d
	nop                                              ; $6770: $00
	ld   a, [bc]                                     ; $6771: $0a
	ld   b, $1c                                      ; $6772: $06 $1c
	ld   a, [bc]                                     ; $6774: $0a
	rrca                                             ; $6775: $0f

Call_057_6776:
	nop                                              ; $6776: $00
	ld   bc, $0201                                   ; $6777: $01 $01 $02

jr_057_677a:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $677a: $cf
	dec  b                                           ; $677b: $05
	ld   a, [de]                                     ; $677c: $1a
	ld   h, e                                        ; $677d: $63
	and  c                                           ; $677e: $a1
	ld   a, h                                        ; $677f: $7c
	inc  b                                           ; $6780: $04
	ld   l, l                                        ; $6781: $6d
	add  [hl]                                        ; $6782: $86
	ld   a, h                                        ; $6783: $7c
	inc  b                                           ; $6784: $04
	ld   d, a                                        ; $6785: $57
	inc  b                                           ; $6786: $04
	ld   h, e                                        ; $6787: $63
	ld   [hl], c                                     ; $6788: $71
	ld   [hl], h                                     ; $6789: $74
	dec  c                                           ; $678a: $0d
	ld   [hl], a                                     ; $678b: $77
	ld   d, h                                        ; $678c: $54
	ld   a, b                                        ; $678d: $78
	and  c                                           ; $678e: $a1
	ld   [hl], l                                     ; $678f: $75
	ld   h, l                                        ; $6790: $65

jr_057_6791:
	sub  l                                           ; $6791: $95
	ld   d, h                                        ; $6792: $54
	ld   e, c                                        ; $6793: $59
	ld   sp, hl                                      ; $6794: $f9
	dec  c                                           ; $6795: $0d
	nop                                              ; $6796: $00
	ld   a, [bc]                                     ; $6797: $0a
	rrca                                             ; $6798: $0f
	add  hl, bc                                      ; $6799: $09
	nop                                              ; $679a: $00
	ld   bc, $8e83                                   ; $679b: $01 $83 $8e
	sbc  [hl]                                        ; $679e: $9e
	ld   l, e                                        ; $679f: $6b
	ld   d, h                                        ; $67a0: $54
	ld   l, [hl]                                     ; $67a1: $6e
	ld   a, b                                        ; $67a2: $78
	rst  $38                                         ; $67a3: $ff
	rst  $38                                         ; $67a4: $ff
	dec  c                                           ; $67a5: $0d
	nop                                              ; $67a6: $00
	ld   a, [bc]                                     ; $67a7: $0a
	rlca                                             ; $67a8: $07
	ld   h, [hl]                                     ; $67a9: $66
	ld   [$1503], sp                                 ; $67aa: $08 $03 $15
	ld   bc, $2373                                   ; $67ad: $01 $73 $23
	nop                                              ; $67b0: $00
	rlca                                             ; $67b1: $07
	or   h                                           ; $67b2: $b4
	ld   [$1503], sp                                 ; $67b3: $08 $03 $15
	ld   bc, $25c4                                   ; $67b6: $01 $c4 $25
	nop                                              ; $67b9: $00
	ld   bc, $cf02                                   ; $67ba: $01 $02 $cf
	dec  b                                           ; $67bd: $05
	ld   a, [de]                                     ; $67be: $1a
	ld   a, h                                        ; $67bf: $7c
	sbc  [hl]                                        ; $67c0: $9e
	ld   [$5d00], sp                                 ; $67c1: $08 $00 $5d
	and  c                                           ; $67c4: $a1
	dec  c                                           ; $67c5: $0d
	add  [hl]                                        ; $67c6: $86
	ld   a, h                                        ; $67c7: $7c
	inc  b                                           ; $67c8: $04
	ld   d, a                                        ; $67c9: $57
	inc  b                                           ; $67ca: $04
	ld   h, e                                        ; $67cb: $63
	ld   a, l                                        ; $67cc: $7d
	sbc  [hl]                                        ; $67cd: $9e
	adc  h                                           ; $67ce: $8c
	ld   d, b                                        ; $67cf: $50
	adc  h                                           ; $67d0: $8c
	ld   d, b                                        ; $67d1: $50
	dec  c                                           ; $67d2: $0d
	halt                                             ; $67d3: $76
	ld   d, d                                        ; $67d4: $52
	ld   [hl], c                                     ; $67d5: $71
	ld   l, l                                        ; $67d6: $6d
	halt                                             ; $67d7: $76
	ld   h, c                                        ; $67d8: $61
	sbc  e                                           ; $67d9: $9b
	ld   e, c                                        ; $67da: $59
	ld   a, b                                        ; $67db: $78
	sbc  a                                           ; $67dc: $9f
	dec  c                                           ; $67dd: $0d
	nop                                              ; $67de: $00
	ld   a, [bc]                                     ; $67df: $0a
	ld   bc, $5d76                                   ; $67e0: $01 $76 $5d
	ld   a, c                                        ; $67e3: $79
	ld   [bc], a                                     ; $67e4: $02
	jr   z, jr_057_6839                              ; $67e5: $28 $52

	dec  b                                           ; $67e7: $05
	jr   nz, jr_057_677a                             ; $67e8: $20 $90

	ld   [bc], a                                     ; $67ea: $02
	jp   nz, Jump_057_7859                           ; $67eb: $c2 $59 $78

	ld   d, d                                        ; $67ee: $52
	ld   h, l                                        ; $67ef: $65
	rst  $38                                         ; $67f0: $ff
	rst  $38                                         ; $67f1: $ff
	dec  c                                           ; $67f2: $0d
	ld   e, c                                        ; $67f3: $59
	halt                                             ; $67f4: $76
	ld   d, d                                        ; $67f5: $52
	ld   [hl], c                                     ; $67f6: $71
	ld   [hl], h                                     ; $67f7: $74
	sbc  [hl]                                        ; $67f8: $9e
	ld   d, d                                        ; $67f9: $52
	ld   d, d                                        ; $67fa: $52
	halt                                             ; $67fb: $76
	ld   d, d                                        ; $67fc: $52
	ld   d, h                                        ; $67fd: $54
	dec  b                                           ; $67fe: $05
	jr   nz, jr_057_6791                             ; $67ff: $20 $90

	dec  c                                           ; $6801: $0d
	ld   [bc], a                                     ; $6802: $02
	jp   nz, Jump_057_7859                           ; $6803: $c2 $59 $78

	ld   d, d                                        ; $6806: $52
	ld   a, b                                        ; $6807: $78
	sbc  a                                           ; $6808: $9f
	dec  c                                           ; $6809: $0d
	nop                                              ; $680a: $00
	ld   a, [bc]                                     ; $680b: $0a
	ld   b, $1c                                      ; $680c: $06 $1c
	ld   a, [bc]                                     ; $680e: $0a
	ld   bc, $cf02                                   ; $680f: $01 $02 $cf
	dec  b                                           ; $6812: $05
	ld   a, [de]                                     ; $6813: $1a
	ld   a, h                                        ; $6814: $7c
	sbc  [hl]                                        ; $6815: $9e
	ld   [$5d00], sp                                 ; $6816: $08 $00 $5d
	and  c                                           ; $6819: $a1
	dec  c                                           ; $681a: $0d
	add  [hl]                                        ; $681b: $86
	ld   a, h                                        ; $681c: $7c
	inc  b                                           ; $681d: $04
	ld   d, a                                        ; $681e: $57
	inc  b                                           ; $681f: $04
	ld   h, e                                        ; $6820: $63
	ld   a, l                                        ; $6821: $7d
	rst  $38                                         ; $6822: $ff
	rst  $38                                         ; $6823: $ff
	dec  c                                           ; $6824: $0d
	ld   d, b                                        ; $6825: $50
	adc  h                                           ; $6826: $8c
	sbc  b                                           ; $6827: $98
	sub  [hl]                                        ; $6828: $96
	ld   e, l                                        ; $6829: $5d
	ld   a, b                                        ; $682a: $78
	ld   d, d                                        ; $682b: $52
	ld   a, b                                        ; $682c: $78
	sbc  a                                           ; $682d: $9f
	dec  c                                           ; $682e: $0d
	nop                                              ; $682f: $00
	ld   a, [bc]                                     ; $6830: $0a
	ld   bc, $7190                                   ; $6831: $01 $90 $71
	halt                                             ; $6834: $76
	ld   [bc], a                                     ; $6835: $02
	ld   a, [de]                                     ; $6836: $1a
	inc  bc                                          ; $6837: $03
	ld   l, e                                        ; $6838: $6b

jr_057_6839:
	ld   a, h                                        ; $6839: $7c
	ld   [bc], a                                     ; $683a: $02
	and  c                                           ; $683b: $a1
	inc  bc                                          ; $683c: $03
	and  b                                           ; $683d: $a0
	ld   l, a                                        ; $683e: $6f
	and  b                                           ; $683f: $a0
	dec  c                                           ; $6840: $0d
	ld   [bc], a                                     ; $6841: $02
	ld   h, l                                        ; $6842: $65
	ld   d, [hl]                                     ; $6843: $56
	ld   [hl], h                                     ; $6844: $74
	ld   [bc], a                                     ; $6845: $02
	ld   a, a                                        ; $6846: $7f
	inc  b                                           ; $6847: $04
	dec  de                                          ; $6848: $1b
	ld   h, l                                        ; $6849: $65
	ld   l, l                                        ; $684a: $6d
	adc  c                                           ; $684b: $89
	ld   d, h                                        ; $684c: $54
	ld   e, d                                        ; $684d: $5a
	ld   d, d                                        ; $684e: $52
	ld   d, d                                        ; $684f: $52
	halt                                             ; $6850: $76
	dec  c                                           ; $6851: $0d
	dec  b                                           ; $6852: $05
	pop  de                                          ; $6853: $d1
	ld   d, h                                        ; $6854: $54
	ld   l, h                                        ; $6855: $6c
	sbc  a                                           ; $6856: $9f
	dec  c                                           ; $6857: $0d
	nop                                              ; $6858: $00
	ld   a, [bc]                                     ; $6859: $0a
	ld   b, $1c                                      ; $685a: $06 $1c
	ld   a, [bc]                                     ; $685c: $0a
	ld   bc, $cf02                                   ; $685d: $01 $02 $cf
	dec  b                                           ; $6860: $05
	ld   a, [de]                                     ; $6861: $1a
	ld   a, h                                        ; $6862: $7c
	sbc  [hl]                                        ; $6863: $9e
	ld   [$5d00], sp                                 ; $6864: $08 $00 $5d
	and  c                                           ; $6867: $a1
	dec  c                                           ; $6868: $0d
	add  [hl]                                        ; $6869: $86
	ld   a, h                                        ; $686a: $7c
	inc  b                                           ; $686b: $04
	ld   d, a                                        ; $686c: $57
	inc  b                                           ; $686d: $04
	ld   h, e                                        ; $686e: $63
	ld   a, l                                        ; $686f: $7d
	sbc  [hl]                                        ; $6870: $9e
	ld   e, c                                        ; $6871: $59
	ld   a, b                                        ; $6872: $78
	sbc  b                                           ; $6873: $98
	ld   d, d                                        ; $6874: $52
	ld   d, d                                        ; $6875: $52
	dec  c                                           ; $6876: $0d
	halt                                             ; $6877: $76
	dec  b                                           ; $6878: $05
	pop  de                                          ; $6879: $d1
	ld   d, h                                        ; $687a: $54
	ld   l, h                                        ; $687b: $6c
	sbc  a                                           ; $687c: $9f
	dec  c                                           ; $687d: $0d
	nop                                              ; $687e: $00
	ld   a, [bc]                                     ; $687f: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $6880: $01 $02 $ca
	sub  b                                           ; $6883: $90
	ld   l, e                                        ; $6884: $6b
	sbc  d                                           ; $6885: $9a
	ld   a, c                                        ; $6886: $79
	ld   [bc], a                                     ; $6887: $02
	add  hl, bc                                      ; $6888: $09
	ld   d, [hl]                                     ; $6889: $56
	sub  a                                           ; $688a: $97
	sbc  d                                           ; $688b: $9a
	sbc  c                                           ; $688c: $99
	sub  [hl]                                        ; $688d: $96
	ld   d, h                                        ; $688e: $54
	ld   a, c                                        ; $688f: $79
	dec  c                                           ; $6890: $0d
	ld   e, d                                        ; $6891: $5a
	and  c                                           ; $6892: $a1
	ld   a, [hl]                                     ; $6893: $7e
	sbc  c                                           ; $6894: $99
	and  c                                           ; $6895: $a1
	ld   l, [hl]                                     ; $6896: $6e
	ld   l, h                                        ; $6897: $6c
	sbc  a                                           ; $6898: $9f
	dec  c                                           ; $6899: $0d
	nop                                              ; $689a: $00
	ld   a, [bc]                                     ; $689b: $0a
	ld   b, $1c                                      ; $689c: $06 $1c
	ld   a, [bc]                                     ; $689e: $0a
	rrca                                             ; $689f: $0f
	nop                                              ; $68a0: $00
	ld   bc, $ac01                                   ; $68a1: $01 $01 $ac
	push af                                          ; $68a4: $f5
	bit  4, e                                        ; $68a5: $cb $63
	and  c                                           ; $68a7: $a1
	ld   a, h                                        ; $68a8: $7c
	inc  b                                           ; $68a9: $04
	ld   l, l                                        ; $68aa: $6d
	add  [hl]                                        ; $68ab: $86
	ld   a, h                                        ; $68ac: $7c
	inc  b                                           ; $68ad: $04
	ld   d, a                                        ; $68ae: $57
	inc  b                                           ; $68af: $04
	ld   h, e                                        ; $68b0: $63
	ld   [hl], c                                     ; $68b1: $71
	ld   [hl], h                                     ; $68b2: $74
	dec  c                                           ; $68b3: $0d
	ld   [hl], a                                     ; $68b4: $77
	ld   d, h                                        ; $68b5: $54
	ld   a, b                                        ; $68b6: $78
	and  c                                           ; $68b7: $a1
	ld   [hl], l                                     ; $68b8: $75

jr_057_68b9:
	ld   h, l                                        ; $68b9: $65
	sub  l                                           ; $68ba: $95
	ld   d, h                                        ; $68bb: $54
	ld   e, c                                        ; $68bc: $59
	ld   sp, hl                                      ; $68bd: $f9
	dec  c                                           ; $68be: $0d
	nop                                              ; $68bf: $00
	ld   a, [bc]                                     ; $68c0: $0a
	rrca                                             ; $68c1: $0f
	add  hl, bc                                      ; $68c2: $09
	nop                                              ; $68c3: $00
	ld   bc, $8e83                                   ; $68c4: $01 $83 $8e
	sbc  [hl]                                        ; $68c7: $9e
	ld   l, e                                        ; $68c8: $6b
	ld   d, h                                        ; $68c9: $54
	ld   l, [hl]                                     ; $68ca: $6e
	ld   a, b                                        ; $68cb: $78
	rst  $38                                         ; $68cc: $ff
	rst  $38                                         ; $68cd: $ff
	dec  c                                           ; $68ce: $0d
	nop                                              ; $68cf: $00
	ld   a, [bc]                                     ; $68d0: $0a
	rlca                                             ; $68d1: $07
	adc  [hl]                                        ; $68d2: $8e
	add  hl, bc                                      ; $68d3: $09
	inc  bc                                          ; $68d4: $03
	ld   d, $01                                      ; $68d5: $16 $01
	ld   [hl], e                                     ; $68d7: $73
	inc  hl                                          ; $68d8: $23
	nop                                              ; $68d9: $00
	rlca                                             ; $68da: $07
	db   $db                                         ; $68db: $db
	add  hl, bc                                      ; $68dc: $09
	inc  bc                                          ; $68dd: $03
	ld   d, $01                                      ; $68de: $16 $01
	call nz, $0025                                   ; $68e0: $c4 $25 $00
	ld   bc, $f5ac                                   ; $68e3: $01 $ac $f5
	bit  7, h                                        ; $68e6: $cb $7c
	sbc  [hl]                                        ; $68e8: $9e
	ld   [$5d00], sp                                 ; $68e9: $08 $00 $5d
	and  c                                           ; $68ec: $a1
	dec  c                                           ; $68ed: $0d
	add  [hl]                                        ; $68ee: $86
	ld   a, h                                        ; $68ef: $7c
	inc  b                                           ; $68f0: $04
	ld   d, a                                        ; $68f1: $57
	inc  b                                           ; $68f2: $04
	ld   h, e                                        ; $68f3: $63
	ld   a, l                                        ; $68f4: $7d
	sbc  [hl]                                        ; $68f5: $9e
	adc  h                                           ; $68f6: $8c
	ld   d, b                                        ; $68f7: $50
	adc  h                                           ; $68f8: $8c
	ld   d, b                                        ; $68f9: $50
	dec  c                                           ; $68fa: $0d
	halt                                             ; $68fb: $76
	ld   d, d                                        ; $68fc: $52
	ld   [hl], c                                     ; $68fd: $71
	ld   l, l                                        ; $68fe: $6d
	halt                                             ; $68ff: $76
	ld   h, c                                        ; $6900: $61
	sbc  e                                           ; $6901: $9b
	ld   e, c                                        ; $6902: $59
	ld   a, b                                        ; $6903: $78
	sbc  a                                           ; $6904: $9f
	dec  c                                           ; $6905: $0d
	nop                                              ; $6906: $00
	ld   a, [bc]                                     ; $6907: $0a
	ld   bc, $5d76                                   ; $6908: $01 $76 $5d
	ld   a, c                                        ; $690b: $79
	ld   [bc], a                                     ; $690c: $02
	jr   z, jr_057_6961                              ; $690d: $28 $52

	dec  b                                           ; $690f: $05
	jr   nz, @-$6e                                   ; $6910: $20 $90

	ld   [bc], a                                     ; $6912: $02
	jp   nz, Jump_057_7859                           ; $6913: $c2 $59 $78

	ld   d, d                                        ; $6916: $52
	ld   h, l                                        ; $6917: $65
	rst  $38                                         ; $6918: $ff
	rst  $38                                         ; $6919: $ff
	dec  c                                           ; $691a: $0d
	ld   e, c                                        ; $691b: $59
	halt                                             ; $691c: $76
	ld   d, d                                        ; $691d: $52
	ld   [hl], c                                     ; $691e: $71
	ld   [hl], h                                     ; $691f: $74
	sbc  [hl]                                        ; $6920: $9e
	ld   d, d                                        ; $6921: $52
	ld   d, d                                        ; $6922: $52
	halt                                             ; $6923: $76
	ld   d, d                                        ; $6924: $52
	ld   d, h                                        ; $6925: $54
	dec  b                                           ; $6926: $05
	jr   nz, jr_057_68b9                             ; $6927: $20 $90

	dec  c                                           ; $6929: $0d
	ld   [bc], a                                     ; $692a: $02
	jp   nz, Jump_057_7859                           ; $692b: $c2 $59 $78

	ld   d, d                                        ; $692e: $52
	ld   a, b                                        ; $692f: $78
	sbc  a                                           ; $6930: $9f
	dec  c                                           ; $6931: $0d
	nop                                              ; $6932: $00
	ld   a, [bc]                                     ; $6933: $0a
	ld   b, $1c                                      ; $6934: $06 $1c
	ld   a, [bc]                                     ; $6936: $0a
	ld   bc, $f5ac                                   ; $6937: $01 $ac $f5
	bit  7, h                                        ; $693a: $cb $7c
	sbc  [hl]                                        ; $693c: $9e
	ld   [$5d00], sp                                 ; $693d: $08 $00 $5d
	and  c                                           ; $6940: $a1
	dec  c                                           ; $6941: $0d
	add  [hl]                                        ; $6942: $86
	ld   a, h                                        ; $6943: $7c
	inc  b                                           ; $6944: $04
	ld   d, a                                        ; $6945: $57
	inc  b                                           ; $6946: $04
	ld   h, e                                        ; $6947: $63
	ld   a, l                                        ; $6948: $7d
	rst  $38                                         ; $6949: $ff
	rst  $38                                         ; $694a: $ff
	dec  c                                           ; $694b: $0d
	ld   d, b                                        ; $694c: $50
	adc  h                                           ; $694d: $8c
	sbc  b                                           ; $694e: $98
	sub  [hl]                                        ; $694f: $96
	ld   e, l                                        ; $6950: $5d
	ld   a, b                                        ; $6951: $78
	ld   d, d                                        ; $6952: $52
	ld   a, b                                        ; $6953: $78
	sbc  a                                           ; $6954: $9f
	dec  c                                           ; $6955: $0d
	nop                                              ; $6956: $00
	ld   a, [bc]                                     ; $6957: $0a
	ld   bc, $7190                                   ; $6958: $01 $90 $71
	halt                                             ; $695b: $76
	ld   [bc], a                                     ; $695c: $02
	ld   a, [de]                                     ; $695d: $1a
	inc  bc                                          ; $695e: $03
	ld   l, e                                        ; $695f: $6b
	ld   a, h                                        ; $6960: $7c

jr_057_6961:
	ld   [bc], a                                     ; $6961: $02
	and  c                                           ; $6962: $a1
	inc  bc                                          ; $6963: $03
	and  b                                           ; $6964: $a0
	ld   l, a                                        ; $6965: $6f
	and  b                                           ; $6966: $a0
	dec  c                                           ; $6967: $0d
	ld   [bc], a                                     ; $6968: $02
	ld   h, l                                        ; $6969: $65
	ld   d, [hl]                                     ; $696a: $56
	ld   [hl], h                                     ; $696b: $74
	ld   [bc], a                                     ; $696c: $02
	ld   a, a                                        ; $696d: $7f
	inc  b                                           ; $696e: $04
	dec  de                                          ; $696f: $1b
	ld   h, l                                        ; $6970: $65
	ld   l, l                                        ; $6971: $6d
	adc  c                                           ; $6972: $89
	ld   d, h                                        ; $6973: $54
	ld   e, d                                        ; $6974: $5a
	ld   d, d                                        ; $6975: $52
	ld   d, d                                        ; $6976: $52
	halt                                             ; $6977: $76
	dec  c                                           ; $6978: $0d
	dec  b                                           ; $6979: $05
	pop  de                                          ; $697a: $d1
	ld   d, h                                        ; $697b: $54
	ld   l, h                                        ; $697c: $6c
	sbc  a                                           ; $697d: $9f
	dec  c                                           ; $697e: $0d
	nop                                              ; $697f: $00
	ld   a, [bc]                                     ; $6980: $0a
	ld   b, $1c                                      ; $6981: $06 $1c
	ld   a, [bc]                                     ; $6983: $0a
	ld   bc, $f5ac                                   ; $6984: $01 $ac $f5
	bit  7, h                                        ; $6987: $cb $7c
	sbc  [hl]                                        ; $6989: $9e
	ld   [$5d00], sp                                 ; $698a: $08 $00 $5d
	and  c                                           ; $698d: $a1
	dec  c                                           ; $698e: $0d
	add  [hl]                                        ; $698f: $86
	ld   a, h                                        ; $6990: $7c
	inc  b                                           ; $6991: $04
	ld   d, a                                        ; $6992: $57
	inc  b                                           ; $6993: $04
	ld   h, e                                        ; $6994: $63
	ld   a, l                                        ; $6995: $7d
	sbc  [hl]                                        ; $6996: $9e
	ld   e, c                                        ; $6997: $59
	ld   a, b                                        ; $6998: $78
	sbc  b                                           ; $6999: $98
	ld   d, d                                        ; $699a: $52
	ld   d, d                                        ; $699b: $52
	dec  c                                           ; $699c: $0d
	halt                                             ; $699d: $76
	dec  b                                           ; $699e: $05
	pop  de                                          ; $699f: $d1
	ld   d, h                                        ; $69a0: $54
	ld   l, h                                        ; $69a1: $6c
	sbc  a                                           ; $69a2: $9f
	dec  c                                           ; $69a3: $0d
	nop                                              ; $69a4: $00
	ld   a, [bc]                                     ; $69a5: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $69a6: $01 $02 $ca
	sub  b                                           ; $69a9: $90
	ld   l, e                                        ; $69aa: $6b
	sbc  d                                           ; $69ab: $9a
	ld   a, c                                        ; $69ac: $79
	ld   [bc], a                                     ; $69ad: $02
	add  hl, bc                                      ; $69ae: $09
	ld   d, [hl]                                     ; $69af: $56
	sub  a                                           ; $69b0: $97
	sbc  d                                           ; $69b1: $9a
	sbc  c                                           ; $69b2: $99
	sub  [hl]                                        ; $69b3: $96
	ld   d, h                                        ; $69b4: $54
	ld   a, c                                        ; $69b5: $79
	dec  c                                           ; $69b6: $0d
	ld   e, d                                        ; $69b7: $5a
	and  c                                           ; $69b8: $a1
	ld   a, [hl]                                     ; $69b9: $7e
	sbc  c                                           ; $69ba: $99
	and  c                                           ; $69bb: $a1
	ld   l, [hl]                                     ; $69bc: $6e
	ld   l, h                                        ; $69bd: $6c
	sbc  a                                           ; $69be: $9f
	dec  c                                           ; $69bf: $0d
	nop                                              ; $69c0: $00
	ld   a, [bc]                                     ; $69c1: $0a
	ld   b, $1c                                      ; $69c2: $06 $1c
	ld   a, [bc]                                     ; $69c4: $0a
	rrca                                             ; $69c5: $0f
	nop                                              ; $69c6: $00
	ld   bc, $6b01                                   ; $69c7: $01 $01 $6b
	ld   d, h                                        ; $69ca: $54
	ld   [hl], l                                     ; $69cb: $75
	ld   h, a                                        ; $69cc: $67
	ld   e, c                                        ; $69cd: $59
	rst  $38                                         ; $69ce: $ff
	rst  $38                                         ; $69cf: $ff
	dec  c                                           ; $69d0: $0d
	ld   d, b                                        ; $69d1: $50
	sbc  b                                           ; $69d2: $98
	ld   e, d                                        ; $69d3: $5a
	halt                                             ; $69d4: $76
	ld   d, h                                        ; $69d5: $54
	ld   h, d                                        ; $69d6: $62
	ld   h, h                                        ; $69d7: $64
	ld   d, d                                        ; $69d8: $52
	adc  h                                           ; $69d9: $8c
	ld   h, l                                        ; $69da: $65
	ld   l, l                                        ; $69db: $6d
	sbc  a                                           ; $69dc: $9f
	dec  c                                           ; $69dd: $0d
	nop                                              ; $69de: $00
	ld   a, [bc]                                     ; $69df: $0a
	rrca                                             ; $69e0: $0f
	add  hl, bc                                      ; $69e1: $09
	nop                                              ; $69e2: $00
	ld   bc, $a154                                   ; $69e3: $01 $54 $a1
	sbc  a                                           ; $69e6: $9f
	dec  c                                           ; $69e7: $0d
	ld   e, d                                        ; $69e8: $5a
	and  c                                           ; $69e9: $a1
	ld   a, [hl]                                     ; $69ea: $7e
	sbc  d                                           ; $69eb: $9a
	sub  [hl]                                        ; $69ec: $96
	sbc  a                                           ; $69ed: $9f
	dec  c                                           ; $69ee: $0d
	nop                                              ; $69ef: $00
	ld   a, [bc]                                     ; $69f0: $0a
	nop                                              ; $69f1: $00
	rrca                                             ; $69f2: $0f
	nop                                              ; $69f3: $00
	ld   bc, $5001                                   ; $69f4: $01 $01 $50
	ld   a, h                                        ; $69f7: $7c
	sbc  [hl]                                        ; $69f8: $9e
	inc  bc                                          ; $69f9: $03
	ld   l, l                                        ; $69fa: $6d
	dec  b                                           ; $69fb: $05
	add  hl, de                                      ; $69fc: $19
	ld   a, h                                        ; $69fd: $7c
	and  e                                           ; $69fe: $a3
	jp   z, $a5d1                                    ; $69ff: $ca $d1 $a5

	cp   d                                           ; $6a02: $ba
	and  b                                           ; $6a03: $a0
	dec  c                                           ; $6a04: $0d
	ld   e, b                                        ; $6a05: $58
	ld   [bc], a                                     ; $6a06: $02
	add  b                                           ; $6a07: $80
	ld   d, d                                        ; $6a08: $52
	ld   h, l                                        ; $6a09: $65
	ld   l, l                                        ; $6a0a: $6d
	ld   d, d                                        ; $6a0b: $52
	and  c                                           ; $6a0c: $a1
	ld   [hl], l                                     ; $6a0d: $75
	ld   h, a                                        ; $6a0e: $67
	ld   e, a                                        ; $6a0f: $5f
	ld   [hl], a                                     ; $6a10: $77
	sbc  a                                           ; $6a11: $9f
	dec  c                                           ; $6a12: $0d
	nop                                              ; $6a13: $00
	ld   a, [bc]                                     ; $6a14: $0a
	rrca                                             ; $6a15: $0f
	add  hl, bc                                      ; $6a16: $09
	nop                                              ; $6a17: $00
	ld   bc, $8e83                                   ; $6a18: $01 $83 $8e
	sbc  [hl]                                        ; $6a1b: $9e
	ld   l, e                                        ; $6a1c: $6b
	ld   d, h                                        ; $6a1d: $54
	ld   l, [hl]                                     ; $6a1e: $6e
	ld   a, b                                        ; $6a1f: $78
	rst  $38                                         ; $6a20: $ff
	rst  $38                                         ; $6a21: $ff
	dec  c                                           ; $6a22: $0d
	nop                                              ; $6a23: $00
	ld   a, [bc]                                     ; $6a24: $0a
	rlca                                             ; $6a25: $07
	ld   b, d                                        ; $6a26: $42
	dec  bc                                          ; $6a27: $0b
	inc  bc                                          ; $6a28: $03
	inc  hl                                          ; $6a29: $23
	ld   bc, $237d                                   ; $6a2a: $01 $7d $23
	inc  bc                                          ; $6a2d: $03
	inc  h                                           ; $6a2e: $24
	ld   bc, $237d                                   ; $6a2f: $01 $7d $23
	inc  e                                           ; $6a32: $1c
	inc  bc                                          ; $6a33: $03
	dec  h                                           ; $6a34: $25
	ld   bc, $237d                                   ; $6a35: $01 $7d $23
	inc  e                                           ; $6a38: $1c
	inc  bc                                          ; $6a39: $03
	ld   [hl+], a                                    ; $6a3a: $22
	ld   bc, $237d                                   ; $6a3b: $01 $7d $23
	inc  e                                           ; $6a3e: $1c
	inc  bc                                          ; $6a3f: $03
	ld   hl, $7d01                                   ; $6a40: $21 $01 $7d
	inc  hl                                          ; $6a43: $23
	inc  e                                           ; $6a44: $1c
	nop                                              ; $6a45: $00
	rlca                                             ; $6a46: $07
	or   [hl]                                        ; $6a47: $b6
	dec  bc                                          ; $6a48: $0b
	inc  bc                                          ; $6a49: $03
	inc  hl                                          ; $6a4a: $23
	ld   bc, $259f                                   ; $6a4b: $01 $9f $25
	inc  bc                                          ; $6a4e: $03
	inc  h                                           ; $6a4f: $24
	ld   bc, $259f                                   ; $6a50: $01 $9f $25
	inc  e                                           ; $6a53: $1c
	inc  bc                                          ; $6a54: $03
	dec  h                                           ; $6a55: $25
	ld   bc, $259f                                   ; $6a56: $01 $9f $25
	inc  e                                           ; $6a59: $1c
	inc  bc                                          ; $6a5a: $03
	ld   [hl+], a                                    ; $6a5b: $22
	ld   bc, $259f                                   ; $6a5c: $01 $9f $25
	inc  e                                           ; $6a5f: $1c
	inc  bc                                          ; $6a60: $03
	ld   hl, $9f01                                   ; $6a61: $21 $01 $9f
	dec  h                                           ; $6a64: $25
	inc  e                                           ; $6a65: $1c
	nop                                              ; $6a66: $00
	rlca                                             ; $6a67: $07
	ld   b, b                                        ; $6a68: $40
	inc  c                                           ; $6a69: $0c
	inc  bc                                          ; $6a6a: $03
	inc  hl                                          ; $6a6b: $23
	ld   bc, $238c                                   ; $6a6c: $01 $8c $23
	inc  bc                                          ; $6a6f: $03
	inc  h                                           ; $6a70: $24
	ld   bc, $238c                                   ; $6a71: $01 $8c $23
	inc  e                                           ; $6a74: $1c
	inc  bc                                          ; $6a75: $03
	dec  h                                           ; $6a76: $25
	ld   bc, $238c                                   ; $6a77: $01 $8c $23
	inc  e                                           ; $6a7a: $1c
	nop                                              ; $6a7b: $00
	rlca                                             ; $6a7c: $07
	ldh  a, [$0c]                                    ; $6a7d: $f0 $0c
	inc  bc                                          ; $6a7f: $03
	inc  h                                           ; $6a80: $24
	inc  bc                                          ; $6a81: $03
	inc  hl                                          ; $6a82: $23
	inc  hl                                          ; $6a83: $23
	inc  bc                                          ; $6a84: $03
	inc  h                                           ; $6a85: $24
	inc  bc                                          ; $6a86: $03
	dec  h                                           ; $6a87: $25
	inc  hl                                          ; $6a88: $23
	inc  e                                           ; $6a89: $1c
	inc  bc                                          ; $6a8a: $03
	inc  h                                           ; $6a8b: $24
	inc  bc                                          ; $6a8c: $03
	ld   [hl+], a                                    ; $6a8d: $22
	inc  hl                                          ; $6a8e: $23
	inc  e                                           ; $6a8f: $1c
	inc  bc                                          ; $6a90: $03
	inc  h                                           ; $6a91: $24
	inc  bc                                          ; $6a92: $03
	ld   hl, $1c23                                   ; $6a93: $21 $23 $1c
	nop                                              ; $6a96: $00
	rlca                                             ; $6a97: $07
	adc  h                                           ; $6a98: $8c
	dec  c                                           ; $6a99: $0d
	inc  bc                                          ; $6a9a: $03
	dec  h                                           ; $6a9b: $25
	inc  bc                                          ; $6a9c: $03
	inc  hl                                          ; $6a9d: $23
	inc  hl                                          ; $6a9e: $23
	inc  bc                                          ; $6a9f: $03
	dec  h                                           ; $6aa0: $25
	inc  bc                                          ; $6aa1: $03
	inc  h                                           ; $6aa2: $24
	inc  hl                                          ; $6aa3: $23
	inc  e                                           ; $6aa4: $1c
	inc  bc                                          ; $6aa5: $03
	dec  h                                           ; $6aa6: $25
	inc  bc                                          ; $6aa7: $03
	ld   [hl+], a                                    ; $6aa8: $22
	inc  hl                                          ; $6aa9: $23
	inc  e                                           ; $6aaa: $1c
	inc  bc                                          ; $6aab: $03
	dec  h                                           ; $6aac: $25
	inc  bc                                          ; $6aad: $03
	ld   hl, $1c23                                   ; $6aae: $21 $23 $1c
	nop                                              ; $6ab1: $00
	rlca                                             ; $6ab2: $07
	dec  l                                           ; $6ab3: $2d
	ld   c, $03                                      ; $6ab4: $0e $03
	ld   [hl+], a                                    ; $6ab6: $22
	inc  bc                                          ; $6ab7: $03
	inc  hl                                          ; $6ab8: $23
	inc  hl                                          ; $6ab9: $23
	inc  bc                                          ; $6aba: $03
	ld   [hl+], a                                    ; $6abb: $22
	inc  bc                                          ; $6abc: $03
	inc  h                                           ; $6abd: $24
	inc  hl                                          ; $6abe: $23
	inc  e                                           ; $6abf: $1c
	inc  bc                                          ; $6ac0: $03
	ld   [hl+], a                                    ; $6ac1: $22
	inc  bc                                          ; $6ac2: $03
	dec  h                                           ; $6ac3: $25
	inc  hl                                          ; $6ac4: $23
	inc  e                                           ; $6ac5: $1c
	inc  bc                                          ; $6ac6: $03
	ld   [hl+], a                                    ; $6ac7: $22
	inc  bc                                          ; $6ac8: $03
	ld   hl, $1c23                                   ; $6ac9: $21 $23 $1c
	nop                                              ; $6acc: $00
	rlca                                             ; $6acd: $07
	ld   h, a                                        ; $6ace: $67
	rrca                                             ; $6acf: $0f
	inc  bc                                          ; $6ad0: $03
	inc  hl                                          ; $6ad1: $23
	inc  bc                                          ; $6ad2: $03
	ld   [hl+], a                                    ; $6ad3: $22
	inc  hl                                          ; $6ad4: $23
	inc  bc                                          ; $6ad5: $03
	inc  hl                                          ; $6ad6: $23
	inc  bc                                          ; $6ad7: $03
	inc  h                                           ; $6ad8: $24
	inc  hl                                          ; $6ad9: $23
	inc  e                                           ; $6ada: $1c
	inc  bc                                          ; $6adb: $03
	inc  hl                                          ; $6adc: $23
	inc  bc                                          ; $6add: $03
	ld   [hl+], a                                    ; $6ade: $22
	inc  hl                                          ; $6adf: $23
	inc  e                                           ; $6ae0: $1c
	inc  bc                                          ; $6ae1: $03
	inc  hl                                          ; $6ae2: $23
	inc  bc                                          ; $6ae3: $03
	ld   hl, $1c23                                   ; $6ae4: $21 $23 $1c
	nop                                              ; $6ae7: $00
	ld   b, $c3                                      ; $6ae8: $06 $c3
	ld   c, $0f                                      ; $6aea: $0e $0f
	add  hl, bc                                      ; $6aec: $09
	nop                                              ; $6aed: $00
	ld   bc, wGameResultsReturnSubstate                                   ; $6aee: $01 $02 $ca
	ld   a, h                                        ; $6af1: $7c
	inc  b                                           ; $6af2: $04
	ld   a, d                                        ; $6af3: $7a
	ld   [bc], a                                     ; $6af4: $02
	ld   a, e                                        ; $6af5: $7b
	sbc  [hl]                                        ; $6af6: $9e
	and  e                                           ; $6af7: $a3
	jp   z, $a5d1                                    ; $6af8: $ca $d1 $a5

	cp   d                                           ; $6afb: $ba
	ld   d, d                                        ; $6afc: $52
	ld   l, d                                        ; $6afd: $6a
	and  c                                           ; $6afe: $a1
	ld   a, c                                        ; $6aff: $79
	dec  c                                           ; $6b00: $0d
	sub  b                                           ; $6b01: $90
	ld   [hl], c                                     ; $6b02: $71
	halt                                             ; $6b03: $76
	ld   l, a                                        ; $6b04: $6f
	sub  c                                           ; $6b05: $91
	and  c                                           ; $6b06: $a1
	halt                                             ; $6b07: $76
	inc  bc                                          ; $6b08: $03
	ld   l, l                                        ; $6b09: $6d
	dec  b                                           ; $6b0a: $05
	add  hl, de                                      ; $6b0b: $19
	ld   a, c                                        ; $6b0c: $79
	dec  c                                           ; $6b0d: $0d
	inc  bc                                          ; $6b0e: $03
	add  b                                           ; $6b0f: $80
	ld   l, l                                        ; $6b10: $6d
	adc  c                                           ; $6b11: $89
	ld   d, h                                        ; $6b12: $54
	ld   e, d                                        ; $6b13: $5a
	ld   d, d                                        ; $6b14: $52
	ld   d, d                                        ; $6b15: $52
	ld   a, b                                        ; $6b16: $78
	sbc  a                                           ; $6b17: $9f
	dec  c                                           ; $6b18: $0d
	nop                                              ; $6b19: $00
	ld   a, [bc]                                     ; $6b1a: $0a
	ld   bc, $d303                                   ; $6b1b: $01 $03 $d3
	dec  b                                           ; $6b1e: $05
	ld   a, [bc]                                     ; $6b1f: $0a
	sub  b                                           ; $6b20: $90
	ld   l, c                                        ; $6b21: $69
	ld   l, b                                        ; $6b22: $68
	ld   a, c                                        ; $6b23: $79
	ld   [bc], a                                     ; $6b24: $02
	reti                                             ; $6b25: $d9


	ld   [bc], a                                     ; $6b26: $02
	ld   h, e                                        ; $6b27: $63
	ld   l, [hl]                                     ; $6b28: $6e
	ld   e, a                                        ; $6b29: $5f
	dec  c                                           ; $6b2a: $0d
	sub  b                                           ; $6b2b: $90
	halt                                             ; $6b2c: $76
	adc  a                                           ; $6b2d: $8f
	sbc  c                                           ; $6b2e: $99
	sub  [hl]                                        ; $6b2f: $96
	ld   d, h                                        ; $6b30: $54
	ld   [hl], l                                     ; $6b31: $75
	ld   a, l                                        ; $6b32: $7d
	pop  bc                                          ; $6b33: $c1
	db   $e3                                         ; $6b34: $e3
	ld   l, [hl]                                     ; $6b35: $6e
	ld   l, h                                        ; $6b36: $6c
	sbc  a                                           ; $6b37: $9f
	dec  c                                           ; $6b38: $0d
	nop                                              ; $6b39: $00
	ld   a, [bc]                                     ; $6b3a: $0a
	rrca                                             ; $6b3b: $0f
	nop                                              ; $6b3c: $00
	ld   bc, $7d01                                   ; $6b3d: $01 $01 $7d
	sbc  [hl]                                        ; $6b40: $9e
	ld   a, l                                        ; $6b41: $7d
	ld   d, d                                        ; $6b42: $52
	sbc  a                                           ; $6b43: $9f
	dec  c                                           ; $6b44: $0d
	sbc  l                                           ; $6b45: $9d
	ld   e, c                                        ; $6b46: $59
	sbc  b                                           ; $6b47: $98
	adc  h                                           ; $6b48: $8c
	ld   h, l                                        ; $6b49: $65
	ld   l, l                                        ; $6b4a: $6d
	ld   a, [$0dfa]                                  ; $6b4b: $fa $fa $0d
	ld   d, b                                        ; $6b4e: $50
	sbc  b                                           ; $6b4f: $98
	ld   e, d                                        ; $6b50: $5a
	halt                                             ; $6b51: $76
	ld   d, h                                        ; $6b52: $54
	ld   h, d                                        ; $6b53: $62
	ld   h, h                                        ; $6b54: $64
	ld   d, d                                        ; $6b55: $52
	adc  h                                           ; $6b56: $8c
	ld   h, a                                        ; $6b57: $67
	ld   a, [$000d]                                  ; $6b58: $fa $0d $00
	ld   a, [bc]                                     ; $6b5b: $0a
	ld   b, $08                                      ; $6b5c: $06 $08
	db   $10                                         ; $6b5e: $10
	inc  e                                           ; $6b5f: $1c
	add  hl, bc                                      ; $6b60: $09
	ld   bc, $0101                                   ; $6b61: $01 $01 $01
	ld   [$5d00], sp                                 ; $6b64: $08 $00 $5d
	and  c                                           ; $6b67: $a1
	ld   a, l                                        ; $6b68: $7d
	dec  c                                           ; $6b69: $0d
	ld   [bc], a                                     ; $6b6a: $02
	and  l                                           ; $6b6b: $a5
	ld   a, h                                        ; $6b6c: $7c
	halt                                             ; $6b6d: $76
	ld   h, c                                        ; $6b6e: $61
	sbc  e                                           ; $6b6f: $9b
	ld   [bc], a                                     ; $6b70: $02
	sbc  l                                           ; $6b71: $9d
	ld   d, h                                        ; $6b72: $54
	ld   h, c                                        ; $6b73: $61
	halt                                             ; $6b74: $76
	ld   a, b                                        ; $6b75: $78
	ld   h, l                                        ; $6b76: $65
	ld   l, [hl]                                     ; $6b77: $6e
	ld   a, b                                        ; $6b78: $78
	sbc  a                                           ; $6b79: $9f
	dec  c                                           ; $6b7a: $0d
	nop                                              ; $6b7b: $00
	ld   a, [bc]                                     ; $6b7c: $0a
	ld   bc, $7c77                                   ; $6b7d: $01 $77 $7c
	inc  bc                                          ; $6b80: $03
	ld   l, l                                        ; $6b81: $6d
	dec  b                                           ; $6b82: $05
	add  hl, de                                      ; $6b83: $19
	sub  b                                           ; $6b84: $90
	adc  h                                           ; $6b85: $8c
	and  c                                           ; $6b86: $a1
	add  a                                           ; $6b87: $87
	and  c                                           ; $6b88: $a1
	ld   a, b                                        ; $6b89: $78
	ld   e, l                                        ; $6b8a: $5d
	dec  c                                           ; $6b8b: $0d
	ld   e, d                                        ; $6b8c: $5a
	and  c                                           ; $6b8d: $a1
	ld   a, [hl]                                     ; $6b8e: $7e
	ld   [hl], c                                     ; $6b8f: $71
	ld   [hl], h                                     ; $6b90: $74
	sub  d                                           ; $6b91: $92
	ld   [hl], c                                     ; $6b92: $71
	ld   [hl], h                                     ; $6b93: $74
	ld   d, d                                        ; $6b94: $52
	sbc  c                                           ; $6b95: $99
	dec  c                                           ; $6b96: $0d
	sub  [hl]                                        ; $6b97: $96
	ld   d, h                                        ; $6b98: $54
	ld   l, [hl]                                     ; $6b99: $6e
	ld   h, l                                        ; $6b9a: $65
	rst  $38                                         ; $6b9b: $ff
	rst  $38                                         ; $6b9c: $ff
	dec  c                                           ; $6b9d: $0d
	nop                                              ; $6b9e: $00
	ld   a, [bc]                                     ; $6b9f: $0a
	ld   bc, $9a61                                   ; $6ba0: $01 $61 $9a
	ld   e, c                                        ; $6ba3: $59
	sub  a                                           ; $6ba4: $97
	sub  b                                           ; $6ba5: $90
	sbc  [hl]                                        ; $6ba6: $9e
	ld   h, c                                        ; $6ba7: $61
	ld   a, h                                        ; $6ba8: $7c
	inc  bc                                          ; $6ba9: $03
	cp   $03                                         ; $6baa: $fe $03
	add  [hl]                                        ; $6bac: $86
	ld   [hl], l                                     ; $6bad: $75
	dec  c                                           ; $6bae: $0d
	ld   d, d                                        ; $6baf: $52
	ld   e, a                                        ; $6bb0: $5f
	ld   a, [hl]                                     ; $6bb1: $7e
	sbc  [hl]                                        ; $6bb2: $9e
	ld   [bc], a                                     ; $6bb3: $02
	sbc  l                                           ; $6bb4: $9d
	ld   d, h                                        ; $6bb5: $54
	ld   h, c                                        ; $6bb6: $61
	halt                                             ; $6bb7: $76
	ld   a, b                                        ; $6bb8: $78
	ld   h, l                                        ; $6bb9: $65
	ld   l, [hl]                                     ; $6bba: $6e
	sbc  a                                           ; $6bbb: $9f
	dec  c                                           ; $6bbc: $0d
	nop                                              ; $6bbd: $00
	ld   a, [bc]                                     ; $6bbe: $0a
	rrca                                             ; $6bbf: $0f
	nop                                              ; $6bc0: $00
	ld   bc, $7d01                                   ; $6bc1: $01 $01 $7d
	ld   d, d                                        ; $6bc4: $52
	ld   a, [$500d]                                  ; $6bc5: $fa $0d $50
	sbc  b                                           ; $6bc8: $98
	ld   e, d                                        ; $6bc9: $5a
	halt                                             ; $6bca: $76
	ld   d, h                                        ; $6bcb: $54
	ld   h, d                                        ; $6bcc: $62
	ld   h, h                                        ; $6bcd: $64
	ld   d, d                                        ; $6bce: $52
	adc  h                                           ; $6bcf: $8c
	ld   h, a                                        ; $6bd0: $67
	ld   a, [$0dfa]                                  ; $6bd1: $fa $fa $0d
	ld   [bc], a                                     ; $6bd4: $02
	and  l                                           ; $6bd5: $a5
	ld   [bc], a                                     ; $6bd6: $02
	xor  d                                           ; $6bd7: $aa
	sub  b                                           ; $6bd8: $90
	sbc  [hl]                                        ; $6bd9: $9e
	ld   e, d                                        ; $6bda: $5a
	and  c                                           ; $6bdb: $a1
	ld   a, [hl]                                     ; $6bdc: $7e
	sbc  b                                           ; $6bdd: $98
	adc  h                                           ; $6bde: $8c
	ld   h, a                                        ; $6bdf: $67
	ld   [hl], c                                     ; $6be0: $71
	ld   a, [$0dfa]                                  ; $6be1: $fa $fa $0d
	nop                                              ; $6be4: $00
	ld   a, [bc]                                     ; $6be5: $0a
	ld   b, $08                                      ; $6be6: $06 $08
	db   $10                                         ; $6be8: $10
	rrca                                             ; $6be9: $0f
	add  hl, bc                                      ; $6bea: $09
	nop                                              ; $6beb: $00
	ld   bc, $0008                                   ; $6bec: $01 $08 $00
	ld   e, l                                        ; $6bef: $5d
	and  c                                           ; $6bf0: $a1
	ld   a, l                                        ; $6bf1: $7d
	dec  c                                           ; $6bf2: $0d
	ld   [bc], a                                     ; $6bf3: $02
	jr   nc, jr_057_6bfa                             ; $6bf4: $30 $04

	dec  de                                          ; $6bf6: $1b
	inc  b                                           ; $6bf7: $04
	ld   b, e                                        ; $6bf8: $43
	dec  b                                           ; $6bf9: $05

jr_057_6bfa:
	ld   a, [bc]                                     ; $6bfa: $0a
	ld   a, h                                        ; $6bfb: $7c
	inc  b                                           ; $6bfc: $04
	ld   d, a                                        ; $6bfd: $57
	dec  b                                           ; $6bfe: $05
	add  hl, hl                                      ; $6bff: $29
	ld   e, d                                        ; $6c00: $5a
	inc  bc                                          ; $6c01: $03
	ld   d, a                                        ; $6c02: $57
	inc  b                                           ; $6c03: $04
	dec  c                                           ; $6c04: $0d
	inc  b                                           ; $6c05: $04
	jr   nz, jr_057_6c81                             ; $6c06: $20 $79

	dec  c                                           ; $6c08: $0d
	inc  bc                                          ; $6c09: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c0a: $cf
	ld   d, d                                        ; $6c0b: $52
	sub  [hl]                                        ; $6c0c: $96
	ld   d, h                                        ; $6c0d: $54
	ld   l, [hl]                                     ; $6c0e: $6e
	ld   a, b                                        ; $6c0f: $78
	sbc  a                                           ; $6c10: $9f
	dec  c                                           ; $6c11: $0d
	nop                                              ; $6c12: $00
	ld   a, [bc]                                     ; $6c13: $0a
	ld   bc, $5d63                                   ; $6c14: $01 $63 $5d
	sub  a                                           ; $6c17: $97
	ld   e, l                                        ; $6c18: $5d
	and  c                                           ; $6c19: $a1
	ld   a, h                                        ; $6c1a: $7c
	inc  bc                                          ; $6c1b: $03
	ld   l, l                                        ; $6c1c: $6d
	dec  b                                           ; $6c1d: $05
	add  hl, de                                      ; $6c1e: $19
	and  b                                           ; $6c1f: $a0
	dec  c                                           ; $6c20: $0d
	ld   l, a                                        ; $6c21: $6f
	sub  l                                           ; $6c22: $95
	ld   [hl], c                                     ; $6c23: $71
	halt                                             ; $6c24: $76
	inc  b                                           ; $6c25: $04
	rrca                                             ; $6c26: $0f
	adc  a                                           ; $6c27: $8f
	ld   a, c                                        ; $6c28: $79
	halt                                             ; $6c29: $76
	ld   [hl], c                                     ; $6c2a: $71
	ld   [hl], h                                     ; $6c2b: $74
	ld   e, b                                        ; $6c2c: $58
	ld   e, l                                        ; $6c2d: $5d
	halt                                             ; $6c2e: $76
	dec  c                                           ; $6c2f: $0d
	ld   d, d                                        ; $6c30: $52
	ld   d, d                                        ; $6c31: $52
	and  c                                           ; $6c32: $a1
	ld   h, [hl]                                     ; $6c33: $66
	sub  c                                           ; $6c34: $91
	ld   a, b                                        ; $6c35: $78
	ld   d, d                                        ; $6c36: $52
	ld   e, c                                        ; $6c37: $59
	ld   a, b                                        ; $6c38: $78
	sbc  a                                           ; $6c39: $9f
	dec  c                                           ; $6c3a: $0d
	nop                                              ; $6c3b: $00
	ld   a, [bc]                                     ; $6c3c: $0a
	ld   bc, $5d63                                   ; $6c3d: $01 $63 $5d
	sub  a                                           ; $6c40: $97
	ld   e, l                                        ; $6c41: $5d
	and  c                                           ; $6c42: $a1
	ld   a, h                                        ; $6c43: $7c
	inc  bc                                          ; $6c44: $03
	ld   l, l                                        ; $6c45: $6d
	dec  b                                           ; $6c46: $05
	add  hl, de                                      ; $6c47: $19
	ld   a, l                                        ; $6c48: $7d
	sbc  [hl]                                        ; $6c49: $9e
	dec  c                                           ; $6c4a: $0d
	inc  bc                                          ; $6c4b: $03
	ld   [hl], l                                     ; $6c4c: $75
	di                                               ; $6c4d: $f3
	ld   [bc], a                                     ; $6c4e: $02
	adc  h                                           ; $6c4f: $8c
	di                                               ; $6c50: $f3
	inc  b                                           ; $6c51: $04
	dec  c                                           ; $6c52: $0d
	db   $10                                         ; $6c53: $10
	halt                                             ; $6c54: $76
	sbc  [hl]                                        ; $6c55: $9e
	inc  bc                                          ; $6c56: $03
	ld   d, a                                        ; $6c57: $57
	ld   [hl], h                                     ; $6c58: $74
	ld   a, h                                        ; $6c59: $7c
	inc  b                                           ; $6c5a: $04
	rst  JumpTable                                         ; $6c5b: $df
	inc  bc                                          ; $6c5c: $03
	and  [hl]                                        ; $6c5d: $a6
	ld   e, d                                        ; $6c5e: $5a
	dec  c                                           ; $6c5f: $0d
	ld   [bc], a                                     ; $6c60: $02
	call nc, Call_057_5102                           ; $6c61: $d4 $02 $51
	ld   h, e                                        ; $6c64: $63
	sbc  d                                           ; $6c65: $9a
	sbc  c                                           ; $6c66: $99
	ld   e, c                                        ; $6c67: $59
	sub  a                                           ; $6c68: $97
	ld   a, e                                        ; $6c69: $7b
	sbc  a                                           ; $6c6a: $9f
	dec  c                                           ; $6c6b: $0d
	nop                                              ; $6c6c: $00
	ld   a, [bc]                                     ; $6c6d: $0a
	rrca                                             ; $6c6e: $0f
	nop                                              ; $6c6f: $00
	ld   bc, $7801                                   ; $6c70: $01 $01 $78
	sbc  c                                           ; $6c73: $99
	adc  c                                           ; $6c74: $89
	ld   [hl], a                                     ; $6c75: $77
	rst  $38                                         ; $6c76: $ff
	rst  $38                                         ; $6c77: $ff
	dec  c                                           ; $6c78: $0d
	sbc  l                                           ; $6c79: $9d
	ld   e, c                                        ; $6c7a: $59
	sbc  b                                           ; $6c7b: $98
	adc  h                                           ; $6c7c: $8c
	ld   h, l                                        ; $6c7d: $65
	ld   l, l                                        ; $6c7e: $6d
	sbc  [hl]                                        ; $6c7f: $9e
	and  e                                           ; $6c80: $a3

jr_057_6c81:
	jp   z, $a5d1                                    ; $6c81: $ca $d1 $a5

	cp   d                                           ; $6c84: $ba
	sbc  [hl]                                        ; $6c85: $9e
	dec  c                                           ; $6c86: $0d
	ld   d, b                                        ; $6c87: $50
	sbc  b                                           ; $6c88: $98
	ld   e, d                                        ; $6c89: $5a
	halt                                             ; $6c8a: $76
	ld   d, h                                        ; $6c8b: $54
	ld   h, d                                        ; $6c8c: $62
	ld   h, h                                        ; $6c8d: $64
	ld   d, d                                        ; $6c8e: $52
	adc  h                                           ; $6c8f: $8c
	ld   h, l                                        ; $6c90: $65
	ld   l, l                                        ; $6c91: $6d
	sbc  a                                           ; $6c92: $9f
	dec  c                                           ; $6c93: $0d
	nop                                              ; $6c94: $00
	ld   a, [bc]                                     ; $6c95: $0a
	ld   b, $08                                      ; $6c96: $06 $08
	db   $10                                         ; $6c98: $10
	rrca                                             ; $6c99: $0f
	add  hl, bc                                      ; $6c9a: $09
	nop                                              ; $6c9b: $00
	ld   bc, $0008                                   ; $6c9c: $01 $08 $00
	ld   e, l                                        ; $6c9f: $5d
	and  c                                           ; $6ca0: $a1
	ld   a, l                                        ; $6ca1: $7d
	dec  c                                           ; $6ca2: $0d
	inc  bc                                          ; $6ca3: $03
	and  [hl]                                        ; $6ca4: $a6
	inc  bc                                          ; $6ca5: $03
	ld   [hl], b                                     ; $6ca6: $70
	ld   h, e                                        ; $6ca7: $63
	ld   a, h                                        ; $6ca8: $7c
	inc  b                                           ; $6ca9: $04
	ld   d, a                                        ; $6caa: $57
	dec  b                                           ; $6cab: $05
	add  hl, hl                                      ; $6cac: $29
	ld   e, d                                        ; $6cad: $5a
	dec  c                                           ; $6cae: $0d
	inc  bc                                          ; $6caf: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cb0: $cf
	ld   d, d                                        ; $6cb1: $52
	sub  [hl]                                        ; $6cb2: $96
	ld   d, h                                        ; $6cb3: $54
	ld   l, [hl]                                     ; $6cb4: $6e
	ld   a, b                                        ; $6cb5: $78
	sbc  a                                           ; $6cb6: $9f
	dec  c                                           ; $6cb7: $0d
	nop                                              ; $6cb8: $00
	ld   a, [bc]                                     ; $6cb9: $0a
	ld   bc, $8d67                                   ; $6cba: $01 $67 $8d
	sbc  d                                           ; $6cbd: $9a
	ld   e, l                                        ; $6cbe: $5d
	and  c                                           ; $6cbf: $a1
	ld   a, h                                        ; $6cc0: $7c
	inc  bc                                          ; $6cc1: $03
	ld   l, l                                        ; $6cc2: $6d
	dec  b                                           ; $6cc3: $05
	add  hl, de                                      ; $6cc4: $19
	and  b                                           ; $6cc5: $a0
	dec  c                                           ; $6cc6: $0d
	ld   l, a                                        ; $6cc7: $6f
	sub  l                                           ; $6cc8: $95
	ld   [hl], c                                     ; $6cc9: $71
	halt                                             ; $6cca: $76
	inc  b                                           ; $6ccb: $04
	rrca                                             ; $6ccc: $0f
	adc  a                                           ; $6ccd: $8f
	ld   a, c                                        ; $6cce: $79
	halt                                             ; $6ccf: $76
	ld   [hl], c                                     ; $6cd0: $71
	ld   [hl], h                                     ; $6cd1: $74
	ld   e, b                                        ; $6cd2: $58
	ld   e, l                                        ; $6cd3: $5d
	halt                                             ; $6cd4: $76
	dec  c                                           ; $6cd5: $0d
	ld   d, d                                        ; $6cd6: $52
	ld   d, d                                        ; $6cd7: $52
	and  c                                           ; $6cd8: $a1
	ld   h, [hl]                                     ; $6cd9: $66
	sub  c                                           ; $6cda: $91
	ld   a, b                                        ; $6cdb: $78
	ld   d, d                                        ; $6cdc: $52
	ld   e, c                                        ; $6cdd: $59
	ld   a, b                                        ; $6cde: $78
	sbc  a                                           ; $6cdf: $9f
	dec  c                                           ; $6ce0: $0d
	nop                                              ; $6ce1: $00
	ld   a, [bc]                                     ; $6ce2: $0a
	ld   bc, $8d67                                   ; $6ce3: $01 $67 $8d
	sbc  d                                           ; $6ce6: $9a
	ld   e, l                                        ; $6ce7: $5d
	and  c                                           ; $6ce8: $a1
	ld   a, h                                        ; $6ce9: $7c
	inc  bc                                          ; $6cea: $03
	ld   l, l                                        ; $6ceb: $6d
	dec  b                                           ; $6cec: $05
	add  hl, de                                      ; $6ced: $19
	ld   a, l                                        ; $6cee: $7d
	dec  c                                           ; $6cef: $0d
	inc  bc                                          ; $6cf0: $03
	and  [hl]                                        ; $6cf1: $a6
	inc  bc                                          ; $6cf2: $03
	ld   [hl], b                                     ; $6cf3: $70
	ld   h, e                                        ; $6cf4: $63
	ld   a, h                                        ; $6cf5: $7c
	ld   [bc], a                                     ; $6cf6: $02
	call nc, Call_057_5102                           ; $6cf7: $d4 $02 $51
	ld   a, c                                        ; $6cfa: $79
	ld   a, l                                        ; $6cfb: $7d
	dec  c                                           ; $6cfc: $0d
	ld   d, h                                        ; $6cfd: $54
	ld   [hl], c                                     ; $6cfe: $71
	ld   [hl], h                                     ; $6cff: $74
	ld   [hl], d                                     ; $6d00: $72
	ld   e, a                                        ; $6d01: $5f
	ld   l, [hl]                                     ; $6d02: $6e
	ld   e, c                                        ; $6d03: $59
	sub  a                                           ; $6d04: $97
	ld   a, e                                        ; $6d05: $7b
	sbc  a                                           ; $6d06: $9f
	dec  c                                           ; $6d07: $0d
	nop                                              ; $6d08: $00
	ld   a, [bc]                                     ; $6d09: $0a
	rrca                                             ; $6d0a: $0f
	nop                                              ; $6d0b: $00
	ld   bc, $7801                                   ; $6d0c: $01 $01 $78
	sbc  c                                           ; $6d0f: $99
	adc  c                                           ; $6d10: $89
	ld   [hl], a                                     ; $6d11: $77
	rst  $38                                         ; $6d12: $ff
	rst  $38                                         ; $6d13: $ff
	dec  c                                           ; $6d14: $0d
	sbc  l                                           ; $6d15: $9d
	ld   e, c                                        ; $6d16: $59
	sbc  b                                           ; $6d17: $98
	adc  h                                           ; $6d18: $8c
	ld   h, l                                        ; $6d19: $65
	ld   l, l                                        ; $6d1a: $6d
	sbc  [hl]                                        ; $6d1b: $9e
	and  e                                           ; $6d1c: $a3
	jp   z, $a5d1                                    ; $6d1d: $ca $d1 $a5

	cp   d                                           ; $6d20: $ba
	sbc  [hl]                                        ; $6d21: $9e
	dec  c                                           ; $6d22: $0d
	ld   d, b                                        ; $6d23: $50
	sbc  b                                           ; $6d24: $98
	ld   e, d                                        ; $6d25: $5a
	halt                                             ; $6d26: $76
	ld   d, h                                        ; $6d27: $54
	ld   h, d                                        ; $6d28: $62
	ld   h, h                                        ; $6d29: $64
	ld   d, d                                        ; $6d2a: $52
	adc  h                                           ; $6d2b: $8c
	ld   h, l                                        ; $6d2c: $65
	ld   l, l                                        ; $6d2d: $6d
	sbc  a                                           ; $6d2e: $9f
	dec  c                                           ; $6d2f: $0d
	nop                                              ; $6d30: $00
	ld   a, [bc]                                     ; $6d31: $0a
	ld   b, $08                                      ; $6d32: $06 $08
	db   $10                                         ; $6d34: $10
	rrca                                             ; $6d35: $0f
	add  hl, bc                                      ; $6d36: $09
	nop                                              ; $6d37: $00
	ld   bc, $0008                                   ; $6d38: $01 $08 $00
	ld   e, l                                        ; $6d3b: $5d
	and  c                                           ; $6d3c: $a1
	ld   a, l                                        ; $6d3d: $7d
	dec  c                                           ; $6d3e: $0d
	ld   b, $25                                      ; $6d3f: $06 $25
	inc  b                                           ; $6d41: $04
	dec  bc                                          ; $6d42: $0b
	ld   b, $80                                      ; $6d43: $06 $80
	ld   a, h                                        ; $6d45: $7c
	inc  b                                           ; $6d46: $04
	ld   d, a                                        ; $6d47: $57
	dec  b                                           ; $6d48: $05
	add  hl, hl                                      ; $6d49: $29
	ld   e, d                                        ; $6d4a: $5a
	dec  c                                           ; $6d4b: $0d
	inc  bc                                          ; $6d4c: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d4d: $cf
	ld   d, d                                        ; $6d4e: $52
	sub  [hl]                                        ; $6d4f: $96
	ld   d, h                                        ; $6d50: $54
	ld   l, [hl]                                     ; $6d51: $6e
	ld   a, b                                        ; $6d52: $78
	sbc  a                                           ; $6d53: $9f
	dec  c                                           ; $6d54: $0d
	nop                                              ; $6d55: $00
	ld   a, [bc]                                     ; $6d56: $0a
	ld   bc, $ecdf                                   ; $6d57: $01 $df $ec
	and  e                                           ; $6d5a: $a3

Jump_057_6d5b:
	ld   a, h                                        ; $6d5b: $7c
	inc  bc                                          ; $6d5c: $03
	ld   l, l                                        ; $6d5d: $6d
	dec  b                                           ; $6d5e: $05
	add  hl, de                                      ; $6d5f: $19
	and  b                                           ; $6d60: $a0
	dec  c                                           ; $6d61: $0d
	ld   l, a                                        ; $6d62: $6f
	sub  l                                           ; $6d63: $95
	ld   [hl], c                                     ; $6d64: $71

Jump_057_6d65:
	halt                                             ; $6d65: $76
	inc  b                                           ; $6d66: $04
	rrca                                             ; $6d67: $0f
	adc  a                                           ; $6d68: $8f
	ld   a, c                                        ; $6d69: $79
	halt                                             ; $6d6a: $76
	ld   [hl], c                                     ; $6d6b: $71
	ld   [hl], h                                     ; $6d6c: $74
	ld   e, b                                        ; $6d6d: $58
	ld   e, l                                        ; $6d6e: $5d
	halt                                             ; $6d6f: $76
	dec  c                                           ; $6d70: $0d
	ld   d, d                                        ; $6d71: $52
	ld   d, d                                        ; $6d72: $52
	and  c                                           ; $6d73: $a1
	ld   h, [hl]                                     ; $6d74: $66
	sub  c                                           ; $6d75: $91
	ld   a, b                                        ; $6d76: $78
	ld   d, d                                        ; $6d77: $52
	ld   e, c                                        ; $6d78: $59
	ld   a, b                                        ; $6d79: $78
	sbc  a                                           ; $6d7a: $9f
	dec  c                                           ; $6d7b: $0d
	nop                                              ; $6d7c: $00
	ld   a, [bc]                                     ; $6d7d: $0a
	ld   bc, $ecdf                                   ; $6d7e: $01 $df $ec
	and  e                                           ; $6d81: $a3
	ld   a, h                                        ; $6d82: $7c
	inc  bc                                          ; $6d83: $03
	ld   l, l                                        ; $6d84: $6d
	dec  b                                           ; $6d85: $05
	add  hl, de                                      ; $6d86: $19
	ld   a, l                                        ; $6d87: $7d
	inc  bc                                          ; $6d88: $03
	daa                                              ; $6d89: $27
	ld   [bc], a                                     ; $6d8a: $02
	sub  c                                           ; $6d8b: $91
	ld   l, [hl]                                     ; $6d8c: $6e
	ld   e, c                                        ; $6d8d: $59
	sub  a                                           ; $6d8e: $97
	sbc  [hl]                                        ; $6d8f: $9e
	dec  c                                           ; $6d90: $0d
	ld   e, c                                        ; $6d91: $59
	ld   a, b                                        ; $6d92: $78
	sbc  b                                           ; $6d93: $98
	ld   a, h                                        ; $6d94: $7c
	ld   b, $25                                      ; $6d95: $06 $25
	inc  b                                           ; $6d97: $04
	dec  bc                                          ; $6d98: $0b
	ld   b, $80                                      ; $6d99: $06 $80
	and  b                                           ; $6d9b: $a0
	dec  c                                           ; $6d9c: $0d
	inc  b                                           ; $6d9d: $04
	rst  JumpTable                                         ; $6d9e: $df
	ld   b, $85                                      ; $6d9f: $06 $85
	ld   h, e                                        ; $6da1: $63
	sbc  d                                           ; $6da2: $9a
	sbc  c                                           ; $6da3: $99
	ld   e, c                                        ; $6da4: $59
	sub  a                                           ; $6da5: $97
	ld   a, e                                        ; $6da6: $7b
	sbc  a                                           ; $6da7: $9f
	dec  c                                           ; $6da8: $0d
	nop                                              ; $6da9: $00
	ld   a, [bc]                                     ; $6daa: $0a
	rrca                                             ; $6dab: $0f
	nop                                              ; $6dac: $00
	ld   bc, $7801                                   ; $6dad: $01 $01 $78
	sbc  c                                           ; $6db0: $99
	adc  c                                           ; $6db1: $89
	ld   [hl], a                                     ; $6db2: $77
	rst  $38                                         ; $6db3: $ff
	rst  $38                                         ; $6db4: $ff
	dec  c                                           ; $6db5: $0d
	sbc  l                                           ; $6db6: $9d
	ld   e, c                                        ; $6db7: $59
	sbc  b                                           ; $6db8: $98
	adc  h                                           ; $6db9: $8c
	ld   h, l                                        ; $6dba: $65
	ld   l, l                                        ; $6dbb: $6d
	sbc  [hl]                                        ; $6dbc: $9e
	and  e                                           ; $6dbd: $a3
	jp   z, $a5d1                                    ; $6dbe: $ca $d1 $a5

	cp   d                                           ; $6dc1: $ba
	sbc  [hl]                                        ; $6dc2: $9e
	dec  c                                           ; $6dc3: $0d
	ld   d, b                                        ; $6dc4: $50
	sbc  b                                           ; $6dc5: $98
	ld   e, d                                        ; $6dc6: $5a
	halt                                             ; $6dc7: $76
	ld   d, h                                        ; $6dc8: $54
	ld   h, d                                        ; $6dc9: $62
	ld   h, h                                        ; $6dca: $64
	ld   d, d                                        ; $6dcb: $52
	adc  h                                           ; $6dcc: $8c
	ld   h, l                                        ; $6dcd: $65
	ld   l, l                                        ; $6dce: $6d
	sbc  a                                           ; $6dcf: $9f
	dec  c                                           ; $6dd0: $0d
	nop                                              ; $6dd1: $00
	ld   a, [bc]                                     ; $6dd2: $0a
	ld   b, $08                                      ; $6dd3: $06 $08
	db   $10                                         ; $6dd5: $10
	rrca                                             ; $6dd6: $0f
	add  hl, bc                                      ; $6dd7: $09
	nop                                              ; $6dd8: $00
	ld   bc, $0008                                   ; $6dd9: $01 $08 $00
	ld   e, l                                        ; $6ddc: $5d
	and  c                                           ; $6ddd: $a1
	ld   a, l                                        ; $6dde: $7d
	dec  c                                           ; $6ddf: $0d
	dec  b                                           ; $6de0: $05
	add  hl, bc                                      ; $6de1: $09
	dec  b                                           ; $6de2: $05
	ld   a, [bc]                                     ; $6de3: $0a
	ld   a, h                                        ; $6de4: $7c
	inc  b                                           ; $6de5: $04
	ld   d, a                                        ; $6de6: $57
	dec  b                                           ; $6de7: $05
	add  hl, hl                                      ; $6de8: $29
	ld   e, d                                        ; $6de9: $5a
	dec  c                                           ; $6dea: $0d
	inc  bc                                          ; $6deb: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dec: $cf
	ld   d, d                                        ; $6ded: $52
	sub  [hl]                                        ; $6dee: $96
	ld   d, h                                        ; $6def: $54
	ld   l, [hl]                                     ; $6df0: $6e
	ld   a, b                                        ; $6df1: $78
	sbc  a                                           ; $6df2: $9f
	dec  c                                           ; $6df3: $0d
	nop                                              ; $6df4: $00
	ld   a, [bc]                                     ; $6df5: $0a
	ld   bc, $a5a3                                   ; $6df6: $01 $a3 $a5
	db   $ec                                         ; $6df9: $ec
	cp   d                                           ; $6dfa: $ba
	ld   a, h                                        ; $6dfb: $7c
	inc  bc                                          ; $6dfc: $03
	ld   l, l                                        ; $6dfd: $6d
	dec  b                                           ; $6dfe: $05
	add  hl, de                                      ; $6dff: $19
	and  b                                           ; $6e00: $a0
	dec  c                                           ; $6e01: $0d
	ld   l, a                                        ; $6e02: $6f
	sub  l                                           ; $6e03: $95
	ld   [hl], c                                     ; $6e04: $71
	halt                                             ; $6e05: $76
	inc  b                                           ; $6e06: $04
	rrca                                             ; $6e07: $0f
	adc  a                                           ; $6e08: $8f
	ld   a, c                                        ; $6e09: $79
	halt                                             ; $6e0a: $76
	ld   [hl], c                                     ; $6e0b: $71
	ld   [hl], h                                     ; $6e0c: $74
	ld   e, b                                        ; $6e0d: $58
	ld   e, l                                        ; $6e0e: $5d
	halt                                             ; $6e0f: $76
	dec  c                                           ; $6e10: $0d
	ld   d, d                                        ; $6e11: $52
	ld   d, d                                        ; $6e12: $52
	and  c                                           ; $6e13: $a1
	ld   h, [hl]                                     ; $6e14: $66
	sub  c                                           ; $6e15: $91
	ld   a, b                                        ; $6e16: $78
	ld   d, d                                        ; $6e17: $52
	ld   e, c                                        ; $6e18: $59
	ld   a, b                                        ; $6e19: $78
	sbc  a                                           ; $6e1a: $9f
	dec  c                                           ; $6e1b: $0d
	nop                                              ; $6e1c: $00
	ld   a, [bc]                                     ; $6e1d: $0a
	ld   bc, $a5a3                                   ; $6e1e: $01 $a3 $a5
	db   $ec                                         ; $6e21: $ec
	cp   d                                           ; $6e22: $ba
	ld   a, h                                        ; $6e23: $7c
	inc  bc                                          ; $6e24: $03
	ld   l, l                                        ; $6e25: $6d
	dec  b                                           ; $6e26: $05
	add  hl, de                                      ; $6e27: $19
	ld   a, l                                        ; $6e28: $7d
	dec  c                                           ; $6e29: $0d
	dec  b                                           ; $6e2a: $05
	add  hl, bc                                      ; $6e2b: $09
	dec  b                                           ; $6e2c: $05
	ld   a, [bc]                                     ; $6e2d: $0a
	and  e                                           ; $6e2e: $a3
	call nz, Call_057_79d8                           ; $6e2f: $c4 $d8 $79
	ld   a, l                                        ; $6e32: $7d
	dec  c                                           ; $6e33: $0d
	ld   d, h                                        ; $6e34: $54
	ld   [hl], c                                     ; $6e35: $71
	ld   [hl], h                                     ; $6e36: $74
	ld   [hl], d                                     ; $6e37: $72
	ld   e, a                                        ; $6e38: $5f
	ld   l, [hl]                                     ; $6e39: $6e
	ld   e, c                                        ; $6e3a: $59
	sub  a                                           ; $6e3b: $97
	ld   a, e                                        ; $6e3c: $7b
	sbc  a                                           ; $6e3d: $9f
	dec  c                                           ; $6e3e: $0d
	nop                                              ; $6e3f: $00
	ld   a, [bc]                                     ; $6e40: $0a
	rrca                                             ; $6e41: $0f
	nop                                              ; $6e42: $00
	ld   bc, $7801                                   ; $6e43: $01 $01 $78
	sbc  c                                           ; $6e46: $99
	adc  c                                           ; $6e47: $89
	ld   [hl], a                                     ; $6e48: $77
	rst  $38                                         ; $6e49: $ff
	rst  $38                                         ; $6e4a: $ff
	dec  c                                           ; $6e4b: $0d
	sbc  l                                           ; $6e4c: $9d
	ld   e, c                                        ; $6e4d: $59
	sbc  b                                           ; $6e4e: $98
	adc  h                                           ; $6e4f: $8c
	ld   h, l                                        ; $6e50: $65
	ld   l, l                                        ; $6e51: $6d
	sbc  [hl]                                        ; $6e52: $9e
	and  e                                           ; $6e53: $a3
	jp   z, $a5d1                                    ; $6e54: $ca $d1 $a5

	cp   d                                           ; $6e57: $ba
	sbc  [hl]                                        ; $6e58: $9e
	dec  c                                           ; $6e59: $0d
	ld   d, b                                        ; $6e5a: $50
	sbc  b                                           ; $6e5b: $98
	ld   e, d                                        ; $6e5c: $5a
	halt                                             ; $6e5d: $76
	ld   d, h                                        ; $6e5e: $54
	ld   h, d                                        ; $6e5f: $62
	ld   h, h                                        ; $6e60: $64
	ld   d, d                                        ; $6e61: $52
	adc  h                                           ; $6e62: $8c
	ld   h, l                                        ; $6e63: $65
	ld   l, l                                        ; $6e64: $6d
	sbc  a                                           ; $6e65: $9f
	dec  c                                           ; $6e66: $0d
	nop                                              ; $6e67: $00
	ld   a, [bc]                                     ; $6e68: $0a
	ld   b, $08                                      ; $6e69: $06 $08
	db   $10                                         ; $6e6b: $10
	rrca                                             ; $6e6c: $0f
	add  hl, bc                                      ; $6e6d: $09
	nop                                              ; $6e6e: $00
	ld   bc, $0008                                   ; $6e6f: $01 $08 $00
	ld   e, l                                        ; $6e72: $5d
	and  c                                           ; $6e73: $a1
	ld   a, l                                        ; $6e74: $7d
	dec  c                                           ; $6e75: $0d
	sub  b                                           ; $6e76: $90
	ld   d, h                                        ; $6e77: $54
	inc  bc                                          ; $6e78: $03
	ld   l, h                                        ; $6e79: $6c
	ld   h, l                                        ; $6e7a: $65
	ld   [bc], a                                     ; $6e7b: $02
	add  h                                           ; $6e7c: $84
	ld   [bc], a                                     ; $6e7d: $02
	and  d                                           ; $6e7e: $a2
	inc  b                                           ; $6e7f: $04
	jr   nz, jr_057_6e86                             ; $6e80: $20 $04

	dec  hl                                          ; $6e82: $2b
	inc  bc                                          ; $6e83: $03
	dec  [hl]                                        ; $6e84: $35
	and  b                                           ; $6e85: $a0

jr_057_6e86:
	dec  c                                           ; $6e86: $0d
	inc  b                                           ; $6e87: $04
	pop  de                                          ; $6e88: $d1
	ld   a, c                                        ; $6e89: $79
	ld   [hl], d                                     ; $6e8a: $72
	ld   e, a                                        ; $6e8b: $5f
	ld   l, l                                        ; $6e8c: $6d
	adc  c                                           ; $6e8d: $89
	ld   d, h                                        ; $6e8e: $54
	ld   e, d                                        ; $6e8f: $5a
	ld   d, d                                        ; $6e90: $52
	ld   d, d                                        ; $6e91: $52
	ld   a, b                                        ; $6e92: $78
	sbc  a                                           ; $6e93: $9f
	dec  c                                           ; $6e94: $0d
	nop                                              ; $6e95: $00
	ld   a, [bc]                                     ; $6e96: $0a
	ld   bc, $cf02                                   ; $6e97: $01 $02 $cf
	dec  b                                           ; $6e9a: $05
	ld   a, [de]                                     ; $6e9b: $1a
	ld   a, h                                        ; $6e9c: $7c
	inc  bc                                          ; $6e9d: $03
	ld   l, l                                        ; $6e9e: $6d
	dec  b                                           ; $6e9f: $05
	add  hl, de                                      ; $6ea0: $19
	and  b                                           ; $6ea1: $a0
	dec  c                                           ; $6ea2: $0d
	ld   l, a                                        ; $6ea3: $6f
	sub  l                                           ; $6ea4: $95
	ld   [hl], c                                     ; $6ea5: $71
	halt                                             ; $6ea6: $76
	inc  b                                           ; $6ea7: $04
	rrca                                             ; $6ea8: $0f
	adc  a                                           ; $6ea9: $8f
	ld   a, c                                        ; $6eaa: $79
	halt                                             ; $6eab: $76
	ld   [hl], c                                     ; $6eac: $71
	ld   [hl], h                                     ; $6ead: $74
	ld   e, b                                        ; $6eae: $58
	ld   e, l                                        ; $6eaf: $5d
	halt                                             ; $6eb0: $76
	dec  c                                           ; $6eb1: $0d
	ld   d, d                                        ; $6eb2: $52
	ld   d, d                                        ; $6eb3: $52
	and  c                                           ; $6eb4: $a1
	ld   h, [hl]                                     ; $6eb5: $66
	sub  c                                           ; $6eb6: $91
	ld   a, b                                        ; $6eb7: $78
	ld   d, d                                        ; $6eb8: $52
	ld   e, c                                        ; $6eb9: $59
	ld   a, b                                        ; $6eba: $78
	sbc  a                                           ; $6ebb: $9f
	dec  c                                           ; $6ebc: $0d
	nop                                              ; $6ebd: $00
	ld   a, [bc]                                     ; $6ebe: $0a
	ld   bc, $cf02                                   ; $6ebf: $01 $02 $cf
	dec  b                                           ; $6ec2: $05
	ld   a, [de]                                     ; $6ec3: $1a
	ld   a, h                                        ; $6ec4: $7c
	ld   [bc], a                                     ; $6ec5: $02
	ld   l, d                                        ; $6ec6: $6a
	ld   b, $44                                      ; $6ec7: $06 $44
	and  b                                           ; $6ec9: $a0
	sbc  [hl]                                        ; $6eca: $9e
	ld   l, e                                        ; $6ecb: $6b
	ld   a, [hl]                                     ; $6ecc: $7e
	ld   [hl], l                                     ; $6ecd: $75
	ld   [bc], a                                     ; $6ece: $02
	sub  l                                           ; $6ecf: $95
	ld   [hl], h                                     ; $6ed0: $74
	sbc  c                                           ; $6ed1: $99
	dec  c                                           ; $6ed2: $0d
	ld   l, [hl]                                     ; $6ed3: $6e
	ld   e, a                                        ; $6ed4: $5f
	ld   [hl], l                                     ; $6ed5: $75
	sub  b                                           ; $6ed6: $90
	inc  b                                           ; $6ed7: $04
	xor  [hl]                                        ; $6ed8: $ae
	ld   [bc], a                                     ; $6ed9: $02
	call nc, Call_057_7879                           ; $6eda: $d4 $79 $78
	sbc  c                                           ; $6edd: $99
	ld   e, c                                        ; $6ede: $59
	sub  a                                           ; $6edf: $97
	ld   a, e                                        ; $6ee0: $7b
	sbc  a                                           ; $6ee1: $9f
	dec  c                                           ; $6ee2: $0d
	nop                                              ; $6ee3: $00
	ld   a, [bc]                                     ; $6ee4: $0a
	rrca                                             ; $6ee5: $0f
	nop                                              ; $6ee6: $00
	ld   bc, $7801                                   ; $6ee7: $01 $01 $78
	sbc  c                                           ; $6eea: $99
	adc  c                                           ; $6eeb: $89
	ld   [hl], a                                     ; $6eec: $77
	rst  $38                                         ; $6eed: $ff
	rst  $38                                         ; $6eee: $ff
	dec  c                                           ; $6eef: $0d
	sbc  l                                           ; $6ef0: $9d
	ld   e, c                                        ; $6ef1: $59
	sbc  b                                           ; $6ef2: $98
	adc  h                                           ; $6ef3: $8c
	ld   h, l                                        ; $6ef4: $65
	ld   l, l                                        ; $6ef5: $6d
	sbc  [hl]                                        ; $6ef6: $9e
	and  e                                           ; $6ef7: $a3
	jp   z, $a5d1                                    ; $6ef8: $ca $d1 $a5

	cp   d                                           ; $6efb: $ba
	sbc  [hl]                                        ; $6efc: $9e
	dec  c                                           ; $6efd: $0d
	ld   d, b                                        ; $6efe: $50
	sbc  b                                           ; $6eff: $98
	ld   e, d                                        ; $6f00: $5a
	halt                                             ; $6f01: $76
	ld   d, h                                        ; $6f02: $54
	ld   h, d                                        ; $6f03: $62
	ld   h, h                                        ; $6f04: $64
	ld   d, d                                        ; $6f05: $52
	adc  h                                           ; $6f06: $8c
	ld   h, l                                        ; $6f07: $65
	ld   l, l                                        ; $6f08: $6d
	sbc  a                                           ; $6f09: $9f
	dec  c                                           ; $6f0a: $0d
	nop                                              ; $6f0b: $00
	ld   a, [bc]                                     ; $6f0c: $0a
	ld   b, $08                                      ; $6f0d: $06 $08
	db   $10                                         ; $6f0f: $10
	rrca                                             ; $6f10: $0f
	add  hl, bc                                      ; $6f11: $09
	nop                                              ; $6f12: $00
	ld   bc, $0008                                   ; $6f13: $01 $08 $00
	ld   e, l                                        ; $6f16: $5d
	and  c                                           ; $6f17: $a1
	ld   a, l                                        ; $6f18: $7d
	dec  c                                           ; $6f19: $0d
	sub  b                                           ; $6f1a: $90
	ld   [hl], c                                     ; $6f1b: $71
	halt                                             ; $6f1c: $76
	ld   [bc], a                                     ; $6f1d: $02
	and  c                                           ; $6f1e: $a1
	ld   [bc], a                                     ; $6f1f: $02
	ld   a, e                                        ; $6f20: $7b
	ld   d, d                                        ; $6f21: $52
	and  b                                           ; $6f22: $a0
	dec  c                                           ; $6f23: $0d
	inc  b                                           ; $6f24: $04
	pop  de                                          ; $6f25: $d1
	ld   a, c                                        ; $6f26: $79
	ld   [hl], d                                     ; $6f27: $72
	ld   e, a                                        ; $6f28: $5f
	ld   l, l                                        ; $6f29: $6d
	adc  c                                           ; $6f2a: $89
	ld   d, h                                        ; $6f2b: $54
	ld   e, d                                        ; $6f2c: $5a
	ld   d, d                                        ; $6f2d: $52
	ld   d, d                                        ; $6f2e: $52
	ld   a, b                                        ; $6f2f: $78
	sbc  a                                           ; $6f30: $9f
	dec  c                                           ; $6f31: $0d
	nop                                              ; $6f32: $00
	ld   a, [bc]                                     ; $6f33: $0a
	ld   bc, $f5ac                                   ; $6f34: $01 $ac $f5
	bit  7, h                                        ; $6f37: $cb $7c
	inc  bc                                          ; $6f39: $03
	ld   l, l                                        ; $6f3a: $6d
	dec  b                                           ; $6f3b: $05
	add  hl, de                                      ; $6f3c: $19
	and  b                                           ; $6f3d: $a0
	dec  c                                           ; $6f3e: $0d
	ld   l, a                                        ; $6f3f: $6f
	sub  l                                           ; $6f40: $95
	ld   [hl], c                                     ; $6f41: $71
	halt                                             ; $6f42: $76
	inc  b                                           ; $6f43: $04
	rrca                                             ; $6f44: $0f
	adc  a                                           ; $6f45: $8f
	ld   a, c                                        ; $6f46: $79
	halt                                             ; $6f47: $76
	ld   [hl], c                                     ; $6f48: $71
	ld   [hl], h                                     ; $6f49: $74
	ld   e, b                                        ; $6f4a: $58
	ld   e, l                                        ; $6f4b: $5d
	halt                                             ; $6f4c: $76
	dec  c                                           ; $6f4d: $0d
	ld   d, d                                        ; $6f4e: $52
	ld   d, d                                        ; $6f4f: $52
	and  c                                           ; $6f50: $a1
	ld   h, [hl]                                     ; $6f51: $66
	sub  c                                           ; $6f52: $91
	ld   a, b                                        ; $6f53: $78
	ld   d, d                                        ; $6f54: $52
	ld   e, c                                        ; $6f55: $59
	ld   a, b                                        ; $6f56: $78
	sbc  a                                           ; $6f57: $9f
	dec  c                                           ; $6f58: $0d
	nop                                              ; $6f59: $00
	ld   a, [bc]                                     ; $6f5a: $0a
	ld   bc, $f5ac                                   ; $6f5b: $01 $ac $f5
	bit  7, h                                        ; $6f5e: $cb $7c
	ld   [bc], a                                     ; $6f60: $02
	or   [hl]                                        ; $6f61: $b6
	inc  bc                                          ; $6f62: $03
	ld   l, e                                        ; $6f63: $6b
	ld   a, l                                        ; $6f64: $7d
	dec  c                                           ; $6f65: $0d
	adc  h                                           ; $6f66: $8c
	ld   h, e                                        ; $6f67: $63
	ld   a, c                                        ; $6f68: $79
	ld   bc, $0207                                   ; $6f69: $01 $07 $02
	and  c                                           ; $6f6c: $a1
	ld   [bc], a                                     ; $6f6d: $02
	ld   a, e                                        ; $6f6e: $7b
	ld   d, d                                        ; $6f6f: $52
	ld   a, h                                        ; $6f70: $7c
	inc  b                                           ; $6f71: $04
	ld   d, d                                        ; $6f72: $52
	inc  bc                                          ; $6f73: $03
	db   $10                                         ; $6f74: $10
	ld   bc, $0d08                                   ; $6f75: $01 $08 $0d
	halt                                             ; $6f78: $76
	ld   d, d                                        ; $6f79: $52
	ld   d, h                                        ; $6f7a: $54
	ld   [bc], a                                     ; $6f7b: $02
	scf                                              ; $6f7c: $37
	ld   h, [hl]                                     ; $6f7d: $66
	ld   l, [hl]                                     ; $6f7e: $6e
	ld   e, c                                        ; $6f7f: $59
	sub  a                                           ; $6f80: $97
	ld   a, e                                        ; $6f81: $7b
	sbc  a                                           ; $6f82: $9f
	dec  c                                           ; $6f83: $0d
	nop                                              ; $6f84: $00
	ld   a, [bc]                                     ; $6f85: $0a
	rrca                                             ; $6f86: $0f
	nop                                              ; $6f87: $00
	ld   bc, $7801                                   ; $6f88: $01 $01 $78
	sbc  c                                           ; $6f8b: $99
	adc  c                                           ; $6f8c: $89
	ld   [hl], a                                     ; $6f8d: $77
	rst  $38                                         ; $6f8e: $ff
	rst  $38                                         ; $6f8f: $ff
	dec  c                                           ; $6f90: $0d
	sbc  l                                           ; $6f91: $9d
	ld   e, c                                        ; $6f92: $59
	sbc  b                                           ; $6f93: $98
	adc  h                                           ; $6f94: $8c
	ld   h, l                                        ; $6f95: $65
	ld   l, l                                        ; $6f96: $6d
	sbc  [hl]                                        ; $6f97: $9e
	and  e                                           ; $6f98: $a3
	jp   z, $a5d1                                    ; $6f99: $ca $d1 $a5

	cp   d                                           ; $6f9c: $ba
	sbc  [hl]                                        ; $6f9d: $9e
	dec  c                                           ; $6f9e: $0d
	ld   d, b                                        ; $6f9f: $50
	sbc  b                                           ; $6fa0: $98
	ld   e, d                                        ; $6fa1: $5a
	halt                                             ; $6fa2: $76
	ld   d, h                                        ; $6fa3: $54
	ld   h, d                                        ; $6fa4: $62
	ld   h, h                                        ; $6fa5: $64
	ld   d, d                                        ; $6fa6: $52
	adc  h                                           ; $6fa7: $8c
	ld   h, l                                        ; $6fa8: $65
	ld   l, l                                        ; $6fa9: $6d
	sbc  a                                           ; $6faa: $9f
	dec  c                                           ; $6fab: $0d
	nop                                              ; $6fac: $00
	ld   a, [bc]                                     ; $6fad: $0a
	ld   b, $08                                      ; $6fae: $06 $08
	db   $10                                         ; $6fb0: $10
	inc  e                                           ; $6fb1: $1c
	add  hl, bc                                      ; $6fb2: $09
	ld   bc, $0101                                   ; $6fb3: $01 $01 $01
	ld   d, h                                        ; $6fb6: $54
	and  c                                           ; $6fb7: $a1
	sbc  a                                           ; $6fb8: $9f
	dec  c                                           ; $6fb9: $0d
	ld   l, e                                        ; $6fba: $6b
	sbc  d                                           ; $6fbb: $9a
	ld   h, [hl]                                     ; $6fbc: $66
	sub  c                                           ; $6fbd: $91
	sbc  [hl]                                        ; $6fbe: $9e
	ld   e, d                                        ; $6fbf: $5a
	and  c                                           ; $6fc0: $a1
	ld   a, [hl]                                     ; $6fc1: $7e
	sbc  d                                           ; $6fc2: $9a
	sub  [hl]                                        ; $6fc3: $96
	sbc  a                                           ; $6fc4: $9f
	dec  c                                           ; $6fc5: $0d
	nop                                              ; $6fc6: $00
	ld   a, [bc]                                     ; $6fc7: $0a
	nop                                              ; $6fc8: $00
	nop                                              ; $6fc9: $00
	inc  b                                           ; $6fca: $04
	add  b                                           ; $6fcb: $80
	add  a                                           ; $6fcc: $87
	ld   bc, $2000                                   ; $6fcd: $01 $00 $20
	nop                                              ; $6fd0: $00
	ld   c, $2f                                      ; $6fd1: $0e $2f
	inc  e                                           ; $6fd3: $1c
	dec  c                                           ; $6fd4: $0d
	nop                                              ; $6fd5: $00
	nop                                              ; $6fd6: $00
	ld   [bc], a                                     ; $6fd7: $02
	ld   bc, $9750                                   ; $6fd8: $01 $50 $97
	sbc  [hl]                                        ; $6fdb: $9e
	ld   [$5d00], sp                                 ; $6fdc: $08 $00 $5d
	and  c                                           ; $6fdf: $a1
	sbc  a                                           ; $6fe0: $9f
	dec  c                                           ; $6fe1: $0d
	nop                                              ; $6fe2: $00
	ld   a, [bc]                                     ; $6fe3: $0a
	inc  e                                           ; $6fe4: $1c
	dec  c                                           ; $6fe5: $0d
	ld   bc, $0101                                   ; $6fe6: $01 $01 $01
	ld   a, e                                        ; $6fe9: $7b
	ld   d, [hl]                                     ; $6fea: $56
	sbc  [hl]                                        ; $6feb: $9e
	inc  b                                           ; $6fec: $04
	dec  hl                                          ; $6fed: $2b
	ld   [hl], c                                     ; $6fee: $71
	ld   [hl], h                                     ; $6fef: $74
	sbc  c                                           ; $6ff0: $99
	ld   sp, hl                                      ; $6ff1: $f9
	dec  c                                           ; $6ff2: $0d
	nop                                              ; $6ff3: $00
	ld   a, [bc]                                     ; $6ff4: $0a
	ld   bc, $f5ac                                   ; $6ff5: $01 $ac $f5
	bit  4, e                                        ; $6ff8: $cb $63
	and  c                                           ; $6ffa: $a1
	ld   a, e                                        ; $6ffb: $7b
	sbc  [hl]                                        ; $6ffc: $9e
	ld   [bc], a                                     ; $6ffd: $02
	ld   l, [hl]                                     ; $6ffe: $6e
	inc  bc                                          ; $6fff: $03
	ld   c, $5b                                      ; $7000: $0e $5b
	ld   a, c                                        ; $7002: $79
	inc  bc                                          ; $7003: $03
	xor  [hl]                                        ; $7004: $ae
	ld   d, [hl]                                     ; $7005: $56
	sbc  c                                           ; $7006: $99
	dec  c                                           ; $7007: $0d
	ld   [bc], a                                     ; $7008: $02
	ld   l, [hl]                                     ; $7009: $6e
	ld   a, h                                        ; $700a: $7c
	sub  [hl]                                        ; $700b: $96
	ld   d, h                                        ; $700c: $54
	ld   a, b                                        ; $700d: $78
	db   $e4                                         ; $700e: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $700f: $cf
	and  b                                           ; $7010: $a0
	dec  c                                           ; $7011: $0d
	inc  b                                           ; $7012: $04
	inc  d                                           ; $7013: $14
	ld   h, l                                        ; $7014: $65
	ld   [hl], h                                     ; $7015: $74
	sbc  c                                           ; $7016: $99
	sub  a                                           ; $7017: $97
	ld   h, l                                        ; $7018: $65
	ld   d, d                                        ; $7019: $52

jr_057_701a:
	sbc  l                                           ; $701a: $9d
	sub  [hl]                                        ; $701b: $96
	sbc  a                                           ; $701c: $9f
	dec  c                                           ; $701d: $0d
	nop                                              ; $701e: $00
	ld   a, [bc]                                     ; $701f: $0a
	ld   bc, $6d50                                   ; $7020: $01 $50 $6d
	ld   h, l                                        ; $7023: $65
	ld   a, h                                        ; $7024: $7c
	ld   d, h                                        ; $7025: $54
	sbc  l                                           ; $7026: $9d
	ld   h, e                                        ; $7027: $63
	dec  b                                           ; $7028: $05
	jr   nz, jr_057_70a8                             ; $7029: $20 $7d

	dec  c                                           ; $702b: $0d
	ld   e, b                                        ; $702c: $58
	adc  d                                           ; $702d: $8a
	ld   d, [hl]                                     ; $702e: $56
	halt                                             ; $702f: $76
	ld   d, d                                        ; $7030: $52
	ld   [hl], h                                     ; $7031: $74
	cp   [hl]                                        ; $7032: $be
	push af                                          ; $7033: $f5
	ld   a, l                                        ; $7034: $7d
	ld   a, b                                        ; $7035: $78
	ld   d, d                                        ; $7036: $52
	sbc  l                                           ; $7037: $9d
	sub  [hl]                                        ; $7038: $96
	sbc  a                                           ; $7039: $9f
	dec  c                                           ; $703a: $0d
	ld   h, [hl]                                     ; $703b: $66
	sub  c                                           ; $703c: $91
	ld   d, b                                        ; $703d: $50
	ld   a, e                                        ; $703e: $7b
	sbc  a                                           ; $703f: $9f
	dec  c                                           ; $7040: $0d
	nop                                              ; $7041: $00
	ld   a, [bc]                                     ; $7042: $0a
	nop                                              ; $7043: $00
	nop                                              ; $7044: $00
	rrca                                             ; $7045: $0f
	nop                                              ; $7046: $00
	ld   bc, $060d                                   ; $7047: $01 $0d $06
	nop                                              ; $704a: $00
	ld   [bc], a                                     ; $704b: $02
	ld   bc, $7d58                                   ; $704c: $01 $58 $7d
	sub  [hl]                                        ; $704f: $96
	ld   d, h                                        ; $7050: $54
	ld   h, d                                        ; $7051: $62
	ld   h, h                                        ; $7052: $64
	ld   d, d                                        ; $7053: $52
	adc  h                                           ; $7054: $8c
	ld   h, a                                        ; $7055: $67
	sbc  a                                           ; $7056: $9f
	dec  c                                           ; $7057: $0d
	nop                                              ; $7058: $00
	ld   a, [bc]                                     ; $7059: $0a
	inc  e                                           ; $705a: $1c
	ld   b, $01                                      ; $705b: $06 $01
	ld   bc, $5801                                   ; $705d: $01 $01 $58
	ld   d, h                                        ; $7060: $54
	sbc  [hl]                                        ; $7061: $9e
	ld   [$9f00], sp                                 ; $7062: $08 $00 $9f
	dec  c                                           ; $7065: $0d
	ld   e, b                                        ; $7066: $58
	ld   a, l                                        ; $7067: $7d
	sub  [hl]                                        ; $7068: $96
	ld   d, h                                        ; $7069: $54
	sbc  a                                           ; $706a: $9f
	dec  c                                           ; $706b: $0d
	nop                                              ; $706c: $00
	ld   a, [bc]                                     ; $706d: $0a
	rrca                                             ; $706e: $0f
	nop                                              ; $706f: $00
	ld   bc, $0101                                   ; $7070: $01 $01 $01
	inc  bc                                          ; $7073: $03
	inc  b                                           ; $7074: $04
	ld   c, c                                        ; $7075: $49
	ld   a, h                                        ; $7076: $7c
	dec  b                                           ; $7077: $05
	jr   nz, jr_057_701a                             ; $7078: $20 $a0

	ld   h, l                                        ; $707a: $65
	sub  [hl]                                        ; $707b: $96
	ld   d, h                                        ; $707c: $54
	ld   e, c                                        ; $707d: $59
	ld   a, b                                        ; $707e: $78
	rst  $38                                         ; $707f: $ff
	rst  $38                                         ; $7080: $ff
	ld   bc, $0d04                                   ; $7081: $01 $04 $0d
	nop                                              ; $7084: $00
	ld   a, [bc]                                     ; $7085: $0a
	add  hl, de                                      ; $7086: $19
	dec  b                                           ; $7087: $05
	inc  bc                                          ; $7088: $03
	inc  b                                           ; $7089: $04
	adc  [hl]                                        ; $708a: $8e
	inc  b                                           ; $708b: $04
	inc  c                                           ; $708c: $0c
	ld   a, c                                        ; $708d: $79
	ld   [hl], d                                     ; $708e: $72
	ld   d, d                                        ; $708f: $52
	ld   [hl], h                                     ; $7090: $74
	ld   [bc], a                                     ; $7091: $02
	jp   nz, $005d                                   ; $7092: $c2 $5d $00

	nop                                              ; $7095: $00
	ld   [bc], a                                     ; $7096: $02
	or   [hl]                                        ; $7097: $b6
	inc  bc                                          ; $7098: $03
	ld   l, e                                        ; $7099: $6b
	ld   a, c                                        ; $709a: $79
	ld   [hl], d                                     ; $709b: $72
	ld   d, d                                        ; $709c: $52
	ld   [hl], h                                     ; $709d: $74
	ld   [bc], a                                     ; $709e: $02
	jp   nz, $005d                                   ; $709f: $c2 $5d $00

	ld   bc, $cf02                                   ; $70a2: $01 $02 $cf
	dec  b                                           ; $70a5: $05
	ld   a, [de]                                     ; $70a6: $1a
	ld   a, c                                        ; $70a7: $79

jr_057_70a8:
	ld   [hl], d                                     ; $70a8: $72
	ld   d, d                                        ; $70a9: $52
	ld   [hl], h                                     ; $70aa: $74
	ld   [bc], a                                     ; $70ab: $02
	jp   nz, $005d                                   ; $70ac: $c2 $5d $00

	ld   [bc], a                                     ; $70af: $02
	rlca                                             ; $70b0: $07
	xor  d                                           ; $70b1: $aa
	nop                                              ; $70b2: $00
	ld   [bc], a                                     ; $70b3: $02
	inc  bc                                          ; $70b4: $03
	ld   bc, $2000                                   ; $70b5: $01 $00 $20
	nop                                              ; $70b8: $00
	rlca                                             ; $70b9: $07
	pop  af                                          ; $70ba: $f1
	ld   [bc], a                                     ; $70bb: $02
	ld   [bc], a                                     ; $70bc: $02
	inc  bc                                          ; $70bd: $03
	ld   bc, $2001                                   ; $70be: $01 $01 $20
	nop                                              ; $70c1: $00
	rlca                                             ; $70c2: $07
	jp   nc, $0204                                   ; $70c3: $d2 $04 $02

	inc  bc                                          ; $70c6: $03
	ld   bc, $2002                                   ; $70c7: $01 $02 $20
	nop                                              ; $70ca: $00
	ld   b, $89                                      ; $70cb: $06 $89
	nop                                              ; $70cd: $00
	rrca                                             ; $70ce: $0f
	ld   b, $01                                      ; $70cf: $06 $01
	ld   bc, $a502                                   ; $70d1: $01 $02 $a5
	inc  b                                           ; $70d4: $04
	xor  d                                           ; $70d5: $aa
	sub  b                                           ; $70d6: $90
	ld   [bc], a                                     ; $70d7: $02
	jr   nz, jr_057_70de                             ; $70d8: $20 $04

	xor  d                                           ; $70da: $aa
	sbc  [hl]                                        ; $70db: $9e
	sub  $a2                                         ; $70dc: $d6 $a2

jr_057_70de:
	and  l                                           ; $70de: $a5
	ret                                              ; $70df: $c9


	ld   l, [hl]                                     ; $70e0: $6e
	ld   l, d                                        ; $70e1: $6a
	sbc  a                                           ; $70e2: $9f
	dec  c                                           ; $70e3: $0d
	nop                                              ; $70e4: $00
	ld   a, [bc]                                     ; $70e5: $0a
	dec  c                                           ; $70e6: $0d
	nop                                              ; $70e7: $00
	nop                                              ; $70e8: $00
	rrca                                             ; $70e9: $0f
	nop                                              ; $70ea: $00
	ld   bc, $1e09                                   ; $70eb: $01 $09 $1e
	nop                                              ; $70ee: $00
	rrca                                             ; $70ef: $0f
	nop                                              ; $70f0: $00
	ld   bc, $ac01                                   ; $70f1: $01 $01 $ac
	push af                                          ; $70f4: $f5
	bit  4, e                                        ; $70f5: $cb $63
	and  c                                           ; $70f7: $a1
	ld   [hl], h                                     ; $70f8: $74
	sbc  [hl]                                        ; $70f9: $9e
	ld   [bc], a                                     ; $70fa: $02
	and  l                                           ; $70fb: $a5
	inc  b                                           ; $70fc: $04
	add  hl, hl                                      ; $70fd: $29
	ld   a, h                                        ; $70fe: $7c
	inc  b                                           ; $70ff: $04
	adc  [hl]                                        ; $7100: $8e
	inc  b                                           ; $7101: $04
	inc  c                                           ; $7102: $0c
	dec  c                                           ; $7103: $0d
	inc  bc                                          ; $7104: $03
	ld   b, h                                        ; $7105: $44
	inc  b                                           ; $7106: $04
	db   $ec                                         ; $7107: $ec
	ld   a, b                                        ; $7108: $78
	ld   a, h                                        ; $7109: $7c
	ld   a, c                                        ; $710a: $79
	sbc  [hl]                                        ; $710b: $9e
	ld   e, a                                        ; $710c: $5f
	ld   d, d                                        ; $710d: $52
	ld   h, c                                        ; $710e: $61
	ld   h, l                                        ; $710f: $65
	ld   a, b                                        ; $7110: $78
	ld   e, l                                        ; $7111: $5d
	ld   [hl], h                                     ; $7112: $74
	dec  c                                           ; $7113: $0d
	ld   d, d                                        ; $7114: $52
	ld   d, d                                        ; $7115: $52
	and  c                                           ; $7116: $a1
	ld   [hl], l                                     ; $7117: $75
	ld   h, a                                        ; $7118: $67
	ld   e, c                                        ; $7119: $59
	ld   sp, hl                                      ; $711a: $f9
	dec  c                                           ; $711b: $0d
	nop                                              ; $711c: $00
	ld   a, [bc]                                     ; $711d: $0a
	inc  e                                           ; $711e: $1c
	ld   b, $00                                      ; $711f: $06 $00
	nop                                              ; $7121: $00
	ld   bc, $546b                                   ; $7122: $01 $6b $54
	ld   l, [hl]                                     ; $7125: $6e
	ld   a, b                                        ; $7126: $78
	rst  $38                                         ; $7127: $ff
	rst  $38                                         ; $7128: $ff
	dec  c                                           ; $7129: $0d
	and  e                                           ; $712a: $a3
	or   b                                           ; $712b: $b0
	cp   b                                           ; $712c: $b8
	jp   hl                                          ; $712d: $e9


	push af                                          ; $712e: $f5
	cp   b                                           ; $712f: $b8
	ei                                               ; $7130: $fb
	push af                                          ; $7131: $f5
	ld   e, d                                        ; $7132: $5a
	dec  c                                           ; $7133: $0d
	adc  c                                           ; $7134: $89
	halt                                             ; $7135: $76
	and  c                                           ; $7136: $a1
	ld   [hl], a                                     ; $7137: $77
	ld   l, [hl]                                     ; $7138: $6e
	ld   e, c                                        ; $7139: $59
	sub  a                                           ; $713a: $97
	ld   a, b                                        ; $713b: $78
	sbc  a                                           ; $713c: $9f
	dec  c                                           ; $713d: $0d
	nop                                              ; $713e: $00
	ld   a, [bc]                                     ; $713f: $0a
	inc  e                                           ; $7140: $1c
	ld   b, $07                                      ; $7141: $06 $07
	rlca                                             ; $7143: $07
	ld   bc, $596e                                   ; $7144: $01 $6e $59
	sub  a                                           ; $7147: $97
	sbc  [hl]                                        ; $7148: $9e
	inc  b                                           ; $7149: $04
	dec  c                                           ; $714a: $0d
	and  b                                           ; $714b: $a0
	ld   e, e                                        ; $714c: $5b
	ld   l, l                                        ; $714d: $6d
	ld   d, [hl]                                     ; $714e: $56
	ld   [hl], h                                     ; $714f: $74
	dec  c                                           ; $7150: $0d
	inc  bc                                          ; $7151: $03
	dec  de                                          ; $7152: $1b
	sbc  d                                           ; $7153: $9a
	ld   a, h                                        ; $7154: $7c
	ld   d, b                                        ; $7155: $50
	sbc  c                                           ; $7156: $99
	and  e                                           ; $7157: $a3
	or   b                                           ; $7158: $b0

Jump_057_7159:
	cp   b                                           ; $7159: $b8
	jp   hl                                          ; $715a: $e9


	push af                                          ; $715b: $f5
	ld   e, d                                        ; $715c: $5a
	dec  c                                           ; $715d: $0d
	ld   [hl], l                                     ; $715e: $75
	ld   e, e                                        ; $715f: $5b
	sbc  d                                           ; $7160: $9a
	ld   a, [hl]                                     ; $7161: $7e
	add  hl, hl                                      ; $7162: $29
	dec  h                                           ; $7163: $25
	ld   a, b                                        ; $7164: $78
	ld   a, h                                        ; $7165: $7c
	ld   h, e                                        ; $7166: $63
	sbc  a                                           ; $7167: $9f
	dec  c                                           ; $7168: $0d
	nop                                              ; $7169: $00
	ld   a, [bc]                                     ; $716a: $0a
	add  hl, de                                      ; $716b: $19
	dec  b                                           ; $716c: $05
	inc  bc                                          ; $716d: $03
	adc  h                                           ; $716e: $8c
	ld   h, e                                        ; $716f: $63
	ld   a, c                                        ; $7170: $79
	inc  bc                                          ; $7171: $03
	push af                                          ; $7172: $f5
	inc  b                                           ; $7173: $04
	db   $ec                                         ; $7174: $ec
	ld   [hl], l                                     ; $7175: $75
	ld   h, a                                        ; $7176: $67
	ld   a, e                                        ; $7177: $7b
	nop                                              ; $7178: $00
	nop                                              ; $7179: $00
	ld   [hl], l                                     ; $717a: $75
	sub  b                                           ; $717b: $90
	sbc  [hl]                                        ; $717c: $9e
	cp   h                                           ; $717d: $bc
	db   $ec                                         ; $717e: $ec
	sub  $7d                                         ; $717f: $d6 $7d
	ld   sp, hl                                      ; $7181: $f9
	nop                                              ; $7182: $00
	ld   bc, $8e04                                   ; $7183: $01 $04 $8e
	inc  b                                           ; $7186: $04
	inc  c                                           ; $7187: $0c
	ld   h, c                                        ; $7188: $61
	sbc  l                                           ; $7189: $9d
	ld   h, e                                        ; $718a: $63
	ld   a, b                                        ; $718b: $78
	ld   d, d                                        ; $718c: $52
	ld   [hl], l                                     ; $718d: $75
	ld   e, l                                        ; $718e: $5d
	ld   l, [hl]                                     ; $718f: $6e
	ld   h, e                                        ; $7190: $63
	ld   d, d                                        ; $7191: $52
	nop                                              ; $7192: $00
	ld   [bc], a                                     ; $7193: $02
	rlca                                             ; $7194: $07
	ld   l, l                                        ; $7195: $6d
	ld   bc, $0302                                   ; $7196: $01 $02 $03
	ld   bc, $2000                                   ; $7199: $01 $00 $20
	nop                                              ; $719c: $00
	rlca                                             ; $719d: $07
	cp   c                                           ; $719e: $b9
	ld   bc, $0302                                   ; $719f: $01 $02 $03
	ld   bc, $2001                                   ; $71a2: $01 $01 $20
	nop                                              ; $71a5: $00
	rlca                                             ; $71a6: $07
	ld   b, b                                        ; $71a7: $40
	ld   [bc], a                                     ; $71a8: $02
	ld   [bc], a                                     ; $71a9: $02
	inc  bc                                          ; $71aa: $03
	ld   bc, $2002                                   ; $71ab: $01 $02 $20
	nop                                              ; $71ae: $00
	ld   b, $ca                                      ; $71af: $06 $ca
	ld   [bc], a                                     ; $71b1: $02
	rrca                                             ; $71b2: $0f
	nop                                              ; $71b3: $00
	ld   bc, $0201                                   ; $71b4: $01 $01 $02
	jr   nc, jr_057_71bd                             ; $71b7: $30 $04

	dec  de                                          ; $71b9: $1b
	ld   [bc], a                                     ; $71ba: $02
	sbc  d                                           ; $71bb: $9a
	ld   e, e                                        ; $71bc: $5b

jr_057_71bd:
	ld   a, h                                        ; $71bd: $7c
	xor  h                                           ; $71be: $ac
	push af                                          ; $71bf: $f5
	bit  4, e                                        ; $71c0: $cb $63
	and  c                                           ; $71c2: $a1
	ld   a, c                                        ; $71c3: $79
	dec  c                                           ; $71c4: $0d
	adc  h                                           ; $71c5: $8c
	ld   h, e                                        ; $71c6: $63
	ld   a, c                                        ; $71c7: $79
	push de                                          ; $71c8: $d5
	call nz, $ecc0                                   ; $71c9: $c4 $c0 $ec
	ld   a, h                                        ; $71cc: $7c
	inc  b                                           ; $71cd: $04
	db   $ec                                         ; $71ce: $ec
	ld   [hl], l                                     ; $71cf: $75
	ld   h, a                                        ; $71d0: $67
	ld   a, e                                        ; $71d1: $7b
	sbc  a                                           ; $71d2: $9f
	dec  c                                           ; $71d3: $0d
	ld   e, d                                        ; $71d4: $5a
	and  c                                           ; $71d5: $a1
	ld   a, [hl]                                     ; $71d6: $7e
	ld   [hl], c                                     ; $71d7: $71
	ld   [hl], h                                     ; $71d8: $74
	ld   [bc], a                                     ; $71d9: $02
	inc  [hl]                                        ; $71da: $34
	ld   h, e                                        ; $71db: $63
	ld   d, d                                        ; $71dc: $52
	sbc  a                                           ; $71dd: $9f
	dec  c                                           ; $71de: $0d
	nop                                              ; $71df: $00
	ld   a, [bc]                                     ; $71e0: $0a
	inc  e                                           ; $71e1: $1c
	ld   b, $01                                      ; $71e2: $06 $01
	ld   bc, $401d                                   ; $71e4: $01 $1d $40
	ld   d, $03                                      ; $71e7: $16 $03
	ld   d, $01                                      ; $71e9: $16 $01
	inc  bc                                          ; $71eb: $03
	jr   z, jr_057_71ee                              ; $71ec: $28 $00

jr_057_71ee:
	ld   bc, $5050                                   ; $71ee: $01 $50 $50
	sbc  [hl]                                        ; $71f1: $9e
	ld   e, d                                        ; $71f2: $5a
	and  c                                           ; $71f3: $a1
	ld   a, [hl]                                     ; $71f4: $7e
	sbc  c                                           ; $71f5: $99
	ld   l, d                                        ; $71f6: $6a
	ld   a, [$000d]                                  ; $71f7: $fa $0d $00
	ld   a, [bc]                                     ; $71fa: $0a
	ld   b, $ca                                      ; $71fb: $06 $ca
	ld   [bc], a                                     ; $71fd: $02
	rrca                                             ; $71fe: $0f
	nop                                              ; $71ff: $00
	ld   bc, $7501                                   ; $7200: $01 $01 $75
	sub  b                                           ; $7203: $90
	sbc  [hl]                                        ; $7204: $9e
	cp   h                                           ; $7205: $bc
	db   $ec                                         ; $7206: $ec
	sub  $7d                                         ; $7207: $d6 $7d
	ld   e, b                                        ; $7209: $58
	adc  d                                           ; $720a: $8a
	ld   d, [hl]                                     ; $720b: $56
	ld   a, b                                        ; $720c: $78
	ld   e, l                                        ; $720d: $5d
	ld   l, a                                        ; $720e: $6f
	sub  c                                           ; $720f: $91
	dec  c                                           ; $7210: $0d
	ld   d, d                                        ; $7211: $52
	ld   e, a                                        ; $7212: $5f
	ld   a, b                                        ; $7213: $78
	ld   d, d                                        ; $7214: $52
	ld   [hl], l                                     ; $7215: $75
	ld   h, a                                        ; $7216: $67
	sub  [hl]                                        ; $7217: $96
	ld   a, e                                        ; $7218: $7b
	sbc  a                                           ; $7219: $9f
	dec  c                                           ; $721a: $0d
	nop                                              ; $721b: $00
	ld   a, [bc]                                     ; $721c: $0a
	inc  e                                           ; $721d: $1c
	ld   b, $03                                      ; $721e: $06 $03
	inc  bc                                          ; $7220: $03
	ld   bc, $1804                                   ; $7221: $01 $04 $18
	ld   l, l                                        ; $7224: $6d
	sbc  b                                           ; $7225: $98
	inc  bc                                          ; $7226: $03
	ld   c, a                                        ; $7227: $4f
	ld   l, [hl]                                     ; $7228: $6e
	sbc  e                                           ; $7229: $9b
	sbc  a                                           ; $722a: $9f
	dec  c                                           ; $722b: $0d
	ld   d, b                                        ; $722c: $50
	sbc  [hl]                                        ; $722d: $9e
	ld   e, b                                        ; $722e: $58
	inc  bc                                          ; $722f: $03
	ld   c, a                                        ; $7230: $4f
	sbc  [hl]                                        ; $7231: $9e
	ld   d, b                                        ; $7232: $50
	ld   l, l                                        ; $7233: $6d
	ld   d, d                                        ; $7234: $52
	ld   e, d                                        ; $7235: $5a
	cp   h                                           ; $7236: $bc
	db   $ec                                         ; $7237: $ec
	sub  $90                                         ; $7238: $d6 $90
	dec  c                                           ; $723a: $0d
	ld   e, b                                        ; $723b: $58
	adc  d                                           ; $723c: $8a
	ld   d, [hl]                                     ; $723d: $56
	sub  a                                           ; $723e: $97
	sbc  d                                           ; $723f: $9a
	ld   a, b                                        ; $7240: $78
	ld   d, d                                        ; $7241: $52
	halt                                             ; $7242: $76
	dec  b                                           ; $7243: $05
	pop  de                                          ; $7244: $d1
	ld   [hl], c                                     ; $7245: $71
	ld   [hl], h                                     ; $7246: $74
	sbc  c                                           ; $7247: $99
	ld   a, b                                        ; $7248: $78
	sbc  a                                           ; $7249: $9f
	dec  c                                           ; $724a: $0d
	nop                                              ; $724b: $00
	ld   a, [bc]                                     ; $724c: $0a
	inc  e                                           ; $724d: $1c
	ld   b, $02                                      ; $724e: $06 $02
	ld   [bc], a                                     ; $7250: $02
	dec  e                                           ; $7251: $1d
	ld   b, b                                        ; $7252: $40
	ld   d, $03                                      ; $7253: $16 $03
	ld   d, $01                                      ; $7255: $16 $01
	ld   bc, $0029                                   ; $7257: $01 $29 $00
	ld   bc, $9d02                                   ; $725a: $01 $02 $9d
	ld   [hl], c                                     ; $725d: $71
	halt                                             ; $725e: $76
	ld   e, l                                        ; $725f: $5d
	ld   e, a                                        ; $7260: $5f
	ld   [hl], a                                     ; $7261: $77
	sbc  [hl]                                        ; $7262: $9e
	ld   d, b                                        ; $7263: $50
	ld   l, l                                        ; $7264: $6d
	ld   d, d                                        ; $7265: $52
	ld   a, l                                        ; $7266: $7d
	dec  c                                           ; $7267: $0d
	inc  b                                           ; $7268: $04
	adc  [hl]                                        ; $7269: $8e
	inc  b                                           ; $726a: $04
	inc  c                                           ; $726b: $0c
	inc  b                                           ; $726c: $04
	db   $ec                                         ; $726d: $ec
	inc  bc                                          ; $726e: $03
	or   b                                           ; $726f: $b0
	ld   a, b                                        ; $7270: $78
	and  c                                           ; $7271: $a1
	ld   l, [hl]                                     ; $7272: $6e
	ld   l, d                                        ; $7273: $6a
	sbc  a                                           ; $7274: $9f
	dec  c                                           ; $7275: $0d
	pop  de                                          ; $7276: $d1
	xor  h                                           ; $7277: $ac
	ld   a, c                                        ; $7278: $79
	ld   h, a                                        ; $7279: $67
	and  c                                           ; $727a: $a1
	ld   a, b                                        ; $727b: $78
	sub  [hl]                                        ; $727c: $96
	ld   a, b                                        ; $727d: $78
	sbc  a                                           ; $727e: $9f
	dec  c                                           ; $727f: $0d
	nop                                              ; $7280: $00
	ld   a, [bc]                                     ; $7281: $0a
	ld   b, $ca                                      ; $7282: $06 $ca
	ld   [bc], a                                     ; $7284: $02
	rrca                                             ; $7285: $0f
	nop                                              ; $7286: $00
	ld   bc, $5d01                                   ; $7287: $01 $01 $5d
	sbc  d                                           ; $728a: $9a
	ld   e, [hl]                                     ; $728b: $5e
	sbc  d                                           ; $728c: $9a
	sub  b                                           ; $728d: $90
	inc  b                                           ; $728e: $04
	adc  [hl]                                        ; $728f: $8e
	inc  b                                           ; $7290: $04
	inc  c                                           ; $7291: $0c
	ld   h, c                                        ; $7292: $61
	sbc  l                                           ; $7293: $9d
	ld   h, e                                        ; $7294: $63
	ld   a, b                                        ; $7295: $78
	ld   d, d                                        ; $7296: $52
	ld   [hl], l                                     ; $7297: $75
	dec  c                                           ; $7298: $0d
	ld   [bc], a                                     ; $7299: $02
	inc  [hl]                                        ; $729a: $34
	ld   h, e                                        ; $729b: $63
	ld   d, d                                        ; $729c: $52
	ld   a, e                                        ; $729d: $7b
	sbc  a                                           ; $729e: $9f
	dec  c                                           ; $729f: $0d
	dec  b                                           ; $72a0: $05
	inc  de                                          ; $72a1: $13
	ld   h, l                                        ; $72a2: $65
	adc  l                                           ; $72a3: $8d
	ld   a, c                                        ; $72a4: $79
	ld   h, l                                        ; $72a5: $65
	ld   [hl], h                                     ; $72a6: $74
	sbc  c                                           ; $72a7: $99
	and  c                                           ; $72a8: $a1
	ld   [hl], l                                     ; $72a9: $75
	ld   h, a                                        ; $72aa: $67
	ld   e, c                                        ; $72ab: $59
	sub  a                                           ; $72ac: $97
	sbc  a                                           ; $72ad: $9f
	dec  c                                           ; $72ae: $0d
	nop                                              ; $72af: $00
	ld   a, [bc]                                     ; $72b0: $0a
	inc  e                                           ; $72b1: $1c
	ld   b, $05                                      ; $72b2: $06 $05
	dec  b                                           ; $72b4: $05
	ld   bc, $9e9d                                   ; $72b5: $01 $9d $9e
	sbc  l                                           ; $72b8: $9d
	ld   e, c                                        ; $72b9: $59
	ld   [hl], c                                     ; $72ba: $71
	ld   [hl], h                                     ; $72bb: $74
	sbc  c                                           ; $72bc: $99
	sub  [hl]                                        ; $72bd: $96
	sbc  a                                           ; $72be: $9f
	dec  c                                           ; $72bf: $0d
	ld   a, b                                        ; $72c0: $78
	and  c                                           ; $72c1: $a1
	ld   l, [hl]                                     ; $72c2: $6e
	sub  [hl]                                        ; $72c3: $96
	sbc  [hl]                                        ; $72c4: $9e
	ld   h, e                                        ; $72c5: $63
	ld   e, l                                        ; $72c6: $5d
	sub  a                                           ; $72c7: $97
	adc  l                                           ; $72c8: $8d
	ld   l, l                                        ; $72c9: $6d
	ld   d, d                                        ; $72ca: $52
	ld   a, b                                        ; $72cb: $78
	ld   h, c                                        ; $72cc: $61
	halt                                             ; $72cd: $76
	dec  c                                           ; $72ce: $0d
	ld   [bc], a                                     ; $72cf: $02
	sbc  l                                           ; $72d0: $9d
	ld   d, d                                        ; $72d1: $52
	sub  d                                           ; $72d2: $92
	ld   e, d                                        ; $72d3: $5a
	ld   [hl], c                                     ; $72d4: $71
	ld   [hl], h                                     ; $72d5: $74
	rst  $38                                         ; $72d6: $ff
	rst  $38                                         ; $72d7: $ff
	dec  c                                           ; $72d8: $0d
	nop                                              ; $72d9: $00
	ld   a, [bc]                                     ; $72da: $0a
	inc  e                                           ; $72db: $1c
	ld   b, $01                                      ; $72dc: $06 $01
	ld   bc, $401d                                   ; $72de: $01 $1d $40
	ld   d, $03                                      ; $72e1: $16 $03
	ld   d, $01                                      ; $72e3: $16 $01
	ld   bc, $0028                                   ; $72e5: $01 $28 $00
	ld   bc, $9075                                   ; $72e8: $01 $75 $90
	adc  h                                           ; $72eb: $8c
	ld   d, b                                        ; $72ec: $50
	sbc  [hl]                                        ; $72ed: $9e
	ld   [bc], a                                     ; $72ee: $02
	pop  bc                                          ; $72ef: $c1
	inc  b                                           ; $72f0: $04
	rla                                              ; $72f1: $17
	ld   a, c                                        ; $72f2: $79
	ld   a, l                                        ; $72f3: $7d
	dec  c                                           ; $72f4: $0d
	ld   l, e                                        ; $72f5: $6b
	ld   d, [hl]                                     ; $72f6: $56
	sbc  c                                           ; $72f7: $99
	halt                                             ; $72f8: $76
	dec  b                                           ; $72f9: $05
	pop  de                                          ; $72fa: $d1
	ld   d, h                                        ; $72fb: $54
	ld   l, d                                        ; $72fc: $6a
	sbc  a                                           ; $72fd: $9f
	dec  c                                           ; $72fe: $0d
	dec  b                                           ; $72ff: $05
	inc  de                                          ; $7300: $13
	ld   h, l                                        ; $7301: $65
	adc  l                                           ; $7302: $8d
	ld   a, c                                        ; $7303: $79
	ld   h, l                                        ; $7304: $65
	ld   [hl], h                                     ; $7305: $74
	ld   a, b                                        ; $7306: $78
	sub  [hl]                                        ; $7307: $96
	sbc  a                                           ; $7308: $9f
	dec  c                                           ; $7309: $0d
	nop                                              ; $730a: $00
	ld   a, [bc]                                     ; $730b: $0a
	ld   b, $ca                                      ; $730c: $06 $ca
	ld   [bc], a                                     ; $730e: $02
	inc  e                                           ; $730f: $1c
	ld   b, $00                                      ; $7310: $06 $00
	nop                                              ; $7312: $00
	ld   bc, $7158                                   ; $7313: $01 $58 $71
	halt                                             ; $7316: $76
	sbc  [hl]                                        ; $7317: $9e
	inc  bc                                          ; $7318: $03
	ld   l, l                                        ; $7319: $6d
	dec  b                                           ; $731a: $05
	add  hl, de                                      ; $731b: $19
	ld   a, h                                        ; $731c: $7c
	inc  bc                                          ; $731d: $03
	ld   l, a                                        ; $731e: $6f
	ld   [bc], a                                     ; $731f: $02
	xor  c                                           ; $7320: $a9
	ld   l, [hl]                                     ; $7321: $6e
	ld   l, d                                        ; $7322: $6a
	sbc  a                                           ; $7323: $9f
	dec  c                                           ; $7324: $0d
	ld   d, d                                        ; $7325: $52
	ld   l, e                                        ; $7326: $6b
	ld   h, b                                        ; $7327: $60
	sub  [hl]                                        ; $7328: $96
	sbc  a                                           ; $7329: $9f
	dec  c                                           ; $732a: $0d
	nop                                              ; $732b: $00
	ld   a, [bc]                                     ; $732c: $0a
	dec  c                                           ; $732d: $0d
	nop                                              ; $732e: $00
	nop                                              ; $732f: $00
	rrca                                             ; $7330: $0f
	nop                                              ; $7331: $00
	ld   bc, $1e09                                   ; $7332: $01 $09 $1e
	nop                                              ; $7335: $00
	rrca                                             ; $7336: $0f
	nop                                              ; $7337: $00
	ld   bc, $ac01                                   ; $7338: $01 $01 $ac
	push af                                          ; $733b: $f5
	bit  4, e                                        ; $733c: $cb $63
	and  c                                           ; $733e: $a1
	sbc  a                                           ; $733f: $9f
	dec  c                                           ; $7340: $0d
	ld   [bc], a                                     ; $7341: $02
	or   [hl]                                        ; $7342: $b6
	inc  bc                                          ; $7343: $03
	ld   l, e                                        ; $7344: $6b
	ld   [hl], c                                     ; $7345: $71
	ld   [hl], h                                     ; $7346: $74
	dec  b                                           ; $7347: $05
	inc  de                                          ; $7348: $13
	ld   h, l                                        ; $7349: $65
	ld   d, d                                        ; $734a: $52
	ld   [hl], l                                     ; $734b: $75
	ld   h, a                                        ; $734c: $67
	ld   e, c                                        ; $734d: $59
	ld   sp, hl                                      ; $734e: $f9
	dec  c                                           ; $734f: $0d
	nop                                              ; $7350: $00
	ld   a, [bc]                                     ; $7351: $0a
	inc  e                                           ; $7352: $1c
	ld   b, $03                                      ; $7353: $06 $03
	inc  bc                                          ; $7355: $03
	ld   bc, $6d50                                   ; $7356: $01 $50 $6d
	ld   d, d                                        ; $7359: $52
	ld   a, c                                        ; $735a: $79
	inc  b                                           ; $735b: $04
	ld   c, c                                        ; $735c: $49
	ld   [bc], a                                     ; $735d: $02
	jp   nz, $7452                                   ; $735e: $c2 $52 $74

	and  c                                           ; $7361: $a1
	ld   l, [hl]                                     ; $7362: $6e
	sub  [hl]                                        ; $7363: $96
	sbc  a                                           ; $7364: $9f
	dec  c                                           ; $7365: $0d
	ld   l, e                                        ; $7366: $6b
	and  c                                           ; $7367: $a1
	ld   a, b                                        ; $7368: $78
	ld   a, h                                        ; $7369: $7c
	inc  b                                           ; $736a: $04
	jr   jr_057_73da                                 ; $736b: $18 $6d

	sbc  b                                           ; $736d: $98
	inc  bc                                          ; $736e: $03
	ld   c, a                                        ; $736f: $4f
	ld   a, c                                        ; $7370: $79
	ld   [bc], a                                     ; $7371: $02
	add  e                                           ; $7372: $83
	adc  h                                           ; $7373: $8c
	ld   [hl], c                                     ; $7374: $71
	ld   [hl], h                                     ; $7375: $74
	sbc  c                                           ; $7376: $99
	dec  c                                           ; $7377: $0d
	ld   h, [hl]                                     ; $7378: $66
	sub  c                                           ; $7379: $91
	ld   a, b                                        ; $737a: $78
	ld   d, d                                        ; $737b: $52
	ld   e, c                                        ; $737c: $59
	sbc  a                                           ; $737d: $9f
	dec  c                                           ; $737e: $0d
	nop                                              ; $737f: $00
	ld   a, [bc]                                     ; $7380: $0a
	add  hl, de                                      ; $7381: $19
	dec  b                                           ; $7382: $05
	inc  bc                                          ; $7383: $03
	inc  b                                           ; $7384: $04
	dec  c                                           ; $7385: $0d
	ld   a, h                                        ; $7386: $7c
	ld   [bc], a                                     ; $7387: $02
	jr   nz, jr_057_738e                             ; $7388: $20 $04

	sub  l                                           ; $738a: $95
	ld   l, [hl]                                     ; $738b: $6e
	ld   e, c                                        ; $738c: $59
	sub  a                                           ; $738d: $97

jr_057_738e:
	ld   sp, hl                                      ; $738e: $f9
	nop                                              ; $738f: $00
	nop                                              ; $7390: $00
	inc  bc                                          ; $7391: $03
	ld   d, d                                        ; $7392: $52
	ld   [bc], a                                     ; $7393: $02
	or   a                                           ; $7394: $b7
	ld   a, h                                        ; $7395: $7c
	ld   [bc], a                                     ; $7396: $02
	jr   nz, jr_057_739d                             ; $7397: $20 $04

	sub  l                                           ; $7399: $95
	ld   l, [hl]                                     ; $739a: $6e
	ld   e, c                                        ; $739b: $59
	sub  a                                           ; $739c: $97

jr_057_739d:
	ld   sp, hl                                      ; $739d: $f9
	nop                                              ; $739e: $00
	ld   bc, $f5ac                                   ; $739f: $01 $ac $f5
	bit  4, e                                        ; $73a2: $cb $63
	and  c                                           ; $73a4: $a1
	ld   l, e                                        ; $73a5: $6b
	ld   a, h                                        ; $73a6: $7c
	sub  b                                           ; $73a7: $90
	ld   a, h                                        ; $73a8: $7c
	ld   l, [hl]                                     ; $73a9: $6e
	ld   e, c                                        ; $73aa: $59
	sub  a                                           ; $73ab: $97
	ld   sp, hl                                      ; $73ac: $f9
	nop                                              ; $73ad: $00
	ld   [bc], a                                     ; $73ae: $02
	rlca                                             ; $73af: $07
	adc  b                                           ; $73b0: $88
	inc  bc                                          ; $73b1: $03
	ld   [bc], a                                     ; $73b2: $02
	inc  bc                                          ; $73b3: $03
	ld   bc, $2000                                   ; $73b4: $01 $00 $20
	nop                                              ; $73b7: $00
	rlca                                             ; $73b8: $07
	or   e                                           ; $73b9: $b3
	inc  bc                                          ; $73ba: $03
	ld   [bc], a                                     ; $73bb: $02
	inc  bc                                          ; $73bc: $03
	ld   bc, $2001                                   ; $73bd: $01 $01 $20
	nop                                              ; $73c0: $00
	rlca                                             ; $73c1: $07
	ld   sp, $0204                                   ; $73c2: $31 $04 $02
	inc  bc                                          ; $73c5: $03
	ld   bc, $2002                                   ; $73c6: $01 $02 $20
	nop                                              ; $73c9: $00
	ld   b, $a2                                      ; $73ca: $06 $a2
	inc  b                                           ; $73cc: $04
	rrca                                             ; $73cd: $0f
	nop                                              ; $73ce: $00
	ld   bc, $0201                                   ; $73cf: $01 $01 $02
	or   [hl]                                        ; $73d2: $b6
	inc  bc                                          ; $73d3: $03
	ld   l, e                                        ; $73d4: $6b
	ld   a, l                                        ; $73d5: $7d
	xor  h                                           ; $73d6: $ac
	push af                                          ; $73d7: $f5
	bit  4, e                                        ; $73d8: $cb $63

jr_057_73da:
	and  c                                           ; $73da: $a1
	ld   a, h                                        ; $73db: $7c
	dec  c                                           ; $73dc: $0d
	inc  b                                           ; $73dd: $04
	dec  c                                           ; $73de: $0d

jr_057_73df:
	ld   a, h                                        ; $73df: $7c
	ld   [bc], a                                     ; $73e0: $02
	jr   nz, jr_057_73e7                             ; $73e1: $20 $04

	sub  l                                           ; $73e3: $95
	ld   a, h                                        ; $73e4: $7c
	sub  [hl]                                        ; $73e5: $96
	ld   d, h                                        ; $73e6: $54

jr_057_73e7:
	ld   a, b                                        ; $73e7: $78
	db   $e4                                         ; $73e8: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73e9: $cf
	dec  c                                           ; $73ea: $0d
	ld   l, [hl]                                     ; $73eb: $6e
	ld   e, c                                        ; $73ec: $59
	sub  a                                           ; $73ed: $97
	ld   [hl], l                                     ; $73ee: $75
	ld   h, a                                        ; $73ef: $67
	ld   e, c                                        ; $73f0: $59
	ld   sp, hl                                      ; $73f1: $f9
	dec  c                                           ; $73f2: $0d
	nop                                              ; $73f3: $00
	ld   a, [bc]                                     ; $73f4: $0a
	ld   b, $e0                                      ; $73f5: $06 $e0
	inc  bc                                          ; $73f7: $03
	rrca                                             ; $73f8: $0f
	nop                                              ; $73f9: $00
	ld   bc, $0201                                   ; $73fa: $01 $01 $02
	or   [hl]                                        ; $73fd: $b6
	inc  bc                                          ; $73fe: $03
	ld   l, e                                        ; $73ff: $6b
	ld   a, l                                        ; $7400: $7d
	xor  h                                           ; $7401: $ac
	push af                                          ; $7402: $f5
	bit  4, e                                        ; $7403: $cb $63
	and  c                                           ; $7405: $a1
	ld   a, h                                        ; $7406: $7c
	dec  c                                           ; $7407: $0d
	inc  bc                                          ; $7408: $03
	ld   d, d                                        ; $7409: $52
	ld   [bc], a                                     ; $740a: $02
	or   a                                           ; $740b: $b7
	ld   a, h                                        ; $740c: $7c
	ld   [bc], a                                     ; $740d: $02
	jr   nz, jr_057_7414                             ; $740e: $20 $04

	sub  l                                           ; $7410: $95
	ld   a, h                                        ; $7411: $7c
	sub  [hl]                                        ; $7412: $96
	ld   d, h                                        ; $7413: $54

jr_057_7414:
	ld   a, b                                        ; $7414: $78
	db   $e4                                         ; $7415: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7416: $cf
	dec  c                                           ; $7417: $0d
	ld   l, [hl]                                     ; $7418: $6e
	ld   e, c                                        ; $7419: $59
	sub  a                                           ; $741a: $97
	ld   [hl], l                                     ; $741b: $75
	ld   h, a                                        ; $741c: $67
	ld   e, c                                        ; $741d: $59
	ld   sp, hl                                      ; $741e: $f9
	dec  c                                           ; $741f: $0d
	nop                                              ; $7420: $00
	ld   a, [bc]                                     ; $7421: $0a
	ld   b, $e0                                      ; $7422: $06 $e0
	inc  bc                                          ; $7424: $03
	inc  e                                           ; $7425: $1c
	ld   b, $00                                      ; $7426: $06 $00
	nop                                              ; $7428: $00
	ld   bc, $546b                                   ; $7429: $01 $6b $54
	ld   l, [hl]                                     ; $742c: $6e
	sub  [hl]                                        ; $742d: $96
	sbc  a                                           ; $742e: $9f
	dec  c                                           ; $742f: $0d
	ld   d, b                                        ; $7430: $50
	ld   l, l                                        ; $7431: $6d
	ld   d, d                                        ; $7432: $52
	ld   e, c                                        ; $7433: $59
	sub  a                                           ; $7434: $97
	ld   [bc], a                                     ; $7435: $02
	or   [hl]                                        ; $7436: $b6
	inc  bc                                          ; $7437: $03
	ld   l, e                                        ; $7438: $6b
	and  b                                           ; $7439: $a0
	inc  bc                                          ; $743a: $03
	jr   jr_057_74ae                                 ; $743b: $18 $71

	ld   l, l                                        ; $743d: $6d
	sub  a                                           ; $743e: $97
	dec  c                                           ; $743f: $0d
	ld   a, b                                        ; $7440: $78
	db   $fc                                         ; $7441: $fc
	and  c                                           ; $7442: $a1
	ld   a, c                                        ; $7443: $79
	sub  b                                           ; $7444: $90
	inc  bc                                          ; $7445: $03
	jr   z, jr_057_73df                              ; $7446: $28 $97

	ld   a, b                                        ; $7448: $78
	ld   d, d                                        ; $7449: $52
	sbc  a                                           ; $744a: $9f
	dec  c                                           ; $744b: $0d
	nop                                              ; $744c: $00
	ld   a, [bc]                                     ; $744d: $0a
	inc  e                                           ; $744e: $1c
	ld   b, $01                                      ; $744f: $06 $01
	ld   bc, $401d                                   ; $7451: $01 $1d $40
	ld   d, $03                                      ; $7454: $16 $03
	ld   d, $01                                      ; $7456: $16 $01
	ld   [bc], a                                     ; $7458: $02
	jr   z, jr_057_745b                              ; $7459: $28 $00

jr_057_745b:
	ld   bc, $b602                                   ; $745b: $01 $02 $b6
	inc  bc                                          ; $745e: $03
	ld   l, e                                        ; $745f: $6b
	ld   e, d                                        ; $7460: $5a
	ld   d, b                                        ; $7461: $50
	ld   l, l                                        ; $7462: $6d
	ld   d, d                                        ; $7463: $52
	ld   a, h                                        ; $7464: $7c
	dec  c                                           ; $7465: $0d
	inc  bc                                          ; $7466: $03
	ld   d, d                                        ; $7467: $52
	ld   e, e                                        ; $7468: $5b
	ld   e, d                                        ; $7469: $5a
	ld   d, d                                        ; $746a: $52
	ld   a, b                                        ; $746b: $78
	and  c                                           ; $746c: $a1
	ld   l, [hl]                                     ; $746d: $6e
	rst  $38                                         ; $746e: $ff
	rst  $38                                         ; $746f: $ff
	dec  c                                           ; $7470: $0d
	nop                                              ; $7471: $00
	ld   a, [bc]                                     ; $7472: $0a
	ld   b, $a2                                      ; $7473: $06 $a2
	inc  b                                           ; $7475: $04
	rrca                                             ; $7476: $0f
	nop                                              ; $7477: $00
	ld   bc, $0201                                   ; $7478: $01 $01 $02
	or   [hl]                                        ; $747b: $b6
	inc  bc                                          ; $747c: $03
	ld   l, e                                        ; $747d: $6b
	ld   a, l                                        ; $747e: $7d
	xor  h                                           ; $747f: $ac
	push af                                          ; $7480: $f5
	bit  4, e                                        ; $7481: $cb $63
	and  c                                           ; $7483: $a1
	ld   a, h                                        ; $7484: $7c
	dec  c                                           ; $7485: $0d
	ld   l, e                                        ; $7486: $6b
	ld   a, h                                        ; $7487: $7c
	sub  b                                           ; $7488: $90
	ld   a, h                                        ; $7489: $7c
	ld   l, [hl]                                     ; $748a: $6e
	ld   e, c                                        ; $748b: $59
	sub  a                                           ; $748c: $97
	ld   [hl], l                                     ; $748d: $75
	ld   h, a                                        ; $748e: $67
	ld   e, c                                        ; $748f: $59
	ld   sp, hl                                      ; $7490: $f9
	dec  c                                           ; $7491: $0d
	nop                                              ; $7492: $00
	ld   a, [bc]                                     ; $7493: $0a
	inc  e                                           ; $7494: $1c
	ld   b, $05                                      ; $7495: $06 $05
	dec  b                                           ; $7497: $05
	ld   bc, $fc54                                   ; $7498: $01 $54 $fc
	and  c                                           ; $749b: $a1
	rst  $38                                         ; $749c: $ff
	rst  $38                                         ; $749d: $ff
	dec  c                                           ; $749e: $0d
	ld   [bc], a                                     ; $749f: $02
	or   [hl]                                        ; $74a0: $b6
	inc  bc                                          ; $74a1: $03
	ld   l, e                                        ; $74a2: $6b
	ld   e, d                                        ; $74a3: $5a
	ld   d, b                                        ; $74a4: $50
	ld   l, l                                        ; $74a5: $6d
	ld   d, d                                        ; $74a6: $52
	ld   [hl], c                                     ; $74a7: $71
	ld   [hl], h                                     ; $74a8: $74
	ld   d, d                                        ; $74a9: $52
	ld   d, h                                        ; $74aa: $54
	ld   a, h                                        ; $74ab: $7c
	sub  b                                           ; $74ac: $90
	dec  c                                           ; $74ad: $0d

jr_057_74ae:
	ld   a, b                                        ; $74ae: $78
	and  c                                           ; $74af: $a1
	ld   e, c                                        ; $74b0: $59
	ld   [bc], a                                     ; $74b1: $02
	or   [hl]                                        ; $74b2: $b6
	inc  bc                                          ; $74b3: $03
	ld   l, e                                        ; $74b4: $6b
	pop  de                                          ; $74b5: $d1
	xor  h                                           ; $74b6: $ac
	adc  l                                           ; $74b7: $8d
	ld   l, l                                        ; $74b8: $6d
	ld   d, d                                        ; $74b9: $52
	ld   l, [hl]                                     ; $74ba: $6e
	ld   a, b                                        ; $74bb: $78
	rst  $38                                         ; $74bc: $ff
	rst  $38                                         ; $74bd: $ff
	dec  c                                           ; $74be: $0d
	nop                                              ; $74bf: $00
	ld   a, [bc]                                     ; $74c0: $0a
	inc  e                                           ; $74c1: $1c
	ld   b, $01                                      ; $74c2: $06 $01
	ld   bc, $401d                                   ; $74c4: $01 $1d $40
	ld   d, $03                                      ; $74c7: $16 $03
	ld   d, $01                                      ; $74c9: $16 $01
	ld   bc, $0028                                   ; $74cb: $01 $28 $00
	ld   bc, $508c                                   ; $74ce: $01 $8c $50
	sbc  [hl]                                        ; $74d1: $9e
	inc  bc                                          ; $74d2: $03
	ld   d, d                                        ; $74d3: $52
	ld   e, e                                        ; $74d4: $5b
	ld   e, d                                        ; $74d5: $5a
	ld   d, d                                        ; $74d6: $52
	ld   [hl], l                                     ; $74d7: $75
	ld   a, l                                        ; $74d8: $7d
	dec  c                                           ; $74d9: $0d
	ld   d, b                                        ; $74da: $50
	sbc  c                                           ; $74db: $99
	ld   e, a                                        ; $74dc: $5f
	ld   [hl], a                                     ; $74dd: $77
	ld   a, b                                        ; $74de: $78
	rst  $38                                         ; $74df: $ff
	rst  $38                                         ; $74e0: $ff
	dec  c                                           ; $74e1: $0d
	nop                                              ; $74e2: $00
	ld   a, [bc]                                     ; $74e3: $0a
	ld   b, $a2                                      ; $74e4: $06 $a2
	inc  b                                           ; $74e6: $04
	inc  e                                           ; $74e7: $1c
	ld   b, $00                                      ; $74e8: $06 $00
	nop                                              ; $74ea: $00
	ld   bc, $7158                                   ; $74eb: $01 $58 $71
	halt                                             ; $74ee: $76
	sbc  [hl]                                        ; $74ef: $9e
	inc  bc                                          ; $74f0: $03
	ld   l, a                                        ; $74f1: $6f
	ld   [bc], a                                     ; $74f2: $02
	xor  c                                           ; $74f3: $a9
	ld   l, [hl]                                     ; $74f4: $6e
	sbc  a                                           ; $74f5: $9f
	dec  c                                           ; $74f6: $0d
	ld   h, [hl]                                     ; $74f7: $66
	sub  c                                           ; $74f8: $91
	sbc  [hl]                                        ; $74f9: $9e
	ld   [bc], a                                     ; $74fa: $02
	and  l                                           ; $74fb: $a5
	inc  b                                           ; $74fc: $04
	xor  d                                           ; $74fd: $aa
	sub  b                                           ; $74fe: $90
	ld   [bc], a                                     ; $74ff: $02
	jr   nz, jr_057_7506                             ; $7500: $20 $04

	xor  d                                           ; $7502: $aa
	dec  c                                           ; $7503: $0d
	sub  $a2                                         ; $7504: $d6 $a2

jr_057_7506:
	and  l                                           ; $7506: $a5
	ret                                              ; $7507: $c9


	ld   l, [hl]                                     ; $7508: $6e
	ld   l, d                                        ; $7509: $6a
	ld   a, [$000d]                                  ; $750a: $fa $0d $00
	ld   a, [bc]                                     ; $750d: $0a
	dec  c                                           ; $750e: $0d
	nop                                              ; $750f: $00
	nop                                              ; $7510: $00
	rrca                                             ; $7511: $0f
	nop                                              ; $7512: $00
	ld   bc, $1e09                                   ; $7513: $01 $09 $1e
	nop                                              ; $7516: $00
	rrca                                             ; $7517: $0f
	nop                                              ; $7518: $00
	ld   bc, $0201                                   ; $7519: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $751c: $cf
	dec  b                                           ; $751d: $05
	ld   a, [de]                                     ; $751e: $1a
	ld   h, e                                        ; $751f: $63
	and  c                                           ; $7520: $a1
	ld   [hl], h                                     ; $7521: $74
	sbc  [hl]                                        ; $7522: $9e
	xor  h                                           ; $7523: $ac
	push af                                          ; $7524: $f5
	bit  4, e                                        ; $7525: $cb $63
	and  c                                           ; $7527: $a1
	ld   e, c                                        ; $7528: $59
	sub  a                                           ; $7529: $97
	dec  c                                           ; $752a: $0d
	ld   [bc], a                                     ; $752b: $02
	sub  l                                           ; $752c: $95
	ld   [hl], h                                     ; $752d: $74
	sbc  [hl]                                        ; $752e: $9e
	ld   [hl], a                                     ; $752f: $77
	and  c                                           ; $7530: $a1
	ld   a, b                                        ; $7531: $78
	inc  b                                           ; $7532: $04
	ld   a, b                                        ; $7533: $78
	ld   [hl], l                                     ; $7534: $75
	ld   h, a                                        ; $7535: $67
	ld   e, c                                        ; $7536: $59
	ld   sp, hl                                      ; $7537: $f9
	dec  c                                           ; $7538: $0d
	nop                                              ; $7539: $00
	ld   a, [bc]                                     ; $753a: $0a
	inc  e                                           ; $753b: $1c
	ld   b, $01                                      ; $753c: $06 $01
	ld   bc, $0201                                   ; $753e: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7541: $cf
	dec  b                                           ; $7542: $05
	ld   a, [de]                                     ; $7543: $1a
	ld   sp, hl                                      ; $7544: $f9
	dec  c                                           ; $7545: $0d
	inc  b                                           ; $7546: $04
	ret  c                                           ; $7547: $d8

	inc  b                                           ; $7548: $04
	xor  h                                           ; $7549: $ac
	ld   d, d                                        ; $754a: $52
	sub  d                                           ; $754b: $92
	ld   [hl], d                                     ; $754c: $72
	ld   l, [hl]                                     ; $754d: $6e
	sub  [hl]                                        ; $754e: $96
	ld   a, b                                        ; $754f: $78
	sbc  a                                           ; $7550: $9f
	dec  c                                           ; $7551: $0d
	ld   d, d                                        ; $7552: $52
	ld   [hl], d                                     ; $7553: $72
	sub  b                                           ; $7554: $90
	ld   b, $0d                                      ; $7555: $06 $0d
	inc  b                                           ; $7557: $04
	ld   e, [hl]                                     ; $7558: $5e
	ld   h, l                                        ; $7559: $65
	ld   [hl], h                                     ; $755a: $74
	sbc  c                                           ; $755b: $99
	ld   e, c                                        ; $755c: $59
	sub  a                                           ; $755d: $97
	sbc  a                                           ; $755e: $9f
	dec  c                                           ; $755f: $0d
	nop                                              ; $7560: $00
	ld   a, [bc]                                     ; $7561: $0a
	inc  e                                           ; $7562: $1c
	ld   b, $00                                      ; $7563: $06 $00
	nop                                              ; $7565: $00
	ld   bc, $9075                                   ; $7566: $01 $75 $90
	sbc  [hl]                                        ; $7569: $9e
	ld   d, b                                        ; $756a: $50
	and  c                                           ; $756b: $a1
	ld   l, [hl]                                     ; $756c: $6e
	ld   e, a                                        ; $756d: $5f
	inc  bc                                          ; $756e: $03
	add  e                                           ; $756f: $83
	inc  b                                           ; $7570: $04
	sbc  b                                           ; $7571: $98
	ld   h, l                                        ; $7572: $65
	ld   [hl], h                                     ; $7573: $74
	sub  b                                           ; $7574: $90
	dec  c                                           ; $7575: $0d
	adc  a                                           ; $7576: $8f
	ld   h, b                                        ; $7577: $60
	ld   l, b                                        ; $7578: $68
	ld   a, c                                        ; $7579: $79
	inc  bc                                          ; $757a: $03
	add  c                                           ; $757b: $81
	ld   h, l                                        ; $757c: $65
	ld   d, d                                        ; $757d: $52
	sub  b                                           ; $757e: $90
	ld   a, h                                        ; $757f: $7c
	inc  bc                                          ; $7580: $03
	xor  h                                           ; $7581: $ac
	sbc  c                                           ; $7582: $99
	ld   a, h                                        ; $7583: $7c
	ld   a, l                                        ; $7584: $7d
	dec  c                                           ; $7585: $0d
	inc  b                                           ; $7586: $04
	adc  a                                           ; $7587: $8f
	inc  b                                           ; $7588: $04
	jr   jr_057_7604                                 ; $7589: $18 $79

	xor  c                                           ; $758b: $a9
	db   $eb                                         ; $758c: $eb
	and  l                                           ; $758d: $a5
	halt                                             ; $758e: $76
	dec  b                                           ; $758f: $05
	pop  de                                          ; $7590: $d1
	ld   d, h                                        ; $7591: $54
	sub  [hl]                                        ; $7592: $96
	sbc  a                                           ; $7593: $9f
	dec  c                                           ; $7594: $0d
	nop                                              ; $7595: $00
	ld   a, [bc]                                     ; $7596: $0a
	ld   bc, $7158                                   ; $7597: $01 $58 $71
	halt                                             ; $759a: $76
	sbc  [hl]                                        ; $759b: $9e
	inc  bc                                          ; $759c: $03
	ld   l, a                                        ; $759d: $6f
	ld   [bc], a                                     ; $759e: $02
	xor  c                                           ; $759f: $a9
	ld   l, [hl]                                     ; $75a0: $6e
	sbc  a                                           ; $75a1: $9f
	dec  c                                           ; $75a2: $0d
	ld   h, [hl]                                     ; $75a3: $66
	sub  c                                           ; $75a4: $91
	sbc  [hl]                                        ; $75a5: $9e
	ld   [bc], a                                     ; $75a6: $02
	and  l                                           ; $75a7: $a5
	inc  b                                           ; $75a8: $04
	xor  d                                           ; $75a9: $aa
	sub  b                                           ; $75aa: $90
	ld   [bc], a                                     ; $75ab: $02
	jr   nz, jr_057_75b2                             ; $75ac: $20 $04

	xor  d                                           ; $75ae: $aa
	dec  c                                           ; $75af: $0d
	sub  $a2                                         ; $75b0: $d6 $a2

jr_057_75b2:
	and  l                                           ; $75b2: $a5
	ret                                              ; $75b3: $c9


	ld   l, [hl]                                     ; $75b4: $6e
	ld   l, d                                        ; $75b5: $6a
	ld   a, [$000d]                                  ; $75b6: $fa $0d $00
	ld   a, [bc]                                     ; $75b9: $0a
	dec  c                                           ; $75ba: $0d
	nop                                              ; $75bb: $00
	nop                                              ; $75bc: $00
	rrca                                             ; $75bd: $0f
	nop                                              ; $75be: $00
	ld   bc, $1e09                                   ; $75bf: $01 $09 $1e
	nop                                              ; $75c2: $00
	nop                                              ; $75c3: $00
	dec  c                                           ; $75c4: $0d
	inc  bc                                          ; $75c5: $03
	nop                                              ; $75c6: $00
	rrca                                             ; $75c7: $0f
	nop                                              ; $75c8: $00
	ld   bc, $0102                                   ; $75c9: $01 $02 $01
	ld   e, b                                        ; $75cc: $58
	ld   a, l                                        ; $75cd: $7d
	sub  [hl]                                        ; $75ce: $96
	ld   d, h                                        ; $75cf: $54
	ld   h, d                                        ; $75d0: $62
	ld   h, h                                        ; $75d1: $64
	ld   d, d                                        ; $75d2: $52
	adc  h                                           ; $75d3: $8c
	ld   h, a                                        ; $75d4: $67
	sbc  [hl]                                        ; $75d5: $9e
	dec  c                                           ; $75d6: $0d
	rst  JumpTable                                         ; $75d7: $df
	db   $ec                                         ; $75d8: $ec
	and  e                                           ; $75d9: $a3
	ld   h, e                                        ; $75da: $63
	and  c                                           ; $75db: $a1
	sbc  a                                           ; $75dc: $9f
	dec  c                                           ; $75dd: $0d
	nop                                              ; $75de: $00
	ld   a, [bc]                                     ; $75df: $0a
	inc  e                                           ; $75e0: $1c
	inc  bc                                          ; $75e1: $03
	inc  bc                                          ; $75e2: $03
	inc  bc                                          ; $75e3: $03
	ld   bc, $7d58                                   ; $75e4: $01 $58 $7d
	sub  [hl]                                        ; $75e7: $96
	ld   d, h                                        ; $75e8: $54
	sbc  a                                           ; $75e9: $9f
	dec  c                                           ; $75ea: $0d
	nop                                              ; $75eb: $00
	ld   a, [bc]                                     ; $75ec: $0a
	rrca                                             ; $75ed: $0f
	nop                                              ; $75ee: $00
	ld   bc, $0101                                   ; $75ef: $01 $01 $01
	inc  bc                                          ; $75f2: $03
	inc  b                                           ; $75f3: $04
	ld   c, c                                        ; $75f4: $49
	and  b                                           ; $75f5: $a0
	ld   [bc], a                                     ; $75f6: $02
	jp   nz, Jump_057_5461                           ; $75f7: $c2 $61 $54

	ld   e, c                                        ; $75fa: $59
	ld   a, b                                        ; $75fb: $78
	rst  $38                                         ; $75fc: $ff
	rst  $38                                         ; $75fd: $ff
	ld   bc, $0d04                                   ; $75fe: $01 $04 $0d
	nop                                              ; $7601: $00
	ld   a, [bc]                                     ; $7602: $0a
	add  hl, de                                      ; $7603: $19

jr_057_7604:
	dec  b                                           ; $7604: $05
	inc  bc                                          ; $7605: $03
	or   h                                           ; $7606: $b4
	ei                                               ; $7607: $fb
	ret                                              ; $7608: $c9


	ld   a, c                                        ; $7609: $79
	ld   [hl], d                                     ; $760a: $72
	ld   d, d                                        ; $760b: $52
	ld   [hl], h                                     ; $760c: $74
	nop                                              ; $760d: $00
	nop                                              ; $760e: $00
	inc  bc                                          ; $760f: $03
	xor  b                                           ; $7610: $a8
	ld   d, d                                        ; $7611: $52
	ld   a, h                                        ; $7612: $7c
	dec  b                                           ; $7613: $05
	jr   nz, jr_057_7616                             ; $7614: $20 $00

jr_057_7616:
	ld   bc, $f5ac                                   ; $7616: $01 $ac $f5
	bit  7, h                                        ; $7619: $cb $7c
	dec  b                                           ; $761b: $05
	jr   nz, jr_057_761e                             ; $761c: $20 $00

jr_057_761e:
	ld   [bc], a                                     ; $761e: $02
	rlca                                             ; $761f: $07
	and  l                                           ; $7620: $a5
	nop                                              ; $7621: $00
	ld   [bc], a                                     ; $7622: $02
	inc  bc                                          ; $7623: $03
	ld   bc, $2000                                   ; $7624: $01 $00 $20
	nop                                              ; $7627: $00
	rlca                                             ; $7628: $07
	or   b                                           ; $7629: $b0
	ld   [bc], a                                     ; $762a: $02
	ld   [bc], a                                     ; $762b: $02
	inc  bc                                          ; $762c: $03
	ld   bc, $2001                                   ; $762d: $01 $01 $20
	nop                                              ; $7630: $00
	rlca                                             ; $7631: $07
	daa                                              ; $7632: $27
	inc  b                                           ; $7633: $04
	ld   [bc], a                                     ; $7634: $02
	inc  bc                                          ; $7635: $03
	ld   bc, $2002                                   ; $7636: $01 $02 $20
	nop                                              ; $7639: $00
	ld   b, $79                                      ; $763a: $06 $79
	nop                                              ; $763c: $00
	inc  e                                           ; $763d: $1c
	inc  bc                                          ; $763e: $03
	nop                                              ; $763f: $00
	nop                                              ; $7640: $00
	ld   bc, $f304                                   ; $7641: $01 $04 $f3
	ld   e, d                                        ; $7644: $5a
	ld   a, b                                        ; $7645: $78
	ld   d, d                                        ; $7646: $52
	ld   a, b                                        ; $7647: $78
	sub  a                                           ; $7648: $97
	dec  c                                           ; $7649: $0d
	ld   h, e                                        ; $764a: $63
	ld   [hl], c                                     ; $764b: $71
	ld   h, e                                        ; $764c: $63
	halt                                             ; $764d: $76
	inc  bc                                          ; $764e: $03
	ld   l, l                                        ; $764f: $6d
	dec  b                                           ; $7650: $05
	add  hl, de                                      ; $7651: $19
	ld   a, h                                        ; $7652: $7c
	ld   h, [hl]                                     ; $7653: $66
	sub  e                                           ; $7654: $93
	and  c                                           ; $7655: $a1
	add  c                                           ; $7656: $81
	dec  c                                           ; $7657: $0d
	ld   h, l                                        ; $7658: $65
	ld   a, b                                        ; $7659: $78
	ld   h, e                                        ; $765a: $63
	ld   d, d                                        ; $765b: $52
	sbc  a                                           ; $765c: $9f
	dec  c                                           ; $765d: $0d
	nop                                              ; $765e: $00
	ld   a, [bc]                                     ; $765f: $0a
	dec  c                                           ; $7660: $0d
	nop                                              ; $7661: $00
	nop                                              ; $7662: $00
	rrca                                             ; $7663: $0f
	nop                                              ; $7664: $00
	ld   bc, $1e09                                   ; $7665: $01 $09 $1e
	nop                                              ; $7668: $00
	rrca                                             ; $7669: $0f
	nop                                              ; $766a: $00
	ld   bc, $df01                                   ; $766b: $01 $01 $df
	db   $ec                                         ; $766e: $ec
	and  e                                           ; $766f: $a3
	ld   h, e                                        ; $7670: $63
	and  c                                           ; $7671: $a1
	ld   [hl], c                                     ; $7672: $71
	ld   [hl], h                                     ; $7673: $74
	dec  c                                           ; $7674: $0d
	inc  b                                           ; $7675: $04
	ld   d, b                                        ; $7676: $50
	ld   e, d                                        ; $7677: $5a
	sub  a                                           ; $7678: $97
	inc  b                                           ; $7679: $04
	ld   d, b                                        ; $767a: $50
	inc  b                                           ; $767b: $04
	dec  bc                                          ; $767c: $0b
	or   h                                           ; $767d: $b4
	ei                                               ; $767e: $fb
	ret                                              ; $767f: $c9


	and  b                                           ; $7680: $a0
	inc  b                                           ; $7681: $04
	rlca                                             ; $7682: $07
	ld   [hl], h                                     ; $7683: $74
	sbc  c                                           ; $7684: $99
	ld   a, h                                        ; $7685: $7c
	dec  c                                           ; $7686: $0d
	ld   [hl], l                                     ; $7687: $75
	ld   h, a                                        ; $7688: $67
	ld   e, c                                        ; $7689: $59
	ld   sp, hl                                      ; $768a: $f9
	dec  c                                           ; $768b: $0d
	nop                                              ; $768c: $00
	ld   a, [bc]                                     ; $768d: $0a
	inc  e                                           ; $768e: $1c
	inc  bc                                          ; $768f: $03
	nop                                              ; $7690: $00
	nop                                              ; $7691: $00
	ld   bc, $546b                                   ; $7692: $01 $6b $54
	sub  [hl]                                        ; $7695: $96
	sbc  a                                           ; $7696: $9f
	dec  c                                           ; $7697: $0d
	inc  bc                                          ; $7698: $03
	db   $dd                                         ; $7699: $dd
	ld   a, c                                        ; $769a: $79
	inc  bc                                          ; $769b: $03
	sub  h                                           ; $769c: $94
	inc  b                                           ; $769d: $04
	sbc  [hl]                                        ; $769e: $9e
	ld   a, h                                        ; $769f: $7c
	inc  b                                           ; $76a0: $04
	dec  de                                          ; $76a1: $1b
	ld   e, e                                        ; $76a2: $5b
	and  b                                           ; $76a3: $a0
	dec  c                                           ; $76a4: $0d
	ld   h, e                                        ; $76a5: $63
	halt                                             ; $76a6: $76
	sub  a                                           ; $76a7: $97
	sbc  d                                           ; $76a8: $9a
	ld   a, b                                        ; $76a9: $78
	ld   d, d                                        ; $76aa: $52
	ld   l, l                                        ; $76ab: $6d
	adc  a                                           ; $76ac: $8f
	ld   a, c                                        ; $76ad: $79
	ld   a, e                                        ; $76ae: $7b
	sbc  a                                           ; $76af: $9f
	dec  c                                           ; $76b0: $0d
	nop                                              ; $76b1: $00
	ld   a, [bc]                                     ; $76b2: $0a
	ld   bc, $d7c1                                   ; $76b3: $01 $c1 $d7
	ld   [hl], d                                     ; $76b6: $72
	ld   d, d                                        ; $76b7: $52
	ld   l, l                                        ; $76b8: $6d
	or   h                                           ; $76b9: $b4
	ei                                               ; $76ba: $fb
	ret                                              ; $76bb: $c9


	ld   l, [hl]                                     ; $76bc: $6e
	halt                                             ; $76bd: $76
	sbc  [hl]                                        ; $76be: $9e
	dec  c                                           ; $76bf: $0d
	inc  bc                                          ; $76c0: $03
	db   $dd                                         ; $76c1: $dd
	ld   a, c                                        ; $76c2: $79
	inc  bc                                          ; $76c3: $03
	sub  h                                           ; $76c4: $94
	inc  b                                           ; $76c5: $04
	sbc  [hl]                                        ; $76c6: $9e
	ld   a, h                                        ; $76c7: $7c
	inc  b                                           ; $76c8: $04
	dec  de                                          ; $76c9: $1b
	ld   e, e                                        ; $76ca: $5b
	and  b                                           ; $76cb: $a0
	ld   h, e                                        ; $76cc: $63
	halt                                             ; $76cd: $76
	sub  a                                           ; $76ce: $97
	sbc  d                                           ; $76cf: $9a
	dec  c                                           ; $76d0: $0d
	ld   a, c                                        ; $76d1: $79
	ld   e, l                                        ; $76d2: $5d
	ld   d, d                                        ; $76d3: $52
	ld   e, c                                        ; $76d4: $59
	sub  a                                           ; $76d5: $97
	sbc  [hl]                                        ; $76d6: $9e
	inc  b                                           ; $76d7: $04
	ldh  [c], a                                      ; $76d8: $e2
	dec  b                                           ; $76d9: $05
	ld   b, $78                                      ; $76da: $06 $78
	ld   a, h                                        ; $76dc: $7c
	sub  [hl]                                        ; $76dd: $96
	sbc  a                                           ; $76de: $9f
	dec  c                                           ; $76df: $0d
	nop                                              ; $76e0: $00
	ld   a, [bc]                                     ; $76e1: $0a
	add  hl, de                                      ; $76e2: $19
	dec  b                                           ; $76e3: $05
	ld   [bc], a                                     ; $76e4: $02
	inc  b                                           ; $76e5: $04
	dec  de                                          ; $76e6: $1b
	ld   e, e                                        ; $76e7: $5b
	ld   a, c                                        ; $76e8: $79
	ld   e, l                                        ; $76e9: $5d
	ld   e, l                                        ; $76ea: $5d
	ld   a, b                                        ; $76eb: $78
	ld   d, d                                        ; $76ec: $52
	ld   [hl], l                                     ; $76ed: $75
	ld   h, a                                        ; $76ee: $67
	ld   e, c                                        ; $76ef: $59
	ld   sp, hl                                      ; $76f0: $f9
	nop                                              ; $76f1: $00
	nop                                              ; $76f2: $00
	db   $dd                                         ; $76f3: $dd
	ret  z                                           ; $76f4: $c8

	and  h                                           ; $76f5: $a4
	ei                                               ; $76f6: $fb
	db   $eb                                         ; $76f7: $eb
	and  l                                           ; $76f8: $a5
	push af                                          ; $76f9: $f5
	ld   e, d                                        ; $76fa: $5a
	rst  $38                                         ; $76fb: $ff
	rst  $38                                         ; $76fc: $ff
	nop                                              ; $76fd: $00
	ld   bc, $5007                                   ; $76fe: $01 $07 $50
	ld   bc, $0302                                   ; $7701: $01 $02 $03
	ld   bc, $2000                                   ; $7704: $01 $00 $20
	nop                                              ; $7707: $00
	rlca                                             ; $7708: $07
	dec  d                                           ; $7709: $15
	ld   [bc], a                                     ; $770a: $02
	ld   [bc], a                                     ; $770b: $02
	inc  bc                                          ; $770c: $03
	ld   bc, $2001                                   ; $770d: $01 $01 $20
	nop                                              ; $7710: $00
	ld   b, $8a                                      ; $7711: $06 $8a
	ld   [bc], a                                     ; $7713: $02
	rrca                                             ; $7714: $0f
	nop                                              ; $7715: $00
	ld   bc, $5201                                   ; $7716: $01 $01 $52
	ld   e, l                                        ; $7719: $5d
	sub  a                                           ; $771a: $97
	inc  bc                                          ; $771b: $03
	db   $dd                                         ; $771c: $dd
	ld   a, c                                        ; $771d: $79
	ld   h, e                                        ; $771e: $63
	halt                                             ; $771f: $76
	sub  a                                           ; $7720: $97
	sbc  d                                           ; $7721: $9a
	ld   a, b                                        ; $7722: $78
	ld   d, d                                        ; $7723: $52
	ld   [hl], c                                     ; $7724: $71
	ld   [hl], h                                     ; $7725: $74
	dec  c                                           ; $7726: $0d
	ld   [bc], a                                     ; $7727: $02
	sbc  l                                           ; $7728: $9d
	ld   [hl], c                                     ; $7729: $71
	ld   [hl], h                                     ; $772a: $74
	sub  b                                           ; $772b: $90
	sbc  [hl]                                        ; $772c: $9e
	inc  b                                           ; $772d: $04
	dec  de                                          ; $772e: $1b
	ld   e, e                                        ; $772f: $5b
	ld   a, c                                        ; $7730: $79
	ld   e, l                                        ; $7731: $5d
	ld   e, l                                        ; $7732: $5d
	dec  c                                           ; $7733: $0d
	ld   a, b                                        ; $7734: $78
	ld   d, d                                        ; $7735: $52
	ld   [hl], l                                     ; $7736: $75
	ld   h, a                                        ; $7737: $67
	ld   e, c                                        ; $7738: $59
	ld   sp, hl                                      ; $7739: $f9
	dec  c                                           ; $773a: $0d
	nop                                              ; $773b: $00
	ld   a, [bc]                                     ; $773c: $0a
	inc  e                                           ; $773d: $1c
	inc  bc                                          ; $773e: $03
	nop                                              ; $773f: $00
	nop                                              ; $7740: $00
	ld   bc, $616b                                   ; $7741: $01 $6b $61
	ld   a, l                                        ; $7744: $7d
	sbc  [hl]                                        ; $7745: $9e
	inc  bc                                          ; $7746: $03
	ld   l, l                                        ; $7747: $6d
	dec  b                                           ; $7748: $05
	add  hl, de                                      ; $7749: $19
	ld   a, e                                        ; $774a: $7b
	sbc  a                                           ; $774b: $9f
	dec  c                                           ; $774c: $0d
	inc  b                                           ; $774d: $04
	dec  de                                          ; $774e: $1b
	ld   e, e                                        ; $774f: $5b
	ld   a, l                                        ; $7750: $7d
	inc  bc                                          ; $7751: $03
	ld   l, l                                        ; $7752: $6d
	dec  b                                           ; $7753: $05
	add  hl, de                                      ; $7754: $19
	ld   [hl], l                                     ; $7755: $75
	inc  b                                           ; $7756: $04
	ld   c, c                                        ; $7757: $49
	halt                                             ; $7758: $76
	ld   [hl], l                                     ; $7759: $75
	sub  b                                           ; $775a: $90
	ld   a, b                                        ; $775b: $78
	sbc  c                                           ; $775c: $99
	sbc  l                                           ; $775d: $9d
	sbc  a                                           ; $775e: $9f
	dec  c                                           ; $775f: $0d
	ld   l, e                                        ; $7760: $6b
	sbc  d                                           ; $7761: $9a
	sub  [hl]                                        ; $7762: $96
	sbc  b                                           ; $7763: $98
	sub  b                                           ; $7764: $90
	inc  b                                           ; $7765: $04
	ld   c, $03                                      ; $7766: $0e $03
	dec  de                                          ; $7768: $1b
	ld   a, b                                        ; $7769: $78
	ld   a, h                                        ; $776a: $7c
	ld   a, l                                        ; $776b: $7d
	rst  $38                                         ; $776c: $ff
	rst  $38                                         ; $776d: $ff
	dec  c                                           ; $776e: $0d
	nop                                              ; $776f: $00
	ld   a, [bc]                                     ; $7770: $0a
	ld   bc, $dd03                                   ; $7771: $01 $03 $dd
	halt                                             ; $7774: $76
	ld   [bc], a                                     ; $7775: $02
	ld   a, [de]                                     ; $7776: $1a
	adc  h                                           ; $7777: $8c
	adc  l                                           ; $7778: $8d
	ld   d, [hl]                                     ; $7779: $56
	ld   l, l                                        ; $777a: $6d
	halt                                             ; $777b: $76
	ld   e, e                                        ; $777c: $5b
	ld   a, c                                        ; $777d: $79
	dec  c                                           ; $777e: $0d
	ld   d, d                                        ; $777f: $52
	ld   e, c                                        ; $7780: $59
	ld   a, c                                        ; $7781: $79
	inc  bc                                          ; $7782: $03
	sub  h                                           ; $7783: $94
	inc  b                                           ; $7784: $04
	sbc  [hl]                                        ; $7785: $9e
	ld   a, h                                        ; $7786: $7c
	inc  b                                           ; $7787: $04
	dec  de                                          ; $7788: $1b
	ld   e, e                                        ; $7789: $5b
	and  b                                           ; $778a: $a0
	ld   e, c                                        ; $778b: $59
	ld   e, l                                        ; $778c: $5d
	ld   l, c                                        ; $778d: $69
	sbc  c                                           ; $778e: $99
	ld   e, c                                        ; $778f: $59
	dec  c                                           ; $7790: $0d
	halt                                             ; $7791: $76
	ld   [bc], a                                     ; $7792: $02
	sbc  l                                           ; $7793: $9d
	ld   d, h                                        ; $7794: $54
	ld   h, c                                        ; $7795: $61
	halt                                             ; $7796: $76
	ld   a, b                                        ; $7797: $78
	ld   a, h                                        ; $7798: $7c
	sbc  a                                           ; $7799: $9f
	dec  c                                           ; $779a: $0d
	nop                                              ; $779b: $00
	ld   a, [bc]                                     ; $779c: $0a
	rrca                                             ; $779d: $0f
	nop                                              ; $779e: $00
	ld   bc, $6b01                                   ; $779f: $01 $01 $6b
	ld   d, h                                        ; $77a2: $54
	ld   a, b                                        ; $77a3: $78
	and  c                                           ; $77a4: $a1
	ld   [hl], l                                     ; $77a5: $75
	ld   h, a                                        ; $77a6: $67
	ld   e, c                                        ; $77a7: $59
	rst  $38                                         ; $77a8: $ff
	rst  $38                                         ; $77a9: $ff
	dec  c                                           ; $77aa: $0d
	inc  b                                           ; $77ab: $04
	xor  [hl]                                        ; $77ac: $ae
	ld   [bc], a                                     ; $77ad: $02
	call nc, Call_057_7879                           ; $77ae: $d4 $79 $78
	sbc  b                                           ; $77b1: $98
	adc  h                                           ; $77b2: $8c
	ld   h, l                                        ; $77b3: $65
	ld   l, l                                        ; $77b4: $6d
	sbc  a                                           ; $77b5: $9f
	dec  c                                           ; $77b6: $0d
	nop                                              ; $77b7: $00
	ld   a, [bc]                                     ; $77b8: $0a
	inc  e                                           ; $77b9: $1c
	inc  bc                                          ; $77ba: $03
	nop                                              ; $77bb: $00
	nop                                              ; $77bc: $00
	ld   bc, $5063                                   ; $77bd: $01 $63 $50
	sbc  [hl]                                        ; $77c0: $9e
	inc  bc                                          ; $77c1: $03
	ld   l, l                                        ; $77c2: $6d
	dec  b                                           ; $77c3: $05
	add  hl, de                                      ; $77c4: $19
	ld   e, d                                        ; $77c5: $5a
	ld   a, l                                        ; $77c6: $7d
	ld   h, [hl]                                     ; $77c7: $66
	adc  h                                           ; $77c8: $8c
	sbc  c                                           ; $77c9: $99
	sbc  l                                           ; $77ca: $9d
	sub  [hl]                                        ; $77cb: $96
	sbc  a                                           ; $77cc: $9f
	dec  c                                           ; $77cd: $0d
	nop                                              ; $77ce: $00
	ld   a, [bc]                                     ; $77cf: $0a
	dec  c                                           ; $77d0: $0d
	nop                                              ; $77d1: $00
	nop                                              ; $77d2: $00
	rrca                                             ; $77d3: $0f
	nop                                              ; $77d4: $00
	ld   bc, $1e09                                   ; $77d5: $01 $09 $1e
	nop                                              ; $77d8: $00
	rrca                                             ; $77d9: $0f
	nop                                              ; $77da: $00
	ld   bc, $7501                                   ; $77db: $01 $01 $75
	sub  b                                           ; $77de: $90
	sbc  [hl]                                        ; $77df: $9e
	rst  JumpTable                                         ; $77e0: $df
	db   $ec                                         ; $77e1: $ec
	and  e                                           ; $77e2: $a3
	ld   h, e                                        ; $77e3: $63
	and  c                                           ; $77e4: $a1
	ld   a, h                                        ; $77e5: $7c
	inc  b                                           ; $77e6: $04
	and  c                                           ; $77e7: $a1
	ld   h, l                                        ; $77e8: $65
	ld   d, d                                        ; $77e9: $52
	dec  c                                           ; $77ea: $0d
	db   $dd                                         ; $77eb: $dd
	ret  z                                           ; $77ec: $c8

	and  h                                           ; $77ed: $a4
	ei                                               ; $77ee: $fb
	db   $eb                                         ; $77ef: $eb
	and  l                                           ; $77f0: $a5
	push af                                          ; $77f1: $f5
	ld   e, d                                        ; $77f2: $5a
	ld   e, c                                        ; $77f3: $59
	ld   e, l                                        ; $77f4: $5d
	ld   h, e                                        ; $77f5: $63
	sbc  d                                           ; $77f6: $9a
	sbc  c                                           ; $77f7: $99
	dec  c                                           ; $77f8: $0d
	ld   a, b                                        ; $77f9: $78
	and  c                                           ; $77fa: $a1
	ld   [hl], h                                     ; $77fb: $74
	sbc  [hl]                                        ; $77fc: $9e
	sub  b                                           ; $77fd: $90
	ld   [hl], c                                     ; $77fe: $71
	ld   l, l                                        ; $77ff: $6d
	ld   d, d                                        ; $7800: $52
	ld   a, b                                        ; $7801: $78
	ld   d, d                                        ; $7802: $52
	ld   [hl], l                                     ; $7803: $75
	ld   h, a                                        ; $7804: $67
	sub  [hl]                                        ; $7805: $96
	sbc  a                                           ; $7806: $9f
	dec  c                                           ; $7807: $0d
	nop                                              ; $7808: $00
	ld   a, [bc]                                     ; $7809: $0a
	inc  e                                           ; $780a: $1c
	inc  bc                                          ; $780b: $03
	ld   bc, $1d01                                   ; $780c: $01 $01 $1d
	ld   b, b                                        ; $780f: $40
	inc  de                                          ; $7810: $13
	inc  bc                                          ; $7811: $03
	inc  de                                          ; $7812: $13
	ld   bc, $2903                                   ; $7813: $01 $03 $29
	nop                                              ; $7816: $00
	ld   bc, $9ed1                                   ; $7817: $01 $d1 $9e
	pop  de                                          ; $781a: $d1
	xor  h                                           ; $781b: $ac
	ld   a, b                                        ; $781c: $78
	ld   h, c                                        ; $781d: $61
	halt                                             ; $781e: $76
	ld   [bc], a                                     ; $781f: $02
	sbc  l                                           ; $7820: $9d
	ld   [hl], c                                     ; $7821: $71
	ld   [hl], h                                     ; $7822: $74
	ld   a, b                                        ; $7823: $78
	ld   d, d                                        ; $7824: $52
	ld   [hl], l                                     ; $7825: $75
	dec  c                                           ; $7826: $0d
	inc  bc                                          ; $7827: $03
	ld   [hl], b                                     ; $7828: $70
	ld   e, l                                        ; $7829: $5d
	sbc  [hl]                                        ; $782a: $9e
	inc  bc                                          ; $782b: $03
	ld   l, l                                        ; $782c: $6d
	dec  b                                           ; $782d: $05
	add  hl, de                                      ; $782e: $19
	ld   a, h                                        ; $782f: $7c
	ld   h, [hl]                                     ; $7830: $66
	sub  e                                           ; $7831: $93
	and  c                                           ; $7832: $a1
	add  c                                           ; $7833: $81
	ld   a, b                                        ; $7834: $78
	ld   h, e                                        ; $7835: $63
	ld   d, d                                        ; $7836: $52
	ld   a, [$000d]                                  ; $7837: $fa $0d $00
	ld   a, [bc]                                     ; $783a: $0a
	ld   bc, $718c                                   ; $783b: $01 $8c $71
	ld   l, l                                        ; $783e: $6d
	ld   e, l                                        ; $783f: $5d
	rst  $38                                         ; $7840: $ff
	rst  $38                                         ; $7841: $ff
	dec  c                                           ; $7842: $0d
	nop                                              ; $7843: $00
	ld   a, [bc]                                     ; $7844: $0a
	dec  c                                           ; $7845: $0d
	nop                                              ; $7846: $00
	nop                                              ; $7847: $00
	rrca                                             ; $7848: $0f
	nop                                              ; $7849: $00
	ld   bc, $1e09                                   ; $784a: $01 $09 $1e
	nop                                              ; $784d: $00
	inc  e                                           ; $784e: $1c
	inc  bc                                          ; $784f: $03
	nop                                              ; $7850: $00
	nop                                              ; $7851: $00
	ld   bc, $5063                                   ; $7852: $01 $63 $50
	sbc  [hl]                                        ; $7855: $9e
	inc  bc                                          ; $7856: $03
	ld   l, l                                        ; $7857: $6d
	dec  b                                           ; $7858: $05

Jump_057_7859:
	add  hl, de                                      ; $7859: $19
	ld   e, d                                        ; $785a: $5a
	ld   a, l                                        ; $785b: $7d
	ld   h, [hl]                                     ; $785c: $66
	adc  h                                           ; $785d: $8c
	sbc  c                                           ; $785e: $99
	sbc  l                                           ; $785f: $9d
	sbc  a                                           ; $7860: $9f
	dec  c                                           ; $7861: $0d
	ld   d, d                                        ; $7862: $52
	ld   e, e                                        ; $7863: $5b
	ld   a, b                                        ; $7864: $78
	ld   h, e                                        ; $7865: $63
	ld   d, d                                        ; $7866: $52
	sbc  a                                           ; $7867: $9f
	dec  c                                           ; $7868: $0d
	nop                                              ; $7869: $00
	ld   a, [bc]                                     ; $786a: $0a
	dec  c                                           ; $786b: $0d
	nop                                              ; $786c: $00
	nop                                              ; $786d: $00
	rrca                                             ; $786e: $0f
	nop                                              ; $786f: $00
	ld   bc, $1e09                                   ; $7870: $01 $09 $1e
	nop                                              ; $7873: $00
	rrca                                             ; $7874: $0f
	nop                                              ; $7875: $00
	ld   bc, $df01                                   ; $7876: $01 $01 $df

Call_057_7879:
	db   $ec                                         ; $7879: $ec
	and  e                                           ; $787a: $a3
	ld   h, e                                        ; $787b: $63

Jump_057_787c:
	and  c                                           ; $787c: $a1
	ld   a, l                                        ; $787d: $7d
	sbc  [hl]                                        ; $787e: $9e
	inc  b                                           ; $787f: $04
	ld   c, c                                        ; $7880: $49
	ld   a, h                                        ; $7881: $7c
	ld   l, l                                        ; $7882: $6d
	adc  a                                           ; $7883: $8f
	ld   a, c                                        ; $7884: $79
	dec  c                                           ; $7885: $0d
	inc  bc                                          ; $7886: $03
	xor  b                                           ; $7887: $a8
	ld   [hl], c                                     ; $7888: $71
	ld   [hl], h                                     ; $7889: $74
	ld   d, d                                        ; $788a: $52
	sbc  c                                           ; $788b: $99
	ld   a, h                                        ; $788c: $7c
	ld   [hl], l                                     ; $788d: $75
	ld   h, a                                        ; $788e: $67
	ld   e, c                                        ; $788f: $59
	ld   sp, hl                                      ; $7890: $f9
	dec  c                                           ; $7891: $0d
	nop                                              ; $7892: $00
	ld   a, [bc]                                     ; $7893: $0a
	inc  e                                           ; $7894: $1c
	inc  bc                                          ; $7895: $03
	inc  b                                           ; $7896: $04
	inc  b                                           ; $7897: $04
	ld   bc, $546b                                   ; $7898: $01 $6b $54
	ld   a, e                                        ; $789b: $7b
	rst  $38                                         ; $789c: $ff
	rst  $38                                         ; $789d: $ff
	dec  c                                           ; $789e: $0d
	inc  b                                           ; $789f: $04
	bit  7, l                                        ; $78a0: $cb $7d
	inc  bc                                          ; $78a2: $03
	sub  h                                           ; $78a3: $94
	inc  b                                           ; $78a4: $04
	pop  hl                                          ; $78a5: $e1
	ld   a, h                                        ; $78a6: $7c
	ld   l, l                                        ; $78a7: $6d
	adc  a                                           ; $78a8: $8f
	ld   a, c                                        ; $78a9: $79
	inc  bc                                          ; $78aa: $03
	xor  b                                           ; $78ab: $a8
	ld   [hl], c                                     ; $78ac: $71
	ld   [hl], h                                     ; $78ad: $74
	ld   d, d                                        ; $78ae: $52
	ld   l, l                                        ; $78af: $6d
	dec  c                                           ; $78b0: $0d
	ld   [bc], a                                     ; $78b1: $02
	and  c                                           ; $78b2: $a1
	ld   e, d                                        ; $78b3: $5a
	ld   h, a                                        ; $78b4: $67
	sbc  c                                           ; $78b5: $99
	sbc  l                                           ; $78b6: $9d
	rst  $38                                         ; $78b7: $ff
	rst  $38                                         ; $78b8: $ff
	dec  c                                           ; $78b9: $0d
	nop                                              ; $78ba: $00
	ld   a, [bc]                                     ; $78bb: $0a
	inc  e                                           ; $78bc: $1c
	inc  bc                                          ; $78bd: $03
	ld   [bc], a                                     ; $78be: $02
	ld   [bc], a                                     ; $78bf: $02
	ld   bc, $9075                                   ; $78c0: $01 $75 $90
	ld   [bc], a                                     ; $78c3: $02
	and  l                                           ; $78c4: $a5
	ld   a, l                                        ; $78c5: $7d
	inc  b                                           ; $78c6: $04
	xor  b                                           ; $78c7: $a8
	dec  b                                           ; $78c8: $05
	ld   hl, $6d7c                                   ; $78c9: $21 $7c $6d
	adc  a                                           ; $78cc: $8f
	rst  $38                                         ; $78cd: $ff
	rst  $38                                         ; $78ce: $ff
	dec  c                                           ; $78cf: $0d
	ld   h, c                                        ; $78d0: $61
	ld   a, h                                        ; $78d1: $7c
	inc  b                                           ; $78d2: $04
	ld   [$2f04], sp                                 ; $78d3: $08 $04 $2f
	and  b                                           ; $78d6: $a0
	inc  bc                                          ; $78d7: $03
	sub  e                                           ; $78d8: $93
	sbc  c                                           ; $78d9: $99
	ld   l, l                                        ; $78da: $6d
	adc  a                                           ; $78db: $8f
	ld   a, c                                        ; $78dc: $79
	dec  c                                           ; $78dd: $0d
	inc  bc                                          ; $78de: $03
	xor  b                                           ; $78df: $a8
	ld   [hl], c                                     ; $78e0: $71
	ld   [hl], h                                     ; $78e1: $74
	ld   d, d                                        ; $78e2: $52
	sbc  c                                           ; $78e3: $99
	ld   a, h                                        ; $78e4: $7c
	rst  $38                                         ; $78e5: $ff
	rst  $38                                         ; $78e6: $ff
	dec  c                                           ; $78e7: $0d
	nop                                              ; $78e8: $00
	ld   a, [bc]                                     ; $78e9: $0a
	ld   bc, $596e                                   ; $78ea: $01 $6e $59
	sub  a                                           ; $78ed: $97
	inc  bc                                          ; $78ee: $03
	ld   [hl], b                                     ; $78ef: $70
	ld   e, l                                        ; $78f0: $5d
	inc  bc                                          ; $78f1: $03
	xor  b                                           ; $78f2: $a8
	ld   d, d                                        ; $78f3: $52
	ld   a, h                                        ; $78f4: $7c
	ld   a, b                                        ; $78f5: $78
	ld   d, d                                        ; $78f6: $52
	dec  c                                           ; $78f7: $0d
	inc  bc                                          ; $78f8: $03
	add  hl, de                                      ; $78f9: $19
	ld   a, h                                        ; $78fa: $7c
	inc  b                                           ; $78fb: $04
	dec  bc                                          ; $78fc: $0b
	ld   a, c                                        ; $78fd: $79
	ld   a, b                                        ; $78fe: $78
	ld   [hl], c                                     ; $78ff: $71
	ld   [hl], h                                     ; $7900: $74
	adc  c                                           ; $7901: $89
	ld   h, l                                        ; $7902: $65
	ld   d, d                                        ; $7903: $52
	sbc  l                                           ; $7904: $9d
	sbc  a                                           ; $7905: $9f
	dec  c                                           ; $7906: $0d
	nop                                              ; $7907: $00
	ld   a, [bc]                                     ; $7908: $0a
	add  hl, de                                      ; $7909: $19
	dec  b                                           ; $790a: $05
	ld   [bc], a                                     ; $790b: $02
	inc  b                                           ; $790c: $04
	ld   l, l                                        ; $790d: $6d
	sub  b                                           ; $790e: $90
	ld   l, e                                        ; $790f: $6b
	ld   d, h                                        ; $7910: $54
	dec  b                                           ; $7911: $05
	pop  de                                          ; $7912: $d1
	ld   d, d                                        ; $7913: $52
	adc  h                                           ; $7914: $8c
	ld   h, a                                        ; $7915: $67
	sbc  a                                           ; $7916: $9f
	nop                                              ; $7917: $00
	nop                                              ; $7918: $00
	ld   l, e                                        ; $7919: $6b
	sbc  d                                           ; $791a: $9a
	ld   l, [hl]                                     ; $791b: $6e
	halt                                             ; $791c: $76
	ld   [bc], a                                     ; $791d: $02
	sub  b                                           ; $791e: $90
	ld   [bc], a                                     ; $791f: $02
	sub  c                                           ; $7920: $91
	inc  b                                           ; $7921: $04
	add  hl, bc                                      ; $7922: $09
	ld   a, h                                        ; $7923: $7c
	inc  bc                                          ; $7924: $03
	push bc                                          ; $7925: $c5
	dec  b                                           ; $7926: $05
	cp   b                                           ; $7927: $b8
	ld   e, d                                        ; $7928: $5a
	rst  $38                                         ; $7929: $ff
	rst  $38                                         ; $792a: $ff
	nop                                              ; $792b: $00
	ld   bc, $7e07                                   ; $792c: $01 $07 $7e
	inc  bc                                          ; $792f: $03
	ld   [bc], a                                     ; $7930: $02
	inc  bc                                          ; $7931: $03
	ld   bc, $2000                                   ; $7932: $01 $00 $20
	nop                                              ; $7935: $00
	rlca                                             ; $7936: $07
	xor  d                                           ; $7937: $aa
	inc  bc                                          ; $7938: $03
	ld   [bc], a                                     ; $7939: $02
	inc  bc                                          ; $793a: $03
	ld   bc, $2001                                   ; $793b: $01 $01 $20
	nop                                              ; $793e: $00
	ld   b, $fd                                      ; $793f: $06 $fd
	inc  bc                                          ; $7941: $03
	rrca                                             ; $7942: $0f
	nop                                              ; $7943: $00
	ld   bc, $0401                                   ; $7944: $01 $01 $04
	ld   l, l                                        ; $7947: $6d
	sub  b                                           ; $7948: $90
	ld   l, e                                        ; $7949: $6b
	ld   d, h                                        ; $794a: $54
	dec  b                                           ; $794b: $05
	pop  de                                          ; $794c: $d1
	ld   d, d                                        ; $794d: $52
	adc  h                                           ; $794e: $8c
	ld   h, a                                        ; $794f: $67
	sbc  a                                           ; $7950: $9f
	dec  c                                           ; $7951: $0d
	nop                                              ; $7952: $00
	ld   a, [bc]                                     ; $7953: $0a
	inc  e                                           ; $7954: $1c
	inc  bc                                          ; $7955: $03
	inc  bc                                          ; $7956: $03
	inc  bc                                          ; $7957: $03
	dec  e                                           ; $7958: $1d
	ld   b, b                                        ; $7959: $40
	inc  de                                          ; $795a: $13
	inc  bc                                          ; $795b: $03
	inc  de                                          ; $795c: $13
	ld   bc, $2802                                   ; $795d: $01 $02 $28
	nop                                              ; $7960: $00
	ld   bc, $9850                                   ; $7961: $01 $50 $98
	ld   e, d                                        ; $7964: $5a
	halt                                             ; $7965: $76
	ld   d, h                                        ; $7966: $54
	sbc  a                                           ; $7967: $9f
	dec  c                                           ; $7968: $0d
	nop                                              ; $7969: $00
	ld   a, [bc]                                     ; $796a: $0a
	ld   b, $fd                                      ; $796b: $06 $fd
	inc  bc                                          ; $796d: $03
	rrca                                             ; $796e: $0f
	nop                                              ; $796f: $00
	ld   bc, $6b01                                   ; $7970: $01 $01 $6b
	sbc  d                                           ; $7973: $9a
	ld   l, [hl]                                     ; $7974: $6e
	halt                                             ; $7975: $76
	ld   [bc], a                                     ; $7976: $02
	sub  b                                           ; $7977: $90
	ld   [bc], a                                     ; $7978: $02
	sub  c                                           ; $7979: $91
	inc  b                                           ; $797a: $04
	add  hl, bc                                      ; $797b: $09
	ld   a, h                                        ; $797c: $7c
	inc  bc                                          ; $797d: $03
	push bc                                          ; $797e: $c5
	dec  b                                           ; $797f: $05
	cp   b                                           ; $7980: $b8
	ld   e, d                                        ; $7981: $5a
	dec  c                                           ; $7982: $0d
	ld   [bc], a                                     ; $7983: $02
	ld   b, $04                                      ; $7984: $06 $04
	jp   nc, Jump_057_787c                           ; $7986: $d2 $7c $78

	ld   d, d                                        ; $7989: $52
	sub  b                                           ; $798a: $90
	ld   a, h                                        ; $798b: $7c
	ld   a, c                                        ; $798c: $79
	rst  $38                                         ; $798d: $ff
	rst  $38                                         ; $798e: $ff
	dec  c                                           ; $798f: $0d
	nop                                              ; $7990: $00
	ld   a, [bc]                                     ; $7991: $0a
	inc  e                                           ; $7992: $1c
	inc  bc                                          ; $7993: $03
	nop                                              ; $7994: $00
	nop                                              ; $7995: $00
	ld   bc, $9a6b                                   ; $7996: $01 $6b $9a
	ld   [hl], l                                     ; $7999: $75
	ld   d, d                                        ; $799a: $52
	ld   d, d                                        ; $799b: $52
	ld   a, h                                        ; $799c: $7c
	sub  [hl]                                        ; $799d: $96
	sbc  a                                           ; $799e: $9f
	dec  c                                           ; $799f: $0d
	ld   l, e                                        ; $79a0: $6b
	sbc  d                                           ; $79a1: $9a
	ld   e, d                                        ; $79a2: $5a
	inc  b                                           ; $79a3: $04
	adc  a                                           ; $79a4: $8f
	dec  b                                           ; $79a5: $05
	db   $10                                         ; $79a6: $10
	inc  bc                                          ; $79a7: $03
	ld   c, d                                        ; $79a8: $4a
	ld   h, l                                        ; $79a9: $65
	ld   e, l                                        ; $79aa: $5d
	ld   d, b                                        ; $79ab: $50
	sbc  c                                           ; $79ac: $99
	add  a                                           ; $79ad: $87
	ld   e, e                                        ; $79ae: $5b
	dec  c                                           ; $79af: $0d
	inc  bc                                          ; $79b0: $03
	add  hl, de                                      ; $79b1: $19
	ld   a, h                                        ; $79b2: $7c
	inc  b                                           ; $79b3: $04
	dec  bc                                          ; $79b4: $0b
	ld   a, h                                        ; $79b5: $7c
	ld   [bc], a                                     ; $79b6: $02
	di                                               ; $79b7: $f3
	ld   a, b                                        ; $79b8: $78
	ld   a, h                                        ; $79b9: $7c
	ld   l, [hl]                                     ; $79ba: $6e
	ld   e, c                                        ; $79bb: $59
	sub  a                                           ; $79bc: $97
	sbc  a                                           ; $79bd: $9f
	dec  c                                           ; $79be: $0d
	nop                                              ; $79bf: $00
	ld   a, [bc]                                     ; $79c0: $0a
	inc  e                                           ; $79c1: $1c
	inc  bc                                          ; $79c2: $03
	nop                                              ; $79c3: $00
	nop                                              ; $79c4: $00
	ld   bc, $9e63                                   ; $79c5: $01 $63 $9e
	ld   e, b                                        ; $79c8: $58
	ld   h, l                                        ; $79c9: $65
	sub  c                                           ; $79ca: $91
	add  a                                           ; $79cb: $87
	sbc  b                                           ; $79cc: $98
	ld   a, l                                        ; $79cd: $7d
	inc  bc                                          ; $79ce: $03
	ld   a, [hl]                                     ; $79cf: $7e
	sbc  l                                           ; $79d0: $9d
	sbc  b                                           ; $79d1: $98
	sbc  a                                           ; $79d2: $9f
	dec  c                                           ; $79d3: $0d
	inc  bc                                          ; $79d4: $03
	ld   l, l                                        ; $79d5: $6d
	dec  b                                           ; $79d6: $05
	add  hl, de                                      ; $79d7: $19

Call_057_79d8:
	ld   a, h                                        ; $79d8: $7c
	inc  bc                                          ; $79d9: $03
	ld   l, a                                        ; $79da: $6f
	ld   [bc], a                                     ; $79db: $02
	xor  c                                           ; $79dc: $a9
	sub  [hl]                                        ; $79dd: $96
	sbc  a                                           ; $79de: $9f
	dec  c                                           ; $79df: $0d
	nop                                              ; $79e0: $00
	ld   a, [bc]                                     ; $79e1: $0a
	dec  c                                           ; $79e2: $0d
	nop                                              ; $79e3: $00
	nop                                              ; $79e4: $00
	rrca                                             ; $79e5: $0f
	nop                                              ; $79e6: $00
	ld   bc, $1e09                                   ; $79e7: $01 $09 $1e
	nop                                              ; $79ea: $00
	rrca                                             ; $79eb: $0f
	nop                                              ; $79ec: $00
	ld   bc, $ac01                                   ; $79ed: $01 $01 $ac
	push af                                          ; $79f0: $f5
	bit  4, e                                        ; $79f1: $cb $63
	and  c                                           ; $79f3: $a1
	ld   [hl], h                                     ; $79f4: $74
	sbc  [hl]                                        ; $79f5: $9e
	rst  JumpTable                                         ; $79f6: $df
	db   $ec                                         ; $79f7: $ec
	and  e                                           ; $79f8: $a3
	ld   h, e                                        ; $79f9: $63
	and  c                                           ; $79fa: $a1
	ld   e, c                                        ; $79fb: $59
	sub  a                                           ; $79fc: $97
	dec  c                                           ; $79fd: $0d
	ld   [bc], a                                     ; $79fe: $02
	sub  l                                           ; $79ff: $95
	ld   [hl], h                                     ; $7a00: $74
	sbc  [hl]                                        ; $7a01: $9e
	ld   [hl], a                                     ; $7a02: $77
	and  c                                           ; $7a03: $a1
	ld   a, b                                        ; $7a04: $78
	inc  b                                           ; $7a05: $04
	ld   a, b                                        ; $7a06: $78
	ld   [hl], l                                     ; $7a07: $75
	ld   h, a                                        ; $7a08: $67
	ld   e, c                                        ; $7a09: $59
	ld   sp, hl                                      ; $7a0a: $f9
	dec  c                                           ; $7a0b: $0d
	nop                                              ; $7a0c: $00
	ld   a, [bc]                                     ; $7a0d: $0a
	inc  e                                           ; $7a0e: $1c
	inc  bc                                          ; $7a0f: $03
	nop                                              ; $7a10: $00
	nop                                              ; $7a11: $00
	ld   bc, $546b                                   ; $7a12: $01 $6b $54
	ld   a, e                                        ; $7a15: $7b
	rst  $38                                         ; $7a16: $ff
	rst  $38                                         ; $7a17: $ff
	halt                                             ; $7a18: $76
	ld   [hl], h                                     ; $7a19: $74
	sub  b                                           ; $7a1a: $90
	ld   l, l                                        ; $7a1b: $6d
	sub  [hl]                                        ; $7a1c: $96
	sbc  b                                           ; $7a1d: $98
	ld   a, c                                        ; $7a1e: $79
	ld   a, b                                        ; $7a1f: $78
	sbc  c                                           ; $7a20: $99
	dec  c                                           ; $7a21: $0d
	ld   l, l                                        ; $7a22: $6d
	ld   a, h                                        ; $7a23: $7c
	sub  b                                           ; $7a24: $90
	ld   h, l                                        ; $7a25: $65
	ld   d, d                                        ; $7a26: $52
	inc  b                                           ; $7a27: $04
	ld   b, c                                        ; $7a28: $41
	ld   [bc], a                                     ; $7a29: $02
	xor  c                                           ; $7a2a: $a9
	rst  $38                                         ; $7a2b: $ff
	rst  $38                                         ; $7a2c: $ff
	ld   l, e                                        ; $7a2d: $6b
	ld   h, l                                        ; $7a2e: $65
	ld   [hl], h                                     ; $7a2f: $74
	dec  c                                           ; $7a30: $0d
	ld   [bc], a                                     ; $7a31: $02
	and  c                                           ; $7a32: $a1
	ld   a, h                                        ; $7a33: $7c
	sub  h                                           ; $7a34: $94
	sbc  c                                           ; $7a35: $99
	ld   l, c                                        ; $7a36: $69
	sbc  c                                           ; $7a37: $99
	ld   [bc], a                                     ; $7a38: $02
	ld   a, [de]                                     ; $7a39: $1a
	adc  d                                           ; $7a3a: $8a
	ld   d, h                                        ; $7a3b: $54
	rst  $38                                         ; $7a3c: $ff
	ld   e, c                                        ; $7a3d: $59
	ld   h, l                                        ; $7a3e: $65
	sub  a                                           ; $7a3f: $97
	rst  $38                                         ; $7a40: $ff
	dec  c                                           ; $7a41: $0d
	nop                                              ; $7a42: $00
	ld   a, [bc]                                     ; $7a43: $0a
	inc  e                                           ; $7a44: $1c
	inc  bc                                          ; $7a45: $03
	inc  bc                                          ; $7a46: $03
	inc  bc                                          ; $7a47: $03
	ld   bc, $9a61                                   ; $7a48: $01 $61 $9a
	adc  h                                           ; $7a4b: $8c
	ld   [hl], l                                     ; $7a4c: $75
	inc  b                                           ; $7a4d: $04
	ld   c, c                                        ; $7a4e: $49
	inc  b                                           ; $7a4f: $04
	add  hl, hl                                      ; $7a50: $29
	ld   e, c                                        ; $7a51: $59
	ld   b, $1d                                      ; $7a52: $06 $1d
	inc  bc                                          ; $7a54: $03
	ld   l, [hl]                                     ; $7a55: $6e
	ld   a, c                                        ; $7a56: $79
	dec  c                                           ; $7a57: $0d
	inc  bc                                          ; $7a58: $03
	ld   e, e                                        ; $7a59: $5b
	ld   e, a                                        ; $7a5a: $5f
	sub  a                                           ; $7a5b: $97
	sbc  d                                           ; $7a5c: $9a
	sbc  [hl]                                        ; $7a5d: $9e
	ld   a, l                                        ; $7a5e: $7d
	ld   h, b                                        ; $7a5f: $60
	adc  h                                           ; $7a60: $8c
	ld   h, e                                        ; $7a61: $63
	sbc  d                                           ; $7a62: $9a
	ld   l, l                                        ; $7a63: $6d
	dec  c                                           ; $7a64: $0d
	sub  b                                           ; $7a65: $90
	ld   a, h                                        ; $7a66: $7c
	sub  [hl]                                        ; $7a67: $96
	sbc  a                                           ; $7a68: $9f
	dec  c                                           ; $7a69: $0d
	nop                                              ; $7a6a: $00
	ld   a, [bc]                                     ; $7a6b: $0a
	ld   bc, $9e63                                   ; $7a6c: $01 $63 $9e
	ld   e, b                                        ; $7a6f: $58
	ld   h, l                                        ; $7a70: $65
	sub  c                                           ; $7a71: $91
	add  a                                           ; $7a72: $87
	sbc  b                                           ; $7a73: $98
	ld   a, l                                        ; $7a74: $7d
	inc  bc                                          ; $7a75: $03
	ld   a, [hl]                                     ; $7a76: $7e
	sbc  l                                           ; $7a77: $9d
	sbc  b                                           ; $7a78: $98
	sbc  a                                           ; $7a79: $9f
	dec  c                                           ; $7a7a: $0d
	inc  bc                                          ; $7a7b: $03
	ld   l, l                                        ; $7a7c: $6d
	dec  b                                           ; $7a7d: $05
	add  hl, de                                      ; $7a7e: $19
	ld   a, h                                        ; $7a7f: $7c
	inc  bc                                          ; $7a80: $03
	ld   l, a                                        ; $7a81: $6f
	ld   [bc], a                                     ; $7a82: $02
	xor  c                                           ; $7a83: $a9
	sub  [hl]                                        ; $7a84: $96
	sbc  a                                           ; $7a85: $9f
	dec  c                                           ; $7a86: $0d
	nop                                              ; $7a87: $00
	ld   a, [bc]                                     ; $7a88: $0a
	dec  c                                           ; $7a89: $0d
	nop                                              ; $7a8a: $00
	nop                                              ; $7a8b: $00
	rrca                                             ; $7a8c: $0f
	nop                                              ; $7a8d: $00
	ld   bc, $1e09                                   ; $7a8e: $01 $09 $1e
	nop                                              ; $7a91: $00
	nop                                              ; $7a92: $00
	rrca                                             ; $7a93: $0f
	nop                                              ; $7a94: $00
	ld   bc, $040d                                   ; $7a95: $01 $0d $04
	nop                                              ; $7a98: $00
	ld   [bc], a                                     ; $7a99: $02
	ld   bc, $7d58                                   ; $7a9a: $01 $58 $7d
	sub  [hl]                                        ; $7a9d: $96
	ld   d, h                                        ; $7a9e: $54
	sbc  [hl]                                        ; $7a9f: $9e
	and  e                                           ; $7aa0: $a3
	and  l                                           ; $7aa1: $a5
	db   $ec                                         ; $7aa2: $ec
	cp   d                                           ; $7aa3: $ba
	sbc  a                                           ; $7aa4: $9f
	dec  c                                           ; $7aa5: $0d
	nop                                              ; $7aa6: $00
	ld   a, [bc]                                     ; $7aa7: $0a
	rrca                                             ; $7aa8: $0f
	inc  b                                           ; $7aa9: $04
	nop                                              ; $7aaa: $00
	ld   bc, $526f                                   ; $7aab: $01 $6f $52
	ld   [bc], a                                     ; $7aae: $02
	inc  de                                          ; $7aaf: $13
	ld   l, a                                        ; $7ab0: $6f
	sub  c                                           ; $7ab1: $91
	and  c                                           ; $7ab2: $a1
	dec  c                                           ; $7ab3: $0d
	ld   e, b                                        ; $7ab4: $58
	ld   a, l                                        ; $7ab5: $7d
	sub  [hl]                                        ; $7ab6: $96
	ld   d, h                                        ; $7ab7: $54
	sbc  a                                           ; $7ab8: $9f
	dec  c                                           ; $7ab9: $0d
	nop                                              ; $7aba: $00
	ld   a, [bc]                                     ; $7abb: $0a
	rrca                                             ; $7abc: $0f
	nop                                              ; $7abd: $00
	ld   bc, $0101                                   ; $7abe: $01 $01 $01
	inc  bc                                          ; $7ac1: $03
	inc  b                                           ; $7ac2: $04
	ld   c, c                                        ; $7ac3: $49
	and  b                                           ; $7ac4: $a0
	ld   [bc], a                                     ; $7ac5: $02
	jp   nz, Jump_057_5461                           ; $7ac6: $c2 $61 $54

	ld   e, c                                        ; $7ac9: $59
	rst  $38                                         ; $7aca: $ff
	rst  $38                                         ; $7acb: $ff
	ld   bc, $0d04                                   ; $7acc: $01 $04 $0d
	nop                                              ; $7acf: $00
	ld   a, [bc]                                     ; $7ad0: $0a
	add  hl, de                                      ; $7ad1: $19
	dec  b                                           ; $7ad2: $05
	inc  bc                                          ; $7ad3: $03
	rst  JumpTable                                         ; $7ad4: $df
	db   $ec                                         ; $7ad5: $ec
	and  e                                           ; $7ad6: $a3
	ld   a, c                                        ; $7ad7: $79
	ld   [hl], d                                     ; $7ad8: $72
	ld   d, d                                        ; $7ad9: $52
	ld   [hl], h                                     ; $7ada: $74
	ld   [bc], a                                     ; $7adb: $02
	jp   nz, $005d                                   ; $7adc: $c2 $5d $00

	nop                                              ; $7adf: $00
	inc  bc                                          ; $7ae0: $03
	xor  b                                           ; $7ae1: $a8
	dec  b                                           ; $7ae2: $05
	rst  $38                                         ; $7ae3: $ff
	ld   a, c                                        ; $7ae4: $79
	ld   [hl], d                                     ; $7ae5: $72
	ld   d, d                                        ; $7ae6: $52
	ld   [hl], h                                     ; $7ae7: $74
	ld   [bc], a                                     ; $7ae8: $02
	jp   nz, $005d                                   ; $7ae9: $c2 $5d $00

	ld   bc, $8d67                                   ; $7aec: $01 $67 $8d
	sbc  d                                           ; $7aef: $9a
	ld   a, c                                        ; $7af0: $79
	ld   [hl], d                                     ; $7af1: $72
	ld   d, d                                        ; $7af2: $52
	ld   [hl], h                                     ; $7af3: $74
	ld   [bc], a                                     ; $7af4: $02
	jp   nz, $005d                                   ; $7af5: $c2 $5d $00

	ld   [bc], a                                     ; $7af8: $02
	rlca                                             ; $7af9: $07
	sbc  [hl]                                        ; $7afa: $9e
	nop                                              ; $7afb: $00
	ld   [bc], a                                     ; $7afc: $02
	inc  bc                                          ; $7afd: $03
	ld   bc, $2000                                   ; $7afe: $01 $00 $20
	nop                                              ; $7b01: $00
	rlca                                             ; $7b02: $07
	dec  b                                           ; $7b03: $05
	ld   bc, $0302                                   ; $7b04: $01 $02 $03
	ld   bc, $2001                                   ; $7b07: $01 $01 $20
	nop                                              ; $7b0a: $00
	rlca                                             ; $7b0b: $07
	pop  hl                                          ; $7b0c: $e1
	ld   bc, $0302                                   ; $7b0d: $01 $02 $03
	ld   bc, $2002                                   ; $7b10: $01 $02 $20
	nop                                              ; $7b13: $00
	ld   b, $84                                      ; $7b14: $06 $84
	nop                                              ; $7b16: $00
	inc  e                                           ; $7b17: $1c
	inc  b                                           ; $7b18: $04
	nop                                              ; $7b19: $00
	nop                                              ; $7b1a: $00
	ld   bc, $955b                                   ; $7b1b: $01 $5b $95
	ld   d, h                                        ; $7b1e: $54
	sub  b                                           ; $7b1f: $90
	ld   d, d                                        ; $7b20: $52
	ld   l, a                                        ; $7b21: $6f
	ld   a, c                                        ; $7b22: $79
	ld   l, a                                        ; $7b23: $6f
	dec  c                                           ; $7b24: $0d
	ld   e, d                                        ; $7b25: $5a
	and  c                                           ; $7b26: $a1
	ld   a, [hl]                                     ; $7b27: $7e
	sbc  e                                           ; $7b28: $9b
	ld   d, h                                        ; $7b29: $54
	ld   a, e                                        ; $7b2a: $7b
	ei                                               ; $7b2b: $fb
	ld   a, [$000d]                                  ; $7b2c: $fa $0d $00
	ld   a, [bc]                                     ; $7b2f: $0a
	nop                                              ; $7b30: $00
	rrca                                             ; $7b31: $0f
	nop                                              ; $7b32: $00
	ld   bc, $a301                                   ; $7b33: $01 $01 $a3
	and  l                                           ; $7b36: $a5
	db   $ec                                         ; $7b37: $ec
	cp   d                                           ; $7b38: $ba
	ld   e, c                                        ; $7b39: $59
	sub  a                                           ; $7b3a: $97
	ld   [bc], a                                     ; $7b3b: $02
	sub  l                                           ; $7b3c: $95
	ld   [hl], h                                     ; $7b3d: $74
	sbc  [hl]                                        ; $7b3e: $9e
	dec  c                                           ; $7b3f: $0d
	rst  JumpTable                                         ; $7b40: $df
	db   $ec                                         ; $7b41: $ec
	and  e                                           ; $7b42: $a3
	ld   h, e                                        ; $7b43: $63
	and  c                                           ; $7b44: $a1
	ld   [hl], h                                     ; $7b45: $74
	dec  c                                           ; $7b46: $0d
	ld   [hl], a                                     ; $7b47: $77
	and  c                                           ; $7b48: $a1
	ld   a, b                                        ; $7b49: $78
	inc  bc                                          ; $7b4a: $03
	add  d                                           ; $7b4b: $82
	ld   e, c                                        ; $7b4c: $59
	ld   a, b                                        ; $7b4d: $78
	ld   sp, hl                                      ; $7b4e: $f9
	dec  c                                           ; $7b4f: $0d
	nop                                              ; $7b50: $00
	ld   a, [bc]                                     ; $7b51: $0a
	inc  e                                           ; $7b52: $1c
	inc  b                                           ; $7b53: $04
	ld   bc, $0101                                   ; $7b54: $01 $01 $01
	ld   d, [hl]                                     ; $7b57: $56
	ei                                               ; $7b58: $fb
	halt                                             ; $7b59: $76
	ld   a, e                                        ; $7b5a: $7b
	rst  $38                                         ; $7b5b: $ff
	rst  $38                                         ; $7b5c: $ff
	dec  c                                           ; $7b5d: $0d
	ld   h, a                                        ; $7b5e: $67
	ld   h, d                                        ; $7b5f: $62
	ld   e, l                                        ; $7b60: $5d
	call nc, $f5b9                                   ; $7b61: $d4 $b9 $f5
	ld   a, b                                        ; $7b64: $78
	add  b                                           ; $7b65: $80
	halt                                             ; $7b66: $76
	ld   l, [hl]                                     ; $7b67: $6e
	sub  [hl]                                        ; $7b68: $96
	sbc  a                                           ; $7b69: $9f
	dec  c                                           ; $7b6a: $0d
	nop                                              ; $7b6b: $00
	ld   a, [bc]                                     ; $7b6c: $0a
	inc  e                                           ; $7b6d: $1c
	inc  b                                           ; $7b6e: $04
	inc  bc                                          ; $7b6f: $03
	inc  bc                                          ; $7b70: $03
	ld   bc, $9075                                   ; $7b71: $01 $75 $90
	sbc  [hl]                                        ; $7b74: $9e
	ld   e, b                                        ; $7b75: $58
	ld   h, c                                        ; $7b76: $61
	sbc  c                                           ; $7b77: $99
	halt                                             ; $7b78: $76
	ld   h, c                                        ; $7b79: $61
	sbc  l                                           ; $7b7a: $9d
	ld   d, d                                        ; $7b7b: $52
	ld   e, c                                        ; $7b7c: $59
	sub  b                                           ; $7b7d: $90
	sbc  a                                           ; $7b7e: $9f
	dec  c                                           ; $7b7f: $0d
	nop                                              ; $7b80: $00
	ld   a, [bc]                                     ; $7b81: $0a
	inc  e                                           ; $7b82: $1c
	inc  b                                           ; $7b83: $04
	nop                                              ; $7b84: $00
	nop                                              ; $7b85: $00
	ld   bc, $9166                                   ; $7b86: $01 $66 $91
	sbc  [hl]                                        ; $7b89: $9e
	ld   d, d                                        ; $7b8a: $52
	ld   h, c                                        ; $7b8b: $61
	ld   d, h                                        ; $7b8c: $54
	cp   c                                           ; $7b8d: $b9
	push hl                                          ; $7b8e: $e5
	push af                                          ; $7b8f: $f5
	sbc  $fb                                         ; $7b90: $de $fb
	db   $ed                                         ; $7b92: $ed
	sbc  a                                           ; $7b93: $9f
	dec  c                                           ; $7b94: $0d
	nop                                              ; $7b95: $00
	ld   a, [bc]                                     ; $7b96: $0a
	nop                                              ; $7b97: $00
	rrca                                             ; $7b98: $0f
	nop                                              ; $7b99: $00
	ld   bc, $0301                                   ; $7b9a: $01 $01 $03
	xor  b                                           ; $7b9d: $a8
	ld   d, h                                        ; $7b9e: $54
	ld   a, h                                        ; $7b9f: $7c
	ld   [hl], c                                     ; $7ba0: $71
	ld   [hl], h                                     ; $7ba1: $74
	inc  b                                           ; $7ba2: $04
	add  [hl]                                        ; $7ba3: $86
	ld   e, l                                        ; $7ba4: $5d
	ld   a, b                                        ; $7ba5: $78
	ld   d, d                                        ; $7ba6: $52
	ld   a, h                                        ; $7ba7: $7c
	ld   sp, hl                                      ; $7ba8: $f9
	dec  c                                           ; $7ba9: $0d
	nop                                              ; $7baa: $00
	ld   a, [bc]                                     ; $7bab: $0a
	inc  e                                           ; $7bac: $1c
	inc  b                                           ; $7bad: $04
	nop                                              ; $7bae: $00
	nop                                              ; $7baf: $00
	ld   bc, $a154                                   ; $7bb0: $01 $54 $a1
	sbc  [hl]                                        ; $7bb3: $9e
	ld   l, [hl]                                     ; $7bb4: $6e
	ld   d, d                                        ; $7bb5: $52
	ld   h, [hl]                                     ; $7bb6: $66
	sub  l                                           ; $7bb7: $95
	ld   d, h                                        ; $7bb8: $54
	add  h                                           ; $7bb9: $84
	ld   l, [hl]                                     ; $7bba: $6e
	sub  [hl]                                        ; $7bbb: $96
	sbc  a                                           ; $7bbc: $9f
	dec  c                                           ; $7bbd: $0d
	and  e                                           ; $7bbe: $a3
	and  l                                           ; $7bbf: $a5
	db   $ec                                         ; $7bc0: $ec
	cp   d                                           ; $7bc1: $ba
	ld   [hl], d                                     ; $7bc2: $72
	sub  [hl]                                        ; $7bc3: $96
	ld   d, d                                        ; $7bc4: $52
	ld   h, l                                        ; $7bc5: $65
	rst  $38                                         ; $7bc6: $ff
	rst  $38                                         ; $7bc7: $ff
	dec  c                                           ; $7bc8: $0d
	nop                                              ; $7bc9: $00
	inc  e                                           ; $7bca: $1c
	inc  b                                           ; $7bcb: $04
	ld   bc, $0101                                   ; $7bcc: $01 $01 $01
	ld   l, e                                        ; $7bcf: $6b
	sbc  d                                           ; $7bd0: $9a
	ld   a, c                                        ; $7bd1: $79
	sbc  [hl]                                        ; $7bd2: $9e
	adc  l                                           ; $7bd3: $8d
	and  c                                           ; $7bd4: $a1
	ld   a, b                                        ; $7bd5: $78
	ld   e, d                                        ; $7bd6: $5a
	ld   d, d                                        ; $7bd7: $52
	sbc  c                                           ; $7bd8: $99
	sub  b                                           ; $7bd9: $90
	and  c                                           ; $7bda: $a1
	ld   a, [$000d]                                  ; $7bdb: $fa $0d $00
	ld   a, [bc]                                     ; $7bde: $0a
	add  hl, de                                      ; $7bdf: $19
	dec  b                                           ; $7be0: $05
	ld   [bc], a                                     ; $7be1: $02
	ld   l, e                                        ; $7be2: $6b
	sbc  d                                           ; $7be3: $9a
	sub  b                                           ; $7be4: $90
	ld   l, e                                        ; $7be5: $6b
	ld   d, h                                        ; $7be6: $54
	ld   l, [hl]                                     ; $7be7: $6e
	ld   a, e                                        ; $7be8: $7b
	nop                                              ; $7be9: $00
	nop                                              ; $7bea: $00
	ld   [hl], l                                     ; $7beb: $75
	sub  b                                           ; $7bec: $90
	sbc  [hl]                                        ; $7bed: $9e
	ld   [bc], a                                     ; $7bee: $02
	and  c                                           ; $7bef: $a1
	and  b                                           ; $7bf0: $a0
	ld   [hl], d                                     ; $7bf1: $72
	ld   e, a                                        ; $7bf2: $5f
	ld   [hl], h                                     ; $7bf3: $74
	ld   a, e                                        ; $7bf4: $7b
	nop                                              ; $7bf5: $00
	ld   bc, $7907                                   ; $7bf6: $01 $07 $79
	ld   bc, $0302                                   ; $7bf9: $01 $02 $03
	ld   bc, $2000                                   ; $7bfc: $01 $00 $20
	nop                                              ; $7bff: $00
	rlca                                             ; $7c00: $07
	sbc  d                                           ; $7c01: $9a
	ld   bc, $0302                                   ; $7c02: $01 $02 $03
	ld   bc, $2001                                   ; $7c05: $01 $01 $20
	nop                                              ; $7c08: $00
	ld   b, $c5                                      ; $7c09: $06 $c5
	ld   bc, $000f                                   ; $7c0b: $01 $0f $00
	ld   bc, $6b01                                   ; $7c0e: $01 $01 $6b
	sbc  d                                           ; $7c11: $9a
	sub  b                                           ; $7c12: $90
	ld   l, e                                        ; $7c13: $6b
	ld   d, h                                        ; $7c14: $54
	ld   l, [hl]                                     ; $7c15: $6e
	ld   a, e                                        ; $7c16: $7b
	sbc  a                                           ; $7c17: $9f
	dec  c                                           ; $7c18: $0d
	nop                                              ; $7c19: $00
	ld   a, [bc]                                     ; $7c1a: $0a
	rrca                                             ; $7c1b: $0f
	inc  b                                           ; $7c1c: $04
	ld   bc, $5401                                   ; $7c1d: $01 $01 $54
	and  c                                           ; $7c20: $a1
	sbc  [hl]                                        ; $7c21: $9e
	ld   l, e                                        ; $7c22: $6b
	ld   d, h                                        ; $7c23: $54
	ld   l, [hl]                                     ; $7c24: $6e
	sub  [hl]                                        ; $7c25: $96
	sbc  a                                           ; $7c26: $9f
	dec  c                                           ; $7c27: $0d
	nop                                              ; $7c28: $00
	ld   a, [bc]                                     ; $7c29: $0a
	ld   b, $c9                                      ; $7c2a: $06 $c9
	ld   bc, $000f                                   ; $7c2c: $01 $0f $00
	ld   bc, $7501                                   ; $7c2f: $01 $01 $75
	sub  b                                           ; $7c32: $90
	sbc  [hl]                                        ; $7c33: $9e
	ld   [bc], a                                     ; $7c34: $02
	and  c                                           ; $7c35: $a1
	and  b                                           ; $7c36: $a0
	ld   [hl], d                                     ; $7c37: $72
	ld   e, a                                        ; $7c38: $5f
	ld   [hl], h                                     ; $7c39: $74
	ld   a, e                                        ; $7c3a: $7b
	sbc  a                                           ; $7c3b: $9f
	dec  c                                           ; $7c3c: $0d
	nop                                              ; $7c3d: $00
	ld   a, [bc]                                     ; $7c3e: $0a
	rrca                                             ; $7c3f: $0f
	inc  b                                           ; $7c40: $04
	ld   bc, $401d                                   ; $7c41: $01 $1d $40
	inc  d                                           ; $7c44: $14
	inc  bc                                          ; $7c45: $03
	inc  d                                           ; $7c46: $14
	ld   bc, $2802                                   ; $7c47: $01 $02 $28
	nop                                              ; $7c4a: $00
	ld   bc, $a154                                   ; $7c4b: $01 $54 $a1
	sbc  [hl]                                        ; $7c4e: $9e
	ld   d, b                                        ; $7c4f: $50
	sbc  b                                           ; $7c50: $98
	ld   e, d                                        ; $7c51: $5a
	halt                                             ; $7c52: $76
	ld   d, h                                        ; $7c53: $54
	sbc  a                                           ; $7c54: $9f
	dec  c                                           ; $7c55: $0d
	nop                                              ; $7c56: $00
	ld   a, [bc]                                     ; $7c57: $0a
	inc  e                                           ; $7c58: $1c
	inc  b                                           ; $7c59: $04
	nop                                              ; $7c5a: $00
	nop                                              ; $7c5b: $00
	ld   bc, $9166                                   ; $7c5c: $01 $66 $91
	sbc  [hl]                                        ; $7c5f: $9e
	and  e                                           ; $7c60: $a3
	and  l                                           ; $7c61: $a5
	db   $ec                                         ; $7c62: $ec
	cp   d                                           ; $7c63: $ba
	ld   d, d                                        ; $7c64: $52
	ld   e, l                                        ; $7c65: $5d
	ld   a, e                                        ; $7c66: $7b
	sbc  a                                           ; $7c67: $9f
	dec  c                                           ; $7c68: $0d
	nop                                              ; $7c69: $00
	ld   a, [bc]                                     ; $7c6a: $0a
	dec  c                                           ; $7c6b: $0d
	nop                                              ; $7c6c: $00
	nop                                              ; $7c6d: $00
	rrca                                             ; $7c6e: $0f
	nop                                              ; $7c6f: $00
	ld   bc, $1e09                                   ; $7c70: $01 $09 $1e
	nop                                              ; $7c73: $00
	rrca                                             ; $7c74: $0f
	nop                                              ; $7c75: $00
	ld   bc, $a301                                   ; $7c76: $01 $01 $a3
	and  l                                           ; $7c79: $a5
	db   $ec                                         ; $7c7a: $ec
	cp   d                                           ; $7c7b: $ba
	ld   e, c                                        ; $7c7c: $59
	sub  a                                           ; $7c7d: $97
	ld   [bc], a                                     ; $7c7e: $02
	sub  l                                           ; $7c7f: $95
	ld   [hl], h                                     ; $7c80: $74
	sbc  [hl]                                        ; $7c81: $9e
	dec  c                                           ; $7c82: $0d
	ld   h, a                                        ; $7c83: $67
	adc  l                                           ; $7c84: $8d
	sbc  d                                           ; $7c85: $9a
	ld   h, e                                        ; $7c86: $63
	and  c                                           ; $7c87: $a1
	ld   [hl], h                                     ; $7c88: $74
	dec  c                                           ; $7c89: $0d
	ld   [hl], a                                     ; $7c8a: $77
	and  c                                           ; $7c8b: $a1
	ld   a, b                                        ; $7c8c: $78
	inc  bc                                          ; $7c8d: $03
	add  d                                           ; $7c8e: $82
	ld   e, c                                        ; $7c8f: $59
	ld   a, b                                        ; $7c90: $78
	ld   sp, hl                                      ; $7c91: $f9
	dec  c                                           ; $7c92: $0d
	nop                                              ; $7c93: $00
	ld   a, [bc]                                     ; $7c94: $0a
	inc  e                                           ; $7c95: $1c
	inc  b                                           ; $7c96: $04
	nop                                              ; $7c97: $00
	nop                                              ; $7c98: $00
	ld   bc, $9058                                   ; $7c99: $01 $58 $90
	ld   h, l                                        ; $7c9c: $65
	sbc  e                                           ; $7c9d: $9b
	ld   d, d                                        ; $7c9e: $52
	add  b                                           ; $7c9f: $80
	halt                                             ; $7ca0: $76
	ld   l, [hl]                                     ; $7ca1: $6e
	sub  [hl]                                        ; $7ca2: $96
	sbc  a                                           ; $7ca3: $9f
	dec  c                                           ; $7ca4: $0d
	ld   d, d                                        ; $7ca5: $52
	ld   [hl], d                                     ; $7ca6: $72
	sub  b                                           ; $7ca7: $90
	xor  h                                           ; $7ca8: $ac
	push af                                          ; $7ca9: $f5
	bit  6, [hl]                                     ; $7caa: $cb $76
	or   d                                           ; $7cac: $b2
	push af                                          ; $7cad: $f5
	xor  h                                           ; $7cae: $ac
	ld   h, l                                        ; $7caf: $65
	ld   l, l                                        ; $7cb0: $6d
	sbc  b                                           ; $7cb1: $98
	dec  c                                           ; $7cb2: $0d
	ld   e, b                                        ; $7cb3: $58
	ld   e, b                                        ; $7cb4: $58
	ld   h, d                                        ; $7cb5: $62
	ld   d, [hl]                                     ; $7cb6: $56
	ld   [hl], l                                     ; $7cb7: $75
	sbc  l                                           ; $7cb8: $9d
	sub  a                                           ; $7cb9: $97
	ld   [hl], c                                     ; $7cba: $71
	ld   l, l                                        ; $7cbb: $6d
	sbc  b                                           ; $7cbc: $98
	rst  $38                                         ; $7cbd: $ff
	rst  $38                                         ; $7cbe: $ff
	dec  c                                           ; $7cbf: $0d
	nop                                              ; $7cc0: $00
	ld   a, [bc]                                     ; $7cc1: $0a
	inc  e                                           ; $7cc2: $1c
	inc  b                                           ; $7cc3: $04
	ld   bc, $0101                                   ; $7cc4: $01 $01 $01
	ld   [hl], l                                     ; $7cc7: $75
	sub  b                                           ; $7cc8: $90
	ld   a, e                                        ; $7cc9: $7b
	sbc  [hl]                                        ; $7cca: $9e
	adc  c                                           ; $7ccb: $89
	and  c                                           ; $7ccc: $a1
	halt                                             ; $7ccd: $76
	ld   a, l                                        ; $7cce: $7d
	ld   h, a                                        ; $7ccf: $67
	ld   [hl], c                                     ; $7cd0: $71
	ld   h, d                                        ; $7cd1: $62
	ld   e, l                                        ; $7cd2: $5d
	dec  c                                           ; $7cd3: $0d
	ld   d, d                                        ; $7cd4: $52
	ld   d, d                                        ; $7cd5: $52
	inc  bc                                          ; $7cd6: $03

jr_057_7cd7:
	add  d                                           ; $7cd7: $82
	ld   a, b                                        ; $7cd8: $78
	and  c                                           ; $7cd9: $a1
	ld   l, [hl]                                     ; $7cda: $6e
	sbc  a                                           ; $7cdb: $9f
	dec  c                                           ; $7cdc: $0d
	nop                                              ; $7cdd: $00
	ld   a, [bc]                                     ; $7cde: $0a
	ld   bc, $9166                                   ; $7cdf: $01 $66 $91
	sbc  [hl]                                        ; $7ce2: $9e
	ld   d, d                                        ; $7ce3: $52
	ld   h, c                                        ; $7ce4: $61
	ld   d, h                                        ; $7ce5: $54
	cp   c                                           ; $7ce6: $b9
	push hl                                          ; $7ce7: $e5
	push af                                          ; $7ce8: $f5
	sbc  $fb                                         ; $7ce9: $de $fb
	db   $ed                                         ; $7ceb: $ed
	sbc  a                                           ; $7cec: $9f
	dec  c                                           ; $7ced: $0d
	nop                                              ; $7cee: $00
	ld   a, [bc]                                     ; $7cef: $0a
	dec  c                                           ; $7cf0: $0d
	nop                                              ; $7cf1: $00
	nop                                              ; $7cf2: $00
	rrca                                             ; $7cf3: $0f
	nop                                              ; $7cf4: $00
	ld   bc, $1e09                                   ; $7cf5: $01 $09 $1e
	nop                                              ; $7cf8: $00
	nop                                              ; $7cf9: $00
	rrca                                             ; $7cfa: $0f
	nop                                              ; $7cfb: $00
	ld   bc, $050d                                   ; $7cfc: $01 $0d $05
	nop                                              ; $7cff: $00
	ld   [bc], a                                     ; $7d00: $02
	ld   bc, $7d58                                   ; $7d01: $01 $58 $7d
	sub  [hl]                                        ; $7d04: $96
	ld   d, h                                        ; $7d05: $54
	ld   h, d                                        ; $7d06: $62
	ld   h, h                                        ; $7d07: $64
	ld   d, d                                        ; $7d08: $52
	adc  h                                           ; $7d09: $8c
	ld   h, a                                        ; $7d0a: $67
	dec  c                                           ; $7d0b: $0d
	ld   [bc], a                                     ; $7d0c: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d0d: $cf
	dec  b                                           ; $7d0e: $05
	ld   a, [de]                                     ; $7d0f: $1a
	ld   h, e                                        ; $7d10: $63
	and  c                                           ; $7d11: $a1
	sbc  a                                           ; $7d12: $9f
	dec  c                                           ; $7d13: $0d
	nop                                              ; $7d14: $00
	ld   a, [bc]                                     ; $7d15: $0a
	inc  e                                           ; $7d16: $1c
	dec  b                                           ; $7d17: $05
	ld   bc, $0101                                   ; $7d18: $01 $01 $01
	ld   [$7d00], sp                                 ; $7d1b: $08 $00 $7d
	and  c                                           ; $7d1e: $a1
	sbc  a                                           ; $7d1f: $9f
	dec  c                                           ; $7d20: $0d
	ld   e, b                                        ; $7d21: $58
	ld   a, l                                        ; $7d22: $7d
	sub  [hl]                                        ; $7d23: $96
	ld   d, h                                        ; $7d24: $54
	ld   h, e                                        ; $7d25: $63
	and  c                                           ; $7d26: $a1
	sbc  a                                           ; $7d27: $9f
	dec  c                                           ; $7d28: $0d
	nop                                              ; $7d29: $00
	ld   a, [bc]                                     ; $7d2a: $0a
	rrca                                             ; $7d2b: $0f
	nop                                              ; $7d2c: $00
	ld   bc, $0101                                   ; $7d2d: $01 $01 $01
	inc  bc                                          ; $7d30: $03
	inc  b                                           ; $7d31: $04
	ld   c, c                                        ; $7d32: $49
	ld   a, h                                        ; $7d33: $7c
	dec  b                                           ; $7d34: $05
	jr   nz, jr_057_7cd7                             ; $7d35: $20 $a0

	ld   h, l                                        ; $7d37: $65
	sub  [hl]                                        ; $7d38: $96
	ld   d, h                                        ; $7d39: $54
	ld   e, c                                        ; $7d3a: $59
	ld   a, b                                        ; $7d3b: $78
	rst  $38                                         ; $7d3c: $ff
	rst  $38                                         ; $7d3d: $ff
	ld   bc, $0d04                                   ; $7d3e: $01 $04 $0d
	nop                                              ; $7d41: $00
	ld   a, [bc]                                     ; $7d42: $0a
	add  hl, de                                      ; $7d43: $19
	dec  b                                           ; $7d44: $05
	inc  bc                                          ; $7d45: $03
	ld   h, e                                        ; $7d46: $63
	ld   e, l                                        ; $7d47: $5d
	sub  a                                           ; $7d48: $97
	ld   a, c                                        ; $7d49: $79
	ld   [hl], d                                     ; $7d4a: $72
	ld   d, d                                        ; $7d4b: $52
	ld   [hl], h                                     ; $7d4c: $74
	ld   [bc], a                                     ; $7d4d: $02
	jp   nz, $005d                                   ; $7d4e: $c2 $5d $00

	nop                                              ; $7d51: $00
	inc  b                                           ; $7d52: $04
	ld   e, [hl]                                     ; $7d53: $5e
	inc  b                                           ; $7d54: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d55: $cf
	inc  b                                           ; $7d56: $04
	ld   h, c                                        ; $7d57: $61
	ld   a, c                                        ; $7d58: $79
	ld   [hl], d                                     ; $7d59: $72
	ld   d, d                                        ; $7d5a: $52
	ld   [hl], h                                     ; $7d5b: $74
	ld   [bc], a                                     ; $7d5c: $02
	jp   nz, $005d                                   ; $7d5d: $c2 $5d $00

	ld   bc, $f5ac                                   ; $7d60: $01 $ac $f5
	bit  7, c                                        ; $7d63: $cb $79
	ld   [hl], d                                     ; $7d65: $72
	ld   d, d                                        ; $7d66: $52
	ld   [hl], h                                     ; $7d67: $74
	ld   [bc], a                                     ; $7d68: $02
	jp   nz, $005d                                   ; $7d69: $c2 $5d $00

	ld   [bc], a                                     ; $7d6c: $02
	rlca                                             ; $7d6d: $07
	or   c                                           ; $7d6e: $b1
	nop                                              ; $7d6f: $00
	ld   [bc], a                                     ; $7d70: $02
	inc  bc                                          ; $7d71: $03
	ld   bc, $2000                                   ; $7d72: $01 $00 $20
	nop                                              ; $7d75: $00
	rlca                                             ; $7d76: $07
	ld   a, h                                        ; $7d77: $7c
	ld   bc, $0302                                   ; $7d78: $01 $02 $03
	ld   bc, $2001                                   ; $7d7b: $01 $01 $20
	nop                                              ; $7d7e: $00
	rlca                                             ; $7d7f: $07
	db   $10                                         ; $7d80: $10
	ld   [bc], a                                     ; $7d81: $02
	ld   [bc], a                                     ; $7d82: $02
	inc  bc                                          ; $7d83: $03
	ld   bc, $2002                                   ; $7d84: $01 $02 $20
	nop                                              ; $7d87: $00
	ld   b, $91                                      ; $7d88: $06 $91
	nop                                              ; $7d8a: $00
	inc  e                                           ; $7d8b: $1c
	dec  b                                           ; $7d8c: $05
	nop                                              ; $7d8d: $00
	nop                                              ; $7d8e: $00
	ld   bc, $a502                                   ; $7d8f: $01 $02 $a5
	inc  b                                           ; $7d92: $04
	xor  d                                           ; $7d93: $aa
	sub  b                                           ; $7d94: $90
	ld   [bc], a                                     ; $7d95: $02
	jr   nz, jr_057_7d9c                             ; $7d96: $20 $04

	xor  d                                           ; $7d98: $aa
	ld   e, d                                        ; $7d99: $5a
	and  c                                           ; $7d9a: $a1
	ld   a, [hl]                                     ; $7d9b: $7e

jr_057_7d9c:
	sbc  b                                           ; $7d9c: $98
	sub  d                                           ; $7d9d: $92
	sbc  a                                           ; $7d9e: $9f
	dec  c                                           ; $7d9f: $0d
	nop                                              ; $7da0: $00
	ld   a, [bc]                                     ; $7da1: $0a
	dec  c                                           ; $7da2: $0d
	nop                                              ; $7da3: $00
	nop                                              ; $7da4: $00
	rrca                                             ; $7da5: $0f
	nop                                              ; $7da6: $00
	ld   bc, $1e09                                   ; $7da7: $01 $09 $1e
	nop                                              ; $7daa: $00
	rrca                                             ; $7dab: $0f
	nop                                              ; $7dac: $00
	ld   bc, $6301                                   ; $7dad: $01 $01 $63
	ld   e, l                                        ; $7db0: $5d
	sub  a                                           ; $7db1: $97
	ld   h, e                                        ; $7db2: $63
	and  c                                           ; $7db3: $a1
	ld   [hl], h                                     ; $7db4: $74
	sbc  [hl]                                        ; $7db5: $9e
	ld   [bc], a                                     ; $7db6: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7db7: $cf
	dec  b                                           ; $7db8: $05
	ld   a, [de]                                     ; $7db9: $1a
	ld   h, e                                        ; $7dba: $63
	and  c                                           ; $7dbb: $a1
	ld   e, c                                        ; $7dbc: $59
	sub  a                                           ; $7dbd: $97
	dec  c                                           ; $7dbe: $0d
	ld   [bc], a                                     ; $7dbf: $02
	sub  l                                           ; $7dc0: $95
	ld   [hl], h                                     ; $7dc1: $74
	sbc  [hl]                                        ; $7dc2: $9e
	ld   [hl], a                                     ; $7dc3: $77
	and  c                                           ; $7dc4: $a1
	ld   a, b                                        ; $7dc5: $78
	inc  b                                           ; $7dc6: $04
	ld   a, b                                        ; $7dc7: $78
	ld   [hl], l                                     ; $7dc8: $75
	ld   h, a                                        ; $7dc9: $67
	ld   e, c                                        ; $7dca: $59
	ld   sp, hl                                      ; $7dcb: $f9
	dec  c                                           ; $7dcc: $0d
	nop                                              ; $7dcd: $00
	ld   a, [bc]                                     ; $7dce: $0a
	inc  e                                           ; $7dcf: $1c
	dec  b                                           ; $7dd0: $05
	ld   bc, $0101                                   ; $7dd1: $01 $01 $01
	ld   h, e                                        ; $7dd4: $63
	ld   e, l                                        ; $7dd5: $5d
	sub  a                                           ; $7dd6: $97
	ld   a, l                                        ; $7dd7: $7d
	and  c                                           ; $7dd8: $a1
	ld   a, l                                        ; $7dd9: $7d
	sbc  [hl]                                        ; $7dda: $9e
	ld   d, [hl]                                     ; $7ddb: $56
	ld   d, [hl]                                     ; $7ddc: $56
	inc  bc                                          ; $7ddd: $03
	add  d                                           ; $7dde: $82
	sub  d                                           ; $7ddf: $92
	ld   [hl], l                                     ; $7de0: $75
	sbc  a                                           ; $7de1: $9f
	dec  c                                           ; $7de2: $0d
	ld   d, d                                        ; $7de3: $52
	ld   [hl], d                                     ; $7de4: $72
	ld   [hl], l                                     ; $7de5: $75
	sub  b                                           ; $7de6: $90
	ld   [bc], a                                     ; $7de7: $02
	jr   nz, jr_057_7ded                             ; $7de8: $20 $03

	ld   d, d                                        ; $7dea: $52
	ld   [bc], a                                     ; $7deb: $02
	cp   l                                           ; $7dec: $bd

jr_057_7ded:
	ld   b, $25                                      ; $7ded: $06 $25
	ld   a, h                                        ; $7def: $7c
	dec  c                                           ; $7df0: $0d
	ld   e, d                                        ; $7df1: $5a
	and  c                                           ; $7df2: $a1
	ld   a, [hl]                                     ; $7df3: $7e
	sbc  b                                           ; $7df4: $98
	sub  d                                           ; $7df5: $92
	ld   h, e                                        ; $7df6: $63
	and  c                                           ; $7df7: $a1
	sub  d                                           ; $7df8: $92
	ld   h, l                                        ; $7df9: $65
	ld   a, b                                        ; $7dfa: $78
	sbc  a                                           ; $7dfb: $9f
	dec  c                                           ; $7dfc: $0d
	nop                                              ; $7dfd: $00
	ld   a, [bc]                                     ; $7dfe: $0a
	inc  e                                           ; $7dff: $1c
	dec  b                                           ; $7e00: $05
	nop                                              ; $7e01: $00
	nop                                              ; $7e02: $00
	ld   bc, $5d63                                   ; $7e03: $01 $63 $5d
	sub  a                                           ; $7e06: $97
	ld   a, l                                        ; $7e07: $7d
	and  c                                           ; $7e08: $a1
	adc  l                                           ; $7e09: $8d
	ld   l, l                                        ; $7e0a: $6d
	ld   d, d                                        ; $7e0b: $52
	ld   a, c                                        ; $7e0c: $79
	sbc  [hl]                                        ; $7e0d: $9e
	dec  c                                           ; $7e0e: $0d
	ld   e, d                                        ; $7e0f: $5a
	and  c                                           ; $7e10: $a1
	ld   a, [hl]                                     ; $7e11: $7e
	ld   [hl], c                                     ; $7e12: $71
	ld   [hl], h                                     ; $7e13: $74
	sbc  c                                           ; $7e14: $99
	inc  bc                                          ; $7e15: $03
	add  d                                           ; $7e16: $82
	and  b                                           ; $7e17: $a0
	ld   [bc], a                                     ; $7e18: $02
	sub  l                                           ; $7e19: $95
	sbc  c                                           ; $7e1a: $99
	halt                                             ; $7e1b: $76
	sbc  [hl]                                        ; $7e1c: $9e
	dec  c                                           ; $7e1d: $0d
	and  a                                           ; $7e1e: $a7
	jp   nz, Jump_057_5a90                           ; $7e1f: $c2 $90 $5a

	and  c                                           ; $7e22: $a1
	ld   a, [hl]                                     ; $7e23: $7e
	sbc  e                                           ; $7e24: $9b
	ld   [hl], c                                     ; $7e25: $71
	ld   [hl], h                                     ; $7e26: $74
	dec  b                                           ; $7e27: $05
	pop  de                                          ; $7e28: $d1
	ld   d, h                                        ; $7e29: $54
	and  c                                           ; $7e2a: $a1
	sub  d                                           ; $7e2b: $92
	sbc  a                                           ; $7e2c: $9f
	dec  c                                           ; $7e2d: $0d
	nop                                              ; $7e2e: $00
	ld   a, [bc]                                     ; $7e2f: $0a
	inc  e                                           ; $7e30: $1c
	dec  b                                           ; $7e31: $05
	ld   bc, $0101                                   ; $7e32: $01 $01 $01
	adc  h                                           ; $7e35: $8c
	sbc  [hl]                                        ; $7e36: $9e
	inc  bc                                          ; $7e37: $03
	ld   l, a                                        ; $7e38: $6f
	ld   bc, $7614                                   ; $7e39: $01 $14 $76
	and  c                                           ; $7e3c: $a1
	ld   [hl], l                                     ; $7e3d: $75
	sub  b                                           ; $7e3e: $90
	ld   a, b                                        ; $7e3f: $78
	ld   d, d                                        ; $7e40: $52
	jp   z, $0db9                                    ; $7e41: $ca $b9 $0d

	ld   h, a                                        ; $7e44: $67
	sbc  c                                           ; $7e45: $99
	ld   a, h                                        ; $7e46: $7c
	ld   e, d                                        ; $7e47: $5a
	inc  b                                           ; $7e48: $04
	ld   bc, $ae79                                   ; $7e49: $01 $79 $ae
	cp   e                                           ; $7e4c: $bb
	sub  d                                           ; $7e4d: $92
	ld   e, a                                        ; $7e4e: $5f
	ld   [hl], a                                     ; $7e4f: $77
	ld   a, b                                        ; $7e50: $78
	sbc  a                                           ; $7e51: $9f
	dec  c                                           ; $7e52: $0d
	nop                                              ; $7e53: $00
	ld   a, [bc]                                     ; $7e54: $0a
	ld   bc, $7889                                   ; $7e55: $01 $89 $78
	sbc  [hl]                                        ; $7e58: $9e
	and  a                                           ; $7e59: $a7
	jp   nz, Jump_057_7f02                           ; $7e5a: $c2 $02 $7f

	ld   e, l                                        ; $7e5d: $5d
	ld   e, c                                        ; $7e5e: $59
	sub  a                                           ; $7e5f: $97
	sbc  a                                           ; $7e60: $9f
	dec  c                                           ; $7e61: $0d
	adc  h                                           ; $7e62: $8c
	ld   l, l                                        ; $7e63: $6d
	sbc  [hl]                                        ; $7e64: $9e
	ld   [bc], a                                     ; $7e65: $02
	xor  d                                           ; $7e66: $aa
	ld   [hl], l                                     ; $7e67: $75
	ld   a, b                                        ; $7e68: $78
	sbc  a                                           ; $7e69: $9f
	dec  c                                           ; $7e6a: $0d
	nop                                              ; $7e6b: $00
	ld   a, [bc]                                     ; $7e6c: $0a
	dec  c                                           ; $7e6d: $0d
	nop                                              ; $7e6e: $00
	nop                                              ; $7e6f: $00
	rrca                                             ; $7e70: $0f
	nop                                              ; $7e71: $00
	ld   bc, $1e09                                   ; $7e72: $01 $09 $1e
	nop                                              ; $7e75: $00
	rrca                                             ; $7e76: $0f
	nop                                              ; $7e77: $00
	ld   bc, $0201                                   ; $7e78: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e7b: $cf
	dec  b                                           ; $7e7c: $05
	ld   a, [de]                                     ; $7e7d: $1a
	ld   h, e                                        ; $7e7e: $63
	and  c                                           ; $7e7f: $a1
	ld   a, h                                        ; $7e80: $7c
	ld   a, b                                        ; $7e81: $78
	ld   e, c                                        ; $7e82: $59
	ld   [hl], l                                     ; $7e83: $75
	sbc  [hl]                                        ; $7e84: $9e
	dec  c                                           ; $7e85: $0d
	ld   [bc], a                                     ; $7e86: $02
	and  l                                           ; $7e87: $a5
	adc  h                                           ; $7e88: $8c
	ld   [hl], l                                     ; $7e89: $75
	ld   [hl], l                                     ; $7e8a: $75
	inc  bc                                          ; $7e8b: $03
	ld   l, c                                        ; $7e8c: $69
	ld   [bc], a                                     ; $7e8d: $02
	cp   [hl]                                        ; $7e8e: $be
	ld   a, h                                        ; $7e8f: $7c
	inc  b                                           ; $7e90: $04
	ld   e, [hl]                                     ; $7e91: $5e
	inc  b                                           ; $7e92: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e93: $cf
	inc  b                                           ; $7e94: $04
	ld   h, c                                        ; $7e95: $61
	dec  c                                           ; $7e96: $0d
	ld   [hl], h                                     ; $7e97: $74
	ld   a, b                                        ; $7e98: $78
	and  c                                           ; $7e99: $a1
	ld   [hl], l                                     ; $7e9a: $75
	ld   h, a                                        ; $7e9b: $67
	ld   e, c                                        ; $7e9c: $59
	ld   sp, hl                                      ; $7e9d: $f9
	dec  c                                           ; $7e9e: $0d
	nop                                              ; $7e9f: $00
	ld   a, [bc]                                     ; $7ea0: $0a
	inc  e                                           ; $7ea1: $1c
	dec  b                                           ; $7ea2: $05
	ld   [bc], a                                     ; $7ea3: $02
	ld   [bc], a                                     ; $7ea4: $02
	ld   bc, $fc54                                   ; $7ea5: $01 $54 $fc
	and  c                                           ; $7ea8: $a1
	rst  $38                                         ; $7ea9: $ff
	rst  $38                                         ; $7eaa: $ff
	dec  c                                           ; $7eab: $0d
	sub  d                                           ; $7eac: $92
	ld   [hl], c                                     ; $7ead: $71
	ld   a, a                                        ; $7eae: $7f
	sbc  b                                           ; $7eaf: $98
	ld   [bc], a                                     ; $7eb0: $02
	jr   c, jr_057_7eb7                              ; $7eb1: $38 $04

	ld   d, d                                        ; $7eb3: $52
	ld   e, c                                        ; $7eb4: $59
	ld   a, b                                        ; $7eb5: $78
	ld   sp, hl                                      ; $7eb6: $f9

jr_057_7eb7:
	dec  c                                           ; $7eb7: $0d
	nop                                              ; $7eb8: $00
	ld   a, [bc]                                     ; $7eb9: $0a
	inc  e                                           ; $7eba: $1c
	dec  b                                           ; $7ebb: $05
	ld   bc, $0101                                   ; $7ebc: $01 $01 $01
	inc  bc                                          ; $7ebf: $03
	dec  c                                           ; $7ec0: $0d
	inc  bc                                          ; $7ec1: $03
	ld   h, l                                        ; $7ec2: $65
	ld   h, b                                        ; $7ec3: $60
	ld   h, l                                        ; $7ec4: $65
	ld   e, c                                        ; $7ec5: $59
	sub  d                                           ; $7ec6: $92
	ld   [hl], c                                     ; $7ec7: $71
	ld   [hl], h                                     ; $7ec8: $74
	ld   a, b                                        ; $7ec9: $78
	ld   d, d                                        ; $7eca: $52
	ld   e, a                                        ; $7ecb: $5f
	ld   [hl], a                                     ; $7ecc: $77
	dec  c                                           ; $7ecd: $0d
	ld   [bc], a                                     ; $7ece: $02
	adc  b                                           ; $7ecf: $88
	inc  b                                           ; $7ed0: $04
	ld   e, [hl]                                     ; $7ed1: $5e
	ld   a, c                                        ; $7ed2: $79
	inc  bc                                          ; $7ed3: $03
	inc  de                                          ; $7ed4: $13
	ld   [bc], a                                     ; $7ed5: $02
	ld   d, b                                        ; $7ed6: $50
	ld   [hl], l                                     ; $7ed7: $75
	ld   e, e                                        ; $7ed8: $5b
	ld   l, l                                        ; $7ed9: $6d
	and  c                                           ; $7eda: $a1
	ld   a, l                                        ; $7edb: $7d
	dec  c                                           ; $7edc: $0d
	ld   [bc], a                                     ; $7edd: $02
	jr   c, jr_057_7ee2                              ; $7ede: $38 $02

	inc  b                                           ; $7ee0: $04
	sub  d                                           ; $7ee1: $92

jr_057_7ee2:
	ld   [hl], c                                     ; $7ee2: $71
	ld   l, l                                        ; $7ee3: $6d
	ld   a, b                                        ; $7ee4: $78
	sbc  a                                           ; $7ee5: $9f
	dec  c                                           ; $7ee6: $0d
	nop                                              ; $7ee7: $00
	ld   a, [bc]                                     ; $7ee8: $0a
	ld   bc, $7889                                   ; $7ee9: $01 $89 $78
	sbc  [hl]                                        ; $7eec: $9e
	and  a                                           ; $7eed: $a7
	jp   nz, Jump_057_7f02                           ; $7eee: $c2 $02 $7f

	ld   e, l                                        ; $7ef1: $5d
	ld   e, c                                        ; $7ef2: $59
	sub  a                                           ; $7ef3: $97
	sbc  a                                           ; $7ef4: $9f
	dec  c                                           ; $7ef5: $0d
	adc  h                                           ; $7ef6: $8c
	ld   l, l                                        ; $7ef7: $6d
	sbc  [hl]                                        ; $7ef8: $9e
	ld   [bc], a                                     ; $7ef9: $02
	xor  d                                           ; $7efa: $aa
	ld   [hl], l                                     ; $7efb: $75
	ld   a, b                                        ; $7efc: $78
	sbc  a                                           ; $7efd: $9f
	dec  c                                           ; $7efe: $0d
	nop                                              ; $7eff: $00
	ld   a, [bc]                                     ; $7f00: $0a
	dec  c                                           ; $7f01: $0d

Jump_057_7f02:
	nop                                              ; $7f02: $00
	nop                                              ; $7f03: $00
	rrca                                             ; $7f04: $0f
	nop                                              ; $7f05: $00
	ld   bc, $1e09                                   ; $7f06: $01 $09 $1e
	nop                                              ; $7f09: $00
	rrca                                             ; $7f0a: $0f
	nop                                              ; $7f0b: $00
	ld   bc, $ac01                                   ; $7f0c: $01 $01 $ac
	push af                                          ; $7f0f: $f5
	bit  4, e                                        ; $7f10: $cb $63
	and  c                                           ; $7f12: $a1
	ld   [hl], h                                     ; $7f13: $74
	sbc  [hl]                                        ; $7f14: $9e
	ld   [bc], a                                     ; $7f15: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f16: $cf
	dec  b                                           ; $7f17: $05
	ld   a, [de]                                     ; $7f18: $1a
	ld   h, e                                        ; $7f19: $63
	and  c                                           ; $7f1a: $a1
	ld   e, c                                        ; $7f1b: $59
	sub  a                                           ; $7f1c: $97
	dec  c                                           ; $7f1d: $0d
	ld   [bc], a                                     ; $7f1e: $02
	sub  l                                           ; $7f1f: $95
	ld   [hl], h                                     ; $7f20: $74
	sbc  [hl]                                        ; $7f21: $9e
	ld   [hl], a                                     ; $7f22: $77
	and  c                                           ; $7f23: $a1
	ld   a, b                                        ; $7f24: $78
	inc  b                                           ; $7f25: $04
	ld   a, b                                        ; $7f26: $78
	ld   [hl], l                                     ; $7f27: $75
	ld   h, a                                        ; $7f28: $67
	ld   e, c                                        ; $7f29: $59
	ld   sp, hl                                      ; $7f2a: $f9
	dec  c                                           ; $7f2b: $0d
	nop                                              ; $7f2c: $00
	ld   a, [bc]                                     ; $7f2d: $0a
	inc  e                                           ; $7f2e: $1c
	dec  b                                           ; $7f2f: $05
	nop                                              ; $7f30: $00
	nop                                              ; $7f31: $00
	ld   bc, $f5ac                                   ; $7f32: $01 $ac $f5
	bit  7, l                                        ; $7f35: $cb $7d
	and  c                                           ; $7f37: $a1
	ld   sp, hl                                      ; $7f38: $f9
	dec  c                                           ; $7f39: $0d
	inc  bc                                          ; $7f3a: $03
	ld   l, [hl]                                     ; $7f3b: $6e
	ld   [bc], a                                     ; $7f3c: $02
	db   $fc                                         ; $7f3d: $fc
	ld   a, c                                        ; $7f3e: $79
	ld   h, l                                        ; $7f3f: $65
	halt                                             ; $7f40: $76
	ld   e, l                                        ; $7f41: $5d
	ld   a, c                                        ; $7f42: $79
	ld   a, l                                        ; $7f43: $7d
	sub  b                                           ; $7f44: $90
	ld   [hl], c                                     ; $7f45: $71
	ld   l, l                                        ; $7f46: $6d
	ld   d, d                                        ; $7f47: $52
	ld   a, b                                        ; $7f48: $78
	ld   d, d                                        ; $7f49: $52
	dec  c                                           ; $7f4a: $0d
	dec  b                                           ; $7f4b: $05
	ld   a, [bc]                                     ; $7f4c: $0a
	ld   a, h                                        ; $7f4d: $7c
	inc  bc                                          ; $7f4e: $03
	and  b                                           ; $7f4f: $a0
	ld   l, a                                        ; $7f50: $6f
	inc  bc                                          ; $7f51: $03
	ld   b, h                                        ; $7f52: $44
	sub  d                                           ; $7f53: $92
	ld   a, b                                        ; $7f54: $78
	sbc  a                                           ; $7f55: $9f
	dec  c                                           ; $7f56: $0d
	nop                                              ; $7f57: $00
	ld   a, [bc]                                     ; $7f58: $0a
	ld   bc, $2904                                   ; $7f59: $01 $04 $29
	ld   [bc], a                                     ; $7f5c: $02
	ld   h, [hl]                                     ; $7f5d: $66
	sub  b                                           ; $7f5e: $90
	ld   d, d                                        ; $7f5f: $52
	ld   d, d                                        ; $7f60: $52
	ld   h, l                                        ; $7f61: $65
	sbc  [hl]                                        ; $7f62: $9e
	dec  c                                           ; $7f63: $0d
	ld   [bc], a                                     ; $7f64: $02
	ld   e, l                                        ; $7f65: $5d
	ld   [bc], a                                     ; $7f66: $02
	db   $fc                                         ; $7f67: $fc
	sub  b                                           ; $7f68: $90
	ld   d, b                                        ; $7f69: $50
	sbc  c                                           ; $7f6a: $99
	ld   h, l                                        ; $7f6b: $65
	sbc  [hl]                                        ; $7f6c: $9e
	dec  c                                           ; $7f6d: $0d
	xor  h                                           ; $7f6e: $ac
	call nz, $a9b4                                   ; $7f6f: $c4 $b4 $a9
	xor  c                                           ; $7f72: $a9
	ld   h, l                                        ; $7f73: $65
	ld   a, b                                        ; $7f74: $78
	sbc  a                                           ; $7f75: $9f
	dec  c                                           ; $7f76: $0d
	nop                                              ; $7f77: $00
	ld   a, [bc]                                     ; $7f78: $0a
	ld   bc, $9e50                                   ; $7f79: $01 $50 $9e
	ld   [hl], l                                     ; $7f7c: $75
	sub  b                                           ; $7f7d: $90
	ld   d, b                                        ; $7f7e: $50
	sbc  d                                           ; $7f7f: $9a
	ld   [hl], l                                     ; $7f80: $75
	ld   [bc], a                                     ; $7f81: $02
	reti                                             ; $7f82: $d9


	dec  b                                           ; $7f83: $05
	adc  a                                           ; $7f84: $8f
	dec  c                                           ; $7f85: $0d
	inc  bc                                          ; $7f86: $03
	ld   l, [hl]                                     ; $7f87: $6e
	sub  a                                           ; $7f88: $97
	ld   h, l                                        ; $7f89: $65
	ld   d, d                                        ; $7f8a: $52
	halt                                             ; $7f8b: $76
	ld   h, c                                        ; $7f8c: $61
	sub  b                                           ; $7f8d: $90
	ld   d, b                                        ; $7f8e: $50
	sbc  c                                           ; $7f8f: $99
	ld   e, c                                        ; $7f90: $59

jr_057_7f91:
	sub  a                                           ; $7f91: $97
	dec  c                                           ; $7f92: $0d
	ld   [bc], a                                     ; $7f93: $02
	and  c                                           ; $7f94: $a1
	and  b                                           ; $7f95: $a0
	ld   [hl], d                                     ; $7f96: $72
	ld   e, a                                        ; $7f97: $5f
	ld   a, b                                        ; $7f98: $78
	ld   d, b                                        ; $7f99: $50
	ld   e, c                                        ; $7f9a: $59
	and  c                                           ; $7f9b: $a1
	ld   [hl], l                                     ; $7f9c: $75
	sbc  a                                           ; $7f9d: $9f
	dec  c                                           ; $7f9e: $0d
	nop                                              ; $7f9f: $00
	ld   a, [bc]                                     ; $7fa0: $0a
	ld   bc, $7889                                   ; $7fa1: $01 $89 $78
	sbc  [hl]                                        ; $7fa4: $9e
	adc  h                                           ; $7fa5: $8c
	ld   l, l                                        ; $7fa6: $6d
	ld   a, b                                        ; $7fa7: $78
	sbc  a                                           ; $7fa8: $9f
	dec  c                                           ; $7fa9: $0d
	nop                                              ; $7faa: $00
	ld   a, [bc]                                     ; $7fab: $0a
	dec  c                                           ; $7fac: $0d
	nop                                              ; $7fad: $00
	nop                                              ; $7fae: $00
	rrca                                             ; $7faf: $0f
	nop                                              ; $7fb0: $00
	ld   bc, $1e09                                   ; $7fb1: $01 $09 $1e
	nop                                              ; $7fb4: $00
	nop                                              ; $7fb5: $00
	rrca                                             ; $7fb6: $0f
	nop                                              ; $7fb7: $00
	ld   bc, $0102                                   ; $7fb8: $01 $02 $01
	ld   e, b                                        ; $7fbb: $58
	ld   a, l                                        ; $7fbc: $7d
	sub  [hl]                                        ; $7fbd: $96
	ld   d, h                                        ; $7fbe: $54
	ld   h, d                                        ; $7fbf: $62
	ld   h, h                                        ; $7fc0: $64
	ld   d, d                                        ; $7fc1: $52
	adc  h                                           ; $7fc2: $8c
	ld   h, a                                        ; $7fc3: $67
	sbc  a                                           ; $7fc4: $9f
	dec  c                                           ; $7fc5: $0d
	ld   h, a                                        ; $7fc6: $67
	adc  l                                           ; $7fc7: $8d
	sbc  d                                           ; $7fc8: $9a
	ld   h, e                                        ; $7fc9: $63
	and  c                                           ; $7fca: $a1
	sbc  a                                           ; $7fcb: $9f
	dec  c                                           ; $7fcc: $0d
	nop                                              ; $7fcd: $00
	ld   a, [bc]                                     ; $7fce: $0a
	inc  e                                           ; $7fcf: $1c
	ld   [bc], a                                     ; $7fd0: $02
	nop                                              ; $7fd1: $00
	nop                                              ; $7fd2: $00
	ld   bc, $9750                                   ; $7fd3: $01 $50 $97
	sbc  [hl]                                        ; $7fd6: $9e
	ld   [$6300], sp                                 ; $7fd7: $08 $00 $63
	and  c                                           ; $7fda: $a1
	sbc  a                                           ; $7fdb: $9f
	dec  c                                           ; $7fdc: $0d
	ld   e, b                                        ; $7fdd: $58
	ld   a, l                                        ; $7fde: $7d
	sub  [hl]                                        ; $7fdf: $96
	ld   d, h                                        ; $7fe0: $54
	sbc  a                                           ; $7fe1: $9f
	dec  c                                           ; $7fe2: $0d
	nop                                              ; $7fe3: $00
	ld   a, [bc]                                     ; $7fe4: $0a
	rrca                                             ; $7fe5: $0f
	nop                                              ; $7fe6: $00
	ld   bc, $0101                                   ; $7fe7: $01 $01 $01
	inc  bc                                          ; $7fea: $03
	inc  b                                           ; $7feb: $04
	ld   c, c                                        ; $7fec: $49
	ld   a, h                                        ; $7fed: $7c
	dec  b                                           ; $7fee: $05
	jr   nz, jr_057_7f91                             ; $7fef: $20 $a0

	ld   h, l                                        ; $7ff1: $65
	sub  [hl]                                        ; $7ff2: $96
	ld   d, h                                        ; $7ff3: $54
	ld   e, c                                        ; $7ff4: $59
	ld   a, b                                        ; $7ff5: $78
	rst  $38                                         ; $7ff6: $ff
	rst  $38                                         ; $7ff7: $ff
	ld   bc, $0d04                                   ; $7ff8: $01 $04 $0d
	nop                                              ; $7ffb: $00
	ld   a, [bc]                                     ; $7ffc: $0a
	add  hl, de                                      ; $7ffd: $19
	dec  b                                           ; $7ffe: $05
	inc  bc                                          ; $7fff: $03
