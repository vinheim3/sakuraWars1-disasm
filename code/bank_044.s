; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $044", ROMX[$4000], BANK[$44]

	ld   bc, $0804                                   ; $4000: $01 $04 $08
	ld   [bc], a                                     ; $4003: $02
	sub  c                                           ; $4004: $91
	ld   a, c                                        ; $4005: $79
	ld   a, l                                        ; $4006: $7d
	ld   d, b                                        ; $4007: $50
	ld   d, b                                        ; $4008: $50
	ld   d, d                                        ; $4009: $52
	ld   d, h                                        ; $400a: $54
	inc  b                                           ; $400b: $04
	ld   a, b                                        ; $400c: $78
	sub  b                                           ; $400d: $90
	dec  c                                           ; $400e: $0d
	ld   d, d                                        ; $400f: $52
	sub  a                                           ; $4010: $97
	ld   [hl], c                                     ; $4011: $71
	ld   h, l                                        ; $4012: $65
	sub  c                                           ; $4013: $91
	ld   d, d                                        ; $4014: $52
	adc  h                                           ; $4015: $8c
	ld   h, a                                        ; $4016: $67
	ld   e, d                                        ; $4017: $5a
	sbc  [hl]                                        ; $4018: $9e
	dec  c                                           ; $4019: $0d
	ld   e, b                                        ; $401a: $58
	ld   [bc], a                                     ; $401b: $02
	and  c                                           ; $401c: $a1
	ld   a, c                                        ; $401d: $79
	ld   a, b                                        ; $401e: $78
	ld   h, e                                        ; $401f: $63
	sub  a                                           ; $4020: $97
	ld   a, b                                        ; $4021: $78
	ld   d, d                                        ; $4022: $52
	sub  [hl]                                        ; $4023: $96
	ld   d, h                                        ; $4024: $54
	ld   a, c                                        ; $4025: $79
	sbc  a                                           ; $4026: $9f
	dec  c                                           ; $4027: $0d
	nop                                              ; $4028: $00
	ld   a, [bc]                                     ; $4029: $0a
	rrca                                             ; $402a: $0f
	nop                                              ; $402b: $00
	ld   bc, $7d01                                   ; $402c: $01 $01 $7d
	ld   d, b                                        ; $402f: $50
	rst  $38                                         ; $4030: $ff
	rst  $38                                         ; $4031: $ff
	dec  c                                           ; $4032: $0d
	halt                                             ; $4033: $76
	ld   h, c                                        ; $4034: $61
	sbc  e                                           ; $4035: $9b
	ld   [hl], l                                     ; $4036: $75
	sbc  [hl]                                        ; $4037: $9e
	inc  b                                           ; $4038: $04
	ld   l, l                                        ; $4039: $6d
	ld   a, h                                        ; $403a: $7c
	inc  b                                           ; $403b: $04
	rst  ToBoot                                         ; $403c: $c7
	inc  bc                                          ; $403d: $03
	ld   c, a                                        ; $403e: $4f
	ld   a, l                                        ; $403f: $7d
	sbc  [hl]                                        ; $4040: $9e
	dec  c                                           ; $4041: $0d
	ld   [$7500], sp                                 ; $4042: $08 $00 $75
	ld   h, a                                        ; $4045: $67
	sub  [hl]                                        ; $4046: $96
	sbc  a                                           ; $4047: $9f
	dec  c                                           ; $4048: $0d
	nop                                              ; $4049: $00
	ld   a, [bc]                                     ; $404a: $0a
	inc  e                                           ; $404b: $1c
	ld   [bc], a                                     ; $404c: $02
	nop                                              ; $404d: $00
	nop                                              ; $404e: $00
	ld   bc, $a16b                                   ; $404f: $01 $6b $a1
	ld   a, b                                        ; $4052: $78
	ld   h, c                                        ; $4053: $61
	halt                                             ; $4054: $76
	sbc  [hl]                                        ; $4055: $9e
	dec  c                                           ; $4056: $0d
	ld   [hl], a                                     ; $4057: $77
	ld   d, h                                        ; $4058: $54
	ld   [hl], l                                     ; $4059: $75
	sub  b                                           ; $405a: $90
	ld   d, d                                        ; $405b: $52
	ld   d, d                                        ; $405c: $52
	ld   h, [hl]                                     ; $405d: $66
	sub  c                                           ; $405e: $91
	dec  c                                           ; $405f: $0d
	ld   d, b                                        ; $4060: $50
	sbc  b                                           ; $4061: $98
	adc  h                                           ; $4062: $8c
	ld   l, c                                        ; $4063: $69
	and  c                                           ; $4064: $a1
	ld   a, h                                        ; $4065: $7c
	sbc  a                                           ; $4066: $9f
	dec  c                                           ; $4067: $0d
	nop                                              ; $4068: $00
	ld   a, [bc]                                     ; $4069: $0a
	ld   bc, $9166                                   ; $406a: $01 $66 $91
	ld   d, b                                        ; $406d: $50
	sbc  [hl]                                        ; $406e: $9e
	ld   [bc], a                                     ; $406f: $02
	and  l                                           ; $4070: $a5
	inc  b                                           ; $4071: $04
	xor  d                                           ; $4072: $aa
	sub  b                                           ; $4073: $90
	ld   [bc], a                                     ; $4074: $02
	jr   nz, jr_044_407b                             ; $4075: $20 $04

	xor  d                                           ; $4077: $aa
	dec  c                                           ; $4078: $0d
	ld   e, d                                        ; $4079: $5a
	and  c                                           ; $407a: $a1

jr_044_407b:
	ld   a, [hl]                                     ; $407b: $7e
	sbc  b                                           ; $407c: $98
	ld   a, b                                        ; $407d: $78
	ld   h, e                                        ; $407e: $63
	ld   d, d                                        ; $407f: $52
	sbc  a                                           ; $4080: $9f
	dec  c                                           ; $4081: $0d
	nop                                              ; $4082: $00
	ld   a, [bc]                                     ; $4083: $0a
	dec  c                                           ; $4084: $0d
	nop                                              ; $4085: $00
	nop                                              ; $4086: $00
	rrca                                             ; $4087: $0f
	nop                                              ; $4088: $00
	ld   bc, $1e09                                   ; $4089: $01 $09 $1e
	nop                                              ; $408c: $00
	rrca                                             ; $408d: $0f
	nop                                              ; $408e: $00
	ld   bc, $6701                                   ; $408f: $01 $01 $67
	adc  l                                           ; $4092: $8d
	sbc  d                                           ; $4093: $9a
	ld   h, e                                        ; $4094: $63
	and  c                                           ; $4095: $a1
	sbc  [hl]                                        ; $4096: $9e
	dec  c                                           ; $4097: $0d
	ld   e, b                                        ; $4098: $58
	ld   a, l                                        ; $4099: $7d
	sub  [hl]                                        ; $409a: $96
	ld   d, h                                        ; $409b: $54
	ld   h, d                                        ; $409c: $62
	ld   h, h                                        ; $409d: $64
	ld   d, d                                        ; $409e: $52
	adc  h                                           ; $409f: $8c
	ld   h, a                                        ; $40a0: $67
	sbc  a                                           ; $40a1: $9f
	dec  c                                           ; $40a2: $0d
	ld   [bc], a                                     ; $40a3: $02
	and  l                                           ; $40a4: $a5
	inc  b                                           ; $40a5: $04
	xor  d                                           ; $40a6: $aa
	sub  b                                           ; $40a7: $90
	sbc  [hl]                                        ; $40a8: $9e
	ld   e, b                                        ; $40a9: $58
	inc  b                                           ; $40aa: $04
	and  c                                           ; $40ab: $a1
	ld   h, l                                        ; $40ac: $65
	ld   d, d                                        ; $40ad: $52
	rst  $38                                         ; $40ae: $ff
	rst  $38                                         ; $40af: $ff
	dec  c                                           ; $40b0: $0d
	nop                                              ; $40b1: $00
	ld   a, [bc]                                     ; $40b2: $0a
	inc  e                                           ; $40b3: $1c
	ld   [bc], a                                     ; $40b4: $02
	ld   bc, $1d01                                   ; $40b5: $01 $01 $1d
	ld   b, b                                        ; $40b8: $40
	ld   [de], a                                     ; $40b9: $12
	inc  bc                                          ; $40ba: $03
	ld   [de], a                                     ; $40bb: $12
	ld   bc, $2802                                   ; $40bc: $01 $02 $28
	nop                                              ; $40bf: $00
	ld   bc, $1804                                   ; $40c0: $01 $04 $18
	inc  bc                                          ; $40c3: $03
	sbc  c                                           ; $40c4: $99
	ld   [hl], l                                     ; $40c5: $75
	ld   h, l                                        ; $40c6: $65
	sub  l                                           ; $40c7: $95
	sbc  a                                           ; $40c8: $9f
	dec  c                                           ; $40c9: $0d
	ld   [$6308], sp                                 ; $40ca: $08 $08 $63
	and  c                                           ; $40cd: $a1
	sbc  a                                           ; $40ce: $9f
	dec  c                                           ; $40cf: $0d
	nop                                              ; $40d0: $00
	ld   a, [bc]                                     ; $40d1: $0a
	inc  e                                           ; $40d2: $1c
	ld   [bc], a                                     ; $40d3: $02
	dec  b                                           ; $40d4: $05
	dec  b                                           ; $40d5: $05
	ld   bc, $6176                                   ; $40d6: $01 $76 $61
	sbc  e                                           ; $40d9: $9b
	ld   [hl], l                                     ; $40da: $75
	sbc  [hl]                                        ; $40db: $9e
	dec  b                                           ; $40dc: $05
	ld   b, l                                        ; $40dd: $45
	inc  b                                           ; $40de: $04
	xor  d                                           ; $40df: $aa
	ld   a, l                                        ; $40e0: $7d
	dec  c                                           ; $40e1: $0d
	inc  b                                           ; $40e2: $04
	ld   c, $04                                      ; $40e3: $0e $04
	adc  h                                           ; $40e5: $8c
	ld   a, b                                        ; $40e6: $78
	inc  b                                           ; $40e7: $04
	call nc, Call_044_5079                           ; $40e8: $d4 $79 $50
	ld   [hl], c                                     ; $40eb: $71
	ld   l, l                                        ; $40ec: $6d
	halt                                             ; $40ed: $76
	ld   e, c                                        ; $40ee: $59
	rst  $38                                         ; $40ef: $ff
	rst  $38                                         ; $40f0: $ff
	dec  c                                           ; $40f1: $0d
	nop                                              ; $40f2: $00
	ld   a, [bc]                                     ; $40f3: $0a
	ld   bc, $0804                                   ; $40f4: $01 $04 $08
	ld   [bc], a                                     ; $40f7: $02
	sub  c                                           ; $40f8: $91
	ld   a, c                                        ; $40f9: $79
	ld   a, l                                        ; $40fa: $7d
	ld   d, b                                        ; $40fb: $50
	ld   d, b                                        ; $40fc: $50
	ld   d, d                                        ; $40fd: $52
	ld   d, h                                        ; $40fe: $54
	inc  b                                           ; $40ff: $04
	ld   a, b                                        ; $4100: $78
	sub  b                                           ; $4101: $90
	dec  c                                           ; $4102: $0d
	ld   d, d                                        ; $4103: $52
	sub  a                                           ; $4104: $97
	ld   [hl], c                                     ; $4105: $71
	ld   h, l                                        ; $4106: $65
	sub  c                                           ; $4107: $91
	ld   d, d                                        ; $4108: $52
	adc  h                                           ; $4109: $8c
	ld   h, a                                        ; $410a: $67
	ld   e, d                                        ; $410b: $5a
	sbc  [hl]                                        ; $410c: $9e
	dec  c                                           ; $410d: $0d
	ld   e, b                                        ; $410e: $58
	ld   [bc], a                                     ; $410f: $02
	and  c                                           ; $4110: $a1
	ld   a, c                                        ; $4111: $79
	ld   a, b                                        ; $4112: $78
	ld   h, e                                        ; $4113: $63
	sub  a                                           ; $4114: $97
	ld   a, b                                        ; $4115: $78
	ld   d, d                                        ; $4116: $52
	sub  [hl]                                        ; $4117: $96
	ld   d, h                                        ; $4118: $54
	ld   a, c                                        ; $4119: $79
	sbc  a                                           ; $411a: $9f
	dec  c                                           ; $411b: $0d
	nop                                              ; $411c: $00
	ld   a, [bc]                                     ; $411d: $0a
	rrca                                             ; $411e: $0f
	nop                                              ; $411f: $00
	ld   bc, $7d01                                   ; $4120: $01 $01 $7d
	ld   d, b                                        ; $4123: $50
	rst  $38                                         ; $4124: $ff
	rst  $38                                         ; $4125: $ff
	dec  c                                           ; $4126: $0d
	halt                                             ; $4127: $76
	ld   h, c                                        ; $4128: $61
	sbc  e                                           ; $4129: $9b
	ld   [hl], l                                     ; $412a: $75
	sbc  [hl]                                        ; $412b: $9e
	inc  b                                           ; $412c: $04
	ld   l, l                                        ; $412d: $6d
	ld   a, h                                        ; $412e: $7c
	inc  b                                           ; $412f: $04
	rst  ToBoot                                         ; $4130: $c7
	inc  bc                                          ; $4131: $03
	ld   c, a                                        ; $4132: $4f
	ld   a, l                                        ; $4133: $7d
	sbc  [hl]                                        ; $4134: $9e
	dec  c                                           ; $4135: $0d
	ld   [$7500], sp                                 ; $4136: $08 $00 $75
	ld   h, a                                        ; $4139: $67
	sub  [hl]                                        ; $413a: $96
	sbc  a                                           ; $413b: $9f
	dec  c                                           ; $413c: $0d
	nop                                              ; $413d: $00
	ld   a, [bc]                                     ; $413e: $0a
	inc  e                                           ; $413f: $1c
	ld   [bc], a                                     ; $4140: $02
	nop                                              ; $4141: $00
	nop                                              ; $4142: $00
	ld   bc, $a16b                                   ; $4143: $01 $6b $a1
	ld   a, b                                        ; $4146: $78
	ld   h, c                                        ; $4147: $61
	halt                                             ; $4148: $76
	sbc  [hl]                                        ; $4149: $9e
	dec  c                                           ; $414a: $0d
	ld   [hl], a                                     ; $414b: $77
	ld   d, h                                        ; $414c: $54
	ld   [hl], l                                     ; $414d: $75
	sub  b                                           ; $414e: $90
	ld   d, d                                        ; $414f: $52
	ld   d, d                                        ; $4150: $52
	ld   h, [hl]                                     ; $4151: $66
	sub  c                                           ; $4152: $91
	dec  c                                           ; $4153: $0d
	ld   d, b                                        ; $4154: $50
	sbc  b                                           ; $4155: $98
	adc  h                                           ; $4156: $8c
	ld   l, c                                        ; $4157: $69
	and  c                                           ; $4158: $a1
	ld   a, h                                        ; $4159: $7c
	sbc  a                                           ; $415a: $9f
	dec  c                                           ; $415b: $0d
	nop                                              ; $415c: $00
	ld   a, [bc]                                     ; $415d: $0a
	ld   bc, $9166                                   ; $415e: $01 $66 $91
	ld   d, b                                        ; $4161: $50
	sbc  [hl]                                        ; $4162: $9e
	ld   [bc], a                                     ; $4163: $02
	and  l                                           ; $4164: $a5
	inc  b                                           ; $4165: $04
	xor  d                                           ; $4166: $aa
	sub  b                                           ; $4167: $90
	ld   [bc], a                                     ; $4168: $02
	jr   nz, jr_044_416f                             ; $4169: $20 $04

	xor  d                                           ; $416b: $aa
	dec  c                                           ; $416c: $0d
	ld   e, d                                        ; $416d: $5a
	and  c                                           ; $416e: $a1

jr_044_416f:
	ld   a, [hl]                                     ; $416f: $7e
	sbc  b                                           ; $4170: $98
	ld   a, b                                        ; $4171: $78
	ld   h, e                                        ; $4172: $63
	ld   d, d                                        ; $4173: $52
	sbc  a                                           ; $4174: $9f
	dec  c                                           ; $4175: $0d
	nop                                              ; $4176: $00
	ld   a, [bc]                                     ; $4177: $0a
	dec  c                                           ; $4178: $0d
	nop                                              ; $4179: $00
	nop                                              ; $417a: $00
	rrca                                             ; $417b: $0f
	nop                                              ; $417c: $00
	ld   bc, $1e09                                   ; $417d: $01 $09 $1e
	nop                                              ; $4180: $00
	rrca                                             ; $4181: $0f
	nop                                              ; $4182: $00
	ld   bc, $6701                                   ; $4183: $01 $01 $67
	adc  l                                           ; $4186: $8d
	sbc  d                                           ; $4187: $9a
	ld   h, e                                        ; $4188: $63
	and  c                                           ; $4189: $a1
	sbc  [hl]                                        ; $418a: $9e
	dec  c                                           ; $418b: $0d
	ld   e, b                                        ; $418c: $58
	ld   a, l                                        ; $418d: $7d
	sub  [hl]                                        ; $418e: $96
	ld   d, h                                        ; $418f: $54
	ld   h, d                                        ; $4190: $62
	ld   h, h                                        ; $4191: $64
	ld   d, d                                        ; $4192: $52
	adc  h                                           ; $4193: $8c
	ld   h, a                                        ; $4194: $67
	sbc  a                                           ; $4195: $9f
	dec  c                                           ; $4196: $0d
	ld   d, b                                        ; $4197: $50
	ld   a, h                                        ; $4198: $7c
	rst  $38                                         ; $4199: $ff
	rst  $38                                         ; $419a: $ff
	ld   [bc], a                                     ; $419b: $02
	and  l                                           ; $419c: $a5
	inc  b                                           ; $419d: $04
	ld   e, d                                        ; $419e: $5a
	ld   e, b                                        ; $419f: $58
	add  b                                           ; $41a0: $80
	adc  h                                           ; $41a1: $8c
	ld   [hl], l                                     ; $41a2: $75
	ld   h, a                                        ; $41a3: $67
	ld   e, c                                        ; $41a4: $59
	ld   sp, hl                                      ; $41a5: $f9
	dec  c                                           ; $41a6: $0d
	nop                                              ; $41a7: $00
	ld   a, [bc]                                     ; $41a8: $0a
	inc  e                                           ; $41a9: $1c
	ld   [bc], a                                     ; $41aa: $02
	ld   bc, $0101                                   ; $41ab: $01 $01 $01
	ld   d, b                                        ; $41ae: $50
	sub  a                                           ; $41af: $97
	sbc  [hl]                                        ; $41b0: $9e
	ld   [$6308], sp                                 ; $41b1: $08 $08 $63
	and  c                                           ; $41b4: $a1
	sbc  a                                           ; $41b5: $9f
	dec  c                                           ; $41b6: $0d
	ld   l, e                                        ; $41b7: $6b
	sbc  d                                           ; $41b8: $9a
	ld   a, l                                        ; $41b9: $7d
	sbc  [hl]                                        ; $41ba: $9e
	ld   [hl], a                                     ; $41bb: $77
	ld   d, h                                        ; $41bc: $54
	ld   d, d                                        ; $41bd: $52
	ld   d, h                                        ; $41be: $54
	ld   [hl], d                                     ; $41bf: $72
	sub  b                                           ; $41c0: $90
	sbc  b                                           ; $41c1: $98
	ld   sp, hl                                      ; $41c2: $f9
	dec  c                                           ; $41c3: $0d
	nop                                              ; $41c4: $00
	ld   a, [bc]                                     ; $41c5: $0a
	ld   bc, $a16b                                   ; $41c6: $01 $6b $a1
	ld   a, b                                        ; $41c9: $78
	inc  b                                           ; $41ca: $04
	or   c                                           ; $41cb: $b1
	ld   [hl], d                                     ; $41cc: $72
	ld   d, d                                        ; $41cd: $52
	ld   l, l                                        ; $41ce: $6d
	ld   [bc], a                                     ; $41cf: $02
	and  c                                           ; $41d0: $a1
	inc  bc                                          ; $41d1: $03
	and  b                                           ; $41d2: $a0
	ld   l, a                                        ; $41d3: $6f
	ld   [hl], l                                     ; $41d4: $75
	dec  c                                           ; $41d5: $0d
	ld   d, d                                        ; $41d6: $52
	sbc  c                                           ; $41d7: $99
	halt                                             ; $41d8: $76
	sbc  [hl]                                        ; $41d9: $9e
	adc  h                                           ; $41da: $8c
	ld   l, l                                        ; $41db: $6d
	dec  b                                           ; $41dc: $05
	ld   b, l                                        ; $41dd: $45
	inc  b                                           ; $41de: $04
	ld   e, d                                        ; $41df: $5a
	ld   a, h                                        ; $41e0: $7c
	sub  [hl]                                        ; $41e1: $96
	ld   d, h                                        ; $41e2: $54
	ld   a, b                                        ; $41e3: $78
	dec  c                                           ; $41e4: $0d
	inc  b                                           ; $41e5: $04
	call nc, Call_044_5079                           ; $41e6: $d4 $79 $50
	ld   d, d                                        ; $41e9: $52
	adc  h                                           ; $41ea: $8c
	ld   h, a                                        ; $41eb: $67
	sbc  l                                           ; $41ec: $9d
	sub  [hl]                                        ; $41ed: $96
	sbc  a                                           ; $41ee: $9f
	dec  c                                           ; $41ef: $0d
	nop                                              ; $41f0: $00
	ld   a, [bc]                                     ; $41f1: $0a
	inc  e                                           ; $41f2: $1c
	ld   [bc], a                                     ; $41f3: $02
	ld   [bc], a                                     ; $41f4: $02
	ld   [bc], a                                     ; $41f5: $02
	dec  e                                           ; $41f6: $1d
	ld   b, b                                        ; $41f7: $40
	ld   [de], a                                     ; $41f8: $12
	inc  bc                                          ; $41f9: $03
	ld   [de], a                                     ; $41fa: $12
	ld   bc, $2902                                   ; $41fb: $01 $02 $29
	nop                                              ; $41fe: $00
	ld   bc, $5f96                                   ; $41ff: $01 $96 $5f
	ld   d, d                                        ; $4202: $52
	ld   a, b                                        ; $4203: $78
	ld   h, c                                        ; $4204: $61
	halt                                             ; $4205: $76
	and  b                                           ; $4206: $a0
	ld   [bc], a                                     ; $4207: $02
	ld   h, l                                        ; $4208: $65
	ld   d, [hl]                                     ; $4209: $56
	ld   l, b                                        ; $420a: $68
	ld   a, c                                        ; $420b: $79
	sbc  [hl]                                        ; $420c: $9e
	dec  c                                           ; $420d: $0d
	inc  bc                                          ; $420e: $03
	ld   l, l                                        ; $420f: $6d
	dec  b                                           ; $4210: $05
	add  hl, de                                      ; $4211: $19
	ld   a, c                                        ; $4212: $79
	ld   a, l                                        ; $4213: $7d
	ld   h, b                                        ; $4214: $60
	adc  l                                           ; $4215: $8d
	ld   a, b                                        ; $4216: $78
	ld   h, e                                        ; $4217: $63
	ld   d, d                                        ; $4218: $52
	sbc  a                                           ; $4219: $9f
	dec  c                                           ; $421a: $0d
	nop                                              ; $421b: $00
	ld   a, [bc]                                     ; $421c: $0a
	rrca                                             ; $421d: $0f
	nop                                              ; $421e: $00
	ld   bc, $5001                                   ; $421f: $01 $01 $50
	ld   a, h                                        ; $4222: $7c
	rst  $38                                         ; $4223: $ff
	rst  $38                                         ; $4224: $ff
	inc  b                                           ; $4225: $04
	ld   l, l                                        ; $4226: $6d
	ld   a, h                                        ; $4227: $7c
	inc  b                                           ; $4228: $04
	rst  ToBoot                                         ; $4229: $c7
	inc  bc                                          ; $422a: $03
	ld   c, a                                        ; $422b: $4f
	ld   a, l                                        ; $422c: $7d
	sbc  [hl]                                        ; $422d: $9e
	dec  c                                           ; $422e: $0d
	ld   [$7800], sp                                 ; $422f: $08 $00 $78
	ld   a, h                                        ; $4232: $7c
	ld   [hl], l                                     ; $4233: $75
	ld   h, a                                        ; $4234: $67
	ld   e, d                                        ; $4235: $5a
	rst  $38                                         ; $4236: $ff
	rst  $38                                         ; $4237: $ff
	dec  c                                           ; $4238: $0d
	nop                                              ; $4239: $00
	ld   a, [bc]                                     ; $423a: $0a
	inc  e                                           ; $423b: $1c
	ld   [bc], a                                     ; $423c: $02
	ld   [bc], a                                     ; $423d: $02
	ld   [bc], a                                     ; $423e: $02
	ld   bc, $a16b                                   ; $423f: $01 $6b $a1
	ld   a, b                                        ; $4242: $78
	ld   h, c                                        ; $4243: $61
	halt                                             ; $4244: $76
	sbc  [hl]                                        ; $4245: $9e
	dec  c                                           ; $4246: $0d
	ld   [hl], a                                     ; $4247: $77
	ld   d, h                                        ; $4248: $54
	ld   [hl], l                                     ; $4249: $75
	sub  b                                           ; $424a: $90
	ld   d, d                                        ; $424b: $52
	ld   d, d                                        ; $424c: $52
	ld   h, [hl]                                     ; $424d: $66
	sub  c                                           ; $424e: $91
	dec  c                                           ; $424f: $0d
	ld   d, b                                        ; $4250: $50
	sbc  b                                           ; $4251: $98
	adc  h                                           ; $4252: $8c
	ld   l, c                                        ; $4253: $69
	and  c                                           ; $4254: $a1
	ld   a, h                                        ; $4255: $7c
	sbc  a                                           ; $4256: $9f
	dec  c                                           ; $4257: $0d
	nop                                              ; $4258: $00
	ld   a, [bc]                                     ; $4259: $0a
	dec  c                                           ; $425a: $0d
	nop                                              ; $425b: $00
	nop                                              ; $425c: $00
	rrca                                             ; $425d: $0f
	nop                                              ; $425e: $00
	ld   bc, $1e09                                   ; $425f: $01 $09 $1e
	nop                                              ; $4262: $00
	inc  e                                           ; $4263: $1c
	ld   [bc], a                                     ; $4264: $02
	ld   bc, $0101                                   ; $4265: $01 $01 $01
	inc  b                                           ; $4268: $04
	ld   c, c                                        ; $4269: $49
	db   $dd                                         ; $426a: $dd
	ei                                               ; $426b: $fb
	call nz, Call_044_6576                           ; $426c: $c4 $76 $65
	ld   [hl], h                                     ; $426f: $74
	ld   d, d                                        ; $4270: $52
	sbc  c                                           ; $4271: $99
	ld   a, h                                        ; $4272: $7c
	ld   sp, hl                                      ; $4273: $f9
	dec  c                                           ; $4274: $0d
	sbc  l                                           ; $4275: $9d
	ld   l, l                                        ; $4276: $6d
	ld   e, l                                        ; $4277: $5d
	ld   h, l                                        ; $4278: $65
	ld   a, c                                        ; $4279: $79
	ld   [bc], a                                     ; $427a: $02
	sub  l                                           ; $427b: $95
	halt                                             ; $427c: $76
	sbc  d                                           ; $427d: $9a
	sbc  c                                           ; $427e: $99
	ld   a, h                                        ; $427f: $7c
	sub  b                                           ; $4280: $90
	dec  c                                           ; $4281: $0d
	ldh  [c], a                                      ; $4282: $e2
	db   $ec                                         ; $4283: $ec
	ld   a, b                                        ; $4284: $78
	ld   d, d                                        ; $4285: $52
	ld   h, c                                        ; $4286: $61
	halt                                             ; $4287: $76
	ld   [hl], l                                     ; $4288: $75
	ld   h, a                                        ; $4289: $67
	ld   e, a                                        ; $428a: $5f
	ld   [hl], a                                     ; $428b: $77
	rst  $38                                         ; $428c: $ff
	rst  $38                                         ; $428d: $ff
	dec  c                                           ; $428e: $0d
	nop                                              ; $428f: $00
	ld   a, [bc]                                     ; $4290: $0a
	inc  e                                           ; $4291: $1c
	ld   [bc], a                                     ; $4292: $02
	ld   [bc], a                                     ; $4293: $02
	ld   [bc], a                                     ; $4294: $02
	dec  e                                           ; $4295: $1d
	ld   b, b                                        ; $4296: $40
	ld   [de], a                                     ; $4297: $12
	inc  bc                                          ; $4298: $03
	ld   [de], a                                     ; $4299: $12
	ld   bc, $2902                                   ; $429a: $01 $02 $29
	nop                                              ; $429d: $00
	ld   bc, $5250                                   ; $429e: $01 $50 $52
	ld   h, e                                        ; $42a1: $63
	ld   [hl], d                                     ; $42a2: $72
	ld   e, [hl]                                     ; $42a3: $5e
	sub  a                                           ; $42a4: $97
	ld   d, d                                        ; $42a5: $52
	dec  c                                           ; $42a6: $0d
	ld   e, e                                        ; $42a7: $5b
	ld   l, a                                        ; $42a8: $6f
	and  c                                           ; $42a9: $a1
	halt                                             ; $42aa: $76
	ld   a, b                                        ; $42ab: $78
	ld   h, e                                        ; $42ac: $63
	ld   d, d                                        ; $42ad: $52
	sbc  a                                           ; $42ae: $9f
	dec  c                                           ; $42af: $0d
	nop                                              ; $42b0: $00
	ld   a, [bc]                                     ; $42b1: $0a
	ld   bc, $a16b                                   ; $42b2: $01 $6b $a1
	ld   a, b                                        ; $42b5: $78
	ld   h, c                                        ; $42b6: $61
	halt                                             ; $42b7: $76
	ld   l, [hl]                                     ; $42b8: $6e
	ld   e, c                                        ; $42b9: $59
	sub  a                                           ; $42ba: $97
	dec  c                                           ; $42bb: $0d
	dec  b                                           ; $42bc: $05
	ld   b, l                                        ; $42bd: $45
	inc  b                                           ; $42be: $04
	ld   e, d                                        ; $42bf: $5a
	ld   a, h                                        ; $42c0: $7c
	sub  [hl]                                        ; $42c1: $96
	ld   d, h                                        ; $42c2: $54
	ld   a, b                                        ; $42c3: $78
	inc  b                                           ; $42c4: $04
	call nc, $0d79                                   ; $42c5: $d4 $79 $0d
	ld   d, b                                        ; $42c8: $50
	ld   d, h                                        ; $42c9: $54
	ld   a, h                                        ; $42ca: $7c
	ld   [hl], l                                     ; $42cb: $75
	ld   h, a                                        ; $42cc: $67
	sbc  l                                           ; $42cd: $9d
	sub  [hl]                                        ; $42ce: $96
	sbc  a                                           ; $42cf: $9f
	dec  c                                           ; $42d0: $0d
	nop                                              ; $42d1: $00
	ld   a, [bc]                                     ; $42d2: $0a
	dec  c                                           ; $42d3: $0d
	nop                                              ; $42d4: $00
	nop                                              ; $42d5: $00
	rrca                                             ; $42d6: $0f
	nop                                              ; $42d7: $00
	ld   bc, $1e09                                   ; $42d8: $01 $09 $1e
	nop                                              ; $42db: $00
	nop                                              ; $42dc: $00
	inc  e                                           ; $42dd: $1c
	ld   bc, $0000                                   ; $42de: $01 $00 $00
	ld   [bc], a                                     ; $42e1: $02
	rlca                                             ; $42e2: $07
	add  sp, $01                                     ; $42e3: $e8 $01
	inc  b                                           ; $42e5: $04
	add  b                                           ; $42e6: $80
	jr   nc, jr_044_42ea                             ; $42e7: $30 $01

	rst  $38                                         ; $42e9: $ff

jr_044_42ea:
	jr   nz, jr_044_42ee                             ; $42ea: $20 $02

	nop                                              ; $42ec: $00
	inc  bc                                          ; $42ed: $03

jr_044_42ee:
	ld   b, b                                        ; $42ee: $40
	ld   bc, $2801                                   ; $42ef: $01 $01 $28
	jr   nz, jr_044_4310                             ; $42f2: $20 $1c

	nop                                              ; $42f4: $00
	ld   bc, $9750                                   ; $42f5: $01 $50 $97
	sbc  [hl]                                        ; $42f8: $9e
	ld   [$6300], sp                                 ; $42f9: $08 $00 $63
	and  c                                           ; $42fc: $a1
	sbc  a                                           ; $42fd: $9f
	dec  c                                           ; $42fe: $0d
	nop                                              ; $42ff: $00
	ld   a, [bc]                                     ; $4300: $0a
	ld   bc, $ef04                                   ; $4301: $01 $04 $ef
	ld   a, l                                        ; $4304: $7d
	ld   l, a                                        ; $4305: $6f
	sub  c                                           ; $4306: $91
	and  c                                           ; $4307: $a1
	halt                                             ; $4308: $76
	inc  b                                           ; $4309: $04
	adc  $9a                                         ; $430a: $ce $9a
	ld   [hl], h                                     ; $430c: $74
	adc  h                                           ; $430d: $8c
	ld   h, a                                        ; $430e: $67
	ld   e, c                                        ; $430f: $59

jr_044_4310:
	ld   sp, hl                                      ; $4310: $f9
	dec  c                                           ; $4311: $0d
	nop                                              ; $4312: $00
	ld   a, [bc]                                     ; $4313: $0a
	add  hl, de                                      ; $4314: $19
	dec  b                                           ; $4315: $05
	inc  bc                                          ; $4316: $03
	ld   a, l                                        ; $4317: $7d
	ld   d, d                                        ; $4318: $52
	nop                                              ; $4319: $00
	nop                                              ; $431a: $00
	ld   d, d                                        ; $431b: $52
	ld   d, d                                        ; $431c: $52
	ld   d, [hl]                                     ; $431d: $56
	nop                                              ; $431e: $00
	ld   bc, $508c                                   ; $431f: $01 $8c $50
	adc  h                                           ; $4322: $8c
	ld   d, b                                        ; $4323: $50
	nop                                              ; $4324: $00
	ld   [bc], a                                     ; $4325: $02
	rlca                                             ; $4326: $07
	ld   h, a                                        ; $4327: $67
	nop                                              ; $4328: $00
	ld   [bc], a                                     ; $4329: $02
	inc  bc                                          ; $432a: $03
	ld   bc, $2000                                   ; $432b: $01 $00 $20
	nop                                              ; $432e: $00
	rlca                                             ; $432f: $07
	add  $00                                         ; $4330: $c6 $00
	ld   [bc], a                                     ; $4332: $02
	inc  bc                                          ; $4333: $03
	ld   bc, $2001                                   ; $4334: $01 $01 $20
	nop                                              ; $4337: $00
	rlca                                             ; $4338: $07
	ld   c, e                                        ; $4339: $4b
	ld   bc, $0302                                   ; $433a: $01 $02 $03
	ld   bc, $2002                                   ; $433d: $01 $02 $20
	nop                                              ; $4340: $00
	ld   b, $85                                      ; $4341: $06 $85
	ld   bc, $000f                                   ; $4343: $01 $0f $00
	ld   bc, $7d01                                   ; $4346: $01 $01 $7d
	ld   d, d                                        ; $4349: $52
	sbc  [hl]                                        ; $434a: $9e
	sub  [hl]                                        ; $434b: $96
	ld   e, l                                        ; $434c: $5d
	inc  b                                           ; $434d: $04
	adc  $9a                                         ; $434e: $ce $9a
	ld   [hl], h                                     ; $4350: $74
	adc  h                                           ; $4351: $8c
	ld   h, a                                        ; $4352: $67
	sbc  a                                           ; $4353: $9f
	dec  c                                           ; $4354: $0d
	nop                                              ; $4355: $00
	ld   a, [bc]                                     ; $4356: $0a
	inc  e                                           ; $4357: $1c
	ld   bc, $0101                                   ; $4358: $01 $01 $01
	dec  e                                           ; $435b: $1d
	ld   b, b                                        ; $435c: $40
	ld   de, $1103                                   ; $435d: $11 $03 $11
	ld   bc, $2802                                   ; $4360: $01 $02 $28
	nop                                              ; $4363: $00
	ld   bc, $5996                                   ; $4364: $01 $96 $59
	ld   [hl], c                                     ; $4367: $71
	ld   l, l                                        ; $4368: $6d
	rst  $38                                         ; $4369: $ff
	rst  $38                                         ; $436a: $ff
	dec  c                                           ; $436b: $0d
	dec  b                                           ; $436c: $05
	sbc  d                                           ; $436d: $9a
	inc  b                                           ; $436e: $04
	adc  $05                                         ; $436f: $ce $05
	sbc  d                                           ; $4371: $9a
	inc  bc                                          ; $4372: $03
	ld   l, d                                        ; $4373: $6a
	ld   a, l                                        ; $4374: $7d
	ld   [bc], a                                     ; $4375: $02
	ld   [hl], e                                     ; $4376: $73
	dec  b                                           ; $4377: $05
	xor  d                                           ; $4378: $aa
	ld   a, h                                        ; $4379: $7c
	dec  b                                           ; $437a: $05
	xor  c                                           ; $437b: $a9
	inc  b                                           ; $437c: $04
	adc  a                                           ; $437d: $8f
	dec  c                                           ; $437e: $0d
	ld   [hl], l                                     ; $437f: $75
	ld   h, a                                        ; $4380: $67
	ld   e, c                                        ; $4381: $59
	sub  a                                           ; $4382: $97
	ld   a, e                                        ; $4383: $7b
	sbc  a                                           ; $4384: $9f
	dec  c                                           ; $4385: $0d
	nop                                              ; $4386: $00
	ld   a, [bc]                                     ; $4387: $0a
	ld   bc, $9166                                   ; $4388: $01 $66 $91
	sbc  [hl]                                        ; $438b: $9e
	ld   e, d                                        ; $438c: $5a
	and  c                                           ; $438d: $a1
	ld   a, [hl]                                     ; $438e: $7e
	ld   [hl], c                                     ; $438f: $71
	ld   [hl], h                                     ; $4390: $74
	ld   [bc], a                                     ; $4391: $02
	inc  [hl]                                        ; $4392: $34
	ld   h, e                                        ; $4393: $63
	ld   d, d                                        ; $4394: $52
	ld   a, e                                        ; $4395: $7b
	sbc  a                                           ; $4396: $9f
	dec  c                                           ; $4397: $0d
	nop                                              ; $4398: $00
	ld   a, [bc]                                     ; $4399: $0a
	dec  c                                           ; $439a: $0d
	nop                                              ; $439b: $00
	nop                                              ; $439c: $00
	rrca                                             ; $439d: $0f
	nop                                              ; $439e: $00
	ld   bc, $1e09                                   ; $439f: $01 $09 $1e
	nop                                              ; $43a2: $00
	rrca                                             ; $43a3: $0f
	nop                                              ; $43a4: $00
	ld   bc, $5201                                   ; $43a5: $01 $01 $52
	ld   d, d                                        ; $43a8: $52
	ld   d, [hl]                                     ; $43a9: $56
	rst  $38                                         ; $43aa: $ff
	rst  $38                                         ; $43ab: $ff
	dec  c                                           ; $43ac: $0d
	inc  bc                                          ; $43ad: $03
	adc  e                                           ; $43ae: $8b
	ld   a, l                                        ; $43af: $7d
	ld   d, b                                        ; $43b0: $50
	adc  h                                           ; $43b1: $8c
	sbc  b                                           ; $43b2: $98
	inc  b                                           ; $43b3: $04
	adc  $9a                                         ; $43b4: $ce $9a
	ld   a, b                                        ; $43b6: $78
	ld   e, l                                        ; $43b7: $5d
	ld   [hl], h                                     ; $43b8: $74
	dec  c                                           ; $43b9: $0d
	dec  b                                           ; $43ba: $05
	sub  [hl]                                        ; $43bb: $96
	ld   [hl], c                                     ; $43bc: $71
	ld   [hl], h                                     ; $43bd: $74
	sbc  c                                           ; $43be: $99
	and  c                                           ; $43bf: $a1
	ld   [hl], l                                     ; $43c0: $75
	ld   h, a                                        ; $43c1: $67
	rst  $38                                         ; $43c2: $ff
	rst  $38                                         ; $43c3: $ff
	dec  c                                           ; $43c4: $0d
	nop                                              ; $43c5: $00
	ld   a, [bc]                                     ; $43c6: $0a
	inc  e                                           ; $43c7: $1c
	ld   bc, $0404                                   ; $43c8: $01 $04 $04
	ld   bc, $546b                                   ; $43cb: $01 $6b $54
	ld   a, b                                        ; $43ce: $78
	and  c                                           ; $43cf: $a1
	ld   [hl], l                                     ; $43d0: $75
	ld   h, a                                        ; $43d1: $67
	ld   e, c                                        ; $43d2: $59
	rst  $38                                         ; $43d3: $ff
	rst  $38                                         ; $43d4: $ff
	dec  c                                           ; $43d5: $0d
	sub  d                                           ; $43d6: $92
	ld   [hl], c                                     ; $43d7: $71
	ld   a, a                                        ; $43d8: $7f
	sbc  b                                           ; $43d9: $98
	dec  b                                           ; $43da: $05
	sbc  e                                           ; $43db: $9b
	dec  b                                           ; $43dc: $05
	sbc  h                                           ; $43dd: $9c
	ld   e, d                                        ; $43de: $5a
	inc  b                                           ; $43df: $04
	adc  h                                           ; $43e0: $8c
	sbc  l                                           ; $43e1: $9d
	sbc  c                                           ; $43e2: $99
	halt                                             ; $43e3: $76
	dec  c                                           ; $43e4: $0d
	dec  b                                           ; $43e5: $05
	ld   [de], a                                     ; $43e6: $12
	ld   l, a                                        ; $43e7: $6f
	inc  b                                           ; $43e8: $04
	rlca                                             ; $43e9: $07
	ld   e, e                                        ; $43ea: $5b
	adc  h                                           ; $43eb: $8c
	ld   l, c                                        ; $43ec: $69
	and  c                                           ; $43ed: $a1
	sub  [hl]                                        ; $43ee: $96
	ld   a, e                                        ; $43ef: $7b
	rst  $38                                         ; $43f0: $ff
	rst  $38                                         ; $43f1: $ff
	dec  c                                           ; $43f2: $0d
	nop                                              ; $43f3: $00
	ld   a, [bc]                                     ; $43f4: $0a
	inc  e                                           ; $43f5: $1c
	ld   bc, $0101                                   ; $43f6: $01 $01 $01
	ld   bc, $9075                                   ; $43f9: $01 $75 $90
	sbc  [hl]                                        ; $43fc: $9e
	inc  bc                                          ; $43fd: $03
	ld   l, h                                        ; $43fe: $6c
	ld   h, l                                        ; $43ff: $65
	ld   [bc], a                                     ; $4400: $02
	and  c                                           ; $4401: $a1
	and  b                                           ; $4402: $a0
	dec  b                                           ; $4403: $05
	inc  de                                          ; $4404: $13
	ld   a, c                                        ; $4405: $79
	ld   h, l                                        ; $4406: $65
	ld   l, l                                        ; $4407: $6d
	sub  a                                           ; $4408: $97
	dec  c                                           ; $4409: $0d
	inc  b                                           ; $440a: $04
	adc  $9a                                         ; $440b: $ce $9a
	sbc  c                                           ; $440d: $99
	halt                                             ; $440e: $76
	dec  b                                           ; $440f: $05
	pop  de                                          ; $4410: $d1
	ld   d, d                                        ; $4411: $52
	adc  h                                           ; $4412: $8c
	ld   h, a                                        ; $4413: $67
	sub  [hl]                                        ; $4414: $96
	sbc  a                                           ; $4415: $9f
	dec  c                                           ; $4416: $0d
	ld   l, e                                        ; $4417: $6b
	sbc  d                                           ; $4418: $9a
	ld   h, [hl]                                     ; $4419: $66
	sub  c                                           ; $441a: $91
	sbc  a                                           ; $441b: $9f
	dec  c                                           ; $441c: $0d
	nop                                              ; $441d: $00
	ld   a, [bc]                                     ; $441e: $0a
	dec  c                                           ; $441f: $0d
	nop                                              ; $4420: $00
	nop                                              ; $4421: $00
	rrca                                             ; $4422: $0f
	nop                                              ; $4423: $00
	ld   bc, $1e09                                   ; $4424: $01 $09 $1e
	nop                                              ; $4427: $00
	rrca                                             ; $4428: $0f
	nop                                              ; $4429: $00
	ld   bc, $8c01                                   ; $442a: $01 $01 $8c
	ld   d, b                                        ; $442d: $50
	adc  h                                           ; $442e: $8c
	ld   d, b                                        ; $442f: $50
	ld   [hl], l                                     ; $4430: $75
	ld   h, a                                        ; $4431: $67
	rst  $38                                         ; $4432: $ff
	rst  $38                                         ; $4433: $ff
	dec  c                                           ; $4434: $0d
	nop                                              ; $4435: $00
	ld   a, [bc]                                     ; $4436: $0a
	inc  e                                           ; $4437: $1c
	ld   bc, $0404                                   ; $4438: $01 $04 $04
	ld   bc, $8cfd                                   ; $443b: $01 $fd $8c
	ld   d, b                                        ; $443e: $50
	adc  h                                           ; $443f: $8c
	ld   d, b                                        ; $4440: $50
	cp   $ff                                         ; $4441: $fe $ff
	rst  $38                                         ; $4443: $ff
	ld   [hl], l                                     ; $4444: $75
	ld   h, a                                        ; $4445: $67
	ld   e, c                                        ; $4446: $59
	rst  $38                                         ; $4447: $ff
	rst  $38                                         ; $4448: $ff
	dec  c                                           ; $4449: $0d
	nop                                              ; $444a: $00
	ld   a, [bc]                                     ; $444b: $0a
	ld   bc, $9166                                   ; $444c: $01 $66 $91
	sbc  [hl]                                        ; $444f: $9e
	adc  h                                           ; $4450: $8c
	ld   d, b                                        ; $4451: $50
	sbc  [hl]                                        ; $4452: $9e
	ld   e, d                                        ; $4453: $5a
	and  c                                           ; $4454: $a1
	ld   a, [hl]                                     ; $4455: $7e
	ld   [hl], c                                     ; $4456: $71
	ld   [hl], h                                     ; $4457: $74
	dec  c                                           ; $4458: $0d
	ld   e, l                                        ; $4459: $5d
	ld   l, [hl]                                     ; $445a: $6e
	ld   h, e                                        ; $445b: $63
	ld   d, d                                        ; $445c: $52
	sbc  a                                           ; $445d: $9f
	dec  c                                           ; $445e: $0d
	nop                                              ; $445f: $00
	ld   a, [bc]                                     ; $4460: $0a
	nop                                              ; $4461: $00
	inc  e                                           ; $4462: $1c
	ld   bc, $0404                                   ; $4463: $01 $04 $04
	ld   bc, $7c50                                   ; $4466: $01 $50 $7c
	rst  $38                                         ; $4469: $ff
	rst  $38                                         ; $446a: $ff
	ld   l, e                                        ; $446b: $6b
	and  c                                           ; $446c: $a1
	ld   a, b                                        ; $446d: $78
	ld   a, c                                        ; $446e: $79
	ld   [bc], a                                     ; $446f: $02
	db   $d3                                         ; $4470: $d3
	inc  b                                           ; $4471: $04
	ld   h, $65                                      ; $4472: $26 $65
	ld   a, b                                        ; $4474: $78
	ld   e, l                                        ; $4475: $5d
	ld   [hl], h                                     ; $4476: $74
	dec  c                                           ; $4477: $0d
	ld   d, d                                        ; $4478: $52
	ld   d, d                                        ; $4479: $52
	ld   [hl], l                                     ; $447a: $75
	ld   h, a                                        ; $447b: $67
	sub  [hl]                                        ; $447c: $96
	rst  $38                                         ; $447d: $ff
	rst  $38                                         ; $447e: $ff
	dec  c                                           ; $447f: $0d
	nop                                              ; $4480: $00
	ld   a, [bc]                                     ; $4481: $0a
	inc  e                                           ; $4482: $1c
	ld   bc, $0101                                   ; $4483: $01 $01 $01
	ld   bc, $7190                                   ; $4486: $01 $90 $71
	halt                                             ; $4489: $76
	ld   [bc], a                                     ; $448a: $02
	cp   a                                           ; $448b: $bf
	ld   a, h                                        ; $448c: $7c
	dec  b                                           ; $448d: $05
	ld   a, [bc]                                     ; $448e: $0a
	and  b                                           ; $448f: $a0
	ld   a, d                                        ; $4490: $7a
	ld   d, d                                        ; $4491: $52
	ld   [hl], h                                     ; $4492: $74
	ld   [bc], a                                     ; $4493: $02
	inc  [hl]                                        ; $4494: $34
	ld   h, e                                        ; $4495: $63
	ld   d, d                                        ; $4496: $52
	sbc  a                                           ; $4497: $9f
	dec  c                                           ; $4498: $0d
	adc  l                                           ; $4499: $8d
	and  c                                           ; $449a: $a1
	ld   a, b                                        ; $449b: $78
	inc  b                                           ; $449c: $04
	ld   b, c                                        ; $449d: $41
	ld   [bc], a                                     ; $449e: $02
	xor  c                                           ; $449f: $a9
	ld   a, b                                        ; $44a0: $78
	and  c                                           ; $44a1: $a1
	ld   [hl], l                                     ; $44a2: $75
	ld   h, a                                        ; $44a3: $67
	ld   e, c                                        ; $44a4: $59
	sub  a                                           ; $44a5: $97
	sbc  a                                           ; $44a6: $9f
	dec  c                                           ; $44a7: $0d
	nop                                              ; $44a8: $00
	ld   a, [bc]                                     ; $44a9: $0a
	ld   bc, $9166                                   ; $44aa: $01 $66 $91
	sbc  [hl]                                        ; $44ad: $9e
	ld   e, d                                        ; $44ae: $5a
	and  c                                           ; $44af: $a1
	ld   a, [hl]                                     ; $44b0: $7e
	ld   [hl], c                                     ; $44b1: $71
	ld   [hl], h                                     ; $44b2: $74
	ld   [bc], a                                     ; $44b3: $02
	inc  [hl]                                        ; $44b4: $34
	ld   h, e                                        ; $44b5: $63
	ld   d, d                                        ; $44b6: $52
	ld   a, e                                        ; $44b7: $7b
	sbc  a                                           ; $44b8: $9f
	dec  c                                           ; $44b9: $0d
	nop                                              ; $44ba: $00
	ld   a, [bc]                                     ; $44bb: $0a
	dec  c                                           ; $44bc: $0d
	nop                                              ; $44bd: $00
	nop                                              ; $44be: $00
	rrca                                             ; $44bf: $0f
	nop                                              ; $44c0: $00
	ld   bc, $1e09                                   ; $44c1: $01 $09 $1e
	nop                                              ; $44c4: $00
	inc  e                                           ; $44c5: $1c
	ld   bc, $0404                                   ; $44c6: $01 $04 $04
	ld   bc, $9750                                   ; $44c9: $01 $50 $97
	sbc  [hl]                                        ; $44cc: $9e
	ld   [$6300], sp                                 ; $44cd: $08 $00 $63
	and  c                                           ; $44d0: $a1
	sbc  a                                           ; $44d1: $9f
	dec  c                                           ; $44d2: $0d
	dec  b                                           ; $44d3: $05
	ld   b, l                                        ; $44d4: $45
	inc  b                                           ; $44d5: $04
	xor  d                                           ; $44d6: $aa
	ld   a, l                                        ; $44d7: $7d
	inc  b                                           ; $44d8: $04
	ld   c, $04                                      ; $44d9: $0e $04
	adc  h                                           ; $44db: $8c
	ld   l, [hl]                                     ; $44dc: $6e
	ld   [hl], c                                     ; $44dd: $71
	ld   l, l                                        ; $44de: $6d
	ld   l, e                                        ; $44df: $6b
	ld   d, h                                        ; $44e0: $54
	ld   [hl], l                                     ; $44e1: $75
	rst  $38                                         ; $44e2: $ff
	dec  c                                           ; $44e3: $0d
	inc  b                                           ; $44e4: $04
	ld   c, $03                                      ; $44e5: $0e $03
	sbc  l                                           ; $44e7: $9d
	inc  b                                           ; $44e8: $04
	and  [hl]                                        ; $44e9: $a6
	ld   [hl], l                                     ; $44ea: $75
	ld   h, a                                        ; $44eb: $67
	ld   e, c                                        ; $44ec: $59
	ld   sp, hl                                      ; $44ed: $f9
	dec  c                                           ; $44ee: $0d
	nop                                              ; $44ef: $00
	ld   a, [bc]                                     ; $44f0: $0a
	ld   bc, $9a61                                   ; $44f1: $01 $61 $9a
	ld   a, c                                        ; $44f4: $79
	sbc  [hl]                                        ; $44f5: $9e
	adc  a                                           ; $44f6: $8f
	ld   h, b                                        ; $44f7: $60
	ld   l, b                                        ; $44f8: $68
	ld   a, c                                        ; $44f9: $79
	dec  c                                           ; $44fa: $0d
	ld   e, d                                        ; $44fb: $5a
	and  c                                           ; $44fc: $a1
	ld   a, [hl]                                     ; $44fd: $7e
	ld   [hl], c                                     ; $44fe: $71
	ld   [hl], h                                     ; $44ff: $74
	ld   e, l                                        ; $4500: $5d
	ld   l, [hl]                                     ; $4501: $6e
	ld   h, e                                        ; $4502: $63
	ld   d, d                                        ; $4503: $52
	ld   a, e                                        ; $4504: $7b
	sbc  a                                           ; $4505: $9f
	dec  c                                           ; $4506: $0d
	nop                                              ; $4507: $00
	ld   a, [bc]                                     ; $4508: $0a
	inc  e                                           ; $4509: $1c
	ld   bc, $0000                                   ; $450a: $01 $00 $00
	ld   bc, $6176                                   ; $450d: $01 $76 $61
	sbc  e                                           ; $4510: $9b
	ld   [hl], l                                     ; $4511: $75
	sbc  [hl]                                        ; $4512: $9e
	ld   [$6300], sp                                 ; $4513: $08 $00 $63
	and  c                                           ; $4516: $a1
	ld   a, l                                        ; $4517: $7d
	dec  c                                           ; $4518: $0d
	inc  b                                           ; $4519: $04
	rst  $28                                         ; $451a: $ef
	sbc  [hl]                                        ; $451b: $9e
	ld   l, a                                        ; $451c: $6f
	sub  c                                           ; $451d: $91
	and  c                                           ; $451e: $a1
	halt                                             ; $451f: $76
	inc  b                                           ; $4520: $04
	adc  $9a                                         ; $4521: $ce $9a
	ld   [hl], h                                     ; $4523: $74
	ld   d, d                                        ; $4524: $52
	adc  h                                           ; $4525: $8c
	ld   h, a                                        ; $4526: $67
	ld   e, c                                        ; $4527: $59
	ld   sp, hl                                      ; $4528: $f9
	dec  c                                           ; $4529: $0d
	nop                                              ; $452a: $00
	ld   a, [bc]                                     ; $452b: $0a
	add  hl, de                                      ; $452c: $19
	dec  b                                           ; $452d: $05
	inc  bc                                          ; $452e: $03
	ld   a, l                                        ; $452f: $7d
	ld   d, d                                        ; $4530: $52
	nop                                              ; $4531: $00
	nop                                              ; $4532: $00
	ld   d, d                                        ; $4533: $52
	ld   d, d                                        ; $4534: $52
	ld   d, [hl]                                     ; $4535: $56
	nop                                              ; $4536: $00
	ld   bc, $508c                                   ; $4537: $01 $8c $50
	adc  h                                           ; $453a: $8c
	ld   d, b                                        ; $453b: $50
	nop                                              ; $453c: $00
	ld   [bc], a                                     ; $453d: $02
	rlca                                             ; $453e: $07
	ld   h, a                                        ; $453f: $67
	nop                                              ; $4540: $00
	ld   [bc], a                                     ; $4541: $02
	inc  bc                                          ; $4542: $03
	ld   bc, $2000                                   ; $4543: $01 $00 $20
	nop                                              ; $4546: $00
	rlca                                             ; $4547: $07
	add  $00                                         ; $4548: $c6 $00
	ld   [bc], a                                     ; $454a: $02
	inc  bc                                          ; $454b: $03
	ld   bc, $2001                                   ; $454c: $01 $01 $20
	nop                                              ; $454f: $00
	rlca                                             ; $4550: $07
	ld   c, e                                        ; $4551: $4b
	ld   bc, $0302                                   ; $4552: $01 $02 $03
	ld   bc, $2002                                   ; $4555: $01 $02 $20
	nop                                              ; $4558: $00
	ld   b, $85                                      ; $4559: $06 $85
	ld   bc, $000f                                   ; $455b: $01 $0f $00
	ld   bc, $7d01                                   ; $455e: $01 $01 $7d
	ld   d, d                                        ; $4561: $52
	sbc  [hl]                                        ; $4562: $9e
	or   c                                           ; $4563: $b1
	call nz, $ecba                                   ; $4564: $c4 $ba $ec
	ld   [hl], l                                     ; $4567: $75
	ld   h, a                                        ; $4568: $67
	sbc  a                                           ; $4569: $9f
	dec  c                                           ; $456a: $0d
	nop                                              ; $456b: $00
	ld   a, [bc]                                     ; $456c: $0a
	inc  e                                           ; $456d: $1c
	ld   bc, $0101                                   ; $456e: $01 $01 $01
	dec  e                                           ; $4571: $1d
	ld   b, b                                        ; $4572: $40
	ld   de, $1103                                   ; $4573: $11 $03 $11
	ld   bc, $2802                                   ; $4576: $01 $02 $28
	nop                                              ; $4579: $00
	ld   bc, $5996                                   ; $457a: $01 $96 $59
	ld   [hl], c                                     ; $457d: $71
	ld   l, l                                        ; $457e: $6d
	rst  $38                                         ; $457f: $ff
	rst  $38                                         ; $4580: $ff
	dec  c                                           ; $4581: $0d
	dec  b                                           ; $4582: $05
	sbc  d                                           ; $4583: $9a
	inc  b                                           ; $4584: $04
	adc  $05                                         ; $4585: $ce $05
	sbc  d                                           ; $4587: $9a
	inc  bc                                          ; $4588: $03
	ld   l, d                                        ; $4589: $6a
	ld   a, l                                        ; $458a: $7d
	ld   [bc], a                                     ; $458b: $02
	ld   [hl], e                                     ; $458c: $73
	dec  b                                           ; $458d: $05
	xor  d                                           ; $458e: $aa
	ld   a, h                                        ; $458f: $7c
	dec  b                                           ; $4590: $05
	xor  c                                           ; $4591: $a9
	inc  b                                           ; $4592: $04
	adc  a                                           ; $4593: $8f
	dec  c                                           ; $4594: $0d
	ld   [hl], l                                     ; $4595: $75
	ld   h, a                                        ; $4596: $67
	ld   e, c                                        ; $4597: $59
	sub  a                                           ; $4598: $97
	ld   a, e                                        ; $4599: $7b
	sbc  a                                           ; $459a: $9f
	dec  c                                           ; $459b: $0d
	nop                                              ; $459c: $00
	ld   a, [bc]                                     ; $459d: $0a
	ld   bc, $9166                                   ; $459e: $01 $66 $91
	sbc  [hl]                                        ; $45a1: $9e
	ld   e, d                                        ; $45a2: $5a
	and  c                                           ; $45a3: $a1
	ld   a, [hl]                                     ; $45a4: $7e
	ld   [hl], c                                     ; $45a5: $71
	ld   [hl], h                                     ; $45a6: $74
	ld   [bc], a                                     ; $45a7: $02
	inc  [hl]                                        ; $45a8: $34
	ld   h, e                                        ; $45a9: $63
	ld   d, d                                        ; $45aa: $52
	ld   a, e                                        ; $45ab: $7b
	sbc  a                                           ; $45ac: $9f
	dec  c                                           ; $45ad: $0d
	nop                                              ; $45ae: $00
	ld   a, [bc]                                     ; $45af: $0a
	dec  c                                           ; $45b0: $0d
	nop                                              ; $45b1: $00
	nop                                              ; $45b2: $00
	rrca                                             ; $45b3: $0f
	nop                                              ; $45b4: $00
	ld   bc, $1e09                                   ; $45b5: $01 $09 $1e
	nop                                              ; $45b8: $00
	rrca                                             ; $45b9: $0f
	nop                                              ; $45ba: $00
	ld   bc, $5201                                   ; $45bb: $01 $01 $52
	ld   d, d                                        ; $45be: $52
	ld   d, [hl]                                     ; $45bf: $56
	rst  $38                                         ; $45c0: $ff
	rst  $38                                         ; $45c1: $ff
	dec  c                                           ; $45c2: $0d
	inc  bc                                          ; $45c3: $03
	adc  e                                           ; $45c4: $8b
	ld   a, l                                        ; $45c5: $7d
	ld   d, b                                        ; $45c6: $50
	adc  h                                           ; $45c7: $8c
	sbc  b                                           ; $45c8: $98
	inc  b                                           ; $45c9: $04
	adc  $9a                                         ; $45ca: $ce $9a
	ld   a, b                                        ; $45cc: $78
	ld   e, l                                        ; $45cd: $5d
	ld   [hl], h                                     ; $45ce: $74
	dec  c                                           ; $45cf: $0d
	dec  b                                           ; $45d0: $05
	sub  [hl]                                        ; $45d1: $96
	ld   [hl], c                                     ; $45d2: $71
	ld   [hl], h                                     ; $45d3: $74
	sbc  c                                           ; $45d4: $99
	and  c                                           ; $45d5: $a1
	ld   [hl], l                                     ; $45d6: $75
	ld   h, a                                        ; $45d7: $67
	rst  $38                                         ; $45d8: $ff
	rst  $38                                         ; $45d9: $ff
	dec  c                                           ; $45da: $0d
	nop                                              ; $45db: $00
	ld   a, [bc]                                     ; $45dc: $0a
	inc  e                                           ; $45dd: $1c
	ld   bc, $0404                                   ; $45de: $01 $04 $04
	ld   bc, $546b                                   ; $45e1: $01 $6b $54
	ld   a, b                                        ; $45e4: $78
	and  c                                           ; $45e5: $a1
	ld   [hl], l                                     ; $45e6: $75
	ld   h, a                                        ; $45e7: $67
	ld   e, c                                        ; $45e8: $59
	rst  $38                                         ; $45e9: $ff
	rst  $38                                         ; $45ea: $ff
	dec  c                                           ; $45eb: $0d
	sub  d                                           ; $45ec: $92
	ld   [hl], c                                     ; $45ed: $71
	ld   a, a                                        ; $45ee: $7f
	sbc  b                                           ; $45ef: $98
	dec  b                                           ; $45f0: $05
	sbc  e                                           ; $45f1: $9b
	dec  b                                           ; $45f2: $05
	sbc  h                                           ; $45f3: $9c
	ld   e, d                                        ; $45f4: $5a
	inc  b                                           ; $45f5: $04
	adc  h                                           ; $45f6: $8c
	sbc  l                                           ; $45f7: $9d
	sbc  c                                           ; $45f8: $99
	halt                                             ; $45f9: $76
	dec  c                                           ; $45fa: $0d
	dec  b                                           ; $45fb: $05
	ld   [de], a                                     ; $45fc: $12
	ld   l, a                                        ; $45fd: $6f
	inc  b                                           ; $45fe: $04
	rlca                                             ; $45ff: $07
	ld   e, e                                        ; $4600: $5b
	adc  h                                           ; $4601: $8c
	ld   l, c                                        ; $4602: $69
	and  c                                           ; $4603: $a1
	sub  [hl]                                        ; $4604: $96
	ld   a, e                                        ; $4605: $7b
	rst  $38                                         ; $4606: $ff
	rst  $38                                         ; $4607: $ff
	dec  c                                           ; $4608: $0d
	nop                                              ; $4609: $00
	ld   a, [bc]                                     ; $460a: $0a
	inc  e                                           ; $460b: $1c
	ld   bc, $0101                                   ; $460c: $01 $01 $01
	ld   bc, $9075                                   ; $460f: $01 $75 $90
	sbc  [hl]                                        ; $4612: $9e
	inc  bc                                          ; $4613: $03
	ld   l, h                                        ; $4614: $6c
	ld   h, l                                        ; $4615: $65
	ld   [bc], a                                     ; $4616: $02
	and  c                                           ; $4617: $a1
	and  b                                           ; $4618: $a0
	dec  b                                           ; $4619: $05
	inc  de                                          ; $461a: $13
	ld   a, c                                        ; $461b: $79
	ld   h, l                                        ; $461c: $65
	ld   l, l                                        ; $461d: $6d
	sub  a                                           ; $461e: $97
	dec  c                                           ; $461f: $0d
	inc  b                                           ; $4620: $04
	adc  $9a                                         ; $4621: $ce $9a
	sbc  c                                           ; $4623: $99
	halt                                             ; $4624: $76
	dec  b                                           ; $4625: $05
	pop  de                                          ; $4626: $d1
	ld   d, d                                        ; $4627: $52
	adc  h                                           ; $4628: $8c
	ld   h, a                                        ; $4629: $67
	sub  [hl]                                        ; $462a: $96
	sbc  a                                           ; $462b: $9f
	dec  c                                           ; $462c: $0d
	ld   l, e                                        ; $462d: $6b
	sbc  d                                           ; $462e: $9a
	ld   h, [hl]                                     ; $462f: $66
	sub  c                                           ; $4630: $91
	sbc  a                                           ; $4631: $9f
	dec  c                                           ; $4632: $0d
	nop                                              ; $4633: $00
	ld   a, [bc]                                     ; $4634: $0a
	dec  c                                           ; $4635: $0d
	nop                                              ; $4636: $00
	nop                                              ; $4637: $00
	rrca                                             ; $4638: $0f
	nop                                              ; $4639: $00
	ld   bc, $1e09                                   ; $463a: $01 $09 $1e
	nop                                              ; $463d: $00
	rrca                                             ; $463e: $0f
	nop                                              ; $463f: $00
	ld   bc, $8c01                                   ; $4640: $01 $01 $8c
	ld   d, b                                        ; $4643: $50
	adc  h                                           ; $4644: $8c
	ld   d, b                                        ; $4645: $50
	ld   [hl], l                                     ; $4646: $75
	ld   h, a                                        ; $4647: $67
	rst  $38                                         ; $4648: $ff
	rst  $38                                         ; $4649: $ff
	dec  c                                           ; $464a: $0d
	nop                                              ; $464b: $00
	ld   a, [bc]                                     ; $464c: $0a
	inc  e                                           ; $464d: $1c
	ld   bc, $0404                                   ; $464e: $01 $04 $04
	ld   bc, $8cfd                                   ; $4651: $01 $fd $8c
	ld   d, b                                        ; $4654: $50
	adc  h                                           ; $4655: $8c
	ld   d, b                                        ; $4656: $50
	cp   $ff                                         ; $4657: $fe $ff
	rst  $38                                         ; $4659: $ff
	ld   [hl], l                                     ; $465a: $75
	ld   h, a                                        ; $465b: $67
	ld   e, c                                        ; $465c: $59
	rst  $38                                         ; $465d: $ff
	rst  $38                                         ; $465e: $ff
	dec  c                                           ; $465f: $0d
	nop                                              ; $4660: $00
	ld   a, [bc]                                     ; $4661: $0a
	ld   bc, $9166                                   ; $4662: $01 $66 $91
	sbc  [hl]                                        ; $4665: $9e
	adc  h                                           ; $4666: $8c
	ld   d, b                                        ; $4667: $50
	sbc  [hl]                                        ; $4668: $9e
	ld   e, d                                        ; $4669: $5a
	and  c                                           ; $466a: $a1
	ld   a, [hl]                                     ; $466b: $7e
	ld   [hl], c                                     ; $466c: $71
	ld   [hl], h                                     ; $466d: $74
	dec  c                                           ; $466e: $0d
	ld   e, l                                        ; $466f: $5d
	ld   l, [hl]                                     ; $4670: $6e
	ld   h, e                                        ; $4671: $63
	ld   d, d                                        ; $4672: $52
	sbc  a                                           ; $4673: $9f
	dec  c                                           ; $4674: $0d
	nop                                              ; $4675: $00
	ld   a, [bc]                                     ; $4676: $0a
	nop                                              ; $4677: $00
	inc  e                                           ; $4678: $1c
	ld   bc, $0404                                   ; $4679: $01 $04 $04
	ld   bc, $7c50                                   ; $467c: $01 $50 $7c
	rst  $38                                         ; $467f: $ff
	rst  $38                                         ; $4680: $ff
	ld   l, e                                        ; $4681: $6b
	and  c                                           ; $4682: $a1
	ld   a, b                                        ; $4683: $78
	ld   a, c                                        ; $4684: $79
	ld   [bc], a                                     ; $4685: $02
	db   $d3                                         ; $4686: $d3
	inc  b                                           ; $4687: $04
	ld   h, $65                                      ; $4688: $26 $65
	ld   a, b                                        ; $468a: $78
	ld   e, l                                        ; $468b: $5d
	ld   [hl], h                                     ; $468c: $74
	dec  c                                           ; $468d: $0d
	ld   d, d                                        ; $468e: $52
	ld   d, d                                        ; $468f: $52
	ld   [hl], l                                     ; $4690: $75
	ld   h, a                                        ; $4691: $67
	sub  [hl]                                        ; $4692: $96
	rst  $38                                         ; $4693: $ff
	rst  $38                                         ; $4694: $ff
	dec  c                                           ; $4695: $0d
	nop                                              ; $4696: $00
	ld   a, [bc]                                     ; $4697: $0a
	inc  e                                           ; $4698: $1c
	ld   bc, $0101                                   ; $4699: $01 $01 $01
	ld   bc, $7190                                   ; $469c: $01 $90 $71
	halt                                             ; $469f: $76
	ld   [bc], a                                     ; $46a0: $02
	cp   a                                           ; $46a1: $bf
	ld   a, h                                        ; $46a2: $7c
	dec  b                                           ; $46a3: $05
	ld   a, [bc]                                     ; $46a4: $0a
	and  b                                           ; $46a5: $a0
	ld   a, d                                        ; $46a6: $7a
	ld   d, d                                        ; $46a7: $52
	ld   [hl], h                                     ; $46a8: $74
	ld   [bc], a                                     ; $46a9: $02
	inc  [hl]                                        ; $46aa: $34
	ld   h, e                                        ; $46ab: $63
	ld   d, d                                        ; $46ac: $52
	sbc  a                                           ; $46ad: $9f
	dec  c                                           ; $46ae: $0d
	adc  l                                           ; $46af: $8d
	and  c                                           ; $46b0: $a1
	ld   a, b                                        ; $46b1: $78
	inc  b                                           ; $46b2: $04
	ld   b, c                                        ; $46b3: $41
	ld   [bc], a                                     ; $46b4: $02
	xor  c                                           ; $46b5: $a9
	ld   a, b                                        ; $46b6: $78
	and  c                                           ; $46b7: $a1
	ld   [hl], l                                     ; $46b8: $75
	ld   h, a                                        ; $46b9: $67
	ld   e, c                                        ; $46ba: $59
	sub  a                                           ; $46bb: $97
	sbc  a                                           ; $46bc: $9f
	dec  c                                           ; $46bd: $0d
	nop                                              ; $46be: $00
	ld   a, [bc]                                     ; $46bf: $0a
	ld   bc, $9166                                   ; $46c0: $01 $66 $91
	sbc  [hl]                                        ; $46c3: $9e
	ld   e, d                                        ; $46c4: $5a
	and  c                                           ; $46c5: $a1
	ld   a, [hl]                                     ; $46c6: $7e
	ld   [hl], c                                     ; $46c7: $71
	ld   [hl], h                                     ; $46c8: $74
	ld   [bc], a                                     ; $46c9: $02
	inc  [hl]                                        ; $46ca: $34
	ld   h, e                                        ; $46cb: $63
	ld   d, d                                        ; $46cc: $52
	ld   a, e                                        ; $46cd: $7b
	sbc  a                                           ; $46ce: $9f
	dec  c                                           ; $46cf: $0d
	nop                                              ; $46d0: $00
	ld   a, [bc]                                     ; $46d1: $0a
	dec  c                                           ; $46d2: $0d
	nop                                              ; $46d3: $00
	nop                                              ; $46d4: $00
	rrca                                             ; $46d5: $0f
	nop                                              ; $46d6: $00
	ld   bc, $1e09                                   ; $46d7: $01 $09 $1e
	nop                                              ; $46da: $00
	nop                                              ; $46db: $00
	inc  b                                           ; $46dc: $04
	add  b                                           ; $46dd: $80
	sub  b                                           ; $46de: $90
	ld   bc, $2000                                   ; $46df: $01 $00 $20
	nop                                              ; $46e2: $00
	ld   c, $2f                                      ; $46e3: $0e $2f
	inc  e                                           ; $46e5: $1c
	dec  c                                           ; $46e6: $0d
	nop                                              ; $46e7: $00
	nop                                              ; $46e8: $00
	ld   [bc], a                                     ; $46e9: $02
	ld   bc, $9750                                   ; $46ea: $01 $50 $97
	sbc  [hl]                                        ; $46ed: $9e
	ld   [$5d00], sp                                 ; $46ee: $08 $00 $5d
	and  c                                           ; $46f1: $a1
	sbc  a                                           ; $46f2: $9f
	dec  c                                           ; $46f3: $0d
	nop                                              ; $46f4: $00
	ld   a, [bc]                                     ; $46f5: $0a
	ld   bc, $567b                                   ; $46f6: $01 $7b $56
	sbc  [hl]                                        ; $46f9: $9e
	inc  b                                           ; $46fa: $04
	dec  hl                                          ; $46fb: $2b
	ld   [hl], c                                     ; $46fc: $71
	ld   [hl], h                                     ; $46fd: $74
	sbc  c                                           ; $46fe: $99
	ld   sp, hl                                      ; $46ff: $f9
	dec  c                                           ; $4700: $0d
	ld   h, a                                        ; $4701: $67
	adc  l                                           ; $4702: $8d
	sbc  d                                           ; $4703: $9a
	ld   h, e                                        ; $4704: $63
	and  c                                           ; $4705: $a1
	ld   a, h                                        ; $4706: $7c
	ld   e, b                                        ; $4707: $58
	inc  b                                           ; $4708: $04
	add  c                                           ; $4709: $81
	inc  bc                                          ; $470a: $03

jr_044_470b:
	sbc  b                                           ; $470b: $98
	ld   [hl], c                                     ; $470c: $71
	ld   [hl], h                                     ; $470d: $74
	dec  c                                           ; $470e: $0d
	ld   [bc], a                                     ; $470f: $02
	or   a                                           ; $4710: $b7
	inc  b                                           ; $4711: $04
	dec  de                                          ; $4712: $1b
	dec  b                                           ; $4713: $05
	call c, $ad03                                    ; $4714: $dc $03 $ad
	ld   a, h                                        ; $4717: $7c
	inc  b                                           ; $4718: $04
	ld   c, $ba                                      ; $4719: $0e $ba
	ret  nz                                          ; $471b: $c0

	and  e                                           ; $471c: $a3
	ld   a, b                                        ; $471d: $78
	ld   a, h                                        ; $471e: $7c
	sub  [hl]                                        ; $471f: $96
	sbc  a                                           ; $4720: $9f
	dec  c                                           ; $4721: $0d
	nop                                              ; $4722: $00
	ld   a, [bc]                                     ; $4723: $0a
	inc  e                                           ; $4724: $1c
	dec  c                                           ; $4725: $0d
	ld   bc, $0101                                   ; $4726: $01 $01 $01
	ld   l, e                                        ; $4729: $6b
	sbc  d                                           ; $472a: $9a
	ld   a, l                                        ; $472b: $7d
	sub  b                                           ; $472c: $90
	ld   d, h                                        ; $472d: $54
	cp   d                                           ; $472e: $ba
	rst  ToBoot                                         ; $472f: $c7
	xor  [hl]                                        ; $4730: $ae
	ld   [hl], l                                     ; $4731: $75
	dec  c                                           ; $4732: $0d
	ld   [bc], a                                     ; $4733: $02
	dec  d                                           ; $4734: $15
	ld   [bc], a                                     ; $4735: $02
	db   $fc                                         ; $4736: $fc
	ld   a, [hl]                                     ; $4737: $7e
	ld   e, c                                        ; $4738: $59
	sbc  b                                           ; $4739: $98
	ld   h, [hl]                                     ; $473a: $66
	sub  c                                           ; $473b: $91
	ld   a, b                                        ; $473c: $78
	ld   e, l                                        ; $473d: $5d
	ld   [hl], h                                     ; $473e: $74
	dec  c                                           ; $473f: $0d
	inc  bc                                          ; $4740: $03
	ld   l, [hl]                                     ; $4741: $6e
	ld   [bc], a                                     ; $4742: $02
	db   $fc                                         ; $4743: $fc
	ld   a, h                                        ; $4744: $7c
	sub  $a2                                         ; $4745: $d6 $a2
	push af                                          ; $4747: $f5
	sub  b                                           ; $4748: $90
	inc  b                                           ; $4749: $04
	rrca                                             ; $474a: $0f
	ld   d, d                                        ; $474b: $52
	ld   a, h                                        ; $474c: $7c
	sub  [hl]                                        ; $474d: $96
	sbc  a                                           ; $474e: $9f
	dec  c                                           ; $474f: $0d
	nop                                              ; $4750: $00
	ld   a, [bc]                                     ; $4751: $0a
	inc  e                                           ; $4752: $1c
	dec  c                                           ; $4753: $0d
	nop                                              ; $4754: $00
	nop                                              ; $4755: $00
	ld   bc, $2002                                   ; $4756: $01 $02 $20
	inc  b                                           ; $4759: $04
	add  hl, hl                                      ; $475a: $29
	sbc  [hl]                                        ; $475b: $9e
	ld   h, a                                        ; $475c: $67
	adc  l                                           ; $475d: $8d
	sbc  d                                           ; $475e: $9a
	ld   h, e                                        ; $475f: $63
	and  c                                           ; $4760: $a1
	ld   a, c                                        ; $4761: $79
	dec  c                                           ; $4762: $0d
	ld   e, b                                        ; $4763: $58
	inc  b                                           ; $4764: $04
	add  c                                           ; $4765: $81
	inc  bc                                          ; $4766: $03
	sbc  b                                           ; $4767: $98
	ld   a, h                                        ; $4768: $7c
	ld   e, b                                        ; $4769: $58
	dec  b                                           ; $476a: $05
	jr   nz, jr_044_470b                             ; $476b: $20 $9e

	dec  c                                           ; $476d: $0d
	ld   [bc], a                                     ; $476e: $02
	jp   nz, Jump_044_6959                           ; $476f: $c2 $59 $69

	sub  b                                           ; $4772: $90
	sub  a                                           ; $4773: $97
	ld   d, h                                        ; $4774: $54
	halt                                             ; $4775: $76
	ld   d, d                                        ; $4776: $52
	ld   d, d                                        ; $4777: $52
	sbc  l                                           ; $4778: $9d
	sbc  a                                           ; $4779: $9f
	dec  c                                           ; $477a: $0d
	nop                                              ; $477b: $00
	ld   a, [bc]                                     ; $477c: $0a
	inc  e                                           ; $477d: $1c
	dec  c                                           ; $477e: $0d
	ld   bc, $0101                                   ; $477f: $01 $01 $01
	ld   h, [hl]                                     ; $4782: $66
	sub  c                                           ; $4783: $91
	sbc  [hl]                                        ; $4784: $9e
	adc  h                                           ; $4785: $8c
	ld   l, l                                        ; $4786: $6d
	ld   a, e                                        ; $4787: $7b
	sbc  a                                           ; $4788: $9f
	dec  c                                           ; $4789: $0d
	nop                                              ; $478a: $00
	ld   a, [bc]                                     ; $478b: $0a
	dec  b                                           ; $478c: $05
	add  b                                           ; $478d: $80
	inc  de                                          ; $478e: $13
	ld   bc, $0001                                   ; $478f: $01 $01 $00
	nop                                              ; $4792: $00
	nop                                              ; $4793: $00
	inc  e                                           ; $4794: $1c
	ld   bc, $0000                                   ; $4795: $01 $00 $00
	ld   [bc], a                                     ; $4798: $02
	rlca                                             ; $4799: $07
	ret  nz                                          ; $479a: $c0

	ld   [bc], a                                     ; $479b: $02
	inc  b                                           ; $479c: $04
	add  b                                           ; $479d: $80
	jr   nc, jr_044_47a1                             ; $479e: $30 $01

	rst  $38                                         ; $47a0: $ff

jr_044_47a1:
	jr   nz, jr_044_47a5                             ; $47a1: $20 $02

	nop                                              ; $47a3: $00
	inc  bc                                          ; $47a4: $03

jr_044_47a5:
	ld   b, b                                        ; $47a5: $40
	ld   bc, $2801                                   ; $47a6: $01 $01 $28
	jr   nz, jr_044_47c7                             ; $47a9: $20 $1c

	nop                                              ; $47ab: $00
	ld   bc, $9e50                                   ; $47ac: $01 $50 $9e
	ld   [$6300], sp                                 ; $47af: $08 $00 $63
	and  c                                           ; $47b2: $a1
	sbc  a                                           ; $47b3: $9f
	dec  c                                           ; $47b4: $0d
	ld   e, b                                        ; $47b5: $58
	ld   a, l                                        ; $47b6: $7d
	sub  [hl]                                        ; $47b7: $96
	ld   d, h                                        ; $47b8: $54
	ld   h, d                                        ; $47b9: $62
	ld   h, h                                        ; $47ba: $64
	ld   d, d                                        ; $47bb: $52
	adc  h                                           ; $47bc: $8c
	ld   h, a                                        ; $47bd: $67
	sbc  a                                           ; $47be: $9f
	dec  c                                           ; $47bf: $0d
	nop                                              ; $47c0: $00
	ld   a, [bc]                                     ; $47c1: $0a
	rrca                                             ; $47c2: $0f
	nop                                              ; $47c3: $00
	ld   bc, $6301                                   ; $47c4: $01 $01 $63

jr_044_47c7:
	ld   e, l                                        ; $47c7: $5d
	sub  a                                           ; $47c8: $97
	ld   h, e                                        ; $47c9: $63
	and  c                                           ; $47ca: $a1
	sbc  a                                           ; $47cb: $9f
	dec  c                                           ; $47cc: $0d
	ld   e, b                                        ; $47cd: $58
	ld   a, l                                        ; $47ce: $7d
	sub  [hl]                                        ; $47cf: $96
	ld   d, h                                        ; $47d0: $54
	ld   h, d                                        ; $47d1: $62
	ld   h, h                                        ; $47d2: $64
	ld   d, d                                        ; $47d3: $52
	adc  h                                           ; $47d4: $8c
	ld   h, a                                        ; $47d5: $67
	sbc  a                                           ; $47d6: $9f
	dec  c                                           ; $47d7: $0d
	nop                                              ; $47d8: $00
	ld   a, [bc]                                     ; $47d9: $0a
	inc  e                                           ; $47da: $1c
	ld   bc, $0101                                   ; $47db: $01 $01 $01
	ld   bc, $5477                                   ; $47de: $01 $77 $54
	ld   [hl], l                                     ; $47e1: $75
	ld   h, a                                        ; $47e2: $67
	ld   e, c                                        ; $47e3: $59
	ld   sp, hl                                      ; $47e4: $f9
	dec  c                                           ; $47e5: $0d
	inc  b                                           ; $47e6: $04
	ld   [$8f02], sp                                 ; $47e7: $08 $02 $8f
	ld   [bc], a                                     ; $47ea: $02
	sub  b                                           ; $47eb: $90
	ld   [bc], a                                     ; $47ec: $02
	sub  c                                           ; $47ed: $91
	inc  b                                           ; $47ee: $04
	add  hl, bc                                      ; $47ef: $09
	ld   a, c                                        ; $47f0: $79
	inc  b                                           ; $47f1: $04
	ld   b, l                                        ; $47f2: $45
	inc  b                                           ; $47f3: $04
	ld   a, [bc]                                     ; $47f4: $0a
	ld   h, l                                        ; $47f5: $65
	ld   [hl], h                                     ; $47f6: $74
	adc  l                                           ; $47f7: $8d
	ld   [hl], h                                     ; $47f8: $74
	rst  $38                                         ; $47f9: $ff
	rst  $38                                         ; $47fa: $ff
	dec  c                                           ; $47fb: $0d
	nop                                              ; $47fc: $00
	ld   a, [bc]                                     ; $47fd: $0a
	add  hl, de                                      ; $47fe: $19
	dec  b                                           ; $47ff: $05
	inc  bc                                          ; $4800: $03
	ld   [bc], a                                     ; $4801: $02
	jr   c, jr_044_4806                              ; $4802: $38 $02

	inc  b                                           ; $4804: $04
	ld   [hl], l                                     ; $4805: $75

jr_044_4806:
	ld   h, a                                        ; $4806: $67
	nop                                              ; $4807: $00
	nop                                              ; $4808: $00
	adc  h                                           ; $4809: $8c
	ld   l, [hl]                                     ; $480a: $6e
	ld   a, b                                        ; $480b: $78
	and  c                                           ; $480c: $a1
	halt                                             ; $480d: $76
	sub  b                                           ; $480e: $90
	rst  $38                                         ; $480f: $ff
	rst  $38                                         ; $4810: $ff
	nop                                              ; $4811: $00
	ld   bc, $aeca                                   ; $4812: $01 $ca $ae
	jp   z, Jump_044_75ae                            ; $4815: $ca $ae $75

	ld   h, a                                        ; $4818: $67
	nop                                              ; $4819: $00
	ld   [bc], a                                     ; $481a: $02
	rlca                                             ; $481b: $07
	and  l                                           ; $481c: $a5
	nop                                              ; $481d: $00
	ld   [bc], a                                     ; $481e: $02
	inc  bc                                          ; $481f: $03
	ld   bc, $2000                                   ; $4820: $01 $00 $20
	nop                                              ; $4823: $00
	rlca                                             ; $4824: $07
	ld   h, a                                        ; $4825: $67
	ld   bc, $0302                                   ; $4826: $01 $02 $03
	ld   bc, $2001                                   ; $4829: $01 $01 $20
	nop                                              ; $482c: $00
	rlca                                             ; $482d: $07
	jp   nc, $0201                                   ; $482e: $d2 $01 $02

	inc  bc                                          ; $4831: $03
	ld   bc, $2002                                   ; $4832: $01 $02 $20
	nop                                              ; $4835: $00
	ld   b, $5c                                      ; $4836: $06 $5c
	ld   [bc], a                                     ; $4838: $02
	rrca                                             ; $4839: $0f
	nop                                              ; $483a: $00
	ld   bc, $0201                                   ; $483b: $01 $01 $02
	jr   c, jr_044_4842                              ; $483e: $38 $02

	inc  b                                           ; $4840: $04
	ld   [hl], l                                     ; $4841: $75

jr_044_4842:
	ld   h, a                                        ; $4842: $67
	sbc  a                                           ; $4843: $9f
	dec  c                                           ; $4844: $0d
	adc  l                                           ; $4845: $8d
	ld   a, b                                        ; $4846: $78
	ld   h, e                                        ; $4847: $63
	and  c                                           ; $4848: $a1
	ld   a, h                                        ; $4849: $7c
	sub  [hl]                                        ; $484a: $96
	ld   d, h                                        ; $484b: $54
	ld   a, b                                        ; $484c: $78
	dec  b                                           ; $484d: $05
	ld   d, $04                                      ; $484e: $16 $04
	sbc  l                                           ; $4850: $9d
	ld   a, b                                        ; $4851: $78
	inc  b                                           ; $4852: $04
	ld   a, b                                        ; $4853: $78
	ld   bc, $7614                                   ; $4854: $01 $14 $76
	dec  c                                           ; $4857: $0d
	ld   [bc], a                                     ; $4858: $02
	jp   c, Jump_044_6779                            ; $4859: $da $79 $67

	ld   h, d                                        ; $485c: $62
	ld   l, c                                        ; $485d: $69
	sbc  c                                           ; $485e: $99
	ld   a, b                                        ; $485f: $78
	and  c                                           ; $4860: $a1
	ld   [hl], h                                     ; $4861: $74
	rst  $38                                         ; $4862: $ff
	rst  $38                                         ; $4863: $ff
	dec  c                                           ; $4864: $0d
	nop                                              ; $4865: $00
	ld   a, [bc]                                     ; $4866: $0a
	inc  e                                           ; $4867: $1c
	ld   bc, $0505                                   ; $4868: $01 $05 $05
	dec  e                                           ; $486b: $1d
	ld   b, b                                        ; $486c: $40
	ld   de, $1103                                   ; $486d: $11 $03 $11
	ld   bc, $2802                                   ; $4870: $01 $02 $28
	nop                                              ; $4873: $00
	ld   bc, $508c                                   ; $4874: $01 $8c $50
	sbc  [hl]                                        ; $4877: $9e
	ld   d, b                                        ; $4878: $50
	sbc  b                                           ; $4879: $98
	ld   e, d                                        ; $487a: $5a
	halt                                             ; $487b: $76
	ld   d, h                                        ; $487c: $54
	ld   h, d                                        ; $487d: $62
	ld   h, h                                        ; $487e: $64
	ld   d, d                                        ; $487f: $52
	adc  h                                           ; $4880: $8c
	ld   h, a                                        ; $4881: $67
	ld   a, [$750d]                                  ; $4882: $fa $0d $75
	sub  b                                           ; $4885: $90
	sbc  [hl]                                        ; $4886: $9e
	ld   l, e                                        ; $4887: $6b
	and  c                                           ; $4888: $a1
	ld   a, b                                        ; $4889: $78
	inc  b                                           ; $488a: $04
	ld   [hl], a                                     ; $488b: $77
	ld   a, c                                        ; $488c: $79
	ld   [bc], a                                     ; $488d: $02
	sbc  l                                           ; $488e: $9d
	sbc  l                                           ; $488f: $9d
	sbc  d                                           ; $4890: $9a
	sbc  c                                           ; $4891: $99
	halt                                             ; $4892: $76
	dec  c                                           ; $4893: $0d
	ld   h, c                                        ; $4894: $61
	ld   [hl], c                                     ; $4895: $71
	ld   l, a                                        ; $4896: $6f
	ld   e, d                                        ; $4897: $5a
	inc  bc                                          ; $4898: $03
	ld   h, [hl]                                     ; $4899: $66
	sbc  d                                           ; $489a: $9a
	ld   l, a                                        ; $489b: $6f
	sub  c                                           ; $489c: $91
	ld   d, d                                        ; $489d: $52
	adc  h                                           ; $489e: $8c
	ld   h, a                                        ; $489f: $67
	sub  [hl]                                        ; $48a0: $96
	rst  $38                                         ; $48a1: $ff
	rst  $38                                         ; $48a2: $ff
	dec  c                                           ; $48a3: $0d
	nop                                              ; $48a4: $00
	ld   a, [bc]                                     ; $48a5: $0a
	inc  e                                           ; $48a6: $1c
	ld   bc, $0101                                   ; $48a7: $01 $01 $01
	ld   bc, $9a61                                   ; $48aa: $01 $61 $9a
	ld   h, [hl]                                     ; $48ad: $66
	sub  c                                           ; $48ae: $91
	sbc  [hl]                                        ; $48af: $9e
	adc  l                                           ; $48b0: $8d
	ld   [hl], c                                     ; $48b1: $71
	halt                                             ; $48b2: $76
	sub  b                                           ; $48b3: $90
	ld   a, b                                        ; $48b4: $78
	ld   d, d                                        ; $48b5: $52
	ld   [bc], a                                     ; $48b6: $02
	di                                               ; $48b7: $f3
	ld   a, l                                        ; $48b8: $7d
	dec  c                                           ; $48b9: $0d
	ld   [bc], a                                     ; $48ba: $02
	sub  l                                           ; $48bb: $95
	ld   l, c                                        ; $48bc: $69
	sub  a                                           ; $48bd: $97
	sbc  d                                           ; $48be: $9a
	adc  h                                           ; $48bf: $8c
	ld   l, c                                        ; $48c0: $69
	and  c                                           ; $48c1: $a1
	ld   a, e                                        ; $48c2: $7b
	rst  $38                                         ; $48c3: $ff
	rst  $38                                         ; $48c4: $ff
	dec  c                                           ; $48c5: $0d
	ld   d, b                                        ; $48c6: $50
	ld   l, l                                        ; $48c7: $6d
	ld   h, l                                        ; $48c8: $65
	sub  b                                           ; $48c9: $90
	ld   e, d                                        ; $48ca: $5a
	and  c                                           ; $48cb: $a1
	ld   a, [hl]                                     ; $48cc: $7e
	sub  a                                           ; $48cd: $97
	ld   a, b                                        ; $48ce: $78
	ld   e, e                                        ; $48cf: $5b
	sub  c                                           ; $48d0: $91
	ld   a, [$000d]                                  ; $48d1: $fa $0d $00
	ld   a, [bc]                                     ; $48d4: $0a
	ld   bc, $9166                                   ; $48d5: $01 $66 $91
	sbc  [hl]                                        ; $48d8: $9e
	ld   [bc], a                                     ; $48d9: $02
	and  l                                           ; $48da: $a5
	inc  b                                           ; $48db: $04
	xor  d                                           ; $48dc: $aa
	sub  b                                           ; $48dd: $90
	ld   [bc], a                                     ; $48de: $02
	jr   nz, jr_044_48e5                             ; $48df: $20 $04

	xor  d                                           ; $48e1: $aa
	sbc  [hl]                                        ; $48e2: $9e
	dec  c                                           ; $48e3: $0d
	ld   e, d                                        ; $48e4: $5a

jr_044_48e5:
	and  c                                           ; $48e5: $a1
	ld   a, [hl]                                     ; $48e6: $7e
	ld   [hl], c                                     ; $48e7: $71
	ld   [hl], h                                     ; $48e8: $74
	ld   e, l                                        ; $48e9: $5d
	ld   l, [hl]                                     ; $48ea: $6e
	ld   h, e                                        ; $48eb: $63
	ld   d, d                                        ; $48ec: $52
	ld   a, e                                        ; $48ed: $7b
	sbc  a                                           ; $48ee: $9f
	dec  c                                           ; $48ef: $0d
	nop                                              ; $48f0: $00
	ld   a, [bc]                                     ; $48f1: $0a
	dec  c                                           ; $48f2: $0d
	nop                                              ; $48f3: $00
	nop                                              ; $48f4: $00
	rrca                                             ; $48f5: $0f
	nop                                              ; $48f6: $00
	ld   bc, $1e09                                   ; $48f7: $01 $09 $1e
	nop                                              ; $48fa: $00
	rrca                                             ; $48fb: $0f
	nop                                              ; $48fc: $00
	ld   bc, $8c01                                   ; $48fd: $01 $01 $8c
	ld   l, [hl]                                     ; $4900: $6e
	ld   a, b                                        ; $4901: $78
	and  c                                           ; $4902: $a1
	halt                                             ; $4903: $76
	sub  b                                           ; $4904: $90
	rst  $38                                         ; $4905: $ff
	rst  $38                                         ; $4906: $ff
	dec  c                                           ; $4907: $0d
	inc  b                                           ; $4908: $04
	ld   b, l                                        ; $4909: $45
	ld   [hl], c                                     ; $490a: $71
	ld   [hl], h                                     ; $490b: $74
	ld   [bc], a                                     ; $490c: $02
	xor  c                                           ; $490d: $a9
	sub  b                                           ; $490e: $90
	ld   a, b                                        ; $490f: $78
	ld   d, d                                        ; $4910: $52
	ld   [hl], l                                     ; $4911: $75
	ld   h, a                                        ; $4912: $67
	ld   h, l                                        ; $4913: $65
	rst  $38                                         ; $4914: $ff
	rst  $38                                         ; $4915: $ff
	dec  c                                           ; $4916: $0d
	nop                                              ; $4917: $00
	ld   a, [bc]                                     ; $4918: $0a
	inc  e                                           ; $4919: $1c
	ld   bc, $0101                                   ; $491a: $01 $01 $01
	ld   bc, $546b                                   ; $491d: $01 $6b $54
	ld   [hl], l                                     ; $4920: $75
	ld   h, a                                        ; $4921: $67
	sub  [hl]                                        ; $4922: $96
	ld   a, e                                        ; $4923: $7b
	sbc  a                                           ; $4924: $9f
	dec  c                                           ; $4925: $0d
	ld   h, [hl]                                     ; $4926: $66
	sub  c                                           ; $4927: $91
	sbc  [hl]                                        ; $4928: $9e
	ld   h, c                                        ; $4929: $61
	sbc  d                                           ; $492a: $9a
	ld   e, c                                        ; $492b: $59
	sub  a                                           ; $492c: $97
	sub  h                                           ; $492d: $94
	ld   [hl], c                                     ; $492e: $71
	ld   e, l                                        ; $492f: $5d
	sbc  b                                           ; $4930: $98
	dec  c                                           ; $4931: $0d
	ld   a, b                                        ; $4932: $78
	sbc  d                                           ; $4933: $9a
	ld   [hl], h                                     ; $4934: $74
	ld   d, d                                        ; $4935: $52
	ld   [hl], c                                     ; $4936: $71
	ld   [hl], h                                     ; $4937: $74
	ld   [bc], a                                     ; $4938: $02
	inc  [hl]                                        ; $4939: $34
	ld   h, e                                        ; $493a: $63
	ld   d, d                                        ; $493b: $52
	sbc  a                                           ; $493c: $9f
	dec  c                                           ; $493d: $0d
	nop                                              ; $493e: $00
	ld   a, [bc]                                     ; $493f: $0a
	ld   bc, $9166                                   ; $4940: $01 $66 $91
	sbc  [hl]                                        ; $4943: $9e
	ld   [bc], a                                     ; $4944: $02
	and  l                                           ; $4945: $a5
	inc  b                                           ; $4946: $04
	xor  d                                           ; $4947: $aa
	sub  b                                           ; $4948: $90
	ld   [bc], a                                     ; $4949: $02
	jr   nz, jr_044_4950                             ; $494a: $20 $04

	xor  d                                           ; $494c: $aa
	sbc  [hl]                                        ; $494d: $9e
	dec  c                                           ; $494e: $0d
	ld   e, d                                        ; $494f: $5a

jr_044_4950:
	and  c                                           ; $4950: $a1
	ld   a, [hl]                                     ; $4951: $7e
	ld   [hl], c                                     ; $4952: $71
	ld   [hl], h                                     ; $4953: $74
	ld   e, l                                        ; $4954: $5d
	ld   l, [hl]                                     ; $4955: $6e
	ld   h, e                                        ; $4956: $63
	ld   d, d                                        ; $4957: $52
	ld   a, e                                        ; $4958: $7b
	sbc  a                                           ; $4959: $9f
	dec  c                                           ; $495a: $0d
	nop                                              ; $495b: $00
	ld   a, [bc]                                     ; $495c: $0a
	dec  c                                           ; $495d: $0d
	nop                                              ; $495e: $00
	nop                                              ; $495f: $00
	rrca                                             ; $4960: $0f
	nop                                              ; $4961: $00
	ld   bc, $1e09                                   ; $4962: $01 $09 $1e
	nop                                              ; $4965: $00
	rrca                                             ; $4966: $0f
	nop                                              ; $4967: $00
	ld   bc, $ca01                                   ; $4968: $01 $01 $ca
	xor  [hl]                                        ; $496b: $ae
	jp   z, Jump_044_75ae                            ; $496c: $ca $ae $75

	ld   h, a                                        ; $496f: $67
	ld   a, [$040d]                                  ; $4970: $fa $0d $04
	and  c                                           ; $4973: $a1
	inc  bc                                          ; $4974: $03
	add  d                                           ; $4975: $82
	ld   a, h                                        ; $4976: $7c
	adc  l                                           ; $4977: $8d
	ld   a, b                                        ; $4978: $78
	ld   h, e                                        ; $4979: $63
	and  c                                           ; $497a: $a1
	ld   a, c                                        ; $497b: $79
	ld   [bc], a                                     ; $497c: $02
	ld   a, [bc]                                     ; $497d: $0a
	adc  h                                           ; $497e: $8c
	sbc  d                                           ; $497f: $9a
	ld   [hl], h                                     ; $4980: $74
	rst  $38                                         ; $4981: $ff
	rst  $38                                         ; $4982: $ff
	dec  c                                           ; $4983: $0d
	nop                                              ; $4984: $00
	ld   a, [bc]                                     ; $4985: $0a
	inc  e                                           ; $4986: $1c
	ld   bc, $0505                                   ; $4987: $01 $05 $05
	dec  e                                           ; $498a: $1d
	ld   b, b                                        ; $498b: $40
	ld   de, $1103                                   ; $498c: $11 $03 $11
	ld   bc, $2802                                   ; $498f: $01 $02 $28
	nop                                              ; $4992: $00
	ld   bc, $9e6b                                   ; $4993: $01 $6b $9e
	ld   l, e                                        ; $4996: $6b
	and  c                                           ; $4997: $a1
	ld   a, b                                        ; $4998: $78
	rst  $38                                         ; $4999: $ff
	rst  $38                                         ; $499a: $ff
	dec  c                                           ; $499b: $0d
	sub  d                                           ; $499c: $92
	ld   l, [hl]                                     ; $499d: $6e
	rst  $38                                         ; $499e: $ff
	rst  $38                                         ; $499f: $ff
	inc  bc                                          ; $49a0: $03
	ld   h, [hl]                                     ; $49a1: $66
	sbc  d                                           ; $49a2: $9a
	sbc  c                                           ; $49a3: $99
	ld   h, [hl]                                     ; $49a4: $66
	sub  c                                           ; $49a5: $91
	dec  c                                           ; $49a6: $0d
	ld   a, b                                        ; $49a7: $78
	ld   d, d                                        ; $49a8: $52
	ld   [hl], l                                     ; $49a9: $75
	ld   h, a                                        ; $49aa: $67
	ld   e, c                                        ; $49ab: $59
	rst  $38                                         ; $49ac: $ff
	rst  $38                                         ; $49ad: $ff
	dec  c                                           ; $49ae: $0d
	nop                                              ; $49af: $00
	ld   a, [bc]                                     ; $49b0: $0a
	inc  e                                           ; $49b1: $1c
	ld   bc, $0101                                   ; $49b2: $01 $01 $01
	ld   bc, $9750                                   ; $49b5: $01 $50 $97
	sbc  [hl]                                        ; $49b8: $9e
	inc  bc                                          ; $49b9: $03
	ld   l, l                                        ; $49ba: $6d
	dec  b                                           ; $49bb: $05
	add  hl, de                                      ; $49bc: $19
	ld   e, d                                        ; $49bd: $5a
	dec  b                                           ; $49be: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49bf: $cf
	adc  h                                           ; $49c0: $8c
	sbc  c                                           ; $49c1: $99
	inc  bc                                          ; $49c2: $03
	ld   l, a                                        ; $49c3: $6f
	ld   [bc], a                                     ; $49c4: $02
	xor  c                                           ; $49c5: $a9
	ld   h, [hl]                                     ; $49c6: $66
	sub  c                                           ; $49c7: $91
	dec  c                                           ; $49c8: $0d
	ld   a, b                                        ; $49c9: $78
	ld   d, d                                        ; $49ca: $52
	ld   e, c                                        ; $49cb: $59
	ld   h, l                                        ; $49cc: $65
	sub  a                                           ; $49cd: $97
	sbc  a                                           ; $49ce: $9f
	ld   [bc], a                                     ; $49cf: $02
	and  l                                           ; $49d0: $a5
	inc  b                                           ; $49d1: $04
	xor  d                                           ; $49d2: $aa
	sub  b                                           ; $49d3: $90
	ld   [bc], a                                     ; $49d4: $02
	jr   nz, jr_044_49db                             ; $49d5: $20 $04

	xor  d                                           ; $49d7: $aa
	dec  c                                           ; $49d8: $0d
	ld   e, d                                        ; $49d9: $5a
	and  c                                           ; $49da: $a1

jr_044_49db:
	ld   a, [hl]                                     ; $49db: $7e
	ld   [hl], c                                     ; $49dc: $71
	ld   [hl], h                                     ; $49dd: $74
	ld   e, l                                        ; $49de: $5d
	ld   l, [hl]                                     ; $49df: $6e
	ld   h, e                                        ; $49e0: $63
	ld   d, d                                        ; $49e1: $52
	ld   a, e                                        ; $49e2: $7b
	sbc  a                                           ; $49e3: $9f
	dec  c                                           ; $49e4: $0d
	nop                                              ; $49e5: $00
	ld   a, [bc]                                     ; $49e6: $0a
	dec  c                                           ; $49e7: $0d
	nop                                              ; $49e8: $00
	nop                                              ; $49e9: $00
	rrca                                             ; $49ea: $0f
	nop                                              ; $49eb: $00
	ld   bc, $1e09                                   ; $49ec: $01 $09 $1e
	nop                                              ; $49ef: $00
	inc  e                                           ; $49f0: $1c
	ld   bc, $0000                                   ; $49f1: $01 $00 $00
	ld   bc, $6e8c                                   ; $49f4: $01 $8c $6e
	sub  [hl]                                        ; $49f7: $96
	ld   e, l                                        ; $49f8: $5d
	sbc  l                                           ; $49f9: $9d
	ld   e, c                                        ; $49fa: $59
	sub  a                                           ; $49fb: $97
	ld   a, b                                        ; $49fc: $78
	ld   d, d                                        ; $49fd: $52
	and  c                                           ; $49fe: $a1
	ld   [hl], l                                     ; $49ff: $75
	ld   h, a                                        ; $4a00: $67
	ld   a, e                                        ; $4a01: $7b
	sbc  a                                           ; $4a02: $9f
	dec  c                                           ; $4a03: $0d
	ld   l, e                                        ; $4a04: $6b
	ld   d, h                                        ; $4a05: $54
	ld   [hl], l                                     ; $4a06: $75
	ld   h, a                                        ; $4a07: $67
	sub  [hl]                                        ; $4a08: $96
	ld   a, e                                        ; $4a09: $7b
	sbc  a                                           ; $4a0a: $9f
	dec  c                                           ; $4a0b: $0d
	inc  b                                           ; $4a0c: $04
	ld   b, l                                        ; $4a0d: $45
	ld   [hl], c                                     ; $4a0e: $71
	ld   l, l                                        ; $4a0f: $6d
	ld   a, [hl]                                     ; $4a10: $7e
	ld   [hl], c                                     ; $4a11: $71
	ld   e, c                                        ; $4a12: $59
	sbc  b                                           ; $4a13: $98
	ld   [hl], l                                     ; $4a14: $75
	ld   h, a                                        ; $4a15: $67
	ld   h, l                                        ; $4a16: $65
	sbc  a                                           ; $4a17: $9f
	dec  c                                           ; $4a18: $0d
	nop                                              ; $4a19: $00
	ld   a, [bc]                                     ; $4a1a: $0a
	ld   bc, $9750                                   ; $4a1b: $01 $50 $97
	sbc  [hl]                                        ; $4a1e: $9e
	inc  bc                                          ; $4a1f: $03
	ld   l, l                                        ; $4a20: $6d
	dec  b                                           ; $4a21: $05
	add  hl, de                                      ; $4a22: $19
	ld   e, d                                        ; $4a23: $5a
	dec  b                                           ; $4a24: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a25: $cf
	adc  h                                           ; $4a26: $8c
	sbc  c                                           ; $4a27: $99
	inc  bc                                          ; $4a28: $03
	ld   l, a                                        ; $4a29: $6f
	ld   [bc], a                                     ; $4a2a: $02
	xor  c                                           ; $4a2b: $a9
	ld   l, [hl]                                     ; $4a2c: $6e
	sbc  l                                           ; $4a2d: $9d
	dec  c                                           ; $4a2e: $0d
	ld   h, [hl]                                     ; $4a2f: $66
	sub  c                                           ; $4a30: $91
	ld   d, b                                        ; $4a31: $50
	sbc  [hl]                                        ; $4a32: $9e
	ld   [bc], a                                     ; $4a33: $02
	and  l                                           ; $4a34: $a5
	inc  b                                           ; $4a35: $04
	xor  d                                           ; $4a36: $aa
	sub  b                                           ; $4a37: $90
	ld   [bc], a                                     ; $4a38: $02
	jr   nz, jr_044_4a3f                             ; $4a39: $20 $04

	xor  d                                           ; $4a3b: $aa
	dec  c                                           ; $4a3c: $0d
	ld   e, d                                        ; $4a3d: $5a
	and  c                                           ; $4a3e: $a1

jr_044_4a3f:
	ld   a, [hl]                                     ; $4a3f: $7e
	ld   [hl], c                                     ; $4a40: $71
	ld   [hl], h                                     ; $4a41: $74
	ld   e, l                                        ; $4a42: $5d
	ld   l, [hl]                                     ; $4a43: $6e
	ld   h, e                                        ; $4a44: $63
	ld   d, d                                        ; $4a45: $52
	ld   a, e                                        ; $4a46: $7b
	sbc  a                                           ; $4a47: $9f
	dec  c                                           ; $4a48: $0d
	nop                                              ; $4a49: $00
	ld   a, [bc]                                     ; $4a4a: $0a
	dec  c                                           ; $4a4b: $0d
	nop                                              ; $4a4c: $00
	nop                                              ; $4a4d: $00
	rrca                                             ; $4a4e: $0f
	nop                                              ; $4a4f: $00
	ld   bc, $1e09                                   ; $4a50: $01 $09 $1e
	nop                                              ; $4a53: $00
	inc  e                                           ; $4a54: $1c
	ld   bc, $0404                                   ; $4a55: $01 $04 $04
	ld   bc, $9e50                                   ; $4a58: $01 $50 $9e
	ld   [$6300], sp                                 ; $4a5b: $08 $00 $63
	and  c                                           ; $4a5e: $a1
	sbc  a                                           ; $4a5f: $9f
	dec  c                                           ; $4a60: $0d
	dec  b                                           ; $4a61: $05
	ld   b, l                                        ; $4a62: $45
	inc  b                                           ; $4a63: $04
	xor  d                                           ; $4a64: $aa
	ld   a, l                                        ; $4a65: $7d
	sbc  [hl]                                        ; $4a66: $9e
	inc  b                                           ; $4a67: $04
	ld   c, $04                                      ; $4a68: $0e $04
	adc  h                                           ; $4a6a: $8c
	ld   [hl], l                                     ; $4a6b: $75
	ld   h, l                                        ; $4a6c: $65
	ld   l, l                                        ; $4a6d: $6d
	ld   a, e                                        ; $4a6e: $7b
	sbc  a                                           ; $4a6f: $9f
	dec  c                                           ; $4a70: $0d
	nop                                              ; $4a71: $00
	ld   a, [bc]                                     ; $4a72: $0a
	ld   bc, $9a61                                   ; $4a73: $01 $61 $9a
	ld   a, c                                        ; $4a76: $79

jr_044_4a77:
	ld   h, c                                        ; $4a77: $61
	sbc  b                                           ; $4a78: $98
	ld   l, b                                        ; $4a79: $68
	ld   a, c                                        ; $4a7a: $79
	sbc  [hl]                                        ; $4a7b: $9e
	ld   [bc], a                                     ; $4a7c: $02
	jr   nz, jr_044_4a77                             ; $4a7d: $20 $f8

	ld   [bc], a                                     ; $4a7f: $02
	sbc  e                                           ; $4a80: $9b
	ld   a, h                                        ; $4a81: $7c
	ld   [bc], a                                     ; $4a82: $02
	xor  c                                           ; $4a83: $a9
	dec  c                                           ; $4a84: $0d
	inc  b                                           ; $4a85: $04
	ld   [$9102], sp                                 ; $4a86: $08 $02 $91
	ld   [hl], l                                     ; $4a89: $75
	ld   e, d                                        ; $4a8a: $5a
	and  c                                           ; $4a8b: $a1
	ld   a, [hl]                                     ; $4a8c: $7e
	ld   [hl], c                                     ; $4a8d: $71
	ld   [hl], h                                     ; $4a8e: $74
	ld   [bc], a                                     ; $4a8f: $02
	inc  [hl]                                        ; $4a90: $34
	ld   h, e                                        ; $4a91: $63
	ld   d, d                                        ; $4a92: $52
	ld   a, e                                        ; $4a93: $7b
	sbc  a                                           ; $4a94: $9f
	dec  c                                           ; $4a95: $0d
	nop                                              ; $4a96: $00
	ld   a, [bc]                                     ; $4a97: $0a
	ld   bc, $6176                                   ; $4a98: $01 $76 $61
	sbc  e                                           ; $4a9b: $9b
	ld   [hl], l                                     ; $4a9c: $75
	sbc  [hl]                                        ; $4a9d: $9e
	ld   [hl], a                                     ; $4a9e: $77
	ld   d, h                                        ; $4a9f: $54
	ld   [hl], l                                     ; $4aa0: $75
	ld   h, a                                        ; $4aa1: $67
	ld   e, c                                        ; $4aa2: $59
	ld   sp, hl                                      ; $4aa3: $f9
	dec  c                                           ; $4aa4: $0d
	inc  b                                           ; $4aa5: $04
	ld   [$8f02], sp                                 ; $4aa6: $08 $02 $8f
	ld   [bc], a                                     ; $4aa9: $02
	sub  b                                           ; $4aaa: $90
	ld   [bc], a                                     ; $4aab: $02
	sub  c                                           ; $4aac: $91
	inc  b                                           ; $4aad: $04
	add  hl, bc                                      ; $4aae: $09
	ld   a, c                                        ; $4aaf: $79
	inc  b                                           ; $4ab0: $04
	ld   b, l                                        ; $4ab1: $45
	inc  b                                           ; $4ab2: $04
	ld   a, [bc]                                     ; $4ab3: $0a
	ld   h, l                                        ; $4ab4: $65
	ld   [hl], h                                     ; $4ab5: $74
	adc  l                                           ; $4ab6: $8d
	ld   [hl], h                                     ; $4ab7: $74
	rst  $38                                         ; $4ab8: $ff
	rst  $38                                         ; $4ab9: $ff
	dec  c                                           ; $4aba: $0d
	nop                                              ; $4abb: $00
	ld   a, [bc]                                     ; $4abc: $0a
	add  hl, de                                      ; $4abd: $19
	dec  b                                           ; $4abe: $05
	inc  bc                                          ; $4abf: $03
	ld   [bc], a                                     ; $4ac0: $02
	jr   c, jr_044_4ac5                              ; $4ac1: $38 $02

	inc  b                                           ; $4ac3: $04
	ld   [hl], l                                     ; $4ac4: $75

jr_044_4ac5:
	ld   h, a                                        ; $4ac5: $67
	nop                                              ; $4ac6: $00
	nop                                              ; $4ac7: $00
	inc  bc                                          ; $4ac8: $03
	sub  h                                           ; $4ac9: $94
	ld   [bc], a                                     ; $4aca: $02
	ld   hl, sp+$5a                                  ; $4acb: $f8 $5a
	ld   a, b                                        ; $4acd: $78
	ld   e, l                                        ; $4ace: $5d
	ld   a, b                                        ; $4acf: $78
	ld   [hl], c                                     ; $4ad0: $71
	ld   l, l                                        ; $4ad1: $6d
	nop                                              ; $4ad2: $00
	ld   bc, $aeca                                   ; $4ad3: $01 $ca $ae
	jp   z, Jump_044_75ae                            ; $4ad6: $ca $ae $75

	ld   h, a                                        ; $4ad9: $67
	nop                                              ; $4ada: $00
	ld   [bc], a                                     ; $4adb: $02
	rlca                                             ; $4adc: $07
	ld   h, [hl]                                     ; $4add: $66
	inc  bc                                          ; $4ade: $03
	ld   [bc], a                                     ; $4adf: $02
	inc  bc                                          ; $4ae0: $03
	ld   bc, $2000                                   ; $4ae1: $01 $00 $20
	nop                                              ; $4ae4: $00
	rlca                                             ; $4ae5: $07
	jr   z, @+$06                                    ; $4ae6: $28 $04

	ld   [bc], a                                     ; $4ae8: $02
	inc  bc                                          ; $4ae9: $03
	ld   bc, $2001                                   ; $4aea: $01 $01 $20
	nop                                              ; $4aed: $00
	rlca                                             ; $4aee: $07
	ret  z                                           ; $4aef: $c8

	inc  b                                           ; $4af0: $04
	ld   [bc], a                                     ; $4af1: $02
	inc  bc                                          ; $4af2: $03
	ld   bc, $2002                                   ; $4af3: $01 $02 $20
	nop                                              ; $4af6: $00
	ld   b, $4e                                      ; $4af7: $06 $4e
	dec  b                                           ; $4af9: $05
	rrca                                             ; $4afa: $0f
	nop                                              ; $4afb: $00
	ld   bc, $0201                                   ; $4afc: $01 $01 $02
	jr   c, jr_044_4b03                              ; $4aff: $38 $02

	inc  b                                           ; $4b01: $04
	ld   [hl], l                                     ; $4b02: $75

jr_044_4b03:
	ld   h, a                                        ; $4b03: $67
	sbc  a                                           ; $4b04: $9f
	dec  c                                           ; $4b05: $0d
	adc  l                                           ; $4b06: $8d
	ld   a, b                                        ; $4b07: $78
	ld   h, e                                        ; $4b08: $63
	and  c                                           ; $4b09: $a1
	ld   a, h                                        ; $4b0a: $7c
	sub  [hl]                                        ; $4b0b: $96
	ld   d, h                                        ; $4b0c: $54
	ld   a, b                                        ; $4b0d: $78
	dec  b                                           ; $4b0e: $05
	ld   d, $04                                      ; $4b0f: $16 $04
	sbc  l                                           ; $4b11: $9d
	ld   a, b                                        ; $4b12: $78
	inc  b                                           ; $4b13: $04
	ld   a, b                                        ; $4b14: $78
	ld   bc, $7614                                   ; $4b15: $01 $14 $76
	dec  c                                           ; $4b18: $0d
	ld   [bc], a                                     ; $4b19: $02
	jp   c, Jump_044_6779                            ; $4b1a: $da $79 $67

	ld   h, d                                        ; $4b1d: $62
	ld   l, c                                        ; $4b1e: $69
	sbc  c                                           ; $4b1f: $99
	ld   a, b                                        ; $4b20: $78
	and  c                                           ; $4b21: $a1
	ld   [hl], h                                     ; $4b22: $74
	rst  $38                                         ; $4b23: $ff
	rst  $38                                         ; $4b24: $ff
	dec  c                                           ; $4b25: $0d
	nop                                              ; $4b26: $00
	ld   a, [bc]                                     ; $4b27: $0a
	inc  e                                           ; $4b28: $1c
	ld   bc, $0505                                   ; $4b29: $01 $05 $05
	dec  e                                           ; $4b2c: $1d
	ld   b, b                                        ; $4b2d: $40
	ld   de, $1103                                   ; $4b2e: $11 $03 $11
	ld   bc, $2802                                   ; $4b31: $01 $02 $28
	nop                                              ; $4b34: $00
	ld   bc, $508c                                   ; $4b35: $01 $8c $50
	sbc  [hl]                                        ; $4b38: $9e
	ld   d, b                                        ; $4b39: $50
	sbc  b                                           ; $4b3a: $98
	ld   e, d                                        ; $4b3b: $5a
	halt                                             ; $4b3c: $76
	ld   d, h                                        ; $4b3d: $54
	ld   h, d                                        ; $4b3e: $62
	ld   h, h                                        ; $4b3f: $64
	ld   d, d                                        ; $4b40: $52
	adc  h                                           ; $4b41: $8c
	ld   h, a                                        ; $4b42: $67
	ld   a, [$750d]                                  ; $4b43: $fa $0d $75
	sub  b                                           ; $4b46: $90
	sbc  [hl]                                        ; $4b47: $9e
	ld   l, e                                        ; $4b48: $6b
	and  c                                           ; $4b49: $a1
	ld   a, b                                        ; $4b4a: $78
	inc  b                                           ; $4b4b: $04
	ld   [hl], a                                     ; $4b4c: $77
	ld   a, c                                        ; $4b4d: $79
	ld   [bc], a                                     ; $4b4e: $02
	sbc  l                                           ; $4b4f: $9d
	sbc  l                                           ; $4b50: $9d
	sbc  d                                           ; $4b51: $9a
	sbc  c                                           ; $4b52: $99
	halt                                             ; $4b53: $76
	dec  c                                           ; $4b54: $0d
	ld   h, c                                        ; $4b55: $61
	ld   [hl], c                                     ; $4b56: $71
	ld   l, a                                        ; $4b57: $6f
	ld   e, d                                        ; $4b58: $5a
	inc  bc                                          ; $4b59: $03
	ld   h, [hl]                                     ; $4b5a: $66
	sbc  d                                           ; $4b5b: $9a
	ld   l, a                                        ; $4b5c: $6f
	sub  c                                           ; $4b5d: $91
	ld   d, d                                        ; $4b5e: $52
	adc  h                                           ; $4b5f: $8c
	ld   h, a                                        ; $4b60: $67
	sub  [hl]                                        ; $4b61: $96
	rst  $38                                         ; $4b62: $ff
	rst  $38                                         ; $4b63: $ff
	dec  c                                           ; $4b64: $0d
	nop                                              ; $4b65: $00
	ld   a, [bc]                                     ; $4b66: $0a
	inc  e                                           ; $4b67: $1c
	ld   bc, $0101                                   ; $4b68: $01 $01 $01
	ld   bc, $9a61                                   ; $4b6b: $01 $61 $9a
	ld   h, [hl]                                     ; $4b6e: $66
	sub  c                                           ; $4b6f: $91
	sbc  [hl]                                        ; $4b70: $9e
	adc  l                                           ; $4b71: $8d
	ld   [hl], c                                     ; $4b72: $71
	halt                                             ; $4b73: $76
	sub  b                                           ; $4b74: $90
	ld   a, b                                        ; $4b75: $78
	ld   d, d                                        ; $4b76: $52
	ld   [bc], a                                     ; $4b77: $02
	di                                               ; $4b78: $f3
	ld   a, l                                        ; $4b79: $7d
	dec  c                                           ; $4b7a: $0d
	ld   [bc], a                                     ; $4b7b: $02
	sub  l                                           ; $4b7c: $95
	ld   l, c                                        ; $4b7d: $69
	sub  a                                           ; $4b7e: $97
	sbc  d                                           ; $4b7f: $9a
	adc  h                                           ; $4b80: $8c
	ld   l, c                                        ; $4b81: $69
	and  c                                           ; $4b82: $a1
	ld   a, e                                        ; $4b83: $7b
	rst  $38                                         ; $4b84: $ff
	rst  $38                                         ; $4b85: $ff
	dec  c                                           ; $4b86: $0d
	ld   d, b                                        ; $4b87: $50
	ld   l, l                                        ; $4b88: $6d
	ld   h, l                                        ; $4b89: $65
	sub  b                                           ; $4b8a: $90
	ld   e, d                                        ; $4b8b: $5a
	and  c                                           ; $4b8c: $a1
	ld   a, [hl]                                     ; $4b8d: $7e
	sub  a                                           ; $4b8e: $97
	ld   a, b                                        ; $4b8f: $78
	ld   e, e                                        ; $4b90: $5b
	sub  c                                           ; $4b91: $91
	ld   a, [$000d]                                  ; $4b92: $fa $0d $00
	ld   a, [bc]                                     ; $4b95: $0a
	ld   bc, $9166                                   ; $4b96: $01 $66 $91
	sbc  [hl]                                        ; $4b99: $9e
	ld   [bc], a                                     ; $4b9a: $02
	and  l                                           ; $4b9b: $a5
	inc  b                                           ; $4b9c: $04
	xor  d                                           ; $4b9d: $aa
	sub  b                                           ; $4b9e: $90
	ld   [bc], a                                     ; $4b9f: $02
	jr   nz, jr_044_4ba6                             ; $4ba0: $20 $04

	xor  d                                           ; $4ba2: $aa
	sbc  [hl]                                        ; $4ba3: $9e
	dec  c                                           ; $4ba4: $0d
	ld   e, d                                        ; $4ba5: $5a

jr_044_4ba6:
	and  c                                           ; $4ba6: $a1
	ld   a, [hl]                                     ; $4ba7: $7e
	ld   [hl], c                                     ; $4ba8: $71
	ld   [hl], h                                     ; $4ba9: $74
	ld   e, l                                        ; $4baa: $5d
	ld   l, [hl]                                     ; $4bab: $6e
	ld   h, e                                        ; $4bac: $63
	ld   d, d                                        ; $4bad: $52
	ld   a, e                                        ; $4bae: $7b
	sbc  a                                           ; $4baf: $9f
	dec  c                                           ; $4bb0: $0d
	nop                                              ; $4bb1: $00
	ld   a, [bc]                                     ; $4bb2: $0a
	dec  c                                           ; $4bb3: $0d
	nop                                              ; $4bb4: $00
	nop                                              ; $4bb5: $00
	rrca                                             ; $4bb6: $0f
	nop                                              ; $4bb7: $00
	ld   bc, $1e09                                   ; $4bb8: $01 $09 $1e
	nop                                              ; $4bbb: $00
	rrca                                             ; $4bbc: $0f
	nop                                              ; $4bbd: $00
	ld   bc, $0501                                   ; $4bbe: $01 $01 $05
	ld   b, l                                        ; $4bc1: $45
	inc  b                                           ; $4bc2: $04
	xor  d                                           ; $4bc3: $aa
	ld   a, h                                        ; $4bc4: $7c
	ld   h, c                                        ; $4bc5: $61
	halt                                             ; $4bc6: $76
	ld   [hl], l                                     ; $4bc7: $75
	sbc  [hl]                                        ; $4bc8: $9e
	ld   [bc], a                                     ; $4bc9: $02
	ei                                               ; $4bca: $fb
	ld   e, a                                        ; $4bcb: $5f
	ld   [hl], h                                     ; $4bcc: $74
	ld   d, d                                        ; $4bcd: $52
	ld   e, l                                        ; $4bce: $5d
	dec  c                                           ; $4bcf: $0d
	inc  bc                                          ; $4bd0: $03
	sub  h                                           ; $4bd1: $94
	ld   [bc], a                                     ; $4bd2: $02
	ld   hl, sp+$5a                                  ; $4bd3: $f8 $5a
	ld   a, b                                        ; $4bd5: $78
	ld   e, l                                        ; $4bd6: $5d
	ld   a, b                                        ; $4bd7: $78
	ld   [hl], c                                     ; $4bd8: $71
	ld   [hl], h                                     ; $4bd9: $74
	ld   e, e                                        ; $4bda: $5b
	adc  h                                           ; $4bdb: $8c
	ld   h, l                                        ; $4bdc: $65
	ld   l, l                                        ; $4bdd: $6d
	rst  $38                                         ; $4bde: $ff
	rst  $38                                         ; $4bdf: $ff
	dec  c                                           ; $4be0: $0d
	nop                                              ; $4be1: $00
	ld   a, [bc]                                     ; $4be2: $0a
	inc  e                                           ; $4be3: $1c
	ld   bc, $0404                                   ; $4be4: $01 $04 $04
	ld   bc, $8f04                                   ; $4be7: $01 $04 $8f
	inc  b                                           ; $4bea: $04
	jr   jr_044_4c66                                 ; $4beb: $18 $79

	ld   h, d                                        ; $4bed: $62
	adc  a                                           ; $4bee: $8f
	and  c                                           ; $4bef: $a1
	ld   a, b                                        ; $4bf0: $78
	ld   h, e                                        ; $4bf1: $63
	ld   d, d                                        ; $4bf2: $52
	sbc  a                                           ; $4bf3: $9f
	dec  c                                           ; $4bf4: $0d
	ld   [hl], l                                     ; $4bf5: $75
	sub  b                                           ; $4bf6: $90
	sbc  [hl]                                        ; $4bf7: $9e
	ld   e, e                                        ; $4bf8: $5b
	ld   [hl], c                                     ; $4bf9: $71
	halt                                             ; $4bfa: $76
	dec  b                                           ; $4bfb: $05
	inc  de                                          ; $4bfc: $13
	ld   h, l                                        ; $4bfd: $65
	ld   d, d                                        ; $4bfe: $52
	ld   h, c                                        ; $4bff: $61
	halt                                             ; $4c00: $76
	sub  b                                           ; $4c01: $90
	dec  c                                           ; $4c02: $0d
	ld   d, b                                        ; $4c03: $50
	sbc  b                                           ; $4c04: $98
	adc  h                                           ; $4c05: $8c
	ld   h, a                                        ; $4c06: $67
	ld   e, c                                        ; $4c07: $59
	sub  a                                           ; $4c08: $97
	rst  $38                                         ; $4c09: $ff
	rst  $38                                         ; $4c0a: $ff
	dec  c                                           ; $4c0b: $0d
	nop                                              ; $4c0c: $00
	ld   a, [bc]                                     ; $4c0d: $0a
	inc  e                                           ; $4c0e: $1c
	ld   bc, $0000                                   ; $4c0f: $01 $00 $00
	dec  e                                           ; $4c12: $1d
	ld   b, b                                        ; $4c13: $40
	ld   de, $1103                                   ; $4c14: $11 $03 $11
	ld   bc, $2801                                   ; $4c17: $01 $01 $28
	nop                                              ; $4c1a: $00
	ld   bc, $a15a                                   ; $4c1b: $01 $5a $a1
	ld   a, [hl]                                     ; $4c1e: $7e
	ld   [hl], c                                     ; $4c1f: $71
	ld   [hl], h                                     ; $4c20: $74
	ld   e, l                                        ; $4c21: $5d
	ld   l, [hl]                                     ; $4c22: $6e
	ld   h, e                                        ; $4c23: $63
	ld   d, d                                        ; $4c24: $52
	sbc  a                                           ; $4c25: $9f
	dec  c                                           ; $4c26: $0d
	ld   d, b                                        ; $4c27: $50
	ld   l, l                                        ; $4c28: $6d
	ld   h, l                                        ; $4c29: $65
	sbc  [hl]                                        ; $4c2a: $9e
	ld   e, b                                        ; $4c2b: $58
	ld   d, h                                        ; $4c2c: $54
	ld   d, [hl]                                     ; $4c2d: $56
	and  c                                           ; $4c2e: $a1
	ld   h, l                                        ; $4c2f: $65
	adc  h                                           ; $4c30: $8c
	ld   h, a                                        ; $4c31: $67
	sbc  a                                           ; $4c32: $9f
	dec  c                                           ; $4c33: $0d
	nop                                              ; $4c34: $00
	ld   a, [bc]                                     ; $4c35: $0a
	ld   bc, $9166                                   ; $4c36: $01 $66 $91
	sbc  [hl]                                        ; $4c39: $9e
	ld   [bc], a                                     ; $4c3a: $02
	and  l                                           ; $4c3b: $a5
	inc  b                                           ; $4c3c: $04
	xor  d                                           ; $4c3d: $aa
	sub  b                                           ; $4c3e: $90
	ld   [bc], a                                     ; $4c3f: $02
	jr   nz, jr_044_4c46                             ; $4c40: $20 $04

	xor  d                                           ; $4c42: $aa
	sbc  [hl]                                        ; $4c43: $9e
	dec  c                                           ; $4c44: $0d
	ld   e, d                                        ; $4c45: $5a

jr_044_4c46:
	and  c                                           ; $4c46: $a1
	ld   a, [hl]                                     ; $4c47: $7e
	ld   [hl], c                                     ; $4c48: $71
	ld   [hl], h                                     ; $4c49: $74
	ld   e, l                                        ; $4c4a: $5d
	ld   l, [hl]                                     ; $4c4b: $6e
	ld   h, e                                        ; $4c4c: $63
	ld   d, d                                        ; $4c4d: $52
	ld   a, e                                        ; $4c4e: $7b
	sbc  a                                           ; $4c4f: $9f
	dec  c                                           ; $4c50: $0d
	nop                                              ; $4c51: $00
	ld   a, [bc]                                     ; $4c52: $0a
	dec  c                                           ; $4c53: $0d
	nop                                              ; $4c54: $00
	nop                                              ; $4c55: $00
	rrca                                             ; $4c56: $0f
	nop                                              ; $4c57: $00
	ld   bc, $1e09                                   ; $4c58: $01 $09 $1e
	nop                                              ; $4c5b: $00
	rrca                                             ; $4c5c: $0f
	nop                                              ; $4c5d: $00
	ld   bc, $ca01                                   ; $4c5e: $01 $01 $ca
	xor  [hl]                                        ; $4c61: $ae
	jp   z, Jump_044_75ae                            ; $4c62: $ca $ae $75

	ld   h, a                                        ; $4c65: $67

jr_044_4c66:
	ld   a, [$040d]                                  ; $4c66: $fa $0d $04
	and  c                                           ; $4c69: $a1
	inc  bc                                          ; $4c6a: $03
	add  d                                           ; $4c6b: $82
	ld   a, h                                        ; $4c6c: $7c
	adc  l                                           ; $4c6d: $8d
	ld   a, b                                        ; $4c6e: $78
	ld   h, e                                        ; $4c6f: $63
	and  c                                           ; $4c70: $a1
	ld   a, c                                        ; $4c71: $79
	ld   [bc], a                                     ; $4c72: $02
	ld   a, [bc]                                     ; $4c73: $0a
	adc  h                                           ; $4c74: $8c
	sbc  d                                           ; $4c75: $9a
	ld   [hl], h                                     ; $4c76: $74
	rst  $38                                         ; $4c77: $ff
	rst  $38                                         ; $4c78: $ff
	dec  c                                           ; $4c79: $0d
	nop                                              ; $4c7a: $00
	ld   a, [bc]                                     ; $4c7b: $0a
	inc  e                                           ; $4c7c: $1c
	ld   bc, $0505                                   ; $4c7d: $01 $05 $05
	dec  e                                           ; $4c80: $1d
	ld   b, b                                        ; $4c81: $40
	ld   de, $1103                                   ; $4c82: $11 $03 $11
	ld   bc, $2802                                   ; $4c85: $01 $02 $28
	nop                                              ; $4c88: $00
	ld   bc, $9e6b                                   ; $4c89: $01 $6b $9e
	ld   l, e                                        ; $4c8c: $6b
	and  c                                           ; $4c8d: $a1
	ld   a, b                                        ; $4c8e: $78
	rst  $38                                         ; $4c8f: $ff
	rst  $38                                         ; $4c90: $ff
	dec  c                                           ; $4c91: $0d
	sub  d                                           ; $4c92: $92
	ld   l, [hl]                                     ; $4c93: $6e
	rst  $38                                         ; $4c94: $ff
	rst  $38                                         ; $4c95: $ff
	inc  bc                                          ; $4c96: $03
	ld   h, [hl]                                     ; $4c97: $66
	sbc  d                                           ; $4c98: $9a
	sbc  c                                           ; $4c99: $99
	ld   h, [hl]                                     ; $4c9a: $66
	sub  c                                           ; $4c9b: $91
	dec  c                                           ; $4c9c: $0d
	ld   a, b                                        ; $4c9d: $78
	ld   d, d                                        ; $4c9e: $52
	ld   [hl], l                                     ; $4c9f: $75
	ld   h, a                                        ; $4ca0: $67
	ld   e, c                                        ; $4ca1: $59
	rst  $38                                         ; $4ca2: $ff
	rst  $38                                         ; $4ca3: $ff
	dec  c                                           ; $4ca4: $0d
	nop                                              ; $4ca5: $00
	ld   a, [bc]                                     ; $4ca6: $0a
	ld   bc, $9750                                   ; $4ca7: $01 $50 $97
	sbc  [hl]                                        ; $4caa: $9e
	inc  bc                                          ; $4cab: $03
	ld   l, l                                        ; $4cac: $6d
	dec  b                                           ; $4cad: $05
	add  hl, de                                      ; $4cae: $19
	ld   e, d                                        ; $4caf: $5a
	dec  b                                           ; $4cb0: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cb1: $cf
	adc  h                                           ; $4cb2: $8c
	sbc  c                                           ; $4cb3: $99
	inc  bc                                          ; $4cb4: $03
	ld   l, a                                        ; $4cb5: $6f
	ld   [bc], a                                     ; $4cb6: $02
	xor  c                                           ; $4cb7: $a9
	ld   h, [hl]                                     ; $4cb8: $66
	sub  c                                           ; $4cb9: $91
	dec  c                                           ; $4cba: $0d
	ld   a, b                                        ; $4cbb: $78
	ld   d, d                                        ; $4cbc: $52
	ld   e, c                                        ; $4cbd: $59
	ld   h, l                                        ; $4cbe: $65
	sub  a                                           ; $4cbf: $97
	sbc  a                                           ; $4cc0: $9f
	ld   [bc], a                                     ; $4cc1: $02
	and  l                                           ; $4cc2: $a5
	inc  b                                           ; $4cc3: $04
	xor  d                                           ; $4cc4: $aa
	sub  b                                           ; $4cc5: $90
	ld   [bc], a                                     ; $4cc6: $02
	jr   nz, jr_044_4ccd                             ; $4cc7: $20 $04

	xor  d                                           ; $4cc9: $aa
	dec  c                                           ; $4cca: $0d
	ld   e, d                                        ; $4ccb: $5a
	and  c                                           ; $4ccc: $a1

jr_044_4ccd:
	ld   a, [hl]                                     ; $4ccd: $7e
	ld   [hl], c                                     ; $4cce: $71
	ld   [hl], h                                     ; $4ccf: $74
	ld   e, l                                        ; $4cd0: $5d
	ld   l, [hl]                                     ; $4cd1: $6e
	ld   h, e                                        ; $4cd2: $63
	ld   d, d                                        ; $4cd3: $52
	ld   a, e                                        ; $4cd4: $7b
	sbc  a                                           ; $4cd5: $9f
	dec  c                                           ; $4cd6: $0d
	nop                                              ; $4cd7: $00
	ld   a, [bc]                                     ; $4cd8: $0a
	dec  c                                           ; $4cd9: $0d
	nop                                              ; $4cda: $00
	nop                                              ; $4cdb: $00
	rrca                                             ; $4cdc: $0f
	nop                                              ; $4cdd: $00
	ld   bc, $1e09                                   ; $4cde: $01 $09 $1e
	nop                                              ; $4ce1: $00
	inc  e                                           ; $4ce2: $1c
	ld   bc, $0000                                   ; $4ce3: $01 $00 $00
	ld   bc, $6e8c                                   ; $4ce6: $01 $8c $6e
	sub  [hl]                                        ; $4ce9: $96
	ld   e, l                                        ; $4cea: $5d
	sbc  l                                           ; $4ceb: $9d
	ld   e, c                                        ; $4cec: $59
	sub  a                                           ; $4ced: $97
	ld   a, b                                        ; $4cee: $78
	ld   d, d                                        ; $4cef: $52
	and  c                                           ; $4cf0: $a1
	ld   [hl], l                                     ; $4cf1: $75
	ld   h, a                                        ; $4cf2: $67
	ld   a, e                                        ; $4cf3: $7b
	sbc  a                                           ; $4cf4: $9f
	dec  c                                           ; $4cf5: $0d
	ld   l, e                                        ; $4cf6: $6b
	ld   d, h                                        ; $4cf7: $54
	ld   [hl], l                                     ; $4cf8: $75
	ld   h, a                                        ; $4cf9: $67
	sub  [hl]                                        ; $4cfa: $96
	ld   a, e                                        ; $4cfb: $7b
	sbc  a                                           ; $4cfc: $9f
	dec  c                                           ; $4cfd: $0d
	inc  b                                           ; $4cfe: $04
	ld   b, l                                        ; $4cff: $45
	ld   [hl], c                                     ; $4d00: $71
	ld   l, l                                        ; $4d01: $6d
	ld   a, [hl]                                     ; $4d02: $7e
	ld   [hl], c                                     ; $4d03: $71
	ld   e, c                                        ; $4d04: $59
	sbc  b                                           ; $4d05: $98
	ld   [hl], l                                     ; $4d06: $75
	ld   h, a                                        ; $4d07: $67
	ld   h, l                                        ; $4d08: $65
	sbc  a                                           ; $4d09: $9f
	dec  c                                           ; $4d0a: $0d
	nop                                              ; $4d0b: $00
	ld   a, [bc]                                     ; $4d0c: $0a
	ld   bc, $9750                                   ; $4d0d: $01 $50 $97
	sbc  [hl]                                        ; $4d10: $9e
	inc  bc                                          ; $4d11: $03
	ld   l, l                                        ; $4d12: $6d
	dec  b                                           ; $4d13: $05
	add  hl, de                                      ; $4d14: $19
	ld   e, d                                        ; $4d15: $5a
	dec  b                                           ; $4d16: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d17: $cf
	adc  h                                           ; $4d18: $8c
	sbc  c                                           ; $4d19: $99
	inc  bc                                          ; $4d1a: $03
	ld   l, a                                        ; $4d1b: $6f
	ld   [bc], a                                     ; $4d1c: $02
	xor  c                                           ; $4d1d: $a9
	ld   l, [hl]                                     ; $4d1e: $6e
	sbc  l                                           ; $4d1f: $9d
	dec  c                                           ; $4d20: $0d
	ld   h, [hl]                                     ; $4d21: $66
	sub  c                                           ; $4d22: $91
	ld   d, b                                        ; $4d23: $50
	sbc  [hl]                                        ; $4d24: $9e
	ld   [bc], a                                     ; $4d25: $02
	and  l                                           ; $4d26: $a5
	inc  b                                           ; $4d27: $04
	xor  d                                           ; $4d28: $aa
	sub  b                                           ; $4d29: $90
	ld   [bc], a                                     ; $4d2a: $02
	jr   nz, jr_044_4d31                             ; $4d2b: $20 $04

	xor  d                                           ; $4d2d: $aa
	dec  c                                           ; $4d2e: $0d
	ld   e, d                                        ; $4d2f: $5a
	and  c                                           ; $4d30: $a1

jr_044_4d31:
	ld   a, [hl]                                     ; $4d31: $7e
	ld   [hl], c                                     ; $4d32: $71
	ld   [hl], h                                     ; $4d33: $74
	ld   e, l                                        ; $4d34: $5d
	ld   l, [hl]                                     ; $4d35: $6e
	ld   h, e                                        ; $4d36: $63
	ld   d, d                                        ; $4d37: $52
	ld   a, e                                        ; $4d38: $7b
	sbc  a                                           ; $4d39: $9f
	dec  c                                           ; $4d3a: $0d
	nop                                              ; $4d3b: $00
	ld   a, [bc]                                     ; $4d3c: $0a
	dec  c                                           ; $4d3d: $0d
	nop                                              ; $4d3e: $00
	nop                                              ; $4d3f: $00
	rrca                                             ; $4d40: $0f
	nop                                              ; $4d41: $00
	ld   bc, $1e09                                   ; $4d42: $01 $09 $1e
	nop                                              ; $4d45: $00
	nop                                              ; $4d46: $00
	inc  b                                           ; $4d47: $04
	add  b                                           ; $4d48: $80
	add  e                                           ; $4d49: $83
	ld   bc, $2000                                   ; $4d4a: $01 $00 $20
	nop                                              ; $4d4d: $00
	ld   c, $2f                                      ; $4d4e: $0e $2f
	inc  e                                           ; $4d50: $1c
	dec  c                                           ; $4d51: $0d
	nop                                              ; $4d52: $00
	nop                                              ; $4d53: $00
	ld   [bc], a                                     ; $4d54: $02
	ld   bc, $9750                                   ; $4d55: $01 $50 $97
	sbc  [hl]                                        ; $4d58: $9e
	ld   [$5d00], sp                                 ; $4d59: $08 $00 $5d
	and  c                                           ; $4d5c: $a1
	sbc  a                                           ; $4d5d: $9f
	dec  c                                           ; $4d5e: $0d
	nop                                              ; $4d5f: $00
	ld   a, [bc]                                     ; $4d60: $0a
	inc  e                                           ; $4d61: $1c
	dec  c                                           ; $4d62: $0d
	ld   bc, $0101                                   ; $4d63: $01 $01 $01
	ld   a, e                                        ; $4d66: $7b
	ld   d, [hl]                                     ; $4d67: $56
	sbc  [hl]                                        ; $4d68: $9e
	inc  b                                           ; $4d69: $04
	dec  hl                                          ; $4d6a: $2b
	ld   [hl], c                                     ; $4d6b: $71
	ld   [hl], h                                     ; $4d6c: $74
	sbc  c                                           ; $4d6d: $99
	ld   sp, hl                                      ; $4d6e: $f9
	dec  c                                           ; $4d6f: $0d
	nop                                              ; $4d70: $00
	ld   a, [bc]                                     ; $4d71: $0a
	ld   bc, $f5ac                                   ; $4d72: $01 $ac $f5
	bit  4, e                                        ; $4d75: $cb $63
	and  c                                           ; $4d77: $a1
	ld   [hl], c                                     ; $4d78: $71
	ld   [hl], h                                     ; $4d79: $74
	dec  c                                           ; $4d7a: $0d
	inc  bc                                          ; $4d7b: $03
	add  [hl]                                        ; $4d7c: $86
	ld   [bc], a                                     ; $4d7d: $02
	xor  l                                           ; $4d7e: $ad
	ld   a, c                                        ; $4d7f: $79
	inc  b                                           ; $4d80: $04
	ld   c, $03                                      ; $4d81: $0e $03
	add  d                                           ; $4d83: $82
	ld   [bc], a                                     ; $4d84: $02
	and  c                                           ; $4d85: $a1
	ld   a, b                                        ; $4d86: $78
	ld   a, h                                        ; $4d87: $7c
	sub  [hl]                                        ; $4d88: $96
	sbc  a                                           ; $4d89: $9f
	dec  c                                           ; $4d8a: $0d
	nop                                              ; $4d8b: $00
	ld   a, [bc]                                     ; $4d8c: $0a
	ld   bc, $7192                                   ; $4d8d: $01 $92 $71
	ld   a, a                                        ; $4d90: $7f
	sbc  b                                           ; $4d91: $98
	sbc  [hl]                                        ; $4d92: $9e
	ld   [bc], a                                     ; $4d93: $02
	call nc, Call_044_745d                           ; $4d94: $d4 $5d $74
	ld   e, c                                        ; $4d97: $59
	ld   [hl], c                                     ; $4d98: $71
	ld   h, c                                        ; $4d99: $61
	sub  [hl]                                        ; $4d9a: $96
	ld   e, l                                        ; $4d9b: $5d
	ld   [hl], h                                     ; $4d9c: $74
	dec  c                                           ; $4d9d: $0d
	db   $d3                                         ; $4d9e: $d3
	ei                                               ; $4d9f: $fb
	rst  $28                                         ; $4da0: $ef
	ei                                               ; $4da1: $fb
	adc  l                                           ; $4da2: $8d
	ld   l, l                                        ; $4da3: $6d
	ld   d, d                                        ; $4da4: $52
	ld   l, [hl]                                     ; $4da5: $6e
	ld   e, c                                        ; $4da6: $59
	sub  a                                           ; $4da7: $97
	dec  c                                           ; $4da8: $0d
	ld   e, c                                        ; $4da9: $59
	ld   h, l                                        ; $4daa: $65
	sub  a                                           ; $4dab: $97
	ld   a, e                                        ; $4dac: $7b
	sbc  a                                           ; $4dad: $9f
	dec  c                                           ; $4dae: $0d
	nop                                              ; $4daf: $00
	ld   a, [bc]                                     ; $4db0: $0a
	inc  e                                           ; $4db1: $1c
	dec  c                                           ; $4db2: $0d
	nop                                              ; $4db3: $00
	nop                                              ; $4db4: $00
	ld   bc, $546b                                   ; $4db5: $01 $6b $54
	ld   l, e                                        ; $4db8: $6b
	ld   d, h                                        ; $4db9: $54
	sbc  [hl]                                        ; $4dba: $9e
	xor  h                                           ; $4dbb: $ac
	push af                                          ; $4dbc: $f5
	bit  4, e                                        ; $4dbd: $cb $63
	and  c                                           ; $4dbf: $a1
	sub  b                                           ; $4dc0: $90
	dec  c                                           ; $4dc1: $0d
	ld   e, a                                        ; $4dc2: $5f
	ld   [hl], c                                     ; $4dc3: $71
	ld   h, c                                        ; $4dc4: $61
	ld   d, h                                        ; $4dc5: $54
	inc  bc                                          ; $4dc6: $03
	add  [hl]                                        ; $4dc7: $86
	ld   [bc], a                                     ; $4dc8: $02
	xor  l                                           ; $4dc9: $ad
	ld   e, d                                        ; $4dca: $5a
	ld   [bc], a                                     ; $4dcb: $02
	sbc  d                                           ; $4dcc: $9a
	ld   e, e                                        ; $4dcd: $5b
	adc  l                                           ; $4dce: $8d
	ld   l, l                                        ; $4dcf: $6d
	ld   d, d                                        ; $4dd0: $52
	sub  [hl]                                        ; $4dd1: $96
	sbc  a                                           ; $4dd2: $9f
	dec  c                                           ; $4dd3: $0d
	nop                                              ; $4dd4: $00
	ld   a, [bc]                                     ; $4dd5: $0a
	ld   bc, $786f                                   ; $4dd6: $01 $6f $78
	adc  l                                           ; $4dd9: $8d
	ld   a, c                                        ; $4dda: $79
	sbc  [hl]                                        ; $4ddb: $9e
	ld   d, b                                        ; $4ddc: $50
	ld   l, l                                        ; $4ddd: $6d
	ld   h, l                                        ; $4dde: $65
	ld   e, d                                        ; $4ddf: $5a
	ld   [bc], a                                     ; $4de0: $02
	sbc  l                                           ; $4de1: $9d
	ld   [hl], c                                     ; $4de2: $71
	ld   l, l                                        ; $4de3: $6d
	ld   [hl], c                                     ; $4de4: $71
	ld   [hl], h                                     ; $4de5: $74
	dec  c                                           ; $4de6: $0d
	res  4, l                                        ; $4de7: $cb $a5
	cp   b                                           ; $4de9: $b8
	jp   hl                                          ; $4dea: $e9


	sub  [hl]                                        ; $4deb: $96
	sbc  a                                           ; $4dec: $9f
	dec  c                                           ; $4ded: $0d
	nop                                              ; $4dee: $00
	ld   a, [bc]                                     ; $4def: $0a
	dec  b                                           ; $4df0: $05
	add  b                                           ; $4df1: $80
	add  d                                           ; $4df2: $82
	ld   bc, $0001                                   ; $4df3: $01 $01 $00
	nop                                              ; $4df6: $00
	nop                                              ; $4df7: $00
	rrca                                             ; $4df8: $0f
	nop                                              ; $4df9: $00
	ld   bc, $0702                                   ; $4dfa: $01 $02 $07
	call nc, $0401                                   ; $4dfd: $d4 $01 $04
	add  b                                           ; $4e00: $80
	jr   nc, jr_044_4e04                             ; $4e01: $30 $01

	rst  $38                                         ; $4e03: $ff

jr_044_4e04:
	jr   nz, jr_044_4e08                             ; $4e04: $20 $02

	nop                                              ; $4e06: $00
	inc  bc                                          ; $4e07: $03

jr_044_4e08:
	ld   b, b                                        ; $4e08: $40
	ld   bc, $2801                                   ; $4e09: $01 $01 $28
	jr   nz, jr_044_4e2a                             ; $4e0c: $20 $1c

	nop                                              ; $4e0e: $00
	ld   bc, $7d58                                   ; $4e0f: $01 $58 $7d
	sub  [hl]                                        ; $4e12: $96
	ld   d, h                                        ; $4e13: $54
	ld   h, d                                        ; $4e14: $62
	ld   h, h                                        ; $4e15: $64
	ld   d, d                                        ; $4e16: $52
	adc  h                                           ; $4e17: $8c
	ld   h, a                                        ; $4e18: $67
	sbc  [hl]                                        ; $4e19: $9e
	dec  c                                           ; $4e1a: $0d
	xor  h                                           ; $4e1b: $ac
	push af                                          ; $4e1c: $f5
	bit  4, e                                        ; $4e1d: $cb $63
	and  c                                           ; $4e1f: $a1
	sbc  a                                           ; $4e20: $9f
	dec  c                                           ; $4e21: $0d
	nop                                              ; $4e22: $00
	ld   a, [bc]                                     ; $4e23: $0a
	inc  e                                           ; $4e24: $1c
	ld   b, $01                                      ; $4e25: $06 $01
	ld   bc, $5801                                   ; $4e27: $01 $01 $58

jr_044_4e2a:
	ld   a, l                                        ; $4e2a: $7d
	sub  [hl]                                        ; $4e2b: $96
	ld   d, h                                        ; $4e2c: $54
	sbc  [hl]                                        ; $4e2d: $9e
	ld   [$9f00], sp                                 ; $4e2e: $08 $00 $9f
	dec  c                                           ; $4e31: $0d
	nop                                              ; $4e32: $00
	ld   a, [bc]                                     ; $4e33: $0a
	inc  e                                           ; $4e34: $1c
	ld   b, $00                                      ; $4e35: $06 $00
	nop                                              ; $4e37: $00
	ld   bc, $546b                                   ; $4e38: $01 $6b $54
	ld   d, d                                        ; $4e3b: $52
	sub  d                                           ; $4e3c: $92
	ld   c, a                                        ; $4e3d: $4f
	sbc  [hl]                                        ; $4e3e: $9e
	ld   [hl], a                                     ; $4e3f: $77
	ld   d, h                                        ; $4e40: $54
	ld   l, [hl]                                     ; $4e41: $6e
	ld   sp, hl                                      ; $4e42: $f9
	dec  c                                           ; $4e43: $0d
	inc  b                                           ; $4e44: $04
	ld   [$8f02], sp                                 ; $4e45: $08 $02 $8f
	ld   [bc], a                                     ; $4e48: $02
	sub  b                                           ; $4e49: $90
	ld   [bc], a                                     ; $4e4a: $02
	sub  c                                           ; $4e4b: $91
	inc  b                                           ; $4e4c: $04
	add  hl, bc                                      ; $4e4d: $09
	ld   a, c                                        ; $4e4e: $79
	inc  b                                           ; $4e4f: $04
	ld   b, l                                        ; $4e50: $45
	ld   [hl], c                                     ; $4e51: $71
	ld   [hl], h                                     ; $4e52: $74
	sub  [hl]                                        ; $4e53: $96
	sbc  a                                           ; $4e54: $9f
	dec  c                                           ; $4e55: $0d
	nop                                              ; $4e56: $00
	ld   a, [bc]                                     ; $4e57: $0a
	add  hl, de                                      ; $4e58: $19
	dec  b                                           ; $4e59: $05
	inc  bc                                          ; $4e5a: $03
	ld   [bc], a                                     ; $4e5b: $02
	pop  bc                                          ; $4e5c: $c1
	inc  b                                           ; $4e5d: $04
	rla                                              ; $4e5e: $17
	halt                                             ; $4e5f: $76
	inc  b                                           ; $4e60: $04
	and  b                                           ; $4e61: $a0
	ld   [bc], a                                     ; $4e62: $02
	ld   h, $75                                      ; $4e63: $26 $75
	ld   d, d                                        ; $4e65: $52
	ld   [hl], c                                     ; $4e66: $71
	ld   a, a                                        ; $4e67: $7f
	ld   d, d                                        ; $4e68: $52
	ld   [hl], l                                     ; $4e69: $75
	ld   h, a                                        ; $4e6a: $67
	nop                                              ; $4e6b: $00
	nop                                              ; $4e6c: $00
	adc  h                                           ; $4e6d: $8c
	ld   l, [hl]                                     ; $4e6e: $6e
	inc  b                                           ; $4e6f: $04
	ld   c, c                                        ; $4e70: $49
	halt                                             ; $4e71: $76
	sub  b                                           ; $4e72: $90
	ld   [bc], a                                     ; $4e73: $02
	sbc  l                                           ; $4e74: $9d
	ld   d, [hl]                                     ; $4e75: $56
	adc  h                                           ; $4e76: $8c
	ld   l, c                                        ; $4e77: $69
	and  c                                           ; $4e78: $a1
	nop                                              ; $4e79: $00
	ld   bc, $a104                                   ; $4e7a: $01 $04 $a1
	inc  bc                                          ; $4e7d: $03
	add  d                                           ; $4e7e: $82
	ld   a, [hl]                                     ; $4e7f: $7e
	ld   e, c                                        ; $4e80: $59
	sbc  b                                           ; $4e81: $98
	ld   [hl], l                                     ; $4e82: $75
	dec  b                                           ; $4e83: $05
	inc  de                                          ; $4e84: $13
	ld   h, l                                        ; $4e85: $65
	ld   d, d                                        ; $4e86: $52
	ld   [hl], l                                     ; $4e87: $75
	ld   h, a                                        ; $4e88: $67
	nop                                              ; $4e89: $00
	ld   [bc], a                                     ; $4e8a: $02
	rlca                                             ; $4e8b: $07
	ld   a, [$0200]                                  ; $4e8c: $fa $00 $02
	inc  bc                                          ; $4e8f: $03
	ld   bc, $2000                                   ; $4e90: $01 $00 $20
	nop                                              ; $4e93: $00
	rlca                                             ; $4e94: $07
	ld   c, l                                        ; $4e95: $4d
	ld   bc, $0302                                   ; $4e96: $01 $02 $03
	ld   bc, $2001                                   ; $4e99: $01 $01 $20
	nop                                              ; $4e9c: $00
	rlca                                             ; $4e9d: $07
	add  c                                           ; $4e9e: $81
	ld   bc, $0302                                   ; $4e9f: $01 $02 $03
	ld   bc, $2002                                   ; $4ea2: $01 $02 $20
	nop                                              ; $4ea5: $00
	ld   b, $b1                                      ; $4ea6: $06 $b1
	nop                                              ; $4ea8: $00
	inc  e                                           ; $4ea9: $1c
	ld   b, $02                                      ; $4eaa: $06 $02
	ld   [bc], a                                     ; $4eac: $02
	dec  e                                           ; $4ead: $1d
	ld   b, b                                        ; $4eae: $40
	ld   d, $03                                      ; $4eaf: $16 $03
	ld   d, $01                                      ; $4eb1: $16 $01
	ld   bc, $0029                                   ; $4eb3: $01 $29 $00
	ld   bc, $dc03                                   ; $4eb6: $01 $03 $dc
	ld   d, [hl]                                     ; $4eb9: $56
	ld   l, l                                        ; $4eba: $6d
	ld   e, l                                        ; $4ebb: $5d
	ld   a, b                                        ; $4ebc: $78
	ld   d, d                                        ; $4ebd: $52
	ld   a, h                                        ; $4ebe: $7c
	ld   e, c                                        ; $4ebf: $59
	sub  [hl]                                        ; $4ec0: $96
	rst  $38                                         ; $4ec1: $ff
	rst  $38                                         ; $4ec2: $ff
	dec  c                                           ; $4ec3: $0d
	nop                                              ; $4ec4: $00
	dec  b                                           ; $4ec5: $05
	ld   b, b                                        ; $4ec6: $40
	ld   c, l                                        ; $4ec7: $4d
	ld   [bc], a                                     ; $4ec8: $02
	nop                                              ; $4ec9: $00
	nop                                              ; $4eca: $00
	ld   bc, $999d                                   ; $4ecb: $01 $9d $99
	ld   e, c                                        ; $4ece: $59
	ld   [hl], c                                     ; $4ecf: $71
	ld   l, l                                        ; $4ed0: $6d
	ld   a, b                                        ; $4ed1: $78
	sbc  [hl]                                        ; $4ed2: $9e
	dec  c                                           ; $4ed3: $0d
	nop                                              ; $4ed4: $00
	dec  b                                           ; $4ed5: $05
	ld   b, b                                        ; $4ed6: $40
	ld   d, e                                        ; $4ed7: $53
	ld   bc, $0001                                   ; $4ed8: $01 $01 $00
	ld   bc, $f5d9                                   ; $4edb: $01 $d9 $f5
	ld   a, b                                        ; $4ede: $78
	ld   h, c                                        ; $4edf: $61
	halt                                             ; $4ee0: $76
	ld   [bc], a                                     ; $4ee1: $02
	jp   nz, Jump_044_7452                           ; $4ee2: $c2 $52 $74

	sbc  a                                           ; $4ee5: $9f
	dec  c                                           ; $4ee6: $0d
	nop                                              ; $4ee7: $00
	ld   a, [bc]                                     ; $4ee8: $0a
	dec  c                                           ; $4ee9: $0d
	nop                                              ; $4eea: $00
	nop                                              ; $4eeb: $00
	rrca                                             ; $4eec: $0f
	nop                                              ; $4eed: $00
	ld   bc, $1e09                                   ; $4eee: $01 $09 $1e
	nop                                              ; $4ef1: $00
	rrca                                             ; $4ef2: $0f
	nop                                              ; $4ef3: $00
	ld   bc, $0201                                   ; $4ef4: $01 $01 $02
	pop  bc                                          ; $4ef7: $c1
	inc  b                                           ; $4ef8: $04
	rla                                              ; $4ef9: $17
	halt                                             ; $4efa: $76
	inc  b                                           ; $4efb: $04
	and  b                                           ; $4efc: $a0
	ld   [bc], a                                     ; $4efd: $02
	ld   h, $75                                      ; $4efe: $26 $75
	ld   d, d                                        ; $4f00: $52
	ld   [hl], c                                     ; $4f01: $71
	ld   a, a                                        ; $4f02: $7f
	ld   d, d                                        ; $4f03: $52
	ld   [hl], l                                     ; $4f04: $75
	ld   h, a                                        ; $4f05: $67
	sbc  a                                           ; $4f06: $9f
	dec  c                                           ; $4f07: $0d
	nop                                              ; $4f08: $00
	ld   a, [bc]                                     ; $4f09: $0a
	inc  e                                           ; $4f0a: $1c
	ld   b, $01                                      ; $4f0b: $06 $01
	ld   bc, $401d                                   ; $4f0d: $01 $1d $40
	ld   d, $03                                      ; $4f10: $16 $03
	ld   d, $01                                      ; $4f12: $16 $01
	ld   [bc], a                                     ; $4f14: $02
	jr   z, jr_044_4f17                              ; $4f15: $28 $00

jr_044_4f17:
	ld   bc, $508c                                   ; $4f17: $01 $8c $50
	sbc  [hl]                                        ; $4f1a: $9e
	inc  bc                                          ; $4f1b: $03
	ld   l, c                                        ; $4f1c: $69
	inc  bc                                          ; $4f1d: $03
	inc  c                                           ; $4f1e: $0c
	ld   a, l                                        ; $4f1f: $7d
	ld   l, e                                        ; $4f20: $6b
	and  c                                           ; $4f21: $a1
	ld   a, b                                        ; $4f22: $78
	sub  b                                           ; $4f23: $90
	and  c                                           ; $4f24: $a1
	ld   h, e                                        ; $4f25: $63
	sbc  a                                           ; $4f26: $9f
	dec  c                                           ; $4f27: $0d
	ld   d, b                                        ; $4f28: $50
	and  c                                           ; $4f29: $a1
	adc  h                                           ; $4f2a: $8c
	db   $ec                                         ; $4f2b: $ec
	xor  [hl]                                        ; $4f2c: $ae
	adc  h                                           ; $4f2d: $8c
	ld   a, b                                        ; $4f2e: $78
	ld   d, d                                        ; $4f2f: $52
	ld   [hl], l                                     ; $4f30: $75
	dec  c                                           ; $4f31: $0d
	xor  l                                           ; $4f32: $ad
	push af                                          ; $4f33: $f5
	pop  de                                          ; $4f34: $d1
	xor  $96                                         ; $4f35: $ee $96
	ld   a, b                                        ; $4f37: $78
	sbc  a                                           ; $4f38: $9f
	dec  c                                           ; $4f39: $0d
	nop                                              ; $4f3a: $00
	ld   a, [bc]                                     ; $4f3b: $0a
	dec  c                                           ; $4f3c: $0d
	nop                                              ; $4f3d: $00
	nop                                              ; $4f3e: $00
	rrca                                             ; $4f3f: $0f
	nop                                              ; $4f40: $00
	ld   bc, $1e09                                   ; $4f41: $01 $09 $1e
	nop                                              ; $4f44: $00
	rrca                                             ; $4f45: $0f
	nop                                              ; $4f46: $00
	ld   bc, $8c01                                   ; $4f47: $01 $01 $8c
	ld   l, [hl]                                     ; $4f4a: $6e
	inc  b                                           ; $4f4b: $04
	ld   c, c                                        ; $4f4c: $49
	halt                                             ; $4f4d: $76
	sub  b                                           ; $4f4e: $90
	ld   [bc], a                                     ; $4f4f: $02
	sbc  l                                           ; $4f50: $9d
	ld   d, [hl]                                     ; $4f51: $56
	adc  h                                           ; $4f52: $8c
	ld   l, c                                        ; $4f53: $69
	and  c                                           ; $4f54: $a1
	sbc  a                                           ; $4f55: $9f
	dec  c                                           ; $4f56: $0d
	nop                                              ; $4f57: $00
	ld   a, [bc]                                     ; $4f58: $0a
	inc  e                                           ; $4f59: $1c
	ld   b, $00                                      ; $4f5a: $06 $00
	nop                                              ; $4f5c: $00
	ld   bc, $9e8c                                   ; $4f5d: $01 $8c $9e
	halt                                             ; $4f60: $76
	ld   [hl], c                                     ; $4f61: $71
	halt                                             ; $4f62: $76
	halt                                             ; $4f63: $76
	ld   a, b                                        ; $4f64: $78
	sbc  d                                           ; $4f65: $9a
	sbc  c                                           ; $4f66: $99
	dec  c                                           ; $4f67: $0d
	ld   h, c                                        ; $4f68: $61
	halt                                             ; $4f69: $76
	ld   l, [hl]                                     ; $4f6a: $6e
	ld   a, b                                        ; $4f6b: $78
	sbc  a                                           ; $4f6c: $9f
	dec  c                                           ; $4f6d: $0d
	nop                                              ; $4f6e: $00
	ld   a, [bc]                                     ; $4f6f: $0a
	dec  c                                           ; $4f70: $0d
	nop                                              ; $4f71: $00
	nop                                              ; $4f72: $00
	rrca                                             ; $4f73: $0f
	nop                                              ; $4f74: $00
	ld   bc, $1e09                                   ; $4f75: $01 $09 $1e
	nop                                              ; $4f78: $00
	rrca                                             ; $4f79: $0f
	nop                                              ; $4f7a: $00
	ld   bc, $0401                                   ; $4f7b: $01 $01 $04
	and  c                                           ; $4f7e: $a1
	inc  bc                                          ; $4f7f: $03
	add  d                                           ; $4f80: $82
	ld   a, [hl]                                     ; $4f81: $7e
	ld   e, c                                        ; $4f82: $59
	sbc  b                                           ; $4f83: $98
	ld   [hl], l                                     ; $4f84: $75
	dec  b                                           ; $4f85: $05
	inc  de                                          ; $4f86: $13
	ld   h, l                                        ; $4f87: $65
	ld   d, d                                        ; $4f88: $52
	ld   [hl], l                                     ; $4f89: $75
	ld   h, a                                        ; $4f8a: $67
	sbc  a                                           ; $4f8b: $9f
	dec  c                                           ; $4f8c: $0d
	nop                                              ; $4f8d: $00
	ld   a, [bc]                                     ; $4f8e: $0a
	inc  e                                           ; $4f8f: $1c
	ld   b, $02                                      ; $4f90: $06 $02
	ld   [bc], a                                     ; $4f92: $02
	dec  e                                           ; $4f93: $1d
	ld   b, b                                        ; $4f94: $40
	ld   d, $03                                      ; $4f95: $16 $03
	ld   d, $01                                      ; $4f97: $16 $01
	ld   [bc], a                                     ; $4f99: $02
	add  hl, hl                                      ; $4f9a: $29
	nop                                              ; $4f9b: $00
	ld   bc, $0358                                   ; $4f9c: $01 $58 $03
	ld   c, a                                        ; $4f9f: $4f
	rst  $38                                         ; $4fa0: $ff
	rst  $38                                         ; $4fa1: $ff
	inc  b                                           ; $4fa2: $04
	ld   c, c                                        ; $4fa3: $49
	ld   h, l                                        ; $4fa4: $65
	ld   a, c                                        ; $4fa5: $79
	dec  b                                           ; $4fa6: $05
	db   $10                                         ; $4fa7: $10
	ld   [hl], h                                     ; $4fa8: $74
	sbc  c                                           ; $4fa9: $99
	and  c                                           ; $4faa: $a1
	ld   l, [hl]                                     ; $4fab: $6e
	ld   sp, hl                                      ; $4fac: $f9
	dec  c                                           ; $4fad: $0d
	ld   d, h                                        ; $4fae: $54
	ld   e, c                                        ; $4faf: $59
	sbc  d                                           ; $4fb0: $9a
	sbc  c                                           ; $4fb1: $99
	ld   a, h                                        ; $4fb2: $7c
	sub  b                                           ; $4fb3: $90
	sbc  [hl]                                        ; $4fb4: $9e
	ld   l, l                                        ; $4fb5: $6d
	ld   d, d                                        ; $4fb6: $52
	ld   e, d                                        ; $4fb7: $5a
	ld   d, d                                        ; $4fb8: $52
	ld   a, c                                        ; $4fb9: $79
	dec  c                                           ; $4fba: $0d
	ld   h, l                                        ; $4fbb: $65
	sbc  e                                           ; $4fbc: $9b
	sub  [hl]                                        ; $4fbd: $96
	rst  $38                                         ; $4fbe: $ff
	rst  $38                                         ; $4fbf: $ff
	dec  c                                           ; $4fc0: $0d
	nop                                              ; $4fc1: $00
	ld   a, [bc]                                     ; $4fc2: $0a
	dec  c                                           ; $4fc3: $0d
	nop                                              ; $4fc4: $00
	nop                                              ; $4fc5: $00
	rrca                                             ; $4fc6: $0f
	nop                                              ; $4fc7: $00
	ld   bc, $1e09                                   ; $4fc8: $01 $09 $1e
	nop                                              ; $4fcb: $00
	inc  e                                           ; $4fcc: $1c
	ld   b, $01                                      ; $4fcd: $06 $01
	ld   bc, $9601                                   ; $4fcf: $01 $01 $96
	ld   d, h                                        ; $4fd2: $54
	sbc  [hl]                                        ; $4fd3: $9e
	ld   [$9f00], sp                                 ; $4fd4: $08 $00 $9f
	dec  c                                           ; $4fd7: $0d
	dec  b                                           ; $4fd8: $05
	ld   b, l                                        ; $4fd9: $45
	inc  b                                           ; $4fda: $04
	xor  d                                           ; $4fdb: $aa
	ld   a, l                                        ; $4fdc: $7d
	sbc  [hl]                                        ; $4fdd: $9e
	ld   h, e                                        ; $4fde: $63
	ld   d, d                                        ; $4fdf: $52
	ld   a, b                                        ; $4fe0: $78
	and  c                                           ; $4fe1: $a1
	ld   l, [hl]                                     ; $4fe2: $6e
	ld   [hl], c                                     ; $4fe3: $71
	ld   l, l                                        ; $4fe4: $6d
	ld   a, b                                        ; $4fe5: $78
	sbc  a                                           ; $4fe6: $9f
	dec  c                                           ; $4fe7: $0d
	nop                                              ; $4fe8: $00
	ld   a, [bc]                                     ; $4fe9: $0a
	rrca                                             ; $4fea: $0f
	nop                                              ; $4feb: $00
	ld   bc, $5801                                   ; $4fec: $01 $01 $58
	ld   a, l                                        ; $4fef: $7d
	sub  [hl]                                        ; $4ff0: $96
	ld   d, h                                        ; $4ff1: $54
	ld   h, d                                        ; $4ff2: $62
	ld   h, h                                        ; $4ff3: $64
	ld   d, d                                        ; $4ff4: $52
	adc  h                                           ; $4ff5: $8c
	ld   h, a                                        ; $4ff6: $67
	sbc  [hl]                                        ; $4ff7: $9e
	dec  c                                           ; $4ff8: $0d
	xor  h                                           ; $4ff9: $ac
	push af                                          ; $4ffa: $f5
	bit  4, e                                        ; $4ffb: $cb $63
	and  c                                           ; $4ffd: $a1
	sbc  a                                           ; $4ffe: $9f
	dec  c                                           ; $4fff: $0d
	nop                                              ; $5000: $00
	ld   a, [bc]                                     ; $5001: $0a
	rrca                                             ; $5002: $0f
	ld   b, $01                                      ; $5003: $06 $01
	ld   bc, $508c                                   ; $5005: $01 $8c $50
	sbc  [hl]                                        ; $5008: $9e
	ld   h, c                                        ; $5009: $61
	ld   h, c                                        ; $500a: $61
	ld   h, [hl]                                     ; $500b: $66
	sub  c                                           ; $500c: $91
	ld   d, d                                        ; $500d: $52
	sbc  e                                           ; $500e: $9b
	and  c                                           ; $500f: $a1
	ld   a, b                                        ; $5010: $78
	ld   [bc], a                                     ; $5011: $02
	jp   $0d5a                                       ; $5012: $c3 $5a $0d


	ld   d, b                                        ; $5015: $50
	sbc  c                                           ; $5016: $99
	ld   e, c                                        ; $5017: $59
	sub  a                                           ; $5018: $97
	sub  [hl]                                        ; $5019: $96
	sbc  a                                           ; $501a: $9f
	dec  c                                           ; $501b: $0d
	ld   d, b                                        ; $501c: $50
	and  c                                           ; $501d: $a1
	adc  h                                           ; $501e: $8c
	sbc  b                                           ; $501f: $98
	ld   [bc], a                                     ; $5020: $02
	and  c                                           ; $5021: $a1
	ld   a, c                                        ; $5022: $79
	ld   h, a                                        ; $5023: $67
	and  c                                           ; $5024: $a1
	ld   a, b                                        ; $5025: $78
	sub  [hl]                                        ; $5026: $96
	ld   a, b                                        ; $5027: $78
	sbc  a                                           ; $5028: $9f
	dec  c                                           ; $5029: $0d
	nop                                              ; $502a: $00
	ld   a, [bc]                                     ; $502b: $0a
	inc  e                                           ; $502c: $1c
	ld   b, $00                                      ; $502d: $06 $00
	nop                                              ; $502f: $00
	ld   bc, $546b                                   ; $5030: $01 $6b $54
	ld   d, d                                        ; $5033: $52
	sub  d                                           ; $5034: $92
	ld   c, a                                        ; $5035: $4f
	sbc  [hl]                                        ; $5036: $9e
	ld   [hl], a                                     ; $5037: $77
	ld   d, h                                        ; $5038: $54
	ld   l, [hl]                                     ; $5039: $6e
	ld   sp, hl                                      ; $503a: $f9
	dec  c                                           ; $503b: $0d
	inc  b                                           ; $503c: $04
	ld   [$8f02], sp                                 ; $503d: $08 $02 $8f
	ld   [bc], a                                     ; $5040: $02
	sub  b                                           ; $5041: $90
	ld   [bc], a                                     ; $5042: $02
	sub  c                                           ; $5043: $91
	inc  b                                           ; $5044: $04
	add  hl, bc                                      ; $5045: $09
	ld   a, c                                        ; $5046: $79
	inc  b                                           ; $5047: $04
	ld   b, l                                        ; $5048: $45
	ld   [hl], c                                     ; $5049: $71
	ld   [hl], h                                     ; $504a: $74
	sub  [hl]                                        ; $504b: $96
	sbc  a                                           ; $504c: $9f
	dec  c                                           ; $504d: $0d
	nop                                              ; $504e: $00
	ld   a, [bc]                                     ; $504f: $0a
	add  hl, de                                      ; $5050: $19
	dec  b                                           ; $5051: $05
	inc  bc                                          ; $5052: $03
	ld   [bc], a                                     ; $5053: $02
	pop  bc                                          ; $5054: $c1
	inc  b                                           ; $5055: $04
	rla                                              ; $5056: $17
	halt                                             ; $5057: $76
	inc  b                                           ; $5058: $04
	and  b                                           ; $5059: $a0

Jump_044_505a:
	ld   [bc], a                                     ; $505a: $02
	ld   h, $75                                      ; $505b: $26 $75
	ld   d, d                                        ; $505d: $52
	ld   [hl], c                                     ; $505e: $71
	ld   a, a                                        ; $505f: $7f
	ld   d, d                                        ; $5060: $52
	ld   [hl], l                                     ; $5061: $75
	ld   h, a                                        ; $5062: $67
	nop                                              ; $5063: $00
	nop                                              ; $5064: $00
	inc  bc                                          ; $5065: $03
	sub  h                                           ; $5066: $94
	ld   [bc], a                                     ; $5067: $02
	ld   hl, sp+$5a                                  ; $5068: $f8 $5a
	ld   a, b                                        ; $506a: $78
	ld   e, l                                        ; $506b: $5d
	ld   a, b                                        ; $506c: $78
	ld   [hl], c                                     ; $506d: $71
	ld   l, l                                        ; $506e: $6d
	nop                                              ; $506f: $00
	ld   bc, $a104                                   ; $5070: $01 $04 $a1
	inc  bc                                          ; $5073: $03
	add  d                                           ; $5074: $82
	ld   a, [hl]                                     ; $5075: $7e
	ld   e, c                                        ; $5076: $59
	sbc  b                                           ; $5077: $98
	ld   [hl], l                                     ; $5078: $75

Call_044_5079:
	dec  b                                           ; $5079: $05
	inc  de                                          ; $507a: $13
	ld   h, l                                        ; $507b: $65
	ld   d, d                                        ; $507c: $52
	ld   [hl], l                                     ; $507d: $75
	ld   h, a                                        ; $507e: $67
	nop                                              ; $507f: $00
	ld   [bc], a                                     ; $5080: $02
	rlca                                             ; $5081: $07
	ldh  a, [rSC]                                    ; $5082: $f0 $02
	ld   [bc], a                                     ; $5084: $02
	inc  bc                                          ; $5085: $03
	ld   bc, $2000                                   ; $5086: $01 $00 $20
	nop                                              ; $5089: $00
	rlca                                             ; $508a: $07
	ld   b, e                                        ; $508b: $43
	inc  bc                                          ; $508c: $03
	ld   [bc], a                                     ; $508d: $02
	inc  bc                                          ; $508e: $03
	ld   bc, $2001                                   ; $508f: $01 $01 $20
	nop                                              ; $5092: $00
	rlca                                             ; $5093: $07
	rst  $20                                         ; $5094: $e7
	inc  bc                                          ; $5095: $03
	ld   [bc], a                                     ; $5096: $02
	inc  bc                                          ; $5097: $03
	ld   bc, $2002                                   ; $5098: $01 $02 $20
	nop                                              ; $509b: $00
	ld   b, $a7                                      ; $509c: $06 $a7
	ld   [bc], a                                     ; $509e: $02
	inc  e                                           ; $509f: $1c
	ld   b, $02                                      ; $50a0: $06 $02
	ld   [bc], a                                     ; $50a2: $02
	dec  e                                           ; $50a3: $1d
	ld   b, b                                        ; $50a4: $40
	ld   d, $03                                      ; $50a5: $16 $03
	ld   d, $01                                      ; $50a7: $16 $01
	ld   bc, $0029                                   ; $50a9: $01 $29 $00
	ld   bc, $dc03                                   ; $50ac: $01 $03 $dc
	ld   d, [hl]                                     ; $50af: $56
	ld   l, l                                        ; $50b0: $6d
	ld   e, l                                        ; $50b1: $5d
	ld   a, b                                        ; $50b2: $78
	ld   d, d                                        ; $50b3: $52
	ld   a, h                                        ; $50b4: $7c
	ld   e, c                                        ; $50b5: $59
	sub  [hl]                                        ; $50b6: $96
	rst  $38                                         ; $50b7: $ff
	rst  $38                                         ; $50b8: $ff
	dec  c                                           ; $50b9: $0d
	nop                                              ; $50ba: $00
	dec  b                                           ; $50bb: $05
	ld   b, b                                        ; $50bc: $40
	ld   c, l                                        ; $50bd: $4d
	ld   [bc], a                                     ; $50be: $02
	nop                                              ; $50bf: $00
	nop                                              ; $50c0: $00
	ld   bc, $999d                                   ; $50c1: $01 $9d $99
	ld   e, c                                        ; $50c4: $59
	ld   [hl], c                                     ; $50c5: $71
	ld   l, l                                        ; $50c6: $6d
	ld   a, b                                        ; $50c7: $78
	sbc  [hl]                                        ; $50c8: $9e
	dec  c                                           ; $50c9: $0d
	nop                                              ; $50ca: $00
	dec  b                                           ; $50cb: $05
	ld   b, b                                        ; $50cc: $40
	ld   d, e                                        ; $50cd: $53
	ld   bc, $0001                                   ; $50ce: $01 $01 $00
	ld   bc, $f5d9                                   ; $50d1: $01 $d9 $f5
	ld   a, b                                        ; $50d4: $78
	ld   h, c                                        ; $50d5: $61
	halt                                             ; $50d6: $76
	ld   [bc], a                                     ; $50d7: $02
	jp   nz, Jump_044_7452                           ; $50d8: $c2 $52 $74

	sbc  a                                           ; $50db: $9f
	dec  c                                           ; $50dc: $0d
	nop                                              ; $50dd: $00
	ld   a, [bc]                                     ; $50de: $0a
	dec  c                                           ; $50df: $0d
	nop                                              ; $50e0: $00
	nop                                              ; $50e1: $00
	rrca                                             ; $50e2: $0f
	nop                                              ; $50e3: $00
	ld   bc, $1e09                                   ; $50e4: $01 $09 $1e
	nop                                              ; $50e7: $00
	rrca                                             ; $50e8: $0f
	nop                                              ; $50e9: $00
	ld   bc, $0201                                   ; $50ea: $01 $01 $02
	pop  bc                                          ; $50ed: $c1
	inc  b                                           ; $50ee: $04
	rla                                              ; $50ef: $17
	halt                                             ; $50f0: $76
	inc  b                                           ; $50f1: $04
	and  b                                           ; $50f2: $a0
	ld   [bc], a                                     ; $50f3: $02
	ld   h, $75                                      ; $50f4: $26 $75
	ld   d, d                                        ; $50f6: $52
	ld   [hl], c                                     ; $50f7: $71
	ld   a, a                                        ; $50f8: $7f
	ld   d, d                                        ; $50f9: $52
	ld   [hl], l                                     ; $50fa: $75
	ld   h, a                                        ; $50fb: $67
	sbc  a                                           ; $50fc: $9f
	dec  c                                           ; $50fd: $0d
	nop                                              ; $50fe: $00
	ld   a, [bc]                                     ; $50ff: $0a
	inc  e                                           ; $5100: $1c
	ld   b, $01                                      ; $5101: $06 $01
	ld   bc, $401d                                   ; $5103: $01 $1d $40
	ld   d, $03                                      ; $5106: $16 $03
	ld   d, $01                                      ; $5108: $16 $01
	ld   [bc], a                                     ; $510a: $02
	jr   z, jr_044_510d                              ; $510b: $28 $00

jr_044_510d:
	ld   bc, $508c                                   ; $510d: $01 $8c $50
	sbc  [hl]                                        ; $5110: $9e
	inc  bc                                          ; $5111: $03
	ld   l, c                                        ; $5112: $69
	inc  bc                                          ; $5113: $03
	inc  c                                           ; $5114: $0c
	ld   a, l                                        ; $5115: $7d
	ld   l, e                                        ; $5116: $6b
	and  c                                           ; $5117: $a1
	ld   a, b                                        ; $5118: $78
	sub  b                                           ; $5119: $90
	and  c                                           ; $511a: $a1
	ld   h, e                                        ; $511b: $63
	sbc  a                                           ; $511c: $9f
	dec  c                                           ; $511d: $0d
	ld   d, b                                        ; $511e: $50
	and  c                                           ; $511f: $a1
	adc  h                                           ; $5120: $8c
	db   $ec                                         ; $5121: $ec
	xor  [hl]                                        ; $5122: $ae
	adc  h                                           ; $5123: $8c
	ld   a, b                                        ; $5124: $78
	ld   d, d                                        ; $5125: $52
	ld   [hl], l                                     ; $5126: $75
	dec  c                                           ; $5127: $0d
	xor  l                                           ; $5128: $ad
	push af                                          ; $5129: $f5
	pop  de                                          ; $512a: $d1
	xor  $96                                         ; $512b: $ee $96
	ld   a, b                                        ; $512d: $78
	sbc  a                                           ; $512e: $9f
	dec  c                                           ; $512f: $0d
	nop                                              ; $5130: $00
	ld   a, [bc]                                     ; $5131: $0a
	dec  c                                           ; $5132: $0d
	nop                                              ; $5133: $00
	nop                                              ; $5134: $00
	rrca                                             ; $5135: $0f
	nop                                              ; $5136: $00
	ld   bc, $1e09                                   ; $5137: $01 $09 $1e
	nop                                              ; $513a: $00
	rrca                                             ; $513b: $0f
	nop                                              ; $513c: $00
	ld   bc, $0501                                   ; $513d: $01 $01 $05
	ld   b, l                                        ; $5140: $45
	inc  b                                           ; $5141: $04
	xor  d                                           ; $5142: $aa
	ld   a, h                                        ; $5143: $7c
	ld   h, c                                        ; $5144: $61
	halt                                             ; $5145: $76
	ld   [hl], l                                     ; $5146: $75
	sbc  [hl]                                        ; $5147: $9e
	ld   [bc], a                                     ; $5148: $02
	ei                                               ; $5149: $fb
	ld   e, a                                        ; $514a: $5f
	ld   [hl], h                                     ; $514b: $74
	ld   d, d                                        ; $514c: $52
	ld   e, l                                        ; $514d: $5d
	dec  c                                           ; $514e: $0d
	inc  bc                                          ; $514f: $03
	sub  h                                           ; $5150: $94
	ld   [bc], a                                     ; $5151: $02
	ld   hl, sp+$5a                                  ; $5152: $f8 $5a
	ld   a, b                                        ; $5154: $78
	ld   e, l                                        ; $5155: $5d
	ld   a, b                                        ; $5156: $78
	ld   [hl], c                                     ; $5157: $71
	ld   [hl], h                                     ; $5158: $74
	ld   e, e                                        ; $5159: $5b
	adc  h                                           ; $515a: $8c
	ld   h, l                                        ; $515b: $65
	ld   l, l                                        ; $515c: $6d
	rst  $38                                         ; $515d: $ff
	rst  $38                                         ; $515e: $ff
	dec  c                                           ; $515f: $0d
	nop                                              ; $5160: $00
	ld   a, [bc]                                     ; $5161: $0a
	inc  e                                           ; $5162: $1c
	ld   b, $05                                      ; $5163: $06 $05
	dec  b                                           ; $5165: $05
	ld   bc, $a178                                   ; $5166: $01 $78 $a1
	ld   l, [hl]                                     ; $5169: $6e
	sub  [hl]                                        ; $516a: $96
	sbc  [hl]                                        ; $516b: $9e
	ld   l, l                                        ; $516c: $6d
	ld   e, c                                        ; $516d: $59
	ld   e, d                                        ; $516e: $5a
	ld   b, $0d                                      ; $516f: $06 $0d
	inc  b                                           ; $5171: $04
	ld   e, [hl]                                     ; $5172: $5e
	ld   a, h                                        ; $5173: $7c
	dec  c                                           ; $5174: $0d
	ld   [de], a                                     ; $5175: $12
	ld   [bc], a                                     ; $5176: $02
	sub  e                                           ; $5177: $93
	sub  d                                           ; $5178: $92
	inc  de                                          ; $5179: $13
	ld   [bc], a                                     ; $517a: $02
	sub  e                                           ; $517b: $93
	ld   [hl], l                                     ; $517c: $75
	sbc  [hl]                                        ; $517d: $9e
	inc  bc                                          ; $517e: $03
	sub  h                                           ; $517f: $94
	ld   [bc], a                                     ; $5180: $02
	ld   hl, sp+$5a                                  ; $5181: $f8 $5a
	dec  c                                           ; $5183: $0d
	ld   a, b                                        ; $5184: $78
	ld   e, l                                        ; $5185: $5d
	ld   a, b                                        ; $5186: $78
	ld   [hl], c                                     ; $5187: $71
	ld   l, l                                        ; $5188: $6d
	ld   a, h                                        ; $5189: $7c
	ld   e, c                                        ; $518a: $59
	sub  [hl]                                        ; $518b: $96
	db   $fc                                         ; $518c: $fc
	sbc  a                                           ; $518d: $9f
	dec  c                                           ; $518e: $0d
	nop                                              ; $518f: $00
	ld   a, [bc]                                     ; $5190: $0a
	ld   bc, $a16b                                   ; $5191: $01 $6b $a1
	ld   a, b                                        ; $5194: $78

jr_044_5195:
	ld   h, c                                        ; $5195: $61
	halt                                             ; $5196: $76
	ld   h, [hl]                                     ; $5197: $66
	sub  c                                           ; $5198: $91
	sbc  [hl]                                        ; $5199: $9e
	ld   [bc], a                                     ; $519a: $02
	jr   nz, jr_044_5195                             ; $519b: $20 $f8

	ld   [bc], a                                     ; $519d: $02
	sbc  e                                           ; $519e: $9b
	dec  c                                           ; $519f: $0d
	sub  b                                           ; $51a0: $90
	ld   l, l                                        ; $51a1: $6d
	ld   a, e                                        ; $51a2: $7b
	ei                                               ; $51a3: $fb
	ld   l, h                                        ; $51a4: $6c
	sbc  a                                           ; $51a5: $9f
	dec  c                                           ; $51a6: $0d
	nop                                              ; $51a7: $00
	ld   a, [bc]                                     ; $51a8: $0a
	inc  e                                           ; $51a9: $1c
	ld   b, $00                                      ; $51aa: $06 $00
	nop                                              ; $51ac: $00
	ld   bc, $508c                                   ; $51ad: $01 $8c $50
	sbc  [hl]                                        ; $51b0: $9e
	and  e                                           ; $51b1: $a3
	xor  $6e                                         ; $51b2: $ee $6e
	ld   a, b                                        ; $51b4: $78
	sbc  a                                           ; $51b5: $9f
	dec  c                                           ; $51b6: $0d
	sub  b                                           ; $51b7: $90
	ld   d, h                                        ; $51b8: $54
	inc  bc                                          ; $51b9: $03
	ld   l, h                                        ; $51ba: $6c
	ld   h, l                                        ; $51bb: $65
	ld   e, d                                        ; $51bc: $5a
	and  c                                           ; $51bd: $a1
	ld   a, [hl]                                     ; $51be: $7e
	ld   [hl], c                                     ; $51bf: $71
	ld   [hl], h                                     ; $51c0: $74
	adc  l                                           ; $51c1: $8d
	ld   a, b                                        ; $51c2: $78
	sbc  a                                           ; $51c3: $9f
	dec  c                                           ; $51c4: $0d
	ld   e, e                                        ; $51c5: $5b
	ld   [hl], c                                     ; $51c6: $71
	halt                                             ; $51c7: $76
	sbc  [hl]                                        ; $51c8: $9e
	ld   d, d                                        ; $51c9: $52
	ld   d, d                                        ; $51ca: $52
	ld   h, c                                        ; $51cb: $61
	halt                                             ; $51cc: $76
	ld   d, b                                        ; $51cd: $50
	sbc  c                                           ; $51ce: $99
	ld   e, c                                        ; $51cf: $59
	sub  a                                           ; $51d0: $97
	sub  [hl]                                        ; $51d1: $96
	sbc  a                                           ; $51d2: $9f
	dec  c                                           ; $51d3: $0d
	nop                                              ; $51d4: $00
	ld   a, [bc]                                     ; $51d5: $0a
	dec  c                                           ; $51d6: $0d
	nop                                              ; $51d7: $00
	nop                                              ; $51d8: $00
	rrca                                             ; $51d9: $0f
	nop                                              ; $51da: $00
	ld   bc, $1e09                                   ; $51db: $01 $09 $1e
	nop                                              ; $51de: $00
	rrca                                             ; $51df: $0f
	nop                                              ; $51e0: $00
	ld   bc, $0401                                   ; $51e1: $01 $01 $04
	and  c                                           ; $51e4: $a1
	inc  bc                                          ; $51e5: $03
	add  d                                           ; $51e6: $82
	ld   a, [hl]                                     ; $51e7: $7e
	ld   e, c                                        ; $51e8: $59
	sbc  b                                           ; $51e9: $98
	ld   [hl], l                                     ; $51ea: $75
	dec  b                                           ; $51eb: $05
	inc  de                                          ; $51ec: $13
	ld   h, l                                        ; $51ed: $65
	ld   d, d                                        ; $51ee: $52
	ld   [hl], l                                     ; $51ef: $75
	ld   h, a                                        ; $51f0: $67
	sbc  a                                           ; $51f1: $9f
	dec  c                                           ; $51f2: $0d
	nop                                              ; $51f3: $00
	ld   a, [bc]                                     ; $51f4: $0a
	inc  e                                           ; $51f5: $1c
	ld   b, $02                                      ; $51f6: $06 $02
	ld   [bc], a                                     ; $51f8: $02
	dec  e                                           ; $51f9: $1d
	ld   b, b                                        ; $51fa: $40
	ld   d, $03                                      ; $51fb: $16 $03
	ld   d, $01                                      ; $51fd: $16 $01
	ld   [bc], a                                     ; $51ff: $02
	add  hl, hl                                      ; $5200: $29
	nop                                              ; $5201: $00
	ld   bc, $0358                                   ; $5202: $01 $58 $03
	ld   c, a                                        ; $5205: $4f
	rst  $38                                         ; $5206: $ff
	rst  $38                                         ; $5207: $ff
	inc  b                                           ; $5208: $04
	ld   c, c                                        ; $5209: $49
	ld   h, l                                        ; $520a: $65
	ld   a, c                                        ; $520b: $79
	dec  b                                           ; $520c: $05
	db   $10                                         ; $520d: $10
	ld   [hl], h                                     ; $520e: $74
	sbc  c                                           ; $520f: $99
	and  c                                           ; $5210: $a1
	ld   l, [hl]                                     ; $5211: $6e
	ld   sp, hl                                      ; $5212: $f9
	dec  c                                           ; $5213: $0d
	ld   d, h                                        ; $5214: $54
	ld   e, c                                        ; $5215: $59
	sbc  d                                           ; $5216: $9a
	sbc  c                                           ; $5217: $99
	ld   a, h                                        ; $5218: $7c
	sub  b                                           ; $5219: $90
	sbc  [hl]                                        ; $521a: $9e
	ld   l, l                                        ; $521b: $6d
	ld   d, d                                        ; $521c: $52
	ld   e, d                                        ; $521d: $5a
	ld   d, d                                        ; $521e: $52
	ld   a, c                                        ; $521f: $79
	dec  c                                           ; $5220: $0d
	ld   h, l                                        ; $5221: $65
	sbc  e                                           ; $5222: $9b
	sub  [hl]                                        ; $5223: $96
	rst  $38                                         ; $5224: $ff
	rst  $38                                         ; $5225: $ff
	dec  c                                           ; $5226: $0d
	nop                                              ; $5227: $00
	ld   a, [bc]                                     ; $5228: $0a
	dec  c                                           ; $5229: $0d
	nop                                              ; $522a: $00
	nop                                              ; $522b: $00
	rrca                                             ; $522c: $0f
	nop                                              ; $522d: $00
	ld   bc, $1e09                                   ; $522e: $01 $09 $1e
	nop                                              ; $5231: $00
	nop                                              ; $5232: $00
	rrca                                             ; $5233: $0f
	nop                                              ; $5234: $00
	ld   bc, $030d                                   ; $5235: $01 $0d $03
	nop                                              ; $5238: $00
	ld   [bc], a                                     ; $5239: $02
	rlca                                             ; $523a: $07
	ld   l, $02                                      ; $523b: $2e $02
	inc  b                                           ; $523d: $04
	add  b                                           ; $523e: $80
	jr   nc, jr_044_5242                             ; $523f: $30 $01

	rst  $38                                         ; $5241: $ff

jr_044_5242:
	jr   nz, jr_044_5246                             ; $5242: $20 $02

	nop                                              ; $5244: $00
	inc  bc                                          ; $5245: $03

jr_044_5246:
	ld   b, b                                        ; $5246: $40
	ld   bc, $2801                                   ; $5247: $01 $01 $28
	jr   nz, @+$1e                                   ; $524a: $20 $1c

	nop                                              ; $524c: $00
	ld   bc, $ecdf                                   ; $524d: $01 $df $ec
	and  e                                           ; $5250: $a3
	ld   h, e                                        ; $5251: $63
	and  c                                           ; $5252: $a1
	sbc  [hl]                                        ; $5253: $9e
	dec  c                                           ; $5254: $0d
	ld   e, b                                        ; $5255: $58
	ld   a, l                                        ; $5256: $7d
	sub  [hl]                                        ; $5257: $96
	ld   d, h                                        ; $5258: $54
	ld   h, d                                        ; $5259: $62
	ld   h, h                                        ; $525a: $64
	ld   d, d                                        ; $525b: $52
	adc  h                                           ; $525c: $8c
	ld   h, a                                        ; $525d: $67
	sbc  a                                           ; $525e: $9f
	dec  c                                           ; $525f: $0d
	nop                                              ; $5260: $00
	ld   a, [bc]                                     ; $5261: $0a
	inc  e                                           ; $5262: $1c
	inc  bc                                          ; $5263: $03
	inc  bc                                          ; $5264: $03
	inc  bc                                          ; $5265: $03
	ld   bc, $7d58                                   ; $5266: $01 $58 $7d
	sub  [hl]                                        ; $5269: $96
	ld   d, h                                        ; $526a: $54
	sbc  a                                           ; $526b: $9f
	dec  c                                           ; $526c: $0d
	ld   [$5d00], sp                                 ; $526d: $08 $00 $5d
	and  c                                           ; $5270: $a1
	sbc  a                                           ; $5271: $9f
	dec  c                                           ; $5272: $0d
	nop                                              ; $5273: $00
	ld   a, [bc]                                     ; $5274: $0a
	ld   bc, $9802                                   ; $5275: $01 $02 $98
	inc  bc                                          ; $5278: $03
	nop                                              ; $5279: $00
	ld   a, c                                        ; $527a: $79
	inc  b                                           ; $527b: $04
	dec  c                                           ; $527c: $0d
	ld   [bc], a                                     ; $527d: $02
	sub  [hl]                                        ; $527e: $96
	inc  b                                           ; $527f: $04
	ld   b, l                                        ; $5280: $45
	inc  b                                           ; $5281: $04
	ld   a, [bc]                                     ; $5282: $0a
	ld   h, l                                        ; $5283: $65
	ld   [hl], h                                     ; $5284: $74
	ld   a, h                                        ; $5285: $7c
	ld   [bc], a                                     ; $5286: $02
	scf                                              ; $5287: $37
	inc  bc                                          ; $5288: $03
	ld   a, [de]                                     ; $5289: $1a
	dec  c                                           ; $528a: $0d
	and  b                                           ; $528b: $a0
	ld   [bc], a                                     ; $528c: $02
	jp   nz, Jump_044_6959                           ; $528d: $c2 $59 $69

	ld   [hl], h                                     ; $5290: $74
	ld   e, l                                        ; $5291: $5d
	sbc  d                                           ; $5292: $9a
	ld   a, b                                        ; $5293: $78
	ld   d, d                                        ; $5294: $52
	ld   e, c                                        ; $5295: $59
	ld   h, l                                        ; $5296: $65
	sub  a                                           ; $5297: $97
	sbc  a                                           ; $5298: $9f
	dec  c                                           ; $5299: $0d
	nop                                              ; $529a: $00
	ld   a, [bc]                                     ; $529b: $0a
	add  hl, de                                      ; $529c: $19
	dec  b                                           ; $529d: $05
	inc  bc                                          ; $529e: $03
	ld   [bc], a                                     ; $529f: $02
	pop  bc                                          ; $52a0: $c1
	inc  b                                           ; $52a1: $04
	rla                                              ; $52a2: $17
	halt                                             ; $52a3: $76
	inc  b                                           ; $52a4: $04
	and  b                                           ; $52a5: $a0
	ld   [bc], a                                     ; $52a6: $02
	ld   h, $75                                      ; $52a7: $26 $75
	ld   d, d                                        ; $52a9: $52
	ld   [hl], c                                     ; $52aa: $71
	ld   a, a                                        ; $52ab: $7f
	ld   d, d                                        ; $52ac: $52
	ld   [hl], l                                     ; $52ad: $75
	ld   h, a                                        ; $52ae: $67
	nop                                              ; $52af: $00
	nop                                              ; $52b0: $00
	adc  h                                           ; $52b1: $8c
	ld   l, [hl]                                     ; $52b2: $6e
	ld   a, b                                        ; $52b3: $78
	and  c                                           ; $52b4: $a1
	halt                                             ; $52b5: $76
	sub  b                                           ; $52b6: $90
	rst  $38                                         ; $52b7: $ff
	rst  $38                                         ; $52b8: $ff
	nop                                              ; $52b9: $00
	ld   bc, $a104                                   ; $52ba: $01 $04 $a1
	inc  bc                                          ; $52bd: $03
	add  d                                           ; $52be: $82
	ld   a, [hl]                                     ; $52bf: $7e
	ld   e, c                                        ; $52c0: $59
	sbc  b                                           ; $52c1: $98
	ld   [hl], l                                     ; $52c2: $75
	xor  h                                           ; $52c3: $ac
	push af                                          ; $52c4: $f5
	or   e                                           ; $52c5: $b3
	xor  [hl]                                        ; $52c6: $ae
	ld   [hl], l                                     ; $52c7: $75
	ld   h, a                                        ; $52c8: $67
	nop                                              ; $52c9: $00
	ld   [bc], a                                     ; $52ca: $02
	rlca                                             ; $52cb: $07
	or   [hl]                                        ; $52cc: $b6
	nop                                              ; $52cd: $00
	ld   [bc], a                                     ; $52ce: $02
	inc  bc                                          ; $52cf: $03
	ld   bc, $2000                                   ; $52d0: $01 $00 $20
	nop                                              ; $52d3: $00
	rlca                                             ; $52d4: $07
	ld   e, $01                                      ; $52d5: $1e $01
	ld   [bc], a                                     ; $52d7: $02
	inc  bc                                          ; $52d8: $03
	ld   bc, $2001                                   ; $52d9: $01 $01 $20
	nop                                              ; $52dc: $00
	rlca                                             ; $52dd: $07
	ld   [hl], h                                     ; $52de: $74
	ld   bc, $0302                                   ; $52df: $01 $02 $03
	ld   bc, $2002                                   ; $52e2: $01 $02 $20
	nop                                              ; $52e5: $00
	ld   b, $ce                                      ; $52e6: $06 $ce
	ld   bc, $000f                                   ; $52e8: $01 $0f $00
	ld   bc, $0201                                   ; $52eb: $01 $01 $02
	pop  bc                                          ; $52ee: $c1
	inc  b                                           ; $52ef: $04
	rla                                              ; $52f0: $17
	halt                                             ; $52f1: $76
	inc  b                                           ; $52f2: $04
	and  b                                           ; $52f3: $a0
	ld   [bc], a                                     ; $52f4: $02
	ld   h, $75                                      ; $52f5: $26 $75
	ld   d, d                                        ; $52f7: $52
	ld   [hl], c                                     ; $52f8: $71
	ld   a, a                                        ; $52f9: $7f
	ld   d, d                                        ; $52fa: $52
	ld   [hl], l                                     ; $52fb: $75
	ld   h, a                                        ; $52fc: $67
	sbc  a                                           ; $52fd: $9f
	dec  c                                           ; $52fe: $0d
	nop                                              ; $52ff: $00
	ld   a, [bc]                                     ; $5300: $0a
	inc  e                                           ; $5301: $1c
	inc  bc                                          ; $5302: $03
	inc  bc                                          ; $5303: $03
	inc  bc                                          ; $5304: $03
	dec  e                                           ; $5305: $1d
	ld   b, b                                        ; $5306: $40
	inc  de                                          ; $5307: $13
	inc  bc                                          ; $5308: $03
	inc  de                                          ; $5309: $13
	ld   bc, $2802                                   ; $530a: $01 $02 $28
	nop                                              ; $530d: $00
	ld   bc, $d6d6                                   ; $530e: $01 $d6 $d6
	rst  $38                                         ; $5311: $ff
	rst  $38                                         ; $5312: $ff
	inc  bc                                          ; $5313: $03
	ld   c, d                                        ; $5314: $4a
	inc  bc                                          ; $5315: $03
	jp   c, $9f7b                                    ; $5316: $da $7b $9f

	dec  c                                           ; $5319: $0d
	ld   [hl], l                                     ; $531a: $75
	sub  b                                           ; $531b: $90
	sbc  [hl]                                        ; $531c: $9e
	inc  bc                                          ; $531d: $03
	xor  c                                           ; $531e: $a9
	ld   [hl], l                                     ; $531f: $75
	sub  b                                           ; $5320: $90
	ld   a, l                                        ; $5321: $7d
	ld   h, [hl]                                     ; $5322: $66
	adc  a                                           ; $5323: $8f
	ld   a, l                                        ; $5324: $7d
	dec  c                                           ; $5325: $0d
	ld   l, e                                        ; $5326: $6b
	ld   d, h                                        ; $5327: $54
	ld   a, b                                        ; $5328: $78
	ld   a, h                                        ; $5329: $7c
	sub  [hl]                                        ; $532a: $96
	sbc  a                                           ; $532b: $9f
	dec  c                                           ; $532c: $0d
	nop                                              ; $532d: $00
	ld   a, [bc]                                     ; $532e: $0a
	ld   bc, $9166                                   ; $532f: $01 $66 $91
	sbc  [hl]                                        ; $5332: $9e
	ld   [bc], a                                     ; $5333: $02
	and  l                                           ; $5334: $a5
	inc  b                                           ; $5335: $04
	xor  d                                           ; $5336: $aa
	sub  b                                           ; $5337: $90
	ld   [bc], a                                     ; $5338: $02
	jr   nz, jr_044_533f                             ; $5339: $20 $04

	xor  d                                           ; $533b: $aa
	dec  c                                           ; $533c: $0d
	ld   e, d                                        ; $533d: $5a
	and  c                                           ; $533e: $a1

jr_044_533f:
	ld   a, [hl]                                     ; $533f: $7e
	sbc  b                                           ; $5340: $98
	ld   a, b                                        ; $5341: $78
	ld   h, e                                        ; $5342: $63
	ld   d, d                                        ; $5343: $52
	sbc  a                                           ; $5344: $9f
	dec  c                                           ; $5345: $0d
	nop                                              ; $5346: $00
	ld   a, [bc]                                     ; $5347: $0a
	dec  c                                           ; $5348: $0d
	nop                                              ; $5349: $00
	nop                                              ; $534a: $00
	rrca                                             ; $534b: $0f
	nop                                              ; $534c: $00
	ld   bc, $1e09                                   ; $534d: $01 $09 $1e
	nop                                              ; $5350: $00
	rrca                                             ; $5351: $0f
	nop                                              ; $5352: $00
	ld   bc, $8c01                                   ; $5353: $01 $01 $8c
	ld   l, [hl]                                     ; $5356: $6e
	ld   a, b                                        ; $5357: $78
	and  c                                           ; $5358: $a1
	halt                                             ; $5359: $76
	sub  b                                           ; $535a: $90
	rst  $38                                         ; $535b: $ff
	rst  $38                                         ; $535c: $ff
	dec  c                                           ; $535d: $0d
	nop                                              ; $535e: $00
	ld   a, [bc]                                     ; $535f: $0a
	inc  e                                           ; $5360: $1c
	inc  bc                                          ; $5361: $03
	nop                                              ; $5362: $00
	nop                                              ; $5363: $00
	ld   bc, $546b                                   ; $5364: $01 $6b $54
	ld   a, e                                        ; $5367: $7b
	sbc  a                                           ; $5368: $9f
	dec  c                                           ; $5369: $0d
	ld   [hl], l                                     ; $536a: $75
	sub  b                                           ; $536b: $90
	sbc  [hl]                                        ; $536c: $9e
	sub  b                                           ; $536d: $90
	ld   d, h                                        ; $536e: $54
	inc  bc                                          ; $536f: $03
	ld   l, h                                        ; $5370: $6c
	ld   h, l                                        ; $5371: $65
	ld   l, l                                        ; $5372: $6d
	ld   [hl], h                                     ; $5373: $74
	ld   a, [hl]                                     ; $5374: $7e
	dec  c                                           ; $5375: $0d
	ld   a, b                                        ; $5376: $78
	sbc  d                                           ; $5377: $9a
	ld   [hl], h                                     ; $5378: $74
	ld   e, l                                        ; $5379: $5d
	sbc  c                                           ; $537a: $99
	halt                                             ; $537b: $76
	dec  b                                           ; $537c: $05
	pop  de                                          ; $537d: $d1
	ld   d, h                                        ; $537e: $54
	sbc  l                                           ; $537f: $9d
	rst  $38                                         ; $5380: $ff
	rst  $38                                         ; $5381: $ff
	dec  c                                           ; $5382: $0d
	nop                                              ; $5383: $00
	ld   a, [bc]                                     ; $5384: $0a
	ld   bc, $9166                                   ; $5385: $01 $66 $91
	sbc  [hl]                                        ; $5388: $9e
	ld   [bc], a                                     ; $5389: $02
	and  l                                           ; $538a: $a5
	inc  b                                           ; $538b: $04
	xor  d                                           ; $538c: $aa
	sub  b                                           ; $538d: $90
	ld   [bc], a                                     ; $538e: $02
	jr   nz, jr_044_5395                             ; $538f: $20 $04

	xor  d                                           ; $5391: $aa
	dec  c                                           ; $5392: $0d
	ld   e, d                                        ; $5393: $5a
	and  c                                           ; $5394: $a1

jr_044_5395:
	ld   a, [hl]                                     ; $5395: $7e
	sbc  b                                           ; $5396: $98
	ld   a, b                                        ; $5397: $78
	ld   h, e                                        ; $5398: $63
	ld   d, d                                        ; $5399: $52
	sbc  a                                           ; $539a: $9f
	dec  c                                           ; $539b: $0d
	nop                                              ; $539c: $00
	ld   a, [bc]                                     ; $539d: $0a
	dec  c                                           ; $539e: $0d
	nop                                              ; $539f: $00
	nop                                              ; $53a0: $00
	rrca                                             ; $53a1: $0f
	nop                                              ; $53a2: $00
	ld   bc, $1e09                                   ; $53a3: $01 $09 $1e
	nop                                              ; $53a6: $00
	rrca                                             ; $53a7: $0f
	nop                                              ; $53a8: $00
	ld   bc, $0401                                   ; $53a9: $01 $01 $04
	and  c                                           ; $53ac: $a1
	inc  bc                                          ; $53ad: $03
	add  d                                           ; $53ae: $82
	ld   a, [hl]                                     ; $53af: $7e
	ld   e, c                                        ; $53b0: $59
	sbc  b                                           ; $53b1: $98
	ld   [hl], l                                     ; $53b2: $75
	xor  h                                           ; $53b3: $ac
	push af                                          ; $53b4: $f5
	or   e                                           ; $53b5: $b3
	xor  [hl]                                        ; $53b6: $ae
	ld   [hl], l                                     ; $53b7: $75
	ld   h, a                                        ; $53b8: $67
	sbc  a                                           ; $53b9: $9f
	dec  c                                           ; $53ba: $0d
	nop                                              ; $53bb: $00
	ld   a, [bc]                                     ; $53bc: $0a
	inc  e                                           ; $53bd: $1c
	inc  bc                                          ; $53be: $03
	ld   [bc], a                                     ; $53bf: $02
	ld   [bc], a                                     ; $53c0: $02
	dec  e                                           ; $53c1: $1d
	ld   b, b                                        ; $53c2: $40
	inc  de                                          ; $53c3: $13
	inc  bc                                          ; $53c4: $03
	inc  de                                          ; $53c5: $13
	ld   bc, $2902                                   ; $53c6: $01 $02 $29
	nop                                              ; $53c9: $00
	ld   bc, $f204                                   ; $53ca: $01 $04 $f2
	add  c                                           ; $53cd: $81
	ld   h, [hl]                                     ; $53ce: $66
	sub  c                                           ; $53cf: $91
	ld   a, b                                        ; $53d0: $78
	ld   d, d                                        ; $53d1: $52
	ld   a, h                                        ; $53d2: $7c
	sub  [hl]                                        ; $53d3: $96
	ld   sp, hl                                      ; $53d4: $f9
	dec  c                                           ; $53d5: $0d
	ld   d, h                                        ; $53d6: $54
	sbc  l                                           ; $53d7: $9d
	ld   [hl], d                                     ; $53d8: $72
	ld   d, d                                        ; $53d9: $52
	ld   l, l                                        ; $53da: $6d
	inc  bc                                          ; $53db: $03
	ld   [hl], l                                     ; $53dc: $75
	ld   [hl], l                                     ; $53dd: $75
	ld   d, d                                        ; $53de: $52
	sbc  c                                           ; $53df: $99
	halt                                             ; $53e0: $76
	dec  c                                           ; $53e1: $0d
	inc  b                                           ; $53e2: $04
	ld   c, $b2                                      ; $53e3: $0e $b2
	xor  l                                           ; $53e5: $ad
	ld   h, a                                        ; $53e6: $67
	sbc  c                                           ; $53e7: $99
	sbc  l                                           ; $53e8: $9d
	sub  [hl]                                        ; $53e9: $96
	sbc  a                                           ; $53ea: $9f
	dec  c                                           ; $53eb: $0d
	nop                                              ; $53ec: $00
	ld   a, [bc]                                     ; $53ed: $0a
	ld   bc, $718c                                   ; $53ee: $01 $8c $71
	ld   l, l                                        ; $53f1: $6d
	ld   e, l                                        ; $53f2: $5d
	rst  $38                                         ; $53f3: $ff
	rst  $38                                         ; $53f4: $ff
	dec  c                                           ; $53f5: $0d
	nop                                              ; $53f6: $00
	ld   a, [bc]                                     ; $53f7: $0a
	dec  c                                           ; $53f8: $0d
	nop                                              ; $53f9: $00
	nop                                              ; $53fa: $00
	rrca                                             ; $53fb: $0f
	nop                                              ; $53fc: $00
	ld   bc, $1e09                                   ; $53fd: $01 $09 $1e
	nop                                              ; $5400: $00
	inc  e                                           ; $5401: $1c
	inc  bc                                          ; $5402: $03
	ld   [bc], a                                     ; $5403: $02
	ld   [bc], a                                     ; $5404: $02
	dec  e                                           ; $5405: $1d
	ld   b, b                                        ; $5406: $40
	inc  de                                          ; $5407: $13
	inc  bc                                          ; $5408: $03
	inc  de                                          ; $5409: $13
	ld   bc, $2903                                   ; $540a: $01 $03 $29
	nop                                              ; $540d: $00
	ld   bc, $8c6e                                   ; $540e: $01 $6e $8c
	ld   [hl], c                                     ; $5411: $71
	ld   [hl], h                                     ; $5412: $74
	ld   d, d                                        ; $5413: $52
	ld   [hl], h                                     ; $5414: $74
	ld   a, l                                        ; $5415: $7d
	sbc  l                                           ; $5416: $9d
	ld   e, c                                        ; $5417: $59
	sub  a                                           ; $5418: $97
	ld   a, b                                        ; $5419: $78
	ld   d, d                                        ; $541a: $52
	sbc  l                                           ; $541b: $9d
	sbc  a                                           ; $541c: $9f
	dec  c                                           ; $541d: $0d
	ld   [bc], a                                     ; $541e: $02
	db   $d3                                         ; $541f: $d3
	inc  b                                           ; $5420: $04
	ld   h, $65                                      ; $5421: $26 $65
	ld   [hl], h                                     ; $5423: $74
	ld   d, d                                        ; $5424: $52
	sbc  c                                           ; $5425: $99
	ld   a, h                                        ; $5426: $7c
	ld   a, l                                        ; $5427: $7d
	sbc  l                                           ; $5428: $9d
	ld   e, c                                        ; $5429: $59
	sbc  c                                           ; $542a: $99
	ld   e, a                                        ; $542b: $5f
	ld   [hl], a                                     ; $542c: $77
	dec  c                                           ; $542d: $0d
	ld   [bc], a                                     ; $542e: $02
	rst  $38                                         ; $542f: $ff
	ld   e, a                                        ; $5430: $5f
	inc  bc                                          ; $5431: $03
	call c, Call_044_7d56                            ; $5432: $dc $56 $7d
	ld   e, e                                        ; $5435: $5b
	ld   l, a                                        ; $5436: $6f
	and  c                                           ; $5437: $a1
	halt                                             ; $5438: $76
	ld   a, b                                        ; $5439: $78
	ld   h, e                                        ; $543a: $63
	ld   d, d                                        ; $543b: $52
	sbc  a                                           ; $543c: $9f
	dec  c                                           ; $543d: $0d
	nop                                              ; $543e: $00
	ld   a, [bc]                                     ; $543f: $0a
	inc  e                                           ; $5440: $1c
	inc  bc                                          ; $5441: $03
	nop                                              ; $5442: $00
	nop                                              ; $5443: $00
	ld   bc, $0b02                                   ; $5444: $01 $02 $0b
	ld   [bc], a                                     ; $5447: $02
	xor  d                                           ; $5448: $aa
	sbc  [hl]                                        ; $5449: $9e
	ld   [bc], a                                     ; $544a: $02
	and  c                                           ; $544b: $a1
	and  b                                           ; $544c: $a0
	ld   [hl], d                                     ; $544d: $72
	ld   e, a                                        ; $544e: $5f
	sbc  c                                           ; $544f: $99
	sub  [hl]                                        ; $5450: $96
	ld   d, h                                        ; $5451: $54
	ld   a, c                                        ; $5452: $79
	ld   a, e                                        ; $5453: $7b
	sbc  a                                           ; $5454: $9f
	dec  c                                           ; $5455: $0d
	nop                                              ; $5456: $00
	ld   a, [bc]                                     ; $5457: $0a
	dec  c                                           ; $5458: $0d
	nop                                              ; $5459: $00
	nop                                              ; $545a: $00
	rrca                                             ; $545b: $0f
	nop                                              ; $545c: $00
	ld   bc, $1e09                                   ; $545d: $01 $09 $1e
	nop                                              ; $5460: $00

Jump_044_5461:
	ld   bc, $ecdf                                   ; $5461: $01 $df $ec
	and  e                                           ; $5464: $a3
	ld   h, e                                        ; $5465: $63
	and  c                                           ; $5466: $a1
	sbc  [hl]                                        ; $5467: $9e
	dec  c                                           ; $5468: $0d
	ld   e, b                                        ; $5469: $58
	ld   a, l                                        ; $546a: $7d
	sub  [hl]                                        ; $546b: $96
	ld   d, h                                        ; $546c: $54
	ld   h, d                                        ; $546d: $62
	ld   h, h                                        ; $546e: $64
	ld   d, d                                        ; $546f: $52
	adc  h                                           ; $5470: $8c
	ld   h, a                                        ; $5471: $67
	sbc  a                                           ; $5472: $9f
	dec  c                                           ; $5473: $0d
	nop                                              ; $5474: $00
	ld   a, [bc]                                     ; $5475: $0a
	inc  e                                           ; $5476: $1c
	inc  bc                                          ; $5477: $03
	inc  bc                                          ; $5478: $03
	inc  bc                                          ; $5479: $03
	ld   bc, $7d58                                   ; $547a: $01 $58 $7d
	sub  [hl]                                        ; $547d: $96
	ld   d, h                                        ; $547e: $54
	sbc  a                                           ; $547f: $9f
	dec  c                                           ; $5480: $0d
	ld   [$5d00], sp                                 ; $5481: $08 $00 $5d
	and  c                                           ; $5484: $a1
	sbc  a                                           ; $5485: $9f
	dec  c                                           ; $5486: $0d
	dec  b                                           ; $5487: $05
	ld   b, l                                        ; $5488: $45
	inc  b                                           ; $5489: $04
	xor  d                                           ; $548a: $aa
	ld   a, l                                        ; $548b: $7d
	inc  b                                           ; $548c: $04
	ld   c, $04                                      ; $548d: $0e $04
	adc  h                                           ; $548f: $8c
	ld   l, [hl]                                     ; $5490: $6e
	ld   [hl], c                                     ; $5491: $71
	ld   l, l                                        ; $5492: $6d
	sub  [hl]                                        ; $5493: $96
	ld   d, h                                        ; $5494: $54
	ld   a, e                                        ; $5495: $7b
	sbc  a                                           ; $5496: $9f
	dec  c                                           ; $5497: $0d
	nop                                              ; $5498: $00
	ld   a, [bc]                                     ; $5499: $0a
	ld   bc, $6176                                   ; $549a: $01 $76 $61
	sbc  e                                           ; $549d: $9b
	ld   [hl], l                                     ; $549e: $75
	sbc  [hl]                                        ; $549f: $9e
	ld   [hl], a                                     ; $54a0: $77
	ld   d, h                                        ; $54a1: $54
	ld   e, c                                        ; $54a2: $59
	ld   h, l                                        ; $54a3: $65
	sub  a                                           ; $54a4: $97
	dec  c                                           ; $54a5: $0d
	ld   [bc], a                                     ; $54a6: $02
	sbc  b                                           ; $54a7: $98
	inc  bc                                          ; $54a8: $03
	nop                                              ; $54a9: $00
	ld   a, c                                        ; $54aa: $79
	inc  b                                           ; $54ab: $04
	dec  c                                           ; $54ac: $0d
	ld   [bc], a                                     ; $54ad: $02
	sub  [hl]                                        ; $54ae: $96
	inc  b                                           ; $54af: $04
	ld   b, l                                        ; $54b0: $45
	inc  b                                           ; $54b1: $04
	ld   a, [bc]                                     ; $54b2: $0a
	ld   h, l                                        ; $54b3: $65
	ld   [hl], h                                     ; $54b4: $74
	ld   a, h                                        ; $54b5: $7c
	ld   [bc], a                                     ; $54b6: $02
	scf                                              ; $54b7: $37
	inc  bc                                          ; $54b8: $03
	ld   a, [de]                                     ; $54b9: $1a
	dec  c                                           ; $54ba: $0d
	and  b                                           ; $54bb: $a0
	ld   [bc], a                                     ; $54bc: $02
	jp   nz, Jump_044_6959                           ; $54bd: $c2 $59 $69

	ld   [hl], h                                     ; $54c0: $74
	ld   e, l                                        ; $54c1: $5d
	sbc  d                                           ; $54c2: $9a
	ld   a, b                                        ; $54c3: $78
	ld   d, d                                        ; $54c4: $52
	ld   sp, hl                                      ; $54c5: $f9
	dec  c                                           ; $54c6: $0d
	nop                                              ; $54c7: $00
	ld   a, [bc]                                     ; $54c8: $0a
	add  hl, de                                      ; $54c9: $19
	dec  b                                           ; $54ca: $05
	inc  bc                                          ; $54cb: $03
	ld   [bc], a                                     ; $54cc: $02
	pop  bc                                          ; $54cd: $c1
	inc  b                                           ; $54ce: $04
	rla                                              ; $54cf: $17
	halt                                             ; $54d0: $76
	inc  b                                           ; $54d1: $04
	and  b                                           ; $54d2: $a0
	ld   [bc], a                                     ; $54d3: $02
	ld   h, $75                                      ; $54d4: $26 $75
	ld   d, d                                        ; $54d6: $52
	ld   [hl], c                                     ; $54d7: $71
	ld   a, a                                        ; $54d8: $7f
	ld   d, d                                        ; $54d9: $52
	ld   [hl], l                                     ; $54da: $75
	ld   h, a                                        ; $54db: $67
	nop                                              ; $54dc: $00
	nop                                              ; $54dd: $00
	inc  bc                                          ; $54de: $03
	sub  h                                           ; $54df: $94
	ld   [bc], a                                     ; $54e0: $02
	ld   hl, sp+$5a                                  ; $54e1: $f8 $5a
	ld   a, b                                        ; $54e3: $78
	ld   e, l                                        ; $54e4: $5d
	ld   a, b                                        ; $54e5: $78
	ld   [hl], c                                     ; $54e6: $71
	ld   l, l                                        ; $54e7: $6d
	nop                                              ; $54e8: $00
	ld   bc, $a104                                   ; $54e9: $01 $04 $a1
	inc  bc                                          ; $54ec: $03
	add  d                                           ; $54ed: $82
	ld   a, [hl]                                     ; $54ee: $7e
	ld   e, c                                        ; $54ef: $59
	sbc  b                                           ; $54f0: $98
	ld   [hl], l                                     ; $54f1: $75
	xor  h                                           ; $54f2: $ac
	push af                                          ; $54f3: $f5
	or   e                                           ; $54f4: $b3
	xor  [hl]                                        ; $54f5: $ae
	ld   [hl], l                                     ; $54f6: $75
	ld   h, a                                        ; $54f7: $67
	nop                                              ; $54f8: $00
	ld   [bc], a                                     ; $54f9: $02
	rlca                                             ; $54fa: $07
	push hl                                          ; $54fb: $e5
	ld   [bc], a                                     ; $54fc: $02
	ld   [bc], a                                     ; $54fd: $02
	inc  bc                                          ; $54fe: $03
	ld   bc, $2000                                   ; $54ff: $01 $00 $20
	nop                                              ; $5502: $00
	rlca                                             ; $5503: $07
	ld   c, l                                        ; $5504: $4d
	inc  bc                                          ; $5505: $03
	ld   [bc], a                                     ; $5506: $02
	inc  bc                                          ; $5507: $03
	ld   bc, $2001                                   ; $5508: $01 $01 $20
	nop                                              ; $550b: $00
	rlca                                             ; $550c: $07
	call z, $0203                                    ; $550d: $cc $03 $02
	inc  bc                                          ; $5510: $03
	ld   bc, $2002                                   ; $5511: $01 $02 $20
	nop                                              ; $5514: $00
	ld   b, $26                                      ; $5515: $06 $26
	inc  b                                           ; $5517: $04
	rrca                                             ; $5518: $0f
	nop                                              ; $5519: $00
	ld   bc, $0201                                   ; $551a: $01 $01 $02
	pop  bc                                          ; $551d: $c1
	inc  b                                           ; $551e: $04
	rla                                              ; $551f: $17
	halt                                             ; $5520: $76
	inc  b                                           ; $5521: $04
	and  b                                           ; $5522: $a0
	ld   [bc], a                                     ; $5523: $02
	ld   h, $75                                      ; $5524: $26 $75
	ld   d, d                                        ; $5526: $52
	ld   [hl], c                                     ; $5527: $71
	ld   a, a                                        ; $5528: $7f
	ld   d, d                                        ; $5529: $52
	ld   [hl], l                                     ; $552a: $75
	ld   h, a                                        ; $552b: $67
	sbc  a                                           ; $552c: $9f
	dec  c                                           ; $552d: $0d
	nop                                              ; $552e: $00
	ld   a, [bc]                                     ; $552f: $0a
	inc  e                                           ; $5530: $1c
	inc  bc                                          ; $5531: $03
	inc  bc                                          ; $5532: $03
	inc  bc                                          ; $5533: $03
	dec  e                                           ; $5534: $1d
	ld   b, b                                        ; $5535: $40
	inc  de                                          ; $5536: $13
	inc  bc                                          ; $5537: $03
	inc  de                                          ; $5538: $13
	ld   bc, $2802                                   ; $5539: $01 $02 $28
	nop                                              ; $553c: $00
	ld   bc, $d6d6                                   ; $553d: $01 $d6 $d6
	rst  $38                                         ; $5540: $ff
	rst  $38                                         ; $5541: $ff
	inc  bc                                          ; $5542: $03
	ld   c, d                                        ; $5543: $4a
	inc  bc                                          ; $5544: $03
	jp   c, $9f7b                                    ; $5545: $da $7b $9f

	dec  c                                           ; $5548: $0d
	ld   [hl], l                                     ; $5549: $75
	sub  b                                           ; $554a: $90
	sbc  [hl]                                        ; $554b: $9e
	inc  bc                                          ; $554c: $03
	xor  c                                           ; $554d: $a9
	ld   [hl], l                                     ; $554e: $75
	sub  b                                           ; $554f: $90
	inc  bc                                          ; $5550: $03
	inc  c                                           ; $5551: $0c
	adc  a                                           ; $5552: $8f
	ld   a, l                                        ; $5553: $7d
	dec  c                                           ; $5554: $0d
	ld   l, e                                        ; $5555: $6b
	ld   d, h                                        ; $5556: $54
	ld   a, b                                        ; $5557: $78
	ld   a, h                                        ; $5558: $7c
	sub  [hl]                                        ; $5559: $96
	sbc  a                                           ; $555a: $9f
	dec  c                                           ; $555b: $0d
	nop                                              ; $555c: $00
	ld   a, [bc]                                     ; $555d: $0a
	ld   bc, $9166                                   ; $555e: $01 $66 $91
	sbc  [hl]                                        ; $5561: $9e
	ld   [bc], a                                     ; $5562: $02
	and  l                                           ; $5563: $a5
	inc  b                                           ; $5564: $04
	xor  d                                           ; $5565: $aa
	sub  b                                           ; $5566: $90
	ld   [bc], a                                     ; $5567: $02
	jr   nz, jr_044_556e                             ; $5568: $20 $04

	xor  d                                           ; $556a: $aa
	dec  c                                           ; $556b: $0d
	ld   e, d                                        ; $556c: $5a
	and  c                                           ; $556d: $a1

jr_044_556e:
	ld   a, [hl]                                     ; $556e: $7e
	sbc  b                                           ; $556f: $98
	ld   a, b                                        ; $5570: $78
	ld   h, e                                        ; $5571: $63
	ld   d, d                                        ; $5572: $52
	sbc  a                                           ; $5573: $9f
	dec  c                                           ; $5574: $0d
	nop                                              ; $5575: $00
	ld   a, [bc]                                     ; $5576: $0a
	dec  c                                           ; $5577: $0d
	nop                                              ; $5578: $00
	nop                                              ; $5579: $00
	rrca                                             ; $557a: $0f
	nop                                              ; $557b: $00
	ld   bc, $1e09                                   ; $557c: $01 $09 $1e
	nop                                              ; $557f: $00
	rrca                                             ; $5580: $0f
	nop                                              ; $5581: $00
	ld   bc, $0501                                   ; $5582: $01 $01 $05
	ld   b, l                                        ; $5585: $45
	inc  b                                           ; $5586: $04
	xor  d                                           ; $5587: $aa
	ld   a, h                                        ; $5588: $7c
	ld   h, c                                        ; $5589: $61
	halt                                             ; $558a: $76
	ld   [hl], l                                     ; $558b: $75
	sbc  [hl]                                        ; $558c: $9e
	ld   [bc], a                                     ; $558d: $02
	ei                                               ; $558e: $fb
	ld   e, a                                        ; $558f: $5f
	ld   [hl], h                                     ; $5590: $74
	ld   d, d                                        ; $5591: $52
	ld   e, l                                        ; $5592: $5d
	dec  c                                           ; $5593: $0d
	inc  bc                                          ; $5594: $03
	sub  h                                           ; $5595: $94
	ld   [bc], a                                     ; $5596: $02
	ld   hl, sp+$5a                                  ; $5597: $f8 $5a
	ld   a, b                                        ; $5599: $78
	ld   e, l                                        ; $559a: $5d
	ld   a, b                                        ; $559b: $78
	ld   [hl], c                                     ; $559c: $71
	ld   [hl], h                                     ; $559d: $74
	ld   e, e                                        ; $559e: $5b
	adc  h                                           ; $559f: $8c
	ld   h, l                                        ; $55a0: $65
	ld   l, l                                        ; $55a1: $6d
	rst  $38                                         ; $55a2: $ff
	rst  $38                                         ; $55a3: $ff
	dec  c                                           ; $55a4: $0d
	nop                                              ; $55a5: $00
	ld   a, [bc]                                     ; $55a6: $0a
	inc  e                                           ; $55a7: $1c
	inc  bc                                          ; $55a8: $03
	inc  b                                           ; $55a9: $04
	inc  b                                           ; $55aa: $04
	ld   bc, $9a6b                                   ; $55ab: $01 $6b $9a
	ld   a, l                                        ; $55ae: $7d
	sbc  [hl]                                        ; $55af: $9e
	dec  b                                           ; $55b0: $05
	sub  [hl]                                        ; $55b1: $96
	ld   [hl], c                                     ; $55b2: $71
	ld   l, l                                        ; $55b3: $6d
	sbc  l                                           ; $55b4: $9d
	ld   a, e                                        ; $55b5: $7b
	rst  $38                                         ; $55b6: $ff
	rst  $38                                         ; $55b7: $ff
	dec  c                                           ; $55b8: $0d
	ld   [hl], l                                     ; $55b9: $75
	sub  b                                           ; $55ba: $90
	sbc  [hl]                                        ; $55bb: $9e
	inc  b                                           ; $55bc: $04
	ld   [$9102], sp                                 ; $55bd: $08 $02 $91
	ld   a, l                                        ; $55c0: $7d
	ld   d, b                                        ; $55c1: $50
	and  c                                           ; $55c2: $a1
	ld   a, b                                        ; $55c3: $78
	ld   h, c                                        ; $55c4: $61
	halt                                             ; $55c5: $76
	ld   a, [hl]                                     ; $55c6: $7e
	ld   e, c                                        ; $55c7: $59
	sbc  b                                           ; $55c8: $98
	dec  c                                           ; $55c9: $0d
	ld   [bc], a                                     ; $55ca: $02
	ld   e, d                                        ; $55cb: $5a
	ld   h, c                                        ; $55cc: $61
	sbc  c                                           ; $55cd: $99
	inc  bc                                          ; $55ce: $03
	ld   c, e                                        ; $55cf: $4b
	ld   h, [hl]                                     ; $55d0: $66
	sub  c                                           ; $55d1: $91
	ld   a, b                                        ; $55d2: $78
	ld   d, d                                        ; $55d3: $52
	ld   a, h                                        ; $55d4: $7c
	sub  [hl]                                        ; $55d5: $96
	sbc  a                                           ; $55d6: $9f
	dec  c                                           ; $55d7: $0d
	nop                                              ; $55d8: $00
	ld   a, [bc]                                     ; $55d9: $0a
	inc  e                                           ; $55da: $1c
	inc  bc                                          ; $55db: $03
	nop                                              ; $55dc: $00
	nop                                              ; $55dd: $00
	ld   bc, $5490                                   ; $55de: $01 $90 $54
	inc  bc                                          ; $55e1: $03
	ld   l, h                                        ; $55e2: $6c
	ld   h, l                                        ; $55e3: $65
	ld   e, d                                        ; $55e4: $5a
	and  c                                           ; $55e5: $a1
	ld   a, [hl]                                     ; $55e6: $7e
	ld   [hl], c                                     ; $55e7: $71
	ld   [hl], h                                     ; $55e8: $74
	adc  l                                           ; $55e9: $8d
	ld   a, b                                        ; $55ea: $78
	ld   h, e                                        ; $55eb: $63
	ld   d, d                                        ; $55ec: $52
	sbc  a                                           ; $55ed: $9f
	dec  c                                           ; $55ee: $0d
	ld   h, [hl]                                     ; $55ef: $66
	sub  c                                           ; $55f0: $91
	ld   d, b                                        ; $55f1: $50
	sbc  a                                           ; $55f2: $9f
	dec  c                                           ; $55f3: $0d
	nop                                              ; $55f4: $00
	ld   a, [bc]                                     ; $55f5: $0a
	dec  c                                           ; $55f6: $0d
	nop                                              ; $55f7: $00
	nop                                              ; $55f8: $00
	rrca                                             ; $55f9: $0f
	nop                                              ; $55fa: $00
	ld   bc, $1e09                                   ; $55fb: $01 $09 $1e
	nop                                              ; $55fe: $00
	rrca                                             ; $55ff: $0f
	nop                                              ; $5600: $00
	ld   bc, $0401                                   ; $5601: $01 $01 $04
	and  c                                           ; $5604: $a1
	inc  bc                                          ; $5605: $03
	add  d                                           ; $5606: $82
	ld   a, [hl]                                     ; $5607: $7e
	ld   e, c                                        ; $5608: $59
	sbc  b                                           ; $5609: $98
	ld   [hl], l                                     ; $560a: $75
	xor  h                                           ; $560b: $ac
	push af                                          ; $560c: $f5
	or   e                                           ; $560d: $b3
	xor  [hl]                                        ; $560e: $ae
	ld   [hl], l                                     ; $560f: $75
	ld   h, a                                        ; $5610: $67
	sbc  a                                           ; $5611: $9f
	dec  c                                           ; $5612: $0d
	nop                                              ; $5613: $00
	ld   a, [bc]                                     ; $5614: $0a
	inc  e                                           ; $5615: $1c
	inc  bc                                          ; $5616: $03
	ld   [bc], a                                     ; $5617: $02
	ld   [bc], a                                     ; $5618: $02
	dec  e                                           ; $5619: $1d
	ld   b, b                                        ; $561a: $40
	inc  de                                          ; $561b: $13
	inc  bc                                          ; $561c: $03
	inc  de                                          ; $561d: $13
	ld   bc, $2902                                   ; $561e: $01 $02 $29
	nop                                              ; $5621: $00
	ld   bc, $f204                                   ; $5622: $01 $04 $f2
	add  c                                           ; $5625: $81
	ld   h, [hl]                                     ; $5626: $66
	sub  c                                           ; $5627: $91
	ld   a, b                                        ; $5628: $78
	ld   d, d                                        ; $5629: $52
	ld   a, h                                        ; $562a: $7c
	sub  [hl]                                        ; $562b: $96
	ld   sp, hl                                      ; $562c: $f9
	dec  c                                           ; $562d: $0d
	ld   d, h                                        ; $562e: $54
	sbc  l                                           ; $562f: $9d
	ld   [hl], d                                     ; $5630: $72
	ld   d, d                                        ; $5631: $52
	ld   l, l                                        ; $5632: $6d
	inc  bc                                          ; $5633: $03
	ld   [hl], l                                     ; $5634: $75
	ld   [hl], l                                     ; $5635: $75
	ld   d, d                                        ; $5636: $52
	sbc  c                                           ; $5637: $99
	halt                                             ; $5638: $76
	dec  c                                           ; $5639: $0d
	inc  b                                           ; $563a: $04
	ld   c, $b2                                      ; $563b: $0e $b2
	xor  l                                           ; $563d: $ad
	ld   h, a                                        ; $563e: $67
	sbc  c                                           ; $563f: $99
	sbc  l                                           ; $5640: $9d
	sub  [hl]                                        ; $5641: $96
	sbc  a                                           ; $5642: $9f
	dec  c                                           ; $5643: $0d
	nop                                              ; $5644: $00
	ld   a, [bc]                                     ; $5645: $0a
	ld   bc, $718c                                   ; $5646: $01 $8c $71
	ld   l, l                                        ; $5649: $6d
	ld   e, l                                        ; $564a: $5d
	rst  $38                                         ; $564b: $ff
	rst  $38                                         ; $564c: $ff
	dec  c                                           ; $564d: $0d
	nop                                              ; $564e: $00
	ld   a, [bc]                                     ; $564f: $0a
	dec  c                                           ; $5650: $0d
	nop                                              ; $5651: $00
	nop                                              ; $5652: $00
	rrca                                             ; $5653: $0f
	nop                                              ; $5654: $00
	ld   bc, $1e09                                   ; $5655: $01 $09 $1e
	nop                                              ; $5658: $00
	inc  e                                           ; $5659: $1c
	inc  bc                                          ; $565a: $03
	ld   [bc], a                                     ; $565b: $02
	ld   [bc], a                                     ; $565c: $02
	dec  e                                           ; $565d: $1d
	ld   b, b                                        ; $565e: $40
	inc  de                                          ; $565f: $13
	inc  bc                                          ; $5660: $03
	inc  de                                          ; $5661: $13
	ld   bc, $2903                                   ; $5662: $01 $03 $29
	nop                                              ; $5665: $00
	ld   bc, $8c6e                                   ; $5666: $01 $6e $8c
	ld   [hl], c                                     ; $5669: $71
	ld   [hl], h                                     ; $566a: $74
	ld   d, d                                        ; $566b: $52
	ld   [hl], h                                     ; $566c: $74
	ld   a, l                                        ; $566d: $7d
	sbc  l                                           ; $566e: $9d
	ld   e, c                                        ; $566f: $59
	sub  a                                           ; $5670: $97
	ld   a, b                                        ; $5671: $78
	ld   d, d                                        ; $5672: $52
	sbc  l                                           ; $5673: $9d
	sbc  a                                           ; $5674: $9f
	dec  c                                           ; $5675: $0d
	ld   [bc], a                                     ; $5676: $02
	db   $d3                                         ; $5677: $d3
	inc  b                                           ; $5678: $04
	ld   h, $65                                      ; $5679: $26 $65
	ld   [hl], h                                     ; $567b: $74
	ld   d, d                                        ; $567c: $52
	sbc  c                                           ; $567d: $99
	ld   a, h                                        ; $567e: $7c
	ld   a, l                                        ; $567f: $7d
	sbc  l                                           ; $5680: $9d
	ld   e, c                                        ; $5681: $59
	sbc  c                                           ; $5682: $99
	ld   e, a                                        ; $5683: $5f
	ld   [hl], a                                     ; $5684: $77
	dec  c                                           ; $5685: $0d
	ld   [bc], a                                     ; $5686: $02
	rst  $38                                         ; $5687: $ff
	ld   e, a                                        ; $5688: $5f
	inc  bc                                          ; $5689: $03
	call c, Call_044_7d56                            ; $568a: $dc $56 $7d
	ld   e, e                                        ; $568d: $5b
	ld   l, a                                        ; $568e: $6f
	and  c                                           ; $568f: $a1
	halt                                             ; $5690: $76
	ld   a, b                                        ; $5691: $78
	ld   h, e                                        ; $5692: $63
	ld   d, d                                        ; $5693: $52
	sbc  a                                           ; $5694: $9f
	dec  c                                           ; $5695: $0d
	nop                                              ; $5696: $00
	ld   a, [bc]                                     ; $5697: $0a
	inc  e                                           ; $5698: $1c
	inc  bc                                          ; $5699: $03
	nop                                              ; $569a: $00
	nop                                              ; $569b: $00
	ld   bc, $0b02                                   ; $569c: $01 $02 $0b
	ld   [bc], a                                     ; $569f: $02
	xor  d                                           ; $56a0: $aa
	sbc  [hl]                                        ; $56a1: $9e
	ld   [bc], a                                     ; $56a2: $02
	and  c                                           ; $56a3: $a1
	and  b                                           ; $56a4: $a0
	ld   [hl], d                                     ; $56a5: $72
	ld   e, a                                        ; $56a6: $5f
	sbc  c                                           ; $56a7: $99
	sub  [hl]                                        ; $56a8: $96
	ld   d, h                                        ; $56a9: $54
	ld   a, c                                        ; $56aa: $79
	ld   a, e                                        ; $56ab: $7b
	sbc  a                                           ; $56ac: $9f
	dec  c                                           ; $56ad: $0d
	nop                                              ; $56ae: $00
	ld   a, [bc]                                     ; $56af: $0a
	dec  c                                           ; $56b0: $0d
	nop                                              ; $56b1: $00
	nop                                              ; $56b2: $00
	rrca                                             ; $56b3: $0f
	nop                                              ; $56b4: $00
	ld   bc, $1e09                                   ; $56b5: $01 $09 $1e
	nop                                              ; $56b8: $00
	nop                                              ; $56b9: $00
	inc  e                                           ; $56ba: $1c
	inc  b                                           ; $56bb: $04
	ld   bc, $0201                                   ; $56bc: $01 $01 $02
	rlca                                             ; $56bf: $07
	db   $fd                                         ; $56c0: $fd
	ld   bc, $8004                                   ; $56c1: $01 $04 $80
	jr   nc, jr_044_56c7                             ; $56c4: $30 $01

	rst  $38                                         ; $56c6: $ff

jr_044_56c7:
	jr   nz, jr_044_56cb                             ; $56c7: $20 $02

	nop                                              ; $56c9: $00
	inc  bc                                          ; $56ca: $03

jr_044_56cb:
	ld   b, b                                        ; $56cb: $40
	ld   bc, $2801                                   ; $56cc: $01 $01 $28
	jr   nz, jr_044_56ed                             ; $56cf: $20 $1c

	inc  b                                           ; $56d1: $04
	add  b                                           ; $56d2: $80
	reti                                             ; $56d3: $d9


	ld   bc, $2000                                   ; $56d4: $01 $00 $20
	inc  e                                           ; $56d7: $1c
	nop                                              ; $56d8: $00
	ld   bc, $7d58                                   ; $56d9: $01 $58 $7d
	sub  [hl]                                        ; $56dc: $96
	ld   d, h                                        ; $56dd: $54
	ld   a, [$6f0d]                                  ; $56de: $fa $0d $6f
	ld   d, d                                        ; $56e1: $52
	ld   [bc], a                                     ; $56e2: $02
	inc  de                                          ; $56e3: $13
	ld   l, a                                        ; $56e4: $6f
	sub  c                                           ; $56e5: $91
	and  c                                           ; $56e6: $a1
	sbc  a                                           ; $56e7: $9f
	dec  c                                           ; $56e8: $0d
	nop                                              ; $56e9: $00
	ld   a, [bc]                                     ; $56ea: $0a
	rrca                                             ; $56eb: $0f
	nop                                              ; $56ec: $00

jr_044_56ed:
	ld   bc, $5801                                   ; $56ed: $01 $01 $58
	ld   a, l                                        ; $56f0: $7d
	sub  [hl]                                        ; $56f1: $96
	ld   d, h                                        ; $56f2: $54
	sbc  [hl]                                        ; $56f3: $9e
	and  e                                           ; $56f4: $a3
	and  l                                           ; $56f5: $a5
	db   $ec                                         ; $56f6: $ec
	cp   d                                           ; $56f7: $ba
	sbc  a                                           ; $56f8: $9f
	dec  c                                           ; $56f9: $0d
	nop                                              ; $56fa: $00
	ld   a, [bc]                                     ; $56fb: $0a
	dec  b                                           ; $56fc: $05
	add  b                                           ; $56fd: $80
	sub  $01                                         ; $56fe: $d6 $01
	ld   bc, $1c00                                   ; $5700: $01 $00 $1c
	inc  b                                           ; $5703: $04
	nop                                              ; $5704: $00
	nop                                              ; $5705: $00
	ld   bc, $567b                                   ; $5706: $01 $7b $56
	ld   a, e                                        ; $5709: $7b
	ld   d, [hl]                                     ; $570a: $56
	sbc  [hl]                                        ; $570b: $9e
	dec  c                                           ; $570c: $0d
	ld   [hl], h                                     ; $570d: $74
	ld   d, d                                        ; $570e: $52
	ld   h, c                                        ; $570f: $61
	ld   e, l                                        ; $5710: $5d
	ld   e, c                                        ; $5711: $59
	ld   h, b                                        ; $5712: $60
	ld   e, e                                        ; $5713: $5b
	ld   l, [hl]                                     ; $5714: $6e
	and  c                                           ; $5715: $a1
	ld   a, c                                        ; $5716: $79
	dec  c                                           ; $5717: $0d
	ld   a, l                                        ; $5718: $7d
	ld   d, d                                        ; $5719: $52
	ld   [hl], c                                     ; $571a: $71
	ld   [hl], h                                     ; $571b: $74
	sbc  [hl]                                        ; $571c: $9e
	ld   [hl], a                                     ; $571d: $77
	and  c                                           ; $571e: $a1
	ld   a, b                                        ; $571f: $78
	ld   e, c                                        ; $5720: $59
	and  c                                           ; $5721: $a1
	ld   h, [hl]                                     ; $5722: $66
	ld   sp, hl                                      ; $5723: $f9
	dec  c                                           ; $5724: $0d
	nop                                              ; $5725: $00
	ld   a, [bc]                                     ; $5726: $0a
	add  hl, de                                      ; $5727: $19
	dec  b                                           ; $5728: $05
	inc  bc                                          ; $5729: $03
	ld   [bc], a                                     ; $572a: $02
	pop  bc                                          ; $572b: $c1
	inc  b                                           ; $572c: $04
	rla                                              ; $572d: $17
	halt                                             ; $572e: $76
	inc  b                                           ; $572f: $04
	and  b                                           ; $5730: $a0
	ld   [bc], a                                     ; $5731: $02
	ld   h, $75                                      ; $5732: $26 $75
	ld   d, d                                        ; $5734: $52
	ld   [hl], c                                     ; $5735: $71
	ld   a, a                                        ; $5736: $7f
	ld   d, d                                        ; $5737: $52
	ld   e, c                                        ; $5738: $59
	ld   a, b                                        ; $5739: $78
	nop                                              ; $573a: $00
	nop                                              ; $573b: $00
	adc  h                                           ; $573c: $8c
	ld   l, [hl]                                     ; $573d: $6e
	ld   a, b                                        ; $573e: $78
	and  c                                           ; $573f: $a1
	halt                                             ; $5740: $76
	sub  b                                           ; $5741: $90
	ld   d, d                                        ; $5742: $52
	ld   d, [hl]                                     ; $5743: $56
	ld   a, b                                        ; $5744: $78
	ld   d, d                                        ; $5745: $52
	ld   a, b                                        ; $5746: $78
	nop                                              ; $5747: $00
	ld   bc, $a104                                   ; $5748: $01 $04 $a1
	inc  bc                                          ; $574b: $03
	add  d                                           ; $574c: $82
	ld   a, [hl]                                     ; $574d: $7e
	ld   e, c                                        ; $574e: $59
	sbc  b                                           ; $574f: $98
	ld   [hl], l                                     ; $5750: $75
	inc  bc                                          ; $5751: $03
	ld   l, c                                        ; $5752: $69
	ld   [bc], a                                     ; $5753: $02
	cp   [hl]                                        ; $5754: $be
	ld   l, [hl]                                     ; $5755: $6e
	ld   a, e                                        ; $5756: $7b
	nop                                              ; $5757: $00
	ld   [bc], a                                     ; $5758: $02
	rlca                                             ; $5759: $07
	cp   l                                           ; $575a: $bd
	nop                                              ; $575b: $00
	ld   [bc], a                                     ; $575c: $02
	inc  bc                                          ; $575d: $03
	ld   bc, $2000                                   ; $575e: $01 $00 $20
	nop                                              ; $5761: $00
	rlca                                             ; $5762: $07
	add  hl, sp                                      ; $5763: $39
	ld   bc, $0302                                   ; $5764: $01 $02 $03
	ld   bc, $2001                                   ; $5767: $01 $01 $20
	nop                                              ; $576a: $00
	rlca                                             ; $576b: $07
	ld   [hl], e                                     ; $576c: $73
	ld   bc, $0302                                   ; $576d: $01 $02 $03
	ld   bc, $2002                                   ; $5770: $01 $02 $20
	nop                                              ; $5773: $00
	ld   b, $e1                                      ; $5774: $06 $e1
	ld   bc, $000f                                   ; $5776: $01 $0f $00
	ld   bc, $0201                                   ; $5779: $01 $01 $02
	pop  bc                                          ; $577c: $c1
	inc  b                                           ; $577d: $04
	rla                                              ; $577e: $17
	halt                                             ; $577f: $76
	inc  b                                           ; $5780: $04
	and  b                                           ; $5781: $a0
	ld   [bc], a                                     ; $5782: $02
	ld   h, $75                                      ; $5783: $26 $75
	ld   d, d                                        ; $5785: $52
	ld   [hl], c                                     ; $5786: $71
	ld   a, a                                        ; $5787: $7f
	ld   d, d                                        ; $5788: $52
	ld   e, c                                        ; $5789: $59
	ld   a, b                                        ; $578a: $78
	sbc  a                                           ; $578b: $9f
	dec  c                                           ; $578c: $0d
	nop                                              ; $578d: $00
	ld   a, [bc]                                     ; $578e: $0a
	inc  e                                           ; $578f: $1c
	inc  b                                           ; $5790: $04
	ld   b, $06                                      ; $5791: $06 $06
	ld   bc, $fb83                                   ; $5793: $01 $83 $fb
	and  c                                           ; $5796: $a1
	rst  $38                                         ; $5797: $ff
	rst  $38                                         ; $5798: $ff
	ld   l, l                                        ; $5799: $6d
	ld   d, d                                        ; $579a: $52
	add  [hl]                                        ; $579b: $86
	and  c                                           ; $579c: $a1
	ld   a, b                                        ; $579d: $78
	and  c                                           ; $579e: $a1
	ld   l, [hl]                                     ; $579f: $6e
	sbc  a                                           ; $57a0: $9f
	dec  c                                           ; $57a1: $0d
	nop                                              ; $57a2: $00
	inc  e                                           ; $57a3: $1c
	inc  b                                           ; $57a4: $04
	ld   bc, $0101                                   ; $57a5: $01 $01 $01
	ld   d, b                                        ; $57a8: $50
	sbc  [hl]                                        ; $57a9: $9e
	ld   l, e                                        ; $57aa: $6b
	ld   d, h                                        ; $57ab: $54
	ld   l, [hl]                                     ; $57ac: $6e
	rst  $38                                         ; $57ad: $ff
	rst  $38                                         ; $57ae: $ff
	and  e                                           ; $57af: $a3
	and  l                                           ; $57b0: $a5
	db   $ec                                         ; $57b1: $ec
	cp   d                                           ; $57b2: $ba
	ld   e, d                                        ; $57b3: $5a
	dec  c                                           ; $57b4: $0d
	ld   e, b                                        ; $57b5: $58
	halt                                             ; $57b6: $76
	sub  b                                           ; $57b7: $90
	ld   l, [hl]                                     ; $57b8: $6e
	ld   l, a                                        ; $57b9: $6f
	ld   a, c                                        ; $57ba: $79
	ld   a, b                                        ; $57bb: $78
	ld   [hl], c                                     ; $57bc: $71
	ld   [hl], h                                     ; $57bd: $74
	ld   d, b                                        ; $57be: $50
	ld   h, b                                        ; $57bf: $60
	sbc  c                                           ; $57c0: $99
	sbc  a                                           ; $57c1: $9f
	dec  c                                           ; $57c2: $0d
	nop                                              ; $57c3: $00
	ld   a, [bc]                                     ; $57c4: $0a
	dec  e                                           ; $57c5: $1d
	ld   b, b                                        ; $57c6: $40
	inc  d                                           ; $57c7: $14
	inc  bc                                          ; $57c8: $03
	inc  d                                           ; $57c9: $14
	ld   bc, $2801                                   ; $57ca: $01 $01 $28
	nop                                              ; $57cd: $00
	ld   bc, $7680                                   ; $57ce: $01 $80 $76
	sbc  b                                           ; $57d1: $98
	ld   h, [hl]                                     ; $57d2: $66
	sub  c                                           ; $57d3: $91
	ld   h, e                                        ; $57d4: $63
	add  c                                           ; $57d5: $81
	ld   h, l                                        ; $57d6: $65
	ld   d, d                                        ; $57d7: $52
	sub  b                                           ; $57d8: $90
	and  c                                           ; $57d9: $a1
	ld   a, e                                        ; $57da: $7b
	sbc  a                                           ; $57db: $9f
	dec  c                                           ; $57dc: $0d
	ld   l, [hl]                                     ; $57dd: $6e
	ld   d, d                                        ; $57de: $52
	ld   h, [hl]                                     ; $57df: $66
	sub  l                                           ; $57e0: $95
	ld   d, h                                        ; $57e1: $54
	add  h                                           ; $57e2: $84
	sbc  [hl]                                        ; $57e3: $9e
	and  e                                           ; $57e4: $a3
	and  l                                           ; $57e5: $a5
	db   $ec                                         ; $57e6: $ec
	cp   d                                           ; $57e7: $ba
	ld   e, d                                        ; $57e8: $5a
	dec  c                                           ; $57e9: $0d
	ld   d, d                                        ; $57ea: $52
	sbc  c                                           ; $57eb: $99
	ld   e, c                                        ; $57ec: $59
	sub  a                                           ; $57ed: $97
	sbc  a                                           ; $57ee: $9f
	dec  c                                           ; $57ef: $0d
	nop                                              ; $57f0: $00
	ld   a, [bc]                                     ; $57f1: $0a
	nop                                              ; $57f2: $00
	rrca                                             ; $57f3: $0f
	nop                                              ; $57f4: $00
	ld   bc, $8c01                                   ; $57f5: $01 $01 $8c
	ld   l, [hl]                                     ; $57f8: $6e
	ld   a, b                                        ; $57f9: $78
	and  c                                           ; $57fa: $a1
	halt                                             ; $57fb: $76
	sub  b                                           ; $57fc: $90
	ld   d, d                                        ; $57fd: $52
	ld   d, [hl]                                     ; $57fe: $56
	ld   a, b                                        ; $57ff: $78
	ld   d, d                                        ; $5800: $52
	ld   a, b                                        ; $5801: $78
	rst  $38                                         ; $5802: $ff
	rst  $38                                         ; $5803: $ff
	dec  c                                           ; $5804: $0d
	nop                                              ; $5805: $00
	ld   a, [bc]                                     ; $5806: $0a
	inc  e                                           ; $5807: $1c
	inc  b                                           ; $5808: $04
	ld   b, $06                                      ; $5809: $06 $06
	ld   bc, $546b                                   ; $580b: $01 $6b $54
	ld   sp, hl                                      ; $580e: $f9
	dec  c                                           ; $580f: $0d
	and  e                                           ; $5810: $a3
	and  l                                           ; $5811: $a5
	db   $ec                                         ; $5812: $ec
	cp   d                                           ; $5813: $ba
	ld   a, l                                        ; $5814: $7d
	sbc  [hl]                                        ; $5815: $9e
	ld   e, b                                        ; $5816: $58
	halt                                             ; $5817: $76
	sub  b                                           ; $5818: $90
	ld   l, [hl]                                     ; $5819: $6e
	ld   l, a                                        ; $581a: $6f
	ld   e, d                                        ; $581b: $5a
	dec  c                                           ; $581c: $0d
	add  e                                           ; $581d: $83
	ld   d, [hl]                                     ; $581e: $56
	ld   [hl], h                                     ; $581f: $74
	sbc  [hl]                                        ; $5820: $9e
	ld   d, h                                        ; $5821: $54
	sbc  d                                           ; $5822: $9a
	ld   h, l                                        ; $5823: $65
	ld   d, d                                        ; $5824: $52
	sub  [hl]                                        ; $5825: $96
	sbc  a                                           ; $5826: $9f
	dec  c                                           ; $5827: $0d
	nop                                              ; $5828: $00
	ld   a, [bc]                                     ; $5829: $0a
	ld   b, $e1                                      ; $582a: $06 $e1
	ld   bc, $000f                                   ; $582c: $01 $0f $00
	ld   bc, $0401                                   ; $582f: $01 $01 $04
	and  c                                           ; $5832: $a1
	inc  bc                                          ; $5833: $03
	add  d                                           ; $5834: $82
	ld   a, [hl]                                     ; $5835: $7e
	ld   e, c                                        ; $5836: $59
	sbc  b                                           ; $5837: $98
	ld   [hl], l                                     ; $5838: $75
	inc  bc                                          ; $5839: $03
	ld   l, c                                        ; $583a: $69
	ld   [bc], a                                     ; $583b: $02
	cp   [hl]                                        ; $583c: $be
	ld   l, [hl]                                     ; $583d: $6e
	ld   a, e                                        ; $583e: $7b
	sbc  a                                           ; $583f: $9f
	dec  c                                           ; $5840: $0d
	nop                                              ; $5841: $00
	ld   a, [bc]                                     ; $5842: $0a
	inc  e                                           ; $5843: $1c
	inc  b                                           ; $5844: $04
	dec  b                                           ; $5845: $05
	dec  b                                           ; $5846: $05
	dec  e                                           ; $5847: $1d
	ld   b, b                                        ; $5848: $40
	inc  d                                           ; $5849: $14
	inc  bc                                          ; $584a: $03
	inc  d                                           ; $584b: $14
	ld   bc, $2803                                   ; $584c: $01 $03 $28
	nop                                              ; $584f: $00
	ld   bc, $567b                                   ; $5850: $01 $7b $56
	ld   a, e                                        ; $5853: $7b
	ld   d, [hl]                                     ; $5854: $56
	sbc  [hl]                                        ; $5855: $9e
	cp   c                                           ; $5856: $b9
	push hl                                          ; $5857: $e5
	push af                                          ; $5858: $f5
	sbc  $fb                                         ; $5859: $de $fb
	db   $ed                                         ; $585b: $ed
	sbc  a                                           ; $585c: $9f
	dec  c                                           ; $585d: $0d
	and  e                                           ; $585e: $a3
	and  l                                           ; $585f: $a5
	db   $ec                                         ; $5860: $ec
	cp   d                                           ; $5861: $ba
	ld   a, h                                        ; $5862: $7c
	ld   h, c                                        ; $5863: $61
	halt                                             ; $5864: $76
	call nc, $f5b9                                   ; $5865: $d4 $b9 $f5
	ld   l, [hl]                                     ; $5868: $6e
	ld   [hl], c                                     ; $5869: $71
	ld   [hl], h                                     ; $586a: $74
	sbc  a                                           ; $586b: $9f
	dec  c                                           ; $586c: $0d
	ld   l, a                                        ; $586d: $6f
	ld   d, d                                        ; $586e: $52
	ld   [bc], a                                     ; $586f: $02
	inc  de                                          ; $5870: $13
	ld   l, a                                        ; $5871: $6f
	sub  c                                           ; $5872: $91
	and  c                                           ; $5873: $a1
	ld   [hl], h                                     ; $5874: $74
	ld   d, d                                        ; $5875: $52
	ld   d, d                                        ; $5876: $52
	add  b                                           ; $5877: $80
	halt                                             ; $5878: $76
	ld   l, [hl]                                     ; $5879: $6e
	ld   a, e                                        ; $587a: $7b
	sbc  a                                           ; $587b: $9f
	dec  c                                           ; $587c: $0d
	nop                                              ; $587d: $00
	ld   a, [bc]                                     ; $587e: $0a
	ld   bc, $526f                                   ; $587f: $01 $6f $52
	ld   [bc], a                                     ; $5882: $02
	inc  de                                          ; $5883: $13
	ld   l, a                                        ; $5884: $6f
	sub  c                                           ; $5885: $91
	and  c                                           ; $5886: $a1
	sbc  [hl]                                        ; $5887: $9e
	dec  c                                           ; $5888: $0d
	ld   e, b                                        ; $5889: $58
	ld   [bc], a                                     ; $588a: $02
	inc  de                                          ; $588b: $13
	ld   l, a                                        ; $588c: $6f
	sub  c                                           ; $588d: $91
	and  c                                           ; $588e: $a1
	ld   a, h                                        ; $588f: $7c
	ld   [hl], d                                     ; $5890: $72
	ld   e, h                                        ; $5891: $5c
	ld   a, c                                        ; $5892: $79
	ld   l, [hl]                                     ; $5893: $6e
	ld   d, d                                        ; $5894: $52
	ld   h, a                                        ; $5895: $67
	ld   e, e                                        ; $5896: $5b
	ld   a, [$000d]                                  ; $5897: $fa $0d $00
	ld   a, [bc]                                     ; $589a: $0a
	inc  e                                           ; $589b: $1c
	inc  b                                           ; $589c: $04
	ld   bc, $0101                                   ; $589d: $01 $01 $01
	ld   h, [hl]                                     ; $58a0: $66
	sub  c                                           ; $58a1: $91
	sbc  [hl]                                        ; $58a2: $9e
	ld   e, e                                        ; $58a3: $5b
	sub  l                                           ; $58a4: $95
	ld   d, h                                        ; $58a5: $54
	sub  b                                           ; $58a6: $90
	ld   d, d                                        ; $58a7: $52
	ld   l, a                                        ; $58a8: $6f
	ld   a, c                                        ; $58a9: $79
	ld   l, a                                        ; $58aa: $6f
	dec  c                                           ; $58ab: $0d
	ld   e, d                                        ; $58ac: $5a
	and  c                                           ; $58ad: $a1
	ld   a, [hl]                                     ; $58ae: $7e
	sbc  e                                           ; $58af: $9b
	ld   d, h                                        ; $58b0: $54
	ld   a, e                                        ; $58b1: $7b
	ld   a, [$000d]                                  ; $58b2: $fa $0d $00
	ld   a, [bc]                                     ; $58b5: $0a
	nop                                              ; $58b6: $00
	ld   bc, $7d58                                   ; $58b7: $01 $58 $7d
	sub  [hl]                                        ; $58ba: $96
	ld   d, h                                        ; $58bb: $54
	ld   a, [$6f0d]                                  ; $58bc: $fa $0d $6f
	ld   d, d                                        ; $58bf: $52
	ld   [bc], a                                     ; $58c0: $02
	inc  de                                          ; $58c1: $13
	ld   l, a                                        ; $58c2: $6f
	sub  c                                           ; $58c3: $91
	and  c                                           ; $58c4: $a1
	sbc  a                                           ; $58c5: $9f
	dec  c                                           ; $58c6: $0d
	ld   e, e                                        ; $58c7: $5b
	ld   a, h                                        ; $58c8: $7c
	ld   d, h                                        ; $58c9: $54
	ld   a, l                                        ; $58ca: $7d
	ld   l, l                                        ; $58cb: $6d
	ld   d, d                                        ; $58cc: $52
	add  [hl]                                        ; $58cd: $86
	and  c                                           ; $58ce: $a1
	ld   l, [hl]                                     ; $58cf: $6e
	ld   [hl], c                                     ; $58d0: $71
	ld   l, l                                        ; $58d1: $6d
	ld   a, e                                        ; $58d2: $7b
	sbc  a                                           ; $58d3: $9f
	dec  c                                           ; $58d4: $0d
	nop                                              ; $58d5: $00
	ld   a, [bc]                                     ; $58d6: $0a
	rrca                                             ; $58d7: $0f
	nop                                              ; $58d8: $00
	ld   bc, $5801                                   ; $58d9: $01 $01 $58
	ld   a, l                                        ; $58dc: $7d
	sub  [hl]                                        ; $58dd: $96
	ld   d, h                                        ; $58de: $54
	sbc  [hl]                                        ; $58df: $9e
	and  e                                           ; $58e0: $a3
	and  l                                           ; $58e1: $a5
	db   $ec                                         ; $58e2: $ec
	cp   d                                           ; $58e3: $ba
	sbc  a                                           ; $58e4: $9f
	dec  c                                           ; $58e5: $0d
	dec  b                                           ; $58e6: $05
	ld   b, l                                        ; $58e7: $45
	inc  b                                           ; $58e8: $04
	xor  d                                           ; $58e9: $aa
	ld   a, l                                        ; $58ea: $7d
	sbc  [hl]                                        ; $58eb: $9e
	ld   d, b                                        ; $58ec: $50
	sbc  b                                           ; $58ed: $98
	ld   e, d                                        ; $58ee: $5a
	halt                                             ; $58ef: $76
	ld   d, h                                        ; $58f0: $54
	sbc  a                                           ; $58f1: $9f
	dec  c                                           ; $58f2: $0d
	nop                                              ; $58f3: $00
	ld   a, [bc]                                     ; $58f4: $0a
	dec  b                                           ; $58f5: $05
	add  b                                           ; $58f6: $80
	sub  $01                                         ; $58f7: $d6 $01
	ld   bc, $1c00                                   ; $58f9: $01 $00 $1c
	inc  b                                           ; $58fc: $04
	ld   bc, $0101                                   ; $58fd: $01 $01 $01
	ld   [hl], a                                     ; $5900: $77
	ld   d, h                                        ; $5901: $54
	ld   d, d                                        ; $5902: $52
	ld   l, l                                        ; $5903: $6d
	ld   h, l                                        ; $5904: $65
	adc  h                                           ; $5905: $8c
	ld   h, l                                        ; $5906: $65
	ld   [hl], h                                     ; $5907: $74
	sbc  a                                           ; $5908: $9f
	dec  c                                           ; $5909: $0d
	nop                                              ; $590a: $00
	ld   a, [bc]                                     ; $590b: $0a
	inc  e                                           ; $590c: $1c
	inc  b                                           ; $590d: $04
	nop                                              ; $590e: $00
	nop                                              ; $590f: $00
	ld   bc, $567b                                   ; $5910: $01 $7b $56
	ld   a, e                                        ; $5913: $7b
	ld   d, [hl]                                     ; $5914: $56
	sbc  [hl]                                        ; $5915: $9e
	dec  c                                           ; $5916: $0d
	ld   [hl], h                                     ; $5917: $74
	ld   d, d                                        ; $5918: $52
	ld   h, c                                        ; $5919: $61
	ld   e, l                                        ; $591a: $5d
	ld   e, c                                        ; $591b: $59
	ld   h, b                                        ; $591c: $60
	ld   e, e                                        ; $591d: $5b
	ld   l, [hl]                                     ; $591e: $6e
	and  c                                           ; $591f: $a1
	ld   a, c                                        ; $5920: $79
	dec  c                                           ; $5921: $0d
	ld   a, l                                        ; $5922: $7d
	ld   d, d                                        ; $5923: $52
	ld   [hl], c                                     ; $5924: $71
	ld   [hl], h                                     ; $5925: $74
	sbc  [hl]                                        ; $5926: $9e
	ld   [hl], a                                     ; $5927: $77
	and  c                                           ; $5928: $a1
	ld   a, b                                        ; $5929: $78
	ld   e, c                                        ; $592a: $59
	and  c                                           ; $592b: $a1
	ld   h, [hl]                                     ; $592c: $66
	ld   sp, hl                                      ; $592d: $f9
	dec  c                                           ; $592e: $0d
	nop                                              ; $592f: $00
	ld   a, [bc]                                     ; $5930: $0a
	add  hl, de                                      ; $5931: $19
	dec  b                                           ; $5932: $05
	inc  bc                                          ; $5933: $03
	ld   [bc], a                                     ; $5934: $02
	pop  bc                                          ; $5935: $c1
	inc  b                                           ; $5936: $04
	rla                                              ; $5937: $17
	halt                                             ; $5938: $76
	inc  b                                           ; $5939: $04
	and  b                                           ; $593a: $a0
	ld   [bc], a                                     ; $593b: $02
	ld   h, $75                                      ; $593c: $26 $75
	ld   d, d                                        ; $593e: $52
	ld   [hl], c                                     ; $593f: $71
	ld   a, a                                        ; $5940: $7f
	ld   d, d                                        ; $5941: $52
	ld   e, c                                        ; $5942: $59
	ld   a, b                                        ; $5943: $78
	nop                                              ; $5944: $00
	nop                                              ; $5945: $00
	inc  bc                                          ; $5946: $03
	sub  h                                           ; $5947: $94
	ld   [bc], a                                     ; $5948: $02
	ld   hl, sp+$78                                  ; $5949: $f8 $78
	ld   e, l                                        ; $594b: $5d
	ld   a, b                                        ; $594c: $78
	ld   [hl], c                                     ; $594d: $71
	ld   l, l                                        ; $594e: $6d
	nop                                              ; $594f: $00
	ld   bc, $a104                                   ; $5950: $01 $04 $a1
	inc  bc                                          ; $5953: $03
	add  d                                           ; $5954: $82
	ld   a, [hl]                                     ; $5955: $7e
	ld   e, c                                        ; $5956: $59
	sbc  b                                           ; $5957: $98
	ld   [hl], l                                     ; $5958: $75
	inc  bc                                          ; $5959: $03
	ld   l, c                                        ; $595a: $69
	ld   [bc], a                                     ; $595b: $02
	cp   [hl]                                        ; $595c: $be
	ld   l, [hl]                                     ; $595d: $6e
	ld   a, e                                        ; $595e: $7b
	nop                                              ; $595f: $00
	ld   [bc], a                                     ; $5960: $02
	rlca                                             ; $5961: $07
	push bc                                          ; $5962: $c5
	ld   [bc], a                                     ; $5963: $02
	ld   [bc], a                                     ; $5964: $02
	inc  bc                                          ; $5965: $03
	ld   bc, $2000                                   ; $5966: $01 $00 $20
	nop                                              ; $5969: $00
	rlca                                             ; $596a: $07
	ld   b, c                                        ; $596b: $41
	inc  bc                                          ; $596c: $03
	ld   [bc], a                                     ; $596d: $02
	inc  bc                                          ; $596e: $03
	ld   bc, $2001                                   ; $596f: $01 $01 $20
	nop                                              ; $5972: $00
	rlca                                             ; $5973: $07
	or   h                                           ; $5974: $b4
	inc  bc                                          ; $5975: $03
	ld   [bc], a                                     ; $5976: $02
	inc  bc                                          ; $5977: $03
	ld   bc, $2002                                   ; $5978: $01 $02 $20
	nop                                              ; $597b: $00
	ld   b, $22                                      ; $597c: $06 $22
	inc  b                                           ; $597e: $04
	rrca                                             ; $597f: $0f
	nop                                              ; $5980: $00
	ld   bc, $0201                                   ; $5981: $01 $01 $02
	pop  bc                                          ; $5984: $c1
	inc  b                                           ; $5985: $04
	rla                                              ; $5986: $17
	halt                                             ; $5987: $76
	inc  b                                           ; $5988: $04
	and  b                                           ; $5989: $a0
	ld   [bc], a                                     ; $598a: $02
	ld   h, $75                                      ; $598b: $26 $75
	ld   d, d                                        ; $598d: $52
	ld   [hl], c                                     ; $598e: $71
	ld   a, a                                        ; $598f: $7f
	ld   d, d                                        ; $5990: $52
	ld   e, c                                        ; $5991: $59
	ld   a, b                                        ; $5992: $78
	sbc  a                                           ; $5993: $9f
	dec  c                                           ; $5994: $0d
	nop                                              ; $5995: $00
	ld   a, [bc]                                     ; $5996: $0a
	inc  e                                           ; $5997: $1c
	inc  b                                           ; $5998: $04
	ld   b, $06                                      ; $5999: $06 $06
	ld   bc, $fb83                                   ; $599b: $01 $83 $fb
	and  c                                           ; $599e: $a1
	rst  $38                                         ; $599f: $ff
	rst  $38                                         ; $59a0: $ff
	ld   l, l                                        ; $59a1: $6d
	ld   d, d                                        ; $59a2: $52
	add  [hl]                                        ; $59a3: $86
	and  c                                           ; $59a4: $a1
	ld   a, b                                        ; $59a5: $78
	and  c                                           ; $59a6: $a1
	ld   l, [hl]                                     ; $59a7: $6e
	sbc  a                                           ; $59a8: $9f
	dec  c                                           ; $59a9: $0d
	nop                                              ; $59aa: $00
	inc  e                                           ; $59ab: $1c
	inc  b                                           ; $59ac: $04
	ld   bc, $0101                                   ; $59ad: $01 $01 $01
	ld   d, b                                        ; $59b0: $50
	sbc  [hl]                                        ; $59b1: $9e
	ld   l, e                                        ; $59b2: $6b
	ld   d, h                                        ; $59b3: $54
	ld   l, [hl]                                     ; $59b4: $6e
	rst  $38                                         ; $59b5: $ff
	rst  $38                                         ; $59b6: $ff
	and  e                                           ; $59b7: $a3
	and  l                                           ; $59b8: $a5
	db   $ec                                         ; $59b9: $ec
	cp   d                                           ; $59ba: $ba
	ld   e, d                                        ; $59bb: $5a
	dec  c                                           ; $59bc: $0d
	ld   e, b                                        ; $59bd: $58
	halt                                             ; $59be: $76
	sub  b                                           ; $59bf: $90
	ld   l, [hl]                                     ; $59c0: $6e
	ld   l, a                                        ; $59c1: $6f
	ld   a, c                                        ; $59c2: $79
	ld   a, b                                        ; $59c3: $78
	ld   [hl], c                                     ; $59c4: $71
	ld   [hl], h                                     ; $59c5: $74
	ld   d, b                                        ; $59c6: $50
	ld   h, b                                        ; $59c7: $60
	sbc  c                                           ; $59c8: $99
	sbc  a                                           ; $59c9: $9f
	dec  c                                           ; $59ca: $0d
	nop                                              ; $59cb: $00
	ld   a, [bc]                                     ; $59cc: $0a
	dec  e                                           ; $59cd: $1d
	ld   b, b                                        ; $59ce: $40
	inc  d                                           ; $59cf: $14
	inc  bc                                          ; $59d0: $03
	inc  d                                           ; $59d1: $14
	ld   bc, $2801                                   ; $59d2: $01 $01 $28
	nop                                              ; $59d5: $00
	ld   bc, $7680                                   ; $59d6: $01 $80 $76
	sbc  b                                           ; $59d9: $98
	ld   h, [hl]                                     ; $59da: $66
	sub  c                                           ; $59db: $91
	ld   h, e                                        ; $59dc: $63
	add  c                                           ; $59dd: $81
	ld   h, l                                        ; $59de: $65
	ld   d, d                                        ; $59df: $52
	sub  b                                           ; $59e0: $90
	and  c                                           ; $59e1: $a1
	ld   a, e                                        ; $59e2: $7b
	sbc  a                                           ; $59e3: $9f
	dec  c                                           ; $59e4: $0d
	ld   l, [hl]                                     ; $59e5: $6e
	ld   d, d                                        ; $59e6: $52
	ld   h, [hl]                                     ; $59e7: $66
	sub  l                                           ; $59e8: $95
	ld   d, h                                        ; $59e9: $54
	add  h                                           ; $59ea: $84
	sbc  [hl]                                        ; $59eb: $9e
	and  e                                           ; $59ec: $a3
	and  l                                           ; $59ed: $a5
	db   $ec                                         ; $59ee: $ec
	cp   d                                           ; $59ef: $ba
	ld   e, d                                        ; $59f0: $5a
	dec  c                                           ; $59f1: $0d
	ld   d, d                                        ; $59f2: $52
	sbc  c                                           ; $59f3: $99
	ld   e, c                                        ; $59f4: $59
	sub  a                                           ; $59f5: $97
	sbc  a                                           ; $59f6: $9f
	dec  c                                           ; $59f7: $0d
	nop                                              ; $59f8: $00
	ld   a, [bc]                                     ; $59f9: $0a
	nop                                              ; $59fa: $00
	rrca                                             ; $59fb: $0f
	nop                                              ; $59fc: $00
	ld   bc, $0501                                   ; $59fd: $01 $01 $05
	ld   b, l                                        ; $5a00: $45
	inc  b                                           ; $5a01: $04
	xor  d                                           ; $5a02: $aa
	ld   a, h                                        ; $5a03: $7c
	ld   h, c                                        ; $5a04: $61
	halt                                             ; $5a05: $76
	ld   [hl], l                                     ; $5a06: $75
	sbc  [hl]                                        ; $5a07: $9e
	ld   [bc], a                                     ; $5a08: $02
	ei                                               ; $5a09: $fb
	ld   e, a                                        ; $5a0a: $5f
	ld   [hl], h                                     ; $5a0b: $74
	ld   d, d                                        ; $5a0c: $52
	ld   e, l                                        ; $5a0d: $5d
	dec  c                                           ; $5a0e: $0d
	inc  bc                                          ; $5a0f: $03
	sub  h                                           ; $5a10: $94
	ld   [bc], a                                     ; $5a11: $02
	ld   hl, sp+$5a                                  ; $5a12: $f8 $5a
	ld   a, b                                        ; $5a14: $78
	ld   e, l                                        ; $5a15: $5d
	ld   a, b                                        ; $5a16: $78
	ld   [hl], c                                     ; $5a17: $71
	ld   l, a                                        ; $5a18: $6f
	sub  c                                           ; $5a19: $91
	ld   [hl], c                                     ; $5a1a: $71
	ld   l, l                                        ; $5a1b: $6d
	sub  [hl]                                        ; $5a1c: $96
	sbc  a                                           ; $5a1d: $9f
	dec  c                                           ; $5a1e: $0d
	nop                                              ; $5a1f: $00
	ld   a, [bc]                                     ; $5a20: $0a
	inc  e                                           ; $5a21: $1c
	inc  b                                           ; $5a22: $04
	ld   bc, $0101                                   ; $5a23: $01 $01 $01
	ld   l, [hl]                                     ; $5a26: $6e
	ld   d, d                                        ; $5a27: $52
	ld   h, [hl]                                     ; $5a28: $66
	sub  l                                           ; $5a29: $95
	ld   d, h                                        ; $5a2a: $54
	add  h                                           ; $5a2b: $84
	sbc  [hl]                                        ; $5a2c: $9e
	ld   l, [hl]                                     ; $5a2d: $6e
	ld   d, d                                        ; $5a2e: $52
	ld   h, [hl]                                     ; $5a2f: $66
	sub  l                                           ; $5a30: $95
	ld   d, h                                        ; $5a31: $54
	add  h                                           ; $5a32: $84
	sbc  a                                           ; $5a33: $9f
	dec  c                                           ; $5a34: $0d
	ld   a, b                                        ; $5a35: $78
	ld   a, c                                        ; $5a36: $79
	ld   e, c                                        ; $5a37: $59
	ld   d, b                                        ; $5a38: $50
	ld   [hl], c                                     ; $5a39: $71
	ld   l, l                                        ; $5a3a: $6d
	sub  a                                           ; $5a3b: $97
	sbc  [hl]                                        ; $5a3c: $9e
	and  e                                           ; $5a3d: $a3
	and  l                                           ; $5a3e: $a5
	db   $ec                                         ; $5a3f: $ec
	cp   d                                           ; $5a40: $ba
	ld   e, d                                        ; $5a41: $5a
	dec  c                                           ; $5a42: $0d
	ld   l, l                                        ; $5a43: $6d
	ld   h, a                                        ; $5a44: $67
	ld   e, a                                        ; $5a45: $5f
	ld   [hl], h                                     ; $5a46: $74
	ld   d, b                                        ; $5a47: $50
	ld   h, b                                        ; $5a48: $60
	sbc  c                                           ; $5a49: $99
	ld   e, c                                        ; $5a4a: $59
	sub  a                                           ; $5a4b: $97
	sbc  a                                           ; $5a4c: $9f
	dec  c                                           ; $5a4d: $0d
	nop                                              ; $5a4e: $00
	ld   a, [bc]                                     ; $5a4f: $0a
	ld   bc, $596e                                   ; $5a50: $01 $6e $59
	sub  a                                           ; $5a53: $97
	sbc  [hl]                                        ; $5a54: $9e
	ld   e, d                                        ; $5a55: $5a
	and  c                                           ; $5a56: $a1
	ld   a, [hl]                                     ; $5a57: $7e
	ld   [hl], c                                     ; $5a58: $71
	ld   [hl], h                                     ; $5a59: $74
	ld   d, d                                        ; $5a5a: $52
	ld   h, c                                        ; $5a5b: $61
	ld   d, h                                        ; $5a5c: $54
	sub  [hl]                                        ; $5a5d: $96
	sbc  a                                           ; $5a5e: $9f
	dec  c                                           ; $5a5f: $0d
	ld   a, e                                        ; $5a60: $7b
	sbc  [hl]                                        ; $5a61: $9e
	ld   l, a                                        ; $5a62: $6f
	ld   d, d                                        ; $5a63: $52
	ld   [bc], a                                     ; $5a64: $02
	inc  de                                          ; $5a65: $13
	ld   l, a                                        ; $5a66: $6f
	sub  c                                           ; $5a67: $91
	and  c                                           ; $5a68: $a1
	sbc  a                                           ; $5a69: $9f
	dec  c                                           ; $5a6a: $0d
	nop                                              ; $5a6b: $00
	ld   a, [bc]                                     ; $5a6c: $0a
	nop                                              ; $5a6d: $00
	rrca                                             ; $5a6e: $0f
	nop                                              ; $5a6f: $00
	ld   bc, $0401                                   ; $5a70: $01 $01 $04
	and  c                                           ; $5a73: $a1
	inc  bc                                          ; $5a74: $03
	add  d                                           ; $5a75: $82
	ld   a, [hl]                                     ; $5a76: $7e
	ld   e, c                                        ; $5a77: $59
	sbc  b                                           ; $5a78: $98
	ld   [hl], l                                     ; $5a79: $75
	inc  bc                                          ; $5a7a: $03
	ld   l, c                                        ; $5a7b: $69
	ld   [bc], a                                     ; $5a7c: $02
	cp   [hl]                                        ; $5a7d: $be
	ld   l, [hl]                                     ; $5a7e: $6e
	ld   a, e                                        ; $5a7f: $7b
	sbc  a                                           ; $5a80: $9f
	dec  c                                           ; $5a81: $0d
	nop                                              ; $5a82: $00
	ld   a, [bc]                                     ; $5a83: $0a
	inc  e                                           ; $5a84: $1c
	inc  b                                           ; $5a85: $04
	dec  b                                           ; $5a86: $05
	dec  b                                           ; $5a87: $05
	dec  e                                           ; $5a88: $1d
	ld   b, b                                        ; $5a89: $40
	inc  d                                           ; $5a8a: $14
	inc  bc                                          ; $5a8b: $03
	inc  d                                           ; $5a8c: $14
	ld   bc, $2803                                   ; $5a8d: $01 $03 $28
	nop                                              ; $5a90: $00
	ld   bc, $567b                                   ; $5a91: $01 $7b $56
	ld   a, e                                        ; $5a94: $7b
	ld   d, [hl]                                     ; $5a95: $56
	sbc  [hl]                                        ; $5a96: $9e
	cp   c                                           ; $5a97: $b9
	push hl                                          ; $5a98: $e5
	push af                                          ; $5a99: $f5
	sbc  $fb                                         ; $5a9a: $de $fb
	db   $ed                                         ; $5a9c: $ed
	sbc  a                                           ; $5a9d: $9f
	dec  c                                           ; $5a9e: $0d
	and  e                                           ; $5a9f: $a3
	and  l                                           ; $5aa0: $a5
	db   $ec                                         ; $5aa1: $ec
	cp   d                                           ; $5aa2: $ba
	ld   a, h                                        ; $5aa3: $7c
	ld   h, c                                        ; $5aa4: $61
	halt                                             ; $5aa5: $76
	call nc, $f5b9                                   ; $5aa6: $d4 $b9 $f5
	ld   l, [hl]                                     ; $5aa9: $6e
	ld   [hl], c                                     ; $5aaa: $71
	ld   [hl], h                                     ; $5aab: $74
	sbc  a                                           ; $5aac: $9f
	dec  c                                           ; $5aad: $0d
	ld   l, a                                        ; $5aae: $6f
	ld   d, d                                        ; $5aaf: $52
	ld   [bc], a                                     ; $5ab0: $02
	inc  de                                          ; $5ab1: $13
	ld   l, a                                        ; $5ab2: $6f
	sub  c                                           ; $5ab3: $91
	and  c                                           ; $5ab4: $a1
	ld   [hl], h                                     ; $5ab5: $74
	ld   d, d                                        ; $5ab6: $52
	ld   d, d                                        ; $5ab7: $52
	add  b                                           ; $5ab8: $80
	halt                                             ; $5ab9: $76
	ld   l, [hl]                                     ; $5aba: $6e
	ld   a, e                                        ; $5abb: $7b
	sbc  a                                           ; $5abc: $9f
	dec  c                                           ; $5abd: $0d
	nop                                              ; $5abe: $00
	ld   a, [bc]                                     ; $5abf: $0a
	ld   bc, $526f                                   ; $5ac0: $01 $6f $52
	ld   [bc], a                                     ; $5ac3: $02
	inc  de                                          ; $5ac4: $13
	ld   l, a                                        ; $5ac5: $6f
	sub  c                                           ; $5ac6: $91
	and  c                                           ; $5ac7: $a1
	sbc  [hl]                                        ; $5ac8: $9e
	dec  c                                           ; $5ac9: $0d
	ld   e, b                                        ; $5aca: $58
	ld   [bc], a                                     ; $5acb: $02
	inc  de                                          ; $5acc: $13
	ld   l, a                                        ; $5acd: $6f
	sub  c                                           ; $5ace: $91
	and  c                                           ; $5acf: $a1
	ld   a, h                                        ; $5ad0: $7c
	ld   [hl], d                                     ; $5ad1: $72
	ld   e, h                                        ; $5ad2: $5c
	ld   a, c                                        ; $5ad3: $79
	ld   l, [hl]                                     ; $5ad4: $6e
	ld   d, d                                        ; $5ad5: $52
	ld   h, a                                        ; $5ad6: $67
	ld   e, e                                        ; $5ad7: $5b
	ld   a, [$000d]                                  ; $5ad8: $fa $0d $00
	ld   a, [bc]                                     ; $5adb: $0a
	inc  e                                           ; $5adc: $1c
	inc  b                                           ; $5add: $04
	ld   bc, $0101                                   ; $5ade: $01 $01 $01
	ld   e, e                                        ; $5ae1: $5b
	sub  l                                           ; $5ae2: $95
	ld   d, h                                        ; $5ae3: $54
	sub  b                                           ; $5ae4: $90
	ld   d, d                                        ; $5ae5: $52
	ld   l, a                                        ; $5ae6: $6f
	ld   a, c                                        ; $5ae7: $79
	ld   l, a                                        ; $5ae8: $6f
	dec  c                                           ; $5ae9: $0d
	ld   e, d                                        ; $5aea: $5a
	and  c                                           ; $5aeb: $a1
	ld   a, [hl]                                     ; $5aec: $7e
	sbc  e                                           ; $5aed: $9b
	ld   d, h                                        ; $5aee: $54
	ld   a, e                                        ; $5aef: $7b
	ld   a, [$000d]                                  ; $5af0: $fa $0d $00
	ld   a, [bc]                                     ; $5af3: $0a
	nop                                              ; $5af4: $00
	nop                                              ; $5af5: $00
	rrca                                             ; $5af6: $0f
	nop                                              ; $5af7: $00
	ld   bc, $050d                                   ; $5af8: $01 $0d $05
	nop                                              ; $5afb: $00
	ld   [bc], a                                     ; $5afc: $02
	rlca                                             ; $5afd: $07
	and  [hl]                                        ; $5afe: $a6
	ld   [bc], a                                     ; $5aff: $02
	inc  b                                           ; $5b00: $04
	add  b                                           ; $5b01: $80
	jr   nc, jr_044_5b05                             ; $5b02: $30 $01

	rst  $38                                         ; $5b04: $ff

jr_044_5b05:
	jr   nz, jr_044_5b09                             ; $5b05: $20 $02

	nop                                              ; $5b07: $00
	inc  bc                                          ; $5b08: $03

jr_044_5b09:
	ld   b, b                                        ; $5b09: $40
	ld   bc, $2801                                   ; $5b0a: $01 $01 $28
	jr   nz, @+$1e                                   ; $5b0d: $20 $1c

	nop                                              ; $5b0f: $00
	ld   bc, $cf02                                   ; $5b10: $01 $02 $cf
	dec  b                                           ; $5b13: $05
	ld   a, [de]                                     ; $5b14: $1a
	ld   h, e                                        ; $5b15: $63
	and  c                                           ; $5b16: $a1
	sbc  [hl]                                        ; $5b17: $9e
	dec  c                                           ; $5b18: $0d
	ld   e, b                                        ; $5b19: $58
	ld   a, l                                        ; $5b1a: $7d
	sub  [hl]                                        ; $5b1b: $96
	ld   d, h                                        ; $5b1c: $54
	ld   h, d                                        ; $5b1d: $62
	ld   h, h                                        ; $5b1e: $64
	ld   d, d                                        ; $5b1f: $52
	adc  h                                           ; $5b20: $8c
	ld   h, a                                        ; $5b21: $67
	sbc  a                                           ; $5b22: $9f
	dec  c                                           ; $5b23: $0d
	nop                                              ; $5b24: $00
	ld   a, [bc]                                     ; $5b25: $0a
	inc  e                                           ; $5b26: $1c
	dec  b                                           ; $5b27: $05
	nop                                              ; $5b28: $00
	nop                                              ; $5b29: $00
	ld   bc, $0008                                   ; $5b2a: $01 $08 $00
	ld   a, l                                        ; $5b2d: $7d
	and  c                                           ; $5b2e: $a1
	sbc  [hl]                                        ; $5b2f: $9e
	dec  c                                           ; $5b30: $0d
	ld   e, b                                        ; $5b31: $58
	ld   a, l                                        ; $5b32: $7d
	sub  [hl]                                        ; $5b33: $96
	ld   d, h                                        ; $5b34: $54
	ld   h, e                                        ; $5b35: $63
	and  c                                           ; $5b36: $a1
	sbc  a                                           ; $5b37: $9f
	dec  c                                           ; $5b38: $0d
	nop                                              ; $5b39: $00
	ld   a, [bc]                                     ; $5b3a: $0a
	ld   bc, $546b                                   ; $5b3b: $01 $6b $54
	sub  d                                           ; $5b3e: $92
	sbc  [hl]                                        ; $5b3f: $9e
	inc  b                                           ; $5b40: $04
	ld   [$8f02], sp                                 ; $5b41: $08 $02 $8f
	ld   [bc], a                                     ; $5b44: $02
	sub  b                                           ; $5b45: $90
	ld   [bc], a                                     ; $5b46: $02
	sub  c                                           ; $5b47: $91
	inc  b                                           ; $5b48: $04
	add  hl, bc                                      ; $5b49: $09
	ld   a, c                                        ; $5b4a: $79
	inc  b                                           ; $5b4b: $04
	ld   b, l                                        ; $5b4c: $45
	inc  b                                           ; $5b4d: $04
	ld   a, [bc]                                     ; $5b4e: $0a
	dec  c                                           ; $5b4f: $0d
	ld   h, l                                        ; $5b50: $65
	ld   [hl], h                                     ; $5b51: $74
	adc  l                                           ; $5b52: $8d
	ld   [hl], h                                     ; $5b53: $74
	ld   a, h                                        ; $5b54: $7c
	ld   [bc], a                                     ; $5b55: $02
	scf                                              ; $5b56: $37
	inc  bc                                          ; $5b57: $03
	ld   a, [de]                                     ; $5b58: $1a
	ld   a, b                                        ; $5b59: $78
	and  c                                           ; $5b5a: $a1
	ld   e, c                                        ; $5b5b: $59
	dec  c                                           ; $5b5c: $0d
	ld   [bc], a                                     ; $5b5d: $02
	jp   nz, Jump_044_6959                           ; $5b5e: $c2 $59 $69

	ld   [hl], h                                     ; $5b61: $74
	ld   e, l                                        ; $5b62: $5d
	sbc  d                                           ; $5b63: $9a
	add  [hl]                                        ; $5b64: $86
	and  c                                           ; $5b65: $a1
	ld   sp, hl                                      ; $5b66: $f9
	dec  c                                           ; $5b67: $0d
	nop                                              ; $5b68: $00
	ld   a, [bc]                                     ; $5b69: $0a
	add  hl, de                                      ; $5b6a: $19
	dec  b                                           ; $5b6b: $05
	inc  bc                                          ; $5b6c: $03
	ld   [bc], a                                     ; $5b6d: $02
	jr   c, jr_044_5b72                              ; $5b6e: $38 $02

	inc  b                                           ; $5b70: $04
	ld   [hl], l                                     ; $5b71: $75

jr_044_5b72:
	ld   h, a                                        ; $5b72: $67
	nop                                              ; $5b73: $00
	nop                                              ; $5b74: $00
	adc  h                                           ; $5b75: $8c
	ld   l, [hl]                                     ; $5b76: $6e
	ld   a, b                                        ; $5b77: $78
	and  c                                           ; $5b78: $a1
	halt                                             ; $5b79: $76
	sub  b                                           ; $5b7a: $90
	rst  $38                                         ; $5b7b: $ff
	rst  $38                                         ; $5b7c: $ff
	nop                                              ; $5b7d: $00
	ld   bc, $aeca                                   ; $5b7e: $01 $ca $ae
	jp   z, Jump_044_75ae                            ; $5b81: $ca $ae $75

	ld   h, a                                        ; $5b84: $67
	nop                                              ; $5b85: $00
	ld   [bc], a                                     ; $5b86: $02
	rlca                                             ; $5b87: $07
	xor  a                                           ; $5b88: $af
	nop                                              ; $5b89: $00
	ld   [bc], a                                     ; $5b8a: $02
	inc  bc                                          ; $5b8b: $03
	ld   bc, $2000                                   ; $5b8c: $01 $00 $20
	nop                                              ; $5b8f: $00
	rlca                                             ; $5b90: $07
	ld   c, h                                        ; $5b91: $4c
	ld   bc, $0302                                   ; $5b92: $01 $02 $03
	ld   bc, $2001                                   ; $5b95: $01 $01 $20
	nop                                              ; $5b98: $00
	rlca                                             ; $5b99: $07
	ret  nz                                          ; $5b9a: $c0

	ld   bc, $0302                                   ; $5b9b: $01 $02 $03
	ld   bc, $2002                                   ; $5b9e: $01 $02 $20
	nop                                              ; $5ba1: $00
	ld   b, $43                                      ; $5ba2: $06 $43
	ld   [bc], a                                     ; $5ba4: $02
	rrca                                             ; $5ba5: $0f
	nop                                              ; $5ba6: $00
	ld   bc, $0201                                   ; $5ba7: $01 $01 $02
	jr   c, jr_044_5bae                              ; $5baa: $38 $02

	inc  b                                           ; $5bac: $04
	ld   [hl], l                                     ; $5bad: $75

jr_044_5bae:
	ld   h, a                                        ; $5bae: $67
	sbc  a                                           ; $5baf: $9f
	dec  c                                           ; $5bb0: $0d
	adc  l                                           ; $5bb1: $8d
	ld   a, b                                        ; $5bb2: $78
	ld   h, e                                        ; $5bb3: $63
	and  c                                           ; $5bb4: $a1
	ld   a, h                                        ; $5bb5: $7c
	sub  [hl]                                        ; $5bb6: $96
	ld   d, h                                        ; $5bb7: $54
	ld   a, b                                        ; $5bb8: $78
	dec  b                                           ; $5bb9: $05
	ld   d, $04                                      ; $5bba: $16 $04
	sbc  l                                           ; $5bbc: $9d
	ld   a, b                                        ; $5bbd: $78
	inc  b                                           ; $5bbe: $04
	ld   a, b                                        ; $5bbf: $78
	ld   bc, $7614                                   ; $5bc0: $01 $14 $76
	dec  c                                           ; $5bc3: $0d
	ld   [bc], a                                     ; $5bc4: $02
	jp   c, Jump_044_6779                            ; $5bc5: $da $79 $67

	ld   h, d                                        ; $5bc8: $62
	ld   l, c                                        ; $5bc9: $69
	sbc  c                                           ; $5bca: $99
	ld   a, b                                        ; $5bcb: $78
	and  c                                           ; $5bcc: $a1
	ld   [hl], h                                     ; $5bcd: $74
	rst  $38                                         ; $5bce: $ff
	rst  $38                                         ; $5bcf: $ff
	dec  c                                           ; $5bd0: $0d
	nop                                              ; $5bd1: $00
	ld   a, [bc]                                     ; $5bd2: $0a
	inc  e                                           ; $5bd3: $1c
	dec  b                                           ; $5bd4: $05
	ld   bc, $1d01                                   ; $5bd5: $01 $01 $1d
	ld   b, b                                        ; $5bd8: $40
	dec  d                                           ; $5bd9: $15
	inc  bc                                          ; $5bda: $03
	dec  d                                           ; $5bdb: $15
	ld   bc, $2802                                   ; $5bdc: $01 $02 $28
	nop                                              ; $5bdf: $00
	ld   bc, $1605                                   ; $5be0: $01 $05 $16
	inc  b                                           ; $5be3: $04
	sbc  l                                           ; $5be4: $9d
	ld   [hl], c                                     ; $5be5: $71
	ld   l, a                                        ; $5be6: $6f
	sub  e                                           ; $5be7: $93
	ei                                               ; $5be8: $fb
	ld   [hl], h                                     ; $5be9: $74
	ld   [bc], a                                     ; $5bea: $02
	sbc  l                                           ; $5beb: $9d
	sbc  l                                           ; $5bec: $9d
	sbc  d                                           ; $5bed: $9a
	sbc  c                                           ; $5bee: $99
	halt                                             ; $5bef: $76
	dec  c                                           ; $5bf0: $0d
	inc  bc                                          ; $5bf1: $03
	ld   h, [hl]                                     ; $5bf2: $66
	sbc  d                                           ; $5bf3: $9a
	sbc  c                                           ; $5bf4: $99
	ld   e, d                                        ; $5bf5: $5a
	ld   a, b                                        ; $5bf6: $78
	db   $fc                                         ; $5bf7: $fc
	sbc  a                                           ; $5bf8: $9f
	dec  c                                           ; $5bf9: $0d
	nop                                              ; $5bfa: $00
	ld   a, [bc]                                     ; $5bfb: $0a
	ld   bc, $508c                                   ; $5bfc: $01 $8c $50
	sbc  [hl]                                        ; $5bff: $9e
	ld   e, d                                        ; $5c00: $5a
	and  c                                           ; $5c01: $a1
	ld   a, [hl]                                     ; $5c02: $7e
	sbc  b                                           ; $5c03: $98
	sub  d                                           ; $5c04: $92
	sbc  a                                           ; $5c05: $9f
	dec  c                                           ; $5c06: $0d
	ld   [bc], a                                     ; $5c07: $02
	pop  bc                                          ; $5c08: $c1
	inc  b                                           ; $5c09: $04
	rla                                              ; $5c0a: $17
	ld   h, l                                        ; $5c0b: $65
	ld   [hl], h                                     ; $5c0c: $74
	sbc  c                                           ; $5c0d: $99
	ld   [hl], l                                     ; $5c0e: $75
	sbc  a                                           ; $5c0f: $9f
	dec  c                                           ; $5c10: $0d
	nop                                              ; $5c11: $00
	ld   a, [bc]                                     ; $5c12: $0a
	ld   bc, $7158                                   ; $5c13: $01 $58 $71
	sbc  [hl]                                        ; $5c16: $9e
	inc  bc                                          ; $5c17: $03
	ld   l, l                                        ; $5c18: $6d
	dec  b                                           ; $5c19: $05
	add  hl, de                                      ; $5c1a: $19
	ld   a, h                                        ; $5c1b: $7c
	inc  bc                                          ; $5c1c: $03
	ld   l, a                                        ; $5c1d: $6f
	ld   [bc], a                                     ; $5c1e: $02
	xor  c                                           ; $5c1f: $a9
	sub  d                                           ; $5c20: $92
	sbc  a                                           ; $5c21: $9f
	dec  c                                           ; $5c22: $0d
	adc  c                                           ; $5c23: $89
	ld   a, b                                        ; $5c24: $78
	sbc  [hl]                                        ; $5c25: $9e
	ld   [bc], a                                     ; $5c26: $02
	and  l                                           ; $5c27: $a5
	inc  b                                           ; $5c28: $04
	xor  d                                           ; $5c29: $aa
	sub  b                                           ; $5c2a: $90
	ld   [bc], a                                     ; $5c2b: $02
	jr   nz, jr_044_5c32                             ; $5c2c: $20 $04

	xor  d                                           ; $5c2e: $aa
	dec  c                                           ; $5c2f: $0d
	ld   e, d                                        ; $5c30: $5a
	and  c                                           ; $5c31: $a1

jr_044_5c32:
	ld   a, [hl]                                     ; $5c32: $7e
	sbc  b                                           ; $5c33: $98
	sub  d                                           ; $5c34: $92
	sbc  a                                           ; $5c35: $9f
	dec  c                                           ; $5c36: $0d
	nop                                              ; $5c37: $00
	ld   a, [bc]                                     ; $5c38: $0a
	dec  c                                           ; $5c39: $0d
	nop                                              ; $5c3a: $00
	nop                                              ; $5c3b: $00
	rrca                                             ; $5c3c: $0f
	nop                                              ; $5c3d: $00
	ld   bc, $1e09                                   ; $5c3e: $01 $09 $1e
	nop                                              ; $5c41: $00
	rrca                                             ; $5c42: $0f
	nop                                              ; $5c43: $00
	ld   bc, $8c01                                   ; $5c44: $01 $01 $8c
	ld   l, [hl]                                     ; $5c47: $6e
	ld   a, b                                        ; $5c48: $78
	and  c                                           ; $5c49: $a1
	halt                                             ; $5c4a: $76
	sub  b                                           ; $5c4b: $90
	rst  $38                                         ; $5c4c: $ff
	rst  $38                                         ; $5c4d: $ff
	dec  c                                           ; $5c4e: $0d
	inc  b                                           ; $5c4f: $04
	ld   b, l                                        ; $5c50: $45
	ld   [hl], c                                     ; $5c51: $71
	ld   [hl], h                                     ; $5c52: $74
	ld   [bc], a                                     ; $5c53: $02
	xor  c                                           ; $5c54: $a9
	sub  b                                           ; $5c55: $90
	ld   a, b                                        ; $5c56: $78
	ld   d, d                                        ; $5c57: $52
	ld   [hl], l                                     ; $5c58: $75
	ld   h, a                                        ; $5c59: $67
	ld   h, l                                        ; $5c5a: $65
	rst  $38                                         ; $5c5b: $ff
	rst  $38                                         ; $5c5c: $ff
	dec  c                                           ; $5c5d: $0d
	nop                                              ; $5c5e: $00
	ld   a, [bc]                                     ; $5c5f: $0a
	inc  e                                           ; $5c60: $1c
	dec  b                                           ; $5c61: $05
	nop                                              ; $5c62: $00
	nop                                              ; $5c63: $00
	ld   bc, $976b                                   ; $5c64: $01 $6b $97
	sbc  [hl]                                        ; $5c67: $9e
	ld   l, e                                        ; $5c68: $6b
	sub  d                                           ; $5c69: $92
	ld   a, b                                        ; $5c6a: $78
	rst  $38                                         ; $5c6b: $ff
	sbc  a                                           ; $5c6c: $9f
	dec  c                                           ; $5c6d: $0d
	adc  h                                           ; $5c6e: $8c
	ld   d, b                                        ; $5c6f: $50
	sbc  [hl]                                        ; $5c70: $9e
	db   $dd                                         ; $5c71: $dd
	jp   nz, $c2dd                                   ; $5c72: $c2 $dd $c2

	ld   a, b                                        ; $5c75: $78
	sbc  d                                           ; $5c76: $9a
	ld   [hl], h                                     ; $5c77: $74
	ld   [hl], c                                     ; $5c78: $71
	ld   l, l                                        ; $5c79: $6d
	sub  a                                           ; $5c7a: $97
	dec  c                                           ; $5c7b: $0d
	ld   d, [hl]                                     ; $5c7c: $56
	ld   d, [hl]                                     ; $5c7d: $56
	halt                                             ; $5c7e: $76
	dec  b                                           ; $5c7f: $05
	pop  de                                          ; $5c80: $d1
	ld   d, h                                        ; $5c81: $54
	ld   [hl], l                                     ; $5c82: $75
	sbc  a                                           ; $5c83: $9f
	dec  c                                           ; $5c84: $0d
	nop                                              ; $5c85: $00
	ld   a, [bc]                                     ; $5c86: $0a
	ld   bc, $7158                                   ; $5c87: $01 $58 $71
	sbc  [hl]                                        ; $5c8a: $9e
	inc  bc                                          ; $5c8b: $03
	ld   l, l                                        ; $5c8c: $6d
	dec  b                                           ; $5c8d: $05
	add  hl, de                                      ; $5c8e: $19
	ld   a, h                                        ; $5c8f: $7c
	inc  bc                                          ; $5c90: $03
	ld   l, a                                        ; $5c91: $6f
	ld   [bc], a                                     ; $5c92: $02
	xor  c                                           ; $5c93: $a9
	sub  d                                           ; $5c94: $92
	sbc  a                                           ; $5c95: $9f
	dec  c                                           ; $5c96: $0d
	adc  c                                           ; $5c97: $89
	ld   a, b                                        ; $5c98: $78
	sbc  [hl]                                        ; $5c99: $9e
	ld   [bc], a                                     ; $5c9a: $02
	and  l                                           ; $5c9b: $a5
	inc  b                                           ; $5c9c: $04
	xor  d                                           ; $5c9d: $aa
	sub  b                                           ; $5c9e: $90
	ld   [bc], a                                     ; $5c9f: $02
	jr   nz, jr_044_5ca6                             ; $5ca0: $20 $04

	xor  d                                           ; $5ca2: $aa
	dec  c                                           ; $5ca3: $0d
	ld   e, d                                        ; $5ca4: $5a
	and  c                                           ; $5ca5: $a1

jr_044_5ca6:
	ld   a, [hl]                                     ; $5ca6: $7e
	sbc  b                                           ; $5ca7: $98
	sub  d                                           ; $5ca8: $92
	sbc  a                                           ; $5ca9: $9f
	dec  c                                           ; $5caa: $0d
	nop                                              ; $5cab: $00
	ld   a, [bc]                                     ; $5cac: $0a
	dec  c                                           ; $5cad: $0d
	nop                                              ; $5cae: $00
	nop                                              ; $5caf: $00
	rrca                                             ; $5cb0: $0f
	nop                                              ; $5cb1: $00
	ld   bc, $1e09                                   ; $5cb2: $01 $09 $1e
	nop                                              ; $5cb5: $00
	rrca                                             ; $5cb6: $0f
	nop                                              ; $5cb7: $00
	ld   bc, $ca01                                   ; $5cb8: $01 $01 $ca
	xor  [hl]                                        ; $5cbb: $ae
	jp   z, Jump_044_75ae                            ; $5cbc: $ca $ae $75

	ld   h, a                                        ; $5cbf: $67
	ld   a, [$040d]                                  ; $5cc0: $fa $0d $04
	and  c                                           ; $5cc3: $a1
	inc  bc                                          ; $5cc4: $03
	add  d                                           ; $5cc5: $82
	ld   a, h                                        ; $5cc6: $7c
	adc  l                                           ; $5cc7: $8d
	ld   a, b                                        ; $5cc8: $78
	ld   h, e                                        ; $5cc9: $63
	and  c                                           ; $5cca: $a1
	ld   a, c                                        ; $5ccb: $79
	ld   [bc], a                                     ; $5ccc: $02
	ld   a, [bc]                                     ; $5ccd: $0a
	adc  h                                           ; $5cce: $8c
	sbc  d                                           ; $5ccf: $9a
	ld   [hl], h                                     ; $5cd0: $74
	rst  $38                                         ; $5cd1: $ff
	rst  $38                                         ; $5cd2: $ff
	dec  c                                           ; $5cd3: $0d
	nop                                              ; $5cd4: $00
	ld   a, [bc]                                     ; $5cd5: $0a
	inc  e                                           ; $5cd6: $1c
	dec  b                                           ; $5cd7: $05
	ld   bc, $1d01                                   ; $5cd8: $01 $01 $1d
	ld   b, b                                        ; $5cdb: $40
	dec  d                                           ; $5cdc: $15
	inc  bc                                          ; $5cdd: $03
	dec  d                                           ; $5cde: $15
	ld   bc, $2802                                   ; $5cdf: $01 $02 $28
	nop                                              ; $5ce2: $00
	ld   bc, $5858                                   ; $5ce3: $01 $58 $58
	ld   [hl], c                                     ; $5ce6: $71
	ld   a, [$7810]                                  ; $5ce7: $fa $10 $78
	ld   e, c                                        ; $5cea: $59
	ld   a, b                                        ; $5ceb: $78
	ld   e, c                                        ; $5cec: $59
	xor  c                                           ; $5ced: $a9
	xor  c                                           ; $5cee: $a9
	inc  b                                           ; $5cef: $04
	call nc, $0d55                                   ; $5cf0: $d4 $55 $0d
	ld   h, l                                        ; $5cf3: $65
	ld   [hl], h                                     ; $5cf4: $74
	sbc  c                                           ; $5cf5: $99
	sub  d                                           ; $5cf6: $92
	and  c                                           ; $5cf7: $a1
	sbc  a                                           ; $5cf8: $9f
	dec  c                                           ; $5cf9: $0d
	ld   [bc], a                                     ; $5cfa: $02
	sub  l                                           ; $5cfb: $95
	inc  bc                                          ; $5cfc: $03
	ld   c, e                                        ; $5cfd: $4b
	ld   d, b                                        ; $5cfe: $50
	and  c                                           ; $5cff: $a1
	ld   [hl], l                                     ; $5d00: $75
	sbc  a                                           ; $5d01: $9f
	ld   [$7d00], sp                                 ; $5d02: $08 $00 $7d
	and  c                                           ; $5d05: $a1
	sbc  a                                           ; $5d06: $9f
	dec  c                                           ; $5d07: $0d
	nop                                              ; $5d08: $00
	ld   a, [bc]                                     ; $5d09: $0a
	ld   bc, $7158                                   ; $5d0a: $01 $58 $71
	sbc  [hl]                                        ; $5d0d: $9e
	inc  bc                                          ; $5d0e: $03
	ld   l, l                                        ; $5d0f: $6d
	dec  b                                           ; $5d10: $05
	add  hl, de                                      ; $5d11: $19
	ld   a, h                                        ; $5d12: $7c
	inc  bc                                          ; $5d13: $03
	ld   l, a                                        ; $5d14: $6f
	ld   [bc], a                                     ; $5d15: $02
	xor  c                                           ; $5d16: $a9
	sub  d                                           ; $5d17: $92
	sbc  a                                           ; $5d18: $9f
	dec  c                                           ; $5d19: $0d
	adc  c                                           ; $5d1a: $89
	ld   a, b                                        ; $5d1b: $78
	sbc  [hl]                                        ; $5d1c: $9e
	ld   [bc], a                                     ; $5d1d: $02
	and  l                                           ; $5d1e: $a5
	inc  b                                           ; $5d1f: $04
	xor  d                                           ; $5d20: $aa
	sub  b                                           ; $5d21: $90
	ld   [bc], a                                     ; $5d22: $02
	jr   nz, jr_044_5d29                             ; $5d23: $20 $04

	xor  d                                           ; $5d25: $aa
	dec  c                                           ; $5d26: $0d
	ld   e, d                                        ; $5d27: $5a
	and  c                                           ; $5d28: $a1

jr_044_5d29:
	ld   a, [hl]                                     ; $5d29: $7e
	sbc  b                                           ; $5d2a: $98
	sub  d                                           ; $5d2b: $92
	sbc  a                                           ; $5d2c: $9f
	dec  c                                           ; $5d2d: $0d
	nop                                              ; $5d2e: $00
	ld   a, [bc]                                     ; $5d2f: $0a
	dec  c                                           ; $5d30: $0d
	nop                                              ; $5d31: $00
	nop                                              ; $5d32: $00
	rrca                                             ; $5d33: $0f
	nop                                              ; $5d34: $00
	ld   bc, $1e09                                   ; $5d35: $01 $09 $1e
	nop                                              ; $5d38: $00
	inc  e                                           ; $5d39: $1c
	dec  b                                           ; $5d3a: $05
	ld   [bc], a                                     ; $5d3b: $02
	ld   [bc], a                                     ; $5d3c: $02
	ld   bc, $6e8c                                   ; $5d3d: $01 $8c $6e
	sbc  [hl]                                        ; $5d40: $9e
	sub  [hl]                                        ; $5d41: $96
	ei                                               ; $5d42: $fb
	inc  b                                           ; $5d43: $04
	sbc  [hl]                                        ; $5d44: $9e
	ld   e, c                                        ; $5d45: $59
	sub  a                                           ; $5d46: $97
	add  [hl]                                        ; $5d47: $86
	and  c                                           ; $5d48: $a1
	ld   a, e                                        ; $5d49: $7b
	and  c                                           ; $5d4a: $a1
	ld   a, b                                        ; $5d4b: $78
	sbc  a                                           ; $5d4c: $9f
	dec  c                                           ; $5d4d: $0d
	adc  h                                           ; $5d4e: $8c
	ld   d, b                                        ; $5d4f: $50
	sbc  [hl]                                        ; $5d50: $9e
	inc  b                                           ; $5d51: $04
	ld   b, l                                        ; $5d52: $45
	ld   [hl], c                                     ; $5d53: $71
	ld   l, l                                        ; $5d54: $6d
	ld   a, [hl]                                     ; $5d55: $7e
	ld   [hl], c                                     ; $5d56: $71
	ld   e, c                                        ; $5d57: $59
	sbc  b                                           ; $5d58: $98
	sub  d                                           ; $5d59: $92
	ld   h, l                                        ; $5d5a: $65
	sbc  a                                           ; $5d5b: $9f
	dec  c                                           ; $5d5c: $0d
	ld   h, l                                        ; $5d5d: $65
	sub  c                                           ; $5d5e: $91
	ei                                               ; $5d5f: $fb
	ld   a, b                                        ; $5d60: $78
	ld   d, d                                        ; $5d61: $52
	sbc  l                                           ; $5d62: $9d
	ld   a, b                                        ; $5d63: $78
	db   $fc                                         ; $5d64: $fc
	sbc  a                                           ; $5d65: $9f
	dec  c                                           ; $5d66: $0d
	nop                                              ; $5d67: $00
	ld   a, [bc]                                     ; $5d68: $0a
	inc  e                                           ; $5d69: $1c
	dec  b                                           ; $5d6a: $05
	ld   bc, $0101                                   ; $5d6b: $01 $01 $01
	ld   e, b                                        ; $5d6e: $58
	ld   [hl], c                                     ; $5d6f: $71
	sbc  [hl]                                        ; $5d70: $9e
	inc  bc                                          ; $5d71: $03
	ld   l, l                                        ; $5d72: $6d
	dec  b                                           ; $5d73: $05
	add  hl, de                                      ; $5d74: $19
	ld   a, h                                        ; $5d75: $7c
	inc  bc                                          ; $5d76: $03
	ld   l, a                                        ; $5d77: $6f
	ld   [bc], a                                     ; $5d78: $02
	xor  c                                           ; $5d79: $a9
	sub  d                                           ; $5d7a: $92
	sbc  a                                           ; $5d7b: $9f
	dec  c                                           ; $5d7c: $0d
	adc  c                                           ; $5d7d: $89
	ld   a, b                                        ; $5d7e: $78
	sbc  [hl]                                        ; $5d7f: $9e
	ld   [bc], a                                     ; $5d80: $02
	and  l                                           ; $5d81: $a5
	inc  b                                           ; $5d82: $04
	xor  d                                           ; $5d83: $aa
	sub  b                                           ; $5d84: $90
	ld   [bc], a                                     ; $5d85: $02
	jr   nz, jr_044_5d8c                             ; $5d86: $20 $04

	xor  d                                           ; $5d88: $aa
	dec  c                                           ; $5d89: $0d
	ld   e, d                                        ; $5d8a: $5a
	and  c                                           ; $5d8b: $a1

jr_044_5d8c:
	ld   a, [hl]                                     ; $5d8c: $7e
	sbc  b                                           ; $5d8d: $98
	sub  d                                           ; $5d8e: $92
	sbc  a                                           ; $5d8f: $9f
	dec  c                                           ; $5d90: $0d
	nop                                              ; $5d91: $00
	ld   a, [bc]                                     ; $5d92: $0a
	dec  c                                           ; $5d93: $0d
	nop                                              ; $5d94: $00
	nop                                              ; $5d95: $00
	rrca                                             ; $5d96: $0f
	nop                                              ; $5d97: $00
	ld   bc, $1e09                                   ; $5d98: $01 $09 $1e
	nop                                              ; $5d9b: $00
	inc  e                                           ; $5d9c: $1c
	dec  b                                           ; $5d9d: $05
	nop                                              ; $5d9e: $00
	nop                                              ; $5d9f: $00
	ld   bc, $9e50                                   ; $5da0: $01 $50 $9e
	ld   [$7d00], sp                                 ; $5da3: $08 $00 $7d
	and  c                                           ; $5da6: $a1
	sbc  a                                           ; $5da7: $9f
	dec  c                                           ; $5da8: $0d
	dec  b                                           ; $5da9: $05
	ld   b, l                                        ; $5daa: $45
	inc  b                                           ; $5dab: $04
	xor  d                                           ; $5dac: $aa
	ld   a, l                                        ; $5dad: $7d
	ld   e, b                                        ; $5dae: $58
	inc  b                                           ; $5daf: $04
	ld   a, e                                        ; $5db0: $7b
	sbc  d                                           ; $5db1: $9a
	ld   h, e                                        ; $5db2: $63
	and  c                                           ; $5db3: $a1
	ld   [hl], l                                     ; $5db4: $75
	ld   h, l                                        ; $5db5: $65
	ld   l, l                                        ; $5db6: $6d
	sbc  a                                           ; $5db7: $9f
	dec  c                                           ; $5db8: $0d
	nop                                              ; $5db9: $00
	ld   a, [bc]                                     ; $5dba: $0a
	ld   bc, $6176                                   ; $5dbb: $01 $76 $61
	sbc  e                                           ; $5dbe: $9b
	ld   [hl], l                                     ; $5dbf: $75
	sbc  [hl]                                        ; $5dc0: $9e
	dec  c                                           ; $5dc1: $0d
	inc  b                                           ; $5dc2: $04
	ld   [$8f02], sp                                 ; $5dc3: $08 $02 $8f
	ld   [bc], a                                     ; $5dc6: $02
	sub  b                                           ; $5dc7: $90
	ld   [bc], a                                     ; $5dc8: $02
	sub  c                                           ; $5dc9: $91
	inc  b                                           ; $5dca: $04
	add  hl, bc                                      ; $5dcb: $09
	ld   a, c                                        ; $5dcc: $79
	inc  b                                           ; $5dcd: $04
	ld   b, l                                        ; $5dce: $45
	inc  b                                           ; $5dcf: $04
	ld   a, [bc]                                     ; $5dd0: $0a
	ld   h, l                                        ; $5dd1: $65
	ld   [hl], h                                     ; $5dd2: $74
	adc  l                                           ; $5dd3: $8d
	ld   [hl], h                                     ; $5dd4: $74
	ld   a, h                                        ; $5dd5: $7c
	dec  c                                           ; $5dd6: $0d
	ld   [bc], a                                     ; $5dd7: $02
	scf                                              ; $5dd8: $37
	inc  bc                                          ; $5dd9: $03
	ld   a, [de]                                     ; $5dda: $1a
	ld   a, b                                        ; $5ddb: $78
	and  c                                           ; $5ddc: $a1
	ld   e, c                                        ; $5ddd: $59
	ld   [bc], a                                     ; $5dde: $02
	jp   nz, Jump_044_6959                           ; $5ddf: $c2 $59 $69

	ld   [hl], h                                     ; $5de2: $74
	ld   e, l                                        ; $5de3: $5d
	sbc  d                                           ; $5de4: $9a
	add  [hl]                                        ; $5de5: $86
	and  c                                           ; $5de6: $a1
	ld   sp, hl                                      ; $5de7: $f9
	dec  c                                           ; $5de8: $0d
	nop                                              ; $5de9: $00
	ld   a, [bc]                                     ; $5dea: $0a
	add  hl, de                                      ; $5deb: $19
	dec  b                                           ; $5dec: $05
	inc  bc                                          ; $5ded: $03
	ld   [bc], a                                     ; $5dee: $02
	jr   c, jr_044_5df3                              ; $5def: $38 $02

	inc  b                                           ; $5df1: $04
	ld   [hl], l                                     ; $5df2: $75

jr_044_5df3:
	ld   h, a                                        ; $5df3: $67
	nop                                              ; $5df4: $00
	nop                                              ; $5df5: $00
	ld   h, c                                        ; $5df6: $61
	sbc  l                                           ; $5df7: $9d
	ld   d, d                                        ; $5df8: $52
	halt                                             ; $5df9: $76
	ld   h, c                                        ; $5dfa: $61
	sbc  e                                           ; $5dfb: $9b
	nop                                              ; $5dfc: $00
	ld   bc, $aeca                                   ; $5dfd: $01 $ca $ae
	jp   z, Jump_044_75ae                            ; $5e00: $ca $ae $75

	ld   h, a                                        ; $5e03: $67
	nop                                              ; $5e04: $00
	ld   [bc], a                                     ; $5e05: $02
	rlca                                             ; $5e06: $07
	ld   l, $03                                      ; $5e07: $2e $03
	ld   [bc], a                                     ; $5e09: $02
	inc  bc                                          ; $5e0a: $03
	ld   bc, $2000                                   ; $5e0b: $01 $00 $20
	nop                                              ; $5e0e: $00
	rlca                                             ; $5e0f: $07
	rlc  e                                           ; $5e10: $cb $03
	ld   [bc], a                                     ; $5e12: $02
	inc  bc                                          ; $5e13: $03
	ld   bc, $2001                                   ; $5e14: $01 $01 $20
	nop                                              ; $5e17: $00
	rlca                                             ; $5e18: $07
	ld   [hl], h                                     ; $5e19: $74
	inc  b                                           ; $5e1a: $04
	ld   [bc], a                                     ; $5e1b: $02
	inc  bc                                          ; $5e1c: $03
	ld   bc, $2002                                   ; $5e1d: $01 $02 $20
	nop                                              ; $5e20: $00
	ld   b, $f7                                      ; $5e21: $06 $f7
	inc  b                                           ; $5e23: $04
	rrca                                             ; $5e24: $0f
	nop                                              ; $5e25: $00
	ld   bc, $0201                                   ; $5e26: $01 $01 $02
	jr   c, jr_044_5e2d                              ; $5e29: $38 $02

	inc  b                                           ; $5e2b: $04
	ld   [hl], l                                     ; $5e2c: $75

jr_044_5e2d:
	ld   h, a                                        ; $5e2d: $67
	sbc  a                                           ; $5e2e: $9f
	dec  c                                           ; $5e2f: $0d
	adc  l                                           ; $5e30: $8d
	ld   a, b                                        ; $5e31: $78
	ld   h, e                                        ; $5e32: $63
	and  c                                           ; $5e33: $a1
	ld   a, h                                        ; $5e34: $7c
	sub  [hl]                                        ; $5e35: $96
	ld   d, h                                        ; $5e36: $54
	ld   a, b                                        ; $5e37: $78
	dec  b                                           ; $5e38: $05
	ld   d, $04                                      ; $5e39: $16 $04
	sbc  l                                           ; $5e3b: $9d
	ld   a, b                                        ; $5e3c: $78
	inc  b                                           ; $5e3d: $04
	ld   a, b                                        ; $5e3e: $78
	ld   bc, $7614                                   ; $5e3f: $01 $14 $76
	dec  c                                           ; $5e42: $0d
	ld   [bc], a                                     ; $5e43: $02
	jp   c, Jump_044_6779                            ; $5e44: $da $79 $67

	ld   h, d                                        ; $5e47: $62
	ld   l, c                                        ; $5e48: $69
	sbc  c                                           ; $5e49: $99
	ld   a, b                                        ; $5e4a: $78
	and  c                                           ; $5e4b: $a1
	ld   [hl], h                                     ; $5e4c: $74
	rst  $38                                         ; $5e4d: $ff
	rst  $38                                         ; $5e4e: $ff
	dec  c                                           ; $5e4f: $0d
	nop                                              ; $5e50: $00
	ld   a, [bc]                                     ; $5e51: $0a
	inc  e                                           ; $5e52: $1c
	dec  b                                           ; $5e53: $05
	ld   bc, $1d01                                   ; $5e54: $01 $01 $1d
	ld   b, b                                        ; $5e57: $40
	dec  d                                           ; $5e58: $15
	inc  bc                                          ; $5e59: $03
	dec  d                                           ; $5e5a: $15
	ld   bc, $2802                                   ; $5e5b: $01 $02 $28
	nop                                              ; $5e5e: $00
	ld   bc, $1605                                   ; $5e5f: $01 $05 $16
	inc  b                                           ; $5e62: $04
	sbc  l                                           ; $5e63: $9d
	ld   [hl], c                                     ; $5e64: $71
	ld   l, a                                        ; $5e65: $6f
	sub  e                                           ; $5e66: $93
	ei                                               ; $5e67: $fb
	ld   [hl], h                                     ; $5e68: $74
	ld   [bc], a                                     ; $5e69: $02
	sbc  l                                           ; $5e6a: $9d
	sbc  l                                           ; $5e6b: $9d
	sbc  d                                           ; $5e6c: $9a
	sbc  c                                           ; $5e6d: $99
	halt                                             ; $5e6e: $76
	dec  c                                           ; $5e6f: $0d
	inc  bc                                          ; $5e70: $03
	ld   h, [hl]                                     ; $5e71: $66
	sbc  d                                           ; $5e72: $9a
	sbc  c                                           ; $5e73: $99
	ld   e, d                                        ; $5e74: $5a
	ld   a, b                                        ; $5e75: $78
	db   $fc                                         ; $5e76: $fc
	sbc  a                                           ; $5e77: $9f
	dec  c                                           ; $5e78: $0d
	nop                                              ; $5e79: $00
	ld   a, [bc]                                     ; $5e7a: $0a
	ld   bc, $508c                                   ; $5e7b: $01 $8c $50
	sbc  [hl]                                        ; $5e7e: $9e
	ld   e, d                                        ; $5e7f: $5a
	and  c                                           ; $5e80: $a1
	ld   a, [hl]                                     ; $5e81: $7e
	sbc  b                                           ; $5e82: $98
	sub  d                                           ; $5e83: $92
	sbc  a                                           ; $5e84: $9f
	dec  c                                           ; $5e85: $0d
	ld   [bc], a                                     ; $5e86: $02
	pop  bc                                          ; $5e87: $c1
	inc  b                                           ; $5e88: $04
	rla                                              ; $5e89: $17
	ld   h, l                                        ; $5e8a: $65
	ld   [hl], h                                     ; $5e8b: $74
	sbc  c                                           ; $5e8c: $99
	ld   [hl], l                                     ; $5e8d: $75
	sbc  a                                           ; $5e8e: $9f
	dec  c                                           ; $5e8f: $0d
	nop                                              ; $5e90: $00
	ld   a, [bc]                                     ; $5e91: $0a
	ld   bc, $7158                                   ; $5e92: $01 $58 $71
	sbc  [hl]                                        ; $5e95: $9e
	inc  bc                                          ; $5e96: $03
	ld   l, l                                        ; $5e97: $6d
	dec  b                                           ; $5e98: $05
	add  hl, de                                      ; $5e99: $19
	ld   a, h                                        ; $5e9a: $7c
	inc  bc                                          ; $5e9b: $03
	ld   l, a                                        ; $5e9c: $6f
	ld   [bc], a                                     ; $5e9d: $02
	xor  c                                           ; $5e9e: $a9
	sub  d                                           ; $5e9f: $92
	sbc  a                                           ; $5ea0: $9f
	dec  c                                           ; $5ea1: $0d
	adc  c                                           ; $5ea2: $89
	ld   a, b                                        ; $5ea3: $78
	sbc  [hl]                                        ; $5ea4: $9e
	ld   [bc], a                                     ; $5ea5: $02
	and  l                                           ; $5ea6: $a5
	inc  b                                           ; $5ea7: $04
	xor  d                                           ; $5ea8: $aa
	sub  b                                           ; $5ea9: $90
	ld   [bc], a                                     ; $5eaa: $02
	jr   nz, jr_044_5eb1                             ; $5eab: $20 $04

	xor  d                                           ; $5ead: $aa
	dec  c                                           ; $5eae: $0d
	ld   e, d                                        ; $5eaf: $5a
	and  c                                           ; $5eb0: $a1

jr_044_5eb1:
	ld   a, [hl]                                     ; $5eb1: $7e
	sbc  b                                           ; $5eb2: $98
	sub  d                                           ; $5eb3: $92
	sbc  a                                           ; $5eb4: $9f
	dec  c                                           ; $5eb5: $0d
	nop                                              ; $5eb6: $00
	ld   a, [bc]                                     ; $5eb7: $0a
	dec  c                                           ; $5eb8: $0d
	nop                                              ; $5eb9: $00
	nop                                              ; $5eba: $00
	rrca                                             ; $5ebb: $0f
	nop                                              ; $5ebc: $00
	ld   bc, $1e09                                   ; $5ebd: $01 $09 $1e
	nop                                              ; $5ec0: $00
	rrca                                             ; $5ec1: $0f
	nop                                              ; $5ec2: $00
	ld   bc, $5201                                   ; $5ec3: $01 $01 $52
	sub  d                                           ; $5ec6: $92
	rst  $38                                         ; $5ec7: $ff
	rst  $38                                         ; $5ec8: $ff
	sbc  [hl]                                        ; $5ec9: $9e
	ld   h, c                                        ; $5eca: $61
	sbc  l                                           ; $5ecb: $9d
	ld   d, d                                        ; $5ecc: $52
	halt                                             ; $5ecd: $76
	ld   h, c                                        ; $5ece: $61
	sbc  e                                           ; $5ecf: $9b
	dec  c                                           ; $5ed0: $0d
	ld   [hl], l                                     ; $5ed1: $75
	ld   h, a                                        ; $5ed2: $67
	ld   a, e                                        ; $5ed3: $7b
	rst  $38                                         ; $5ed4: $ff
	rst  $38                                         ; $5ed5: $ff
	dec  c                                           ; $5ed6: $0d
	nop                                              ; $5ed7: $00
	ld   a, [bc]                                     ; $5ed8: $0a
	inc  e                                           ; $5ed9: $1c
	dec  b                                           ; $5eda: $05
	ld   [bc], a                                     ; $5edb: $02
	ld   [bc], a                                     ; $5edc: $02
	ld   bc, $a178                                   ; $5edd: $01 $78 $a1
	sub  d                                           ; $5ee0: $92
	sbc  [hl]                                        ; $5ee1: $9e
	ld   a, b                                        ; $5ee2: $78
	and  c                                           ; $5ee3: $a1
	sub  d                                           ; $5ee4: $92
	sbc  a                                           ; $5ee5: $9f
	dec  c                                           ; $5ee6: $0d
	dec  b                                           ; $5ee7: $05
	ld   b, l                                        ; $5ee8: $45
	inc  b                                           ; $5ee9: $04
	xor  d                                           ; $5eea: $aa
	ld   a, h                                        ; $5eeb: $7c
	ld   h, c                                        ; $5eec: $61
	halt                                             ; $5eed: $76
	ld   e, c                                        ; $5eee: $59
	ld   d, d                                        ; $5eef: $52
	ld   a, b                                        ; $5ef0: $78
	sbc  a                                           ; $5ef1: $9f
	dec  c                                           ; $5ef2: $0d
	nop                                              ; $5ef3: $00
	ld   a, [bc]                                     ; $5ef4: $0a
	ld   bc, $a150                                   ; $5ef5: $01 $50 $a1
	ld   a, b                                        ; $5ef8: $78
	and  c                                           ; $5ef9: $a1
	inc  b                                           ; $5efa: $04
	add  [hl]                                        ; $5efb: $86
	ld   d, d                                        ; $5efc: $52
	ld   [bc], a                                     ; $5efd: $02
	sbc  l                                           ; $5efe: $9d
	ld   d, h                                        ; $5eff: $54
	ld   [hl], h                                     ; $5f00: $74
	ld   l, l                                        ; $5f01: $6d
	sub  a                                           ; $5f02: $97
	dec  c                                           ; $5f03: $0d
	ld   h, c                                        ; $5f04: $61
	ld   a, h                                        ; $5f05: $7c
	inc  bc                                          ; $5f06: $03
	ld   a, b                                        ; $5f07: $78
	sub  d                                           ; $5f08: $92
	ld   [hl], c                                     ; $5f09: $71
	ld   [hl], h                                     ; $5f0a: $74
	ld   d, d                                        ; $5f0b: $52
	ld   e, c                                        ; $5f0c: $59
	sbc  d                                           ; $5f0d: $9a
	add  [hl]                                        ; $5f0e: $86
	and  c                                           ; $5f0f: $a1
	ld   [hl], l                                     ; $5f10: $75
	sbc  a                                           ; $5f11: $9f
	dec  c                                           ; $5f12: $0d
	nop                                              ; $5f13: $00
	ld   a, [bc]                                     ; $5f14: $0a
	inc  e                                           ; $5f15: $1c
	dec  b                                           ; $5f16: $05
	rlca                                             ; $5f17: $07
	rlca                                             ; $5f18: $07
	ld   bc, $5490                                   ; $5f19: $01 $90 $54
	ld   l, a                                        ; $5f1c: $6f
	sub  l                                           ; $5f1d: $95
	ld   d, d                                        ; $5f1e: $52
	sbc  [hl]                                        ; $5f1f: $9e
	ld   [bc], a                                     ; $5f20: $02
	and  c                                           ; $5f21: $a1
	ld   [bc], a                                     ; $5f22: $02
	ld   a, e                                        ; $5f23: $7b
	ld   d, d                                        ; $5f24: $52
	inc  b                                           ; $5f25: $04
	ld   b, l                                        ; $5f26: $45
	sbc  d                                           ; $5f27: $9a
	ld   [hl], h                                     ; $5f28: $74
	dec  c                                           ; $5f29: $0d
	ld   e, d                                        ; $5f2a: $5a
	and  c                                           ; $5f2b: $a1
	ld   a, [hl]                                     ; $5f2c: $7e
	sub  a                                           ; $5f2d: $97
	ld   a, b                                        ; $5f2e: $78
	ld   d, b                                        ; $5f2f: $50
	ld   e, c                                        ; $5f30: $59
	and  c                                           ; $5f31: $a1
	ld   [hl], l                                     ; $5f32: $75
	sbc  a                                           ; $5f33: $9f
	dec  c                                           ; $5f34: $0d
	nop                                              ; $5f35: $00
	ld   a, [bc]                                     ; $5f36: $0a
	inc  e                                           ; $5f37: $1c
	dec  b                                           ; $5f38: $05
	nop                                              ; $5f39: $00
	nop                                              ; $5f3a: $00
	ld   bc, $7158                                   ; $5f3b: $01 $58 $71
	sbc  [hl]                                        ; $5f3e: $9e
	inc  bc                                          ; $5f3f: $03
	ld   l, l                                        ; $5f40: $6d
	dec  b                                           ; $5f41: $05
	add  hl, de                                      ; $5f42: $19
	ld   a, h                                        ; $5f43: $7c
	inc  bc                                          ; $5f44: $03
	ld   l, a                                        ; $5f45: $6f
	ld   [bc], a                                     ; $5f46: $02
	xor  c                                           ; $5f47: $a9
	sub  d                                           ; $5f48: $92
	sbc  a                                           ; $5f49: $9f
	dec  c                                           ; $5f4a: $0d
	adc  c                                           ; $5f4b: $89
	ld   a, b                                        ; $5f4c: $78
	sbc  [hl]                                        ; $5f4d: $9e
	ld   [bc], a                                     ; $5f4e: $02
	and  l                                           ; $5f4f: $a5
	inc  b                                           ; $5f50: $04
	xor  d                                           ; $5f51: $aa
	sub  b                                           ; $5f52: $90
	ld   [bc], a                                     ; $5f53: $02
	jr   nz, jr_044_5f5a                             ; $5f54: $20 $04

	xor  d                                           ; $5f56: $aa
	dec  c                                           ; $5f57: $0d
	ld   e, d                                        ; $5f58: $5a
	and  c                                           ; $5f59: $a1

jr_044_5f5a:
	ld   a, [hl]                                     ; $5f5a: $7e
	sbc  b                                           ; $5f5b: $98
	sub  d                                           ; $5f5c: $92
	sbc  a                                           ; $5f5d: $9f
	dec  c                                           ; $5f5e: $0d
	nop                                              ; $5f5f: $00
	ld   a, [bc]                                     ; $5f60: $0a
	dec  c                                           ; $5f61: $0d
	nop                                              ; $5f62: $00
	nop                                              ; $5f63: $00
	rrca                                             ; $5f64: $0f
	nop                                              ; $5f65: $00
	ld   bc, $1e09                                   ; $5f66: $01 $09 $1e
	nop                                              ; $5f69: $00
	rrca                                             ; $5f6a: $0f
	nop                                              ; $5f6b: $00
	ld   bc, $ca01                                   ; $5f6c: $01 $01 $ca
	xor  [hl]                                        ; $5f6f: $ae
	jp   z, Jump_044_75ae                            ; $5f70: $ca $ae $75

	ld   h, a                                        ; $5f73: $67
	ld   a, [$040d]                                  ; $5f74: $fa $0d $04
	and  c                                           ; $5f77: $a1
	inc  bc                                          ; $5f78: $03
	add  d                                           ; $5f79: $82
	ld   a, h                                        ; $5f7a: $7c
	adc  l                                           ; $5f7b: $8d
	ld   a, b                                        ; $5f7c: $78
	ld   h, e                                        ; $5f7d: $63
	and  c                                           ; $5f7e: $a1
	ld   a, c                                        ; $5f7f: $79
	ld   [bc], a                                     ; $5f80: $02
	ld   a, [bc]                                     ; $5f81: $0a
	adc  h                                           ; $5f82: $8c
	sbc  d                                           ; $5f83: $9a
	ld   [hl], h                                     ; $5f84: $74
	rst  $38                                         ; $5f85: $ff
	rst  $38                                         ; $5f86: $ff
	dec  c                                           ; $5f87: $0d
	nop                                              ; $5f88: $00
	ld   a, [bc]                                     ; $5f89: $0a
	inc  e                                           ; $5f8a: $1c
	dec  b                                           ; $5f8b: $05
	ld   bc, $1d01                                   ; $5f8c: $01 $01 $1d
	ld   b, b                                        ; $5f8f: $40
	dec  d                                           ; $5f90: $15
	inc  bc                                          ; $5f91: $03
	dec  d                                           ; $5f92: $15
	ld   bc, $2802                                   ; $5f93: $01 $02 $28
	nop                                              ; $5f96: $00
	ld   bc, $5858                                   ; $5f97: $01 $58 $58
	ld   [hl], c                                     ; $5f9a: $71
	ld   a, [$7810]                                  ; $5f9b: $fa $10 $78
	ld   e, c                                        ; $5f9e: $59
	ld   a, b                                        ; $5f9f: $78
	ld   e, c                                        ; $5fa0: $59
	xor  c                                           ; $5fa1: $a9
	xor  c                                           ; $5fa2: $a9
	inc  b                                           ; $5fa3: $04
	call nc, $0d55                                   ; $5fa4: $d4 $55 $0d
	ld   h, l                                        ; $5fa7: $65
	ld   [hl], h                                     ; $5fa8: $74
	sbc  c                                           ; $5fa9: $99
	sub  d                                           ; $5faa: $92
	and  c                                           ; $5fab: $a1
	sbc  a                                           ; $5fac: $9f
	dec  c                                           ; $5fad: $0d
	ld   [bc], a                                     ; $5fae: $02
	sub  l                                           ; $5faf: $95
	inc  bc                                          ; $5fb0: $03
	ld   c, e                                        ; $5fb1: $4b
	ld   d, b                                        ; $5fb2: $50
	and  c                                           ; $5fb3: $a1
	ld   [hl], l                                     ; $5fb4: $75
	sbc  a                                           ; $5fb5: $9f
	ld   [$7d00], sp                                 ; $5fb6: $08 $00 $7d
	and  c                                           ; $5fb9: $a1
	sbc  a                                           ; $5fba: $9f
	dec  c                                           ; $5fbb: $0d
	nop                                              ; $5fbc: $00
	ld   a, [bc]                                     ; $5fbd: $0a
	ld   bc, $7158                                   ; $5fbe: $01 $58 $71
	sbc  [hl]                                        ; $5fc1: $9e
	inc  bc                                          ; $5fc2: $03
	ld   l, l                                        ; $5fc3: $6d
	dec  b                                           ; $5fc4: $05
	add  hl, de                                      ; $5fc5: $19
	ld   a, h                                        ; $5fc6: $7c
	inc  bc                                          ; $5fc7: $03
	ld   l, a                                        ; $5fc8: $6f
	ld   [bc], a                                     ; $5fc9: $02
	xor  c                                           ; $5fca: $a9
	sub  d                                           ; $5fcb: $92
	sbc  a                                           ; $5fcc: $9f
	dec  c                                           ; $5fcd: $0d
	adc  c                                           ; $5fce: $89
	ld   a, b                                        ; $5fcf: $78
	sbc  [hl]                                        ; $5fd0: $9e
	ld   [bc], a                                     ; $5fd1: $02
	and  l                                           ; $5fd2: $a5
	inc  b                                           ; $5fd3: $04
	xor  d                                           ; $5fd4: $aa
	sub  b                                           ; $5fd5: $90
	ld   [bc], a                                     ; $5fd6: $02
	jr   nz, jr_044_5fdd                             ; $5fd7: $20 $04

	xor  d                                           ; $5fd9: $aa
	dec  c                                           ; $5fda: $0d
	ld   e, d                                        ; $5fdb: $5a
	and  c                                           ; $5fdc: $a1

jr_044_5fdd:
	ld   a, [hl]                                     ; $5fdd: $7e
	sbc  b                                           ; $5fde: $98
	sub  d                                           ; $5fdf: $92
	sbc  a                                           ; $5fe0: $9f
	dec  c                                           ; $5fe1: $0d
	nop                                              ; $5fe2: $00
	ld   a, [bc]                                     ; $5fe3: $0a
	dec  c                                           ; $5fe4: $0d
	nop                                              ; $5fe5: $00
	nop                                              ; $5fe6: $00
	rrca                                             ; $5fe7: $0f
	nop                                              ; $5fe8: $00
	ld   bc, $1e09                                   ; $5fe9: $01 $09 $1e
	nop                                              ; $5fec: $00
	inc  e                                           ; $5fed: $1c
	dec  b                                           ; $5fee: $05
	ld   [bc], a                                     ; $5fef: $02
	ld   [bc], a                                     ; $5ff0: $02
	ld   bc, $6e8c                                   ; $5ff1: $01 $8c $6e
	sbc  [hl]                                        ; $5ff4: $9e
	sub  [hl]                                        ; $5ff5: $96
	ei                                               ; $5ff6: $fb
	inc  b                                           ; $5ff7: $04
	sbc  [hl]                                        ; $5ff8: $9e
	ld   e, c                                        ; $5ff9: $59
	sub  a                                           ; $5ffa: $97
	add  [hl]                                        ; $5ffb: $86
	and  c                                           ; $5ffc: $a1
	ld   a, e                                        ; $5ffd: $7b
	and  c                                           ; $5ffe: $a1
	ld   a, b                                        ; $5fff: $78
	sbc  a                                           ; $6000: $9f
	dec  c                                           ; $6001: $0d
	adc  h                                           ; $6002: $8c
	ld   d, b                                        ; $6003: $50
	sbc  [hl]                                        ; $6004: $9e
	inc  b                                           ; $6005: $04
	ld   b, l                                        ; $6006: $45
	ld   [hl], c                                     ; $6007: $71
	ld   l, l                                        ; $6008: $6d
	ld   a, [hl]                                     ; $6009: $7e
	ld   [hl], c                                     ; $600a: $71
	ld   e, c                                        ; $600b: $59
	sbc  b                                           ; $600c: $98
	sub  d                                           ; $600d: $92
	ld   h, l                                        ; $600e: $65
	dec  c                                           ; $600f: $0d
	ld   h, l                                        ; $6010: $65
	sub  c                                           ; $6011: $91
	ei                                               ; $6012: $fb
	ld   a, b                                        ; $6013: $78
	ld   d, d                                        ; $6014: $52
	sbc  l                                           ; $6015: $9d
	ld   a, b                                        ; $6016: $78
	db   $fc                                         ; $6017: $fc
	sbc  a                                           ; $6018: $9f
	dec  c                                           ; $6019: $0d
	nop                                              ; $601a: $00
	ld   a, [bc]                                     ; $601b: $0a
	inc  e                                           ; $601c: $1c
	dec  b                                           ; $601d: $05
	ld   bc, $0101                                   ; $601e: $01 $01 $01
	ld   e, b                                        ; $6021: $58
	ld   [hl], c                                     ; $6022: $71
	sbc  [hl]                                        ; $6023: $9e
	inc  bc                                          ; $6024: $03
	ld   l, l                                        ; $6025: $6d
	dec  b                                           ; $6026: $05
	add  hl, de                                      ; $6027: $19
	ld   a, h                                        ; $6028: $7c
	inc  bc                                          ; $6029: $03
	ld   l, a                                        ; $602a: $6f
	ld   [bc], a                                     ; $602b: $02
	xor  c                                           ; $602c: $a9
	sub  d                                           ; $602d: $92
	sbc  a                                           ; $602e: $9f
	dec  c                                           ; $602f: $0d
	adc  c                                           ; $6030: $89
	ld   a, b                                        ; $6031: $78
	sbc  [hl]                                        ; $6032: $9e
	ld   [bc], a                                     ; $6033: $02
	and  l                                           ; $6034: $a5
	inc  b                                           ; $6035: $04
	xor  d                                           ; $6036: $aa
	sub  b                                           ; $6037: $90
	ld   [bc], a                                     ; $6038: $02
	jr   nz, jr_044_603f                             ; $6039: $20 $04

	xor  d                                           ; $603b: $aa
	dec  c                                           ; $603c: $0d
	ld   e, d                                        ; $603d: $5a
	and  c                                           ; $603e: $a1

jr_044_603f:
	ld   a, [hl]                                     ; $603f: $7e
	sbc  b                                           ; $6040: $98
	sub  d                                           ; $6041: $92
	sbc  a                                           ; $6042: $9f
	dec  c                                           ; $6043: $0d
	nop                                              ; $6044: $00
	ld   a, [bc]                                     ; $6045: $0a
	dec  c                                           ; $6046: $0d
	nop                                              ; $6047: $00
	nop                                              ; $6048: $00
	rrca                                             ; $6049: $0f
	nop                                              ; $604a: $00
	ld   bc, $1e09                                   ; $604b: $01 $09 $1e
	nop                                              ; $604e: $00
	nop                                              ; $604f: $00
	rrca                                             ; $6050: $0f
	nop                                              ; $6051: $00
	ld   bc, $0702                                   ; $6052: $01 $02 $07
	or   c                                           ; $6055: $b1
	ld   [bc], a                                     ; $6056: $02
	inc  b                                           ; $6057: $04
	add  b                                           ; $6058: $80
	jr   nc, jr_044_605c                             ; $6059: $30 $01

	rst  $38                                         ; $605b: $ff

jr_044_605c:
	jr   nz, jr_044_6060                             ; $605c: $20 $02

	nop                                              ; $605e: $00
	inc  bc                                          ; $605f: $03

jr_044_6060:
	ld   b, b                                        ; $6060: $40
	ld   bc, $2801                                   ; $6061: $01 $01 $28
	jr   nz, @+$1e                                   ; $6064: $20 $1c

	nop                                              ; $6066: $00
	ld   bc, $8d67                                   ; $6067: $01 $67 $8d
	sbc  d                                           ; $606a: $9a
	ld   h, e                                        ; $606b: $63
	and  c                                           ; $606c: $a1
	sbc  a                                           ; $606d: $9f
	dec  c                                           ; $606e: $0d
	ld   e, b                                        ; $606f: $58
	ld   a, l                                        ; $6070: $7d
	sub  [hl]                                        ; $6071: $96
	ld   d, h                                        ; $6072: $54
	ld   h, d                                        ; $6073: $62
	ld   h, h                                        ; $6074: $64
	ld   d, d                                        ; $6075: $52
	adc  h                                           ; $6076: $8c
	ld   h, a                                        ; $6077: $67
	sbc  a                                           ; $6078: $9f
	dec  c                                           ; $6079: $0d
	nop                                              ; $607a: $00
	ld   a, [bc]                                     ; $607b: $0a
	inc  e                                           ; $607c: $1c
	ld   [bc], a                                     ; $607d: $02
	nop                                              ; $607e: $00
	nop                                              ; $607f: $00
	ld   bc, $7d58                                   ; $6080: $01 $58 $7d
	sub  [hl]                                        ; $6083: $96
	ld   d, h                                        ; $6084: $54
	sbc  a                                           ; $6085: $9f
	dec  c                                           ; $6086: $0d
	nop                                              ; $6087: $00
	ld   a, [bc]                                     ; $6088: $0a
	rrca                                             ; $6089: $0f
	nop                                              ; $608a: $00
	ld   bc, $0101                                   ; $608b: $01 $01 $01
	inc  bc                                          ; $608e: $03
	ld   a, b                                        ; $608f: $78
	ld   a, c                                        ; $6090: $79
	and  b                                           ; $6091: $a0
	ld   [bc], a                                     ; $6092: $02
	jp   nz, Jump_044_5461                           ; $6093: $c2 $61 $54

	ld   e, c                                        ; $6096: $59
	ld   a, b                                        ; $6097: $78
	rst  $38                                         ; $6098: $ff
	rst  $38                                         ; $6099: $ff
	ld   bc, $0d04                                   ; $609a: $01 $04 $0d
	nop                                              ; $609d: $00
	ld   a, [bc]                                     ; $609e: $0a
	add  hl, de                                      ; $609f: $19
	dec  b                                           ; $60a0: $05
	inc  bc                                          ; $60a1: $03
	inc  b                                           ; $60a2: $04
	ld   [$8f02], sp                                 ; $60a3: $08 $02 $8f
	ld   [bc], a                                     ; $60a6: $02
	sub  b                                           ; $60a7: $90
	ld   [bc], a                                     ; $60a8: $02
	sub  c                                           ; $60a9: $91
	inc  b                                           ; $60aa: $04
	add  hl, bc                                      ; $60ab: $09
	ld   a, c                                        ; $60ac: $79
	ld   [hl], d                                     ; $60ad: $72
	ld   d, d                                        ; $60ae: $52
	ld   [hl], h                                     ; $60af: $74
	nop                                              ; $60b0: $00
	nop                                              ; $60b1: $00
	ld   e, b                                        ; $60b2: $58
	inc  b                                           ; $60b3: $04
	xor  l                                           ; $60b4: $ad
	ld   a, h                                        ; $60b5: $7c
	ld   e, b                                        ; $60b6: $58
	ld   h, e                                        ; $60b7: $63
	ld   l, e                                        ; $60b8: $6b
	ld   d, d                                        ; $60b9: $52
	and  b                                           ; $60ba: $a0
	ld   h, l                                        ; $60bb: $65
	ld   [hl], h                                     ; $60bc: $74
	adc  l                                           ; $60bd: $8d
	sbc  c                                           ; $60be: $99
	nop                                              ; $60bf: $00
	ld   bc, $8d67                                   ; $60c0: $01 $67 $8d
	sbc  d                                           ; $60c3: $9a
	ld   a, c                                        ; $60c4: $79
	ld   [hl], d                                     ; $60c5: $72
	ld   d, d                                        ; $60c6: $52
	ld   [hl], h                                     ; $60c7: $74
	ld   [bc], a                                     ; $60c8: $02
	jp   nz, $005d                                   ; $60c9: $c2 $5d $00

	ld   [bc], a                                     ; $60cc: $02
	rlca                                             ; $60cd: $07
	sbc  e                                           ; $60ce: $9b
	nop                                              ; $60cf: $00
	ld   [bc], a                                     ; $60d0: $02
	inc  bc                                          ; $60d1: $03
	ld   bc, $2000                                   ; $60d2: $01 $00 $20
	nop                                              ; $60d5: $00
	rlca                                             ; $60d6: $07
	ld   h, l                                        ; $60d7: $65
	ld   bc, $0302                                   ; $60d8: $01 $02 $03
	ld   bc, $2001                                   ; $60db: $01 $01 $20
	nop                                              ; $60de: $00
	rlca                                             ; $60df: $07
	dec  bc                                          ; $60e0: $0b
	ld   [bc], a                                     ; $60e1: $02
	ld   [bc], a                                     ; $60e2: $02
	inc  bc                                          ; $60e3: $03
	ld   bc, $2002                                   ; $60e4: $01 $02 $20
	nop                                              ; $60e7: $00
	ld   b, $7f                                      ; $60e8: $06 $7f
	ld   [bc], a                                     ; $60ea: $02
	rrca                                             ; $60eb: $0f
	nop                                              ; $60ec: $00
	ld   bc, $0401                                   ; $60ed: $01 $01 $04
	ld   [$8f02], sp                                 ; $60f0: $08 $02 $8f
	ld   [bc], a                                     ; $60f3: $02
	sub  b                                           ; $60f4: $90
	ld   [bc], a                                     ; $60f5: $02
	sub  c                                           ; $60f6: $91
	inc  b                                           ; $60f7: $04
	add  hl, bc                                      ; $60f8: $09
	ld   [hl], c                                     ; $60f9: $71
	ld   [hl], h                                     ; $60fa: $74
	inc  b                                           ; $60fb: $04
	ld   c, c                                        ; $60fc: $49
	ld   a, b                                        ; $60fd: $78
	ld   a, h                                        ; $60fe: $7c
	ld   [hl], l                                     ; $60ff: $75
	ld   h, a                                        ; $6100: $67
	ld   e, c                                        ; $6101: $59
	ld   sp, hl                                      ; $6102: $f9
	dec  c                                           ; $6103: $0d
	nop                                              ; $6104: $00
	ld   a, [bc]                                     ; $6105: $0a
	inc  e                                           ; $6106: $1c
	ld   [bc], a                                     ; $6107: $02
	ld   bc, $0101                                   ; $6108: $01 $01 $01
	ld   h, c                                        ; $610b: $61
	ld   a, h                                        ; $610c: $7c
	ld   a, [bc]                                     ; $610d: $0a
	ld   [bc], a                                     ; $610e: $02
	inc  b                                           ; $610f: $04
	and  c                                           ; $6110: $a1
	ld   h, l                                        ; $6111: $65
	ld   d, d                                        ; $6112: $52
	sbc  l                                           ; $6113: $9d
	ld   l, l                                        ; $6114: $6d
	ld   e, l                                        ; $6115: $5d
	ld   h, l                                        ; $6116: $65
	and  b                                           ; $6117: $a0
	inc  b                                           ; $6118: $04
	dec  bc                                          ; $6119: $0b
	inc  bc                                          ; $611a: $03
	ld   [hl], l                                     ; $611b: $75
	ld   a, c                                        ; $611c: $79
	ld   a, [bc]                                     ; $611d: $0a
	inc  bc                                          ; $611e: $03
	sbc  [hl]                                        ; $611f: $9e
	dec  c                                           ; $6120: $0d
	ld   l, e                                        ; $6121: $6b
	ld   a, h                                        ; $6122: $7c
	inc  b                                           ; $6123: $04
	ld   e, $04                                      ; $6124: $1e $04
	ld   c, $03                                      ; $6126: $0e $03
	jp   z, $9679                                    ; $6128: $ca $79 $96

	ld   [hl], c                                     ; $612b: $71
	ld   [hl], h                                     ; $612c: $74
	inc  bc                                          ; $612d: $03
	nop                                              ; $612e: $00
	inc  bc                                          ; $612f: $03
	ret                                              ; $6130: $c9


	ld   h, e                                        ; $6131: $63
	sbc  d                                           ; $6132: $9a
	ld   l, l                                        ; $6133: $6d
	dec  c                                           ; $6134: $0d
	inc  b                                           ; $6135: $04
	ld   e, a                                        ; $6136: $5f
	inc  b                                           ; $6137: $04
	pop  bc                                          ; $6138: $c1
	inc  b                                           ; $6139: $04
	sub  l                                           ; $613a: $95
	inc  b                                           ; $613b: $04
	ld   a, [bc]                                     ; $613c: $0a
	ld   a, h                                        ; $613d: $7c
	ld   h, c                                        ; $613e: $61
	halt                                             ; $613f: $76
	ld   [hl], l                                     ; $6140: $75
	ld   h, a                                        ; $6141: $67
	sbc  l                                           ; $6142: $9d
	sbc  a                                           ; $6143: $9f
	dec  c                                           ; $6144: $0d
	nop                                              ; $6145: $00
	ld   a, [bc]                                     ; $6146: $0a
	ld   bc, $0804                                   ; $6147: $01 $04 $08
	inc  b                                           ; $614a: $04
	cpl                                              ; $614b: $2f
	ld   a, h                                        ; $614c: $7c
	inc  b                                           ; $614d: $04
	xor  b                                           ; $614e: $a8
	dec  b                                           ; $614f: $05
	ld   hl, $05a0                                   ; $6150: $21 $a0 $05
	ld   h, b                                        ; $6153: $60
	ld   h, a                                        ; $6154: $67
	inc  bc                                          ; $6155: $03
	or   b                                           ; $6156: $b0
	ld   l, l                                        ; $6157: $6d
	ld   l, a                                        ; $6158: $6f
	ld   e, c                                        ; $6159: $59
	sub  a                                           ; $615a: $97
	dec  c                                           ; $615b: $0d
	inc  bc                                          ; $615c: $03
	add  d                                           ; $615d: $82
	ld   bc, $7c14                                   ; $615e: $01 $14 $7c
	ld   [bc], a                                     ; $6161: $02
	ld   b, l                                        ; $6162: $45
	ld   l, c                                        ; $6163: $69
	and  b                                           ; $6164: $a0
	inc  bc                                          ; $6165: $03
	sub  e                                           ; $6166: $93
	sbc  c                                           ; $6167: $99
	ld   a, h                                        ; $6168: $7c
	ld   e, d                                        ; $6169: $5a
	dec  c                                           ; $616a: $0d
	inc  b                                           ; $616b: $04
	ld   c, a                                        ; $616c: $4f
	inc  b                                           ; $616d: $04
	db   $d3                                         ; $616e: $d3
	ld   a, b                                        ; $616f: $78
	ld   a, h                                        ; $6170: $7c
	ld   [hl], l                                     ; $6171: $75
	ld   h, a                                        ; $6172: $67
	sbc  l                                           ; $6173: $9d
	sub  [hl]                                        ; $6174: $96
	sbc  a                                           ; $6175: $9f
	dec  c                                           ; $6176: $0d
	nop                                              ; $6177: $00
	ld   a, [bc]                                     ; $6178: $0a
	inc  e                                           ; $6179: $1c
	ld   [bc], a                                     ; $617a: $02
	jr   nc, jr_044_6196                             ; $617b: $30 $19

	dec  e                                           ; $617d: $1d
	ld   b, b                                        ; $617e: $40
	ld   [de], a                                     ; $617f: $12
	inc  bc                                          ; $6180: $03
	ld   [de], a                                     ; $6181: $12
	ld   bc, $2802                                   ; $6182: $01 $02 $28
	nop                                              ; $6185: $00
	ld   bc, $8958                                   ; $6186: $01 $58 $89
	adc  c                                           ; $6189: $89
	adc  c                                           ; $618a: $89
	adc  c                                           ; $618b: $89
	adc  c                                           ; $618c: $89
	adc  c                                           ; $618d: $89
	adc  c                                           ; $618e: $89
	adc  c                                           ; $618f: $89
	sbc  a                                           ; $6190: $9f
	dec  c                                           ; $6191: $0d
	ld   h, [hl]                                     ; $6192: $66
	sub  c                                           ; $6193: $91
	ld   d, b                                        ; $6194: $50
	sbc  [hl]                                        ; $6195: $9e

jr_044_6196:
	ld   [bc], a                                     ; $6196: $02
	and  l                                           ; $6197: $a5
	inc  b                                           ; $6198: $04
	xor  d                                           ; $6199: $aa
	sub  b                                           ; $619a: $90
	ld   [bc], a                                     ; $619b: $02
	jr   nz, jr_044_61a2                             ; $619c: $20 $04

	xor  d                                           ; $619e: $aa
	sbc  [hl]                                        ; $619f: $9e
	dec  c                                           ; $61a0: $0d
	ld   e, d                                        ; $61a1: $5a

jr_044_61a2:
	and  c                                           ; $61a2: $a1
	ld   a, [hl]                                     ; $61a3: $7e
	sbc  b                                           ; $61a4: $98
	ld   a, b                                        ; $61a5: $78
	ld   h, e                                        ; $61a6: $63
	ld   d, d                                        ; $61a7: $52
	sbc  a                                           ; $61a8: $9f
	dec  c                                           ; $61a9: $0d
	nop                                              ; $61aa: $00
	ld   a, [bc]                                     ; $61ab: $0a
	dec  c                                           ; $61ac: $0d
	nop                                              ; $61ad: $00
	nop                                              ; $61ae: $00
	rrca                                             ; $61af: $0f
	nop                                              ; $61b0: $00
	ld   bc, $1e09                                   ; $61b1: $01 $09 $1e
	nop                                              ; $61b4: $00
	rrca                                             ; $61b5: $0f
	nop                                              ; $61b6: $00
	ld   bc, $0201                                   ; $61b7: $01 $01 $02
	and  l                                           ; $61ba: $a5
	inc  b                                           ; $61bb: $04
	xor  d                                           ; $61bc: $aa
	ld   a, h                                        ; $61bd: $7c
	ld   e, b                                        ; $61be: $58
	inc  b                                           ; $61bf: $04
	xor  l                                           ; $61c0: $ad
	ld   h, d                                        ; $61c1: $62
	ld   a, l                                        ; $61c2: $7d
	and  c                                           ; $61c3: $a1
	dec  c                                           ; $61c4: $0d
	ld   h, d                                        ; $61c5: $62
	ld   d, d                                        ; $61c6: $52
	ld   [hl], c                                     ; $61c7: $71
	ld   h, l                                        ; $61c8: $65
	sub  l                                           ; $61c9: $95
	ld   h, e                                        ; $61ca: $63
	ld   l, c                                        ; $61cb: $69
	ld   [hl], h                                     ; $61cc: $74
	dec  c                                           ; $61cd: $0d
	ld   d, d                                        ; $61ce: $52
	ld   l, l                                        ; $61cf: $6d
	ld   l, [hl]                                     ; $61d0: $6e
	ld   e, a                                        ; $61d1: $5f
	adc  h                                           ; $61d2: $8c
	ld   l, c                                        ; $61d3: $69
	and  c                                           ; $61d4: $a1
	ld   e, c                                        ; $61d5: $59
	ld   sp, hl                                      ; $61d6: $f9
	dec  c                                           ; $61d7: $0d
	nop                                              ; $61d8: $00
	ld   a, [bc]                                     ; $61d9: $0a
	inc  e                                           ; $61da: $1c
	ld   [bc], a                                     ; $61db: $02
	inc  bc                                          ; $61dc: $03
	inc  bc                                          ; $61dd: $03
	ld   bc, $9750                                   ; $61de: $01 $50 $97
	sbc  [hl]                                        ; $61e1: $9e
	ld   h, c                                        ; $61e2: $61
	ld   a, h                                        ; $61e3: $7c
	sbc  l                                           ; $61e4: $9d
	ld   l, l                                        ; $61e5: $6d
	ld   e, l                                        ; $61e6: $5d
	ld   h, l                                        ; $61e7: $65
	halt                                             ; $61e8: $76
	sbc  [hl]                                        ; $61e9: $9e
	dec  c                                           ; $61ea: $0d
	ld   e, b                                        ; $61eb: $58
	inc  bc                                          ; $61ec: $03
	ld   l, d                                        ; $61ed: $6a
	ld   [bc], a                                     ; $61ee: $02
	jp   Jump_044_65a0                               ; $61ef: $c3 $a0 $65


	ld   l, l                                        ; $61f2: $6d
	ld   d, d                                        ; $61f3: $52
	ld   l, [hl]                                     ; $61f4: $6e
	ld   a, b                                        ; $61f5: $78
	and  c                                           ; $61f6: $a1
	ld   [hl], h                                     ; $61f7: $74
	sbc  [hl]                                        ; $61f8: $9e
	dec  c                                           ; $61f9: $0d
	ld   a, [de]                                     ; $61fa: $1a
	inc  de                                          ; $61fb: $13
	inc  b                                           ; $61fc: $04
	ld   d, b                                        ; $61fd: $50
	inc  bc                                          ; $61fe: $03
	ld   [hl], b                                     ; $61ff: $70
	ld   d, d                                        ; $6200: $52
	ld   [hl], l                                     ; $6201: $75
	ld   h, a                                        ; $6202: $67
	sbc  l                                           ; $6203: $9d
	sbc  a                                           ; $6204: $9f
	dec  c                                           ; $6205: $0d
	nop                                              ; $6206: $00
	ld   a, [bc]                                     ; $6207: $0a
	inc  e                                           ; $6208: $1c
	ld   [bc], a                                     ; $6209: $02
	inc  b                                           ; $620a: $04
	inc  b                                           ; $620b: $04
	dec  e                                           ; $620c: $1d
	ld   b, b                                        ; $620d: $40
	ld   [de], a                                     ; $620e: $12
	inc  bc                                          ; $620f: $03
	ld   [de], a                                     ; $6210: $12
	ld   bc, $2802                                   ; $6211: $01 $02 $28
	nop                                              ; $6214: $00
	ld   bc, $508c                                   ; $6215: $01 $8c $50
	sbc  [hl]                                        ; $6218: $9e
	inc  b                                           ; $6219: $04
	and  c                                           ; $621a: $a1
	ld   h, l                                        ; $621b: $65
	ld   h, a                                        ; $621c: $67
	ld   e, h                                        ; $621d: $5c
	sbc  c                                           ; $621e: $99
	sbc  l                                           ; $621f: $9d
	ld   l, l                                        ; $6220: $6d
	ld   e, l                                        ; $6221: $5d
	ld   h, l                                        ; $6222: $65
	ld   e, d                                        ; $6223: $5a
	dec  c                                           ; $6224: $0d
	inc  bc                                          ; $6225: $03
	ld   e, $78                                      ; $6226: $1e $78
	ld   a, h                                        ; $6228: $7c
	ld   a, l                                        ; $6229: $7d
	sbc  [hl]                                        ; $622a: $9e
	sbc  l                                           ; $622b: $9d
	ld   e, c                                        ; $622c: $59
	ld   [hl], c                                     ; $622d: $71
	ld   [hl], h                                     ; $622e: $74
	ld   d, d                                        ; $622f: $52
	adc  h                                           ; $6230: $8c
	ld   h, a                                        ; $6231: $67
	ld   e, d                                        ; $6232: $5a
	dec  c                                           ; $6233: $0d
	rst  $38                                         ; $6234: $ff
	rst  $38                                         ; $6235: $ff
	rst  $38                                         ; $6236: $ff
	rst  $38                                         ; $6237: $ff
	dec  c                                           ; $6238: $0d
	nop                                              ; $6239: $00
	ld   a, [bc]                                     ; $623a: $0a
	inc  e                                           ; $623b: $1c
	ld   [bc], a                                     ; $623c: $02
	ld   bc, $0101                                   ; $623d: $01 $01 $01
	ld   h, [hl]                                     ; $6240: $66
	sub  c                                           ; $6241: $91
	ld   d, b                                        ; $6242: $50
	sbc  [hl]                                        ; $6243: $9e
	ld   [bc], a                                     ; $6244: $02
	and  l                                           ; $6245: $a5
	inc  b                                           ; $6246: $04
	xor  d                                           ; $6247: $aa
	sub  b                                           ; $6248: $90
	ld   [bc], a                                     ; $6249: $02
	jr   nz, jr_044_6250                             ; $624a: $20 $04

	xor  d                                           ; $624c: $aa
	sbc  [hl]                                        ; $624d: $9e
	dec  c                                           ; $624e: $0d
	ld   e, d                                        ; $624f: $5a

jr_044_6250:
	and  c                                           ; $6250: $a1
	ld   a, [hl]                                     ; $6251: $7e
	sbc  b                                           ; $6252: $98
	ld   a, b                                        ; $6253: $78
	ld   h, e                                        ; $6254: $63
	ld   d, d                                        ; $6255: $52
	sbc  a                                           ; $6256: $9f
	dec  c                                           ; $6257: $0d
	nop                                              ; $6258: $00
	ld   a, [bc]                                     ; $6259: $0a
	nop                                              ; $625a: $00
	rrca                                             ; $625b: $0f
	nop                                              ; $625c: $00
	ld   bc, $6701                                   ; $625d: $01 $01 $67
	adc  l                                           ; $6260: $8d
	sbc  d                                           ; $6261: $9a
	ld   h, e                                        ; $6262: $63
	and  c                                           ; $6263: $a1
	ld   a, h                                        ; $6264: $7c
	ld   [bc], a                                     ; $6265: $02
	jp   $0d5a                                       ; $6266: $c3 $5a $0d


	inc  b                                           ; $6269: $04
	dec  hl                                          ; $626a: $2b
	sbc  b                                           ; $626b: $98
	ld   l, l                                        ; $626c: $6d
	ld   d, d                                        ; $626d: $52
	ld   a, h                                        ; $626e: $7c
	ld   [hl], l                                     ; $626f: $75
	ld   h, a                                        ; $6270: $67
	ld   e, d                                        ; $6271: $5a
	rst  $38                                         ; $6272: $ff
	rst  $38                                         ; $6273: $ff
	dec  c                                           ; $6274: $0d
	nop                                              ; $6275: $00
	ld   a, [bc]                                     ; $6276: $0a
	inc  e                                           ; $6277: $1c
	ld   [bc], a                                     ; $6278: $02
	inc  bc                                          ; $6279: $03
	inc  bc                                          ; $627a: $03
	ld   bc, $9e78                                   ; $627b: $01 $78 $9e
	ld   a, b                                        ; $627e: $78
	and  c                                           ; $627f: $a1
	ld   [hl], l                                     ; $6280: $75
	ld   h, a                                        ; $6281: $67
	ld   [hl], c                                     ; $6282: $71
	ld   [hl], h                                     ; $6283: $74
	db   $fc                                         ; $6284: $fc
	ld   a, [$610d]                                  ; $6285: $fa $0d $61
	ld   a, h                                        ; $6288: $7c
	ret                                              ; $6289: $c9


	call nz, $bad8                                   ; $628a: $c4 $d8 $ba
	ret  nz                                          ; $628d: $c0

	and  e                                           ; $628e: $a3
	ld   a, h                                        ; $628f: $7c
	ld   h, c                                        ; $6290: $61
	halt                                             ; $6291: $76
	and  b                                           ; $6292: $a0
	dec  c                                           ; $6293: $0d
	inc  b                                           ; $6294: $04
	dec  hl                                          ; $6295: $2b
	sub  a                                           ; $6296: $97
	ld   a, b                                        ; $6297: $78
	ld   d, d                                        ; $6298: $52
	halt                                             ; $6299: $76
	ld   e, b                                        ; $629a: $58
	ld   [hl], c                                     ; $629b: $71
	ld   h, l                                        ; $629c: $65
	sub  c                                           ; $629d: $91
	sbc  c                                           ; $629e: $99
	ld   a, h                                        ; $629f: $7c
	ld   sp, hl                                      ; $62a0: $f9
	dec  c                                           ; $62a1: $0d
	nop                                              ; $62a2: $00
	ld   a, [bc]                                     ; $62a3: $0a
	inc  e                                           ; $62a4: $1c
	ld   [bc], a                                     ; $62a5: $02
	dec  b                                           ; $62a6: $05
	dec  b                                           ; $62a7: $05
	dec  e                                           ; $62a8: $1d
	ld   b, b                                        ; $62a9: $40
	ld   [de], a                                     ; $62aa: $12
	inc  bc                                          ; $62ab: $03
	ld   [de], a                                     ; $62ac: $12
	ld   bc, $2903                                   ; $62ad: $01 $03 $29
	nop                                              ; $62b0: $00
	ld   bc, $9e50                                   ; $62b1: $01 $50 $9e
	ld   d, b                                        ; $62b4: $50
	ld   d, b                                        ; $62b5: $50
	rst  $38                                         ; $62b6: $ff
	rst  $38                                         ; $62b7: $ff
	dec  c                                           ; $62b8: $0d
	adc  a                                           ; $62b9: $8f
	adc  h                                           ; $62ba: $8c
	ld   d, d                                        ; $62bb: $52
	ld   e, d                                        ; $62bc: $5a
	ld   h, l                                        ; $62bd: $65
	adc  h                                           ; $62be: $8c
	ld   h, a                                        ; $62bf: $67
	sbc  l                                           ; $62c0: $9d
	rst  $38                                         ; $62c1: $ff
	rst  $38                                         ; $62c2: $ff
	dec  c                                           ; $62c3: $0d
	nop                                              ; $62c4: $00
	ld   a, [bc]                                     ; $62c5: $0a
	dec  c                                           ; $62c6: $0d
	nop                                              ; $62c7: $00
	nop                                              ; $62c8: $00
	rrca                                             ; $62c9: $0f
	nop                                              ; $62ca: $00
	ld   bc, $1e09                                   ; $62cb: $01 $09 $1e
	nop                                              ; $62ce: $00
	inc  e                                           ; $62cf: $1c
	ld   [bc], a                                     ; $62d0: $02
	nop                                              ; $62d1: $00
	nop                                              ; $62d2: $00
	ld   bc, $6d9d                                   ; $62d3: $01 $9d $6d
	ld   e, l                                        ; $62d6: $5d
	ld   h, l                                        ; $62d7: $65
	ld   a, c                                        ; $62d8: $79
	ld   [bc], a                                     ; $62d9: $02
	sub  l                                           ; $62da: $95
	halt                                             ; $62db: $76
	sbc  d                                           ; $62dc: $9a
	sbc  c                                           ; $62dd: $99
	ld   a, h                                        ; $62de: $7c
	ld   a, l                                        ; $62df: $7d
	dec  c                                           ; $62e0: $0d
	sbc  l                                           ; $62e1: $9d
	ld   e, c                                        ; $62e2: $59
	sbc  b                                           ; $62e3: $98
	adc  h                                           ; $62e4: $8c
	ld   h, a                                        ; $62e5: $67
	ld   e, d                                        ; $62e6: $5a
	sbc  [hl]                                        ; $62e7: $9e
	ld   l, e                                        ; $62e8: $6b
	sbc  e                                           ; $62e9: $9b
	ld   l, e                                        ; $62ea: $6b
	sbc  e                                           ; $62eb: $9b
	dec  c                                           ; $62ec: $0d
	inc  bc                                          ; $62ed: $03
	ld   l, l                                        ; $62ee: $6d
	dec  b                                           ; $62ef: $05
	add  hl, de                                      ; $62f0: $19
	ld   a, h                                        ; $62f1: $7c
	inc  bc                                          ; $62f2: $03
	ld   l, a                                        ; $62f3: $6f
	ld   [bc], a                                     ; $62f4: $02
	xor  c                                           ; $62f5: $a9
	ld   h, [hl]                                     ; $62f6: $66
	sub  c                                           ; $62f7: $91
	ld   a, b                                        ; $62f8: $78
	ld   e, l                                        ; $62f9: $5d
	ld   [hl], c                                     ; $62fa: $71
	ld   [hl], h                                     ; $62fb: $74
	sbc  a                                           ; $62fc: $9f
	dec  c                                           ; $62fd: $0d
	nop                                              ; $62fe: $00
	ld   a, [bc]                                     ; $62ff: $0a
	nop                                              ; $6300: $00
	ld   bc, $8d67                                   ; $6301: $01 $67 $8d
	sbc  d                                           ; $6304: $9a
	ld   h, e                                        ; $6305: $63
	and  c                                           ; $6306: $a1
	sbc  a                                           ; $6307: $9f
	dec  c                                           ; $6308: $0d
	ld   e, b                                        ; $6309: $58
	ld   a, l                                        ; $630a: $7d
	sub  [hl]                                        ; $630b: $96
	ld   d, h                                        ; $630c: $54
	ld   h, d                                        ; $630d: $62
	ld   h, h                                        ; $630e: $64
	ld   d, d                                        ; $630f: $52
	adc  h                                           ; $6310: $8c
	ld   h, a                                        ; $6311: $67
	sbc  a                                           ; $6312: $9f
	dec  c                                           ; $6313: $0d
	nop                                              ; $6314: $00
	ld   a, [bc]                                     ; $6315: $0a
	dec  c                                           ; $6316: $0d
	ld   [bc], a                                     ; $6317: $02
	nop                                              ; $6318: $00
	rrca                                             ; $6319: $0f
	ld   [bc], a                                     ; $631a: $02
	nop                                              ; $631b: $00
	ld   bc, $9750                                   ; $631c: $01 $50 $97
	sbc  [hl]                                        ; $631f: $9e
	ld   [$6308], sp                                 ; $6320: $08 $08 $63
	and  c                                           ; $6323: $a1
	sbc  a                                           ; $6324: $9f
	dec  c                                           ; $6325: $0d
	ld   a, b                                        ; $6326: $78
	and  c                                           ; $6327: $a1
	ld   [hl], l                                     ; $6328: $75
	sub  b                                           ; $6329: $90
	sbc  [hl]                                        ; $632a: $9e
	dec  b                                           ; $632b: $05
	ld   b, l                                        ; $632c: $45
	inc  b                                           ; $632d: $04
	xor  d                                           ; $632e: $aa
	ld   a, l                                        ; $632f: $7d
	dec  c                                           ; $6330: $0d
	inc  b                                           ; $6331: $04
	ld   c, $04                                      ; $6332: $0e $04
	adc  h                                           ; $6334: $8c
	ld   l, [hl]                                     ; $6335: $6e
	ld   [hl], c                                     ; $6336: $71
	ld   l, l                                        ; $6337: $6d
	ld   l, e                                        ; $6338: $6b
	ld   d, h                                        ; $6339: $54
	ld   [hl], l                                     ; $633a: $75
	rst  $38                                         ; $633b: $ff
	dec  c                                           ; $633c: $0d
	nop                                              ; $633d: $00
	ld   a, [bc]                                     ; $633e: $0a
	ld   bc, $0804                                   ; $633f: $01 $04 $08
	ld   [bc], a                                     ; $6342: $02
	sub  c                                           ; $6343: $91
	ld   a, c                                        ; $6344: $79
	ld   a, l                                        ; $6345: $7d
	ld   d, b                                        ; $6346: $50
	ld   d, b                                        ; $6347: $50
	ld   d, d                                        ; $6348: $52
	ld   d, h                                        ; $6349: $54
	inc  b                                           ; $634a: $04
	ld   a, b                                        ; $634b: $78
	sub  b                                           ; $634c: $90
	dec  c                                           ; $634d: $0d
	ld   d, d                                        ; $634e: $52
	sub  a                                           ; $634f: $97
	ld   [hl], c                                     ; $6350: $71
	ld   h, l                                        ; $6351: $65
	sub  c                                           ; $6352: $91
	ld   d, d                                        ; $6353: $52
	adc  h                                           ; $6354: $8c
	ld   h, a                                        ; $6355: $67
	ld   e, d                                        ; $6356: $5a
	sbc  [hl]                                        ; $6357: $9e
	dec  c                                           ; $6358: $0d
	ld   e, b                                        ; $6359: $58
	ld   [bc], a                                     ; $635a: $02
	and  c                                           ; $635b: $a1
	ld   a, c                                        ; $635c: $79
	ld   a, b                                        ; $635d: $78
	ld   h, e                                        ; $635e: $63
	sub  a                                           ; $635f: $97
	ld   a, b                                        ; $6360: $78
	ld   d, d                                        ; $6361: $52
	sub  [hl]                                        ; $6362: $96
	ld   d, h                                        ; $6363: $54
	ld   a, c                                        ; $6364: $79
	sbc  a                                           ; $6365: $9f
	dec  c                                           ; $6366: $0d
	nop                                              ; $6367: $00
	ld   a, [bc]                                     ; $6368: $0a
	rrca                                             ; $6369: $0f
	nop                                              ; $636a: $00
	ld   bc, $7d01                                   ; $636b: $01 $01 $7d
	ld   d, b                                        ; $636e: $50
	rst  $38                                         ; $636f: $ff
	rst  $38                                         ; $6370: $ff
	dec  c                                           ; $6371: $0d
	ld   bc, $5203                                   ; $6372: $01 $03 $52
	ld   [hl], d                                     ; $6375: $72
	ld   a, c                                        ; $6376: $79
	ld   a, b                                        ; $6377: $78
	ld   [hl], c                                     ; $6378: $71
	ld   l, l                                        ; $6379: $6d
	sub  a                                           ; $637a: $97
	sbc  [hl]                                        ; $637b: $9e
	dec  c                                           ; $637c: $0d
	db   $10                                         ; $637d: $10
	inc  b                                           ; $637e: $04
	rst  ToBoot                                         ; $637f: $c7
	inc  bc                                          ; $6380: $03
	ld   c, a                                        ; $6381: $4f
	ld   [bc], a                                     ; $6382: $02
	ld   a, d                                        ; $6383: $7a
	ld   d, [hl]                                     ; $6384: $56
	ld   [hl], h                                     ; $6385: $74
	ld   e, l                                        ; $6386: $5d
	sbc  d                                           ; $6387: $9a
	sbc  c                                           ; $6388: $99
	and  c                                           ; $6389: $a1
	ld   l, [hl]                                     ; $638a: $6e
	rst  $38                                         ; $638b: $ff
	ld   bc, $0d04                                   ; $638c: $01 $04 $0d
	nop                                              ; $638f: $00
	ld   a, [bc]                                     ; $6390: $0a
	ld   bc, $0301                                   ; $6391: $01 $01 $03
	adc  h                                           ; $6394: $8c
	ld   d, b                                        ; $6395: $50
	ld   d, d                                        ; $6396: $52
	ld   d, d                                        ; $6397: $52
	ld   e, c                                        ; $6398: $59
	rst  $38                                         ; $6399: $ff
	rst  $38                                         ; $639a: $ff
	dec  c                                           ; $639b: $0d
	db   $10                                         ; $639c: $10
	ld   l, e                                        ; $639d: $6b
	ld   d, h                                        ; $639e: $54
	ld   l, [hl]                                     ; $639f: $6e
	sbc  [hl]                                        ; $63a0: $9e
	inc  b                                           ; $63a1: $04
	ld   c, c                                        ; $63a2: $49
	ld   e, c                                        ; $63a3: $59
	inc  bc                                          ; $63a4: $03
	dec  d                                           ; $63a5: $15
	inc  b                                           ; $63a6: $04
	cp   a                                           ; $63a7: $bf
	and  b                                           ; $63a8: $a0
	ld   h, l                                        ; $63a9: $65
	sub  [hl]                                        ; $63aa: $96
	ld   d, h                                        ; $63ab: $54
	ld   bc, $0d04                                   ; $63ac: $01 $04 $0d
	nop                                              ; $63af: $00
	ld   a, [bc]                                     ; $63b0: $0a
	add  hl, de                                      ; $63b1: $19
	dec  b                                           ; $63b2: $05
	inc  bc                                          ; $63b3: $03
	inc  b                                           ; $63b4: $04
	ld   [$8f02], sp                                 ; $63b5: $08 $02 $8f
	ld   [bc], a                                     ; $63b8: $02
	sub  b                                           ; $63b9: $90
	ld   [bc], a                                     ; $63ba: $02
	sub  c                                           ; $63bb: $91
	inc  b                                           ; $63bc: $04
	add  hl, bc                                      ; $63bd: $09
	ld   a, c                                        ; $63be: $79
	ld   [hl], d                                     ; $63bf: $72
	ld   d, d                                        ; $63c0: $52
	ld   [hl], h                                     ; $63c1: $74
	nop                                              ; $63c2: $00
	nop                                              ; $63c3: $00
	ld   e, b                                        ; $63c4: $58
	inc  b                                           ; $63c5: $04
	xor  l                                           ; $63c6: $ad
	ld   a, h                                        ; $63c7: $7c
	ld   e, b                                        ; $63c8: $58
	ld   h, e                                        ; $63c9: $63
	ld   l, e                                        ; $63ca: $6b
	ld   d, d                                        ; $63cb: $52
	and  b                                           ; $63cc: $a0
	ld   h, l                                        ; $63cd: $65
	ld   [hl], h                                     ; $63ce: $74
	adc  l                                           ; $63cf: $8d
	sbc  c                                           ; $63d0: $99
	nop                                              ; $63d1: $00
	ld   bc, $8d67                                   ; $63d2: $01 $67 $8d
	sbc  d                                           ; $63d5: $9a
	ld   a, c                                        ; $63d6: $79
	ld   [hl], d                                     ; $63d7: $72
	ld   d, d                                        ; $63d8: $52
	ld   [hl], h                                     ; $63d9: $74
	ld   [bc], a                                     ; $63da: $02
	jp   nz, $005d                                   ; $63db: $c2 $5d $00

	ld   [bc], a                                     ; $63de: $02
	rlca                                             ; $63df: $07
	sbc  e                                           ; $63e0: $9b
	nop                                              ; $63e1: $00
	ld   [bc], a                                     ; $63e2: $02
	inc  bc                                          ; $63e3: $03
	ld   bc, $2000                                   ; $63e4: $01 $00 $20
	nop                                              ; $63e7: $00
	rlca                                             ; $63e8: $07
	ld   h, l                                        ; $63e9: $65
	ld   bc, $0302                                   ; $63ea: $01 $02 $03
	ld   bc, $2001                                   ; $63ed: $01 $01 $20
	nop                                              ; $63f0: $00
	rlca                                             ; $63f1: $07
	dec  bc                                          ; $63f2: $0b
	ld   [bc], a                                     ; $63f3: $02
	ld   [bc], a                                     ; $63f4: $02
	inc  bc                                          ; $63f5: $03
	ld   bc, $2002                                   ; $63f6: $01 $02 $20
	nop                                              ; $63f9: $00
	ld   b, $7f                                      ; $63fa: $06 $7f
	ld   [bc], a                                     ; $63fc: $02
	rrca                                             ; $63fd: $0f
	nop                                              ; $63fe: $00
	ld   bc, $0401                                   ; $63ff: $01 $01 $04
	ld   [$8f02], sp                                 ; $6402: $08 $02 $8f
	ld   [bc], a                                     ; $6405: $02
	sub  b                                           ; $6406: $90
	ld   [bc], a                                     ; $6407: $02
	sub  c                                           ; $6408: $91
	inc  b                                           ; $6409: $04
	add  hl, bc                                      ; $640a: $09
	ld   [hl], c                                     ; $640b: $71
	ld   [hl], h                                     ; $640c: $74
	inc  b                                           ; $640d: $04
	ld   c, c                                        ; $640e: $49
	ld   a, b                                        ; $640f: $78
	ld   a, h                                        ; $6410: $7c
	ld   [hl], l                                     ; $6411: $75
	ld   h, a                                        ; $6412: $67
	ld   e, c                                        ; $6413: $59
	ld   sp, hl                                      ; $6414: $f9
	dec  c                                           ; $6415: $0d
	nop                                              ; $6416: $00
	ld   a, [bc]                                     ; $6417: $0a
	inc  e                                           ; $6418: $1c
	ld   [bc], a                                     ; $6419: $02
	ld   bc, $0101                                   ; $641a: $01 $01 $01
	ld   h, c                                        ; $641d: $61
	ld   a, h                                        ; $641e: $7c
	ld   a, [bc]                                     ; $641f: $0a
	ld   [bc], a                                     ; $6420: $02
	inc  b                                           ; $6421: $04
	and  c                                           ; $6422: $a1
	ld   h, l                                        ; $6423: $65
	ld   d, d                                        ; $6424: $52
	sbc  l                                           ; $6425: $9d
	ld   l, l                                        ; $6426: $6d
	ld   e, l                                        ; $6427: $5d
	ld   h, l                                        ; $6428: $65
	and  b                                           ; $6429: $a0
	inc  b                                           ; $642a: $04
	dec  bc                                          ; $642b: $0b
	inc  bc                                          ; $642c: $03
	ld   [hl], l                                     ; $642d: $75
	ld   a, c                                        ; $642e: $79
	sbc  [hl]                                        ; $642f: $9e
	ld   a, [bc]                                     ; $6430: $0a
	inc  bc                                          ; $6431: $03
	dec  c                                           ; $6432: $0d
	ld   l, e                                        ; $6433: $6b
	ld   a, h                                        ; $6434: $7c
	inc  b                                           ; $6435: $04
	ld   e, $04                                      ; $6436: $1e $04
	ld   c, $03                                      ; $6438: $0e $03
	jp   z, $9679                                    ; $643a: $ca $79 $96

	ld   [hl], c                                     ; $643d: $71
	ld   [hl], h                                     ; $643e: $74
	inc  bc                                          ; $643f: $03
	nop                                              ; $6440: $00
	inc  bc                                          ; $6441: $03
	ret                                              ; $6442: $c9


	ld   h, e                                        ; $6443: $63
	sbc  d                                           ; $6444: $9a
	ld   l, l                                        ; $6445: $6d
	dec  c                                           ; $6446: $0d
	inc  b                                           ; $6447: $04
	ld   e, a                                        ; $6448: $5f
	inc  b                                           ; $6449: $04
	pop  bc                                          ; $644a: $c1
	inc  b                                           ; $644b: $04
	sub  l                                           ; $644c: $95
	inc  b                                           ; $644d: $04
	ld   a, [bc]                                     ; $644e: $0a
	ld   a, h                                        ; $644f: $7c
	ld   h, c                                        ; $6450: $61
	halt                                             ; $6451: $76
	ld   [hl], l                                     ; $6452: $75
	ld   h, a                                        ; $6453: $67
	sbc  l                                           ; $6454: $9d
	sbc  a                                           ; $6455: $9f
	dec  c                                           ; $6456: $0d
	nop                                              ; $6457: $00
	ld   a, [bc]                                     ; $6458: $0a
	ld   bc, $0804                                   ; $6459: $01 $04 $08
	inc  b                                           ; $645c: $04
	cpl                                              ; $645d: $2f
	ld   a, h                                        ; $645e: $7c
	inc  b                                           ; $645f: $04
	xor  b                                           ; $6460: $a8
	dec  b                                           ; $6461: $05
	ld   hl, $05a0                                   ; $6462: $21 $a0 $05
	ld   h, b                                        ; $6465: $60
	ld   h, a                                        ; $6466: $67
	inc  bc                                          ; $6467: $03
	or   b                                           ; $6468: $b0
	ld   l, l                                        ; $6469: $6d
	ld   l, a                                        ; $646a: $6f
	ld   e, c                                        ; $646b: $59
	sub  a                                           ; $646c: $97
	dec  c                                           ; $646d: $0d
	inc  bc                                          ; $646e: $03
	add  d                                           ; $646f: $82
	ld   bc, $7c14                                   ; $6470: $01 $14 $7c
	ld   [bc], a                                     ; $6473: $02
	ld   b, l                                        ; $6474: $45
	ld   l, c                                        ; $6475: $69
	and  b                                           ; $6476: $a0
	inc  bc                                          ; $6477: $03
	sub  e                                           ; $6478: $93
	sbc  c                                           ; $6479: $99
	ld   a, h                                        ; $647a: $7c
	ld   e, d                                        ; $647b: $5a
	dec  c                                           ; $647c: $0d
	inc  b                                           ; $647d: $04
	ld   c, a                                        ; $647e: $4f
	inc  b                                           ; $647f: $04
	db   $d3                                         ; $6480: $d3
	ld   a, b                                        ; $6481: $78
	ld   a, h                                        ; $6482: $7c
	ld   [hl], l                                     ; $6483: $75
	ld   h, a                                        ; $6484: $67
	sbc  l                                           ; $6485: $9d
	sub  [hl]                                        ; $6486: $96
	sbc  a                                           ; $6487: $9f
	dec  c                                           ; $6488: $0d
	nop                                              ; $6489: $00
	ld   a, [bc]                                     ; $648a: $0a
	inc  e                                           ; $648b: $1c
	ld   [bc], a                                     ; $648c: $02
	jr   nc, jr_044_64a8                             ; $648d: $30 $19

	dec  e                                           ; $648f: $1d
	ld   b, b                                        ; $6490: $40
	ld   [de], a                                     ; $6491: $12
	inc  bc                                          ; $6492: $03
	ld   [de], a                                     ; $6493: $12
	ld   bc, $2802                                   ; $6494: $01 $02 $28
	nop                                              ; $6497: $00
	ld   bc, $8958                                   ; $6498: $01 $58 $89
	adc  c                                           ; $649b: $89
	adc  c                                           ; $649c: $89
	adc  c                                           ; $649d: $89
	adc  c                                           ; $649e: $89
	adc  c                                           ; $649f: $89
	adc  c                                           ; $64a0: $89
	adc  c                                           ; $64a1: $89
	sbc  a                                           ; $64a2: $9f
	dec  c                                           ; $64a3: $0d
	ld   h, [hl]                                     ; $64a4: $66
	sub  c                                           ; $64a5: $91
	ld   d, b                                        ; $64a6: $50
	sbc  [hl]                                        ; $64a7: $9e

jr_044_64a8:
	ld   [bc], a                                     ; $64a8: $02
	and  l                                           ; $64a9: $a5
	inc  b                                           ; $64aa: $04
	xor  d                                           ; $64ab: $aa
	sub  b                                           ; $64ac: $90
	ld   [bc], a                                     ; $64ad: $02
	jr   nz, jr_044_64b4                             ; $64ae: $20 $04

	xor  d                                           ; $64b0: $aa
	sbc  [hl]                                        ; $64b1: $9e
	dec  c                                           ; $64b2: $0d
	ld   e, d                                        ; $64b3: $5a

jr_044_64b4:
	and  c                                           ; $64b4: $a1
	ld   a, [hl]                                     ; $64b5: $7e
	sbc  b                                           ; $64b6: $98
	ld   a, b                                        ; $64b7: $78
	ld   h, e                                        ; $64b8: $63
	ld   d, d                                        ; $64b9: $52
	sbc  a                                           ; $64ba: $9f
	dec  c                                           ; $64bb: $0d
	nop                                              ; $64bc: $00
	ld   a, [bc]                                     ; $64bd: $0a
	dec  c                                           ; $64be: $0d
	nop                                              ; $64bf: $00
	nop                                              ; $64c0: $00
	rrca                                             ; $64c1: $0f
	nop                                              ; $64c2: $00
	ld   bc, $1e09                                   ; $64c3: $01 $09 $1e
	nop                                              ; $64c6: $00
	rrca                                             ; $64c7: $0f
	nop                                              ; $64c8: $00
	ld   bc, $0201                                   ; $64c9: $01 $01 $02
	and  l                                           ; $64cc: $a5
	inc  b                                           ; $64cd: $04
	xor  d                                           ; $64ce: $aa
	ld   a, h                                        ; $64cf: $7c
	ld   e, b                                        ; $64d0: $58
	inc  b                                           ; $64d1: $04
	xor  l                                           ; $64d2: $ad
	ld   h, d                                        ; $64d3: $62
	ld   a, l                                        ; $64d4: $7d
	and  c                                           ; $64d5: $a1
	dec  c                                           ; $64d6: $0d
	ld   h, d                                        ; $64d7: $62
	ld   d, d                                        ; $64d8: $52
	ld   [hl], c                                     ; $64d9: $71
	ld   h, l                                        ; $64da: $65
	sub  l                                           ; $64db: $95
	ld   h, e                                        ; $64dc: $63
	ld   l, c                                        ; $64dd: $69
	ld   [hl], h                                     ; $64de: $74
	dec  c                                           ; $64df: $0d
	ld   d, d                                        ; $64e0: $52
	ld   l, l                                        ; $64e1: $6d
	ld   l, [hl]                                     ; $64e2: $6e
	ld   e, a                                        ; $64e3: $5f
	adc  h                                           ; $64e4: $8c
	ld   l, c                                        ; $64e5: $69
	and  c                                           ; $64e6: $a1
	ld   e, c                                        ; $64e7: $59
	ld   sp, hl                                      ; $64e8: $f9
	dec  c                                           ; $64e9: $0d
	nop                                              ; $64ea: $00
	ld   a, [bc]                                     ; $64eb: $0a
	inc  e                                           ; $64ec: $1c
	ld   [bc], a                                     ; $64ed: $02
	inc  bc                                          ; $64ee: $03
	inc  bc                                          ; $64ef: $03
	ld   bc, $9750                                   ; $64f0: $01 $50 $97
	sbc  [hl]                                        ; $64f3: $9e
	ld   h, c                                        ; $64f4: $61
	ld   a, h                                        ; $64f5: $7c
	sbc  l                                           ; $64f6: $9d
	ld   l, l                                        ; $64f7: $6d
	ld   e, l                                        ; $64f8: $5d
	ld   h, l                                        ; $64f9: $65
	halt                                             ; $64fa: $76
	sbc  [hl]                                        ; $64fb: $9e
	dec  c                                           ; $64fc: $0d
	ld   e, b                                        ; $64fd: $58
	inc  bc                                          ; $64fe: $03
	ld   l, d                                        ; $64ff: $6a
	ld   [bc], a                                     ; $6500: $02
	jp   Jump_044_65a0                               ; $6501: $c3 $a0 $65


	ld   l, l                                        ; $6504: $6d
	ld   d, d                                        ; $6505: $52
	ld   l, [hl]                                     ; $6506: $6e
	ld   a, b                                        ; $6507: $78
	and  c                                           ; $6508: $a1
	ld   [hl], h                                     ; $6509: $74
	sbc  [hl]                                        ; $650a: $9e
	dec  c                                           ; $650b: $0d
	ld   a, [de]                                     ; $650c: $1a
	inc  de                                          ; $650d: $13
	inc  b                                           ; $650e: $04
	ld   d, b                                        ; $650f: $50
	inc  bc                                          ; $6510: $03
	ld   [hl], b                                     ; $6511: $70
	ld   d, d                                        ; $6512: $52
	ld   [hl], l                                     ; $6513: $75
	ld   h, a                                        ; $6514: $67
	sbc  l                                           ; $6515: $9d
	sbc  a                                           ; $6516: $9f
	dec  c                                           ; $6517: $0d
	nop                                              ; $6518: $00
	ld   a, [bc]                                     ; $6519: $0a
	inc  e                                           ; $651a: $1c
	ld   [bc], a                                     ; $651b: $02
	inc  b                                           ; $651c: $04
	inc  b                                           ; $651d: $04
	dec  e                                           ; $651e: $1d
	ld   b, b                                        ; $651f: $40
	ld   [de], a                                     ; $6520: $12
	inc  bc                                          ; $6521: $03
	ld   [de], a                                     ; $6522: $12
	ld   bc, $2802                                   ; $6523: $01 $02 $28
	nop                                              ; $6526: $00
	ld   bc, $508c                                   ; $6527: $01 $8c $50
	sbc  [hl]                                        ; $652a: $9e
	inc  b                                           ; $652b: $04
	and  c                                           ; $652c: $a1
	ld   h, l                                        ; $652d: $65
	ld   h, a                                        ; $652e: $67
	ld   e, h                                        ; $652f: $5c
	sbc  c                                           ; $6530: $99
	sbc  l                                           ; $6531: $9d
	ld   l, l                                        ; $6532: $6d
	ld   e, l                                        ; $6533: $5d
	ld   h, l                                        ; $6534: $65
	ld   e, d                                        ; $6535: $5a
	dec  c                                           ; $6536: $0d
	inc  bc                                          ; $6537: $03
	ld   e, $78                                      ; $6538: $1e $78
	ld   a, h                                        ; $653a: $7c
	ld   a, l                                        ; $653b: $7d
	sbc  [hl]                                        ; $653c: $9e
	sbc  l                                           ; $653d: $9d
	ld   e, c                                        ; $653e: $59
	ld   [hl], c                                     ; $653f: $71
	ld   [hl], h                                     ; $6540: $74
	ld   d, d                                        ; $6541: $52
	adc  h                                           ; $6542: $8c
	ld   h, a                                        ; $6543: $67
	ld   e, d                                        ; $6544: $5a
	dec  c                                           ; $6545: $0d
	rst  $38                                         ; $6546: $ff
	rst  $38                                         ; $6547: $ff
	rst  $38                                         ; $6548: $ff
	rst  $38                                         ; $6549: $ff
	dec  c                                           ; $654a: $0d
	nop                                              ; $654b: $00
	ld   a, [bc]                                     ; $654c: $0a
	inc  e                                           ; $654d: $1c
	ld   [bc], a                                     ; $654e: $02
	ld   bc, $0101                                   ; $654f: $01 $01 $01
	ld   h, [hl]                                     ; $6552: $66
	sub  c                                           ; $6553: $91
	ld   d, b                                        ; $6554: $50
	sbc  [hl]                                        ; $6555: $9e
	ld   [bc], a                                     ; $6556: $02
	and  l                                           ; $6557: $a5
	inc  b                                           ; $6558: $04
	xor  d                                           ; $6559: $aa
	sub  b                                           ; $655a: $90

Jump_044_655b:
	ld   [bc], a                                     ; $655b: $02
	jr   nz, jr_044_6562                             ; $655c: $20 $04

	xor  d                                           ; $655e: $aa
	sbc  [hl]                                        ; $655f: $9e
	dec  c                                           ; $6560: $0d
	ld   e, d                                        ; $6561: $5a

jr_044_6562:
	and  c                                           ; $6562: $a1
	ld   a, [hl]                                     ; $6563: $7e
	sbc  b                                           ; $6564: $98
	ld   a, b                                        ; $6565: $78
	ld   h, e                                        ; $6566: $63
	ld   d, d                                        ; $6567: $52
	sbc  a                                           ; $6568: $9f
	dec  c                                           ; $6569: $0d
	nop                                              ; $656a: $00
	ld   a, [bc]                                     ; $656b: $0a
	nop                                              ; $656c: $00
	rrca                                             ; $656d: $0f
	nop                                              ; $656e: $00
	ld   bc, $6701                                   ; $656f: $01 $01 $67
	adc  l                                           ; $6572: $8d
	sbc  d                                           ; $6573: $9a
	ld   h, e                                        ; $6574: $63
	and  c                                           ; $6575: $a1

Call_044_6576:
	ld   a, h                                        ; $6576: $7c
	ld   [bc], a                                     ; $6577: $02
	jp   $0d5a                                       ; $6578: $c3 $5a $0d


	inc  b                                           ; $657b: $04
	dec  hl                                          ; $657c: $2b
	sbc  b                                           ; $657d: $98
	ld   l, l                                        ; $657e: $6d
	ld   d, d                                        ; $657f: $52
	ld   a, h                                        ; $6580: $7c
	ld   [hl], l                                     ; $6581: $75
	ld   h, a                                        ; $6582: $67
	ld   e, d                                        ; $6583: $5a
	rst  $38                                         ; $6584: $ff
	rst  $38                                         ; $6585: $ff
	dec  c                                           ; $6586: $0d
	nop                                              ; $6587: $00
	ld   a, [bc]                                     ; $6588: $0a
	inc  e                                           ; $6589: $1c
	ld   [bc], a                                     ; $658a: $02
	inc  bc                                          ; $658b: $03
	inc  bc                                          ; $658c: $03
	ld   bc, $9e78                                   ; $658d: $01 $78 $9e
	ld   a, b                                        ; $6590: $78
	and  c                                           ; $6591: $a1
	ld   [hl], l                                     ; $6592: $75
	ld   h, a                                        ; $6593: $67
	ld   [hl], c                                     ; $6594: $71
	ld   [hl], h                                     ; $6595: $74
	db   $fc                                         ; $6596: $fc
	ld   a, [$610d]                                  ; $6597: $fa $0d $61
	ld   a, h                                        ; $659a: $7c
	ret                                              ; $659b: $c9


	call nz, $bad8                                   ; $659c: $c4 $d8 $ba
	ret  nz                                          ; $659f: $c0

Jump_044_65a0:
	and  e                                           ; $65a0: $a3
	ld   a, h                                        ; $65a1: $7c
	ld   h, c                                        ; $65a2: $61
	halt                                             ; $65a3: $76
	and  b                                           ; $65a4: $a0
	dec  c                                           ; $65a5: $0d
	inc  b                                           ; $65a6: $04
	dec  hl                                          ; $65a7: $2b
	sub  a                                           ; $65a8: $97
	ld   a, b                                        ; $65a9: $78
	ld   d, d                                        ; $65aa: $52
	halt                                             ; $65ab: $76
	ld   e, b                                        ; $65ac: $58
	ld   [hl], c                                     ; $65ad: $71
	ld   h, l                                        ; $65ae: $65
	sub  c                                           ; $65af: $91
	sbc  c                                           ; $65b0: $99
	ld   a, h                                        ; $65b1: $7c
	ld   sp, hl                                      ; $65b2: $f9
	dec  c                                           ; $65b3: $0d
	nop                                              ; $65b4: $00
	ld   a, [bc]                                     ; $65b5: $0a
	inc  e                                           ; $65b6: $1c
	ld   [bc], a                                     ; $65b7: $02
	dec  b                                           ; $65b8: $05
	dec  b                                           ; $65b9: $05
	dec  e                                           ; $65ba: $1d
	ld   b, b                                        ; $65bb: $40
	ld   [de], a                                     ; $65bc: $12
	inc  bc                                          ; $65bd: $03
	ld   [de], a                                     ; $65be: $12
	ld   bc, $2903                                   ; $65bf: $01 $03 $29
	nop                                              ; $65c2: $00
	ld   bc, $9e50                                   ; $65c3: $01 $50 $9e
	ld   d, b                                        ; $65c6: $50
	ld   d, b                                        ; $65c7: $50
	rst  $38                                         ; $65c8: $ff
	rst  $38                                         ; $65c9: $ff
	dec  c                                           ; $65ca: $0d
	adc  a                                           ; $65cb: $8f
	adc  h                                           ; $65cc: $8c
	ld   d, d                                        ; $65cd: $52
	ld   e, d                                        ; $65ce: $5a
	ld   h, l                                        ; $65cf: $65
	adc  h                                           ; $65d0: $8c
	ld   h, a                                        ; $65d1: $67
	sbc  l                                           ; $65d2: $9d
	rst  $38                                         ; $65d3: $ff
	rst  $38                                         ; $65d4: $ff
	dec  c                                           ; $65d5: $0d
	nop                                              ; $65d6: $00
	ld   a, [bc]                                     ; $65d7: $0a
	dec  c                                           ; $65d8: $0d
	nop                                              ; $65d9: $00
	nop                                              ; $65da: $00
	rrca                                             ; $65db: $0f
	nop                                              ; $65dc: $00
	ld   bc, $1e09                                   ; $65dd: $01 $09 $1e
	nop                                              ; $65e0: $00
	dec  c                                           ; $65e1: $0d
	ld   [bc], a                                     ; $65e2: $02
	nop                                              ; $65e3: $00
	ld   bc, $6d9d                                   ; $65e4: $01 $9d $6d
	ld   e, l                                        ; $65e7: $5d
	ld   h, l                                        ; $65e8: $65
	ld   a, c                                        ; $65e9: $79
	ld   [bc], a                                     ; $65ea: $02
	sub  l                                           ; $65eb: $95
	halt                                             ; $65ec: $76
	sbc  d                                           ; $65ed: $9a
	sbc  c                                           ; $65ee: $99
	ld   a, h                                        ; $65ef: $7c
	ld   a, l                                        ; $65f0: $7d
	dec  c                                           ; $65f1: $0d
	sbc  l                                           ; $65f2: $9d
	ld   e, c                                        ; $65f3: $59
	sbc  b                                           ; $65f4: $98
	adc  h                                           ; $65f5: $8c
	ld   h, a                                        ; $65f6: $67
	ld   e, d                                        ; $65f7: $5a
	sbc  [hl]                                        ; $65f8: $9e
	ld   l, e                                        ; $65f9: $6b
	sbc  e                                           ; $65fa: $9b
	ld   l, e                                        ; $65fb: $6b
	sbc  e                                           ; $65fc: $9b
	dec  c                                           ; $65fd: $0d
	inc  bc                                          ; $65fe: $03
	ld   l, l                                        ; $65ff: $6d
	dec  b                                           ; $6600: $05
	add  hl, de                                      ; $6601: $19
	ld   a, h                                        ; $6602: $7c
	inc  bc                                          ; $6603: $03
	ld   l, a                                        ; $6604: $6f
	ld   [bc], a                                     ; $6605: $02
	xor  c                                           ; $6606: $a9
	ld   h, [hl]                                     ; $6607: $66
	sub  c                                           ; $6608: $91
	ld   a, b                                        ; $6609: $78
	ld   e, l                                        ; $660a: $5d
	ld   [hl], c                                     ; $660b: $71
	ld   [hl], h                                     ; $660c: $74
	sbc  a                                           ; $660d: $9f
	dec  c                                           ; $660e: $0d
	nop                                              ; $660f: $00
	ld   a, [bc]                                     ; $6610: $0a
	nop                                              ; $6611: $00
	nop                                              ; $6612: $00
	rrca                                             ; $6613: $0f
	nop                                              ; $6614: $00
	ld   bc, $050d                                   ; $6615: $01 $0d $05
	nop                                              ; $6618: $00
	ld   [bc], a                                     ; $6619: $02
	ld   bc, $7d58                                   ; $661a: $01 $58 $7d
	sub  [hl]                                        ; $661d: $96
	ld   d, h                                        ; $661e: $54
	ld   h, d                                        ; $661f: $62
	ld   h, h                                        ; $6620: $64
	ld   d, d                                        ; $6621: $52
	adc  h                                           ; $6622: $8c
	ld   h, a                                        ; $6623: $67
	sbc  a                                           ; $6624: $9f
	dec  c                                           ; $6625: $0d
	ld   [bc], a                                     ; $6626: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6627: $cf
	dec  b                                           ; $6628: $05
	ld   a, [de]                                     ; $6629: $1a
	ld   h, e                                        ; $662a: $63
	and  c                                           ; $662b: $a1
	sbc  a                                           ; $662c: $9f
	dec  c                                           ; $662d: $0d
	nop                                              ; $662e: $00
	ld   a, [bc]                                     ; $662f: $0a
	inc  e                                           ; $6630: $1c
	dec  b                                           ; $6631: $05
	ld   bc, $0101                                   ; $6632: $01 $01 $01
	sub  [hl]                                        ; $6635: $96
	ld   e, b                                        ; $6636: $58
	sbc  [hl]                                        ; $6637: $9e
	ld   [$7d00], sp                                 ; $6638: $08 $00 $7d
	and  c                                           ; $663b: $a1
	dec  c                                           ; $663c: $0d
	nop                                              ; $663d: $00
	ld   a, [bc]                                     ; $663e: $0a
	ld   bc, $9277                                   ; $663f: $01 $77 $92
	sbc  [hl]                                        ; $6642: $9e
	inc  b                                           ; $6643: $04
	ld   [$9202], sp                                 ; $6644: $08 $02 $92
	ld   [hl], l                                     ; $6647: $75
	ld   a, h                                        ; $6648: $7c
	inc  bc                                          ; $6649: $03
	ld   d, d                                        ; $664a: $52
	ld   [bc], a                                     ; $664b: $02
	or   a                                           ; $664c: $b7
	sbc  [hl]                                        ; $664d: $9e
	dec  c                                           ; $664e: $0d
	inc  bc                                          ; $664f: $03
	ld   l, h                                        ; $6650: $6c
	ld   h, l                                        ; $6651: $65
	ld   a, l                                        ; $6652: $7d
	ld   a, b                                        ; $6653: $78
	sbc  d                                           ; $6654: $9a
	ld   l, l                                        ; $6655: $6d
	ld   e, c                                        ; $6656: $59
	ld   sp, hl                                      ; $6657: $f9
	dec  c                                           ; $6658: $0d
	nop                                              ; $6659: $00
	ld   a, [bc]                                     ; $665a: $0a
	rrca                                             ; $665b: $0f
	nop                                              ; $665c: $00
	ld   bc, $7d01                                   ; $665d: $01 $01 $7d
	ld   d, d                                        ; $6660: $52
	sbc  [hl]                                        ; $6661: $9e
	ld   e, b                                        ; $6662: $58
	ld   e, c                                        ; $6663: $59
	ld   h, b                                        ; $6664: $60
	ld   h, e                                        ; $6665: $63
	adc  h                                           ; $6666: $8c
	ld   [hl], l                                     ; $6667: $75
	sbc  a                                           ; $6668: $9f
	dec  c                                           ; $6669: $0d
	ld   bc, $0403                                   ; $666a: $01 $03 $04
	ld   c, c                                        ; $666d: $49
	and  b                                           ; $666e: $a0
	ld   [bc], a                                     ; $666f: $02
	jp   nz, Jump_044_5461                           ; $6670: $c2 $61 $54

	ld   e, c                                        ; $6673: $59
	ld   a, b                                        ; $6674: $78
	rst  $38                                         ; $6675: $ff
	rst  $38                                         ; $6676: $ff
	ld   bc, $0d04                                   ; $6677: $01 $04 $0d
	nop                                              ; $667a: $00
	ld   a, [bc]                                     ; $667b: $0a
	add  hl, de                                      ; $667c: $19
	dec  b                                           ; $667d: $05
	inc  bc                                          ; $667e: $03
	inc  b                                           ; $667f: $04
	ld   [$8f02], sp                                 ; $6680: $08 $02 $8f
	ld   [bc], a                                     ; $6683: $02
	sub  b                                           ; $6684: $90
	ld   [bc], a                                     ; $6685: $02
	sub  c                                           ; $6686: $91
	inc  b                                           ; $6687: $04
	add  hl, bc                                      ; $6688: $09
	ld   a, c                                        ; $6689: $79
	ld   [hl], d                                     ; $668a: $72
	ld   d, d                                        ; $668b: $52
	ld   [hl], h                                     ; $668c: $74
	ld   [bc], a                                     ; $668d: $02
	jp   nz, $005d                                   ; $668e: $c2 $5d $00

	nop                                              ; $6691: $00
	ret                                              ; $6692: $c9


	and  l                                           ; $6693: $a5
	xor  $79                                         ; $6694: $ee $79
	ld   [hl], d                                     ; $6696: $72
	ld   d, d                                        ; $6697: $52
	ld   [hl], h                                     ; $6698: $74
	ld   [bc], a                                     ; $6699: $02
	jp   nz, $005d                                   ; $669a: $c2 $5d $00

	ld   bc, $cf02                                   ; $669d: $01 $02 $cf
	dec  b                                           ; $66a0: $05
	ld   a, [de]                                     ; $66a1: $1a
	ld   a, h                                        ; $66a2: $7c
	ld   [bc], a                                     ; $66a3: $02
	jp   $02a0                                       ; $66a4: $c3 $a0 $02


	jp   nz, $005d                                   ; $66a7: $c2 $5d $00

	ld   [bc], a                                     ; $66aa: $02
	rlca                                             ; $66ab: $07
	or   [hl]                                        ; $66ac: $b6
	nop                                              ; $66ad: $00
	ld   [bc], a                                     ; $66ae: $02
	inc  bc                                          ; $66af: $03
	ld   bc, $2000                                   ; $66b0: $01 $00 $20
	nop                                              ; $66b3: $00
	rlca                                             ; $66b4: $07
	adc  l                                           ; $66b5: $8d
	ld   bc, $0302                                   ; $66b6: $01 $02 $03
	ld   bc, $2001                                   ; $66b9: $01 $01 $20
	nop                                              ; $66bc: $00
	rlca                                             ; $66bd: $07
	jr   jr_044_66c2                                 ; $66be: $18 $02

	ld   [bc], a                                     ; $66c0: $02
	inc  bc                                          ; $66c1: $03

jr_044_66c2:
	ld   bc, $2002                                   ; $66c2: $01 $02 $20
	nop                                              ; $66c5: $00
	ld   b, $e3                                      ; $66c6: $06 $e3
	ld   [bc], a                                     ; $66c8: $02
	rrca                                             ; $66c9: $0f
	nop                                              ; $66ca: $00
	ld   bc, $0401                                   ; $66cb: $01 $01 $04
	ld   [$8f02], sp                                 ; $66ce: $08 $02 $8f
	ld   [bc], a                                     ; $66d1: $02
	sub  b                                           ; $66d2: $90
	ld   [bc], a                                     ; $66d3: $02
	sub  c                                           ; $66d4: $91
	inc  b                                           ; $66d5: $04
	add  hl, bc                                      ; $66d6: $09
	ld   [hl], c                                     ; $66d7: $71
	ld   [hl], h                                     ; $66d8: $74
	dec  c                                           ; $66d9: $0d
	ld   a, b                                        ; $66da: $78
	and  c                                           ; $66db: $a1
	ld   a, b                                        ; $66dc: $78
	ld   a, h                                        ; $66dd: $7c
	ld   [hl], l                                     ; $66de: $75
	ld   h, a                                        ; $66df: $67
	ld   e, c                                        ; $66e0: $59
	ld   sp, hl                                      ; $66e1: $f9
	dec  c                                           ; $66e2: $0d
	nop                                              ; $66e3: $00
	ld   a, [bc]                                     ; $66e4: $0a
	inc  e                                           ; $66e5: $1c
	dec  b                                           ; $66e6: $05
	nop                                              ; $66e7: $00
	nop                                              ; $66e8: $00
	ld   bc, $0804                                   ; $66e9: $01 $04 $08
	inc  b                                           ; $66ec: $04
	cpl                                              ; $66ed: $2f
	ld   a, h                                        ; $66ee: $7c
	inc  b                                           ; $66ef: $04
	xor  b                                           ; $66f0: $a8
	dec  b                                           ; $66f1: $05
	ld   hl, $58a0                                   ; $66f2: $21 $a0 $58
	add  c                                           ; $66f5: $81
	sub  d                                           ; $66f6: $92
	ld   e, c                                        ; $66f7: $59
	ld   h, a                                        ; $66f8: $67
	inc  b                                           ; $66f9: $04
	call $037c                                       ; $66fa: $cd $7c $03
	ld   l, e                                        ; $66fd: $6b
	dec  c                                           ; $66fe: $0d
	ld   e, c                                        ; $66ff: $59
	sub  a                                           ; $6700: $97
	inc  bc                                          ; $6701: $03
	add  d                                           ; $6702: $82
	ld   bc, $a014                                   ; $6703: $01 $14 $a0
	inc  bc                                          ; $6706: $03
	sub  e                                           ; $6707: $93
	sbc  c                                           ; $6708: $99
	inc  b                                           ; $6709: $04
	ld   e, a                                        ; $670a: $5f
	inc  b                                           ; $670b: $04
	pop  bc                                          ; $670c: $c1
	inc  b                                           ; $670d: $04
	sub  l                                           ; $670e: $95
	inc  b                                           ; $670f: $04
	ld   a, [bc]                                     ; $6710: $0a
	sub  d                                           ; $6711: $92
	sbc  a                                           ; $6712: $9f
	dec  c                                           ; $6713: $0d
	nop                                              ; $6714: $00
	ld   a, [bc]                                     ; $6715: $0a
	ld   bc, $a178                                   ; $6716: $01 $78 $a1
	ld   l, c                                        ; $6719: $69
	sbc  [hl]                                        ; $671a: $9e
	inc  b                                           ; $671b: $04
	ld   e, a                                        ; $671c: $5f
	inc  b                                           ; $671d: $04
	pop  bc                                          ; $671e: $c1
	inc  b                                           ; $671f: $04
	sub  l                                           ; $6720: $95
	inc  b                                           ; $6721: $04
	ld   a, [bc]                                     ; $6722: $0a
	sub  d                                           ; $6723: $92
	ld   e, c                                        ; $6724: $59
	sub  a                                           ; $6725: $97
	dec  c                                           ; $6726: $0d
	inc  b                                           ; $6727: $04
	ld   e, a                                        ; $6728: $5f
	inc  b                                           ; $6729: $04
	pop  bc                                          ; $672a: $c1
	ld   a, h                                        ; $672b: $7c
	inc  bc                                          ; $672c: $03
	rst  $38                                         ; $672d: $ff
	inc  b                                           ; $672e: $04
	ld   h, b                                        ; $672f: $60
	ld   [bc], a                                     ; $6730: $02
	ld   d, a                                        ; $6731: $57
	ld   e, d                                        ; $6732: $5a
	ld   [hl], h                                     ; $6733: $74
	and  c                                           ; $6734: $a1
	ld   h, c                                        ; $6735: $61
	dec  b                                           ; $6736: $05
	push hl                                          ; $6737: $e5
	sbc  b                                           ; $6738: $98
	sub  d                                           ; $6739: $92
	sbc  a                                           ; $673a: $9f
	dec  c                                           ; $673b: $0d
	ld   h, a                                        ; $673c: $67
	ld   h, d                                        ; $673d: $62
	ld   d, d                                        ; $673e: $52
	sub  d                                           ; $673f: $92
	sbc  e                                           ; $6740: $9b
	sbc  a                                           ; $6741: $9f
	dec  c                                           ; $6742: $0d
	nop                                              ; $6743: $00
	ld   a, [bc]                                     ; $6744: $0a
	ld   bc, $546b                                   ; $6745: $01 $6b $54
	ld   l, e                                        ; $6748: $6b

jr_044_6749:
	ld   d, h                                        ; $6749: $54
	sbc  [hl]                                        ; $674a: $9e
	inc  b                                           ; $674b: $04
	ld   e, a                                        ; $674c: $5f
	inc  b                                           ; $674d: $04
	pop  bc                                          ; $674e: $c1
	inc  b                                           ; $674f: $04
	sub  l                                           ; $6750: $95
	inc  b                                           ; $6751: $04
	ld   a, [bc]                                     ; $6752: $0a
	sub  d                                           ; $6753: $92
	ld   e, c                                        ; $6754: $59
	sub  a                                           ; $6755: $97
	dec  c                                           ; $6756: $0d
	sub  b                                           ; $6757: $90
	ld   l, a                                        ; $6758: $6f
	sbc  e                                           ; $6759: $9b
	and  c                                           ; $675a: $a1
	sbc  [hl]                                        ; $675b: $9e
	inc  b                                           ; $675c: $04
	ld   e, a                                        ; $675d: $5f
	inc  b                                           ; $675e: $04
	pop  bc                                          ; $675f: $c1
	sub  d                                           ; $6760: $92
	ld   [hl], l                                     ; $6761: $75
	sbc  a                                           ; $6762: $9f
	dec  c                                           ; $6763: $0d
	ld   a, b                                        ; $6764: $78
	ei                                               ; $6765: $fb
	and  c                                           ; $6766: $a1
	ld   [hl], h                                     ; $6767: $74
	ld   a, b                                        ; $6768: $78
	sbc  [hl]                                        ; $6769: $9e
	ret  nc                                          ; $676a: $d0

	ret  nc                                          ; $676b: $d0

	ret  nc                                          ; $676c: $d0

	sbc  a                                           ; $676d: $9f
	dec  c                                           ; $676e: $0d
	nop                                              ; $676f: $00
	ld   a, [bc]                                     ; $6770: $0a
	ld   bc, $9e50                                   ; $6771: $01 $50 $9e
	inc  bc                                          ; $6774: $03

Jump_044_6775:
	ld   l, l                                        ; $6775: $6d
	dec  b                                           ; $6776: $05
	add  hl, de                                      ; $6777: $19
	ld   a, h                                        ; $6778: $7c

Jump_044_6779:
	inc  bc                                          ; $6779: $03
	ld   l, a                                        ; $677a: $6f
	ld   [bc], a                                     ; $677b: $02
	xor  c                                           ; $677c: $a9
	sub  d                                           ; $677d: $92
	sbc  a                                           ; $677e: $9f
	dec  c                                           ; $677f: $0d
	adc  c                                           ; $6780: $89
	ld   a, b                                        ; $6781: $78
	sbc  [hl]                                        ; $6782: $9e
	ld   [bc], a                                     ; $6783: $02
	and  l                                           ; $6784: $a5
	inc  b                                           ; $6785: $04
	xor  d                                           ; $6786: $aa
	sub  b                                           ; $6787: $90
	ld   [bc], a                                     ; $6788: $02
	jr   nz, jr_044_678f                             ; $6789: $20 $04

	xor  d                                           ; $678b: $aa
	sbc  [hl]                                        ; $678c: $9e
	dec  c                                           ; $678d: $0d
	ld   e, d                                        ; $678e: $5a

jr_044_678f:
	and  c                                           ; $678f: $a1
	ld   a, [hl]                                     ; $6790: $7e
	sbc  b                                           ; $6791: $98
	sub  d                                           ; $6792: $92
	sbc  a                                           ; $6793: $9f
	dec  c                                           ; $6794: $0d
	nop                                              ; $6795: $00
	ld   a, [bc]                                     ; $6796: $0a
	dec  c                                           ; $6797: $0d
	nop                                              ; $6798: $00
	nop                                              ; $6799: $00
	rrca                                             ; $679a: $0f
	nop                                              ; $679b: $00
	ld   bc, $1e09                                   ; $679c: $01 $09 $1e
	nop                                              ; $679f: $00
	rrca                                             ; $67a0: $0f
	nop                                              ; $67a1: $00
	ld   bc, $6701                                   ; $67a2: $01 $01 $67
	ld   d, d                                        ; $67a5: $52
	adc  h                                           ; $67a6: $8c
	ld   l, c                                        ; $67a7: $69
	and  c                                           ; $67a8: $a1
	rst  $38                                         ; $67a9: $ff
	rst  $38                                         ; $67aa: $ff
	dec  c                                           ; $67ab: $0d
	ld   [bc], a                                     ; $67ac: $02
	sub  l                                           ; $67ad: $95
	inc  bc                                          ; $67ae: $03
	jr   jr_044_6749                                 ; $67af: $18 $98

	inc  bc                                          ; $67b1: $03
	rst  $10                                         ; $67b2: $d7
	ld   a, c                                        ; $67b3: $79
	ret                                              ; $67b4: $c9


	and  l                                           ; $67b5: $a5
	xor  $5a                                         ; $67b6: $ee $5a
	dec  c                                           ; $67b8: $0d
	ld   [bc], a                                     ; $67b9: $02
	sub  l                                           ; $67ba: $95
	ld   d, b                                        ; $67bb: $50
	ld   l, l                                        ; $67bc: $6d
	sub  a                                           ; $67bd: $97
	ld   a, b                                        ; $67be: $78
	ld   d, d                                        ; $67bf: $52
	ld   a, h                                        ; $67c0: $7c
	ld   [hl], l                                     ; $67c1: $75
	ld   h, a                                        ; $67c2: $67
	ld   e, d                                        ; $67c3: $5a
	rst  $38                                         ; $67c4: $ff
	sbc  a                                           ; $67c5: $9f
	dec  c                                           ; $67c6: $0d
	nop                                              ; $67c7: $00
	ld   a, [bc]                                     ; $67c8: $0a
	inc  e                                           ; $67c9: $1c
	dec  b                                           ; $67ca: $05
	ld   [bc], a                                     ; $67cb: $02
	ld   [bc], a                                     ; $67cc: $02
	ld   bc, $a5c9                                   ; $67cd: $01 $c9 $a5
	xor  $8c                                         ; $67d0: $ee $8c
	ld   [hl], l                                     ; $67d2: $75
	sbc  [hl]                                        ; $67d3: $9e
	ld   b, $0e                                      ; $67d4: $06 $0e
	ld   e, l                                        ; $67d6: $5d
	inc  b                                           ; $67d7: $04
	adc  d                                           ; $67d8: $8a
	inc  b                                           ; $67d9: $04
	rst  JumpTable                                         ; $67da: $df
	ld   a, l                                        ; $67db: $7d
	dec  c                                           ; $67dc: $0d
	ld   d, b                                        ; $67dd: $50
	sub  a                                           ; $67de: $97
	add  [hl]                                        ; $67df: $86
	and  c                                           ; $67e0: $a1
	sub  d                                           ; $67e1: $92
	sbc  e                                           ; $67e2: $9b
	sbc  a                                           ; $67e3: $9f
	dec  c                                           ; $67e4: $0d
	ld   d, b                                        ; $67e5: $50
	ld   [hl], c                                     ; $67e6: $71
	ld   [hl], h                                     ; $67e7: $74
	inc  b                                           ; $67e8: $04
	jr   jr_044_6858                                 ; $67e9: $18 $6d

	sbc  b                                           ; $67eb: $98
	inc  bc                                          ; $67ec: $03
	ld   c, a                                        ; $67ed: $4f
	sub  d                                           ; $67ee: $92
	ld   a, e                                        ; $67ef: $7b
	and  c                                           ; $67f0: $a1
	ld   e, c                                        ; $67f1: $59
	sub  a                                           ; $67f2: $97
	sbc  a                                           ; $67f3: $9f
	dec  c                                           ; $67f4: $0d
	nop                                              ; $67f5: $00
	ld   a, [bc]                                     ; $67f6: $0a
	ld   bc, $a505                                   ; $67f7: $01 $05 $a5
	ld   [bc], a                                     ; $67fa: $02
	ld   e, h                                        ; $67fb: $5c
	ld   a, c                                        ; $67fc: $79
	ld   l, a                                        ; $67fd: $6f
	sub  c                                           ; $67fe: $91
	and  c                                           ; $67ff: $a1
	halt                                             ; $6800: $76
	ld   d, b                                        ; $6801: $50
	sbc  c                                           ; $6802: $99
	ld   e, c                                        ; $6803: $59
	sub  a                                           ; $6804: $97
	dec  c                                           ; $6805: $0d
	ld   l, e                                        ; $6806: $6b
	sbc  d                                           ; $6807: $9a
	sbc  [hl]                                        ; $6808: $9e
	inc  bc                                          ; $6809: $03
	xor  [hl]                                        ; $680a: $ae
	ld   d, h                                        ; $680b: $54
	and  c                                           ; $680c: $a1
	sub  d                                           ; $680d: $92
	ld   [hl], l                                     ; $680e: $75
	sbc  a                                           ; $680f: $9f
	dec  c                                           ; $6810: $0d
	inc  b                                           ; $6811: $04
	dec  bc                                          ; $6812: $0b
	inc  b                                           ; $6813: $04
	rra                                              ; $6814: $1f
	ld   [hl], l                                     ; $6815: $75
	sub  d                                           ; $6816: $92
	ld   [hl], c                                     ; $6817: $71
	ld   l, l                                        ; $6818: $6d
	sub  a                                           ; $6819: $97
	ld   d, b                                        ; $681a: $50
	ld   e, c                                        ; $681b: $59
	and  c                                           ; $681c: $a1
	ld   [hl], l                                     ; $681d: $75
	sbc  a                                           ; $681e: $9f
	dec  c                                           ; $681f: $0d
	nop                                              ; $6820: $00
	ld   a, [bc]                                     ; $6821: $0a
	dec  c                                           ; $6822: $0d
	nop                                              ; $6823: $00
	nop                                              ; $6824: $00
	rrca                                             ; $6825: $0f
	nop                                              ; $6826: $00
	ld   bc, $1e09                                   ; $6827: $01 $09 $1e
	nop                                              ; $682a: $00
	rrca                                             ; $682b: $0f
	nop                                              ; $682c: $00
	ld   bc, $0201                                   ; $682d: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6830: $cf
	dec  b                                           ; $6831: $05
	ld   a, [de]                                     ; $6832: $1a
	ld   h, e                                        ; $6833: $63
	and  c                                           ; $6834: $a1
	ld   a, h                                        ; $6835: $7c
	ld   [bc], a                                     ; $6836: $02
	jp   $0da0                                       ; $6837: $c3 $a0 $0d


	inc  bc                                          ; $683a: $03
	ld   l, h                                        ; $683b: $6c
	ld   h, l                                        ; $683c: $65
	ld   [bc], a                                     ; $683d: $02
	jp   nz, Jump_044_6959                           ; $683e: $c2 $59 $69

	ld   [hl], h                                     ; $6841: $74
	sub  b                                           ; $6842: $90
	sub  a                                           ; $6843: $97
	ld   [hl], c                                     ; $6844: $71
	ld   [hl], h                                     ; $6845: $74
	sub  b                                           ; $6846: $90
	dec  c                                           ; $6847: $0d
	ld   d, d                                        ; $6848: $52
	ld   d, d                                        ; $6849: $52
	ld   [hl], l                                     ; $684a: $75
	ld   h, a                                        ; $684b: $67
	ld   e, c                                        ; $684c: $59
	ld   sp, hl                                      ; $684d: $f9
	dec  c                                           ; $684e: $0d
	nop                                              ; $684f: $00
	ld   a, [bc]                                     ; $6850: $0a
	inc  e                                           ; $6851: $1c
	dec  b                                           ; $6852: $05
	inc  bc                                          ; $6853: $03
	inc  bc                                          ; $6854: $03
	ld   bc, wRandomNumStruct                                   ; $6855: $01 $a7 $c2

jr_044_6858:
	ld   a, h                                        ; $6858: $7c
	ld   [bc], a                                     ; $6859: $02
	jp   $f959                                       ; $685a: $c3 $59 $f9


	dec  c                                           ; $685d: $0d
	nop                                              ; $685e: $00
	inc  e                                           ; $685f: $1c
	dec  b                                           ; $6860: $05
	ld   bc, $0101                                   ; $6861: $01 $01 $01
	inc  b                                           ; $6864: $04
	ld   d, h                                        ; $6865: $54
	ld   a, c                                        ; $6866: $79
	xor  c                                           ; $6867: $a9
	xor  c                                           ; $6868: $a9
	ld   [hl], l                                     ; $6869: $75
	sbc  a                                           ; $686a: $9f
	dec  c                                           ; $686b: $0d
	nop                                              ; $686c: $00
	ld   a, [bc]                                     ; $686d: $0a
	inc  e                                           ; $686e: $1c
	dec  b                                           ; $686f: $05
	dec  b                                           ; $6870: $05
	dec  b                                           ; $6871: $05
	dec  e                                           ; $6872: $1d
	ld   b, b                                        ; $6873: $40
	dec  d                                           ; $6874: $15
	inc  bc                                          ; $6875: $03
	dec  d                                           ; $6876: $15
	ld   bc, $2802                                   ; $6877: $01 $02 $28
	nop                                              ; $687a: $00
	ld   bc, $926b                                   ; $687b: $01 $6b $92
	ld   a, b                                        ; $687e: $78
	rst  $38                                         ; $687f: $ff
	sbc  [hl]                                        ; $6880: $9e
	dec  c                                           ; $6881: $0d
	inc  bc                                          ; $6882: $03
	add  hl, de                                      ; $6883: $19
	ld   [bc], a                                     ; $6884: $02
	ld   b, h                                        ; $6885: $44
	ld   a, h                                        ; $6886: $7c
	inc  b                                           ; $6887: $04
	ld   e, [hl]                                     ; $6888: $5e
	inc  b                                           ; $6889: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $688a: $cf
	ld   [bc], a                                     ; $688b: $02
	and  [hl]                                        ; $688c: $a6
	ld   [hl], l                                     ; $688d: $75
	sbc  [hl]                                        ; $688e: $9e
	dec  c                                           ; $688f: $0d
	inc  b                                           ; $6890: $04
	inc  de                                          ; $6891: $13
	inc  bc                                          ; $6892: $03
	ld   b, $02                                      ; $6893: $06 $02
	add  h                                           ; $6895: $84
	ld   [bc], a                                     ; $6896: $02
	and  d                                           ; $6897: $a2
	inc  bc                                          ; $6898: $03
	or   b                                           ; $6899: $b0
	ld   [hl], c                                     ; $689a: $71
	ld   [hl], h                                     ; $689b: $74
	halt                                             ; $689c: $76
	ld   h, c                                        ; $689d: $61
	sub  d                                           ; $689e: $92
	ld   a, b                                        ; $689f: $78
	sbc  a                                           ; $68a0: $9f
	dec  c                                           ; $68a1: $0d
	nop                                              ; $68a2: $00
	ld   a, [bc]                                     ; $68a3: $0a
	ld   bc, $0804                                   ; $68a4: $01 $04 $08
	ld   [bc], a                                     ; $68a7: $02
	sub  c                                           ; $68a8: $91
	ld   [hl], l                                     ; $68a9: $75
	ld   a, l                                        ; $68aa: $7d
	inc  bc                                          ; $68ab: $03
	ld   b, h                                        ; $68ac: $44
	ld   a, c                                        ; $68ad: $79
	sbc  [hl]                                        ; $68ae: $9e
	ld   [bc], a                                     ; $68af: $02
	jr   c, @+$06                                    ; $68b0: $38 $04

	ld   d, d                                        ; $68b2: $52
	ld   a, h                                        ; $68b3: $7c
	inc  bc                                          ; $68b4: $03
	cp   $03                                         ; $68b5: $fe $03
	ld   a, h                                        ; $68b7: $7c
	dec  c                                           ; $68b8: $0d
	ld   a, b                                        ; $68b9: $78
	and  c                                           ; $68ba: $a1
	ld   e, c                                        ; $68bb: $59
	and  b                                           ; $68bc: $a0
	sub  d                                           ; $68bd: $92
	ld   [hl], c                                     ; $68be: $71
	ld   [hl], h                                     ; $68bf: $74
	sbc  c                                           ; $68c0: $99
	and  c                                           ; $68c1: $a1
	sub  d                                           ; $68c2: $92
	sbc  a                                           ; $68c3: $9f
	dec  c                                           ; $68c4: $0d
	nop                                              ; $68c5: $00
	ld   a, [bc]                                     ; $68c6: $0a
	ld   bc, $9e50                                   ; $68c7: $01 $50 $9e
	inc  bc                                          ; $68ca: $03
	ld   l, l                                        ; $68cb: $6d
	dec  b                                           ; $68cc: $05
	add  hl, de                                      ; $68cd: $19
	ld   a, h                                        ; $68ce: $7c
	inc  bc                                          ; $68cf: $03
	ld   l, a                                        ; $68d0: $6f
	ld   [bc], a                                     ; $68d1: $02
	xor  c                                           ; $68d2: $a9
	sub  d                                           ; $68d3: $92
	sbc  a                                           ; $68d4: $9f
	dec  c                                           ; $68d5: $0d
	adc  c                                           ; $68d6: $89
	ld   a, b                                        ; $68d7: $78
	sbc  [hl]                                        ; $68d8: $9e
	ld   [bc], a                                     ; $68d9: $02
	and  l                                           ; $68da: $a5
	inc  b                                           ; $68db: $04
	xor  d                                           ; $68dc: $aa
	sub  b                                           ; $68dd: $90
	ld   [bc], a                                     ; $68de: $02
	jr   nz, jr_044_68e5                             ; $68df: $20 $04

	xor  d                                           ; $68e1: $aa
	sbc  [hl]                                        ; $68e2: $9e
	dec  c                                           ; $68e3: $0d
	ld   e, d                                        ; $68e4: $5a

jr_044_68e5:
	and  c                                           ; $68e5: $a1
	ld   a, [hl]                                     ; $68e6: $7e
	sbc  b                                           ; $68e7: $98
	sub  d                                           ; $68e8: $92
	sbc  a                                           ; $68e9: $9f
	dec  c                                           ; $68ea: $0d
	nop                                              ; $68eb: $00
	ld   a, [bc]                                     ; $68ec: $0a
	dec  c                                           ; $68ed: $0d
	nop                                              ; $68ee: $00
	nop                                              ; $68ef: $00
	rrca                                             ; $68f0: $0f
	nop                                              ; $68f1: $00
	ld   bc, $1e09                                   ; $68f2: $01 $09 $1e
	nop                                              ; $68f5: $00
	inc  e                                           ; $68f6: $1c
	dec  b                                           ; $68f7: $05
	ld   [bc], a                                     ; $68f8: $02
	ld   [bc], a                                     ; $68f9: $02
	ld   bc, $7877                                   ; $68fa: $01 $77 $78
	ld   d, d                                        ; $68fd: $52
	ld   h, l                                        ; $68fe: $65
	ld   l, l                                        ; $68ff: $6d
	and  c                                           ; $6900: $a1
	sub  d                                           ; $6901: $92
	ld   sp, hl                                      ; $6902: $f9
	dec  c                                           ; $6903: $0d
	nop                                              ; $6904: $00
	ld   a, [bc]                                     ; $6905: $0a
	rrca                                             ; $6906: $0f
	nop                                              ; $6907: $00
	ld   bc, $5201                                   ; $6908: $01 $01 $52
	sbc  [hl]                                        ; $690b: $9e
	ld   d, d                                        ; $690c: $52
	ld   d, [hl]                                     ; $690d: $56
	rst  $38                                         ; $690e: $ff
	rst  $38                                         ; $690f: $ff
	dec  c                                           ; $6910: $0d
	nop                                              ; $6911: $00
	ld   a, [bc]                                     ; $6912: $0a
	inc  e                                           ; $6913: $1c
	dec  b                                           ; $6914: $05
	ld   [bc], a                                     ; $6915: $02
	ld   [bc], a                                     ; $6916: $02
	ld   bc, $fc83                                   ; $6917: $01 $83 $fc
	and  c                                           ; $691a: $a1
	sbc  a                                           ; $691b: $9f
	dec  c                                           ; $691c: $0d
	adc  c                                           ; $691d: $89
	ld   a, b                                        ; $691e: $78
	sbc  [hl]                                        ; $691f: $9e
	and  a                                           ; $6920: $a7
	jp   nz, $7f02                                   ; $6921: $c2 $02 $7f

	ld   e, l                                        ; $6924: $5d
	ld   e, c                                        ; $6925: $59
	sub  a                                           ; $6926: $97
	ld   a, b                                        ; $6927: $78
	sbc  a                                           ; $6928: $9f
	dec  c                                           ; $6929: $0d
	nop                                              ; $692a: $00
	ld   a, [bc]                                     ; $692b: $0a
	dec  c                                           ; $692c: $0d
	nop                                              ; $692d: $00
	nop                                              ; $692e: $00
	rrca                                             ; $692f: $0f
	nop                                              ; $6930: $00
	ld   bc, $1e09                                   ; $6931: $01 $09 $1e
	nop                                              ; $6934: $00
	nop                                              ; $6935: $00
	rrca                                             ; $6936: $0f
	nop                                              ; $6937: $00
	ld   bc, $060d                                   ; $6938: $01 $0d $06
	nop                                              ; $693b: $00
	ld   [bc], a                                     ; $693c: $02
	ld   bc, $7d58                                   ; $693d: $01 $58 $7d
	sub  [hl]                                        ; $6940: $96
	ld   d, h                                        ; $6941: $54
	ld   h, d                                        ; $6942: $62
	ld   h, h                                        ; $6943: $64
	ld   d, d                                        ; $6944: $52
	adc  h                                           ; $6945: $8c
	ld   h, a                                        ; $6946: $67
	sbc  [hl]                                        ; $6947: $9e
	dec  c                                           ; $6948: $0d
	xor  h                                           ; $6949: $ac
	push af                                          ; $694a: $f5
	bit  4, e                                        ; $694b: $cb $63
	and  c                                           ; $694d: $a1
	sbc  a                                           ; $694e: $9f
	dec  c                                           ; $694f: $0d
	nop                                              ; $6950: $00
	ld   a, [bc]                                     ; $6951: $0a
	inc  e                                           ; $6952: $1c
	ld   b, $01                                      ; $6953: $06 $01
	ld   bc, $5801                                   ; $6955: $01 $01 $58
	ld   a, l                                        ; $6958: $7d

Jump_044_6959:
	sub  [hl]                                        ; $6959: $96
	ld   d, h                                        ; $695a: $54
	sbc  [hl]                                        ; $695b: $9e
	ld   [$9f00], sp                                 ; $695c: $08 $00 $9f
	dec  c                                           ; $695f: $0d
	nop                                              ; $6960: $00
	ld   a, [bc]                                     ; $6961: $0a
	rrca                                             ; $6962: $0f
	nop                                              ; $6963: $00
	ld   bc, $0101                                   ; $6964: $01 $01 $01
	inc  bc                                          ; $6967: $03
	inc  b                                           ; $6968: $04
	ld   c, c                                        ; $6969: $49
	and  b                                           ; $696a: $a0
	ld   [bc], a                                     ; $696b: $02
	jp   nz, Jump_044_5461                           ; $696c: $c2 $61 $54

	ld   e, c                                        ; $696f: $59
	ld   a, b                                        ; $6970: $78
	rst  $38                                         ; $6971: $ff
	rst  $38                                         ; $6972: $ff
	ld   bc, $0d04                                   ; $6973: $01 $04 $0d
	nop                                              ; $6976: $00
	ld   a, [bc]                                     ; $6977: $0a
	add  hl, de                                      ; $6978: $19
	dec  b                                           ; $6979: $05
	inc  bc                                          ; $697a: $03
	inc  b                                           ; $697b: $04
	ld   [$8f02], sp                                 ; $697c: $08 $02 $8f
	ld   [bc], a                                     ; $697f: $02
	sub  b                                           ; $6980: $90
	ld   [bc], a                                     ; $6981: $02
	sub  c                                           ; $6982: $91
	inc  b                                           ; $6983: $04
	add  hl, bc                                      ; $6984: $09
	ld   a, h                                        ; $6985: $7c
	ld   h, c                                        ; $6986: $61
	halt                                             ; $6987: $76
	nop                                              ; $6988: $00
	nop                                              ; $6989: $00
	ret                                              ; $698a: $c9


	and  l                                           ; $698b: $a5
	xor  $7c                                         ; $698c: $ee $7c
	ld   h, c                                        ; $698e: $61
	halt                                             ; $698f: $76
	nop                                              ; $6990: $00
	ld   bc, $f5ac                                   ; $6991: $01 $ac $f5
	bit  7, h                                        ; $6994: $cb $7c
	ld   h, c                                        ; $6996: $61
	halt                                             ; $6997: $76
	nop                                              ; $6998: $00
	ld   [bc], a                                     ; $6999: $02
	rlca                                             ; $699a: $07
	xor  h                                           ; $699b: $ac
	nop                                              ; $699c: $00
	ld   [bc], a                                     ; $699d: $02
	inc  bc                                          ; $699e: $03
	ld   bc, $2000                                   ; $699f: $01 $00 $20
	nop                                              ; $69a2: $00
	rlca                                             ; $69a3: $07
	rra                                              ; $69a4: $1f
	ld   [bc], a                                     ; $69a5: $02
	ld   [bc], a                                     ; $69a6: $02
	inc  bc                                          ; $69a7: $03
	ld   bc, $2001                                   ; $69a8: $01 $01 $20
	nop                                              ; $69ab: $00
	rlca                                             ; $69ac: $07
	and  [hl]                                        ; $69ad: $a6
	inc  bc                                          ; $69ae: $03
	ld   [bc], a                                     ; $69af: $02
	inc  bc                                          ; $69b0: $03
	ld   bc, $2002                                   ; $69b1: $01 $02 $20
	nop                                              ; $69b4: $00
	ld   b, $82                                      ; $69b5: $06 $82
	nop                                              ; $69b7: $00
	inc  e                                           ; $69b8: $1c
	ld   b, $01                                      ; $69b9: $06 $01
	ld   bc, $0201                                   ; $69bb: $01 $01 $02
	and  l                                           ; $69be: $a5
	inc  b                                           ; $69bf: $04
	xor  d                                           ; $69c0: $aa
	sub  b                                           ; $69c1: $90
	ld   [bc], a                                     ; $69c2: $02
	jr   nz, jr_044_69c9                             ; $69c3: $20 $04

	xor  d                                           ; $69c5: $aa
	sbc  [hl]                                        ; $69c6: $9e
	dec  c                                           ; $69c7: $0d
	ld   [bc], a                                     ; $69c8: $02

jr_044_69c9:
	and  c                                           ; $69c9: $a1
	ld   [bc], a                                     ; $69ca: $02
	ld   a, e                                        ; $69cb: $7b
	ld   d, d                                        ; $69cc: $52
	inc  b                                           ; $69cd: $04
	ld   b, l                                        ; $69ce: $45
	sbc  d                                           ; $69cf: $9a
	ld   [hl], h                                     ; $69d0: $74
	ld   d, d                                        ; $69d1: $52
	ld   h, c                                        ; $69d2: $61
	ld   d, h                                        ; $69d3: $54
	ld   l, d                                        ; $69d4: $6a
	ld   a, [$000d]                                  ; $69d5: $fa $0d $00
	ld   a, [bc]                                     ; $69d8: $0a
	dec  c                                           ; $69d9: $0d
	nop                                              ; $69da: $00
	nop                                              ; $69db: $00
	rrca                                             ; $69dc: $0f
	nop                                              ; $69dd: $00
	ld   bc, $1e09                                   ; $69de: $01 $09 $1e
	nop                                              ; $69e1: $00
	rrca                                             ; $69e2: $0f
	nop                                              ; $69e3: $00
	ld   bc, $0401                                   ; $69e4: $01 $01 $04
	ld   [$8f02], sp                                 ; $69e7: $08 $02 $8f
	ld   [bc], a                                     ; $69ea: $02
	sub  b                                           ; $69eb: $90
	ld   [bc], a                                     ; $69ec: $02
	sub  c                                           ; $69ed: $91
	inc  b                                           ; $69ee: $04
	add  hl, bc                                      ; $69ef: $09
	ld   [hl], c                                     ; $69f0: $71
	ld   [hl], h                                     ; $69f1: $74
	dec  c                                           ; $69f2: $0d
	inc  b                                           ; $69f3: $04
	ld   c, c                                        ; $69f4: $49
	and  b                                           ; $69f5: $a0
	sub  d                                           ; $69f6: $92
	sbc  c                                           ; $69f7: $99
	halt                                             ; $69f8: $76
	ld   h, c                                        ; $69f9: $61
	sbc  e                                           ; $69fa: $9b
	ld   a, b                                        ; $69fb: $78
	and  c                                           ; $69fc: $a1
	ld   [hl], l                                     ; $69fd: $75
	ld   h, a                                        ; $69fe: $67
	ld   e, c                                        ; $69ff: $59
	ld   sp, hl                                      ; $6a00: $f9
	dec  c                                           ; $6a01: $0d
	nop                                              ; $6a02: $00
	ld   a, [bc]                                     ; $6a03: $0a
	inc  e                                           ; $6a04: $1c
	ld   b, $00                                      ; $6a05: $06 $00
	nop                                              ; $6a07: $00
	ld   bc, $a804                                   ; $6a08: $01 $04 $a8
	dec  b                                           ; $6a0b: $05
	ld   hl, $58a0                                   ; $6a0c: $21 $a0 $58
	add  c                                           ; $6a0f: $81
	sub  d                                           ; $6a10: $92
	ld   e, c                                        ; $6a11: $59
	ld   h, a                                        ; $6a12: $67
	dec  c                                           ; $6a13: $0d
	sbc  l                                           ; $6a14: $9d
	sbc  c                                           ; $6a15: $99
	ld   d, d                                        ; $6a16: $52
	and  $c5                                         ; $6a17: $e6 $c5
	sub  a                                           ; $6a19: $97
	ld   e, c                                        ; $6a1a: $59
	sub  a                                           ; $6a1b: $97
	sbc  [hl]                                        ; $6a1c: $9e
	dec  c                                           ; $6a1d: $0d
	inc  b                                           ; $6a1e: $04
	ld   [$2f04], sp                                 ; $6a1f: $08 $04 $2f
	and  b                                           ; $6a22: $a0
	inc  bc                                          ; $6a23: $03
	sub  e                                           ; $6a24: $93
	sbc  c                                           ; $6a25: $99
	halt                                             ; $6a26: $76
	ld   h, c                                        ; $6a27: $61
	sbc  e                                           ; $6a28: $9b
	ld   h, e                                        ; $6a29: $63
	sbc  a                                           ; $6a2a: $9f
	dec  c                                           ; $6a2b: $0d
	nop                                              ; $6a2c: $00
	ld   a, [bc]                                     ; $6a2d: $0a
	add  hl, de                                      ; $6a2e: $19
	dec  b                                           ; $6a2f: $05
	ld   [bc], a                                     ; $6a30: $02
	xor  h                                           ; $6a31: $ac
	push af                                          ; $6a32: $f5
	bit  4, e                                        ; $6a33: $cb $63
	and  c                                           ; $6a35: $a1
	ld   [bc], a                                     ; $6a36: $02
	jp   nc, $755b                                   ; $6a37: $d2 $5b $75

	ld   h, a                                        ; $6a3a: $67
	ld   a, e                                        ; $6a3b: $7b
	nop                                              ; $6a3c: $00
	nop                                              ; $6a3d: $00
	ld   l, e                                        ; $6a3e: $6b
	sbc  d                                           ; $6a3f: $9a
	ld   a, l                                        ; $6a40: $7d
	inc  b                                           ; $6a41: $04
	add  [hl]                                        ; $6a42: $86
	ld   d, d                                        ; $6a43: $52
	ld   a, b                                        ; $6a44: $78
	ld   c, a                                        ; $6a45: $4f
	rst  $38                                         ; $6a46: $ff
	rst  $38                                         ; $6a47: $ff
	nop                                              ; $6a48: $00
	ld   bc, $2907                                   ; $6a49: $01 $07 $29
	ld   bc, $0302                                   ; $6a4c: $01 $02 $03
	ld   bc, $2000                                   ; $6a4f: $01 $00 $20
	nop                                              ; $6a52: $00
	rlca                                             ; $6a53: $07
	ld   a, [hl]                                     ; $6a54: $7e
	ld   bc, $0302                                   ; $6a55: $01 $02 $03
	ld   bc, $2001                                   ; $6a58: $01 $01 $20
	nop                                              ; $6a5b: $00
	ld   b, $f5                                      ; $6a5c: $06 $f5
	ld   bc, $000f                                   ; $6a5e: $01 $0f $00
	ld   bc, $ac01                                   ; $6a61: $01 $01 $ac
	push af                                          ; $6a64: $f5
	bit  4, e                                        ; $6a65: $cb $63
	and  c                                           ; $6a67: $a1
	ld   [bc], a                                     ; $6a68: $02
	jp   nc, $755b                                   ; $6a69: $d2 $5b $75

	ld   h, a                                        ; $6a6c: $67
	ld   a, e                                        ; $6a6d: $7b
	sbc  a                                           ; $6a6e: $9f
	dec  c                                           ; $6a6f: $0d
	nop                                              ; $6a70: $00
	ld   a, [bc]                                     ; $6a71: $0a
	inc  e                                           ; $6a72: $1c
	ld   b, $01                                      ; $6a73: $06 $01
	ld   bc, $401d                                   ; $6a75: $01 $1d $40
	ld   d, $03                                      ; $6a78: $16 $03
	ld   d, $01                                      ; $6a7a: $16 $01
	ld   [bc], a                                     ; $6a7c: $02
	jr   z, jr_044_6a7f                              ; $6a7d: $28 $00

jr_044_6a7f:
	ld   bc, $508c                                   ; $6a7f: $01 $8c $50
	ld   a, b                                        ; $6a82: $78
	rst  $38                                         ; $6a83: $ff
	rst  $38                                         ; $6a84: $ff
	ld   [hl], l                                     ; $6a85: $75
	sub  b                                           ; $6a86: $90
	sbc  [hl]                                        ; $6a87: $9e
	ld   e, b                                        ; $6a88: $58
	inc  bc                                          ; $6a89: $03
	ld   c, a                                        ; $6a8a: $4f
	ld   l, [hl]                                     ; $6a8b: $6e
	ld   [hl], c                                     ; $6a8c: $71
	ld   [hl], h                                     ; $6a8d: $74
	dec  c                                           ; $6a8e: $0d
	ld   [bc], a                                     ; $6a8f: $02
	and  l                                           ; $6a90: $a5
	ld   a, l                                        ; $6a91: $7d
	ld   [bc], a                                     ; $6a92: $02
	call c, $9075                                    ; $6a93: $dc $75 $90
	ld   l, e                                        ; $6a96: $6b
	ld   a, h                                        ; $6a97: $7c
	ld   [bc], a                                     ; $6a98: $02
	jr   nz, jr_044_6a9d                             ; $6a99: $20 $02

	nop                                              ; $6a9b: $00
	ld   a, b                                        ; $6a9c: $78

jr_044_6a9d:
	and  c                                           ; $6a9d: $a1
	ld   l, [hl]                                     ; $6a9e: $6e
	ld   l, d                                        ; $6a9f: $6a
	sbc  a                                           ; $6aa0: $9f
	dec  c                                           ; $6aa1: $0d
	xor  l                                           ; $6aa2: $ad
	push af                                          ; $6aa3: $f5
	pop  de                                          ; $6aa4: $d1
	xor  $96                                         ; $6aa5: $ee $96
	sbc  a                                           ; $6aa7: $9f
	dec  c                                           ; $6aa8: $0d
	nop                                              ; $6aa9: $00
	ld   a, [bc]                                     ; $6aaa: $0a
	dec  c                                           ; $6aab: $0d
	nop                                              ; $6aac: $00
	nop                                              ; $6aad: $00
	rrca                                             ; $6aae: $0f
	nop                                              ; $6aaf: $00
	ld   bc, $1e09                                   ; $6ab0: $01 $09 $1e
	nop                                              ; $6ab3: $00
	rrca                                             ; $6ab4: $0f
	nop                                              ; $6ab5: $00
	ld   bc, $6b01                                   ; $6ab6: $01 $01 $6b
	sbc  d                                           ; $6ab9: $9a
	ld   a, l                                        ; $6aba: $7d
	inc  b                                           ; $6abb: $04
	add  [hl]                                        ; $6abc: $86
	ld   d, d                                        ; $6abd: $52
	ld   a, b                                        ; $6abe: $78
	ld   c, a                                        ; $6abf: $4f
	rst  $38                                         ; $6ac0: $ff
	rst  $38                                         ; $6ac1: $ff
	dec  c                                           ; $6ac2: $0d
	nop                                              ; $6ac3: $00
	ld   a, [bc]                                     ; $6ac4: $0a
	inc  e                                           ; $6ac5: $1c
	ld   b, $02                                      ; $6ac6: $06 $02
	ld   [bc], a                                     ; $6ac8: $02
	dec  e                                           ; $6ac9: $1d
	ld   b, b                                        ; $6aca: $40
	ld   d, $03                                      ; $6acb: $16 $03
	ld   d, $01                                      ; $6acd: $16 $01
	inc  bc                                          ; $6acf: $03
	add  hl, hl                                      ; $6ad0: $29
	nop                                              ; $6ad1: $00
	ld   bc, $b203                                   ; $6ad2: $01 $03 $b2
	ld   e, a                                        ; $6ad5: $5f
	ld   a, b                                        ; $6ad6: $78
	ld   d, d                                        ; $6ad7: $52
	ld   h, c                                        ; $6ad8: $61
	halt                                             ; $6ad9: $76
	ld   [bc], a                                     ; $6ada: $02
	sbc  l                                           ; $6adb: $9d
	ld   [hl], c                                     ; $6adc: $71
	ld   [hl], h                                     ; $6add: $74
	sbc  c                                           ; $6ade: $99
	and  c                                           ; $6adf: $a1
	ld   h, [hl]                                     ; $6ae0: $66
	sub  c                                           ; $6ae1: $91
	dec  c                                           ; $6ae2: $0d
	ld   a, e                                        ; $6ae3: $7b
	ld   d, [hl]                                     ; $6ae4: $56
	sub  [hl]                                        ; $6ae5: $96
	rst  $38                                         ; $6ae6: $ff
	rst  $38                                         ; $6ae7: $ff
	sbc  a                                           ; $6ae8: $9f
	dec  c                                           ; $6ae9: $0d
	sub  b                                           ; $6aea: $90
	ld   [hl], c                                     ; $6aeb: $71
	halt                                             ; $6aec: $76
	cp   b                                           ; $6aed: $b8
	push hl                                          ; $6aee: $e5
	xor  [hl]                                        ; $6aef: $ae
	call nz, Call_044_6576                           ; $6af0: $c4 $76 $65
	sbc  e                                           ; $6af3: $9b
	ld   d, d                                        ; $6af4: $52
	sbc  a                                           ; $6af5: $9f

jr_044_6af6:
	dec  c                                           ; $6af6: $0d
	nop                                              ; $6af7: $00
	ld   a, [bc]                                     ; $6af8: $0a
	ld   bc, $a16b                                   ; $6af9: $01 $6b $a1
	ld   a, b                                        ; $6afc: $78
	ld   h, c                                        ; $6afd: $61

jr_044_6afe:
	ld   [hl], c                                     ; $6afe: $71
	ld   l, a                                        ; $6aff: $6f
	sub  c                                           ; $6b00: $91
	ei                                               ; $6b01: $fb
	dec  c                                           ; $6b02: $0d
	ld   [bc], a                                     ; $6b03: $02
	jr   nz, jr_044_6afe                             ; $6b04: $20 $f8

	ld   [bc], a                                     ; $6b06: $02
	sbc  e                                           ; $6b07: $9b
	sub  b                                           ; $6b08: $90
	ld   l, l                                        ; $6b09: $6d
	ld   a, e                                        ; $6b0a: $7b
	ei                                               ; $6b0b: $fb
	ld   l, h                                        ; $6b0c: $6c
	sbc  a                                           ; $6b0d: $9f
	dec  c                                           ; $6b0e: $0d
	ld   [bc], a                                     ; $6b0f: $02
	and  c                                           ; $6b10: $a1
	ld   [bc], a                                     ; $6b11: $02
	ld   a, e                                        ; $6b12: $7b
	ld   d, d                                        ; $6b13: $52
	inc  b                                           ; $6b14: $04
	ld   b, l                                        ; $6b15: $45
	sbc  d                                           ; $6b16: $9a
	sbc  e                                           ; $6b17: $9b
	sbc  [hl]                                        ; $6b18: $9e
	ld   [bc], a                                     ; $6b19: $02
	and  c                                           ; $6b1a: $a1
	ld   [bc], a                                     ; $6b1b: $02
	ld   a, e                                        ; $6b1c: $7b
	ld   d, d                                        ; $6b1d: $52
	ld   a, [$000d]                                  ; $6b1e: $fa $0d $00
	ld   a, [bc]                                     ; $6b21: $0a
	dec  c                                           ; $6b22: $0d
	nop                                              ; $6b23: $00
	nop                                              ; $6b24: $00
	rrca                                             ; $6b25: $0f
	nop                                              ; $6b26: $00
	ld   bc, $1e09                                   ; $6b27: $01 $09 $1e
	nop                                              ; $6b2a: $00
	inc  e                                           ; $6b2b: $1c
	ld   b, $01                                      ; $6b2c: $06 $01
	ld   bc, $0201                                   ; $6b2e: $01 $01 $02
	and  l                                           ; $6b31: $a5
	inc  b                                           ; $6b32: $04
	xor  d                                           ; $6b33: $aa
	sub  b                                           ; $6b34: $90
	ld   [bc], a                                     ; $6b35: $02
	jr   nz, jr_044_6b3c                             ; $6b36: $20 $04

	xor  d                                           ; $6b38: $aa
	sbc  [hl]                                        ; $6b39: $9e
	dec  c                                           ; $6b3a: $0d
	ld   [bc], a                                     ; $6b3b: $02

jr_044_6b3c:
	and  c                                           ; $6b3c: $a1
	ld   [bc], a                                     ; $6b3d: $02
	ld   a, e                                        ; $6b3e: $7b
	ld   d, d                                        ; $6b3f: $52
	inc  b                                           ; $6b40: $04
	ld   b, l                                        ; $6b41: $45
	sbc  d                                           ; $6b42: $9a
	ld   [hl], h                                     ; $6b43: $74
	ld   d, d                                        ; $6b44: $52
	ld   h, c                                        ; $6b45: $61
	ld   d, h                                        ; $6b46: $54
	ld   l, d                                        ; $6b47: $6a
	ld   a, [$000d]                                  ; $6b48: $fa $0d $00
	ld   a, [bc]                                     ; $6b4b: $0a
	dec  c                                           ; $6b4c: $0d
	nop                                              ; $6b4d: $00
	nop                                              ; $6b4e: $00
	rrca                                             ; $6b4f: $0f
	nop                                              ; $6b50: $00
	ld   bc, $1e09                                   ; $6b51: $01 $09 $1e
	nop                                              ; $6b54: $00
	rrca                                             ; $6b55: $0f
	nop                                              ; $6b56: $00
	ld   bc, $0201                                   ; $6b57: $01 $01 $02
	sub  l                                           ; $6b5a: $95
	inc  bc                                          ; $6b5b: $03
	jr   jr_044_6af6                                 ; $6b5c: $18 $98

	inc  bc                                          ; $6b5e: $03
	rst  $10                                         ; $6b5f: $d7
	ld   a, c                                        ; $6b60: $79
	sbc  [hl]                                        ; $6b61: $9e
	adc  l                                           ; $6b62: $8d
	ld   d, b                                        ; $6b63: $50
	ld   l, l                                        ; $6b64: $6d
	sub  a                                           ; $6b65: $97
	ld   a, b                                        ; $6b66: $78
	ld   d, d                                        ; $6b67: $52
	dec  c                                           ; $6b68: $0d
	ld   a, h                                        ; $6b69: $7c
	ld   [hl], l                                     ; $6b6a: $75
	ld   h, a                                        ; $6b6b: $67
	ld   e, d                                        ; $6b6c: $5a
	rst  $38                                         ; $6b6d: $ff
	rst  $38                                         ; $6b6e: $ff
	ret                                              ; $6b6f: $c9


	and  l                                           ; $6b70: $a5
	xor  $71                                         ; $6b71: $ee $71
	ld   [hl], h                                     ; $6b73: $74
	dec  c                                           ; $6b74: $0d
	ld   [hl], a                                     ; $6b75: $77
	ld   h, c                                        ; $6b76: $61
	ld   a, c                                        ; $6b77: $79
	ld   d, b                                        ; $6b78: $50
	sbc  c                                           ; $6b79: $99
	and  c                                           ; $6b7a: $a1
	ld   [hl], l                                     ; $6b7b: $75
	ld   h, a                                        ; $6b7c: $67
	ld   e, c                                        ; $6b7d: $59
	ld   sp, hl                                      ; $6b7e: $f9
	dec  c                                           ; $6b7f: $0d
	nop                                              ; $6b80: $00
	ld   a, [bc]                                     ; $6b81: $0a
	inc  e                                           ; $6b82: $1c
	ld   b, $05                                      ; $6b83: $06 $05
	dec  b                                           ; $6b85: $05
	ld   bc, $5258                                   ; $6b86: $01 $58 $52
	ld   e, b                                        ; $6b89: $58
	ld   d, d                                        ; $6b8a: $52
	rst  $38                                         ; $6b8b: $ff
	rst  $38                                         ; $6b8c: $ff
	dec  c                                           ; $6b8d: $0d
	ld   l, e                                        ; $6b8e: $6b
	and  c                                           ; $6b8f: $a1
	ld   a, b                                        ; $6b90: $78
	ld   h, c                                        ; $6b91: $61
	halt                                             ; $6b92: $76
	ld   h, a                                        ; $6b93: $67
	sub  a                                           ; $6b94: $97
	dec  c                                           ; $6b95: $0d
	inc  b                                           ; $6b96: $04
	dec  hl                                          ; $6b97: $2b
	sub  a                                           ; $6b98: $97
	ld   a, b                                        ; $6b99: $78
	ld   e, c                                        ; $6b9a: $59
	ld   [hl], c                                     ; $6b9b: $71
	ld   l, l                                        ; $6b9c: $6d
	ld   a, h                                        ; $6b9d: $7c
	ld   e, c                                        ; $6b9e: $59
	sub  [hl]                                        ; $6b9f: $96
	rst  $38                                         ; $6ba0: $ff
	rst  $38                                         ; $6ba1: $ff
	ld   sp, hl                                      ; $6ba2: $f9
	dec  c                                           ; $6ba3: $0d
	nop                                              ; $6ba4: $00
	ld   a, [bc]                                     ; $6ba5: $0a
	ld   bc, $ffff                                   ; $6ba6: $01 $ff $ff
	ld   [hl], d                                     ; $6ba9: $72
	ld   l, l                                        ; $6baa: $6d
	ld   e, l                                        ; $6bab: $5d
	sbc  [hl]                                        ; $6bac: $9e
	ld   h, [hl]                                     ; $6bad: $66
	sub  c                                           ; $6bae: $91
	ld   d, b                                        ; $6baf: $50
	ld   [bc], a                                     ; $6bb0: $02
	and  l                                           ; $6bb1: $a5
	adc  h                                           ; $6bb2: $8c
	ld   [hl], l                                     ; $6bb3: $75
	dec  c                                           ; $6bb4: $0d
	ld   [hl], a                                     ; $6bb5: $77
	ld   d, h                                        ; $6bb6: $54
	ld   h, l                                        ; $6bb7: $65
	ld   [hl], h                                     ; $6bb8: $74
	ld   l, l                                        ; $6bb9: $6d
	and  c                                           ; $6bba: $a1
	ld   l, [hl]                                     ; $6bbb: $6e
	sub  [hl]                                        ; $6bbc: $96
	ld   sp, hl                                      ; $6bbd: $f9
	dec  c                                           ; $6bbe: $0d
	nop                                              ; $6bbf: $00
	ld   a, [bc]                                     ; $6bc0: $0a
	add  hl, de                                      ; $6bc1: $19
	dec  b                                           ; $6bc2: $05
	ld   [bc], a                                     ; $6bc3: $02
	xor  l                                           ; $6bc4: $ad
	rst  JumpTable                                         ; $6bc5: $df
	push af                                          ; $6bc6: $f5
	ld   h, l                                        ; $6bc7: $65
	ld   [hl], h                                     ; $6bc8: $74
	ld   l, l                                        ; $6bc9: $6d
	nop                                              ; $6bca: $00
	nop                                              ; $6bcb: $00
	inc  b                                           ; $6bcc: $04
	dec  bc                                          ; $6bcd: $0b
	inc  b                                           ; $6bce: $04
	rra                                              ; $6bcf: $1f
	ld   [hl], l                                     ; $6bd0: $75
	ld   h, l                                        ; $6bd1: $65
	ld   [hl], h                                     ; $6bd2: $74
	ld   l, l                                        ; $6bd3: $6d
	nop                                              ; $6bd4: $00
	ld   bc, $b507                                   ; $6bd5: $01 $07 $b5
	ld   [bc], a                                     ; $6bd8: $02
	ld   [bc], a                                     ; $6bd9: $02
	inc  bc                                          ; $6bda: $03
	ld   bc, $2000                                   ; $6bdb: $01 $00 $20
	nop                                              ; $6bde: $00
	rlca                                             ; $6bdf: $07
	ld   de, $0203                                   ; $6be0: $11 $03 $02
	inc  bc                                          ; $6be3: $03
	ld   bc, $2001                                   ; $6be4: $01 $01 $20
	nop                                              ; $6be7: $00
	ld   b, $6d                                      ; $6be8: $06 $6d
	inc  bc                                          ; $6bea: $03
	rrca                                             ; $6beb: $0f
	nop                                              ; $6bec: $00
	ld   bc, $ad01                                   ; $6bed: $01 $01 $ad
	rst  JumpTable                                         ; $6bf0: $df
	push af                                          ; $6bf1: $f5
	ld   h, l                                        ; $6bf2: $65
	ld   [hl], h                                     ; $6bf3: $74
	adc  h                                           ; $6bf4: $8c
	ld   h, l                                        ; $6bf5: $65
	ld   l, l                                        ; $6bf6: $6d
	sbc  a                                           ; $6bf7: $9f
	dec  c                                           ; $6bf8: $0d
	nop                                              ; $6bf9: $00
	ld   a, [bc]                                     ; $6bfa: $0a
	inc  e                                           ; $6bfb: $1c
	ld   b, $02                                      ; $6bfc: $06 $02
	ld   [bc], a                                     ; $6bfe: $02
	dec  e                                           ; $6bff: $1d
	ld   b, b                                        ; $6c00: $40
	ld   d, $03                                      ; $6c01: $16 $03
	ld   d, $01                                      ; $6c03: $16 $01
	ld   bc, $0029                                   ; $6c05: $01 $29 $00
	ld   bc, $acd1                                   ; $6c08: $01 $d1 $ac
	ld   a, [$0610]                                  ; $6c0b: $fa $10 $06
	db   $10                                         ; $6c0e: $10
	ld   [bc], a                                     ; $6c0f: $02
	and  c                                           ; $6c10: $a1
	ld   a, c                                        ; $6c11: $79
	ld   a, b                                        ; $6c12: $78
	sbc  c                                           ; $6c13: $99
	ld   l, [hl]                                     ; $6c14: $6e
	sbc  e                                           ; $6c15: $9b
	ld   a, [$030d]                                  ; $6c16: $fa $0d $03
	add  [hl]                                        ; $6c19: $86
	ld   [bc], a                                     ; $6c1a: $02
	xor  l                                           ; $6c1b: $ad
	ld   h, [hl]                                     ; $6c1c: $66
	sub  c                                           ; $6c1d: $91
	ld   a, e                                        ; $6c1e: $7b
	ld   d, [hl]                                     ; $6c1f: $56
	and  c                                           ; $6c20: $a1
	ld   l, [hl]                                     ; $6c21: $6e
	ld   e, c                                        ; $6c22: $59
	sub  a                                           ; $6c23: $97
	dec  c                                           ; $6c24: $0d
	inc  bc                                          ; $6c25: $03
	xor  c                                           ; $6c26: $a9
	ld   e, c                                        ; $6c27: $59
	ld   a, c                                        ; $6c28: $79
	ld   [bc], a                                     ; $6c29: $02
	jp   nz, Jump_044_6d52                           ; $6c2a: $c2 $52 $6d

	sbc  b                                           ; $6c2d: $98
	ld   h, l                                        ; $6c2e: $65
	sbc  e                                           ; $6c2f: $9b
	sub  [hl]                                        ; $6c30: $96
	sbc  a                                           ; $6c31: $9f
	dec  c                                           ; $6c32: $0d
	nop                                              ; $6c33: $00
	ld   a, [bc]                                     ; $6c34: $0a
	ld   bc, $9166                                   ; $6c35: $01 $66 $91
	ld   d, b                                        ; $6c38: $50
	ld   a, b                                        ; $6c39: $78
	sbc  a                                           ; $6c3a: $9f
	dec  c                                           ; $6c3b: $0d
	nop                                              ; $6c3c: $00
	ld   a, [bc]                                     ; $6c3d: $0a
	dec  c                                           ; $6c3e: $0d
	nop                                              ; $6c3f: $00
	nop                                              ; $6c40: $00
	rrca                                             ; $6c41: $0f
	nop                                              ; $6c42: $00
	ld   bc, $1e09                                   ; $6c43: $01 $09 $1e
	nop                                              ; $6c46: $00
	rrca                                             ; $6c47: $0f
	nop                                              ; $6c48: $00
	ld   bc, $0401                                   ; $6c49: $01 $01 $04
	dec  bc                                          ; $6c4c: $0b
	inc  b                                           ; $6c4d: $04
	rra                                              ; $6c4e: $1f
	ld   [hl], l                                     ; $6c4f: $75
	ld   h, l                                        ; $6c50: $65
	ld   [hl], h                                     ; $6c51: $74
	adc  h                                           ; $6c52: $8c
	ld   h, l                                        ; $6c53: $65
	ld   l, l                                        ; $6c54: $6d
	rst  $38                                         ; $6c55: $ff
	rst  $38                                         ; $6c56: $ff
	dec  c                                           ; $6c57: $0d
	nop                                              ; $6c58: $00
	ld   a, [bc]                                     ; $6c59: $0a
	inc  e                                           ; $6c5a: $1c
	ld   b, $05                                      ; $6c5b: $06 $05
	dec  b                                           ; $6c5d: $05
	ld   bc, $dfad                                   ; $6c5e: $01 $ad $df
	push af                                          ; $6c61: $f5
	ld   h, a                                        ; $6c62: $67
	sbc  c                                           ; $6c63: $99
	sub  [hl]                                        ; $6c64: $96
	sbc  b                                           ; $6c65: $98
	rst  JumpTable                                         ; $6c66: $df
	cp   b                                           ; $6c67: $b8
	ld   l, [hl]                                     ; $6c68: $6e
	ld   e, a                                        ; $6c69: $5f
	ld   [hl], a                                     ; $6c6a: $77
	sub  [hl]                                        ; $6c6b: $96
	dec  c                                           ; $6c6c: $0d
	rst  $38                                         ; $6c6d: $ff
	rst  $38                                         ; $6c6e: $ff
	inc  b                                           ; $6c6f: $04
	ld   [$9202], sp                                 ; $6c70: $08 $02 $92
	ld   a, h                                        ; $6c73: $7c
	ld   [bc], a                                     ; $6c74: $02
	bit  6, l                                        ; $6c75: $cb $75
	ld   h, a                                        ; $6c77: $67
	sbc  c                                           ; $6c78: $99
	ld   a, b                                        ; $6c79: $78
	sub  [hl]                                        ; $6c7a: $96
	ld   a, b                                        ; $6c7b: $78
	sbc  a                                           ; $6c7c: $9f
	dec  c                                           ; $6c7d: $0d
	inc  b                                           ; $6c7e: $04
	ld   e, $03                                      ; $6c7f: $1e $03
	add  d                                           ; $6c81: $82
	ld   h, e                                        ; $6c82: $63
	adc  h                                           ; $6c83: $8c
	ld   a, c                                        ; $6c84: $79
	adc  a                                           ; $6c85: $8f
	ld   d, d                                        ; $6c86: $52
	sbc  l                                           ; $6c87: $9d
	ld   e, l                                        ; $6c88: $5d
	ld   l, [hl]                                     ; $6c89: $6e
	ld   e, c                                        ; $6c8a: $59
	sub  a                                           ; $6c8b: $97
	sub  [hl]                                        ; $6c8c: $96
	sbc  a                                           ; $6c8d: $9f
	dec  c                                           ; $6c8e: $0d
	nop                                              ; $6c8f: $00
	ld   a, [bc]                                     ; $6c90: $0a
	ld   bc, $9166                                   ; $6c91: $01 $66 $91
	ld   d, b                                        ; $6c94: $50
	ld   a, b                                        ; $6c95: $78
	sbc  a                                           ; $6c96: $9f
	dec  c                                           ; $6c97: $0d
	nop                                              ; $6c98: $00
	ld   a, [bc]                                     ; $6c99: $0a
	dec  c                                           ; $6c9a: $0d
	nop                                              ; $6c9b: $00
	nop                                              ; $6c9c: $00
	rrca                                             ; $6c9d: $0f
	nop                                              ; $6c9e: $00
	ld   bc, $1e09                                   ; $6c9f: $01 $09 $1e
	nop                                              ; $6ca2: $00
	inc  e                                           ; $6ca3: $1c
	ld   b, $05                                      ; $6ca4: $06 $05
	dec  b                                           ; $6ca6: $05
	ld   bc, $fb50                                   ; $6ca7: $01 $50 $fb
	sbc  l                                           ; $6caa: $9d
	ld   e, c                                        ; $6cab: $59
	ld   [hl], c                                     ; $6cac: $71
	ld   l, l                                        ; $6cad: $6d
	sbc  [hl]                                        ; $6cae: $9e
	sbc  l                                           ; $6caf: $9d
	ld   e, c                                        ; $6cb0: $59
	ld   [hl], c                                     ; $6cb1: $71
	ld   l, l                                        ; $6cb2: $6d
	rst  $38                                         ; $6cb3: $ff
	rst  $38                                         ; $6cb4: $ff
	dec  c                                           ; $6cb5: $0d
	ret                                              ; $6cb6: $c9


	and  l                                           ; $6cb7: $a5
	xor  $78                                         ; $6cb8: $ee $78
	sub  a                                           ; $6cba: $97
	ld   [hl], a                                     ; $6cbb: $77
	ld   a, h                                        ; $6cbc: $7c
	ld   [bc], a                                     ; $6cbd: $02
	ld   e, h                                        ; $6cbe: $5c
	ld   a, c                                        ; $6cbf: $79
	sub  b                                           ; $6cc0: $90
	ld   d, b                                        ; $6cc1: $50
	sbc  c                                           ; $6cc2: $99
	ld   e, c                                        ; $6cc3: $59
	sub  a                                           ; $6cc4: $97
	dec  c                                           ; $6cc5: $0d
	ld   l, a                                        ; $6cc6: $6f
	sub  c                                           ; $6cc7: $91
	and  c                                           ; $6cc8: $a1
	halt                                             ; $6cc9: $76
	ld   h, l                                        ; $6cca: $65
	ld   [hl], h                                     ; $6ccb: $74
	ld   h, c                                        ; $6ccc: $61
	ld   d, d                                        ; $6ccd: $52
	sub  [hl]                                        ; $6cce: $96
	sbc  a                                           ; $6ccf: $9f
	dec  c                                           ; $6cd0: $0d
	nop                                              ; $6cd1: $00
	ld   a, [bc]                                     ; $6cd2: $0a
	dec  c                                           ; $6cd3: $0d
	nop                                              ; $6cd4: $00
	nop                                              ; $6cd5: $00
	rrca                                             ; $6cd6: $0f
	nop                                              ; $6cd7: $00
	ld   bc, $1e09                                   ; $6cd8: $01 $09 $1e
	nop                                              ; $6cdb: $00
	rrca                                             ; $6cdc: $0f
	nop                                              ; $6cdd: $00
	ld   bc, $ac01                                   ; $6cde: $01 $01 $ac
	push af                                          ; $6ce1: $f5
	bit  4, e                                        ; $6ce2: $cb $63
	and  c                                           ; $6ce4: $a1
	ld   a, c                                        ; $6ce5: $79
	ld   [hl], d                                     ; $6ce6: $72
	ld   d, d                                        ; $6ce7: $52
	ld   [hl], h                                     ; $6ce8: $74
	dec  c                                           ; $6ce9: $0d
	ld   [bc], a                                     ; $6cea: $02
	jp   nz, Jump_044_6d5b                           ; $6ceb: $c2 $5b $6d

	ld   d, d                                        ; $6cee: $52
	and  c                                           ; $6cef: $a1
	ld   [hl], l                                     ; $6cf0: $75
	ld   h, a                                        ; $6cf1: $67
	ld   e, a                                        ; $6cf2: $5f
	ld   [hl], a                                     ; $6cf3: $77
	rst  $38                                         ; $6cf4: $ff
	rst  $38                                         ; $6cf5: $ff
	dec  c                                           ; $6cf6: $0d
	nop                                              ; $6cf7: $00
	ld   a, [bc]                                     ; $6cf8: $0a
	inc  e                                           ; $6cf9: $1c
	ld   b, $03                                      ; $6cfa: $06 $03
	inc  bc                                          ; $6cfc: $03
	ld   bc, $f956                                   ; $6cfd: $01 $56 $f9
	db   $10                                         ; $6d00: $10
	ld   d, b                                        ; $6d01: $50
	ld   l, l                                        ; $6d02: $6d
	ld   d, d                                        ; $6d03: $52
	ld   a, h                                        ; $6d04: $7c
	ld   h, c                                        ; $6d05: $61
	halt                                             ; $6d06: $76
	ld   sp, hl                                      ; $6d07: $f9
	dec  c                                           ; $6d08: $0d
	nop                                              ; $6d09: $00
	ld   a, [bc]                                     ; $6d0a: $0a
	inc  e                                           ; $6d0b: $1c
	ld   b, $00                                      ; $6d0c: $06 $00
	nop                                              ; $6d0e: $00
	ld   bc, $9876                                   ; $6d0f: $01 $76 $98
	ld   l, l                                        ; $6d12: $6d
	ld   [hl], h                                     ; $6d13: $74
	ld   [hl], h                                     ; $6d14: $74
	dec  b                                           ; $6d15: $05
	jr   nz, jr_044_6d7f                             ; $6d16: $20 $67

	ld   h, c                                        ; $6d18: $61
	halt                                             ; $6d19: $76
	ld   a, e                                        ; $6d1a: $7b
	ld   d, [hl]                                     ; $6d1b: $56
	ld   e, a                                        ; $6d1c: $5f
	ld   [hl], a                                     ; $6d1d: $77
	sbc  [hl]                                        ; $6d1e: $9e
	dec  c                                           ; $6d1f: $0d
	adc  h                                           ; $6d20: $8c
	sbc  [hl]                                        ; $6d21: $9e
	ld   h, c                                        ; $6d22: $61
	and  c                                           ; $6d23: $a1
	ld   [hl], a                                     ; $6d24: $77
	db   $e3                                         ; $6d25: $e3
	cp   b                                           ; $6d26: $b8
	ld   [hl], l                                     ; $6d27: $75
	sub  b                                           ; $6d28: $90
	inc  bc                                          ; $6d29: $03
	ld   l, d                                        ; $6d2a: $6a
	ld   d, d                                        ; $6d2b: $52
	ld   a, b                                        ; $6d2c: $78
	ld   e, d                                        ; $6d2d: $5a
	sub  a                                           ; $6d2e: $97
	dec  c                                           ; $6d2f: $0d
	dec  b                                           ; $6d30: $05
	jr   nz, jr_044_6d98                             ; $6d31: $20 $65

	ld   [hl], h                                     ; $6d33: $74
	sub  d                                           ; $6d34: $92
	sbc  c                                           ; $6d35: $99
	sub  [hl]                                        ; $6d36: $96
	sbc  a                                           ; $6d37: $9f
	dec  c                                           ; $6d38: $0d
	nop                                              ; $6d39: $00
	ld   a, [bc]                                     ; $6d3a: $0a
	ld   bc, $9166                                   ; $6d3b: $01 $66 $91
	sbc  [hl]                                        ; $6d3e: $9e
	ld   d, d                                        ; $6d3f: $52
	adc  h                                           ; $6d40: $8c
	ld   d, d                                        ; $6d41: $52
	ld   l, e                                        ; $6d42: $6b
	ld   e, d                                        ; $6d43: $5a
	ld   h, l                                        ; $6d44: $65
	ld   d, d                                        ; $6d45: $52
	ld   e, c                                        ; $6d46: $59
	sub  a                                           ; $6d47: $97
	dec  c                                           ; $6d48: $0d
	adc  h                                           ; $6d49: $8c
	ld   l, l                                        ; $6d4a: $6d
	ld   a, b                                        ; $6d4b: $78
	sbc  a                                           ; $6d4c: $9f
	dec  c                                           ; $6d4d: $0d
	nop                                              ; $6d4e: $00
	ld   a, [bc]                                     ; $6d4f: $0a
	dec  c                                           ; $6d50: $0d
	nop                                              ; $6d51: $00

Jump_044_6d52:
	nop                                              ; $6d52: $00
	rrca                                             ; $6d53: $0f
	nop                                              ; $6d54: $00
	ld   bc, $1e09                                   ; $6d55: $01 $09 $1e
	nop                                              ; $6d58: $00
	nop                                              ; $6d59: $00
	inc  bc                                          ; $6d5a: $03

Jump_044_6d5b:
	ld   d, b                                        ; $6d5b: $50
	ld   [bc], a                                     ; $6d5c: $02
	nop                                              ; $6d5d: $00
	inc  bc                                          ; $6d5e: $03
	ld   c, d                                        ; $6d5f: $4a
	add  hl, hl                                      ; $6d60: $29
	add  hl, hl                                      ; $6d61: $29
	ld   bc, $2201                                   ; $6d62: $01 $01 $22
	nop                                              ; $6d65: $00
	inc  e                                           ; $6d66: $1c
	inc  bc                                          ; $6d67: $03
	nop                                              ; $6d68: $00
	nop                                              ; $6d69: $00
	ld   [bc], a                                     ; $6d6a: $02
	ld   bc, $9750                                   ; $6d6b: $01 $50 $97
	sbc  [hl]                                        ; $6d6e: $9e
	ld   e, b                                        ; $6d6f: $58
	ld   a, l                                        ; $6d70: $7d
	sub  [hl]                                        ; $6d71: $96
	ld   d, h                                        ; $6d72: $54
	sbc  a                                           ; $6d73: $9f
	dec  c                                           ; $6d74: $0d
	nop                                              ; $6d75: $00
	ld   a, [bc]                                     ; $6d76: $0a
	rrca                                             ; $6d77: $0f
	nop                                              ; $6d78: $00
	ld   bc, $df01                                   ; $6d79: $01 $01 $df
	db   $ec                                         ; $6d7c: $ec
	and  e                                           ; $6d7d: $a3
	ld   h, e                                        ; $6d7e: $63

jr_044_6d7f:
	and  c                                           ; $6d7f: $a1
	sbc  [hl]                                        ; $6d80: $9e
	dec  c                                           ; $6d81: $0d
	ld   e, b                                        ; $6d82: $58
	ld   a, l                                        ; $6d83: $7d
	sub  [hl]                                        ; $6d84: $96
	ld   d, h                                        ; $6d85: $54
	ld   h, d                                        ; $6d86: $62
	ld   h, h                                        ; $6d87: $64
	ld   d, d                                        ; $6d88: $52
	adc  h                                           ; $6d89: $8c
	ld   h, a                                        ; $6d8a: $67
	sbc  a                                           ; $6d8b: $9f
	dec  c                                           ; $6d8c: $0d
	ld   bc, $0403                                   ; $6d8d: $01 $03 $04
	ld   c, c                                        ; $6d90: $49
	and  b                                           ; $6d91: $a0
	ld   [bc], a                                     ; $6d92: $02
	jp   nz, Jump_044_5461                           ; $6d93: $c2 $61 $54

	ld   e, c                                        ; $6d96: $59
	ld   a, b                                        ; $6d97: $78

jr_044_6d98:
	rst  $38                                         ; $6d98: $ff
	rst  $38                                         ; $6d99: $ff
	ld   bc, $0d04                                   ; $6d9a: $01 $04 $0d
	nop                                              ; $6d9d: $00
	ld   a, [bc]                                     ; $6d9e: $0a
	add  hl, de                                      ; $6d9f: $19
	dec  b                                           ; $6da0: $05
	inc  bc                                          ; $6da1: $03
	inc  b                                           ; $6da2: $04
	ld   [$8f02], sp                                 ; $6da3: $08 $02 $8f
	ld   [bc], a                                     ; $6da6: $02
	sub  b                                           ; $6da7: $90
	ld   [bc], a                                     ; $6da8: $02
	sub  c                                           ; $6da9: $91
	inc  b                                           ; $6daa: $04
	add  hl, bc                                      ; $6dab: $09
	ld   a, c                                        ; $6dac: $79
	ld   [hl], d                                     ; $6dad: $72
	ld   d, d                                        ; $6dae: $52
	ld   [hl], h                                     ; $6daf: $74
	nop                                              ; $6db0: $00
	nop                                              ; $6db1: $00
	ret                                              ; $6db2: $c9


	and  l                                           ; $6db3: $a5
	xor  $7c                                         ; $6db4: $ee $7c
	inc  b                                           ; $6db6: $04
	ld   a, d                                        ; $6db7: $7a
	inc  bc                                          ; $6db8: $03
	ld   c, e                                        ; $6db9: $4b
	ld   a, c                                        ; $6dba: $79
	ld   [hl], d                                     ; $6dbb: $72
	ld   d, d                                        ; $6dbc: $52
	ld   [hl], h                                     ; $6dbd: $74
	nop                                              ; $6dbe: $00
	ld   bc, $ecdf                                   ; $6dbf: $01 $df $ec
	and  e                                           ; $6dc2: $a3
	ld   a, c                                        ; $6dc3: $79
	ld   [hl], d                                     ; $6dc4: $72
	ld   d, d                                        ; $6dc5: $52
	ld   [hl], h                                     ; $6dc6: $74
	nop                                              ; $6dc7: $00
	ld   [bc], a                                     ; $6dc8: $02
	rlca                                             ; $6dc9: $07
	and  l                                           ; $6dca: $a5
	nop                                              ; $6dcb: $00
	ld   [bc], a                                     ; $6dcc: $02
	inc  bc                                          ; $6dcd: $03
	ld   bc, $2000                                   ; $6dce: $01 $00 $20
	nop                                              ; $6dd1: $00
	rlca                                             ; $6dd2: $07
	ld   h, a                                        ; $6dd3: $67
	ld   bc, $0302                                   ; $6dd4: $01 $02 $03
	ld   bc, $2001                                   ; $6dd7: $01 $01 $20
	nop                                              ; $6dda: $00
	rlca                                             ; $6ddb: $07
	cp   h                                           ; $6ddc: $bc
	ld   [bc], a                                     ; $6ddd: $02
	ld   [bc], a                                     ; $6dde: $02
	inc  bc                                          ; $6ddf: $03
	ld   bc, $2002                                   ; $6de0: $01 $02 $20
	nop                                              ; $6de3: $00
	ld   b, $81                                      ; $6de4: $06 $81
	nop                                              ; $6de6: $00
	inc  e                                           ; $6de7: $1c
	inc  bc                                          ; $6de8: $03
	nop                                              ; $6de9: $00
	nop                                              ; $6dea: $00
	ld   bc, $a502                                   ; $6deb: $01 $02 $a5
	inc  b                                           ; $6dee: $04
	xor  d                                           ; $6def: $aa
	sub  b                                           ; $6df0: $90
	ld   [bc], a                                     ; $6df1: $02
	jr   nz, jr_044_6df8                             ; $6df2: $20 $04

	xor  d                                           ; $6df4: $aa
	sbc  [hl]                                        ; $6df5: $9e
	dec  c                                           ; $6df6: $0d
	ld   e, d                                        ; $6df7: $5a

jr_044_6df8:
	and  c                                           ; $6df8: $a1
	ld   a, [hl]                                     ; $6df9: $7e
	sbc  b                                           ; $6dfa: $98
	ld   a, b                                        ; $6dfb: $78
	ld   h, e                                        ; $6dfc: $63
	ld   d, d                                        ; $6dfd: $52
	sbc  a                                           ; $6dfe: $9f
	dec  c                                           ; $6dff: $0d
	nop                                              ; $6e00: $00
	ld   a, [bc]                                     ; $6e01: $0a
	dec  c                                           ; $6e02: $0d
	nop                                              ; $6e03: $00
	nop                                              ; $6e04: $00
	rrca                                             ; $6e05: $0f
	nop                                              ; $6e06: $00
	ld   bc, $1e09                                   ; $6e07: $01 $09 $1e
	nop                                              ; $6e0a: $00
	rrca                                             ; $6e0b: $0f
	nop                                              ; $6e0c: $00
	ld   bc, $0401                                   ; $6e0d: $01 $01 $04
	ld   [$8f02], sp                                 ; $6e10: $08 $02 $8f
	ld   [bc], a                                     ; $6e13: $02
	sub  b                                           ; $6e14: $90
	ld   [bc], a                                     ; $6e15: $02
	sub  c                                           ; $6e16: $91
	inc  b                                           ; $6e17: $04
	add  hl, bc                                      ; $6e18: $09
	ld   a, c                                        ; $6e19: $79
	inc  bc                                          ; $6e1a: $03
	ld   l, [hl]                                     ; $6e1b: $6e
	ld   [bc], a                                     ; $6e1c: $02
	db   $fc                                         ; $6e1d: $fc
	ld   e, d                                        ; $6e1e: $5a
	inc  b                                           ; $6e1f: $04
	rrca                                             ; $6e20: $0f
	ld   d, d                                        ; $6e21: $52
	ld   a, h                                        ; $6e22: $7c
	ld   a, l                                        ; $6e23: $7d
	dec  c                                           ; $6e24: $0d
	ld   a, b                                        ; $6e25: $78
	ld   l, d                                        ; $6e26: $6a
	ld   [hl], l                                     ; $6e27: $75
	ld   h, a                                        ; $6e28: $67
	ld   e, c                                        ; $6e29: $59
	ld   sp, hl                                      ; $6e2a: $f9
	dec  c                                           ; $6e2b: $0d
	nop                                              ; $6e2c: $00
	ld   a, [bc]                                     ; $6e2d: $0a
	inc  e                                           ; $6e2e: $1c
	inc  bc                                          ; $6e2f: $03
	nop                                              ; $6e30: $00
	nop                                              ; $6e31: $00
	ld   bc, $6e03                                   ; $6e32: $01 $03 $6e
	ld   [bc], a                                     ; $6e35: $02
	db   $fc                                         ; $6e36: $fc
	ld   a, h                                        ; $6e37: $7c
	inc  b                                           ; $6e38: $04
	ld   a, b                                        ; $6e39: $78
	ld   e, d                                        ; $6e3a: $5a
	ld   [bc], a                                     ; $6e3b: $02
	dec  d                                           ; $6e3c: $15
	ld   [bc], a                                     ; $6e3d: $02
	db   $fc                                         ; $6e3e: $fc
	sub  [hl]                                        ; $6e3f: $96
	sbc  b                                           ; $6e40: $98
	dec  c                                           ; $6e41: $0d
	ld   [bc], a                                     ; $6e42: $02
	cp   [hl]                                        ; $6e43: $be
	ld   d, d                                        ; $6e44: $52
	dec  b                                           ; $6e45: $05
	add  hl, bc                                      ; $6e46: $09
	dec  b                                           ; $6e47: $05
	ld   a, [bc]                                     ; $6e48: $0a
	and  b                                           ; $6e49: $a0
	inc  b                                           ; $6e4a: $04
	ldh  [c], a                                      ; $6e4b: $e2
	ld   h, l                                        ; $6e4c: $65
	ld   [hl], h                                     ; $6e4d: $74
	ld   d, d                                        ; $6e4e: $52
	sbc  c                                           ; $6e4f: $99
	inc  b                                           ; $6e50: $04
	ld   a, d                                        ; $6e51: $7a
	ld   [bc], a                                     ; $6e52: $02
	ld   a, e                                        ; $6e53: $7b
	ld   e, d                                        ; $6e54: $5a
	dec  c                                           ; $6e55: $0d
	inc  b                                           ; $6e56: $04
	rrca                                             ; $6e57: $0f
	ld   d, d                                        ; $6e58: $52
	ld   e, c                                        ; $6e59: $59
	sub  a                                           ; $6e5a: $97
	sub  [hl]                                        ; $6e5b: $96
	sbc  a                                           ; $6e5c: $9f
	dec  c                                           ; $6e5d: $0d
	nop                                              ; $6e5e: $00
	ld   a, [bc]                                     ; $6e5f: $0a
	rrca                                             ; $6e60: $0f
	nop                                              ; $6e61: $00
	ld   bc, $0401                                   ; $6e62: $01 $01 $04
	ld   c, $03                                      ; $6e65: $0e $03
	sub  b                                           ; $6e67: $90
	ld   h, e                                        ; $6e68: $63
	and  c                                           ; $6e69: $a1
	ld   a, l                                        ; $6e6a: $7d
	ld   sp, hl                                      ; $6e6b: $f9
	dec  c                                           ; $6e6c: $0d
	nop                                              ; $6e6d: $00

jr_044_6e6e:
	ld   a, [bc]                                     ; $6e6e: $0a
	inc  e                                           ; $6e6f: $1c
	inc  bc                                          ; $6e70: $03
	nop                                              ; $6e71: $00
	nop                                              ; $6e72: $00
	ld   bc, $1502                                   ; $6e73: $01 $02 $15
	ld   [bc], a                                     ; $6e76: $02
	db   $fc                                         ; $6e77: $fc
	ld   [hl], l                                     ; $6e78: $75
	ld   d, b                                        ; $6e79: $50
	sbc  b                                           ; $6e7a: $98
	ld   a, b                                        ; $6e7b: $78
	ld   e, d                                        ; $6e7c: $5a
	sub  a                                           ; $6e7d: $97
	dec  c                                           ; $6e7e: $0d
	ld   [bc], a                                     ; $6e7f: $02
	cp   [hl]                                        ; $6e80: $be
	ld   d, d                                        ; $6e81: $52
	dec  b                                           ; $6e82: $05
	add  hl, bc                                      ; $6e83: $09
	dec  b                                           ; $6e84: $05
	ld   a, [bc]                                     ; $6e85: $0a
	and  b                                           ; $6e86: $a0
	inc  bc                                          ; $6e87: $03
	and  b                                           ; $6e88: $a0
	ld   [hl], c                                     ; $6e89: $71
	ld   [hl], h                                     ; $6e8a: $74
	ld   d, d                                        ; $6e8b: $52
	sbc  c                                           ; $6e8c: $99
	sbc  l                                           ; $6e8d: $9d
	sbc  a                                           ; $6e8e: $9f
	dec  c                                           ; $6e8f: $0d
	ld   l, [hl]                                     ; $6e90: $6e
	ld   e, c                                        ; $6e91: $59
	sub  a                                           ; $6e92: $97
	inc  bc                                          ; $6e93: $03
	ret  z                                           ; $6e94: $c8

	ld   l, l                                        ; $6e95: $6d
	ld   l, a                                        ; $6e96: $6f
	ld   a, h                                        ; $6e97: $7c
	inc  b                                           ; $6e98: $04
	ld   a, [bc]                                     ; $6e99: $0a
	inc  bc                                          ; $6e9a: $03
	jp   nc, Jump_044_7c78                           ; $6e9b: $d2 $78 $7c

	sub  [hl]                                        ; $6e9e: $96
	sbc  a                                           ; $6e9f: $9f
	dec  c                                           ; $6ea0: $0d
	nop                                              ; $6ea1: $00
	ld   a, [bc]                                     ; $6ea2: $0a
	ld   bc, $9e63                                   ; $6ea3: $01 $63 $9e
	ld   e, b                                        ; $6ea6: $58
	ld   h, l                                        ; $6ea7: $65
	sub  c                                           ; $6ea8: $91
	add  a                                           ; $6ea9: $87
	sbc  b                                           ; $6eaa: $98
	ld   a, l                                        ; $6eab: $7d
	ld   h, c                                        ; $6eac: $61
	ld   h, c                                        ; $6ead: $61
	adc  h                                           ; $6eae: $8c
	ld   [hl], l                                     ; $6eaf: $75
	sbc  a                                           ; $6eb0: $9f
	dec  c                                           ; $6eb1: $0d
	inc  bc                                          ; $6eb2: $03
	ld   l, l                                        ; $6eb3: $6d
	dec  b                                           ; $6eb4: $05
	add  hl, de                                      ; $6eb5: $19
	ld   a, c                                        ; $6eb6: $79
	ld   e, b                                        ; $6eb7: $58
	ld   e, l                                        ; $6eb8: $5d
	sbc  d                                           ; $6eb9: $9a
	ld   a, b                                        ; $6eba: $78
	ld   d, d                                        ; $6ebb: $52
	sub  [hl]                                        ; $6ebc: $96
	ld   d, h                                        ; $6ebd: $54
	ld   a, c                                        ; $6ebe: $79
	ld   a, e                                        ; $6ebf: $7b
	sbc  a                                           ; $6ec0: $9f
	dec  c                                           ; $6ec1: $0d
	nop                                              ; $6ec2: $00
	ld   a, [bc]                                     ; $6ec3: $0a
	dec  c                                           ; $6ec4: $0d
	nop                                              ; $6ec5: $00
	nop                                              ; $6ec6: $00
	rrca                                             ; $6ec7: $0f
	nop                                              ; $6ec8: $00
	ld   bc, $1e09                                   ; $6ec9: $01 $09 $1e
	nop                                              ; $6ecc: $00
	rrca                                             ; $6ecd: $0f
	nop                                              ; $6ece: $00
	ld   bc, $0201                                   ; $6ecf: $01 $01 $02
	sub  l                                           ; $6ed2: $95
	inc  bc                                          ; $6ed3: $03
	jr   jr_044_6e6e                                 ; $6ed4: $18 $98

	inc  bc                                          ; $6ed6: $03
	rst  $10                                         ; $6ed7: $d7
	ld   a, c                                        ; $6ed8: $79
	ld   [bc], a                                     ; $6ed9: $02
	sub  l                                           ; $6eda: $95
	ld   d, b                                        ; $6edb: $50
	ld   l, l                                        ; $6edc: $6d
	sub  a                                           ; $6edd: $97
	ld   a, b                                        ; $6ede: $78
	ld   d, d                                        ; $6edf: $52
	ld   a, h                                        ; $6ee0: $7c
	dec  c                                           ; $6ee1: $0d
	ld   [hl], l                                     ; $6ee2: $75
	ld   h, a                                        ; $6ee3: $67
	ld   e, d                                        ; $6ee4: $5a
	rst  $38                                         ; $6ee5: $ff
	rst  $38                                         ; $6ee6: $ff
	ret                                              ; $6ee7: $c9


	and  l                                           ; $6ee8: $a5
	xor  $71                                         ; $6ee9: $ee $71
	ld   [hl], h                                     ; $6eeb: $74
	ld   [hl], a                                     ; $6eec: $77
	ld   h, c                                        ; $6eed: $61
	ld   a, c                                        ; $6eee: $79
	dec  c                                           ; $6eef: $0d
	ld   d, b                                        ; $6ef0: $50
	sbc  c                                           ; $6ef1: $99
	and  c                                           ; $6ef2: $a1
	ld   [hl], l                                     ; $6ef3: $75
	ld   h, a                                        ; $6ef4: $67
	ld   e, c                                        ; $6ef5: $59
	ld   sp, hl                                      ; $6ef6: $f9
	dec  c                                           ; $6ef7: $0d
	nop                                              ; $6ef8: $00
	ld   a, [bc]                                     ; $6ef9: $0a
	inc  e                                           ; $6efa: $1c
	inc  bc                                          ; $6efb: $03
	rlca                                             ; $6efc: $07
	rlca                                             ; $6efd: $07
	ld   bc, $ff56                                   ; $6efe: $01 $56 $ff
	rst  $38                                         ; $6f01: $ff
	ld   sp, hl                                      ; $6f02: $f9
	dec  c                                           ; $6f03: $0d
	ld   h, [hl]                                     ; $6f04: $66
	sub  c                                           ; $6f05: $91
	ld   d, b                                        ; $6f06: $50
	sbc  [hl]                                        ; $6f07: $9e
	ld   [bc], a                                     ; $6f08: $02
	and  l                                           ; $6f09: $a5
	adc  h                                           ; $6f0a: $8c
	ld   [hl], l                                     ; $6f0b: $75
	ld   [hl], a                                     ; $6f0c: $77
	ld   d, h                                        ; $6f0d: $54
	ld   h, l                                        ; $6f0e: $65
	ld   [hl], h                                     ; $6f0f: $74
	ld   l, l                                        ; $6f10: $6d
	ld   a, h                                        ; $6f11: $7c
	ld   sp, hl                                      ; $6f12: $f9
	dec  c                                           ; $6f13: $0d
	nop                                              ; $6f14: $00
	ld   a, [bc]                                     ; $6f15: $0a
	add  hl, de                                      ; $6f16: $19
	dec  b                                           ; $6f17: $05
	ld   [bc], a                                     ; $6f18: $02
	ld   e, d                                        ; $6f19: $5a
	adc  h                                           ; $6f1a: $8c
	and  c                                           ; $6f1b: $a1
	ld   h, l                                        ; $6f1c: $65
	ld   [hl], h                                     ; $6f1d: $74
	adc  h                                           ; $6f1e: $8c
	ld   h, l                                        ; $6f1f: $65
	ld   l, l                                        ; $6f20: $6d
	nop                                              ; $6f21: $00
	nop                                              ; $6f22: $00
	inc  b                                           ; $6f23: $04
	dec  bc                                          ; $6f24: $0b
	inc  b                                           ; $6f25: $04
	rra                                              ; $6f26: $1f
	ld   [hl], l                                     ; $6f27: $75
	dec  b                                           ; $6f28: $05
	or   [hl]                                        ; $6f29: $b6
	dec  b                                           ; $6f2a: $05
	ld   de, $8c65                                   ; $6f2b: $11 $65 $8c
	ld   h, l                                        ; $6f2e: $65
	ld   l, l                                        ; $6f2f: $6d
	nop                                              ; $6f30: $00
	ld   bc, $e107                                   ; $6f31: $01 $07 $e1
	ld   bc, $0302                                   ; $6f34: $01 $02 $03
	ld   bc, $2000                                   ; $6f37: $01 $00 $20
	nop                                              ; $6f3a: $00
	rlca                                             ; $6f3b: $07
	dec  e                                           ; $6f3c: $1d
	ld   [bc], a                                     ; $6f3d: $02
	ld   [bc], a                                     ; $6f3e: $02
	inc  bc                                          ; $6f3f: $03
	ld   bc, $2001                                   ; $6f40: $01 $01 $20
	nop                                              ; $6f43: $00
	ld   b, $6b                                      ; $6f44: $06 $6b
	ld   [bc], a                                     ; $6f46: $02
	rrca                                             ; $6f47: $0f
	nop                                              ; $6f48: $00
	ld   bc, $5a01                                   ; $6f49: $01 $01 $5a
	adc  h                                           ; $6f4c: $8c
	and  c                                           ; $6f4d: $a1
	ld   h, l                                        ; $6f4e: $65
	ld   [hl], h                                     ; $6f4f: $74
	adc  h                                           ; $6f50: $8c
	ld   h, l                                        ; $6f51: $65
	ld   l, l                                        ; $6f52: $6d
	sbc  a                                           ; $6f53: $9f
	dec  c                                           ; $6f54: $0d
	nop                                              ; $6f55: $00
	ld   a, [bc]                                     ; $6f56: $0a
	inc  e                                           ; $6f57: $1c
	inc  bc                                          ; $6f58: $03
	inc  b                                           ; $6f59: $04
	inc  b                                           ; $6f5a: $04
	dec  e                                           ; $6f5b: $1d
	ld   b, b                                        ; $6f5c: $40
	inc  de                                          ; $6f5d: $13
	inc  bc                                          ; $6f5e: $03
	inc  de                                          ; $6f5f: $13
	ld   bc, $2902                                   ; $6f60: $01 $02 $29
	nop                                              ; $6f63: $00
	ld   bc, $acd1                                   ; $6f64: $01 $d1 $ac
	ld   a, e                                        ; $6f67: $7b
	rst  $38                                         ; $6f68: $ff
	rst  $38                                         ; $6f69: $ff
	dec  c                                           ; $6f6a: $0d
	ld   b, $10                                      ; $6f6b: $06 $10
	ld   [bc], a                                     ; $6f6d: $02
	and  c                                           ; $6f6e: $a1
	ld   a, c                                        ; $6f6f: $79
	ld   [hl], l                                     ; $6f70: $75
	sub  b                                           ; $6f71: $90
	ld   a, b                                        ; $6f72: $78
	ld   [hl], c                                     ; $6f73: $71
	ld   l, l                                        ; $6f74: $6d
	sub  a                                           ; $6f75: $97
	dec  c                                           ; $6f76: $0d
	ld   [hl], a                                     ; $6f77: $77
	ld   d, h                                        ; $6f78: $54
	ld   h, a                                        ; $6f79: $67
	sbc  c                                           ; $6f7a: $99
	ld   a, h                                        ; $6f7b: $7c
	ld   a, [$000d]                                  ; $6f7c: $fa $0d $00
	ld   a, [bc]                                     ; $6f7f: $0a
	ld   b, $8b                                      ; $6f80: $06 $8b
	ld   [bc], a                                     ; $6f82: $02
	rrca                                             ; $6f83: $0f
	nop                                              ; $6f84: $00
	ld   bc, $0401                                   ; $6f85: $01 $01 $04
	dec  bc                                          ; $6f88: $0b
	inc  b                                           ; $6f89: $04
	rra                                              ; $6f8a: $1f
	ld   [hl], l                                     ; $6f8b: $75
	ld   l, a                                        ; $6f8c: $6f
	sub  l                                           ; $6f8d: $95
	ld   l, a                                        ; $6f8e: $6f
	sub  l                                           ; $6f8f: $95
	ld   [hl], c                                     ; $6f90: $71
	halt                                             ; $6f91: $76
	rst  $38                                         ; $6f92: $ff
	rst  $38                                         ; $6f93: $ff
	dec  c                                           ; $6f94: $0d
	sub  d                                           ; $6f95: $92
	ld   [hl], c                                     ; $6f96: $71
	ld   [hl], h                                     ; $6f97: $74
	rst  $38                                         ; $6f98: $ff
	adc  h                                           ; $6f99: $8c
	ld   h, l                                        ; $6f9a: $65
	ld   l, l                                        ; $6f9b: $6d
	rst  $38                                         ; $6f9c: $ff
	rst  $38                                         ; $6f9d: $ff
	rst  $38                                         ; $6f9e: $ff
	rst  $38                                         ; $6f9f: $ff
	dec  c                                           ; $6fa0: $0d
	nop                                              ; $6fa1: $00
	ld   a, [bc]                                     ; $6fa2: $0a
	inc  e                                           ; $6fa3: $1c
	inc  bc                                          ; $6fa4: $03
	ld   b, $06                                      ; $6fa5: $06 $06
	dec  e                                           ; $6fa7: $1d
	ld   b, b                                        ; $6fa8: $40
	inc  de                                          ; $6fa9: $13
	inc  bc                                          ; $6faa: $03
	inc  de                                          ; $6fab: $13
	ld   bc, $2903                                   ; $6fac: $01 $03 $29
	nop                                              ; $6faf: $00
	ld   bc, $8603                                   ; $6fb0: $01 $03 $86
	ld   [bc], a                                     ; $6fb3: $02
	xor  l                                           ; $6fb4: $ad
	ld   h, [hl]                                     ; $6fb5: $66
	sub  c                                           ; $6fb6: $91
	ld   a, b                                        ; $6fb7: $78
	ld   d, d                                        ; $6fb8: $52
	ld   a, h                                        ; $6fb9: $7c
	ld   l, [hl]                                     ; $6fba: $6e
	ld   e, c                                        ; $6fbb: $59
	sub  a                                           ; $6fbc: $97
	dec  c                                           ; $6fbd: $0d
	ld   l, e                                        ; $6fbe: $6b
	ld   d, h                                        ; $6fbf: $54
	ld   d, d                                        ; $6fc0: $52
	ld   d, h                                        ; $6fc1: $54
	ld   [bc], a                                     ; $6fc2: $02
	jp   $927d                                       ; $6fc3: $c3 $7d $92


	adc  a                                           ; $6fc6: $8f
	ld   a, b                                        ; $6fc7: $78
	ld   h, e                                        ; $6fc8: $63
	ld   d, d                                        ; $6fc9: $52
	ld   a, [$000d]                                  ; $6fca: $fa $0d $00
	ld   a, [bc]                                     ; $6fcd: $0a
	ld   b, $8b                                      ; $6fce: $06 $8b
	ld   [bc], a                                     ; $6fd0: $02
	inc  e                                           ; $6fd1: $1c
	inc  bc                                          ; $6fd2: $03
	inc  b                                           ; $6fd3: $04
	inc  b                                           ; $6fd4: $04
	ld   bc, $ffff                                   ; $6fd5: $01 $ff $ff
	sbc  l                                           ; $6fd8: $9d
	ld   e, c                                        ; $6fd9: $59
	ld   [hl], c                                     ; $6fda: $71
	ld   l, l                                        ; $6fdb: $6d
	sbc  l                                           ; $6fdc: $9d
	sbc  a                                           ; $6fdd: $9f
	dec  c                                           ; $6fde: $0d
	inc  bc                                          ; $6fdf: $03
	and  e                                           ; $6fe0: $a3
	ld   e, l                                        ; $6fe1: $5d
	ld   a, l                                        ; $6fe2: $7d
	ld   [bc], a                                     ; $6fe3: $02
	jp   nz, $7859                                   ; $6fe4: $c2 $59 $78

	ld   d, d                                        ; $6fe7: $52
	ld   [hl], l                                     ; $6fe8: $75
	ld   d, b                                        ; $6fe9: $50
	ld   h, b                                        ; $6fea: $60
	sbc  c                                           ; $6feb: $99
	rst  $38                                         ; $6fec: $ff
	rst  $38                                         ; $6fed: $ff
	dec  c                                           ; $6fee: $0d
	nop                                              ; $6fef: $00
	ld   a, [bc]                                     ; $6ff0: $0a
	ld   bc, $a5c9                                   ; $6ff1: $01 $c9 $a5
	xor  $7d                                         ; $6ff4: $ee $7d
	dec  b                                           ; $6ff6: $05
	and  l                                           ; $6ff7: $a5
	ld   [bc], a                                     ; $6ff8: $02
	ld   e, h                                        ; $6ff9: $5c
	ld   a, c                                        ; $6ffa: $79
	dec  c                                           ; $6ffb: $0d
	ld   l, a                                        ; $6ffc: $6f
	sub  c                                           ; $6ffd: $91
	and  c                                           ; $6ffe: $a1
	halt                                             ; $6fff: $76
	ld   d, b                                        ; $7000: $50
	sbc  c                                           ; $7001: $99
	ld   e, c                                        ; $7002: $59
	sub  a                                           ; $7003: $97
	dec  c                                           ; $7004: $0d
	ld   [bc], a                                     ; $7005: $02
	and  l                                           ; $7006: $a5
	ld   [bc], a                                     ; $7007: $02
	xor  d                                           ; $7008: $aa
	ld   l, e                                        ; $7009: $6b
	ld   h, c                                        ; $700a: $61
	and  b                                           ; $700b: $a0
	inc  bc                                          ; $700c: $03
	xor  [hl]                                        ; $700d: $ae
	ld   [hl], c                                     ; $700e: $71
	ld   [hl], h                                     ; $700f: $74
	ld   l, a                                        ; $7010: $6f
	sub  l                                           ; $7011: $95
	ld   d, h                                        ; $7012: $54
	ld   l, [hl]                                     ; $7013: $6e
	ld   d, d                                        ; $7014: $52
	sbc  a                                           ; $7015: $9f
	dec  c                                           ; $7016: $0d
	nop                                              ; $7017: $00
	ld   a, [bc]                                     ; $7018: $0a
	dec  c                                           ; $7019: $0d
	nop                                              ; $701a: $00
	nop                                              ; $701b: $00
	rrca                                             ; $701c: $0f
	nop                                              ; $701d: $00
	ld   bc, $1e09                                   ; $701e: $01 $09 $1e
	nop                                              ; $7021: $00
	rrca                                             ; $7022: $0f
	nop                                              ; $7023: $00
	ld   bc, $5001                                   ; $7024: $01 $01 $50
	ld   a, h                                        ; $7027: $7c
	rst  $38                                         ; $7028: $ff
	rst  $38                                         ; $7029: $ff
	dec  c                                           ; $702a: $0d
	rst  JumpTable                                         ; $702b: $df
	db   $ec                                         ; $702c: $ec
	and  e                                           ; $702d: $a3
	ld   h, e                                        ; $702e: $63
	and  c                                           ; $702f: $a1
	ld   a, c                                        ; $7030: $79
	ld   [hl], d                                     ; $7031: $72
	ld   d, d                                        ; $7032: $52
	ld   [hl], h                                     ; $7033: $74
	dec  c                                           ; $7034: $0d
	ld   [bc], a                                     ; $7035: $02
	jp   nz, Jump_044_6d5b                           ; $7036: $c2 $5b $6d

	ld   d, d                                        ; $7039: $52
	and  c                                           ; $703a: $a1
	ld   [hl], l                                     ; $703b: $75
	ld   h, a                                        ; $703c: $67
	ld   e, a                                        ; $703d: $5f
	ld   [hl], a                                     ; $703e: $77
	rst  $38                                         ; $703f: $ff
	rst  $38                                         ; $7040: $ff
	dec  c                                           ; $7041: $0d
	nop                                              ; $7042: $00
	ld   a, [bc]                                     ; $7043: $0a
	inc  e                                           ; $7044: $1c
	inc  bc                                          ; $7045: $03
	nop                                              ; $7046: $00
	nop                                              ; $7047: $00
	ld   bc, $c803                                   ; $7048: $01 $03 $c8
	ld   a, h                                        ; $704b: $7c
	ld   h, c                                        ; $704c: $61
	halt                                             ; $704d: $76
	ld   sp, hl                                      ; $704e: $f9
	dec  c                                           ; $704f: $0d
	rst  $38                                         ; $7050: $ff
	rst  $38                                         ; $7051: $ff
	inc  b                                           ; $7052: $04
	ld   c, $03                                      ; $7053: $0e $03
	sub  b                                           ; $7055: $90
	inc  b                                           ; $7056: $04
	ld   a, [bc]                                     ; $7057: $0a
	inc  bc                                          ; $7058: $03
	jp   nc, $047c                                   ; $7059: $d2 $7c $04

	adc  e                                           ; $705c: $8b
	inc  bc                                          ; $705d: $03
	dec  e                                           ; $705e: $1d
	and  b                                           ; $705f: $a0
	ld   h, l                                        ; $7060: $65
	ld   [hl], h                                     ; $7061: $74
	ld   d, d                                        ; $7062: $52
	ld   [hl], h                                     ; $7063: $74
	dec  c                                           ; $7064: $0d
	rst  $38                                         ; $7065: $ff
	rst  $38                                         ; $7066: $ff
	ld   l, e                                        ; $7067: $6b
	sbc  d                                           ; $7068: $9a
	ld   l, [hl]                                     ; $7069: $6e
	ld   e, a                                        ; $706a: $5f
	ld   l, [hl]                                     ; $706b: $6e
	sbc  l                                           ; $706c: $9d
	sbc  a                                           ; $706d: $9f
	dec  c                                           ; $706e: $0d
	nop                                              ; $706f: $00
	ld   a, [bc]                                     ; $7070: $0a
	ld   bc, $9e63                                   ; $7071: $01 $63 $9e
	ld   e, b                                        ; $7074: $58
	ld   h, l                                        ; $7075: $65
	sub  c                                           ; $7076: $91
	add  a                                           ; $7077: $87
	sbc  b                                           ; $7078: $98
	ld   a, l                                        ; $7079: $7d
	ld   h, c                                        ; $707a: $61
	ld   h, c                                        ; $707b: $61
	adc  h                                           ; $707c: $8c
	ld   [hl], l                                     ; $707d: $75
	sbc  a                                           ; $707e: $9f
	dec  c                                           ; $707f: $0d
	inc  bc                                          ; $7080: $03
	ld   l, l                                        ; $7081: $6d
	dec  b                                           ; $7082: $05
	add  hl, de                                      ; $7083: $19
	ld   a, h                                        ; $7084: $7c
	inc  bc                                          ; $7085: $03
	ld   l, a                                        ; $7086: $6f
	ld   [bc], a                                     ; $7087: $02
	xor  c                                           ; $7088: $a9
	sub  [hl]                                        ; $7089: $96
	sbc  a                                           ; $708a: $9f
	dec  c                                           ; $708b: $0d
	nop                                              ; $708c: $00
	ld   a, [bc]                                     ; $708d: $0a
	dec  c                                           ; $708e: $0d
	nop                                              ; $708f: $00
	nop                                              ; $7090: $00
	rrca                                             ; $7091: $0f
	nop                                              ; $7092: $00
	ld   bc, $1e09                                   ; $7093: $01 $09 $1e
	nop                                              ; $7096: $00
	nop                                              ; $7097: $00
	inc  e                                           ; $7098: $1c
	inc  b                                           ; $7099: $04
	ld   bc, $0201                                   ; $709a: $01 $01 $02
	ld   bc, $7d58                                   ; $709d: $01 $58 $7d
	sub  [hl]                                        ; $70a0: $96
	ld   d, h                                        ; $70a1: $54
	sbc  [hl]                                        ; $70a2: $9e
	dec  c                                           ; $70a3: $0d
	ld   l, a                                        ; $70a4: $6f
	ld   d, d                                        ; $70a5: $52
	ld   [bc], a                                     ; $70a6: $02
	inc  de                                          ; $70a7: $13
	ld   l, a                                        ; $70a8: $6f
	sub  c                                           ; $70a9: $91
	and  c                                           ; $70aa: $a1
	sbc  a                                           ; $70ab: $9f
	dec  c                                           ; $70ac: $0d
	nop                                              ; $70ad: $00
	ld   a, [bc]                                     ; $70ae: $0a
	rrca                                             ; $70af: $0f
	nop                                              ; $70b0: $00
	ld   bc, $5801                                   ; $70b1: $01 $01 $58
	ld   a, l                                        ; $70b4: $7d
	sub  [hl]                                        ; $70b5: $96
	ld   d, h                                        ; $70b6: $54
	sbc  [hl]                                        ; $70b7: $9e
	and  e                                           ; $70b8: $a3
	and  l                                           ; $70b9: $a5
	db   $ec                                         ; $70ba: $ec
	cp   d                                           ; $70bb: $ba
	sbc  a                                           ; $70bc: $9f
	dec  c                                           ; $70bd: $0d
	nop                                              ; $70be: $00
	ld   a, [bc]                                     ; $70bf: $0a
	dec  b                                           ; $70c0: $05
	add  b                                           ; $70c1: $80
	sub  $01                                         ; $70c2: $d6 $01
	ld   bc, $0100                                   ; $70c4: $01 $00 $01
	ld   bc, $0403                                   ; $70c7: $01 $03 $04
	ld   c, c                                        ; $70ca: $49
	and  b                                           ; $70cb: $a0
	ld   [bc], a                                     ; $70cc: $02
	jp   nz, Jump_044_5461                           ; $70cd: $c2 $61 $54

	ld   e, c                                        ; $70d0: $59
	rst  $38                                         ; $70d1: $ff
	rst  $38                                         ; $70d2: $ff
	ld   bc, $0d04                                   ; $70d3: $01 $04 $0d
	nop                                              ; $70d6: $00
	ld   a, [bc]                                     ; $70d7: $0a
	add  hl, de                                      ; $70d8: $19
	dec  b                                           ; $70d9: $05
	inc  bc                                          ; $70da: $03
	inc  b                                           ; $70db: $04
	ld   [$8f02], sp                                 ; $70dc: $08 $02 $8f
	ld   [bc], a                                     ; $70df: $02
	sub  b                                           ; $70e0: $90
	ld   [bc], a                                     ; $70e1: $02
	sub  c                                           ; $70e2: $91
	inc  b                                           ; $70e3: $04
	add  hl, bc                                      ; $70e4: $09
	ld   a, h                                        ; $70e5: $7c
	ld   h, c                                        ; $70e6: $61
	halt                                             ; $70e7: $76
	nop                                              ; $70e8: $00
	nop                                              ; $70e9: $00
	ret                                              ; $70ea: $c9


	and  l                                           ; $70eb: $a5
	xor  $7c                                         ; $70ec: $ee $7c
	ld   h, c                                        ; $70ee: $61
	halt                                             ; $70ef: $76
	nop                                              ; $70f0: $00
	ld   bc, $a5a3                                   ; $70f1: $01 $a3 $a5
	db   $ec                                         ; $70f4: $ec
	cp   d                                           ; $70f5: $ba
	ld   a, h                                        ; $70f6: $7c
	ld   h, c                                        ; $70f7: $61
	halt                                             ; $70f8: $76
	nop                                              ; $70f9: $00
	ld   [bc], a                                     ; $70fa: $02
	rlca                                             ; $70fb: $07
	sbc  e                                           ; $70fc: $9b
	nop                                              ; $70fd: $00
	ld   [bc], a                                     ; $70fe: $02
	inc  bc                                          ; $70ff: $03
	ld   bc, $2000                                   ; $7100: $01 $00 $20
	nop                                              ; $7103: $00
	rlca                                             ; $7104: $07
	pop  de                                          ; $7105: $d1
	ld   bc, $0302                                   ; $7106: $01 $02 $03
	ld   bc, $2001                                   ; $7109: $01 $01 $20
	nop                                              ; $710c: $00
	rlca                                             ; $710d: $07
	dec  e                                           ; $710e: $1d
	inc  bc                                          ; $710f: $03
	ld   [bc], a                                     ; $7110: $02
	inc  bc                                          ; $7111: $03
	ld   bc, $2002                                   ; $7112: $01 $02 $20
	nop                                              ; $7115: $00
	ld   b, $81                                      ; $7116: $06 $81
	nop                                              ; $7118: $00
	inc  e                                           ; $7119: $1c
	inc  b                                           ; $711a: $04
	ld   bc, $0101                                   ; $711b: $01 $01 $01
	ld   e, e                                        ; $711e: $5b
	sub  l                                           ; $711f: $95
	ld   d, h                                        ; $7120: $54
	sub  b                                           ; $7121: $90
	ld   d, d                                        ; $7122: $52
	ld   l, a                                        ; $7123: $6f
	ld   a, c                                        ; $7124: $79
	ld   l, a                                        ; $7125: $6f
	dec  c                                           ; $7126: $0d
	ld   e, d                                        ; $7127: $5a
	and  c                                           ; $7128: $a1
	ld   a, [hl]                                     ; $7129: $7e
	sbc  e                                           ; $712a: $9b
	ld   d, h                                        ; $712b: $54
	ld   a, e                                        ; $712c: $7b
	ei                                               ; $712d: $fb
	ld   a, [$000d]                                  ; $712e: $fa $0d $00
	ld   a, [bc]                                     ; $7131: $0a
	nop                                              ; $7132: $00
	rrca                                             ; $7133: $0f
	nop                                              ; $7134: $00
	ld   bc, $0401                                   ; $7135: $01 $01 $04
	ld   [$8f02], sp                                 ; $7138: $08 $02 $8f
	ld   [bc], a                                     ; $713b: $02
	sub  b                                           ; $713c: $90
	ld   [bc], a                                     ; $713d: $02
	sub  c                                           ; $713e: $91
	inc  b                                           ; $713f: $04
	add  hl, bc                                      ; $7140: $09
	ld   [hl], c                                     ; $7141: $71
	ld   [hl], h                                     ; $7142: $74
	dec  c                                           ; $7143: $0d
	inc  b                                           ; $7144: $04
	ld   c, c                                        ; $7145: $49
	and  b                                           ; $7146: $a0
	sub  d                                           ; $7147: $92
	sbc  c                                           ; $7148: $99
	halt                                             ; $7149: $76
	ld   h, c                                        ; $714a: $61
	sbc  e                                           ; $714b: $9b
	ld   a, b                                        ; $714c: $78
	ld   a, h                                        ; $714d: $7c
	ld   sp, hl                                      ; $714e: $f9
	dec  c                                           ; $714f: $0d
	nop                                              ; $7150: $00
	ld   a, [bc]                                     ; $7151: $0a
	inc  e                                           ; $7152: $1c
	inc  b                                           ; $7153: $04
	ld   bc, $0101                                   ; $7154: $01 $01 $01
	sbc  l                                           ; $7157: $9d
	sbc  c                                           ; $7158: $99
	ld   d, d                                        ; $7159: $52
	add  b                                           ; $715a: $80
	halt                                             ; $715b: $76
	and  b                                           ; $715c: $a0
	sub  d                                           ; $715d: $92
	ld   [hl], c                                     ; $715e: $71
	ld   [hl], d                                     ; $715f: $72
	ld   e, a                                        ; $7160: $5f
	sbc  c                                           ; $7161: $99
	dec  c                                           ; $7162: $0d
	cp   h                                           ; $7163: $bc
	and  l                                           ; $7164: $a5
	xor  a                                           ; $7165: $af
	ld   a, h                                        ; $7166: $7c
	adc  l                                           ; $7167: $8d
	ld   e, c                                        ; $7168: $59
	ld   l, l                                        ; $7169: $6d
	ld   a, b                                        ; $716a: $78
	and  c                                           ; $716b: $a1
	ld   l, [hl]                                     ; $716c: $6e
	sub  [hl]                                        ; $716d: $96
	sbc  a                                           ; $716e: $9f
	dec  c                                           ; $716f: $0d
	ld   h, a                                        ; $7170: $67
	ld   h, d                                        ; $7171: $62
	ld   d, d                                        ; $7172: $52
	ld   [hl], l                                     ; $7173: $75
	ld   h, l                                        ; $7174: $65
	sub  l                                           ; $7175: $95
	ld   d, h                                        ; $7176: $54
	ld   sp, hl                                      ; $7177: $f9
	dec  c                                           ; $7178: $0d
	nop                                              ; $7179: $00
	ld   a, [bc]                                     ; $717a: $0a
	add  hl, de                                      ; $717b: $19
	dec  b                                           ; $717c: $05
	ld   [bc], a                                     ; $717d: $02
	and  e                                           ; $717e: $a3
	and  l                                           ; $717f: $a5
	db   $ec                                         ; $7180: $ec
	cp   d                                           ; $7181: $ba
	sub  b                                           ; $7182: $90
	inc  bc                                          ; $7183: $03
	xor  b                                           ; $7184: $a8
	ld   d, h                                        ; $7185: $54
	ld   a, h                                        ; $7186: $7c
	ld   sp, hl                                      ; $7187: $f9
	nop                                              ; $7188: $00
	nop                                              ; $7189: $00
	and  e                                           ; $718a: $a3
	and  l                                           ; $718b: $a5
	db   $ec                                         ; $718c: $ec
	cp   d                                           ; $718d: $ba
	ld   a, l                                        ; $718e: $7d
	ld   e, b                                        ; $718f: $58
	sbc  c                                           ; $7190: $99
	ld   h, a                                        ; $7191: $67
	ld   a, [hl]                                     ; $7192: $7e
	and  c                                           ; $7193: $a1
	ld   sp, hl                                      ; $7194: $f9
	nop                                              ; $7195: $00
	ld   bc, $1407                                   ; $7196: $01 $07 $14
	ld   bc, $0302                                   ; $7199: $01 $02 $03
	ld   bc, $2000                                   ; $719c: $01 $00 $20
	nop                                              ; $719f: $00
	rlca                                             ; $71a0: $07
	ld   d, e                                        ; $71a1: $53
	ld   bc, $0302                                   ; $71a2: $01 $02 $03
	ld   bc, $2001                                   ; $71a5: $01 $01 $20
	nop                                              ; $71a8: $00
	ld   b, $b5                                      ; $71a9: $06 $b5
	ld   bc, $000f                                   ; $71ab: $01 $0f $00
	ld   bc, $a301                                   ; $71ae: $01 $01 $a3
	and  l                                           ; $71b1: $a5
	db   $ec                                         ; $71b2: $ec
	cp   d                                           ; $71b3: $ba
	sub  b                                           ; $71b4: $90
	inc  bc                                          ; $71b5: $03
	xor  b                                           ; $71b6: $a8
	ld   d, h                                        ; $71b7: $54
	ld   a, h                                        ; $71b8: $7c
	ld   sp, hl                                      ; $71b9: $f9
	dec  c                                           ; $71ba: $0d
	nop                                              ; $71bb: $00
	ld   a, [bc]                                     ; $71bc: $0a
	inc  e                                           ; $71bd: $1c
	inc  b                                           ; $71be: $04
	ld   bc, $1d01                                   ; $71bf: $01 $01 $1d
	ld   b, b                                        ; $71c2: $40
	inc  d                                           ; $71c3: $14
	inc  bc                                          ; $71c4: $03
	inc  d                                           ; $71c5: $14
	ld   bc, $2802                                   ; $71c6: $01 $02 $28
	nop                                              ; $71c9: $00
	ld   bc, $a154                                   ; $71ca: $01 $54 $a1
	sbc  a                                           ; $71cd: $9f
	dec  c                                           ; $71ce: $0d
	and  e                                           ; $71cf: $a3
	and  l                                           ; $71d0: $a5
	db   $ec                                         ; $71d1: $ec
	cp   d                                           ; $71d2: $ba
	sub  b                                           ; $71d3: $90
	sbc  [hl]                                        ; $71d4: $9e
	sbc  l                                           ; $71d5: $9d
	sbc  c                                           ; $71d6: $99
	ld   d, d                                        ; $71d7: $52
	add  b                                           ; $71d8: $80
	halt                                             ; $71d9: $76
	and  b                                           ; $71da: $a0
	dec  c                                           ; $71db: $0d
	sub  d                                           ; $71dc: $92
	ld   [hl], c                                     ; $71dd: $71
	ld   [hl], d                                     ; $71de: $72
	ld   e, a                                        ; $71df: $5f
	sbc  c                                           ; $71e0: $99
	and  c                                           ; $71e1: $a1
	ld   l, [hl]                                     ; $71e2: $6e
	sub  [hl]                                        ; $71e3: $96
	sbc  a                                           ; $71e4: $9f
	dec  c                                           ; $71e5: $0d
	nop                                              ; $71e6: $00
	ld   a, [bc]                                     ; $71e7: $0a
	ld   b, $b5                                      ; $71e8: $06 $b5
	ld   bc, $000f                                   ; $71ea: $01 $0f $00
	ld   bc, $a301                                   ; $71ed: $01 $01 $a3
	and  l                                           ; $71f0: $a5
	db   $ec                                         ; $71f1: $ec
	cp   d                                           ; $71f2: $ba
	ld   a, l                                        ; $71f3: $7d
	ld   e, b                                        ; $71f4: $58
	sbc  c                                           ; $71f5: $99
	ld   h, a                                        ; $71f6: $67
	ld   a, [hl]                                     ; $71f7: $7e
	and  c                                           ; $71f8: $a1
	ld   sp, hl                                      ; $71f9: $f9
	dec  c                                           ; $71fa: $0d
	nop                                              ; $71fb: $00
	ld   a, [bc]                                     ; $71fc: $0a
	inc  e                                           ; $71fd: $1c
	inc  b                                           ; $71fe: $04
	rlca                                             ; $71ff: $07
	rlca                                             ; $7200: $07
	ld   bc, $5a6f                                   ; $7201: $01 $6f $5a
	ld   d, h                                        ; $7204: $54
	sub  b                                           ; $7205: $90
	and  c                                           ; $7206: $a1
	ld   a, [$a30d]                                  ; $7207: $fa $0d $a3
	and  l                                           ; $720a: $a5
	db   $ec                                         ; $720b: $ec
	cp   d                                           ; $720c: $ba
	ld   [hl], d                                     ; $720d: $72
	sub  [hl]                                        ; $720e: $96
	ld   d, d                                        ; $720f: $52
	and  c                                           ; $7210: $a1
	ld   l, [hl]                                     ; $7211: $6e
	sub  [hl]                                        ; $7212: $96
	ld   a, [$000d]                                  ; $7213: $fa $0d $00
	ld   a, [bc]                                     ; $7216: $0a
	inc  e                                           ; $7217: $1c
	inc  b                                           ; $7218: $04
	ld   [bc], a                                     ; $7219: $02
	ld   [bc], a                                     ; $721a: $02
	dec  e                                           ; $721b: $1d
	ld   b, b                                        ; $721c: $40
	inc  d                                           ; $721d: $14
	inc  bc                                          ; $721e: $03
	inc  d                                           ; $721f: $14
	ld   bc, $2903                                   ; $7220: $01 $03 $29
	nop                                              ; $7223: $00
	ld   bc, $526f                                   ; $7224: $01 $6f $52
	ld   [bc], a                                     ; $7227: $02
	inc  de                                          ; $7228: $13
	ld   l, a                                        ; $7229: $6f
	sub  c                                           ; $722a: $91
	and  c                                           ; $722b: $a1
	sbc  [hl]                                        ; $722c: $9e
	and  e                                           ; $722d: $a3
	and  l                                           ; $722e: $a5
	db   $ec                                         ; $722f: $ec
	cp   d                                           ; $7230: $ba
	ld   a, h                                        ; $7231: $7c
	ld   h, c                                        ; $7232: $61
	halt                                             ; $7233: $76
	dec  c                                           ; $7234: $0d
	ld   h, c                                        ; $7235: $61
	ld   [hl], a                                     ; $7236: $77
	sub  b                                           ; $7237: $90
	ld   d, b                                        ; $7238: $50
	ld   [hl], d                                     ; $7239: $72
	ld   e, c                                        ; $723a: $59
	ld   d, d                                        ; $723b: $52
	ld   h, l                                        ; $723c: $65
	ld   [hl], h                                     ; $723d: $74
	sbc  c                                           ; $723e: $99
	rst  $38                                         ; $723f: $ff
	rst  $38                                         ; $7240: $ff
	dec  c                                           ; $7241: $0d
	sub  b                                           ; $7242: $90
	ld   d, h                                        ; $7243: $54
	ld   h, l                                        ; $7244: $65
	sub  a                                           ; $7245: $97
	ld   a, b                                        ; $7246: $78
	ld   d, d                                        ; $7247: $52
	ld   a, [$000d]                                  ; $7248: $fa $0d $00
	ld   a, [bc]                                     ; $724b: $0a
	nop                                              ; $724c: $00
	inc  e                                           ; $724d: $1c
	inc  b                                           ; $724e: $04
	ld   bc, $0101                                   ; $724f: $01 $01 $01
	ld   h, e                                        ; $7252: $63
	sbc  [hl]                                        ; $7253: $9e
	ld   e, e                                        ; $7254: $5b
	sub  l                                           ; $7255: $95
	ld   d, h                                        ; $7256: $54
	sub  b                                           ; $7257: $90
	ld   d, d                                        ; $7258: $52
	ld   l, a                                        ; $7259: $6f
	ld   a, c                                        ; $725a: $79
	ld   l, a                                        ; $725b: $6f
	dec  c                                           ; $725c: $0d
	ld   e, d                                        ; $725d: $5a
	and  c                                           ; $725e: $a1
	ld   a, [hl]                                     ; $725f: $7e
	sbc  e                                           ; $7260: $9b
	ld   d, h                                        ; $7261: $54
	ld   a, e                                        ; $7262: $7b
	ei                                               ; $7263: $fb
	ld   a, [$000d]                                  ; $7264: $fa $0d $00
	ld   a, [bc]                                     ; $7267: $0a
	nop                                              ; $7268: $00
	rrca                                             ; $7269: $0f
	nop                                              ; $726a: $00
	ld   bc, $7601                                   ; $726b: $01 $01 $76
	ld   h, c                                        ; $726e: $61
	sbc  e                                           ; $726f: $9b
	ld   [hl], l                                     ; $7270: $75
	sbc  [hl]                                        ; $7271: $9e
	ret                                              ; $7272: $c9


	and  l                                           ; $7273: $a5
	xor  $71                                         ; $7274: $ee $71
	ld   [hl], h                                     ; $7276: $74
	dec  c                                           ; $7277: $0d
	ld   [hl], a                                     ; $7278: $77

Jump_044_7279:
	ld   h, c                                        ; $7279: $61
	ld   a, c                                        ; $727a: $79
	ld   d, b                                        ; $727b: $50
	sbc  c                                           ; $727c: $99
	ld   a, h                                        ; $727d: $7c
	ld   e, c                                        ; $727e: $59
	ld   a, b                                        ; $727f: $78
	ld   sp, hl                                      ; $7280: $f9
	dec  c                                           ; $7281: $0d
	nop                                              ; $7282: $00
	ld   a, [bc]                                     ; $7283: $0a
	inc  e                                           ; $7284: $1c
	inc  b                                           ; $7285: $04
	ld   b, $06                                      ; $7286: $06 $06
	ld   bc, $fb56                                   ; $7288: $01 $56 $fb
	ld   [hl], c                                     ; $728b: $71
	ld   a, [$6f0d]                                  ; $728c: $fa $0d $6f
	ld   d, d                                        ; $728f: $52
	ld   [bc], a                                     ; $7290: $02
	inc  de                                          ; $7291: $13
	ld   l, a                                        ; $7292: $6f
	sub  c                                           ; $7293: $91
	and  c                                           ; $7294: $a1
	sbc  [hl]                                        ; $7295: $9e
	ret                                              ; $7296: $c9


	and  l                                           ; $7297: $a5
	xor  $7c                                         ; $7298: $ee $7c
	ld   a, [hl]                                     ; $729a: $7e
	ld   h, l                                        ; $729b: $65
	sub  l                                           ; $729c: $95
	dec  c                                           ; $729d: $0d
	ld   h, l                                        ; $729e: $65
	sub  a                                           ; $729f: $97
	ld   a, b                                        ; $72a0: $78
	ld   e, c                                        ; $72a1: $59
	ld   [hl], c                                     ; $72a2: $71
	ld   l, l                                        ; $72a3: $6d
	ld   a, h                                        ; $72a4: $7c
	ld   sp, hl                                      ; $72a5: $f9
	dec  c                                           ; $72a6: $0d
	nop                                              ; $72a7: $00
	ld   a, [bc]                                     ; $72a8: $0a
	inc  e                                           ; $72a9: $1c
	inc  b                                           ; $72aa: $04
	inc  bc                                          ; $72ab: $03
	inc  bc                                          ; $72ac: $03
	ld   bc, $9166                                   ; $72ad: $01 $66 $91
	sbc  [hl]                                        ; $72b0: $9e
	ld   d, d                                        ; $72b1: $52
	adc  h                                           ; $72b2: $8c
	adc  h                                           ; $72b3: $8c
	ld   [hl], l                                     ; $72b4: $75
	dec  c                                           ; $72b5: $0d
	ld   [hl], a                                     ; $72b6: $77
	ld   d, h                                        ; $72b7: $54
	ld   h, l                                        ; $72b8: $65
	ld   [hl], h                                     ; $72b9: $74
	ld   l, l                                        ; $72ba: $6d
	ld   a, h                                        ; $72bb: $7c
	ld   sp, hl                                      ; $72bc: $f9
	dec  c                                           ; $72bd: $0d
	nop                                              ; $72be: $00
	ld   a, [bc]                                     ; $72bf: $0a
	add  hl, de                                      ; $72c0: $19
	dec  b                                           ; $72c1: $05
	ld   [bc], a                                     ; $72c2: $02
	xor  l                                           ; $72c3: $ad
	rst  JumpTable                                         ; $72c4: $df
	push af                                          ; $72c5: $f5
	ld   h, l                                        ; $72c6: $65
	ld   [hl], h                                     ; $72c7: $74
	ld   l, l                                        ; $72c8: $6d
	nop                                              ; $72c9: $00
	nop                                              ; $72ca: $00
	inc  b                                           ; $72cb: $04
	dec  bc                                          ; $72cc: $0b
	inc  b                                           ; $72cd: $04
	rra                                              ; $72ce: $1f
	ld   [hl], l                                     ; $72cf: $75
	ld   h, l                                        ; $72d0: $65
	ld   [hl], h                                     ; $72d1: $74
	ld   l, l                                        ; $72d2: $6d
	nop                                              ; $72d3: $00
	ld   bc, $5207                                   ; $72d4: $01 $07 $52
	ld   [bc], a                                     ; $72d7: $02
	ld   [bc], a                                     ; $72d8: $02
	inc  bc                                          ; $72d9: $03
	ld   bc, $2000                                   ; $72da: $01 $00 $20
	nop                                              ; $72dd: $00
	rlca                                             ; $72de: $07
	add  l                                           ; $72df: $85
	ld   [bc], a                                     ; $72e0: $02
	ld   [bc], a                                     ; $72e1: $02
	inc  bc                                          ; $72e2: $03
	ld   bc, $2001                                   ; $72e3: $01 $01 $20
	nop                                              ; $72e6: $00
	ld   b, $c5                                      ; $72e7: $06 $c5
	ld   [bc], a                                     ; $72e9: $02
	rrca                                             ; $72ea: $0f
	nop                                              ; $72eb: $00
	ld   bc, $ad01                                   ; $72ec: $01 $01 $ad
	rst  JumpTable                                         ; $72ef: $df
	push af                                          ; $72f0: $f5
	ld   h, l                                        ; $72f1: $65
	ld   [hl], h                                     ; $72f2: $74
	ld   l, l                                        ; $72f3: $6d
	sbc  a                                           ; $72f4: $9f
	dec  c                                           ; $72f5: $0d
	nop                                              ; $72f6: $00
	ld   a, [bc]                                     ; $72f7: $0a
	inc  e                                           ; $72f8: $1c
	inc  b                                           ; $72f9: $04
	inc  bc                                          ; $72fa: $03
	inc  bc                                          ; $72fb: $03
	ld   bc, $e3c1                                   ; $72fc: $01 $c1 $e3
	ld   l, [hl]                                     ; $72ff: $6e
	sub  [hl]                                        ; $7300: $96
	sbc  [hl]                                        ; $7301: $9e
	ld   l, a                                        ; $7302: $6f
	ld   d, d                                        ; $7303: $52
	ld   [bc], a                                     ; $7304: $02
	inc  de                                          ; $7305: $13
	ld   l, a                                        ; $7306: $6f
	sub  c                                           ; $7307: $91
	and  c                                           ; $7308: $a1
	ld   a, [$810d]                                  ; $7309: $fa $0d $81
	sub  l                                           ; $730c: $95
	ld   d, h                                        ; $730d: $54
	ld   e, e                                        ; $730e: $5b
	ld   a, c                                        ; $730f: $79
	ld   a, b                                        ; $7310: $78
	ld   [hl], c                                     ; $7311: $71
	ld   l, a                                        ; $7312: $6f
	sub  c                                           ; $7313: $91
	ld   d, h                                        ; $7314: $54
	sub  [hl]                                        ; $7315: $96
	ld   a, [$000d]                                  ; $7316: $fa $0d $00
	ld   a, [bc]                                     ; $7319: $0a
	ld   b, $ee                                      ; $731a: $06 $ee
	ld   [bc], a                                     ; $731c: $02
	rrca                                             ; $731d: $0f
	nop                                              ; $731e: $00
	ld   bc, $0401                                   ; $731f: $01 $01 $04
	dec  bc                                          ; $7322: $0b
	inc  b                                           ; $7323: $04
	rra                                              ; $7324: $1f
	ld   [hl], l                                     ; $7325: $75
	ld   h, l                                        ; $7326: $65
	ld   [hl], h                                     ; $7327: $74
	ld   l, l                                        ; $7328: $6d
	sbc  a                                           ; $7329: $9f
	dec  c                                           ; $732a: $0d
	nop                                              ; $732b: $00
	ld   a, [bc]                                     ; $732c: $0a
	inc  e                                           ; $732d: $1c
	inc  b                                           ; $732e: $04
	ld   b, $06                                      ; $732f: $06 $06
	dec  e                                           ; $7331: $1d
	ld   b, b                                        ; $7332: $40
	inc  d                                           ; $7333: $14
	inc  bc                                          ; $7334: $03
	inc  d                                           ; $7335: $14
	ld   bc, $2902                                   ; $7336: $01 $02 $29
	nop                                              ; $7339: $00
	ld   bc, $fb56                                   ; $733a: $01 $56 $fb
	ld   [hl], c                                     ; $733d: $71
	ld   sp, hl                                      ; $733e: $f9
	dec  c                                           ; $733f: $0d
	ld   l, a                                        ; $7340: $6f
	sub  c                                           ; $7341: $91
	and  c                                           ; $7342: $a1
	halt                                             ; $7343: $76
	ret                                              ; $7344: $c9


	and  l                                           ; $7345: $a5
	xor  $75                                         ; $7346: $ee $75
	ld   h, l                                        ; $7348: $65
	ld   a, b                                        ; $7349: $78
	ld   d, d                                        ; $734a: $52
	halt                                             ; $734b: $76
	dec  c                                           ; $734c: $0d
	ld   e, b                                        ; $734d: $58
	ld   h, c                                        ; $734e: $61
	sub  a                                           ; $734f: $97
	sbc  d                                           ; $7350: $9a
	ld   l, a                                        ; $7351: $6f
	sub  c                                           ; $7352: $91
	ld   d, h                                        ; $7353: $54
	sub  [hl]                                        ; $7354: $96
	ei                                               ; $7355: $fb
	ld   a, [$000d]                                  ; $7356: $fa $0d $00
	ld   a, [bc]                                     ; $7359: $0a
	ld   b, $ee                                      ; $735a: $06 $ee
	ld   [bc], a                                     ; $735c: $02
	inc  e                                           ; $735d: $1c
	inc  b                                           ; $735e: $04
	inc  bc                                          ; $735f: $03
	inc  bc                                          ; $7360: $03
	dec  e                                           ; $7361: $1d
	ld   b, b                                        ; $7362: $40
	inc  d                                           ; $7363: $14
	inc  bc                                          ; $7364: $03
	inc  d                                           ; $7365: $14
	ld   bc, $2901                                   ; $7366: $01 $01 $29
	nop                                              ; $7369: $00
	ld   bc, $ffff                                   ; $736a: $01 $ff $ff
	ld   l, a                                        ; $736d: $6f
	ld   d, d                                        ; $736e: $52
	ld   [bc], a                                     ; $736f: $02
	inc  de                                          ; $7370: $13
	ld   l, a                                        ; $7371: $6f
	sub  c                                           ; $7372: $91
	and  c                                           ; $7373: $a1
	sbc  [hl]                                        ; $7374: $9e
	dec  c                                           ; $7375: $0d
	ld   h, c                                        ; $7376: $61
	ld   [hl], a                                     ; $7377: $77
	sub  b                                           ; $7378: $90
	ld   h, [hl]                                     ; $7379: $66
	sub  c                                           ; $737a: $91
	ld   a, b                                        ; $737b: $78
	ld   d, d                                        ; $737c: $52
	and  c                                           ; $737d: $a1
	ld   l, [hl]                                     ; $737e: $6e
	ld   e, c                                        ; $737f: $59
	sub  a                                           ; $7380: $97
	rst  $38                                         ; $7381: $ff
	rst  $38                                         ; $7382: $ff
	dec  c                                           ; $7383: $0d
	nop                                              ; $7384: $00
	ld   a, [bc]                                     ; $7385: $0a
	inc  e                                           ; $7386: $1c
	inc  b                                           ; $7387: $04
	inc  bc                                          ; $7388: $03
	inc  bc                                          ; $7389: $03
	ld   bc, $a5c9                                   ; $738a: $01 $c9 $a5
	xor  $7d                                         ; $738d: $ee $7d
	sbc  [hl]                                        ; $738f: $9e
	ld   d, h                                        ; $7390: $54
	ld   d, [hl]                                     ; $7391: $56
	ld   a, c                                        ; $7392: $79
	sub  b                                           ; $7393: $90
	ld   h, l                                        ; $7394: $65
	ld   l, l                                        ; $7395: $6d
	ld   a, c                                        ; $7396: $79
	sub  b                                           ; $7397: $90
	dec  c                                           ; $7398: $0d
	ld   d, b                                        ; $7399: $50
	sbc  c                                           ; $739a: $99
	and  c                                           ; $739b: $a1
	ld   l, [hl]                                     ; $739c: $6e
	ld   e, c                                        ; $739d: $59
	sub  a                                           ; $739e: $97
	sbc  [hl]                                        ; $739f: $9e
	ld   h, c                                        ; $73a0: $61
	sbc  d                                           ; $73a1: $9a
	ld   e, c                                        ; $73a2: $59
	sub  a                                           ; $73a3: $97
	ld   a, l                                        ; $73a4: $7d
	dec  c                                           ; $73a5: $0d
	ld   l, a                                        ; $73a6: $6f
	sub  c                                           ; $73a7: $91
	and  c                                           ; $73a8: $a1
	halt                                             ; $73a9: $76
	ld   [hl], d                                     ; $73aa: $72
	ld   e, c                                        ; $73ab: $59
	ld   [hl], c                                     ; $73ac: $71
	ld   [hl], h                                     ; $73ad: $74
	sub  [hl]                                        ; $73ae: $96
	ld   a, e                                        ; $73af: $7b
	sbc  a                                           ; $73b0: $9f
	dec  c                                           ; $73b1: $0d
	nop                                              ; $73b2: $00
	ld   a, [bc]                                     ; $73b3: $0a
	nop                                              ; $73b4: $00
	rrca                                             ; $73b5: $0f
	nop                                              ; $73b6: $00
	ld   bc, $a301                                   ; $73b7: $01 $01 $a3
	and  l                                           ; $73ba: $a5
	db   $ec                                         ; $73bb: $ec
	cp   d                                           ; $73bc: $ba
	ld   a, c                                        ; $73bd: $79
	ld   [hl], d                                     ; $73be: $72
	ld   d, d                                        ; $73bf: $52
	ld   [hl], h                                     ; $73c0: $74
	dec  c                                           ; $73c1: $0d
	ld   [bc], a                                     ; $73c2: $02
	jp   nz, Jump_044_6d5b                           ; $73c3: $c2 $5b $6d

	ld   d, d                                        ; $73c6: $52
	ld   a, b                                        ; $73c7: $78
	sbc  a                                           ; $73c8: $9f
	dec  c                                           ; $73c9: $0d
	nop                                              ; $73ca: $00
	ld   a, [bc]                                     ; $73cb: $0a
	inc  e                                           ; $73cc: $1c
	inc  b                                           ; $73cd: $04
	ld   b, $06                                      ; $73ce: $06 $06
	ld   bc, $fb56                                   ; $73d0: $01 $56 $fb
	ld   sp, hl                                      ; $73d3: $f9
	dec  c                                           ; $73d4: $0d
	and  e                                           ; $73d5: $a3
	and  l                                           ; $73d6: $a5
	db   $ec                                         ; $73d7: $ec
	cp   d                                           ; $73d8: $ba
	ld   a, h                                        ; $73d9: $7c
	ld   h, c                                        ; $73da: $61
	halt                                             ; $73db: $76
	ld   sp, hl                                      ; $73dc: $f9
	dec  c                                           ; $73dd: $0d
	nop                                              ; $73de: $00
	ld   a, [bc]                                     ; $73df: $0a
	inc  e                                           ; $73e0: $1c
	inc  b                                           ; $73e1: $04
	nop                                              ; $73e2: $00
	nop                                              ; $73e3: $00
	ld   bc, $a5a3                                   ; $73e4: $01 $a3 $a5
	db   $ec                                         ; $73e7: $ec
	cp   d                                           ; $73e8: $ba
	ld   a, l                                        ; $73e9: $7d
	ld   a, e                                        ; $73ea: $7b
	ld   d, [hl]                                     ; $73eb: $56
	sbc  [hl]                                        ; $73ec: $9e
	dec  c                                           ; $73ed: $0d
	or   d                                           ; $73ee: $b2
	ei                                               ; $73ef: $fb
	xor  [hl]                                        ; $73f0: $ae
	ld   e, d                                        ; $73f1: $5a
	ld   l, [hl]                                     ; $73f2: $6e
	ld   d, d                                        ; $73f3: $52
	ld   h, a                                        ; $73f4: $67
	ld   e, e                                        ; $73f5: $5b
	ld   [hl], l                                     ; $73f6: $75
	sbc  [hl]                                        ; $73f7: $9e
	dec  c                                           ; $73f8: $0d
	ld   e, b                                        ; $73f9: $58
	sub  [hl]                                        ; $73fa: $96
	ld   d, h                                        ; $73fb: $54
	add  e                                           ; $73fc: $83
	ld   e, l                                        ; $73fd: $5d
	ld   e, d                                        ; $73fe: $5a
	ld   l, [hl]                                     ; $73ff: $6e
	ld   d, d                                        ; $7400: $52
	ld   h, a                                        ; $7401: $67
	ld   e, e                                        ; $7402: $5b
	ld   [hl], l                                     ; $7403: $75
	rst  $38                                         ; $7404: $ff
	rst  $38                                         ; $7405: $ff
	dec  c                                           ; $7406: $0d
	nop                                              ; $7407: $00
	ld   a, [bc]                                     ; $7408: $0a
	inc  e                                           ; $7409: $1c
	inc  b                                           ; $740a: $04
	ld   bc, $0101                                   ; $740b: $01 $01 $01
	ld   l, e                                        ; $740e: $6b
	sbc  d                                           ; $740f: $9a
	ld   [hl], l                                     ; $7410: $75
	sbc  [hl]                                        ; $7411: $9e
	cp   c                                           ; $7412: $b9
	push hl                                          ; $7413: $e5
	push af                                          ; $7414: $f5
	sbc  $fb                                         ; $7415: $de $fb
	db   $ed                                         ; $7417: $ed
	halt                                             ; $7418: $76
	ld   a, l                                        ; $7419: $7d
	dec  c                                           ; $741a: $0d
	ld   l, [hl]                                     ; $741b: $6e
	ld   d, d                                        ; $741c: $52
	ld   a, h                                        ; $741d: $7c
	ld   a, b                                        ; $741e: $78
	ld   e, c                                        ; $741f: $59
	sub  [hl]                                        ; $7420: $96
	ld   h, l                                        ; $7421: $65
	ld   h, e                                        ; $7422: $63
	and  c                                           ; $7423: $a1
	ld   l, [hl]                                     ; $7424: $6e
	sub  [hl]                                        ; $7425: $96
	sbc  a                                           ; $7426: $9f
	dec  c                                           ; $7427: $0d
	nop                                              ; $7428: $00
	ld   a, [bc]                                     ; $7429: $0a
	add  hl, de                                      ; $742a: $19
	dec  b                                           ; $742b: $05
	ld   [bc], a                                     ; $742c: $02
	inc  bc                                          ; $742d: $03
	add  [hl]                                        ; $742e: $86
	ld   [bc], a                                     ; $742f: $02
	xor  l                                           ; $7430: $ad
	sub  a                                           ; $7431: $97
	ld   h, l                                        ; $7432: $65
	ld   d, d                                        ; $7433: $52
	ld   a, e                                        ; $7434: $7b
	nop                                              ; $7435: $00
	nop                                              ; $7436: $00
	ld   d, b                                        ; $7437: $50
	sbc  b                                           ; $7438: $98
	ld   e, d                                        ; $7439: $5a
	halt                                             ; $743a: $76
	ld   d, h                                        ; $743b: $54
	nop                                              ; $743c: $00
	ld   bc, $bb07                                   ; $743d: $01 $07 $bb
	inc  bc                                          ; $7440: $03
	ld   [bc], a                                     ; $7441: $02
	inc  bc                                          ; $7442: $03
	ld   bc, $2000                                   ; $7443: $01 $00 $20
	nop                                              ; $7446: $00
	rlca                                             ; $7447: $07
	nop                                              ; $7448: $00
	inc  b                                           ; $7449: $04
	ld   [bc], a                                     ; $744a: $02
	inc  bc                                          ; $744b: $03
	ld   bc, $2001                                   ; $744c: $01 $01 $20
	nop                                              ; $744f: $00
	ld   b, $3c                                      ; $7450: $06 $3c

Jump_044_7452:
	inc  b                                           ; $7452: $04
	rrca                                             ; $7453: $0f
	nop                                              ; $7454: $00
	ld   bc, $0301                                   ; $7455: $01 $01 $03
	add  [hl]                                        ; $7458: $86
	ld   [bc], a                                     ; $7459: $02
	xor  l                                           ; $745a: $ad
	sub  a                                           ; $745b: $97
	ld   h, l                                        ; $745c: $65

Call_044_745d:
	ld   d, d                                        ; $745d: $52
	ld   a, e                                        ; $745e: $7b
	sbc  a                                           ; $745f: $9f
	dec  c                                           ; $7460: $0d
	nop                                              ; $7461: $00
	ld   a, [bc]                                     ; $7462: $0a
	inc  e                                           ; $7463: $1c
	inc  b                                           ; $7464: $04
	rlca                                             ; $7465: $07
	rlca                                             ; $7466: $07
	dec  e                                           ; $7467: $1d
	ld   b, b                                        ; $7468: $40
	inc  d                                           ; $7469: $14
	inc  bc                                          ; $746a: $03
	inc  d                                           ; $746b: $14
	ld   bc, $2903                                   ; $746c: $01 $03 $29
	nop                                              ; $746f: $00
	ld   bc, $a5a3                                   ; $7470: $01 $a3 $a5
	db   $ec                                         ; $7473: $ec
	cp   d                                           ; $7474: $ba
	sbc  [hl]                                        ; $7475: $9e
	dec  c                                           ; $7476: $0d
	ld   h, c                                        ; $7477: $61
	ld   [hl], a                                     ; $7478: $77
	sub  b                                           ; $7479: $90
	ld   h, [hl]                                     ; $747a: $66
	sub  c                                           ; $747b: $91
	ld   a, b                                        ; $747c: $78
	ld   d, d                                        ; $747d: $52
	sub  b                                           ; $747e: $90
	and  c                                           ; $747f: $a1
	ld   a, [$000d]                                  ; $7480: $fa $0d $00
	ld   a, [bc]                                     ; $7483: $0a
	inc  e                                           ; $7484: $1c
	inc  b                                           ; $7485: $04
	ld   [bc], a                                     ; $7486: $02
	ld   [bc], a                                     ; $7487: $02
	ld   bc, $526f                                   ; $7488: $01 $6f $52
	ld   [bc], a                                     ; $748b: $02
	inc  de                                          ; $748c: $13
	ld   l, a                                        ; $748d: $6f
	sub  c                                           ; $748e: $91
	and  c                                           ; $748f: $a1
	ld   a, h                                        ; $7490: $7c
	pop  de                                          ; $7491: $d1
	xor  h                                           ; $7492: $ac
	ld   a, [$000d]                                  ; $7493: $fa $0d $00
	ld   a, [bc]                                     ; $7496: $0a
	nop                                              ; $7497: $00
	rrca                                             ; $7498: $0f
	nop                                              ; $7499: $00
	ld   bc, $5001                                   ; $749a: $01 $01 $50
	sbc  b                                           ; $749d: $98
	ld   e, d                                        ; $749e: $5a
	halt                                             ; $749f: $76
	ld   d, h                                        ; $74a0: $54
	sbc  a                                           ; $74a1: $9f
	dec  c                                           ; $74a2: $0d
	ld   h, a                                        ; $74a3: $67
	ld   h, d                                        ; $74a4: $62
	ld   e, l                                        ; $74a5: $5d
	inc  bc                                          ; $74a6: $03
	inc  de                                          ; $74a7: $13
	ld   [bc], a                                     ; $74a8: $02
	ld   h, l                                        ; $74a9: $65
	ld   a, c                                        ; $74aa: $79
	ld   a, b                                        ; $74ab: $78
	ld   [hl], c                                     ; $74ac: $71
	ld   l, l                                        ; $74ad: $6d
	sub  [hl]                                        ; $74ae: $96
	sbc  a                                           ; $74af: $9f
	dec  c                                           ; $74b0: $0d
	nop                                              ; $74b1: $00
	ld   a, [bc]                                     ; $74b2: $0a
	inc  e                                           ; $74b3: $1c
	inc  b                                           ; $74b4: $04
	dec  b                                           ; $74b5: $05
	dec  b                                           ; $74b6: $05
	dec  e                                           ; $74b7: $1d
	ld   b, b                                        ; $74b8: $40
	inc  d                                           ; $74b9: $14
	inc  bc                                          ; $74ba: $03
	inc  d                                           ; $74bb: $14
	ld   bc, $2802                                   ; $74bc: $01 $02 $28
	nop                                              ; $74bf: $00
	ld   bc, $d9a9                                   ; $74c0: $01 $a9 $d9
	reti                                             ; $74c3: $d9


	reti                                             ; $74c4: $d9


	rst  $38                                         ; $74c5: $ff
	rst  $38                                         ; $74c6: $ff
	dec  c                                           ; $74c7: $0d
	ld   [hl], a                                     ; $74c8: $77
	ld   d, h                                        ; $74c9: $54
	ld   d, d                                        ; $74ca: $52
	ld   l, l                                        ; $74cb: $6d
	ld   h, l                                        ; $74cc: $65
	adc  h                                           ; $74cd: $8c
	ld   h, l                                        ; $74ce: $65
	ld   [hl], h                                     ; $74cf: $74
	sbc  a                                           ; $74d0: $9f
	dec  c                                           ; $74d1: $0d
	nop                                              ; $74d2: $00
	ld   a, [bc]                                     ; $74d3: $0a
	inc  e                                           ; $74d4: $1c
	inc  b                                           ; $74d5: $04
	ld   bc, $0101                                   ; $74d6: $01 $01 $01
	ld   h, e                                        ; $74d9: $63
	sbc  [hl]                                        ; $74da: $9e
	ld   e, e                                        ; $74db: $5b
	sub  l                                           ; $74dc: $95
	ld   d, h                                        ; $74dd: $54
	sub  b                                           ; $74de: $90
	ld   d, d                                        ; $74df: $52
	ld   l, a                                        ; $74e0: $6f
	ld   a, c                                        ; $74e1: $79
	ld   l, a                                        ; $74e2: $6f
	dec  c                                           ; $74e3: $0d
	ld   e, d                                        ; $74e4: $5a
	and  c                                           ; $74e5: $a1
	ld   a, [hl]                                     ; $74e6: $7e
	sbc  e                                           ; $74e7: $9b
	ld   d, h                                        ; $74e8: $54
	ld   a, e                                        ; $74e9: $7b
	ei                                               ; $74ea: $fb
	ld   a, [$000d]                                  ; $74eb: $fa $0d $00
	ld   a, [bc]                                     ; $74ee: $0a
	nop                                              ; $74ef: $00
	nop                                              ; $74f0: $00
	rrca                                             ; $74f1: $0f
	nop                                              ; $74f2: $00
	ld   bc, $020d                                   ; $74f3: $01 $0d $02
	nop                                              ; $74f6: $00
	ld   [bc], a                                     ; $74f7: $02
	ld   bc, $7d58                                   ; $74f8: $01 $58 $7d
	sub  [hl]                                        ; $74fb: $96
	ld   d, h                                        ; $74fc: $54
	ld   h, d                                        ; $74fd: $62
	ld   h, h                                        ; $74fe: $64
	ld   d, d                                        ; $74ff: $52
	adc  h                                           ; $7500: $8c
	ld   h, a                                        ; $7501: $67
	sbc  a                                           ; $7502: $9f
	dec  c                                           ; $7503: $0d
	ld   h, a                                        ; $7504: $67
	adc  l                                           ; $7505: $8d
	sbc  d                                           ; $7506: $9a
	ld   h, e                                        ; $7507: $63
	and  c                                           ; $7508: $a1
	sbc  a                                           ; $7509: $9f
	dec  c                                           ; $750a: $0d
	nop                                              ; $750b: $00
	ld   a, [bc]                                     ; $750c: $0a
	inc  e                                           ; $750d: $1c
	ld   [bc], a                                     ; $750e: $02
	nop                                              ; $750f: $00
	nop                                              ; $7510: $00
	ld   bc, $7d58                                   ; $7511: $01 $58 $7d
	sub  [hl]                                        ; $7514: $96
	ld   d, h                                        ; $7515: $54
	sbc  [hl]                                        ; $7516: $9e
	ld   [$6308], sp                                 ; $7517: $08 $08 $63
	and  c                                           ; $751a: $a1
	sbc  a                                           ; $751b: $9f
	dec  c                                           ; $751c: $0d
	inc  b                                           ; $751d: $04
	ld   [$8f02], sp                                 ; $751e: $08 $02 $8f
	ld   [bc], a                                     ; $7521: $02
	sub  b                                           ; $7522: $90
	ld   [bc], a                                     ; $7523: $02
	sub  c                                           ; $7524: $91
	inc  b                                           ; $7525: $04
	add  hl, bc                                      ; $7526: $09
	ld   a, c                                        ; $7527: $79
	inc  b                                           ; $7528: $04
	ld   b, l                                        ; $7529: $45
	ld   [hl], c                                     ; $752a: $71
	ld   [hl], h                                     ; $752b: $74
	adc  l                                           ; $752c: $8d
	ld   [hl], h                                     ; $752d: $74
	dec  c                                           ; $752e: $0d
	ld   [hl], a                                     ; $752f: $77
	ld   d, h                                        ; $7530: $54
	ld   e, c                                        ; $7531: $59
	ld   h, l                                        ; $7532: $65
	sub  a                                           ; $7533: $97
	ld   sp, hl                                      ; $7534: $f9
	dec  c                                           ; $7535: $0d
	nop                                              ; $7536: $00
	ld   a, [bc]                                     ; $7537: $0a
	add  hl, de                                      ; $7538: $19
	dec  b                                           ; $7539: $05
	inc  bc                                          ; $753a: $03
	ld   [bc], a                                     ; $753b: $02
	jr   c, jr_044_7540                              ; $753c: $38 $02

	inc  b                                           ; $753e: $04
	ld   [hl], l                                     ; $753f: $75

jr_044_7540:
	ld   h, a                                        ; $7540: $67
	nop                                              ; $7541: $00
	nop                                              ; $7542: $00
	adc  h                                           ; $7543: $8c
	ld   l, [hl]                                     ; $7544: $6e
	ld   a, b                                        ; $7545: $78
	and  c                                           ; $7546: $a1
	halt                                             ; $7547: $76
	sub  b                                           ; $7548: $90
	rst  $38                                         ; $7549: $ff
	rst  $38                                         ; $754a: $ff
	nop                                              ; $754b: $00
	ld   bc, $aeca                                   ; $754c: $01 $ca $ae
	jp   z, Jump_044_75ae                            ; $754f: $ca $ae $75

	ld   h, a                                        ; $7552: $67
	nop                                              ; $7553: $00
	ld   [bc], a                                     ; $7554: $02
	rlca                                             ; $7555: $07
	add  d                                           ; $7556: $82
	nop                                              ; $7557: $00
	ld   [bc], a                                     ; $7558: $02
	inc  bc                                          ; $7559: $03
	ld   bc, $2000                                   ; $755a: $01 $00 $20
	nop                                              ; $755d: $00
	rlca                                             ; $755e: $07
	ld   sp, $0201                                   ; $755f: $31 $01 $02
	inc  bc                                          ; $7562: $03
	ld   bc, $2001                                   ; $7563: $01 $01 $20
	nop                                              ; $7566: $00
	rlca                                             ; $7567: $07
	or   h                                           ; $7568: $b4
	ld   bc, $0302                                   ; $7569: $01 $02 $03
	ld   bc, $2002                                   ; $756c: $01 $02 $20
	nop                                              ; $756f: $00
	ld   b, $78                                      ; $7570: $06 $78
	ld   bc, $000f                                   ; $7572: $01 $0f $00
	ld   bc, $0201                                   ; $7575: $01 $01 $02
	jr   c, jr_044_757c                              ; $7578: $38 $02

	inc  b                                           ; $757a: $04
	ld   [hl], l                                     ; $757b: $75

jr_044_757c:
	ld   h, a                                        ; $757c: $67
	sbc  a                                           ; $757d: $9f
	dec  c                                           ; $757e: $0d
	adc  l                                           ; $757f: $8d
	ld   a, b                                        ; $7580: $78
	ld   h, e                                        ; $7581: $63
	and  c                                           ; $7582: $a1
	ld   a, h                                        ; $7583: $7c
	sub  [hl]                                        ; $7584: $96
	ld   d, h                                        ; $7585: $54
	ld   a, b                                        ; $7586: $78
	dec  b                                           ; $7587: $05
	ld   d, $04                                      ; $7588: $16 $04
	sbc  l                                           ; $758a: $9d
	ld   a, b                                        ; $758b: $78
	inc  b                                           ; $758c: $04
	ld   a, b                                        ; $758d: $78
	ld   bc, $7614                                   ; $758e: $01 $14 $76
	dec  c                                           ; $7591: $0d
	ld   [bc], a                                     ; $7592: $02
	jp   c, Jump_044_6779                            ; $7593: $da $79 $67

	ld   h, d                                        ; $7596: $62
	ld   l, c                                        ; $7597: $69
	sbc  c                                           ; $7598: $99
	ld   a, b                                        ; $7599: $78
	and  c                                           ; $759a: $a1
	ld   [hl], h                                     ; $759b: $74
	rst  $38                                         ; $759c: $ff
	rst  $38                                         ; $759d: $ff
	dec  c                                           ; $759e: $0d
	nop                                              ; $759f: $00
	ld   a, [bc]                                     ; $75a0: $0a
	inc  e                                           ; $75a1: $1c
	ld   [bc], a                                     ; $75a2: $02
	dec  b                                           ; $75a3: $05
	dec  b                                           ; $75a4: $05
	ld   bc, $788d                                   ; $75a5: $01 $8d $78
	ld   h, e                                        ; $75a8: $63
	and  c                                           ; $75a9: $a1
	ld   sp, hl                                      ; $75aa: $f9
	dec  c                                           ; $75ab: $0d
	pop  bc                                          ; $75ac: $c1
	db   $e3                                         ; $75ad: $e3

Jump_044_75ae:
	ld   [hl], l                                     ; $75ae: $75
	ld   h, a                                        ; $75af: $67
	sbc  l                                           ; $75b0: $9d
	ld   a, e                                        ; $75b1: $7b
	sbc  a                                           ; $75b2: $9f
	inc  b                                           ; $75b3: $04
	ld   c, c                                        ; $75b4: $49
	sub  b                                           ; $75b5: $90
	sbc  l                                           ; $75b6: $9d
	ld   e, c                                        ; $75b7: $59
	ld   [hl], c                                     ; $75b8: $71
	ld   [hl], h                                     ; $75b9: $74
	dec  c                                           ; $75ba: $0d
	sub  a                                           ; $75bb: $97
	ld   [hl], c                                     ; $75bc: $71
	ld   h, l                                        ; $75bd: $65
	sub  c                                           ; $75be: $91
	sub  a                                           ; $75bf: $97
	ld   a, b                                        ; $75c0: $78
	ld   d, d                                        ; $75c1: $52
	sub  [hl]                                        ; $75c2: $96
	ld   d, h                                        ; $75c3: $54
	ld   a, e                                        ; $75c4: $7b
	sbc  a                                           ; $75c5: $9f
	dec  c                                           ; $75c6: $0d
	nop                                              ; $75c7: $00
	ld   a, [bc]                                     ; $75c8: $0a
	inc  e                                           ; $75c9: $1c
	ld   [bc], a                                     ; $75ca: $02
	ld   [bc], a                                     ; $75cb: $02
	ld   [bc], a                                     ; $75cc: $02
	dec  e                                           ; $75cd: $1d
	ld   b, b                                        ; $75ce: $40
	ld   [de], a                                     ; $75cf: $12
	inc  bc                                          ; $75d0: $03
	ld   [de], a                                     ; $75d1: $12
	ld   bc, $2902                                   ; $75d2: $01 $02 $29
	nop                                              ; $75d5: $00
	ld   bc, $7c61                                   ; $75d6: $01 $61 $7c
	ld   [bc], a                                     ; $75d9: $02
	sbc  b                                           ; $75da: $98
	inc  bc                                          ; $75db: $03
	nop                                              ; $75dc: $00
	ld   [hl], l                                     ; $75dd: $75
	ld   bc, $0507                                   ; $75de: $01 $07 $05
	ld   d, $04                                      ; $75e1: $16 $04
	sbc  l                                           ; $75e3: $9d
	ld   bc, $7608                                   ; $75e4: $01 $08 $76
	dec  c                                           ; $75e7: $0d
	ld   [bc], a                                     ; $75e8: $02
	sbc  l                                           ; $75e9: $9d
	ld   d, [hl]                                     ; $75ea: $56
	sbc  c                                           ; $75eb: $99
	ld   a, h                                        ; $75ec: $7c
	ld   a, l                                        ; $75ed: $7d
	sbc  [hl]                                        ; $75ee: $9e
	ld   h, c                                        ; $75ef: $61
	ld   a, h                                        ; $75f0: $7c
	sbc  l                                           ; $75f1: $9d
	ld   l, l                                        ; $75f2: $6d
	ld   e, l                                        ; $75f3: $5d
	ld   h, l                                        ; $75f4: $65
	dec  c                                           ; $75f5: $0d
	inc  bc                                          ; $75f6: $03
	sub  b                                           ; $75f7: $90
	inc  bc                                          ; $75f8: $03
	cp   e                                           ; $75f9: $bb
	ld   h, a                                        ; $75fa: $67
	adc  l                                           ; $75fb: $8d
	sbc  d                                           ; $75fc: $9a
	ld   l, [hl]                                     ; $75fd: $6e
	ld   e, a                                        ; $75fe: $5f
	ld   [hl], l                                     ; $75ff: $75
	ld   h, a                                        ; $7600: $67
	sbc  l                                           ; $7601: $9d
	sub  [hl]                                        ; $7602: $96
	sbc  a                                           ; $7603: $9f
	dec  c                                           ; $7604: $0d
	nop                                              ; $7605: $00
	ld   a, [bc]                                     ; $7606: $0a
	ld   bc, $0b02                                   ; $7607: $01 $02 $0b
	ld   [bc], a                                     ; $760a: $02
	xor  d                                           ; $760b: $aa
	sbc  [hl]                                        ; $760c: $9e
	ld   [bc], a                                     ; $760d: $02
	and  c                                           ; $760e: $a1
	and  b                                           ; $760f: $a0
	ld   [hl], d                                     ; $7610: $72
	ld   e, a                                        ; $7611: $5f
	ld   a, b                                        ; $7612: $78
	ld   h, e                                        ; $7613: $63
	ld   d, d                                        ; $7614: $52
	sbc  a                                           ; $7615: $9f
	dec  c                                           ; $7616: $0d
	nop                                              ; $7617: $00
	ld   a, [bc]                                     ; $7618: $0a
	dec  c                                           ; $7619: $0d
	nop                                              ; $761a: $00
	nop                                              ; $761b: $00
	rrca                                             ; $761c: $0f
	nop                                              ; $761d: $00
	ld   bc, $1e09                                   ; $761e: $01 $09 $1e
	nop                                              ; $7621: $00
	rrca                                             ; $7622: $0f
	nop                                              ; $7623: $00
	ld   bc, $8c01                                   ; $7624: $01 $01 $8c
	ld   l, [hl]                                     ; $7627: $6e
	ld   a, b                                        ; $7628: $78
	and  c                                           ; $7629: $a1
	halt                                             ; $762a: $76
	sub  b                                           ; $762b: $90
	rst  $38                                         ; $762c: $ff
	rst  $38                                         ; $762d: $ff
	dec  c                                           ; $762e: $0d
	inc  b                                           ; $762f: $04
	ld   b, l                                        ; $7630: $45
	ld   [hl], c                                     ; $7631: $71
	ld   [hl], h                                     ; $7632: $74
	ld   [bc], a                                     ; $7633: $02
	xor  c                                           ; $7634: $a9
	sub  b                                           ; $7635: $90
	ld   a, b                                        ; $7636: $78
	ld   d, d                                        ; $7637: $52
	ld   [hl], l                                     ; $7638: $75
	ld   h, a                                        ; $7639: $67
	ld   h, l                                        ; $763a: $65
	rst  $38                                         ; $763b: $ff
	rst  $38                                         ; $763c: $ff
	dec  c                                           ; $763d: $0d
	nop                                              ; $763e: $00
	ld   a, [bc]                                     ; $763f: $0a
	rrca                                             ; $7640: $0f
	ld   [bc], a                                     ; $7641: $02
	nop                                              ; $7642: $00
	ld   bc, $9750                                   ; $7643: $01 $50 $97
	ld   l, e                                        ; $7646: $6b
	ld   d, h                                        ; $7647: $54
	sbc  a                                           ; $7648: $9f
	dec  c                                           ; $7649: $0d
	ld   h, [hl]                                     ; $764a: $66
	sub  c                                           ; $764b: $91
	sbc  [hl]                                        ; $764c: $9e
	ld   h, c                                        ; $764d: $61
	sbc  d                                           ; $764e: $9a
	ld   e, c                                        ; $764f: $59
	sub  a                                           ; $7650: $97
	ld   e, d                                        ; $7651: $5a
	and  c                                           ; $7652: $a1
	ld   a, [hl]                                     ; $7653: $7e
	ld   [hl], c                                     ; $7654: $71
	ld   [hl], h                                     ; $7655: $74
	dec  c                                           ; $7656: $0d
	ld   e, l                                        ; $7657: $5d
	ld   l, [hl]                                     ; $7658: $6e
	ld   h, e                                        ; $7659: $63
	ld   d, d                                        ; $765a: $52
	ld   a, b                                        ; $765b: $78
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
	inc  e                                           ; $7669: $1c
	ld   [bc], a                                     ; $766a: $02
	dec  b                                           ; $766b: $05
	dec  b                                           ; $766c: $05
	ld   bc, $599d                                   ; $766d: $01 $9d $59
	sub  a                                           ; $7670: $97
	ld   a, b                                        ; $7671: $78
	ld   d, d                                        ; $7672: $52
	ld   a, h                                        ; $7673: $7c
	ld   [hl], l                                     ; $7674: $75
	ld   h, a                                        ; $7675: $67
	ld   e, c                                        ; $7676: $59
	ld   sp, hl                                      ; $7677: $f9
	dec  c                                           ; $7678: $0d
	inc  bc                                          ; $7679: $03
	sub  h                                           ; $767a: $94
	inc  b                                           ; $767b: $04
	sbc  [hl]                                        ; $767c: $9e
	ld   a, h                                        ; $767d: $7c
	ld   h, c                                        ; $767e: $61
	halt                                             ; $767f: $76
	sub  b                                           ; $7680: $90
	sbc  l                                           ; $7681: $9d
	ld   e, c                                        ; $7682: $59
	sub  a                                           ; $7683: $97
	ld   a, b                                        ; $7684: $78
	ld   d, d                                        ; $7685: $52
	sub  [hl]                                        ; $7686: $96
	ld   d, h                                        ; $7687: $54
	dec  c                                           ; $7688: $0d
	ld   [hl], l                                     ; $7689: $75
	ld   a, l                                        ; $768a: $7d
	sbc  [hl]                                        ; $768b: $9e
	inc  bc                                          ; $768c: $03
	ld   a, b                                        ; $768d: $78
	ld   e, d                                        ; $768e: $5a
	dec  b                                           ; $768f: $05
	pop  de                                          ; $7690: $d1
	ld   d, d                                        ; $7691: $52
	sub  d                                           ; $7692: $92
	sub  a                                           ; $7693: $97
	sbc  d                                           ; $7694: $9a
	adc  h                                           ; $7695: $8c
	ld   h, a                                        ; $7696: $67
	sbc  l                                           ; $7697: $9d
	sbc  a                                           ; $7698: $9f
	dec  c                                           ; $7699: $0d
	nop                                              ; $769a: $00
	ld   a, [bc]                                     ; $769b: $0a
	dec  c                                           ; $769c: $0d
	nop                                              ; $769d: $00
	nop                                              ; $769e: $00
	rrca                                             ; $769f: $0f
	nop                                              ; $76a0: $00
	ld   bc, $1e09                                   ; $76a1: $01 $09 $1e
	nop                                              ; $76a4: $00
	rrca                                             ; $76a5: $0f
	nop                                              ; $76a6: $00
	ld   bc, $ca01                                   ; $76a7: $01 $01 $ca
	xor  [hl]                                        ; $76aa: $ae
	jp   z, Jump_044_75ae                            ; $76ab: $ca $ae $75

	ld   h, a                                        ; $76ae: $67
	ld   a, [$040d]                                  ; $76af: $fa $0d $04
	and  c                                           ; $76b2: $a1
	inc  bc                                          ; $76b3: $03
	add  d                                           ; $76b4: $82
	ld   a, h                                        ; $76b5: $7c
	adc  l                                           ; $76b6: $8d
	ld   a, b                                        ; $76b7: $78
	ld   h, e                                        ; $76b8: $63
	and  c                                           ; $76b9: $a1
	ld   a, c                                        ; $76ba: $79
	ld   [bc], a                                     ; $76bb: $02
	ld   a, [bc]                                     ; $76bc: $0a
	adc  h                                           ; $76bd: $8c
	sbc  d                                           ; $76be: $9a
	ld   [hl], h                                     ; $76bf: $74
	rst  $38                                         ; $76c0: $ff
	rst  $38                                         ; $76c1: $ff
	dec  c                                           ; $76c2: $0d
	nop                                              ; $76c3: $00
	ld   a, [bc]                                     ; $76c4: $0a
	inc  e                                           ; $76c5: $1c
	ld   [bc], a                                     ; $76c6: $02
	ld   [bc], a                                     ; $76c7: $02
	ld   [bc], a                                     ; $76c8: $02
	ld   bc, $a104                                   ; $76c9: $01 $04 $a1
	inc  bc                                          ; $76cc: $03
	add  d                                           ; $76cd: $82
	ld   sp, hl                                      ; $76ce: $f9
	db   $10                                         ; $76cf: $10
	adc  l                                           ; $76d0: $8d
	ld   a, b                                        ; $76d1: $78
	ld   h, e                                        ; $76d2: $63
	and  c                                           ; $76d3: $a1
	ld   sp, hl                                      ; $76d4: $f9
	dec  c                                           ; $76d5: $0d
	inc  b                                           ; $76d6: $04
	and  c                                           ; $76d7: $a1
	inc  bc                                          ; $76d8: $03
	add  d                                           ; $76d9: $82
	ld   a, l                                        ; $76da: $7d
	sbc  [hl]                                        ; $76db: $9e
	sbc  l                                           ; $76dc: $9d
	ld   l, l                                        ; $76dd: $6d
	ld   e, l                                        ; $76de: $5d
	ld   h, l                                        ; $76df: $65
	add  b                                           ; $76e0: $80
	halt                                             ; $76e1: $76
	sbc  b                                           ; $76e2: $98
	ld   h, [hl]                                     ; $76e3: $66
	sub  c                                           ; $76e4: $91
	dec  c                                           ; $76e5: $0d
	ld   d, b                                        ; $76e6: $50
	sbc  b                                           ; $76e7: $98
	adc  h                                           ; $76e8: $8c
	ld   l, c                                        ; $76e9: $69
	and  c                                           ; $76ea: $a1
	ld   h, c                                        ; $76eb: $61
	halt                                             ; $76ec: $76
	ld   sp, hl                                      ; $76ed: $f9
	dec  c                                           ; $76ee: $0d
	nop                                              ; $76ef: $00
	ld   a, [bc]                                     ; $76f0: $0a
	add  hl, de                                      ; $76f1: $19
	dec  b                                           ; $76f2: $05
	ld   [bc], a                                     ; $76f3: $02
	ld   e, b                                        ; $76f4: $58
	ld   [hl], c                                     ; $76f5: $71
	ld   h, l                                        ; $76f6: $65
	sub  c                                           ; $76f7: $91
	sbc  c                                           ; $76f8: $99
	halt                                             ; $76f9: $76
	ld   e, b                                        ; $76fa: $58
	sbc  b                                           ; $76fb: $98
	nop                                              ; $76fc: $00
	nop                                              ; $76fd: $00
	adc  l                                           ; $76fe: $8d
	ld   a, b                                        ; $76ff: $78
	ld   h, e                                        ; $7700: $63
	and  c                                           ; $7701: $a1
	xor  [hl]                                        ; $7702: $ae
	xor  $a5                                         ; $7703: $ee $a5
	ld   [hl], l                                     ; $7705: $75
	ld   h, a                                        ; $7706: $67
	sub  [hl]                                        ; $7707: $96
	nop                                              ; $7708: $00
	ld   bc, $2e07                                   ; $7709: $01 $07 $2e
	ld   [bc], a                                     ; $770c: $02
	ld   [bc], a                                     ; $770d: $02
	inc  bc                                          ; $770e: $03
	ld   bc, $2000                                   ; $770f: $01 $00 $20
	nop                                              ; $7712: $00
	rlca                                             ; $7713: $07
	xor  l                                           ; $7714: $ad
	ld   [bc], a                                     ; $7715: $02
	ld   [bc], a                                     ; $7716: $02
	inc  bc                                          ; $7717: $03
	ld   bc, $2001                                   ; $7718: $01 $01 $20
	nop                                              ; $771b: $00
	ld   b, $11                                      ; $771c: $06 $11
	inc  bc                                          ; $771e: $03
	rrca                                             ; $771f: $0f
	nop                                              ; $7720: $00
	ld   bc, $5801                                   ; $7721: $01 $01 $58
	ld   [hl], c                                     ; $7724: $71
	ld   h, l                                        ; $7725: $65
	sub  c                                           ; $7726: $91
	sbc  c                                           ; $7727: $99
	halt                                             ; $7728: $76
	ld   e, b                                        ; $7729: $58
	sbc  b                                           ; $772a: $98
	ld   [hl], l                                     ; $772b: $75
	ld   h, a                                        ; $772c: $67
	sub  [hl]                                        ; $772d: $96
	sbc  a                                           ; $772e: $9f
	dec  c                                           ; $772f: $0d
	ld   h, a                                        ; $7730: $67
	adc  l                                           ; $7731: $8d
	sbc  d                                           ; $7732: $9a
	ld   h, e                                        ; $7733: $63
	and  c                                           ; $7734: $a1
	ld   e, d                                        ; $7735: $5a
	ld   [bc], a                                     ; $7736: $02
	jr   nz, jr_044_773d                             ; $7737: $20 $04

	ld   a, c                                        ; $7739: $79
	inc  b                                           ; $773a: $04
	and  c                                           ; $773b: $a1
	ld   h, l                                        ; $773c: $65

jr_044_773d:
	ld   d, d                                        ; $773d: $52
	ld   [hl], l                                     ; $773e: $75
	ld   h, a                                        ; $773f: $67
	sbc  a                                           ; $7740: $9f
	dec  c                                           ; $7741: $0d
	nop                                              ; $7742: $00
	ld   a, [bc]                                     ; $7743: $0a
	inc  e                                           ; $7744: $1c
	ld   [bc], a                                     ; $7745: $02
	ld   bc, $1d01                                   ; $7746: $01 $01 $1d
	ld   b, b                                        ; $7749: $40
	ld   [de], a                                     ; $774a: $12
	inc  bc                                          ; $774b: $03
	ld   [de], a                                     ; $774c: $12
	ld   bc, $2802                                   ; $774d: $01 $02 $28
	nop                                              ; $7750: $00
	ld   bc, $546b                                   ; $7751: $01 $6b $54
	sbc  [hl]                                        ; $7754: $9e
	ld   l, e                                        ; $7755: $6b
	ld   a, h                                        ; $7756: $7c
	halt                                             ; $7757: $76
	ld   e, b                                        ; $7758: $58
	sbc  b                                           ; $7759: $98
	ld   [hl], l                                     ; $775a: $75
	ld   h, a                                        ; $775b: $67
	sbc  a                                           ; $775c: $9f
	dec  c                                           ; $775d: $0d
	ld   [bc], a                                     ; $775e: $02
	dec  bc                                          ; $775f: $0b
	ld   [bc], a                                     ; $7760: $02
	xor  d                                           ; $7761: $aa
	sbc  [hl]                                        ; $7762: $9e
	ld   [bc], a                                     ; $7763: $02
	sbc  l                                           ; $7764: $9d
	inc  b                                           ; $7765: $04
	sub  c                                           ; $7766: $91
	ld   [hl], e                                     ; $7767: $73
	ld   e, c                                        ; $7768: $59
	ld   d, d                                        ; $7769: $52
	ld   a, c                                        ; $776a: $79
	ld   a, l                                        ; $776b: $7d
	dec  c                                           ; $776c: $0d
	ld   e, b                                        ; $776d: $58
	ld   [bc], a                                     ; $776e: $02
	and  c                                           ; $776f: $a1
	and  b                                           ; $7770: $a0
	ld   [hl], d                                     ; $7771: $72
	ld   e, a                                        ; $7772: $5f
	ld   a, b                                        ; $7773: $78
	ld   h, e                                        ; $7774: $63
	ld   d, d                                        ; $7775: $52
	sbc  a                                           ; $7776: $9f
	dec  c                                           ; $7777: $0d
	nop                                              ; $7778: $00
	ld   a, [bc]                                     ; $7779: $0a
	ld   bc, $9166                                   ; $777a: $01 $66 $91
	ld   d, b                                        ; $777d: $50
	sbc  [hl]                                        ; $777e: $9e
	ld   [bc], a                                     ; $777f: $02
	and  l                                           ; $7780: $a5
	inc  b                                           ; $7781: $04
	xor  d                                           ; $7782: $aa
	sub  b                                           ; $7783: $90
	ld   [bc], a                                     ; $7784: $02
	jr   nz, jr_044_778b                             ; $7785: $20 $04

	xor  d                                           ; $7787: $aa
	sbc  [hl]                                        ; $7788: $9e
	dec  c                                           ; $7789: $0d
	ld   e, d                                        ; $778a: $5a

jr_044_778b:
	and  c                                           ; $778b: $a1
	ld   a, [hl]                                     ; $778c: $7e
	sbc  b                                           ; $778d: $98
	ld   a, b                                        ; $778e: $78
	ld   h, e                                        ; $778f: $63
	ld   d, d                                        ; $7790: $52
	sbc  a                                           ; $7791: $9f
	dec  c                                           ; $7792: $0d
	nop                                              ; $7793: $00
	ld   a, [bc]                                     ; $7794: $0a
	dec  c                                           ; $7795: $0d
	nop                                              ; $7796: $00
	nop                                              ; $7797: $00
	rrca                                             ; $7798: $0f
	nop                                              ; $7799: $00
	ld   bc, $1e09                                   ; $779a: $01 $09 $1e
	nop                                              ; $779d: $00
	rrca                                             ; $779e: $0f
	nop                                              ; $779f: $00
	ld   bc, $5201                                   ; $77a0: $01 $01 $52
	ld   d, [hl]                                     ; $77a3: $56
	ld   d, d                                        ; $77a4: $52
	ld   d, [hl]                                     ; $77a5: $56
	sbc  [hl]                                        ; $77a6: $9e
	ld   h, a                                        ; $77a7: $67
	adc  l                                           ; $77a8: $8d
	sbc  d                                           ; $77a9: $9a
	ld   h, e                                        ; $77aa: $63
	and  c                                           ; $77ab: $a1
	ld   a, l                                        ; $77ac: $7d
	dec  c                                           ; $77ad: $0d
	sub  b                                           ; $77ae: $90
	ld   l, a                                        ; $77af: $6f
	sbc  e                                           ; $77b0: $9b
	and  c                                           ; $77b1: $a1
	sbc  [hl]                                        ; $77b2: $9e
	adc  l                                           ; $77b3: $8d
	ld   a, b                                        ; $77b4: $78
	ld   h, e                                        ; $77b5: $63
	and  c                                           ; $77b6: $a1
	dec  c                                           ; $77b7: $0d
	ld   e, b                                        ; $77b8: $58
	xor  [hl]                                        ; $77b9: $ae
	xor  $a5                                         ; $77ba: $ee $a5
	ld   [hl], l                                     ; $77bc: $75
	ld   h, a                                        ; $77bd: $67
	sbc  a                                           ; $77be: $9f
	dec  c                                           ; $77bf: $0d
	nop                                              ; $77c0: $00
	ld   a, [bc]                                     ; $77c1: $0a
	inc  e                                           ; $77c2: $1c
	ld   [bc], a                                     ; $77c3: $02
	ld   [bc], a                                     ; $77c4: $02
	ld   [bc], a                                     ; $77c5: $02
	dec  e                                           ; $77c6: $1d
	ld   b, b                                        ; $77c7: $40
	ld   [de], a                                     ; $77c8: $12
	inc  bc                                          ; $77c9: $03
	ld   [de], a                                     ; $77ca: $12
	ld   bc, $2902                                   ; $77cb: $01 $02 $29
	nop                                              ; $77ce: $00
	ld   bc, $e3c1                                   ; $77cf: $01 $c1 $e3
	ld   [hl], l                                     ; $77d2: $75
	ld   h, a                                        ; $77d3: $67
	sbc  l                                           ; $77d4: $9d
	ld   a, e                                        ; $77d5: $7b
	sbc  a                                           ; $77d6: $9f
	dec  c                                           ; $77d7: $0d
	adc  h                                           ; $77d8: $8c
	ld   [hl], c                                     ; $77d9: $71
	ld   l, l                                        ; $77da: $6d
	ld   e, l                                        ; $77db: $5d
	sub  b                                           ; $77dc: $90
	ld   [hl], c                                     ; $77dd: $71
	ld   [hl], h                                     ; $77de: $74
	sbc  [hl]                                        ; $77df: $9e
	inc  b                                           ; $77e0: $04
	ld   c, c                                        ; $77e1: $49
	sub  b                                           ; $77e2: $90
	sbc  l                                           ; $77e3: $9d
	ld   e, c                                        ; $77e4: $59
	ld   [hl], c                                     ; $77e5: $71
	ld   [hl], h                                     ; $77e6: $74
	dec  c                                           ; $77e7: $0d
	sub  a                                           ; $77e8: $97
	ld   [hl], c                                     ; $77e9: $71
	ld   h, l                                        ; $77ea: $65
	sub  c                                           ; $77eb: $91
	sub  a                                           ; $77ec: $97
	ld   a, b                                        ; $77ed: $78
	ld   d, d                                        ; $77ee: $52
	sub  [hl]                                        ; $77ef: $96
	ld   d, h                                        ; $77f0: $54
	ld   [hl], l                                     ; $77f1: $75
	ld   h, a                                        ; $77f2: $67
	sbc  l                                           ; $77f3: $9d
	ld   a, e                                        ; $77f4: $7b
	sbc  a                                           ; $77f5: $9f
	dec  c                                           ; $77f6: $0d
	nop                                              ; $77f7: $00
	ld   a, [bc]                                     ; $77f8: $0a
	dec  c                                           ; $77f9: $0d
	nop                                              ; $77fa: $00
	nop                                              ; $77fb: $00
	rrca                                             ; $77fc: $0f
	nop                                              ; $77fd: $00
	ld   bc, $1e09                                   ; $77fe: $01 $09 $1e
	nop                                              ; $7801: $00
	inc  e                                           ; $7802: $1c
	ld   [bc], a                                     ; $7803: $02
	dec  b                                           ; $7804: $05
	dec  b                                           ; $7805: $05
	dec  e                                           ; $7806: $1d
	ld   b, b                                        ; $7807: $40
	ld   [de], a                                     ; $7808: $12
	inc  bc                                          ; $7809: $03
	ld   [de], a                                     ; $780a: $12
	ld   bc, $2902                                   ; $780b: $01 $02 $29
	nop                                              ; $780e: $00
	ld   bc, $4904                                   ; $780f: $01 $04 $49
	and  b                                           ; $7812: $a0
	ld   l, [hl]                                     ; $7813: $6e
	adc  h                                           ; $7814: $8c
	ld   [hl], c                                     ; $7815: $71
	ld   [hl], h                                     ; $7816: $74
	ld   d, d                                        ; $7817: $52
	sbc  c                                           ; $7818: $99
	ld   a, h                                        ; $7819: $7c
	ld   sp, hl                                      ; $781a: $f9
	dec  c                                           ; $781b: $0d
	sbc  l                                           ; $781c: $9d
	ld   e, c                                        ; $781d: $59
	sub  a                                           ; $781e: $97
	ld   a, b                                        ; $781f: $78
	ld   d, d                                        ; $7820: $52
	ld   a, h                                        ; $7821: $7c
	ld   [hl], l                                     ; $7822: $75
	ld   h, a                                        ; $7823: $67
	ld   e, c                                        ; $7824: $59
	ld   sp, hl                                      ; $7825: $f9
	dec  c                                           ; $7826: $0d
	nop                                              ; $7827: $00
	ld   a, [bc]                                     ; $7828: $0a
	ld   bc, $a16b                                   ; $7829: $01 $6b $a1
	ld   a, b                                        ; $782c: $78
	ld   h, c                                        ; $782d: $61
	halt                                             ; $782e: $76
	ld   [hl], l                                     ; $782f: $75
	ld   a, l                                        ; $7830: $7d
	sbc  [hl]                                        ; $7831: $9e
	dec  c                                           ; $7832: $0d
	inc  bc                                          ; $7833: $03
	ld   a, b                                        ; $7834: $78
	ld   e, d                                        ; $7835: $5a
	dec  b                                           ; $7836: $05
	pop  de                                          ; $7837: $d1
	ld   d, d                                        ; $7838: $52
	sub  d                                           ; $7839: $92
	sub  a                                           ; $783a: $97
	sbc  d                                           ; $783b: $9a
	adc  h                                           ; $783c: $8c
	ld   h, a                                        ; $783d: $67
	sbc  l                                           ; $783e: $9d
	rst  $38                                         ; $783f: $ff
	rst  $38                                         ; $7840: $ff
	dec  c                                           ; $7841: $0d
	nop                                              ; $7842: $00
	ld   a, [bc]                                     ; $7843: $0a
	dec  c                                           ; $7844: $0d
	nop                                              ; $7845: $00
	nop                                              ; $7846: $00
	rrca                                             ; $7847: $0f
	nop                                              ; $7848: $00
	ld   bc, $1e09                                   ; $7849: $01 $09 $1e
	nop                                              ; $784c: $00
	nop                                              ; $784d: $00
	inc  e                                           ; $784e: $1c
	ld   bc, $0000                                   ; $784f: $01 $00 $00
	ld   [bc], a                                     ; $7852: $02
	inc  e                                           ; $7853: $1c
	ld   bc, $0000                                   ; $7854: $01 $00 $00
	ld   bc, $9750                                   ; $7857: $01 $50 $97
	sbc  [hl]                                        ; $785a: $9e
	ld   [$6300], sp                                 ; $785b: $08 $00 $63
	and  c                                           ; $785e: $a1
	sbc  a                                           ; $785f: $9f
	dec  c                                           ; $7860: $0d
	nop                                              ; $7861: $00
	ld   a, [bc]                                     ; $7862: $0a
	ld   bc, $5477                                   ; $7863: $01 $77 $54
	ld   [hl], l                                     ; $7866: $75
	ld   h, a                                        ; $7867: $67
	ld   e, c                                        ; $7868: $59
	ld   sp, hl                                      ; $7869: $f9
	dec  c                                           ; $786a: $0d
	inc  bc                                          ; $786b: $03
	ld   l, h                                        ; $786c: $6c
	ld   h, l                                        ; $786d: $65
	ld   a, l                                        ; $786e: $7d
	ld   a, b                                        ; $786f: $78
	sbc  d                                           ; $7870: $9a
	adc  h                                           ; $7871: $8c
	ld   h, l                                        ; $7872: $65
	ld   l, l                                        ; $7873: $6d
	ld   e, c                                        ; $7874: $59
	ld   sp, hl                                      ; $7875: $f9
	dec  c                                           ; $7876: $0d
	nop                                              ; $7877: $00
	ld   a, [bc]                                     ; $7878: $0a
	rrca                                             ; $7879: $0f
	nop                                              ; $787a: $00
	ld   bc, $5801                                   ; $787b: $01 $01 $58
	ld   a, l                                        ; $787e: $7d
	sub  [hl]                                        ; $787f: $96
	ld   d, h                                        ; $7880: $54
	ld   h, d                                        ; $7881: $62
	ld   h, h                                        ; $7882: $64
	ld   d, d                                        ; $7883: $52
	adc  h                                           ; $7884: $8c
	ld   h, a                                        ; $7885: $67
	sbc  a                                           ; $7886: $9f
	dec  c                                           ; $7887: $0d
	ld   a, l                                        ; $7888: $7d
	ld   d, d                                        ; $7889: $52
	sbc  [hl]                                        ; $788a: $9e
	ld   e, b                                        ; $788b: $58
	ld   e, c                                        ; $788c: $59
	ld   h, b                                        ; $788d: $60
	ld   h, e                                        ; $788e: $63
	adc  h                                           ; $788f: $8c
	ld   [hl], l                                     ; $7890: $75
	sbc  a                                           ; $7891: $9f
	dec  c                                           ; $7892: $0d
	ld   bc, $6303                                   ; $7893: $01 $03 $63
	ld   [hl], h                                     ; $7896: $74
	sbc  [hl]                                        ; $7897: $9e
	inc  b                                           ; $7898: $04
	ld   c, c                                        ; $7899: $49
	and  b                                           ; $789a: $a0
	ld   [bc], a                                     ; $789b: $02
	jp   nz, Jump_044_5461                           ; $789c: $c2 $61 $54

	ld   e, c                                        ; $789f: $59
	ld   a, b                                        ; $78a0: $78
	rst  $38                                         ; $78a1: $ff
	rst  $38                                         ; $78a2: $ff
	ld   bc, $0d04                                   ; $78a3: $01 $04 $0d
	nop                                              ; $78a6: $00
	ld   a, [bc]                                     ; $78a7: $0a
	add  hl, de                                      ; $78a8: $19
	dec  b                                           ; $78a9: $05
	inc  bc                                          ; $78aa: $03
	inc  b                                           ; $78ab: $04
	ld   [$8f02], sp                                 ; $78ac: $08 $02 $8f
	ld   [bc], a                                     ; $78af: $02
	sub  b                                           ; $78b0: $90
	ld   [bc], a                                     ; $78b1: $02
	sub  c                                           ; $78b2: $91
	inc  b                                           ; $78b3: $04
	add  hl, bc                                      ; $78b4: $09
	ld   a, c                                        ; $78b5: $79
	ld   [hl], d                                     ; $78b6: $72
	ld   d, d                                        ; $78b7: $52
	ld   [hl], h                                     ; $78b8: $74
	ld   [bc], a                                     ; $78b9: $02
	jp   nz, $005d                                   ; $78ba: $c2 $5d $00

	nop                                              ; $78bd: $00
	ret                                              ; $78be: $c9


	and  l                                           ; $78bf: $a5
	xor  $7c                                         ; $78c0: $ee $7c
	inc  b                                           ; $78c2: $04
	ld   a, d                                        ; $78c3: $7a
	inc  bc                                          ; $78c4: $03
	ld   c, e                                        ; $78c5: $4b
	and  b                                           ; $78c6: $a0
	ld   [bc], a                                     ; $78c7: $02
	jp   nz, $005d                                   ; $78c8: $c2 $5d $00

	ld   bc, $5d63                                   ; $78cb: $01 $63 $5d
	sub  a                                           ; $78ce: $97
	ld   a, h                                        ; $78cf: $7c
	ld   h, c                                        ; $78d0: $61
	halt                                             ; $78d1: $76
	and  b                                           ; $78d2: $a0
	ld   [bc], a                                     ; $78d3: $02
	jp   nz, $005d                                   ; $78d4: $c2 $5d $00

	ld   [bc], a                                     ; $78d7: $02
	rlca                                             ; $78d8: $07
	xor  b                                           ; $78d9: $a8
	nop                                              ; $78da: $00
	ld   [bc], a                                     ; $78db: $02
	inc  bc                                          ; $78dc: $03
	ld   bc, $2000                                   ; $78dd: $01 $00 $20
	nop                                              ; $78e0: $00
	rlca                                             ; $78e1: $07
	sub  a                                           ; $78e2: $97
	ld   bc, $0302                                   ; $78e3: $01 $02 $03
	ld   bc, $2001                                   ; $78e6: $01 $01 $20
	nop                                              ; $78e9: $00
	rlca                                             ; $78ea: $07
	ld   [hl-], a                                    ; $78eb: $32
	ld   [bc], a                                     ; $78ec: $02
	ld   [bc], a                                     ; $78ed: $02
	inc  bc                                          ; $78ee: $03
	ld   bc, $2002                                   ; $78ef: $01 $02 $20
	nop                                              ; $78f2: $00
	ld   b, $d1                                      ; $78f3: $06 $d1
	ld   [bc], a                                     ; $78f5: $02
	rrca                                             ; $78f6: $0f
	nop                                              ; $78f7: $00
	ld   bc, $0401                                   ; $78f8: $01 $01 $04
	ld   [$8f02], sp                                 ; $78fb: $08 $02 $8f
	ld   [bc], a                                     ; $78fe: $02
	sub  b                                           ; $78ff: $90
	ld   [bc], a                                     ; $7900: $02
	sub  c                                           ; $7901: $91
	inc  b                                           ; $7902: $04
	add  hl, bc                                      ; $7903: $09
	ld   [hl], c                                     ; $7904: $71
	ld   [hl], h                                     ; $7905: $74
	dec  c                                           ; $7906: $0d
	ld   [hl], a                                     ; $7907: $77
	and  c                                           ; $7908: $a1
	ld   a, b                                        ; $7909: $78
	halt                                             ; $790a: $76
	ld   h, c                                        ; $790b: $61
	sbc  e                                           ; $790c: $9b
	ld   a, b                                        ; $790d: $78
	and  c                                           ; $790e: $a1
	ld   [hl], l                                     ; $790f: $75
	ld   h, a                                        ; $7910: $67
	ld   e, c                                        ; $7911: $59
	ld   sp, hl                                      ; $7912: $f9
	dec  c                                           ; $7913: $0d
	nop                                              ; $7914: $00
	ld   a, [bc]                                     ; $7915: $0a
	inc  e                                           ; $7916: $1c
	ld   bc, $0000                                   ; $7917: $01 $00 $00
	ld   bc, $0804                                   ; $791a: $01 $04 $08
	ld   [bc], a                                     ; $791d: $02
	adc  a                                           ; $791e: $8f
	ld   [bc], a                                     ; $791f: $02
	sub  b                                           ; $7920: $90
	ld   [bc], a                                     ; $7921: $02
	sub  c                                           ; $7922: $91
	inc  b                                           ; $7923: $04
	add  hl, bc                                      ; $7924: $09
	ld   a, l                                        ; $7925: $7d
	sbc  [hl]                                        ; $7926: $9e
	inc  b                                           ; $7927: $04
	ld   [$2f04], sp                                 ; $7928: $08 $04 $2f
	ld   a, h                                        ; $792b: $7c
	inc  b                                           ; $792c: $04
	xor  b                                           ; $792d: $a8
	dec  b                                           ; $792e: $05
	ld   hl, $0da0                                   ; $792f: $21 $a0 $0d
	ld   e, b                                        ; $7932: $58
	add  c                                           ; $7933: $81
	sub  d                                           ; $7934: $92
	ld   e, c                                        ; $7935: $59
	ld   h, a                                        ; $7936: $67
	inc  b                                           ; $7937: $04
	call $037c                                       ; $7938: $cd $7c $03
	ld   l, e                                        ; $793b: $6b
	ld   e, c                                        ; $793c: $59
	sub  a                                           ; $793d: $97
	inc  bc                                          ; $793e: $03
	add  d                                           ; $793f: $82
	ld   bc, $a014                                   ; $7940: $01 $14 $a0
	dec  c                                           ; $7943: $0d
	inc  bc                                          ; $7944: $03
	sub  e                                           ; $7945: $93
	sbc  c                                           ; $7946: $99
	inc  b                                           ; $7947: $04
	ld   e, a                                        ; $7948: $5f
	inc  b                                           ; $7949: $04
	pop  bc                                          ; $794a: $c1
	inc  b                                           ; $794b: $04
	sub  l                                           ; $794c: $95
	inc  b                                           ; $794d: $04
	ld   a, [bc]                                     ; $794e: $0a
	ld   a, b                                        ; $794f: $78
	and  c                                           ; $7950: $a1
	ld   [hl], l                                     ; $7951: $75
	ld   h, a                                        ; $7952: $67
	sbc  a                                           ; $7953: $9f
	dec  c                                           ; $7954: $0d
	nop                                              ; $7955: $00
	ld   a, [bc]                                     ; $7956: $0a
	ld   bc, $6e83                                   ; $7957: $01 $83 $6e
	and  c                                           ; $795a: $a1
	ld   a, l                                        ; $795b: $7d
	inc  b                                           ; $795c: $04
	ld   [$8f02], sp                                 ; $795d: $08 $02 $8f
	ld   [bc], a                                     ; $7960: $02
	ld   c, [hl]                                     ; $7961: $4e
	ld   [bc], a                                     ; $7962: $02
	sub  d                                           ; $7963: $92
	inc  b                                           ; $7964: $04
	add  hl, bc                                      ; $7965: $09
	halt                                             ; $7966: $76
	ld   h, l                                        ; $7967: $65
	ld   [hl], h                                     ; $7968: $74
	dec  c                                           ; $7969: $0d
	ld   e, b                                        ; $796a: $58
	inc  bc                                          ; $796b: $03
	sub  c                                           ; $796c: $91
	ld   [bc], a                                     ; $796d: $02
	dec  h                                           ; $796e: $25
	sub  d                                           ; $796f: $92
	cp   b                                           ; $7970: $b8
	jp   hl                                          ; $7971: $e9


	and  a                                           ; $7972: $a7
	and  b                                           ; $7973: $a0
	ld   e, b                                        ; $7974: $58
	ld   [bc], a                                     ; $7975: $02
	add  c                                           ; $7976: $81
	inc  bc                                          ; $7977: $03
	sbc  b                                           ; $7978: $98
	ld   a, c                                        ; $7979: $79
	dec  c                                           ; $797a: $0d
	adc  l                                           ; $797b: $8d
	ld   [hl], h                                     ; $797c: $74
	ld   d, d                                        ; $797d: $52
	ld   l, l                                        ; $797e: $6d
	ld   l, [hl]                                     ; $797f: $6e
	ld   d, d                                        ; $7980: $52
	ld   [hl], h                                     ; $7981: $74
	adc  h                                           ; $7982: $8c
	ld   h, a                                        ; $7983: $67
	ld   e, a                                        ; $7984: $5f
	ld   [hl], a                                     ; $7985: $77
	ld   a, e                                        ; $7986: $7b
	sbc  a                                           ; $7987: $9f
	dec  c                                           ; $7988: $0d
	nop                                              ; $7989: $00
	ld   a, [bc]                                     ; $798a: $0a
	inc  e                                           ; $798b: $1c
	ld   bc, $0202                                   ; $798c: $01 $02 $02
	ld   bc, $5252                                   ; $798f: $01 $52 $52
	ld   [hl], l                                     ; $7992: $75
	ld   h, a                                        ; $7993: $67
	ld   e, c                                        ; $7994: $59
	sbc  [hl]                                        ; $7995: $9e
	dec  c                                           ; $7996: $0d
	inc  b                                           ; $7997: $04
	ld   e, a                                        ; $7998: $5f
	inc  b                                           ; $7999: $04
	pop  bc                                          ; $799a: $c1
	inc  b                                           ; $799b: $04
	sub  l                                           ; $799c: $95
	inc  b                                           ; $799d: $04
	ld   a, [bc]                                     ; $799e: $0a
	ld   a, b                                        ; $799f: $78
	ld   a, h                                        ; $79a0: $7c
	ld   [hl], l                                     ; $79a1: $75
	sbc  [hl]                                        ; $79a2: $9e
	ld   h, c                                        ; $79a3: $61
	ld   a, h                                        ; $79a4: $7c
	ld   h, c                                        ; $79a5: $61
	halt                                             ; $79a6: $76
	ld   a, l                                        ; $79a7: $7d
	dec  c                                           ; $79a8: $0d
	inc  bc                                          ; $79a9: $03
	xor  c                                           ; $79aa: $a9
	ld   a, c                                        ; $79ab: $79
	sub  b                                           ; $79ac: $90
	dec  b                                           ; $79ad: $05
	jr   nz, jr_044_7a15                             ; $79ae: $20 $65

	ld   l, a                                        ; $79b0: $6f
	sub  c                                           ; $79b1: $91
	pop  bc                                          ; $79b2: $c1
	db   $e3                                         ; $79b3: $e3
	ld   [hl], l                                     ; $79b4: $75
	ld   h, a                                        ; $79b5: $67
	sub  [hl]                                        ; $79b6: $96
	sbc  a                                           ; $79b7: $9f
	dec  c                                           ; $79b8: $0d
	nop                                              ; $79b9: $00
	ld   a, [bc]                                     ; $79ba: $0a
	inc  e                                           ; $79bb: $1c
	ld   bc, $0000                                   ; $79bc: $01 $00 $00
	ld   bc, $9166                                   ; $79bf: $01 $66 $91
	sbc  [hl]                                        ; $79c2: $9e
	ld   [bc], a                                     ; $79c3: $02
	and  l                                           ; $79c4: $a5
	inc  b                                           ; $79c5: $04
	xor  d                                           ; $79c6: $aa
	sub  b                                           ; $79c7: $90
	ld   [bc], a                                     ; $79c8: $02
	jr   nz, jr_044_79cf                             ; $79c9: $20 $04

	xor  d                                           ; $79cb: $aa

jr_044_79cc:
	dec  c                                           ; $79cc: $0d
	ld   e, d                                        ; $79cd: $5a
	and  c                                           ; $79ce: $a1

jr_044_79cf:
	ld   a, [hl]                                     ; $79cf: $7e
	ld   [hl], c                                     ; $79d0: $71
	ld   [hl], h                                     ; $79d1: $74
	ld   d, d                                        ; $79d2: $52
	ld   e, e                                        ; $79d3: $5b
	adc  h                                           ; $79d4: $8c
	ld   h, l                                        ; $79d5: $65
	sub  l                                           ; $79d6: $95
	ld   d, h                                        ; $79d7: $54
	sbc  a                                           ; $79d8: $9f
	dec  c                                           ; $79d9: $0d
	nop                                              ; $79da: $00
	ld   a, [bc]                                     ; $79db: $0a
	dec  c                                           ; $79dc: $0d
	nop                                              ; $79dd: $00
	nop                                              ; $79de: $00
	rrca                                             ; $79df: $0f
	nop                                              ; $79e0: $00
	ld   bc, $1e09                                   ; $79e1: $01 $09 $1e
	nop                                              ; $79e4: $00
	rrca                                             ; $79e5: $0f
	nop                                              ; $79e6: $00
	ld   bc, $6701                                   ; $79e7: $01 $01 $67
	ld   d, d                                        ; $79ea: $52
	adc  h                                           ; $79eb: $8c
	ld   l, c                                        ; $79ec: $69
	and  c                                           ; $79ed: $a1
	rst  $38                                         ; $79ee: $ff
	rst  $38                                         ; $79ef: $ff
	dec  c                                           ; $79f0: $0d
	ret                                              ; $79f1: $c9


	and  l                                           ; $79f2: $a5
	xor  $7d                                         ; $79f3: $ee $7d
	ld   [hl], a                                     ; $79f5: $77
	ld   h, c                                        ; $79f6: $61
	ld   [hl], l                                     ; $79f7: $75
	ld   h, a                                        ; $79f8: $67
	ld   e, c                                        ; $79f9: $59
	ld   sp, hl                                      ; $79fa: $f9
	dec  c                                           ; $79fb: $0d
	nop                                              ; $79fc: $00
	ld   a, [bc]                                     ; $79fd: $0a
	inc  e                                           ; $79fe: $1c
	ld   bc, $0303                                   ; $79ff: $01 $03 $03
	ld   bc, $fa56                                   ; $7a02: $01 $56 $fa
	ld   sp, hl                                      ; $7a05: $f9
	dec  c                                           ; $7a06: $0d
	ld   h, [hl]                                     ; $7a07: $66
	sub  c                                           ; $7a08: $91
	sbc  [hl]                                        ; $7a09: $9e
	ld   h, [hl]                                     ; $7a0a: $66
	sub  c                                           ; $7a0b: $91
	ld   d, b                                        ; $7a0c: $50
	rst  $38                                         ; $7a0d: $ff
	rst  $38                                         ; $7a0e: $ff
	ld   d, d                                        ; $7a0f: $52
	adc  h                                           ; $7a10: $8c
	adc  h                                           ; $7a11: $8c
	ld   [hl], l                                     ; $7a12: $75
	dec  c                                           ; $7a13: $0d
	ld   [hl], a                                     ; $7a14: $77

jr_044_7a15:
	ld   d, h                                        ; $7a15: $54
	ld   h, l                                        ; $7a16: $65
	ld   [hl], h                                     ; $7a17: $74
	ld   d, d                                        ; $7a18: $52
	ld   l, l                                        ; $7a19: $6d
	and  c                                           ; $7a1a: $a1
	ld   [hl], l                                     ; $7a1b: $75
	ld   h, a                                        ; $7a1c: $67
	ld   e, c                                        ; $7a1d: $59
	ld   a, [$000d]                                  ; $7a1e: $fa $0d $00
	ld   a, [bc]                                     ; $7a21: $0a
	rrca                                             ; $7a22: $0f
	nop                                              ; $7a23: $00
	ld   bc, $5201                                   ; $7a24: $01 $01 $52
	sub  d                                           ; $7a27: $92
	rst  $38                                         ; $7a28: $ff
	rst  $38                                         ; $7a29: $ff
	ld   l, e                                        ; $7a2a: $6b
	ld   a, h                                        ; $7a2b: $7c
	rst  $38                                         ; $7a2c: $ff
	rst  $38                                         ; $7a2d: $ff
	dec  c                                           ; $7a2e: $0d
	ld   [bc], a                                     ; $7a2f: $02
	sub  l                                           ; $7a30: $95
	inc  bc                                          ; $7a31: $03
	jr   jr_044_79cc                                 ; $7a32: $18 $98

	inc  bc                                          ; $7a34: $03
	rst  $10                                         ; $7a35: $d7
	ld   a, c                                        ; $7a36: $79
	ld   [bc], a                                     ; $7a37: $02
	sub  l                                           ; $7a38: $95
	ld   d, b                                        ; $7a39: $50
	ld   l, l                                        ; $7a3a: $6d
	sub  a                                           ; $7a3b: $97
	ld   a, b                                        ; $7a3c: $78
	ld   d, d                                        ; $7a3d: $52
	dec  c                                           ; $7a3e: $0d
	sub  b                                           ; $7a3f: $90
	ld   a, h                                        ; $7a40: $7c
	ld   [hl], l                                     ; $7a41: $75
	rst  $38                                         ; $7a42: $ff
	rst  $38                                         ; $7a43: $ff
	dec  c                                           ; $7a44: $0d
	nop                                              ; $7a45: $00
	ld   a, [bc]                                     ; $7a46: $0a
	inc  e                                           ; $7a47: $1c
	ld   bc, $0606                                   ; $7a48: $01 $06 $06
	dec  e                                           ; $7a4b: $1d
	ld   b, b                                        ; $7a4c: $40
	ld   de, $1103                                   ; $7a4d: $11 $03 $11
	ld   bc, $2901                                   ; $7a50: $01 $01 $29
	nop                                              ; $7a53: $00
	ld   bc, $a505                                   ; $7a54: $01 $05 $a5
	ld   [bc], a                                     ; $7a57: $02
	ld   e, h                                        ; $7a58: $5c
	ld   a, c                                        ; $7a59: $79
	ld   l, a                                        ; $7a5a: $6f
	sub  c                                           ; $7a5b: $91
	and  c                                           ; $7a5c: $a1
	halt                                             ; $7a5d: $76
	ld   d, b                                        ; $7a5e: $50
	sbc  b                                           ; $7a5f: $98
	adc  h                                           ; $7a60: $8c
	ld   h, a                                        ; $7a61: $67
	ld   e, c                                        ; $7a62: $59
	sub  a                                           ; $7a63: $97
	dec  c                                           ; $7a64: $0d
	ld   h, c                                        ; $7a65: $61
	sbc  d                                           ; $7a66: $9a
	ld   e, c                                        ; $7a67: $59
	sub  a                                           ; $7a68: $97
	ld   a, l                                        ; $7a69: $7d
	inc  bc                                          ; $7a6a: $03
	xor  [hl]                                        ; $7a6b: $ae
	ld   [hl], c                                     ; $7a6c: $71
	ld   [hl], h                                     ; $7a6d: $74
	ld   [bc], a                                     ; $7a6e: $02
	inc  [hl]                                        ; $7a6f: $34
	ld   h, e                                        ; $7a70: $63
	ld   d, d                                        ; $7a71: $52
	ld   a, e                                        ; $7a72: $7b
	ld   a, [$000d]                                  ; $7a73: $fa $0d $00
	ld   a, [bc]                                     ; $7a76: $0a
	dec  c                                           ; $7a77: $0d
	nop                                              ; $7a78: $00
	nop                                              ; $7a79: $00
	rrca                                             ; $7a7a: $0f
	nop                                              ; $7a7b: $00
	ld   bc, $1e09                                   ; $7a7c: $01 $09 $1e
	nop                                              ; $7a7f: $00
	rrca                                             ; $7a80: $0f
	nop                                              ; $7a81: $00
	ld   bc, $6301                                   ; $7a82: $01 $01 $63
	ld   e, l                                        ; $7a85: $5d
	sub  a                                           ; $7a86: $97
	ld   h, e                                        ; $7a87: $63
	and  c                                           ; $7a88: $a1
	ld   a, h                                        ; $7a89: $7c
	ld   [bc], a                                     ; $7a8a: $02
	jp   $0da0                                       ; $7a8b: $c3 $a0 $0d


	inc  bc                                          ; $7a8e: $03
	ld   l, h                                        ; $7a8f: $6c
	ld   h, l                                        ; $7a90: $65
	ld   [bc], a                                     ; $7a91: $02
	jp   nz, Jump_044_6959                           ; $7a92: $c2 $59 $69

	ld   [hl], h                                     ; $7a95: $74
	sub  b                                           ; $7a96: $90
	sub  a                                           ; $7a97: $97
	ld   [hl], c                                     ; $7a98: $71
	ld   [hl], h                                     ; $7a99: $74
	sub  b                                           ; $7a9a: $90
	dec  c                                           ; $7a9b: $0d
	ld   d, d                                        ; $7a9c: $52
	ld   d, d                                        ; $7a9d: $52
	ld   [hl], l                                     ; $7a9e: $75
	ld   h, a                                        ; $7a9f: $67
	ld   e, c                                        ; $7aa0: $59
	ld   sp, hl                                      ; $7aa1: $f9
	dec  c                                           ; $7aa2: $0d
	nop                                              ; $7aa3: $00
	ld   a, [bc]                                     ; $7aa4: $0a
	inc  e                                           ; $7aa5: $1c
	ld   bc, $0303                                   ; $7aa6: $01 $03 $03
	ld   bc, $6d50                                   ; $7aa9: $01 $50 $6d
	ld   h, l                                        ; $7aac: $65
	ld   a, h                                        ; $7aad: $7c
	ld   [bc], a                                     ; $7aae: $02
	jp   Jump_044_6775                               ; $7aaf: $c3 $75 $67


	ld   e, c                                        ; $7ab2: $59
	ld   sp, hl                                      ; $7ab3: $f9
	dec  c                                           ; $7ab4: $0d
	ld   d, [hl]                                     ; $7ab5: $56
	ei                                               ; $7ab6: $fb
	halt                                             ; $7ab7: $76
	rst  $38                                         ; $7ab8: $ff
	rst  $38                                         ; $7ab9: $ff
	dec  c                                           ; $7aba: $0d
	nop                                              ; $7abb: $00
	ld   a, [bc]                                     ; $7abc: $0a
	inc  e                                           ; $7abd: $1c
	ld   bc, $0000                                   ; $7abe: $01 $00 $00
	ld   bc, $a502                                   ; $7ac1: $01 $02 $a5
	inc  b                                           ; $7ac4: $04
	ld   d, b                                        ; $7ac5: $50
	ld   a, h                                        ; $7ac6: $7c
	inc  bc                                          ; $7ac7: $03
	ld   [hl], d                                     ; $7ac8: $72
	ld   a, c                                        ; $7ac9: $79
	inc  bc                                          ; $7aca: $03
	ld   a, a                                        ; $7acb: $7f
	inc  b                                           ; $7acc: $04
	inc  c                                           ; $7acd: $0c
	ld   e, c                                        ; $7ace: $59
	sub  a                                           ; $7acf: $97
	inc  bc                                          ; $7ad0: $03
	add  b                                           ; $7ad1: $80
	ld   [hl], h                                     ; $7ad2: $74
	ld   e, e                                        ; $7ad3: $5b
	ld   [hl], h                                     ; $7ad4: $74
	dec  c                                           ; $7ad5: $0d
	rst  $38                                         ; $7ad6: $ff
	rst  $38                                         ; $7ad7: $ff
	ld   l, e                                        ; $7ad8: $6b
	ld   d, h                                        ; $7ad9: $54
	ld   d, d                                        ; $7ada: $52
	ld   [hl], c                                     ; $7adb: $71
	ld   l, l                                        ; $7adc: $6d
	ld   [bc], a                                     ; $7add: $02
	ld   b, $04                                      ; $7ade: $06 $04
	jp   nc, Jump_044_7d75                           ; $7ae0: $d2 $75 $7d

	dec  c                                           ; $7ae3: $0d
	ld   d, b                                        ; $7ae4: $50
	ld   l, l                                        ; $7ae5: $6d
	ld   h, l                                        ; $7ae6: $65
	sub  b                                           ; $7ae7: $90
	adc  h                                           ; $7ae8: $8c
	ld   l, [hl]                                     ; $7ae9: $6e
	adc  h                                           ; $7aea: $8c
	ld   l, [hl]                                     ; $7aeb: $6e
	inc  bc                                          ; $7aec: $03
	add  c                                           ; $7aed: $81
	inc  bc                                          ; $7aee: $03
	add  d                                           ; $7aef: $82
	ld   [hl], l                                     ; $7af0: $75
	ld   h, a                                        ; $7af1: $67
	sub  [hl]                                        ; $7af2: $96
	sbc  a                                           ; $7af3: $9f
	dec  c                                           ; $7af4: $0d
	nop                                              ; $7af5: $00
	ld   a, [bc]                                     ; $7af6: $0a
	inc  e                                           ; $7af7: $1c
	ld   bc, $0101                                   ; $7af8: $01 $01 $01
	ld   bc, $8103                                   ; $7afb: $01 $03 $81
	inc  bc                                          ; $7afe: $03
	add  d                                           ; $7aff: $82
	inc  b                                           ; $7b00: $04
	dec  e                                           ; $7b01: $1d
	dec  b                                           ; $7b02: $05
	rst  $20                                         ; $7b03: $e7
	sbc  [hl]                                        ; $7b04: $9e
	dec  c                                           ; $7b05: $0d
	ld   e, b                                        ; $7b06: $58
	ld   l, l                                        ; $7b07: $6d
	ld   e, d                                        ; $7b08: $5a
	ld   d, d                                        ; $7b09: $52
	ld   e, d                                        ; $7b0a: $5a
	and  c                                           ; $7b0b: $a1
	ld   a, [hl]                                     ; $7b0c: $7e
	sbc  b                                           ; $7b0d: $98
	adc  h                                           ; $7b0e: $8c
	ld   h, l                                        ; $7b0f: $65
	sub  l                                           ; $7b10: $95
	ld   d, h                                        ; $7b11: $54
	sbc  a                                           ; $7b12: $9f
	dec  c                                           ; $7b13: $0d
	nop                                              ; $7b14: $00
	ld   a, [bc]                                     ; $7b15: $0a
	dec  c                                           ; $7b16: $0d
	nop                                              ; $7b17: $00
	nop                                              ; $7b18: $00
	rrca                                             ; $7b19: $0f
	nop                                              ; $7b1a: $00
	ld   bc, $1e09                                   ; $7b1b: $01 $09 $1e
	nop                                              ; $7b1e: $00
	inc  e                                           ; $7b1f: $1c
	ld   bc, $0000                                   ; $7b20: $01 $00 $00
	ld   bc, $5477                                   ; $7b23: $01 $77 $54
	ld   e, c                                        ; $7b26: $59
	ld   h, l                                        ; $7b27: $65
	adc  h                                           ; $7b28: $8c
	ld   h, l                                        ; $7b29: $65
	ld   l, l                                        ; $7b2a: $6d
	ld   e, c                                        ; $7b2b: $59
	ld   sp, hl                                      ; $7b2c: $f9
	dec  c                                           ; $7b2d: $0d
	nop                                              ; $7b2e: $00
	ld   a, [bc]                                     ; $7b2f: $0a
	rrca                                             ; $7b30: $0f
	nop                                              ; $7b31: $00
	ld   bc, $5201                                   ; $7b32: $01 $01 $52
	sbc  [hl]                                        ; $7b35: $9e
	ld   d, d                                        ; $7b36: $52
	ld   d, [hl]                                     ; $7b37: $56
	rst  $38                                         ; $7b38: $ff
	rst  $38                                         ; $7b39: $ff
	dec  c                                           ; $7b3a: $0d
	nop                                              ; $7b3b: $00
	ld   a, [bc]                                     ; $7b3c: $0a
	inc  e                                           ; $7b3d: $1c
	ld   bc, $0000                                   ; $7b3e: $01 $00 $00
	ld   bc, $546b                                   ; $7b41: $01 $6b $54
	ld   [hl], l                                     ; $7b44: $75
	ld   h, a                                        ; $7b45: $67
	ld   e, c                                        ; $7b46: $59
	sbc  a                                           ; $7b47: $9f
	dec  c                                           ; $7b48: $0d
	ld   h, [hl]                                     ; $7b49: $66
	sub  c                                           ; $7b4a: $91
	sbc  [hl]                                        ; $7b4b: $9e
	ld   d, b                                        ; $7b4c: $50
	ld   l, l                                        ; $7b4d: $6d
	ld   h, l                                        ; $7b4e: $65
	ld   [bc], a                                     ; $7b4f: $02
	ld   a, a                                        ; $7b50: $7f
	ld   e, e                                        ; $7b51: $5b
	adc  h                                           ; $7b52: $8c
	ld   h, a                                        ; $7b53: $67
	ld   a, e                                        ; $7b54: $7b
	sbc  a                                           ; $7b55: $9f
	dec  c                                           ; $7b56: $0d
	nop                                              ; $7b57: $00
	ld   a, [bc]                                     ; $7b58: $0a
	dec  c                                           ; $7b59: $0d
	nop                                              ; $7b5a: $00
	nop                                              ; $7b5b: $00
	rrca                                             ; $7b5c: $0f
	nop                                              ; $7b5d: $00
	ld   bc, $1e09                                   ; $7b5e: $01 $09 $1e
	nop                                              ; $7b61: $00
	nop                                              ; $7b62: $00
	ld   [bc], a                                     ; $7b63: $02
	nop                                              ; $7b64: $00
	ld   bc, $2c07                                   ; $7b65: $01 $07 $2c
	ld   bc, $2002                                   ; $7b68: $01 $02 $20
	ld   [bc], a                                     ; $7b6b: $02
	nop                                              ; $7b6c: $00
	inc  bc                                          ; $7b6d: $03
	ld   d, [hl]                                     ; $7b6e: $56
	dec  h                                           ; $7b6f: $25
	inc  e                                           ; $7b70: $1c
	nop                                              ; $7b71: $00
	inc  e                                           ; $7b72: $1c
	inc  c                                           ; $7b73: $0c
	nop                                              ; $7b74: $00
	nop                                              ; $7b75: $00
	ld   [bc], a                                     ; $7b76: $02
	dec  b                                           ; $7b77: $05
	ld   b, b                                        ; $7b78: $40
	ld   d, [hl]                                     ; $7b79: $56
	ld   [bc], a                                     ; $7b7a: $02
	nop                                              ; $7b7b: $00
	ld   bc, $2b07                                   ; $7b7c: $01 $07 $2b
	ld   bc, $2801                                   ; $7b7f: $01 $01 $28
	ld   bc, $2a07                                   ; $7b82: $01 $07 $2a
	nop                                              ; $7b85: $00
	ld   bc, $9e50                                   ; $7b86: $01 $50 $9e
	ld   [$6300], sp                                 ; $7b89: $08 $00 $63
	and  c                                           ; $7b8c: $a1
	dec  c                                           ; $7b8d: $0d
	ld   e, b                                        ; $7b8e: $58
	ld   a, l                                        ; $7b8f: $7d
	sub  [hl]                                        ; $7b90: $96
	ld   d, h                                        ; $7b91: $54
	ld   h, d                                        ; $7b92: $62
	ld   h, h                                        ; $7b93: $64
	ld   d, d                                        ; $7b94: $52
	adc  h                                           ; $7b95: $8c
	ld   h, a                                        ; $7b96: $67
	sbc  a                                           ; $7b97: $9f
	dec  c                                           ; $7b98: $0d
	nop                                              ; $7b99: $00
	ld   a, [bc]                                     ; $7b9a: $0a
	rrca                                             ; $7b9b: $0f
	nop                                              ; $7b9c: $00
	ld   bc, $5801                                   ; $7b9d: $01 $01 $58
	ld   a, l                                        ; $7ba0: $7d
	sub  [hl]                                        ; $7ba1: $96
	ld   d, h                                        ; $7ba2: $54
	ld   h, d                                        ; $7ba3: $62
	ld   h, h                                        ; $7ba4: $64
	ld   d, d                                        ; $7ba5: $52
	adc  h                                           ; $7ba6: $8c
	ld   h, a                                        ; $7ba7: $67
	sbc  [hl]                                        ; $7ba8: $9e
	dec  c                                           ; $7ba9: $0d
	ld   e, c                                        ; $7baa: $59
	ld   h, a                                        ; $7bab: $67
	adc  l                                           ; $7bac: $8d
	ld   h, e                                        ; $7bad: $63
	and  c                                           ; $7bae: $a1
	sbc  a                                           ; $7baf: $9f
	dec  c                                           ; $7bb0: $0d
	nop                                              ; $7bb1: $00
	ld   a, [bc]                                     ; $7bb2: $0a
	ld   bc, $0301                                   ; $7bb3: $01 $01 $03
	ld   a, b                                        ; $7bb6: $78
	ld   a, c                                        ; $7bb7: $79
	and  b                                           ; $7bb8: $a0
	ld   [bc], a                                     ; $7bb9: $02
	jp   nz, Jump_044_5461                           ; $7bba: $c2 $61 $54

	ld   e, c                                        ; $7bbd: $59
	ld   a, b                                        ; $7bbe: $78
	rst  $38                                         ; $7bbf: $ff
	rst  $38                                         ; $7bc0: $ff
	ld   bc, $0d04                                   ; $7bc1: $01 $04 $0d
	nop                                              ; $7bc4: $00
	ld   a, [bc]                                     ; $7bc5: $0a
	jr   jr_044_7bcb                                 ; $7bc6: $18 $03

	ld   bc, $5d63                                   ; $7bc8: $01 $63 $5d

jr_044_7bcb:
	sub  a                                           ; $7bcb: $97
	ld   a, h                                        ; $7bcc: $7c
	ld   h, c                                        ; $7bcd: $61
	halt                                             ; $7bce: $76
	and  b                                           ; $7bcf: $a0
	ld   [bc], a                                     ; $7bd0: $02
	jp   nz, $005d                                   ; $7bd1: $c2 $5d $00

	nop                                              ; $7bd4: $00
	ld   h, a                                        ; $7bd5: $67
	adc  l                                           ; $7bd6: $8d
	sbc  d                                           ; $7bd7: $9a
	ld   a, h                                        ; $7bd8: $7c
	ld   h, c                                        ; $7bd9: $61
	halt                                             ; $7bda: $76
	and  b                                           ; $7bdb: $a0
	ld   [bc], a                                     ; $7bdc: $02
	jp   nz, $005d                                   ; $7bdd: $c2 $5d $00

	ld   bc, $1e04                                   ; $7be0: $01 $04 $1e
	ld   a, h                                        ; $7be3: $7c
	inc  bc                                          ; $7be4: $03
	add  d                                           ; $7be5: $82
	ld   a, h                                        ; $7be6: $7c
	ld   [bc], a                                     ; $7be7: $02
	jp   $02a0                                       ; $7be8: $c3 $a0 $02


	jp   nz, $005d                                   ; $7beb: $c2 $5d $00

	ld   [bc], a                                     ; $7bee: $02
	rlca                                             ; $7bef: $07
	sbc  b                                           ; $7bf0: $98
	nop                                              ; $7bf1: $00
	ld   [bc], a                                     ; $7bf2: $02
	ld   [bc], a                                     ; $7bf3: $02
	ld   bc, $2000                                   ; $7bf4: $01 $00 $20
	nop                                              ; $7bf7: $00
	rlca                                             ; $7bf8: $07
	ld   de, $0201                                   ; $7bf9: $11 $01 $02
	ld   [bc], a                                     ; $7bfc: $02
	ld   bc, $2001                                   ; $7bfd: $01 $01 $20
	nop                                              ; $7c00: $00
	rlca                                             ; $7c01: $07
	adc  e                                           ; $7c02: $8b
	ld   bc, $0202                                   ; $7c03: $01 $02 $02
	ld   bc, $2002                                   ; $7c06: $01 $02 $20
	nop                                              ; $7c09: $00
	rrca                                             ; $7c0a: $0f
	nop                                              ; $7c0b: $00
	ld   bc, $5001                                   ; $7c0c: $01 $01 $50
	ld   a, h                                        ; $7c0f: $7c
	rst  $38                                         ; $7c10: $ff
	ld   h, e                                        ; $7c11: $63
	ld   e, l                                        ; $7c12: $5d
	sub  a                                           ; $7c13: $97
	ld   h, e                                        ; $7c14: $63
	and  c                                           ; $7c15: $a1
	ld   a, h                                        ; $7c16: $7c
	ld   [bc], a                                     ; $7c17: $02
	jp   Jump_044_7279                               ; $7c18: $c3 $79 $72


	ld   d, d                                        ; $7c1b: $52
	ld   [hl], h                                     ; $7c1c: $74
	dec  c                                           ; $7c1d: $0d
	ld   e, b                                        ; $7c1e: $58
	ld   [bc], a                                     ; $7c1f: $02
	jp   nz, Jump_044_655b                           ; $7c20: $c2 $5b $65

	ld   l, l                                        ; $7c23: $6d
	ld   d, d                                        ; $7c24: $52
	and  c                                           ; $7c25: $a1
	ld   [hl], l                                     ; $7c26: $75
	ld   h, a                                        ; $7c27: $67
	ld   e, a                                        ; $7c28: $5f
	ld   [hl], a                                     ; $7c29: $77
	rst  $38                                         ; $7c2a: $ff
	rst  $38                                         ; $7c2b: $ff
	sbc  a                                           ; $7c2c: $9f
	dec  c                                           ; $7c2d: $0d
	nop                                              ; $7c2e: $00
	ld   a, [bc]                                     ; $7c2f: $0a
	inc  e                                           ; $7c30: $1c
	inc  c                                           ; $7c31: $0c
	nop                                              ; $7c32: $00
	nop                                              ; $7c33: $00
	ld   bc, $5d63                                   ; $7c34: $01 $63 $5d
	sub  a                                           ; $7c37: $97
	ld   h, e                                        ; $7c38: $63
	and  c                                           ; $7c39: $a1
	ld   a, b                                        ; $7c3a: $78
	sub  a                                           ; $7c3b: $97
	sbc  [hl]                                        ; $7c3c: $9e
	dec  c                                           ; $7c3d: $0d
	call c, $edfb                                    ; $7c3e: $dc $fb $ed
	sub  d                                           ; $7c41: $92
	rst  ToBoot                                         ; $7c42: $c7
	db   $eb                                         ; $7c43: $eb
	cp   d                                           ; $7c44: $ba
	ld   a, c                                        ; $7c45: $79
	dec  c                                           ; $7c46: $0d
	sub  [hl]                                        ; $7c47: $96
	ld   e, l                                        ; $7c48: $5d
	ld   d, d                                        ; $7c49: $52
	adc  h                                           ; $7c4a: $8c
	ld   h, a                                        ; $7c4b: $67
	sub  [hl]                                        ; $7c4c: $96
	sbc  a                                           ; $7c4d: $9f
	dec  c                                           ; $7c4e: $0d
	nop                                              ; $7c4f: $00
	ld   a, [bc]                                     ; $7c50: $0a
	ld   a, [hl+]                                    ; $7c51: $2a
	ld   bc, $0c1c                                   ; $7c52: $01 $1c $0c
	ld   bc, $0101                                   ; $7c55: $01 $01 $01
	ld   l, e                                        ; $7c58: $6b
	sbc  d                                           ; $7c59: $9a
	ld   [hl], l                                     ; $7c5a: $75
	ld   a, l                                        ; $7c5b: $7d
	sbc  [hl]                                        ; $7c5c: $9e
	sbc  l                                           ; $7c5d: $9d
	ld   l, l                                        ; $7c5e: $6d
	ld   h, l                                        ; $7c5f: $65
	ld   a, l                                        ; $7c60: $7d
	dec  c                                           ; $7c61: $0d
	inc  bc                                          ; $7c62: $03
	dec  c                                           ; $7c63: $0d
	ld   [bc], a                                     ; $7c64: $02
	jp   Jump_044_505a                               ; $7c65: $c3 $5a $50


	sbc  b                                           ; $7c68: $98
	adc  h                                           ; $7c69: $8c
	ld   h, a                                        ; $7c6a: $67
	ld   a, h                                        ; $7c6b: $7c
	ld   [hl], l                                     ; $7c6c: $75
	sbc  [hl]                                        ; $7c6d: $9e
	dec  c                                           ; $7c6e: $0d
	inc  bc                                          ; $7c6f: $03
	add  e                                           ; $7c70: $83
	dec  b                                           ; $7c71: $05
	dec  c                                           ; $7c72: $0d
	ld   h, l                                        ; $7c73: $65
	adc  h                                           ; $7c74: $8c
	ld   h, a                                        ; $7c75: $67
	sbc  a                                           ; $7c76: $9f
	dec  c                                           ; $7c77: $0d

Jump_044_7c78:
	nop                                              ; $7c78: $00
	ld   a, [bc]                                     ; $7c79: $0a
	dec  c                                           ; $7c7a: $0d
	nop                                              ; $7c7b: $00
	nop                                              ; $7c7c: $00
	rrca                                             ; $7c7d: $0f
	nop                                              ; $7c7e: $00
	ld   bc, $1e09                                   ; $7c7f: $01 $09 $1e
	nop                                              ; $7c82: $00
	rrca                                             ; $7c83: $0f
	nop                                              ; $7c84: $00
	ld   bc, $5001                                   ; $7c85: $01 $01 $50
	ld   a, h                                        ; $7c88: $7c
	rst  $38                                         ; $7c89: $ff
	ld   h, a                                        ; $7c8a: $67
	adc  l                                           ; $7c8b: $8d
	sbc  d                                           ; $7c8c: $9a
	ld   h, e                                        ; $7c8d: $63
	and  c                                           ; $7c8e: $a1
	ld   a, h                                        ; $7c8f: $7c
	ld   [bc], a                                     ; $7c90: $02
	jp   Jump_044_7279                               ; $7c91: $c3 $79 $72


	ld   d, d                                        ; $7c94: $52
	ld   [hl], h                                     ; $7c95: $74
	dec  c                                           ; $7c96: $0d
	ld   e, b                                        ; $7c97: $58
	ld   [bc], a                                     ; $7c98: $02
	jp   nz, Jump_044_655b                           ; $7c99: $c2 $5b $65

	ld   l, l                                        ; $7c9c: $6d
	ld   d, d                                        ; $7c9d: $52
	and  c                                           ; $7c9e: $a1
	ld   [hl], l                                     ; $7c9f: $75
	ld   h, a                                        ; $7ca0: $67
	ld   e, a                                        ; $7ca1: $5f
	ld   [hl], a                                     ; $7ca2: $77
	rst  $38                                         ; $7ca3: $ff
	rst  $38                                         ; $7ca4: $ff
	sbc  a                                           ; $7ca5: $9f
	dec  c                                           ; $7ca6: $0d
	nop                                              ; $7ca7: $00
	ld   a, [bc]                                     ; $7ca8: $0a
	inc  e                                           ; $7ca9: $1c
	inc  c                                           ; $7caa: $0c
	nop                                              ; $7cab: $00
	nop                                              ; $7cac: $00
	ld   bc, $8d67                                   ; $7cad: $01 $67 $8d
	sbc  d                                           ; $7cb0: $9a
	ld   h, e                                        ; $7cb1: $63
	and  c                                           ; $7cb2: $a1
	ld   a, b                                        ; $7cb3: $78
	sub  a                                           ; $7cb4: $97
	sbc  [hl]                                        ; $7cb5: $9e
	dec  c                                           ; $7cb6: $0d
	or   [hl]                                        ; $7cb7: $b6
	rst  $28                                         ; $7cb8: $ef
	push af                                          ; $7cb9: $f5
	sub  d                                           ; $7cba: $92
	inc  b                                           ; $7cbb: $04
	dec  bc                                          ; $7cbc: $0b
	inc  b                                           ; $7cbd: $04
	rra                                              ; $7cbe: $1f
	ld   a, c                                        ; $7cbf: $79
	dec  c                                           ; $7cc0: $0d
	sub  [hl]                                        ; $7cc1: $96
	ld   e, l                                        ; $7cc2: $5d
	ld   d, d                                        ; $7cc3: $52
	adc  h                                           ; $7cc4: $8c
	ld   h, a                                        ; $7cc5: $67
	sub  [hl]                                        ; $7cc6: $96
	sbc  a                                           ; $7cc7: $9f
	dec  c                                           ; $7cc8: $0d
	nop                                              ; $7cc9: $00
	ld   a, [bc]                                     ; $7cca: $0a
	ld   a, [hl+]                                    ; $7ccb: $2a
	ld   [bc], a                                     ; $7ccc: $02
	inc  e                                           ; $7ccd: $1c
	inc  c                                           ; $7cce: $0c
	ld   bc, $0101                                   ; $7ccf: $01 $01 $01
	ld   l, e                                        ; $7cd2: $6b
	sbc  d                                           ; $7cd3: $9a
	ld   [hl], l                                     ; $7cd4: $75
	ld   a, l                                        ; $7cd5: $7d
	sbc  [hl]                                        ; $7cd6: $9e
	sbc  l                                           ; $7cd7: $9d
	ld   l, l                                        ; $7cd8: $6d
	ld   h, l                                        ; $7cd9: $65
	ld   a, l                                        ; $7cda: $7d
	dec  c                                           ; $7cdb: $0d
	inc  bc                                          ; $7cdc: $03
	dec  c                                           ; $7cdd: $0d
	ld   [bc], a                                     ; $7cde: $02
	jp   Jump_044_505a                               ; $7cdf: $c3 $5a $50


	sbc  b                                           ; $7ce2: $98
	adc  h                                           ; $7ce3: $8c
	ld   h, a                                        ; $7ce4: $67
	ld   a, h                                        ; $7ce5: $7c
	ld   [hl], l                                     ; $7ce6: $75
	sbc  [hl]                                        ; $7ce7: $9e
	dec  c                                           ; $7ce8: $0d
	inc  bc                                          ; $7ce9: $03
	add  e                                           ; $7cea: $83
	dec  b                                           ; $7ceb: $05
	dec  c                                           ; $7cec: $0d
	ld   h, l                                        ; $7ced: $65
	adc  h                                           ; $7cee: $8c
	ld   h, a                                        ; $7cef: $67
	sbc  a                                           ; $7cf0: $9f
	dec  c                                           ; $7cf1: $0d
	nop                                              ; $7cf2: $00
	ld   a, [bc]                                     ; $7cf3: $0a
	dec  c                                           ; $7cf4: $0d
	nop                                              ; $7cf5: $00
	nop                                              ; $7cf6: $00
	rrca                                             ; $7cf7: $0f
	nop                                              ; $7cf8: $00
	ld   bc, $1e09                                   ; $7cf9: $01 $09 $1e
	nop                                              ; $7cfc: $00
	jr   jr_044_7d02                                 ; $7cfd: $18 $03

	ld   bc, $ecdf                                   ; $7cff: $01 $df $ec

jr_044_7d02:
	and  e                                           ; $7d02: $a3
	ld   a, h                                        ; $7d03: $7c
	ld   h, c                                        ; $7d04: $61
	halt                                             ; $7d05: $76
	and  b                                           ; $7d06: $a0
	ld   [bc], a                                     ; $7d07: $02
	jp   nz, $005d                                   ; $7d08: $c2 $5d $00

	nop                                              ; $7d0b: $00
	xor  h                                           ; $7d0c: $ac
	push af                                          ; $7d0d: $f5
	bit  7, h                                        ; $7d0e: $cb $7c
	ld   h, c                                        ; $7d10: $61
	halt                                             ; $7d11: $76
	and  b                                           ; $7d12: $a0
	ld   [bc], a                                     ; $7d13: $02
	jp   nz, $005d                                   ; $7d14: $c2 $5d $00

	ld   bc, $1e04                                   ; $7d17: $01 $04 $1e
	ld   a, h                                        ; $7d1a: $7c
	inc  bc                                          ; $7d1b: $03
	add  d                                           ; $7d1c: $82
	ld   a, h                                        ; $7d1d: $7c
	ld   [bc], a                                     ; $7d1e: $02
	jp   $02a0                                       ; $7d1f: $c3 $a0 $02


	jp   nz, $005d                                   ; $7d22: $c2 $5d $00

	ld   [bc], a                                     ; $7d25: $02
	rlca                                             ; $7d26: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d27: $cf
	ld   bc, $0202                                   ; $7d28: $01 $02 $02
	ld   bc, $2000                                   ; $7d2b: $01 $00 $20
	nop                                              ; $7d2e: $00
	rlca                                             ; $7d2f: $07
	ld   c, c                                        ; $7d30: $49
	ld   [bc], a                                     ; $7d31: $02
	ld   [bc], a                                     ; $7d32: $02
	ld   [bc], a                                     ; $7d33: $02
	ld   bc, $2001                                   ; $7d34: $01 $01 $20
	nop                                              ; $7d37: $00
	rlca                                             ; $7d38: $07
	call nz, $0202                                   ; $7d39: $c4 $02 $02
	ld   [bc], a                                     ; $7d3c: $02
	ld   bc, $2002                                   ; $7d3d: $01 $02 $20
	nop                                              ; $7d40: $00
	rrca                                             ; $7d41: $0f
	nop                                              ; $7d42: $00
	ld   bc, $5001                                   ; $7d43: $01 $01 $50
	ld   a, h                                        ; $7d46: $7c
	rst  $38                                         ; $7d47: $ff
	rst  JumpTable                                         ; $7d48: $df
	db   $ec                                         ; $7d49: $ec
	and  e                                           ; $7d4a: $a3
	ld   h, e                                        ; $7d4b: $63
	and  c                                           ; $7d4c: $a1
	ld   a, h                                        ; $7d4d: $7c
	ld   [bc], a                                     ; $7d4e: $02
	jp   Jump_044_7279                               ; $7d4f: $c3 $79 $72


	ld   d, d                                        ; $7d52: $52
	ld   [hl], h                                     ; $7d53: $74
	dec  c                                           ; $7d54: $0d
	ld   e, b                                        ; $7d55: $58

Call_044_7d56:
	ld   [bc], a                                     ; $7d56: $02
	jp   nz, Jump_044_655b                           ; $7d57: $c2 $5b $65

	ld   l, l                                        ; $7d5a: $6d
	ld   d, d                                        ; $7d5b: $52
	and  c                                           ; $7d5c: $a1
	ld   [hl], l                                     ; $7d5d: $75
	ld   h, a                                        ; $7d5e: $67
	ld   e, a                                        ; $7d5f: $5f
	ld   [hl], a                                     ; $7d60: $77
	rst  $38                                         ; $7d61: $ff
	rst  $38                                         ; $7d62: $ff
	sbc  a                                           ; $7d63: $9f
	dec  c                                           ; $7d64: $0d
	nop                                              ; $7d65: $00
	ld   a, [bc]                                     ; $7d66: $0a
	inc  e                                           ; $7d67: $1c
	inc  c                                           ; $7d68: $0c
	nop                                              ; $7d69: $00
	nop                                              ; $7d6a: $00
	ld   bc, $ecdf                                   ; $7d6b: $01 $df $ec
	and  e                                           ; $7d6e: $a3
	ld   h, e                                        ; $7d6f: $63
	and  c                                           ; $7d70: $a1
	ld   a, b                                        ; $7d71: $78
	sub  a                                           ; $7d72: $97
	sbc  [hl]                                        ; $7d73: $9e
	dec  c                                           ; $7d74: $0d

Jump_044_7d75:
	rst  ToBoot                                         ; $7d75: $c7
	db   $eb                                         ; $7d76: $eb
	cp   d                                           ; $7d77: $ba
	sub  d                                           ; $7d78: $92
	inc  bc                                          ; $7d79: $03
	ld   d, l                                        ; $7d7a: $55
	ld   [bc], a                                     ; $7d7b: $02
	ld   e, c                                        ; $7d7c: $59
	ld   a, c                                        ; $7d7d: $79
	dec  c                                           ; $7d7e: $0d
	sub  [hl]                                        ; $7d7f: $96
	ld   e, l                                        ; $7d80: $5d
	ld   d, d                                        ; $7d81: $52
	adc  h                                           ; $7d82: $8c
	ld   h, a                                        ; $7d83: $67
	sub  [hl]                                        ; $7d84: $96
	sbc  a                                           ; $7d85: $9f
	dec  c                                           ; $7d86: $0d
	nop                                              ; $7d87: $00
	ld   a, [bc]                                     ; $7d88: $0a
	ld   a, [hl+]                                    ; $7d89: $2a
	inc  bc                                          ; $7d8a: $03
	inc  e                                           ; $7d8b: $1c
	inc  c                                           ; $7d8c: $0c
	ld   bc, $0101                                   ; $7d8d: $01 $01 $01
	ld   l, e                                        ; $7d90: $6b
	sbc  d                                           ; $7d91: $9a
	ld   [hl], l                                     ; $7d92: $75
	ld   a, l                                        ; $7d93: $7d
	sbc  [hl]                                        ; $7d94: $9e
	sbc  l                                           ; $7d95: $9d
	ld   l, l                                        ; $7d96: $6d
	ld   h, l                                        ; $7d97: $65
	ld   a, l                                        ; $7d98: $7d
	dec  c                                           ; $7d99: $0d
	inc  bc                                          ; $7d9a: $03
	dec  c                                           ; $7d9b: $0d
	ld   [bc], a                                     ; $7d9c: $02
	jp   Jump_044_505a                               ; $7d9d: $c3 $5a $50


	sbc  b                                           ; $7da0: $98
	adc  h                                           ; $7da1: $8c
	ld   h, a                                        ; $7da2: $67
	ld   a, h                                        ; $7da3: $7c
	ld   [hl], l                                     ; $7da4: $75
	sbc  [hl]                                        ; $7da5: $9e
	dec  c                                           ; $7da6: $0d
	inc  bc                                          ; $7da7: $03
	add  e                                           ; $7da8: $83
	dec  b                                           ; $7da9: $05
	dec  c                                           ; $7daa: $0d
	ld   h, l                                        ; $7dab: $65
	adc  h                                           ; $7dac: $8c
	ld   h, a                                        ; $7dad: $67
	sbc  a                                           ; $7dae: $9f
	dec  c                                           ; $7daf: $0d
	nop                                              ; $7db0: $00
	ld   a, [bc]                                     ; $7db1: $0a
	dec  c                                           ; $7db2: $0d
	nop                                              ; $7db3: $00
	nop                                              ; $7db4: $00
	rrca                                             ; $7db5: $0f
	nop                                              ; $7db6: $00
	ld   bc, $1e09                                   ; $7db7: $01 $09 $1e
	nop                                              ; $7dba: $00
	rrca                                             ; $7dbb: $0f
	nop                                              ; $7dbc: $00
	ld   bc, $5001                                   ; $7dbd: $01 $01 $50
	ld   a, h                                        ; $7dc0: $7c
	rst  $38                                         ; $7dc1: $ff
	xor  h                                           ; $7dc2: $ac
	push af                                          ; $7dc3: $f5
	bit  4, e                                        ; $7dc4: $cb $63
	and  c                                           ; $7dc6: $a1
	ld   a, h                                        ; $7dc7: $7c
	ld   [bc], a                                     ; $7dc8: $02
	jp   Jump_044_7279                               ; $7dc9: $c3 $79 $72


	ld   d, d                                        ; $7dcc: $52
	ld   [hl], h                                     ; $7dcd: $74
	dec  c                                           ; $7dce: $0d
	ld   e, b                                        ; $7dcf: $58
	ld   [bc], a                                     ; $7dd0: $02
	jp   nz, Jump_044_655b                           ; $7dd1: $c2 $5b $65

	ld   l, l                                        ; $7dd4: $6d
	ld   d, d                                        ; $7dd5: $52
	and  c                                           ; $7dd6: $a1
	ld   [hl], l                                     ; $7dd7: $75
	ld   h, a                                        ; $7dd8: $67
	ld   e, a                                        ; $7dd9: $5f
	ld   [hl], a                                     ; $7dda: $77
	rst  $38                                         ; $7ddb: $ff
	rst  $38                                         ; $7ddc: $ff
	sbc  a                                           ; $7ddd: $9f
	dec  c                                           ; $7dde: $0d
	nop                                              ; $7ddf: $00
	ld   a, [bc]                                     ; $7de0: $0a
	inc  e                                           ; $7de1: $1c
	inc  c                                           ; $7de2: $0c
	nop                                              ; $7de3: $00
	nop                                              ; $7de4: $00
	ld   bc, $f5ac                                   ; $7de5: $01 $ac $f5
	bit  4, e                                        ; $7de8: $cb $63
	and  c                                           ; $7dea: $a1
	ld   a, b                                        ; $7deb: $78
	sub  a                                           ; $7dec: $97
	sbc  [hl]                                        ; $7ded: $9e
	dec  c                                           ; $7dee: $0d
	inc  bc                                          ; $7def: $03
	ld   l, d                                        ; $7df0: $6a
	inc  bc                                          ; $7df1: $03
	db   $db                                         ; $7df2: $db
	sub  d                                           ; $7df3: $92
	inc  b                                           ; $7df4: $04
	dec  bc                                          ; $7df5: $0b
	inc  b                                           ; $7df6: $04
	rra                                              ; $7df7: $1f
	ld   a, c                                        ; $7df8: $79
	dec  c                                           ; $7df9: $0d
	sub  [hl]                                        ; $7dfa: $96
	ld   e, l                                        ; $7dfb: $5d
	ld   d, d                                        ; $7dfc: $52
	adc  h                                           ; $7dfd: $8c
	ld   h, a                                        ; $7dfe: $67
	sub  [hl]                                        ; $7dff: $96
	sbc  a                                           ; $7e00: $9f
	dec  c                                           ; $7e01: $0d
	nop                                              ; $7e02: $00
	ld   a, [bc]                                     ; $7e03: $0a
	ld   a, [hl+]                                    ; $7e04: $2a
	ld   b, $1c                                      ; $7e05: $06 $1c
	inc  c                                           ; $7e07: $0c
	ld   bc, $0101                                   ; $7e08: $01 $01 $01
	ld   l, e                                        ; $7e0b: $6b
	sbc  d                                           ; $7e0c: $9a
	ld   [hl], l                                     ; $7e0d: $75
	ld   a, l                                        ; $7e0e: $7d
	sbc  [hl]                                        ; $7e0f: $9e
	sbc  l                                           ; $7e10: $9d
	ld   l, l                                        ; $7e11: $6d
	ld   h, l                                        ; $7e12: $65
	ld   a, l                                        ; $7e13: $7d
	dec  c                                           ; $7e14: $0d
	inc  bc                                          ; $7e15: $03
	dec  c                                           ; $7e16: $0d
	ld   [bc], a                                     ; $7e17: $02
	jp   Jump_044_505a                               ; $7e18: $c3 $5a $50


	sbc  b                                           ; $7e1b: $98
	adc  h                                           ; $7e1c: $8c
	ld   h, a                                        ; $7e1d: $67
	ld   a, h                                        ; $7e1e: $7c
	ld   [hl], l                                     ; $7e1f: $75
	sbc  [hl]                                        ; $7e20: $9e
	dec  c                                           ; $7e21: $0d
	inc  bc                                          ; $7e22: $03
	add  e                                           ; $7e23: $83
	dec  b                                           ; $7e24: $05
	dec  c                                           ; $7e25: $0d
	ld   h, l                                        ; $7e26: $65
	adc  h                                           ; $7e27: $8c
	ld   h, a                                        ; $7e28: $67
	sbc  a                                           ; $7e29: $9f
	dec  c                                           ; $7e2a: $0d
	nop                                              ; $7e2b: $00
	ld   a, [bc]                                     ; $7e2c: $0a
	dec  c                                           ; $7e2d: $0d
	nop                                              ; $7e2e: $00
	nop                                              ; $7e2f: $00
	rrca                                             ; $7e30: $0f
	nop                                              ; $7e31: $00
	ld   bc, $1e09                                   ; $7e32: $01 $09 $1e
	nop                                              ; $7e35: $00
	jr   jr_044_7e3b                                 ; $7e36: $18 $03

	ld   bc, $cf02                                   ; $7e38: $01 $02 $cf

jr_044_7e3b:
	dec  b                                           ; $7e3b: $05
	ld   a, [de]                                     ; $7e3c: $1a
	ld   a, h                                        ; $7e3d: $7c
	ld   h, c                                        ; $7e3e: $61
	halt                                             ; $7e3f: $76
	and  b                                           ; $7e40: $a0
	ld   [bc], a                                     ; $7e41: $02
	jp   nz, $005d                                   ; $7e42: $c2 $5d $00

	nop                                              ; $7e45: $00
	and  e                                           ; $7e46: $a3
	and  l                                           ; $7e47: $a5
	db   $ec                                         ; $7e48: $ec
	cp   d                                           ; $7e49: $ba
	ld   a, h                                        ; $7e4a: $7c
	ld   h, c                                        ; $7e4b: $61
	halt                                             ; $7e4c: $76
	and  b                                           ; $7e4d: $a0
	ld   [bc], a                                     ; $7e4e: $02
	jp   nz, $005d                                   ; $7e4f: $c2 $5d $00

	ld   bc, $1e04                                   ; $7e52: $01 $04 $1e
	ld   a, h                                        ; $7e55: $7c
	inc  bc                                          ; $7e56: $03
	add  d                                           ; $7e57: $82
	ld   a, h                                        ; $7e58: $7c
	ld   [bc], a                                     ; $7e59: $02
	jp   $02a0                                       ; $7e5a: $c3 $a0 $02


	jp   nz, $005d                                   ; $7e5d: $c2 $5d $00

	ld   [bc], a                                     ; $7e60: $02
	rlca                                             ; $7e61: $07
	ld   a, [bc]                                     ; $7e62: $0a
	inc  bc                                          ; $7e63: $03
	ld   [bc], a                                     ; $7e64: $02
	ld   [bc], a                                     ; $7e65: $02
	ld   bc, $2000                                   ; $7e66: $01 $00 $20
	nop                                              ; $7e69: $00
	rlca                                             ; $7e6a: $07
	adc  l                                           ; $7e6b: $8d
	inc  bc                                          ; $7e6c: $03
	ld   [bc], a                                     ; $7e6d: $02
	ld   [bc], a                                     ; $7e6e: $02
	ld   bc, $2001                                   ; $7e6f: $01 $01 $20
	nop                                              ; $7e72: $00
	rlca                                             ; $7e73: $07
	ld   d, h                                        ; $7e74: $54
	nop                                              ; $7e75: $00
	ld   [bc], a                                     ; $7e76: $02
	ld   [bc], a                                     ; $7e77: $02
	ld   bc, $2002                                   ; $7e78: $01 $02 $20
	nop                                              ; $7e7b: $00
	rrca                                             ; $7e7c: $0f
	nop                                              ; $7e7d: $00
	ld   bc, $5001                                   ; $7e7e: $01 $01 $50
	ld   a, h                                        ; $7e81: $7c
	rst  $38                                         ; $7e82: $ff
	ld   [bc], a                                     ; $7e83: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e84: $cf
	dec  b                                           ; $7e85: $05
	ld   a, [de]                                     ; $7e86: $1a
	ld   h, e                                        ; $7e87: $63
	and  c                                           ; $7e88: $a1
	ld   a, h                                        ; $7e89: $7c
	ld   [bc], a                                     ; $7e8a: $02
	jp   Jump_044_7279                               ; $7e8b: $c3 $79 $72


	ld   d, d                                        ; $7e8e: $52
	ld   [hl], h                                     ; $7e8f: $74
	dec  c                                           ; $7e90: $0d
	ld   e, b                                        ; $7e91: $58
	ld   [bc], a                                     ; $7e92: $02
	jp   nz, Jump_044_655b                           ; $7e93: $c2 $5b $65

	ld   l, l                                        ; $7e96: $6d
	ld   d, d                                        ; $7e97: $52
	and  c                                           ; $7e98: $a1
	ld   [hl], l                                     ; $7e99: $75
	ld   h, a                                        ; $7e9a: $67
	ld   e, a                                        ; $7e9b: $5f
	ld   [hl], a                                     ; $7e9c: $77
	rst  $38                                         ; $7e9d: $ff
	rst  $38                                         ; $7e9e: $ff
	sbc  a                                           ; $7e9f: $9f
	dec  c                                           ; $7ea0: $0d
	nop                                              ; $7ea1: $00
	ld   a, [bc]                                     ; $7ea2: $0a
	inc  e                                           ; $7ea3: $1c
	inc  c                                           ; $7ea4: $0c
	nop                                              ; $7ea5: $00
	nop                                              ; $7ea6: $00
	ld   bc, $cf02                                   ; $7ea7: $01 $02 $cf
	dec  b                                           ; $7eaa: $05
	ld   a, [de]                                     ; $7eab: $1a
	ld   h, e                                        ; $7eac: $63
	and  c                                           ; $7ead: $a1
	ld   a, b                                        ; $7eae: $78
	sub  a                                           ; $7eaf: $97
	sbc  [hl]                                        ; $7eb0: $9e
	dec  c                                           ; $7eb1: $0d
	inc  bc                                          ; $7eb2: $03
	adc  $02                                         ; $7eb3: $ce $02
	inc  [hl]                                        ; $7eb5: $34
	ld   [bc], a                                     ; $7eb6: $02
	ld   [hl], l                                     ; $7eb7: $75
	inc  b                                           ; $7eb8: $04
	dec  a                                           ; $7eb9: $3d
	ld   [bc], a                                     ; $7eba: $02
	ld   e, c                                        ; $7ebb: $59
	sub  d                                           ; $7ebc: $92
	inc  bc                                          ; $7ebd: $03
	ld   d, l                                        ; $7ebe: $55
	ld   [bc], a                                     ; $7ebf: $02
	ld   e, c                                        ; $7ec0: $59
	ld   a, c                                        ; $7ec1: $79
	dec  c                                           ; $7ec2: $0d
	sub  [hl]                                        ; $7ec3: $96
	ld   e, l                                        ; $7ec4: $5d
	ld   d, d                                        ; $7ec5: $52
	adc  h                                           ; $7ec6: $8c
	ld   h, a                                        ; $7ec7: $67
	sub  [hl]                                        ; $7ec8: $96
	sbc  a                                           ; $7ec9: $9f
	dec  c                                           ; $7eca: $0d
	nop                                              ; $7ecb: $00
	ld   a, [bc]                                     ; $7ecc: $0a
	ld   a, [hl+]                                    ; $7ecd: $2a
	dec  b                                           ; $7ece: $05
	inc  e                                           ; $7ecf: $1c
	inc  c                                           ; $7ed0: $0c
	ld   bc, $0101                                   ; $7ed1: $01 $01 $01
	ld   l, e                                        ; $7ed4: $6b
	sbc  d                                           ; $7ed5: $9a
	ld   [hl], l                                     ; $7ed6: $75
	ld   a, l                                        ; $7ed7: $7d
	sbc  [hl]                                        ; $7ed8: $9e
	sbc  l                                           ; $7ed9: $9d
	ld   l, l                                        ; $7eda: $6d
	ld   h, l                                        ; $7edb: $65
	ld   a, l                                        ; $7edc: $7d
	dec  c                                           ; $7edd: $0d
	inc  bc                                          ; $7ede: $03
	dec  c                                           ; $7edf: $0d
	ld   [bc], a                                     ; $7ee0: $02
	jp   Jump_044_505a                               ; $7ee1: $c3 $5a $50


	sbc  b                                           ; $7ee4: $98
	adc  h                                           ; $7ee5: $8c
	ld   h, a                                        ; $7ee6: $67
	ld   a, h                                        ; $7ee7: $7c
	ld   [hl], l                                     ; $7ee8: $75
	sbc  [hl]                                        ; $7ee9: $9e
	dec  c                                           ; $7eea: $0d
	inc  bc                                          ; $7eeb: $03
	add  e                                           ; $7eec: $83
	dec  b                                           ; $7eed: $05
	dec  c                                           ; $7eee: $0d
	ld   h, l                                        ; $7eef: $65
	adc  h                                           ; $7ef0: $8c
	ld   h, a                                        ; $7ef1: $67
	sbc  a                                           ; $7ef2: $9f
	dec  c                                           ; $7ef3: $0d
	nop                                              ; $7ef4: $00
	ld   a, [bc]                                     ; $7ef5: $0a
	dec  c                                           ; $7ef6: $0d
	nop                                              ; $7ef7: $00
	nop                                              ; $7ef8: $00
	rrca                                             ; $7ef9: $0f
	nop                                              ; $7efa: $00
	ld   bc, $1e09                                   ; $7efb: $01 $09 $1e
	nop                                              ; $7efe: $00
	rrca                                             ; $7eff: $0f
	nop                                              ; $7f00: $00
	ld   bc, $5001                                   ; $7f01: $01 $01 $50
	ld   a, h                                        ; $7f04: $7c
	rst  $38                                         ; $7f05: $ff
	and  e                                           ; $7f06: $a3
	and  l                                           ; $7f07: $a5
	db   $ec                                         ; $7f08: $ec
	cp   d                                           ; $7f09: $ba
	ld   a, h                                        ; $7f0a: $7c
	ld   [bc], a                                     ; $7f0b: $02
	jp   Jump_044_7279                               ; $7f0c: $c3 $79 $72


	ld   d, d                                        ; $7f0f: $52
	ld   [hl], h                                     ; $7f10: $74
	dec  c                                           ; $7f11: $0d
	ld   e, b                                        ; $7f12: $58
	ld   [bc], a                                     ; $7f13: $02
	jp   nz, Jump_044_655b                           ; $7f14: $c2 $5b $65

	ld   l, l                                        ; $7f17: $6d
	ld   d, d                                        ; $7f18: $52
	and  c                                           ; $7f19: $a1
	ld   [hl], l                                     ; $7f1a: $75
	ld   h, a                                        ; $7f1b: $67
	ld   e, a                                        ; $7f1c: $5f
	ld   [hl], a                                     ; $7f1d: $77
	rst  $38                                         ; $7f1e: $ff
	rst  $38                                         ; $7f1f: $ff
	sbc  a                                           ; $7f20: $9f
	dec  c                                           ; $7f21: $0d
	nop                                              ; $7f22: $00
	ld   a, [bc]                                     ; $7f23: $0a
	inc  e                                           ; $7f24: $1c
	inc  c                                           ; $7f25: $0c
	nop                                              ; $7f26: $00
	nop                                              ; $7f27: $00
	ld   bc, $a5a3                                   ; $7f28: $01 $a3 $a5
	db   $ec                                         ; $7f2b: $ec
	cp   d                                           ; $7f2c: $ba
	ld   a, b                                        ; $7f2d: $78
	sub  a                                           ; $7f2e: $97
	sbc  [hl]                                        ; $7f2f: $9e
	rst  ToBoot                                         ; $7f30: $c7
	db   $eb                                         ; $7f31: $eb
	cp   d                                           ; $7f32: $ba
	sub  d                                           ; $7f33: $92
	dec  b                                           ; $7f34: $05
	inc  de                                          ; $7f35: $13
	ld   [bc], a                                     ; $7f36: $02
	ld   hl, $0d9e                                   ; $7f37: $21 $9e $0d
	ld   d, b                                        ; $7f3a: $50
	halt                                             ; $7f3b: $76
	sbc  [hl]                                        ; $7f3c: $9e
	inc  b                                           ; $7f3d: $04
	dec  bc                                          ; $7f3e: $0b
	inc  b                                           ; $7f3f: $04
	rra                                              ; $7f40: $1f
	ld   a, b                                        ; $7f41: $78
	and  c                                           ; $7f42: $a1
	ld   e, c                                        ; $7f43: $59
	ld   a, c                                        ; $7f44: $79
	sub  b                                           ; $7f45: $90
	dec  c                                           ; $7f46: $0d
	sub  [hl]                                        ; $7f47: $96
	ld   e, l                                        ; $7f48: $5d
	ld   d, d                                        ; $7f49: $52
	adc  h                                           ; $7f4a: $8c
	ld   h, a                                        ; $7f4b: $67
	sub  [hl]                                        ; $7f4c: $96
	sbc  a                                           ; $7f4d: $9f
	dec  c                                           ; $7f4e: $0d
	nop                                              ; $7f4f: $00
	ld   a, [bc]                                     ; $7f50: $0a
	ld   a, [hl+]                                    ; $7f51: $2a
	inc  b                                           ; $7f52: $04
	inc  e                                           ; $7f53: $1c
	inc  c                                           ; $7f54: $0c
	ld   bc, $0101                                   ; $7f55: $01 $01 $01
	ld   l, e                                        ; $7f58: $6b
	sbc  d                                           ; $7f59: $9a
	ld   [hl], l                                     ; $7f5a: $75
	ld   a, l                                        ; $7f5b: $7d
	sbc  [hl]                                        ; $7f5c: $9e
	sbc  l                                           ; $7f5d: $9d
	ld   l, l                                        ; $7f5e: $6d
	ld   h, l                                        ; $7f5f: $65
	ld   a, l                                        ; $7f60: $7d
	dec  c                                           ; $7f61: $0d
	inc  bc                                          ; $7f62: $03
	dec  c                                           ; $7f63: $0d
	ld   [bc], a                                     ; $7f64: $02
	jp   Jump_044_505a                               ; $7f65: $c3 $5a $50


	sbc  b                                           ; $7f68: $98
	adc  h                                           ; $7f69: $8c
	ld   h, a                                        ; $7f6a: $67
	ld   a, h                                        ; $7f6b: $7c
	ld   [hl], l                                     ; $7f6c: $75
	sbc  [hl]                                        ; $7f6d: $9e
	dec  c                                           ; $7f6e: $0d
	inc  bc                                          ; $7f6f: $03
	add  e                                           ; $7f70: $83
	dec  b                                           ; $7f71: $05
	dec  c                                           ; $7f72: $0d
	ld   h, l                                        ; $7f73: $65
	adc  h                                           ; $7f74: $8c
	ld   h, a                                        ; $7f75: $67
	sbc  a                                           ; $7f76: $9f
	dec  c                                           ; $7f77: $0d
	nop                                              ; $7f78: $00
	ld   a, [bc]                                     ; $7f79: $0a
	dec  c                                           ; $7f7a: $0d
	nop                                              ; $7f7b: $00
	nop                                              ; $7f7c: $00
	rrca                                             ; $7f7d: $0f
	nop                                              ; $7f7e: $00
	ld   bc, $1e09                                   ; $7f7f: $01 $09 $1e
	nop                                              ; $7f82: $00
	nop                                              ; $7f83: $00
	ld   [bc], a                                     ; $7f84: $02
	nop                                              ; $7f85: $00
	ld   bc, $2c07                                   ; $7f86: $01 $07 $2c
	ld   bc, $2002                                   ; $7f89: $01 $02 $20
	ld   [bc], a                                     ; $7f8c: $02
	nop                                              ; $7f8d: $00
	inc  bc                                          ; $7f8e: $03
	ld   d, [hl]                                     ; $7f8f: $56
	dec  h                                           ; $7f90: $25
	inc  e                                           ; $7f91: $1c
	nop                                              ; $7f92: $00
	inc  e                                           ; $7f93: $1c
	dec  c                                           ; $7f94: $0d
	nop                                              ; $7f95: $00
	nop                                              ; $7f96: $00
	ld   [bc], a                                     ; $7f97: $02
	dec  b                                           ; $7f98: $05
	ld   b, b                                        ; $7f99: $40
	ld   d, [hl]                                     ; $7f9a: $56
	ld   [bc], a                                     ; $7f9b: $02
	nop                                              ; $7f9c: $00
	ld   bc, $2b07                                   ; $7f9d: $01 $07 $2b
	ld   bc, $2801                                   ; $7fa0: $01 $01 $28
	ld   bc, $2a07                                   ; $7fa3: $01 $07 $2a
	nop                                              ; $7fa6: $00
	ld   bc, $9750                                   ; $7fa7: $01 $50 $97
	sbc  [hl]                                        ; $7faa: $9e
	ld   [$5d00], sp                                 ; $7fab: $08 $00 $5d
	and  c                                           ; $7fae: $a1
	dec  c                                           ; $7faf: $0d
	ld   e, b                                        ; $7fb0: $58
	ld   a, l                                        ; $7fb1: $7d
	sub  [hl]                                        ; $7fb2: $96
	ld   d, h                                        ; $7fb3: $54
	sbc  a                                           ; $7fb4: $9f
	dec  c                                           ; $7fb5: $0d
	nop                                              ; $7fb6: $00
	ld   a, [bc]                                     ; $7fb7: $0a
	rrca                                             ; $7fb8: $0f
	nop                                              ; $7fb9: $00
	ld   bc, $5801                                   ; $7fba: $01 $01 $58
	ld   a, l                                        ; $7fbd: $7d
	sub  [hl]                                        ; $7fbe: $96
	ld   d, h                                        ; $7fbf: $54
	ld   h, d                                        ; $7fc0: $62
	ld   h, h                                        ; $7fc1: $64
	ld   d, d                                        ; $7fc2: $52
	adc  h                                           ; $7fc3: $8c
	ld   h, a                                        ; $7fc4: $67
	sbc  [hl]                                        ; $7fc5: $9e
	dec  c                                           ; $7fc6: $0d
	inc  b                                           ; $7fc7: $04
	pop  hl                                          ; $7fc8: $e1
	inc  b                                           ; $7fc9: $04
	rst  $38                                         ; $7fca: $ff
	ld   h, e                                        ; $7fcb: $63
	and  c                                           ; $7fcc: $a1
	sbc  a                                           ; $7fcd: $9f
	dec  c                                           ; $7fce: $0d
	nop                                              ; $7fcf: $00
	ld   a, [bc]                                     ; $7fd0: $0a
	ld   bc, $0301                                   ; $7fd1: $01 $01 $03
	ld   a, b                                        ; $7fd4: $78
	ld   a, c                                        ; $7fd5: $79
	and  b                                           ; $7fd6: $a0
	ld   [bc], a                                     ; $7fd7: $02
	jp   nz, Jump_044_5461                           ; $7fd8: $c2 $61 $54

	ld   e, c                                        ; $7fdb: $59
	ld   a, b                                        ; $7fdc: $78
	rst  $38                                         ; $7fdd: $ff
	rst  $38                                         ; $7fde: $ff
	ld   bc, $0d04                                   ; $7fdf: $01 $04 $0d
	nop                                              ; $7fe2: $00
	ld   a, [bc]                                     ; $7fe3: $0a
	jr   jr_044_7fe9                                 ; $7fe4: $18 $03

	ld   bc, $5d63                                   ; $7fe6: $01 $63 $5d

jr_044_7fe9:
	sub  a                                           ; $7fe9: $97
	ld   a, h                                        ; $7fea: $7c
	ld   h, c                                        ; $7feb: $61
	halt                                             ; $7fec: $76
	and  b                                           ; $7fed: $a0
	ld   [bc], a                                     ; $7fee: $02
	jp   nz, $005d                                   ; $7fef: $c2 $5d $00

	nop                                              ; $7ff2: $00
	ld   h, a                                        ; $7ff3: $67
	adc  l                                           ; $7ff4: $8d
	sbc  d                                           ; $7ff5: $9a
	ld   a, h                                        ; $7ff6: $7c
	ld   h, c                                        ; $7ff7: $61
	halt                                             ; $7ff8: $76
	and  b                                           ; $7ff9: $a0
	ld   [bc], a                                     ; $7ffa: $02
	jp   nz, $005d                                   ; $7ffb: $c2 $5d $00

	db   $01                                         ; $7ffe: $01
	inc  b                                           ; $7fff: $04
