; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $053", ROMX[$4000], BANK[$53]

	rrca                                             ; $4000: $0f
	nop                                              ; $4001: $00
	ld   bc, $6701                                   ; $4002: $01 $01 $67
	adc  l                                           ; $4005: $8d
	adc  h                                           ; $4006: $8c
	ld   l, c                                        ; $4007: $69
	and  c                                           ; $4008: $a1
	rst  $38                                         ; $4009: $ff
	rst  $38                                         ; $400a: $ff
	dec  c                                           ; $400b: $0d
	ld   e, b                                        ; $400c: $58
	inc  b                                           ; $400d: $04
	adc  c                                           ; $400e: $89
	ld   d, d                                        ; $400f: $52
	ld   [hl], c                                     ; $4010: $71
	ld   a, a                                        ; $4011: $7f
	ld   d, d                                        ; $4012: $52
	ld   a, b                                        ; $4013: $78
	and  c                                           ; $4014: $a1
	ld   [hl], l                                     ; $4015: $75
	ld   h, a                                        ; $4016: $67
	sbc  a                                           ; $4017: $9f
	dec  c                                           ; $4018: $0d
	nop                                              ; $4019: $00
	ld   a, [bc]                                     ; $401a: $0a
	inc  e                                           ; $401b: $1c
	ld   bc, $0404                                   ; $401c: $01 $04 $04
	dec  e                                           ; $401f: $1d
	ld   b, b                                        ; $4020: $40
	ld   de, $1103                                   ; $4021: $11 $03 $11
	ld   bc, $2902                                   ; $4024: $01 $02 $29
	nop                                              ; $4027: $00
	ld   bc, $546b                                   ; $4028: $01 $6b $54
	ld   [hl], l                                     ; $402b: $75
	ld   h, a                                        ; $402c: $67
	ld   e, c                                        ; $402d: $59
	rst  $38                                         ; $402e: $ff
	rst  $38                                         ; $402f: $ff
	dec  c                                           ; $4030: $0d
	nop                                              ; $4031: $00
	ld   a, [bc]                                     ; $4032: $0a
	ld   bc, $9166                                   ; $4033: $01 $66 $91
	sbc  [hl]                                        ; $4036: $9e
	ld   h, c                                        ; $4037: $61
	sbc  d                                           ; $4038: $9a
	rst  $38                                         ; $4039: $ff
	rst  $38                                         ; $403a: $ff
	dec  c                                           ; $403b: $0d
	xor  h                                           ; $403c: $ac
	push af                                          ; $403d: $f5
	bit  4, e                                        ; $403e: $cb $63
	and  c                                           ; $4040: $a1
	ld   a, c                                        ; $4041: $79
	dec  c                                           ; $4042: $0d
	inc  bc                                          ; $4043: $03
	and  b                                           ; $4044: $a0
	ld   [hl], c                                     ; $4045: $71
	ld   [hl], h                                     ; $4046: $74
	ld   d, d                                        ; $4047: $52
	ld   e, e                                        ; $4048: $5b
	adc  h                                           ; $4049: $8c
	ld   h, a                                        ; $404a: $67
	ld   a, e                                        ; $404b: $7b
	sbc  a                                           ; $404c: $9f
	dec  c                                           ; $404d: $0d
	nop                                              ; $404e: $00
	ld   a, [bc]                                     ; $404f: $0a
	inc  e                                           ; $4050: $1c
	ld   bc, $0606                                   ; $4051: $01 $06 $06
	ld   bc, $9258                                   ; $4054: $01 $58 $92
	ld   h, a                                        ; $4057: $67
	adc  l                                           ; $4058: $8d
	ld   a, b                                        ; $4059: $78
	ld   h, e                                        ; $405a: $63
	ld   d, d                                        ; $405b: $52
	rst  $38                                         ; $405c: $ff
	rst  $38                                         ; $405d: $ff
	dec  c                                           ; $405e: $0d
	nop                                              ; $405f: $00
	ld   a, [bc]                                     ; $4060: $0a
	dec  c                                           ; $4061: $0d
	nop                                              ; $4062: $00
	nop                                              ; $4063: $00
	rrca                                             ; $4064: $0f
	nop                                              ; $4065: $00
	ld   bc, $1e09                                   ; $4066: $01 $09 $1e
	nop                                              ; $4069: $00
	nop                                              ; $406a: $00
	inc  bc                                          ; $406b: $03
	ld   [de], a                                     ; $406c: $12
	ld   bc, $2491                                   ; $406d: $01 $91 $24
	nop                                              ; $4070: $00
	ld   c, $01                                      ; $4071: $0e $01
	rrca                                             ; $4073: $0f
	nop                                              ; $4074: $00
	ld   bc, $0102                                   ; $4075: $01 $02 $01
	ld   h, e                                        ; $4078: $63
	sbc  l                                           ; $4079: $9d
	sub  d                                           ; $407a: $92
	ld   e, c                                        ; $407b: $59
	ld   a, b                                        ; $407c: $78
	inc  bc                                          ; $407d: $03
	ld   d, $6e                                      ; $407e: $16 $6e
	ld   a, b                                        ; $4080: $78
	db   $fc                                         ; $4081: $fc
	sbc  a                                           ; $4082: $9f
	dec  c                                           ; $4083: $0d
	ld   h, c                                        ; $4084: $61
	and  c                                           ; $4085: $a1
	ld   a, b                                        ; $4086: $78
	ld   [bc], a                                     ; $4087: $02
	and  c                                           ; $4088: $a1
	inc  b                                           ; $4089: $04
	sbc  [hl]                                        ; $408a: $9e
	ld   a, h                                        ; $408b: $7c
	ld   d, d                                        ; $408c: $52
	ld   d, d                                        ; $408d: $52
	inc  b                                           ; $408e: $04
	xor  d                                           ; $408f: $aa
	ld   a, l                                        ; $4090: $7d
	sbc  [hl]                                        ; $4091: $9e
	inc  b                                           ; $4092: $04
	ld   c, c                                        ; $4093: $49
	ld   e, c                                        ; $4094: $59
	dec  c                                           ; $4095: $0d
	cp   d                                           ; $4096: $ba
	rst  ToBoot                                         ; $4097: $c7
	xor  [hl]                                        ; $4098: $ae
	ld   a, b                                        ; $4099: $78
	ld   [bc], a                                     ; $409a: $02
	jp   $505a                                       ; $409b: $c3 $5a $50


	sbc  b                                           ; $409e: $98
	ld   l, e                                        ; $409f: $6b
	ld   d, h                                        ; $40a0: $54
	ld   l, [hl]                                     ; $40a1: $6e
	ld   a, b                                        ; $40a2: $78
	db   $fc                                         ; $40a3: $fc
	sbc  a                                           ; $40a4: $9f
	dec  c                                           ; $40a5: $0d
	nop                                              ; $40a6: $00
	ld   a, [bc]                                     ; $40a7: $0a
	inc  d                                           ; $40a8: $14
	ld   b, $01                                      ; $40a9: $06 $01
	rrca                                             ; $40ab: $0f
	ld   [bc], a                                     ; $40ac: $02
	nop                                              ; $40ad: $00
	ld   bc, $0008                                   ; $40ae: $01 $08 $00
	ld   h, e                                        ; $40b1: $63
	and  c                                           ; $40b2: $a1
	sbc  a                                           ; $40b3: $9f
	dec  c                                           ; $40b4: $0d
	ld   l, a                                        ; $40b5: $6f
	sub  l                                           ; $40b6: $95
	ld   [hl], c                                     ; $40b7: $71
	halt                                             ; $40b8: $76
	ld   d, d                                        ; $40b9: $52
	ld   d, d                                        ; $40ba: $52
	ld   e, c                                        ; $40bb: $59
	ld   h, l                                        ; $40bc: $65
	sub  a                                           ; $40bd: $97
	sbc  a                                           ; $40be: $9f
	dec  c                                           ; $40bf: $0d
	nop                                              ; $40c0: $00
	ld   a, [bc]                                     ; $40c1: $0a
	rrca                                             ; $40c2: $0f
	nop                                              ; $40c3: $00
	ld   bc, $0a14                                   ; $40c4: $01 $14 $0a
	ld   bc, $7d01                                   ; $40c7: $01 $01 $7d
	ld   d, d                                        ; $40ca: $52
	sbc  [hl]                                        ; $40cb: $9e
	ld   [hl], a                                     ; $40cc: $77
	ld   d, h                                        ; $40cd: $54
	ld   l, h                                        ; $40ce: $6c
	sbc  a                                           ; $40cf: $9f
	dec  c                                           ; $40d0: $0d
	nop                                              ; $40d1: $00
	ld   a, [bc]                                     ; $40d2: $0a
	inc  e                                           ; $40d3: $1c
	ld   [bc], a                                     ; $40d4: $02
	ld   bc, $0101                                   ; $40d5: $01 $01 $01
	ld   h, d                                        ; $40d8: $62
	ld   e, e                                        ; $40d9: $5b
	ld   h, b                                        ; $40da: $60
	and  c                                           ; $40db: $a1
	ld   d, d                                        ; $40dc: $52
	ld   e, c                                        ; $40dd: $59
	ld   e, d                                        ; $40de: $5a
	ld   e, c                                        ; $40df: $59
	ld   h, l                                        ; $40e0: $65
	sub  a                                           ; $40e1: $97
	sbc  a                                           ; $40e2: $9f
	dec  c                                           ; $40e3: $0d
	ld   [$6300], sp                                 ; $40e4: $08 $00 $63
	and  c                                           ; $40e7: $a1
	sbc  a                                           ; $40e8: $9f
	dec  c                                           ; $40e9: $0d
	nop                                              ; $40ea: $00
	ld   a, [bc]                                     ; $40eb: $0a
	rrca                                             ; $40ec: $0f
	nop                                              ; $40ed: $00
	ld   bc, $5801                                   ; $40ee: $01 $01 $58
	ld   a, l                                        ; $40f1: $7d
	sub  [hl]                                        ; $40f2: $96
	ld   d, h                                        ; $40f3: $54
	ld   h, d                                        ; $40f4: $62
	ld   h, h                                        ; $40f5: $64
	ld   d, d                                        ; $40f6: $52
	adc  h                                           ; $40f7: $8c
	ld   h, a                                        ; $40f8: $67
	sbc  a                                           ; $40f9: $9f
	dec  c                                           ; $40fa: $0d
	ld   h, a                                        ; $40fb: $67
	adc  l                                           ; $40fc: $8d
	sbc  d                                           ; $40fd: $9a
	ld   h, e                                        ; $40fe: $63
	and  c                                           ; $40ff: $a1
	sbc  a                                           ; $4100: $9f
	dec  c                                           ; $4101: $0d
	inc  b                                           ; $4102: $04
	ld   c, c                                        ; $4103: $49
	ld   e, c                                        ; $4104: $59
	ld   h, d                                        ; $4105: $62
	inc  b                                           ; $4106: $04
	di                                               ; $4107: $f3
	ld   [hl], l                                     ; $4108: $75
	ld   h, a                                        ; $4109: $67
	ld   e, c                                        ; $410a: $59
	ld   sp, hl                                      ; $410b: $f9
	dec  c                                           ; $410c: $0d
	nop                                              ; $410d: $00
	ld   a, [bc]                                     ; $410e: $0a
	inc  e                                           ; $410f: $1c
	ld   [bc], a                                     ; $4110: $02
	nop                                              ; $4111: $00
	nop                                              ; $4112: $00
	ld   bc, $0008                                   ; $4113: $01 $08 $00
	ld   h, e                                        ; $4116: $63
	and  c                                           ; $4117: $a1
	sbc  a                                           ; $4118: $9f
	dec  c                                           ; $4119: $0d
	ld   [bc], a                                     ; $411a: $02
	and  l                                           ; $411b: $a5
	inc  b                                           ; $411c: $04
	xor  d                                           ; $411d: $aa
	sbc  [hl]                                        ; $411e: $9e
	ld   [bc], a                                     ; $411f: $02
	jr   nz, jr_053_4126                             ; $4120: $20 $04

	xor  d                                           ; $4122: $aa
	sbc  l                                           ; $4123: $9d
	ld   l, l                                        ; $4124: $6d
	ld   e, l                                        ; $4125: $5d

jr_053_4126:
	ld   h, l                                        ; $4126: $65
	ld   a, c                                        ; $4127: $79
	dec  c                                           ; $4128: $0d
	ld   [hl], d                                     ; $4129: $72
	ld   e, e                                        ; $412a: $5b
	ld   d, b                                        ; $412b: $50
	ld   d, d                                        ; $412c: $52
	adc  h                                           ; $412d: $8c
	ld   l, c                                        ; $412e: $69
	and  c                                           ; $412f: $a1
	ld   h, c                                        ; $4130: $61
	halt                                             ; $4131: $76
	ld   sp, hl                                      ; $4132: $f9
	dec  c                                           ; $4133: $0d
	nop                                              ; $4134: $00
	ld   a, [bc]                                     ; $4135: $0a
	ld   bc, $0008                                   ; $4136: $01 $08 $00
	ld   h, e                                        ; $4139: $63
	and  c                                           ; $413a: $a1
	ld   a, h                                        ; $413b: $7c
	ld   [bc], a                                     ; $413c: $02
	and  l                                           ; $413d: $a5
	ld   [bc], a                                     ; $413e: $02
	xor  d                                           ; $413f: $aa
	ld   a, h                                        ; $4140: $7c
	ld   l, l                                        ; $4141: $6d
	adc  a                                           ; $4142: $8f
	ld   a, c                                        ; $4143: $79
	dec  c                                           ; $4144: $0d
	rst  ToBoot                                         ; $4145: $c7
	ei                                               ; $4146: $fb
	rst  $10                                         ; $4147: $d7
	db   $ed                                         ; $4148: $ed
	rst  JumpTable                                         ; $4149: $df
	set  7, e                                        ; $414a: $cb $fb
	and  b                                           ; $414c: $a0
	ld   [bc], a                                     ; $414d: $02
	ret  nc                                          ; $414e: $d0

	ld   d, [hl]                                     ; $414f: $56
	ld   [hl], h                                     ; $4150: $74
	dec  c                                           ; $4151: $0d
	ld   h, e                                        ; $4152: $63
	ld   h, l                                        ; $4153: $65
	ld   d, b                                        ; $4154: $50
	ld   h, b                                        ; $4155: $60
	adc  h                                           ; $4156: $8c
	ld   h, a                                        ; $4157: $67
	sbc  l                                           ; $4158: $9d
	sbc  a                                           ; $4159: $9f
	dec  c                                           ; $415a: $0d
	nop                                              ; $415b: $00
	ld   a, [bc]                                     ; $415c: $0a
	ld   bc, $8503                                   ; $415d: $01 $03 $85
	inc  b                                           ; $4160: $04
	xor  e                                           ; $4161: $ab
	inc  bc                                          ; $4162: $03
	add  d                                           ; $4163: $82
	ld   a, c                                        ; $4164: $79
	ld   a, l                                        ; $4165: $7d
	sbc  l                                           ; $4166: $9d
	ld   l, l                                        ; $4167: $6d
	ld   e, l                                        ; $4168: $5d
	ld   h, l                                        ; $4169: $65
	ld   e, c                                        ; $416a: $59
	sub  a                                           ; $416b: $97
	dec  c                                           ; $416c: $0d
	dec  b                                           ; $416d: $05
	jr   nz, jr_053_41d5                             ; $416e: $20 $65

	ld   [hl], h                                     ; $4170: $74
	ld   e, b                                        ; $4171: $58
	ld   e, e                                        ; $4172: $5b
	adc  h                                           ; $4173: $8c
	ld   h, a                                        ; $4174: $67
	ld   a, h                                        ; $4175: $7c
	ld   [hl], l                                     ; $4176: $75
	sbc  [hl]                                        ; $4177: $9e
	inc  bc                                          ; $4178: $03
	ld   l, l                                        ; $4179: $6d
	dec  b                                           ; $417a: $05
	add  hl, de                                      ; $417b: $19
	ld   a, h                                        ; $417c: $7c
	dec  c                                           ; $417d: $0d
	ld   [bc], a                                     ; $417e: $02
	jp   $7778                                       ; $417f: $c3 $78 $77


	ld   a, l                                        ; $4182: $7d
	inc  b                                           ; $4183: $04
	ld   c, $03                                      ; $4184: $0e $03
	sbc  l                                           ; $4186: $9d
	inc  b                                           ; $4187: $04
	and  [hl]                                        ; $4188: $a6
	ld   [hl], l                                     ; $4189: $75
	ld   h, a                                        ; $418a: $67
	sbc  l                                           ; $418b: $9d
	sbc  a                                           ; $418c: $9f
	dec  c                                           ; $418d: $0d
	nop                                              ; $418e: $00
	ld   a, [bc]                                     ; $418f: $0a
	add  hl, de                                      ; $4190: $19
	dec  b                                           ; $4191: $05
	ld   [bc], a                                     ; $4192: $02
	ld   e, b                                        ; $4193: $58
	ld   [bc], a                                     ; $4194: $02
	add  b                                           ; $4195: $80
	ld   d, d                                        ; $4196: $52
	ld   h, l                                        ; $4197: $65
	adc  h                                           ; $4198: $8c
	ld   h, a                                        ; $4199: $67
	nop                                              ; $419a: $00
	nop                                              ; $419b: $00
	ld   h, c                                        ; $419c: $61
	halt                                             ; $419d: $76
	sbc  l                                           ; $419e: $9d
	sbc  c                                           ; $419f: $99
	nop                                              ; $41a0: $00
	ld   bc, $4607                                   ; $41a1: $01 $07 $46
	ld   bc, $0302                                   ; $41a4: $01 $02 $03
	ld   bc, $2000                                   ; $41a7: $01 $00 $20
	nop                                              ; $41aa: $00
	rlca                                             ; $41ab: $07
	xor  h                                           ; $41ac: $ac
	ld   bc, $0302                                   ; $41ad: $01 $02 $03
	ld   bc, $2001                                   ; $41b0: $01 $01 $20
	nop                                              ; $41b3: $00
	ld   b, $29                                      ; $41b4: $06 $29
	ld   [bc], a                                     ; $41b6: $02
	rrca                                             ; $41b7: $0f
	nop                                              ; $41b8: $00
	ld   bc, $6a01                                   ; $41b9: $01 $01 $6a
	add  b                                           ; $41bc: $80
	sbc  [hl]                                        ; $41bd: $9e
	ld   e, b                                        ; $41be: $58
	ld   [bc], a                                     ; $41bf: $02
	add  b                                           ; $41c0: $80
	ld   d, d                                        ; $41c1: $52
	ld   h, l                                        ; $41c2: $65
	adc  h                                           ; $41c3: $8c
	ld   h, a                                        ; $41c4: $67
	sbc  a                                           ; $41c5: $9f
	dec  c                                           ; $41c6: $0d
	ld   [bc], a                                     ; $41c7: $02
	jr   c, jr_053_41cc                              ; $41c8: $38 $02

	inc  b                                           ; $41ca: $04
	ld   [hl], l                                     ; $41cb: $75

jr_053_41cc:
	ld   h, a                                        ; $41cc: $67
	sbc  a                                           ; $41cd: $9f
	ld   h, a                                        ; $41ce: $67
	adc  l                                           ; $41cf: $8d
	sbc  d                                           ; $41d0: $9a
	ld   h, e                                        ; $41d1: $63
	and  c                                           ; $41d2: $a1
	ld   e, c                                        ; $41d3: $59
	sub  a                                           ; $41d4: $97

jr_053_41d5:
	dec  c                                           ; $41d5: $0d
	rst  ToBoot                                         ; $41d6: $c7
	ei                                               ; $41d7: $fb
	rst  $10                                         ; $41d8: $d7
	db   $ed                                         ; $41d9: $ed
	rst  JumpTable                                         ; $41da: $df
	set  7, e                                        ; $41db: $cb $fb
	ld   [bc], a                                     ; $41dd: $02
	and  d                                           ; $41de: $a2
	add  a                                           ; $41df: $87
	sbc  c                                           ; $41e0: $99
	ld   a, b                                        ; $41e1: $78
	and  c                                           ; $41e2: $a1
	ld   [hl], h                                     ; $41e3: $74
	sbc  a                                           ; $41e4: $9f
	dec  c                                           ; $41e5: $0d
	nop                                              ; $41e6: $00
	ld   a, [bc]                                     ; $41e7: $0a
	inc  e                                           ; $41e8: $1c
	ld   [bc], a                                     ; $41e9: $02
	ld   bc, $0101                                   ; $41ea: $01 $01 $01
	ld   [hl], l                                     ; $41ed: $75
	ld   a, l                                        ; $41ee: $7d
	sbc  [hl]                                        ; $41ef: $9e
	rst  ToBoot                                         ; $41f0: $c7
	ei                                               ; $41f1: $fb
	rst  $10                                         ; $41f2: $d7
	db   $ed                                         ; $41f3: $ed
	rst  JumpTable                                         ; $41f4: $df
	set  7, e                                        ; $41f5: $cb $fb
	ld   a, c                                        ; $41f7: $79
	ld   [hl], d                                     ; $41f8: $72
	ld   d, d                                        ; $41f9: $52
	ld   [hl], h                                     ; $41fa: $74
	dec  c                                           ; $41fb: $0d
	ld   [bc], a                                     ; $41fc: $02
	and  l                                           ; $41fd: $a5
	inc  b                                           ; $41fe: $04
	xor  d                                           ; $41ff: $aa
	ld   [bc], a                                     ; $4200: $02
	jr   nz, jr_053_4207                             ; $4201: $20 $04

	xor  d                                           ; $4203: $aa
	ld   [hl], l                                     ; $4204: $75
	ld   h, l                                        ; $4205: $65
	ld   [hl], c                                     ; $4206: $71

jr_053_4207:
	ld   e, c                                        ; $4207: $59
	sbc  b                                           ; $4208: $98
	ld   [bc], a                                     ; $4209: $02
	and  d                                           ; $420a: $a2
	add  c                                           ; $420b: $81
	ld   a, b                                        ; $420c: $78
	dec  c                                           ; $420d: $0d
	ld   h, e                                        ; $420e: $63
	ld   d, d                                        ; $420f: $52
	sbc  a                                           ; $4210: $9f
	dec  c                                           ; $4211: $0d
	nop                                              ; $4212: $00
	ld   a, [bc]                                     ; $4213: $0a
	dec  c                                           ; $4214: $0d
	nop                                              ; $4215: $00
	nop                                              ; $4216: $00
	rrca                                             ; $4217: $0f
	nop                                              ; $4218: $00
	ld   bc, $8006                                   ; $4219: $01 $06 $80
	ld   [bc], a                                     ; $421c: $02
	rrca                                             ; $421d: $0f
	nop                                              ; $421e: $00
	ld   bc, $6701                                   ; $421f: $01 $01 $67
	adc  l                                           ; $4222: $8d
	adc  h                                           ; $4223: $8c
	ld   l, c                                        ; $4224: $69
	and  c                                           ; $4225: $a1
	sbc  a                                           ; $4226: $9f
	dec  c                                           ; $4227: $0d
	ld   [bc], a                                     ; $4228: $02
	and  l                                           ; $4229: $a5
	inc  b                                           ; $422a: $04
	xor  d                                           ; $422b: $aa
	ld   a, l                                        ; $422c: $7d
	ld   l, a                                        ; $422d: $6f
	sub  l                                           ; $422e: $95
	ld   [hl], c                                     ; $422f: $71
	halt                                             ; $4230: $76
	dec  c                                           ; $4231: $0d
	inc  b                                           ; $4232: $04
	di                                               ; $4233: $f3
	ld   e, d                                        ; $4234: $5a
	ld   d, b                                        ; $4235: $50
	sbc  c                                           ; $4236: $99
	and  c                                           ; $4237: $a1
	ld   [hl], l                                     ; $4238: $75
	ld   h, a                                        ; $4239: $67
	sbc  a                                           ; $423a: $9f
	dec  c                                           ; $423b: $0d
	nop                                              ; $423c: $00
	ld   a, [bc]                                     ; $423d: $0a
	inc  e                                           ; $423e: $1c
	ld   [bc], a                                     ; $423f: $02
	inc  bc                                          ; $4240: $03
	inc  bc                                          ; $4241: $03
	dec  e                                           ; $4242: $1d
	ld   b, b                                        ; $4243: $40
	ld   [de], a                                     ; $4244: $12
	inc  bc                                          ; $4245: $03
	ld   [de], a                                     ; $4246: $12
	ld   bc, $2902                                   ; $4247: $01 $02 $29
	nop                                              ; $424a: $00
	ld   bc, $a178                                   ; $424b: $01 $78 $a1
	ld   [hl], l                                     ; $424e: $75
	ld   h, a                                        ; $424f: $67
	ld   [hl], c                                     ; $4250: $71
	ld   [hl], h                                     ; $4251: $74
	ld   sp, hl                                      ; $4252: $f9
	dec  c                                           ; $4253: $0d
	ld   l, c                                        ; $4254: $69
	ld   [hl], c                                     ; $4255: $71
	ld   e, c                                        ; $4256: $59
	ld   e, l                                        ; $4257: $5d
	ld   h, c                                        ; $4258: $61
	ld   a, h                                        ; $4259: $7c
	sbc  l                                           ; $425a: $9d
	ld   l, l                                        ; $425b: $6d
	ld   e, l                                        ; $425c: $5d
	ld   h, l                                        ; $425d: $65
	ld   e, d                                        ; $425e: $5a
	dec  c                                           ; $425f: $0d
	ld   [bc], a                                     ; $4260: $02
	ret  nc                                          ; $4261: $d0

	ld   d, [hl]                                     ; $4262: $56
	ld   [hl], h                                     ; $4263: $74
	ld   h, e                                        ; $4264: $63
	ld   h, l                                        ; $4265: $65
	ld   d, b                                        ; $4266: $50
	ld   h, b                                        ; $4267: $60
	sbc  c                                           ; $4268: $99
	halt                                             ; $4269: $76
	ld   d, d                                        ; $426a: $52
	ld   d, h                                        ; $426b: $54
	ld   a, h                                        ; $426c: $7c
	ld   a, c                                        ; $426d: $79
	sbc  a                                           ; $426e: $9f
	dec  c                                           ; $426f: $0d
	nop                                              ; $4270: $00
	ld   a, [bc]                                     ; $4271: $0a
	inc  e                                           ; $4272: $1c
	ld   [bc], a                                     ; $4273: $02
	nop                                              ; $4274: $00
	nop                                              ; $4275: $00
	ld   bc, $ffff                                   ; $4276: $01 $ff $ff
	ld   h, l                                        ; $4279: $65
	ld   e, c                                        ; $427a: $59
	ld   l, l                                        ; $427b: $6d
	ld   h, d                                        ; $427c: $62
	ld   h, h                                        ; $427d: $64
	ld   d, d                                        ; $427e: $52
	adc  h                                           ; $427f: $8c
	ld   l, c                                        ; $4280: $69
	and  c                                           ; $4281: $a1
	sbc  l                                           ; $4282: $9d
	ld   a, e                                        ; $4283: $7b
	sbc  a                                           ; $4284: $9f
	dec  c                                           ; $4285: $0d
	ld   l, e                                        ; $4286: $6b
	sbc  d                                           ; $4287: $9a
	ld   [hl], l                                     ; $4288: $75
	ld   a, l                                        ; $4289: $7d
	rst  $38                                         ; $428a: $ff
	rst  $38                                         ; $428b: $ff
	dec  c                                           ; $428c: $0d
	nop                                              ; $428d: $00
	ld   a, [bc]                                     ; $428e: $0a
	dec  c                                           ; $428f: $0d
	nop                                              ; $4290: $00
	nop                                              ; $4291: $00
	rrca                                             ; $4292: $0f
	nop                                              ; $4293: $00
	ld   bc, $1e09                                   ; $4294: $01 $09 $1e
	add  hl, hl                                      ; $4297: $29
	ld   bc, $1c00                                   ; $4298: $01 $00 $1c
	ld   [bc], a                                     ; $429b: $02
	ld   [bc], a                                     ; $429c: $02
	ld   [bc], a                                     ; $429d: $02
	dec  e                                           ; $429e: $1d
	ld   b, b                                        ; $429f: $40
	ld   [de], a                                     ; $42a0: $12
	inc  bc                                          ; $42a1: $03
	ld   [de], a                                     ; $42a2: $12
	ld   bc, $2902                                   ; $42a3: $01 $02 $29
	nop                                              ; $42a6: $00
	ld   bc, $6d9d                                   ; $42a7: $01 $9d $6d
	ld   e, l                                        ; $42aa: $5d
	ld   h, l                                        ; $42ab: $65
	ld   e, c                                        ; $42ac: $59
	sub  a                                           ; $42ad: $97
	sbc  [hl]                                        ; $42ae: $9e
	rst  ToBoot                                         ; $42af: $c7
	ei                                               ; $42b0: $fb
	rst  $10                                         ; $42b1: $d7
	db   $ed                                         ; $42b2: $ed
	rst  JumpTable                                         ; $42b3: $df
	set  7, e                                        ; $42b4: $cb $fb
	dec  c                                           ; $42b6: $0d
	and  b                                           ; $42b7: $a0
	ld   [bc], a                                     ; $42b8: $02
	and  d                                           ; $42b9: $a2
	add  a                                           ; $42ba: $87
	sbc  c                                           ; $42bb: $99
	jp   nz, $f5e5                                   ; $42bc: $c2 $e5 $f5

	cp   d                                           ; $42bf: $ba
	ld   l, [hl]                                     ; $42c0: $6e
	halt                                             ; $42c1: $76
	ld   d, d                                        ; $42c2: $52
	ld   d, h                                        ; $42c3: $54
	ld   a, h                                        ; $42c4: $7c
	ld   a, c                                        ; $42c5: $79
	dec  c                                           ; $42c6: $0d
	inc  b                                           ; $42c7: $04
	sub  a                                           ; $42c8: $97
	ld   [bc], a                                     ; $42c9: $02
	jp   $505a                                       ; $42ca: $c3 $5a $50


	sbc  b                                           ; $42cd: $98
	adc  h                                           ; $42ce: $8c
	ld   l, c                                        ; $42cf: $69
	and  c                                           ; $42d0: $a1
	sbc  l                                           ; $42d1: $9d
	ld   a, e                                        ; $42d2: $7b
	sbc  a                                           ; $42d3: $9f
	dec  c                                           ; $42d4: $0d
	nop                                              ; $42d5: $00
	ld   a, [bc]                                     ; $42d6: $0a
	ld   bc, $9778                                   ; $42d7: $01 $78 $97
	sbc  [hl]                                        ; $42da: $9e
	ld   e, a                                        ; $42db: $5f
	ld   [hl], c                                     ; $42dc: $71
	ld   h, c                                        ; $42dd: $61
	ld   d, h                                        ; $42de: $54
	ld   [hl], l                                     ; $42df: $75
	ld   h, a                                        ; $42e0: $67
	sbc  l                                           ; $42e1: $9d
	sbc  a                                           ; $42e2: $9f
	dec  c                                           ; $42e3: $0d
	nop                                              ; $42e4: $00
	ld   a, [bc]                                     ; $42e5: $0a
	dec  c                                           ; $42e6: $0d
	nop                                              ; $42e7: $00
	nop                                              ; $42e8: $00
	rrca                                             ; $42e9: $0f
	nop                                              ; $42ea: $00
	ld   bc, $1e09                                   ; $42eb: $01 $09 $1e
	add  hl, hl                                      ; $42ee: $29
	ld   bc, $2300                                   ; $42ef: $01 $00 $23
	ld   h, $1c                                      ; $42f2: $26 $1c
	ld   [bc], a                                     ; $42f4: $02
	ld   bc, $0101                                   ; $42f5: $01 $01 $01
	rst  ToBoot                                         ; $42f8: $c7
	ei                                               ; $42f9: $fb
	rst  $10                                         ; $42fa: $d7
	db   $ed                                         ; $42fb: $ed
	rst  JumpTable                                         ; $42fc: $df
	set  7, e                                        ; $42fd: $cb $fb
	halt                                             ; $42ff: $76
	ld   a, l                                        ; $4300: $7d
	inc  bc                                          ; $4301: $03
	ld   l, d                                        ; $4302: $6a
	ld   [bc], a                                     ; $4303: $02
	jp   $0da0                                       ; $4304: $c3 $a0 $0d


	inc  b                                           ; $4307: $04
	and  c                                           ; $4308: $a1
	ld   h, l                                        ; $4309: $65
	ld   e, l                                        ; $430a: $5d
	inc  bc                                          ; $430b: $03
	ld   h, l                                        ; $430c: $65
	inc  b                                           ; $430d: $04
	ld   h, c                                        ; $430e: $61
	ld   a, c                                        ; $430f: $79
	sbc  [hl]                                        ; $4310: $9e
	ld   l, e                                        ; $4311: $6b
	ld   h, l                                        ; $4312: $65
	ld   [hl], h                                     ; $4313: $74
	sub  h                                           ; $4314: $94
	ld   d, h                                        ; $4315: $54
	ld   e, d                                        ; $4316: $5a
	ld   a, c                                        ; $4317: $79
	dec  c                                           ; $4318: $0d
	inc  bc                                          ; $4319: $03
	jp   hl                                          ; $431a: $e9


	ld   e, l                                        ; $431b: $5d
	ld   l, l                                        ; $431c: $6d
	adc  a                                           ; $431d: $8f
	ld   a, h                                        ; $431e: $7c
	rst  JumpTable                                         ; $431f: $df
	set  7, e                                        ; $4320: $cb $fb
	ld   [hl], l                                     ; $4322: $75
	ld   h, a                                        ; $4323: $67
	ld   a, h                                        ; $4324: $7c
	sub  [hl]                                        ; $4325: $96
	sbc  a                                           ; $4326: $9f
	dec  c                                           ; $4327: $0d
	nop                                              ; $4328: $00
	ld   a, [bc]                                     ; $4329: $0a
	ld   bc, $a104                                   ; $432a: $01 $04 $a1
	ld   h, l                                        ; $432d: $65
	ld   d, d                                        ; $432e: $52
	rst  ToBoot                                         ; $432f: $c7
	ei                                               ; $4330: $fb
	rst  $10                                         ; $4331: $d7
	db   $ed                                         ; $4332: $ed
	rst  JumpTable                                         ; $4333: $df
	set  7, e                                        ; $4334: $cb $fb
	ld   a, l                                        ; $4336: $7d
	dec  c                                           ; $4337: $0d
	ld   l, c                                        ; $4338: $69
	ld   d, d                                        ; $4339: $52
	ld   e, a                                        ; $433a: $5f
	ld   [hl], d                                     ; $433b: $72
	ld   a, b                                        ; $433c: $78
	inc  b                                           ; $433d: $04
	pop  de                                          ; $433e: $d1
	ld   l, [hl]                                     ; $433f: $6e
	ld   h, l                                        ; $4340: $65
	ld   a, b                                        ; $4341: $78
	adc  l                                           ; $4342: $8d
	sub  d                                           ; $4343: $92
	dec  c                                           ; $4344: $0d
	sbc  d                                           ; $4345: $9a
	ld   d, d                                        ; $4346: $52
	ld   e, h                                        ; $4347: $5c
	halt                                             ; $4348: $76
	inc  b                                           ; $4349: $04
	dec  e                                           ; $434a: $1d
	ld   h, [hl]                                     ; $434b: $66
	sub  [hl]                                        ; $434c: $96
	ld   d, h                                        ; $434d: $54
	ld   a, c                                        ; $434e: $79
	sbc  [hl]                                        ; $434f: $9e
	dec  c                                           ; $4350: $0d
	nop                                              ; $4351: $00
	ld   a, [bc]                                     ; $4352: $0a
	ld   bc, $9d8c                                   ; $4353: $01 $8c $9d
	sbc  b                                           ; $4356: $98
	ld   a, h                                        ; $4357: $7c
	inc  bc                                          ; $4358: $03
	add  d                                           ; $4359: $82
	ld   a, c                                        ; $435a: $79
	ld   d, d                                        ; $435b: $52
	ld   d, d                                        ; $435c: $52
	ld   [bc], a                                     ; $435d: $02
	add  hl, hl                                      ; $435e: $29
	inc  bc                                          ; $435f: $03
	and  c                                           ; $4360: $a1
	and  b                                           ; $4361: $a0
	dec  c                                           ; $4362: $0d
	ld   d, b                                        ; $4363: $50
	ld   l, l                                        ; $4364: $6d
	ld   d, [hl]                                     ; $4365: $56
	adc  h                                           ; $4366: $8c
	ld   h, a                                        ; $4367: $67
	ld   a, h                                        ; $4368: $7c
	sub  [hl]                                        ; $4369: $96
	sbc  a                                           ; $436a: $9f
	dec  c                                           ; $436b: $0d
	ld   [hl], l                                     ; $436c: $75
	ld   a, l                                        ; $436d: $7d
	xor  $c4                                         ; $436e: $ee $c4
	cp   d                                           ; $4370: $ba
	push af                                          ; $4371: $f5
	ld   [bc], a                                     ; $4372: $02
	adc  b                                           ; $4373: $88
	dec  b                                           ; $4374: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4375: $cf
	sbc  a                                           ; $4376: $9f
	db   $10                                         ; $4377: $10
	dec  c                                           ; $4378: $0d
	nop                                              ; $4379: $00
	ld   a, [bc]                                     ; $437a: $0a
	inc  e                                           ; $437b: $1c
	ld   [bc], a                                     ; $437c: $02
	nop                                              ; $437d: $00
	nop                                              ; $437e: $00
	ld   bc, $688c                                   ; $437f: $01 $8c $68
	sbc  [hl]                                        ; $4382: $9e
	ld   [bc], a                                     ; $4383: $02
	ld   c, e                                        ; $4384: $4b
	ld   a, h                                        ; $4385: $7c
	ld   [bc], a                                     ; $4386: $02
	dec  e                                           ; $4387: $1d
	inc  b                                           ; $4388: $04
	ld   b, a                                        ; $4389: $47
	ld   [hl], l                                     ; $438a: $75
	rst  ToBoot                                         ; $438b: $c7
	ei                                               ; $438c: $fb
	rst  $10                                         ; $438d: $d7
	db   $ed                                         ; $438e: $ed
	add  [hl]                                        ; $438f: $86
	sbc  a                                           ; $4390: $9f
	dec  c                                           ; $4391: $0d
	ld   a, [bc]                                     ; $4392: $0a
	ld   [bc], a                                     ; $4393: $02
	ld   [bc], a                                     ; $4394: $02
	dec  d                                           ; $4395: $15
	ld   [bc], a                                     ; $4396: $02
	db   $fc                                         ; $4397: $fc
	ld   a, l                                        ; $4398: $7d
	inc  bc                                          ; $4399: $03
	ld   l, [hl]                                     ; $439a: $6e
	ld   [bc], a                                     ; $439b: $02
	db   $fc                                         ; $439c: $fc
	ld   e, d                                        ; $439d: $5a
	inc  b                                           ; $439e: $04
	rlca                                             ; $439f: $07
	inc  bc                                          ; $43a0: $03
	dec  h                                           ; $43a1: $25
	ld   h, l                                        ; $43a2: $65
	ld   [hl], h                                     ; $43a3: $74
	ld   e, c                                        ; $43a4: $59
	sub  a                                           ; $43a5: $97
	dec  c                                           ; $43a6: $0d
	ld   h, a                                        ; $43a7: $67
	sbc  l                                           ; $43a8: $9d
	sbc  c                                           ; $43a9: $99
	ld   a, [bc]                                     ; $43aa: $0a
	inc  bc                                          ; $43ab: $03
	ld   a, h                                        ; $43ac: $7c
	ld   [hl], l                                     ; $43ad: $75
	ld   h, a                                        ; $43ae: $67
	sub  [hl]                                        ; $43af: $96
	sbc  a                                           ; $43b0: $9f
	dec  c                                           ; $43b1: $0d
	nop                                              ; $43b2: $00
	ld   a, [bc]                                     ; $43b3: $0a
	ld   bc, $baa5                                   ; $43b4: $01 $a5 $ba
	ld   a, c                                        ; $43b7: $79
	ld   h, a                                        ; $43b8: $67
	sbc  l                                           ; $43b9: $9d
	sbc  c                                           ; $43ba: $99
	inc  bc                                          ; $43bb: $03
	ld   l, a                                        ; $43bc: $6f
	ld   a, l                                        ; $43bd: $7d
	sbc  [hl]                                        ; $43be: $9e
	inc  b                                           ; $43bf: $04
	adc  d                                           ; $43c0: $8a
	ld   l, b                                        ; $43c1: $68
	ld   a, [bc]                                     ; $43c2: $0a
	ld   [bc], a                                     ; $43c3: $02
	inc  bc                                          ; $43c4: $03
	ld   h, b                                        ; $43c5: $60
	dec  b                                           ; $43c6: $05
	ld   c, c                                        ; $43c7: $49
	dec  c                                           ; $43c8: $0d
	ld   e, c                                        ; $43c9: $59
	sub  a                                           ; $43ca: $97
	ld   a, [bc]                                     ; $43cb: $0a
	inc  bc                                          ; $43cc: $03
	inc  b                                           ; $43cd: $04
	ld   b, l                                        ; $43ce: $45
	sbc  b                                           ; $43cf: $98
	adc  h                                           ; $43d0: $8c
	ld   h, a                                        ; $43d1: $67
	sbc  a                                           ; $43d2: $9f
	rst  ToBoot                                         ; $43d3: $c7
	ei                                               ; $43d4: $fb
	rst  $10                                         ; $43d5: $d7
	db   $ed                                         ; $43d6: $ed
	halt                                             ; $43d7: $76
	inc  b                                           ; $43d8: $04
	dec  c                                           ; $43d9: $0d
	ld   a, h                                        ; $43da: $7c
	dec  c                                           ; $43db: $0d
	ld   [bc], a                                     ; $43dc: $02
	xor  c                                           ; $43dd: $a9
	ld   a, l                                        ; $43de: $7d
	ld   h, c                                        ; $43df: $61
	add  h                                           ; $43e0: $84
	ld   h, l                                        ; $43e1: $65
	ld   [bc], a                                     ; $43e2: $02
	jr   nz, jr_053_4457                             ; $43e3: $20 $72

	inc  b                                           ; $43e5: $04
	sbc  [hl]                                        ; $43e6: $9e
	ld   d, b                                        ; $43e7: $50
	ld   e, a                                        ; $43e8: $5f
	adc  h                                           ; $43e9: $8c
	ld   h, a                                        ; $43ea: $67
	ld   a, h                                        ; $43eb: $7c
	sbc  a                                           ; $43ec: $9f
	dec  c                                           ; $43ed: $0d
	nop                                              ; $43ee: $00
	ld   a, [bc]                                     ; $43ef: $0a
	ld   bc, $d8cb                                   ; $43f0: $01 $cb $d8
	xor  [hl]                                        ; $43f3: $ae
	push af                                          ; $43f4: $f5
	ld   a, l                                        ; $43f5: $7d
	xor  e                                           ; $43f6: $ab
	ei                                               ; $43f7: $fb
	jp   z, $edd7                                    ; $43f8: $ca $d7 $ed

	ld   e, d                                        ; $43fb: $5a
	inc  bc                                          ; $43fc: $03
	add  b                                           ; $43fd: $80
	sbc  c                                           ; $43fe: $99
	inc  bc                                          ; $43ff: $03
	ld   c, a                                        ; $4400: $4f
	dec  c                                           ; $4401: $0d
	ld   a, c                                        ; $4402: $79
	halt                                             ; $4403: $76
	sbc  b                                           ; $4404: $98
	sbc  [hl]                                        ; $4405: $9e
	dec  b                                           ; $4406: $05
	db   $eb                                         ; $4407: $eb
	sbc  b                                           ; $4408: $98
	inc  b                                           ; $4409: $04
	call nc, $03a0                                   ; $440a: $d4 $a0 $03
	sub  h                                           ; $440d: $94
	inc  b                                           ; $440e: $04
	sbc  [hl]                                        ; $440f: $9e
	ld   a, h                                        ; $4410: $7c
	inc  b                                           ; $4411: $04
	ld   a, b                                        ; $4412: $78
	ld   a, c                                        ; $4413: $79
	dec  c                                           ; $4414: $0d
	ld   [bc], a                                     ; $4415: $02
	jp   nc, Jump_053_745f                           ; $4416: $d2 $5f $74

	ld   a, [bc]                                     ; $4419: $0a
	ld   [bc], a                                     ; $441a: $02
	add  b                                           ; $441b: $80
	ld   h, h                                        ; $441c: $64
	ld   a, h                                        ; $441d: $7c
	inc  bc                                          ; $441e: $03
	ld   h, l                                        ; $441f: $65
	ld   a, c                                        ; $4420: $79
	inc  b                                           ; $4421: $04
	jr   z, jr_053_447f                              ; $4422: $28 $5b

	adc  h                                           ; $4424: $8c
	ld   h, a                                        ; $4425: $67
	ld   a, h                                        ; $4426: $7c
	ld   a, [bc]                                     ; $4427: $0a
	inc  bc                                          ; $4428: $03
	sbc  a                                           ; $4429: $9f
	dec  c                                           ; $442a: $0d
	nop                                              ; $442b: $00
	ld   a, [bc]                                     ; $442c: $0a
	ld   bc, $7d75                                   ; $442d: $01 $75 $7d
	sbc  [hl]                                        ; $4430: $9e
	ld   h, c                                        ; $4431: $61
	ld   h, c                                        ; $4432: $61
	adc  h                                           ; $4433: $8c
	ld   [hl], l                                     ; $4434: $75
	and  b                                           ; $4435: $a0
	dec  c                                           ; $4436: $0d
	ld   e, b                                        ; $4437: $58
	ld   h, e                                        ; $4438: $63
	sub  a                                           ; $4439: $97
	ld   d, d                                        ; $443a: $52
	ld   h, l                                        ; $443b: $65
	adc  h                                           ; $443c: $8c
	ld   h, l                                        ; $443d: $65
	sub  l                                           ; $443e: $95
	ld   d, h                                        ; $443f: $54
	ld   e, c                                        ; $4440: $59
	sbc  a                                           ; $4441: $9f
	dec  c                                           ; $4442: $0d
	nop                                              ; $4443: $00
	ld   a, [bc]                                     ; $4444: $0a
	ld   bc, $4b02                                   ; $4445: $01 $02 $4b
	ld   a, h                                        ; $4448: $7c
	ld   [bc], a                                     ; $4449: $02
	dec  e                                           ; $444a: $1d
	inc  b                                           ; $444b: $04
	ld   b, a                                        ; $444c: $47
	ld   [hl], l                                     ; $444d: $75
	rst  ToBoot                                         ; $444e: $c7
	ei                                               ; $444f: $fb
	rst  $10                                         ; $4450: $d7
	db   $ed                                         ; $4451: $ed
	add  [hl]                                        ; $4452: $86
	ld   [hl], d                                     ; $4453: $72
	ld   d, d                                        ; $4454: $52
	ld   l, l                                        ; $4455: $6d
	ld   [bc], a                                     ; $4456: $02

jr_053_4457:
	xor  d                                           ; $4457: $aa
	dec  c                                           ; $4458: $0d
	ld   [bc], a                                     ; $4459: $02
	dec  d                                           ; $445a: $15
	ld   [bc], a                                     ; $445b: $02
	db   $fc                                         ; $445c: $fc
	sbc  [hl]                                        ; $445d: $9e
	inc  bc                                          ; $445e: $03
	ld   l, [hl]                                     ; $445f: $6e
	ld   [bc], a                                     ; $4460: $02
	db   $fc                                         ; $4461: $fc
	ld   [hl], a                                     ; $4462: $77
	ld   l, a                                        ; $4463: $6f
	sub  a                                           ; $4464: $97
	ld   e, d                                        ; $4465: $5a
	inc  bc                                          ; $4466: $03
	ld   a, b                                        ; $4467: $78
	ld   a, c                                        ; $4468: $79
	dec  c                                           ; $4469: $0d
	ld   h, a                                        ; $446a: $67
	sbc  l                                           ; $446b: $9d
	sbc  b                                           ; $446c: $98
	adc  h                                           ; $446d: $8c
	ld   h, a                                        ; $446e: $67
	ld   e, c                                        ; $446f: $59
	ld   sp, hl                                      ; $4470: $f9
	dec  c                                           ; $4471: $0d
	nop                                              ; $4472: $00
	ld   a, [bc]                                     ; $4473: $0a
	add  hl, de                                      ; $4474: $19
	dec  b                                           ; $4475: $05
	inc  bc                                          ; $4476: $03
	inc  bc                                          ; $4477: $03
	ld   l, [hl]                                     ; $4478: $6e
	ld   [bc], a                                     ; $4479: $02
	db   $fc                                         ; $447a: $fc
	nop                                              ; $447b: $00
	nop                                              ; $447c: $00
	ld   [bc], a                                     ; $447d: $02
	dec  d                                           ; $447e: $15

jr_053_447f:
	ld   [bc], a                                     ; $447f: $02
	db   $fc                                         ; $4480: $fc
	nop                                              ; $4481: $00
	ld   bc, $1d04                                   ; $4482: $01 $04 $1d
	inc  bc                                          ; $4485: $03
	ld   l, a                                        ; $4486: $6f
	nop                                              ; $4487: $00
	ld   [bc], a                                     ; $4488: $02
	rlca                                             ; $4489: $07
	ld   [hl], $04                                   ; $448a: $36 $04
	ld   [bc], a                                     ; $448c: $02
	inc  bc                                          ; $448d: $03
	ld   bc, $2000                                   ; $448e: $01 $00 $20
	nop                                              ; $4491: $00
	rlca                                             ; $4492: $07
	ld   a, c                                        ; $4493: $79
	inc  b                                           ; $4494: $04
	ld   [bc], a                                     ; $4495: $02
	inc  bc                                          ; $4496: $03
	ld   bc, $2001                                   ; $4497: $01 $01 $20
	nop                                              ; $449a: $00
	rlca                                             ; $449b: $07
	cp   c                                           ; $449c: $b9
	inc  b                                           ; $449d: $04
	ld   [bc], a                                     ; $449e: $02
	inc  bc                                          ; $449f: $03
	ld   bc, $2002                                   ; $44a0: $01 $02 $20
	nop                                              ; $44a3: $00
	ld   b, $02                                      ; $44a4: $06 $02
	dec  b                                           ; $44a6: $05
	rrca                                             ; $44a7: $0f
	nop                                              ; $44a8: $00
	ld   bc, $0301                                   ; $44a9: $01 $01 $03
	ld   l, [hl]                                     ; $44ac: $6e
	ld   [bc], a                                     ; $44ad: $02
	db   $fc                                         ; $44ae: $fc
	ld   [hl], l                                     ; $44af: $75
	ld   h, a                                        ; $44b0: $67
	sbc  a                                           ; $44b1: $9f
	dec  c                                           ; $44b2: $0d
	nop                                              ; $44b3: $00
	ld   a, [bc]                                     ; $44b4: $0a
	inc  e                                           ; $44b5: $1c
	ld   [bc], a                                     ; $44b6: $02
	ld   bc, $0101                                   ; $44b7: $01 $01 $01
	ld   l, e                                        ; $44ba: $6b
	ld   d, h                                        ; $44bb: $54
	ld   [hl], l                                     ; $44bc: $75
	ld   h, a                                        ; $44bd: $67
	sbc  l                                           ; $44be: $9d
	sbc  a                                           ; $44bf: $9f
	dec  c                                           ; $44c0: $0d
	xor  $c8                                         ; $44c1: $ee $c8
	and  h                                           ; $44c3: $a4
	ei                                               ; $44c4: $fb
	sub  $a2                                         ; $44c5: $d6 $a2
	ei                                               ; $44c7: $fb
	cp   d                                           ; $44c8: $ba
	ret                                              ; $44c9: $c9


	ld   a, l                                        ; $44ca: $7d
	dec  c                                           ; $44cb: $0d
	nop                                              ; $44cc: $00
	dec  b                                           ; $44cd: $05
	ld   b, b                                        ; $44ce: $40
	rst  $38                                         ; $44cf: $ff
	inc  bc                                          ; $44d0: $03
	rst  $38                                         ; $44d1: $ff
	ld   bc, $2801                                   ; $44d2: $01 $01 $28
	nop                                              ; $44d5: $00
	ld   bc, $a905                                   ; $44d6: $01 $05 $a9
	inc  b                                           ; $44d9: $04
	adc  a                                           ; $44da: $8f
	inc  b                                           ; $44db: $04
	dec  bc                                          ; $44dc: $0b
	ld   a, h                                        ; $44dd: $7c
	dec  b                                           ; $44de: $05
	xor  c                                           ; $44df: $a9
	inc  b                                           ; $44e0: $04
	adc  a                                           ; $44e1: $8f
	rst  $38                                         ; $44e2: $ff
	rst  $38                                         ; $44e3: $ff
	dec  c                                           ; $44e4: $0d
	nop                                              ; $44e5: $00
	ld   a, [bc]                                     ; $44e6: $0a
	ld   b, $31                                      ; $44e7: $06 $31
	dec  b                                           ; $44e9: $05
	rrca                                             ; $44ea: $0f
	nop                                              ; $44eb: $00
	ld   bc, $0201                                   ; $44ec: $01 $01 $02
	dec  d                                           ; $44ef: $15
	ld   [bc], a                                     ; $44f0: $02
	db   $fc                                         ; $44f1: $fc
	ld   [hl], l                                     ; $44f2: $75
	ld   h, a                                        ; $44f3: $67
	sbc  a                                           ; $44f4: $9f
	dec  c                                           ; $44f5: $0d
	nop                                              ; $44f6: $00
	ld   a, [bc]                                     ; $44f7: $0a
	inc  e                                           ; $44f8: $1c
	ld   [bc], a                                     ; $44f9: $02
	dec  b                                           ; $44fa: $05
	dec  b                                           ; $44fb: $05
	ld   bc, $5a6f                                   ; $44fc: $01 $6f $5a
	ld   d, d                                        ; $44ff: $52
	adc  h                                           ; $4500: $8c
	ld   h, a                                        ; $4501: $67
	sbc  l                                           ; $4502: $9d
	sbc  a                                           ; $4503: $9f
	dec  c                                           ; $4504: $0d
	xor  $c8                                         ; $4505: $ee $c8
	and  h                                           ; $4507: $a4
	ei                                               ; $4508: $fb
	sub  $a2                                         ; $4509: $d6 $a2
	ei                                               ; $450b: $fb
	cp   d                                           ; $450c: $ba
	ret                                              ; $450d: $c9


	rst  $38                                         ; $450e: $ff
	ld   h, a                                        ; $450f: $67
	ld   a, b                                        ; $4510: $78
	sbc  l                                           ; $4511: $9d
	ld   l, a                                        ; $4512: $6f
	dec  c                                           ; $4513: $0d
	inc  bc                                          ; $4514: $03
	ld   l, [hl]                                     ; $4515: $6e
	ld   [bc], a                                     ; $4516: $02
	db   $fc                                         ; $4517: $fc
	ld   e, d                                        ; $4518: $5a
	inc  bc                                          ; $4519: $03
	ld   a, b                                        ; $451a: $78
	ld   a, c                                        ; $451b: $79
	ld   h, a                                        ; $451c: $67
	sbc  l                                           ; $451d: $9d
	sbc  c                                           ; $451e: $99
	ld   a, h                                        ; $451f: $7c
	ld   [hl], l                                     ; $4520: $75
	ld   h, a                                        ; $4521: $67
	sbc  l                                           ; $4522: $9d
	sbc  a                                           ; $4523: $9f
	dec  c                                           ; $4524: $0d
	nop                                              ; $4525: $00
	ld   a, [bc]                                     ; $4526: $0a
	ld   b, $31                                      ; $4527: $06 $31
	dec  b                                           ; $4529: $05
	rrca                                             ; $452a: $0f
	nop                                              ; $452b: $00
	ld   bc, $0401                                   ; $452c: $01 $01 $04
	dec  e                                           ; $452f: $1d
	inc  bc                                          ; $4530: $03
	ld   l, a                                        ; $4531: $6f
	ld   [hl], l                                     ; $4532: $75
	ld   h, a                                        ; $4533: $67
	sbc  a                                           ; $4534: $9f
	dec  c                                           ; $4535: $0d
	nop                                              ; $4536: $00
	ld   a, [bc]                                     ; $4537: $0a
	inc  e                                           ; $4538: $1c
	ld   [bc], a                                     ; $4539: $02
	ld   [bc], a                                     ; $453a: $02
	ld   [bc], a                                     ; $453b: $02
	ld   bc, $1d04                                   ; $453c: $01 $04 $1d
	inc  bc                                          ; $453f: $03
	ld   l, a                                        ; $4540: $6f
	ld   a, c                                        ; $4541: $79
	ld   h, a                                        ; $4542: $67
	sbc  l                                           ; $4543: $9d
	ld   [hl], c                                     ; $4544: $71
	ld   [hl], h                                     ; $4545: $74
	ld   [hl], a                                     ; $4546: $77
	ld   d, h                                        ; $4547: $54
	ld   h, l                                        ; $4548: $65
	adc  h                                           ; $4549: $8c
	ld   h, a                                        ; $454a: $67
	ld   a, h                                        ; $454b: $7c
	ld   a, [$ee0d]                                  ; $454c: $fa $0d $ee
	ret  z                                           ; $454f: $c8

	and  h                                           ; $4550: $a4
	ei                                               ; $4551: $fb
	sub  $a2                                         ; $4552: $d6 $a2
	ei                                               ; $4554: $fb
	cp   d                                           ; $4555: $ba
	ret                                              ; $4556: $c9


	rst  $38                                         ; $4557: $ff
	ld   h, a                                        ; $4558: $67
	ld   a, b                                        ; $4559: $78
	sbc  l                                           ; $455a: $9d
	ld   l, a                                        ; $455b: $6f
	dec  c                                           ; $455c: $0d
	inc  bc                                          ; $455d: $03
	ld   l, [hl]                                     ; $455e: $6e
	ld   [bc], a                                     ; $455f: $02
	db   $fc                                         ; $4560: $fc
	ld   e, d                                        ; $4561: $5a
	inc  bc                                          ; $4562: $03
	ld   a, b                                        ; $4563: $78
	ld   a, c                                        ; $4564: $79
	ld   h, a                                        ; $4565: $67
	sbc  l                                           ; $4566: $9d
	sbc  c                                           ; $4567: $99
	ld   a, h                                        ; $4568: $7c
	ld   [hl], l                                     ; $4569: $75
	ld   h, a                                        ; $456a: $67
	sbc  l                                           ; $456b: $9d
	sbc  a                                           ; $456c: $9f
	dec  c                                           ; $456d: $0d
	nop                                              ; $456e: $00
	ld   a, [bc]                                     ; $456f: $0a
	ld   b, $31                                      ; $4570: $06 $31
	dec  b                                           ; $4572: $05
	inc  e                                           ; $4573: $1c
	ld   [bc], a                                     ; $4574: $02
	rlca                                             ; $4575: $07
	rlca                                             ; $4576: $07
	ld   bc, $e3c1                                   ; $4577: $01 $c1 $e3
	ld   [hl], l                                     ; $457a: $75
	ld   h, a                                        ; $457b: $67
	sbc  l                                           ; $457c: $9d
	ld   a, e                                        ; $457d: $7b
	db   $fc                                         ; $457e: $fc
	dec  c                                           ; $457f: $0d
	xor  $c8                                         ; $4580: $ee $c8
	and  h                                           ; $4582: $a4
	ei                                               ; $4583: $fb
	sub  $a2                                         ; $4584: $d6 $a2
	ei                                               ; $4586: $fb
	cp   d                                           ; $4587: $ba
	ret                                              ; $4588: $c9


	rst  $38                                         ; $4589: $ff
	ld   h, a                                        ; $458a: $67
	ld   a, b                                        ; $458b: $78
	sbc  l                                           ; $458c: $9d
	ld   l, a                                        ; $458d: $6f
	dec  c                                           ; $458e: $0d
	inc  bc                                          ; $458f: $03
	ld   l, [hl]                                     ; $4590: $6e
	ld   [bc], a                                     ; $4591: $02
	db   $fc                                         ; $4592: $fc
	ld   e, d                                        ; $4593: $5a
	inc  bc                                          ; $4594: $03
	ld   a, b                                        ; $4595: $78
	ld   a, c                                        ; $4596: $79
	ld   h, a                                        ; $4597: $67
	sbc  l                                           ; $4598: $9d
	sbc  c                                           ; $4599: $99
	ld   a, h                                        ; $459a: $7c
	ld   [hl], l                                     ; $459b: $75
	ld   h, a                                        ; $459c: $67
	sbc  l                                           ; $459d: $9d
	sbc  a                                           ; $459e: $9f
	dec  c                                           ; $459f: $0d
	nop                                              ; $45a0: $00
	ld   a, [bc]                                     ; $45a1: $0a
	inc  e                                           ; $45a2: $1c
	ld   [bc], a                                     ; $45a3: $02
	nop                                              ; $45a4: $00
	nop                                              ; $45a5: $00
	ld   bc, $6803                                   ; $45a6: $01 $03 $68
	ld   a, c                                        ; $45a9: $79
	sbc  [hl]                                        ; $45aa: $9e
	and  l                                           ; $45ab: $a5
	cp   d                                           ; $45ac: $ba
	ld   a, c                                        ; $45ad: $79
	ld   h, a                                        ; $45ae: $67
	sbc  l                                           ; $45af: $9d
	sbc  c                                           ; $45b0: $99
	inc  bc                                          ; $45b1: $03
	ld   l, a                                        ; $45b2: $6f
	ld   a, l                                        ; $45b3: $7d
	sbc  [hl]                                        ; $45b4: $9e
	dec  c                                           ; $45b5: $0d
	inc  bc                                          ; $45b6: $03
	ld   h, b                                        ; $45b7: $60
	ld   [bc], a                                     ; $45b8: $02
	inc  e                                           ; $45b9: $1c
	ld   [hl], a                                     ; $45ba: $77
	ld   l, a                                        ; $45bb: $6f
	sub  a                                           ; $45bc: $97
	ld   e, c                                        ; $45bd: $59
	sub  a                                           ; $45be: $97
	inc  b                                           ; $45bf: $04
	ld   b, l                                        ; $45c0: $45
	sbc  b                                           ; $45c1: $98
	adc  h                                           ; $45c2: $8c
	ld   h, a                                        ; $45c3: $67
	ld   e, c                                        ; $45c4: $59
	ld   sp, hl                                      ; $45c5: $f9
	dec  c                                           ; $45c6: $0d
	nop                                              ; $45c7: $00
	ld   a, [bc]                                     ; $45c8: $0a
	add  hl, de                                      ; $45c9: $19
	dec  b                                           ; $45ca: $05
	inc  bc                                          ; $45cb: $03
	inc  bc                                          ; $45cc: $03
	ld   h, b                                        ; $45cd: $60
	ld   e, c                                        ; $45ce: $59
	sub  a                                           ; $45cf: $97
	inc  b                                           ; $45d0: $04
	ld   b, l                                        ; $45d1: $45
	sbc  c                                           ; $45d2: $99
	nop                                              ; $45d3: $00
	nop                                              ; $45d4: $00
	ld   [bc], a                                     ; $45d5: $02
	inc  e                                           ; $45d6: $1c
	ld   e, c                                        ; $45d7: $59
	sub  a                                           ; $45d8: $97
	inc  b                                           ; $45d9: $04
	ld   b, l                                        ; $45da: $45
	sbc  c                                           ; $45db: $99
	nop                                              ; $45dc: $00
	ld   bc, $3402                                   ; $45dd: $01 $02 $34
	ld   e, c                                        ; $45e0: $59
	sub  a                                           ; $45e1: $97
	inc  b                                           ; $45e2: $04
	ld   b, l                                        ; $45e3: $45
	sbc  c                                           ; $45e4: $99
	nop                                              ; $45e5: $00
	ld   [bc], a                                     ; $45e6: $02
	rlca                                             ; $45e7: $07
	sub  h                                           ; $45e8: $94
	dec  b                                           ; $45e9: $05
	ld   [bc], a                                     ; $45ea: $02
	inc  bc                                          ; $45eb: $03
	ld   bc, $2000                                   ; $45ec: $01 $00 $20
	nop                                              ; $45ef: $00
	rlca                                             ; $45f0: $07
	jp   hl                                          ; $45f1: $e9


	dec  b                                           ; $45f2: $05
	ld   [bc], a                                     ; $45f3: $02
	inc  bc                                          ; $45f4: $03
	ld   bc, $2001                                   ; $45f5: $01 $01 $20
	nop                                              ; $45f8: $00
	rlca                                             ; $45f9: $07
	inc  sp                                          ; $45fa: $33
	ld   b, $02                                      ; $45fb: $06 $02
	inc  bc                                          ; $45fd: $03
	ld   bc, $2002                                   ; $45fe: $01 $02 $20
	nop                                              ; $4601: $00
	ld   b, $71                                      ; $4602: $06 $71
	ld   b, $0f                                      ; $4604: $06 $0f
	nop                                              ; $4606: $00
	ld   bc, $0301                                   ; $4607: $01 $01 $03
	ld   h, b                                        ; $460a: $60
	ld   e, c                                        ; $460b: $59
	sub  a                                           ; $460c: $97
	inc  b                                           ; $460d: $04
	ld   b, l                                        ; $460e: $45
	sbc  b                                           ; $460f: $98
	adc  h                                           ; $4610: $8c
	ld   h, a                                        ; $4611: $67
	sbc  a                                           ; $4612: $9f
	dec  c                                           ; $4613: $0d
	nop                                              ; $4614: $00
	ld   a, [bc]                                     ; $4615: $0a
	inc  e                                           ; $4616: $1c
	ld   [bc], a                                     ; $4617: $02
	ld   bc, $0101                                   ; $4618: $01 $01 $01
	ld   l, e                                        ; $461b: $6b
	ld   d, h                                        ; $461c: $54
	ld   l, e                                        ; $461d: $6b
	ld   d, h                                        ; $461e: $54
	sbc  [hl]                                        ; $461f: $9e
	inc  bc                                          ; $4620: $03
	ld   h, b                                        ; $4621: $60
	ld   e, c                                        ; $4622: $59
	sub  a                                           ; $4623: $97
	ld   [hl], l                                     ; $4624: $75
	ld   h, a                                        ; $4625: $67
	sbc  l                                           ; $4626: $9d
	ld   a, e                                        ; $4627: $7b
	sbc  a                                           ; $4628: $9f
	dec  c                                           ; $4629: $0d
	ld   l, e                                        ; $462a: $6b
	ld   h, l                                        ; $462b: $65
	ld   [hl], h                                     ; $462c: $74
	sbc  [hl]                                        ; $462d: $9e
	rst  ToBoot                                         ; $462e: $c7
	ei                                               ; $462f: $fb
	rst  $10                                         ; $4630: $d7
	db   $ed                                         ; $4631: $ed
	halt                                             ; $4632: $76
	inc  b                                           ; $4633: $04
	dec  c                                           ; $4634: $0d
	ld   a, h                                        ; $4635: $7c
	ld   [bc], a                                     ; $4636: $02
	xor  c                                           ; $4637: $a9
	ld   a, l                                        ; $4638: $7d
	dec  c                                           ; $4639: $0d
	nop                                              ; $463a: $00
	dec  b                                           ; $463b: $05
	ld   b, b                                        ; $463c: $40
	rst  $38                                         ; $463d: $ff
	inc  bc                                          ; $463e: $03
	rst  $38                                         ; $463f: $ff
	ld   bc, $2801                                   ; $4640: $01 $01 $28
	nop                                              ; $4643: $00
	ld   bc, $8461                                   ; $4644: $01 $61 $84
	ld   h, l                                        ; $4647: $65
	ld   [bc], a                                     ; $4648: $02
	jr   nz, jr_053_46bd                             ; $4649: $20 $72

	inc  b                                           ; $464b: $04
	sbc  [hl]                                        ; $464c: $9e
	ld   d, b                                        ; $464d: $50
	ld   e, a                                        ; $464e: $5f
	adc  h                                           ; $464f: $8c
	ld   h, a                                        ; $4650: $67
	ld   a, h                                        ; $4651: $7c
	sub  [hl]                                        ; $4652: $96
	sbc  a                                           ; $4653: $9f
	dec  c                                           ; $4654: $0d
	nop                                              ; $4655: $00
	ld   a, [bc]                                     ; $4656: $0a
	ld   b, $a2                                      ; $4657: $06 $a2
	ld   b, $0f                                      ; $4659: $06 $0f
	nop                                              ; $465b: $00
	ld   bc, $0201                                   ; $465c: $01 $01 $02
	inc  e                                           ; $465f: $1c
	ld   e, c                                        ; $4660: $59
	sub  a                                           ; $4661: $97
	inc  b                                           ; $4662: $04
	ld   b, l                                        ; $4663: $45
	sbc  b                                           ; $4664: $98
	adc  h                                           ; $4665: $8c
	ld   h, a                                        ; $4666: $67
	sbc  a                                           ; $4667: $9f
	dec  c                                           ; $4668: $0d
	nop                                              ; $4669: $00
	ld   a, [bc]                                     ; $466a: $0a
	inc  e                                           ; $466b: $1c
	ld   [bc], a                                     ; $466c: $02
	dec  b                                           ; $466d: $05
	dec  b                                           ; $466e: $05
	ld   bc, $5a6f                                   ; $466f: $01 $6f $5a
	ld   d, d                                        ; $4672: $52
	adc  h                                           ; $4673: $8c
	ld   h, a                                        ; $4674: $67
	sbc  l                                           ; $4675: $9d
	sbc  a                                           ; $4676: $9f
	inc  bc                                          ; $4677: $03
	ld   h, b                                        ; $4678: $60
	ld   e, c                                        ; $4679: $59
	sub  a                                           ; $467a: $97
	ld   [hl], l                                     ; $467b: $75
	ld   h, a                                        ; $467c: $67
	sbc  a                                           ; $467d: $9f
	dec  c                                           ; $467e: $0d
	ld   l, e                                        ; $467f: $6b
	ld   h, l                                        ; $4680: $65
	ld   [hl], h                                     ; $4681: $74
	sbc  [hl]                                        ; $4682: $9e
	rst  ToBoot                                         ; $4683: $c7
	ei                                               ; $4684: $fb
	rst  $10                                         ; $4685: $d7
	db   $ed                                         ; $4686: $ed
	halt                                             ; $4687: $76
	inc  b                                           ; $4688: $04
	dec  c                                           ; $4689: $0d
	ld   a, h                                        ; $468a: $7c
	ld   [bc], a                                     ; $468b: $02
	xor  c                                           ; $468c: $a9
	ld   a, l                                        ; $468d: $7d
	dec  c                                           ; $468e: $0d
	ld   h, c                                        ; $468f: $61
	add  h                                           ; $4690: $84
	ld   h, l                                        ; $4691: $65
	ld   [bc], a                                     ; $4692: $02
	jr   nz, jr_053_4707                             ; $4693: $20 $72

	inc  b                                           ; $4695: $04
	sbc  [hl]                                        ; $4696: $9e
	ld   d, b                                        ; $4697: $50
	ld   e, a                                        ; $4698: $5f
	adc  h                                           ; $4699: $8c
	ld   h, a                                        ; $469a: $67
	ld   a, h                                        ; $469b: $7c
	sub  [hl]                                        ; $469c: $96
	sbc  a                                           ; $469d: $9f
	dec  c                                           ; $469e: $0d
	nop                                              ; $469f: $00
	ld   a, [bc]                                     ; $46a0: $0a
	ld   b, $a2                                      ; $46a1: $06 $a2
	ld   b, $0f                                      ; $46a3: $06 $0f
	nop                                              ; $46a5: $00
	ld   bc, $0201                                   ; $46a6: $01 $01 $02
	inc  [hl]                                        ; $46a9: $34
	ld   e, c                                        ; $46aa: $59
	sub  a                                           ; $46ab: $97
	inc  b                                           ; $46ac: $04
	ld   b, l                                        ; $46ad: $45
	sbc  b                                           ; $46ae: $98
	adc  h                                           ; $46af: $8c
	ld   h, a                                        ; $46b0: $67
	sbc  a                                           ; $46b1: $9f
	dec  c                                           ; $46b2: $0d
	nop                                              ; $46b3: $00
	ld   a, [bc]                                     ; $46b4: $0a
	inc  e                                           ; $46b5: $1c
	ld   [bc], a                                     ; $46b6: $02
	ld   [bc], a                                     ; $46b7: $02
	ld   [bc], a                                     ; $46b8: $02
	ld   bc, $acd1                                   ; $46b9: $01 $d1 $ac
	ld   h, [hl]                                     ; $46bc: $66

jr_053_46bd:
	sub  c                                           ; $46bd: $91
	ld   d, b                                        ; $46be: $50
	sbc  b                                           ; $46bf: $98
	adc  h                                           ; $46c0: $8c
	ld   l, c                                        ; $46c1: $69
	and  c                                           ; $46c2: $a1
	ld   h, c                                        ; $46c3: $61
	halt                                             ; $46c4: $76
	ld   a, [$030d]                                  ; $46c5: $fa $0d $03
	ld   h, b                                        ; $46c8: $60
	ld   e, c                                        ; $46c9: $59
	sub  a                                           ; $46ca: $97
	inc  b                                           ; $46cb: $04
	ld   b, l                                        ; $46cc: $45
	sbc  c                                           ; $46cd: $99
	ld   a, h                                        ; $46ce: $7c
	ld   [hl], l                                     ; $46cf: $75
	ld   h, a                                        ; $46d0: $67
	sbc  l                                           ; $46d1: $9d
	sbc  a                                           ; $46d2: $9f
	dec  c                                           ; $46d3: $0d
	adc  h                                           ; $46d4: $8c
	ld   [hl], c                                     ; $46d5: $71
	ld   l, l                                        ; $46d6: $6d
	ld   e, l                                        ; $46d7: $5d
	sub  b                                           ; $46d8: $90
	ei                                               ; $46d9: $fb
	ld   a, [$0dfa]                                  ; $46da: $fa $fa $0d
	nop                                              ; $46dd: $00
	ld   a, [bc]                                     ; $46de: $0a
	ld   b, $a2                                      ; $46df: $06 $a2
	ld   b, $1c                                      ; $46e1: $06 $1c
	ld   [bc], a                                     ; $46e3: $02
	rlca                                             ; $46e4: $07
	rlca                                             ; $46e5: $07
	ld   bc, $6003                                   ; $46e6: $01 $03 $60
	ld   e, c                                        ; $46e9: $59
	sub  a                                           ; $46ea: $97
	ld   [hl], l                                     ; $46eb: $75
	ld   h, a                                        ; $46ec: $67
	sbc  l                                           ; $46ed: $9d
	sub  [hl]                                        ; $46ee: $96
	ld   a, [$6b0d]                                  ; $46ef: $fa $0d $6b
	ld   h, l                                        ; $46f2: $65
	ld   [hl], h                                     ; $46f3: $74
	sbc  [hl]                                        ; $46f4: $9e
	rst  ToBoot                                         ; $46f5: $c7
	ei                                               ; $46f6: $fb
	rst  $10                                         ; $46f7: $d7
	db   $ed                                         ; $46f8: $ed
	halt                                             ; $46f9: $76
	inc  b                                           ; $46fa: $04
	dec  c                                           ; $46fb: $0d
	ld   a, h                                        ; $46fc: $7c
	ld   [bc], a                                     ; $46fd: $02
	xor  c                                           ; $46fe: $a9
	ld   a, l                                        ; $46ff: $7d
	dec  c                                           ; $4700: $0d
	ld   h, c                                        ; $4701: $61
	add  h                                           ; $4702: $84
	ld   h, l                                        ; $4703: $65
	ld   [bc], a                                     ; $4704: $02
	jr   nz, @+$74                                   ; $4705: $20 $72

jr_053_4707:
	inc  b                                           ; $4707: $04
	sbc  [hl]                                        ; $4708: $9e
	ld   d, b                                        ; $4709: $50
	ld   e, a                                        ; $470a: $5f
	adc  h                                           ; $470b: $8c
	ld   h, a                                        ; $470c: $67
	ld   a, h                                        ; $470d: $7c
	sub  [hl]                                        ; $470e: $96
	ld   a, [$000d]                                  ; $470f: $fa $0d $00
	ld   a, [bc]                                     ; $4712: $0a
	inc  e                                           ; $4713: $1c
	ld   [bc], a                                     ; $4714: $02
	nop                                              ; $4715: $00
	nop                                              ; $4716: $00
	ld   bc, $6803                                   ; $4717: $01 $03 $68
	ld   a, c                                        ; $471a: $79
	sbc  [hl]                                        ; $471b: $9e
	set  3, b                                        ; $471c: $cb $d8
	xor  [hl]                                        ; $471e: $ae
	push af                                          ; $471f: $f5
	ld   a, l                                        ; $4720: $7d
	dec  c                                           ; $4721: $0d
	ld   [hl], a                                     ; $4722: $77
	ld   d, h                                        ; $4723: $54
	ld   h, l                                        ; $4724: $65
	adc  h                                           ; $4725: $8c
	ld   h, a                                        ; $4726: $67
	ld   e, c                                        ; $4727: $59
	ld   sp, hl                                      ; $4728: $f9
	dec  c                                           ; $4729: $0d
	nop                                              ; $472a: $00
	ld   a, [bc]                                     ; $472b: $0a
	add  hl, de                                      ; $472c: $19
	dec  b                                           ; $472d: $05
	inc  bc                                          ; $472e: $03
	inc  bc                                          ; $472f: $03
	jr   jr_053_47a3                                 ; $4730: $18 $71

	ld   [hl], h                                     ; $4732: $74
	add  b                                           ; $4733: $80
	ld   h, h                                        ; $4734: $64
	ld   a, h                                        ; $4735: $7c
	inc  bc                                          ; $4736: $03
	ld   h, l                                        ; $4737: $65
	ld   a, c                                        ; $4738: $79
	inc  b                                           ; $4739: $04
	jr   z, jr_053_4799                              ; $473a: $28 $5d

	nop                                              ; $473c: $00
	nop                                              ; $473d: $00
	inc  bc                                          ; $473e: $03
	jr   @+$73                                       ; $473f: $18 $71

	ld   [hl], h                                     ; $4741: $74
	ret  nc                                          ; $4742: $d0

	res  4, b                                        ; $4743: $cb $a0
	ld   e, c                                        ; $4745: $59
	adc  [hl]                                        ; $4746: $8e
	nop                                              ; $4747: $00
	ld   bc, $1803                                   ; $4748: $01 $03 $18
	ld   [hl], c                                     ; $474b: $71
	ld   [hl], h                                     ; $474c: $74
	ld   e, b                                        ; $474d: $58
	ld   h, l                                        ; $474e: $65
	sbc  b                                           ; $474f: $98
	ld   a, h                                        ; $4750: $7c
	ld   [bc], a                                     ; $4751: $02
	inc  [hl]                                        ; $4752: $34
	ld   a, c                                        ; $4753: $79
	ld   h, l                                        ; $4754: $65
	ld   e, l                                        ; $4755: $5d
	nop                                              ; $4756: $00
	ld   [bc], a                                     ; $4757: $02
	rlca                                             ; $4758: $07
	dec  b                                           ; $4759: $05
	rlca                                             ; $475a: $07
	ld   [bc], a                                     ; $475b: $02
	inc  bc                                          ; $475c: $03
	ld   bc, $2000                                   ; $475d: $01 $00 $20
	nop                                              ; $4760: $00
	rlca                                             ; $4761: $07
	ld   h, e                                        ; $4762: $63
	rlca                                             ; $4763: $07
	ld   [bc], a                                     ; $4764: $02
	inc  bc                                          ; $4765: $03
	ld   bc, $2001                                   ; $4766: $01 $01 $20
	nop                                              ; $4769: $00
	rlca                                             ; $476a: $07
	and  a                                           ; $476b: $a7
	rlca                                             ; $476c: $07
	ld   [bc], a                                     ; $476d: $02
	inc  bc                                          ; $476e: $03
	ld   bc, $2002                                   ; $476f: $01 $02 $20
	nop                                              ; $4772: $00
	ld   b, $f1                                      ; $4773: $06 $f1
	rlca                                             ; $4775: $07
	rrca                                             ; $4776: $0f
	nop                                              ; $4777: $00
	ld   bc, $0301                                   ; $4778: $01 $01 $03
	jr   jr_053_47ee                                 ; $477b: $18 $71

	ld   [hl], h                                     ; $477d: $74
	add  b                                           ; $477e: $80
	ld   h, h                                        ; $477f: $64
	ld   a, h                                        ; $4780: $7c
	inc  bc                                          ; $4781: $03
	ld   h, l                                        ; $4782: $65
	ld   a, c                                        ; $4783: $79
	inc  b                                           ; $4784: $04
	jr   z, jr_053_47e2                              ; $4785: $28 $5b

	adc  h                                           ; $4787: $8c
	ld   h, a                                        ; $4788: $67
	sbc  a                                           ; $4789: $9f
	dec  c                                           ; $478a: $0d
	nop                                              ; $478b: $00
	ld   a, [bc]                                     ; $478c: $0a
	inc  e                                           ; $478d: $1c
	ld   [bc], a                                     ; $478e: $02
	ld   bc, $0101                                   ; $478f: $01 $01 $01
	ld   l, e                                        ; $4792: $6b
	ld   d, h                                        ; $4793: $54
	ld   l, e                                        ; $4794: $6b
	ld   d, h                                        ; $4795: $54
	sbc  [hl]                                        ; $4796: $9e
	set  3, b                                        ; $4797: $cb $d8

jr_053_4799:
	xor  [hl]                                        ; $4799: $ae
	push af                                          ; $479a: $f5
	ld   a, l                                        ; $479b: $7d
	inc  bc                                          ; $479c: $03
	jr   jr_053_4810                                 ; $479d: $18 $71

	ld   [hl], h                                     ; $479f: $74
	sbc  [hl]                                        ; $47a0: $9e
	dec  c                                           ; $47a1: $0d
	dec  b                                           ; $47a2: $05

jr_053_47a3:
	db   $eb                                         ; $47a3: $eb
	sbc  b                                           ; $47a4: $98
	inc  b                                           ; $47a5: $04
	call nc, $03a0                                   ; $47a6: $d4 $a0 $03
	sub  h                                           ; $47a9: $94
	inc  b                                           ; $47aa: $04
	sbc  [hl]                                        ; $47ab: $9e
	ld   a, h                                        ; $47ac: $7c
	inc  b                                           ; $47ad: $04
	ld   a, b                                        ; $47ae: $78
	ld   a, c                                        ; $47af: $79
	ld   [bc], a                                     ; $47b0: $02
	jp   nc, Jump_053_745f                           ; $47b1: $d2 $5f $74

	dec  c                                           ; $47b4: $0d
	nop                                              ; $47b5: $00
	dec  b                                           ; $47b6: $05
	ld   b, b                                        ; $47b7: $40
	rst  $38                                         ; $47b8: $ff
	inc  bc                                          ; $47b9: $03
	rst  $38                                         ; $47ba: $ff
	ld   bc, $2801                                   ; $47bb: $01 $01 $28
	nop                                              ; $47be: $00
	ld   bc, $6480                                   ; $47bf: $01 $80 $64
	ld   a, h                                        ; $47c2: $7c
	inc  bc                                          ; $47c3: $03
	ld   h, l                                        ; $47c4: $65
	ld   a, c                                        ; $47c5: $79
	inc  b                                           ; $47c6: $04
	jr   z, jr_053_4824                              ; $47c7: $28 $5b

	adc  h                                           ; $47c9: $8c
	ld   h, a                                        ; $47ca: $67
	ld   a, h                                        ; $47cb: $7c
	sub  [hl]                                        ; $47cc: $96
	sbc  a                                           ; $47cd: $9f
	dec  c                                           ; $47ce: $0d
	nop                                              ; $47cf: $00
	ld   a, [bc]                                     ; $47d0: $0a
	ld   b, $30                                      ; $47d1: $06 $30
	ld   [$000f], sp                                 ; $47d3: $08 $0f $00
	ld   bc, $0301                                   ; $47d6: $01 $01 $03
	jr   jr_053_484c                                 ; $47d9: $18 $71

	ld   [hl], h                                     ; $47db: $74
	ret  nc                                          ; $47dc: $d0

	res  4, b                                        ; $47dd: $cb $a0
	ld   e, c                                        ; $47df: $59
	adc  l                                           ; $47e0: $8d
	adc  h                                           ; $47e1: $8c

jr_053_47e2:
	ld   h, a                                        ; $47e2: $67
	sbc  a                                           ; $47e3: $9f
	dec  c                                           ; $47e4: $0d
	nop                                              ; $47e5: $00
	ld   a, [bc]                                     ; $47e6: $0a
	inc  e                                           ; $47e7: $1c
	ld   [bc], a                                     ; $47e8: $02
	ld   [bc], a                                     ; $47e9: $02
	ld   [bc], a                                     ; $47ea: $02
	ld   bc, $6483                                   ; $47eb: $01 $83 $64

jr_053_47ee:
	ld   e, a                                        ; $47ee: $5f
	ld   a, b                                        ; $47ef: $78
	ld   d, d                                        ; $47f0: $52
	ld   [hl], l                                     ; $47f1: $75
	ld   l, a                                        ; $47f2: $6f
	sub  l                                           ; $47f3: $95
	ld   d, h                                        ; $47f4: $54
	ld   l, [hl]                                     ; $47f5: $6e
	ld   d, d                                        ; $47f6: $52
	sbc  a                                           ; $47f7: $9f
	dec  c                                           ; $47f8: $0d
	set  3, b                                        ; $47f9: $cb $d8
	xor  [hl]                                        ; $47fb: $ae
	push af                                          ; $47fc: $f5
	ld   a, l                                        ; $47fd: $7d
	inc  bc                                          ; $47fe: $03
	jr   jr_053_4872                                 ; $47ff: $18 $71

	ld   [hl], h                                     ; $4801: $74
	sbc  [hl]                                        ; $4802: $9e
	add  b                                           ; $4803: $80
	ld   h, h                                        ; $4804: $64
	ld   a, h                                        ; $4805: $7c
	inc  bc                                          ; $4806: $03
	ld   h, l                                        ; $4807: $65
	ld   a, c                                        ; $4808: $79
	dec  c                                           ; $4809: $0d
	inc  b                                           ; $480a: $04
	jr   z, @+$5d                                    ; $480b: $28 $5b

	adc  h                                           ; $480d: $8c
	ld   h, a                                        ; $480e: $67
	ld   a, h                                        ; $480f: $7c

jr_053_4810:
	sub  [hl]                                        ; $4810: $96
	sbc  a                                           ; $4811: $9f
	dec  c                                           ; $4812: $0d
	nop                                              ; $4813: $00

jr_053_4814:
	ld   a, [bc]                                     ; $4814: $0a
	ld   b, $30                                      ; $4815: $06 $30
	ld   [$000f], sp                                 ; $4817: $08 $0f $00
	ld   bc, $0301                                   ; $481a: $01 $01 $03
	jr   jr_053_4890                                 ; $481d: $18 $71

	ld   [hl], h                                     ; $481f: $74
	ld   e, b                                        ; $4820: $58
	ld   h, l                                        ; $4821: $65
	sbc  b                                           ; $4822: $98
	ld   a, h                                        ; $4823: $7c

jr_053_4824:
	ld   [bc], a                                     ; $4824: $02
	inc  [hl]                                        ; $4825: $34
	ld   a, c                                        ; $4826: $79
	ld   h, l                                        ; $4827: $65
	ld   e, e                                        ; $4828: $5b
	adc  h                                           ; $4829: $8c
	ld   h, a                                        ; $482a: $67
	sbc  a                                           ; $482b: $9f
	dec  c                                           ; $482c: $0d
	nop                                              ; $482d: $00
	ld   a, [bc]                                     ; $482e: $0a
	inc  e                                           ; $482f: $1c
	ld   [bc], a                                     ; $4830: $02
	dec  b                                           ; $4831: $05
	dec  b                                           ; $4832: $05
	ld   bc, $8464                                   ; $4833: $01 $64 $84
	halt                                             ; $4836: $76
	and  c                                           ; $4837: $a1
	ld   h, [hl]                                     ; $4838: $66
	sub  c                                           ; $4839: $91
	ld   h, d                                        ; $483a: $62
	ld   h, h                                        ; $483b: $64
	ld   d, d                                        ; $483c: $52
	adc  h                                           ; $483d: $8c
	ld   l, c                                        ; $483e: $69
	and  c                                           ; $483f: $a1
	sbc  l                                           ; $4840: $9d
	sbc  a                                           ; $4841: $9f
	dec  c                                           ; $4842: $0d
	set  3, b                                        ; $4843: $cb $d8
	xor  [hl]                                        ; $4845: $ae
	push af                                          ; $4846: $f5
	ld   a, l                                        ; $4847: $7d
	inc  bc                                          ; $4848: $03
	jr   jr_053_48bc                                 ; $4849: $18 $71

	ld   [hl], h                                     ; $484b: $74

jr_053_484c:
	sbc  [hl]                                        ; $484c: $9e
	add  b                                           ; $484d: $80
	ld   h, h                                        ; $484e: $64
	ld   a, h                                        ; $484f: $7c
	inc  bc                                          ; $4850: $03
	ld   h, l                                        ; $4851: $65
	ld   a, c                                        ; $4852: $79
	dec  c                                           ; $4853: $0d
	inc  b                                           ; $4854: $04
	jr   z, jr_053_48b2                              ; $4855: $28 $5b

	adc  h                                           ; $4857: $8c
	ld   h, a                                        ; $4858: $67
	ld   a, h                                        ; $4859: $7c
	sub  [hl]                                        ; $485a: $96
	sbc  a                                           ; $485b: $9f
	dec  c                                           ; $485c: $0d
	nop                                              ; $485d: $00
	ld   a, [bc]                                     ; $485e: $0a
	ld   b, $30                                      ; $485f: $06 $30
	ld   [$021c], sp                                 ; $4861: $08 $1c $02
	rlca                                             ; $4864: $07
	rlca                                             ; $4865: $07
	ld   bc, $d8cb                                   ; $4866: $01 $cb $d8
	xor  [hl]                                        ; $4869: $ae
	push af                                          ; $486a: $f5
	ld   a, l                                        ; $486b: $7d
	xor  e                                           ; $486c: $ab
	ei                                               ; $486d: $fb
	jp   z, $edd7                                    ; $486e: $ca $d7 $ed

	ld   e, d                                        ; $4871: $5a

jr_053_4872:
	inc  bc                                          ; $4872: $03
	add  b                                           ; $4873: $80
	sbc  c                                           ; $4874: $99
	inc  bc                                          ; $4875: $03
	ld   c, a                                        ; $4876: $4f
	dec  c                                           ; $4877: $0d
	ld   a, c                                        ; $4878: $79
	inc  bc                                          ; $4879: $03
	jr   jr_053_4814                                 ; $487a: $18 $98

	sbc  [hl]                                        ; $487c: $9e
	dec  b                                           ; $487d: $05
	db   $eb                                         ; $487e: $eb
	sbc  b                                           ; $487f: $98
	inc  b                                           ; $4880: $04
	call nc, $03a0                                   ; $4881: $d4 $a0 $03
	sub  h                                           ; $4884: $94
	inc  b                                           ; $4885: $04
	sbc  [hl]                                        ; $4886: $9e
	ld   a, h                                        ; $4887: $7c
	inc  b                                           ; $4888: $04
	ld   a, b                                        ; $4889: $78
	ld   a, c                                        ; $488a: $79
	ld   [bc], a                                     ; $488b: $02
	jp   nc, $5f0d                                   ; $488c: $d2 $0d $5f

	ld   [hl], h                                     ; $488f: $74

jr_053_4890:
	add  b                                           ; $4890: $80
	ld   h, h                                        ; $4891: $64
	ld   a, h                                        ; $4892: $7c
	inc  bc                                          ; $4893: $03
	ld   h, l                                        ; $4894: $65
	ld   a, c                                        ; $4895: $79
	inc  b                                           ; $4896: $04
	jr   z, jr_053_48f4                              ; $4897: $28 $5b

	adc  h                                           ; $4899: $8c
	ld   h, a                                        ; $489a: $67
	ld   a, h                                        ; $489b: $7c
	sub  [hl]                                        ; $489c: $96
	sbc  a                                           ; $489d: $9f
	dec  c                                           ; $489e: $0d
	nop                                              ; $489f: $00
	ld   a, [bc]                                     ; $48a0: $0a
	inc  e                                           ; $48a1: $1c
	ld   [bc], a                                     ; $48a2: $02
	nop                                              ; $48a3: $00
	nop                                              ; $48a4: $00
	ld   bc, $7d75                                   ; $48a5: $01 $75 $7d
	sbc  [hl]                                        ; $48a8: $9e
	inc  bc                                          ; $48a9: $03
	ld   l, b                                        ; $48aa: $68
	ld   a, h                                        ; $48ab: $7c
	xor  $c4                                         ; $48ac: $ee $c4
	cp   d                                           ; $48ae: $ba
	push af                                          ; $48af: $f5
	ld   [hl], l                                     ; $48b0: $75
	ld   h, a                                        ; $48b1: $67

jr_053_48b2:
	sbc  l                                           ; $48b2: $9d
	sbc  a                                           ; $48b3: $9f
	dec  c                                           ; $48b4: $0d
	inc  bc                                          ; $48b5: $03
	ld   l, d                                        ; $48b6: $6a
	add  a                                           ; $48b7: $87
	sbc  c                                           ; $48b8: $99
	inc  bc                                          ; $48b9: $03
	ld   l, a                                        ; $48ba: $6f
	ld   a, h                                        ; $48bb: $7c

jr_053_48bc:
	rst  JumpTable                                         ; $48bc: $df
	set  7, e                                        ; $48bd: $cb $fb
	and  b                                           ; $48bf: $a0
	dec  c                                           ; $48c0: $0d
	ld   [bc], a                                     ; $48c1: $02
	ret  nc                                          ; $48c2: $d0

	ld   d, [hl]                                     ; $48c3: $56
	adc  h                                           ; $48c4: $8c
	ld   h, a                                        ; $48c5: $67
	sbc  l                                           ; $48c6: $9d
	sbc  a                                           ; $48c7: $9f
	dec  c                                           ; $48c8: $0d
	nop                                              ; $48c9: $00
	ld   a, [bc]                                     ; $48ca: $0a
	ld   b, $5d                                      ; $48cb: $06 $5d
	ld   [$000d], sp                                 ; $48cd: $08 $0d $00
	nop                                              ; $48d0: $00
	rrca                                             ; $48d1: $0f
	nop                                              ; $48d2: $00
	ld   bc, $0b0c                                   ; $48d3: $01 $0c $0b
	inc  e                                           ; $48d6: $1c
	ld   [bc], a                                     ; $48d7: $02
	ld   bc, $0101                                   ; $48d8: $01 $01 $01
	res  4, l                                        ; $48db: $cb $a5
	sub  $92                                         ; $48dd: $d6 $92
	sub  $aa                                         ; $48df: $d6 $aa
	ei                                               ; $48e1: $fb
	or   b                                           ; $48e2: $b0
	ld   a, l                                        ; $48e3: $7d
	sbc  [hl]                                        ; $48e4: $9e
	dec  c                                           ; $48e5: $0d
	dec  b                                           ; $48e6: $05
	xor  c                                           ; $48e7: $a9
	inc  b                                           ; $48e8: $04
	adc  a                                           ; $48e9: $8f
	inc  b                                           ; $48ea: $04
	jr   nz, jr_053_4966                             ; $48eb: $20 $79

	ld   a, l                                        ; $48ed: $7d
	dec  b                                           ; $48ee: $05
	ld   e, e                                        ; $48ef: $5b
	add  a                                           ; $48f0: $87
	ld   [hl], h                                     ; $48f1: $74
	ld   d, b                                        ; $48f2: $50
	sbc  c                                           ; $48f3: $99

jr_053_48f4:
	ld   a, [bc]                                     ; $48f4: $0a
	ld   [bc], a                                     ; $48f5: $02
	ld   [bc], a                                     ; $48f6: $02
	rlc  l                                           ; $48f7: $cb $05
	ld   c, c                                        ; $48f9: $49
	ld   e, c                                        ; $48fa: $59
	sub  a                                           ; $48fb: $97
	ld   a, [bc]                                     ; $48fc: $0a
	inc  bc                                          ; $48fd: $03
	dec  c                                           ; $48fe: $0d
	ld   [bc], a                                     ; $48ff: $02
	ld   a, [$0379]                                  ; $4900: $fa $79 $03
	xor  [hl]                                        ; $4903: $ae
	ld   [hl], c                                     ; $4904: $71
	ld   [hl], h                                     ; $4905: $74
	ld   d, d                                        ; $4906: $52
	ld   e, e                                        ; $4907: $5b
	adc  h                                           ; $4908: $8c
	ld   h, a                                        ; $4909: $67
	ld   a, h                                        ; $490a: $7c
	sub  [hl]                                        ; $490b: $96
	sbc  a                                           ; $490c: $9f
	dec  c                                           ; $490d: $0d
	nop                                              ; $490e: $00
	ld   a, [bc]                                     ; $490f: $0a
	ld   bc, $0205                                   ; $4910: $01 $05 $02
	dec  b                                           ; $4913: $05
	ld   de, $0a7d                                   ; $4914: $11 $7d $0a
	ld   [bc], a                                     ; $4917: $02
	ld   [bc], a                                     ; $4918: $02
	jr   nz, jr_053_491d                             ; $4919: $20 $02

	xor  [hl]                                        ; $491b: $ae
	inc  b                                           ; $491c: $04

jr_053_491d:
	sbc  [hl]                                        ; $491d: $9e
	ld   l, b                                        ; $491e: $68
	ld   [hl], d                                     ; $491f: $72
	ld   a, [bc]                                     ; $4920: $0a
	inc  bc                                          ; $4921: $03
	ld   a, c                                        ; $4922: $79
	inc  b                                           ; $4923: $04
	sbc  [hl]                                        ; $4924: $9e
	ld   e, a                                        ; $4925: $5f
	adc  h                                           ; $4926: $8c
	ld   h, a                                        ; $4927: $67
	sbc  a                                           ; $4928: $9f
	dec  c                                           ; $4929: $0d
	ld   [bc], a                                     ; $492a: $02
	jr   nz, jr_053_492f                             ; $492b: $20 $02

	xor  [hl]                                        ; $492d: $ae
	inc  b                                           ; $492e: $04

jr_053_492f:
	sbc  [hl]                                        ; $492f: $9e
	ld   l, b                                        ; $4930: $68
	ld   [hl], d                                     ; $4931: $72
	halt                                             ; $4932: $76
	ld   a, l                                        ; $4933: $7d
	sbc  [hl]                                        ; $4934: $9e
	ld   d, d                                        ; $4935: $52
	ld   [hl], d                                     ; $4936: $72
	ld   [hl], l                                     ; $4937: $75
	sub  b                                           ; $4938: $90
	dec  c                                           ; $4939: $0d
	inc  b                                           ; $493a: $04
	sub  a                                           ; $493b: $97
	ld   [bc], a                                     ; $493c: $02
	jp   Jump_053_755a                               ; $493d: $c3 $5a $75


	ld   e, e                                        ; $4940: $5b
	sbc  c                                           ; $4941: $99
	inc  b                                           ; $4942: $04
	sbc  [hl]                                        ; $4943: $9e
	dec  b                                           ; $4944: $05
	ld   h, [hl]                                     ; $4945: $66
	ld   [hl], l                                     ; $4946: $75
	ld   h, a                                        ; $4947: $67
	ld   a, h                                        ; $4948: $7c
	sub  [hl]                                        ; $4949: $96
	sbc  a                                           ; $494a: $9f
	dec  c                                           ; $494b: $0d
	nop                                              ; $494c: $00
	ld   a, [bc]                                     ; $494d: $0a
	ld   bc, $a5cb                                   ; $494e: $01 $cb $a5
	sub  $76                                         ; $4951: $d6 $76
	sub  $aa                                         ; $4953: $d6 $aa
	ei                                               ; $4955: $fb
	or   b                                           ; $4956: $b0
	ld   a, l                                        ; $4957: $7d
	sbc  [hl]                                        ; $4958: $9e
	inc  bc                                          ; $4959: $03
	ld   l, d                                        ; $495a: $6a
	ld   [bc], a                                     ; $495b: $02
	jp   $0b04                                       ; $495c: $c3 $04 $0b


	dec  c                                           ; $495f: $0d
	ld   a, b                                        ; $4960: $78
	sub  a                                           ; $4961: $97
	ld   a, [bc]                                     ; $4962: $0a
	ld   [bc], a                                     ; $4963: $02
	inc  b                                           ; $4964: $04
	ld   a, [hl]                                     ; $4965: $7e

jr_053_4966:
	ld   a, h                                        ; $4966: $7c
	inc  bc                                          ; $4967: $03
	sbc  h                                           ; $4968: $9c
	ld   a, [bc]                                     ; $4969: $0a
	inc  bc                                          ; $496a: $03
	ld   a, c                                        ; $496b: $79
	inc  b                                           ; $496c: $04
	jr   z, jr_053_49ca                              ; $496d: $28 $5b

	adc  h                                           ; $496f: $8c
	ld   h, a                                        ; $4970: $67
	ld   a, h                                        ; $4971: $7c
	sbc  a                                           ; $4972: $9f
	dec  c                                           ; $4973: $0d
	nop                                              ; $4974: $00
	ld   a, [bc]                                     ; $4975: $0a
	ld   bc, $6a03                                   ; $4976: $01 $03 $6a
	add  a                                           ; $4979: $87
	inc  bc                                          ; $497a: $03
	ld   a, [hl]                                     ; $497b: $7e
	sbc  l                                           ; $497c: $9d
	ld   [hl], c                                     ; $497d: $71
	ld   l, l                                        ; $497e: $6d
	sub  a                                           ; $497f: $97
	res  4, l                                        ; $4980: $cb $a5
	sub  $7c                                         ; $4982: $d6 $7c
	dec  b                                           ; $4984: $05
	ld   d, b                                        ; $4985: $50
	and  b                                           ; $4986: $a0
	dec  c                                           ; $4987: $0d
	inc  bc                                          ; $4988: $03
	ld   l, e                                        ; $4989: $6b
	inc  bc                                          ; $498a: $03
	ld   c, a                                        ; $498b: $4f
	ld   a, c                                        ; $498c: $79
	ld   h, l                                        ; $498d: $65
	ld   [hl], h                                     ; $498e: $74
	sub  $aa                                         ; $498f: $d6 $aa
	ei                                               ; $4991: $fb
	or   b                                           ; $4992: $b0
	halt                                             ; $4993: $76
	ld   l, e                                        ; $4994: $6b
	sbc  e                                           ; $4995: $9b
	ld   d, [hl]                                     ; $4996: $56
	ld   [hl], h                                     ; $4997: $74
	dec  c                                           ; $4998: $0d
	ld   e, b                                        ; $4999: $58
	inc  b                                           ; $499a: $04
	ld   d, l                                        ; $499b: $55
	ld   a, h                                        ; $499c: $7c
	inc  bc                                          ; $499d: $03
	ld   h, l                                        ; $499e: $65
	ld   a, c                                        ; $499f: $79
	inc  b                                           ; $49a0: $04
	jr   z, jr_053_49fe                              ; $49a1: $28 $5b

	adc  h                                           ; $49a3: $8c
	ld   h, a                                        ; $49a4: $67
	ld   a, h                                        ; $49a5: $7c
	sub  [hl]                                        ; $49a6: $96
	sbc  a                                           ; $49a7: $9f
	dec  c                                           ; $49a8: $0d
	nop                                              ; $49a9: $00
	ld   a, [bc]                                     ; $49aa: $0a
	inc  e                                           ; $49ab: $1c
	ld   [bc], a                                     ; $49ac: $02
	nop                                              ; $49ad: $00
	nop                                              ; $49ae: $00
	ld   bc, $7d75                                   ; $49af: $01 $75 $7d
	sbc  [hl]                                        ; $49b2: $9e
	ld   h, c                                        ; $49b3: $61
	ld   h, c                                        ; $49b4: $61
	adc  h                                           ; $49b5: $8c
	ld   [hl], l                                     ; $49b6: $75
	and  b                                           ; $49b7: $a0
	dec  c                                           ; $49b8: $0d
	ld   e, b                                        ; $49b9: $58
	ld   h, e                                        ; $49ba: $63
	sub  a                                           ; $49bb: $97
	ld   d, d                                        ; $49bc: $52
	ld   h, l                                        ; $49bd: $65
	adc  h                                           ; $49be: $8c
	ld   h, l                                        ; $49bf: $65
	sub  l                                           ; $49c0: $95
	ld   d, h                                        ; $49c1: $54
	ld   e, c                                        ; $49c2: $59
	sbc  a                                           ; $49c3: $9f
	dec  c                                           ; $49c4: $0d
	nop                                              ; $49c5: $00
	ld   a, [bc]                                     ; $49c6: $0a
	ld   bc, $a5cb                                   ; $49c7: $01 $cb $a5

jr_053_49ca:
	sub  $92                                         ; $49ca: $d6 $92
	sub  $aa                                         ; $49cc: $d6 $aa
	ei                                               ; $49ce: $fb
	or   b                                           ; $49cf: $b0
	ld   a, l                                        ; $49d0: $7d
	sbc  [hl]                                        ; $49d1: $9e
	dec  c                                           ; $49d2: $0d
	dec  b                                           ; $49d3: $05
	xor  c                                           ; $49d4: $a9
	inc  b                                           ; $49d5: $04
	adc  a                                           ; $49d6: $8f
	inc  b                                           ; $49d7: $04
	jr   nz, @+$7b                                   ; $49d8: $20 $79

	ld   [hl], a                                     ; $49da: $77
	ld   a, h                                        ; $49db: $7c
	dec  b                                           ; $49dc: $05
	daa                                              ; $49dd: $27
	inc  b                                           ; $49de: $04
	jr   z, jr_053_4a5d                              ; $49df: $28 $7c

	db   $e4                                         ; $49e1: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49e2: $cf
	ld   e, c                                        ; $49e3: $59
	sub  a                                           ; $49e4: $97
	dec  c                                           ; $49e5: $0d
	inc  bc                                          ; $49e6: $03
	xor  [hl]                                        ; $49e7: $ae
	ld   d, d                                        ; $49e8: $52
	adc  h                                           ; $49e9: $8c
	ld   h, a                                        ; $49ea: $67
	ld   e, c                                        ; $49eb: $59
	ld   sp, hl                                      ; $49ec: $f9
	dec  c                                           ; $49ed: $0d
	nop                                              ; $49ee: $00
	ld   a, [bc]                                     ; $49ef: $0a
	add  hl, de                                      ; $49f0: $19
	dec  b                                           ; $49f1: $05
	inc  bc                                          ; $49f2: $03
	ld   [bc], a                                     ; $49f3: $02
	rlc  l                                           ; $49f4: $cb $05
	ld   c, c                                        ; $49f6: $49
	ld   a, h                                        ; $49f7: $7c
	db   $e4                                         ; $49f8: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49f9: $cf
	ld   e, c                                        ; $49fa: $59
	sub  a                                           ; $49fb: $97
	inc  bc                                          ; $49fc: $03
	xor  [hl]                                        ; $49fd: $ae

jr_053_49fe:
	ld   d, h                                        ; $49fe: $54
	nop                                              ; $49ff: $00
	nop                                              ; $4a00: $00
	inc  b                                           ; $4a01: $04
	ld   b, a                                        ; $4a02: $47
	dec  b                                           ; $4a03: $05
	ld   c, c                                        ; $4a04: $49
	ld   a, h                                        ; $4a05: $7c
	db   $e4                                         ; $4a06: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a07: $cf
	ld   e, c                                        ; $4a08: $59
	sub  a                                           ; $4a09: $97
	inc  bc                                          ; $4a0a: $03
	xor  [hl]                                        ; $4a0b: $ae
	ld   d, h                                        ; $4a0c: $54
	nop                                              ; $4a0d: $00
	ld   bc, $9a02                                   ; $4a0e: $01 $02 $9a
	ld   e, e                                        ; $4a11: $5b
	inc  bc                                          ; $4a12: $03
	ld   c, [hl]                                     ; $4a13: $4e
	inc  bc                                          ; $4a14: $03
	ld   l, e                                        ; $4a15: $6b
	ld   a, c                                        ; $4a16: $79
	inc  bc                                          ; $4a17: $03
	xor  [hl]                                        ; $4a18: $ae
	ld   d, h                                        ; $4a19: $54
	nop                                              ; $4a1a: $00
	ld   [bc], a                                     ; $4a1b: $02
	rlca                                             ; $4a1c: $07
	ret                                              ; $4a1d: $c9


	add  hl, bc                                      ; $4a1e: $09
	ld   [bc], a                                     ; $4a1f: $02
	inc  bc                                          ; $4a20: $03
	ld   bc, $2000                                   ; $4a21: $01 $00 $20
	nop                                              ; $4a24: $00
	rlca                                             ; $4a25: $07
	jr   z, jr_053_4a32                              ; $4a26: $28 $0a

	ld   [bc], a                                     ; $4a28: $02
	inc  bc                                          ; $4a29: $03
	ld   bc, $2001                                   ; $4a2a: $01 $01 $20
	nop                                              ; $4a2d: $00
	rlca                                             ; $4a2e: $07
	ld   [hl], h                                     ; $4a2f: $74
	ld   a, [bc]                                     ; $4a30: $0a
	ld   [bc], a                                     ; $4a31: $02

jr_053_4a32:
	inc  bc                                          ; $4a32: $03
	ld   bc, $2002                                   ; $4a33: $01 $02 $20
	nop                                              ; $4a36: $00
	ld   b, $bd                                      ; $4a37: $06 $bd
	ld   a, [bc]                                     ; $4a39: $0a
	rrca                                             ; $4a3a: $0f
	nop                                              ; $4a3b: $00
	ld   bc, $0201                                   ; $4a3c: $01 $01 $02
	rlc  l                                           ; $4a3f: $cb $05
	ld   c, c                                        ; $4a41: $49
	ld   a, h                                        ; $4a42: $7c
	db   $e4                                         ; $4a43: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a44: $cf
	ld   e, c                                        ; $4a45: $59
	sub  a                                           ; $4a46: $97
	inc  bc                                          ; $4a47: $03
	xor  [hl]                                        ; $4a48: $ae
	ld   d, d                                        ; $4a49: $52
	adc  h                                           ; $4a4a: $8c
	ld   h, a                                        ; $4a4b: $67
	sbc  a                                           ; $4a4c: $9f
	dec  c                                           ; $4a4d: $0d
	nop                                              ; $4a4e: $00
	ld   a, [bc]                                     ; $4a4f: $0a
	inc  e                                           ; $4a50: $1c
	ld   [bc], a                                     ; $4a51: $02
	ld   bc, $0101                                   ; $4a52: $01 $01 $01
	ld   l, e                                        ; $4a55: $6b
	ld   d, h                                        ; $4a56: $54
	ld   [hl], l                                     ; $4a57: $75
	ld   h, a                                        ; $4a58: $67
	sbc  l                                           ; $4a59: $9d
	sbc  a                                           ; $4a5a: $9f
	res  4, l                                        ; $4a5b: $cb $a5

jr_053_4a5d:
	sub  $92                                         ; $4a5d: $d6 $92
	sub  $aa                                         ; $4a5f: $d6 $aa
	ei                                               ; $4a61: $fb
	or   b                                           ; $4a62: $b0
	dec  c                                           ; $4a63: $0d
	ld   a, l                                        ; $4a64: $7d
	dec  b                                           ; $4a65: $05
	xor  c                                           ; $4a66: $a9
	inc  b                                           ; $4a67: $04
	adc  a                                           ; $4a68: $8f
	inc  b                                           ; $4a69: $04
	jr   nz, jr_053_4ae5                             ; $4a6a: $20 $79

	ld   a, l                                        ; $4a6c: $7d
	dec  b                                           ; $4a6d: $05
	ld   e, e                                        ; $4a6e: $5b
	add  a                                           ; $4a6f: $87
	ld   [hl], h                                     ; $4a70: $74
	ld   d, b                                        ; $4a71: $50
	sbc  c                                           ; $4a72: $99
	ld   [bc], a                                     ; $4a73: $02
	rlc  l                                           ; $4a74: $cb $05
	ld   c, c                                        ; $4a76: $49
	dec  c                                           ; $4a77: $0d
	nop                                              ; $4a78: $00
	dec  b                                           ; $4a79: $05
	ld   b, b                                        ; $4a7a: $40
	rst  $38                                         ; $4a7b: $ff
	inc  bc                                          ; $4a7c: $03
	rst  $38                                         ; $4a7d: $ff
	ld   bc, $2801                                   ; $4a7e: $01 $01 $28
	nop                                              ; $4a81: $00
	ld   bc, $9759                                   ; $4a82: $01 $59 $97
	ld   [bc], a                                     ; $4a85: $02
	ld   a, [$0379]                                  ; $4a86: $fa $79 $03
	xor  [hl]                                        ; $4a89: $ae
	ld   [hl], c                                     ; $4a8a: $71
	ld   [hl], h                                     ; $4a8b: $74
	ld   d, d                                        ; $4a8c: $52
	ld   e, e                                        ; $4a8d: $5b
	adc  h                                           ; $4a8e: $8c
	ld   h, a                                        ; $4a8f: $67
	ld   a, h                                        ; $4a90: $7c
	sub  [hl]                                        ; $4a91: $96
	sbc  a                                           ; $4a92: $9f
	dec  c                                           ; $4a93: $0d
	nop                                              ; $4a94: $00
	ld   a, [bc]                                     ; $4a95: $0a
	ld   b, $f3                                      ; $4a96: $06 $f3
	ld   a, [bc]                                     ; $4a98: $0a
	rrca                                             ; $4a99: $0f
	nop                                              ; $4a9a: $00
	ld   bc, $0401                                   ; $4a9b: $01 $01 $04
	ld   b, a                                        ; $4a9e: $47
	dec  b                                           ; $4a9f: $05
	ld   c, c                                        ; $4aa0: $49
	ld   a, h                                        ; $4aa1: $7c
	db   $e4                                         ; $4aa2: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aa3: $cf
	ld   e, c                                        ; $4aa4: $59
	sub  a                                           ; $4aa5: $97
	inc  bc                                          ; $4aa6: $03
	xor  [hl]                                        ; $4aa7: $ae
	ld   d, d                                        ; $4aa8: $52
	adc  h                                           ; $4aa9: $8c
	ld   h, a                                        ; $4aaa: $67
	sbc  a                                           ; $4aab: $9f
	dec  c                                           ; $4aac: $0d
	nop                                              ; $4aad: $00
	ld   a, [bc]                                     ; $4aae: $0a
	inc  e                                           ; $4aaf: $1c
	ld   [bc], a                                     ; $4ab0: $02
	dec  b                                           ; $4ab1: $05
	dec  b                                           ; $4ab2: $05
	ld   bc, $5a6f                                   ; $4ab3: $01 $6f $5a
	ld   d, d                                        ; $4ab6: $52
	adc  h                                           ; $4ab7: $8c
	ld   h, a                                        ; $4ab8: $67
	sbc  l                                           ; $4ab9: $9d
	sbc  a                                           ; $4aba: $9f
	dec  c                                           ; $4abb: $0d
	dec  b                                           ; $4abc: $05
	xor  c                                           ; $4abd: $a9
	inc  b                                           ; $4abe: $04
	adc  a                                           ; $4abf: $8f
	inc  b                                           ; $4ac0: $04
	jr   nz, jr_053_4b3c                             ; $4ac1: $20 $79

	ld   a, l                                        ; $4ac3: $7d
	dec  b                                           ; $4ac4: $05
	ld   e, e                                        ; $4ac5: $5b
	add  a                                           ; $4ac6: $87
	ld   [hl], h                                     ; $4ac7: $74
	ld   d, b                                        ; $4ac8: $50
	sbc  c                                           ; $4ac9: $99
	ld   [bc], a                                     ; $4aca: $02
	rlc  l                                           ; $4acb: $cb $05
	ld   c, c                                        ; $4acd: $49
	dec  c                                           ; $4ace: $0d
	ld   e, c                                        ; $4acf: $59
	sub  a                                           ; $4ad0: $97
	ld   [bc], a                                     ; $4ad1: $02
	ld   a, [$0379]                                  ; $4ad2: $fa $79 $03
	xor  [hl]                                        ; $4ad5: $ae
	ld   [hl], c                                     ; $4ad6: $71
	ld   [hl], h                                     ; $4ad7: $74
	ld   d, d                                        ; $4ad8: $52
	ld   e, e                                        ; $4ad9: $5b
	adc  h                                           ; $4ada: $8c
	ld   h, a                                        ; $4adb: $67
	ld   a, h                                        ; $4adc: $7c
	sub  [hl]                                        ; $4add: $96
	sbc  a                                           ; $4ade: $9f
	dec  c                                           ; $4adf: $0d
	nop                                              ; $4ae0: $00
	ld   a, [bc]                                     ; $4ae1: $0a
	ld   b, $f3                                      ; $4ae2: $06 $f3
	ld   a, [bc]                                     ; $4ae4: $0a

jr_053_4ae5:
	rrca                                             ; $4ae5: $0f
	nop                                              ; $4ae6: $00
	ld   bc, $0201                                   ; $4ae7: $01 $01 $02
	sbc  d                                           ; $4aea: $9a
	ld   e, e                                        ; $4aeb: $5b
	inc  bc                                          ; $4aec: $03
	ld   c, [hl]                                     ; $4aed: $4e
	inc  bc                                          ; $4aee: $03
	ld   l, e                                        ; $4aef: $6b
	ld   a, c                                        ; $4af0: $79
	inc  bc                                          ; $4af1: $03
	xor  [hl]                                        ; $4af2: $ae
	ld   d, d                                        ; $4af3: $52
	adc  h                                           ; $4af4: $8c
	ld   h, a                                        ; $4af5: $67
	sbc  a                                           ; $4af6: $9f
	dec  c                                           ; $4af7: $0d
	nop                                              ; $4af8: $00
	ld   a, [bc]                                     ; $4af9: $0a
	inc  e                                           ; $4afa: $1c
	ld   [bc], a                                     ; $4afb: $02
	ld   [bc], a                                     ; $4afc: $02
	ld   [bc], a                                     ; $4afd: $02
	ld   bc, $a16b                                   ; $4afe: $01 $6b $a1
	ld   a, b                                        ; $4b01: $78
	ld   h, c                                        ; $4b02: $61
	halt                                             ; $4b03: $76
	ld   h, l                                        ; $4b04: $65
	ld   l, a                                        ; $4b05: $6f
	sub  c                                           ; $4b06: $91
	pop  bc                                          ; $4b07: $c1
	db   $e3                                         ; $4b08: $e3
	ld   [hl], l                                     ; $4b09: $75
	ld   h, a                                        ; $4b0a: $67
	sbc  l                                           ; $4b0b: $9d
	sbc  a                                           ; $4b0c: $9f
	dec  c                                           ; $4b0d: $0d
	dec  b                                           ; $4b0e: $05
	ld   e, e                                        ; $4b0f: $5b
	add  a                                           ; $4b10: $87
	ld   [hl], h                                     ; $4b11: $74
	ld   d, b                                        ; $4b12: $50
	sbc  c                                           ; $4b13: $99
	ld   [bc], a                                     ; $4b14: $02
	rlc  l                                           ; $4b15: $cb $05
	ld   c, c                                        ; $4b17: $49
	ld   e, c                                        ; $4b18: $59
	sub  a                                           ; $4b19: $97
	ld   [bc], a                                     ; $4b1a: $02
	ld   a, [$0d79]                                  ; $4b1b: $fa $79 $0d
	inc  bc                                          ; $4b1e: $03
	xor  [hl]                                        ; $4b1f: $ae
	ld   [hl], c                                     ; $4b20: $71
	ld   [hl], h                                     ; $4b21: $74
	ld   d, d                                        ; $4b22: $52
	ld   e, e                                        ; $4b23: $5b
	ld   a, b                                        ; $4b24: $78
	ld   h, e                                        ; $4b25: $63
	ld   d, d                                        ; $4b26: $52
	sbc  a                                           ; $4b27: $9f
	dec  c                                           ; $4b28: $0d
	nop                                              ; $4b29: $00
	ld   a, [bc]                                     ; $4b2a: $0a
	ld   b, $f3                                      ; $4b2b: $06 $f3
	ld   a, [bc]                                     ; $4b2d: $0a
	inc  e                                           ; $4b2e: $1c
	ld   [bc], a                                     ; $4b2f: $02
	rlca                                             ; $4b30: $07
	rlca                                             ; $4b31: $07
	ld   bc, $a5cb                                   ; $4b32: $01 $cb $a5
	sub  $92                                         ; $4b35: $d6 $92
	sub  $aa                                         ; $4b37: $d6 $aa
	ei                                               ; $4b39: $fb
	or   b                                           ; $4b3a: $b0
	ld   a, l                                        ; $4b3b: $7d

jr_053_4b3c:
	sbc  [hl]                                        ; $4b3c: $9e
	dec  c                                           ; $4b3d: $0d
	dec  b                                           ; $4b3e: $05
	xor  c                                           ; $4b3f: $a9
	inc  b                                           ; $4b40: $04
	adc  a                                           ; $4b41: $8f
	inc  b                                           ; $4b42: $04
	jr   nz, jr_053_4bbe                             ; $4b43: $20 $79

	ld   a, l                                        ; $4b45: $7d
	dec  b                                           ; $4b46: $05
	ld   e, e                                        ; $4b47: $5b
	add  a                                           ; $4b48: $87
	ld   [hl], h                                     ; $4b49: $74
	ld   d, b                                        ; $4b4a: $50
	sbc  c                                           ; $4b4b: $99
	ld   [bc], a                                     ; $4b4c: $02
	rlc  l                                           ; $4b4d: $cb $05
	ld   c, c                                        ; $4b4f: $49
	ld   e, c                                        ; $4b50: $59
	sub  a                                           ; $4b51: $97
	dec  c                                           ; $4b52: $0d
	ld   [bc], a                                     ; $4b53: $02
	ld   a, [$0379]                                  ; $4b54: $fa $79 $03
	xor  [hl]                                        ; $4b57: $ae
	ld   [hl], c                                     ; $4b58: $71
	ld   [hl], h                                     ; $4b59: $74
	ld   d, d                                        ; $4b5a: $52
	ld   e, e                                        ; $4b5b: $5b
	adc  h                                           ; $4b5c: $8c
	ld   h, a                                        ; $4b5d: $67
	ld   a, h                                        ; $4b5e: $7c
	sub  [hl]                                        ; $4b5f: $96
	sbc  a                                           ; $4b60: $9f
	dec  c                                           ; $4b61: $0d
	nop                                              ; $4b62: $00
	ld   a, [bc]                                     ; $4b63: $0a
	inc  e                                           ; $4b64: $1c
	ld   [bc], a                                     ; $4b65: $02
	nop                                              ; $4b66: $00
	nop                                              ; $4b67: $00
	ld   bc, $6803                                   ; $4b68: $01 $03 $68
	ld   a, c                                        ; $4b6b: $79
	sbc  [hl]                                        ; $4b6c: $9e
	inc  bc                                          ; $4b6d: $03
	ld   l, d                                        ; $4b6e: $6a
	add  a                                           ; $4b6f: $87
	inc  b                                           ; $4b70: $04
	sub  d                                           ; $4b71: $92
	ld   a, l                                        ; $4b72: $7d
	ld   [hl], a                                     ; $4b73: $77
	ld   a, h                                        ; $4b74: $7c
	sub  [hl]                                        ; $4b75: $96
	ld   d, h                                        ; $4b76: $54
	ld   a, c                                        ; $4b77: $79
	dec  c                                           ; $4b78: $0d
	inc  bc                                          ; $4b79: $03
	dec  de                                          ; $4b7a: $1b
	sbc  b                                           ; $4b7b: $98
	inc  b                                           ; $4b7c: $04
	sbc  [hl]                                        ; $4b7d: $9e
	ld   e, a                                        ; $4b7e: $5f
	ld   [hl], h                                     ; $4b7f: $74
	inc  bc                                          ; $4b80: $03
	ld   l, d                                        ; $4b81: $6a
	add  a                                           ; $4b82: $87
	adc  h                                           ; $4b83: $8c
	ld   h, a                                        ; $4b84: $67
	ld   e, c                                        ; $4b85: $59
	sbc  a                                           ; $4b86: $9f
	dec  c                                           ; $4b87: $0d
	nop                                              ; $4b88: $00
	ld   a, [bc]                                     ; $4b89: $0a
	add  hl, de                                      ; $4b8a: $19
	dec  b                                           ; $4b8b: $05
	inc  bc                                          ; $4b8c: $03
	ld   [bc], a                                     ; $4b8d: $02
	jr   nz, jr_053_4b92                             ; $4b8e: $20 $02

	xor  [hl]                                        ; $4b90: $ae
	inc  b                                           ; $4b91: $04

jr_053_4b92:
	sbc  [hl]                                        ; $4b92: $9e
	ld   l, b                                        ; $4b93: $68
	ld   [hl], d                                     ; $4b94: $72
	nop                                              ; $4b95: $00
	nop                                              ; $4b96: $00
	dec  d                                           ; $4b97: $15
	dec  b                                           ; $4b98: $05
	ld   c, a                                        ; $4b99: $4f
	inc  b                                           ; $4b9a: $04
	sbc  [hl]                                        ; $4b9b: $9e
	ld   a, c                                        ; $4b9c: $79
	ld   h, a                                        ; $4b9d: $67
	sbc  c                                           ; $4b9e: $99
	nop                                              ; $4b9f: $00
	ld   bc, $a305                                   ; $4ba0: $01 $05 $a3
	dec  b                                           ; $4ba3: $05
	sbc  d                                           ; $4ba4: $9a
	ld   a, c                                        ; $4ba5: $79
	ld   e, c                                        ; $4ba6: $59
	add  h                                           ; $4ba7: $84
	sbc  b                                           ; $4ba8: $98
	ld   [hl], d                                     ; $4ba9: $72
	ld   e, l                                        ; $4baa: $5d
	nop                                              ; $4bab: $00
	ld   [bc], a                                     ; $4bac: $02
	rlca                                             ; $4bad: $07
	ld   e, d                                        ; $4bae: $5a
	dec  bc                                          ; $4baf: $0b
	ld   [bc], a                                     ; $4bb0: $02
	inc  bc                                          ; $4bb1: $03
	ld   bc, $2000                                   ; $4bb2: $01 $00 $20
	nop                                              ; $4bb5: $00
	rlca                                             ; $4bb6: $07
	cp   c                                           ; $4bb7: $b9
	dec  bc                                          ; $4bb8: $0b
	ld   [bc], a                                     ; $4bb9: $02
	inc  bc                                          ; $4bba: $03
	ld   bc, $2001                                   ; $4bbb: $01 $01 $20

jr_053_4bbe:
	nop                                              ; $4bbe: $00
	rlca                                             ; $4bbf: $07
	ld   sp, hl                                      ; $4bc0: $f9
	dec  bc                                          ; $4bc1: $0b
	ld   [bc], a                                     ; $4bc2: $02
	inc  bc                                          ; $4bc3: $03
	ld   bc, $2002                                   ; $4bc4: $01 $02 $20
	nop                                              ; $4bc7: $00
	ld   b, $51                                      ; $4bc8: $06 $51
	inc  c                                           ; $4bca: $0c
	rrca                                             ; $4bcb: $0f
	nop                                              ; $4bcc: $00
	ld   bc, $0201                                   ; $4bcd: $01 $01 $02
	jr   nz, jr_053_4bd4                             ; $4bd0: $20 $02

	xor  [hl]                                        ; $4bd2: $ae
	inc  b                                           ; $4bd3: $04

jr_053_4bd4:
	sbc  [hl]                                        ; $4bd4: $9e
	ld   l, b                                        ; $4bd5: $68
	ld   [hl], d                                     ; $4bd6: $72
	inc  bc                                          ; $4bd7: $03
	dec  de                                          ; $4bd8: $1b
	sbc  b                                           ; $4bd9: $98
	inc  b                                           ; $4bda: $04
	sbc  [hl]                                        ; $4bdb: $9e
	ld   e, a                                        ; $4bdc: $5f
	ld   [hl], h                                     ; $4bdd: $74
	dec  c                                           ; $4bde: $0d
	inc  bc                                          ; $4bdf: $03
	ld   l, d                                        ; $4be0: $6a
	add  a                                           ; $4be1: $87
	adc  h                                           ; $4be2: $8c
	ld   h, a                                        ; $4be3: $67
	sbc  a                                           ; $4be4: $9f
	dec  c                                           ; $4be5: $0d
	nop                                              ; $4be6: $00
	ld   a, [bc]                                     ; $4be7: $0a
	inc  e                                           ; $4be8: $1c
	ld   [bc], a                                     ; $4be9: $02
	ld   bc, $0101                                   ; $4bea: $01 $01 $01
	ld   l, e                                        ; $4bed: $6b
	ld   d, h                                        ; $4bee: $54
	ld   [hl], l                                     ; $4bef: $75
	ld   h, a                                        ; $4bf0: $67
	sbc  l                                           ; $4bf1: $9d
	sbc  a                                           ; $4bf2: $9f
	ld   l, a                                        ; $4bf3: $6f
	ld   a, b                                        ; $4bf4: $78
	adc  l                                           ; $4bf5: $8d
	ld   a, c                                        ; $4bf6: $79
	dec  c                                           ; $4bf7: $0d
	ld   [bc], a                                     ; $4bf8: $02
	jr   nz, jr_053_4bfd                             ; $4bf9: $20 $02

	xor  [hl]                                        ; $4bfb: $ae
	inc  b                                           ; $4bfc: $04

jr_053_4bfd:
	sbc  [hl]                                        ; $4bfd: $9e
	ld   l, b                                        ; $4bfe: $68
	ld   [hl], d                                     ; $4bff: $72
	halt                                             ; $4c00: $76
	ld   a, l                                        ; $4c01: $7d
	sbc  [hl]                                        ; $4c02: $9e
	ld   d, d                                        ; $4c03: $52
	ld   [hl], d                                     ; $4c04: $72
	ld   [hl], l                                     ; $4c05: $75
	sub  b                                           ; $4c06: $90
	dec  c                                           ; $4c07: $0d
	nop                                              ; $4c08: $00
	dec  b                                           ; $4c09: $05
	ld   b, b                                        ; $4c0a: $40
	rst  $38                                         ; $4c0b: $ff
	inc  bc                                          ; $4c0c: $03
	rst  $38                                         ; $4c0d: $ff
	ld   bc, $2801                                   ; $4c0e: $01 $01 $28
	nop                                              ; $4c11: $00
	ld   bc, $9704                                   ; $4c12: $01 $04 $97
	ld   [bc], a                                     ; $4c15: $02
	jp   Jump_053_755a                               ; $4c16: $c3 $5a $75


	ld   e, e                                        ; $4c19: $5b
	sbc  c                                           ; $4c1a: $99
	inc  b                                           ; $4c1b: $04
	sbc  [hl]                                        ; $4c1c: $9e
	dec  b                                           ; $4c1d: $05
	ld   h, [hl]                                     ; $4c1e: $66
	ld   [hl], l                                     ; $4c1f: $75
	ld   h, a                                        ; $4c20: $67
	ld   a, h                                        ; $4c21: $7c
	sub  [hl]                                        ; $4c22: $96
	sbc  a                                           ; $4c23: $9f
	dec  c                                           ; $4c24: $0d
	nop                                              ; $4c25: $00
	ld   a, [bc]                                     ; $4c26: $0a
	ld   b, $8f                                      ; $4c27: $06 $8f
	inc  c                                           ; $4c29: $0c
	rrca                                             ; $4c2a: $0f
	nop                                              ; $4c2b: $00
	ld   bc, $1501                                   ; $4c2c: $01 $01 $15
	dec  b                                           ; $4c2f: $05
	ld   c, a                                        ; $4c30: $4f
	inc  b                                           ; $4c31: $04
	sbc  [hl]                                        ; $4c32: $9e
	ld   a, c                                        ; $4c33: $79
	ld   h, l                                        ; $4c34: $65
	ld   [hl], h                                     ; $4c35: $74
	inc  bc                                          ; $4c36: $03
	ld   l, d                                        ; $4c37: $6a
	add  a                                           ; $4c38: $87
	adc  h                                           ; $4c39: $8c
	ld   h, a                                        ; $4c3a: $67
	sbc  a                                           ; $4c3b: $9f
	dec  c                                           ; $4c3c: $0d
	nop                                              ; $4c3d: $00
	ld   a, [bc]                                     ; $4c3e: $0a
	inc  e                                           ; $4c3f: $1c
	ld   [bc], a                                     ; $4c40: $02
	dec  b                                           ; $4c41: $05
	dec  b                                           ; $4c42: $05
	ld   bc, $5a6f                                   ; $4c43: $01 $6f $5a
	ld   d, d                                        ; $4c46: $52
	adc  h                                           ; $4c47: $8c
	ld   h, a                                        ; $4c48: $67
	sbc  l                                           ; $4c49: $9d
	sbc  a                                           ; $4c4a: $9f
	dec  c                                           ; $4c4b: $0d
	inc  bc                                          ; $4c4c: $03
	ld   l, d                                        ; $4c4d: $6a
	add  a                                           ; $4c4e: $87
	inc  b                                           ; $4c4f: $04
	sub  d                                           ; $4c50: $92
	ld   a, l                                        ; $4c51: $7d
	ld   [bc], a                                     ; $4c52: $02
	jr   nz, jr_053_4c57                             ; $4c53: $20 $02

	xor  [hl]                                        ; $4c55: $ae
	inc  b                                           ; $4c56: $04

jr_053_4c57:
	sbc  [hl]                                        ; $4c57: $9e
	ld   l, b                                        ; $4c58: $68
	ld   [hl], d                                     ; $4c59: $72
	ld   a, c                                        ; $4c5a: $79
	dec  c                                           ; $4c5b: $0d
	inc  b                                           ; $4c5c: $04
	sbc  [hl]                                        ; $4c5d: $9e
	ld   e, a                                        ; $4c5e: $5f
	adc  h                                           ; $4c5f: $8c
	ld   h, a                                        ; $4c60: $67
	ld   a, h                                        ; $4c61: $7c
	sub  [hl]                                        ; $4c62: $96
	sbc  a                                           ; $4c63: $9f
	dec  c                                           ; $4c64: $0d
	nop                                              ; $4c65: $00
	ld   a, [bc]                                     ; $4c66: $0a
	ld   b, $8f                                      ; $4c67: $06 $8f
	inc  c                                           ; $4c69: $0c
	rrca                                             ; $4c6a: $0f
	nop                                              ; $4c6b: $00
	ld   bc, $6b01                                   ; $4c6c: $01 $01 $6b
	and  c                                           ; $4c6f: $a1
	ld   a, b                                        ; $4c70: $78
	ld   h, c                                        ; $4c71: $61
	adc  h                                           ; $4c72: $8c
	ld   e, c                                        ; $4c73: $59
	ld   d, d                                        ; $4c74: $52
	ld   h, c                                        ; $4c75: $61
	halt                                             ; $4c76: $76
	ld   a, l                                        ; $4c77: $7d
	dec  c                                           ; $4c78: $0d
	ld   [bc], a                                     ; $4c79: $02
	and  c                                           ; $4c7a: $a1
	ld   a, c                                        ; $4c7b: $79
	ld   l, c                                        ; $4c7c: $69
	ld   l, b                                        ; $4c7d: $68
	ld   a, c                                        ; $4c7e: $79
	sbc  [hl]                                        ; $4c7f: $9e
	dec  b                                           ; $4c80: $05
	and  e                                           ; $4c81: $a3
	dec  b                                           ; $4c82: $05
	sbc  d                                           ; $4c83: $9a
	ld   a, c                                        ; $4c84: $79
	dec  c                                           ; $4c85: $0d
	ld   e, c                                        ; $4c86: $59
	add  h                                           ; $4c87: $84
	sbc  b                                           ; $4c88: $98
	ld   [hl], d                                     ; $4c89: $72
	ld   e, e                                        ; $4c8a: $5b
	adc  h                                           ; $4c8b: $8c
	ld   h, a                                        ; $4c8c: $67
	sbc  a                                           ; $4c8d: $9f
	dec  c                                           ; $4c8e: $0d
	nop                                              ; $4c8f: $00
	ld   a, [bc]                                     ; $4c90: $0a
	inc  e                                           ; $4c91: $1c
	ld   [bc], a                                     ; $4c92: $02
	ld   [bc], a                                     ; $4c93: $02
	ld   [bc], a                                     ; $4c94: $02
	ld   bc, $f5ac                                   ; $4c95: $01 $ac $f5
	bit  4, e                                        ; $4c98: $cb $63
	and  c                                           ; $4c9a: $a1
	ld   h, [hl]                                     ; $4c9b: $66
	sub  c                                           ; $4c9c: $91
	ld   a, b                                        ; $4c9d: $78
	ld   d, d                                        ; $4c9e: $52
	ld   [hl], l                                     ; $4c9f: $75
	ld   h, a                                        ; $4ca0: $67
	ld   a, h                                        ; $4ca1: $7c
	sub  [hl]                                        ; $4ca2: $96
	sbc  a                                           ; $4ca3: $9f
	dec  c                                           ; $4ca4: $0d
	inc  bc                                          ; $4ca5: $03
	ld   l, d                                        ; $4ca6: $6a
	add  a                                           ; $4ca7: $87
	inc  b                                           ; $4ca8: $04
	sub  d                                           ; $4ca9: $92
	ld   a, l                                        ; $4caa: $7d
	ld   [bc], a                                     ; $4cab: $02
	jr   nz, jr_053_4cb0                             ; $4cac: $20 $02

	xor  [hl]                                        ; $4cae: $ae
	inc  b                                           ; $4caf: $04

jr_053_4cb0:
	sbc  [hl]                                        ; $4cb0: $9e
	ld   l, b                                        ; $4cb1: $68
	ld   [hl], d                                     ; $4cb2: $72
	ld   a, c                                        ; $4cb3: $79
	dec  c                                           ; $4cb4: $0d
	inc  b                                           ; $4cb5: $04
	sbc  [hl]                                        ; $4cb6: $9e
	ld   e, a                                        ; $4cb7: $5f
	adc  h                                           ; $4cb8: $8c
	ld   h, a                                        ; $4cb9: $67
	ld   a, h                                        ; $4cba: $7c
	sbc  a                                           ; $4cbb: $9f
	dec  c                                           ; $4cbc: $0d
	nop                                              ; $4cbd: $00
	ld   a, [bc]                                     ; $4cbe: $0a
	ld   b, $8f                                      ; $4cbf: $06 $8f
	inc  c                                           ; $4cc1: $0c
	inc  e                                           ; $4cc2: $1c
	ld   [bc], a                                     ; $4cc3: $02
	rlca                                             ; $4cc4: $07
	rlca                                             ; $4cc5: $07
	ld   bc, $0205                                   ; $4cc6: $01 $05 $02
	dec  b                                           ; $4cc9: $05
	ld   de, $027d                                   ; $4cca: $11 $7d $02
	jr   nz, jr_053_4cd1                             ; $4ccd: $20 $02

	xor  [hl]                                        ; $4ccf: $ae
	inc  b                                           ; $4cd0: $04

jr_053_4cd1:
	sbc  [hl]                                        ; $4cd1: $9e
	ld   l, b                                        ; $4cd2: $68
	ld   [hl], d                                     ; $4cd3: $72
	ld   a, c                                        ; $4cd4: $79
	inc  b                                           ; $4cd5: $04
	sbc  [hl]                                        ; $4cd6: $9e
	ld   e, a                                        ; $4cd7: $5f
	adc  h                                           ; $4cd8: $8c
	ld   h, a                                        ; $4cd9: $67
	sbc  a                                           ; $4cda: $9f
	dec  c                                           ; $4cdb: $0d
	ld   [bc], a                                     ; $4cdc: $02
	jr   nz, jr_053_4ce1                             ; $4cdd: $20 $02

	xor  [hl]                                        ; $4cdf: $ae
	inc  b                                           ; $4ce0: $04

jr_053_4ce1:
	sbc  [hl]                                        ; $4ce1: $9e
	ld   l, b                                        ; $4ce2: $68
	ld   [hl], d                                     ; $4ce3: $72
	halt                                             ; $4ce4: $76
	ld   a, l                                        ; $4ce5: $7d
	sbc  [hl]                                        ; $4ce6: $9e
	ld   d, d                                        ; $4ce7: $52
	ld   [hl], d                                     ; $4ce8: $72
	ld   [hl], l                                     ; $4ce9: $75
	sub  b                                           ; $4cea: $90
	dec  c                                           ; $4ceb: $0d
	inc  b                                           ; $4cec: $04
	sub  a                                           ; $4ced: $97
	ld   [bc], a                                     ; $4cee: $02
	jp   Jump_053_755a                               ; $4cef: $c3 $5a $75


	ld   e, e                                        ; $4cf2: $5b
	sbc  c                                           ; $4cf3: $99
	inc  b                                           ; $4cf4: $04
	sbc  [hl]                                        ; $4cf5: $9e
	dec  b                                           ; $4cf6: $05
	ld   h, [hl]                                     ; $4cf7: $66
	ld   [hl], l                                     ; $4cf8: $75
	ld   h, a                                        ; $4cf9: $67
	ld   a, h                                        ; $4cfa: $7c
	sub  [hl]                                        ; $4cfb: $96
	sbc  a                                           ; $4cfc: $9f
	dec  c                                           ; $4cfd: $0d
	nop                                              ; $4cfe: $00
	ld   a, [bc]                                     ; $4cff: $0a
	inc  e                                           ; $4d00: $1c
	ld   [bc], a                                     ; $4d01: $02
	nop                                              ; $4d02: $00
	nop                                              ; $4d03: $00
	ld   bc, $6803                                   ; $4d04: $01 $03 $68
	ld   a, c                                        ; $4d07: $79
	sbc  [hl]                                        ; $4d08: $9e
	inc  bc                                          ; $4d09: $03
	ld   l, d                                        ; $4d0a: $6a
	ld   [bc], a                                     ; $4d0b: $02
	jp   $0b04                                       ; $4d0c: $c3 $04 $0b


	ld   a, l                                        ; $4d0f: $7d
	res  4, l                                        ; $4d10: $cb $a5
	sub  $76                                         ; $4d12: $d6 $76
	dec  c                                           ; $4d14: $0d
	sub  $aa                                         ; $4d15: $d6 $aa
	ei                                               ; $4d17: $fb
	or   b                                           ; $4d18: $b0
	ld   a, l                                        ; $4d19: $7d
	ld   [hl], a                                     ; $4d1a: $77
	ld   a, h                                        ; $4d1b: $7c
	sub  [hl]                                        ; $4d1c: $96
	ld   d, h                                        ; $4d1d: $54
	ld   a, c                                        ; $4d1e: $79
	dec  c                                           ; $4d1f: $0d
	inc  b                                           ; $4d20: $04
	jr   z, jr_053_4d75                              ; $4d21: $28 $52

	ld   [hl], h                                     ; $4d23: $74
	ld   e, b                                        ; $4d24: $58
	ld   e, e                                        ; $4d25: $5b
	adc  h                                           ; $4d26: $8c
	ld   h, a                                        ; $4d27: $67
	ld   e, c                                        ; $4d28: $59
	ld   sp, hl                                      ; $4d29: $f9
	dec  c                                           ; $4d2a: $0d
	nop                                              ; $4d2b: $00
	ld   a, [bc]                                     ; $4d2c: $0a
	add  hl, de                                      ; $4d2d: $19
	dec  b                                           ; $4d2e: $05
	inc  bc                                          ; $4d2f: $03
	inc  b                                           ; $4d30: $04
	ld   a, [hl]                                     ; $4d31: $7e
	ld   a, h                                        ; $4d32: $7c
	inc  bc                                          ; $4d33: $03
	sbc  h                                           ; $4d34: $9c
	ld   a, c                                        ; $4d35: $79
	inc  b                                           ; $4d36: $04
	jr   z, jr_053_4d96                              ; $4d37: $28 $5d

	nop                                              ; $4d39: $00
	nop                                              ; $4d3a: $00
	ld   l, e                                        ; $4d3b: $6b
	sbc  e                                           ; $4d3c: $9b
	ld   d, [hl]                                     ; $4d3d: $56
	ld   [hl], h                                     ; $4d3e: $74
	inc  b                                           ; $4d3f: $04
	jr   z, jr_053_4d9f                              ; $4d40: $28 $5d

	nop                                              ; $4d42: $00
	ld   bc, $a197                                   ; $4d43: $01 $97 $a1
	ld   h, h                                        ; $4d46: $64
	ld   [hl], d                                     ; $4d47: $72
	ld   a, c                                        ; $4d48: $79
	inc  b                                           ; $4d49: $04
	jr   z, @+$5f                                    ; $4d4a: $28 $5d

	nop                                              ; $4d4c: $00
	ld   [bc], a                                     ; $4d4d: $02
	rlca                                             ; $4d4e: $07
	ei                                               ; $4d4f: $fb
	inc  c                                           ; $4d50: $0c
	ld   [bc], a                                     ; $4d51: $02
	inc  bc                                          ; $4d52: $03
	ld   bc, $2000                                   ; $4d53: $01 $00 $20
	nop                                              ; $4d56: $00
	rlca                                             ; $4d57: $07
	ld   c, d                                        ; $4d58: $4a
	dec  c                                           ; $4d59: $0d
	ld   [bc], a                                     ; $4d5a: $02
	inc  bc                                          ; $4d5b: $03
	ld   bc, $2001                                   ; $4d5c: $01 $01 $20
	nop                                              ; $4d5f: $00
	rlca                                             ; $4d60: $07
	adc  a                                           ; $4d61: $8f
	dec  c                                           ; $4d62: $0d
	ld   [bc], a                                     ; $4d63: $02
	inc  bc                                          ; $4d64: $03
	ld   bc, $2002                                   ; $4d65: $01 $02 $20
	nop                                              ; $4d68: $00
	ld   b, $d4                                      ; $4d69: $06 $d4
	dec  c                                           ; $4d6b: $0d
	rrca                                             ; $4d6c: $0f
	nop                                              ; $4d6d: $00
	ld   bc, $0401                                   ; $4d6e: $01 $01 $04
	ld   a, [hl]                                     ; $4d71: $7e
	ld   a, h                                        ; $4d72: $7c
	inc  bc                                          ; $4d73: $03
	sbc  h                                           ; $4d74: $9c

jr_053_4d75:
	ld   a, c                                        ; $4d75: $79
	inc  b                                           ; $4d76: $04
	jr   z, jr_053_4dd4                              ; $4d77: $28 $5b

	adc  h                                           ; $4d79: $8c
	ld   h, a                                        ; $4d7a: $67
	sbc  a                                           ; $4d7b: $9f
	dec  c                                           ; $4d7c: $0d
	nop                                              ; $4d7d: $00
	ld   a, [bc]                                     ; $4d7e: $0a
	inc  e                                           ; $4d7f: $1c
	ld   [bc], a                                     ; $4d80: $02
	ld   bc, $0101                                   ; $4d81: $01 $01 $01
	ld   l, e                                        ; $4d84: $6b
	ld   d, h                                        ; $4d85: $54
	ld   l, e                                        ; $4d86: $6b
	ld   d, h                                        ; $4d87: $54
	sbc  [hl]                                        ; $4d88: $9e
	res  4, l                                        ; $4d89: $cb $a5
	sub  $76                                         ; $4d8b: $d6 $76
	sub  $aa                                         ; $4d8d: $d6 $aa
	ei                                               ; $4d8f: $fb
	or   b                                           ; $4d90: $b0
	ld   a, l                                        ; $4d91: $7d
	dec  c                                           ; $4d92: $0d
	inc  bc                                          ; $4d93: $03
	ld   l, d                                        ; $4d94: $6a
	ld   [bc], a                                     ; $4d95: $02

jr_053_4d96:
	jp   $0b04                                       ; $4d96: $c3 $04 $0b


	ld   a, b                                        ; $4d99: $78
	sub  a                                           ; $4d9a: $97
	inc  b                                           ; $4d9b: $04
	ld   a, [hl]                                     ; $4d9c: $7e
	ld   a, h                                        ; $4d9d: $7c
	inc  bc                                          ; $4d9e: $03

jr_053_4d9f:
	sbc  h                                           ; $4d9f: $9c
	ld   a, c                                        ; $4da0: $79
	dec  c                                           ; $4da1: $0d
	nop                                              ; $4da2: $00
	dec  b                                           ; $4da3: $05
	ld   b, b                                        ; $4da4: $40
	rst  $38                                         ; $4da5: $ff
	inc  bc                                          ; $4da6: $03
	rst  $38                                         ; $4da7: $ff
	ld   bc, $2801                                   ; $4da8: $01 $01 $28
	nop                                              ; $4dab: $00
	ld   bc, $2804                                   ; $4dac: $01 $04 $28
	ld   e, e                                        ; $4daf: $5b
	adc  h                                           ; $4db0: $8c
	ld   h, a                                        ; $4db1: $67
	ld   a, h                                        ; $4db2: $7c
	sub  [hl]                                        ; $4db3: $96
	sbc  a                                           ; $4db4: $9f
	dec  c                                           ; $4db5: $0d
	nop                                              ; $4db6: $00
	ld   a, [bc]                                     ; $4db7: $0a
	ld   b, $fd                                      ; $4db8: $06 $fd
	dec  c                                           ; $4dba: $0d
	rrca                                             ; $4dbb: $0f
	nop                                              ; $4dbc: $00
	ld   bc, $6b01                                   ; $4dbd: $01 $01 $6b
	sbc  e                                           ; $4dc0: $9b
	ld   d, [hl]                                     ; $4dc1: $56
	ld   [hl], h                                     ; $4dc2: $74
	inc  b                                           ; $4dc3: $04
	jr   z, @+$5d                                    ; $4dc4: $28 $5b

	adc  h                                           ; $4dc6: $8c
	ld   h, a                                        ; $4dc7: $67
	sbc  a                                           ; $4dc8: $9f
	dec  c                                           ; $4dc9: $0d
	nop                                              ; $4dca: $00
	ld   a, [bc]                                     ; $4dcb: $0a
	inc  e                                           ; $4dcc: $1c
	ld   [bc], a                                     ; $4dcd: $02
	dec  b                                           ; $4dce: $05
	dec  b                                           ; $4dcf: $05
	ld   bc, $5a6f                                   ; $4dd0: $01 $6f $5a
	ld   d, d                                        ; $4dd3: $52

jr_053_4dd4:
	adc  h                                           ; $4dd4: $8c
	ld   h, a                                        ; $4dd5: $67
	sbc  l                                           ; $4dd6: $9d
	sbc  a                                           ; $4dd7: $9f
	dec  c                                           ; $4dd8: $0d
	res  4, l                                        ; $4dd9: $cb $a5
	sub  $76                                         ; $4ddb: $d6 $76
	sub  $aa                                         ; $4ddd: $d6 $aa
	ei                                               ; $4ddf: $fb
	or   b                                           ; $4de0: $b0
	ld   a, l                                        ; $4de1: $7d
	sbc  [hl]                                        ; $4de2: $9e
	inc  bc                                          ; $4de3: $03
	ld   l, d                                        ; $4de4: $6a
	ld   [bc], a                                     ; $4de5: $02
	jp   $0b04                                       ; $4de6: $c3 $04 $0b


	dec  c                                           ; $4de9: $0d
	ld   a, b                                        ; $4dea: $78
	sub  a                                           ; $4deb: $97
	inc  b                                           ; $4dec: $04
	ld   a, [hl]                                     ; $4ded: $7e
	ld   a, h                                        ; $4dee: $7c
	inc  bc                                          ; $4def: $03
	sbc  h                                           ; $4df0: $9c
	ld   a, c                                        ; $4df1: $79
	inc  b                                           ; $4df2: $04
	jr   z, jr_053_4e50                              ; $4df3: $28 $5b

	adc  h                                           ; $4df5: $8c
	ld   h, a                                        ; $4df6: $67
	ld   a, h                                        ; $4df7: $7c
	sub  [hl]                                        ; $4df8: $96
	sbc  a                                           ; $4df9: $9f
	dec  c                                           ; $4dfa: $0d
	nop                                              ; $4dfb: $00
	ld   a, [bc]                                     ; $4dfc: $0a
	ld   b, $fd                                      ; $4dfd: $06 $fd
	dec  c                                           ; $4dff: $0d
	rrca                                             ; $4e00: $0f
	nop                                              ; $4e01: $00
	ld   bc, $9701                                   ; $4e02: $01 $01 $97
	and  c                                           ; $4e05: $a1
	ld   h, h                                        ; $4e06: $64
	ld   [hl], d                                     ; $4e07: $72
	ld   a, c                                        ; $4e08: $79
	inc  b                                           ; $4e09: $04
	jr   z, jr_053_4e67                              ; $4e0a: $28 $5b

	adc  h                                           ; $4e0c: $8c
	ld   h, a                                        ; $4e0d: $67
	sbc  a                                           ; $4e0e: $9f
	dec  c                                           ; $4e0f: $0d
	nop                                              ; $4e10: $00
	ld   a, [bc]                                     ; $4e11: $0a
	inc  e                                           ; $4e12: $1c
	ld   [bc], a                                     ; $4e13: $02
	ld   [bc], a                                     ; $4e14: $02
	ld   [bc], a                                     ; $4e15: $02
	ld   bc, $e3c1                                   ; $4e16: $01 $c1 $e3
	ld   [hl], l                                     ; $4e19: $75
	ld   h, a                                        ; $4e1a: $67
	sbc  l                                           ; $4e1b: $9d
	ld   a, [$cb0d]                                  ; $4e1c: $fa $0d $cb
	and  l                                           ; $4e1f: $a5
	sub  $76                                         ; $4e20: $d6 $76
	sub  $aa                                         ; $4e22: $d6 $aa
	ei                                               ; $4e24: $fb
	or   b                                           ; $4e25: $b0
	ld   a, l                                        ; $4e26: $7d
	sbc  [hl]                                        ; $4e27: $9e
	inc  bc                                          ; $4e28: $03
	ld   l, d                                        ; $4e29: $6a
	ld   [bc], a                                     ; $4e2a: $02
	jp   $0b04                                       ; $4e2b: $c3 $04 $0b


	dec  c                                           ; $4e2e: $0d
	ld   a, b                                        ; $4e2f: $78
	sub  a                                           ; $4e30: $97
	inc  b                                           ; $4e31: $04
	ld   a, [hl]                                     ; $4e32: $7e
	ld   a, h                                        ; $4e33: $7c
	inc  bc                                          ; $4e34: $03
	sbc  h                                           ; $4e35: $9c
	ld   a, c                                        ; $4e36: $79
	inc  b                                           ; $4e37: $04
	jr   z, jr_053_4e95                              ; $4e38: $28 $5b

	adc  h                                           ; $4e3a: $8c
	ld   h, a                                        ; $4e3b: $67
	ld   a, h                                        ; $4e3c: $7c
	sub  [hl]                                        ; $4e3d: $96
	sbc  a                                           ; $4e3e: $9f
	dec  c                                           ; $4e3f: $0d
	nop                                              ; $4e40: $00
	ld   a, [bc]                                     ; $4e41: $0a
	ld   b, $fd                                      ; $4e42: $06 $fd
	dec  c                                           ; $4e44: $0d
	inc  e                                           ; $4e45: $1c
	ld   [bc], a                                     ; $4e46: $02
	rlca                                             ; $4e47: $07
	rlca                                             ; $4e48: $07
	ld   bc, $a5cb                                   ; $4e49: $01 $cb $a5
	sub  $76                                         ; $4e4c: $d6 $76
	sub  $aa                                         ; $4e4e: $d6 $aa

jr_053_4e50:
	ei                                               ; $4e50: $fb
	or   b                                           ; $4e51: $b0
	ld   a, l                                        ; $4e52: $7d
	sbc  [hl]                                        ; $4e53: $9e
	inc  bc                                          ; $4e54: $03
	ld   l, d                                        ; $4e55: $6a
	ld   [bc], a                                     ; $4e56: $02
	jp   $0b04                                       ; $4e57: $c3 $04 $0b


	dec  c                                           ; $4e5a: $0d
	ld   a, b                                        ; $4e5b: $78
	sub  a                                           ; $4e5c: $97
	inc  b                                           ; $4e5d: $04
	ld   a, [hl]                                     ; $4e5e: $7e
	ld   a, h                                        ; $4e5f: $7c
	inc  bc                                          ; $4e60: $03
	sbc  h                                           ; $4e61: $9c
	ld   a, c                                        ; $4e62: $79
	inc  b                                           ; $4e63: $04
	jr   z, jr_053_4ec1                              ; $4e64: $28 $5b

	adc  h                                           ; $4e66: $8c

jr_053_4e67:
	ld   h, a                                        ; $4e67: $67
	ld   a, h                                        ; $4e68: $7c
	sub  [hl]                                        ; $4e69: $96
	sbc  a                                           ; $4e6a: $9f
	dec  c                                           ; $4e6b: $0d
	nop                                              ; $4e6c: $00
	ld   a, [bc]                                     ; $4e6d: $0a
	inc  e                                           ; $4e6e: $1c
	ld   [bc], a                                     ; $4e6f: $02
	nop                                              ; $4e70: $00
	nop                                              ; $4e71: $00
	ld   bc, $7d75                                   ; $4e72: $01 $75 $7d
	sbc  [hl]                                        ; $4e75: $9e
	inc  bc                                          ; $4e76: $03
	ld   l, c                                        ; $4e77: $69
	ld   [bc], a                                     ; $4e78: $02
	xor  d                                           ; $4e79: $aa
	ld   a, h                                        ; $4e7a: $7c
	xor  $c4                                         ; $4e7b: $ee $c4
	cp   d                                           ; $4e7d: $ba
	push af                                          ; $4e7e: $f5
	ld   [hl], l                                     ; $4e7f: $75
	ld   h, a                                        ; $4e80: $67
	sbc  a                                           ; $4e81: $9f
	dec  c                                           ; $4e82: $0d
	inc  bc                                          ; $4e83: $03
	adc  e                                           ; $4e84: $8b
	dec  b                                           ; $4e85: $05
	ld   c, b                                        ; $4e86: $48
	ld   a, h                                        ; $4e87: $7c
	inc  bc                                          ; $4e88: $03
	ld   l, d                                        ; $4e89: $6a
	add  a                                           ; $4e8a: $87
	inc  b                                           ; $4e8b: $04
	ld   a, b                                        ; $4e8c: $78
	and  b                                           ; $4e8d: $a0
	ld   [bc], a                                     ; $4e8e: $02
	ret  nc                                          ; $4e8f: $d0

	ld   d, [hl]                                     ; $4e90: $56
	adc  h                                           ; $4e91: $8c
	ld   h, a                                        ; $4e92: $67
	sbc  l                                           ; $4e93: $9d
	sbc  a                                           ; $4e94: $9f

jr_053_4e95:
	dec  c                                           ; $4e95: $0d
	nop                                              ; $4e96: $00
	ld   a, [bc]                                     ; $4e97: $0a
	ld   b, $2a                                      ; $4e98: $06 $2a
	ld   c, $0d                                      ; $4e9a: $0e $0d
	nop                                              ; $4e9c: $00
	nop                                              ; $4e9d: $00
	rrca                                             ; $4e9e: $0f
	nop                                              ; $4e9f: $00
	ld   bc, $0b0c                                   ; $4ea0: $01 $0c $0b
	inc  e                                           ; $4ea3: $1c
	ld   [bc], a                                     ; $4ea4: $02
	ld   bc, $0101                                   ; $4ea5: $01 $01 $01
	cp   d                                           ; $4ea8: $ba
	ei                                               ; $4ea9: $fb
	ret  c                                           ; $4eaa: $d8

	ld   a, l                                        ; $4eab: $7d
	sbc  [hl]                                        ; $4eac: $9e
	cp   d                                           ; $4ead: $ba
	ei                                               ; $4eae: $fb
	ret  c                                           ; $4eaf: $d8

	inc  b                                           ; $4eb0: $04
	ld   d, l                                        ; $4eb1: $55
	ld   a, c                                        ; $4eb2: $79
	inc  bc                                          ; $4eb3: $03
	ld   h, b                                        ; $4eb4: $60
	inc  bc                                          ; $4eb5: $03
	ld   l, e                                        ; $4eb6: $6b
	and  b                                           ; $4eb7: $a0
	dec  c                                           ; $4eb8: $0d
	ld   l, e                                        ; $4eb9: $6b
	ld   d, [hl]                                     ; $4eba: $56
	sbc  [hl]                                        ; $4ebb: $9e
	ld   [bc], a                                     ; $4ebc: $02
	inc  e                                           ; $4ebd: $1c
	inc  bc                                          ; $4ebe: $03
	ld   l, e                                        ; $4ebf: $6b
	ld   a, c                                        ; $4ec0: $79

jr_053_4ec1:
	inc  bc                                          ; $4ec1: $03
	and  b                                           ; $4ec2: $a0
	ld   [hl], c                                     ; $4ec3: $71
	ld   l, l                                        ; $4ec4: $6d
	cp   d                                           ; $4ec5: $ba
	ret  c                                           ; $4ec6: $d8

	ei                                               ; $4ec7: $fb
	push af                                          ; $4ec8: $f5
	and  b                                           ; $4ec9: $a0
	dec  c                                           ; $4eca: $0d
	ld   a, [bc]                                     ; $4ecb: $0a
	ld   [bc], a                                     ; $4ecc: $02
	inc  bc                                          ; $4ecd: $03
	ld   l, e                                        ; $4ece: $6b
	inc  bc                                          ; $4ecf: $03
	ld   c, a                                        ; $4ed0: $4f
	ld   e, c                                        ; $4ed1: $59
	sub  a                                           ; $4ed2: $97
	ld   [bc], a                                     ; $4ed3: $02
	jp   nc, Jump_053_5461                           ; $4ed4: $d2 $61 $54

	add  [hl]                                        ; $4ed7: $86
	ld   h, a                                        ; $4ed8: $67
	ld   e, l                                        ; $4ed9: $5d
	ld   d, d                                        ; $4eda: $52
	ld   a, [bc]                                     ; $4edb: $0a
	inc  bc                                          ; $4edc: $03
	sbc  [hl]                                        ; $4edd: $9e
	dec  c                                           ; $4ede: $0d
	nop                                              ; $4edf: $00
	ld   a, [bc]                                     ; $4ee0: $0a
	ld   bc, $0302                                   ; $4ee1: $01 $02 $03
	and  b                                           ; $4ee4: $a0
	ld   l, l                                        ; $4ee5: $6d
	ld   [hl], h                                     ; $4ee6: $74
	ld   a, b                                        ; $4ee7: $78
	ld   d, d                                        ; $4ee8: $52
	sub  [hl]                                        ; $4ee9: $96
	ld   d, h                                        ; $4eea: $54
	ld   a, c                                        ; $4eeb: $79
	dec  c                                           ; $4eec: $0d
	ld   d, d                                        ; $4eed: $52
	ld   l, l                                        ; $4eee: $6d
	ld   l, [hl]                                     ; $4eef: $6e
	ld   e, e                                        ; $4ef0: $5b
	adc  h                                           ; $4ef1: $8c
	ld   h, a                                        ; $4ef2: $67
	ld   a, h                                        ; $4ef3: $7c
	sub  [hl]                                        ; $4ef4: $96
	sbc  a                                           ; $4ef5: $9f
	dec  c                                           ; $4ef6: $0d
	nop                                              ; $4ef7: $00
	ld   a, [bc]                                     ; $4ef8: $0a
	ld   bc, $5a05                                   ; $4ef9: $01 $05 $5a
	inc  bc                                          ; $4efc: $03
	ret  c                                           ; $4efd: $d8

	ld   [hl], d                                     ; $4efe: $72
	ld   e, e                                        ; $4eff: $5b
	ld   a, h                                        ; $4f00: $7c
	ld   e, b                                        ; $4f01: $58
	dec  b                                           ; $4f02: $05
	dec  [hl]                                        ; $4f03: $35
	ld   a, h                                        ; $4f04: $7c
	inc  b                                           ; $4f05: $04
	ld   a, d                                        ; $4f06: $7a
	ld   [bc], a                                     ; $4f07: $02
	ld   a, e                                        ; $4f08: $7b
	ld   a, l                                        ; $4f09: $7d
	sbc  [hl]                                        ; $4f0a: $9e
	dec  c                                           ; $4f0b: $0d
	ld   a, [bc]                                     ; $4f0c: $0a
	ld   [bc], a                                     ; $4f0d: $02
	adc  h                                           ; $4f0e: $8c
	ld   l, b                                        ; $4f0f: $68
	inc  bc                                          ; $4f10: $03
	ld   h, l                                        ; $4f11: $65
	dec  b                                           ; $4f12: $05
	ld   c, c                                        ; $4f13: $49
	ld   a, h                                        ; $4f14: $7c
	inc  b                                           ; $4f15: $04
	pop  de                                          ; $4f16: $d1
	and  b                                           ; $4f17: $a0
	dec  b                                           ; $4f18: $05
	ld   [hl], $59                                   ; $4f19: $36 $59
	sub  a                                           ; $4f1b: $97
	ld   a, l                                        ; $4f1c: $7d
	ld   a, b                                        ; $4f1d: $78
	ld   h, l                                        ; $4f1e: $65
	ld   [hl], h                                     ; $4f1f: $74
	ld   a, [bc]                                     ; $4f20: $0a
	inc  bc                                          ; $4f21: $03
	dec  c                                           ; $4f22: $0d
	ld   d, d                                        ; $4f23: $52
	ld   l, l                                        ; $4f24: $6d
	ld   l, [hl]                                     ; $4f25: $6e
	ld   e, e                                        ; $4f26: $5b
	adc  h                                           ; $4f27: $8c
	ld   h, a                                        ; $4f28: $67
	sbc  a                                           ; $4f29: $9f
	dec  c                                           ; $4f2a: $0d
	nop                                              ; $4f2b: $00
	ld   a, [bc]                                     ; $4f2c: $0a
	ld   bc, $3402                                   ; $4f2d: $01 $02 $34
	dec  b                                           ; $4f30: $05
	ld   c, c                                        ; $4f31: $49
	ld   a, h                                        ; $4f32: $7c
	inc  b                                           ; $4f33: $04
	pop  de                                          ; $4f34: $d1
	and  b                                           ; $4f35: $a0
	inc  bc                                          ; $4f36: $03
	ld   l, d                                        ; $4f37: $6a
	add  a                                           ; $4f38: $87
	sbc  c                                           ; $4f39: $99
	inc  bc                                          ; $4f3a: $03
	ld   l, a                                        ; $4f3b: $6f
	ld   a, c                                        ; $4f3c: $79
	ld   a, l                                        ; $4f3d: $7d
	sbc  [hl]                                        ; $4f3e: $9e
	dec  c                                           ; $4f3f: $0d
	ld   [bc], a                                     ; $4f40: $02
	add  e                                           ; $4f41: $83
	ld   h, l                                        ; $4f42: $65
	ld   [hl], h                                     ; $4f43: $74
	dec  b                                           ; $4f44: $05
	dec  [hl]                                        ; $4f45: $35
	and  b                                           ; $4f46: $a0
	dec  b                                           ; $4f47: $05
	ld   h, l                                        ; $4f48: $65
	inc  b                                           ; $4f49: $04
	sub  a                                           ; $4f4a: $97
	ld   h, l                                        ; $4f4b: $65
	ld   [hl], h                                     ; $4f4c: $74
	dec  c                                           ; $4f4d: $0d
	inc  bc                                          ; $4f4e: $03
	ld   l, d                                        ; $4f4f: $6a
	add  a                                           ; $4f50: $87
	ld   [hl], h                                     ; $4f51: $74
	ld   a, l                                        ; $4f52: $7d
	ld   d, d                                        ; $4f53: $52
	ld   e, a                                        ; $4f54: $5f
	adc  h                                           ; $4f55: $8c
	ld   l, c                                        ; $4f56: $69
	and  c                                           ; $4f57: $a1
	sbc  a                                           ; $4f58: $9f
	dec  c                                           ; $4f59: $0d
	nop                                              ; $4f5a: $00
	ld   a, [bc]                                     ; $4f5b: $0a
	ld   bc, $3605                                   ; $4f5c: $01 $05 $36
	and  b                                           ; $4f5f: $a0
	inc  bc                                          ; $4f60: $03
	jr   @-$66                                       ; $4f61: $18 $98

	inc  bc                                          ; $4f63: $03
	adc  b                                           ; $4f64: $88
	ld   e, e                                        ; $4f65: $5b
	sbc  [hl]                                        ; $4f66: $9e
	inc  b                                           ; $4f67: $04
	pop  de                                          ; $4f68: $d1
	and  b                                           ; $4f69: $a0
	adc  h                                           ; $4f6a: $8c
	halt                                             ; $4f6b: $76
	adc  a                                           ; $4f6c: $8f
	ld   [hl], h                                     ; $4f6d: $74
	dec  c                                           ; $4f6e: $0d
	ld   [bc], a                                     ; $4f6f: $02
	jr   nz, jr_053_4f74                             ; $4f70: $20 $02

	xor  [hl]                                        ; $4f72: $ae
	ld   l, b                                        ; $4f73: $68

jr_053_4f74:
	ld   [hl], d                                     ; $4f74: $72
	inc  bc                                          ; $4f75: $03
	dec  de                                          ; $4f76: $1b
	ld   [hl], c                                     ; $4f77: $71
	ld   [hl], h                                     ; $4f78: $74
	ld   d, d                                        ; $4f79: $52
	ld   l, l                                        ; $4f7a: $6d
	ld   l, [hl]                                     ; $4f7b: $6e
	ld   e, e                                        ; $4f7c: $5b
	adc  h                                           ; $4f7d: $8c
	ld   h, a                                        ; $4f7e: $67
	dec  c                                           ; $4f7f: $0d
	ld   a, h                                        ; $4f80: $7c
	sub  [hl]                                        ; $4f81: $96
	sbc  a                                           ; $4f82: $9f
	dec  c                                           ; $4f83: $0d
	nop                                              ; $4f84: $00
	ld   a, [bc]                                     ; $4f85: $0a
	ld   bc, $0458                                   ; $4f86: $01 $58 $04
	ccf                                              ; $4f89: $3f
	ld   a, l                                        ; $4f8a: $7d
	inc  bc                                          ; $4f8b: $03
	ld   l, c                                        ; $4f8c: $69
	inc  bc                                          ; $4f8d: $03
	inc  c                                           ; $4f8e: $0c
	ld   a, c                                        ; $4f8f: $79
	inc  bc                                          ; $4f90: $03
	ld   d, a                                        ; $4f91: $57
	inc  b                                           ; $4f92: $04
	sub  l                                           ; $4f93: $95
	inc  bc                                          ; $4f94: $03
	dec  de                                          ; $4f95: $1b
	ld   [hl], c                                     ; $4f96: $71
	ld   [hl], h                                     ; $4f97: $74
	ld   h, l                                        ; $4f98: $65
	adc  h                                           ; $4f99: $8c
	sbc  l                                           ; $4f9a: $9d
	dec  c                                           ; $4f9b: $0d
	ld   l, b                                        ; $4f9c: $68
	ld   a, c                                        ; $4f9d: $79
	sbc  [hl]                                        ; $4f9e: $9e
	ld   a, [bc]                                     ; $4f9f: $0a
	ld   [bc], a                                     ; $4fa0: $02
	inc  bc                                          ; $4fa1: $03
	ld   h, b                                        ; $4fa2: $60
	dec  b                                           ; $4fa3: $05
	ld   c, c                                        ; $4fa4: $49
	sub  [hl]                                        ; $4fa5: $96
	sbc  b                                           ; $4fa6: $98
	ld   a, [bc]                                     ; $4fa7: $0a
	inc  bc                                          ; $4fa8: $03
	ld   [bc], a                                     ; $4fa9: $02
	jr   nz, jr_053_4fae                             ; $4faa: $20 $02

	xor  [hl]                                        ; $4fac: $ae
	ld   l, b                                        ; $4fad: $68

jr_053_4fae:
	ld   [hl], d                                     ; $4fae: $72
	inc  bc                                          ; $4faf: $03
	dec  de                                          ; $4fb0: $1b
	ld   [hl], c                                     ; $4fb1: $71
	ld   [hl], h                                     ; $4fb2: $74
	dec  c                                           ; $4fb3: $0d
	ld   d, d                                        ; $4fb4: $52
	ld   l, l                                        ; $4fb5: $6d
	ld   l, [hl]                                     ; $4fb6: $6e
	ld   e, e                                        ; $4fb7: $5b
	adc  h                                           ; $4fb8: $8c
	ld   h, a                                        ; $4fb9: $67
	ld   a, h                                        ; $4fba: $7c
	sbc  a                                           ; $4fbb: $9f
	dec  c                                           ; $4fbc: $0d
	nop                                              ; $4fbd: $00
	ld   a, [bc]                                     ; $4fbe: $0a
	ld   bc, $fbbe                                   ; $4fbf: $01 $be $fb
	cp   d                                           ; $4fc2: $ba
	ld   a, l                                        ; $4fc3: $7d
	inc  bc                                          ; $4fc4: $03
	ld   d, a                                        ; $4fc5: $57
	inc  b                                           ; $4fc6: $04
	dec  c                                           ; $4fc7: $0d
	ld   a, c                                        ; $4fc8: $79
	ld   e, c                                        ; $4fc9: $59
	ld   e, a                                        ; $4fca: $5f
	ld   a, b                                        ; $4fcb: $78
	ld   d, d                                        ; $4fcc: $52
	ld   [hl], l                                     ; $4fcd: $75
	sbc  [hl]                                        ; $4fce: $9e
	dec  c                                           ; $4fcf: $0d
	ld   [bc], a                                     ; $4fd0: $02
	jr   nz, jr_053_4fd7                             ; $4fd1: $20 $04

	sub  l                                           ; $4fd3: $95
	ld   a, c                                        ; $4fd4: $79
	ld   l, [hl]                                     ; $4fd5: $6e
	ld   e, a                                        ; $4fd6: $5f

jr_053_4fd7:
	ld   e, c                                        ; $4fd7: $59
	ld   e, a                                        ; $4fd8: $5f
	sbc  c                                           ; $4fd9: $99
	sub  [hl]                                        ; $4fda: $96
	ld   d, h                                        ; $4fdb: $54
	ld   a, c                                        ; $4fdc: $79
	dec  c                                           ; $4fdd: $0d
	ld   h, a                                        ; $4fde: $67
	sbc  c                                           ; $4fdf: $99
	ld   a, h                                        ; $4fe0: $7c
	ld   e, d                                        ; $4fe1: $5a
	rst  JumpTable                                         ; $4fe2: $df
	set  7, e                                        ; $4fe3: $cb $fb
	ld   [hl], l                                     ; $4fe5: $75
	ld   h, a                                        ; $4fe6: $67
	sbc  l                                           ; $4fe7: $9d
	sbc  a                                           ; $4fe8: $9f
	dec  c                                           ; $4fe9: $0d
	nop                                              ; $4fea: $00
	ld   a, [bc]                                     ; $4feb: $0a
	inc  e                                           ; $4fec: $1c
	ld   [bc], a                                     ; $4fed: $02
	nop                                              ; $4fee: $00
	nop                                              ; $4fef: $00
	ld   bc, $7d75                                   ; $4ff0: $01 $75 $7d
	sbc  [hl]                                        ; $4ff3: $9e
	ld   e, b                                        ; $4ff4: $58
	ld   h, e                                        ; $4ff5: $63
	sub  a                                           ; $4ff6: $97
	ld   d, d                                        ; $4ff7: $52
	ld   h, l                                        ; $4ff8: $65
	adc  h                                           ; $4ff9: $8c
	ld   h, l                                        ; $4ffa: $65
	sub  l                                           ; $4ffb: $95
	ld   d, h                                        ; $4ffc: $54
	sbc  a                                           ; $4ffd: $9f
	dec  c                                           ; $4ffe: $0d
	nop                                              ; $4fff: $00
	ld   a, [bc]                                     ; $5000: $0a
	ld   bc, $fbba                                   ; $5001: $01 $ba $fb
	ret  c                                           ; $5004: $d8

	ld   a, l                                        ; $5005: $7d
	ld   [hl], a                                     ; $5006: $77
	ld   a, h                                        ; $5007: $7c
	sub  [hl]                                        ; $5008: $96
	ld   d, h                                        ; $5009: $54
	ld   a, c                                        ; $500a: $79
	ld   h, l                                        ; $500b: $65
	ld   [hl], h                                     ; $500c: $74
	dec  c                                           ; $500d: $0d
	ld   h, a                                        ; $500e: $67
	ld   e, l                                        ; $500f: $5d
	ld   [hl], c                                     ; $5010: $71
	ld   [hl], h                                     ; $5011: $74
	ld   [bc], a                                     ; $5012: $02
	rlca                                             ; $5013: $07
	adc  l                                           ; $5014: $8d
	adc  h                                           ; $5015: $8c
	ld   h, a                                        ; $5016: $67
	ld   e, c                                        ; $5017: $59
	ld   sp, hl                                      ; $5018: $f9
	dec  c                                           ; $5019: $0d
	nop                                              ; $501a: $00
	ld   a, [bc]                                     ; $501b: $0a
	add  hl, de                                      ; $501c: $19
	dec  b                                           ; $501d: $05
	inc  bc                                          ; $501e: $03
	inc  bc                                          ; $501f: $03
	ld   l, e                                        ; $5020: $6b
	inc  bc                                          ; $5021: $03
	ld   c, a                                        ; $5022: $4f
	ld   e, c                                        ; $5023: $59
	sub  a                                           ; $5024: $97
	ld   [bc], a                                     ; $5025: $02
	jp   nc, Jump_053_5461                           ; $5026: $d2 $61 $54

	ld   a, c                                        ; $5029: $79
	ld   h, a                                        ; $502a: $67
	ld   e, l                                        ; $502b: $5d
	ld   d, h                                        ; $502c: $54
	nop                                              ; $502d: $00
	nop                                              ; $502e: $00
	ld   [bc], a                                     ; $502f: $02
	jp   nc, Jump_053_5461                           ; $5030: $d2 $61 $54

	ld   e, c                                        ; $5033: $59
	sub  a                                           ; $5034: $97
	inc  bc                                          ; $5035: $03
	ld   l, e                                        ; $5036: $6b
	inc  bc                                          ; $5037: $03
	ld   c, a                                        ; $5038: $4f
	ld   a, c                                        ; $5039: $79
	ld   h, a                                        ; $503a: $67
	ld   e, l                                        ; $503b: $5d
	ld   d, h                                        ; $503c: $54
	nop                                              ; $503d: $00
	ld   bc, $5504                                   ; $503e: $01 $04 $55
	ld   a, c                                        ; $5041: $79
	ld   [bc], a                                     ; $5042: $02
	xor  [hl]                                        ; $5043: $ae
	and  b                                           ; $5044: $a0
	inc  b                                           ; $5045: $04
	ld   [hl], c                                     ; $5046: $71
	ld   e, a                                        ; $5047: $5f
	ld   [hl], h                                     ; $5048: $74
	ld   [bc], a                                     ; $5049: $02
	jr   nz, jr_053_504e                             ; $504a: $20 $02

	and  c                                           ; $504c: $a1
	ld   a, c                                        ; $504d: $79

jr_053_504e:
	ld   [bc], a                                     ; $504e: $02
	rlca                                             ; $504f: $07
	adc  [hl]                                        ; $5050: $8e
	nop                                              ; $5051: $00
	ld   [bc], a                                     ; $5052: $02
	rlca                                             ; $5053: $07
	nop                                              ; $5054: $00
	db   $10                                         ; $5055: $10
	ld   [bc], a                                     ; $5056: $02
	inc  bc                                          ; $5057: $03
	ld   bc, $2000                                   ; $5058: $01 $00 $20
	nop                                              ; $505b: $00
	rlca                                             ; $505c: $07
	ld   e, b                                        ; $505d: $58
	db   $10                                         ; $505e: $10
	ld   [bc], a                                     ; $505f: $02
	inc  bc                                          ; $5060: $03
	ld   bc, $2001                                   ; $5061: $01 $01 $20
	nop                                              ; $5064: $00
	rlca                                             ; $5065: $07
	and  [hl]                                        ; $5066: $a6
	db   $10                                         ; $5067: $10
	ld   [bc], a                                     ; $5068: $02
	inc  bc                                          ; $5069: $03
	ld   bc, $2002                                   ; $506a: $01 $02 $20
	nop                                              ; $506d: $00
	ld   b, $fc                                      ; $506e: $06 $fc
	db   $10                                         ; $5070: $10
	rrca                                             ; $5071: $0f
	nop                                              ; $5072: $00
	ld   bc, $0301                                   ; $5073: $01 $01 $03
	ld   l, e                                        ; $5076: $6b
	inc  bc                                          ; $5077: $03
	ld   c, a                                        ; $5078: $4f
	ld   e, c                                        ; $5079: $59
	sub  a                                           ; $507a: $97
	ld   [bc], a                                     ; $507b: $02
	jp   nc, Jump_053_5461                           ; $507c: $d2 $61 $54

	ld   a, c                                        ; $507f: $79
	ld   h, a                                        ; $5080: $67
	ld   e, l                                        ; $5081: $5d
	ld   d, d                                        ; $5082: $52
	adc  h                                           ; $5083: $8c
	ld   h, a                                        ; $5084: $67
	sbc  a                                           ; $5085: $9f
	dec  c                                           ; $5086: $0d
	nop                                              ; $5087: $00
	ld   a, [bc]                                     ; $5088: $0a
	inc  e                                           ; $5089: $1c
	ld   [bc], a                                     ; $508a: $02
	ld   bc, $0101                                   ; $508b: $01 $01 $01
	ld   l, e                                        ; $508e: $6b
	ld   d, h                                        ; $508f: $54
	ld   [hl], l                                     ; $5090: $75
	ld   h, a                                        ; $5091: $67
	sbc  l                                           ; $5092: $9d
	sbc  a                                           ; $5093: $9f
	inc  bc                                          ; $5094: $03
	ld   l, e                                        ; $5095: $6b
	inc  bc                                          ; $5096: $03
	ld   c, a                                        ; $5097: $4f
	ld   e, c                                        ; $5098: $59
	sub  a                                           ; $5099: $97
	ld   [bc], a                                     ; $509a: $02
	jp   nc, Jump_053_5461                           ; $509b: $d2 $61 $54

	ld   a, c                                        ; $509e: $79
	dec  c                                           ; $509f: $0d
	ld   h, a                                        ; $50a0: $67
	ld   e, l                                        ; $50a1: $5d
	ld   d, d                                        ; $50a2: $52
	sbc  [hl]                                        ; $50a3: $9e
	ld   [bc], a                                     ; $50a4: $02
	inc  bc                                          ; $50a5: $03
	and  b                                           ; $50a6: $a0
	ld   l, l                                        ; $50a7: $6d
	ld   [hl], h                                     ; $50a8: $74
	ld   a, b                                        ; $50a9: $78
	ld   d, d                                        ; $50aa: $52
	sub  [hl]                                        ; $50ab: $96
	ld   d, h                                        ; $50ac: $54
	ld   a, c                                        ; $50ad: $79
	dec  c                                           ; $50ae: $0d
	nop                                              ; $50af: $00
	dec  b                                           ; $50b0: $05
	ld   b, b                                        ; $50b1: $40
	rst  $38                                         ; $50b2: $ff
	inc  bc                                          ; $50b3: $03
	rst  $38                                         ; $50b4: $ff
	ld   bc, $2801                                   ; $50b5: $01 $01 $28
	nop                                              ; $50b8: $00
	ld   bc, $6d52                                   ; $50b9: $01 $52 $6d
	ld   l, [hl]                                     ; $50bc: $6e
	ld   e, e                                        ; $50bd: $5b
	adc  h                                           ; $50be: $8c
	ld   h, a                                        ; $50bf: $67
	ld   a, h                                        ; $50c0: $7c
	sub  [hl]                                        ; $50c1: $96
	sbc  a                                           ; $50c2: $9f
	dec  c                                           ; $50c3: $0d
	nop                                              ; $50c4: $00
	ld   a, [bc]                                     ; $50c5: $0a
	ld   b, $2c                                      ; $50c6: $06 $2c
	ld   de, $000f                                   ; $50c8: $11 $0f $00
	ld   bc, $0201                                   ; $50cb: $01 $01 $02
	jp   nc, Jump_053_5461                           ; $50ce: $d2 $61 $54

	ld   e, c                                        ; $50d1: $59
	sub  a                                           ; $50d2: $97
	inc  bc                                          ; $50d3: $03
	ld   l, e                                        ; $50d4: $6b
	inc  bc                                          ; $50d5: $03
	ld   c, a                                        ; $50d6: $4f
	ld   a, c                                        ; $50d7: $79
	ld   h, a                                        ; $50d8: $67
	ld   e, l                                        ; $50d9: $5d
	ld   d, d                                        ; $50da: $52
	adc  h                                           ; $50db: $8c
	ld   h, a                                        ; $50dc: $67
	sbc  a                                           ; $50dd: $9f
	dec  c                                           ; $50de: $0d
	nop                                              ; $50df: $00
	ld   a, [bc]                                     ; $50e0: $0a
	inc  e                                           ; $50e1: $1c
	ld   [bc], a                                     ; $50e2: $02
	dec  b                                           ; $50e3: $05
	dec  b                                           ; $50e4: $05
	ld   bc, $5a6f                                   ; $50e5: $01 $6f $5a
	ld   d, d                                        ; $50e8: $52
	adc  h                                           ; $50e9: $8c
	ld   h, a                                        ; $50ea: $67
	sbc  l                                           ; $50eb: $9d
	sbc  a                                           ; $50ec: $9f
	inc  bc                                          ; $50ed: $03
	ld   l, e                                        ; $50ee: $6b
	inc  bc                                          ; $50ef: $03
	ld   c, a                                        ; $50f0: $4f
	ld   e, c                                        ; $50f1: $59
	sub  a                                           ; $50f2: $97
	ld   [bc], a                                     ; $50f3: $02
	jp   nc, Jump_053_5461                           ; $50f4: $d2 $61 $54

	dec  c                                           ; $50f7: $0d
	ld   a, c                                        ; $50f8: $79
	ld   h, a                                        ; $50f9: $67
	ld   e, l                                        ; $50fa: $5d
	ld   d, d                                        ; $50fb: $52
	sbc  [hl]                                        ; $50fc: $9e
	ld   [bc], a                                     ; $50fd: $02
	inc  bc                                          ; $50fe: $03
	and  b                                           ; $50ff: $a0
	ld   l, l                                        ; $5100: $6d
	ld   [hl], h                                     ; $5101: $74
	ld   a, b                                        ; $5102: $78
	ld   d, d                                        ; $5103: $52
	sub  [hl]                                        ; $5104: $96
	ld   d, h                                        ; $5105: $54
	ld   a, c                                        ; $5106: $79
	dec  c                                           ; $5107: $0d
	ld   d, d                                        ; $5108: $52
	ld   l, l                                        ; $5109: $6d
	ld   l, [hl]                                     ; $510a: $6e
	ld   e, e                                        ; $510b: $5b
	adc  h                                           ; $510c: $8c
	ld   h, a                                        ; $510d: $67
	ld   a, h                                        ; $510e: $7c
	sub  [hl]                                        ; $510f: $96
	sbc  a                                           ; $5110: $9f
	dec  c                                           ; $5111: $0d
	nop                                              ; $5112: $00
	ld   a, [bc]                                     ; $5113: $0a
	ld   b, $2c                                      ; $5114: $06 $2c
	ld   de, $000f                                   ; $5116: $11 $0f $00
	ld   bc, $0401                                   ; $5119: $01 $01 $04
	ld   d, l                                        ; $511c: $55
	ld   a, c                                        ; $511d: $79
	ld   [bc], a                                     ; $511e: $02
	xor  [hl]                                        ; $511f: $ae
	and  b                                           ; $5120: $a0
	inc  b                                           ; $5121: $04
	ld   [hl], c                                     ; $5122: $71
	ld   e, a                                        ; $5123: $5f
	ld   [hl], h                                     ; $5124: $74
	ld   [bc], a                                     ; $5125: $02
	jr   nz, jr_053_512a                             ; $5126: $20 $02

	and  c                                           ; $5128: $a1
	ld   a, c                                        ; $5129: $79

jr_053_512a:
	dec  c                                           ; $512a: $0d
	ld   [bc], a                                     ; $512b: $02
	rlca                                             ; $512c: $07
	adc  l                                           ; $512d: $8d
	ld   [bc], a                                     ; $512e: $02
	ld   b, [hl]                                     ; $512f: $46
	ld   h, l                                        ; $5130: $65
	adc  h                                           ; $5131: $8c
	ld   h, a                                        ; $5132: $67
	sbc  a                                           ; $5133: $9f
	dec  c                                           ; $5134: $0d
	nop                                              ; $5135: $00
	ld   a, [bc]                                     ; $5136: $0a
	inc  e                                           ; $5137: $1c
	ld   [bc], a                                     ; $5138: $02
	ld   [bc], a                                     ; $5139: $02
	ld   [bc], a                                     ; $513a: $02
	ld   bc, $e3c1                                   ; $513b: $01 $c1 $e3
	ld   [hl], l                                     ; $513e: $75
	ld   h, a                                        ; $513f: $67
	sbc  l                                           ; $5140: $9d
	ld   a, [$0310]                                  ; $5141: $fa $10 $03
	ld   l, e                                        ; $5144: $6b
	inc  bc                                          ; $5145: $03
	ld   c, a                                        ; $5146: $4f
	ld   e, c                                        ; $5147: $59
	sub  a                                           ; $5148: $97
	ld   [bc], a                                     ; $5149: $02
	jp   nc, Jump_053_5461                           ; $514a: $d2 $61 $54

	dec  c                                           ; $514d: $0d
	ld   a, c                                        ; $514e: $79
	ld   h, a                                        ; $514f: $67
	ld   e, l                                        ; $5150: $5d
	ld   d, d                                        ; $5151: $52
	sbc  [hl]                                        ; $5152: $9e
	ld   [bc], a                                     ; $5153: $02
	inc  bc                                          ; $5154: $03
	and  b                                           ; $5155: $a0
	ld   l, l                                        ; $5156: $6d
	ld   [hl], h                                     ; $5157: $74
	ld   a, b                                        ; $5158: $78
	ld   d, d                                        ; $5159: $52
	sub  [hl]                                        ; $515a: $96
	ld   d, h                                        ; $515b: $54
	ld   a, c                                        ; $515c: $79
	dec  c                                           ; $515d: $0d
	ld   d, d                                        ; $515e: $52
	ld   l, l                                        ; $515f: $6d
	ld   l, [hl]                                     ; $5160: $6e
	ld   e, e                                        ; $5161: $5b
	adc  h                                           ; $5162: $8c
	ld   h, a                                        ; $5163: $67
	ld   a, h                                        ; $5164: $7c
	sub  [hl]                                        ; $5165: $96
	sbc  a                                           ; $5166: $9f
	dec  c                                           ; $5167: $0d
	nop                                              ; $5168: $00
	ld   a, [bc]                                     ; $5169: $0a
	ld   b, $2c                                      ; $516a: $06 $2c
	ld   de, $021c                                   ; $516c: $11 $1c $02
	rlca                                             ; $516f: $07
	rlca                                             ; $5170: $07
	ld   bc, $fbba                                   ; $5171: $01 $ba $fb
	ret  c                                           ; $5174: $d8

	ld   a, l                                        ; $5175: $7d
	inc  bc                                          ; $5176: $03
	ld   l, e                                        ; $5177: $6b
	inc  bc                                          ; $5178: $03
	ld   c, a                                        ; $5179: $4f
	ld   e, c                                        ; $517a: $59
	sub  a                                           ; $517b: $97
	ld   [bc], a                                     ; $517c: $02
	jp   nc, Jump_053_5461                           ; $517d: $d2 $61 $54

	ld   a, c                                        ; $5180: $79
	dec  c                                           ; $5181: $0d
	ld   h, a                                        ; $5182: $67
	ld   e, l                                        ; $5183: $5d
	ld   d, d                                        ; $5184: $52
	sbc  [hl]                                        ; $5185: $9e
	ld   [bc], a                                     ; $5186: $02
	inc  bc                                          ; $5187: $03
	and  b                                           ; $5188: $a0
	ld   l, l                                        ; $5189: $6d
	ld   [hl], h                                     ; $518a: $74
	ld   a, b                                        ; $518b: $78
	ld   d, d                                        ; $518c: $52
	sub  [hl]                                        ; $518d: $96
	ld   d, h                                        ; $518e: $54
	ld   a, c                                        ; $518f: $79
	dec  c                                           ; $5190: $0d
	ld   d, d                                        ; $5191: $52
	ld   l, l                                        ; $5192: $6d
	ld   l, [hl]                                     ; $5193: $6e
	ld   e, e                                        ; $5194: $5b
	adc  h                                           ; $5195: $8c
	ld   h, a                                        ; $5196: $67
	ld   a, h                                        ; $5197: $7c
	sub  [hl]                                        ; $5198: $96
	sbc  a                                           ; $5199: $9f
	dec  c                                           ; $519a: $0d
	nop                                              ; $519b: $00
	ld   a, [bc]                                     ; $519c: $0a
	inc  e                                           ; $519d: $1c
	ld   [bc], a                                     ; $519e: $02
	nop                                              ; $519f: $00
	nop                                              ; $51a0: $00
	ld   bc, $6803                                   ; $51a1: $01 $03 $68
	ld   a, c                                        ; $51a4: $79
	sbc  [hl]                                        ; $51a5: $9e
	dec  b                                           ; $51a6: $05
	ld   e, d                                        ; $51a7: $5a
	inc  bc                                          ; $51a8: $03
	ret  c                                           ; $51a9: $d8

	ld   [hl], d                                     ; $51aa: $72
	ld   e, e                                        ; $51ab: $5b
	ld   a, h                                        ; $51ac: $7c
	dec  b                                           ; $51ad: $05
	dec  [hl]                                        ; $51ae: $35
	ld   a, l                                        ; $51af: $7d
	dec  c                                           ; $51b0: $0d
	ld   [hl], a                                     ; $51b1: $77
	ld   a, h                                        ; $51b2: $7c
	sub  [hl]                                        ; $51b3: $96
	ld   d, h                                        ; $51b4: $54
	ld   a, c                                        ; $51b5: $79
	ld   h, l                                        ; $51b6: $65
	ld   [hl], h                                     ; $51b7: $74
	inc  bc                                          ; $51b8: $03
	ld   l, d                                        ; $51b9: $6a
	add  a                                           ; $51ba: $87
	adc  h                                           ; $51bb: $8c
	ld   h, a                                        ; $51bc: $67
	ld   e, c                                        ; $51bd: $59
	ld   sp, hl                                      ; $51be: $f9
	dec  c                                           ; $51bf: $0d
	nop                                              ; $51c0: $00
	ld   a, [bc]                                     ; $51c1: $0a
	add  hl, de                                      ; $51c2: $19
	dec  b                                           ; $51c3: $05
	inc  bc                                          ; $51c4: $03
	inc  bc                                          ; $51c5: $03
	ld   h, l                                        ; $51c6: $65
	ld   a, h                                        ; $51c7: $7c
	inc  b                                           ; $51c8: $04
	pop  de                                          ; $51c9: $d1
	ld   e, c                                        ; $51ca: $59
	sub  a                                           ; $51cb: $97
	inc  bc                                          ; $51cc: $03
	ld   l, d                                        ; $51cd: $6a
	add  a                                           ; $51ce: $87
	ld   [bc], a                                     ; $51cf: $02
	inc  [hl]                                        ; $51d0: $34
	ld   a, h                                        ; $51d1: $7c
	inc  b                                           ; $51d2: $04
	pop  de                                          ; $51d3: $d1
	add  [hl]                                        ; $51d4: $86
	nop                                              ; $51d5: $00
	nop                                              ; $51d6: $00
	inc  bc                                          ; $51d7: $03
	ld   h, l                                        ; $51d8: $65
	ld   a, h                                        ; $51d9: $7c
	inc  b                                           ; $51da: $04
	pop  de                                          ; $51db: $d1
	and  b                                           ; $51dc: $a0
	inc  bc                                          ; $51dd: $03
	ld   l, d                                        ; $51de: $6a
	add  a                                           ; $51df: $87
	sbc  [hl]                                        ; $51e0: $9e
	dec  b                                           ; $51e1: $05
	ld   h, l                                        ; $51e2: $65
	inc  b                                           ; $51e3: $04
	sub  a                                           ; $51e4: $97
	ld   h, l                                        ; $51e5: $65
	ld   [hl], h                                     ; $51e6: $74
	ld   [bc], a                                     ; $51e7: $02
	inc  [hl]                                        ; $51e8: $34
	ld   a, h                                        ; $51e9: $7c
	inc  b                                           ; $51ea: $04
	pop  de                                          ; $51eb: $d1
	nop                                              ; $51ec: $00
	ld   bc, $c804                                   ; $51ed: $01 $04 $c8
	ld   e, c                                        ; $51f0: $59
	ld   h, [hl]                                     ; $51f1: $66
	sbc  b                                           ; $51f2: $98
	nop                                              ; $51f3: $00
	ld   [bc], a                                     ; $51f4: $02
	rlca                                             ; $51f5: $07
	and  d                                           ; $51f6: $a2
	ld   de, $0302                                   ; $51f7: $11 $02 $03
	ld   bc, $2000                                   ; $51fa: $01 $00 $20
	nop                                              ; $51fd: $00
	rlca                                             ; $51fe: $07
	inc  bc                                          ; $51ff: $03
	ld   [de], a                                     ; $5200: $12
	ld   [bc], a                                     ; $5201: $02
	inc  bc                                          ; $5202: $03
	ld   bc, $2001                                   ; $5203: $01 $01 $20
	nop                                              ; $5206: $00
	rlca                                             ; $5207: $07
	ld   c, [hl]                                     ; $5208: $4e
	ld   [de], a                                     ; $5209: $12
	ld   [bc], a                                     ; $520a: $02
	inc  bc                                          ; $520b: $03
	ld   bc, $2002                                   ; $520c: $01 $02 $20
	nop                                              ; $520f: $00
	ld   b, $8d                                      ; $5210: $06 $8d
	ld   [de], a                                     ; $5212: $12
	rrca                                             ; $5213: $0f
	nop                                              ; $5214: $00
	ld   bc, $0301                                   ; $5215: $01 $01 $03
	ld   h, l                                        ; $5218: $65
	ld   a, h                                        ; $5219: $7c
	inc  b                                           ; $521a: $04
	pop  de                                          ; $521b: $d1
	ld   e, c                                        ; $521c: $59
	sub  a                                           ; $521d: $97
	inc  bc                                          ; $521e: $03
	ld   l, d                                        ; $521f: $6a
	add  a                                           ; $5220: $87
	sbc  [hl]                                        ; $5221: $9e
	ld   [bc], a                                     ; $5222: $02
	inc  [hl]                                        ; $5223: $34
	ld   a, h                                        ; $5224: $7c
	inc  b                                           ; $5225: $04
	pop  de                                          ; $5226: $d1
	add  [hl]                                        ; $5227: $86
	dec  c                                           ; $5228: $0d
	halt                                             ; $5229: $76
	inc  bc                                          ; $522a: $03
	ld   l, d                                        ; $522b: $6a
	add  a                                           ; $522c: $87
	adc  h                                           ; $522d: $8c
	ld   h, a                                        ; $522e: $67
	sbc  a                                           ; $522f: $9f
	dec  c                                           ; $5230: $0d
	nop                                              ; $5231: $00
	ld   a, [bc]                                     ; $5232: $0a
	inc  e                                           ; $5233: $1c
	ld   [bc], a                                     ; $5234: $02
	ld   bc, $0101                                   ; $5235: $01 $01 $01
	ld   l, e                                        ; $5238: $6b
	ld   d, h                                        ; $5239: $54
	ld   [hl], l                                     ; $523a: $75
	ld   h, a                                        ; $523b: $67
	sbc  l                                           ; $523c: $9d
	sbc  a                                           ; $523d: $9f
	dec  c                                           ; $523e: $0d
	ld   [bc], a                                     ; $523f: $02
	inc  [hl]                                        ; $5240: $34
	ld   a, h                                        ; $5241: $7c
	inc  b                                           ; $5242: $04
	pop  de                                          ; $5243: $d1
	ld   a, l                                        ; $5244: $7d
	sbc  [hl]                                        ; $5245: $9e
	dec  b                                           ; $5246: $05
	dec  [hl]                                        ; $5247: $35
	and  b                                           ; $5248: $a0
	dec  b                                           ; $5249: $05
	ld   h, l                                        ; $524a: $65
	inc  b                                           ; $524b: $04
	sub  a                                           ; $524c: $97
	ld   h, e                                        ; $524d: $63
	ld   l, b                                        ; $524e: $68
	ld   a, c                                        ; $524f: $79
	dec  c                                           ; $5250: $0d
	nop                                              ; $5251: $00
	dec  b                                           ; $5252: $05
	ld   b, b                                        ; $5253: $40
	rst  $38                                         ; $5254: $ff
	inc  bc                                          ; $5255: $03
	rst  $38                                         ; $5256: $ff
	ld   bc, $2801                                   ; $5257: $01 $01 $28
	nop                                              ; $525a: $00
	ld   bc, $3605                                   ; $525b: $01 $05 $36
	and  b                                           ; $525e: $a0
	inc  bc                                          ; $525f: $03
	jr   jr_053_52d3                                 ; $5260: $18 $71

	ld   [hl], h                                     ; $5262: $74
	inc  b                                           ; $5263: $04
	pop  de                                          ; $5264: $d1
	and  b                                           ; $5265: $a0
	inc  bc                                          ; $5266: $03
	ld   l, d                                        ; $5267: $6a
	add  a                                           ; $5268: $87
	sbc  c                                           ; $5269: $99
	ld   a, h                                        ; $526a: $7c
	ld   [hl], l                                     ; $526b: $75
	ld   h, a                                        ; $526c: $67
	sbc  a                                           ; $526d: $9f
	dec  c                                           ; $526e: $0d
	nop                                              ; $526f: $00
	ld   a, [bc]                                     ; $5270: $0a
	ld   b, $1a                                      ; $5271: $06 $1a
	inc  de                                          ; $5273: $13
	rrca                                             ; $5274: $0f
	nop                                              ; $5275: $00
	ld   bc, $0301                                   ; $5276: $01 $01 $03
	ld   h, l                                        ; $5279: $65
	ld   a, h                                        ; $527a: $7c
	inc  b                                           ; $527b: $04
	pop  de                                          ; $527c: $d1
	and  b                                           ; $527d: $a0
	inc  bc                                          ; $527e: $03
	ld   l, d                                        ; $527f: $6a
	add  a                                           ; $5280: $87
	sbc  [hl]                                        ; $5281: $9e
	dec  b                                           ; $5282: $05
	ld   h, l                                        ; $5283: $65
	inc  b                                           ; $5284: $04
	sub  a                                           ; $5285: $97
	ld   h, l                                        ; $5286: $65
	ld   [hl], h                                     ; $5287: $74
	ld   [bc], a                                     ; $5288: $02
	inc  [hl]                                        ; $5289: $34
	ld   a, h                                        ; $528a: $7c
	inc  b                                           ; $528b: $04
	pop  de                                          ; $528c: $d1
	dec  c                                           ; $528d: $0d
	and  b                                           ; $528e: $a0
	inc  bc                                          ; $528f: $03
	ld   l, d                                        ; $5290: $6a
	add  a                                           ; $5291: $87
	adc  h                                           ; $5292: $8c
	ld   h, a                                        ; $5293: $67
	sbc  a                                           ; $5294: $9f
	dec  c                                           ; $5295: $0d
	nop                                              ; $5296: $00
	ld   a, [bc]                                     ; $5297: $0a
	inc  e                                           ; $5298: $1c
	ld   [bc], a                                     ; $5299: $02
	dec  b                                           ; $529a: $05
	dec  b                                           ; $529b: $05
	ld   bc, $5a6f                                   ; $529c: $01 $6f $5a
	ld   d, d                                        ; $529f: $52
	adc  h                                           ; $52a0: $8c
	ld   h, a                                        ; $52a1: $67
	sbc  l                                           ; $52a2: $9d
	sbc  a                                           ; $52a3: $9f
	dec  c                                           ; $52a4: $0d
	ld   [bc], a                                     ; $52a5: $02
	add  e                                           ; $52a6: $83
	ld   h, l                                        ; $52a7: $65
	ld   [hl], h                                     ; $52a8: $74
	dec  b                                           ; $52a9: $05
	ld   h, l                                        ; $52aa: $65
	inc  b                                           ; $52ab: $04
	sub  a                                           ; $52ac: $97
	ld   h, l                                        ; $52ad: $65
	ld   [hl], h                                     ; $52ae: $74
	ld   a, l                                        ; $52af: $7d
	dec  c                                           ; $52b0: $0d
	ld   d, d                                        ; $52b1: $52
	ld   e, a                                        ; $52b2: $5f
	adc  h                                           ; $52b3: $8c
	ld   l, c                                        ; $52b4: $69
	and  c                                           ; $52b5: $a1
	ld   a, h                                        ; $52b6: $7c
	sub  [hl]                                        ; $52b7: $96
	sbc  a                                           ; $52b8: $9f
	dec  c                                           ; $52b9: $0d
	nop                                              ; $52ba: $00
	ld   a, [bc]                                     ; $52bb: $0a
	ld   b, $1a                                      ; $52bc: $06 $1a
	inc  de                                          ; $52be: $13
	rrca                                             ; $52bf: $0f
	nop                                              ; $52c0: $00
	ld   bc, $0501                                   ; $52c1: $01 $01 $05
	and  e                                           ; $52c4: $a3
	dec  b                                           ; $52c5: $05
	sbc  d                                           ; $52c6: $9a
	ld   a, c                                        ; $52c7: $79
	sbc  [hl]                                        ; $52c8: $9e
	inc  b                                           ; $52c9: $04
	ret  z                                           ; $52ca: $c8

	ld   e, c                                        ; $52cb: $59
	ld   h, [hl]                                     ; $52cc: $66
	sbc  b                                           ; $52cd: $98
	ld   h, l                                        ; $52ce: $65
	adc  h                                           ; $52cf: $8c
	ld   h, a                                        ; $52d0: $67
	sbc  a                                           ; $52d1: $9f
	dec  c                                           ; $52d2: $0d

jr_053_52d3:
	nop                                              ; $52d3: $00
	ld   a, [bc]                                     ; $52d4: $0a
	inc  e                                           ; $52d5: $1c
	ld   [bc], a                                     ; $52d6: $02
	ld   [bc], a                                     ; $52d7: $02
	ld   [bc], a                                     ; $52d8: $02
	ld   bc, $e3c1                                   ; $52d9: $01 $c1 $e3
	ld   [hl], l                                     ; $52dc: $75
	ld   h, a                                        ; $52dd: $67
	sbc  l                                           ; $52de: $9d
	ld   a, [$900d]                                  ; $52df: $fa $0d $90
	ld   [hl], c                                     ; $52e2: $71
	halt                                             ; $52e3: $76
	inc  bc                                          ; $52e4: $03
	ld   h, l                                        ; $52e5: $65
	inc  b                                           ; $52e6: $04
	ld   h, c                                        ; $52e7: $61
	ld   a, c                                        ; $52e8: $79
	inc  bc                                          ; $52e9: $03
	ld   l, d                                        ; $52ea: $6a
	add  a                                           ; $52eb: $87
	ld   a, b                                        ; $52ec: $78
	ld   h, e                                        ; $52ed: $63
	ld   d, d                                        ; $52ee: $52
	sbc  a                                           ; $52ef: $9f
	dec  c                                           ; $52f0: $0d
	adc  h                                           ; $52f1: $8c
	ld   [hl], c                                     ; $52f2: $71
	ld   l, l                                        ; $52f3: $6d
	ld   e, l                                        ; $52f4: $5d
	sub  b                                           ; $52f5: $90
	ei                                               ; $52f6: $fb
	ld   a, [$000d]                                  ; $52f7: $fa $0d $00
	ld   a, [bc]                                     ; $52fa: $0a
	ld   b, $1a                                      ; $52fb: $06 $1a
	inc  de                                          ; $52fd: $13
	inc  e                                           ; $52fe: $1c
	ld   [bc], a                                     ; $52ff: $02

jr_053_5300:
	rlca                                             ; $5300: $07
	rlca                                             ; $5301: $07
	ld   bc, $5a05                                   ; $5302: $01 $05 $5a
	inc  bc                                          ; $5305: $03
	ret  c                                           ; $5306: $d8

	ld   [hl], d                                     ; $5307: $72
	ld   e, e                                        ; $5308: $5b
	ld   a, h                                        ; $5309: $7c
	ld   e, b                                        ; $530a: $58
	dec  b                                           ; $530b: $05
	dec  [hl]                                        ; $530c: $35
	ld   a, h                                        ; $530d: $7c
	inc  b                                           ; $530e: $04
	ld   a, d                                        ; $530f: $7a
	ld   [bc], a                                     ; $5310: $02
	ld   a, e                                        ; $5311: $7b
	ld   a, l                                        ; $5312: $7d
	sbc  [hl]                                        ; $5313: $9e
	dec  c                                           ; $5314: $0d
	adc  h                                           ; $5315: $8c
	ld   l, b                                        ; $5316: $68
	inc  bc                                          ; $5317: $03
	ld   h, l                                        ; $5318: $65
	dec  b                                           ; $5319: $05
	ld   c, c                                        ; $531a: $49
	ld   a, h                                        ; $531b: $7c
	inc  b                                           ; $531c: $04
	pop  de                                          ; $531d: $d1
	and  b                                           ; $531e: $a0
	dec  b                                           ; $531f: $05
	ld   [hl], $59                                   ; $5320: $36 $59
	sub  a                                           ; $5322: $97
	ld   a, l                                        ; $5323: $7d
	ld   a, b                                        ; $5324: $78
	ld   h, l                                        ; $5325: $65
	ld   [hl], h                                     ; $5326: $74
	dec  c                                           ; $5327: $0d
	ld   d, d                                        ; $5328: $52
	ld   l, l                                        ; $5329: $6d
	ld   l, [hl]                                     ; $532a: $6e
	ld   e, e                                        ; $532b: $5b
	adc  h                                           ; $532c: $8c
	ld   h, a                                        ; $532d: $67
	sbc  a                                           ; $532e: $9f
	dec  c                                           ; $532f: $0d
	nop                                              ; $5330: $00
	ld   a, [bc]                                     ; $5331: $0a
	ld   bc, $3402                                   ; $5332: $01 $02 $34
	dec  b                                           ; $5335: $05
	ld   c, c                                        ; $5336: $49
	ld   a, h                                        ; $5337: $7c
	inc  b                                           ; $5338: $04
	pop  de                                          ; $5339: $d1
	and  b                                           ; $533a: $a0
	inc  bc                                          ; $533b: $03
	ld   l, d                                        ; $533c: $6a
	add  a                                           ; $533d: $87
	sbc  c                                           ; $533e: $99
	inc  bc                                          ; $533f: $03
	ld   l, a                                        ; $5340: $6f
	ld   a, c                                        ; $5341: $79
	ld   a, l                                        ; $5342: $7d
	sbc  [hl]                                        ; $5343: $9e
	dec  c                                           ; $5344: $0d
	ld   [bc], a                                     ; $5345: $02
	add  e                                           ; $5346: $83
	ld   h, l                                        ; $5347: $65
	ld   [hl], h                                     ; $5348: $74
	dec  b                                           ; $5349: $05
	dec  [hl]                                        ; $534a: $35
	and  b                                           ; $534b: $a0
	dec  b                                           ; $534c: $05
	ld   h, l                                        ; $534d: $65
	inc  b                                           ; $534e: $04
	sub  a                                           ; $534f: $97
	ld   h, l                                        ; $5350: $65
	ld   [hl], h                                     ; $5351: $74
	dec  c                                           ; $5352: $0d
	inc  bc                                          ; $5353: $03
	ld   l, d                                        ; $5354: $6a
	add  a                                           ; $5355: $87
	ld   [hl], h                                     ; $5356: $74
	ld   a, l                                        ; $5357: $7d
	ld   d, d                                        ; $5358: $52
	ld   e, a                                        ; $5359: $5f
	adc  h                                           ; $535a: $8c
	ld   l, c                                        ; $535b: $69
	and  c                                           ; $535c: $a1
	sbc  a                                           ; $535d: $9f
	dec  c                                           ; $535e: $0d
	nop                                              ; $535f: $00
	ld   a, [bc]                                     ; $5360: $0a
	ld   bc, $3605                                   ; $5361: $01 $05 $36
	and  b                                           ; $5364: $a0
	inc  bc                                          ; $5365: $03
	jr   jr_053_5300                                 ; $5366: $18 $98

	inc  bc                                          ; $5368: $03
	adc  b                                           ; $5369: $88
	ld   e, e                                        ; $536a: $5b
	sbc  [hl]                                        ; $536b: $9e
	inc  b                                           ; $536c: $04
	pop  de                                          ; $536d: $d1
	and  b                                           ; $536e: $a0
	adc  h                                           ; $536f: $8c
	halt                                             ; $5370: $76
	adc  a                                           ; $5371: $8f
	ld   [hl], h                                     ; $5372: $74
	dec  c                                           ; $5373: $0d
	ld   [bc], a                                     ; $5374: $02
	jr   nz, jr_053_5379                             ; $5375: $20 $02

	xor  [hl]                                        ; $5377: $ae
	ld   l, b                                        ; $5378: $68

jr_053_5379:
	ld   [hl], d                                     ; $5379: $72
	inc  bc                                          ; $537a: $03
	dec  de                                          ; $537b: $1b
	ld   [hl], c                                     ; $537c: $71
	ld   [hl], h                                     ; $537d: $74
	ld   d, d                                        ; $537e: $52
	ld   l, l                                        ; $537f: $6d
	ld   l, [hl]                                     ; $5380: $6e
	ld   e, e                                        ; $5381: $5b
	adc  h                                           ; $5382: $8c
	ld   h, a                                        ; $5383: $67
	dec  c                                           ; $5384: $0d
	ld   a, h                                        ; $5385: $7c
	sub  [hl]                                        ; $5386: $96
	sbc  a                                           ; $5387: $9f
	dec  c                                           ; $5388: $0d
	nop                                              ; $5389: $00
	ld   a, [bc]                                     ; $538a: $0a
	inc  e                                           ; $538b: $1c
	ld   [bc], a                                     ; $538c: $02
	nop                                              ; $538d: $00
	nop                                              ; $538e: $00
	ld   bc, $6903                                   ; $538f: $01 $03 $69
	ld   [bc], a                                     ; $5392: $02
	xor  d                                           ; $5393: $aa
	ld   a, c                                        ; $5394: $79
	sbc  [hl]                                        ; $5395: $9e
	ld   e, b                                        ; $5396: $58
	inc  b                                           ; $5397: $04
	ccf                                              ; $5398: $3f
	ld   a, l                                        ; $5399: $7d
	ld   [hl], a                                     ; $539a: $77
	ld   l, a                                        ; $539b: $6f
	sub  a                                           ; $539c: $97
	dec  b                                           ; $539d: $05
	ld   c, c                                        ; $539e: $49
	ld   e, c                                        ; $539f: $59
	sub  a                                           ; $53a0: $97
	dec  c                                           ; $53a1: $0d
	ld   [bc], a                                     ; $53a2: $02
	jr   nz, jr_053_53a7                             ; $53a3: $20 $02

	xor  [hl]                                        ; $53a5: $ae
	inc  b                                           ; $53a6: $04

jr_053_53a7:
	sbc  [hl]                                        ; $53a7: $9e
	ld   a, c                                        ; $53a8: $79
	inc  bc                                          ; $53a9: $03
	dec  de                                          ; $53aa: $1b
	ld   [hl], c                                     ; $53ab: $71
	ld   [hl], h                                     ; $53ac: $74
	inc  bc                                          ; $53ad: $03
	ld   l, d                                        ; $53ae: $6a
	add  a                                           ; $53af: $87
	adc  h                                           ; $53b0: $8c
	ld   h, a                                        ; $53b1: $67
	ld   e, c                                        ; $53b2: $59
	ld   sp, hl                                      ; $53b3: $f9
	dec  c                                           ; $53b4: $0d
	nop                                              ; $53b5: $00
	ld   a, [bc]                                     ; $53b6: $0a
	add  hl, de                                      ; $53b7: $19
	dec  b                                           ; $53b8: $05
	inc  bc                                          ; $53b9: $03
	inc  bc                                          ; $53ba: $03
	ld   h, b                                        ; $53bb: $60
	dec  b                                           ; $53bc: $05
	ld   c, c                                        ; $53bd: $49
	ld   e, c                                        ; $53be: $59
	sub  a                                           ; $53bf: $97
	inc  bc                                          ; $53c0: $03
	dec  de                                          ; $53c1: $1b
	sbc  c                                           ; $53c2: $99
	nop                                              ; $53c3: $00
	nop                                              ; $53c4: $00
	ld   [bc], a                                     ; $53c5: $02
	inc  e                                           ; $53c6: $1c
	dec  b                                           ; $53c7: $05
	ld   c, c                                        ; $53c8: $49
	ld   e, c                                        ; $53c9: $59
	sub  a                                           ; $53ca: $97
	inc  bc                                          ; $53cb: $03
	dec  de                                          ; $53cc: $1b
	sbc  c                                           ; $53cd: $99
	nop                                              ; $53ce: $00
	ld   bc, $c804                                   ; $53cf: $01 $04 $c8
	ld   e, c                                        ; $53d2: $59
	ld   h, [hl]                                     ; $53d3: $66
	sbc  b                                           ; $53d4: $98
	ld   h, a                                        ; $53d5: $67
	sbc  c                                           ; $53d6: $99
	nop                                              ; $53d7: $00
	ld   [bc], a                                     ; $53d8: $02
	rlca                                             ; $53d9: $07
	add  [hl]                                        ; $53da: $86
	inc  de                                          ; $53db: $13
	ld   [bc], a                                     ; $53dc: $02
	inc  bc                                          ; $53dd: $03
	ld   bc, $2000                                   ; $53de: $01 $00 $20
	nop                                              ; $53e1: $00
	rlca                                             ; $53e2: $07
	ldh  [c], a                                      ; $53e3: $e2
	inc  de                                          ; $53e4: $13
	ld   [bc], a                                     ; $53e5: $02
	inc  bc                                          ; $53e6: $03
	ld   bc, $2001                                   ; $53e7: $01 $01 $20
	nop                                              ; $53ea: $00
	rlca                                             ; $53eb: $07
	add  hl, hl                                      ; $53ec: $29
	inc  d                                           ; $53ed: $14
	ld   [bc], a                                     ; $53ee: $02
	inc  bc                                          ; $53ef: $03
	ld   bc, $2002                                   ; $53f0: $01 $02 $20
	nop                                              ; $53f3: $00
	ld   b, $6a                                      ; $53f4: $06 $6a
	inc  d                                           ; $53f6: $14
	rrca                                             ; $53f7: $0f
	nop                                              ; $53f8: $00
	ld   bc, $0301                                   ; $53f9: $01 $01 $03
	ld   h, b                                        ; $53fc: $60
	dec  b                                           ; $53fd: $05
	ld   c, c                                        ; $53fe: $49
	ld   e, c                                        ; $53ff: $59
	sub  a                                           ; $5400: $97
	inc  bc                                          ; $5401: $03
	dec  de                                          ; $5402: $1b
	sbc  b                                           ; $5403: $98
	adc  h                                           ; $5404: $8c
	ld   h, a                                        ; $5405: $67
	sbc  a                                           ; $5406: $9f
	dec  c                                           ; $5407: $0d
	nop                                              ; $5408: $00
	ld   a, [bc]                                     ; $5409: $0a
	inc  e                                           ; $540a: $1c
	ld   [bc], a                                     ; $540b: $02
	ld   bc, $0101                                   ; $540c: $01 $01 $01
	ld   l, e                                        ; $540f: $6b
	ld   d, h                                        ; $5410: $54
	ld   [hl], l                                     ; $5411: $75
	ld   h, a                                        ; $5412: $67
	sbc  l                                           ; $5413: $9d
	sbc  a                                           ; $5414: $9f
	ld   e, b                                        ; $5415: $58
	inc  b                                           ; $5416: $04
	ccf                                              ; $5417: $3f
	ld   a, l                                        ; $5418: $7d
	inc  bc                                          ; $5419: $03
	ld   l, c                                        ; $541a: $69
	inc  bc                                          ; $541b: $03
	inc  c                                           ; $541c: $0c
	ld   a, c                                        ; $541d: $79
	inc  bc                                          ; $541e: $03
	ld   d, a                                        ; $541f: $57
	inc  b                                           ; $5420: $04
	sub  l                                           ; $5421: $95
	dec  c                                           ; $5422: $0d
	inc  bc                                          ; $5423: $03
	dec  de                                          ; $5424: $1b
	ld   [hl], c                                     ; $5425: $71
	ld   [hl], h                                     ; $5426: $74
	ld   h, l                                        ; $5427: $65
	adc  h                                           ; $5428: $8c
	sbc  l                                           ; $5429: $9d
	ld   l, b                                        ; $542a: $68
	ld   a, c                                        ; $542b: $79
	sbc  [hl]                                        ; $542c: $9e
	inc  bc                                          ; $542d: $03
	ld   h, b                                        ; $542e: $60
	dec  b                                           ; $542f: $05
	ld   c, c                                        ; $5430: $49
	sub  [hl]                                        ; $5431: $96
	sbc  b                                           ; $5432: $98
	dec  c                                           ; $5433: $0d
	nop                                              ; $5434: $00
	dec  b                                           ; $5435: $05
	ld   b, b                                        ; $5436: $40
	rst  $38                                         ; $5437: $ff
	inc  bc                                          ; $5438: $03
	rst  $38                                         ; $5439: $ff
	ld   bc, $2801                                   ; $543a: $01 $01 $28
	nop                                              ; $543d: $00
	ld   bc, $2002                                   ; $543e: $01 $02 $20
	ld   [bc], a                                     ; $5441: $02
	xor  [hl]                                        ; $5442: $ae
	ld   l, b                                        ; $5443: $68
	ld   [hl], d                                     ; $5444: $72
	inc  bc                                          ; $5445: $03
	dec  de                                          ; $5446: $1b
	sbc  b                                           ; $5447: $98
	adc  h                                           ; $5448: $8c
	ld   h, a                                        ; $5449: $67
	ld   a, h                                        ; $544a: $7c
	sub  [hl]                                        ; $544b: $96
	sbc  a                                           ; $544c: $9f
	dec  c                                           ; $544d: $0d
	nop                                              ; $544e: $00
	ld   a, [bc]                                     ; $544f: $0a
	ld   b, $a4                                      ; $5450: $06 $a4
	inc  d                                           ; $5452: $14
	rrca                                             ; $5453: $0f
	nop                                              ; $5454: $00
	ld   bc, $0201                                   ; $5455: $01 $01 $02
	inc  e                                           ; $5458: $1c
	dec  b                                           ; $5459: $05
	ld   c, c                                        ; $545a: $49
	ld   e, c                                        ; $545b: $59
	sub  a                                           ; $545c: $97
	inc  bc                                          ; $545d: $03
	dec  de                                          ; $545e: $1b
	sbc  b                                           ; $545f: $98
	adc  h                                           ; $5460: $8c

Jump_053_5461:
	ld   h, a                                        ; $5461: $67
	sbc  a                                           ; $5462: $9f
	dec  c                                           ; $5463: $0d
	nop                                              ; $5464: $00
	ld   a, [bc]                                     ; $5465: $0a
	inc  e                                           ; $5466: $1c
	ld   [bc], a                                     ; $5467: $02
	dec  b                                           ; $5468: $05
	dec  b                                           ; $5469: $05
	ld   bc, $5a6f                                   ; $546a: $01 $6f $5a
	ld   d, d                                        ; $546d: $52
	adc  h                                           ; $546e: $8c
	ld   h, a                                        ; $546f: $67
	sbc  l                                           ; $5470: $9d
	sbc  a                                           ; $5471: $9f
	dec  c                                           ; $5472: $0d
	ld   e, b                                        ; $5473: $58
	inc  b                                           ; $5474: $04
	ccf                                              ; $5475: $3f
	ld   a, l                                        ; $5476: $7d
	inc  bc                                          ; $5477: $03
	ld   h, b                                        ; $5478: $60
	dec  b                                           ; $5479: $05
	ld   c, c                                        ; $547a: $49
	sub  [hl]                                        ; $547b: $96
	sbc  b                                           ; $547c: $98
	ld   [bc], a                                     ; $547d: $02
	jr   nz, jr_053_5482                             ; $547e: $20 $02

	xor  [hl]                                        ; $5480: $ae
	inc  b                                           ; $5481: $04

jr_053_5482:
	sbc  [hl]                                        ; $5482: $9e
	ld   l, b                                        ; $5483: $68
	ld   [hl], d                                     ; $5484: $72
	dec  c                                           ; $5485: $0d
	inc  bc                                          ; $5486: $03
	dec  de                                          ; $5487: $1b
	ld   [hl], c                                     ; $5488: $71
	ld   [hl], h                                     ; $5489: $74
	ld   d, d                                        ; $548a: $52
	ld   l, l                                        ; $548b: $6d
	ld   l, [hl]                                     ; $548c: $6e
	ld   e, l                                        ; $548d: $5d
	ld   a, h                                        ; $548e: $7c
	ld   [hl], l                                     ; $548f: $75
	ld   h, a                                        ; $5490: $67
	sbc  l                                           ; $5491: $9d
	sub  [hl]                                        ; $5492: $96
	sbc  a                                           ; $5493: $9f
	dec  c                                           ; $5494: $0d
	nop                                              ; $5495: $00
	ld   a, [bc]                                     ; $5496: $0a
	ld   b, $a4                                      ; $5497: $06 $a4
	inc  d                                           ; $5499: $14
	rrca                                             ; $549a: $0f

Jump_053_549b:
	nop                                              ; $549b: $00
	ld   bc, $0501                                   ; $549c: $01 $01 $05
	and  e                                           ; $549f: $a3
	dec  b                                           ; $54a0: $05
	sbc  d                                           ; $54a1: $9a
	ld   a, c                                        ; $54a2: $79
	sbc  [hl]                                        ; $54a3: $9e
	inc  b                                           ; $54a4: $04
	ret  z                                           ; $54a5: $c8

	ld   e, c                                        ; $54a6: $59
	ld   h, [hl]                                     ; $54a7: $66
	sbc  b                                           ; $54a8: $98
	ld   h, l                                        ; $54a9: $65
	adc  h                                           ; $54aa: $8c
	ld   h, a                                        ; $54ab: $67
	sbc  a                                           ; $54ac: $9f
	dec  c                                           ; $54ad: $0d
	nop                                              ; $54ae: $00
	ld   a, [bc]                                     ; $54af: $0a
	inc  e                                           ; $54b0: $1c
	ld   [bc], a                                     ; $54b1: $02
	ld   [bc], a                                     ; $54b2: $02
	ld   [bc], a                                     ; $54b3: $02
	ld   bc, $e3c1                                   ; $54b4: $01 $c1 $e3
	ld   [hl], l                                     ; $54b7: $75
	ld   h, a                                        ; $54b8: $67
	sbc  l                                           ; $54b9: $9d
	ld   a, [$900d]                                  ; $54ba: $fa $0d $90
	ld   [hl], c                                     ; $54bd: $71
	halt                                             ; $54be: $76
	inc  bc                                          ; $54bf: $03
	ld   h, l                                        ; $54c0: $65
	inc  b                                           ; $54c1: $04
	ld   h, c                                        ; $54c2: $61
	ld   a, c                                        ; $54c3: $79
	inc  bc                                          ; $54c4: $03
	ld   l, d                                        ; $54c5: $6a
	add  a                                           ; $54c6: $87
	ld   a, b                                        ; $54c7: $78
	ld   e, a                                        ; $54c8: $5f
	sbc  d                                           ; $54c9: $9a
	ld   a, [hl]                                     ; $54ca: $7e
	dec  c                                           ; $54cb: $0d
	sub  h                                           ; $54cc: $94
	sbc  c                                           ; $54cd: $99
	ld   h, l                                        ; $54ce: $65
	adc  h                                           ; $54cf: $8c
	ld   l, c                                        ; $54d0: $69
	and  c                                           ; $54d1: $a1
	sbc  l                                           ; $54d2: $9d
	sub  [hl]                                        ; $54d3: $96
	sbc  a                                           ; $54d4: $9f
	dec  c                                           ; $54d5: $0d
	nop                                              ; $54d6: $00
	ld   a, [bc]                                     ; $54d7: $0a
	ld   b, $a4                                      ; $54d8: $06 $a4
	inc  d                                           ; $54da: $14
	inc  e                                           ; $54db: $1c
	ld   [bc], a                                     ; $54dc: $02
	rlca                                             ; $54dd: $07
	rlca                                             ; $54de: $07
	ld   bc, $0458                                   ; $54df: $01 $58 $04
	ccf                                              ; $54e2: $3f
	ld   a, l                                        ; $54e3: $7d
	inc  bc                                          ; $54e4: $03
	ld   l, c                                        ; $54e5: $69
	inc  bc                                          ; $54e6: $03
	inc  c                                           ; $54e7: $0c
	ld   a, c                                        ; $54e8: $79
	inc  bc                                          ; $54e9: $03
	ld   d, a                                        ; $54ea: $57
	inc  b                                           ; $54eb: $04
	sub  l                                           ; $54ec: $95
	inc  bc                                          ; $54ed: $03
	dec  de                                          ; $54ee: $1b
	ld   [hl], c                                     ; $54ef: $71
	ld   [hl], h                                     ; $54f0: $74
	ld   h, l                                        ; $54f1: $65
	adc  h                                           ; $54f2: $8c
	sbc  l                                           ; $54f3: $9d
	dec  c                                           ; $54f4: $0d
	ld   l, b                                        ; $54f5: $68
	ld   a, c                                        ; $54f6: $79
	sbc  [hl]                                        ; $54f7: $9e
	inc  bc                                          ; $54f8: $03
	ld   h, b                                        ; $54f9: $60
	dec  b                                           ; $54fa: $05
	ld   c, c                                        ; $54fb: $49
	sub  [hl]                                        ; $54fc: $96
	sbc  b                                           ; $54fd: $98
	ld   [bc], a                                     ; $54fe: $02
	jr   nz, jr_053_5503                             ; $54ff: $20 $02

	xor  [hl]                                        ; $5501: $ae
	ld   l, b                                        ; $5502: $68

jr_053_5503:
	ld   [hl], d                                     ; $5503: $72
	inc  bc                                          ; $5504: $03
	dec  de                                          ; $5505: $1b
	ld   [hl], c                                     ; $5506: $71
	ld   [hl], h                                     ; $5507: $74
	dec  c                                           ; $5508: $0d
	ld   d, d                                        ; $5509: $52
	ld   l, l                                        ; $550a: $6d
	ld   l, [hl]                                     ; $550b: $6e
	ld   e, e                                        ; $550c: $5b
	adc  h                                           ; $550d: $8c
	ld   h, a                                        ; $550e: $67
	ld   a, h                                        ; $550f: $7c
	sub  [hl]                                        ; $5510: $96
	sbc  a                                           ; $5511: $9f
	dec  c                                           ; $5512: $0d
	nop                                              ; $5513: $00
	ld   a, [bc]                                     ; $5514: $0a
	inc  e                                           ; $5515: $1c
	ld   [bc], a                                     ; $5516: $02
	nop                                              ; $5517: $00
	nop                                              ; $5518: $00
	ld   bc, $0b02                                   ; $5519: $01 $02 $0b
	inc  bc                                          ; $551c: $03
	ld   h, l                                        ; $551d: $65
	ld   [hl], l                                     ; $551e: $75
	sbc  [hl]                                        ; $551f: $9e
	xor  $c4                                         ; $5520: $ee $c4
	cp   d                                           ; $5522: $ba
	push af                                          ; $5523: $f5
	ld   a, l                                        ; $5524: $7d
	dec  c                                           ; $5525: $0d
	inc  bc                                          ; $5526: $03
	ld   a, [hl]                                     ; $5527: $7e
	dec  b                                           ; $5528: $05
	nop                                              ; $5529: $00
	ld   [hl], l                                     ; $552a: $75
	ld   h, a                                        ; $552b: $67
	sbc  l                                           ; $552c: $9d
	sbc  a                                           ; $552d: $9f
	dec  c                                           ; $552e: $0d
	nop                                              ; $552f: $00
	ld   a, [bc]                                     ; $5530: $0a
	dec  c                                           ; $5531: $0d
	nop                                              ; $5532: $00
	nop                                              ; $5533: $00
	rrca                                             ; $5534: $0f
	nop                                              ; $5535: $00
	ld   bc, $020c                                   ; $5536: $01 $0c $02
	ld   b, $cb                                      ; $5539: $06 $cb
	inc  d                                           ; $553b: $14
	rlca                                             ; $553c: $07
	ei                                               ; $553d: $fb
	inc  d                                           ; $553e: $14
	inc  bc                                          ; $553f: $03
	rst  $38                                         ; $5540: $ff
	ld   bc, $2509                                   ; $5541: $01 $09 $25
	nop                                              ; $5544: $00
	rlca                                             ; $5545: $07
	inc  [hl]                                        ; $5546: $34
	dec  d                                           ; $5547: $15
	inc  bc                                          ; $5548: $03
	rst  $38                                         ; $5549: $ff
	ld   bc, $2505                                   ; $554a: $01 $05 $25
	inc  bc                                          ; $554d: $03
	rst  $38                                         ; $554e: $ff
	ld   bc, $2308                                   ; $554f: $01 $08 $23
	inc  e                                           ; $5552: $1c
	nop                                              ; $5553: $00
	rlca                                             ; $5554: $07
	halt                                             ; $5555: $76
	dec  d                                           ; $5556: $15
	inc  bc                                          ; $5557: $03
	rst  $38                                         ; $5558: $ff
	ld   bc, $2502                                   ; $5559: $01 $02 $25
	inc  bc                                          ; $555c: $03
	rst  $38                                         ; $555d: $ff
	ld   bc, $2304                                   ; $555e: $01 $04 $23
	inc  e                                           ; $5561: $1c
	nop                                              ; $5562: $00
	rlca                                             ; $5563: $07
	ldh  a, [$15]                                    ; $5564: $f0 $15
	inc  bc                                          ; $5566: $03
	rst  $38                                         ; $5567: $ff
	ld   bc, $2301                                   ; $5568: $01 $01 $23
	nop                                              ; $556b: $00
	ld   d, $1d                                      ; $556c: $16 $1d
	rrca                                             ; $556e: $0f
	ld   [bc], a                                     ; $556f: $02
	ld   bc, $6301                                   ; $5570: $01 $01 $63
	ld   h, a                                        ; $5573: $67
	ld   e, d                                        ; $5574: $5a
	ld   [hl], l                                     ; $5575: $75
	ld   h, a                                        ; $5576: $67
	sbc  l                                           ; $5577: $9d
	ld   a, e                                        ; $5578: $7b
	sbc  a                                           ; $5579: $9f
	dec  c                                           ; $557a: $0d
	ld   [$6300], sp                                 ; $557b: $08 $00 $63
	and  c                                           ; $557e: $a1
	sbc  a                                           ; $557f: $9f
	dec  c                                           ; $5580: $0d
	nop                                              ; $5581: $00
	ld   a, [bc]                                     ; $5582: $0a
	dec  e                                           ; $5583: $1d
	ld   b, b                                        ; $5584: $40
	ld   [de], a                                     ; $5585: $12
	inc  bc                                          ; $5586: $03
	ld   [de], a                                     ; $5587: $12
	ld   bc, $2803                                   ; $5588: $01 $03 $28
	nop                                              ; $558b: $00
	ld   bc, $c004                                   ; $558c: $01 $04 $c0
	inc  bc                                          ; $558f: $03
	db   $ed                                         ; $5590: $ed
	ld   [hl], l                                     ; $5591: $75
	ld   h, a                                        ; $5592: $67
	sbc  l                                           ; $5593: $9d
	sbc  a                                           ; $5594: $9f
	dec  c                                           ; $5595: $0d
	ld   [bc], a                                     ; $5596: $02
	ld   a, e                                        ; $5597: $7b
	ld   [bc], a                                     ; $5598: $02
	ld   [hl], l                                     ; $5599: $75
	ld   [hl], l                                     ; $559a: $75
	ld   h, a                                        ; $559b: $67
	sbc  l                                           ; $559c: $9d
	sub  [hl]                                        ; $559d: $96
	sbc  a                                           ; $559e: $9f
	dec  c                                           ; $559f: $0d
	nop                                              ; $55a0: $00
	ld   a, [bc]                                     ; $55a1: $0a
	ld   b, $af                                      ; $55a2: $06 $af
	dec  d                                           ; $55a4: $15
	ld   c, $28                                      ; $55a5: $0e $28
	inc  e                                           ; $55a7: $1c
	ld   [bc], a                                     ; $55a8: $02
	ld   bc, $1d01                                   ; $55a9: $01 $01 $1d
	ld   b, b                                        ; $55ac: $40
	ld   [de], a                                     ; $55ad: $12
	inc  bc                                          ; $55ae: $03
	ld   [de], a                                     ; $55af: $12
	ld   bc, $2802                                   ; $55b0: $01 $02 $28
	nop                                              ; $55b3: $00
	ld   bc, $688c                                   ; $55b4: $01 $8c $68
	adc  h                                           ; $55b7: $8c
	ld   l, b                                        ; $55b8: $68
	sbc  [hl]                                        ; $55b9: $9e
	ld   [hl], l                                     ; $55ba: $75
	ld   h, l                                        ; $55bb: $65
	ld   l, l                                        ; $55bc: $6d
	sbc  l                                           ; $55bd: $9d
	ld   a, e                                        ; $55be: $7b
	sbc  a                                           ; $55bf: $9f
	dec  c                                           ; $55c0: $0d
	ld   [hl], l                                     ; $55c1: $75
	sub  b                                           ; $55c2: $90
	ld   a, e                                        ; $55c3: $7b
	sbc  [hl]                                        ; $55c4: $9e
	sub  b                                           ; $55c5: $90
	ld   d, h                                        ; $55c6: $54
	inc  bc                                          ; $55c7: $03
	ld   l, h                                        ; $55c8: $6c
	ld   h, l                                        ; $55c9: $65
	sbc  [hl]                                        ; $55ca: $9e
	ld   h, l                                        ; $55cb: $65
	and  c                                           ; $55cc: $a1
	ld   e, a                                        ; $55cd: $5f
	and  c                                           ; $55ce: $a1
	ld   a, c                                        ; $55cf: $79
	dec  c                                           ; $55d0: $0d
	rst  ToBoot                                         ; $55d1: $c7
	ei                                               ; $55d2: $fb
	rst  $10                                         ; $55d3: $d7
	db   $ed                                         ; $55d4: $ed
	rst  JumpTable                                         ; $55d5: $df
	set  7, e                                        ; $55d6: $cb $fb
	ld   a, h                                        ; $55d8: $7c
	inc  b                                           ; $55d9: $04
	xor  [hl]                                        ; $55da: $ae
	ld   [bc], a                                     ; $55db: $02
	call nc, Call_053_6378                           ; $55dc: $d4 $78 $63
	ld   d, d                                        ; $55df: $52
	sbc  a                                           ; $55e0: $9f
	dec  c                                           ; $55e1: $0d
	nop                                              ; $55e2: $00
	ld   a, [bc]                                     ; $55e3: $0a
	ld   b, $af                                      ; $55e4: $06 $af
	dec  d                                           ; $55e6: $15
	ld   c, $28                                      ; $55e7: $0e $28
	inc  e                                           ; $55e9: $1c
	ld   [bc], a                                     ; $55ea: $02
	nop                                              ; $55eb: $00
	nop                                              ; $55ec: $00
	dec  e                                           ; $55ed: $1d
	ld   b, b                                        ; $55ee: $40
	ld   [de], a                                     ; $55ef: $12
	inc  bc                                          ; $55f0: $03
	ld   [de], a                                     ; $55f1: $12
	ld   bc, $2801                                   ; $55f2: $01 $01 $28
	nop                                              ; $55f5: $00
	ld   bc, $dfa5                                   ; $55f6: $01 $a5 $df
	and  l                                           ; $55f9: $a5
	jp   nz, Jump_053_6575                           ; $55fa: $c2 $75 $65

	ld   l, l                                        ; $55fd: $6d
	sbc  l                                           ; $55fe: $9d
	ld   a, e                                        ; $55ff: $7b
	rst  $38                                         ; $5600: $ff
	rst  $38                                         ; $5601: $ff
	dec  c                                           ; $5602: $0d
	rst  ToBoot                                         ; $5603: $c7
	ei                                               ; $5604: $fb
	rst  $10                                         ; $5605: $d7
	db   $ed                                         ; $5606: $ed
	rst  JumpTable                                         ; $5607: $df
	set  7, e                                        ; $5608: $cb $fb
	ld   a, c                                        ; $560a: $79
	ld   [hl], d                                     ; $560b: $72
	ld   d, d                                        ; $560c: $52
	ld   [hl], h                                     ; $560d: $74
	dec  c                                           ; $560e: $0d
	sub  b                                           ; $560f: $90
	ld   [hl], c                                     ; $5610: $71
	halt                                             ; $5611: $76
	inc  b                                           ; $5612: $04
	xor  [hl]                                        ; $5613: $ae
	ld   [bc], a                                     ; $5614: $02
	call nc, Call_053_6378                           ; $5615: $d4 $78 $63
	ld   d, d                                        ; $5618: $52
	sbc  a                                           ; $5619: $9f
	dec  c                                           ; $561a: $0d
	nop                                              ; $561b: $00
	ld   a, [bc]                                     ; $561c: $0a
	ld   b, $af                                      ; $561d: $06 $af
	dec  d                                           ; $561f: $15
	ld   bc, $a502                                   ; $5620: $01 $02 $a5
	inc  b                                           ; $5623: $04
	xor  d                                           ; $5624: $aa
	ld   [bc], a                                     ; $5625: $02
	and  d                                           ; $5626: $a2
	and  c                                           ; $5627: $a1
	ld   l, [hl]                                     ; $5628: $6e
	ld   h, c                                        ; $5629: $61
	halt                                             ; $562a: $76
	ld   a, l                                        ; $562b: $7d
	sbc  [hl]                                        ; $562c: $9e
	dec  c                                           ; $562d: $0d
	nop                                              ; $562e: $00
	dec  b                                           ; $562f: $05
	add  b                                           ; $5630: $80
	ret  z                                           ; $5631: $c8

	ld   bc, $0001                                   ; $5632: $01 $01 $00
	ld   bc, $a304                                   ; $5635: $01 $04 $a3
	sbc  d                                           ; $5638: $9a
	ld   a, b                                        ; $5639: $78
	ld   d, d                                        ; $563a: $52
	sub  [hl]                                        ; $563b: $96
	ld   d, h                                        ; $563c: $54
	ld   a, c                                        ; $563d: $79
	ld   a, e                                        ; $563e: $7b
	sbc  a                                           ; $563f: $9f
	dec  c                                           ; $5640: $0d
	nop                                              ; $5641: $00
	dec  b                                           ; $5642: $05
	ld   b, b                                        ; $5643: $40
	ld   c, a                                        ; $5644: $4f
	ld   bc, $0000                                   ; $5645: $01 $00 $00
	ld   bc, $0458                                   ; $5648: $01 $58 $04
	ld   a, e                                        ; $564b: $7b
	sbc  d                                           ; $564c: $9a
	ld   h, e                                        ; $564d: $63
	adc  h                                           ; $564e: $8c
	ld   [hl], l                                     ; $564f: $75
	ld   h, l                                        ; $5650: $65
	ld   l, l                                        ; $5651: $6d
	sbc  a                                           ; $5652: $9f
	dec  c                                           ; $5653: $0d
	nop                                              ; $5654: $00
	ld   a, [bc]                                     ; $5655: $0a
	dec  c                                           ; $5656: $0d
	nop                                              ; $5657: $00
	nop                                              ; $5658: $00
	rrca                                             ; $5659: $0f
	nop                                              ; $565a: $00
	ld   bc, $1e09                                   ; $565b: $01 $09 $1e
	add  hl, hl                                      ; $565e: $29
	nop                                              ; $565f: $00
	nop                                              ; $5660: $00
	ld   c, $28                                      ; $5661: $0e $28
	inc  e                                           ; $5663: $1c
	ld   [bc], a                                     ; $5664: $02
	rlca                                             ; $5665: $07
	rlca                                             ; $5666: $07
	ld   bc, $2005                                   ; $5667: $01 $05 $20
	ld   h, l                                        ; $566a: $65
	ld   a, c                                        ; $566b: $79
	ld   a, b                                        ; $566c: $78
	sbc  b                                           ; $566d: $98
	adc  h                                           ; $566e: $8c
	ld   l, c                                        ; $566f: $69
	and  c                                           ; $5670: $a1
	sbc  l                                           ; $5671: $9d
	ld   a, e                                        ; $5672: $7b
	sbc  a                                           ; $5673: $9f
	dec  c                                           ; $5674: $0d
	nop                                              ; $5675: $00
	dec  b                                           ; $5676: $05
	add  b                                           ; $5677: $80
	ret  z                                           ; $5678: $c8

	ld   bc, $0001                                   ; $5679: $01 $01 $00
	ld   bc, $fbc7                                   ; $567c: $01 $c7 $fb
	rst  $10                                         ; $567f: $d7
	db   $ed                                         ; $5680: $ed
	rst  JumpTable                                         ; $5681: $df
	set  7, e                                        ; $5682: $cb $fb
	ld   a, c                                        ; $5684: $79
	ld   [hl], d                                     ; $5685: $72
	ld   d, d                                        ; $5686: $52
	ld   [hl], h                                     ; $5687: $74
	dec  c                                           ; $5688: $0d
	inc  bc                                          ; $5689: $03
	sub  h                                           ; $568a: $94
	inc  b                                           ; $568b: $04
	sbc  [hl]                                        ; $568c: $9e
	ld   [hl], l                                     ; $568d: $75
	inc  b                                           ; $568e: $04
	xor  [hl]                                        ; $568f: $ae
	ld   [bc], a                                     ; $5690: $02
	call nc, Call_053_7465                           ; $5691: $d4 $65 $74
	ld   e, b                                        ; $5694: $58
	ld   e, e                                        ; $5695: $5b
	ld   a, b                                        ; $5696: $78
	ld   h, e                                        ; $5697: $63
	ld   d, d                                        ; $5698: $52
	sbc  a                                           ; $5699: $9f
	dec  c                                           ; $569a: $0d
	nop                                              ; $569b: $00
	ld   a, [bc]                                     ; $569c: $0a
	dec  c                                           ; $569d: $0d
	nop                                              ; $569e: $00
	nop                                              ; $569f: $00
	rrca                                             ; $56a0: $0f
	nop                                              ; $56a1: $00
	ld   bc, $1e09                                   ; $56a2: $01 $09 $1e
	add  hl, hl                                      ; $56a5: $29
	nop                                              ; $56a6: $00
	nop                                              ; $56a7: $00
	nop                                              ; $56a8: $00
	inc  bc                                          ; $56a9: $03
	ld   d, $01                                      ; $56aa: $16 $01
	sub  c                                           ; $56ac: $91
	inc  h                                           ; $56ad: $24
	nop                                              ; $56ae: $00
	ld   c, $01                                      ; $56af: $0e $01
	rrca                                             ; $56b1: $0f
	nop                                              ; $56b2: $00
	ld   bc, $0102                                   ; $56b3: $01 $02 $01
	sub  [hl]                                        ; $56b6: $96
	ld   h, l                                        ; $56b7: $65
	sbc  [hl]                                        ; $56b8: $9e
	ld   [bc], a                                     ; $56b9: $02
	and  l                                           ; $56ba: $a5
	inc  b                                           ; $56bb: $04
	xor  d                                           ; $56bc: $aa
	sub  b                                           ; $56bd: $90
	ld   d, d                                        ; $56be: $52
	ld   d, d                                        ; $56bf: $52
	inc  b                                           ; $56c0: $04
	inc  de                                          ; $56c1: $13
	ld   [bc], a                                     ; $56c2: $02
	and  c                                           ; $56c3: $a1
	ld   l, [hl]                                     ; $56c4: $6e
	ld   a, [$5a0d]                                  ; $56c5: $fa $0d $5a
	and  c                                           ; $56c8: $a1
	ld   a, [hl]                                     ; $56c9: $7e
	sbc  c                                           ; $56ca: $99
	ld   l, h                                        ; $56cb: $6c
	ld   a, [$0dfa]                                  ; $56cc: $fa $fa $0d
	nop                                              ; $56cf: $00
	ld   a, [bc]                                     ; $56d0: $0a
	inc  d                                           ; $56d1: $14
	ld   b, $01                                      ; $56d2: $06 $01
	rrca                                             ; $56d4: $0f
	ld   b, $01                                      ; $56d5: $06 $01
	ld   bc, $0008                                   ; $56d7: $01 $08 $00
	sbc  a                                           ; $56da: $9f
	dec  c                                           ; $56db: $0d
	ld   [bc], a                                     ; $56dc: $02
	ld   e, d                                        ; $56dd: $5a
	ld   e, e                                        ; $56de: $5b
	ld   [hl], h                                     ; $56df: $74
	sbc  c                                           ; $56e0: $99
	ld   e, c                                        ; $56e1: $59
	ld   a, [$000d]                                  ; $56e2: $fa $0d $00
	ld   a, [bc]                                     ; $56e5: $0a
	rrca                                             ; $56e6: $0f
	nop                                              ; $56e7: $00
	ld   bc, $7d01                                   ; $56e8: $01 $01 $7d
	ld   d, d                                        ; $56eb: $52
	ld   a, [$000d]                                  ; $56ec: $fa $0d $00
	ld   a, [bc]                                     ; $56ef: $0a
	inc  d                                           ; $56f0: $14
	ld   a, [bc]                                     ; $56f1: $0a
	ld   bc, $000f                                   ; $56f2: $01 $0f $00
	ld   bc, $060d                                   ; $56f5: $01 $0d $06
	ld   bc, $ac01                                   ; $56f8: $01 $01 $ac
	push af                                          ; $56fb: $f5
	bit  4, e                                        ; $56fc: $cb $63
	and  c                                           ; $56fe: $a1
	sbc  a                                           ; $56ff: $9f
	dec  c                                           ; $5700: $0d
	ld   e, b                                        ; $5701: $58
	ld   a, l                                        ; $5702: $7d
	sub  [hl]                                        ; $5703: $96
	ld   d, h                                        ; $5704: $54
	ld   h, d                                        ; $5705: $62
	ld   h, h                                        ; $5706: $64
	ld   d, d                                        ; $5707: $52
	adc  h                                           ; $5708: $8c
	ld   h, a                                        ; $5709: $67
	sbc  a                                           ; $570a: $9f
	dec  c                                           ; $570b: $0d
	inc  b                                           ; $570c: $04
	ld   c, c                                        ; $570d: $49
	ld   e, c                                        ; $570e: $59
	ld   h, d                                        ; $570f: $62
	inc  b                                           ; $5710: $04
	di                                               ; $5711: $f3
	ld   [hl], l                                     ; $5712: $75
	ld   h, a                                        ; $5713: $67
	ld   e, c                                        ; $5714: $59
	ld   sp, hl                                      ; $5715: $f9
	dec  c                                           ; $5716: $0d
	nop                                              ; $5717: $00
	ld   a, [bc]                                     ; $5718: $0a
	inc  e                                           ; $5719: $1c
	ld   b, $04                                      ; $571a: $06 $04
	inc  b                                           ; $571c: $04
	ld   bc, $a502                                   ; $571d: $01 $02 $a5
	inc  b                                           ; $5720: $04
	xor  d                                           ; $5721: $aa
	ld   h, e                                        ; $5722: $63
	ei                                               ; $5723: $fb
	sbc  [hl]                                        ; $5724: $9e
	inc  bc                                          ; $5725: $03
	ld   l, e                                        ; $5726: $6b
	inc  b                                           ; $5727: $04
	ld   [de], a                                     ; $5728: $12
	ld   [hl], c                                     ; $5729: $71
	ld   [hl], h                                     ; $572a: $74
	inc  b                                           ; $572b: $04
	db   $e3                                         ; $572c: $e3
	ld   h, l                                        ; $572d: $65
	ld   d, d                                        ; $572e: $52
	ld   [bc], a                                     ; $572f: $02
	jp   $0d5a                                       ; $5730: $c3 $5a $0d


	ld   d, b                                        ; $5733: $50
	sbc  c                                           ; $5734: $99
	and  c                                           ; $5735: $a1
	ld   l, [hl]                                     ; $5736: $6e
	sub  [hl]                                        ; $5737: $96
	rst  $38                                         ; $5738: $ff
	rst  $38                                         ; $5739: $ff
	dec  c                                           ; $573a: $0d
	ld   [bc], a                                     ; $573b: $02
	jr   nz, jr_053_5742                             ; $573c: $20 $04

	xor  d                                           ; $573e: $aa
	inc  bc                                          ; $573f: $03
	dec  c                                           ; $5740: $0d
	ld   [bc], a                                     ; $5741: $02

jr_053_5742:
	jp   $a178                                       ; $5742: $c3 $78 $a1


	ld   l, [hl]                                     ; $5745: $6e
	ld   e, a                                        ; $5746: $5f
	ld   [hl], a                                     ; $5747: $77
	ld   h, e                                        ; $5748: $63
	sbc  a                                           ; $5749: $9f
	dec  c                                           ; $574a: $0d
	nop                                              ; $574b: $00
	ld   a, [bc]                                     ; $574c: $0a
	inc  e                                           ; $574d: $1c
	ld   b, $01                                      ; $574e: $06 $01
	ld   bc, $7501                                   ; $5750: $01 $01 $75
	sbc  [hl]                                        ; $5753: $9e
	inc  bc                                          ; $5754: $03
	add  l                                           ; $5755: $85
	inc  b                                           ; $5756: $04
	xor  e                                           ; $5757: $ab
	inc  bc                                          ; $5758: $03
	add  d                                           ; $5759: $82
	ld   a, c                                        ; $575a: $79
	ld   a, l                                        ; $575b: $7d
	ld   d, b                                        ; $575c: $50
	ld   l, l                                        ; $575d: $6d
	ld   d, d                                        ; $575e: $52
	ld   e, c                                        ; $575f: $59
	sub  a                                           ; $5760: $97
	dec  c                                           ; $5761: $0d
	inc  bc                                          ; $5762: $03
	ld   l, l                                        ; $5763: $6d
	dec  b                                           ; $5764: $05
	add  hl, de                                      ; $5765: $19
	and  b                                           ; $5766: $a0
	inc  bc                                          ; $5767: $03
	and  a                                           ; $5768: $a7
	adc  [hl]                                        ; $5769: $8e
	ld   h, c                                        ; $576a: $61
	halt                                             ; $576b: $76
	and  b                                           ; $576c: $a0
	dec  b                                           ; $576d: $05
	jr   nz, jr_053_57d5                             ; $576e: $20 $65

	ld   [hl], h                                     ; $5770: $74
	ld   e, b                                        ; $5771: $58
	ld   e, l                                        ; $5772: $5d
	dec  c                                           ; $5773: $0d
	ld   e, c                                        ; $5774: $59
	sub  a                                           ; $5775: $97
	sbc  [hl]                                        ; $5776: $9e
	ld   l, l                                        ; $5777: $6d
	ld   a, h                                        ; $5778: $7c
	adc  h                                           ; $5779: $8c
	sbc  d                                           ; $577a: $9a
	ld   [hl], h                                     ; $577b: $74
	ld   e, l                                        ; $577c: $5d
	sbc  d                                           ; $577d: $9a
	ld   a, b                                        ; $577e: $78
	ld   d, d                                        ; $577f: $52
	ld   e, c                                        ; $5780: $59
	ld   sp, hl                                      ; $5781: $f9
	dec  c                                           ; $5782: $0d
	nop                                              ; $5783: $00
	ld   a, [bc]                                     ; $5784: $0a
	add  hl, de                                      ; $5785: $19
	dec  b                                           ; $5786: $05
	ld   [bc], a                                     ; $5787: $02
	ld   a, l                                        ; $5788: $7d
	ld   d, d                                        ; $5789: $52
	sbc  a                                           ; $578a: $9f
	ld   d, d                                        ; $578b: $52
	ld   d, d                                        ; $578c: $52
	ld   [hl], l                                     ; $578d: $75
	ld   h, a                                        ; $578e: $67
	sub  [hl]                                        ; $578f: $96
	sbc  a                                           ; $5790: $9f
	nop                                              ; $5791: $00
	nop                                              ; $5792: $00
	ld   h, c                                        ; $5793: $61
	halt                                             ; $5794: $76
	sbc  l                                           ; $5795: $9d
	sbc  c                                           ; $5796: $99
	nop                                              ; $5797: $00
	ld   bc, $9c07                                   ; $5798: $01 $07 $9c
	ld   bc, $0302                                   ; $579b: $01 $02 $03
	ld   bc, $2000                                   ; $579e: $01 $00 $20
	nop                                              ; $57a1: $00
	rlca                                             ; $57a2: $07
	rst  $38                                         ; $57a3: $ff
	nop                                              ; $57a4: $00
	ld   [bc], a                                     ; $57a5: $02
	inc  bc                                          ; $57a6: $03
	ld   bc, $2001                                   ; $57a7: $01 $01 $20
	nop                                              ; $57aa: $00
	ld   b, $5a                                      ; $57ab: $06 $5a
	ld   bc, $000f                                   ; $57ad: $01 $0f $00
	ld   bc, $6701                                   ; $57b0: $01 $01 $67
	adc  l                                           ; $57b3: $8d
	adc  h                                           ; $57b4: $8c
	ld   l, c                                        ; $57b5: $69
	and  c                                           ; $57b6: $a1
	sbc  a                                           ; $57b7: $9f
	dec  c                                           ; $57b8: $0d
	ld   [bc], a                                     ; $57b9: $02
	and  l                                           ; $57ba: $a5
	inc  b                                           ; $57bb: $04
	xor  d                                           ; $57bc: $aa
	ld   a, l                                        ; $57bd: $7d
	ld   l, a                                        ; $57be: $6f
	sub  l                                           ; $57bf: $95
	ld   [hl], c                                     ; $57c0: $71
	halt                                             ; $57c1: $76
	dec  c                                           ; $57c2: $0d
	inc  b                                           ; $57c3: $04
	di                                               ; $57c4: $f3
	ld   e, d                                        ; $57c5: $5a
	ld   d, b                                        ; $57c6: $50
	sbc  c                                           ; $57c7: $99
	and  c                                           ; $57c8: $a1
	ld   [hl], l                                     ; $57c9: $75
	ld   h, a                                        ; $57ca: $67
	sbc  a                                           ; $57cb: $9f
	dec  c                                           ; $57cc: $0d
	nop                                              ; $57cd: $00
	ld   a, [bc]                                     ; $57ce: $0a
	inc  e                                           ; $57cf: $1c
	ld   b, $05                                      ; $57d0: $06 $05
	dec  b                                           ; $57d2: $05
	dec  e                                           ; $57d3: $1d
	ld   b, b                                        ; $57d4: $40

jr_053_57d5:
	ld   d, $03                                      ; $57d5: $16 $03
	ld   d, $01                                      ; $57d7: $16 $01
	ld   bc, $0029                                   ; $57d9: $01 $29 $00
	ld   bc, $546b                                   ; $57dc: $01 $6b $54
	ld   a, b                                        ; $57df: $78
	ld   a, h                                        ; $57e0: $7c
	ld   e, c                                        ; $57e1: $59
	ld   c, a                                        ; $57e2: $4f
	db   $fc                                         ; $57e3: $fc
	sbc  a                                           ; $57e4: $9f
	dec  c                                           ; $57e5: $0d
	and  c                                           ; $57e6: $a1
	db   $fc                                         ; $57e7: $fc
	rst  $38                                         ; $57e8: $ff
	rst  $38                                         ; $57e9: $ff
	ld   h, [hl]                                     ; $57ea: $66
	sub  c                                           ; $57eb: $91
	sbc  [hl]                                        ; $57ec: $9e
	inc  bc                                          ; $57ed: $03
	dec  c                                           ; $57ee: $0d
	inc  b                                           ; $57ef: $04
	ld   a, b                                        ; $57f0: $78
	ld   a, e                                        ; $57f1: $7b
	ei                                               ; $57f2: $fb
	ld   a, b                                        ; $57f3: $78
	sbc  a                                           ; $57f4: $9f
	dec  c                                           ; $57f5: $0d
	ld   h, [hl]                                     ; $57f6: $66
	sub  c                                           ; $57f7: $91
	ld   d, b                                        ; $57f8: $50
	ld   a, b                                        ; $57f9: $78
	sbc  a                                           ; $57fa: $9f
	dec  c                                           ; $57fb: $0d
	nop                                              ; $57fc: $00
	ld   a, [bc]                                     ; $57fd: $0a
	dec  c                                           ; $57fe: $0d
	nop                                              ; $57ff: $00
	nop                                              ; $5800: $00
	rrca                                             ; $5801: $0f
	nop                                              ; $5802: $00
	ld   bc, $1e09                                   ; $5803: $01 $09 $1e
	add  hl, hl                                      ; $5806: $29
	ld   bc, $1c00                                   ; $5807: $01 $00 $1c
	ld   b, $02                                      ; $580a: $06 $02
	ld   [bc], a                                     ; $580c: $02
	dec  e                                           ; $580d: $1d
	ld   b, b                                        ; $580e: $40
	ld   d, $03                                      ; $580f: $16 $03
	ld   d, $01                                      ; $5811: $16 $01
	inc  bc                                          ; $5813: $03
	add  hl, hl                                      ; $5814: $29
	nop                                              ; $5815: $00
	ld   bc, $a178                                   ; $5816: $01 $78 $a1
	ld   l, [hl]                                     ; $5819: $6e
	sub  [hl]                                        ; $581a: $96
	sbc  a                                           ; $581b: $9f
	inc  b                                           ; $581c: $04
	sub  a                                           ; $581d: $97
	ld   [bc], a                                     ; $581e: $02
	jp   Jump_053_6578                               ; $581f: $c3 $78 $65


	ld   e, c                                        ; $5822: $59
	sub  [hl]                                        ; $5823: $96
	sbc  a                                           ; $5824: $9f
	dec  c                                           ; $5825: $0d
	nop                                              ; $5826: $00
	dec  b                                           ; $5827: $05
	ld   b, b                                        ; $5828: $40
	ld   c, l                                        ; $5829: $4d
	ld   [bc], a                                     ; $582a: $02
	nop                                              ; $582b: $00
	nop                                              ; $582c: $00
	ld   bc, $9166                                   ; $582d: $01 $66 $91
	sbc  [hl]                                        ; $5830: $9e
	ld   d, d                                        ; $5831: $52
	ld   d, d                                        ; $5832: $52
	sub  [hl]                                        ; $5833: $96
	sub  b                                           ; $5834: $90
	ld   d, h                                        ; $5835: $54
	sbc  a                                           ; $5836: $9f
	dec  c                                           ; $5837: $0d
	nop                                              ; $5838: $00
	ld   a, [bc]                                     ; $5839: $0a
	dec  b                                           ; $583a: $05
	ld   b, b                                        ; $583b: $40
	ld   d, e                                        ; $583c: $53
	ld   bc, $0002                                   ; $583d: $01 $02 $00
	dec  c                                           ; $5840: $0d
	nop                                              ; $5841: $00
	nop                                              ; $5842: $00
	rrca                                             ; $5843: $0f
	nop                                              ; $5844: $00
	ld   bc, $1e09                                   ; $5845: $01 $09 $1e
	add  hl, hl                                      ; $5848: $29
	ld   bc, $0f00                                   ; $5849: $01 $00 $0f
	nop                                              ; $584c: $00
	ld   bc, $4005                                   ; $584d: $01 $05 $40
	ld   d, e                                        ; $5850: $53
	ld   bc, $0000                                   ; $5851: $01 $00 $00
	ld   bc, $527d                                   ; $5854: $01 $7d $52
	sbc  a                                           ; $5857: $9f
	ld   d, d                                        ; $5858: $52
	ld   d, d                                        ; $5859: $52
	ld   [hl], l                                     ; $585a: $75
	ld   h, a                                        ; $585b: $67
	sub  [hl]                                        ; $585c: $96
	sbc  a                                           ; $585d: $9f
	dec  c                                           ; $585e: $0d
	inc  b                                           ; $585f: $04
	ld   l, l                                        ; $5860: $6d
	ld   [hl], l                                     ; $5861: $75
	ld   e, b                                        ; $5862: $58
	inc  b                                           ; $5863: $04
	db   $ec                                         ; $5864: $ec
	ld   a, c                                        ; $5865: $79
	dec  b                                           ; $5866: $05
	ld   d, $74                                      ; $5867: $16 $74
	sbc  c                                           ; $5869: $99
	ld   a, b                                        ; $586a: $78
	sub  a                                           ; $586b: $97
	sbc  a                                           ; $586c: $9f
	dec  c                                           ; $586d: $0d
	nop                                              ; $586e: $00
	ld   a, [bc]                                     ; $586f: $0a
	inc  e                                           ; $5870: $1c
	ld   b, $01                                      ; $5871: $06 $01
	ld   bc, $401d                                   ; $5873: $01 $1d $40
	ld   d, $03                                      ; $5876: $16 $03
	ld   d, $01                                      ; $5878: $16 $01
	ld   [bc], a                                     ; $587a: $02
	jr   z, jr_053_587d                              ; $587b: $28 $00

jr_053_587d:
	ld   bc, $546b                                   ; $587d: $01 $6b $54
	ld   e, c                                        ; $5880: $59
	ld   a, [$b60d]                                  ; $5881: $fa $0d $b6
	push af                                          ; $5884: $f5
	xor  [hl]                                        ; $5885: $ae
	rst  $20                                         ; $5886: $e7
	ei                                               ; $5887: $fb
	inc  bc                                          ; $5888: $03
	ld   e, e                                        ; $5889: $5b
	ld   e, c                                        ; $588a: $59
	sbc  c                                           ; $588b: $99
	ld   l, d                                        ; $588c: $6a
	ld   a, [$000d]                                  ; $588d: $fa $0d $00
	ld   a, [bc]                                     ; $5890: $0a
	inc  e                                           ; $5891: $1c
	ld   b, $05                                      ; $5892: $06 $05
	dec  b                                           ; $5894: $05
	ld   bc, $8b03                                   ; $5895: $01 $03 $8b
	ld   a, l                                        ; $5898: $7d
	ld   h, e                                        ; $5899: $63
	ei                                               ; $589a: $fb
	sbc  [hl]                                        ; $589b: $9e
	inc  b                                           ; $589c: $04
	db   $fd                                         ; $589d: $fd
	ld   [bc], a                                     ; $589e: $02
	ei                                               ; $589f: $fb
	ld   [bc], a                                     ; $58a0: $02
	adc  h                                           ; $58a1: $8c
	and  b                                           ; $58a2: $a0
	inc  bc                                          ; $58a3: $03
	xor  h                                           ; $58a4: $ac
	sbc  e                                           ; $58a5: $9b
	ld   d, h                                        ; $58a6: $54
	halt                                             ; $58a7: $76
	dec  c                                           ; $58a8: $0d
	dec  b                                           ; $58a9: $05
	pop  de                                          ; $58aa: $d1
	ld   [hl], c                                     ; $58ab: $71
	ld   [hl], h                                     ; $58ac: $74
	and  c                                           ; $58ad: $a1
	ld   l, [hl]                                     ; $58ae: $6e
	ld   e, a                                        ; $58af: $5f
	ld   [hl], a                                     ; $58b0: $77
	rst  $38                                         ; $58b1: $ff
	rst  $38                                         ; $58b2: $ff
	dec  c                                           ; $58b3: $0d
	add  b                                           ; $58b4: $80
	halt                                             ; $58b5: $76
	sbc  b                                           ; $58b6: $98
	ld   h, [hl]                                     ; $58b7: $66
	sub  c                                           ; $58b8: $91
	inc  bc                                          ; $58b9: $03
	add  b                                           ; $58ba: $80
	dec  b                                           ; $58bb: $05
	db   $10                                         ; $58bc: $10
	ld   a, b                                        ; $58bd: $78
	ld   d, d                                        ; $58be: $52
	and  c                                           ; $58bf: $a1
	ld   l, [hl]                                     ; $58c0: $6e
	sub  [hl]                                        ; $58c1: $96
	sbc  a                                           ; $58c2: $9f
	dec  c                                           ; $58c3: $0d
	nop                                              ; $58c4: $00
	ld   a, [bc]                                     ; $58c5: $0a
	ld   bc, $5276                                   ; $58c6: $01 $76 $52
	ld   d, h                                        ; $58c9: $54
	ld   h, c                                        ; $58ca: $61
	halt                                             ; $58cb: $76
	ld   [hl], l                                     ; $58cc: $75
	sbc  [hl]                                        ; $58cd: $9e
	inc  bc                                          ; $58ce: $03
	ld   l, e                                        ; $58cf: $6b
	inc  b                                           ; $58d0: $04
	ld   [de], a                                     ; $58d1: $12
	ld   [hl], c                                     ; $58d2: $71
	ld   [hl], h                                     ; $58d3: $74
	ld   e, l                                        ; $58d4: $5d
	sbc  d                                           ; $58d5: $9a
	sbc  a                                           ; $58d6: $9f
	dec  c                                           ; $58d7: $0d
	nop                                              ; $58d8: $00
	inc  e                                           ; $58d9: $1c
	ld   b, $00                                      ; $58da: $06 $00
	nop                                              ; $58dc: $00
	ld   bc, $0e04                                   ; $58dd: $01 $04 $0e
	inc  bc                                          ; $58e0: $03
	sbc  l                                           ; $58e1: $9d
	inc  b                                           ; $58e2: $04
	and  [hl]                                        ; $58e3: $a6
	sbc  a                                           ; $58e4: $9f
	inc  bc                                          ; $58e5: $03
	ld   h, l                                        ; $58e6: $65
	inc  bc                                          ; $58e7: $03
	ld   l, e                                        ; $58e8: $6b
	ld   e, l                                        ; $58e9: $5d
	sub  [hl]                                        ; $58ea: $96
	ld   e, a                                        ; $58eb: $5f
	sbc  d                                           ; $58ec: $9a
	ld   a, [hl]                                     ; $58ed: $7e
	dec  c                                           ; $58ee: $0d
	ld   d, d                                        ; $58ef: $52
	ld   l, l                                        ; $58f0: $6d
	ld   e, l                                        ; $58f1: $5d
	ld   a, b                                        ; $58f2: $78
	ld   d, d                                        ; $58f3: $52
	ld   e, c                                        ; $58f4: $59
	sub  a                                           ; $58f5: $97
	sub  [hl]                                        ; $58f6: $96
	sbc  a                                           ; $58f7: $9f
	dec  c                                           ; $58f8: $0d
	nop                                              ; $58f9: $00
	ld   a, [bc]                                     ; $58fa: $0a
	dec  c                                           ; $58fb: $0d
	nop                                              ; $58fc: $00
	nop                                              ; $58fd: $00
	rrca                                             ; $58fe: $0f
	nop                                              ; $58ff: $00
	ld   bc, $6e23                                   ; $5900: $01 $23 $6e
	inc  e                                           ; $5903: $1c
	ld   b, $02                                      ; $5904: $06 $02
	ld   [bc], a                                     ; $5906: $02
	ld   bc, $9166                                   ; $5907: $01 $66 $91
	sbc  [hl]                                        ; $590a: $9e
	inc  bc                                          ; $590b: $03
	inc  e                                           ; $590c: $1c
	inc  b                                           ; $590d: $04
	ld   d, e                                        ; $590e: $53
	ld   a, l                                        ; $590f: $7d
	ld   d, d                                        ; $5910: $52
	ld   d, d                                        ; $5911: $52
	ld   e, c                                        ; $5912: $59
	sbc  a                                           ; $5913: $9f
	dec  c                                           ; $5914: $0d
	nop                                              ; $5915: $00
	ld   a, [bc]                                     ; $5916: $0a
	ld   bc, $6503                                   ; $5917: $01 $03 $65
	inc  b                                           ; $591a: $04
	dec  bc                                          ; $591b: $0b
	ld   [bc], a                                     ; $591c: $02
	inc  [hl]                                        ; $591d: $34
	ld   [hl], l                                     ; $591e: $75
	ld   [bc], a                                     ; $591f: $02
	ld   c, b                                        ; $5920: $48
	ld   [bc], a                                     ; $5921: $02
	sub  c                                           ; $5922: $91
	ld   h, a                                        ; $5923: $67
	sbc  c                                           ; $5924: $99
	ld   e, c                                        ; $5925: $59
	sub  a                                           ; $5926: $97
	dec  c                                           ; $5927: $0d
	ld   d, h                                        ; $5928: $54
	adc  h                                           ; $5929: $8c
	ld   e, l                                        ; $592a: $5d
	ld   [bc], a                                     ; $592b: $02
	rst  $38                                         ; $592c: $ff
	ld   e, a                                        ; $592d: $5f
	sbc  c                                           ; $592e: $99
	ld   e, c                                        ; $592f: $59
	sbc  [hl]                                        ; $5930: $9e
	dec  c                                           ; $5931: $0d
	sub  [hl]                                        ; $5932: $96
	ld   e, a                                        ; $5933: $5f
	sbc  c                                           ; $5934: $99
	and  c                                           ; $5935: $a1
	ld   l, [hl]                                     ; $5936: $6e
	ld   l, h                                        ; $5937: $6c
	sbc  a                                           ; $5938: $9f
	dec  c                                           ; $5939: $0d
	nop                                              ; $593a: $00
	ld   a, [bc]                                     ; $593b: $0a
	inc  e                                           ; $593c: $1c
	ld   b, $00                                      ; $593d: $06 $00
	nop                                              ; $593f: $00
	ld   bc, $546b                                   ; $5940: $01 $6b $54
	ld   l, e                                        ; $5943: $6b
	ld   d, h                                        ; $5944: $54
	sbc  [hl]                                        ; $5945: $9e
	inc  b                                           ; $5946: $04
	db   $fd                                         ; $5947: $fd
	ld   [bc], a                                     ; $5948: $02
	ei                                               ; $5949: $fb
	ld   [bc], a                                     ; $594a: $02
	adc  h                                           ; $594b: $8c
	ld   l, [hl]                                     ; $594c: $6e
	ld   e, c                                        ; $594d: $59
	sub  a                                           ; $594e: $97
	dec  c                                           ; $594f: $0d
	inc  bc                                          ; $5950: $03
	add  e                                           ; $5951: $83
	inc  b                                           ; $5952: $04
	sbc  b                                           ; $5953: $98
	ld   h, l                                        ; $5954: $65
	ld   l, l                                        ; $5955: $6d
	sub  a                                           ; $5956: $97
	sub  b                                           ; $5957: $90
	ld   d, h                                        ; $5958: $54
	ld   [bc], a                                     ; $5959: $02
	jr   nz, jr_053_595e                             ; $595a: $20 $02

	sub  e                                           ; $595c: $93
	dec  b                                           ; $595d: $05

jr_053_595e:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $595e: $cf
	adc  a                                           ; $595f: $8f
	dec  c                                           ; $5960: $0d
	ld   e, c                                        ; $5961: $59
	sub  a                                           ; $5962: $97
	ld   l, [hl]                                     ; $5963: $6e
	ld   l, d                                        ; $5964: $6a
	sbc  a                                           ; $5965: $9f
	dec  c                                           ; $5966: $0d
	nop                                              ; $5967: $00
	ld   a, [bc]                                     ; $5968: $0a
	inc  e                                           ; $5969: $1c
	ld   b, $02                                      ; $596a: $06 $02
	ld   [bc], a                                     ; $596c: $02
	ld   bc, $9166                                   ; $596d: $01 $66 $91
	sbc  [hl]                                        ; $5970: $9e
	ld   [bc], a                                     ; $5971: $02
	ld   a, a                                        ; $5972: $7f
	ld   e, l                                        ; $5973: $5d
	ld   l, d                                        ; $5974: $6a
	sbc  a                                           ; $5975: $9f
	dec  c                                           ; $5976: $0d
	adc  h                                           ; $5977: $8c
	ld   l, b                                        ; $5978: $68
	ld   a, l                                        ; $5979: $7d
	sbc  [hl]                                        ; $597a: $9e
	inc  b                                           ; $597b: $04
	dec  bc                                          ; $597c: $0b
	inc  bc                                          ; $597d: $03
	ret  nc                                          ; $597e: $d0

	sub  $a8                                         ; $597f: $d6 $a8
	and  l                                           ; $5981: $a5
	push af                                          ; $5982: $f5
	ret                                              ; $5983: $c9


	ld   a, h                                        ; $5984: $7c
	dec  c                                           ; $5985: $0d
	ld   [bc], a                                     ; $5986: $02
	inc  [hl]                                        ; $5987: $34
	inc  bc                                          ; $5988: $03
	ret  nc                                          ; $5989: $d0

	ld   h, b                                        ; $598a: $60
	sbc  b                                           ; $598b: $98
	ld   l, [hl]                                     ; $598c: $6e
	ld   a, [$000d]                                  ; $598d: $fa $0d $00
	ld   a, [bc]                                     ; $5990: $0a
	inc  d                                           ; $5991: $14
	dec  d                                           ; $5992: $15
	ld   bc, $0519                                   ; $5993: $01 $19 $05
	inc  bc                                          ; $5996: $03
	inc  bc                                          ; $5997: $03
	ld   a, l                                        ; $5998: $7d
	ld   [hl], l                                     ; $5999: $75
	ld   h, e                                        ; $599a: $63
	ld   a, [hl]                                     ; $599b: $7e
	ld   e, l                                        ; $599c: $5d
	nop                                              ; $599d: $00
	nop                                              ; $599e: $00
	ld   e, b                                        ; $599f: $58
	ld   a, b                                        ; $59a0: $78
	ld   e, c                                        ; $59a1: $59
	and  b                                           ; $59a2: $a0
	inc  bc                                          ; $59a3: $03
	sub  e                                           ; $59a4: $93
	sbc  c                                           ; $59a5: $99
	nop                                              ; $59a6: $00
	ld   bc, $6b03                                   ; $59a7: $01 $03 $6b
	ld   [hl], l                                     ; $59aa: $75
	ld   b, $17                                      ; $59ab: $06 $17
	ld   d, h                                        ; $59ad: $54
	nop                                              ; $59ae: $00
	ld   [bc], a                                     ; $59af: $02
	rlca                                             ; $59b0: $07
	rra                                              ; $59b1: $1f
	inc  bc                                          ; $59b2: $03
	ld   [bc], a                                     ; $59b3: $02
	inc  bc                                          ; $59b4: $03
	ld   bc, $2000                                   ; $59b5: $01 $00 $20
	nop                                              ; $59b8: $00
	rlca                                             ; $59b9: $07
	ld   c, a                                        ; $59ba: $4f
	inc  bc                                          ; $59bb: $03
	ld   [bc], a                                     ; $59bc: $02
	inc  bc                                          ; $59bd: $03
	ld   bc, $2001                                   ; $59be: $01 $01 $20
	nop                                              ; $59c1: $00
	rlca                                             ; $59c2: $07
	or   l                                           ; $59c3: $b5
	inc  bc                                          ; $59c4: $03
	ld   [bc], a                                     ; $59c5: $02
	inc  bc                                          ; $59c6: $03
	ld   bc, $2002                                   ; $59c7: $01 $02 $20
	nop                                              ; $59ca: $00
	ld   b, $19                                      ; $59cb: $06 $19
	inc  b                                           ; $59cd: $04
	rrca                                             ; $59ce: $0f
	nop                                              ; $59cf: $00
	ld   bc, $0201                                   ; $59d0: $01 $01 $02
	inc  [hl]                                        ; $59d3: $34
	inc  bc                                          ; $59d4: $03
	ret  nc                                          ; $59d5: $d0

	ld   h, b                                        ; $59d6: $60
	sbc  b                                           ; $59d7: $98
	ld   a, l                                        ; $59d8: $7d
	inc  bc                                          ; $59d9: $03
	ld   a, l                                        ; $59da: $7d
	ld   [hl], l                                     ; $59db: $75
	ld   h, e                                        ; $59dc: $63
	ld   a, [hl]                                     ; $59dd: $7e
	ld   e, l                                        ; $59de: $5d
	ld   a, [$000d]                                  ; $59df: $fa $0d $00
	ld   a, [bc]                                     ; $59e2: $0a
	inc  d                                           ; $59e3: $14
	ld   a, [de]                                     ; $59e4: $1a
	ld   bc, $061c                                   ; $59e5: $01 $1c $06
	ld   bc, $0101                                   ; $59e8: $01 $01 $01
	sub  [hl]                                        ; $59eb: $96
	ld   h, l                                        ; $59ec: $65
	ld   a, [$540d]                                  ; $59ed: $fa $0d $54
	adc  h                                           ; $59f0: $8c
	ld   d, d                                        ; $59f1: $52
	ld   h, [hl]                                     ; $59f2: $66
	sub  c                                           ; $59f3: $91
	ld   a, b                                        ; $59f4: $78
	ld   d, d                                        ; $59f5: $52
	ld   e, c                                        ; $59f6: $59
	ld   a, [$000d]                                  ; $59f7: $fa $0d $00
	ld   a, [bc]                                     ; $59fa: $0a
	ld   b, $64                                      ; $59fb: $06 $64
	inc  b                                           ; $59fd: $04
	rrca                                             ; $59fe: $0f
	nop                                              ; $59ff: $00
	ld   bc, $5801                                   ; $5a00: $01 $01 $58
	ld   a, b                                        ; $5a03: $78
	ld   e, c                                        ; $5a04: $59
	and  b                                           ; $5a05: $a0
	inc  bc                                          ; $5a06: $03
	sub  e                                           ; $5a07: $93
	sub  a                                           ; $5a08: $97
	ld   a, b                                        ; $5a09: $78
	ld   e, e                                        ; $5a0a: $5b
	sub  c                                           ; $5a0b: $91
	ld   a, [$000d]                                  ; $5a0c: $fa $0d $00
	ld   a, [bc]                                     ; $5a0f: $0a
	rrca                                             ; $5a10: $0f
	nop                                              ; $5a11: $00
	ld   bc, $0714                                   ; $5a12: $01 $14 $07
	ld   bc, $a501                                   ; $5a15: $01 $01 $a5
	rst  ToBoot                                         ; $5a18: $c7
	call nz, $0dfa                                   ; $5a19: $c4 $fa $0d
	nop                                              ; $5a1c: $00
	ld   a, [bc]                                     ; $5a1d: $0a
	rlca                                             ; $5a1e: $07
	reti                                             ; $5a1f: $d9


	add  hl, bc                                      ; $5a20: $09
	inc  bc                                          ; $5a21: $03
	jr   nz, jr_053_5a25                             ; $5a22: $20 $01

	ld   a, [bc]                                     ; $5a24: $0a

jr_053_5a25:
	inc  hl                                          ; $5a25: $23
	nop                                              ; $5a26: $00
	ld   sp, $2040                                   ; $5a27: $31 $40 $20
	inc  bc                                          ; $5a2a: $03
	jr   nz, jr_053_5a2e                             ; $5a2b: $20 $01

	ld   a, [bc]                                     ; $5a2d: $0a

jr_053_5a2e:
	add  hl, hl                                      ; $5a2e: $29
	nop                                              ; $5a2f: $00
	inc  e                                           ; $5a30: $1c
	ld   b, $05                                      ; $5a31: $06 $05
	dec  b                                           ; $5a33: $05
	ld   bc, $5258                                   ; $5a34: $01 $58 $52
	ld   e, b                                        ; $5a37: $58
	ld   d, d                                        ; $5a38: $52
	sbc  a                                           ; $5a39: $9f
	adc  h                                           ; $5a3a: $8c
	ld   l, [hl]                                     ; $5a3b: $6e
	ld   [de], a                                     ; $5a3c: $12
	inc  b                                           ; $5a3d: $04
	ld   e, [hl]                                     ; $5a3e: $5e
	inc  b                                           ; $5a3f: $04
	call nc, Call_053_6a6e                           ; $5a40: $d4 $6e $6a
	sbc  a                                           ; $5a43: $9f
	dec  c                                           ; $5a44: $0d
	ld   h, l                                        ; $5a45: $65
	ld   [hl], c                                     ; $5a46: $71
	ld   e, c                                        ; $5a47: $59
	sbc  b                                           ; $5a48: $98
	ld   h, l                                        ; $5a49: $65
	ld   [hl], h                                     ; $5a4a: $74
	ld   e, l                                        ; $5a4b: $5d
	sbc  d                                           ; $5a4c: $9a
	sub  [hl]                                        ; $5a4d: $96
	sbc  a                                           ; $5a4e: $9f
	dec  c                                           ; $5a4f: $0d
	sub  b                                           ; $5a50: $90
	ld   d, h                                        ; $5a51: $54
	ld   [bc], a                                     ; $5a52: $02
	jr   nz, jr_053_5a57                             ; $5a53: $20 $02

	sub  e                                           ; $5a55: $93
	dec  b                                           ; $5a56: $05

jr_053_5a57:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a57: $cf
	adc  a                                           ; $5a58: $8f
	ld   [hl], c                                     ; $5a59: $71
	ld   e, c                                        ; $5a5a: $59
	sub  a                                           ; $5a5b: $97
	ld   l, [hl]                                     ; $5a5c: $6e
	sbc  a                                           ; $5a5d: $9f
	dec  c                                           ; $5a5e: $0d
	nop                                              ; $5a5f: $00
	ld   a, [bc]                                     ; $5a60: $0a
	ld   b, $ba                                      ; $5a61: $06 $ba
	ld   [bc], a                                     ; $5a63: $02
	rrca                                             ; $5a64: $0f
	nop                                              ; $5a65: $00
	ld   bc, $0301                                   ; $5a66: $01 $01 $03
	ld   l, e                                        ; $5a69: $6b
	ld   [hl], l                                     ; $5a6a: $75
	ld   b, $17                                      ; $5a6b: $06 $17
	ld   d, h                                        ; $5a6d: $54
	ld   sp, hl                                      ; $5a6e: $f9
	dec  c                                           ; $5a6f: $0d
	nop                                              ; $5a70: $00
	ld   a, [bc]                                     ; $5a71: $0a
	rrca                                             ; $5a72: $0f
	nop                                              ; $5a73: $00
	ld   bc, $0714                                   ; $5a74: $01 $14 $07
	ld   bc, $a501                                   ; $5a77: $01 $01 $a5
	rst  ToBoot                                         ; $5a7a: $c7
	call nz, $0dfa                                   ; $5a7b: $c4 $fa $0d
	nop                                              ; $5a7e: $00
	ld   a, [bc]                                     ; $5a7f: $0a
	rlca                                             ; $5a80: $07
	reti                                             ; $5a81: $d9


	add  hl, bc                                      ; $5a82: $09
	inc  bc                                          ; $5a83: $03
	jr   nz, jr_053_5a87                             ; $5a84: $20 $01

	ld   a, [bc]                                     ; $5a86: $0a

jr_053_5a87:
	inc  hl                                          ; $5a87: $23
	nop                                              ; $5a88: $00
	ld   sp, $2040                                   ; $5a89: $31 $40 $20
	inc  bc                                          ; $5a8c: $03
	jr   nz, jr_053_5a90                             ; $5a8d: $20 $01

	ld   a, [bc]                                     ; $5a8f: $0a

jr_053_5a90:
	add  hl, hl                                      ; $5a90: $29
	nop                                              ; $5a91: $00
	inc  e                                           ; $5a92: $1c
	ld   b, $05                                      ; $5a93: $06 $05
	dec  b                                           ; $5a95: $05
	ld   bc, $3402                                   ; $5a96: $01 $02 $34
	inc  bc                                          ; $5a99: $03
	ret  nc                                          ; $5a9a: $d0

	ld   h, b                                        ; $5a9b: $60
	sbc  b                                           ; $5a9c: $98
	ld   a, l                                        ; $5a9d: $7d
	inc  bc                                          ; $5a9e: $03
	ld   l, e                                        ; $5a9f: $6b
	ld   [hl], l                                     ; $5aa0: $75
	ld   b, $17                                      ; $5aa1: $06 $17
	ld   d, [hl]                                     ; $5aa3: $56
	ld   a, b                                        ; $5aa4: $78
	ld   d, d                                        ; $5aa5: $52
	ld   l, d                                        ; $5aa6: $6a
	sbc  a                                           ; $5aa7: $9f
	dec  c                                           ; $5aa8: $0d
	ld   h, l                                        ; $5aa9: $65
	ld   [hl], c                                     ; $5aaa: $71
	ld   e, c                                        ; $5aab: $59
	sbc  b                                           ; $5aac: $98
	ld   h, l                                        ; $5aad: $65
	ld   [hl], h                                     ; $5aae: $74
	ld   e, l                                        ; $5aaf: $5d
	sbc  d                                           ; $5ab0: $9a
	sub  [hl]                                        ; $5ab1: $96
	sbc  a                                           ; $5ab2: $9f
	dec  c                                           ; $5ab3: $0d
	sub  b                                           ; $5ab4: $90
	ld   d, h                                        ; $5ab5: $54
	ld   [bc], a                                     ; $5ab6: $02
	jr   nz, jr_053_5abb                             ; $5ab7: $20 $02

	sub  e                                           ; $5ab9: $93
	dec  b                                           ; $5aba: $05

jr_053_5abb:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5abb: $cf
	adc  a                                           ; $5abc: $8f
	ld   [hl], c                                     ; $5abd: $71
	ld   e, c                                        ; $5abe: $59
	sub  a                                           ; $5abf: $97
	ld   l, [hl]                                     ; $5ac0: $6e
	sbc  a                                           ; $5ac1: $9f
	dec  c                                           ; $5ac2: $0d
	nop                                              ; $5ac3: $00
	ld   a, [bc]                                     ; $5ac4: $0a
	ld   b, $ba                                      ; $5ac5: $06 $ba
	ld   [bc], a                                     ; $5ac7: $02
	rrca                                             ; $5ac8: $0f
	nop                                              ; $5ac9: $00
	ld   bc, $0714                                   ; $5aca: $01 $14 $07
	ld   bc, $a501                                   ; $5acd: $01 $01 $a5
	call nz, $fbc7                                   ; $5ad0: $c4 $c7 $fb
	dec  c                                           ; $5ad3: $0d
	nop                                              ; $5ad4: $00
	ld   a, [bc]                                     ; $5ad5: $0a
	rlca                                             ; $5ad6: $07
	reti                                             ; $5ad7: $d9


	add  hl, bc                                      ; $5ad8: $09
	inc  bc                                          ; $5ad9: $03
	jr   nz, jr_053_5add                             ; $5ada: $20 $01

	ld   a, [bc]                                     ; $5adc: $0a

jr_053_5add:
	inc  hl                                          ; $5add: $23
	nop                                              ; $5ade: $00
	ld   sp, $2040                                   ; $5adf: $31 $40 $20
	inc  bc                                          ; $5ae2: $03
	jr   nz, jr_053_5ae6                             ; $5ae3: $20 $01

	ld   a, [bc]                                     ; $5ae5: $0a

jr_053_5ae6:
	add  hl, hl                                      ; $5ae6: $29
	nop                                              ; $5ae7: $00
	inc  e                                           ; $5ae8: $1c
	ld   b, $02                                      ; $5ae9: $06 $02
	ld   [bc], a                                     ; $5aeb: $02
	ld   bc, $acd1                                   ; $5aec: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $5aef: $fa $10 $0d
	db   $dd                                         ; $5af2: $dd
	or   d                                           ; $5af3: $b2
	ld   [hl], c                                     ; $5af4: $71
	halt                                             ; $5af5: $76
	ld   h, a                                        ; $5af6: $67
	and  c                                           ; $5af7: $a1
	ld   h, [hl]                                     ; $5af8: $66
	sub  c                                           ; $5af9: $91
	ld   a, e                                        ; $5afa: $7b
	ld   d, l                                        ; $5afb: $55
	sub  [hl]                                        ; $5afc: $96
	sbc  a                                           ; $5afd: $9f
	dec  c                                           ; $5afe: $0d
	sub  b                                           ; $5aff: $90
	ld   d, h                                        ; $5b00: $54
	ld   [bc], a                                     ; $5b01: $02
	jr   nz, jr_053_5b06                             ; $5b02: $20 $02

	sub  e                                           ; $5b04: $93
	dec  b                                           ; $5b05: $05

jr_053_5b06:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b06: $cf
	adc  a                                           ; $5b07: $8f
	ld   [hl], c                                     ; $5b08: $71
	ld   e, c                                        ; $5b09: $59
	sub  a                                           ; $5b0a: $97
	ld   l, [hl]                                     ; $5b0b: $6e
	sbc  a                                           ; $5b0c: $9f
	dec  c                                           ; $5b0d: $0d
	nop                                              ; $5b0e: $00
	ld   a, [bc]                                     ; $5b0f: $0a
	ld   b, $ba                                      ; $5b10: $06 $ba
	ld   [bc], a                                     ; $5b12: $02
	inc  e                                           ; $5b13: $1c
	ld   b, $02                                      ; $5b14: $06 $02
	ld   [bc], a                                     ; $5b16: $02
	ld   bc, $6803                                   ; $5b17: $01 $03 $68
	ld   a, l                                        ; $5b1a: $7d
	inc  bc                                          ; $5b1b: $03
	ld   c, d                                        ; $5b1c: $4a
	ld   [bc], a                                     ; $5b1d: $02
	ld   [hl], c                                     ; $5b1e: $71
	ld   [hl], e                                     ; $5b1f: $73
	ld   e, e                                        ; $5b20: $5b
	ld   [hl], l                                     ; $5b21: $75
	dec  c                                           ; $5b22: $0d
	inc  b                                           ; $5b23: $04
	dec  bc                                          ; $5b24: $0b
	inc  bc                                          ; $5b25: $03
	ret  nc                                          ; $5b26: $d0

	and  b                                           ; $5b27: $a0
	ld   [bc], a                                     ; $5b28: $02
	ld   c, b                                        ; $5b29: $48
	ld   [bc], a                                     ; $5b2a: $02
	sub  c                                           ; $5b2b: $91
	ld   l, [hl]                                     ; $5b2c: $6e
	ld   a, [$000d]                                  ; $5b2d: $fa $0d $00
	ld   a, [bc]                                     ; $5b30: $0a
	inc  d                                           ; $5b31: $14
	dec  d                                           ; $5b32: $15
	ld   bc, $0519                                   ; $5b33: $01 $19 $05
	inc  bc                                          ; $5b36: $03
	ld   [bc], a                                     ; $5b37: $02
	ld   h, [hl]                                     ; $5b38: $66
	and  b                                           ; $5b39: $a0
	inc  bc                                          ; $5b3a: $03
	sub  e                                           ; $5b3b: $93
	sbc  c                                           ; $5b3c: $99
	nop                                              ; $5b3d: $00
	nop                                              ; $5b3e: $00
	ld   [bc], a                                     ; $5b3f: $02
	ld   [hl], d                                     ; $5b40: $72
	and  b                                           ; $5b41: $a0
	inc  bc                                          ; $5b42: $03
	sub  e                                           ; $5b43: $93
	sbc  c                                           ; $5b44: $99
	nop                                              ; $5b45: $00
	ld   bc, $9165                                   ; $5b46: $01 $65 $91
	ld   e, d                                        ; $5b49: $5a
	and  c                                           ; $5b4a: $a1
	ld   [hl], l                                     ; $5b4b: $75
	ld   e, c                                        ; $5b4c: $59
	sbc  l                                           ; $5b4d: $9d
	ld   h, a                                        ; $5b4e: $67
	nop                                              ; $5b4f: $00
	ld   [bc], a                                     ; $5b50: $02
	rlca                                             ; $5b51: $07
	ret  nz                                          ; $5b52: $c0

	inc  b                                           ; $5b53: $04
	ld   [bc], a                                     ; $5b54: $02
	inc  bc                                          ; $5b55: $03
	ld   bc, $2000                                   ; $5b56: $01 $00 $20
	nop                                              ; $5b59: $00
	rlca                                             ; $5b5a: $07
	db   $eb                                         ; $5b5b: $eb
	inc  b                                           ; $5b5c: $04
	ld   [bc], a                                     ; $5b5d: $02
	inc  bc                                          ; $5b5e: $03
	ld   bc, $2001                                   ; $5b5f: $01 $01 $20
	nop                                              ; $5b62: $00
	rlca                                             ; $5b63: $07
	ld   e, c                                        ; $5b64: $59
	dec  b                                           ; $5b65: $05
	ld   [bc], a                                     ; $5b66: $02
	inc  bc                                          ; $5b67: $03
	ld   bc, $2002                                   ; $5b68: $01 $02 $20
	nop                                              ; $5b6b: $00
	ld   b, $d3                                      ; $5b6c: $06 $d3
	dec  b                                           ; $5b6e: $05
	rrca                                             ; $5b6f: $0f
	nop                                              ; $5b70: $00
	ld   bc, $0401                                   ; $5b71: $01 $01 $04
	dec  bc                                          ; $5b74: $0b
	inc  bc                                          ; $5b75: $03
	ret  nc                                          ; $5b76: $d0

	ld   [bc], a                                     ; $5b77: $02
	ld   c, b                                        ; $5b78: $48
	ld   [bc], a                                     ; $5b79: $02
	sub  c                                           ; $5b7a: $91
	ld   a, b                                        ; $5b7b: $78
	sub  a                                           ; $5b7c: $97
	ld   a, [hl]                                     ; $5b7d: $7e
	sbc  [hl]                                        ; $5b7e: $9e
	ld   [bc], a                                     ; $5b7f: $02
	ld   h, [hl]                                     ; $5b80: $66
	and  b                                           ; $5b81: $a0
	inc  bc                                          ; $5b82: $03
	sub  e                                           ; $5b83: $93
	sbc  c                                           ; $5b84: $99
	ld   a, [$000d]                                  ; $5b85: $fa $0d $00
	ld   a, [bc]                                     ; $5b88: $0a
	inc  d                                           ; $5b89: $14
	ld   a, [de]                                     ; $5b8a: $1a
	ld   bc, $061c                                   ; $5b8b: $01 $1c $06
	ld   bc, $0101                                   ; $5b8e: $01 $01 $01
	sub  [hl]                                        ; $5b91: $96
	ld   h, l                                        ; $5b92: $65
	ld   a, [$000d]                                  ; $5b93: $fa $0d $00
	ld   a, [bc]                                     ; $5b96: $0a
	ld   b, $1f                                      ; $5b97: $06 $1f
	ld   b, $0f                                      ; $5b99: $06 $0f
	nop                                              ; $5b9b: $00
	ld   bc, $5901                                   ; $5b9c: $01 $01 $59
	sbc  [hl]                                        ; $5b9f: $9e
	ld   [bc], a                                     ; $5ba0: $02
	ld   [hl], d                                     ; $5ba1: $72
	and  b                                           ; $5ba2: $a0
	inc  bc                                          ; $5ba3: $03
	sub  e                                           ; $5ba4: $93
	sub  a                                           ; $5ba5: $97
	ld   a, b                                        ; $5ba6: $78
	ld   e, e                                        ; $5ba7: $5b
	sub  c                                           ; $5ba8: $91
	ld   a, [$000d]                                  ; $5ba9: $fa $0d $00
	ld   a, [bc]                                     ; $5bac: $0a
	rrca                                             ; $5bad: $0f
	nop                                              ; $5bae: $00
	ld   bc, $0714                                   ; $5baf: $01 $14 $07
	ld   bc, $9d01                                   ; $5bb2: $01 $01 $9d
	ld   a, [$a510]                                  ; $5bb5: $fa $10 $a5
	rst  ToBoot                                         ; $5bb8: $c7
	rst  ToBoot                                         ; $5bb9: $c7
	dec  c                                           ; $5bba: $0d
	nop                                              ; $5bbb: $00
	ld   a, [bc]                                     ; $5bbc: $0a
	rlca                                             ; $5bbd: $07
	reti                                             ; $5bbe: $d9


	add  hl, bc                                      ; $5bbf: $09
	inc  bc                                          ; $5bc0: $03
	jr   nz, jr_053_5bc4                             ; $5bc1: $20 $01

	ld   a, [bc]                                     ; $5bc3: $0a

jr_053_5bc4:
	inc  hl                                          ; $5bc4: $23
	nop                                              ; $5bc5: $00
	ld   sp, $2040                                   ; $5bc6: $31 $40 $20
	inc  bc                                          ; $5bc9: $03
	jr   nz, jr_053_5bcd                             ; $5bca: $20 $01

	ld   a, [bc]                                     ; $5bcc: $0a

jr_053_5bcd:
	add  hl, hl                                      ; $5bcd: $29
	nop                                              ; $5bce: $00
	inc  e                                           ; $5bcf: $1c
	ld   b, $05                                      ; $5bd0: $06 $05
	dec  b                                           ; $5bd2: $05
	ld   bc, $5258                                   ; $5bd3: $01 $58 $52
	ld   e, b                                        ; $5bd6: $58
	ld   d, d                                        ; $5bd7: $52
	sbc  a                                           ; $5bd8: $9f
	inc  b                                           ; $5bd9: $04
	dec  bc                                          ; $5bda: $0b
	inc  bc                                          ; $5bdb: $03
	ret  nc                                          ; $5bdc: $d0

	and  b                                           ; $5bdd: $a0
	dec  b                                           ; $5bde: $05
	call Call_053_6d71                               ; $5bdf: $cd $71 $6d
	and  c                                           ; $5be2: $a1
	dec  c                                           ; $5be3: $0d
	ld   l, [hl]                                     ; $5be4: $6e
	ld   e, c                                        ; $5be5: $59
	sub  a                                           ; $5be6: $97
	ld   [bc], a                                     ; $5be7: $02
	ld   h, [hl]                                     ; $5be8: $66
	ld   [bc], a                                     ; $5be9: $02
	xor  h                                           ; $5bea: $ac
	and  b                                           ; $5beb: $a0
	inc  bc                                          ; $5bec: $03
	sub  e                                           ; $5bed: $93
	sbc  c                                           ; $5bee: $99
	and  c                                           ; $5bef: $a1
	ld   l, [hl]                                     ; $5bf0: $6e
	sub  [hl]                                        ; $5bf1: $96
	sbc  a                                           ; $5bf2: $9f
	dec  c                                           ; $5bf3: $0d
	sub  b                                           ; $5bf4: $90
	ld   d, h                                        ; $5bf5: $54
	ld   [bc], a                                     ; $5bf6: $02
	jr   nz, jr_053_5bfb                             ; $5bf7: $20 $02

	sub  e                                           ; $5bf9: $93
	dec  b                                           ; $5bfa: $05

jr_053_5bfb:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bfb: $cf
	adc  a                                           ; $5bfc: $8f
	ld   [hl], c                                     ; $5bfd: $71
	ld   e, c                                        ; $5bfe: $59
	sub  a                                           ; $5bff: $97
	ld   l, [hl]                                     ; $5c00: $6e
	sbc  a                                           ; $5c01: $9f
	dec  c                                           ; $5c02: $0d
	nop                                              ; $5c03: $00
	ld   a, [bc]                                     ; $5c04: $0a
	ld   b, $ba                                      ; $5c05: $06 $ba
	ld   [bc], a                                     ; $5c07: $02
	rrca                                             ; $5c08: $0f
	nop                                              ; $5c09: $00
	ld   bc, $0401                                   ; $5c0a: $01 $01 $04
	dec  bc                                          ; $5c0d: $0b
	inc  bc                                          ; $5c0e: $03
	ret  nc                                          ; $5c0f: $d0

	ld   [bc], a                                     ; $5c10: $02
	ld   c, b                                        ; $5c11: $48
	ld   [bc], a                                     ; $5c12: $02
	sub  c                                           ; $5c13: $91
	ld   a, l                                        ; $5c14: $7d
	ld   h, l                                        ; $5c15: $65
	sub  c                                           ; $5c16: $91
	ld   e, d                                        ; $5c17: $5a
	and  c                                           ; $5c18: $a1
	ld   [hl], l                                     ; $5c19: $75
	dec  c                                           ; $5c1a: $0d
	sub  [hl]                                        ; $5c1b: $96
	ld   e, a                                        ; $5c1c: $5f
	sbc  c                                           ; $5c1d: $99
	ld   sp, hl                                      ; $5c1e: $f9
	dec  c                                           ; $5c1f: $0d
	nop                                              ; $5c20: $00
	ld   a, [bc]                                     ; $5c21: $0a
	rrca                                             ; $5c22: $0f
	nop                                              ; $5c23: $00
	ld   bc, $0714                                   ; $5c24: $01 $14 $07
	ld   bc, $b101                                   ; $5c27: $01 $01 $b1
	ret  nc                                          ; $5c2a: $d0

	call nz, $0dfa                                   ; $5c2b: $c4 $fa $0d
	ld   a, l                                        ; $5c2e: $7d
	sbc  [hl]                                        ; $5c2f: $9e
	ret  nc                                          ; $5c30: $d0

	bit  3, d                                        ; $5c31: $cb $5a
	rst  $38                                         ; $5c33: $ff
	rst  $38                                         ; $5c34: $ff
	dec  c                                           ; $5c35: $0d
	nop                                              ; $5c36: $00
	ld   a, [bc]                                     ; $5c37: $0a
	rlca                                             ; $5c38: $07
	reti                                             ; $5c39: $d9


	add  hl, bc                                      ; $5c3a: $09
	inc  bc                                          ; $5c3b: $03
	jr   nz, jr_053_5c3f                             ; $5c3c: $20 $01

	ld   a, [bc]                                     ; $5c3e: $0a

jr_053_5c3f:
	inc  hl                                          ; $5c3f: $23
	nop                                              ; $5c40: $00
	ld   sp, $2040                                   ; $5c41: $31 $40 $20
	inc  bc                                          ; $5c44: $03
	jr   nz, jr_053_5c48                             ; $5c45: $20 $01

	ld   a, [bc]                                     ; $5c47: $0a

jr_053_5c48:
	add  hl, hl                                      ; $5c48: $29
	nop                                              ; $5c49: $00
	inc  e                                           ; $5c4a: $1c
	ld   b, $05                                      ; $5c4b: $06 $05
	dec  b                                           ; $5c4d: $05
	ld   bc, $0b04                                   ; $5c4e: $01 $04 $0b
	inc  bc                                          ; $5c51: $03
	ret  nc                                          ; $5c52: $d0

	and  b                                           ; $5c53: $a0
	dec  b                                           ; $5c54: $05
	call Call_053_6d71                               ; $5c55: $cd $71 $6d
	and  c                                           ; $5c58: $a1
	ld   l, [hl]                                     ; $5c59: $6e
	ld   l, d                                        ; $5c5a: $6a
	sbc  a                                           ; $5c5b: $9f
	dec  c                                           ; $5c5c: $0d
	ld   h, l                                        ; $5c5d: $65
	sub  c                                           ; $5c5e: $91
	ld   e, d                                        ; $5c5f: $5a
	and  c                                           ; $5c60: $a1
	ld   l, [hl]                                     ; $5c61: $6e
	sub  a                                           ; $5c62: $97
	ld   [bc], a                                     ; $5c63: $02
	ld   [hl], d                                     ; $5c64: $72
	ld   a, c                                        ; $5c65: $79
	inc  b                                           ; $5c66: $04
	jr   jr_053_5cd6                                 ; $5c67: $18 $6d

	sbc  c                                           ; $5c69: $99
	sub  [hl]                                        ; $5c6a: $96
	ld   a, b                                        ; $5c6b: $78
	sbc  a                                           ; $5c6c: $9f
	dec  c                                           ; $5c6d: $0d
	sub  b                                           ; $5c6e: $90
	ld   d, h                                        ; $5c6f: $54
	ld   [bc], a                                     ; $5c70: $02
	jr   nz, jr_053_5c75                             ; $5c71: $20 $02

	sub  e                                           ; $5c73: $93
	dec  b                                           ; $5c74: $05

jr_053_5c75:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c75: $cf
	adc  a                                           ; $5c76: $8f
	ld   [hl], c                                     ; $5c77: $71
	ld   e, c                                        ; $5c78: $59
	sub  a                                           ; $5c79: $97
	ld   l, [hl]                                     ; $5c7a: $6e
	sbc  a                                           ; $5c7b: $9f
	dec  c                                           ; $5c7c: $0d
	nop                                              ; $5c7d: $00
	ld   a, [bc]                                     ; $5c7e: $0a
	ld   b, $ba                                      ; $5c7f: $06 $ba
	ld   [bc], a                                     ; $5c81: $02
	rrca                                             ; $5c82: $0f
	nop                                              ; $5c83: $00
	ld   bc, $0714                                   ; $5c84: $01 $14 $07
	ld   bc, $b301                                   ; $5c87: $01 $01 $b3
	call c, $ffc4                                    ; $5c8a: $dc $c4 $ff
	rst  $38                                         ; $5c8d: $ff
	dec  c                                           ; $5c8e: $0d
	nop                                              ; $5c8f: $00
	ld   a, [bc]                                     ; $5c90: $0a
	rlca                                             ; $5c91: $07
	reti                                             ; $5c92: $d9


	add  hl, bc                                      ; $5c93: $09
	inc  bc                                          ; $5c94: $03
	jr   nz, jr_053_5c98                             ; $5c95: $20 $01

	ld   a, [bc]                                     ; $5c97: $0a

jr_053_5c98:
	inc  hl                                          ; $5c98: $23
	nop                                              ; $5c99: $00
	ld   sp, $2040                                   ; $5c9a: $31 $40 $20
	inc  bc                                          ; $5c9d: $03
	jr   nz, jr_053_5ca1                             ; $5c9e: $20 $01

	ld   a, [bc]                                     ; $5ca0: $0a

jr_053_5ca1:
	add  hl, hl                                      ; $5ca1: $29
	nop                                              ; $5ca2: $00
	inc  e                                           ; $5ca3: $1c
	ld   b, $02                                      ; $5ca4: $06 $02
	ld   [bc], a                                     ; $5ca6: $02
	ld   bc, $acd1                                   ; $5ca7: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $5caa: $fa $10 $0d
	db   $dd                                         ; $5cad: $dd
	or   d                                           ; $5cae: $b2
	ld   [hl], c                                     ; $5caf: $71
	halt                                             ; $5cb0: $76
	ld   h, a                                        ; $5cb1: $67
	and  c                                           ; $5cb2: $a1
	ld   h, [hl]                                     ; $5cb3: $66
	sub  c                                           ; $5cb4: $91
	ld   a, e                                        ; $5cb5: $7b
	ld   d, l                                        ; $5cb6: $55
	sub  [hl]                                        ; $5cb7: $96
	sbc  a                                           ; $5cb8: $9f
	dec  c                                           ; $5cb9: $0d
	sub  b                                           ; $5cba: $90
	ld   d, h                                        ; $5cbb: $54
	ld   [bc], a                                     ; $5cbc: $02
	jr   nz, jr_053_5cc1                             ; $5cbd: $20 $02

	sub  e                                           ; $5cbf: $93
	dec  b                                           ; $5cc0: $05

jr_053_5cc1:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cc1: $cf
	adc  a                                           ; $5cc2: $8f
	ld   [hl], c                                     ; $5cc3: $71
	ld   e, c                                        ; $5cc4: $59
	sub  a                                           ; $5cc5: $97
	ld   l, [hl]                                     ; $5cc6: $6e
	sbc  a                                           ; $5cc7: $9f
	dec  c                                           ; $5cc8: $0d
	nop                                              ; $5cc9: $00
	ld   a, [bc]                                     ; $5cca: $0a
	ld   b, $ba                                      ; $5ccb: $06 $ba
	ld   [bc], a                                     ; $5ccd: $02
	inc  e                                           ; $5cce: $1c
	ld   b, $02                                      ; $5ccf: $06 $02
	ld   [bc], a                                     ; $5cd1: $02
	ld   bc, $6803                                   ; $5cd2: $01 $03 $68
	ld   a, l                                        ; $5cd5: $7d

jr_053_5cd6:
	sbc  [hl]                                        ; $5cd6: $9e
	dec  b                                           ; $5cd7: $05
	ld   h, l                                        ; $5cd8: $65
	ld   [bc], a                                     ; $5cd9: $02
	ld   [hl], c                                     ; $5cda: $71
	ld   [hl], l                                     ; $5cdb: $75
	inc  bc                                          ; $5cdc: $03
	ld   h, l                                        ; $5cdd: $65
	inc  bc                                          ; $5cde: $03
	ret  nc                                          ; $5cdf: $d0

	add  [hl]                                        ; $5ce0: $86
	ld   [bc], a                                     ; $5ce1: $02
	ld   c, b                                        ; $5ce2: $48
	ld   [bc], a                                     ; $5ce3: $02
	sub  c                                           ; $5ce4: $91
	ld   l, [hl]                                     ; $5ce5: $6e
	ld   a, [$000d]                                  ; $5ce6: $fa $0d $00
	ld   a, [bc]                                     ; $5ce9: $0a
	inc  d                                           ; $5cea: $14
	dec  d                                           ; $5ceb: $15
	ld   bc, $0519                                   ; $5cec: $01 $19 $05
	inc  bc                                          ; $5cef: $03
	ld   h, l                                        ; $5cf0: $65
	sub  c                                           ; $5cf1: $91
	ld   e, d                                        ; $5cf2: $5a
	and  c                                           ; $5cf3: $a1
	ld   [hl], l                                     ; $5cf4: $75
	ld   e, c                                        ; $5cf5: $59
	sbc  l                                           ; $5cf6: $9d
	ld   h, a                                        ; $5cf7: $67
	nop                                              ; $5cf8: $00
	nop                                              ; $5cf9: $00
	inc  bc                                          ; $5cfa: $03
	ld   a, l                                        ; $5cfb: $7d
	ld   [hl], l                                     ; $5cfc: $75
	ld   b, $17                                      ; $5cfd: $06 $17
	ld   d, h                                        ; $5cff: $54
	nop                                              ; $5d00: $00
	ld   bc, $e5b9                                   ; $5d01: $01 $b9 $e5
	push af                                          ; $5d04: $f5
	ret  c                                           ; $5d05: $d8

	ld   h, a                                        ; $5d06: $67
	sbc  c                                           ; $5d07: $99
	nop                                              ; $5d08: $00
	ld   [bc], a                                     ; $5d09: $02
	rlca                                             ; $5d0a: $07
	ld   a, c                                        ; $5d0b: $79
	ld   b, $02                                      ; $5d0c: $06 $02
	inc  bc                                          ; $5d0e: $03
	ld   bc, $2000                                   ; $5d0f: $01 $00 $20
	nop                                              ; $5d12: $00
	rlca                                             ; $5d13: $07
	xor  b                                           ; $5d14: $a8
	ld   b, $02                                      ; $5d15: $06 $02
	inc  bc                                          ; $5d17: $03
	ld   bc, $2001                                   ; $5d18: $01 $01 $20
	nop                                              ; $5d1b: $00
	rlca                                             ; $5d1c: $07
	rra                                              ; $5d1d: $1f
	rlca                                             ; $5d1e: $07
	ld   [bc], a                                     ; $5d1f: $02
	inc  bc                                          ; $5d20: $03
	ld   bc, $2002                                   ; $5d21: $01 $02 $20
	nop                                              ; $5d24: $00
	ld   b, $83                                      ; $5d25: $06 $83
	rlca                                             ; $5d27: $07
	rrca                                             ; $5d28: $0f
	nop                                              ; $5d29: $00
	ld   bc, $0301                                   ; $5d2a: $01 $01 $03
	ld   h, l                                        ; $5d2d: $65
	inc  bc                                          ; $5d2e: $03
	ret  nc                                          ; $5d2f: $d0

	ld   [bc], a                                     ; $5d30: $02
	ld   c, b                                        ; $5d31: $48
	ld   [bc], a                                     ; $5d32: $02
	sub  c                                           ; $5d33: $91
	ld   a, l                                        ; $5d34: $7d
	sbc  [hl]                                        ; $5d35: $9e
	ld   h, l                                        ; $5d36: $65
	sub  c                                           ; $5d37: $91
	ld   e, d                                        ; $5d38: $5a
	and  c                                           ; $5d39: $a1
	ld   [hl], l                                     ; $5d3a: $75
	dec  c                                           ; $5d3b: $0d
	ld   e, c                                        ; $5d3c: $59
	sbc  l                                           ; $5d3d: $9d
	ld   h, a                                        ; $5d3e: $67
	ld   a, [$000d]                                  ; $5d3f: $fa $0d $00
	ld   a, [bc]                                     ; $5d42: $0a
	inc  e                                           ; $5d43: $1c
	ld   b, $01                                      ; $5d44: $06 $01
	ld   bc, $9601                                   ; $5d46: $01 $01 $96
	ld   h, l                                        ; $5d49: $65
	ld   a, [$520d]                                  ; $5d4a: $fa $0d $52
	ld   d, d                                        ; $5d4d: $52
	ld   l, h                                        ; $5d4e: $6c
	ld   a, [$0dfa]                                  ; $5d4f: $fa $fa $0d
	nop                                              ; $5d52: $00
	ld   a, [bc]                                     ; $5d53: $0a
	ld   b, $d2                                      ; $5d54: $06 $d2
	rlca                                             ; $5d56: $07
	rrca                                             ; $5d57: $0f
	nop                                              ; $5d58: $00
	ld   bc, $0301                                   ; $5d59: $01 $01 $03
	ld   h, l                                        ; $5d5c: $65
	inc  bc                                          ; $5d5d: $03
	ret  nc                                          ; $5d5e: $d0

	ld   [bc], a                                     ; $5d5f: $02
	ld   c, b                                        ; $5d60: $48
	ld   [bc], a                                     ; $5d61: $02
	sub  c                                           ; $5d62: $91
	ld   sp, hl                                      ; $5d63: $f9
	db   $10                                         ; $5d64: $10
	inc  bc                                          ; $5d65: $03
	ld   a, l                                        ; $5d66: $7d
	ld   b, $17                                      ; $5d67: $06 $17
	ld   d, d                                        ; $5d69: $52
	ld   h, l                                        ; $5d6a: $65
	ld   a, b                                        ; $5d6b: $78
	ld   e, e                                        ; $5d6c: $5b
	sub  c                                           ; $5d6d: $91
	ld   a, [$000d]                                  ; $5d6e: $fa $0d $00
	ld   a, [bc]                                     ; $5d71: $0a
	rrca                                             ; $5d72: $0f
	nop                                              ; $5d73: $00
	ld   bc, $0714                                   ; $5d74: $01 $14 $07
	ld   bc, $b101                                   ; $5d77: $01 $01 $b1
	reti                                             ; $5d7a: $d9


	call nz, $10fa                                   ; $5d7b: $c4 $fa $10
	and  l                                           ; $5d7e: $a5
	call nz, $fbc0                                   ; $5d7f: $c4 $c0 $fb
	ei                                               ; $5d82: $fb
	ei                                               ; $5d83: $fb
	dec  c                                           ; $5d84: $0d
	nop                                              ; $5d85: $00
	ld   a, [bc]                                     ; $5d86: $0a
	rlca                                             ; $5d87: $07
	reti                                             ; $5d88: $d9


	add  hl, bc                                      ; $5d89: $09
	inc  bc                                          ; $5d8a: $03
	jr   nz, jr_053_5d8e                             ; $5d8b: $20 $01

	ld   a, [bc]                                     ; $5d8d: $0a

jr_053_5d8e:
	inc  hl                                          ; $5d8e: $23
	nop                                              ; $5d8f: $00
	ld   sp, $2040                                   ; $5d90: $31 $40 $20
	inc  bc                                          ; $5d93: $03
	jr   nz, jr_053_5d97                             ; $5d94: $20 $01

	ld   a, [bc]                                     ; $5d96: $0a

jr_053_5d97:
	add  hl, hl                                      ; $5d97: $29
	nop                                              ; $5d98: $00
	inc  e                                           ; $5d99: $1c
	ld   b, $05                                      ; $5d9a: $06 $05
	dec  b                                           ; $5d9c: $05
	ld   bc, $5258                                   ; $5d9d: $01 $58 $52
	ld   e, b                                        ; $5da0: $58
	ld   d, d                                        ; $5da1: $52
	sbc  a                                           ; $5da2: $9f
	inc  bc                                          ; $5da3: $03
	ld   h, l                                        ; $5da4: $65
	inc  bc                                          ; $5da5: $03
	ret  nc                                          ; $5da6: $d0

	and  b                                           ; $5da7: $a0
	ld   a, e                                        ; $5da8: $7b
	sub  a                                           ; $5da9: $97
	ld   [hl], c                                     ; $5daa: $71
	ld   l, l                                        ; $5dab: $6d
	and  c                                           ; $5dac: $a1
	dec  c                                           ; $5dad: $0d
	ld   l, [hl]                                     ; $5dae: $6e
	ld   e, c                                        ; $5daf: $59
	sub  a                                           ; $5db0: $97
	ld   [bc], a                                     ; $5db1: $02
	ld   [hl], d                                     ; $5db2: $72
	and  b                                           ; $5db3: $a0
	inc  bc                                          ; $5db4: $03
	sub  e                                           ; $5db5: $93
	sbc  d                                           ; $5db6: $9a
	sub  [hl]                                        ; $5db7: $96
	sbc  a                                           ; $5db8: $9f
	dec  c                                           ; $5db9: $0d
	sub  b                                           ; $5dba: $90
	ld   d, h                                        ; $5dbb: $54
	ld   [bc], a                                     ; $5dbc: $02
	jr   nz, jr_053_5dc1                             ; $5dbd: $20 $02

	sub  e                                           ; $5dbf: $93
	dec  b                                           ; $5dc0: $05

jr_053_5dc1:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dc1: $cf
	adc  a                                           ; $5dc2: $8f
	ld   [hl], c                                     ; $5dc3: $71
	ld   e, c                                        ; $5dc4: $59
	sub  a                                           ; $5dc5: $97
	ld   l, [hl]                                     ; $5dc6: $6e
	sbc  a                                           ; $5dc7: $9f
	dec  c                                           ; $5dc8: $0d
	nop                                              ; $5dc9: $00
	ld   a, [bc]                                     ; $5dca: $0a
	ld   b, $ba                                      ; $5dcb: $06 $ba
	ld   [bc], a                                     ; $5dcd: $02
	rrca                                             ; $5dce: $0f
	nop                                              ; $5dcf: $00
	ld   bc, $b901                                   ; $5dd0: $01 $01 $b9
	push hl                                          ; $5dd3: $e5
	push af                                          ; $5dd4: $f5
	ret  c                                           ; $5dd5: $d8

	ld   [hl], l                                     ; $5dd6: $75
	ld   e, c                                        ; $5dd7: $59
	sbc  l                                           ; $5dd8: $9d
	ld   h, a                                        ; $5dd9: $67
	ld   a, [$0df9]                                  ; $5dda: $fa $f9 $0d
	nop                                              ; $5ddd: $00
	ld   a, [bc]                                     ; $5dde: $0a
	rrca                                             ; $5ddf: $0f
	nop                                              ; $5de0: $00
	ld   bc, $0714                                   ; $5de1: $01 $14 $07
	ld   bc, $a501                                   ; $5de4: $01 $01 $a5
	rst  ToBoot                                         ; $5de7: $c7
	call nz, $0dfa                                   ; $5de8: $c4 $fa $0d
	nop                                              ; $5deb: $00
	ld   a, [bc]                                     ; $5dec: $0a
	rlca                                             ; $5ded: $07
	reti                                             ; $5dee: $d9


	add  hl, bc                                      ; $5def: $09
	inc  bc                                          ; $5df0: $03
	jr   nz, jr_053_5df4                             ; $5df1: $20 $01

	ld   a, [bc]                                     ; $5df3: $0a

jr_053_5df4:
	inc  hl                                          ; $5df4: $23
	nop                                              ; $5df5: $00
	ld   sp, $2040                                   ; $5df6: $31 $40 $20
	inc  bc                                          ; $5df9: $03
	jr   nz, jr_053_5dfd                             ; $5dfa: $20 $01

	ld   a, [bc]                                     ; $5dfc: $0a

jr_053_5dfd:
	add  hl, hl                                      ; $5dfd: $29
	nop                                              ; $5dfe: $00
	inc  e                                           ; $5dff: $1c
	ld   b, $05                                      ; $5e00: $06 $05
	dec  b                                           ; $5e02: $05
	ld   bc, $6503                                   ; $5e03: $01 $03 $65
	inc  bc                                          ; $5e06: $03
	ret  nc                                          ; $5e07: $d0

	and  b                                           ; $5e08: $a0
	ld   a, e                                        ; $5e09: $7b
	sub  a                                           ; $5e0a: $97
	ld   [hl], c                                     ; $5e0b: $71
	ld   l, l                                        ; $5e0c: $6d
	and  c                                           ; $5e0d: $a1
	ld   l, [hl]                                     ; $5e0e: $6e
	ld   l, d                                        ; $5e0f: $6a
	sbc  a                                           ; $5e10: $9f
	dec  c                                           ; $5e11: $0d
	cp   c                                           ; $5e12: $b9
	push hl                                          ; $5e13: $e5
	push af                                          ; $5e14: $f5
	ret  c                                           ; $5e15: $d8

	ld   h, l                                        ; $5e16: $65
	ld   [hl], h                                     ; $5e17: $74
	sub  b                                           ; $5e18: $90
	pop  bc                                          ; $5e19: $c1
	db   $e3                                         ; $5e1a: $e3
	ld   l, [hl]                                     ; $5e1b: $6e
	sbc  a                                           ; $5e1c: $9f
	dec  c                                           ; $5e1d: $0d
	sub  b                                           ; $5e1e: $90
	ld   d, h                                        ; $5e1f: $54
	ld   [bc], a                                     ; $5e20: $02
	jr   nz, jr_053_5e25                             ; $5e21: $20 $02

	sub  e                                           ; $5e23: $93
	dec  b                                           ; $5e24: $05

jr_053_5e25:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e25: $cf
	adc  a                                           ; $5e26: $8f
	ld   [hl], c                                     ; $5e27: $71
	ld   e, c                                        ; $5e28: $59
	sub  a                                           ; $5e29: $97
	ld   l, [hl]                                     ; $5e2a: $6e
	sbc  a                                           ; $5e2b: $9f
	dec  c                                           ; $5e2c: $0d
	nop                                              ; $5e2d: $00
	ld   a, [bc]                                     ; $5e2e: $0a
	ld   b, $ba                                      ; $5e2f: $06 $ba
	ld   [bc], a                                     ; $5e31: $02
	rrca                                             ; $5e32: $0f
	nop                                              ; $5e33: $00
	ld   bc, $0714                                   ; $5e34: $01 $14 $07
	ld   bc, $b101                                   ; $5e37: $01 $01 $b1
	pop  af                                          ; $5e3a: $f1
	db   $fc                                         ; $5e3b: $fc
	db   $fc                                         ; $5e3c: $fc
	db   $fc                                         ; $5e3d: $fc
	push af                                          ; $5e3e: $f5
	rst  $38                                         ; $5e3f: $ff
	rst  $38                                         ; $5e40: $ff
	dec  c                                           ; $5e41: $0d
	nop                                              ; $5e42: $00
	ld   a, [bc]                                     ; $5e43: $0a
	rlca                                             ; $5e44: $07
	reti                                             ; $5e45: $d9


	add  hl, bc                                      ; $5e46: $09
	inc  bc                                          ; $5e47: $03
	jr   nz, jr_053_5e4b                             ; $5e48: $20 $01

	ld   a, [bc]                                     ; $5e4a: $0a

jr_053_5e4b:
	inc  hl                                          ; $5e4b: $23
	nop                                              ; $5e4c: $00
	ld   sp, $2040                                   ; $5e4d: $31 $40 $20
	inc  bc                                          ; $5e50: $03
	jr   nz, jr_053_5e54                             ; $5e51: $20 $01

	ld   a, [bc]                                     ; $5e53: $0a

jr_053_5e54:
	add  hl, hl                                      ; $5e54: $29
	nop                                              ; $5e55: $00
	inc  e                                           ; $5e56: $1c
	ld   b, $02                                      ; $5e57: $06 $02
	ld   [bc], a                                     ; $5e59: $02
	ld   bc, $acd1                                   ; $5e5a: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $5e5d: $fa $10 $0d
	db   $dd                                         ; $5e60: $dd
	or   d                                           ; $5e61: $b2
	ld   [hl], c                                     ; $5e62: $71
	halt                                             ; $5e63: $76
	ld   h, a                                        ; $5e64: $67
	and  c                                           ; $5e65: $a1
	ld   h, [hl]                                     ; $5e66: $66
	sub  c                                           ; $5e67: $91
	ld   a, e                                        ; $5e68: $7b
	ld   d, l                                        ; $5e69: $55
	sub  [hl]                                        ; $5e6a: $96
	sbc  a                                           ; $5e6b: $9f
	dec  c                                           ; $5e6c: $0d
	sub  b                                           ; $5e6d: $90
	ld   d, h                                        ; $5e6e: $54
	ld   [bc], a                                     ; $5e6f: $02
	jr   nz, jr_053_5e74                             ; $5e70: $20 $02

	sub  e                                           ; $5e72: $93
	dec  b                                           ; $5e73: $05

jr_053_5e74:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e74: $cf
	adc  a                                           ; $5e75: $8f
	ld   [hl], c                                     ; $5e76: $71
	ld   e, c                                        ; $5e77: $59
	sub  a                                           ; $5e78: $97
	ld   l, [hl]                                     ; $5e79: $6e
	sbc  a                                           ; $5e7a: $9f
	dec  c                                           ; $5e7b: $0d
	nop                                              ; $5e7c: $00
	ld   a, [bc]                                     ; $5e7d: $0a
	ld   b, $ba                                      ; $5e7e: $06 $ba
	ld   [bc], a                                     ; $5e80: $02
	inc  e                                           ; $5e81: $1c
	ld   b, $02                                      ; $5e82: $06 $02
	ld   [bc], a                                     ; $5e84: $02
	ld   bc, $6903                                   ; $5e85: $01 $03 $69
	ld   [bc], a                                     ; $5e88: $02
	xor  d                                           ; $5e89: $aa
	ld   a, c                                        ; $5e8a: $79
	inc  b                                           ; $5e8b: $04
	dec  bc                                          ; $5e8c: $0b
	inc  bc                                          ; $5e8d: $03
	ret  nc                                          ; $5e8e: $d0

	sub  $a8                                         ; $5e8f: $d6 $a8
	and  l                                           ; $5e91: $a5
	push af                                          ; $5e92: $f5
	ret                                              ; $5e93: $c9


	ld   [hl], l                                     ; $5e94: $75
	dec  c                                           ; $5e95: $0d
	inc  bc                                          ; $5e96: $03
	ld   h, l                                        ; $5e97: $65
	inc  bc                                          ; $5e98: $03
	ret  nc                                          ; $5e99: $d0

	adc  h                                           ; $5e9a: $8c
	sbc  l                                           ; $5e9b: $9d
	ld   h, l                                        ; $5e9c: $65
	ld   h, b                                        ; $5e9d: $60
	sbc  b                                           ; $5e9e: $98
	ld   l, [hl]                                     ; $5e9f: $6e
	ld   a, [$000d]                                  ; $5ea0: $fa $0d $00
	ld   a, [bc]                                     ; $5ea3: $0a
	inc  d                                           ; $5ea4: $14
	dec  d                                           ; $5ea5: $15
	ld   bc, $0519                                   ; $5ea6: $01 $19 $05
	inc  bc                                          ; $5ea9: $03
	ld   [bc], a                                     ; $5eaa: $02
	ld   [hl], d                                     ; $5eab: $72
	and  b                                           ; $5eac: $a0
	inc  bc                                          ; $5ead: $03
	sub  e                                           ; $5eae: $93
	sbc  c                                           ; $5eaf: $99
	nop                                              ; $5eb0: $00
	nop                                              ; $5eb1: $00
	ld   e, b                                        ; $5eb2: $58
	inc  b                                           ; $5eb3: $04
	adc  c                                           ; $5eb4: $89
	and  b                                           ; $5eb5: $a0
	inc  bc                                          ; $5eb6: $03
	sub  e                                           ; $5eb7: $93
	sbc  c                                           ; $5eb8: $99
	nop                                              ; $5eb9: $00
	ld   bc, $6602                                   ; $5eba: $01 $02 $66
	and  b                                           ; $5ebd: $a0
	inc  bc                                          ; $5ebe: $03
	sub  e                                           ; $5ebf: $93
	sbc  c                                           ; $5ec0: $99
	nop                                              ; $5ec1: $00
	ld   [bc], a                                     ; $5ec2: $02
	rlca                                             ; $5ec3: $07
	ld   [hl-], a                                    ; $5ec4: $32
	ld   [$0302], sp                                 ; $5ec5: $08 $02 $03
	ld   bc, $2000                                   ; $5ec8: $01 $00 $20
	nop                                              ; $5ecb: $00
	rlca                                             ; $5ecc: $07
	ld   l, c                                        ; $5ecd: $69
	ld   [$0302], sp                                 ; $5ece: $08 $02 $03
	ld   bc, $2001                                   ; $5ed1: $01 $01 $20
	nop                                              ; $5ed4: $00
	rlca                                             ; $5ed5: $07
	jp   nc, $0208                                   ; $5ed6: $d2 $08 $02

	inc  bc                                          ; $5ed9: $03
	ld   bc, $2002                                   ; $5eda: $01 $02 $20
	nop                                              ; $5edd: $00
	ld   b, $35                                      ; $5ede: $06 $35
	add  hl, bc                                      ; $5ee0: $09
	rrca                                             ; $5ee1: $0f
	nop                                              ; $5ee2: $00
	ld   bc, $0301                                   ; $5ee3: $01 $01 $03
	ld   h, l                                        ; $5ee6: $65
	inc  bc                                          ; $5ee7: $03
	ret  nc                                          ; $5ee8: $d0

	adc  h                                           ; $5ee9: $8c
	sbc  l                                           ; $5eea: $9d
	ld   h, l                                        ; $5eeb: $65
	ld   h, b                                        ; $5eec: $60
	sbc  b                                           ; $5eed: $98
	ld   l, [hl]                                     ; $5eee: $6e
	ld   [hl], c                                     ; $5eef: $71
	ld   l, l                                        ; $5ef0: $6d
	sub  a                                           ; $5ef1: $97
	dec  c                                           ; $5ef2: $0d
	ld   [bc], a                                     ; $5ef3: $02
	ld   [hl], d                                     ; $5ef4: $72
	and  b                                           ; $5ef5: $a0
	inc  bc                                          ; $5ef6: $03
	sub  e                                           ; $5ef7: $93
	sbc  c                                           ; $5ef8: $99
	ld   l, h                                        ; $5ef9: $6c
	ld   a, [$000d]                                  ; $5efa: $fa $0d $00
	ld   a, [bc]                                     ; $5efd: $0a
	inc  d                                           ; $5efe: $14
	ld   a, [de]                                     ; $5eff: $1a
	ld   bc, $061c                                   ; $5f00: $01 $1c $06
	ld   bc, $0101                                   ; $5f03: $01 $01 $01
	sub  [hl]                                        ; $5f06: $96
	ld   h, l                                        ; $5f07: $65
	ld   a, [$ab0d]                                  ; $5f08: $fa $0d $ab
	call nz, $fbb2                                   ; $5f0b: $c4 $b2 $fb
	ld   l, [hl]                                     ; $5f0e: $6e
	ld   l, d                                        ; $5f0f: $6a
	ld   a, [$0dfa]                                  ; $5f10: $fa $fa $0d
	nop                                              ; $5f13: $00
	ld   a, [bc]                                     ; $5f14: $0a
	ld   b, $84                                      ; $5f15: $06 $84
	add  hl, bc                                      ; $5f17: $09
	rrca                                             ; $5f18: $0f
	nop                                              ; $5f19: $00
	ld   bc, $5801                                   ; $5f1a: $01 $01 $58
	sbc  [hl]                                        ; $5f1d: $9e
	ld   e, b                                        ; $5f1e: $58
	inc  b                                           ; $5f1f: $04
	adc  c                                           ; $5f20: $89
	and  b                                           ; $5f21: $a0
	inc  bc                                          ; $5f22: $03
	sub  e                                           ; $5f23: $93
	sub  a                                           ; $5f24: $97
	ld   a, b                                        ; $5f25: $78
	ld   e, e                                        ; $5f26: $5b
	sub  c                                           ; $5f27: $91
	ld   a, [$000d]                                  ; $5f28: $fa $0d $00
	ld   a, [bc]                                     ; $5f2b: $0a
	rrca                                             ; $5f2c: $0f
	nop                                              ; $5f2d: $00
	ld   bc, $0714                                   ; $5f2e: $01 $14 $07
	ld   bc, $b101                                   ; $5f31: $01 $01 $b1
	call nz, $ffff                                   ; $5f34: $c4 $ff $ff
	dec  c                                           ; $5f37: $0d
	nop                                              ; $5f38: $00
	ld   a, [bc]                                     ; $5f39: $0a
	rlca                                             ; $5f3a: $07
	reti                                             ; $5f3b: $d9


	add  hl, bc                                      ; $5f3c: $09
	inc  bc                                          ; $5f3d: $03
	jr   nz, jr_053_5f41                             ; $5f3e: $20 $01

	ld   a, [bc]                                     ; $5f40: $0a

jr_053_5f41:
	inc  hl                                          ; $5f41: $23
	nop                                              ; $5f42: $00
	ld   sp, $2040                                   ; $5f43: $31 $40 $20
	inc  bc                                          ; $5f46: $03
	jr   nz, jr_053_5f4a                             ; $5f47: $20 $01

	ld   a, [bc]                                     ; $5f49: $0a

jr_053_5f4a:
	add  hl, hl                                      ; $5f4a: $29
	nop                                              ; $5f4b: $00
	inc  e                                           ; $5f4c: $1c
	ld   b, $05                                      ; $5f4d: $06 $05
	dec  b                                           ; $5f4f: $05
	ld   bc, $5258                                   ; $5f50: $01 $58 $52
	ld   e, b                                        ; $5f53: $58
	ld   d, d                                        ; $5f54: $52
	sbc  a                                           ; $5f55: $9f
	inc  bc                                          ; $5f56: $03
	ld   h, l                                        ; $5f57: $65
	inc  bc                                          ; $5f58: $03
	ret  nc                                          ; $5f59: $d0

	and  b                                           ; $5f5a: $a0
	ld   a, e                                        ; $5f5b: $7b
	sub  a                                           ; $5f5c: $97
	ld   [hl], c                                     ; $5f5d: $71
	ld   l, l                                        ; $5f5e: $6d
	and  c                                           ; $5f5f: $a1
	dec  c                                           ; $5f60: $0d
	ld   l, [hl]                                     ; $5f61: $6e
	ld   e, c                                        ; $5f62: $59
	sub  a                                           ; $5f63: $97
	ld   [bc], a                                     ; $5f64: $02
	ld   [hl], d                                     ; $5f65: $72
	and  b                                           ; $5f66: $a0
	inc  bc                                          ; $5f67: $03
	sub  e                                           ; $5f68: $93
	sbc  d                                           ; $5f69: $9a
	sub  [hl]                                        ; $5f6a: $96
	sbc  a                                           ; $5f6b: $9f
	dec  c                                           ; $5f6c: $0d
	sub  b                                           ; $5f6d: $90
	ld   d, h                                        ; $5f6e: $54
	ld   [bc], a                                     ; $5f6f: $02
	jr   nz, jr_053_5f74                             ; $5f70: $20 $02

	sub  e                                           ; $5f72: $93
	dec  b                                           ; $5f73: $05

jr_053_5f74:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f74: $cf
	adc  a                                           ; $5f75: $8f
	ld   [hl], c                                     ; $5f76: $71
	ld   e, c                                        ; $5f77: $59
	sub  a                                           ; $5f78: $97
	ld   l, [hl]                                     ; $5f79: $6e
	sbc  a                                           ; $5f7a: $9f
	dec  c                                           ; $5f7b: $0d
	nop                                              ; $5f7c: $00
	ld   a, [bc]                                     ; $5f7d: $0a
	ld   b, $ba                                      ; $5f7e: $06 $ba
	ld   [bc], a                                     ; $5f80: $02
	rrca                                             ; $5f81: $0f
	nop                                              ; $5f82: $00
	ld   bc, $0201                                   ; $5f83: $01 $01 $02
	ld   h, [hl]                                     ; $5f86: $66
	and  b                                           ; $5f87: $a0
	inc  bc                                          ; $5f88: $03
	sub  e                                           ; $5f89: $93
	sbc  c                                           ; $5f8a: $99
	ld   sp, hl                                      ; $5f8b: $f9
	dec  c                                           ; $5f8c: $0d
	nop                                              ; $5f8d: $00
	ld   a, [bc]                                     ; $5f8e: $0a
	rrca                                             ; $5f8f: $0f
	nop                                              ; $5f90: $00
	ld   bc, $0714                                   ; $5f91: $01 $14 $07
	ld   bc, $b101                                   ; $5f94: $01 $01 $b1
	or   l                                           ; $5f97: $b5
	call nz, $ffff                                   ; $5f98: $c4 $ff $ff
	dec  c                                           ; $5f9b: $0d
	nop                                              ; $5f9c: $00
	ld   a, [bc]                                     ; $5f9d: $0a
	rlca                                             ; $5f9e: $07
	reti                                             ; $5f9f: $d9


	add  hl, bc                                      ; $5fa0: $09
	inc  bc                                          ; $5fa1: $03
	jr   nz, jr_053_5fa5                             ; $5fa2: $20 $01

	ld   a, [bc]                                     ; $5fa4: $0a

jr_053_5fa5:
	inc  hl                                          ; $5fa5: $23
	nop                                              ; $5fa6: $00
	ld   sp, $2040                                   ; $5fa7: $31 $40 $20
	inc  bc                                          ; $5faa: $03
	jr   nz, jr_053_5fae                             ; $5fab: $20 $01

	ld   a, [bc]                                     ; $5fad: $0a

jr_053_5fae:
	add  hl, hl                                      ; $5fae: $29
	nop                                              ; $5faf: $00
	inc  e                                           ; $5fb0: $1c
	ld   b, $05                                      ; $5fb1: $06 $05
	dec  b                                           ; $5fb3: $05
	ld   bc, $6503                                   ; $5fb4: $01 $03 $65
	inc  bc                                          ; $5fb7: $03
	ret  nc                                          ; $5fb8: $d0

	and  b                                           ; $5fb9: $a0
	ld   a, e                                        ; $5fba: $7b
	sub  a                                           ; $5fbb: $97
	ld   [hl], c                                     ; $5fbc: $71
	ld   l, l                                        ; $5fbd: $6d
	and  c                                           ; $5fbe: $a1
	ld   l, [hl]                                     ; $5fbf: $6e
	ld   l, d                                        ; $5fc0: $6a
	sbc  a                                           ; $5fc1: $9f
	dec  c                                           ; $5fc2: $0d
	ld   [bc], a                                     ; $5fc3: $02
	ld   h, [hl]                                     ; $5fc4: $66
	and  b                                           ; $5fc5: $a0
	inc  bc                                          ; $5fc6: $03
	sub  e                                           ; $5fc7: $93
	ld   [hl], c                                     ; $5fc8: $71
	ld   [hl], h                                     ; $5fc9: $74
	sub  b                                           ; $5fca: $90
	pop  bc                                          ; $5fcb: $c1
	db   $e3                                         ; $5fcc: $e3
	ld   l, [hl]                                     ; $5fcd: $6e
	sbc  a                                           ; $5fce: $9f
	dec  c                                           ; $5fcf: $0d
	sub  b                                           ; $5fd0: $90
	ld   d, h                                        ; $5fd1: $54
	ld   [bc], a                                     ; $5fd2: $02
	jr   nz, jr_053_5fd7                             ; $5fd3: $20 $02

	sub  e                                           ; $5fd5: $93
	dec  b                                           ; $5fd6: $05

jr_053_5fd7:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fd7: $cf
	adc  a                                           ; $5fd8: $8f
	ld   [hl], c                                     ; $5fd9: $71
	ld   e, c                                        ; $5fda: $59
	sub  a                                           ; $5fdb: $97
	ld   l, [hl]                                     ; $5fdc: $6e
	sbc  a                                           ; $5fdd: $9f
	dec  c                                           ; $5fde: $0d
	nop                                              ; $5fdf: $00
	ld   a, [bc]                                     ; $5fe0: $0a
	ld   b, $ba                                      ; $5fe1: $06 $ba
	ld   [bc], a                                     ; $5fe3: $02
	rrca                                             ; $5fe4: $0f
	nop                                              ; $5fe5: $00
	ld   bc, $0714                                   ; $5fe6: $01 $14 $07
	ld   bc, $b101                                   ; $5fe9: $01 $01 $b1
	pop  af                                          ; $5fec: $f1
	db   $fc                                         ; $5fed: $fc
	db   $fc                                         ; $5fee: $fc
	db   $fc                                         ; $5fef: $fc
	push af                                          ; $5ff0: $f5
	rst  $38                                         ; $5ff1: $ff
	rst  $38                                         ; $5ff2: $ff
	dec  c                                           ; $5ff3: $0d
	nop                                              ; $5ff4: $00
	ld   a, [bc]                                     ; $5ff5: $0a
	rlca                                             ; $5ff6: $07
	reti                                             ; $5ff7: $d9


	add  hl, bc                                      ; $5ff8: $09
	inc  bc                                          ; $5ff9: $03
	jr   nz, jr_053_5ffd                             ; $5ffa: $20 $01

	ld   a, [bc]                                     ; $5ffc: $0a

jr_053_5ffd:
	inc  hl                                          ; $5ffd: $23
	nop                                              ; $5ffe: $00
	ld   sp, $2040                                   ; $5fff: $31 $40 $20
	inc  bc                                          ; $6002: $03
	jr   nz, jr_053_6006                             ; $6003: $20 $01

	ld   a, [bc]                                     ; $6005: $0a

jr_053_6006:
	add  hl, hl                                      ; $6006: $29
	nop                                              ; $6007: $00
	inc  e                                           ; $6008: $1c
	ld   b, $02                                      ; $6009: $06 $02
	ld   [bc], a                                     ; $600b: $02
	ld   bc, $acd1                                   ; $600c: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $600f: $fa $10 $0d
	db   $dd                                         ; $6012: $dd
	or   d                                           ; $6013: $b2
	ld   [hl], c                                     ; $6014: $71
	halt                                             ; $6015: $76
	ld   h, a                                        ; $6016: $67
	and  c                                           ; $6017: $a1
	ld   h, [hl]                                     ; $6018: $66
	sub  c                                           ; $6019: $91
	ld   a, e                                        ; $601a: $7b
	ld   d, l                                        ; $601b: $55
	sub  [hl]                                        ; $601c: $96
	sbc  a                                           ; $601d: $9f
	dec  c                                           ; $601e: $0d
	sub  b                                           ; $601f: $90
	ld   d, h                                        ; $6020: $54
	ld   [bc], a                                     ; $6021: $02
	jr   nz, jr_053_6026                             ; $6022: $20 $02

	sub  e                                           ; $6024: $93
	dec  b                                           ; $6025: $05

jr_053_6026:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6026: $cf
	adc  a                                           ; $6027: $8f
	ld   [hl], c                                     ; $6028: $71
	ld   e, c                                        ; $6029: $59
	sub  a                                           ; $602a: $97
	ld   l, [hl]                                     ; $602b: $6e
	sbc  a                                           ; $602c: $9f
	dec  c                                           ; $602d: $0d
	nop                                              ; $602e: $00
	ld   a, [bc]                                     ; $602f: $0a
	ld   b, $ba                                      ; $6030: $06 $ba
	ld   [bc], a                                     ; $6032: $02
	dec  e                                           ; $6033: $1d
	ld   b, b                                        ; $6034: $40
	ld   d, $03                                      ; $6035: $16 $03
	ld   d, $01                                      ; $6037: $16 $01
	inc  bc                                          ; $6039: $03
	jr   z, jr_053_603c                              ; $603a: $28 $00

jr_053_603c:
	ld   bc, $6596                                   ; $603c: $01 $96 $65
	sub  [hl]                                        ; $603f: $96
	ld   h, l                                        ; $6040: $65
	sbc  a                                           ; $6041: $9f
	dec  c                                           ; $6042: $0d
	ld   d, h                                        ; $6043: $54
	adc  h                                           ; $6044: $8c
	ld   d, d                                        ; $6045: $52
	ld   l, h                                        ; $6046: $6c
	ld   [$9f00], sp                                 ; $6047: $08 $00 $9f
	dec  c                                           ; $604a: $0d
	ld   a, b                                        ; $604b: $78
	ld   e, c                                        ; $604c: $59
	ld   a, b                                        ; $604d: $78
	ld   e, c                                        ; $604e: $59
	ld   d, d                                        ; $604f: $52
	ld   d, d                                        ; $6050: $52
	ld   [bc], a                                     ; $6051: $02
	scf                                              ; $6052: $37
	ld   h, [hl]                                     ; $6053: $66
	ld   l, [hl]                                     ; $6054: $6e
	ld   a, b                                        ; $6055: $78
	sbc  a                                           ; $6056: $9f
	dec  c                                           ; $6057: $0d
	nop                                              ; $6058: $00
	ld   a, [bc]                                     ; $6059: $0a
	ld   bc, $9166                                   ; $605a: $01 $66 $91
	ld   d, b                                        ; $605d: $50
	sbc  [hl]                                        ; $605e: $9e
	ld   [bc], a                                     ; $605f: $02
	and  l                                           ; $6060: $a5
	inc  b                                           ; $6061: $04
	add  hl, hl                                      ; $6062: $29
	ld   a, l                                        ; $6063: $7d
	ld   [bc], a                                     ; $6064: $02
	and  l                                           ; $6065: $a5
	ld   a, h                                        ; $6066: $7c
	and  $c5                                         ; $6067: $e6 $c5
	and  b                                           ; $6069: $a0
	dec  c                                           ; $606a: $0d
	cp   d                                           ; $606b: $ba
	push de                                          ; $606c: $d5
	ei                                               ; $606d: $fb
	jp   z, $c4a3                                    ; $606e: $ca $a3 $c4

	ret  c                                           ; $6071: $d8

	ld   h, l                                        ; $6072: $65
	ld   [hl], h                                     ; $6073: $74
	ld   d, d                                        ; $6074: $52
	ld   e, l                                        ; $6075: $5d
	ld   l, d                                        ; $6076: $6a
	ld   a, [$030d]                                  ; $6077: $fa $0d $03
	inc  e                                           ; $607a: $1c
	inc  b                                           ; $607b: $04
	ld   d, e                                        ; $607c: $53
	ld   a, l                                        ; $607d: $7d
	ld   d, d                                        ; $607e: $52
	ld   d, d                                        ; $607f: $52
	ld   e, c                                        ; $6080: $59
	ld   sp, hl                                      ; $6081: $f9
	dec  c                                           ; $6082: $0d
	nop                                              ; $6083: $00
	ld   a, [bc]                                     ; $6084: $0a
	ld   b, $7d                                      ; $6085: $06 $7d
	ld   a, [bc]                                     ; $6087: $0a
	inc  e                                           ; $6088: $1c
	ld   b, $05                                      ; $6089: $06 $05
	dec  b                                           ; $608b: $05
	ld   bc, $5258                                   ; $608c: $01 $58 $52
	ld   [$9f00], sp                                 ; $608f: $08 $00 $9f
	dec  c                                           ; $6092: $0d
	ld   e, b                                        ; $6093: $58
	inc  bc                                          ; $6094: $03
	ld   c, a                                        ; $6095: $4f
	sub  b                                           ; $6096: $90
	ld   d, h                                        ; $6097: $54
	sub  $eb                                         ; $6098: $d6 $eb
	sub  $eb                                         ; $609a: $d6 $eb
	ld   h, [hl]                                     ; $609c: $66
	sub  c                                           ; $609d: $91
	ld   a, b                                        ; $609e: $78
	ld   d, d                                        ; $609f: $52
	ld   e, c                                        ; $60a0: $59
	ld   sp, hl                                      ; $60a1: $f9
	dec  c                                           ; $60a2: $0d
	ld   [bc], a                                     ; $60a3: $02
	and  l                                           ; $60a4: $a5
	inc  b                                           ; $60a5: $04
	xor  d                                           ; $60a6: $aa
	ld   a, l                                        ; $60a7: $7d
	sub  b                                           ; $60a8: $90
	ld   d, h                                        ; $60a9: $54
	sub  d                                           ; $60aa: $92
	adc  a                                           ; $60ab: $8f
	sub  [hl]                                        ; $60ac: $96
	ld   d, h                                        ; $60ad: $54
	sbc  a                                           ; $60ae: $9f
	dec  c                                           ; $60af: $0d
	nop                                              ; $60b0: $00
	ld   a, [bc]                                     ; $60b1: $0a
	ld   bc, $9504                                   ; $60b2: $01 $04 $95
	ld   [bc], a                                     ; $60b5: $02
	ld   hl, $9079                                   ; $60b6: $21 $79 $90
	ld   [hl], a                                     ; $60b9: $77
	ld   [hl], c                                     ; $60ba: $71
	ld   [hl], h                                     ; $60bb: $74
	dec  c                                           ; $60bc: $0d
	sub  h                                           ; $60bd: $94
	ld   [hl], c                                     ; $60be: $71
	ld   e, l                                        ; $60bf: $5d
	sbc  b                                           ; $60c0: $98
	inc  bc                                          ; $60c1: $03
	and  a                                           ; $60c2: $a7
	adc  l                                           ; $60c3: $8d
	ld   a, b                                        ; $60c4: $78
	sbc  a                                           ; $60c5: $9f
	dec  c                                           ; $60c6: $0d
	nop                                              ; $60c7: $00
	ld   a, [bc]                                     ; $60c8: $0a
	dec  c                                           ; $60c9: $0d
	nop                                              ; $60ca: $00
	nop                                              ; $60cb: $00
	rrca                                             ; $60cc: $0f
	nop                                              ; $60cd: $00
	ld   bc, $020c                                   ; $60ce: $01 $0c $02
	add  hl, bc                                      ; $60d1: $09
	ld   d, b                                        ; $60d2: $50
	ld   c, $01                                      ; $60d3: $0e $01
	rrca                                             ; $60d5: $0f
	nop                                              ; $60d6: $00
	ld   bc, $a501                                   ; $60d7: $01 $01 $a5
	rst  ToBoot                                         ; $60da: $c7
	rst  ToBoot                                         ; $60db: $c7
	rst  ToBoot                                         ; $60dc: $c7
	rst  ToBoot                                         ; $60dd: $c7
	rst  $38                                         ; $60de: $ff
	rst  $38                                         ; $60df: $ff
	dec  c                                           ; $60e0: $0d
	nop                                              ; $60e1: $00
	ld   sp, $2040                                   ; $60e2: $31 $40 $20
	ld   bc, $0082                                   ; $60e5: $01 $82 $00
	ld   bc, $a502                                   ; $60e8: $01 $02 $a5
	inc  b                                           ; $60eb: $04
	xor  d                                           ; $60ec: $aa
	ld   a, l                                        ; $60ed: $7d
	xor  h                                           ; $60ee: $ac
	push af                                          ; $60ef: $f5
	bit  4, e                                        ; $60f0: $cb $63
	and  c                                           ; $60f2: $a1
	ld   a, c                                        ; $60f3: $79
	dec  c                                           ; $60f4: $0d
	adc  a                                           ; $60f5: $8f
	ld   d, d                                        ; $60f6: $52
	sbc  l                                           ; $60f7: $9d
	ld   e, l                                        ; $60f8: $5d
	and  b                                           ; $60f9: $a0
	ld   e, c                                        ; $60fa: $59
	ld   e, a                                        ; $60fb: $5f
	ld   [hl], h                                     ; $60fc: $74
	ld   h, l                                        ; $60fd: $65
	adc  h                                           ; $60fe: $8c
	ld   [hl], c                                     ; $60ff: $71
	ld   l, l                                        ; $6100: $6d
	ld   a, b                                        ; $6101: $78
	rst  $38                                         ; $6102: $ff
	dec  c                                           ; $6103: $0d
	nop                                              ; $6104: $00
	ld   a, [bc]                                     ; $6105: $0a
	ld   bc, $ffff                                   ; $6106: $01 $ff $ff
	and  c                                           ; $6109: $a1
	ld   sp, hl                                      ; $610a: $f9
	db   $10                                         ; $610b: $10
	sub  b                                           ; $610c: $90
	ld   d, h                                        ; $610d: $54
	ld   h, c                                        ; $610e: $61
	and  c                                           ; $610f: $a1
	ld   a, b                                        ; $6110: $78
	inc  bc                                          ; $6111: $03
	ld   l, a                                        ; $6112: $6f
	ld   [bc], a                                     ; $6113: $02
	xor  c                                           ; $6114: $a9
	ld   e, c                                        ; $6115: $59
	rst  $38                                         ; $6116: $ff
	dec  c                                           ; $6117: $0d
	inc  b                                           ; $6118: $04
	xor  d                                           ; $6119: $aa
	ld   [bc], a                                     ; $611a: $02
	sub  a                                           ; $611b: $97
	and  b                                           ; $611c: $a0
	ld   [hl], d                                     ; $611d: $72
	ld   e, a                                        ; $611e: $5f
	ld   [hl], h                                     ; $611f: $74
	sbc  [hl]                                        ; $6120: $9e
	inc  b                                           ; $6121: $04
	ld   b, d                                        ; $6122: $42
	sub  [hl]                                        ; $6123: $96
	ld   d, h                                        ; $6124: $54
	sbc  a                                           ; $6125: $9f
	dec  c                                           ; $6126: $0d
	nop                                              ; $6127: $00
	ld   a, [bc]                                     ; $6128: $0a
	add  hl, hl                                      ; $6129: $29
	nop                                              ; $612a: $00
	nop                                              ; $612b: $00
	inc  e                                           ; $612c: $1c
	ld   b, $02                                      ; $612d: $06 $02
	ld   [bc], a                                     ; $612f: $02
	ld   bc, $a102                                   ; $6130: $01 $02 $a1
	ld   [bc], a                                     ; $6133: $02
	ld   a, e                                        ; $6134: $7b
	ld   d, d                                        ; $6135: $52
	inc  b                                           ; $6136: $04
	ld   b, l                                        ; $6137: $45
	sbc  d                                           ; $6138: $9a
	sbc  e                                           ; $6139: $9b
	sub  [hl]                                        ; $613a: $96
	sbc  a                                           ; $613b: $9f
	dec  c                                           ; $613c: $0d
	ld   h, [hl]                                     ; $613d: $66
	sub  c                                           ; $613e: $91
	sbc  [hl]                                        ; $613f: $9e
	ld   d, d                                        ; $6140: $52
	ld   e, l                                        ; $6141: $5d
	ld   l, d                                        ; $6142: $6a
	ld   a, [$000d]                                  ; $6143: $fa $0d $00
	ld   a, [bc]                                     ; $6146: $0a
	inc  e                                           ; $6147: $1c
	ld   b, $02                                      ; $6148: $06 $02
	ld   [bc], a                                     ; $614a: $02
	ld   bc, $688c                                   ; $614b: $01 $8c $68
	ld   a, l                                        ; $614e: $7d
	sbc  [hl]                                        ; $614f: $9e
	inc  b                                           ; $6150: $04
	dec  bc                                          ; $6151: $0b
	inc  bc                                          ; $6152: $03
	ret  nc                                          ; $6153: $d0

	sub  $a8                                         ; $6154: $d6 $a8
	and  l                                           ; $6156: $a5
	push af                                          ; $6157: $f5
	ret                                              ; $6158: $c9


	ld   a, h                                        ; $6159: $7c
	dec  c                                           ; $615a: $0d
	ld   [bc], a                                     ; $615b: $02
	inc  [hl]                                        ; $615c: $34
	inc  bc                                          ; $615d: $03
	ret  nc                                          ; $615e: $d0

	ld   h, b                                        ; $615f: $60
	sbc  b                                           ; $6160: $98
	ld   l, [hl]                                     ; $6161: $6e
	ld   a, [$000d]                                  ; $6162: $fa $0d $00
	ld   a, [bc]                                     ; $6165: $0a
	inc  d                                           ; $6166: $14
	dec  d                                           ; $6167: $15
	ld   bc, $0319                                   ; $6168: $01 $19 $03
	inc  bc                                          ; $616b: $03
	inc  bc                                          ; $616c: $03
	ld   a, l                                        ; $616d: $7d
	ld   [hl], l                                     ; $616e: $75
	ld   h, e                                        ; $616f: $63
	ld   a, [hl]                                     ; $6170: $7e
	ld   e, l                                        ; $6171: $5d
	nop                                              ; $6172: $00
	nop                                              ; $6173: $00
	ld   e, b                                        ; $6174: $58
	ld   a, b                                        ; $6175: $78
	ld   e, c                                        ; $6176: $59
	and  b                                           ; $6177: $a0
	inc  bc                                          ; $6178: $03
	sub  e                                           ; $6179: $93
	sbc  c                                           ; $617a: $99
	nop                                              ; $617b: $00
	ld   bc, $6b03                                   ; $617c: $01 $03 $6b
	ld   [hl], l                                     ; $617f: $75
	ld   b, $17                                      ; $6180: $06 $17
	ld   d, h                                        ; $6182: $54
	nop                                              ; $6183: $00
	ld   [bc], a                                     ; $6184: $02
	rlca                                             ; $6185: $07
	db   $f4                                         ; $6186: $f4
	ld   a, [bc]                                     ; $6187: $0a
	ld   [bc], a                                     ; $6188: $02
	inc  bc                                          ; $6189: $03
	ld   bc, $2000                                   ; $618a: $01 $00 $20
	nop                                              ; $618d: $00
	rlca                                             ; $618e: $07
	inc  h                                           ; $618f: $24
	dec  bc                                          ; $6190: $0b
	ld   [bc], a                                     ; $6191: $02
	inc  bc                                          ; $6192: $03
	ld   bc, $2001                                   ; $6193: $01 $01 $20
	nop                                              ; $6196: $00
	rlca                                             ; $6197: $07
	adc  d                                           ; $6198: $8a
	dec  bc                                          ; $6199: $0b
	ld   [bc], a                                     ; $619a: $02
	inc  bc                                          ; $619b: $03
	ld   bc, $2002                                   ; $619c: $01 $02 $20
	nop                                              ; $619f: $00
	ld   b, $ee                                      ; $61a0: $06 $ee
	dec  bc                                          ; $61a2: $0b
	rrca                                             ; $61a3: $0f
	nop                                              ; $61a4: $00
	ld   bc, $0201                                   ; $61a5: $01 $01 $02
	inc  [hl]                                        ; $61a8: $34
	inc  bc                                          ; $61a9: $03
	ret  nc                                          ; $61aa: $d0

	ld   h, b                                        ; $61ab: $60
	sbc  b                                           ; $61ac: $98
	ld   a, l                                        ; $61ad: $7d
	inc  bc                                          ; $61ae: $03
	ld   a, l                                        ; $61af: $7d
	ld   [hl], l                                     ; $61b0: $75
	ld   h, e                                        ; $61b1: $63
	ld   a, [hl]                                     ; $61b2: $7e
	ld   e, l                                        ; $61b3: $5d
	ld   a, [$000d]                                  ; $61b4: $fa $0d $00
	ld   a, [bc]                                     ; $61b7: $0a
	inc  d                                           ; $61b8: $14
	ld   a, [de]                                     ; $61b9: $1a
	ld   bc, $061c                                   ; $61ba: $01 $1c $06
	ld   bc, $0101                                   ; $61bd: $01 $01 $01
	sub  [hl]                                        ; $61c0: $96
	ld   h, l                                        ; $61c1: $65
	ld   a, [$540d]                                  ; $61c2: $fa $0d $54
	adc  h                                           ; $61c5: $8c
	ld   d, d                                        ; $61c6: $52
	ld   h, [hl]                                     ; $61c7: $66
	sub  c                                           ; $61c8: $91
	ld   a, b                                        ; $61c9: $78
	ld   d, d                                        ; $61ca: $52
	ld   e, c                                        ; $61cb: $59
	ld   a, [$000d]                                  ; $61cc: $fa $0d $00
	ld   a, [bc]                                     ; $61cf: $0a
	ld   b, $39                                      ; $61d0: $06 $39
	inc  c                                           ; $61d2: $0c
	rrca                                             ; $61d3: $0f
	nop                                              ; $61d4: $00
	ld   bc, $5801                                   ; $61d5: $01 $01 $58
	ld   a, b                                        ; $61d8: $78
	ld   e, c                                        ; $61d9: $59
	and  b                                           ; $61da: $a0
	inc  bc                                          ; $61db: $03
	sub  e                                           ; $61dc: $93
	sub  a                                           ; $61dd: $97
	ld   a, b                                        ; $61de: $78
	ld   e, e                                        ; $61df: $5b
	sub  c                                           ; $61e0: $91
	ld   a, [$000d]                                  ; $61e1: $fa $0d $00
	ld   a, [bc]                                     ; $61e4: $0a
	rrca                                             ; $61e5: $0f
	nop                                              ; $61e6: $00
	ld   bc, $0714                                   ; $61e7: $01 $14 $07
	ld   bc, $a501                                   ; $61ea: $01 $01 $a5
	rst  ToBoot                                         ; $61ed: $c7
	call nz, $0dfa                                   ; $61ee: $c4 $fa $0d
	nop                                              ; $61f1: $00
	ld   a, [bc]                                     ; $61f2: $0a
	rlca                                             ; $61f3: $07
	reti                                             ; $61f4: $d9


	add  hl, bc                                      ; $61f5: $09
	inc  bc                                          ; $61f6: $03
	jr   nz, jr_053_61fa                             ; $61f7: $20 $01

	ld   a, [bc]                                     ; $61f9: $0a

jr_053_61fa:
	inc  hl                                          ; $61fa: $23
	nop                                              ; $61fb: $00
	ld   sp, $2040                                   ; $61fc: $31 $40 $20
	inc  bc                                          ; $61ff: $03
	jr   nz, jr_053_6203                             ; $6200: $20 $01

	ld   a, [bc]                                     ; $6202: $0a

jr_053_6203:
	add  hl, hl                                      ; $6203: $29
	nop                                              ; $6204: $00
	inc  e                                           ; $6205: $1c
	ld   b, $05                                      ; $6206: $06 $05
	dec  b                                           ; $6208: $05
	ld   bc, $5258                                   ; $6209: $01 $58 $52
	ld   e, b                                        ; $620c: $58
	ld   d, d                                        ; $620d: $52
	sbc  a                                           ; $620e: $9f
	adc  h                                           ; $620f: $8c
	ld   l, [hl]                                     ; $6210: $6e
	ld   [de], a                                     ; $6211: $12
	inc  b                                           ; $6212: $04
	ld   e, [hl]                                     ; $6213: $5e
	inc  b                                           ; $6214: $04
	call nc, Call_053_6a6e                           ; $6215: $d4 $6e $6a
	sbc  a                                           ; $6218: $9f
	dec  c                                           ; $6219: $0d
	ld   h, l                                        ; $621a: $65
	ld   [hl], c                                     ; $621b: $71
	ld   e, c                                        ; $621c: $59
	sbc  b                                           ; $621d: $98
	ld   h, l                                        ; $621e: $65
	ld   [hl], h                                     ; $621f: $74
	ld   e, l                                        ; $6220: $5d
	sbc  d                                           ; $6221: $9a
	sub  [hl]                                        ; $6222: $96
	sbc  a                                           ; $6223: $9f
	dec  c                                           ; $6224: $0d
	sub  b                                           ; $6225: $90
	ld   d, h                                        ; $6226: $54
	ld   [bc], a                                     ; $6227: $02
	jr   nz, jr_053_622c                             ; $6228: $20 $02

	sub  e                                           ; $622a: $93
	dec  b                                           ; $622b: $05

jr_053_622c:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $622c: $cf
	adc  a                                           ; $622d: $8f
	ld   [hl], c                                     ; $622e: $71
	ld   e, c                                        ; $622f: $59
	sub  a                                           ; $6230: $97
	ld   l, [hl]                                     ; $6231: $6e
	sbc  a                                           ; $6232: $9f
	dec  c                                           ; $6233: $0d
	nop                                              ; $6234: $00
	ld   a, [bc]                                     ; $6235: $0a
	ld   b, $98                                      ; $6236: $06 $98
	ld   a, [bc]                                     ; $6238: $0a
	rrca                                             ; $6239: $0f
	nop                                              ; $623a: $00
	ld   bc, $0301                                   ; $623b: $01 $01 $03
	ld   l, e                                        ; $623e: $6b
	ld   [hl], l                                     ; $623f: $75
	ld   b, $17                                      ; $6240: $06 $17
	ld   d, h                                        ; $6242: $54
	ld   sp, hl                                      ; $6243: $f9
	dec  c                                           ; $6244: $0d
	nop                                              ; $6245: $00
	ld   a, [bc]                                     ; $6246: $0a
	rrca                                             ; $6247: $0f
	nop                                              ; $6248: $00
	ld   bc, $0714                                   ; $6249: $01 $14 $07
	ld   bc, $a501                                   ; $624c: $01 $01 $a5
	rst  ToBoot                                         ; $624f: $c7
	call nz, $0dfa                                   ; $6250: $c4 $fa $0d
	nop                                              ; $6253: $00
	ld   a, [bc]                                     ; $6254: $0a
	rlca                                             ; $6255: $07
	reti                                             ; $6256: $d9


	add  hl, bc                                      ; $6257: $09
	inc  bc                                          ; $6258: $03
	jr   nz, jr_053_625c                             ; $6259: $20 $01

	ld   a, [bc]                                     ; $625b: $0a

jr_053_625c:
	inc  hl                                          ; $625c: $23
	nop                                              ; $625d: $00
	ld   sp, $2040                                   ; $625e: $31 $40 $20
	inc  bc                                          ; $6261: $03
	jr   nz, jr_053_6265                             ; $6262: $20 $01

	ld   a, [bc]                                     ; $6264: $0a

jr_053_6265:
	add  hl, hl                                      ; $6265: $29
	nop                                              ; $6266: $00
	inc  e                                           ; $6267: $1c
	ld   b, $05                                      ; $6268: $06 $05
	dec  b                                           ; $626a: $05
	ld   bc, $3402                                   ; $626b: $01 $02 $34
	inc  bc                                          ; $626e: $03
	ret  nc                                          ; $626f: $d0

	ld   h, b                                        ; $6270: $60
	sbc  b                                           ; $6271: $98
	ld   a, l                                        ; $6272: $7d
	inc  bc                                          ; $6273: $03
	ld   l, e                                        ; $6274: $6b
	ld   [hl], l                                     ; $6275: $75
	ld   b, $17                                      ; $6276: $06 $17
	ld   d, [hl]                                     ; $6278: $56
	ld   a, b                                        ; $6279: $78
	ld   d, d                                        ; $627a: $52
	ld   l, d                                        ; $627b: $6a
	sbc  a                                           ; $627c: $9f
	dec  c                                           ; $627d: $0d
	ld   h, l                                        ; $627e: $65
	ld   [hl], c                                     ; $627f: $71
	ld   e, c                                        ; $6280: $59
	sbc  b                                           ; $6281: $98
	ld   h, l                                        ; $6282: $65
	ld   [hl], h                                     ; $6283: $74
	ld   e, l                                        ; $6284: $5d
	sbc  d                                           ; $6285: $9a
	sub  [hl]                                        ; $6286: $96
	sbc  a                                           ; $6287: $9f
	dec  c                                           ; $6288: $0d
	sub  b                                           ; $6289: $90
	ld   d, h                                        ; $628a: $54
	ld   [bc], a                                     ; $628b: $02
	jr   nz, jr_053_6290                             ; $628c: $20 $02

	sub  e                                           ; $628e: $93
	dec  b                                           ; $628f: $05

jr_053_6290:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6290: $cf
	adc  a                                           ; $6291: $8f
	ld   [hl], c                                     ; $6292: $71
	ld   e, c                                        ; $6293: $59
	sub  a                                           ; $6294: $97
	ld   l, [hl]                                     ; $6295: $6e
	sbc  a                                           ; $6296: $9f
	dec  c                                           ; $6297: $0d
	nop                                              ; $6298: $00
	ld   a, [bc]                                     ; $6299: $0a
	ld   b, $98                                      ; $629a: $06 $98
	ld   a, [bc]                                     ; $629c: $0a
	rrca                                             ; $629d: $0f
	nop                                              ; $629e: $00
	ld   bc, $0714                                   ; $629f: $01 $14 $07
	ld   bc, $a501                                   ; $62a2: $01 $01 $a5
	call nz, $fbc7                                   ; $62a5: $c4 $c7 $fb
	dec  c                                           ; $62a8: $0d
	nop                                              ; $62a9: $00
	ld   a, [bc]                                     ; $62aa: $0a
	rlca                                             ; $62ab: $07
	reti                                             ; $62ac: $d9


	add  hl, bc                                      ; $62ad: $09
	inc  bc                                          ; $62ae: $03
	jr   nz, jr_053_62b2                             ; $62af: $20 $01

	ld   a, [bc]                                     ; $62b1: $0a

jr_053_62b2:
	inc  hl                                          ; $62b2: $23
	nop                                              ; $62b3: $00
	ld   sp, $2040                                   ; $62b4: $31 $40 $20
	inc  bc                                          ; $62b7: $03
	jr   nz, jr_053_62bb                             ; $62b8: $20 $01

	ld   a, [bc]                                     ; $62ba: $0a

jr_053_62bb:
	add  hl, hl                                      ; $62bb: $29
	nop                                              ; $62bc: $00
	inc  e                                           ; $62bd: $1c
	ld   b, $02                                      ; $62be: $06 $02
	ld   [bc], a                                     ; $62c0: $02
	ld   bc, $acd1                                   ; $62c1: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $62c4: $fa $10 $0d
	db   $dd                                         ; $62c7: $dd
	or   d                                           ; $62c8: $b2
	ld   [hl], c                                     ; $62c9: $71
	halt                                             ; $62ca: $76
	ld   h, a                                        ; $62cb: $67
	and  c                                           ; $62cc: $a1
	ld   h, [hl]                                     ; $62cd: $66
	sub  c                                           ; $62ce: $91
	ld   a, e                                        ; $62cf: $7b
	ld   d, l                                        ; $62d0: $55
	sub  [hl]                                        ; $62d1: $96
	sbc  a                                           ; $62d2: $9f
	dec  c                                           ; $62d3: $0d
	sub  b                                           ; $62d4: $90
	ld   d, h                                        ; $62d5: $54
	ld   [bc], a                                     ; $62d6: $02
	jr   nz, jr_053_62db                             ; $62d7: $20 $02

	sub  e                                           ; $62d9: $93
	dec  b                                           ; $62da: $05

jr_053_62db:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62db: $cf
	adc  a                                           ; $62dc: $8f
	ld   [hl], c                                     ; $62dd: $71
	ld   e, c                                        ; $62de: $59
	sub  a                                           ; $62df: $97
	ld   l, [hl]                                     ; $62e0: $6e
	sbc  a                                           ; $62e1: $9f
	dec  c                                           ; $62e2: $0d
	nop                                              ; $62e3: $00
	ld   a, [bc]                                     ; $62e4: $0a
	ld   b, $98                                      ; $62e5: $06 $98
	ld   a, [bc]                                     ; $62e7: $0a
	inc  e                                           ; $62e8: $1c
	ld   b, $02                                      ; $62e9: $06 $02
	ld   [bc], a                                     ; $62eb: $02
	ld   bc, $6803                                   ; $62ec: $01 $03 $68
	ld   a, l                                        ; $62ef: $7d
	inc  bc                                          ; $62f0: $03
	ld   c, d                                        ; $62f1: $4a
	ld   [bc], a                                     ; $62f2: $02
	ld   [hl], c                                     ; $62f3: $71
	ld   [hl], e                                     ; $62f4: $73
	ld   e, e                                        ; $62f5: $5b
	ld   [hl], l                                     ; $62f6: $75
	dec  c                                           ; $62f7: $0d
	inc  b                                           ; $62f8: $04
	dec  bc                                          ; $62f9: $0b
	inc  bc                                          ; $62fa: $03
	ret  nc                                          ; $62fb: $d0

	and  b                                           ; $62fc: $a0
	ld   [bc], a                                     ; $62fd: $02
	ld   c, b                                        ; $62fe: $48
	ld   [bc], a                                     ; $62ff: $02
	sub  c                                           ; $6300: $91
	ld   l, [hl]                                     ; $6301: $6e
	ld   a, [$000d]                                  ; $6302: $fa $0d $00
	ld   a, [bc]                                     ; $6305: $0a
	inc  d                                           ; $6306: $14
	dec  d                                           ; $6307: $15
	ld   bc, $0319                                   ; $6308: $01 $19 $03
	inc  bc                                          ; $630b: $03
	ld   [bc], a                                     ; $630c: $02
	ld   h, [hl]                                     ; $630d: $66
	and  b                                           ; $630e: $a0
	inc  bc                                          ; $630f: $03
	sub  e                                           ; $6310: $93
	sbc  c                                           ; $6311: $99
	nop                                              ; $6312: $00
	nop                                              ; $6313: $00
	ld   [bc], a                                     ; $6314: $02
	ld   [hl], d                                     ; $6315: $72
	and  b                                           ; $6316: $a0
	inc  bc                                          ; $6317: $03
	sub  e                                           ; $6318: $93
	sbc  c                                           ; $6319: $99
	nop                                              ; $631a: $00
	ld   bc, $9165                                   ; $631b: $01 $65 $91
	ld   e, d                                        ; $631e: $5a
	and  c                                           ; $631f: $a1
	ld   [hl], l                                     ; $6320: $75
	ld   e, c                                        ; $6321: $59
	sbc  l                                           ; $6322: $9d
	ld   h, a                                        ; $6323: $67
	nop                                              ; $6324: $00
	ld   [bc], a                                     ; $6325: $02
	rlca                                             ; $6326: $07
	sub  l                                           ; $6327: $95
	inc  c                                           ; $6328: $0c
	ld   [bc], a                                     ; $6329: $02
	inc  bc                                          ; $632a: $03
	ld   bc, $2000                                   ; $632b: $01 $00 $20
	nop                                              ; $632e: $00
	rlca                                             ; $632f: $07
	ret  nz                                          ; $6330: $c0

	inc  c                                           ; $6331: $0c
	ld   [bc], a                                     ; $6332: $02
	inc  bc                                          ; $6333: $03
	ld   bc, $2001                                   ; $6334: $01 $01 $20
	nop                                              ; $6337: $00
	rlca                                             ; $6338: $07
	ld   l, $0d                                      ; $6339: $2e $0d
	ld   [bc], a                                     ; $633b: $02
	inc  bc                                          ; $633c: $03
	ld   bc, $2002                                   ; $633d: $01 $02 $20
	nop                                              ; $6340: $00
	ld   b, $a8                                      ; $6341: $06 $a8
	dec  c                                           ; $6343: $0d
	rrca                                             ; $6344: $0f
	nop                                              ; $6345: $00
	ld   bc, $0401                                   ; $6346: $01 $01 $04
	dec  bc                                          ; $6349: $0b
	inc  bc                                          ; $634a: $03
	ret  nc                                          ; $634b: $d0

	ld   [bc], a                                     ; $634c: $02
	ld   c, b                                        ; $634d: $48
	ld   [bc], a                                     ; $634e: $02
	sub  c                                           ; $634f: $91
	ld   a, b                                        ; $6350: $78
	sub  a                                           ; $6351: $97
	ld   a, [hl]                                     ; $6352: $7e
	sbc  [hl]                                        ; $6353: $9e
	ld   [bc], a                                     ; $6354: $02
	ld   h, [hl]                                     ; $6355: $66
	and  b                                           ; $6356: $a0
	inc  bc                                          ; $6357: $03
	sub  e                                           ; $6358: $93
	sbc  c                                           ; $6359: $99
	ld   a, [$000d]                                  ; $635a: $fa $0d $00
	ld   a, [bc]                                     ; $635d: $0a
	inc  d                                           ; $635e: $14
	ld   a, [de]                                     ; $635f: $1a
	ld   bc, $061c                                   ; $6360: $01 $1c $06
	ld   bc, $0101                                   ; $6363: $01 $01 $01
	sub  [hl]                                        ; $6366: $96
	ld   h, l                                        ; $6367: $65
	ld   a, [$000d]                                  ; $6368: $fa $0d $00
	ld   a, [bc]                                     ; $636b: $0a
	ld   b, $f4                                      ; $636c: $06 $f4
	dec  c                                           ; $636e: $0d
	rrca                                             ; $636f: $0f
	nop                                              ; $6370: $00
	ld   bc, $5901                                   ; $6371: $01 $01 $59
	sbc  [hl]                                        ; $6374: $9e
	ld   [bc], a                                     ; $6375: $02
	ld   [hl], d                                     ; $6376: $72
	and  b                                           ; $6377: $a0

Call_053_6378:
	inc  bc                                          ; $6378: $03
	sub  e                                           ; $6379: $93
	sub  a                                           ; $637a: $97
	ld   a, b                                        ; $637b: $78
	ld   e, e                                        ; $637c: $5b
	sub  c                                           ; $637d: $91
	ld   a, [$000d]                                  ; $637e: $fa $0d $00
	ld   a, [bc]                                     ; $6381: $0a
	rrca                                             ; $6382: $0f
	nop                                              ; $6383: $00
	ld   bc, $0714                                   ; $6384: $01 $14 $07
	ld   bc, $9d01                                   ; $6387: $01 $01 $9d
	ld   a, [$a510]                                  ; $638a: $fa $10 $a5
	rst  ToBoot                                         ; $638d: $c7
	rst  ToBoot                                         ; $638e: $c7
	dec  c                                           ; $638f: $0d
	nop                                              ; $6390: $00
	ld   a, [bc]                                     ; $6391: $0a
	rlca                                             ; $6392: $07
	reti                                             ; $6393: $d9


	add  hl, bc                                      ; $6394: $09
	inc  bc                                          ; $6395: $03
	jr   nz, jr_053_6399                             ; $6396: $20 $01

	ld   a, [bc]                                     ; $6398: $0a

jr_053_6399:
	inc  hl                                          ; $6399: $23
	nop                                              ; $639a: $00
	ld   sp, $2040                                   ; $639b: $31 $40 $20
	inc  bc                                          ; $639e: $03
	jr   nz, jr_053_63a2                             ; $639f: $20 $01

	ld   a, [bc]                                     ; $63a1: $0a

jr_053_63a2:
	add  hl, hl                                      ; $63a2: $29
	nop                                              ; $63a3: $00
	inc  e                                           ; $63a4: $1c
	ld   b, $05                                      ; $63a5: $06 $05
	dec  b                                           ; $63a7: $05
	ld   bc, $5258                                   ; $63a8: $01 $58 $52
	ld   e, b                                        ; $63ab: $58
	ld   d, d                                        ; $63ac: $52
	sbc  a                                           ; $63ad: $9f
	inc  b                                           ; $63ae: $04
	dec  bc                                          ; $63af: $0b
	inc  bc                                          ; $63b0: $03
	ret  nc                                          ; $63b1: $d0

	and  b                                           ; $63b2: $a0
	dec  b                                           ; $63b3: $05
	call Call_053_6d71                               ; $63b4: $cd $71 $6d
	and  c                                           ; $63b7: $a1
	dec  c                                           ; $63b8: $0d
	ld   l, [hl]                                     ; $63b9: $6e
	ld   e, c                                        ; $63ba: $59
	sub  a                                           ; $63bb: $97
	ld   [bc], a                                     ; $63bc: $02
	ld   h, [hl]                                     ; $63bd: $66
	ld   [bc], a                                     ; $63be: $02
	xor  h                                           ; $63bf: $ac
	and  b                                           ; $63c0: $a0
	inc  bc                                          ; $63c1: $03
	sub  e                                           ; $63c2: $93
	sbc  c                                           ; $63c3: $99
	and  c                                           ; $63c4: $a1
	ld   l, [hl]                                     ; $63c5: $6e
	sub  [hl]                                        ; $63c6: $96
	sbc  a                                           ; $63c7: $9f
	dec  c                                           ; $63c8: $0d
	sub  b                                           ; $63c9: $90
	ld   d, h                                        ; $63ca: $54
	ld   [bc], a                                     ; $63cb: $02
	jr   nz, jr_053_63d0                             ; $63cc: $20 $02

	sub  e                                           ; $63ce: $93
	dec  b                                           ; $63cf: $05

jr_053_63d0:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63d0: $cf
	adc  a                                           ; $63d1: $8f
	ld   [hl], c                                     ; $63d2: $71
	ld   e, c                                        ; $63d3: $59
	sub  a                                           ; $63d4: $97
	ld   l, [hl]                                     ; $63d5: $6e
	sbc  a                                           ; $63d6: $9f
	dec  c                                           ; $63d7: $0d
	nop                                              ; $63d8: $00
	ld   a, [bc]                                     ; $63d9: $0a
	ld   b, $98                                      ; $63da: $06 $98
	ld   a, [bc]                                     ; $63dc: $0a
	rrca                                             ; $63dd: $0f
	nop                                              ; $63de: $00
	ld   bc, $0401                                   ; $63df: $01 $01 $04
	dec  bc                                          ; $63e2: $0b
	inc  bc                                          ; $63e3: $03
	ret  nc                                          ; $63e4: $d0

	ld   [bc], a                                     ; $63e5: $02
	ld   c, b                                        ; $63e6: $48
	ld   [bc], a                                     ; $63e7: $02
	sub  c                                           ; $63e8: $91
	ld   a, l                                        ; $63e9: $7d
	ld   h, l                                        ; $63ea: $65
	sub  c                                           ; $63eb: $91
	ld   e, d                                        ; $63ec: $5a
	and  c                                           ; $63ed: $a1
	ld   [hl], l                                     ; $63ee: $75
	dec  c                                           ; $63ef: $0d
	sub  [hl]                                        ; $63f0: $96
	ld   e, a                                        ; $63f1: $5f
	sbc  c                                           ; $63f2: $99
	ld   sp, hl                                      ; $63f3: $f9
	dec  c                                           ; $63f4: $0d
	nop                                              ; $63f5: $00
	ld   a, [bc]                                     ; $63f6: $0a
	rrca                                             ; $63f7: $0f
	nop                                              ; $63f8: $00
	ld   bc, $0714                                   ; $63f9: $01 $14 $07
	ld   bc, $b101                                   ; $63fc: $01 $01 $b1
	ret  nc                                          ; $63ff: $d0

	call nz, $0dfa                                   ; $6400: $c4 $fa $0d
	ld   a, l                                        ; $6403: $7d
	sbc  [hl]                                        ; $6404: $9e
	ret  nc                                          ; $6405: $d0

	bit  3, d                                        ; $6406: $cb $5a
	rst  $38                                         ; $6408: $ff
	rst  $38                                         ; $6409: $ff
	dec  c                                           ; $640a: $0d
	nop                                              ; $640b: $00
	ld   a, [bc]                                     ; $640c: $0a
	rlca                                             ; $640d: $07
	reti                                             ; $640e: $d9


	add  hl, bc                                      ; $640f: $09
	inc  bc                                          ; $6410: $03
	jr   nz, jr_053_6414                             ; $6411: $20 $01

	ld   a, [bc]                                     ; $6413: $0a

jr_053_6414:
	inc  hl                                          ; $6414: $23
	nop                                              ; $6415: $00
	ld   sp, $2040                                   ; $6416: $31 $40 $20
	inc  bc                                          ; $6419: $03
	jr   nz, jr_053_641d                             ; $641a: $20 $01

	ld   a, [bc]                                     ; $641c: $0a

jr_053_641d:
	add  hl, hl                                      ; $641d: $29
	nop                                              ; $641e: $00
	inc  e                                           ; $641f: $1c
	ld   b, $05                                      ; $6420: $06 $05
	dec  b                                           ; $6422: $05
	ld   bc, $0b04                                   ; $6423: $01 $04 $0b
	inc  bc                                          ; $6426: $03
	ret  nc                                          ; $6427: $d0

	and  b                                           ; $6428: $a0
	dec  b                                           ; $6429: $05
	call Call_053_6d71                               ; $642a: $cd $71 $6d
	and  c                                           ; $642d: $a1
	ld   l, [hl]                                     ; $642e: $6e
	ld   l, d                                        ; $642f: $6a
	sbc  a                                           ; $6430: $9f
	dec  c                                           ; $6431: $0d
	ld   h, l                                        ; $6432: $65
	sub  c                                           ; $6433: $91
	ld   e, d                                        ; $6434: $5a
	and  c                                           ; $6435: $a1
	ld   l, [hl]                                     ; $6436: $6e
	sub  a                                           ; $6437: $97
	ld   [bc], a                                     ; $6438: $02
	ld   [hl], d                                     ; $6439: $72
	ld   a, c                                        ; $643a: $79
	inc  b                                           ; $643b: $04
	jr   jr_053_64ab                                 ; $643c: $18 $6d

	sbc  c                                           ; $643e: $99
	sub  [hl]                                        ; $643f: $96
	ld   a, b                                        ; $6440: $78
	sbc  a                                           ; $6441: $9f
	dec  c                                           ; $6442: $0d
	sub  b                                           ; $6443: $90
	ld   d, h                                        ; $6444: $54
	ld   [bc], a                                     ; $6445: $02
	jr   nz, jr_053_644a                             ; $6446: $20 $02

	sub  e                                           ; $6448: $93
	dec  b                                           ; $6449: $05

jr_053_644a:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $644a: $cf
	adc  a                                           ; $644b: $8f
	ld   [hl], c                                     ; $644c: $71
	ld   e, c                                        ; $644d: $59
	sub  a                                           ; $644e: $97
	ld   l, [hl]                                     ; $644f: $6e
	sbc  a                                           ; $6450: $9f
	dec  c                                           ; $6451: $0d
	nop                                              ; $6452: $00
	ld   a, [bc]                                     ; $6453: $0a
	ld   b, $98                                      ; $6454: $06 $98
	ld   a, [bc]                                     ; $6456: $0a
	rrca                                             ; $6457: $0f
	nop                                              ; $6458: $00
	ld   bc, $0714                                   ; $6459: $01 $14 $07
	ld   bc, $b301                                   ; $645c: $01 $01 $b3
	call c, $ffc4                                    ; $645f: $dc $c4 $ff
	rst  $38                                         ; $6462: $ff
	dec  c                                           ; $6463: $0d
	nop                                              ; $6464: $00
	ld   a, [bc]                                     ; $6465: $0a
	rlca                                             ; $6466: $07
	reti                                             ; $6467: $d9


	add  hl, bc                                      ; $6468: $09
	inc  bc                                          ; $6469: $03
	jr   nz, jr_053_646d                             ; $646a: $20 $01

	ld   a, [bc]                                     ; $646c: $0a

jr_053_646d:
	inc  hl                                          ; $646d: $23
	nop                                              ; $646e: $00
	ld   sp, $2040                                   ; $646f: $31 $40 $20
	inc  bc                                          ; $6472: $03
	jr   nz, jr_053_6476                             ; $6473: $20 $01

	ld   a, [bc]                                     ; $6475: $0a

jr_053_6476:
	add  hl, hl                                      ; $6476: $29
	nop                                              ; $6477: $00
	inc  e                                           ; $6478: $1c
	ld   b, $02                                      ; $6479: $06 $02
	ld   [bc], a                                     ; $647b: $02
	ld   bc, $acd1                                   ; $647c: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $647f: $fa $10 $0d
	db   $dd                                         ; $6482: $dd
	or   d                                           ; $6483: $b2
	ld   [hl], c                                     ; $6484: $71
	halt                                             ; $6485: $76
	ld   h, a                                        ; $6486: $67
	and  c                                           ; $6487: $a1
	ld   h, [hl]                                     ; $6488: $66
	sub  c                                           ; $6489: $91
	ld   a, e                                        ; $648a: $7b
	ld   d, l                                        ; $648b: $55
	sub  [hl]                                        ; $648c: $96
	sbc  a                                           ; $648d: $9f
	dec  c                                           ; $648e: $0d
	sub  b                                           ; $648f: $90
	ld   d, h                                        ; $6490: $54
	ld   [bc], a                                     ; $6491: $02
	jr   nz, jr_053_6496                             ; $6492: $20 $02

	sub  e                                           ; $6494: $93
	dec  b                                           ; $6495: $05

jr_053_6496:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6496: $cf
	adc  a                                           ; $6497: $8f
	ld   [hl], c                                     ; $6498: $71
	ld   e, c                                        ; $6499: $59
	sub  a                                           ; $649a: $97
	ld   l, [hl]                                     ; $649b: $6e
	sbc  a                                           ; $649c: $9f
	dec  c                                           ; $649d: $0d
	nop                                              ; $649e: $00
	ld   a, [bc]                                     ; $649f: $0a
	ld   b, $98                                      ; $64a0: $06 $98
	ld   a, [bc]                                     ; $64a2: $0a
	inc  e                                           ; $64a3: $1c
	ld   b, $02                                      ; $64a4: $06 $02
	ld   [bc], a                                     ; $64a6: $02
	ld   bc, $6803                                   ; $64a7: $01 $03 $68
	ld   a, l                                        ; $64aa: $7d

jr_053_64ab:
	sbc  [hl]                                        ; $64ab: $9e
	dec  b                                           ; $64ac: $05
	ld   h, l                                        ; $64ad: $65
	ld   [bc], a                                     ; $64ae: $02
	ld   [hl], c                                     ; $64af: $71
	ld   [hl], l                                     ; $64b0: $75
	inc  bc                                          ; $64b1: $03
	ld   h, l                                        ; $64b2: $65
	inc  bc                                          ; $64b3: $03
	ret  nc                                          ; $64b4: $d0

	add  [hl]                                        ; $64b5: $86
	ld   [bc], a                                     ; $64b6: $02
	ld   c, b                                        ; $64b7: $48
	ld   [bc], a                                     ; $64b8: $02
	sub  c                                           ; $64b9: $91
	ld   l, [hl]                                     ; $64ba: $6e
	ld   a, [$000d]                                  ; $64bb: $fa $0d $00
	ld   a, [bc]                                     ; $64be: $0a
	inc  d                                           ; $64bf: $14
	dec  d                                           ; $64c0: $15
	ld   bc, $0319                                   ; $64c1: $01 $19 $03
	inc  bc                                          ; $64c4: $03
	ld   h, l                                        ; $64c5: $65
	sub  c                                           ; $64c6: $91
	ld   e, d                                        ; $64c7: $5a
	and  c                                           ; $64c8: $a1
	ld   [hl], l                                     ; $64c9: $75
	ld   e, c                                        ; $64ca: $59
	sbc  l                                           ; $64cb: $9d
	ld   h, a                                        ; $64cc: $67
	nop                                              ; $64cd: $00
	nop                                              ; $64ce: $00
	inc  bc                                          ; $64cf: $03
	ld   a, l                                        ; $64d0: $7d
	ld   [hl], l                                     ; $64d1: $75
	ld   b, $17                                      ; $64d2: $06 $17
	ld   d, h                                        ; $64d4: $54
	nop                                              ; $64d5: $00
	ld   bc, $e5b9                                   ; $64d6: $01 $b9 $e5
	push af                                          ; $64d9: $f5
	ret  c                                           ; $64da: $d8

	ld   h, a                                        ; $64db: $67
	sbc  c                                           ; $64dc: $99
	nop                                              ; $64dd: $00
	ld   [bc], a                                     ; $64de: $02
	rlca                                             ; $64df: $07
	ld   c, [hl]                                     ; $64e0: $4e
	ld   c, $02                                      ; $64e1: $0e $02
	inc  bc                                          ; $64e3: $03
	ld   bc, $2000                                   ; $64e4: $01 $00 $20
	nop                                              ; $64e7: $00
	rlca                                             ; $64e8: $07
	ld   a, l                                        ; $64e9: $7d
	ld   c, $02                                      ; $64ea: $0e $02
	inc  bc                                          ; $64ec: $03
	ld   bc, $2001                                   ; $64ed: $01 $01 $20
	nop                                              ; $64f0: $00
	rlca                                             ; $64f1: $07
	db   $f4                                         ; $64f2: $f4
	ld   c, $02                                      ; $64f3: $0e $02
	inc  bc                                          ; $64f5: $03
	ld   bc, $2002                                   ; $64f6: $01 $02 $20
	nop                                              ; $64f9: $00
	ld   b, $58                                      ; $64fa: $06 $58
	rrca                                             ; $64fc: $0f
	rrca                                             ; $64fd: $0f
	nop                                              ; $64fe: $00
	ld   bc, $0301                                   ; $64ff: $01 $01 $03
	ld   h, l                                        ; $6502: $65
	inc  bc                                          ; $6503: $03
	ret  nc                                          ; $6504: $d0

	ld   [bc], a                                     ; $6505: $02
	ld   c, b                                        ; $6506: $48
	ld   [bc], a                                     ; $6507: $02
	sub  c                                           ; $6508: $91
	ld   a, l                                        ; $6509: $7d
	sbc  [hl]                                        ; $650a: $9e
	ld   h, l                                        ; $650b: $65
	sub  c                                           ; $650c: $91
	ld   e, d                                        ; $650d: $5a
	and  c                                           ; $650e: $a1
	ld   [hl], l                                     ; $650f: $75
	dec  c                                           ; $6510: $0d
	ld   e, c                                        ; $6511: $59
	sbc  l                                           ; $6512: $9d
	ld   h, a                                        ; $6513: $67
	ld   a, [$000d]                                  ; $6514: $fa $0d $00
	ld   a, [bc]                                     ; $6517: $0a
	inc  e                                           ; $6518: $1c
	ld   b, $01                                      ; $6519: $06 $01
	ld   bc, $9601                                   ; $651b: $01 $01 $96
	ld   h, l                                        ; $651e: $65
	ld   a, [$520d]                                  ; $651f: $fa $0d $52
	ld   d, d                                        ; $6522: $52
	ld   l, h                                        ; $6523: $6c
	ld   a, [$0dfa]                                  ; $6524: $fa $fa $0d
	nop                                              ; $6527: $00
	ld   a, [bc]                                     ; $6528: $0a
	ld   b, $a7                                      ; $6529: $06 $a7
	rrca                                             ; $652b: $0f
	rrca                                             ; $652c: $0f
	nop                                              ; $652d: $00
	ld   bc, $0301                                   ; $652e: $01 $01 $03
	ld   h, l                                        ; $6531: $65
	inc  bc                                          ; $6532: $03
	ret  nc                                          ; $6533: $d0

	ld   [bc], a                                     ; $6534: $02
	ld   c, b                                        ; $6535: $48
	ld   [bc], a                                     ; $6536: $02
	sub  c                                           ; $6537: $91
	ld   sp, hl                                      ; $6538: $f9
	db   $10                                         ; $6539: $10
	inc  bc                                          ; $653a: $03
	ld   a, l                                        ; $653b: $7d
	ld   b, $17                                      ; $653c: $06 $17
	ld   d, d                                        ; $653e: $52
	ld   h, l                                        ; $653f: $65
	ld   a, b                                        ; $6540: $78
	ld   e, e                                        ; $6541: $5b
	sub  c                                           ; $6542: $91
	ld   a, [$000d]                                  ; $6543: $fa $0d $00
	ld   a, [bc]                                     ; $6546: $0a
	rrca                                             ; $6547: $0f
	nop                                              ; $6548: $00
	ld   bc, $0714                                   ; $6549: $01 $14 $07
	ld   bc, $b101                                   ; $654c: $01 $01 $b1
	reti                                             ; $654f: $d9


	call nz, $10fa                                   ; $6550: $c4 $fa $10
	and  l                                           ; $6553: $a5
	call nz, $fbc0                                   ; $6554: $c4 $c0 $fb
	ei                                               ; $6557: $fb
	ei                                               ; $6558: $fb
	dec  c                                           ; $6559: $0d
	nop                                              ; $655a: $00
	ld   a, [bc]                                     ; $655b: $0a
	rlca                                             ; $655c: $07
	reti                                             ; $655d: $d9


	add  hl, bc                                      ; $655e: $09
	inc  bc                                          ; $655f: $03
	jr   nz, jr_053_6563                             ; $6560: $20 $01

	ld   a, [bc]                                     ; $6562: $0a

jr_053_6563:
	inc  hl                                          ; $6563: $23
	nop                                              ; $6564: $00
	ld   sp, $2040                                   ; $6565: $31 $40 $20
	inc  bc                                          ; $6568: $03
	jr   nz, jr_053_656c                             ; $6569: $20 $01

	ld   a, [bc]                                     ; $656b: $0a

jr_053_656c:
	add  hl, hl                                      ; $656c: $29
	nop                                              ; $656d: $00
	inc  e                                           ; $656e: $1c
	ld   b, $05                                      ; $656f: $06 $05
	dec  b                                           ; $6571: $05
	ld   bc, $5258                                   ; $6572: $01 $58 $52

Jump_053_6575:
	ld   e, b                                        ; $6575: $58
	ld   d, d                                        ; $6576: $52
	sbc  a                                           ; $6577: $9f

Jump_053_6578:
	inc  bc                                          ; $6578: $03
	ld   h, l                                        ; $6579: $65
	inc  bc                                          ; $657a: $03
	ret  nc                                          ; $657b: $d0

	and  b                                           ; $657c: $a0
	ld   a, e                                        ; $657d: $7b
	sub  a                                           ; $657e: $97
	ld   [hl], c                                     ; $657f: $71
	ld   l, l                                        ; $6580: $6d
	and  c                                           ; $6581: $a1
	dec  c                                           ; $6582: $0d
	ld   l, [hl]                                     ; $6583: $6e
	ld   e, c                                        ; $6584: $59
	sub  a                                           ; $6585: $97
	ld   [bc], a                                     ; $6586: $02
	ld   [hl], d                                     ; $6587: $72
	and  b                                           ; $6588: $a0
	inc  bc                                          ; $6589: $03
	sub  e                                           ; $658a: $93
	sbc  d                                           ; $658b: $9a
	sub  [hl]                                        ; $658c: $96
	sbc  a                                           ; $658d: $9f
	dec  c                                           ; $658e: $0d
	sub  b                                           ; $658f: $90
	ld   d, h                                        ; $6590: $54
	ld   [bc], a                                     ; $6591: $02
	jr   nz, jr_053_6596                             ; $6592: $20 $02

	sub  e                                           ; $6594: $93
	dec  b                                           ; $6595: $05

jr_053_6596:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6596: $cf

Call_053_6597:
	adc  a                                           ; $6597: $8f
	ld   [hl], c                                     ; $6598: $71
	ld   e, c                                        ; $6599: $59
	sub  a                                           ; $659a: $97
	ld   l, [hl]                                     ; $659b: $6e
	sbc  a                                           ; $659c: $9f
	dec  c                                           ; $659d: $0d
	nop                                              ; $659e: $00
	ld   a, [bc]                                     ; $659f: $0a
	ld   b, $98                                      ; $65a0: $06 $98
	ld   a, [bc]                                     ; $65a2: $0a
	rrca                                             ; $65a3: $0f
	nop                                              ; $65a4: $00
	ld   bc, $b901                                   ; $65a5: $01 $01 $b9
	push hl                                          ; $65a8: $e5
	push af                                          ; $65a9: $f5
	ret  c                                           ; $65aa: $d8

	ld   [hl], l                                     ; $65ab: $75
	ld   e, c                                        ; $65ac: $59
	sbc  l                                           ; $65ad: $9d
	ld   h, a                                        ; $65ae: $67
	ld   a, [$0df9]                                  ; $65af: $fa $f9 $0d
	nop                                              ; $65b2: $00
	ld   a, [bc]                                     ; $65b3: $0a
	rrca                                             ; $65b4: $0f
	nop                                              ; $65b5: $00
	ld   bc, $0714                                   ; $65b6: $01 $14 $07
	ld   bc, $a501                                   ; $65b9: $01 $01 $a5
	rst  ToBoot                                         ; $65bc: $c7
	call nz, $0dfa                                   ; $65bd: $c4 $fa $0d
	nop                                              ; $65c0: $00
	ld   a, [bc]                                     ; $65c1: $0a
	rlca                                             ; $65c2: $07
	reti                                             ; $65c3: $d9


	add  hl, bc                                      ; $65c4: $09
	inc  bc                                          ; $65c5: $03
	jr   nz, jr_053_65c9                             ; $65c6: $20 $01

	ld   a, [bc]                                     ; $65c8: $0a

jr_053_65c9:
	inc  hl                                          ; $65c9: $23
	nop                                              ; $65ca: $00
	ld   sp, $2040                                   ; $65cb: $31 $40 $20
	inc  bc                                          ; $65ce: $03
	jr   nz, jr_053_65d2                             ; $65cf: $20 $01

	ld   a, [bc]                                     ; $65d1: $0a

jr_053_65d2:
	add  hl, hl                                      ; $65d2: $29
	nop                                              ; $65d3: $00
	inc  e                                           ; $65d4: $1c
	ld   b, $05                                      ; $65d5: $06 $05
	dec  b                                           ; $65d7: $05
	ld   bc, $6503                                   ; $65d8: $01 $03 $65
	inc  bc                                          ; $65db: $03
	ret  nc                                          ; $65dc: $d0

	and  b                                           ; $65dd: $a0
	ld   a, e                                        ; $65de: $7b
	sub  a                                           ; $65df: $97
	ld   [hl], c                                     ; $65e0: $71
	ld   l, l                                        ; $65e1: $6d
	and  c                                           ; $65e2: $a1
	ld   l, [hl]                                     ; $65e3: $6e
	ld   l, d                                        ; $65e4: $6a
	sbc  a                                           ; $65e5: $9f
	dec  c                                           ; $65e6: $0d
	cp   c                                           ; $65e7: $b9
	push hl                                          ; $65e8: $e5
	push af                                          ; $65e9: $f5
	ret  c                                           ; $65ea: $d8

	ld   h, l                                        ; $65eb: $65
	ld   [hl], h                                     ; $65ec: $74
	sub  b                                           ; $65ed: $90
	pop  bc                                          ; $65ee: $c1
	db   $e3                                         ; $65ef: $e3
	ld   l, [hl]                                     ; $65f0: $6e
	sbc  a                                           ; $65f1: $9f
	dec  c                                           ; $65f2: $0d
	sub  b                                           ; $65f3: $90
	ld   d, h                                        ; $65f4: $54
	ld   [bc], a                                     ; $65f5: $02
	jr   nz, jr_053_65fa                             ; $65f6: $20 $02

	sub  e                                           ; $65f8: $93
	dec  b                                           ; $65f9: $05

jr_053_65fa:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65fa: $cf
	adc  a                                           ; $65fb: $8f
	ld   [hl], c                                     ; $65fc: $71
	ld   e, c                                        ; $65fd: $59
	sub  a                                           ; $65fe: $97
	ld   l, [hl]                                     ; $65ff: $6e
	sbc  a                                           ; $6600: $9f
	dec  c                                           ; $6601: $0d
	nop                                              ; $6602: $00
	ld   a, [bc]                                     ; $6603: $0a
	ld   b, $98                                      ; $6604: $06 $98
	ld   a, [bc]                                     ; $6606: $0a
	rrca                                             ; $6607: $0f
	nop                                              ; $6608: $00
	ld   bc, $0714                                   ; $6609: $01 $14 $07
	ld   bc, $b101                                   ; $660c: $01 $01 $b1
	pop  af                                          ; $660f: $f1
	db   $fc                                         ; $6610: $fc
	db   $fc                                         ; $6611: $fc
	db   $fc                                         ; $6612: $fc
	push af                                          ; $6613: $f5
	rst  $38                                         ; $6614: $ff
	rst  $38                                         ; $6615: $ff
	dec  c                                           ; $6616: $0d
	nop                                              ; $6617: $00
	ld   a, [bc]                                     ; $6618: $0a
	rlca                                             ; $6619: $07
	reti                                             ; $661a: $d9


	add  hl, bc                                      ; $661b: $09
	inc  bc                                          ; $661c: $03
	jr   nz, jr_053_6620                             ; $661d: $20 $01

	ld   a, [bc]                                     ; $661f: $0a

jr_053_6620:
	inc  hl                                          ; $6620: $23
	nop                                              ; $6621: $00
	ld   sp, $2040                                   ; $6622: $31 $40 $20
	inc  bc                                          ; $6625: $03
	jr   nz, jr_053_6629                             ; $6626: $20 $01

	ld   a, [bc]                                     ; $6628: $0a

jr_053_6629:
	add  hl, hl                                      ; $6629: $29
	nop                                              ; $662a: $00
	inc  e                                           ; $662b: $1c
	ld   b, $02                                      ; $662c: $06 $02
	ld   [bc], a                                     ; $662e: $02
	ld   bc, $acd1                                   ; $662f: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $6632: $fa $10 $0d
	db   $dd                                         ; $6635: $dd
	or   d                                           ; $6636: $b2
	ld   [hl], c                                     ; $6637: $71
	halt                                             ; $6638: $76
	ld   h, a                                        ; $6639: $67
	and  c                                           ; $663a: $a1
	ld   h, [hl]                                     ; $663b: $66
	sub  c                                           ; $663c: $91
	ld   a, e                                        ; $663d: $7b
	ld   d, l                                        ; $663e: $55
	sub  [hl]                                        ; $663f: $96
	sbc  a                                           ; $6640: $9f
	dec  c                                           ; $6641: $0d
	sub  b                                           ; $6642: $90
	ld   d, h                                        ; $6643: $54
	ld   [bc], a                                     ; $6644: $02
	jr   nz, jr_053_6649                             ; $6645: $20 $02

	sub  e                                           ; $6647: $93
	dec  b                                           ; $6648: $05

jr_053_6649:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6649: $cf
	adc  a                                           ; $664a: $8f
	ld   [hl], c                                     ; $664b: $71
	ld   e, c                                        ; $664c: $59
	sub  a                                           ; $664d: $97
	ld   l, [hl]                                     ; $664e: $6e
	sbc  a                                           ; $664f: $9f
	dec  c                                           ; $6650: $0d
	nop                                              ; $6651: $00
	ld   a, [bc]                                     ; $6652: $0a
	ld   b, $98                                      ; $6653: $06 $98
	ld   a, [bc]                                     ; $6655: $0a
	inc  e                                           ; $6656: $1c
	ld   b, $02                                      ; $6657: $06 $02
	ld   [bc], a                                     ; $6659: $02
	ld   bc, $6903                                   ; $665a: $01 $03 $69
	ld   [bc], a                                     ; $665d: $02
	xor  d                                           ; $665e: $aa
	ld   a, c                                        ; $665f: $79
	inc  b                                           ; $6660: $04
	dec  bc                                          ; $6661: $0b
	inc  bc                                          ; $6662: $03
	ret  nc                                          ; $6663: $d0

	sub  $a8                                         ; $6664: $d6 $a8
	and  l                                           ; $6666: $a5
	push af                                          ; $6667: $f5
	ret                                              ; $6668: $c9


	ld   [hl], l                                     ; $6669: $75
	dec  c                                           ; $666a: $0d
	inc  bc                                          ; $666b: $03
	ld   h, l                                        ; $666c: $65
	inc  bc                                          ; $666d: $03
	ret  nc                                          ; $666e: $d0

	adc  h                                           ; $666f: $8c
	sbc  l                                           ; $6670: $9d
	ld   h, l                                        ; $6671: $65
	ld   h, b                                        ; $6672: $60
	sbc  b                                           ; $6673: $98
	ld   l, [hl]                                     ; $6674: $6e
	ld   a, [$000d]                                  ; $6675: $fa $0d $00
	ld   a, [bc]                                     ; $6678: $0a
	inc  d                                           ; $6679: $14
	dec  d                                           ; $667a: $15
	ld   bc, $0319                                   ; $667b: $01 $19 $03
	inc  bc                                          ; $667e: $03
	ld   [bc], a                                     ; $667f: $02
	ld   [hl], d                                     ; $6680: $72
	and  b                                           ; $6681: $a0
	inc  bc                                          ; $6682: $03
	sub  e                                           ; $6683: $93
	sbc  c                                           ; $6684: $99
	nop                                              ; $6685: $00
	nop                                              ; $6686: $00
	ld   e, b                                        ; $6687: $58
	inc  b                                           ; $6688: $04
	adc  c                                           ; $6689: $89
	and  b                                           ; $668a: $a0
	inc  bc                                          ; $668b: $03
	sub  e                                           ; $668c: $93
	sbc  c                                           ; $668d: $99
	nop                                              ; $668e: $00
	ld   bc, $6602                                   ; $668f: $01 $02 $66
	and  b                                           ; $6692: $a0
	inc  bc                                          ; $6693: $03
	sub  e                                           ; $6694: $93
	sbc  c                                           ; $6695: $99
	nop                                              ; $6696: $00
	ld   [bc], a                                     ; $6697: $02
	rlca                                             ; $6698: $07
	rlca                                             ; $6699: $07
	db   $10                                         ; $669a: $10
	ld   [bc], a                                     ; $669b: $02
	inc  bc                                          ; $669c: $03
	ld   bc, $2000                                   ; $669d: $01 $00 $20
	nop                                              ; $66a0: $00
	rlca                                             ; $66a1: $07
	ld   a, $10                                      ; $66a2: $3e $10
	ld   [bc], a                                     ; $66a4: $02
	inc  bc                                          ; $66a5: $03
	ld   bc, $2001                                   ; $66a6: $01 $01 $20
	nop                                              ; $66a9: $00
	rlca                                             ; $66aa: $07
	and  a                                           ; $66ab: $a7
	db   $10                                         ; $66ac: $10
	ld   [bc], a                                     ; $66ad: $02
	inc  bc                                          ; $66ae: $03
	ld   bc, $2002                                   ; $66af: $01 $02 $20
	nop                                              ; $66b2: $00
	ld   b, $0a                                      ; $66b3: $06 $0a
	ld   de, $000f                                   ; $66b5: $11 $0f $00
	ld   bc, $0301                                   ; $66b8: $01 $01 $03
	ld   h, l                                        ; $66bb: $65
	inc  bc                                          ; $66bc: $03
	ret  nc                                          ; $66bd: $d0

	adc  h                                           ; $66be: $8c
	sbc  l                                           ; $66bf: $9d
	ld   h, l                                        ; $66c0: $65
	ld   h, b                                        ; $66c1: $60
	sbc  b                                           ; $66c2: $98
	ld   l, [hl]                                     ; $66c3: $6e
	ld   [hl], c                                     ; $66c4: $71
	ld   l, l                                        ; $66c5: $6d
	sub  a                                           ; $66c6: $97
	dec  c                                           ; $66c7: $0d
	ld   [bc], a                                     ; $66c8: $02
	ld   [hl], d                                     ; $66c9: $72
	and  b                                           ; $66ca: $a0
	inc  bc                                          ; $66cb: $03
	sub  e                                           ; $66cc: $93
	sbc  c                                           ; $66cd: $99
	ld   l, h                                        ; $66ce: $6c
	ld   a, [$000d]                                  ; $66cf: $fa $0d $00
	ld   a, [bc]                                     ; $66d2: $0a
	inc  d                                           ; $66d3: $14
	ld   a, [de]                                     ; $66d4: $1a
	ld   bc, $061c                                   ; $66d5: $01 $1c $06
	ld   bc, $0101                                   ; $66d8: $01 $01 $01
	sub  [hl]                                        ; $66db: $96
	ld   h, l                                        ; $66dc: $65
	ld   a, [$ab0d]                                  ; $66dd: $fa $0d $ab
	call nz, $fbb2                                   ; $66e0: $c4 $b2 $fb
	ld   l, [hl]                                     ; $66e3: $6e
	ld   l, d                                        ; $66e4: $6a
	ld   a, [$0dfa]                                  ; $66e5: $fa $fa $0d
	nop                                              ; $66e8: $00
	ld   a, [bc]                                     ; $66e9: $0a
	ld   b, $59                                      ; $66ea: $06 $59
	ld   de, $000f                                   ; $66ec: $11 $0f $00
	ld   bc, $5801                                   ; $66ef: $01 $01 $58
	sbc  [hl]                                        ; $66f2: $9e
	ld   e, b                                        ; $66f3: $58
	inc  b                                           ; $66f4: $04
	adc  c                                           ; $66f5: $89
	and  b                                           ; $66f6: $a0
	inc  bc                                          ; $66f7: $03
	sub  e                                           ; $66f8: $93
	sub  a                                           ; $66f9: $97
	ld   a, b                                        ; $66fa: $78
	ld   e, e                                        ; $66fb: $5b
	sub  c                                           ; $66fc: $91
	ld   a, [$000d]                                  ; $66fd: $fa $0d $00
	ld   a, [bc]                                     ; $6700: $0a
	rrca                                             ; $6701: $0f
	nop                                              ; $6702: $00
	ld   bc, $0714                                   ; $6703: $01 $14 $07
	ld   bc, $b101                                   ; $6706: $01 $01 $b1
	call nz, $ffff                                   ; $6709: $c4 $ff $ff
	dec  c                                           ; $670c: $0d
	nop                                              ; $670d: $00
	ld   a, [bc]                                     ; $670e: $0a
	rlca                                             ; $670f: $07
	reti                                             ; $6710: $d9


	add  hl, bc                                      ; $6711: $09
	inc  bc                                          ; $6712: $03
	jr   nz, jr_053_6716                             ; $6713: $20 $01

	ld   a, [bc]                                     ; $6715: $0a

jr_053_6716:
	inc  hl                                          ; $6716: $23
	nop                                              ; $6717: $00
	ld   sp, $2040                                   ; $6718: $31 $40 $20
	inc  bc                                          ; $671b: $03
	jr   nz, jr_053_671f                             ; $671c: $20 $01

	ld   a, [bc]                                     ; $671e: $0a

jr_053_671f:
	add  hl, hl                                      ; $671f: $29
	nop                                              ; $6720: $00
	inc  e                                           ; $6721: $1c
	ld   b, $05                                      ; $6722: $06 $05
	dec  b                                           ; $6724: $05
	ld   bc, $5258                                   ; $6725: $01 $58 $52
	ld   e, b                                        ; $6728: $58
	ld   d, d                                        ; $6729: $52
	sbc  a                                           ; $672a: $9f
	inc  bc                                          ; $672b: $03
	ld   h, l                                        ; $672c: $65
	inc  bc                                          ; $672d: $03
	ret  nc                                          ; $672e: $d0

	and  b                                           ; $672f: $a0
	ld   a, e                                        ; $6730: $7b
	sub  a                                           ; $6731: $97
	ld   [hl], c                                     ; $6732: $71
	ld   l, l                                        ; $6733: $6d
	and  c                                           ; $6734: $a1
	dec  c                                           ; $6735: $0d
	ld   l, [hl]                                     ; $6736: $6e
	ld   e, c                                        ; $6737: $59
	sub  a                                           ; $6738: $97
	ld   [bc], a                                     ; $6739: $02
	ld   [hl], d                                     ; $673a: $72
	and  b                                           ; $673b: $a0
	inc  bc                                          ; $673c: $03
	sub  e                                           ; $673d: $93
	sbc  d                                           ; $673e: $9a
	sub  [hl]                                        ; $673f: $96
	sbc  a                                           ; $6740: $9f
	dec  c                                           ; $6741: $0d
	sub  b                                           ; $6742: $90
	ld   d, h                                        ; $6743: $54
	ld   [bc], a                                     ; $6744: $02
	jr   nz, jr_053_6749                             ; $6745: $20 $02

	sub  e                                           ; $6747: $93
	dec  b                                           ; $6748: $05

jr_053_6749:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6749: $cf
	adc  a                                           ; $674a: $8f
	ld   [hl], c                                     ; $674b: $71
	ld   e, c                                        ; $674c: $59
	sub  a                                           ; $674d: $97
	ld   l, [hl]                                     ; $674e: $6e
	sbc  a                                           ; $674f: $9f
	dec  c                                           ; $6750: $0d
	nop                                              ; $6751: $00
	ld   a, [bc]                                     ; $6752: $0a
	ld   b, $98                                      ; $6753: $06 $98
	ld   a, [bc]                                     ; $6755: $0a
	rrca                                             ; $6756: $0f
	nop                                              ; $6757: $00
	ld   bc, $0201                                   ; $6758: $01 $01 $02
	ld   h, [hl]                                     ; $675b: $66
	and  b                                           ; $675c: $a0
	inc  bc                                          ; $675d: $03
	sub  e                                           ; $675e: $93
	sbc  c                                           ; $675f: $99
	ld   sp, hl                                      ; $6760: $f9
	dec  c                                           ; $6761: $0d
	nop                                              ; $6762: $00
	ld   a, [bc]                                     ; $6763: $0a
	rrca                                             ; $6764: $0f
	nop                                              ; $6765: $00
	ld   bc, $0714                                   ; $6766: $01 $14 $07
	ld   bc, $b101                                   ; $6769: $01 $01 $b1
	or   l                                           ; $676c: $b5
	call nz, $ffff                                   ; $676d: $c4 $ff $ff
	dec  c                                           ; $6770: $0d
	nop                                              ; $6771: $00
	ld   a, [bc]                                     ; $6772: $0a
	rlca                                             ; $6773: $07
	reti                                             ; $6774: $d9


	add  hl, bc                                      ; $6775: $09
	inc  bc                                          ; $6776: $03
	jr   nz, jr_053_677a                             ; $6777: $20 $01

	ld   a, [bc]                                     ; $6779: $0a

jr_053_677a:
	inc  hl                                          ; $677a: $23
	nop                                              ; $677b: $00
	ld   sp, $2040                                   ; $677c: $31 $40 $20
	inc  bc                                          ; $677f: $03
	jr   nz, jr_053_6783                             ; $6780: $20 $01

	ld   a, [bc]                                     ; $6782: $0a

jr_053_6783:
	add  hl, hl                                      ; $6783: $29
	nop                                              ; $6784: $00
	inc  e                                           ; $6785: $1c
	ld   b, $05                                      ; $6786: $06 $05
	dec  b                                           ; $6788: $05
	ld   bc, $6503                                   ; $6789: $01 $03 $65
	inc  bc                                          ; $678c: $03
	ret  nc                                          ; $678d: $d0

	and  b                                           ; $678e: $a0
	ld   a, e                                        ; $678f: $7b
	sub  a                                           ; $6790: $97
	ld   [hl], c                                     ; $6791: $71
	ld   l, l                                        ; $6792: $6d
	and  c                                           ; $6793: $a1
	ld   l, [hl]                                     ; $6794: $6e
	ld   l, d                                        ; $6795: $6a
	sbc  a                                           ; $6796: $9f
	dec  c                                           ; $6797: $0d
	ld   [bc], a                                     ; $6798: $02
	ld   h, [hl]                                     ; $6799: $66
	and  b                                           ; $679a: $a0
	inc  bc                                          ; $679b: $03
	sub  e                                           ; $679c: $93
	ld   [hl], c                                     ; $679d: $71
	ld   [hl], h                                     ; $679e: $74
	sub  b                                           ; $679f: $90
	pop  bc                                          ; $67a0: $c1
	db   $e3                                         ; $67a1: $e3
	ld   l, [hl]                                     ; $67a2: $6e
	sbc  a                                           ; $67a3: $9f
	dec  c                                           ; $67a4: $0d
	sub  b                                           ; $67a5: $90
	ld   d, h                                        ; $67a6: $54
	ld   [bc], a                                     ; $67a7: $02
	jr   nz, jr_053_67ac                             ; $67a8: $20 $02

	sub  e                                           ; $67aa: $93
	dec  b                                           ; $67ab: $05

jr_053_67ac:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67ac: $cf
	adc  a                                           ; $67ad: $8f
	ld   [hl], c                                     ; $67ae: $71
	ld   e, c                                        ; $67af: $59
	sub  a                                           ; $67b0: $97
	ld   l, [hl]                                     ; $67b1: $6e
	sbc  a                                           ; $67b2: $9f
	dec  c                                           ; $67b3: $0d
	nop                                              ; $67b4: $00
	ld   a, [bc]                                     ; $67b5: $0a
	ld   b, $98                                      ; $67b6: $06 $98
	ld   a, [bc]                                     ; $67b8: $0a
	rrca                                             ; $67b9: $0f
	nop                                              ; $67ba: $00
	ld   bc, $0714                                   ; $67bb: $01 $14 $07
	ld   bc, $b101                                   ; $67be: $01 $01 $b1
	pop  af                                          ; $67c1: $f1
	db   $fc                                         ; $67c2: $fc
	db   $fc                                         ; $67c3: $fc
	db   $fc                                         ; $67c4: $fc
	push af                                          ; $67c5: $f5
	rst  $38                                         ; $67c6: $ff
	rst  $38                                         ; $67c7: $ff
	dec  c                                           ; $67c8: $0d
	nop                                              ; $67c9: $00
	ld   a, [bc]                                     ; $67ca: $0a
	rlca                                             ; $67cb: $07
	reti                                             ; $67cc: $d9


	add  hl, bc                                      ; $67cd: $09
	inc  bc                                          ; $67ce: $03
	jr   nz, jr_053_67d2                             ; $67cf: $20 $01

	ld   a, [bc]                                     ; $67d1: $0a

jr_053_67d2:
	inc  hl                                          ; $67d2: $23
	nop                                              ; $67d3: $00
	ld   sp, $2040                                   ; $67d4: $31 $40 $20
	inc  bc                                          ; $67d7: $03
	jr   nz, jr_053_67db                             ; $67d8: $20 $01

	ld   a, [bc]                                     ; $67da: $0a

jr_053_67db:
	add  hl, hl                                      ; $67db: $29
	nop                                              ; $67dc: $00
	inc  e                                           ; $67dd: $1c
	ld   b, $02                                      ; $67de: $06 $02
	ld   [bc], a                                     ; $67e0: $02
	ld   bc, $acd1                                   ; $67e1: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $67e4: $fa $10 $0d
	db   $dd                                         ; $67e7: $dd
	or   d                                           ; $67e8: $b2
	ld   [hl], c                                     ; $67e9: $71
	halt                                             ; $67ea: $76
	ld   h, a                                        ; $67eb: $67
	and  c                                           ; $67ec: $a1
	ld   h, [hl]                                     ; $67ed: $66
	sub  c                                           ; $67ee: $91
	ld   a, e                                        ; $67ef: $7b
	ld   d, l                                        ; $67f0: $55
	sub  [hl]                                        ; $67f1: $96
	sbc  a                                           ; $67f2: $9f
	dec  c                                           ; $67f3: $0d
	sub  b                                           ; $67f4: $90
	ld   d, h                                        ; $67f5: $54
	ld   [bc], a                                     ; $67f6: $02
	jr   nz, jr_053_67fb                             ; $67f7: $20 $02

	sub  e                                           ; $67f9: $93
	dec  b                                           ; $67fa: $05

jr_053_67fb:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67fb: $cf
	adc  a                                           ; $67fc: $8f
	ld   [hl], c                                     ; $67fd: $71
	ld   e, c                                        ; $67fe: $59
	sub  a                                           ; $67ff: $97
	ld   l, [hl]                                     ; $6800: $6e
	sbc  a                                           ; $6801: $9f
	dec  c                                           ; $6802: $0d
	nop                                              ; $6803: $00
	ld   a, [bc]                                     ; $6804: $0a
	ld   b, $98                                      ; $6805: $06 $98
	ld   a, [bc]                                     ; $6807: $0a
	inc  e                                           ; $6808: $1c
	ld   b, $05                                      ; $6809: $06 $05
	dec  b                                           ; $680b: $05
	ld   bc, $ffff                                   ; $680c: $01 $ff $ff
	rst  $38                                         ; $680f: $ff
	rst  $38                                         ; $6810: $ff
	dec  c                                           ; $6811: $0d
	ld   a, b                                        ; $6812: $78
	and  c                                           ; $6813: $a1
	ld   e, c                                        ; $6814: $59
	inc  b                                           ; $6815: $04
	sub  d                                           ; $6816: $92
	inc  bc                                          ; $6817: $03
	ld   a, l                                        ; $6818: $7d
	sbc  b                                           ; $6819: $98
	ld   a, b                                        ; $681a: $78
	ld   d, d                                        ; $681b: $52
	ld   a, b                                        ; $681c: $78
	rst  $38                                         ; $681d: $ff
	rst  $38                                         ; $681e: $ff
	dec  c                                           ; $681f: $0d
	nop                                              ; $6820: $00
	ld   a, [bc]                                     ; $6821: $0a
	inc  e                                           ; $6822: $1c
	ld   b, $01                                      ; $6823: $06 $01
	ld   bc, $401d                                   ; $6825: $01 $1d $40
	ld   d, $03                                      ; $6828: $16 $03
	ld   d, $01                                      ; $682a: $16 $01
	inc  bc                                          ; $682c: $03
	jr   z, jr_053_682f                              ; $682d: $28 $00

jr_053_682f:
	ld   bc, $9252                                   ; $682f: $01 $52 $92
	ld   d, d                                        ; $6832: $52
	sub  d                                           ; $6833: $92
	sbc  [hl]                                        ; $6834: $9e
	ld   [$7d00], sp                                 ; $6835: $08 $00 $7d
	dec  c                                           ; $6838: $0d
	sub  [hl]                                        ; $6839: $96
	ld   e, l                                        ; $683a: $5d
	sub  d                                           ; $683b: $92
	ld   [hl], c                                     ; $683c: $71
	ld   [hl], h                                     ; $683d: $74
	ld   e, l                                        ; $683e: $5d
	sbc  d                                           ; $683f: $9a
	ld   [hl], h                                     ; $6840: $74
	sbc  c                                           ; $6841: $99
	ld   l, d                                        ; $6842: $6a
	sbc  a                                           ; $6843: $9f
	dec  c                                           ; $6844: $0d
	or   [hl]                                        ; $6845: $b6
	push af                                          ; $6846: $f5
	xor  [hl]                                        ; $6847: $ae
	rst  $20                                         ; $6848: $e7
	ei                                               ; $6849: $fb
	ld   a, b                                        ; $684a: $78
	sbc  a                                           ; $684b: $9f
	dec  c                                           ; $684c: $0d
	nop                                              ; $684d: $00
	ld   a, [bc]                                     ; $684e: $0a
	inc  e                                           ; $684f: $1c
	ld   b, $03                                      ; $6850: $06 $03
	inc  bc                                          ; $6852: $03
	ld   bc, $546b                                   ; $6853: $01 $6b $54
	ld   l, [hl]                                     ; $6856: $6e
	ld   a, [$6903]                                  ; $6857: $fa $03 $69
	ld   [bc], a                                     ; $685a: $02
	xor  d                                           ; $685b: $aa
	ld   a, h                                        ; $685c: $7c
	inc  bc                                          ; $685d: $03
	ld   h, l                                        ; $685e: $65
	inc  bc                                          ; $685f: $03
	ret  nc                                          ; $6860: $d0

	adc  h                                           ; $6861: $8c
	sbc  l                                           ; $6862: $9d
	ld   h, l                                        ; $6863: $65
	ld   h, b                                        ; $6864: $60
	sbc  b                                           ; $6865: $98
	dec  c                                           ; $6866: $0d
	ld   a, h                                        ; $6867: $7c
	inc  bc                                          ; $6868: $03
	ld   c, a                                        ; $6869: $4f
	ld   a, c                                        ; $686a: $79
	sbc  [hl]                                        ; $686b: $9e
	sub  b                                           ; $686c: $90
	ld   d, h                                        ; $686d: $54
	ld   [bc], a                                     ; $686e: $02
	jr   nz, jr_053_6875                             ; $686f: $20 $04

	ld   e, [hl]                                     ; $6871: $5e
	inc  b                                           ; $6872: $04
	ld   b, l                                        ; $6873: $45
	sbc  d                                           ; $6874: $9a

jr_053_6875:
	sub  [hl]                                        ; $6875: $96
	ld   d, h                                        ; $6876: $54
	sbc  a                                           ; $6877: $9f
	dec  c                                           ; $6878: $0d
	ld   d, $04                                      ; $6879: $16 $04
	db   $fd                                         ; $687b: $fd
	ld   [bc], a                                     ; $687c: $02
	ei                                               ; $687d: $fb
	ld   [bc], a                                     ; $687e: $02
	adc  h                                           ; $687f: $8c
	ld   l, [hl]                                     ; $6880: $6e
	ld   a, [$000d]                                  ; $6881: $fa $0d $00
	ld   a, [bc]                                     ; $6884: $0a
	inc  e                                           ; $6885: $1c
	ld   b, $07                                      ; $6886: $06 $07
	rlca                                             ; $6888: $07
	ld   bc, $6596                                   ; $6889: $01 $96 $65
	sbc  [hl]                                        ; $688c: $9e
	ld   [bc], a                                     ; $688d: $02
	ld   a, a                                        ; $688e: $7f
	ld   e, l                                        ; $688f: $5d
	ld   l, d                                        ; $6890: $6a
	sbc  a                                           ; $6891: $9f
	dec  c                                           ; $6892: $0d
	inc  bc                                          ; $6893: $03
	inc  e                                           ; $6894: $1c
	inc  b                                           ; $6895: $04
	ld   d, e                                        ; $6896: $53
	ld   a, l                                        ; $6897: $7d
	ld   d, d                                        ; $6898: $52
	ld   d, d                                        ; $6899: $52
	ld   e, c                                        ; $689a: $59
	ld   sp, hl                                      ; $689b: $f9
	dec  c                                           ; $689c: $0d
	nop                                              ; $689d: $00
	ld   a, [bc]                                     ; $689e: $0a
	ld   b, $f3                                      ; $689f: $06 $f3
	ld   de, $061c                                   ; $68a1: $11 $1c $06
	ld   [bc], a                                     ; $68a4: $02
	ld   [bc], a                                     ; $68a5: $02
	ld   bc, $a102                                   ; $68a6: $01 $02 $a1
	ld   [bc], a                                     ; $68a9: $02
	ld   a, e                                        ; $68aa: $7b
	ld   d, d                                        ; $68ab: $52
	inc  b                                           ; $68ac: $04
	ld   b, l                                        ; $68ad: $45
	sbc  d                                           ; $68ae: $9a
	sbc  e                                           ; $68af: $9b
	sub  [hl]                                        ; $68b0: $96
	sbc  a                                           ; $68b1: $9f
	dec  c                                           ; $68b2: $0d
	ld   h, [hl]                                     ; $68b3: $66
	sub  c                                           ; $68b4: $91
	sbc  [hl]                                        ; $68b5: $9e
	ld   d, d                                        ; $68b6: $52
	ld   e, l                                        ; $68b7: $5d
	ld   l, d                                        ; $68b8: $6a
	ld   a, [$000d]                                  ; $68b9: $fa $0d $00
	ld   a, [bc]                                     ; $68bc: $0a
	inc  e                                           ; $68bd: $1c
	ld   b, $02                                      ; $68be: $06 $02
	ld   [bc], a                                     ; $68c0: $02
	ld   bc, $0b04                                   ; $68c1: $01 $04 $0b
	inc  bc                                          ; $68c4: $03
	ret  nc                                          ; $68c5: $d0

	sub  $a8                                         ; $68c6: $d6 $a8
	and  l                                           ; $68c8: $a5
	push af                                          ; $68c9: $f5
	ret                                              ; $68ca: $c9


	ld   a, h                                        ; $68cb: $7c
	dec  c                                           ; $68cc: $0d
	ld   [bc], a                                     ; $68cd: $02
	inc  [hl]                                        ; $68ce: $34
	inc  bc                                          ; $68cf: $03
	ret  nc                                          ; $68d0: $d0

	ld   h, b                                        ; $68d1: $60
	sbc  b                                           ; $68d2: $98
	ld   l, [hl]                                     ; $68d3: $6e
	ld   a, [$000d]                                  ; $68d4: $fa $0d $00
	ld   a, [bc]                                     ; $68d7: $0a
	inc  d                                           ; $68d8: $14
	dec  d                                           ; $68d9: $15
	ld   bc, $0319                                   ; $68da: $01 $19 $03
	inc  bc                                          ; $68dd: $03
	inc  bc                                          ; $68de: $03
	ld   a, l                                        ; $68df: $7d
	ld   [hl], l                                     ; $68e0: $75
	ld   h, e                                        ; $68e1: $63
	ld   a, [hl]                                     ; $68e2: $7e
	ld   e, l                                        ; $68e3: $5d
	nop                                              ; $68e4: $00
	nop                                              ; $68e5: $00
	ld   e, b                                        ; $68e6: $58
	ld   a, b                                        ; $68e7: $78
	ld   e, c                                        ; $68e8: $59
	and  b                                           ; $68e9: $a0
	inc  bc                                          ; $68ea: $03
	sub  e                                           ; $68eb: $93
	sbc  c                                           ; $68ec: $99
	nop                                              ; $68ed: $00
	ld   bc, $6b03                                   ; $68ee: $01 $03 $6b
	ld   [hl], l                                     ; $68f1: $75
	ld   b, $17                                      ; $68f2: $06 $17
	ld   d, h                                        ; $68f4: $54
	nop                                              ; $68f5: $00
	ld   [bc], a                                     ; $68f6: $02
	rlca                                             ; $68f7: $07
	ld   h, [hl]                                     ; $68f8: $66
	ld   [de], a                                     ; $68f9: $12
	ld   [bc], a                                     ; $68fa: $02
	inc  bc                                          ; $68fb: $03
	ld   bc, $2000                                   ; $68fc: $01 $00 $20
	nop                                              ; $68ff: $00
	rlca                                             ; $6900: $07
	sub  [hl]                                        ; $6901: $96
	ld   [de], a                                     ; $6902: $12
	ld   [bc], a                                     ; $6903: $02
	inc  bc                                          ; $6904: $03
	ld   bc, $2001                                   ; $6905: $01 $01 $20
	nop                                              ; $6908: $00
	rlca                                             ; $6909: $07
	db   $fc                                         ; $690a: $fc
	ld   [de], a                                     ; $690b: $12
	ld   [bc], a                                     ; $690c: $02
	inc  bc                                          ; $690d: $03
	ld   bc, $2002                                   ; $690e: $01 $02 $20
	nop                                              ; $6911: $00
	ld   b, $60                                      ; $6912: $06 $60
	inc  de                                          ; $6914: $13
	rrca                                             ; $6915: $0f
	nop                                              ; $6916: $00
	ld   bc, $0201                                   ; $6917: $01 $01 $02
	inc  [hl]                                        ; $691a: $34
	inc  bc                                          ; $691b: $03
	ret  nc                                          ; $691c: $d0

	ld   h, b                                        ; $691d: $60
	sbc  b                                           ; $691e: $98
	ld   a, l                                        ; $691f: $7d
	inc  bc                                          ; $6920: $03
	ld   a, l                                        ; $6921: $7d
	ld   [hl], l                                     ; $6922: $75
	ld   h, e                                        ; $6923: $63
	ld   a, [hl]                                     ; $6924: $7e
	ld   e, l                                        ; $6925: $5d
	ld   a, [$000d]                                  ; $6926: $fa $0d $00
	ld   a, [bc]                                     ; $6929: $0a
	inc  d                                           ; $692a: $14
	ld   a, [de]                                     ; $692b: $1a
	ld   bc, $061c                                   ; $692c: $01 $1c $06
	ld   bc, $0101                                   ; $692f: $01 $01 $01
	sub  [hl]                                        ; $6932: $96
	ld   h, l                                        ; $6933: $65
	ld   a, [$540d]                                  ; $6934: $fa $0d $54
	adc  h                                           ; $6937: $8c
	ld   d, d                                        ; $6938: $52
	ld   h, [hl]                                     ; $6939: $66
	sub  c                                           ; $693a: $91
	ld   a, b                                        ; $693b: $78
	ld   d, d                                        ; $693c: $52
	ld   e, c                                        ; $693d: $59
	ld   a, [$000d]                                  ; $693e: $fa $0d $00
	ld   a, [bc]                                     ; $6941: $0a
	ld   b, $ab                                      ; $6942: $06 $ab
	inc  de                                          ; $6944: $13
	rrca                                             ; $6945: $0f
	nop                                              ; $6946: $00
	ld   bc, $5801                                   ; $6947: $01 $01 $58
	ld   a, b                                        ; $694a: $78
	ld   e, c                                        ; $694b: $59
	and  b                                           ; $694c: $a0
	inc  bc                                          ; $694d: $03
	sub  e                                           ; $694e: $93
	sub  a                                           ; $694f: $97
	ld   a, b                                        ; $6950: $78
	ld   e, e                                        ; $6951: $5b
	sub  c                                           ; $6952: $91
	ld   a, [$000d]                                  ; $6953: $fa $0d $00
	ld   a, [bc]                                     ; $6956: $0a
	rrca                                             ; $6957: $0f
	nop                                              ; $6958: $00
	ld   bc, $0714                                   ; $6959: $01 $14 $07
	ld   bc, $a501                                   ; $695c: $01 $01 $a5
	rst  ToBoot                                         ; $695f: $c7
	call nz, $0dfa                                   ; $6960: $c4 $fa $0d
	nop                                              ; $6963: $00
	ld   a, [bc]                                     ; $6964: $0a
	rlca                                             ; $6965: $07
	reti                                             ; $6966: $d9


	add  hl, bc                                      ; $6967: $09
	inc  bc                                          ; $6968: $03
	jr   nz, jr_053_696c                             ; $6969: $20 $01

	ld   a, [bc]                                     ; $696b: $0a

jr_053_696c:
	inc  hl                                          ; $696c: $23
	nop                                              ; $696d: $00
	ld   sp, $2040                                   ; $696e: $31 $40 $20
	inc  bc                                          ; $6971: $03
	jr   nz, jr_053_6975                             ; $6972: $20 $01

	ld   a, [bc]                                     ; $6974: $0a

jr_053_6975:
	add  hl, hl                                      ; $6975: $29
	nop                                              ; $6976: $00
	inc  e                                           ; $6977: $1c
	ld   b, $05                                      ; $6978: $06 $05
	dec  b                                           ; $697a: $05
	ld   bc, $5258                                   ; $697b: $01 $58 $52
	ld   e, b                                        ; $697e: $58
	ld   d, d                                        ; $697f: $52
	sbc  a                                           ; $6980: $9f
	adc  h                                           ; $6981: $8c
	ld   l, [hl]                                     ; $6982: $6e
	ld   [de], a                                     ; $6983: $12
	inc  b                                           ; $6984: $04
	ld   e, [hl]                                     ; $6985: $5e
	inc  b                                           ; $6986: $04
	call nc, Call_053_6a6e                           ; $6987: $d4 $6e $6a
	sbc  a                                           ; $698a: $9f
	dec  c                                           ; $698b: $0d
	ld   h, l                                        ; $698c: $65
	ld   [hl], c                                     ; $698d: $71
	ld   e, c                                        ; $698e: $59
	sbc  b                                           ; $698f: $98
	ld   h, l                                        ; $6990: $65
	ld   [hl], h                                     ; $6991: $74
	ld   e, l                                        ; $6992: $5d
	sbc  d                                           ; $6993: $9a
	sub  [hl]                                        ; $6994: $96
	sbc  a                                           ; $6995: $9f
	dec  c                                           ; $6996: $0d
	sub  b                                           ; $6997: $90
	ld   d, h                                        ; $6998: $54
	ld   [bc], a                                     ; $6999: $02
	jr   nz, jr_053_699e                             ; $699a: $20 $02

	sub  e                                           ; $699c: $93
	dec  b                                           ; $699d: $05

jr_053_699e:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $699e: $cf
	adc  a                                           ; $699f: $8f
	ld   [hl], c                                     ; $69a0: $71
	ld   e, c                                        ; $69a1: $59
	sub  a                                           ; $69a2: $97
	ld   l, [hl]                                     ; $69a3: $6e
	sbc  a                                           ; $69a4: $9f
	dec  c                                           ; $69a5: $0d
	nop                                              ; $69a6: $00
	ld   a, [bc]                                     ; $69a7: $0a
	ld   b, $0e                                      ; $69a8: $06 $0e
	ld   [de], a                                     ; $69aa: $12
	rrca                                             ; $69ab: $0f
	nop                                              ; $69ac: $00
	ld   bc, $0301                                   ; $69ad: $01 $01 $03
	ld   l, e                                        ; $69b0: $6b
	ld   [hl], l                                     ; $69b1: $75
	ld   b, $17                                      ; $69b2: $06 $17
	ld   d, h                                        ; $69b4: $54
	ld   sp, hl                                      ; $69b5: $f9
	dec  c                                           ; $69b6: $0d
	nop                                              ; $69b7: $00
	ld   a, [bc]                                     ; $69b8: $0a
	rrca                                             ; $69b9: $0f
	nop                                              ; $69ba: $00
	ld   bc, $0714                                   ; $69bb: $01 $14 $07
	ld   bc, $a501                                   ; $69be: $01 $01 $a5
	rst  ToBoot                                         ; $69c1: $c7
	call nz, $0dfa                                   ; $69c2: $c4 $fa $0d
	nop                                              ; $69c5: $00
	ld   a, [bc]                                     ; $69c6: $0a
	rlca                                             ; $69c7: $07
	reti                                             ; $69c8: $d9


	add  hl, bc                                      ; $69c9: $09
	inc  bc                                          ; $69ca: $03
	jr   nz, jr_053_69ce                             ; $69cb: $20 $01

	ld   a, [bc]                                     ; $69cd: $0a

jr_053_69ce:
	inc  hl                                          ; $69ce: $23
	nop                                              ; $69cf: $00
	ld   sp, $2040                                   ; $69d0: $31 $40 $20
	inc  bc                                          ; $69d3: $03
	jr   nz, jr_053_69d7                             ; $69d4: $20 $01

	ld   a, [bc]                                     ; $69d6: $0a

jr_053_69d7:
	add  hl, hl                                      ; $69d7: $29
	nop                                              ; $69d8: $00
	inc  e                                           ; $69d9: $1c
	ld   b, $05                                      ; $69da: $06 $05
	dec  b                                           ; $69dc: $05
	ld   bc, $3402                                   ; $69dd: $01 $02 $34
	inc  bc                                          ; $69e0: $03
	ret  nc                                          ; $69e1: $d0

	ld   h, b                                        ; $69e2: $60
	sbc  b                                           ; $69e3: $98
	ld   a, l                                        ; $69e4: $7d
	inc  bc                                          ; $69e5: $03
	ld   l, e                                        ; $69e6: $6b
	ld   [hl], l                                     ; $69e7: $75
	ld   b, $17                                      ; $69e8: $06 $17
	ld   d, [hl]                                     ; $69ea: $56
	ld   a, b                                        ; $69eb: $78
	ld   d, d                                        ; $69ec: $52
	ld   l, d                                        ; $69ed: $6a
	sbc  a                                           ; $69ee: $9f
	dec  c                                           ; $69ef: $0d
	ld   h, l                                        ; $69f0: $65
	ld   [hl], c                                     ; $69f1: $71
	ld   e, c                                        ; $69f2: $59
	sbc  b                                           ; $69f3: $98
	ld   h, l                                        ; $69f4: $65
	ld   [hl], h                                     ; $69f5: $74
	ld   e, l                                        ; $69f6: $5d
	sbc  d                                           ; $69f7: $9a
	sub  [hl]                                        ; $69f8: $96
	sbc  a                                           ; $69f9: $9f
	dec  c                                           ; $69fa: $0d
	sub  b                                           ; $69fb: $90
	ld   d, h                                        ; $69fc: $54
	ld   [bc], a                                     ; $69fd: $02
	jr   nz, jr_053_6a02                             ; $69fe: $20 $02

	sub  e                                           ; $6a00: $93
	dec  b                                           ; $6a01: $05

jr_053_6a02:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a02: $cf
	adc  a                                           ; $6a03: $8f
	ld   [hl], c                                     ; $6a04: $71
	ld   e, c                                        ; $6a05: $59
	sub  a                                           ; $6a06: $97
	ld   l, [hl]                                     ; $6a07: $6e
	sbc  a                                           ; $6a08: $9f
	dec  c                                           ; $6a09: $0d
	nop                                              ; $6a0a: $00
	ld   a, [bc]                                     ; $6a0b: $0a
	ld   b, $0e                                      ; $6a0c: $06 $0e
	ld   [de], a                                     ; $6a0e: $12
	rrca                                             ; $6a0f: $0f
	nop                                              ; $6a10: $00
	ld   bc, $0714                                   ; $6a11: $01 $14 $07
	ld   bc, $a501                                   ; $6a14: $01 $01 $a5
	call nz, $fbc7                                   ; $6a17: $c4 $c7 $fb
	dec  c                                           ; $6a1a: $0d
	nop                                              ; $6a1b: $00
	ld   a, [bc]                                     ; $6a1c: $0a
	rlca                                             ; $6a1d: $07
	reti                                             ; $6a1e: $d9


	add  hl, bc                                      ; $6a1f: $09
	inc  bc                                          ; $6a20: $03
	jr   nz, jr_053_6a24                             ; $6a21: $20 $01

	ld   a, [bc]                                     ; $6a23: $0a

jr_053_6a24:
	inc  hl                                          ; $6a24: $23
	nop                                              ; $6a25: $00
	ld   sp, $2040                                   ; $6a26: $31 $40 $20
	inc  bc                                          ; $6a29: $03
	jr   nz, jr_053_6a2d                             ; $6a2a: $20 $01

	ld   a, [bc]                                     ; $6a2c: $0a

jr_053_6a2d:
	add  hl, hl                                      ; $6a2d: $29
	nop                                              ; $6a2e: $00
	inc  e                                           ; $6a2f: $1c
	ld   b, $02                                      ; $6a30: $06 $02
	ld   [bc], a                                     ; $6a32: $02
	ld   bc, $acd1                                   ; $6a33: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $6a36: $fa $10 $0d
	db   $dd                                         ; $6a39: $dd
	or   d                                           ; $6a3a: $b2
	ld   [hl], c                                     ; $6a3b: $71
	halt                                             ; $6a3c: $76
	ld   h, a                                        ; $6a3d: $67
	and  c                                           ; $6a3e: $a1
	ld   h, [hl]                                     ; $6a3f: $66
	sub  c                                           ; $6a40: $91
	ld   a, e                                        ; $6a41: $7b
	ld   d, l                                        ; $6a42: $55
	sub  [hl]                                        ; $6a43: $96
	sbc  a                                           ; $6a44: $9f
	dec  c                                           ; $6a45: $0d
	sub  b                                           ; $6a46: $90
	ld   d, h                                        ; $6a47: $54
	ld   [bc], a                                     ; $6a48: $02
	jr   nz, jr_053_6a4d                             ; $6a49: $20 $02

	sub  e                                           ; $6a4b: $93
	dec  b                                           ; $6a4c: $05

jr_053_6a4d:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a4d: $cf
	adc  a                                           ; $6a4e: $8f
	ld   [hl], c                                     ; $6a4f: $71
	ld   e, c                                        ; $6a50: $59
	sub  a                                           ; $6a51: $97
	ld   l, [hl]                                     ; $6a52: $6e
	sbc  a                                           ; $6a53: $9f
	dec  c                                           ; $6a54: $0d
	nop                                              ; $6a55: $00
	ld   a, [bc]                                     ; $6a56: $0a
	ld   b, $0e                                      ; $6a57: $06 $0e
	ld   [de], a                                     ; $6a59: $12
	inc  e                                           ; $6a5a: $1c
	ld   b, $02                                      ; $6a5b: $06 $02
	ld   [bc], a                                     ; $6a5d: $02
	ld   bc, $6803                                   ; $6a5e: $01 $03 $68
	ld   a, c                                        ; $6a61: $79
	inc  bc                                          ; $6a62: $03
	ld   c, d                                        ; $6a63: $4a
	ld   [bc], a                                     ; $6a64: $02
	ld   [hl], c                                     ; $6a65: $71
	ld   [hl], e                                     ; $6a66: $73
	ld   e, e                                        ; $6a67: $5b
	ld   [hl], l                                     ; $6a68: $75
	dec  c                                           ; $6a69: $0d
	inc  b                                           ; $6a6a: $04
	dec  bc                                          ; $6a6b: $0b
	inc  bc                                          ; $6a6c: $03
	ret  nc                                          ; $6a6d: $d0

Call_053_6a6e:
	and  b                                           ; $6a6e: $a0
	ld   [bc], a                                     ; $6a6f: $02
	ld   c, b                                        ; $6a70: $48
	ld   [bc], a                                     ; $6a71: $02
	sub  c                                           ; $6a72: $91
	ld   l, [hl]                                     ; $6a73: $6e
	ld   a, [$000d]                                  ; $6a74: $fa $0d $00
	ld   a, [bc]                                     ; $6a77: $0a
	inc  d                                           ; $6a78: $14
	dec  d                                           ; $6a79: $15
	ld   bc, $0319                                   ; $6a7a: $01 $19 $03
	inc  bc                                          ; $6a7d: $03
	ld   [bc], a                                     ; $6a7e: $02
	ld   h, [hl]                                     ; $6a7f: $66
	and  b                                           ; $6a80: $a0
	inc  bc                                          ; $6a81: $03
	sub  e                                           ; $6a82: $93
	sbc  c                                           ; $6a83: $99
	nop                                              ; $6a84: $00
	nop                                              ; $6a85: $00
	ld   [bc], a                                     ; $6a86: $02
	ld   [hl], d                                     ; $6a87: $72
	and  b                                           ; $6a88: $a0
	inc  bc                                          ; $6a89: $03
	sub  e                                           ; $6a8a: $93
	sbc  c                                           ; $6a8b: $99
	nop                                              ; $6a8c: $00
	ld   bc, $9165                                   ; $6a8d: $01 $65 $91
	ld   e, d                                        ; $6a90: $5a
	and  c                                           ; $6a91: $a1
	ld   [hl], l                                     ; $6a92: $75
	ld   e, c                                        ; $6a93: $59
	sbc  l                                           ; $6a94: $9d
	ld   h, a                                        ; $6a95: $67
	nop                                              ; $6a96: $00
	ld   [bc], a                                     ; $6a97: $02
	rlca                                             ; $6a98: $07
	rlca                                             ; $6a99: $07
	inc  d                                           ; $6a9a: $14
	ld   [bc], a                                     ; $6a9b: $02
	inc  bc                                          ; $6a9c: $03
	ld   bc, $2000                                   ; $6a9d: $01 $00 $20
	nop                                              ; $6aa0: $00
	rlca                                             ; $6aa1: $07
	ld   [hl-], a                                    ; $6aa2: $32
	inc  d                                           ; $6aa3: $14
	ld   [bc], a                                     ; $6aa4: $02
	inc  bc                                          ; $6aa5: $03
	ld   bc, $2001                                   ; $6aa6: $01 $01 $20
	nop                                              ; $6aa9: $00
	rlca                                             ; $6aaa: $07
	and  b                                           ; $6aab: $a0
	inc  d                                           ; $6aac: $14
	ld   [bc], a                                     ; $6aad: $02
	inc  bc                                          ; $6aae: $03
	ld   bc, $2002                                   ; $6aaf: $01 $02 $20
	nop                                              ; $6ab2: $00
	ld   b, $1a                                      ; $6ab3: $06 $1a
	dec  d                                           ; $6ab5: $15
	rrca                                             ; $6ab6: $0f
	nop                                              ; $6ab7: $00
	ld   bc, $0401                                   ; $6ab8: $01 $01 $04
	dec  bc                                          ; $6abb: $0b
	inc  bc                                          ; $6abc: $03
	ret  nc                                          ; $6abd: $d0

	ld   [bc], a                                     ; $6abe: $02
	ld   c, b                                        ; $6abf: $48
	ld   [bc], a                                     ; $6ac0: $02
	sub  c                                           ; $6ac1: $91
	ld   a, b                                        ; $6ac2: $78
	sub  a                                           ; $6ac3: $97
	ld   a, [hl]                                     ; $6ac4: $7e
	sbc  [hl]                                        ; $6ac5: $9e
	ld   [bc], a                                     ; $6ac6: $02
	ld   h, [hl]                                     ; $6ac7: $66
	and  b                                           ; $6ac8: $a0
	inc  bc                                          ; $6ac9: $03
	sub  e                                           ; $6aca: $93
	sbc  c                                           ; $6acb: $99
	ld   a, [$000d]                                  ; $6acc: $fa $0d $00
	ld   a, [bc]                                     ; $6acf: $0a
	inc  d                                           ; $6ad0: $14
	ld   a, [de]                                     ; $6ad1: $1a
	ld   bc, $061c                                   ; $6ad2: $01 $1c $06
	ld   bc, $0101                                   ; $6ad5: $01 $01 $01
	sub  [hl]                                        ; $6ad8: $96
	ld   h, l                                        ; $6ad9: $65
	ld   a, [$000d]                                  ; $6ada: $fa $0d $00
	ld   a, [bc]                                     ; $6add: $0a
	ld   b, $66                                      ; $6ade: $06 $66
	dec  d                                           ; $6ae0: $15
	rrca                                             ; $6ae1: $0f
	nop                                              ; $6ae2: $00
	ld   bc, $5901                                   ; $6ae3: $01 $01 $59
	sbc  [hl]                                        ; $6ae6: $9e
	ld   [bc], a                                     ; $6ae7: $02
	ld   [hl], d                                     ; $6ae8: $72
	and  b                                           ; $6ae9: $a0
	inc  bc                                          ; $6aea: $03
	sub  e                                           ; $6aeb: $93
	sub  a                                           ; $6aec: $97
	ld   a, b                                        ; $6aed: $78
	ld   e, e                                        ; $6aee: $5b
	sub  c                                           ; $6aef: $91
	ld   a, [$000d]                                  ; $6af0: $fa $0d $00
	ld   a, [bc]                                     ; $6af3: $0a
	rrca                                             ; $6af4: $0f
	nop                                              ; $6af5: $00
	ld   bc, $0714                                   ; $6af6: $01 $14 $07
	ld   bc, $9d01                                   ; $6af9: $01 $01 $9d
	ld   a, [$a510]                                  ; $6afc: $fa $10 $a5
	rst  ToBoot                                         ; $6aff: $c7
	rst  ToBoot                                         ; $6b00: $c7
	dec  c                                           ; $6b01: $0d
	nop                                              ; $6b02: $00
	ld   a, [bc]                                     ; $6b03: $0a
	rlca                                             ; $6b04: $07
	reti                                             ; $6b05: $d9


	add  hl, bc                                      ; $6b06: $09
	inc  bc                                          ; $6b07: $03
	jr   nz, jr_053_6b0b                             ; $6b08: $20 $01

	ld   a, [bc]                                     ; $6b0a: $0a

jr_053_6b0b:
	inc  hl                                          ; $6b0b: $23
	nop                                              ; $6b0c: $00
	ld   sp, $2040                                   ; $6b0d: $31 $40 $20
	inc  bc                                          ; $6b10: $03
	jr   nz, jr_053_6b14                             ; $6b11: $20 $01

	ld   a, [bc]                                     ; $6b13: $0a

jr_053_6b14:
	add  hl, hl                                      ; $6b14: $29
	nop                                              ; $6b15: $00
	inc  e                                           ; $6b16: $1c
	ld   b, $05                                      ; $6b17: $06 $05
	dec  b                                           ; $6b19: $05
	ld   bc, $5258                                   ; $6b1a: $01 $58 $52
	ld   e, b                                        ; $6b1d: $58
	ld   d, d                                        ; $6b1e: $52
	sbc  a                                           ; $6b1f: $9f
	inc  b                                           ; $6b20: $04
	dec  bc                                          ; $6b21: $0b
	inc  bc                                          ; $6b22: $03
	ret  nc                                          ; $6b23: $d0

	and  b                                           ; $6b24: $a0
	dec  b                                           ; $6b25: $05
	call Call_053_6d71                               ; $6b26: $cd $71 $6d
	and  c                                           ; $6b29: $a1
	dec  c                                           ; $6b2a: $0d
	ld   l, [hl]                                     ; $6b2b: $6e
	ld   e, c                                        ; $6b2c: $59
	sub  a                                           ; $6b2d: $97
	ld   [bc], a                                     ; $6b2e: $02
	ld   h, [hl]                                     ; $6b2f: $66
	ld   [bc], a                                     ; $6b30: $02
	xor  h                                           ; $6b31: $ac
	and  b                                           ; $6b32: $a0
	inc  bc                                          ; $6b33: $03
	sub  e                                           ; $6b34: $93
	sbc  c                                           ; $6b35: $99
	and  c                                           ; $6b36: $a1
	ld   l, [hl]                                     ; $6b37: $6e
	sub  [hl]                                        ; $6b38: $96
	sbc  a                                           ; $6b39: $9f
	dec  c                                           ; $6b3a: $0d
	sub  b                                           ; $6b3b: $90
	ld   d, h                                        ; $6b3c: $54
	ld   [bc], a                                     ; $6b3d: $02
	jr   nz, jr_053_6b42                             ; $6b3e: $20 $02

	sub  e                                           ; $6b40: $93
	dec  b                                           ; $6b41: $05

jr_053_6b42:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b42: $cf
	adc  a                                           ; $6b43: $8f
	ld   [hl], c                                     ; $6b44: $71
	ld   e, c                                        ; $6b45: $59
	sub  a                                           ; $6b46: $97
	ld   l, [hl]                                     ; $6b47: $6e
	sbc  a                                           ; $6b48: $9f
	dec  c                                           ; $6b49: $0d
	nop                                              ; $6b4a: $00
	ld   a, [bc]                                     ; $6b4b: $0a
	ld   b, $0e                                      ; $6b4c: $06 $0e
	ld   [de], a                                     ; $6b4e: $12
	rrca                                             ; $6b4f: $0f
	nop                                              ; $6b50: $00
	ld   bc, $0401                                   ; $6b51: $01 $01 $04
	dec  bc                                          ; $6b54: $0b
	inc  bc                                          ; $6b55: $03
	ret  nc                                          ; $6b56: $d0

	ld   [bc], a                                     ; $6b57: $02
	ld   c, b                                        ; $6b58: $48
	ld   [bc], a                                     ; $6b59: $02
	sub  c                                           ; $6b5a: $91
	ld   a, l                                        ; $6b5b: $7d
	ld   h, l                                        ; $6b5c: $65
	sub  c                                           ; $6b5d: $91
	ld   e, d                                        ; $6b5e: $5a
	and  c                                           ; $6b5f: $a1
	ld   [hl], l                                     ; $6b60: $75
	dec  c                                           ; $6b61: $0d
	sub  [hl]                                        ; $6b62: $96
	ld   e, a                                        ; $6b63: $5f
	sbc  c                                           ; $6b64: $99
	ld   sp, hl                                      ; $6b65: $f9
	dec  c                                           ; $6b66: $0d
	nop                                              ; $6b67: $00
	ld   a, [bc]                                     ; $6b68: $0a
	rrca                                             ; $6b69: $0f
	nop                                              ; $6b6a: $00
	ld   bc, $0714                                   ; $6b6b: $01 $14 $07
	ld   bc, $b101                                   ; $6b6e: $01 $01 $b1
	ret  nc                                          ; $6b71: $d0

	call nz, $0dfa                                   ; $6b72: $c4 $fa $0d
	ld   a, l                                        ; $6b75: $7d
	sbc  [hl]                                        ; $6b76: $9e
	ret  nc                                          ; $6b77: $d0

	bit  3, d                                        ; $6b78: $cb $5a
	rst  $38                                         ; $6b7a: $ff
	rst  $38                                         ; $6b7b: $ff
	dec  c                                           ; $6b7c: $0d
	nop                                              ; $6b7d: $00
	ld   a, [bc]                                     ; $6b7e: $0a
	rlca                                             ; $6b7f: $07
	reti                                             ; $6b80: $d9


	add  hl, bc                                      ; $6b81: $09
	inc  bc                                          ; $6b82: $03
	jr   nz, jr_053_6b86                             ; $6b83: $20 $01

	ld   a, [bc]                                     ; $6b85: $0a

jr_053_6b86:
	inc  hl                                          ; $6b86: $23
	nop                                              ; $6b87: $00
	ld   sp, $2040                                   ; $6b88: $31 $40 $20
	inc  bc                                          ; $6b8b: $03
	jr   nz, jr_053_6b8f                             ; $6b8c: $20 $01

	ld   a, [bc]                                     ; $6b8e: $0a

jr_053_6b8f:
	add  hl, hl                                      ; $6b8f: $29
	nop                                              ; $6b90: $00
	inc  e                                           ; $6b91: $1c
	ld   b, $05                                      ; $6b92: $06 $05
	dec  b                                           ; $6b94: $05
	ld   bc, $0b04                                   ; $6b95: $01 $04 $0b
	inc  bc                                          ; $6b98: $03
	ret  nc                                          ; $6b99: $d0

	and  b                                           ; $6b9a: $a0
	dec  b                                           ; $6b9b: $05
	call Call_053_6d71                               ; $6b9c: $cd $71 $6d
	and  c                                           ; $6b9f: $a1
	ld   l, [hl]                                     ; $6ba0: $6e
	ld   l, d                                        ; $6ba1: $6a
	sbc  a                                           ; $6ba2: $9f
	dec  c                                           ; $6ba3: $0d
	ld   h, l                                        ; $6ba4: $65
	sub  c                                           ; $6ba5: $91
	ld   e, d                                        ; $6ba6: $5a
	and  c                                           ; $6ba7: $a1
	ld   l, [hl]                                     ; $6ba8: $6e
	sub  a                                           ; $6ba9: $97
	ld   [bc], a                                     ; $6baa: $02
	ld   [hl], d                                     ; $6bab: $72
	ld   a, c                                        ; $6bac: $79
	inc  b                                           ; $6bad: $04
	jr   jr_053_6c1d                                 ; $6bae: $18 $6d

	sbc  c                                           ; $6bb0: $99
	sub  [hl]                                        ; $6bb1: $96
	ld   a, b                                        ; $6bb2: $78
	sbc  a                                           ; $6bb3: $9f
	dec  c                                           ; $6bb4: $0d
	sub  b                                           ; $6bb5: $90
	ld   d, h                                        ; $6bb6: $54
	ld   [bc], a                                     ; $6bb7: $02
	jr   nz, jr_053_6bbc                             ; $6bb8: $20 $02

	sub  e                                           ; $6bba: $93
	dec  b                                           ; $6bbb: $05

jr_053_6bbc:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bbc: $cf
	adc  a                                           ; $6bbd: $8f
	ld   [hl], c                                     ; $6bbe: $71
	ld   e, c                                        ; $6bbf: $59
	sub  a                                           ; $6bc0: $97
	ld   l, [hl]                                     ; $6bc1: $6e
	sbc  a                                           ; $6bc2: $9f
	dec  c                                           ; $6bc3: $0d
	nop                                              ; $6bc4: $00
	ld   a, [bc]                                     ; $6bc5: $0a
	ld   b, $0e                                      ; $6bc6: $06 $0e
	ld   [de], a                                     ; $6bc8: $12
	rrca                                             ; $6bc9: $0f
	nop                                              ; $6bca: $00
	ld   bc, $0714                                   ; $6bcb: $01 $14 $07
	ld   bc, $b301                                   ; $6bce: $01 $01 $b3
	call c, $ffc4                                    ; $6bd1: $dc $c4 $ff
	rst  $38                                         ; $6bd4: $ff
	dec  c                                           ; $6bd5: $0d
	nop                                              ; $6bd6: $00
	ld   a, [bc]                                     ; $6bd7: $0a
	rlca                                             ; $6bd8: $07
	reti                                             ; $6bd9: $d9


	add  hl, bc                                      ; $6bda: $09
	inc  bc                                          ; $6bdb: $03
	jr   nz, jr_053_6bdf                             ; $6bdc: $20 $01

	ld   a, [bc]                                     ; $6bde: $0a

jr_053_6bdf:
	inc  hl                                          ; $6bdf: $23
	nop                                              ; $6be0: $00
	ld   sp, $2040                                   ; $6be1: $31 $40 $20
	inc  bc                                          ; $6be4: $03
	jr   nz, jr_053_6be8                             ; $6be5: $20 $01

	ld   a, [bc]                                     ; $6be7: $0a

jr_053_6be8:
	add  hl, hl                                      ; $6be8: $29
	nop                                              ; $6be9: $00
	inc  e                                           ; $6bea: $1c
	ld   b, $02                                      ; $6beb: $06 $02
	ld   [bc], a                                     ; $6bed: $02
	ld   bc, $acd1                                   ; $6bee: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $6bf1: $fa $10 $0d
	db   $dd                                         ; $6bf4: $dd
	or   d                                           ; $6bf5: $b2
	ld   [hl], c                                     ; $6bf6: $71
	halt                                             ; $6bf7: $76
	ld   h, a                                        ; $6bf8: $67
	and  c                                           ; $6bf9: $a1
	ld   h, [hl]                                     ; $6bfa: $66
	sub  c                                           ; $6bfb: $91
	ld   a, e                                        ; $6bfc: $7b
	ld   d, l                                        ; $6bfd: $55
	sub  [hl]                                        ; $6bfe: $96
	sbc  a                                           ; $6bff: $9f
	dec  c                                           ; $6c00: $0d
	sub  b                                           ; $6c01: $90
	ld   d, h                                        ; $6c02: $54
	ld   [bc], a                                     ; $6c03: $02
	jr   nz, jr_053_6c08                             ; $6c04: $20 $02

	sub  e                                           ; $6c06: $93
	dec  b                                           ; $6c07: $05

jr_053_6c08:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c08: $cf
	adc  a                                           ; $6c09: $8f
	ld   [hl], c                                     ; $6c0a: $71
	ld   e, c                                        ; $6c0b: $59
	sub  a                                           ; $6c0c: $97
	ld   l, [hl]                                     ; $6c0d: $6e
	sbc  a                                           ; $6c0e: $9f
	dec  c                                           ; $6c0f: $0d
	nop                                              ; $6c10: $00
	ld   a, [bc]                                     ; $6c11: $0a
	ld   b, $0e                                      ; $6c12: $06 $0e
	ld   [de], a                                     ; $6c14: $12
	inc  e                                           ; $6c15: $1c
	ld   b, $02                                      ; $6c16: $06 $02
	ld   [bc], a                                     ; $6c18: $02
	ld   bc, $6803                                   ; $6c19: $01 $03 $68
	ld   a, l                                        ; $6c1c: $7d

jr_053_6c1d:
	sbc  [hl]                                        ; $6c1d: $9e
	dec  b                                           ; $6c1e: $05
	ld   h, l                                        ; $6c1f: $65
	ld   [bc], a                                     ; $6c20: $02
	ld   [hl], c                                     ; $6c21: $71
	ld   [hl], l                                     ; $6c22: $75
	inc  bc                                          ; $6c23: $03
	ld   h, l                                        ; $6c24: $65
	inc  bc                                          ; $6c25: $03
	ret  nc                                          ; $6c26: $d0

	add  [hl]                                        ; $6c27: $86
	ld   [bc], a                                     ; $6c28: $02
	ld   c, b                                        ; $6c29: $48
	ld   [bc], a                                     ; $6c2a: $02
	sub  c                                           ; $6c2b: $91
	ld   l, [hl]                                     ; $6c2c: $6e
	ld   a, [$000d]                                  ; $6c2d: $fa $0d $00
	ld   a, [bc]                                     ; $6c30: $0a
	inc  d                                           ; $6c31: $14
	dec  d                                           ; $6c32: $15
	ld   bc, $0319                                   ; $6c33: $01 $19 $03
	inc  bc                                          ; $6c36: $03
	ld   h, l                                        ; $6c37: $65
	sub  c                                           ; $6c38: $91
	ld   e, d                                        ; $6c39: $5a
	and  c                                           ; $6c3a: $a1
	ld   [hl], l                                     ; $6c3b: $75
	ld   e, c                                        ; $6c3c: $59
	sbc  l                                           ; $6c3d: $9d
	ld   h, a                                        ; $6c3e: $67
	nop                                              ; $6c3f: $00
	nop                                              ; $6c40: $00
	inc  bc                                          ; $6c41: $03
	ld   a, l                                        ; $6c42: $7d
	ld   [hl], l                                     ; $6c43: $75
	ld   b, $17                                      ; $6c44: $06 $17
	ld   d, h                                        ; $6c46: $54
	nop                                              ; $6c47: $00
	ld   bc, $e5b9                                   ; $6c48: $01 $b9 $e5
	push af                                          ; $6c4b: $f5
	ret  c                                           ; $6c4c: $d8

	ld   h, a                                        ; $6c4d: $67
	sbc  c                                           ; $6c4e: $99
	nop                                              ; $6c4f: $00
	ld   [bc], a                                     ; $6c50: $02
	rlca                                             ; $6c51: $07
	ret  nz                                          ; $6c52: $c0

	dec  d                                           ; $6c53: $15
	ld   [bc], a                                     ; $6c54: $02
	inc  bc                                          ; $6c55: $03
	ld   bc, $2000                                   ; $6c56: $01 $00 $20
	nop                                              ; $6c59: $00
	rlca                                             ; $6c5a: $07
	rst  $28                                         ; $6c5b: $ef
	dec  d                                           ; $6c5c: $15
	ld   [bc], a                                     ; $6c5d: $02
	inc  bc                                          ; $6c5e: $03
	ld   bc, $2001                                   ; $6c5f: $01 $01 $20
	nop                                              ; $6c62: $00
	rlca                                             ; $6c63: $07
	ld   h, [hl]                                     ; $6c64: $66
	ld   d, $02                                      ; $6c65: $16 $02
	inc  bc                                          ; $6c67: $03
	ld   bc, $2002                                   ; $6c68: $01 $02 $20
	nop                                              ; $6c6b: $00
	ld   b, $ca                                      ; $6c6c: $06 $ca
	ld   d, $0f                                      ; $6c6e: $16 $0f
	nop                                              ; $6c70: $00
	ld   bc, $0301                                   ; $6c71: $01 $01 $03
	ld   h, l                                        ; $6c74: $65
	inc  bc                                          ; $6c75: $03
	ret  nc                                          ; $6c76: $d0

	ld   [bc], a                                     ; $6c77: $02
	ld   c, b                                        ; $6c78: $48
	ld   [bc], a                                     ; $6c79: $02
	sub  c                                           ; $6c7a: $91
	ld   a, l                                        ; $6c7b: $7d
	sbc  [hl]                                        ; $6c7c: $9e
	ld   h, l                                        ; $6c7d: $65
	sub  c                                           ; $6c7e: $91
	ld   e, d                                        ; $6c7f: $5a
	and  c                                           ; $6c80: $a1
	ld   [hl], l                                     ; $6c81: $75
	dec  c                                           ; $6c82: $0d
	ld   e, c                                        ; $6c83: $59
	sbc  l                                           ; $6c84: $9d
	ld   h, a                                        ; $6c85: $67
	ld   a, [$000d]                                  ; $6c86: $fa $0d $00
	ld   a, [bc]                                     ; $6c89: $0a
	inc  e                                           ; $6c8a: $1c
	ld   b, $01                                      ; $6c8b: $06 $01
	ld   bc, $9601                                   ; $6c8d: $01 $01 $96
	ld   h, l                                        ; $6c90: $65
	ld   a, [$520d]                                  ; $6c91: $fa $0d $52
	ld   d, d                                        ; $6c94: $52
	ld   l, h                                        ; $6c95: $6c
	ld   a, [$0dfa]                                  ; $6c96: $fa $fa $0d
	nop                                              ; $6c99: $00
	ld   a, [bc]                                     ; $6c9a: $0a
	ld   b, $19                                      ; $6c9b: $06 $19
	rla                                              ; $6c9d: $17
	rrca                                             ; $6c9e: $0f
	nop                                              ; $6c9f: $00
	ld   bc, $0301                                   ; $6ca0: $01 $01 $03
	ld   h, l                                        ; $6ca3: $65
	inc  bc                                          ; $6ca4: $03
	ret  nc                                          ; $6ca5: $d0

	ld   [bc], a                                     ; $6ca6: $02
	ld   c, b                                        ; $6ca7: $48
	ld   [bc], a                                     ; $6ca8: $02
	sub  c                                           ; $6ca9: $91
	ld   sp, hl                                      ; $6caa: $f9
	db   $10                                         ; $6cab: $10
	inc  bc                                          ; $6cac: $03
	ld   a, l                                        ; $6cad: $7d
	ld   b, $17                                      ; $6cae: $06 $17
	ld   d, d                                        ; $6cb0: $52
	ld   h, l                                        ; $6cb1: $65
	ld   a, b                                        ; $6cb2: $78
	ld   e, e                                        ; $6cb3: $5b
	sub  c                                           ; $6cb4: $91
	ld   a, [$000d]                                  ; $6cb5: $fa $0d $00
	ld   a, [bc]                                     ; $6cb8: $0a
	rrca                                             ; $6cb9: $0f
	nop                                              ; $6cba: $00
	ld   bc, $0714                                   ; $6cbb: $01 $14 $07
	ld   bc, $b101                                   ; $6cbe: $01 $01 $b1
	reti                                             ; $6cc1: $d9


	call nz, $10fa                                   ; $6cc2: $c4 $fa $10
	and  l                                           ; $6cc5: $a5
	call nz, $fbc0                                   ; $6cc6: $c4 $c0 $fb
	ei                                               ; $6cc9: $fb
	ei                                               ; $6cca: $fb
	dec  c                                           ; $6ccb: $0d
	nop                                              ; $6ccc: $00
	ld   a, [bc]                                     ; $6ccd: $0a
	rlca                                             ; $6cce: $07
	reti                                             ; $6ccf: $d9


	add  hl, bc                                      ; $6cd0: $09
	inc  bc                                          ; $6cd1: $03
	jr   nz, jr_053_6cd5                             ; $6cd2: $20 $01

	ld   a, [bc]                                     ; $6cd4: $0a

jr_053_6cd5:
	inc  hl                                          ; $6cd5: $23
	nop                                              ; $6cd6: $00
	ld   sp, $2040                                   ; $6cd7: $31 $40 $20
	inc  bc                                          ; $6cda: $03
	jr   nz, jr_053_6cde                             ; $6cdb: $20 $01

	ld   a, [bc]                                     ; $6cdd: $0a

jr_053_6cde:
	add  hl, hl                                      ; $6cde: $29
	nop                                              ; $6cdf: $00
	inc  e                                           ; $6ce0: $1c
	ld   b, $05                                      ; $6ce1: $06 $05
	dec  b                                           ; $6ce3: $05
	ld   bc, $5258                                   ; $6ce4: $01 $58 $52
	ld   e, b                                        ; $6ce7: $58
	ld   d, d                                        ; $6ce8: $52
	sbc  a                                           ; $6ce9: $9f
	inc  bc                                          ; $6cea: $03
	ld   h, l                                        ; $6ceb: $65
	inc  bc                                          ; $6cec: $03
	ret  nc                                          ; $6ced: $d0

	and  b                                           ; $6cee: $a0
	ld   a, e                                        ; $6cef: $7b
	sub  a                                           ; $6cf0: $97
	ld   [hl], c                                     ; $6cf1: $71
	ld   l, l                                        ; $6cf2: $6d
	and  c                                           ; $6cf3: $a1
	dec  c                                           ; $6cf4: $0d
	ld   l, [hl]                                     ; $6cf5: $6e
	ld   e, c                                        ; $6cf6: $59
	sub  a                                           ; $6cf7: $97
	ld   [bc], a                                     ; $6cf8: $02
	ld   [hl], d                                     ; $6cf9: $72
	and  b                                           ; $6cfa: $a0
	inc  bc                                          ; $6cfb: $03
	sub  e                                           ; $6cfc: $93
	sbc  d                                           ; $6cfd: $9a
	sub  [hl]                                        ; $6cfe: $96
	sbc  a                                           ; $6cff: $9f
	dec  c                                           ; $6d00: $0d
	sub  b                                           ; $6d01: $90
	ld   d, h                                        ; $6d02: $54
	ld   [bc], a                                     ; $6d03: $02
	jr   nz, jr_053_6d08                             ; $6d04: $20 $02

	sub  e                                           ; $6d06: $93
	dec  b                                           ; $6d07: $05

jr_053_6d08:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d08: $cf
	adc  a                                           ; $6d09: $8f
	ld   [hl], c                                     ; $6d0a: $71
	ld   e, c                                        ; $6d0b: $59
	sub  a                                           ; $6d0c: $97
	ld   l, [hl]                                     ; $6d0d: $6e
	sbc  a                                           ; $6d0e: $9f
	dec  c                                           ; $6d0f: $0d
	nop                                              ; $6d10: $00
	ld   a, [bc]                                     ; $6d11: $0a
	ld   b, $0e                                      ; $6d12: $06 $0e
	ld   [de], a                                     ; $6d14: $12
	rrca                                             ; $6d15: $0f
	nop                                              ; $6d16: $00
	ld   bc, $b901                                   ; $6d17: $01 $01 $b9
	push hl                                          ; $6d1a: $e5
	push af                                          ; $6d1b: $f5
	ret  c                                           ; $6d1c: $d8

	ld   [hl], l                                     ; $6d1d: $75
	ld   e, c                                        ; $6d1e: $59
	sbc  l                                           ; $6d1f: $9d
	ld   h, a                                        ; $6d20: $67
	ld   a, [$0df9]                                  ; $6d21: $fa $f9 $0d
	nop                                              ; $6d24: $00
	ld   a, [bc]                                     ; $6d25: $0a
	rrca                                             ; $6d26: $0f
	nop                                              ; $6d27: $00
	ld   bc, $0714                                   ; $6d28: $01 $14 $07
	ld   bc, $a501                                   ; $6d2b: $01 $01 $a5
	rst  ToBoot                                         ; $6d2e: $c7
	call nz, $0dfa                                   ; $6d2f: $c4 $fa $0d
	nop                                              ; $6d32: $00
	ld   a, [bc]                                     ; $6d33: $0a
	rlca                                             ; $6d34: $07
	reti                                             ; $6d35: $d9


	add  hl, bc                                      ; $6d36: $09
	inc  bc                                          ; $6d37: $03
	jr   nz, jr_053_6d3b                             ; $6d38: $20 $01

	ld   a, [bc]                                     ; $6d3a: $0a

jr_053_6d3b:
	inc  hl                                          ; $6d3b: $23
	nop                                              ; $6d3c: $00
	ld   sp, $2040                                   ; $6d3d: $31 $40 $20
	inc  bc                                          ; $6d40: $03
	jr   nz, jr_053_6d44                             ; $6d41: $20 $01

	ld   a, [bc]                                     ; $6d43: $0a

jr_053_6d44:
	add  hl, hl                                      ; $6d44: $29
	nop                                              ; $6d45: $00
	inc  e                                           ; $6d46: $1c
	ld   b, $05                                      ; $6d47: $06 $05
	dec  b                                           ; $6d49: $05
	ld   bc, $6503                                   ; $6d4a: $01 $03 $65
	inc  bc                                          ; $6d4d: $03
	ret  nc                                          ; $6d4e: $d0

	and  b                                           ; $6d4f: $a0
	ld   a, e                                        ; $6d50: $7b
	sub  a                                           ; $6d51: $97
	ld   [hl], c                                     ; $6d52: $71
	ld   l, l                                        ; $6d53: $6d
	and  c                                           ; $6d54: $a1
	ld   l, [hl]                                     ; $6d55: $6e
	ld   l, d                                        ; $6d56: $6a
	sbc  a                                           ; $6d57: $9f
	dec  c                                           ; $6d58: $0d
	cp   c                                           ; $6d59: $b9
	push hl                                          ; $6d5a: $e5
	push af                                          ; $6d5b: $f5
	ret  c                                           ; $6d5c: $d8

	ld   h, l                                        ; $6d5d: $65
	ld   [hl], h                                     ; $6d5e: $74
	sub  b                                           ; $6d5f: $90
	pop  bc                                          ; $6d60: $c1
	db   $e3                                         ; $6d61: $e3
	ld   l, [hl]                                     ; $6d62: $6e
	sbc  a                                           ; $6d63: $9f
	dec  c                                           ; $6d64: $0d
	sub  b                                           ; $6d65: $90
	ld   d, h                                        ; $6d66: $54
	ld   [bc], a                                     ; $6d67: $02
	jr   nz, jr_053_6d6c                             ; $6d68: $20 $02

	sub  e                                           ; $6d6a: $93
	dec  b                                           ; $6d6b: $05

jr_053_6d6c:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d6c: $cf
	adc  a                                           ; $6d6d: $8f
	ld   [hl], c                                     ; $6d6e: $71
	ld   e, c                                        ; $6d6f: $59
	sub  a                                           ; $6d70: $97

Call_053_6d71:
	ld   l, [hl]                                     ; $6d71: $6e
	sbc  a                                           ; $6d72: $9f
	dec  c                                           ; $6d73: $0d
	nop                                              ; $6d74: $00
	ld   a, [bc]                                     ; $6d75: $0a
	ld   b, $0e                                      ; $6d76: $06 $0e
	ld   [de], a                                     ; $6d78: $12
	rrca                                             ; $6d79: $0f
	nop                                              ; $6d7a: $00
	ld   bc, $0714                                   ; $6d7b: $01 $14 $07
	ld   bc, $b101                                   ; $6d7e: $01 $01 $b1
	pop  af                                          ; $6d81: $f1
	db   $fc                                         ; $6d82: $fc
	db   $fc                                         ; $6d83: $fc
	db   $fc                                         ; $6d84: $fc
	push af                                          ; $6d85: $f5
	rst  $38                                         ; $6d86: $ff
	rst  $38                                         ; $6d87: $ff
	dec  c                                           ; $6d88: $0d
	nop                                              ; $6d89: $00
	ld   a, [bc]                                     ; $6d8a: $0a
	rlca                                             ; $6d8b: $07
	reti                                             ; $6d8c: $d9


	add  hl, bc                                      ; $6d8d: $09
	inc  bc                                          ; $6d8e: $03
	jr   nz, jr_053_6d92                             ; $6d8f: $20 $01

	ld   a, [bc]                                     ; $6d91: $0a

jr_053_6d92:
	inc  hl                                          ; $6d92: $23
	nop                                              ; $6d93: $00
	ld   sp, $2040                                   ; $6d94: $31 $40 $20
	inc  bc                                          ; $6d97: $03
	jr   nz, jr_053_6d9b                             ; $6d98: $20 $01

	ld   a, [bc]                                     ; $6d9a: $0a

jr_053_6d9b:
	add  hl, hl                                      ; $6d9b: $29
	nop                                              ; $6d9c: $00
	inc  e                                           ; $6d9d: $1c
	ld   b, $02                                      ; $6d9e: $06 $02
	ld   [bc], a                                     ; $6da0: $02
	ld   bc, $acd1                                   ; $6da1: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $6da4: $fa $10 $0d
	db   $dd                                         ; $6da7: $dd
	or   d                                           ; $6da8: $b2
	ld   [hl], c                                     ; $6da9: $71
	halt                                             ; $6daa: $76
	ld   h, a                                        ; $6dab: $67
	and  c                                           ; $6dac: $a1
	ld   h, [hl]                                     ; $6dad: $66
	sub  c                                           ; $6dae: $91
	ld   a, e                                        ; $6daf: $7b
	ld   d, l                                        ; $6db0: $55
	sub  [hl]                                        ; $6db1: $96
	sbc  a                                           ; $6db2: $9f
	dec  c                                           ; $6db3: $0d
	sub  b                                           ; $6db4: $90
	ld   d, h                                        ; $6db5: $54
	ld   [bc], a                                     ; $6db6: $02
	jr   nz, jr_053_6dbb                             ; $6db7: $20 $02

	sub  e                                           ; $6db9: $93
	dec  b                                           ; $6dba: $05

jr_053_6dbb:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dbb: $cf
	adc  a                                           ; $6dbc: $8f
	ld   [hl], c                                     ; $6dbd: $71
	ld   e, c                                        ; $6dbe: $59
	sub  a                                           ; $6dbf: $97
	ld   l, [hl]                                     ; $6dc0: $6e
	sbc  a                                           ; $6dc1: $9f
	dec  c                                           ; $6dc2: $0d
	nop                                              ; $6dc3: $00
	ld   a, [bc]                                     ; $6dc4: $0a
	ld   b, $0e                                      ; $6dc5: $06 $0e
	ld   [de], a                                     ; $6dc7: $12
	inc  e                                           ; $6dc8: $1c
	ld   b, $02                                      ; $6dc9: $06 $02
	ld   [bc], a                                     ; $6dcb: $02
	ld   bc, $6161                                   ; $6dcc: $01 $61 $61
	ld   [hl], l                                     ; $6dcf: $75
	sbc  [hl]                                        ; $6dd0: $9e
	inc  bc                                          ; $6dd1: $03
	ld   h, l                                        ; $6dd2: $65
	inc  bc                                          ; $6dd3: $03
	ret  nc                                          ; $6dd4: $d0

	sub  $a8                                         ; $6dd5: $d6 $a8
	and  l                                           ; $6dd7: $a5
	push af                                          ; $6dd8: $f5
	ret                                              ; $6dd9: $c9


	ld   a, h                                        ; $6dda: $7c
	dec  c                                           ; $6ddb: $0d
	ld   [bc], a                                     ; $6ddc: $02
	inc  [hl]                                        ; $6ddd: $34
	inc  bc                                          ; $6dde: $03
	ret  nc                                          ; $6ddf: $d0

	ld   h, b                                        ; $6de0: $60
	sbc  b                                           ; $6de1: $98
	ld   l, [hl]                                     ; $6de2: $6e
	ld   a, [$000d]                                  ; $6de3: $fa $0d $00
	ld   a, [bc]                                     ; $6de6: $0a
	inc  d                                           ; $6de7: $14
	dec  d                                           ; $6de8: $15
	ld   bc, $0319                                   ; $6de9: $01 $19 $03
	inc  bc                                          ; $6dec: $03
	cp   c                                           ; $6ded: $b9
	push hl                                          ; $6dee: $e5
	push af                                          ; $6def: $f5
	ret  c                                           ; $6df0: $d8

	ld   h, a                                        ; $6df1: $67
	sbc  c                                           ; $6df2: $99
	nop                                              ; $6df3: $00
	nop                                              ; $6df4: $00
	ld   [bc], a                                     ; $6df5: $02
	ld   [hl], d                                     ; $6df6: $72
	and  b                                           ; $6df7: $a0
	inc  bc                                          ; $6df8: $03
	sub  e                                           ; $6df9: $93
	sbc  c                                           ; $6dfa: $99
	nop                                              ; $6dfb: $00
	ld   bc, $6602                                   ; $6dfc: $01 $02 $66
	and  b                                           ; $6dff: $a0
	inc  bc                                          ; $6e00: $03
	sub  e                                           ; $6e01: $93
	sbc  c                                           ; $6e02: $99
	nop                                              ; $6e03: $00
	ld   [bc], a                                     ; $6e04: $02
	rlca                                             ; $6e05: $07
	ld   [hl], h                                     ; $6e06: $74
	rla                                              ; $6e07: $17
	ld   [bc], a                                     ; $6e08: $02
	inc  bc                                          ; $6e09: $03
	ld   bc, $2000                                   ; $6e0a: $01 $00 $20
	nop                                              ; $6e0d: $00
	rlca                                             ; $6e0e: $07
	sbc  l                                           ; $6e0f: $9d
	rla                                              ; $6e10: $17
	ld   [bc], a                                     ; $6e11: $02
	inc  bc                                          ; $6e12: $03
	ld   bc, $2001                                   ; $6e13: $01 $01 $20
	nop                                              ; $6e16: $00
	rlca                                             ; $6e17: $07
	add  hl, bc                                      ; $6e18: $09
	jr   @+$04                                       ; $6e19: $18 $02

	inc  bc                                          ; $6e1b: $03
	ld   bc, $2002                                   ; $6e1c: $01 $02 $20
	nop                                              ; $6e1f: $00
	ld   b, $76                                      ; $6e20: $06 $76
	jr   jr_053_6e33                                 ; $6e22: $18 $0f

	nop                                              ; $6e24: $00
	ld   bc, $0201                                   ; $6e25: $01 $01 $02
	inc  [hl]                                        ; $6e28: $34
	inc  bc                                          ; $6e29: $03
	ret  nc                                          ; $6e2a: $d0

	ld   h, b                                        ; $6e2b: $60
	sbc  b                                           ; $6e2c: $98
	ld   a, l                                        ; $6e2d: $7d
	sbc  [hl]                                        ; $6e2e: $9e
	cp   c                                           ; $6e2f: $b9
	push hl                                          ; $6e30: $e5
	push af                                          ; $6e31: $f5
	ret  c                                           ; $6e32: $d8

jr_053_6e33:
	ld   [hl], l                                     ; $6e33: $75
	dec  c                                           ; $6e34: $0d
	ld   e, c                                        ; $6e35: $59
	sbc  l                                           ; $6e36: $9d
	ld   h, a                                        ; $6e37: $67
	ld   a, [$000d]                                  ; $6e38: $fa $0d $00
	ld   a, [bc]                                     ; $6e3b: $0a
	inc  e                                           ; $6e3c: $1c
	ld   b, $01                                      ; $6e3d: $06 $01
	ld   bc, $5201                                   ; $6e3f: $01 $01 $52
	ld   d, d                                        ; $6e42: $52
	ld   l, h                                        ; $6e43: $6c
	db   $fc                                         ; $6e44: $fc
	ld   a, [$000d]                                  ; $6e45: $fa $0d $00
	ld   a, [bc]                                     ; $6e48: $0a
	ld   b, $c8                                      ; $6e49: $06 $c8
	jr   @+$11                                       ; $6e4b: $18 $0f

	nop                                              ; $6e4d: $00
	ld   bc, $5901                                   ; $6e4e: $01 $01 $59
	sbc  [hl]                                        ; $6e51: $9e
	ld   [bc], a                                     ; $6e52: $02
	ld   [hl], d                                     ; $6e53: $72
	and  b                                           ; $6e54: $a0
	inc  bc                                          ; $6e55: $03
	sub  e                                           ; $6e56: $93
	sub  a                                           ; $6e57: $97
	ld   a, b                                        ; $6e58: $78
	ld   e, e                                        ; $6e59: $5b
	sub  c                                           ; $6e5a: $91
	ld   a, [$000d]                                  ; $6e5b: $fa $0d $00
	ld   a, [bc]                                     ; $6e5e: $0a
	rrca                                             ; $6e5f: $0f
	nop                                              ; $6e60: $00
	ld   bc, $0714                                   ; $6e61: $01 $14 $07
	ld   bc, $a501                                   ; $6e64: $01 $01 $a5
	call nz, $fbc7                                   ; $6e67: $c4 $c7 $fb
	ei                                               ; $6e6a: $fb
	ei                                               ; $6e6b: $fb
	dec  c                                           ; $6e6c: $0d
	nop                                              ; $6e6d: $00
	ld   a, [bc]                                     ; $6e6e: $0a
	rlca                                             ; $6e6f: $07
	reti                                             ; $6e70: $d9


	add  hl, bc                                      ; $6e71: $09
	inc  bc                                          ; $6e72: $03
	jr   nz, jr_053_6e76                             ; $6e73: $20 $01

	ld   a, [bc]                                     ; $6e75: $0a

jr_053_6e76:
	inc  hl                                          ; $6e76: $23
	nop                                              ; $6e77: $00
	ld   sp, $2040                                   ; $6e78: $31 $40 $20
	inc  bc                                          ; $6e7b: $03
	jr   nz, jr_053_6e7f                             ; $6e7c: $20 $01

	ld   a, [bc]                                     ; $6e7e: $0a

jr_053_6e7f:
	add  hl, hl                                      ; $6e7f: $29
	nop                                              ; $6e80: $00
	inc  e                                           ; $6e81: $1c
	ld   b, $05                                      ; $6e82: $06 $05
	dec  b                                           ; $6e84: $05
	ld   bc, $5258                                   ; $6e85: $01 $58 $52
	ld   e, b                                        ; $6e88: $58
	ld   d, d                                        ; $6e89: $52
	sbc  a                                           ; $6e8a: $9f
	ld   a, e                                        ; $6e8b: $7b
	sub  a                                           ; $6e8c: $97
	ld   [hl], c                                     ; $6e8d: $71
	ld   l, l                                        ; $6e8e: $6d
	ld   a, h                                        ; $6e8f: $7c
	ld   a, l                                        ; $6e90: $7d
	ld   [bc], a                                     ; $6e91: $02
	inc  [hl]                                        ; $6e92: $34
	inc  bc                                          ; $6e93: $03
	ret  nc                                          ; $6e94: $d0

	dec  c                                           ; $6e95: $0d
	ld   l, [hl]                                     ; $6e96: $6e
	sub  [hl]                                        ; $6e97: $96
	sbc  a                                           ; $6e98: $9f
	ld   h, l                                        ; $6e99: $65
	ld   [hl], c                                     ; $6e9a: $71
	ld   e, c                                        ; $6e9b: $59
	sbc  b                                           ; $6e9c: $98
	ld   h, l                                        ; $6e9d: $65
	ld   [hl], h                                     ; $6e9e: $74
	ld   e, l                                        ; $6e9f: $5d
	sbc  d                                           ; $6ea0: $9a
	sub  [hl]                                        ; $6ea1: $96
	sbc  a                                           ; $6ea2: $9f
	dec  c                                           ; $6ea3: $0d
	sub  b                                           ; $6ea4: $90
	ld   d, h                                        ; $6ea5: $54
	ld   [bc], a                                     ; $6ea6: $02
	jr   nz, jr_053_6eab                             ; $6ea7: $20 $02

	sub  e                                           ; $6ea9: $93
	dec  b                                           ; $6eaa: $05

jr_053_6eab:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6eab: $cf
	adc  a                                           ; $6eac: $8f
	ld   [hl], c                                     ; $6ead: $71
	ld   e, c                                        ; $6eae: $59
	sub  a                                           ; $6eaf: $97

Call_053_6eb0:
	ld   l, [hl]                                     ; $6eb0: $6e
	sbc  a                                           ; $6eb1: $9f
	dec  c                                           ; $6eb2: $0d
	nop                                              ; $6eb3: $00
	ld   a, [bc]                                     ; $6eb4: $0a
	ld   b, $0e                                      ; $6eb5: $06 $0e
	ld   [de], a                                     ; $6eb7: $12
	rrca                                             ; $6eb8: $0f
	nop                                              ; $6eb9: $00
	ld   bc, $0201                                   ; $6eba: $01 $01 $02
	inc  [hl]                                        ; $6ebd: $34
	inc  bc                                          ; $6ebe: $03
	ret  nc                                          ; $6ebf: $d0

	ld   h, b                                        ; $6ec0: $60
	sbc  b                                           ; $6ec1: $98
	ld   sp, hl                                      ; $6ec2: $f9
	db   $10                                         ; $6ec3: $10
	ld   [bc], a                                     ; $6ec4: $02
	ld   h, [hl]                                     ; $6ec5: $66
	and  b                                           ; $6ec6: $a0
	inc  bc                                          ; $6ec7: $03
	sub  e                                           ; $6ec8: $93
	sbc  c                                           ; $6ec9: $99
	ld   sp, hl                                      ; $6eca: $f9
	dec  c                                           ; $6ecb: $0d
	nop                                              ; $6ecc: $00
	ld   a, [bc]                                     ; $6ecd: $0a
	rrca                                             ; $6ece: $0f
	nop                                              ; $6ecf: $00
	ld   bc, $0714                                   ; $6ed0: $01 $14 $07
	ld   bc, $a501                                   ; $6ed3: $01 $01 $a5
	rst  ToBoot                                         ; $6ed6: $c7
	rst  ToBoot                                         ; $6ed7: $c7
	rst  ToBoot                                         ; $6ed8: $c7
	rst  ToBoot                                         ; $6ed9: $c7
	rst  $38                                         ; $6eda: $ff
	rst  $38                                         ; $6edb: $ff
	dec  c                                           ; $6edc: $0d
	nop                                              ; $6edd: $00
	ld   a, [bc]                                     ; $6ede: $0a
	rlca                                             ; $6edf: $07
	reti                                             ; $6ee0: $d9


	add  hl, bc                                      ; $6ee1: $09
	inc  bc                                          ; $6ee2: $03
	jr   nz, jr_053_6ee6                             ; $6ee3: $20 $01

	ld   a, [bc]                                     ; $6ee5: $0a

jr_053_6ee6:
	inc  hl                                          ; $6ee6: $23
	nop                                              ; $6ee7: $00
	ld   sp, $2040                                   ; $6ee8: $31 $40 $20
	inc  bc                                          ; $6eeb: $03
	jr   nz, jr_053_6eef                             ; $6eec: $20 $01

	ld   a, [bc]                                     ; $6eee: $0a

jr_053_6eef:
	add  hl, hl                                      ; $6eef: $29
	nop                                              ; $6ef0: $00
	inc  e                                           ; $6ef1: $1c
	ld   b, $05                                      ; $6ef2: $06 $05
	dec  b                                           ; $6ef4: $05
	ld   bc, $3402                                   ; $6ef5: $01 $02 $34
	inc  bc                                          ; $6ef8: $03
	ret  nc                                          ; $6ef9: $d0

	and  b                                           ; $6efa: $a0
	ld   a, e                                        ; $6efb: $7b
	sub  a                                           ; $6efc: $97
	ld   [hl], c                                     ; $6efd: $71
	ld   l, l                                        ; $6efe: $6d
	and  c                                           ; $6eff: $a1
	ld   l, [hl]                                     ; $6f00: $6e
	ld   l, d                                        ; $6f01: $6a
	sbc  a                                           ; $6f02: $9f
	dec  c                                           ; $6f03: $0d
	ld   [bc], a                                     ; $6f04: $02
	ld   h, [hl]                                     ; $6f05: $66
	and  b                                           ; $6f06: $a0
	inc  bc                                          ; $6f07: $03
	sub  e                                           ; $6f08: $93
	ld   [hl], c                                     ; $6f09: $71
	ld   [hl], h                                     ; $6f0a: $74
	sub  b                                           ; $6f0b: $90
	pop  bc                                          ; $6f0c: $c1
	db   $e3                                         ; $6f0d: $e3
	ld   l, [hl]                                     ; $6f0e: $6e
	sbc  a                                           ; $6f0f: $9f
	dec  c                                           ; $6f10: $0d
	sub  b                                           ; $6f11: $90
	ld   d, h                                        ; $6f12: $54
	ld   [bc], a                                     ; $6f13: $02
	jr   nz, jr_053_6f18                             ; $6f14: $20 $02

	sub  e                                           ; $6f16: $93
	dec  b                                           ; $6f17: $05

jr_053_6f18:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f18: $cf
	adc  a                                           ; $6f19: $8f
	ld   [hl], c                                     ; $6f1a: $71
	ld   e, c                                        ; $6f1b: $59
	sub  a                                           ; $6f1c: $97
	ld   l, [hl]                                     ; $6f1d: $6e
	sbc  a                                           ; $6f1e: $9f
	dec  c                                           ; $6f1f: $0d
	nop                                              ; $6f20: $00
	ld   a, [bc]                                     ; $6f21: $0a
	ld   b, $0e                                      ; $6f22: $06 $0e
	ld   [de], a                                     ; $6f24: $12
	rrca                                             ; $6f25: $0f
	nop                                              ; $6f26: $00
	ld   bc, $0714                                   ; $6f27: $01 $14 $07
	ld   bc, $a301                                   ; $6f2a: $01 $01 $a3
	and  l                                           ; $6f2d: $a5
	ret  nz                                          ; $6f2e: $c0

	ret  nz                                          ; $6f2f: $c0

	ret  nz                                          ; $6f30: $c0

	ret  nz                                          ; $6f31: $c0

	ret  nz                                          ; $6f32: $c0

	ret  nz                                          ; $6f33: $c0

	ret  nz                                          ; $6f34: $c0

	rst  $38                                         ; $6f35: $ff
	rst  $38                                         ; $6f36: $ff
	dec  c                                           ; $6f37: $0d
	nop                                              ; $6f38: $00
	ld   a, [bc]                                     ; $6f39: $0a
	rlca                                             ; $6f3a: $07
	reti                                             ; $6f3b: $d9


	add  hl, bc                                      ; $6f3c: $09
	inc  bc                                          ; $6f3d: $03
	jr   nz, jr_053_6f41                             ; $6f3e: $20 $01

	ld   a, [bc]                                     ; $6f40: $0a

jr_053_6f41:
	inc  hl                                          ; $6f41: $23
	nop                                              ; $6f42: $00
	ld   sp, $2040                                   ; $6f43: $31 $40 $20
	inc  bc                                          ; $6f46: $03
	jr   nz, jr_053_6f4a                             ; $6f47: $20 $01

	ld   a, [bc]                                     ; $6f49: $0a

jr_053_6f4a:
	add  hl, hl                                      ; $6f4a: $29
	nop                                              ; $6f4b: $00
	inc  e                                           ; $6f4c: $1c
	ld   b, $02                                      ; $6f4d: $06 $02
	ld   [bc], a                                     ; $6f4f: $02
	ld   bc, $acd1                                   ; $6f50: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $6f53: $fa $10 $0d
	db   $dd                                         ; $6f56: $dd
	or   d                                           ; $6f57: $b2
	ld   [hl], c                                     ; $6f58: $71
	halt                                             ; $6f59: $76
	ld   h, a                                        ; $6f5a: $67
	and  c                                           ; $6f5b: $a1
	ld   h, [hl]                                     ; $6f5c: $66
	sub  c                                           ; $6f5d: $91
	ld   a, e                                        ; $6f5e: $7b
	ld   d, l                                        ; $6f5f: $55
	sub  [hl]                                        ; $6f60: $96
	sbc  a                                           ; $6f61: $9f
	dec  c                                           ; $6f62: $0d
	sub  b                                           ; $6f63: $90
	ld   d, h                                        ; $6f64: $54
	ld   [bc], a                                     ; $6f65: $02
	jr   nz, jr_053_6f6a                             ; $6f66: $20 $02

	sub  e                                           ; $6f68: $93
	dec  b                                           ; $6f69: $05

jr_053_6f6a:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f6a: $cf
	adc  a                                           ; $6f6b: $8f
	ld   [hl], c                                     ; $6f6c: $71
	ld   e, c                                        ; $6f6d: $59
	sub  a                                           ; $6f6e: $97
	ld   l, [hl]                                     ; $6f6f: $6e
	sbc  a                                           ; $6f70: $9f
	dec  c                                           ; $6f71: $0d
	nop                                              ; $6f72: $00
	ld   a, [bc]                                     ; $6f73: $0a
	ld   b, $0e                                      ; $6f74: $06 $0e
	ld   [de], a                                     ; $6f76: $12
	inc  e                                           ; $6f77: $1c
	ld   b, $02                                      ; $6f78: $06 $02
	ld   [bc], a                                     ; $6f7a: $02
	ld   bc, $6903                                   ; $6f7b: $01 $03 $69
	ld   [bc], a                                     ; $6f7e: $02
	xor  d                                           ; $6f7f: $aa
	ld   a, c                                        ; $6f80: $79
	ld   e, b                                        ; $6f81: $58
	sub  b                                           ; $6f82: $90
	ld   d, d                                        ; $6f83: $52
	ld   [hl], c                                     ; $6f84: $71
	ld   e, e                                        ; $6f85: $5b
	sbc  b                                           ; $6f86: $98
	dec  c                                           ; $6f87: $0d
	inc  bc                                          ; $6f88: $03
	ld   h, l                                        ; $6f89: $65
	inc  bc                                          ; $6f8a: $03
	ret  nc                                          ; $6f8b: $d0

	adc  h                                           ; $6f8c: $8c
	sbc  l                                           ; $6f8d: $9d
	ld   h, l                                        ; $6f8e: $65
	ld   h, b                                        ; $6f8f: $60
	sbc  b                                           ; $6f90: $98
	ld   l, [hl]                                     ; $6f91: $6e
	ld   a, [$000d]                                  ; $6f92: $fa $0d $00
	ld   a, [bc]                                     ; $6f95: $0a
	inc  d                                           ; $6f96: $14
	dec  d                                           ; $6f97: $15
	ld   bc, $0319                                   ; $6f98: $01 $19 $03
	inc  bc                                          ; $6f9b: $03
	ld   h, l                                        ; $6f9c: $65
	sub  c                                           ; $6f9d: $91
	ld   e, d                                        ; $6f9e: $5a
	adc  [hl]                                        ; $6f9f: $8e
	nop                                              ; $6fa0: $00
	nop                                              ; $6fa1: $00
	cp   c                                           ; $6fa2: $b9
	push hl                                          ; $6fa3: $e5
	push af                                          ; $6fa4: $f5
	ret  c                                           ; $6fa5: $d8

	ld   h, a                                        ; $6fa6: $67
	sbc  c                                           ; $6fa7: $99
	nop                                              ; $6fa8: $00
	ld   bc, $c8a7                                   ; $6fa9: $01 $a7 $c8
	ld   [hl], l                                     ; $6fac: $75
	rst  $10                                         ; $6fad: $d7
	rst  $28                                         ; $6fae: $ef
	call nz, $00b0                                   ; $6faf: $c4 $b0 $00
	ld   [bc], a                                     ; $6fb2: $02
	rlca                                             ; $6fb3: $07
	ld   [hl+], a                                    ; $6fb4: $22
	add  hl, de                                      ; $6fb5: $19
	ld   [bc], a                                     ; $6fb6: $02
	inc  bc                                          ; $6fb7: $03
	ld   bc, $2000                                   ; $6fb8: $01 $00 $20
	nop                                              ; $6fbb: $00
	rlca                                             ; $6fbc: $07
	ld   d, h                                        ; $6fbd: $54
	add  hl, de                                      ; $6fbe: $19
	ld   [bc], a                                     ; $6fbf: $02
	inc  bc                                          ; $6fc0: $03
	ld   bc, $2001                                   ; $6fc1: $01 $01 $20
	nop                                              ; $6fc4: $00
	rlca                                             ; $6fc5: $07
	pop  hl                                          ; $6fc6: $e1
	add  hl, de                                      ; $6fc7: $19
	ld   [bc], a                                     ; $6fc8: $02
	inc  bc                                          ; $6fc9: $03
	ld   bc, $2002                                   ; $6fca: $01 $02 $20
	nop                                              ; $6fcd: $00
	ld   b, $7d                                      ; $6fce: $06 $7d
	ld   a, [de]                                     ; $6fd0: $1a
	rrca                                             ; $6fd1: $0f
	nop                                              ; $6fd2: $00
	ld   bc, $0301                                   ; $6fd3: $01 $01 $03
	ld   h, l                                        ; $6fd6: $65
	inc  bc                                          ; $6fd7: $03
	ret  nc                                          ; $6fd8: $d0

	adc  h                                           ; $6fd9: $8c
	sbc  l                                           ; $6fda: $9d
	ld   h, l                                        ; $6fdb: $65
	ld   h, b                                        ; $6fdc: $60
	sbc  b                                           ; $6fdd: $98
	ld   a, b                                        ; $6fde: $78
	sub  a                                           ; $6fdf: $97
	dec  c                                           ; $6fe0: $0d
	ld   h, l                                        ; $6fe1: $65
	sub  c                                           ; $6fe2: $91
	ld   e, d                                        ; $6fe3: $5a
	and  c                                           ; $6fe4: $a1
	ld   [hl], l                                     ; $6fe5: $75
	ld   e, c                                        ; $6fe6: $59
	sbc  l                                           ; $6fe7: $9d
	ld   h, a                                        ; $6fe8: $67
	ld   a, [$000d]                                  ; $6fe9: $fa $0d $00
	ld   a, [bc]                                     ; $6fec: $0a
	inc  e                                           ; $6fed: $1c
	ld   b, $01                                      ; $6fee: $06 $01
	ld   bc, $9601                                   ; $6ff0: $01 $01 $96
	ld   h, l                                        ; $6ff3: $65
	ld   a, [$020d]                                  ; $6ff4: $fa $0d $02
	add  e                                           ; $6ff7: $83
	adc  h                                           ; $6ff8: $8c
	ld   [hl], c                                     ; $6ff9: $71
	ld   l, l                                        ; $6ffa: $6d
	ld   a, [$0dfa]                                  ; $6ffb: $fa $fa $0d
	nop                                              ; $6ffe: $00
	ld   a, [bc]                                     ; $6fff: $0a
	ld   b, $d3                                      ; $7000: $06 $d3
	ld   a, [de]                                     ; $7002: $1a
	rrca                                             ; $7003: $0f
	nop                                              ; $7004: $00
	ld   bc, $b901                                   ; $7005: $01 $01 $b9
	push hl                                          ; $7008: $e5
	push af                                          ; $7009: $f5
	ret  c                                           ; $700a: $d8

	ld   sp, hl                                      ; $700b: $f9
	dec  c                                           ; $700c: $0d
	nop                                              ; $700d: $00
	ld   a, [bc]                                     ; $700e: $0a
	rrca                                             ; $700f: $0f
	nop                                              ; $7010: $00
	ld   bc, $0714                                   ; $7011: $01 $14 $07
	ld   bc, $b101                                   ; $7014: $01 $01 $b1
	call c, $ffc4                                    ; $7017: $dc $c4 $ff
	rst  $38                                         ; $701a: $ff
	dec  c                                           ; $701b: $0d
	nop                                              ; $701c: $00
	ld   a, [bc]                                     ; $701d: $0a
	rlca                                             ; $701e: $07
	reti                                             ; $701f: $d9


	add  hl, bc                                      ; $7020: $09
	inc  bc                                          ; $7021: $03
	jr   nz, jr_053_7025                             ; $7022: $20 $01

	ld   a, [bc]                                     ; $7024: $0a

jr_053_7025:
	inc  hl                                          ; $7025: $23
	nop                                              ; $7026: $00
	ld   sp, $2040                                   ; $7027: $31 $40 $20
	inc  bc                                          ; $702a: $03
	jr   nz, jr_053_702e                             ; $702b: $20 $01

	ld   a, [bc]                                     ; $702d: $0a

jr_053_702e:
	add  hl, hl                                      ; $702e: $29
	nop                                              ; $702f: $00
	inc  e                                           ; $7030: $1c
	ld   b, $03                                      ; $7031: $06 $03
	inc  bc                                          ; $7033: $03
	ld   bc, $5258                                   ; $7034: $01 $58 $52
	ld   a, [$0410]                                  ; $7037: $fa $10 $04
	ld   c, $03                                      ; $703a: $0e $03
	sbc  l                                           ; $703c: $9d
	inc  b                                           ; $703d: $04
	and  [hl]                                        ; $703e: $a6
	ld   e, c                                        ; $703f: $59
	ld   sp, hl                                      ; $7040: $f9
	dec  c                                           ; $7041: $0d
	ld   e, b                                        ; $7042: $58
	sub  b                                           ; $7043: $90
	ld   d, d                                        ; $7044: $52
	ld   [hl], c                                     ; $7045: $71
	ld   e, e                                        ; $7046: $5b
	sbc  b                                           ; $7047: $98
	ld   d, d                                        ; $7048: $52
	ld   [hl], c                                     ; $7049: $71
	ld   l, l                                        ; $704a: $6d
	ld   e, c                                        ; $704b: $59
	sub  a                                           ; $704c: $97
	ld   a, b                                        ; $704d: $78
	rst  $38                                         ; $704e: $ff
	rst  $38                                         ; $704f: $ff
	dec  c                                           ; $7050: $0d
	nop                                              ; $7051: $00
	ld   a, [bc]                                     ; $7052: $0a
	inc  e                                           ; $7053: $1c
	ld   b, $02                                      ; $7054: $06 $02
	ld   [bc], a                                     ; $7056: $02
	ld   bc, $5252                                   ; $7057: $01 $52 $52
	ld   e, c                                        ; $705a: $59
	sbc  [hl]                                        ; $705b: $9e
	inc  bc                                          ; $705c: $03
	ld   l, c                                        ; $705d: $69
	ld   [bc], a                                     ; $705e: $02
	xor  d                                           ; $705f: $aa
	ld   a, h                                        ; $7060: $7c
	inc  bc                                          ; $7061: $03
	ld   h, l                                        ; $7062: $65
	inc  bc                                          ; $7063: $03
	ret  nc                                          ; $7064: $d0

	adc  h                                           ; $7065: $8c
	sbc  l                                           ; $7066: $9d
	ld   h, l                                        ; $7067: $65
	ld   h, b                                        ; $7068: $60
	sbc  b                                           ; $7069: $98
	dec  c                                           ; $706a: $0d
	ld   a, l                                        ; $706b: $7d
	sbc  [hl]                                        ; $706c: $9e
	ld   h, l                                        ; $706d: $65
	sub  c                                           ; $706e: $91
	ld   e, d                                        ; $706f: $5a
	and  c                                           ; $7070: $a1
	ld   [hl], l                                     ; $7071: $75
	sub  [hl]                                        ; $7072: $96
	ld   e, a                                        ; $7073: $5f
	sbc  c                                           ; $7074: $99
	and  c                                           ; $7075: $a1
	ld   l, [hl]                                     ; $7076: $6e
	sbc  a                                           ; $7077: $9f
	dec  c                                           ; $7078: $0d
	ld   h, [hl]                                     ; $7079: $66
	sub  c                                           ; $707a: $91
	sbc  [hl]                                        ; $707b: $9e
	sub  b                                           ; $707c: $90
	ld   d, h                                        ; $707d: $54
	ld   [bc], a                                     ; $707e: $02
	jr   nz, jr_053_7083                             ; $707f: $20 $02

	sub  e                                           ; $7081: $93
	dec  b                                           ; $7082: $05

jr_053_7083:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7083: $cf
	adc  a                                           ; $7084: $8f
	ld   [hl], c                                     ; $7085: $71
	ld   e, c                                        ; $7086: $59
	sub  a                                           ; $7087: $97
	ld   l, [hl]                                     ; $7088: $6e
	sbc  a                                           ; $7089: $9f
	dec  c                                           ; $708a: $0d
	nop                                              ; $708b: $00
	ld   a, [bc]                                     ; $708c: $0a
	ld   b, $0e                                      ; $708d: $06 $0e
	ld   [de], a                                     ; $708f: $12
	rrca                                             ; $7090: $0f
	nop                                              ; $7091: $00
	ld   bc, $a701                                   ; $7092: $01 $01 $a7
	ret  z                                           ; $7095: $c8

	ld   [hl], l                                     ; $7096: $75
	rst  $10                                         ; $7097: $d7
	rst  $28                                         ; $7098: $ef
	call nz, Call_053_6eb0                           ; $7099: $c4 $b0 $6e
	ld   a, [$000d]                                  ; $709c: $fa $0d $00
	ld   a, [bc]                                     ; $709f: $0a
	rrca                                             ; $70a0: $0f
	nop                                              ; $70a1: $00
	ld   bc, $0714                                   ; $70a2: $01 $14 $07
	ld   bc, $a301                                   ; $70a5: $01 $01 $a3
	and  l                                           ; $70a8: $a5
	ret  nz                                          ; $70a9: $c0

	ei                                               ; $70aa: $fb
	ei                                               ; $70ab: $fb
	ei                                               ; $70ac: $fb
	ei                                               ; $70ad: $fb
	rst  $38                                         ; $70ae: $ff
	rst  $38                                         ; $70af: $ff
	dec  c                                           ; $70b0: $0d
	and  l                                           ; $70b1: $a5
	call nz, $fbc7                                   ; $70b2: $c4 $c7 $fb
	rst  $38                                         ; $70b5: $ff
	rst  $38                                         ; $70b6: $ff
	dec  c                                           ; $70b7: $0d
	nop                                              ; $70b8: $00
	ld   a, [bc]                                     ; $70b9: $0a
	rlca                                             ; $70ba: $07
	reti                                             ; $70bb: $d9


	add  hl, bc                                      ; $70bc: $09
	inc  bc                                          ; $70bd: $03
	jr   nz, jr_053_70c1                             ; $70be: $20 $01

	ld   a, [bc]                                     ; $70c0: $0a

jr_053_70c1:
	inc  hl                                          ; $70c1: $23
	nop                                              ; $70c2: $00
	ld   sp, $2040                                   ; $70c3: $31 $40 $20
	inc  bc                                          ; $70c6: $03
	jr   nz, jr_053_70ca                             ; $70c7: $20 $01

	ld   a, [bc]                                     ; $70c9: $0a

jr_053_70ca:
	add  hl, hl                                      ; $70ca: $29
	nop                                              ; $70cb: $00
	inc  e                                           ; $70cc: $1c
	ld   b, $03                                      ; $70cd: $06 $03
	inc  bc                                          ; $70cf: $03
	ld   bc, $5258                                   ; $70d0: $01 $58 $52
	ld   a, [$0410]                                  ; $70d3: $fa $10 $04
	ld   c, $03                                      ; $70d6: $0e $03
	sbc  l                                           ; $70d8: $9d
	inc  b                                           ; $70d9: $04
	and  [hl]                                        ; $70da: $a6
	ld   e, c                                        ; $70db: $59
	ld   sp, hl                                      ; $70dc: $f9
	dec  c                                           ; $70dd: $0d
	ld   e, b                                        ; $70de: $58
	sub  b                                           ; $70df: $90
	ld   d, d                                        ; $70e0: $52
	ld   [hl], c                                     ; $70e1: $71
	ld   e, e                                        ; $70e2: $5b
	sbc  b                                           ; $70e3: $98
	ld   d, d                                        ; $70e4: $52
	ld   [hl], c                                     ; $70e5: $71
	ld   l, l                                        ; $70e6: $6d
	ld   e, c                                        ; $70e7: $59
	sub  a                                           ; $70e8: $97
	ld   a, b                                        ; $70e9: $78
	rst  $38                                         ; $70ea: $ff
	rst  $38                                         ; $70eb: $ff
	dec  c                                           ; $70ec: $0d
	nop                                              ; $70ed: $00
	ld   a, [bc]                                     ; $70ee: $0a
	inc  e                                           ; $70ef: $1c
	ld   b, $02                                      ; $70f0: $06 $02
	ld   [bc], a                                     ; $70f2: $02
	ld   bc, $5252                                   ; $70f3: $01 $52 $52
	ld   e, c                                        ; $70f6: $59
	sbc  [hl]                                        ; $70f7: $9e
	inc  bc                                          ; $70f8: $03
	ld   l, c                                        ; $70f9: $69
	ld   [bc], a                                     ; $70fa: $02
	xor  d                                           ; $70fb: $aa
	ld   a, h                                        ; $70fc: $7c
	inc  bc                                          ; $70fd: $03
	ld   h, l                                        ; $70fe: $65
	inc  bc                                          ; $70ff: $03
	ret  nc                                          ; $7100: $d0

	adc  h                                           ; $7101: $8c
	sbc  l                                           ; $7102: $9d
	ld   h, l                                        ; $7103: $65
	ld   h, b                                        ; $7104: $60
	sbc  b                                           ; $7105: $98
	dec  c                                           ; $7106: $0d
	ld   a, l                                        ; $7107: $7d
	sbc  [hl]                                        ; $7108: $9e
	ld   h, l                                        ; $7109: $65
	sub  c                                           ; $710a: $91
	ld   e, d                                        ; $710b: $5a
	and  c                                           ; $710c: $a1
	ld   [hl], l                                     ; $710d: $75
	sub  [hl]                                        ; $710e: $96
	ld   e, a                                        ; $710f: $5f
	sbc  c                                           ; $7110: $99
	and  c                                           ; $7111: $a1
	ld   l, [hl]                                     ; $7112: $6e
	sbc  a                                           ; $7113: $9f
	dec  c                                           ; $7114: $0d
	ld   h, [hl]                                     ; $7115: $66
	sub  c                                           ; $7116: $91
	sbc  [hl]                                        ; $7117: $9e
	sub  b                                           ; $7118: $90
	ld   d, h                                        ; $7119: $54
	ld   [bc], a                                     ; $711a: $02
	jr   nz, jr_053_711f                             ; $711b: $20 $02

	sub  e                                           ; $711d: $93
	dec  b                                           ; $711e: $05

jr_053_711f:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $711f: $cf
	adc  a                                           ; $7120: $8f
	ld   [hl], c                                     ; $7121: $71
	ld   e, c                                        ; $7122: $59
	sub  a                                           ; $7123: $97
	ld   l, [hl]                                     ; $7124: $6e
	sbc  a                                           ; $7125: $9f
	dec  c                                           ; $7126: $0d
	nop                                              ; $7127: $00
	ld   a, [bc]                                     ; $7128: $0a
	ld   b, $0e                                      ; $7129: $06 $0e
	ld   [de], a                                     ; $712b: $12
	rrca                                             ; $712c: $0f
	nop                                              ; $712d: $00
	ld   bc, $0714                                   ; $712e: $01 $14 $07
	ld   bc, $b101                                   ; $7131: $01 $01 $b1
	reti                                             ; $7134: $d9


	call nz, $ffff                                   ; $7135: $c4 $ff $ff
	dec  c                                           ; $7138: $0d
	pop  de                                          ; $7139: $d1
	ret  nz                                          ; $713a: $c0

	push af                                          ; $713b: $f5
	xor  [hl]                                        ; $713c: $ae
	rst  $20                                         ; $713d: $e7
	ei                                               ; $713e: $fb
	db   $fc                                         ; $713f: $fc
	rst  $38                                         ; $7140: $ff
	rst  $38                                         ; $7141: $ff
	dec  c                                           ; $7142: $0d
	nop                                              ; $7143: $00
	ld   a, [bc]                                     ; $7144: $0a
	rlca                                             ; $7145: $07
	reti                                             ; $7146: $d9


	add  hl, bc                                      ; $7147: $09
	inc  bc                                          ; $7148: $03
	jr   nz, jr_053_714c                             ; $7149: $20 $01

	ld   a, [bc]                                     ; $714b: $0a

jr_053_714c:
	inc  hl                                          ; $714c: $23
	nop                                              ; $714d: $00
	ld   sp, $2040                                   ; $714e: $31 $40 $20
	inc  bc                                          ; $7151: $03
	jr   nz, jr_053_7155                             ; $7152: $20 $01

	ld   a, [bc]                                     ; $7154: $0a

jr_053_7155:
	add  hl, hl                                      ; $7155: $29
	nop                                              ; $7156: $00
	inc  e                                           ; $7157: $1c
	ld   b, $02                                      ; $7158: $06 $02
	ld   [bc], a                                     ; $715a: $02
	ld   bc, $acd1                                   ; $715b: $01 $d1 $ac
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $715e: $fa $10 $0d
	db   $dd                                         ; $7161: $dd
	or   d                                           ; $7162: $b2
	ld   [hl], c                                     ; $7163: $71
	halt                                             ; $7164: $76
	ld   h, a                                        ; $7165: $67
	and  c                                           ; $7166: $a1
	ld   h, [hl]                                     ; $7167: $66
	sub  c                                           ; $7168: $91
	ld   a, e                                        ; $7169: $7b
	ld   d, l                                        ; $716a: $55
	sub  [hl]                                        ; $716b: $96
	sbc  a                                           ; $716c: $9f
	dec  c                                           ; $716d: $0d
	sub  b                                           ; $716e: $90
	ld   d, h                                        ; $716f: $54
	ld   [bc], a                                     ; $7170: $02
	jr   nz, jr_053_7175                             ; $7171: $20 $02

	sub  e                                           ; $7173: $93
	dec  b                                           ; $7174: $05

jr_053_7175:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7175: $cf
	adc  a                                           ; $7176: $8f
	ld   [hl], c                                     ; $7177: $71
	ld   e, c                                        ; $7178: $59
	sub  a                                           ; $7179: $97
	ld   l, [hl]                                     ; $717a: $6e
	sbc  a                                           ; $717b: $9f
	dec  c                                           ; $717c: $0d
	nop                                              ; $717d: $00
	ld   a, [bc]                                     ; $717e: $0a
	ld   b, $0e                                      ; $717f: $06 $0e
	ld   [de], a                                     ; $7181: $12
	inc  e                                           ; $7182: $1c
	ld   b, $07                                      ; $7183: $06 $07
	rlca                                             ; $7185: $07
	dec  e                                           ; $7186: $1d
	ld   b, b                                        ; $7187: $40
	ld   d, $03                                      ; $7188: $16 $03
	ld   d, $01                                      ; $718a: $16 $01
	inc  bc                                          ; $718c: $03
	jr   z, jr_053_718f                              ; $718d: $28 $00

jr_053_718f:
	ld   bc, $6596                                   ; $718f: $01 $96 $65
	ld   a, [$5210]                                  ; $7192: $fa $10 $52
	ld   d, d                                        ; $7195: $52
	ld   [bc], a                                     ; $7196: $02
	scf                                              ; $7197: $37
	ld   h, [hl]                                     ; $7198: $66
	ld   l, [hl]                                     ; $7199: $6e
	ld   a, [$540d]                                  ; $719a: $fa $0d $54
	and  c                                           ; $719d: $a1
	sbc  [hl]                                        ; $719e: $9e
	inc  b                                           ; $719f: $04
	ret  nz                                          ; $71a0: $c0

	inc  bc                                          ; $71a1: $03
	ld   a, l                                        ; $71a2: $7d
	ld   [hl], l                                     ; $71a3: $75
	ld   e, e                                        ; $71a4: $5b
	ld   l, l                                        ; $71a5: $6d
	ld   l, d                                        ; $71a6: $6a
	ld   a, [$0dfa]                                  ; $71a7: $fa $fa $0d
	nop                                              ; $71aa: $00
	ld   a, [bc]                                     ; $71ab: $0a
	ld   bc, $f5b6                                   ; $71ac: $01 $b6 $f5
	xor  [hl]                                        ; $71af: $ae
	rst  $20                                         ; $71b0: $e7
	ei                                               ; $71b1: $fb
	sbc  [hl]                                        ; $71b2: $9e
	ld   [$fa00], sp                                 ; $71b3: $08 $00 $fa
	dec  c                                           ; $71b6: $0d
	inc  bc                                          ; $71b7: $03
	ld   e, e                                        ; $71b8: $5b
	ld   e, c                                        ; $71b9: $59
	ld   [hl], c                                     ; $71ba: $71
	ld   l, l                                        ; $71bb: $6d
	ld   l, d                                        ; $71bc: $6a
	sbc  [hl]                                        ; $71bd: $9e
	call c, $c9f5                                    ; $71be: $dc $f5 $c9
	ld   a, c                                        ; $71c1: $79
	sbc  a                                           ; $71c2: $9f
	dec  c                                           ; $71c3: $0d
	nop                                              ; $71c4: $00
	ld   a, [bc]                                     ; $71c5: $0a
	inc  e                                           ; $71c6: $1c
	ld   b, $01                                      ; $71c7: $06 $01
	ld   bc, $6601                                   ; $71c9: $01 $01 $66
	sub  c                                           ; $71cc: $91
	ld   d, b                                        ; $71cd: $50
	sbc  [hl]                                        ; $71ce: $9e
	ld   [bc], a                                     ; $71cf: $02
	and  l                                           ; $71d0: $a5
	inc  b                                           ; $71d1: $04
	xor  d                                           ; $71d2: $aa
	ld   a, l                                        ; $71d3: $7d
	sub  b                                           ; $71d4: $90
	ld   d, h                                        ; $71d5: $54
	dec  c                                           ; $71d6: $0d
	sub  h                                           ; $71d7: $94
	ld   [hl], c                                     ; $71d8: $71
	ld   e, l                                        ; $71d9: $5d
	sbc  b                                           ; $71da: $98
	inc  bc                                          ; $71db: $03
	and  a                                           ; $71dc: $a7
	adc  a                                           ; $71dd: $8f
	sub  [hl]                                        ; $71de: $96
	sbc  a                                           ; $71df: $9f
	dec  c                                           ; $71e0: $0d
	nop                                              ; $71e1: $00
	ld   a, [bc]                                     ; $71e2: $0a
	dec  b                                           ; $71e3: $05
	add  b                                           ; $71e4: $80
	adc  c                                           ; $71e5: $89
	ld   bc, $0001                                   ; $71e6: $01 $01 $00
	ld   bc, $6d50                                   ; $71e9: $01 $50 $6d
	ld   d, d                                        ; $71ec: $52
	ld   a, l                                        ; $71ed: $7d
	sub  b                                           ; $71ee: $90
	ld   d, h                                        ; $71ef: $54
	ld   l, a                                        ; $71f0: $6f
	sub  l                                           ; $71f1: $95
	ld   [hl], c                                     ; $71f2: $71
	halt                                             ; $71f3: $76
	dec  c                                           ; $71f4: $0d
	inc  bc                                          ; $71f5: $03
	ld   l, l                                        ; $71f6: $6d
	dec  b                                           ; $71f7: $05
	add  hl, de                                      ; $71f8: $19
	ld   h, l                                        ; $71f9: $65
	ld   [hl], h                                     ; $71fa: $74
	ld   e, l                                        ; $71fb: $5d
	ld   e, c                                        ; $71fc: $59
	sub  a                                           ; $71fd: $97
	sub  [hl]                                        ; $71fe: $96
	sbc  a                                           ; $71ff: $9f
	dec  c                                           ; $7200: $0d
	nop                                              ; $7201: $00
	ld   a, [bc]                                     ; $7202: $0a
	ld   d, $25                                      ; $7203: $16 $25
	ld   bc, $ecc9                                   ; $7205: $01 $c9 $ec
	push hl                                          ; $7208: $e5
	and  e                                           ; $7209: $a3
	ei                                               ; $720a: $fb
	ld   a, [$0dfa]                                  ; $720b: $fa $fa $0d
	nop                                              ; $720e: $00
	ld   a, [bc]                                     ; $720f: $0a
	add  hl, bc                                      ; $7210: $09
	ld   e, $29                                      ; $7211: $1e $29
	nop                                              ; $7213: $00
	nop                                              ; $7214: $00
	nop                                              ; $7215: $00
	inc  bc                                          ; $7216: $03
	inc  d                                           ; $7217: $14
	ld   bc, $2491                                   ; $7218: $01 $91 $24
	nop                                              ; $721b: $00
	ld   c, $01                                      ; $721c: $0e $01
	rrca                                             ; $721e: $0f
	nop                                              ; $721f: $00
	ld   bc, $0f02                                   ; $7220: $01 $02 $0f
	nop                                              ; $7223: $00
	ld   bc, $6301                                   ; $7224: $01 $01 $63
	ld   d, b                                        ; $7227: $50
	sbc  [hl]                                        ; $7228: $9e
	ld   [bc], a                                     ; $7229: $02
	and  l                                           ; $722a: $a5
	inc  b                                           ; $722b: $04
	xor  d                                           ; $722c: $aa
	sub  b                                           ; $722d: $90
	ld   e, d                                        ; $722e: $5a
	and  c                                           ; $722f: $a1
	ld   a, [hl]                                     ; $7230: $7e
	sbc  c                                           ; $7231: $99
	ld   l, h                                        ; $7232: $6c
	ld   a, [$0dfa]                                  ; $7233: $fa $fa $0d
	nop                                              ; $7236: $00
	ld   a, [bc]                                     ; $7237: $0a
	inc  d                                           ; $7238: $14
	ld   b, $01                                      ; $7239: $06 $01
	rrca                                             ; $723b: $0f
	inc  b                                           ; $723c: $04
	nop                                              ; $723d: $00
	ld   bc, $526f                                   ; $723e: $01 $6f $52
	ld   [bc], a                                     ; $7241: $02
	inc  de                                          ; $7242: $13
	ld   l, a                                        ; $7243: $6f
	sub  c                                           ; $7244: $91
	and  c                                           ; $7245: $a1
	sbc  [hl]                                        ; $7246: $9e
	dec  c                                           ; $7247: $0d
	ld   l, a                                        ; $7248: $6f
	sub  l                                           ; $7249: $95
	ld   [hl], c                                     ; $724a: $71
	halt                                             ; $724b: $76
	ld   d, d                                        ; $724c: $52
	ld   d, d                                        ; $724d: $52
	ld   sp, hl                                      ; $724e: $f9
	dec  c                                           ; $724f: $0d
	nop                                              ; $7250: $00
	ld   a, [bc]                                     ; $7251: $0a
	rrca                                             ; $7252: $0f
	nop                                              ; $7253: $00
	ld   bc, $5401                                   ; $7254: $01 $01 $54
	and  c                                           ; $7257: $a1
	sbc  a                                           ; $7258: $9f
	dec  c                                           ; $7259: $0d
	ld   [bc], a                                     ; $725a: $02
	adc  b                                           ; $725b: $88
	ld   d, d                                        ; $725c: $52
	ld   [hl], h                                     ; $725d: $74
	sbc  c                                           ; $725e: $99
	sub  [hl]                                        ; $725f: $96
	sbc  a                                           ; $7260: $9f
	dec  c                                           ; $7261: $0d
	nop                                              ; $7262: $00
	ld   a, [bc]                                     ; $7263: $0a
	inc  d                                           ; $7264: $14
	ld   a, [bc]                                     ; $7265: $0a
	ld   bc, $041c                                   ; $7266: $01 $1c $04
	nop                                              ; $7269: $00
	nop                                              ; $726a: $00
	ld   bc, $567b                                   ; $726b: $01 $7b $56
	rst  $38                                         ; $726e: $ff
	rst  $38                                         ; $726f: $ff
	ld   e, e                                        ; $7270: $5b
	sub  l                                           ; $7271: $95
	ld   d, h                                        ; $7272: $54
	ld   d, d                                        ; $7273: $52
	ld   l, a                                        ; $7274: $6f
	ld   a, c                                        ; $7275: $79
	ld   l, a                                        ; $7276: $6f
	dec  c                                           ; $7277: $0d
	and  e                                           ; $7278: $a3
	and  l                                           ; $7279: $a5
	db   $ec                                         ; $727a: $ec
	cp   d                                           ; $727b: $ba
	ld   a, c                                        ; $727c: $79
	ld   [hl], d                                     ; $727d: $72
	ld   e, e                                        ; $727e: $5b
	ld   d, b                                        ; $727f: $50
	ld   [hl], c                                     ; $7280: $71
	ld   [hl], h                                     ; $7281: $74
	sbc  a                                           ; $7282: $9f
	dec  c                                           ; $7283: $0d
	nop                                              ; $7284: $00
	ld   a, [bc]                                     ; $7285: $0a
	add  hl, de                                      ; $7286: $19
	dec  b                                           ; $7287: $05
	ld   [bc], a                                     ; $7288: $02
	ld   d, d                                        ; $7289: $52
	ld   d, d                                        ; $728a: $52
	sub  [hl]                                        ; $728b: $96
	nop                                              ; $728c: $00
	nop                                              ; $728d: $00
	ld   [bc], a                                     ; $728e: $02
	and  l                                           ; $728f: $a5
	inc  b                                           ; $7290: $04
	xor  d                                           ; $7291: $aa
	ld   a, l                                        ; $7292: $7d
	ld   l, a                                        ; $7293: $6f
	sub  l                                           ; $7294: $95
	ld   [hl], c                                     ; $7295: $71
	halt                                             ; $7296: $76
	rst  $38                                         ; $7297: $ff
	rst  $38                                         ; $7298: $ff
	nop                                              ; $7299: $00
	ld   bc, $4607                                   ; $729a: $01 $07 $46
	ld   bc, $0302                                   ; $729d: $01 $02 $03
	ld   bc, $2000                                   ; $72a0: $01 $00 $20
	nop                                              ; $72a3: $00
	rlca                                             ; $72a4: $07
	sub  h                                           ; $72a5: $94
	nop                                              ; $72a6: $00
	ld   [bc], a                                     ; $72a7: $02
	inc  bc                                          ; $72a8: $03
	ld   bc, $2001                                   ; $72a9: $01 $01 $20
	nop                                              ; $72ac: $00
	ld   b, $f6                                      ; $72ad: $06 $f6
	nop                                              ; $72af: $00
	rrca                                             ; $72b0: $0f
	nop                                              ; $72b1: $00
	ld   bc, $0201                                   ; $72b2: $01 $01 $02
	jr   z, jr_053_7309                              ; $72b5: $28 $52

	ld   e, a                                        ; $72b7: $5f
	ld   [hl], a                                     ; $72b8: $77
	dec  c                                           ; $72b9: $0d
	ld   [bc], a                                     ; $72ba: $02
	and  l                                           ; $72bb: $a5
	inc  b                                           ; $72bc: $04
	xor  d                                           ; $72bd: $aa
	ld   a, l                                        ; $72be: $7d
	ld   l, a                                        ; $72bf: $6f
	sub  l                                           ; $72c0: $95
	ld   [hl], c                                     ; $72c1: $71
	halt                                             ; $72c2: $76
	rst  $38                                         ; $72c3: $ff
	rst  $38                                         ; $72c4: $ff
	dec  c                                           ; $72c5: $0d
	nop                                              ; $72c6: $00
	ld   a, [bc]                                     ; $72c7: $0a
	inc  e                                           ; $72c8: $1c
	inc  b                                           ; $72c9: $04
	ld   [bc], a                                     ; $72ca: $02
	ld   [bc], a                                     ; $72cb: $02
	dec  e                                           ; $72cc: $1d
	ld   b, b                                        ; $72cd: $40
	inc  d                                           ; $72ce: $14
	inc  bc                                          ; $72cf: $03
	inc  d                                           ; $72d0: $14
	ld   bc, $2902                                   ; $72d1: $01 $02 $29
	nop                                              ; $72d4: $00
	ld   bc, $5556                                   ; $72d5: $01 $56 $55
	rst  $38                                         ; $72d8: $ff
	rst  $38                                         ; $72d9: $ff
	ld   [hl], d                                     ; $72da: $72
	adc  h                                           ; $72db: $8c
	and  c                                           ; $72dc: $a1
	ld   a, b                                        ; $72dd: $78
	ld   d, d                                        ; $72de: $52
	ld   a, [$660d]                                  ; $72df: $fa $0d $66
	sub  c                                           ; $72e2: $91
	ld   d, b                                        ; $72e3: $50
	sbc  [hl]                                        ; $72e4: $9e
	ld   d, d                                        ; $72e5: $52
	ld   d, d                                        ; $72e6: $52
	sub  b                                           ; $72e7: $90
	and  c                                           ; $72e8: $a1
	ld   a, [$000d]                                  ; $72e9: $fa $0d $00
	dec  b                                           ; $72ec: $05
	ld   b, b                                        ; $72ed: $40
	ld   c, e                                        ; $72ee: $4b
	ld   [bc], a                                     ; $72ef: $02
	nop                                              ; $72f0: $00
	nop                                              ; $72f1: $00
	dec  b                                           ; $72f2: $05
	ld   b, b                                        ; $72f3: $40
	ld   d, c                                        ; $72f4: $51
	ld   bc, $0001                                   ; $72f5: $01 $01 $00
	ld   bc, $526f                                   ; $72f8: $01 $6f $52
	ld   [bc], a                                     ; $72fb: $02
	inc  de                                          ; $72fc: $13
	ld   l, a                                        ; $72fd: $6f
	sub  c                                           ; $72fe: $91
	and  c                                           ; $72ff: $a1
	ld   a, h                                        ; $7300: $7c
	or   d                                           ; $7301: $b2
	jp   nz, $0dfa                                   ; $7302: $c2 $fa $0d

	nop                                              ; $7305: $00
	ld   a, [bc]                                     ; $7306: $0a
	dec  c                                           ; $7307: $0d
	nop                                              ; $7308: $00

jr_053_7309:
	nop                                              ; $7309: $00
	rrca                                             ; $730a: $0f
	nop                                              ; $730b: $00
	ld   bc, $1e09                                   ; $730c: $01 $09 $1e
	add  hl, hl                                      ; $730f: $29
	ld   bc, $1c00                                   ; $7310: $01 $00 $1c
	inc  b                                           ; $7313: $04
	rlca                                             ; $7314: $07
	rlca                                             ; $7315: $07
	dec  e                                           ; $7316: $1d
	ld   b, b                                        ; $7317: $40
	inc  d                                           ; $7318: $14
	inc  bc                                          ; $7319: $03
	inc  d                                           ; $731a: $14
	ld   bc, $2903                                   ; $731b: $01 $03 $29
	nop                                              ; $731e: $00
	ld   bc, $ff50                                   ; $731f: $01 $50 $ff
	rst  $38                                         ; $7322: $ff
	ld   d, d                                        ; $7323: $52
	sub  d                                           ; $7324: $92
	ld   l, e                                        ; $7325: $6b
	ld   d, h                                        ; $7326: $54
	ld   a, b                                        ; $7327: $78
	ld   e, c                                        ; $7328: $59
	ld   e, b                                        ; $7329: $58
	ld   h, l                                        ; $732a: $65
	ld   [hl], h                                     ; $732b: $74
	sbc  c                                           ; $732c: $99
	sbc  a                                           ; $732d: $9f
	dec  c                                           ; $732e: $0d
	ld   h, [hl]                                     ; $732f: $66
	sub  c                                           ; $7330: $91
	ld   d, b                                        ; $7331: $50
	sbc  [hl]                                        ; $7332: $9e
	ld   d, d                                        ; $7333: $52
	ld   d, d                                        ; $7334: $52
	sub  b                                           ; $7335: $90
	and  c                                           ; $7336: $a1
	ld   a, [$000d]                                  ; $7337: $fa $0d $00
	dec  b                                           ; $733a: $05
	ld   b, b                                        ; $733b: $40
	ld   c, e                                        ; $733c: $4b
	ld   [bc], a                                     ; $733d: $02
	nop                                              ; $733e: $00
	nop                                              ; $733f: $00
	dec  b                                           ; $7340: $05
	ld   b, b                                        ; $7341: $40
	ld   d, c                                        ; $7342: $51
	ld   bc, $0001                                   ; $7343: $01 $01 $00
	ld   bc, $526f                                   ; $7346: $01 $6f $52
	ld   [bc], a                                     ; $7349: $02
	inc  de                                          ; $734a: $13
	ld   l, a                                        ; $734b: $6f
	sub  c                                           ; $734c: $91
	and  c                                           ; $734d: $a1
	ld   a, h                                        ; $734e: $7c
	and  l                                           ; $734f: $a5
	cp   c                                           ; $7350: $b9
	pop  af                                          ; $7351: $f1
	db   $ed                                         ; $7352: $ed
	ld   a, [$000d]                                  ; $7353: $fa $0d $00
	ld   a, [bc]                                     ; $7356: $0a
	dec  c                                           ; $7357: $0d
	nop                                              ; $7358: $00
	nop                                              ; $7359: $00
	rrca                                             ; $735a: $0f
	nop                                              ; $735b: $00
	ld   bc, $1e09                                   ; $735c: $01 $09 $1e
	add  hl, hl                                      ; $735f: $29
	ld   bc, $0f00                                   ; $7360: $01 $00 $0f
	nop                                              ; $7363: $00
	ld   bc, $5201                                   ; $7364: $01 $01 $52
	ld   d, d                                        ; $7367: $52
	ld   e, a                                        ; $7368: $5f
	ld   [hl], a                                     ; $7369: $77
	ld   h, e                                        ; $736a: $63
	rst  $38                                         ; $736b: $ff
	rst  $38                                         ; $736c: $ff
	dec  c                                           ; $736d: $0d
	inc  bc                                          ; $736e: $03
	ld   l, l                                        ; $736f: $6d
	dec  b                                           ; $7370: $05
	add  hl, de                                      ; $7371: $19
	halt                                             ; $7372: $76
	ld   e, c                                        ; $7373: $59
	ld   d, b                                        ; $7374: $50
	sbc  c                                           ; $7375: $99
	ld   e, c                                        ; $7376: $59
	sub  a                                           ; $7377: $97
	dec  c                                           ; $7378: $0d
	inc  b                                           ; $7379: $04
	xor  l                                           ; $737a: $ad
	ld   e, c                                        ; $737b: $59
	sub  a                                           ; $737c: $97
	ld   l, [hl]                                     ; $737d: $6e
	ld   [hl], c                                     ; $737e: $71
	ld   l, l                                        ; $737f: $6d
	sub  a                                           ; $7380: $97
	ld   d, d                                        ; $7381: $52
	ld   d, d                                        ; $7382: $52
	sub  [hl]                                        ; $7383: $96
	sbc  a                                           ; $7384: $9f
	dec  c                                           ; $7385: $0d
	nop                                              ; $7386: $00
	ld   a, [bc]                                     ; $7387: $0a
	inc  e                                           ; $7388: $1c
	inc  b                                           ; $7389: $04
	ld   bc, $0101                                   ; $738a: $01 $01 $01
	sub  d                                           ; $738d: $92
	ld   [hl], c                                     ; $738e: $71
	ld   l, l                                        ; $738f: $6d
	ei                                               ; $7390: $fb
	sbc  a                                           ; $7391: $9f
	dec  c                                           ; $7392: $0d
	ld   h, [hl]                                     ; $7393: $66
	sub  c                                           ; $7394: $91
	ld   d, b                                        ; $7395: $50
	sbc  [hl]                                        ; $7396: $9e
	ld   d, d                                        ; $7397: $52
	ld   h, c                                        ; $7398: $61
	ld   d, h                                        ; $7399: $54
	ld   a, [$6f0d]                                  ; $739a: $fa $0d $6f
	ld   d, d                                        ; $739d: $52
	ld   [bc], a                                     ; $739e: $02
	inc  de                                          ; $739f: $13
	ld   l, a                                        ; $73a0: $6f
	sub  c                                           ; $73a1: $91
	and  c                                           ; $73a2: $a1
	sbc  a                                           ; $73a3: $9f
	dec  c                                           ; $73a4: $0d
	nop                                              ; $73a5: $00
	ld   a, [bc]                                     ; $73a6: $0a
	rrca                                             ; $73a7: $0f
	nop                                              ; $73a8: $00
	ld   bc, $5601                                   ; $73a9: $01 $01 $56
	ld   sp, hl                                      ; $73ac: $f9
	db   $10                                         ; $73ad: $10
	ld   l, [hl]                                     ; $73ae: $6e
	ld   e, c                                        ; $73af: $59
	sub  a                                           ; $73b0: $97
	sbc  [hl]                                        ; $73b1: $9e
	inc  b                                           ; $73b2: $04
	xor  l                                           ; $73b3: $ad
	ld   e, c                                        ; $73b4: $59
	sub  a                                           ; $73b5: $97
	ld   l, [hl]                                     ; $73b6: $6e
	ld   [hl], c                                     ; $73b7: $71
	ld   l, l                                        ; $73b8: $6d
	sub  a                                           ; $73b9: $97
	dec  c                                           ; $73ba: $0d
	rst  $38                                         ; $73bb: $ff
	rst  $38                                         ; $73bc: $ff
	and  e                                           ; $73bd: $a3
	sbc  [hl]                                        ; $73be: $9e
	and  e                                           ; $73bf: $a3
	and  l                                           ; $73c0: $a5
	db   $ec                                         ; $73c1: $ec
	cp   d                                           ; $73c2: $ba
	rst  $38                                         ; $73c3: $ff
	rst  $38                                         ; $73c4: $ff
	dec  c                                           ; $73c5: $0d
	inc  bc                                          ; $73c6: $03
	ld   l, e                                        ; $73c7: $6b
	and  b                                           ; $73c8: $a0
	ld   [bc], a                                     ; $73c9: $02
	inc  l                                           ; $73ca: $2c
	ld   [hl], c                                     ; $73cb: $71
	ld   a, a                                        ; $73cc: $7f
	sub  a                                           ; $73cd: $97
	ld   a, b                                        ; $73ce: $78
	ld   d, d                                        ; $73cf: $52
	ld   [hl], l                                     ; $73d0: $75
	rst  $38                                         ; $73d1: $ff
	rst  $38                                         ; $73d2: $ff
	dec  c                                           ; $73d3: $0d
	nop                                              ; $73d4: $00
	ld   a, [bc]                                     ; $73d5: $0a
	rrca                                             ; $73d6: $0f
	inc  b                                           ; $73d7: $04
	ld   bc, $9d01                                   ; $73d8: $01 $01 $9d
	ei                                               ; $73db: $fb
	ld   d, d                                        ; $73dc: $52
	sbc  a                                           ; $73dd: $9f
	dec  c                                           ; $73de: $0d
	ld   [hl], a                                     ; $73df: $77
	ld   h, c                                        ; $73e0: $61
	ld   d, d                                        ; $73e1: $52
	ld   h, c                                        ; $73e2: $61
	ld   d, h                                        ; $73e3: $54
	ld   e, c                                        ; $73e4: $59
	ld   a, b                                        ; $73e5: $78
	db   $fc                                         ; $73e6: $fc
	sbc  a                                           ; $73e7: $9f
	dec  c                                           ; $73e8: $0d
	db   $eb                                         ; $73e9: $eb
	push af                                          ; $73ea: $f5
	db   $eb                                         ; $73eb: $eb
	sbc  [hl]                                        ; $73ec: $9e
	db   $eb                                         ; $73ed: $eb
	push af                                          ; $73ee: $f5
	db   $eb                                         ; $73ef: $eb
	sbc  [hl]                                        ; $73f0: $9e
	db   $eb                                         ; $73f1: $eb
	push af                                          ; $73f2: $f5
	ld   a, [$000d]                                  ; $73f3: $fa $0d $00
	ld   a, [bc]                                     ; $73f6: $0a
	dec  c                                           ; $73f7: $0d
	nop                                              ; $73f8: $00
	nop                                              ; $73f9: $00
	rrca                                             ; $73fa: $0f
	nop                                              ; $73fb: $00
	ld   bc, $020c                                   ; $73fc: $01 $0c $02
	ld   c, $04                                      ; $73ff: $0e $04
	inc  e                                           ; $7401: $1c
	inc  bc                                          ; $7402: $03
	rlca                                             ; $7403: $07
	rlca                                             ; $7404: $07
	ld   bc, $7150                                   ; $7405: $01 $50 $71
	ld   a, [$a310]                                  ; $7408: $fa $10 $a3
	and  l                                           ; $740b: $a5
	db   $ec                                         ; $740c: $ec
	cp   d                                           ; $740d: $ba
	ld   a, [$6b0d]                                  ; $740e: $fa $0d $6b
	sbc  d                                           ; $7411: $9a
	ld   a, c                                        ; $7412: $79
	ld   [$5d00], sp                                 ; $7413: $08 $00 $5d
	and  c                                           ; $7416: $a1
	sub  b                                           ; $7417: $90
	sbc  a                                           ; $7418: $9f
	dec  c                                           ; $7419: $0d
	ld   [hl], a                                     ; $741a: $77
	ld   h, c                                        ; $741b: $61
	ld   a, c                                        ; $741c: $79
	ld   [bc], a                                     ; $741d: $02
	ld   a, a                                        ; $741e: $7f
	ld   e, l                                        ; $741f: $5d
	ld   a, h                                        ; $7420: $7c
	ld   sp, hl                                      ; $7421: $f9
	db   $10                                         ; $7422: $10
	inc  b                                           ; $7423: $04
	rla                                              ; $7424: $17
	ld   l, a                                        ; $7425: $6f
	ld   a, b                                        ; $7426: $78
	ld   h, e                                        ; $7427: $63
	ld   d, d                                        ; $7428: $52
	ld   a, [$000d]                                  ; $7429: $fa $0d $00
	ld   a, [bc]                                     ; $742c: $0a
	rrca                                             ; $742d: $0f
	nop                                              ; $742e: $00
	ld   bc, $a301                                   ; $742f: $01 $01 $a3
	sbc  [hl]                                        ; $7432: $9e
	and  e                                           ; $7433: $a3
	and  l                                           ; $7434: $a5
	db   $ec                                         ; $7435: $ec
	cp   d                                           ; $7436: $ba
	ld   a, c                                        ; $7437: $79
	ld   [bc], a                                     ; $7438: $02
	jp   nz, Jump_053_7452                           ; $7439: $c2 $52 $74

	ld   [bc], a                                     ; $743c: $02
	inc  [hl]                                        ; $743d: $34
	ld   h, e                                        ; $743e: $63
	ld   d, d                                        ; $743f: $52
	sbc  a                                           ; $7440: $9f
	dec  c                                           ; $7441: $0d
	ld   d, d                                        ; $7442: $52
	ld   l, l                                        ; $7443: $6d
	ld   l, l                                        ; $7444: $6d
	ld   l, l                                        ; $7445: $6d
	sbc  [hl]                                        ; $7446: $9e
	inc  bc                                          ; $7447: $03
	ld   l, e                                        ; $7448: $6b
	and  b                                           ; $7449: $a0
	ld   [bc], a                                     ; $744a: $02
	inc  l                                           ; $744b: $2c
	ld   [hl], c                                     ; $744c: $71
	ld   a, a                                        ; $744d: $7f
	sub  a                                           ; $744e: $97
	ld   a, b                                        ; $744f: $78
	ld   d, d                                        ; $7450: $52
	ld   [hl], l                                     ; $7451: $75

Jump_053_7452:
	dec  c                                           ; $7452: $0d
	and  e                                           ; $7453: $a3
	and  l                                           ; $7454: $a5
	db   $ec                                         ; $7455: $ec
	cp   d                                           ; $7456: $ba
	ld   [hl], c                                     ; $7457: $71
	ld   [hl], h                                     ; $7458: $74
	ld   a, [hl]                                     ; $7459: $7e
	rst  $38                                         ; $745a: $ff
	rst  $38                                         ; $745b: $ff
	dec  c                                           ; $745c: $0d
	nop                                              ; $745d: $00
	ld   a, [bc]                                     ; $745e: $0a

Jump_053_745f:
	ld   b, $46                                      ; $745f: $06 $46
	ld   [bc], a                                     ; $7461: $02
	dec  c                                           ; $7462: $0d
	nop                                              ; $7463: $00
	nop                                              ; $7464: $00

Call_053_7465:
	inc  c                                           ; $7465: $0c
	ld   [bc], a                                     ; $7466: $02
	ld   c, $9b                                      ; $7467: $0e $9b
	rrca                                             ; $7469: $0f
	nop                                              ; $746a: $00
	ld   bc, $7701                                   ; $746b: $01 $01 $77
	ld   d, h                                        ; $746e: $54
	ld   h, l                                        ; $746f: $65
	ld   l, l                                        ; $7470: $6d
	and  c                                           ; $7471: $a1
	ld   l, [hl]                                     ; $7472: $6e
	ld   d, d                                        ; $7473: $52
	sbc  a                                           ; $7474: $9f
	and  e                                           ; $7475: $a3
	and  l                                           ; $7476: $a5
	db   $ec                                         ; $7477: $ec
	cp   d                                           ; $7478: $ba
	sbc  a                                           ; $7479: $9f
	dec  c                                           ; $747a: $0d
	rst  JumpTable                                         ; $747b: $df
	db   $ec                                         ; $747c: $ec
	and  e                                           ; $747d: $a3
	ld   h, e                                        ; $747e: $63
	and  c                                           ; $747f: $a1
	sbc  [hl]                                        ; $7480: $9e
	and  e                                           ; $7481: $a3
	and  l                                           ; $7482: $a5
	db   $ec                                         ; $7483: $ec
	cp   d                                           ; $7484: $ba
	and  b                                           ; $7485: $a0
	inc  b                                           ; $7486: $04
	inc  d                                           ; $7487: $14
	ld   h, l                                        ; $7488: $65
	ld   [hl], h                                     ; $7489: $74
	dec  c                                           ; $748a: $0d
	ld   l, l                                        ; $748b: $6d
	adc  l                                           ; $748c: $8d
	ld   l, l                                        ; $748d: $6d
	ld   d, d                                        ; $748e: $52
	rst  $38                                         ; $748f: $ff
	rst  $38                                         ; $7490: $ff
	dec  c                                           ; $7491: $0d
	nop                                              ; $7492: $00
	ld   a, [bc]                                     ; $7493: $0a
	inc  e                                           ; $7494: $1c
	inc  b                                           ; $7495: $04
	ld   [bc], a                                     ; $7496: $02
	ld   [bc], a                                     ; $7497: $02
	ld   bc, $a16b                                   ; $7498: $01 $6b $a1
	ld   a, b                                        ; $749b: $78
	ld   a, h                                        ; $749c: $7c
	sbc  [hl]                                        ; $749d: $9e
	ld   [hl], a                                     ; $749e: $77
	ld   d, h                                        ; $749f: $54
	ld   [hl], l                                     ; $74a0: $75
	sub  b                                           ; $74a1: $90
	ld   d, d                                        ; $74a2: $52
	ld   d, d                                        ; $74a3: $52
	sub  [hl]                                        ; $74a4: $96
	sbc  a                                           ; $74a5: $9f
	dec  c                                           ; $74a6: $0d
	nop                                              ; $74a7: $00
	inc  e                                           ; $74a8: $1c
	inc  b                                           ; $74a9: $04
	ld   bc, $0101                                   ; $74aa: $01 $01 $01
	ld   l, e                                        ; $74ad: $6b
	ld   d, h                                        ; $74ae: $54
	ld   l, [hl]                                     ; $74af: $6e
	ld   a, [$6f10]                                  ; $74b0: $fa $10 $6f
	ld   d, d                                        ; $74b3: $52
	ld   [bc], a                                     ; $74b4: $02
	inc  de                                          ; $74b5: $13
	ld   l, a                                        ; $74b6: $6f
	sub  c                                           ; $74b7: $91
	and  c                                           ; $74b8: $a1
	sbc  a                                           ; $74b9: $9f
	dec  c                                           ; $74ba: $0d
	ld   h, l                                        ; $74bb: $65
	sbc  b                                           ; $74bc: $98
	halt                                             ; $74bd: $76
	sbc  b                                           ; $74be: $98
	sub  d                                           ; $74bf: $92
	sbc  e                                           ; $74c0: $9b
	ld   d, h                                        ; $74c1: $54
	sub  [hl]                                        ; $74c2: $96
	sbc  a                                           ; $74c3: $9f
	dec  c                                           ; $74c4: $0d
	nop                                              ; $74c5: $00
	ld   a, [bc]                                     ; $74c6: $0a
	ld   bc, $7152                                   ; $74c7: $01 $52 $71
	ld   [hl], h                                     ; $74ca: $74
	sub  b                                           ; $74cb: $90
	ld   d, d                                        ; $74cc: $52
	ld   d, d                                        ; $74cd: $52
	ld   a, h                                        ; $74ce: $7c
	ld   a, l                                        ; $74cf: $7d
	sbc  [hl]                                        ; $74d0: $9e
	dec  c                                           ; $74d1: $0d
	ld   bc, $7707                                   ; $74d2: $01 $07 $77
	ld   d, h                                        ; $74d5: $54
	add  h                                           ; $74d6: $84
	ld   [hl], d                                     ; $74d7: $72
	ld   bc, $7c08                                   ; $74d8: $01 $08 $7c
	ld   a, b                                        ; $74db: $78
	adc  h                                           ; $74dc: $8c
	ld   d, [hl]                                     ; $74dd: $56
	dec  c                                           ; $74de: $0d
	ld   l, [hl]                                     ; $74df: $6e
	ld   e, a                                        ; $74e0: $5f
	ld   l, [hl]                                     ; $74e1: $6e
	sub  [hl]                                        ; $74e2: $96
	sbc  a                                           ; $74e3: $9f
	dec  c                                           ; $74e4: $0d
	nop                                              ; $74e5: $00
	ld   a, [bc]                                     ; $74e6: $0a
	ld   bc, $9166                                   ; $74e7: $01 $66 $91
	sbc  [hl]                                        ; $74ea: $9e
	ld   d, d                                        ; $74eb: $52
	ld   e, l                                        ; $74ec: $5d
	sub  [hl]                                        ; $74ed: $96
	sbc  a                                           ; $74ee: $9f
	dec  c                                           ; $74ef: $0d
	adc  h                                           ; $74f0: $8c
	ld   l, b                                        ; $74f1: $68
	ld   a, l                                        ; $74f2: $7d
	ld   bc, $b007                                   ; $74f3: $01 $07 $b0
	rst  JumpTable                                         ; $74f6: $df
	ld   bc, $9f08                                   ; $74f7: $01 $08 $9f
	dec  c                                           ; $74fa: $0d
	nop                                              ; $74fb: $00
	ld   a, [bc]                                     ; $74fc: $0a
	add  hl, de                                      ; $74fd: $19
	dec  b                                           ; $74fe: $05
	inc  bc                                          ; $74ff: $03
	rst  JumpTable                                         ; $7500: $df
	push af                                          ; $7501: $f5
	ret                                              ; $7502: $c9


	db   $d3                                         ; $7503: $d3
	db   $d3                                         ; $7504: $d3
	nop                                              ; $7505: $00
	nop                                              ; $7506: $00
	rst  JumpTable                                         ; $7507: $df
	cp   b                                           ; $7508: $b8
	push af                                          ; $7509: $f5
	xor  l                                           ; $750a: $ad
	push af                                          ; $750b: $f5
	nop                                              ; $750c: $00
	ld   bc, $f5df                                   ; $750d: $01 $df $f5
	xor  l                                           ; $7510: $ad
	nop                                              ; $7511: $00
	ld   [bc], a                                     ; $7512: $02
	rlca                                             ; $7513: $07
	ld   [hl], c                                     ; $7514: $71
	inc  bc                                          ; $7515: $03
	ld   [bc], a                                     ; $7516: $02
	inc  bc                                          ; $7517: $03
	ld   bc, $2000                                   ; $7518: $01 $00 $20
	nop                                              ; $751b: $00
	rlca                                             ; $751c: $07
	ld   b, l                                        ; $751d: $45
	inc  bc                                          ; $751e: $03
	ld   [bc], a                                     ; $751f: $02
	inc  bc                                          ; $7520: $03
	ld   bc, $2001                                   ; $7521: $01 $01 $20
	nop                                              ; $7524: $00
	rlca                                             ; $7525: $07
	ld   b, l                                        ; $7526: $45
	inc  bc                                          ; $7527: $03
	ld   [bc], a                                     ; $7528: $02
	inc  bc                                          ; $7529: $03
	ld   bc, $2002                                   ; $752a: $01 $02 $20
	nop                                              ; $752d: $00
	ld   b, $15                                      ; $752e: $06 $15
	inc  bc                                          ; $7530: $03
	inc  e                                           ; $7531: $1c
	inc  b                                           ; $7532: $04
	nop                                              ; $7533: $00
	nop                                              ; $7534: $00
	ld   bc, $fbd7                                   ; $7535: $01 $d7 $fb
	sbc  [hl]                                        ; $7538: $9e
	ld   h, [hl]                                     ; $7539: $66
	ld   e, c                                        ; $753a: $59
	and  c                                           ; $753b: $a1
	ld   e, h                                        ; $753c: $5c
	sbc  d                                           ; $753d: $9a
	ld   l, [hl]                                     ; $753e: $6e
	sub  [hl]                                        ; $753f: $96
	sbc  a                                           ; $7540: $9f
	dec  c                                           ; $7541: $0d
	ld   l, a                                        ; $7542: $6f
	ld   d, d                                        ; $7543: $52
	ld   [bc], a                                     ; $7544: $02
	inc  de                                          ; $7545: $13
	ld   l, a                                        ; $7546: $6f
	sub  c                                           ; $7547: $91
	and  c                                           ; $7548: $a1
	ld   a, h                                        ; $7549: $7c
	adc  h                                           ; $754a: $8c
	ld   e, a                                        ; $754b: $5f
	sbc  a                                           ; $754c: $9f
	dec  c                                           ; $754d: $0d
	sub  b                                           ; $754e: $90
	ld   d, h                                        ; $754f: $54
	ld   d, d                                        ; $7550: $52
	ld   [hl], c                                     ; $7551: $71
	ld   e, c                                        ; $7552: $59
	ld   d, d                                        ; $7553: $52
	ld   a, l                                        ; $7554: $7d
	ld   h, [hl]                                     ; $7555: $66
	adc  a                                           ; $7556: $8f
	ld   e, c                                        ; $7557: $59
	sub  a                                           ; $7558: $97
	ld   a, e                                        ; $7559: $7b

Jump_053_755a:
	sbc  a                                           ; $755a: $9f
	dec  c                                           ; $755b: $0d
	nop                                              ; $755c: $00
	ld   a, [bc]                                     ; $755d: $0a
	ld   b, $cb                                      ; $755e: $06 $cb
	ld   [bc], a                                     ; $7560: $02
	inc  e                                           ; $7561: $1c
	inc  b                                           ; $7562: $04
	nop                                              ; $7563: $00
	nop                                              ; $7564: $00
	ld   bc, $9a6b                                   ; $7565: $01 $6b $9a
	ld   a, l                                        ; $7568: $7d
	sbc  [hl]                                        ; $7569: $9e
	ld   [hl], a                                     ; $756a: $77
	ld   d, h                                        ; $756b: $54
	add  h                                           ; $756c: $84
	ld   [hl], d                                     ; $756d: $72
	ld   h, [hl]                                     ; $756e: $66
	sub  c                                           ; $756f: $91
	ld   a, b                                        ; $7570: $78
	ld   d, d                                        ; $7571: $52
	ld   e, c                                        ; $7572: $59
	sub  a                                           ; $7573: $97
	dec  c                                           ; $7574: $0d
	pop  bc                                          ; $7575: $c1
	ei                                               ; $7576: $fb
	db   $e3                                         ; $7577: $e3
	sbc  a                                           ; $7578: $9f
	dec  c                                           ; $7579: $0d
	sub  b                                           ; $757a: $90
	ld   d, h                                        ; $757b: $54
	ld   d, d                                        ; $757c: $52
	ld   [hl], c                                     ; $757d: $71
	ld   e, c                                        ; $757e: $59
	ld   d, d                                        ; $757f: $52
	ld   a, l                                        ; $7580: $7d
	ld   h, [hl]                                     ; $7581: $66
	adc  a                                           ; $7582: $8f
	ld   e, c                                        ; $7583: $59
	sub  a                                           ; $7584: $97
	ld   a, e                                        ; $7585: $7b
	sbc  a                                           ; $7586: $9f
	dec  c                                           ; $7587: $0d
	nop                                              ; $7588: $00
	ld   a, [bc]                                     ; $7589: $0a
	ld   b, $cb                                      ; $758a: $06 $cb
	ld   [bc], a                                     ; $758c: $02
	rrca                                             ; $758d: $0f
	nop                                              ; $758e: $00
	ld   bc, $0101                                   ; $758f: $01 $01 $01
	rlca                                             ; $7592: $07
	rst  JumpTable                                         ; $7593: $df
	push af                                          ; $7594: $f5
	ret                                              ; $7595: $c9


	db   $d3                                         ; $7596: $d3
	db   $d3                                         ; $7597: $d3
	ld   bc, $fa08                                   ; $7598: $01 $08 $fa
	dec  c                                           ; $759b: $0d
	nop                                              ; $759c: $00
	ld   a, [bc]                                     ; $759d: $0a
	inc  e                                           ; $759e: $1c
	inc  b                                           ; $759f: $04
	nop                                              ; $75a0: $00
	nop                                              ; $75a1: $00
	ld   de, $0100                                   ; $75a2: $11 $00 $01
	db   $d3                                         ; $75a5: $d3
	rst  $38                                         ; $75a6: $ff
	rst  $38                                         ; $75a7: $ff
	dec  c                                           ; $75a8: $0d
	nop                                              ; $75a9: $00
	ld   de, $01ff                                   ; $75aa: $11 $ff $01
	ld   bc, $d307                                   ; $75ad: $01 $07 $d3
	or   c                                           ; $75b0: $b1
	rst  JumpTable                                         ; $75b1: $df
	ld   bc, $fa08                                   ; $75b2: $01 $08 $fa
	dec  c                                           ; $75b5: $0d
	nop                                              ; $75b6: $00
	ld   a, [bc]                                     ; $75b7: $0a
	add  hl, de                                      ; $75b8: $19
	dec  b                                           ; $75b9: $05
	inc  bc                                          ; $75ba: $03
	rst  JumpTable                                         ; $75bb: $df
	push af                                          ; $75bc: $f5
	db   $e4                                         ; $75bd: $e4
	cp   d                                           ; $75be: $ba
	nop                                              ; $75bf: $00
	nop                                              ; $75c0: $00
	rst  JumpTable                                         ; $75c1: $df
	ei                                               ; $75c2: $fb
	xor  l                                           ; $75c3: $ad
	db   $ec                                         ; $75c4: $ec
	push af                                          ; $75c5: $f5
	nop                                              ; $75c6: $00
	ld   bc, $c1df                                   ; $75c7: $01 $df $c1
	and  l                                           ; $75ca: $a5
	nop                                              ; $75cb: $00
	ld   [bc], a                                     ; $75cc: $02
	rlca                                             ; $75cd: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75ce: $cf
	inc  bc                                          ; $75cf: $03
	ld   [bc], a                                     ; $75d0: $02
	inc  bc                                          ; $75d1: $03
	ld   bc, $2000                                   ; $75d2: $01 $00 $20
	nop                                              ; $75d5: $00
	rlca                                             ; $75d6: $07
	ld   b, l                                        ; $75d7: $45
	inc  bc                                          ; $75d8: $03
	ld   [bc], a                                     ; $75d9: $02
	inc  bc                                          ; $75da: $03
	ld   bc, $2001                                   ; $75db: $01 $01 $20
	nop                                              ; $75de: $00
	rlca                                             ; $75df: $07
	ld   b, l                                        ; $75e0: $45
	inc  bc                                          ; $75e1: $03
	ld   [bc], a                                     ; $75e2: $02
	inc  bc                                          ; $75e3: $03
	ld   bc, $2002                                   ; $75e4: $01 $02 $20
	nop                                              ; $75e7: $00
	ld   b, $15                                      ; $75e8: $06 $15
	inc  bc                                          ; $75ea: $03
	rrca                                             ; $75eb: $0f
	nop                                              ; $75ec: $00
	ld   bc, $0101                                   ; $75ed: $01 $01 $01
	rlca                                             ; $75f0: $07
	rst  JumpTable                                         ; $75f1: $df
	push af                                          ; $75f2: $f5
	db   $e4                                         ; $75f3: $e4
	cp   d                                           ; $75f4: $ba
	ld   bc, $fa08                                   ; $75f5: $01 $08 $fa
	dec  c                                           ; $75f8: $0d
	nop                                              ; $75f9: $00
	ld   a, [bc]                                     ; $75fa: $0a
	inc  e                                           ; $75fb: $1c
	inc  b                                           ; $75fc: $04
	nop                                              ; $75fd: $00
	nop                                              ; $75fe: $00
	ld   de, $0100                                   ; $75ff: $11 $00 $01
	cp   d                                           ; $7602: $ba
	rst  $38                                         ; $7603: $ff
	rst  $38                                         ; $7604: $ff
	dec  c                                           ; $7605: $0d
	nop                                              ; $7606: $00
	ld   de, $01ff                                   ; $7607: $11 $ff $01
	ld   bc, $ba07                                   ; $760a: $01 $07 $ba
	xor  h                                           ; $760d: $ac
	push af                                          ; $760e: $f5
	or   b                                           ; $760f: $b0
	ld   bc, $fa08                                   ; $7610: $01 $08 $fa
	dec  c                                           ; $7613: $0d
	nop                                              ; $7614: $00
	ld   a, [bc]                                     ; $7615: $0a
	add  hl, de                                      ; $7616: $19
	dec  b                                           ; $7617: $05
	inc  bc                                          ; $7618: $03
	or   b                                           ; $7619: $b0
	cp   c                                           ; $761a: $b9
	db   $eb                                         ; $761b: $eb
	nop                                              ; $761c: $00
	nop                                              ; $761d: $00
	or   b                                           ; $761e: $b0
	rst  JumpTable                                         ; $761f: $df
	nop                                              ; $7620: $00
	ld   bc, $c2b0                                   ; $7621: $01 $b0 $c2
	db   $d3                                         ; $7624: $d3
	or   e                                           ; $7625: $b3
	or   c                                           ; $7626: $b1
	xor  c                                           ; $7627: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7628: $cf
	push af                                          ; $7629: $f5
	nop                                              ; $762a: $00
	ld   [bc], a                                     ; $762b: $02
	rlca                                             ; $762c: $07
	xor  b                                           ; $762d: $a8
	inc  b                                           ; $762e: $04
	ld   [bc], a                                     ; $762f: $02
	inc  bc                                          ; $7630: $03
	ld   bc, $2000                                   ; $7631: $01 $00 $20
	nop                                              ; $7634: $00
	rlca                                             ; $7635: $07
	ld   d, h                                        ; $7636: $54
	inc  b                                           ; $7637: $04
	ld   [bc], a                                     ; $7638: $02
	inc  bc                                          ; $7639: $03
	ld   bc, $2001                                   ; $763a: $01 $01 $20
	nop                                              ; $763d: $00
	rlca                                             ; $763e: $07
	ld   a, l                                        ; $763f: $7d
	inc  b                                           ; $7640: $04
	ld   [bc], a                                     ; $7641: $02
	inc  bc                                          ; $7642: $03
	ld   bc, $2002                                   ; $7643: $01 $02 $20
	nop                                              ; $7646: $00
	ld   b, $2e                                      ; $7647: $06 $2e
	inc  b                                           ; $7649: $04
	inc  e                                           ; $764a: $1c
	inc  b                                           ; $764b: $04
	ld   bc, $0101                                   ; $764c: $01 $01 $01
	rst  $10                                         ; $764f: $d7
	ei                                               ; $7650: $fb
	sbc  [hl]                                        ; $7651: $9e
	ld   h, [hl]                                     ; $7652: $66
	ld   e, c                                        ; $7653: $59
	and  c                                           ; $7654: $a1
	ld   e, h                                        ; $7655: $5c
	sbc  d                                           ; $7656: $9a
	ld   l, [hl]                                     ; $7657: $6e
	sub  [hl]                                        ; $7658: $96
	sbc  a                                           ; $7659: $9f
	dec  c                                           ; $765a: $0d
	and  e                                           ; $765b: $a3
	and  l                                           ; $765c: $a5
	db   $ec                                         ; $765d: $ec
	cp   d                                           ; $765e: $ba
	ld   a, h                                        ; $765f: $7c
	ld   e, c                                        ; $7660: $59
	ld   l, a                                        ; $7661: $6f
	db   $fc                                         ; $7662: $fc
	sbc  a                                           ; $7663: $9f
	dec  c                                           ; $7664: $0d
	xor  c                                           ; $7665: $a9
	reti                                             ; $7666: $d9


	reti                                             ; $7667: $d9


	reti                                             ; $7668: $d9


	sbc  a                                           ; $7669: $9f
	dec  c                                           ; $766a: $0d
	nop                                              ; $766b: $00
	ld   a, [bc]                                     ; $766c: $0a
	ld   b, $80                                      ; $766d: $06 $80
	ld   b, $1c                                      ; $766f: $06 $1c
	inc  b                                           ; $7671: $04
	ld   bc, $0101                                   ; $7672: $01 $01 $01
	ld   l, e                                        ; $7675: $6b
	sbc  d                                           ; $7676: $9a
	ld   a, l                                        ; $7677: $7d
	sbc  [hl]                                        ; $7678: $9e
	ld   h, e                                        ; $7679: $63
	ld   [hl], c                                     ; $767a: $71
	ld   e, e                                        ; $767b: $5b
	and  e                                           ; $767c: $a3
	and  l                                           ; $767d: $a5
	db   $ec                                         ; $767e: $ec
	cp   d                                           ; $767f: $ba
	ld   e, d                                        ; $7680: $5a
	dec  c                                           ; $7681: $0d
	ld   d, d                                        ; $7682: $52
	ld   [hl], c                                     ; $7683: $71
	ld   l, l                                        ; $7684: $6d
	ld   e, c                                        ; $7685: $59
	sub  a                                           ; $7686: $97
	pop  bc                                          ; $7687: $c1
	ei                                               ; $7688: $fb
	db   $e3                                         ; $7689: $e3
	dec  c                                           ; $768a: $0d
	and  e                                           ; $768b: $a3
	and  l                                           ; $768c: $a5
	db   $ec                                         ; $768d: $ec
	cp   d                                           ; $768e: $ba
	ld   a, h                                        ; $768f: $7c
	ld   e, c                                        ; $7690: $59
	ld   l, a                                        ; $7691: $6f
	ld   a, [$000d]                                  ; $7692: $fa $0d $00
	ld   a, [bc]                                     ; $7695: $0a
	ld   b, $80                                      ; $7696: $06 $80
	ld   b, $1c                                      ; $7698: $06 $1c
	inc  b                                           ; $769a: $04
	ld   bc, $0101                                   ; $769b: $01 $01 $01
	ld   bc, $a107                                   ; $769e: $01 $07 $a1
	ld   bc, $5a08                                   ; $76a1: $01 $08 $5a
	ld   [hl], d                                     ; $76a4: $72
	ld   d, d                                        ; $76a5: $52
	ld   l, l                                        ; $76a6: $6d
	ld   e, c                                        ; $76a7: $59
	sub  a                                           ; $76a8: $97
	dec  c                                           ; $76a9: $0d
	ld   l, a                                        ; $76aa: $6f
	ld   d, d                                        ; $76ab: $52
	ld   [bc], a                                     ; $76ac: $02
	inc  de                                          ; $76ad: $13
	ld   l, a                                        ; $76ae: $6f
	sub  c                                           ; $76af: $91
	and  c                                           ; $76b0: $a1
	ld   a, h                                        ; $76b1: $7c
	adc  h                                           ; $76b2: $8c
	ld   e, a                                        ; $76b3: $5f
	ld   a, [$a30d]                                  ; $76b4: $fa $0d $a3
	and  l                                           ; $76b7: $a5
	db   $ec                                         ; $76b8: $ec
	cp   d                                           ; $76b9: $ba
	ld   a, h                                        ; $76ba: $7c
	ld   e, c                                        ; $76bb: $59
	ld   l, a                                        ; $76bc: $6f
	ld   a, [$000d]                                  ; $76bd: $fa $0d $00
	ld   a, [bc]                                     ; $76c0: $0a
	ld   b, $80                                      ; $76c1: $06 $80
	ld   b, $1c                                      ; $76c3: $06 $1c
	inc  b                                           ; $76c5: $04
	nop                                              ; $76c6: $00
	nop                                              ; $76c7: $00
	ld   de, $0100                                   ; $76c8: $11 $00 $01
	db   $eb                                         ; $76cb: $eb
	rst  $38                                         ; $76cc: $ff
	rst  $38                                         ; $76cd: $ff
	dec  c                                           ; $76ce: $0d
	nop                                              ; $76cf: $00
	ld   de, $01ff                                   ; $76d0: $11 $ff $01
	ld   bc, $eb07                                   ; $76d3: $01 $07 $eb
	call nz, $01b4                                   ; $76d6: $c4 $b4 $01
	ld   [$0dfa], sp                                 ; $76d9: $08 $fa $0d
	nop                                              ; $76dc: $00
	ld   a, [bc]                                     ; $76dd: $0a
	add  hl, de                                      ; $76de: $19
	dec  b                                           ; $76df: $05
	inc  bc                                          ; $76e0: $03
	or   h                                           ; $76e1: $b4
	and  e                                           ; $76e2: $a3
	db   $eb                                         ; $76e3: $eb
	nop                                              ; $76e4: $00
	nop                                              ; $76e5: $00
	or   h                                           ; $76e6: $b4
	or   h                                           ; $76e7: $b4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76e8: $cf
	xor  e                                           ; $76e9: $ab
	call nc, $eda3                                   ; $76ea: $d4 $a3 $ed
	rst  JumpTable                                         ; $76ed: $df
	cp   c                                           ; $76ee: $b9
	rst  $28                                         ; $76ef: $ef
	nop                                              ; $76f0: $00
	ld   bc, $d1b4                                   ; $76f1: $01 $b4 $d1
	push af                                          ; $76f4: $f5
	or   a                                           ; $76f5: $b7
	db   $e3                                         ; $76f6: $e3
	nop                                              ; $76f7: $00
	ld   [bc], a                                     ; $76f8: $02
	rlca                                             ; $76f9: $07
	ld   e, b                                        ; $76fa: $58
	dec  b                                           ; $76fb: $05
	ld   [bc], a                                     ; $76fc: $02
	inc  bc                                          ; $76fd: $03
	ld   bc, $2000                                   ; $76fe: $01 $00 $20
	nop                                              ; $7701: $00
	rlca                                             ; $7702: $07
	jr   z, jr_053_770a                              ; $7703: $28 $05

	ld   [bc], a                                     ; $7705: $02
	inc  bc                                          ; $7706: $03
	ld   bc, $2001                                   ; $7707: $01 $01 $20

jr_053_770a:
	nop                                              ; $770a: $00
	rlca                                             ; $770b: $07
	ei                                               ; $770c: $fb
	inc  b                                           ; $770d: $04
	ld   [bc], a                                     ; $770e: $02
	inc  bc                                          ; $770f: $03
	ld   bc, $2002                                   ; $7710: $01 $02 $20
	nop                                              ; $7713: $00
	ld   b, $2e                                      ; $7714: $06 $2e
	inc  b                                           ; $7716: $04
	inc  e                                           ; $7717: $1c
	inc  b                                           ; $7718: $04
	rlca                                             ; $7719: $07
	rlca                                             ; $771a: $07
	ld   bc, $9a6b                                   ; $771b: $01 $6b $9a
	ld   a, l                                        ; $771e: $7d
	sbc  [hl]                                        ; $771f: $9e
	ld   [hl], a                                     ; $7720: $77
	ld   d, h                                        ; $7721: $54
	add  h                                           ; $7722: $84
	ld   [hl], d                                     ; $7723: $72
	ld   h, [hl]                                     ; $7724: $66
	sub  c                                           ; $7725: $91
	ld   a, b                                        ; $7726: $78
	ld   d, d                                        ; $7727: $52
	ld   e, c                                        ; $7728: $59
	sub  a                                           ; $7729: $97
	dec  c                                           ; $772a: $0d
	pop  bc                                          ; $772b: $c1
	ei                                               ; $772c: $fb
	db   $e3                                         ; $772d: $e3
	sbc  a                                           ; $772e: $9f
	dec  c                                           ; $772f: $0d
	nop                                              ; $7730: $00
	inc  e                                           ; $7731: $1c
	inc  b                                           ; $7732: $04
	ld   bc, $0101                                   ; $7733: $01 $01 $01
	and  e                                           ; $7736: $a3
	and  l                                           ; $7737: $a5
	db   $ec                                         ; $7738: $ec
	cp   d                                           ; $7739: $ba
	ld   a, h                                        ; $773a: $7c
	ld   e, c                                        ; $773b: $59
	ld   l, a                                        ; $773c: $6f
	ld   a, [$000d]                                  ; $773d: $fa $0d $00
	ld   a, [bc]                                     ; $7740: $0a
	ld   b, $80                                      ; $7741: $06 $80
	ld   b, $1c                                      ; $7743: $06 $1c
	inc  b                                           ; $7745: $04
	rlca                                             ; $7746: $07
	rlca                                             ; $7747: $07
	ld   bc, $a5a3                                   ; $7748: $01 $a3 $a5
	db   $ec                                         ; $774b: $ec
	cp   d                                           ; $774c: $ba
	ld   l, e                                        ; $774d: $6b
	and  c                                           ; $774e: $a1
	ld   a, b                                        ; $774f: $78
	ld   a, h                                        ; $7750: $7c
	dec  c                                           ; $7751: $0d
	ld   h, l                                        ; $7752: $65
	sub  a                                           ; $7753: $97
	ld   a, b                                        ; $7754: $78
	ld   d, d                                        ; $7755: $52
	sub  b                                           ; $7756: $90
	and  c                                           ; $7757: $a1
	sbc  a                                           ; $7758: $9f
	dec  c                                           ; $7759: $0d
	nop                                              ; $775a: $00
	inc  e                                           ; $775b: $1c
	inc  b                                           ; $775c: $04
	ld   bc, $0901                                   ; $775d: $01 $01 $09
	ld   e, $01                                      ; $7760: $1e $01
	ld   l, [hl]                                     ; $7762: $6e
	ld   e, c                                        ; $7763: $59
	sub  a                                           ; $7764: $97
	sbc  [hl]                                        ; $7765: $9e
	and  e                                           ; $7766: $a3
	and  l                                           ; $7767: $a5
	db   $ec                                         ; $7768: $ec
	cp   d                                           ; $7769: $ba
	ld   a, h                                        ; $776a: $7c
	ld   e, c                                        ; $776b: $59
	ld   l, a                                        ; $776c: $6f
	ld   a, [$000d]                                  ; $776d: $fa $0d $00
	ld   a, [bc]                                     ; $7770: $0a
	ld   b, $80                                      ; $7771: $06 $80
	ld   b, $0f                                      ; $7773: $06 $0f
	nop                                              ; $7775: $00
	ld   bc, $0101                                   ; $7776: $01 $01 $01
	rlca                                             ; $7779: $07
	or   h                                           ; $777a: $b4
	and  e                                           ; $777b: $a3
	db   $eb                                         ; $777c: $eb
	ld   bc, $fa08                                   ; $777d: $01 $08 $fa
	dec  c                                           ; $7780: $0d
	nop                                              ; $7781: $00
	ld   a, [bc]                                     ; $7782: $0a
	inc  e                                           ; $7783: $1c
	inc  b                                           ; $7784: $04
	nop                                              ; $7785: $00
	nop                                              ; $7786: $00
	ld   de, $0100                                   ; $7787: $11 $00 $01
	db   $eb                                         ; $778a: $eb
	rst  $38                                         ; $778b: $ff
	rst  $38                                         ; $778c: $ff
	rst  $38                                         ; $778d: $ff
	rst  $38                                         ; $778e: $ff
	rst  $38                                         ; $778f: $ff
	rst  $38                                         ; $7790: $ff
	rst  $38                                         ; $7791: $ff
	rst  $38                                         ; $7792: $ff
	rst  $38                                         ; $7793: $ff
	rst  $38                                         ; $7794: $ff
	rst  $38                                         ; $7795: $ff
	dec  c                                           ; $7796: $0d
	nop                                              ; $7797: $00
	ld   de, $01ff                                   ; $7798: $11 $ff $01
	rst  $38                                         ; $779b: $ff
	rst  $38                                         ; $779c: $ff
	rst  $38                                         ; $779d: $ff
	rst  $38                                         ; $779e: $ff
	rst  $38                                         ; $779f: $ff
	rst  $38                                         ; $77a0: $ff
	rst  $38                                         ; $77a1: $ff
	rst  $38                                         ; $77a2: $ff
	rst  $38                                         ; $77a3: $ff
	rst  $38                                         ; $77a4: $ff
	rst  $38                                         ; $77a5: $ff
	rst  $38                                         ; $77a6: $ff
	dec  c                                           ; $77a7: $0d
	ld   bc, $eb07                                   ; $77a8: $01 $07 $eb
	rst  JumpTable                                         ; $77ab: $df
	ld   bc, $fa08                                   ; $77ac: $01 $08 $fa
	dec  c                                           ; $77af: $0d
	nop                                              ; $77b0: $00
	ld   a, [bc]                                     ; $77b1: $0a
	rrca                                             ; $77b2: $0f
	nop                                              ; $77b3: $00
	ld   bc, $0101                                   ; $77b4: $01 $01 $01
	inc  bc                                          ; $77b7: $03
	rst  JumpTable                                         ; $77b8: $df
	rst  $38                                         ; $77b9: $ff
	rst  $38                                         ; $77ba: $ff
	adc  h                                           ; $77bb: $8c
	ld   l, l                                        ; $77bc: $6d
	ld   bc, $df07                                   ; $77bd: $01 $07 $df
	ld   bc, $5908                                   ; $77c0: $01 $08 $59
	sub  [hl]                                        ; $77c3: $96
	rst  $38                                         ; $77c4: $ff
	rst  $38                                         ; $77c5: $ff
	dec  c                                           ; $77c6: $0d
	db   $10                                         ; $77c7: $10
	sub  b                                           ; $77c8: $90
	ld   d, h                                        ; $77c9: $54
	adc  $c0                                         ; $77ca: $ce $c0
	inc  b                                           ; $77cc: $04
	sub  $52                                         ; $77cd: $d6 $52
	sub  [hl]                                        ; $77cf: $96
	rst  $38                                         ; $77d0: $ff
	rst  $38                                         ; $77d1: $ff
	ld   bc, $0d04                                   ; $77d2: $01 $04 $0d
	nop                                              ; $77d5: $00
	ld   a, [bc]                                     ; $77d6: $0a
	add  hl, de                                      ; $77d7: $19
	dec  b                                           ; $77d8: $05
	inc  bc                                          ; $77d9: $03
	rst  JumpTable                                         ; $77da: $df
	push af                                          ; $77db: $f5
	jp   z, $edec                                    ; $77dc: $ca $ec $ed

	nop                                              ; $77df: $00
	nop                                              ; $77e0: $00
	rst  JumpTable                                         ; $77e1: $df
	push af                                          ; $77e2: $f5
	db   $dd                                         ; $77e3: $dd
	and  a                                           ; $77e4: $a7
	nop                                              ; $77e5: $00
	ld   bc, $f5df                                   ; $77e6: $01 $df $f5
	or   l                                           ; $77e9: $b5
	ei                                               ; $77ea: $fb
	nop                                              ; $77eb: $00
	ld   [bc], a                                     ; $77ec: $02
	rlca                                             ; $77ed: $07
	rst  $28                                         ; $77ee: $ef
	dec  b                                           ; $77ef: $05
	ld   [bc], a                                     ; $77f0: $02
	inc  bc                                          ; $77f1: $03
	ld   bc, $2000                                   ; $77f2: $01 $00 $20
	nop                                              ; $77f5: $00
	rlca                                             ; $77f6: $07
	ei                                               ; $77f7: $fb
	inc  b                                           ; $77f8: $04
	ld   [bc], a                                     ; $77f9: $02
	inc  bc                                          ; $77fa: $03
	ld   bc, $2001                                   ; $77fb: $01 $01 $20
	nop                                              ; $77fe: $00
	rlca                                             ; $77ff: $07
	ei                                               ; $7800: $fb
	inc  b                                           ; $7801: $04
	ld   [bc], a                                     ; $7802: $02
	inc  bc                                          ; $7803: $03
	ld   bc, $2002                                   ; $7804: $01 $02 $20
	nop                                              ; $7807: $00
	ld   b, $2e                                      ; $7808: $06 $2e
	inc  b                                           ; $780a: $04
	rrca                                             ; $780b: $0f
	nop                                              ; $780c: $00
	ld   bc, $0101                                   ; $780d: $01 $01 $01
	rlca                                             ; $7810: $07
	rst  JumpTable                                         ; $7811: $df
	push af                                          ; $7812: $f5
	jp   z, $edec                                    ; $7813: $ca $ec $ed

	ld   bc, $fa08                                   ; $7816: $01 $08 $fa
	dec  c                                           ; $7819: $0d
	nop                                              ; $781a: $00
	ld   a, [bc]                                     ; $781b: $0a
	inc  e                                           ; $781c: $1c
	inc  b                                           ; $781d: $04
	nop                                              ; $781e: $00
	nop                                              ; $781f: $00
	ld   de, $0100                                   ; $7820: $11 $00 $01
	ld   bc, $ed07                                   ; $7823: $01 $07 $ed
	ld   bc, $f908                                   ; $7826: $01 $08 $f9
	dec  c                                           ; $7829: $0d
	ld   d, [hl]                                     ; $782a: $56
	rst  $38                                         ; $782b: $ff
	rst  $38                                         ; $782c: $ff
	halt                                             ; $782d: $76
	ld   bc, $ed07                                   ; $782e: $01 $07 $ed
	ld   bc, $ff08                                   ; $7831: $01 $08 $ff
	rst  $38                                         ; $7834: $ff
	dec  c                                           ; $7835: $0d
	rst  $38                                         ; $7836: $ff
	rst  $38                                         ; $7837: $ff
	rst  $38                                         ; $7838: $ff
	rst  $38                                         ; $7839: $ff
	rst  $38                                         ; $783a: $ff
	rst  $38                                         ; $783b: $ff
	rst  $38                                         ; $783c: $ff
	rst  $38                                         ; $783d: $ff
	rst  $38                                         ; $783e: $ff
	rst  $38                                         ; $783f: $ff
	rst  $38                                         ; $7840: $ff
	rst  $38                                         ; $7841: $ff
	dec  c                                           ; $7842: $0d
	nop                                              ; $7843: $00
	ld   a, [bc]                                     ; $7844: $0a
	ld   de, $01ff                                   ; $7845: $11 $ff $01
	ld   d, h                                        ; $7848: $54
	db   $fc                                         ; $7849: $fc
	and  c                                           ; $784a: $a1
	rst  $38                                         ; $784b: $ff
	rst  $38                                         ; $784c: $ff
	dec  c                                           ; $784d: $0d
	sbc  l                                           ; $784e: $9d
	ld   e, c                                        ; $784f: $59
	and  c                                           ; $7850: $a1
	ld   a, b                                        ; $7851: $78
	ld   d, d                                        ; $7852: $52
	sub  d                                           ; $7853: $92
	db   $fc                                         ; $7854: $fc
	sbc  a                                           ; $7855: $9f
	dec  c                                           ; $7856: $0d
	nop                                              ; $7857: $00
	ld   a, [bc]                                     ; $7858: $0a
	inc  e                                           ; $7859: $1c
	inc  b                                           ; $785a: $04
	dec  b                                           ; $785b: $05
	dec  b                                           ; $785c: $05
	ld   bc, $d9a9                                   ; $785d: $01 $a9 $d9
	reti                                             ; $7860: $d9


	rst  $38                                         ; $7861: $ff
	rst  $38                                         ; $7862: $ff
	dec  c                                           ; $7863: $0d
	and  e                                           ; $7864: $a3
	and  l                                           ; $7865: $a5
	db   $ec                                         ; $7866: $ec
	cp   d                                           ; $7867: $ba
	sbc  [hl]                                        ; $7868: $9e
	adc  h                                           ; $7869: $8c
	ld   e, a                                        ; $786a: $5f
	ld   l, a                                        ; $786b: $6f
	sub  c                                           ; $786c: $91
	ld   [hl], c                                     ; $786d: $71
	ld   l, l                                        ; $786e: $6d
	rst  $38                                         ; $786f: $ff
	rst  $38                                         ; $7870: $ff
	dec  c                                           ; $7871: $0d
	nop                                              ; $7872: $00
	ld   a, [bc]                                     ; $7873: $0a
	inc  e                                           ; $7874: $1c
	inc  b                                           ; $7875: $04
	ld   bc, $1d01                                   ; $7876: $01 $01 $1d
	ld   b, b                                        ; $7879: $40
	inc  d                                           ; $787a: $14
	inc  bc                                          ; $787b: $03
	inc  d                                           ; $787c: $14
	ld   bc, $2803                                   ; $787d: $01 $03 $28
	nop                                              ; $7880: $00
	ld   bc, $9075                                   ; $7881: $01 $75 $90
	sbc  [hl]                                        ; $7884: $9e
	ld   h, a                                        ; $7885: $67
	ld   h, d                                        ; $7886: $62
	ld   e, l                                        ; $7887: $5d
	ld   l, l                                        ; $7888: $6d
	ld   a, h                                        ; $7889: $7c
	ld   h, l                                        ; $788a: $65
	ld   e, c                                        ; $788b: $59
	ld   [hl], c                                     ; $788c: $71
	ld   l, l                                        ; $788d: $6d
	sub  [hl]                                        ; $788e: $96
	sbc  a                                           ; $788f: $9f
	dec  c                                           ; $7890: $0d
	nop                                              ; $7891: $00
	ld   a, [bc]                                     ; $7892: $0a
	dec  c                                           ; $7893: $0d
	nop                                              ; $7894: $00
	nop                                              ; $7895: $00
	rrca                                             ; $7896: $0f
	nop                                              ; $7897: $00
	ld   bc, $a406                                   ; $7898: $01 $06 $a4
	ld   b, $1c                                      ; $789b: $06 $1c
	inc  b                                           ; $789d: $04
	ld   bc, $1d01                                   ; $789e: $01 $01 $1d
	ld   b, b                                        ; $78a1: $40
	inc  d                                           ; $78a2: $14
	inc  bc                                          ; $78a3: $03
	inc  d                                           ; $78a4: $14
	ld   bc, $2802                                   ; $78a5: $01 $02 $28
	nop                                              ; $78a8: $00
	ld   bc, $fb50                                   ; $78a9: $01 $50 $fb
	ld   e, b                                        ; $78ac: $58
	sub  b                                           ; $78ad: $90
	ld   h, l                                        ; $78ae: $65
	sbc  e                                           ; $78af: $9b
	ld   e, c                                        ; $78b0: $59
	ld   [hl], c                                     ; $78b1: $71
	ld   l, l                                        ; $78b2: $6d
	sbc  a                                           ; $78b3: $9f
	dec  c                                           ; $78b4: $0d
	nop                                              ; $78b5: $00
	ld   a, [bc]                                     ; $78b6: $0a
	dec  c                                           ; $78b7: $0d
	nop                                              ; $78b8: $00
	nop                                              ; $78b9: $00
	rrca                                             ; $78ba: $0f
	nop                                              ; $78bb: $00
	ld   bc, $a406                                   ; $78bc: $01 $06 $a4
	ld   b, $23                                      ; $78bf: $06 $23
	ld   a, a                                        ; $78c1: $7f
	inc  e                                           ; $78c2: $1c
	inc  b                                           ; $78c3: $04
	inc  bc                                          ; $78c4: $03
	inc  bc                                          ; $78c5: $03
	ld   bc, $567b                                   ; $78c6: $01 $7b $56
	sbc  [hl]                                        ; $78c9: $9e
	ld   l, a                                        ; $78ca: $6f
	sub  l                                           ; $78cb: $95
	ld   [hl], c                                     ; $78cc: $71
	halt                                             ; $78cd: $76
	ld   e, e                                        ; $78ce: $5b
	ld   d, d                                        ; $78cf: $52
	ld   [hl], h                                     ; $78d0: $74
	sub  b                                           ; $78d1: $90
	dec  c                                           ; $78d2: $0d
	ld   d, d                                        ; $78d3: $52
	ld   d, d                                        ; $78d4: $52
	ld   sp, hl                                      ; $78d5: $f9
	dec  c                                           ; $78d6: $0d
	nop                                              ; $78d7: $00
	ld   a, [bc]                                     ; $78d8: $0a
	ld   bc, $526f                                   ; $78d9: $01 $6f $52
	ld   [bc], a                                     ; $78dc: $02
	inc  de                                          ; $78dd: $13
	ld   l, a                                        ; $78de: $6f
	sub  c                                           ; $78df: $91
	and  c                                           ; $78e0: $a1
	ld   a, l                                        ; $78e1: $7d
	dec  c                                           ; $78e2: $0d
	and  e                                           ; $78e3: $a3
	and  l                                           ; $78e4: $a5
	db   $ec                                         ; $78e5: $ec
	cp   d                                           ; $78e6: $ba
	ld   a, h                                        ; $78e7: $7c
	ld   h, c                                        ; $78e8: $61
	halt                                             ; $78e9: $76
	sbc  [hl]                                        ; $78ea: $9e
	ld   [hl], a                                     ; $78eb: $77
	ld   d, h                                        ; $78ec: $54
	ld   e, b                                        ; $78ed: $58
	sub  b                                           ; $78ee: $90
	ld   d, h                                        ; $78ef: $54
	ld   sp, hl                                      ; $78f0: $f9
	dec  c                                           ; $78f1: $0d
	nop                                              ; $78f2: $00
	ld   a, [bc]                                     ; $78f3: $0a
	add  hl, de                                      ; $78f4: $19
	dec  b                                           ; $78f5: $05
	inc  bc                                          ; $78f6: $03
	ld   e, c                                        ; $78f7: $59
	sbc  l                                           ; $78f8: $9d
	ld   d, d                                        ; $78f9: $52
	ld   d, d                                        ; $78fa: $52
	nop                                              ; $78fb: $00
	nop                                              ; $78fc: $00
	ld   h, a                                        ; $78fd: $67
	ld   h, d                                        ; $78fe: $62
	ld   d, d                                        ; $78ff: $52
	inc  bc                                          ; $7900: $03
	rst  $38                                         ; $7901: $ff
	inc  b                                           ; $7902: $04
	ld   b, e                                        ; $7903: $43
	dec  b                                           ; $7904: $05
	ld   a, [bc]                                     ; $7905: $0a
	inc  bc                                          ; $7906: $03
	or   b                                           ; $7907: $b0
	nop                                              ; $7908: $00
	ld   bc, $956f                                   ; $7909: $01 $6f $95
	ld   [hl], c                                     ; $790c: $71
	halt                                             ; $790d: $76
	pop  af                                          ; $790e: $f1
	xor  l                                           ; $790f: $ad
	rst  JumpTable                                         ; $7910: $df
	rst  JumpTable                                         ; $7911: $df
	nop                                              ; $7912: $00
	ld   [bc], a                                     ; $7913: $02
	rlca                                             ; $7914: $07
	and  h                                           ; $7915: $a4
	rlca                                             ; $7916: $07
	ld   [bc], a                                     ; $7917: $02
	inc  bc                                          ; $7918: $03
	ld   bc, $2000                                   ; $7919: $01 $00 $20
	nop                                              ; $791c: $00
	rlca                                             ; $791d: $07
	db   $f4                                         ; $791e: $f4
	rlca                                             ; $791f: $07
	ld   [bc], a                                     ; $7920: $02
	inc  bc                                          ; $7921: $03
	ld   bc, $2001                                   ; $7922: $01 $01 $20
	nop                                              ; $7925: $00
	rlca                                             ; $7926: $07
	dec  a                                           ; $7927: $3d
	ld   [$0302], sp                                 ; $7928: $08 $02 $03
	ld   bc, $2002                                   ; $792b: $01 $02 $20
	nop                                              ; $792e: $00
	ld   b, $16                                      ; $792f: $06 $16
	rlca                                             ; $7931: $07
	inc  e                                           ; $7932: $1c
	inc  b                                           ; $7933: $04
	rlca                                             ; $7934: $07
	rlca                                             ; $7935: $07
	ld   bc, $fc83                                   ; $7936: $01 $83 $fc
	and  c                                           ; $7939: $a1
	sbc  a                                           ; $793a: $9f
	sbc  l                                           ; $793b: $9d
	ld   e, c                                        ; $793c: $59
	and  c                                           ; $793d: $a1
	ld   a, b                                        ; $793e: $78
	ld   d, d                                        ; $793f: $52
	and  c                                           ; $7940: $a1
	ld   l, [hl]                                     ; $7941: $6e
	rst  $38                                         ; $7942: $ff
	rst  $38                                         ; $7943: $ff
	dec  c                                           ; $7944: $0d
	and  e                                           ; $7945: $a3
	and  l                                           ; $7946: $a5
	db   $ec                                         ; $7947: $ec
	cp   d                                           ; $7948: $ba
	ld   a, h                                        ; $7949: $7c
	ld   h, c                                        ; $794a: $61
	halt                                             ; $794b: $76
	ld   a, b                                        ; $794c: $78
	and  c                                           ; $794d: $a1
	ld   e, c                                        ; $794e: $59
	dec  c                                           ; $794f: $0d
	ld   [hl], a                                     ; $7950: $77
	ld   d, h                                        ; $7951: $54
	ld   [hl], l                                     ; $7952: $75
	sub  b                                           ; $7953: $90
	ld   d, d                                        ; $7954: $52
	ld   d, d                                        ; $7955: $52
	and  c                                           ; $7956: $a1
	ld   l, [hl]                                     ; $7957: $6e
	rst  $38                                         ; $7958: $ff
	rst  $38                                         ; $7959: $ff
	dec  c                                           ; $795a: $0d
	nop                                              ; $795b: $00
	ld   a, [bc]                                     ; $795c: $0a
	inc  e                                           ; $795d: $1c
	inc  b                                           ; $795e: $04
	ld   [bc], a                                     ; $795f: $02
	ld   [bc], a                                     ; $7960: $02
	ld   bc, $5490                                   ; $7961: $01 $90 $54
	ld   d, d                                        ; $7964: $52
	ld   d, d                                        ; $7965: $52
	sub  [hl]                                        ; $7966: $96
	ld   a, [$6f0d]                                  ; $7967: $fa $0d $6f
	ld   d, d                                        ; $796a: $52
	ld   [bc], a                                     ; $796b: $02
	inc  de                                          ; $796c: $13
	ld   l, a                                        ; $796d: $6f
	sub  c                                           ; $796e: $91
	and  c                                           ; $796f: $a1
	sub  b                                           ; $7970: $90
	xor  [hl]                                        ; $7971: $ae
	db   $eb                                         ; $7972: $eb
	and  l                                           ; $7973: $a5
	ld   l, [hl]                                     ; $7974: $6e
	ld   a, [$000d]                                  ; $7975: $fa $0d $00
	dec  b                                           ; $7978: $05
	ld   b, b                                        ; $7979: $40
	ld   c, e                                        ; $797a: $4b
	ld   [bc], a                                     ; $797b: $02
	nop                                              ; $797c: $00
	nop                                              ; $797d: $00
	dec  b                                           ; $797e: $05
	ld   b, b                                        ; $797f: $40
	ld   d, c                                        ; $7980: $51
	ld   bc, $0001                                   ; $7981: $01 $01 $00
	ld   bc, $a5d1                                   ; $7984: $01 $d1 $a5
	pop  de                                          ; $7987: $d1
	and  l                                           ; $7988: $a5
	ld   a, [$000d]                                  ; $7989: $fa $0d $00
	ld   a, [bc]                                     ; $798c: $0a
	dec  c                                           ; $798d: $0d
	nop                                              ; $798e: $00
	nop                                              ; $798f: $00
	rrca                                             ; $7990: $0f
	nop                                              ; $7991: $00
	ld   bc, $1e09                                   ; $7992: $01 $09 $1e
	ld   bc, $7150                                   ; $7995: $01 $50 $71
	rst  $38                                         ; $7998: $ff
	ld   [bc], a                                     ; $7999: $02
	ld   a, a                                        ; $799a: $7f
	ld   [hl], c                                     ; $799b: $71
	ld   l, a                                        ; $799c: $6f
	sub  c                                           ; $799d: $91
	ld   [hl], c                                     ; $799e: $71
	ld   l, l                                        ; $799f: $6d
	rst  $38                                         ; $79a0: $ff
	rst  $38                                         ; $79a1: $ff
	dec  c                                           ; $79a2: $0d
	ld   a, b                                        ; $79a3: $78
	and  c                                           ; $79a4: $a1
	ld   l, [hl]                                     ; $79a5: $6e
	ld   [hl], c                                     ; $79a6: $71
	ld   l, l                                        ; $79a7: $6d
	and  c                                           ; $79a8: $a1
	ld   l, [hl]                                     ; $79a9: $6e
	sbc  e                                           ; $79aa: $9b
	ld   d, h                                        ; $79ab: $54
	ld   sp, hl                                      ; $79ac: $f9
	dec  c                                           ; $79ad: $0d
	ld   [bc], a                                     ; $79ae: $02
	and  l                                           ; $79af: $a5
	inc  b                                           ; $79b0: $04
	xor  d                                           ; $79b1: $aa
	ld   a, h                                        ; $79b2: $7c
	and  e                                           ; $79b3: $a3
	and  l                                           ; $79b4: $a5
	db   $ec                                         ; $79b5: $ec
	cp   d                                           ; $79b6: $ba
	ld   a, l                                        ; $79b7: $7d
	rst  $38                                         ; $79b8: $ff
	rst  $38                                         ; $79b9: $ff
	dec  c                                           ; $79ba: $0d
	nop                                              ; $79bb: $00
	ld   a, [bc]                                     ; $79bc: $0a
	add  hl, hl                                      ; $79bd: $29
	ld   [$0f00], sp                                 ; $79be: $08 $00 $0f
	nop                                              ; $79c1: $00
	ld   bc, $5901                                   ; $79c2: $01 $01 $59
	sbc  l                                           ; $79c5: $9d
	ld   d, d                                        ; $79c6: $52
	ld   d, d                                        ; $79c7: $52
	halt                                             ; $79c8: $76
	dec  b                                           ; $79c9: $05
	pop  de                                          ; $79ca: $d1
	ld   d, h                                        ; $79cb: $54
	sub  [hl]                                        ; $79cc: $96
	sbc  a                                           ; $79cd: $9f
	dec  c                                           ; $79ce: $0d
	sub  b                                           ; $79cf: $90
	ld   a, h                                        ; $79d0: $7c
	ld   h, a                                        ; $79d1: $67
	ld   h, d                                        ; $79d2: $62
	ld   e, l                                        ; $79d3: $5d
	ld   a, e                                        ; $79d4: $7b
	sbc  a                                           ; $79d5: $9f
	dec  c                                           ; $79d6: $0d
	nop                                              ; $79d7: $00
	ld   a, [bc]                                     ; $79d8: $0a
	inc  e                                           ; $79d9: $1c
	inc  b                                           ; $79da: $04
	ld   bc, $1d01                                   ; $79db: $01 $01 $1d
	ld   b, b                                        ; $79de: $40
	inc  d                                           ; $79df: $14
	inc  bc                                          ; $79e0: $03
	inc  d                                           ; $79e1: $14
	ld   bc, $2801                                   ; $79e2: $01 $01 $28
	nop                                              ; $79e5: $00
	ld   bc, $d9a9                                   ; $79e6: $01 $a9 $d9
	reti                                             ; $79e9: $d9


	rst  $38                                         ; $79ea: $ff
	rst  $38                                         ; $79eb: $ff
	ld   d, b                                        ; $79ec: $50
	sbc  b                                           ; $79ed: $98
	ld   e, d                                        ; $79ee: $5a
	halt                                             ; $79ef: $76
	sbc  a                                           ; $79f0: $9f
	dec  c                                           ; $79f1: $0d
	nop                                              ; $79f2: $00
	inc  e                                           ; $79f3: $1c
	inc  b                                           ; $79f4: $04
	inc  bc                                          ; $79f5: $03
	inc  bc                                          ; $79f6: $03
	ld   bc, $9075                                   ; $79f7: $01 $75 $90
	rst  $38                                         ; $79fa: $ff
	rst  $38                                         ; $79fb: $ff
	dec  c                                           ; $79fc: $0d
	ld   h, c                                        ; $79fd: $61
	ld   [hl], a                                     ; $79fe: $77
	sub  b                                           ; $79ff: $90
	ld   d, b                                        ; $7a00: $50
	ld   [hl], d                                     ; $7a01: $72
	ld   e, c                                        ; $7a02: $59
	ld   d, d                                        ; $7a03: $52
	ld   a, l                                        ; $7a04: $7d
	ld   d, d                                        ; $7a05: $52
	sub  d                                           ; $7a06: $92
	ld   l, [hl]                                     ; $7a07: $6e
	sub  [hl]                                        ; $7a08: $96
	sbc  a                                           ; $7a09: $9f
	dec  c                                           ; $7a0a: $0d
	nop                                              ; $7a0b: $00
	ld   a, [bc]                                     ; $7a0c: $0a
	ld   b, $e1                                      ; $7a0d: $06 $e1
	ld   [$000f], sp                                 ; $7a0f: $08 $0f $00
	ld   bc, $6701                                   ; $7a12: $01 $01 $67
	ld   h, d                                        ; $7a15: $62
	ld   d, d                                        ; $7a16: $52
	inc  bc                                          ; $7a17: $03
	rst  $38                                         ; $7a18: $ff
	inc  b                                           ; $7a19: $04
	ld   b, e                                        ; $7a1a: $43
	dec  b                                           ; $7a1b: $05
	ld   a, [bc]                                     ; $7a1c: $0a
	inc  bc                                          ; $7a1d: $03
	or   b                                           ; $7a1e: $b0
	ld   a, [$ac0d]                                  ; $7a1f: $fa $0d $ac
	call nz, $a5b4                                   ; $7a22: $c4 $b4 $a5
	and  l                                           ; $7a25: $a5
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $7a26: $fa $10 $0d
	nop                                              ; $7a29: $00
	ld   a, [bc]                                     ; $7a2a: $0a
	inc  e                                           ; $7a2b: $1c
	inc  b                                           ; $7a2c: $04
	ld   b, $06                                      ; $7a2d: $06 $06
	ld   bc, $c4ac                                   ; $7a2f: $01 $ac $c4
	or   h                                           ; $7a32: $b4
	and  l                                           ; $7a33: $a5
	and  l                                           ; $7a34: $a5
	ld   sp, hl                                      ; $7a35: $f9
	dec  c                                           ; $7a36: $0d
	add  e                                           ; $7a37: $83
	db   $fc                                         ; $7a38: $fc
	and  c                                           ; $7a39: $a1
	sbc  [hl]                                        ; $7a3a: $9e
	and  e                                           ; $7a3b: $a3
	and  l                                           ; $7a3c: $a5
	db   $ec                                         ; $7a3d: $ec
	cp   d                                           ; $7a3e: $ba
	sbc  [hl]                                        ; $7a3f: $9e
	xor  h                                           ; $7a40: $ac
	call nz, $a5b4                                   ; $7a41: $c4 $b4 $a5
	and  l                                           ; $7a44: $a5
	dec  c                                           ; $7a45: $0d
	and  c                                           ; $7a46: $a1
	ld   l, [hl]                                     ; $7a47: $6e
	rst  $38                                         ; $7a48: $ff
	rst  $38                                         ; $7a49: $ff
	adc  h                                           ; $7a4a: $8c
	ld   d, b                                        ; $7a4b: $50
	sbc  [hl]                                        ; $7a4c: $9e
	ld   d, d                                        ; $7a4d: $52
	ld   d, d                                        ; $7a4e: $52
	ld   e, a                                        ; $7a4f: $5f
	ld   [hl], a                                     ; $7a50: $77
	rst  $38                                         ; $7a51: $ff
	rst  $38                                         ; $7a52: $ff
	dec  c                                           ; $7a53: $0d
	nop                                              ; $7a54: $00
	ld   a, [bc]                                     ; $7a55: $0a
	ld   b, $e1                                      ; $7a56: $06 $e1
	ld   [$000f], sp                                 ; $7a58: $08 $0f $00
	ld   bc, $6f01                                   ; $7a5b: $01 $01 $6f
	sub  l                                           ; $7a5e: $95
	ld   [hl], c                                     ; $7a5f: $71
	halt                                             ; $7a60: $76
	pop  af                                          ; $7a61: $f1
	xor  l                                           ; $7a62: $ad
	rst  JumpTable                                         ; $7a63: $df
	rst  JumpTable                                         ; $7a64: $df
	ld   l, [hl]                                     ; $7a65: $6e
	halt                                             ; $7a66: $76
	dec  c                                           ; $7a67: $0d
	dec  b                                           ; $7a68: $05
	pop  de                                          ; $7a69: $d1
	ld   d, h                                        ; $7a6a: $54
	ld   a, b                                        ; $7a6b: $78
	sbc  a                                           ; $7a6c: $9f
	ld   [bc], a                                     ; $7a6d: $02
	and  l                                           ; $7a6e: $a5
	inc  b                                           ; $7a6f: $04
	xor  d                                           ; $7a70: $aa
	ld   l, [hl]                                     ; $7a71: $6e
	ld   [hl], c                                     ; $7a72: $71
	ld   [hl], h                                     ; $7a73: $74
	sbc  [hl]                                        ; $7a74: $9e
	inc  b                                           ; $7a75: $04
	ld   l, l                                        ; $7a76: $6d
	ld   a, l                                        ; $7a77: $7d
	dec  c                                           ; $7a78: $0d
	inc  bc                                          ; $7a79: $03
	ld   l, l                                        ; $7a7a: $6d
	dec  b                                           ; $7a7b: $05
	add  hl, de                                      ; $7a7c: $19
	ld   e, d                                        ; $7a7d: $5a
	ld   d, b                                        ; $7a7e: $50
	ld   [hl], c                                     ; $7a7f: $71
	ld   l, l                                        ; $7a80: $6d
	and  c                                           ; $7a81: $a1
	ld   l, [hl]                                     ; $7a82: $6e
	sub  [hl]                                        ; $7a83: $96
	sbc  a                                           ; $7a84: $9f
	dec  c                                           ; $7a85: $0d
	nop                                              ; $7a86: $00
	ld   a, [bc]                                     ; $7a87: $0a
	ld   bc, $a5a3                                   ; $7a88: $01 $a3 $a5
	db   $ec                                         ; $7a8b: $ec
	cp   d                                           ; $7a8c: $ba
	sub  b                                           ; $7a8d: $90
	inc  b                                           ; $7a8e: $04
	ld   c, $03                                      ; $7a8f: $0e $03
	add  d                                           ; $7a91: $82
	ld   l, [hl]                                     ; $7a92: $6e
	ld   [hl], c                                     ; $7a93: $71
	ld   [hl], h                                     ; $7a94: $74
	ld   [bc], a                                     ; $7a95: $02
	sbc  l                                           ; $7a96: $9d
	ld   d, h                                        ; $7a97: $54
	and  c                                           ; $7a98: $a1
	dec  c                                           ; $7a99: $0d
	ld   a, b                                        ; $7a9a: $78
	sub  a                                           ; $7a9b: $97
	sbc  [hl]                                        ; $7a9c: $9e
	adc  h                                           ; $7a9d: $8c
	sbc  l                                           ; $7a9e: $9d
	sbc  b                                           ; $7a9f: $98
	ld   a, h                                        ; $7aa0: $7c
	inc  bc                                          ; $7aa1: $03
	add  d                                           ; $7aa2: $82
	ld   a, h                                        ; $7aa3: $7c
	ld   h, c                                        ; $7aa4: $61
	halt                                             ; $7aa5: $76
	and  b                                           ; $7aa6: $a0
	dec  c                                           ; $7aa7: $0d
	ld   [bc], a                                     ; $7aa8: $02
	ld   h, l                                        ; $7aa9: $65
	ld   d, [hl]                                     ; $7aaa: $56
	ld   [hl], h                                     ; $7aab: $74
	ld   [bc], a                                     ; $7aac: $02
	ld   a, a                                        ; $7aad: $7f
	inc  b                                           ; $7aae: $04
	dec  de                                          ; $7aaf: $1b
	ld   h, l                                        ; $7ab0: $65
	ld   a, b                                        ; $7ab1: $78
	ld   e, e                                        ; $7ab2: $5b
	sub  c                                           ; $7ab3: $91
	ld   a, e                                        ; $7ab4: $7b
	sbc  a                                           ; $7ab5: $9f
	dec  c                                           ; $7ab6: $0d
	nop                                              ; $7ab7: $00
	ld   a, [bc]                                     ; $7ab8: $0a
	inc  e                                           ; $7ab9: $1c
	inc  b                                           ; $7aba: $04
	inc  b                                           ; $7abb: $04
	inc  b                                           ; $7abc: $04
	ld   bc, $ffff                                   ; $7abd: $01 $ff $ff
	ld   h, d                                        ; $7ac0: $62
	adc  a                                           ; $7ac1: $8f
	and  c                                           ; $7ac2: $a1
	ld   a, e                                        ; $7ac3: $7b
	sbc  a                                           ; $7ac4: $9f
	dec  c                                           ; $7ac5: $0d
	ld   l, a                                        ; $7ac6: $6f
	ld   d, d                                        ; $7ac7: $52
	ld   [bc], a                                     ; $7ac8: $02
	inc  de                                          ; $7ac9: $13
	ld   l, a                                        ; $7aca: $6f
	sub  c                                           ; $7acb: $91
	and  c                                           ; $7acc: $a1
	rst  $38                                         ; $7acd: $ff
	rst  $38                                         ; $7ace: $ff
	dec  c                                           ; $7acf: $0d
	nop                                              ; $7ad0: $00
	ld   a, [bc]                                     ; $7ad1: $0a
	rrca                                             ; $7ad2: $0f
	nop                                              ; $7ad3: $00
	ld   bc, $7501                                   ; $7ad4: $01 $01 $75
	sub  b                                           ; $7ad7: $90
	adc  h                                           ; $7ad8: $8c
	ld   d, b                                        ; $7ad9: $50
	sbc  [hl]                                        ; $7ada: $9e
	ld   l, l                                        ; $7adb: $6d
	adc  h                                           ; $7adc: $8c
	ld   a, h                                        ; $7add: $7c
	ld   [bc], a                                     ; $7ade: $02
	and  c                                           ; $7adf: $a1
	dec  b                                           ; $7ae0: $05
	call nc, Call_053_6597                           ; $7ae1: $d4 $97 $65
	ld   a, c                                        ; $7ae4: $79
	dec  c                                           ; $7ae5: $0d
	ld   h, c                                        ; $7ae6: $61
	ld   d, h                                        ; $7ae7: $54
	ld   d, d                                        ; $7ae8: $52
	ld   d, h                                        ; $7ae9: $54
	ld   a, h                                        ; $7aea: $7c
	sub  b                                           ; $7aeb: $90
	dec  c                                           ; $7aec: $0d
	ld   d, d                                        ; $7aed: $52
	ld   d, d                                        ; $7aee: $52
	ld   e, c                                        ; $7aef: $59
	sub  b                                           ; $7af0: $90
	ld   h, l                                        ; $7af1: $65
	sbc  d                                           ; $7af2: $9a
	ld   a, b                                        ; $7af3: $78
	ld   d, d                                        ; $7af4: $52
	ld   a, e                                        ; $7af5: $7b
	sbc  a                                           ; $7af6: $9f
	dec  c                                           ; $7af7: $0d
	nop                                              ; $7af8: $00
	ld   a, [bc]                                     ; $7af9: $0a
	ld   b, $e1                                      ; $7afa: $06 $e1
	ld   [$041c], sp                                 ; $7afc: $08 $1c $04
	inc  bc                                          ; $7aff: $03
	inc  bc                                          ; $7b00: $03
	ld   bc, $7c50                                   ; $7b01: $01 $50 $7c
	ld   a, e                                        ; $7b04: $7b
	sbc  [hl]                                        ; $7b05: $9e
	ld   l, a                                        ; $7b06: $6f
	ld   d, d                                        ; $7b07: $52
	ld   [bc], a                                     ; $7b08: $02
	inc  de                                          ; $7b09: $13
	ld   l, a                                        ; $7b0a: $6f
	sub  c                                           ; $7b0b: $91
	and  c                                           ; $7b0c: $a1
	rst  $38                                         ; $7b0d: $ff
	rst  $38                                         ; $7b0e: $ff
	dec  c                                           ; $7b0f: $0d
	ld   e, e                                        ; $7b10: $5b
	sub  l                                           ; $7b11: $95
	ld   d, h                                        ; $7b12: $54
	ld   a, e                                        ; $7b13: $7b
	sbc  [hl]                                        ; $7b14: $9e
	and  e                                           ; $7b15: $a3
	and  l                                           ; $7b16: $a5
	db   $ec                                         ; $7b17: $ec
	cp   d                                           ; $7b18: $ba
	dec  c                                           ; $7b19: $0d
	ld   l, a                                        ; $7b1a: $6f
	sub  l                                           ; $7b1b: $95
	ld   [hl], c                                     ; $7b1c: $71
	halt                                             ; $7b1d: $76
	sbc  [hl]                                        ; $7b1e: $9e
	ld   a, e                                        ; $7b1f: $7b
	adc  d                                           ; $7b20: $8a
	ld   d, h                                        ; $7b21: $54
	ld   h, l                                        ; $7b22: $65
	ld   [hl], h                                     ; $7b23: $74
	ld   a, e                                        ; $7b24: $7b
	rst  $38                                         ; $7b25: $ff
	rst  $38                                         ; $7b26: $ff
	dec  c                                           ; $7b27: $0d
	nop                                              ; $7b28: $00
	ld   a, [bc]                                     ; $7b29: $0a
	ld   bc, $6d84                                   ; $7b2a: $01 $84 $6d
	ld   d, d                                        ; $7b2d: $52
	ld   a, h                                        ; $7b2e: $7c
	sbc  [hl]                                        ; $7b2f: $9e
	ld   d, b                                        ; $7b30: $50
	ld   h, e                                        ; $7b31: $63
	sbc  d                                           ; $7b32: $9a
	and  c                                           ; $7b33: $a1
	ld   h, l                                        ; $7b34: $65
	sub  e                                           ; $7b35: $93
	ld   d, h                                        ; $7b36: $54
	and  b                                           ; $7b37: $a0
	dec  c                                           ; $7b38: $0d
	sub  d                                           ; $7b39: $92
	ld   h, a                                        ; $7b3a: $67
	and  c                                           ; $7b3b: $a1
	ld   h, [hl]                                     ; $7b3c: $66
	sub  c                                           ; $7b3d: $91
	ld   [hl], c                                     ; $7b3e: $71
	ld   l, l                                        ; $7b3f: $6d
	ld   a, h                                        ; $7b40: $7c
	sbc  a                                           ; $7b41: $9f
	dec  c                                           ; $7b42: $0d
	ld   l, e                                        ; $7b43: $6b
	ld   h, l                                        ; $7b44: $65
	ld   l, l                                        ; $7b45: $6d
	sub  a                                           ; $7b46: $97
	ld   a, e                                        ; $7b47: $7b
	sbc  [hl]                                        ; $7b48: $9e
	rst  JumpTable                                         ; $7b49: $df
	db   $ec                                         ; $7b4a: $ec
	and  e                                           ; $7b4b: $a3
	ld   e, d                                        ; $7b4c: $5a
	rst  $38                                         ; $7b4d: $ff
	rst  $38                                         ; $7b4e: $ff
	dec  c                                           ; $7b4f: $0d
	nop                                              ; $7b50: $00
	ld   a, [bc]                                     ; $7b51: $0a
	inc  e                                           ; $7b52: $1c
	inc  b                                           ; $7b53: $04
	inc  b                                           ; $7b54: $04
	inc  b                                           ; $7b55: $04
	ld   bc, $ecdf                                   ; $7b56: $01 $df $ec
	and  e                                           ; $7b59: $a3
	ld   e, d                                        ; $7b5a: $5a
	ld   e, b                                        ; $7b5b: $58
	ld   h, c                                        ; $7b5c: $61
	sbc  c                                           ; $7b5d: $99
	ld   a, h                                        ; $7b5e: $7c
	rst  $38                                         ; $7b5f: $ff
	rst  $38                                         ; $7b60: $ff
	dec  c                                           ; $7b61: $0d
	ld   l, [hl]                                     ; $7b62: $6e
	ld   [hl], c                                     ; $7b63: $71
	ld   [hl], h                                     ; $7b64: $74
	rst  $38                                         ; $7b65: $ff
	ld   a, e                                        ; $7b66: $7b
	adc  [hl]                                        ; $7b67: $8e
	ld   e, c                                        ; $7b68: $59
	ld   [hl], c                                     ; $7b69: $71
	ld   l, l                                        ; $7b6a: $6d
	and  c                                           ; $7b6b: $a1
	ld   l, [hl]                                     ; $7b6c: $6e
	sub  b                                           ; $7b6d: $90
	and  c                                           ; $7b6e: $a1
	sbc  a                                           ; $7b6f: $9f
	dec  c                                           ; $7b70: $0d
	ld   h, l                                        ; $7b71: $65
	ld   e, c                                        ; $7b72: $59
	ld   l, l                                        ; $7b73: $6d
	ld   a, b                                        ; $7b74: $78
	ld   d, d                                        ; $7b75: $52
	sub  [hl]                                        ; $7b76: $96
	ld   a, e                                        ; $7b77: $7b
	sbc  a                                           ; $7b78: $9f
	dec  c                                           ; $7b79: $0d
	nop                                              ; $7b7a: $00
	ld   a, [bc]                                     ; $7b7b: $0a
	add  hl, de                                      ; $7b7c: $19
	dec  b                                           ; $7b7d: $05
	inc  bc                                          ; $7b7e: $03
	and  e                                           ; $7b7f: $a3
	and  l                                           ; $7b80: $a5
	db   $ec                                         ; $7b81: $ec
	cp   d                                           ; $7b82: $ba
	ld   a, c                                        ; $7b83: $79
	ld   [bc], a                                     ; $7b84: $02
	ret  nc                                          ; $7b85: $d0

	ld   d, [hl]                                     ; $7b86: $56
	and  b                                           ; $7b87: $a0
	ld   [bc], a                                     ; $7b88: $02
	rst  $30                                         ; $7b89: $f7
	ld   e, l                                        ; $7b8a: $5d
	nop                                              ; $7b8b: $00
	nop                                              ; $7b8c: $00
	and  e                                           ; $7b8d: $a3
	and  l                                           ; $7b8e: $a5
	db   $ec                                         ; $7b8f: $ec
	cp   d                                           ; $7b90: $ba
	ld   a, c                                        ; $7b91: $79
	inc  b                                           ; $7b92: $04
	dec  e                                           ; $7b93: $1d
	ld   [bc], a                                     ; $7b94: $02
	ld   b, $67                                      ; $7b95: $06 $67
	sbc  c                                           ; $7b97: $99
	nop                                              ; $7b98: $00
	ld   bc, $a5a3                                   ; $7b99: $01 $a3 $a5
	db   $ec                                         ; $7b9c: $ec
	cp   d                                           ; $7b9d: $ba
	and  b                                           ; $7b9e: $a0
	ld   h, l                                        ; $7b9f: $65
	ld   e, c                                        ; $7ba0: $59
	sbc  c                                           ; $7ba1: $99
	nop                                              ; $7ba2: $00
	ld   [bc], a                                     ; $7ba3: $02
	rlca                                             ; $7ba4: $07
	ld   e, b                                        ; $7ba5: $58
	ld   a, [bc]                                     ; $7ba6: $0a
	ld   [bc], a                                     ; $7ba7: $02
	inc  bc                                          ; $7ba8: $03
	ld   bc, $2000                                   ; $7ba9: $01 $00 $20
	nop                                              ; $7bac: $00
	rlca                                             ; $7bad: $07
	inc  b                                           ; $7bae: $04
	ld   a, [bc]                                     ; $7baf: $0a
	ld   [bc], a                                     ; $7bb0: $02
	inc  bc                                          ; $7bb1: $03
	ld   bc, $2001                                   ; $7bb2: $01 $01 $20
	nop                                              ; $7bb5: $00
	rlca                                             ; $7bb6: $07
	xor  b                                           ; $7bb7: $a8
	dec  bc                                          ; $7bb8: $0b
	ld   [bc], a                                     ; $7bb9: $02
	inc  bc                                          ; $7bba: $03
	ld   bc, $2002                                   ; $7bbb: $01 $02 $20
	nop                                              ; $7bbe: $00
	ld   b, $a6                                      ; $7bbf: $06 $a6
	add  hl, bc                                      ; $7bc1: $09
	inc  e                                           ; $7bc2: $1c
	inc  b                                           ; $7bc3: $04
	ld   [bc], a                                     ; $7bc4: $02
	ld   [bc], a                                     ; $7bc5: $02
	ld   bc, $a178                                   ; $7bc6: $01 $78 $a1
	ld   [hl], l                                     ; $7bc9: $75
	sbc  [hl]                                        ; $7bca: $9e
	ld   l, [hl]                                     ; $7bcb: $6e
	adc  h                                           ; $7bcc: $8c
	ld   [hl], c                                     ; $7bcd: $71
	ld   [hl], h                                     ; $7bce: $74
	sbc  c                                           ; $7bcf: $99
	ld   a, h                                        ; $7bd0: $7c
	ld   sp, hl                                      ; $7bd1: $f9
	dec  c                                           ; $7bd2: $0d
	ld   a, b                                        ; $7bd3: $78
	ld   a, c                                        ; $7bd4: $79
	ld   e, c                                        ; $7bd5: $59
	ld   d, d                                        ; $7bd6: $52
	ld   [hl], c                                     ; $7bd7: $71
	ld   [hl], h                                     ; $7bd8: $74
	sub  [hl]                                        ; $7bd9: $96
	sbc  a                                           ; $7bda: $9f
	dec  c                                           ; $7bdb: $0d
	nop                                              ; $7bdc: $00
	dec  b                                           ; $7bdd: $05
	ld   b, b                                        ; $7bde: $40
	ld   c, e                                        ; $7bdf: $4b
	ld   [bc], a                                     ; $7be0: $02
	nop                                              ; $7be1: $00
	nop                                              ; $7be2: $00
	dec  b                                           ; $7be3: $05
	ld   b, b                                        ; $7be4: $40
	ld   d, c                                        ; $7be5: $51
	ld   bc, $0001                                   ; $7be6: $01 $01 $00
	ld   bc, $5490                                   ; $7be9: $01 $90 $54
	ld   d, d                                        ; $7bec: $52
	ld   d, d                                        ; $7bed: $52
	ld   a, [$d110]                                  ; $7bee: $fa $10 $d1
	and  l                                           ; $7bf1: $a5
	pop  de                                          ; $7bf2: $d1
	and  l                                           ; $7bf3: $a5
	ld   a, [$000d]                                  ; $7bf4: $fa $0d $00
	ld   a, [bc]                                     ; $7bf7: $0a
	dec  c                                           ; $7bf8: $0d
	nop                                              ; $7bf9: $00
	nop                                              ; $7bfa: $00
	rrca                                             ; $7bfb: $0f
	nop                                              ; $7bfc: $00
	ld   bc, $1e09                                   ; $7bfd: $01 $09 $1e
	ld   bc, $fb50                                   ; $7c00: $01 $50 $fb
	ld   d, b                                        ; $7c03: $50
	dec  c                                           ; $7c04: $0d
	ld   [bc], a                                     ; $7c05: $02
	ld   a, a                                        ; $7c06: $7f
	ld   [hl], c                                     ; $7c07: $71
	ld   l, a                                        ; $7c08: $6f
	sub  c                                           ; $7c09: $91
	ld   [hl], c                                     ; $7c0a: $71
	ld   l, l                                        ; $7c0b: $6d
	sub  [hl]                                        ; $7c0c: $96
	rst  $38                                         ; $7c0d: $ff
	rst  $38                                         ; $7c0e: $ff
	dec  c                                           ; $7c0f: $0d
	ld   l, [hl]                                     ; $7c10: $6e
	ld   d, d                                        ; $7c11: $52
	ld   h, [hl]                                     ; $7c12: $66
	sub  l                                           ; $7c13: $95
	ld   d, h                                        ; $7c14: $54
	add  h                                           ; $7c15: $84
	ld   e, c                                        ; $7c16: $59
	ld   a, b                                        ; $7c17: $78
	rst  $38                                         ; $7c18: $ff
	rst  $38                                         ; $7c19: $ff
	dec  c                                           ; $7c1a: $0d
	nop                                              ; $7c1b: $00
	ld   a, [bc]                                     ; $7c1c: $0a
	add  hl, hl                                      ; $7c1d: $29
	ld   [$0f00], sp                                 ; $7c1e: $08 $00 $0f
	nop                                              ; $7c21: $00
	ld   bc, $6b01                                   ; $7c22: $01 $01 $6b
	ld   d, h                                        ; $7c25: $54
	ld   l, [hl]                                     ; $7c26: $6e
	sub  [hl]                                        ; $7c27: $96
	ld   a, e                                        ; $7c28: $7b
	sbc  a                                           ; $7c29: $9f
	dec  c                                           ; $7c2a: $0d
	ld   a, e                                        ; $7c2b: $7b
	adc  [hl]                                        ; $7c2c: $8e
	ld   e, l                                        ; $7c2d: $5d
	ld   l, a                                        ; $7c2e: $6f
	sub  c                                           ; $7c2f: $91
	sbc  [hl]                                        ; $7c30: $9e
	ld   h, l                                        ; $7c31: $65
	ld   e, c                                        ; $7c32: $59
	ld   l, l                                        ; $7c33: $6d
	ld   a, b                                        ; $7c34: $78
	ld   d, d                                        ; $7c35: $52
	sub  [hl]                                        ; $7c36: $96
	ld   a, e                                        ; $7c37: $7b
	sbc  a                                           ; $7c38: $9f
	dec  c                                           ; $7c39: $0d
	nop                                              ; $7c3a: $00
	ld   a, [bc]                                     ; $7c3b: $0a
	inc  e                                           ; $7c3c: $1c
	inc  b                                           ; $7c3d: $04
	ld   bc, $1d01                                   ; $7c3e: $01 $01 $1d
	ld   b, b                                        ; $7c41: $40
	inc  d                                           ; $7c42: $14
	inc  bc                                          ; $7c43: $03
	inc  d                                           ; $7c44: $14
	ld   bc, $2802                                   ; $7c45: $01 $02 $28
	nop                                              ; $7c48: $00
	ld   bc, $526f                                   ; $7c49: $01 $6f $52
	ld   [bc], a                                     ; $7c4c: $02
	inc  de                                          ; $7c4d: $13
	ld   l, a                                        ; $7c4e: $6f
	sub  c                                           ; $7c4f: $91
	and  c                                           ; $7c50: $a1
	sub  b                                           ; $7c51: $90
	sbc  [hl]                                        ; $7c52: $9e
	ld   l, e                                        ; $7c53: $6b
	ld   d, h                                        ; $7c54: $54
	ld   e, b                                        ; $7c55: $58
	sub  b                                           ; $7c56: $90
	ld   d, h                                        ; $7c57: $54
	ld   sp, hl                                      ; $7c58: $f9
	dec  c                                           ; $7c59: $0d
	ld   l, e                                        ; $7c5a: $6b
	ld   d, h                                        ; $7c5b: $54
	ld   l, [hl]                                     ; $7c5c: $6e
	sub  [hl]                                        ; $7c5d: $96
	ld   a, e                                        ; $7c5e: $7b
	sbc  [hl]                                        ; $7c5f: $9e
	ld   h, l                                        ; $7c60: $65
	ld   e, c                                        ; $7c61: $59
	ld   l, l                                        ; $7c62: $6d
	ld   a, b                                        ; $7c63: $78
	ld   d, d                                        ; $7c64: $52
	sub  [hl]                                        ; $7c65: $96
	ld   a, e                                        ; $7c66: $7b
	sbc  a                                           ; $7c67: $9f
	dec  c                                           ; $7c68: $0d
	xor  c                                           ; $7c69: $a9
	reti                                             ; $7c6a: $d9


	reti                                             ; $7c6b: $d9


	rst  $38                                         ; $7c6c: $ff
	rst  $38                                         ; $7c6d: $ff
	dec  c                                           ; $7c6e: $0d
	nop                                              ; $7c6f: $00
	ld   a, [bc]                                     ; $7c70: $0a
	ld   b, $df                                      ; $7c71: $06 $df
	inc  c                                           ; $7c73: $0c
	rrca                                             ; $7c74: $0f
	nop                                              ; $7c75: $00
	ld   bc, $a301                                   ; $7c76: $01 $01 $a3
	and  l                                           ; $7c79: $a5
	db   $ec                                         ; $7c7a: $ec
	cp   d                                           ; $7c7b: $ba
	ld   e, d                                        ; $7c7c: $5a
	ld   a, e                                        ; $7c7d: $7b
	adc  [hl]                                        ; $7c7e: $8e
	ld   e, c                                        ; $7c7f: $59
	ld   [hl], c                                     ; $7c80: $71
	ld   l, l                                        ; $7c81: $6d
	ld   a, h                                        ; $7c82: $7c
	ld   a, l                                        ; $7c83: $7d
	dec  c                                           ; $7c84: $0d
	inc  bc                                          ; $7c85: $03
	dec  c                                           ; $7c86: $0d
	inc  b                                           ; $7c87: $04
	ld   a, b                                        ; $7c88: $78
	ld   e, d                                        ; $7c89: $5a
	ld   a, b                                        ; $7c8a: $78
	ld   d, d                                        ; $7c8b: $52
	halt                                             ; $7c8c: $76
	dec  b                                           ; $7c8d: $05
	pop  de                                          ; $7c8e: $d1
	ld   d, h                                        ; $7c8f: $54
	sub  [hl]                                        ; $7c90: $96
	sbc  a                                           ; $7c91: $9f
	dec  c                                           ; $7c92: $0d
	nop                                              ; $7c93: $00
	ld   a, [bc]                                     ; $7c94: $0a
	ld   bc, $5f6e                                   ; $7c95: $01 $6e $5f
	ld   [hl], a                                     ; $7c98: $77
	ld   a, e                                        ; $7c99: $7b
	sbc  [hl]                                        ; $7c9a: $9e
	and  e                                           ; $7c9b: $a3
	and  l                                           ; $7c9c: $a5
	db   $ec                                         ; $7c9d: $ec
	cp   d                                           ; $7c9e: $ba
	ld   a, l                                        ; $7c9f: $7d
	adc  l                                           ; $7ca0: $8d
	and  c                                           ; $7ca1: $a1
	ld   a, b                                        ; $7ca2: $78
	ld   a, c                                        ; $7ca3: $79
	dec  c                                           ; $7ca4: $0d
	adc  a                                           ; $7ca5: $8f
	ld   d, d                                        ; $7ca6: $52
	sbc  l                                           ; $7ca7: $9d
	ld   e, l                                        ; $7ca8: $5d
	and  b                                           ; $7ca9: $a0
	ld   e, c                                        ; $7caa: $59
	ld   e, a                                        ; $7cab: $5f
	ld   l, l                                        ; $7cac: $6d
	and  c                                           ; $7cad: $a1
	ld   l, [hl]                                     ; $7cae: $6e
	sub  [hl]                                        ; $7caf: $96
	sbc  a                                           ; $7cb0: $9f
	dec  c                                           ; $7cb1: $0d
	nop                                              ; $7cb2: $00
	ld   a, [bc]                                     ; $7cb3: $0a
	ld   bc, $a5a3                                   ; $7cb4: $01 $a3 $a5
	db   $ec                                         ; $7cb7: $ec
	cp   d                                           ; $7cb8: $ba
	ld   e, d                                        ; $7cb9: $5a
	dec  b                                           ; $7cba: $05
	db   $10                                         ; $7cbb: $10
	ld   a, b                                        ; $7cbc: $78
	ld   d, d                                        ; $7cbd: $52
	halt                                             ; $7cbe: $76
	ld   [bc], a                                     ; $7cbf: $02
	sbc  l                                           ; $7cc0: $9d
	ld   d, h                                        ; $7cc1: $54
	ld   h, c                                        ; $7cc2: $61
	halt                                             ; $7cc3: $76
	ld   a, l                                        ; $7cc4: $7d
	dec  c                                           ; $7cc5: $0d
	inc  bc                                          ; $7cc6: $03
	ei                                               ; $7cc7: $fb
	inc  b                                           ; $7cc8: $04
	ld   a, [hl]                                     ; $7cc9: $7e
	ld   [bc], a                                     ; $7cca: $02
	ld   a, l                                        ; $7ccb: $7d
	ld   e, d                                        ; $7ccc: $5a
	inc  bc                                          ; $7ccd: $03
	add  b                                           ; $7cce: $80
	sbc  c                                           ; $7ccf: $99
	halt                                             ; $7cd0: $76
	ld   h, c                                        ; $7cd1: $61
	sbc  e                                           ; $7cd2: $9b
	ld   a, h                                        ; $7cd3: $7c
	dec  b                                           ; $7cd4: $05
	add  hl, de                                      ; $7cd5: $19
	inc  bc                                          ; $7cd6: $03
	and  h                                           ; $7cd7: $a4
	ld   a, l                                        ; $7cd8: $7d
	dec  c                                           ; $7cd9: $0d
	ld   [hl], l                                     ; $7cda: $75
	ld   e, e                                        ; $7cdb: $5b
	ld   a, b                                        ; $7cdc: $78
	ld   d, d                                        ; $7cdd: $52
	and  c                                           ; $7cde: $a1
	ld   l, [hl]                                     ; $7cdf: $6e
	sbc  a                                           ; $7ce0: $9f
	dec  c                                           ; $7ce1: $0d
	nop                                              ; $7ce2: $00
	ld   a, [bc]                                     ; $7ce3: $0a
	ld   bc, $596e                                   ; $7ce4: $01 $6e $59
	sub  a                                           ; $7ce7: $97
	sbc  [hl]                                        ; $7ce8: $9e
	and  e                                           ; $7ce9: $a3
	and  l                                           ; $7cea: $a5
	db   $ec                                         ; $7ceb: $ec
	cp   d                                           ; $7cec: $ba
	ld   a, l                                        ; $7ced: $7d
	adc  l                                           ; $7cee: $8d
	and  c                                           ; $7cef: $a1
	ld   a, b                                        ; $7cf0: $78
	ld   a, c                                        ; $7cf1: $79
	dec  c                                           ; $7cf2: $0d
	ld   d, b                                        ; $7cf3: $50
	sub  d                                           ; $7cf4: $92
	adc  h                                           ; $7cf5: $8c
	sub  a                                           ; $7cf6: $97
	ld   a, b                                        ; $7cf7: $78
	ld   d, d                                        ; $7cf8: $52
	halt                                             ; $7cf9: $76
	sbc  [hl]                                        ; $7cfa: $9e
	ld   d, d                                        ; $7cfb: $52
	ld   e, a                                        ; $7cfc: $5f
	ld   a, b                                        ; $7cfd: $78
	ld   d, d                                        ; $7cfe: $52
	and  c                                           ; $7cff: $a1
	dec  c                                           ; $7d00: $0d
	ld   h, [hl]                                     ; $7d01: $66
	sub  c                                           ; $7d02: $91
	ld   a, b                                        ; $7d03: $78
	ld   d, d                                        ; $7d04: $52
	ld   e, c                                        ; $7d05: $59
	ld   a, b                                        ; $7d06: $78
	sbc  a                                           ; $7d07: $9f
	dec  c                                           ; $7d08: $0d
	nop                                              ; $7d09: $00
	ld   a, [bc]                                     ; $7d0a: $0a
	ld   bc, $a5a3                                   ; $7d0b: $01 $a3 $a5
	db   $ec                                         ; $7d0e: $ec
	cp   d                                           ; $7d0f: $ba
	ld   a, l                                        ; $7d10: $7d
	inc  b                                           ; $7d11: $04
	ld   c, $03                                      ; $7d12: $0e $03
	add  d                                           ; $7d14: $82
	ld   l, [hl]                                     ; $7d15: $6e
	ld   e, c                                        ; $7d16: $59
	sub  a                                           ; $7d17: $97
	dec  c                                           ; $7d18: $0d
	sbc  l                                           ; $7d19: $9d
	ld   e, c                                        ; $7d1a: $59
	sbc  c                                           ; $7d1b: $99
	sub  [hl]                                        ; $7d1c: $96
	ld   a, e                                        ; $7d1d: $7b
	sbc  a                                           ; $7d1e: $9f
	dec  c                                           ; $7d1f: $0d
	nop                                              ; $7d20: $00
	ld   a, [bc]                                     ; $7d21: $0a
	inc  e                                           ; $7d22: $1c
	inc  b                                           ; $7d23: $04
	inc  bc                                          ; $7d24: $03
	inc  bc                                          ; $7d25: $03
	ld   bc, $ffff                                   ; $7d26: $01 $ff $ff
	rst  $38                                         ; $7d29: $ff
	rst  $38                                         ; $7d2a: $ff
	ld   d, h                                        ; $7d2b: $54
	and  c                                           ; $7d2c: $a1
	rst  $38                                         ; $7d2d: $ff
	rst  $38                                         ; $7d2e: $ff
	rst  $38                                         ; $7d2f: $ff
	rst  $38                                         ; $7d30: $ff
	dec  c                                           ; $7d31: $0d
	sbc  l                                           ; $7d32: $9d
	ld   e, c                                        ; $7d33: $59
	sbc  c                                           ; $7d34: $99
	sub  [hl]                                        ; $7d35: $96
	rst  $38                                         ; $7d36: $ff
	rst  $38                                         ; $7d37: $ff
	dec  c                                           ; $7d38: $0d
	nop                                              ; $7d39: $00
	ld   a, [bc]                                     ; $7d3a: $0a
	rrca                                             ; $7d3b: $0f
	nop                                              ; $7d3c: $00
	ld   bc, $5601                                   ; $7d3d: $01 $01 $56
	sub  a                                           ; $7d40: $97
	ld   d, d                                        ; $7d41: $52
	ld   a, b                                        ; $7d42: $78
	and  e                                           ; $7d43: $a3
	and  l                                           ; $7d44: $a5
	db   $ec                                         ; $7d45: $ec
	cp   d                                           ; $7d46: $ba
	ld   a, l                                        ; $7d47: $7d
	sbc  a                                           ; $7d48: $9f
	dec  c                                           ; $7d49: $0d
	ld   h, [hl]                                     ; $7d4a: $66
	sub  c                                           ; $7d4b: $91
	sbc  [hl]                                        ; $7d4c: $9e
	ld   [bc], a                                     ; $7d4d: $02
	ld   hl, $0c04                                   ; $7d4e: $21 $04 $0c
	ld   a, h                                        ; $7d51: $7c
	inc  b                                           ; $7d52: $04
	ld   a, b                                        ; $7d53: $78
	ld   a, c                                        ; $7d54: $79
	ld   [bc], a                                     ; $7d55: $02
	ld   a, a                                        ; $7d56: $7f
	ld   [hl], c                                     ; $7d57: $71
	ld   [hl], h                                     ; $7d58: $74
	dec  c                                           ; $7d59: $0d
	inc  b                                           ; $7d5a: $04
	ldh  a, [c]                                      ; $7d5b: $f2
	adc  d                                           ; $7d5c: $8a
	ld   d, h                                        ; $7d5d: $54
	ld   e, c                                        ; $7d5e: $59
	sbc  a                                           ; $7d5f: $9f
	dec  c                                           ; $7d60: $0d
	nop                                              ; $7d61: $00
	ld   a, [bc]                                     ; $7d62: $0a
	inc  e                                           ; $7d63: $1c
	inc  b                                           ; $7d64: $04
	ld   bc, $1d01                                   ; $7d65: $01 $01 $1d
	ld   b, b                                        ; $7d68: $40
	inc  d                                           ; $7d69: $14
	inc  bc                                          ; $7d6a: $03
	inc  d                                           ; $7d6b: $14
	ld   bc, $2803                                   ; $7d6c: $01 $03 $28
	nop                                              ; $7d6f: $00
	ld   bc, $a154                                   ; $7d70: $01 $54 $a1
	ld   a, [$500d]                                  ; $7d73: $fa $0d $50
	ld   l, e                                        ; $7d76: $6b
	adc  d                                           ; $7d77: $8a
	ld   d, h                                        ; $7d78: $54
	ld   a, [$000d]                                  ; $7d79: $fa $0d $00
	ld   a, [bc]                                     ; $7d7c: $0a
	dec  c                                           ; $7d7d: $0d
	nop                                              ; $7d7e: $00
	nop                                              ; $7d7f: $00
	rrca                                             ; $7d80: $0f
	nop                                              ; $7d81: $00
	ld   bc, $020c                                   ; $7d82: $01 $0c $02
	add  hl, bc                                      ; $7d85: $09
	inc  d                                           ; $7d86: $14
	ld   c, $83                                      ; $7d87: $0e $83
	inc  e                                           ; $7d89: $1c
	inc  b                                           ; $7d8a: $04
	ld   bc, $0101                                   ; $7d8b: $01 $01 $01
	add  e                                           ; $7d8e: $83
	ld   d, h                                        ; $7d8f: $54
	rst  $38                                         ; $7d90: $ff
	rst  $38                                         ; $7d91: $ff
	ld   e, b                                        ; $7d92: $58
	sub  b                                           ; $7d93: $90
	ld   h, l                                        ; $7d94: $65
	sbc  e                                           ; $7d95: $9b
	ld   e, c                                        ; $7d96: $59
	ld   [hl], c                                     ; $7d97: $71
	ld   l, l                                        ; $7d98: $6d
	ld   a, e                                        ; $7d99: $7b
	dec  c                                           ; $7d9a: $0d
	ld   l, a                                        ; $7d9b: $6f
	ld   d, d                                        ; $7d9c: $52
	ld   [bc], a                                     ; $7d9d: $02
	inc  de                                          ; $7d9e: $13
	ld   l, a                                        ; $7d9f: $6f
	sub  c                                           ; $7da0: $91
	and  c                                           ; $7da1: $a1
	ld   a, [$000d]                                  ; $7da2: $fa $0d $00
	ld   a, [bc]                                     ; $7da5: $0a
	rrca                                             ; $7da6: $0f
	nop                                              ; $7da7: $00
	ld   bc, $6b01                                   ; $7da8: $01 $01 $6b
	ld   d, h                                        ; $7dab: $54
	ld   l, [hl]                                     ; $7dac: $6e
	ld   a, e                                        ; $7dad: $7b
	sbc  a                                           ; $7dae: $9f
	dec  c                                           ; $7daf: $0d
	ld   h, [hl]                                     ; $7db0: $66
	sub  c                                           ; $7db1: $91
	ld   d, b                                        ; $7db2: $50
	sbc  [hl]                                        ; $7db3: $9e
	ld   l, e                                        ; $7db4: $6b
	sbc  e                                           ; $7db5: $9b
	ld   l, e                                        ; $7db6: $6b
	sbc  e                                           ; $7db7: $9b
	inc  b                                           ; $7db8: $04
	jp   Jump_053_549b                               ; $7db9: $c3 $9b $54


	ld   e, c                                        ; $7dbc: $59
	sbc  a                                           ; $7dbd: $9f
	dec  c                                           ; $7dbe: $0d
	nop                                              ; $7dbf: $00
	ld   a, [bc]                                     ; $7dc0: $0a
	ld   b, $f5                                      ; $7dc1: $06 $f5
	inc  c                                           ; $7dc3: $0c
	rrca                                             ; $7dc4: $0f
	nop                                              ; $7dc5: $00
	ld   bc, $c101                                   ; $7dc6: $01 $01 $c1
	db   $e3                                         ; $7dc9: $e3
	ld   h, [hl]                                     ; $7dca: $66
	sub  c                                           ; $7dcb: $91
	ld   a, b                                        ; $7dcc: $78
	ld   d, d                                        ; $7dcd: $52
	ld   e, c                                        ; $7dce: $59
	sbc  a                                           ; $7dcf: $9f
	dec  c                                           ; $7dd0: $0d
	adc  l                                           ; $7dd1: $8d
	and  c                                           ; $7dd2: $a1
	ld   a, b                                        ; $7dd3: $78
	ld   a, c                                        ; $7dd4: $79
	adc  a                                           ; $7dd5: $8f
	ld   d, d                                        ; $7dd6: $52
	sbc  l                                           ; $7dd7: $9d
	ld   e, l                                        ; $7dd8: $5d
	ld   e, c                                        ; $7dd9: $59
	ld   e, a                                        ; $7dda: $5f
	ld   [hl], h                                     ; $7ddb: $74
	sbc  a                                           ; $7ddc: $9f
	dec  c                                           ; $7ddd: $0d
	ld   e, b                                        ; $7dde: $58
	adc  h                                           ; $7ddf: $8c
	ld   e, a                                        ; $7de0: $5f
	ld   a, c                                        ; $7de1: $79
	dec  b                                           ; $7de2: $05
	add  hl, de                                      ; $7de3: $19
	inc  bc                                          ; $7de4: $03
	and  h                                           ; $7de5: $a4
	ld   h, a                                        ; $7de6: $67
	ld   [hl], c                                     ; $7de7: $71
	adc  e                                           ; $7de8: $8b
	ld   e, c                                        ; $7de9: $59
	ld   h, l                                        ; $7dea: $65
	ld   [hl], h                                     ; $7deb: $74
	sbc  a                                           ; $7dec: $9f
	dec  c                                           ; $7ded: $0d
	nop                                              ; $7dee: $00
	ld   a, [bc]                                     ; $7def: $0a
	ld   bc, $0e04                                   ; $7df0: $01 $04 $0e
	inc  bc                                          ; $7df3: $03
	add  d                                           ; $7df4: $82
	ld   a, l                                        ; $7df5: $7d
	sbc  [hl]                                        ; $7df6: $9e
	inc  bc                                          ; $7df7: $03
	add  d                                           ; $7df8: $82
	ld   a, h                                        ; $7df9: $7c
	adc  a                                           ; $7dfa: $8f
	ld   d, d                                        ; $7dfb: $52
	sbc  l                                           ; $7dfc: $9d
	ld   e, l                                        ; $7dfd: $5d
	ld   a, c                                        ; $7dfe: $79
	ld   a, b                                        ; $7dff: $78
	sbc  c                                           ; $7e00: $99
	dec  c                                           ; $7e01: $0d
	sub  [hl]                                        ; $7e02: $96
	ld   d, h                                        ; $7e03: $54
	ld   a, b                                        ; $7e04: $78
	ld   h, c                                        ; $7e05: $61
	halt                                             ; $7e06: $76
	ld   a, l                                        ; $7e07: $7d
	ld   h, l                                        ; $7e08: $65
	ld   a, b                                        ; $7e09: $78
	ld   d, d                                        ; $7e0a: $52
	and  c                                           ; $7e0b: $a1
	ld   l, [hl]                                     ; $7e0c: $6e
	sub  [hl]                                        ; $7e0d: $96
	sbc  a                                           ; $7e0e: $9f
	dec  c                                           ; $7e0f: $0d
	nop                                              ; $7e10: $00
	ld   a, [bc]                                     ; $7e11: $0a
	inc  e                                           ; $7e12: $1c
	inc  b                                           ; $7e13: $04
	ld   [bc], a                                     ; $7e14: $02
	ld   [bc], a                                     ; $7e15: $02
	ld   bc, $a16b                                   ; $7e16: $01 $6b $a1
	ld   a, b                                        ; $7e19: $78
	ld   h, c                                        ; $7e1a: $61
	halt                                             ; $7e1b: $76
	ld   d, d                                        ; $7e1c: $52
	ld   [hl], c                                     ; $7e1d: $71
	ld   l, l                                        ; $7e1e: $6d
	ld   [hl], c                                     ; $7e1f: $71
	ld   [hl], h                                     ; $7e20: $74
	dec  c                                           ; $7e21: $0d
	and  e                                           ; $7e22: $a3
	and  l                                           ; $7e23: $a5
	db   $ec                                         ; $7e24: $ec
	cp   d                                           ; $7e25: $ba
	sbc  [hl]                                        ; $7e26: $9e
	ld   a, e                                        ; $7e27: $7b
	adc  [hl]                                        ; $7e28: $8e
	ld   d, d                                        ; $7e29: $52
	and  c                                           ; $7e2a: $a1
	ld   l, [hl]                                     ; $7e2b: $6e
	sub  b                                           ; $7e2c: $90
	and  c                                           ; $7e2d: $a1
	sbc  a                                           ; $7e2e: $9f
	dec  c                                           ; $7e2f: $0d
	nop                                              ; $7e30: $00
	ld   a, [bc]                                     ; $7e31: $0a
	rrca                                             ; $7e32: $0f
	nop                                              ; $7e33: $00
	ld   bc, $5a01                                   ; $7e34: $01 $01 $5a
	adc  h                                           ; $7e37: $8c
	and  c                                           ; $7e38: $a1
	ld   [hl], l                                     ; $7e39: $75
	ld   e, e                                        ; $7e3a: $5b
	ld   a, b                                        ; $7e3b: $78
	ld   d, d                                        ; $7e3c: $52
	and  c                                           ; $7e3d: $a1
	ld   l, [hl]                                     ; $7e3e: $6e
	ld   a, e                                        ; $7e3f: $7b
	sbc  a                                           ; $7e40: $9f
	dec  c                                           ; $7e41: $0d
	and  e                                           ; $7e42: $a3
	and  l                                           ; $7e43: $a5
	db   $ec                                         ; $7e44: $ec
	cp   d                                           ; $7e45: $ba
	ld   a, l                                        ; $7e46: $7d
	inc  bc                                          ; $7e47: $03
	add  [hl]                                        ; $7e48: $86
	ld   [bc], a                                     ; $7e49: $02
	xor  l                                           ; $7e4a: $ad
	ld   l, [hl]                                     ; $7e4b: $6e
	ld   e, c                                        ; $7e4c: $59
	sub  a                                           ; $7e4d: $97
	sbc  a                                           ; $7e4e: $9f
	dec  c                                           ; $7e4f: $0d
	nop                                              ; $7e50: $00
	ld   a, [bc]                                     ; $7e51: $0a
	rrca                                             ; $7e52: $0f
	inc  b                                           ; $7e53: $04
	ld   [bc], a                                     ; $7e54: $02
	ld   bc, $a5a3                                   ; $7e55: $01 $a3 $a5
	db   $ec                                         ; $7e58: $ec
	cp   d                                           ; $7e59: $ba
	ld   h, c                                        ; $7e5a: $61
	ld   [hl], a                                     ; $7e5b: $77
	sub  b                                           ; $7e5c: $90
	ld   h, [hl]                                     ; $7e5d: $66
	sub  c                                           ; $7e5e: $91
	ld   a, b                                        ; $7e5f: $78
	ld   d, d                                        ; $7e60: $52
	sub  b                                           ; $7e61: $90
	and  c                                           ; $7e62: $a1
	ld   a, [$580d]                                  ; $7e63: $fa $0d $58
	halt                                             ; $7e66: $76
	ld   a, b                                        ; $7e67: $78
	ld   l, [hl]                                     ; $7e68: $6e
	sub  b                                           ; $7e69: $90
	and  c                                           ; $7e6a: $a1
	ld   a, [$000d]                                  ; $7e6b: $fa $0d $00
	ld   a, [bc]                                     ; $7e6e: $0a
	rrca                                             ; $7e6f: $0f
	nop                                              ; $7e70: $00
	ld   bc, $5a01                                   ; $7e71: $01 $01 $5a
	adc  h                                           ; $7e74: $8c
	and  c                                           ; $7e75: $a1
	ld   [hl], l                                     ; $7e76: $75
	ld   e, e                                        ; $7e77: $5b
	ld   a, b                                        ; $7e78: $78
	ld   d, d                                        ; $7e79: $52
	sbc  a                                           ; $7e7a: $9f
	dec  c                                           ; $7e7b: $0d
	ld   h, a                                        ; $7e7c: $67
	ld   e, [hl]                                     ; $7e7d: $5e
	sbc  [hl]                                        ; $7e7e: $9e
	ld   e, c                                        ; $7e7f: $59
	and  c                                           ; $7e80: $a1
	ld   h, l                                        ; $7e81: $65
	sub  c                                           ; $7e82: $91
	ld   e, l                                        ; $7e83: $5d
	and  b                                           ; $7e84: $a0
	ld   [bc], a                                     ; $7e85: $02
	ld   e, d                                        ; $7e86: $5a
	ld   h, c                                        ; $7e87: $61
	ld   h, a                                        ; $7e88: $67
	sbc  a                                           ; $7e89: $9f
	dec  c                                           ; $7e8a: $0d
	ld   l, e                                        ; $7e8b: $6b
	sbc  d                                           ; $7e8c: $9a
	ld   a, l                                        ; $7e8d: $7d
	inc  bc                                          ; $7e8e: $03
	add  [hl]                                        ; $7e8f: $86
	ld   [bc], a                                     ; $7e90: $02
	xor  l                                           ; $7e91: $ad
	ld   a, h                                        ; $7e92: $7c
	ld   h, l                                        ; $7e93: $65
	sub  l                                           ; $7e94: $95
	ld   d, h                                        ; $7e95: $54
	ld   h, c                                        ; $7e96: $61
	ld   l, [hl]                                     ; $7e97: $6e
	sub  [hl]                                        ; $7e98: $96
	sbc  a                                           ; $7e99: $9f
	dec  c                                           ; $7e9a: $0d
	nop                                              ; $7e9b: $00
	ld   a, [bc]                                     ; $7e9c: $0a
	rrca                                             ; $7e9d: $0f
	inc  b                                           ; $7e9e: $04
	ld   [bc], a                                     ; $7e9f: $02
	ld   bc, $526f                                   ; $7ea0: $01 $6f $52
	ld   [bc], a                                     ; $7ea3: $02
	inc  de                                          ; $7ea4: $13
	ld   l, a                                        ; $7ea5: $6f
	sub  c                                           ; $7ea6: $91
	and  c                                           ; $7ea7: $a1
	ld   a, h                                        ; $7ea8: $7c
	pop  de                                          ; $7ea9: $d1
	xor  h                                           ; $7eaa: $ac
	ld   a, [$000d]                                  ; $7eab: $fa $0d $00
	dec  b                                           ; $7eae: $05
	ld   b, b                                        ; $7eaf: $40
	ld   c, e                                        ; $7eb0: $4b
	ld   [bc], a                                     ; $7eb1: $02
	nop                                              ; $7eb2: $00
	nop                                              ; $7eb3: $00
	dec  b                                           ; $7eb4: $05
	ld   b, b                                        ; $7eb5: $40
	ld   d, c                                        ; $7eb6: $51
	ld   bc, $0002                                   ; $7eb7: $01 $02 $00
	ld   bc, $5490                                   ; $7eba: $01 $90 $54
	ld   d, d                                        ; $7ebd: $52
	ld   d, d                                        ; $7ebe: $52
	sub  [hl]                                        ; $7ebf: $96
	ld   a, [$7710]                                  ; $7ec0: $fa $10 $77
	ld   [hl], c                                     ; $7ec3: $71
	ld   e, c                                        ; $7ec4: $59
	ld   d, d                                        ; $7ec5: $52
	ld   [hl], c                                     ; $7ec6: $71
	ld   [hl], h                                     ; $7ec7: $74
	ld   a, [$d10d]                                  ; $7ec8: $fa $0d $d1
	and  l                                           ; $7ecb: $a5
	pop  de                                          ; $7ecc: $d1
	and  l                                           ; $7ecd: $a5
	sbc  a                                           ; $7ece: $9f
	dec  c                                           ; $7ecf: $0d
	nop                                              ; $7ed0: $00
	ld   a, [bc]                                     ; $7ed1: $0a
	dec  c                                           ; $7ed2: $0d
	nop                                              ; $7ed3: $00
	nop                                              ; $7ed4: $00
	rrca                                             ; $7ed5: $0f
	nop                                              ; $7ed6: $00
	ld   bc, $1e09                                   ; $7ed7: $01 $09 $1e
	ld   bc, $fb50                                   ; $7eda: $01 $50 $fb
	ld   d, b                                        ; $7edd: $50
	dec  c                                           ; $7ede: $0d
	ld   [bc], a                                     ; $7edf: $02
	ld   a, a                                        ; $7ee0: $7f
	ld   [hl], c                                     ; $7ee1: $71
	ld   l, a                                        ; $7ee2: $6f
	sub  c                                           ; $7ee3: $91
	ld   [hl], c                                     ; $7ee4: $71
	ld   l, l                                        ; $7ee5: $6d
	sub  [hl]                                        ; $7ee6: $96
	rst  $38                                         ; $7ee7: $ff
	rst  $38                                         ; $7ee8: $ff
	dec  c                                           ; $7ee9: $0d
	inc  b                                           ; $7eea: $04
	ld   [$9202], sp                                 ; $7eeb: $08 $02 $92
	add  [hl]                                        ; $7eee: $86
	inc  b                                           ; $7eef: $04
	jp   Jump_053_549b                               ; $7ef0: $c3 $9b $54


	rst  $38                                         ; $7ef3: $ff
	rst  $38                                         ; $7ef4: $ff
	dec  c                                           ; $7ef5: $0d
	nop                                              ; $7ef6: $00
	ld   a, [bc]                                     ; $7ef7: $0a
	add  hl, hl                                      ; $7ef8: $29
	ld   [$0f00], sp                                 ; $7ef9: $08 $00 $0f
	nop                                              ; $7efc: $00
	ld   bc, $6601                                   ; $7efd: $01 $01 $66
	sub  c                                           ; $7f00: $91
	ld   d, b                                        ; $7f01: $50
	sbc  [hl]                                        ; $7f02: $9e
	ld   l, e                                        ; $7f03: $6b
	sbc  e                                           ; $7f04: $9b
	ld   l, e                                        ; $7f05: $6b
	sbc  e                                           ; $7f06: $9b
	dec  c                                           ; $7f07: $0d
	inc  b                                           ; $7f08: $04
	jp   Jump_053_549b                               ; $7f09: $c3 $9b $54


	ld   e, c                                        ; $7f0c: $59
	ld   sp, hl                                      ; $7f0d: $f9
	dec  c                                           ; $7f0e: $0d
	nop                                              ; $7f0f: $00
	ld   a, [bc]                                     ; $7f10: $0a
	inc  e                                           ; $7f11: $1c
	inc  b                                           ; $7f12: $04
	inc  bc                                          ; $7f13: $03
	inc  bc                                          ; $7f14: $03
	ld   bc, $a5a3                                   ; $7f15: $01 $a3 $a5
	db   $ec                                         ; $7f18: $ec
	cp   d                                           ; $7f19: $ba
	ld   e, b                                        ; $7f1a: $58
	ld   a, b                                        ; $7f1b: $78
	ld   e, c                                        ; $7f1c: $59
	ld   h, a                                        ; $7f1d: $67
	ld   d, d                                        ; $7f1e: $52
	ld   l, l                                        ; $7f1f: $6d
	sbc  a                                           ; $7f20: $9f
	dec  c                                           ; $7f21: $0d
	nop                                              ; $7f22: $00
	ld   a, [bc]                                     ; $7f23: $0a
	add  hl, de                                      ; $7f24: $19
	dec  b                                           ; $7f25: $05
	ld   [bc], a                                     ; $7f26: $02
	inc  b                                           ; $7f27: $04
	ld   c, c                                        ; $7f28: $49
	ld   e, c                                        ; $7f29: $59
	inc  bc                                          ; $7f2a: $03
	ld   l, d                                        ; $7f2b: $6a
	add  a                                           ; $7f2c: $87
	ld   a, c                                        ; $7f2d: $79
	ld   [bc], a                                     ; $7f2e: $02
	ld   a, a                                        ; $7f2f: $7f
	ld   e, l                                        ; $7f30: $5d
	nop                                              ; $7f31: $00
	nop                                              ; $7f32: $00
	inc  b                                           ; $7f33: $04
	ld   [$9202], sp                                 ; $7f34: $08 $02 $92
	ld   a, c                                        ; $7f37: $79
	ld   [bc], a                                     ; $7f38: $02
	or   l                                           ; $7f39: $b5
	sbc  c                                           ; $7f3a: $99
	nop                                              ; $7f3b: $00
	ld   bc, $8b07                                   ; $7f3c: $01 $07 $8b
	dec  c                                           ; $7f3f: $0d
	ld   [bc], a                                     ; $7f40: $02
	inc  bc                                          ; $7f41: $03
	ld   bc, $2000                                   ; $7f42: $01 $00 $20
	nop                                              ; $7f45: $00
	rlca                                             ; $7f46: $07
	cp   a                                           ; $7f47: $bf
	dec  c                                           ; $7f48: $0d
	ld   [bc], a                                     ; $7f49: $02
	inc  bc                                          ; $7f4a: $03
	ld   bc, $2001                                   ; $7f4b: $01 $01 $20
	nop                                              ; $7f4e: $00
	ld   b, $36                                      ; $7f4f: $06 $36
	dec  c                                           ; $7f51: $0d
	inc  e                                           ; $7f52: $1c
	inc  b                                           ; $7f53: $04
	inc  b                                           ; $7f54: $04
	inc  b                                           ; $7f55: $04
	ld   bc, $7858                                   ; $7f56: $01 $58 $78
	ld   e, c                                        ; $7f59: $59
	ld   h, a                                        ; $7f5a: $67
	ld   d, d                                        ; $7f5b: $52
	ld   l, l                                        ; $7f5c: $6d
	ld   a, h                                        ; $7f5d: $7c
	ld   a, c                                        ; $7f5e: $79
	rst  $38                                         ; $7f5f: $ff
	rst  $38                                         ; $7f60: $ff
	dec  c                                           ; $7f61: $0d
	sub  b                                           ; $7f62: $90
	ld   d, h                                        ; $7f63: $54
	ld   d, d                                        ; $7f64: $52
	ld   d, d                                        ; $7f65: $52
	sub  [hl]                                        ; $7f66: $96
	sbc  a                                           ; $7f67: $9f
	and  e                                           ; $7f68: $a3
	and  l                                           ; $7f69: $a5
	db   $ec                                         ; $7f6a: $ec
	cp   d                                           ; $7f6b: $ba
	add  b                                           ; $7f6c: $80
	halt                                             ; $7f6d: $76
	sbc  b                                           ; $7f6e: $98
	ld   [hl], l                                     ; $7f6f: $75
	dec  c                                           ; $7f70: $0d
	ld   a, b                                        ; $7f71: $78
	ld   a, c                                        ; $7f72: $79
	ld   e, c                                        ; $7f73: $59
	ld   l, l                                        ; $7f74: $6d
	add  a                                           ; $7f75: $87
	sbc  c                                           ; $7f76: $99
	ld   e, c                                        ; $7f77: $59
	sub  a                                           ; $7f78: $97
	sbc  a                                           ; $7f79: $9f
	pop  de                                          ; $7f7a: $d1
	and  l                                           ; $7f7b: $a5
	pop  de                                          ; $7f7c: $d1
	and  l                                           ; $7f7d: $a5
	sbc  a                                           ; $7f7e: $9f
	dec  c                                           ; $7f7f: $0d
	nop                                              ; $7f80: $00
	ld   a, [bc]                                     ; $7f81: $0a
	dec  c                                           ; $7f82: $0d
	nop                                              ; $7f83: $00
	nop                                              ; $7f84: $00
	rrca                                             ; $7f85: $0f
	nop                                              ; $7f86: $00
	ld   bc, $5001                                   ; $7f87: $01 $01 $50
	ei                                               ; $7f8a: $fb
	ld   d, b                                        ; $7f8b: $50
	sbc  [hl]                                        ; $7f8c: $9e
	ld   [bc], a                                     ; $7f8d: $02
	ld   a, a                                        ; $7f8e: $7f
	ld   [hl], c                                     ; $7f8f: $71
	ld   l, a                                        ; $7f90: $6f
	sub  c                                           ; $7f91: $91
	ld   [hl], c                                     ; $7f92: $71
	ld   l, l                                        ; $7f93: $6d
	rst  $38                                         ; $7f94: $ff
	rst  $38                                         ; $7f95: $ff
	dec  c                                           ; $7f96: $0d
	ld   l, [hl]                                     ; $7f97: $6e
	ld   d, d                                        ; $7f98: $52
	ld   h, [hl]                                     ; $7f99: $66
	sub  l                                           ; $7f9a: $95
	ld   d, h                                        ; $7f9b: $54
	add  h                                           ; $7f9c: $84
	ld   e, c                                        ; $7f9d: $59
	ld   a, b                                        ; $7f9e: $78
	rst  $38                                         ; $7f9f: $ff
	rst  $38                                         ; $7fa0: $ff
	dec  c                                           ; $7fa1: $0d
	nop                                              ; $7fa2: $00
	ld   a, [bc]                                     ; $7fa3: $0a
	add  hl, hl                                      ; $7fa4: $29
	ld   [$0f00], sp                                 ; $7fa5: $08 $00 $0f
	nop                                              ; $7fa8: $00
	ld   bc, $6601                                   ; $7fa9: $01 $01 $66
	sub  c                                           ; $7fac: $91
	sbc  [hl]                                        ; $7fad: $9e
	ld   h, d                                        ; $7fae: $62
	ld   a, l                                        ; $7faf: $7d
	and  c                                           ; $7fb0: $a1
	inc  bc                                          ; $7fb1: $03
	ld   l, d                                        ; $7fb2: $6a
	add  a                                           ; $7fb3: $87
	ld   a, c                                        ; $7fb4: $79
	ld   [bc], a                                     ; $7fb5: $02
	ld   a, a                                        ; $7fb6: $7f
	ld   h, c                                        ; $7fb7: $61
	ld   d, h                                        ; $7fb8: $54
	ld   e, c                                        ; $7fb9: $59
	sbc  a                                           ; $7fba: $9f
	dec  c                                           ; $7fbb: $0d
	nop                                              ; $7fbc: $00
	ld   a, [bc]                                     ; $7fbd: $0a
	inc  e                                           ; $7fbe: $1c
	inc  b                                           ; $7fbf: $04
	ld   bc, $1d01                                   ; $7fc0: $01 $01 $1d
	ld   b, b                                        ; $7fc3: $40
	inc  d                                           ; $7fc4: $14
	inc  bc                                          ; $7fc5: $03
	inc  d                                           ; $7fc6: $14
	ld   bc, $2803                                   ; $7fc7: $01 $03 $28
	nop                                              ; $7fca: $00
	ld   bc, $a154                                   ; $7fcb: $01 $54 $a1
	ld   a, [$000d]                                  ; $7fce: $fa $0d $00
	ld   a, [bc]                                     ; $7fd1: $0a
	dec  c                                           ; $7fd2: $0d
	nop                                              ; $7fd3: $00
	nop                                              ; $7fd4: $00
	rrca                                             ; $7fd5: $0f
	nop                                              ; $7fd6: $00
	ld   bc, $3e06                                   ; $7fd7: $01 $06 $3e
	rrca                                             ; $7fda: $0f
	rrca                                             ; $7fdb: $0f
	nop                                              ; $7fdc: $00
	ld   bc, $c101                                   ; $7fdd: $01 $01 $c1
	db   $e3                                         ; $7fe0: $e3
	ld   l, [hl]                                     ; $7fe1: $6e
	sub  [hl]                                        ; $7fe2: $96
	sbc  a                                           ; $7fe3: $9f
	dec  c                                           ; $7fe4: $0d
	ld   l, e                                        ; $7fe5: $6b
	sbc  e                                           ; $7fe6: $9b
	ld   l, e                                        ; $7fe7: $6b
	sbc  e                                           ; $7fe8: $9b
	ld   [bc], a                                     ; $7fe9: $02
	or   l                                           ; $7fea: $b5
	sub  a                                           ; $7feb: $97
	ld   a, b                                        ; $7fec: $78
	ld   d, d                                        ; $7fed: $52
	halt                                             ; $7fee: $76
	dec  c                                           ; $7fef: $0d
	adc  l                                           ; $7ff0: $8d
	and  c                                           ; $7ff1: $a1
	ld   a, b                                        ; $7ff2: $78
	inc  bc                                          ; $7ff3: $03
	ld   [hl], l                                     ; $7ff4: $75
	inc  b                                           ; $7ff5: $04
	xor  e                                           ; $7ff6: $ab
	ld   h, a                                        ; $7ff7: $67
	sbc  c                                           ; $7ff8: $99
	ld   h, l                                        ; $7ff9: $65
	rst  $38                                         ; $7ffa: $ff
	rst  $38                                         ; $7ffb: $ff
	dec  c                                           ; $7ffc: $0d
	nop                                              ; $7ffd: $00
	ld   a, [bc]                                     ; $7ffe: $0a
	inc  e                                           ; $7fff: $1c
