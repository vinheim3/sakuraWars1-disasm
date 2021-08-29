; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $059", ROMX[$4000], BANK[$59]

	ld   de, $a001                                   ; $4000: $11 $01 $a0
	dec  h                                           ; $4003: $25
	nop                                              ; $4004: $00
	rrca                                             ; $4005: $0f
	nop                                              ; $4006: $00
	ld   bc, $6301                                   ; $4007: $01 $01 $63
	ld   e, l                                        ; $400a: $5d
	sub  a                                           ; $400b: $97
	ld   h, e                                        ; $400c: $63
	and  c                                           ; $400d: $a1
	sbc  a                                           ; $400e: $9f
	dec  c                                           ; $400f: $0d
	nop                                              ; $4010: $00
	ld   a, [bc]                                     ; $4011: $0a
	inc  e                                           ; $4012: $1c
	ld   bc, $0000                                   ; $4013: $01 $00 $00
	ld   bc, $8f62                                   ; $4016: $01 $62 $8f
	and  c                                           ; $4019: $a1
	ld   a, b                                        ; $401a: $78
	ld   h, e                                        ; $401b: $63
	ld   d, d                                        ; $401c: $52
	sbc  a                                           ; $401d: $9f
	dec  c                                           ; $401e: $0d
	ld   d, d                                        ; $401f: $52
	adc  h                                           ; $4020: $8c
	dec  b                                           ; $4021: $05
	jr   z, jr_059_4076                              ; $4022: $28 $52

	ld   [hl], l                                     ; $4024: $75
	sbc  c                                           ; $4025: $99
	and  c                                           ; $4026: $a1
	ld   [hl], l                                     ; $4027: $75
	ld   h, a                                        ; $4028: $67
	sbc  a                                           ; $4029: $9f
	dec  c                                           ; $402a: $0d
	nop                                              ; $402b: $00
	ld   a, [bc]                                     ; $402c: $0a
	dec  c                                           ; $402d: $0d
	nop                                              ; $402e: $00
	nop                                              ; $402f: $00
	rrca                                             ; $4030: $0f
	nop                                              ; $4031: $00
	ld   bc, $1e09                                   ; $4032: $01 $09 $1e
	nop                                              ; $4035: $00
	rrca                                             ; $4036: $0f
	nop                                              ; $4037: $00
	ld   bc, $010d                                   ; $4038: $01 $0d $01
	nop                                              ; $403b: $00
	ld   bc, $5d63                                   ; $403c: $01 $63 $5d
	sub  a                                           ; $403f: $97
	ld   h, e                                        ; $4040: $63
	and  c                                           ; $4041: $a1
	sbc  a                                           ; $4042: $9f
	dec  c                                           ; $4043: $0d
	ld   e, b                                        ; $4044: $58
	ld   a, l                                        ; $4045: $7d
	sub  [hl]                                        ; $4046: $96
	ld   d, h                                        ; $4047: $54
	ld   h, d                                        ; $4048: $62
	ld   h, h                                        ; $4049: $64
	ld   d, d                                        ; $404a: $52
	adc  h                                           ; $404b: $8c
	ld   h, a                                        ; $404c: $67
	sbc  a                                           ; $404d: $9f
	dec  c                                           ; $404e: $0d
	nop                                              ; $404f: $00
	ld   a, [bc]                                     ; $4050: $0a
	rrca                                             ; $4051: $0f
	ld   bc, $0100                                   ; $4052: $01 $00 $01
	ld   e, b                                        ; $4055: $58
	ld   a, l                                        ; $4056: $7d
	sub  [hl]                                        ; $4057: $96
	ld   d, h                                        ; $4058: $54
	ld   h, d                                        ; $4059: $62
	ld   h, h                                        ; $405a: $64
	ld   d, d                                        ; $405b: $52
	adc  h                                           ; $405c: $8c
	ld   h, a                                        ; $405d: $67
	sbc  a                                           ; $405e: $9f
	dec  c                                           ; $405f: $0d
	ld   l, e                                        ; $4060: $6b
	sbc  d                                           ; $4061: $9a
	ld   [hl], l                                     ; $4062: $75
	ld   a, l                                        ; $4063: $7d
	sbc  a                                           ; $4064: $9f
	dec  c                                           ; $4065: $0d
	nop                                              ; $4066: $00
	ld   a, [bc]                                     ; $4067: $0a
	dec  c                                           ; $4068: $0d
	nop                                              ; $4069: $00
	nop                                              ; $406a: $00
	rrca                                             ; $406b: $0f
	nop                                              ; $406c: $00
	ld   bc, $1e09                                   ; $406d: $01 $09 $1e
	nop                                              ; $4070: $00
	rrca                                             ; $4071: $0f
	nop                                              ; $4072: $00
	ld   bc, $010d                                   ; $4073: $01 $0d $01

jr_059_4076:
	nop                                              ; $4076: $00
	ld   bc, $5d63                                   ; $4077: $01 $63 $5d
	sub  a                                           ; $407a: $97
	ld   h, e                                        ; $407b: $63
	and  c                                           ; $407c: $a1
	sbc  a                                           ; $407d: $9f
	dec  c                                           ; $407e: $0d
	ld   e, b                                        ; $407f: $58
	ld   a, l                                        ; $4080: $7d
	sub  [hl]                                        ; $4081: $96
	ld   d, h                                        ; $4082: $54
	ld   h, d                                        ; $4083: $62
	ld   h, h                                        ; $4084: $64
	ld   d, d                                        ; $4085: $52
	adc  h                                           ; $4086: $8c
	ld   h, a                                        ; $4087: $67
	sbc  a                                           ; $4088: $9f
	dec  c                                           ; $4089: $0d
	nop                                              ; $408a: $00
	ld   a, [bc]                                     ; $408b: $0a
	inc  e                                           ; $408c: $1c
	ld   bc, $0101                                   ; $408d: $01 $01 $01
	ld   bc, $7d58                                   ; $4090: $01 $58 $7d
	sub  [hl]                                        ; $4093: $96
	ld   d, h                                        ; $4094: $54
	ld   h, d                                        ; $4095: $62
	ld   h, h                                        ; $4096: $64
	ld   d, d                                        ; $4097: $52
	adc  h                                           ; $4098: $8c
	ld   h, a                                        ; $4099: $67
	sbc  a                                           ; $409a: $9f
	dec  c                                           ; $409b: $0d
	ld   [$6300], sp                                 ; $409c: $08 $00 $63
	and  c                                           ; $409f: $a1
	sbc  a                                           ; $40a0: $9f
	dec  c                                           ; $40a1: $0d
	ld   l, e                                        ; $40a2: $6b
	sbc  d                                           ; $40a3: $9a
	ld   [hl], l                                     ; $40a4: $75
	ld   a, l                                        ; $40a5: $7d
	sbc  a                                           ; $40a6: $9f
	dec  c                                           ; $40a7: $0d
	nop                                              ; $40a8: $00
	ld   a, [bc]                                     ; $40a9: $0a
	dec  c                                           ; $40aa: $0d
	nop                                              ; $40ab: $00
	nop                                              ; $40ac: $00
	rrca                                             ; $40ad: $0f
	nop                                              ; $40ae: $00
	ld   bc, $1e09                                   ; $40af: $01 $09 $1e
	nop                                              ; $40b2: $00
	inc  e                                           ; $40b3: $1c
	ld   bc, $0101                                   ; $40b4: $01 $01 $01
	ld   bc, $0008                                   ; $40b7: $01 $08 $00
	ld   h, e                                        ; $40ba: $63
	and  c                                           ; $40bb: $a1
	sbc  a                                           ; $40bc: $9f
	dec  c                                           ; $40bd: $0d
	ld   e, b                                        ; $40be: $58
	ld   a, l                                        ; $40bf: $7d
	sub  [hl]                                        ; $40c0: $96
	ld   d, h                                        ; $40c1: $54
	ld   h, d                                        ; $40c2: $62
	ld   h, h                                        ; $40c3: $64
	ld   d, d                                        ; $40c4: $52
	adc  h                                           ; $40c5: $8c
	ld   h, a                                        ; $40c6: $67
	sbc  a                                           ; $40c7: $9f
	dec  c                                           ; $40c8: $0d
	nop                                              ; $40c9: $00
	ld   a, [bc]                                     ; $40ca: $0a
	rrca                                             ; $40cb: $0f
	nop                                              ; $40cc: $00
	ld   bc, $5801                                   ; $40cd: $01 $01 $58
	ld   a, l                                        ; $40d0: $7d
	sub  [hl]                                        ; $40d1: $96
	ld   d, h                                        ; $40d2: $54
	ld   h, d                                        ; $40d3: $62
	ld   h, h                                        ; $40d4: $64
	ld   d, d                                        ; $40d5: $52
	adc  h                                           ; $40d6: $8c
	ld   h, a                                        ; $40d7: $67
	sbc  a                                           ; $40d8: $9f
	dec  c                                           ; $40d9: $0d
	ld   h, e                                        ; $40da: $63
	ld   e, l                                        ; $40db: $5d
	sub  a                                           ; $40dc: $97
	ld   h, e                                        ; $40dd: $63
	and  c                                           ; $40de: $a1
	sbc  a                                           ; $40df: $9f
	dec  c                                           ; $40e0: $0d
	nop                                              ; $40e1: $00
	ld   a, [bc]                                     ; $40e2: $0a
	rrca                                             ; $40e3: $0f
	ld   bc, $0101                                   ; $40e4: $01 $01 $01
	ld   [bc], a                                     ; $40e7: $02
	and  l                                           ; $40e8: $a5
	inc  b                                           ; $40e9: $04
	xor  d                                           ; $40ea: $aa
	sub  b                                           ; $40eb: $90
	ld   [bc], a                                     ; $40ec: $02
	jr   nz, jr_059_40f3                             ; $40ed: $20 $04

	xor  d                                           ; $40ef: $aa
	sbc  [hl]                                        ; $40f0: $9e
	dec  c                                           ; $40f1: $0d
	ld   e, d                                        ; $40f2: $5a

jr_059_40f3:
	and  c                                           ; $40f3: $a1
	ld   a, [hl]                                     ; $40f4: $7e
	sbc  b                                           ; $40f5: $98
	adc  h                                           ; $40f6: $8c
	ld   h, l                                        ; $40f7: $65
	sub  l                                           ; $40f8: $95
	ld   d, h                                        ; $40f9: $54
	ld   a, e                                        ; $40fa: $7b
	sbc  a                                           ; $40fb: $9f
	dec  c                                           ; $40fc: $0d
	ld   l, e                                        ; $40fd: $6b
	sbc  d                                           ; $40fe: $9a
	ld   [hl], l                                     ; $40ff: $75
	ld   a, l                                        ; $4100: $7d
	adc  h                                           ; $4101: $8c
	ld   l, l                                        ; $4102: $6d
	sbc  a                                           ; $4103: $9f
	dec  c                                           ; $4104: $0d
	nop                                              ; $4105: $00
	ld   a, [bc]                                     ; $4106: $0a
	dec  c                                           ; $4107: $0d
	nop                                              ; $4108: $00
	nop                                              ; $4109: $00
	rrca                                             ; $410a: $0f
	nop                                              ; $410b: $00
	ld   bc, $1e09                                   ; $410c: $01 $09 $1e
	nop                                              ; $410f: $00
	nop                                              ; $4110: $00
	ld   [bc], a                                     ; $4111: $02
	rlca                                             ; $4112: $07
	ld   sp, $0300                                   ; $4113: $31 $00 $03
	inc  de                                          ; $4116: $13
	ld   bc, $2265                                   ; $4117: $01 $65 $22
	nop                                              ; $411a: $00
	rlca                                             ; $411b: $07
	ld   h, c                                        ; $411c: $61
	nop                                              ; $411d: $00
	inc  bc                                          ; $411e: $03
	inc  de                                          ; $411f: $13
	ld   bc, $2566                                   ; $4120: $01 $66 $25
	inc  bc                                          ; $4123: $03
	inc  de                                          ; $4124: $13
	ld   bc, $228c                                   ; $4125: $01 $8c $22
	inc  e                                           ; $4128: $1c
	nop                                              ; $4129: $00
	rlca                                             ; $412a: $07
	sub  a                                           ; $412b: $97
	nop                                              ; $412c: $00
	inc  bc                                          ; $412d: $03
	inc  de                                          ; $412e: $13
	ld   bc, $258c                                   ; $412f: $01 $8c $25
	inc  bc                                          ; $4132: $03
	inc  de                                          ; $4133: $13
	ld   bc, $22a0                                   ; $4134: $01 $a0 $22
	inc  e                                           ; $4137: $1c
	nop                                              ; $4138: $00
	rlca                                             ; $4139: $07
	push de                                          ; $413a: $d5
	nop                                              ; $413b: $00
	inc  bc                                          ; $413c: $03
	inc  de                                          ; $413d: $13
	ld   bc, $25a0                                   ; $413e: $01 $a0 $25
	nop                                              ; $4141: $00
	rrca                                             ; $4142: $0f
	nop                                              ; $4143: $00
	ld   bc, $df01                                   ; $4144: $01 $01 $df
	db   $ec                                         ; $4147: $ec
	and  e                                           ; $4148: $a3
	ld   h, e                                        ; $4149: $63
	and  c                                           ; $414a: $a1
	sbc  a                                           ; $414b: $9f
	dec  c                                           ; $414c: $0d
	nop                                              ; $414d: $00
	ld   a, [bc]                                     ; $414e: $0a
	inc  e                                           ; $414f: $1c
	inc  bc                                          ; $4150: $03
	nop                                              ; $4151: $00
	nop                                              ; $4152: $00
	ld   bc, $8c52                                   ; $4153: $01 $52 $8c
	dec  b                                           ; $4156: $05
	jr   z, @+$54                                    ; $4157: $28 $52

	ld   [hl], l                                     ; $4159: $75
	sbc  c                                           ; $415a: $99
	ld   a, h                                        ; $415b: $7c
	sbc  a                                           ; $415c: $9f
	dec  c                                           ; $415d: $0d
	adc  h                                           ; $415e: $8c
	ld   l, l                                        ; $415f: $6d
	sbc  [hl]                                        ; $4160: $9e
	ld   [bc], a                                     ; $4161: $02
	xor  d                                           ; $4162: $aa
	ld   [hl], l                                     ; $4163: $75
	ld   a, e                                        ; $4164: $7b
	sbc  a                                           ; $4165: $9f
	dec  c                                           ; $4166: $0d
	nop                                              ; $4167: $00
	ld   a, [bc]                                     ; $4168: $0a
	dec  c                                           ; $4169: $0d
	nop                                              ; $416a: $00
	nop                                              ; $416b: $00
	rrca                                             ; $416c: $0f
	nop                                              ; $416d: $00
	ld   bc, $1e09                                   ; $416e: $01 $09 $1e
	nop                                              ; $4171: $00
	dec  c                                           ; $4172: $0d
	inc  bc                                          ; $4173: $03
	nop                                              ; $4174: $00
	rrca                                             ; $4175: $0f
	nop                                              ; $4176: $00
	ld   bc, $df01                                   ; $4177: $01 $01 $df
	db   $ec                                         ; $417a: $ec
	and  e                                           ; $417b: $a3
	ld   h, e                                        ; $417c: $63
	and  c                                           ; $417d: $a1
	sbc  [hl]                                        ; $417e: $9e
	dec  c                                           ; $417f: $0d
	ld   e, b                                        ; $4180: $58
	ld   a, l                                        ; $4181: $7d
	sub  [hl]                                        ; $4182: $96
	ld   d, h                                        ; $4183: $54
	ld   h, d                                        ; $4184: $62
	ld   h, h                                        ; $4185: $64
	ld   d, d                                        ; $4186: $52
	adc  h                                           ; $4187: $8c
	ld   h, a                                        ; $4188: $67
	sbc  a                                           ; $4189: $9f
	dec  c                                           ; $418a: $0d
	nop                                              ; $418b: $00
	ld   a, [bc]                                     ; $418c: $0a
	rrca                                             ; $418d: $0f
	inc  bc                                          ; $418e: $03
	nop                                              ; $418f: $00
	ld   bc, $7d58                                   ; $4190: $01 $58 $7d
	sub  [hl]                                        ; $4193: $96
	ld   d, h                                        ; $4194: $54
	sbc  a                                           ; $4195: $9f
	dec  c                                           ; $4196: $0d
	ld   h, [hl]                                     ; $4197: $66
	sub  c                                           ; $4198: $91
	ld   d, b                                        ; $4199: $50
	ld   a, e                                        ; $419a: $7b
	sbc  a                                           ; $419b: $9f
	dec  c                                           ; $419c: $0d
	nop                                              ; $419d: $00
	ld   a, [bc]                                     ; $419e: $0a
	dec  c                                           ; $419f: $0d
	nop                                              ; $41a0: $00
	nop                                              ; $41a1: $00
	rrca                                             ; $41a2: $0f
	nop                                              ; $41a3: $00
	ld   bc, $1e09                                   ; $41a4: $01 $09 $1e
	nop                                              ; $41a7: $00
	rrca                                             ; $41a8: $0f
	nop                                              ; $41a9: $00
	ld   bc, $030d                                   ; $41aa: $01 $0d $03
	nop                                              ; $41ad: $00
	ld   bc, $ecdf                                   ; $41ae: $01 $df $ec
	and  e                                           ; $41b1: $a3
	ld   h, e                                        ; $41b2: $63
	and  c                                           ; $41b3: $a1
	sbc  [hl]                                        ; $41b4: $9e
	dec  c                                           ; $41b5: $0d
	ld   e, b                                        ; $41b6: $58
	ld   a, l                                        ; $41b7: $7d
	sub  [hl]                                        ; $41b8: $96
	ld   d, h                                        ; $41b9: $54
	ld   h, d                                        ; $41ba: $62
	ld   h, h                                        ; $41bb: $64
	ld   d, d                                        ; $41bc: $52
	adc  h                                           ; $41bd: $8c
	ld   h, a                                        ; $41be: $67
	sbc  a                                           ; $41bf: $9f
	dec  c                                           ; $41c0: $0d
	nop                                              ; $41c1: $00
	ld   a, [bc]                                     ; $41c2: $0a
	rrca                                             ; $41c3: $0f
	inc  bc                                          ; $41c4: $03
	nop                                              ; $41c5: $00
	ld   bc, $7d58                                   ; $41c6: $01 $58 $7d
	sub  [hl]                                        ; $41c9: $96
	ld   d, h                                        ; $41ca: $54
	sbc  a                                           ; $41cb: $9f
	dec  c                                           ; $41cc: $0d
	ld   [$5d00], sp                                 ; $41cd: $08 $00 $5d
	and  c                                           ; $41d0: $a1
	sbc  a                                           ; $41d1: $9f
	dec  c                                           ; $41d2: $0d
	ld   l, e                                        ; $41d3: $6b
	sbc  d                                           ; $41d4: $9a
	ld   h, [hl]                                     ; $41d5: $66
	sub  c                                           ; $41d6: $91
	ld   d, b                                        ; $41d7: $50
	ld   a, e                                        ; $41d8: $7b
	sbc  a                                           ; $41d9: $9f
	dec  c                                           ; $41da: $0d
	nop                                              ; $41db: $00
	ld   a, [bc]                                     ; $41dc: $0a
	dec  c                                           ; $41dd: $0d
	nop                                              ; $41de: $00
	nop                                              ; $41df: $00
	rrca                                             ; $41e0: $0f
	nop                                              ; $41e1: $00
	ld   bc, $1e09                                   ; $41e2: $01 $09 $1e
	nop                                              ; $41e5: $00
	inc  e                                           ; $41e6: $1c
	inc  bc                                          ; $41e7: $03
	inc  bc                                          ; $41e8: $03
	inc  bc                                          ; $41e9: $03
	ld   bc, $0008                                   ; $41ea: $01 $08 $00
	ld   e, l                                        ; $41ed: $5d
	and  c                                           ; $41ee: $a1
	sbc  [hl]                                        ; $41ef: $9e
	dec  c                                           ; $41f0: $0d
	ld   e, b                                        ; $41f1: $58
	ld   a, l                                        ; $41f2: $7d
	sub  [hl]                                        ; $41f3: $96
	ld   d, h                                        ; $41f4: $54
	sbc  a                                           ; $41f5: $9f
	dec  c                                           ; $41f6: $0d
	nop                                              ; $41f7: $00
	ld   a, [bc]                                     ; $41f8: $0a
	rrca                                             ; $41f9: $0f
	nop                                              ; $41fa: $00
	ld   bc, $5801                                   ; $41fb: $01 $01 $58
	ld   a, l                                        ; $41fe: $7d
	sub  [hl]                                        ; $41ff: $96
	ld   d, h                                        ; $4200: $54
	ld   h, d                                        ; $4201: $62
	ld   h, h                                        ; $4202: $64
	ld   d, d                                        ; $4203: $52
	adc  h                                           ; $4204: $8c
	ld   h, a                                        ; $4205: $67
	sbc  a                                           ; $4206: $9f
	dec  c                                           ; $4207: $0d
	rst  JumpTable                                         ; $4208: $df
	db   $ec                                         ; $4209: $ec
	and  e                                           ; $420a: $a3
	ld   h, e                                        ; $420b: $63
	and  c                                           ; $420c: $a1
	sbc  a                                           ; $420d: $9f
	dec  c                                           ; $420e: $0d
	nop                                              ; $420f: $00
	ld   a, [bc]                                     ; $4210: $0a
	rrca                                             ; $4211: $0f
	inc  bc                                          ; $4212: $03
	inc  bc                                          ; $4213: $03
	ld   bc, $a502                                   ; $4214: $01 $02 $a5
	inc  b                                           ; $4217: $04
	xor  d                                           ; $4218: $aa
	sub  b                                           ; $4219: $90
	ld   [bc], a                                     ; $421a: $02
	jr   nz, jr_059_4221                             ; $421b: $20 $04

	xor  d                                           ; $421d: $aa
	sbc  [hl]                                        ; $421e: $9e
	dec  c                                           ; $421f: $0d
	ld   e, d                                        ; $4220: $5a

jr_059_4221:
	and  c                                           ; $4221: $a1
	ld   a, [hl]                                     ; $4222: $7e
	sbc  b                                           ; $4223: $98
	adc  h                                           ; $4224: $8c
	ld   h, l                                        ; $4225: $65
	sub  l                                           ; $4226: $95
	ld   d, h                                        ; $4227: $54
	sbc  a                                           ; $4228: $9f
	dec  c                                           ; $4229: $0d
	ld   l, e                                        ; $422a: $6b
	sbc  d                                           ; $422b: $9a
	ld   h, [hl]                                     ; $422c: $66
	sub  c                                           ; $422d: $91
	ld   d, b                                        ; $422e: $50
	ld   a, e                                        ; $422f: $7b
	sbc  a                                           ; $4230: $9f
	dec  c                                           ; $4231: $0d
	nop                                              ; $4232: $00
	ld   a, [bc]                                     ; $4233: $0a
	dec  c                                           ; $4234: $0d
	nop                                              ; $4235: $00
	nop                                              ; $4236: $00
	rrca                                             ; $4237: $0f
	nop                                              ; $4238: $00
	ld   bc, $1e09                                   ; $4239: $01 $09 $1e
	nop                                              ; $423c: $00
	nop                                              ; $423d: $00
	ld   [bc], a                                     ; $423e: $02
	rlca                                             ; $423f: $07
	ld   sp, $0300                                   ; $4240: $31 $00 $03
	inc  d                                           ; $4243: $14
	ld   bc, $2265                                   ; $4244: $01 $65 $22
	nop                                              ; $4247: $00
	rlca                                             ; $4248: $07
	ld   h, h                                        ; $4249: $64
	nop                                              ; $424a: $00
	inc  bc                                          ; $424b: $03
	inc  d                                           ; $424c: $14
	ld   bc, $2566                                   ; $424d: $01 $66 $25
	inc  bc                                          ; $4250: $03
	inc  d                                           ; $4251: $14
	ld   bc, $228c                                   ; $4252: $01 $8c $22
	inc  e                                           ; $4255: $1c
	nop                                              ; $4256: $00
	rlca                                             ; $4257: $07
	sub  d                                           ; $4258: $92
	nop                                              ; $4259: $00
	inc  bc                                          ; $425a: $03
	inc  d                                           ; $425b: $14
	ld   bc, $258c                                   ; $425c: $01 $8c $25
	inc  bc                                          ; $425f: $03
	inc  d                                           ; $4260: $14
	ld   bc, $22a0                                   ; $4261: $01 $a0 $22
	inc  e                                           ; $4264: $1c
	nop                                              ; $4265: $00
	rlca                                             ; $4266: $07
	jp   z, $0300                                    ; $4267: $ca $00 $03

	inc  d                                           ; $426a: $14
	ld   bc, $25a0                                   ; $426b: $01 $a0 $25
	nop                                              ; $426e: $00
	rrca                                             ; $426f: $0f
	nop                                              ; $4270: $00
	ld   bc, $5801                                   ; $4271: $01 $01 $58
	ld   a, l                                        ; $4274: $7d
	sub  [hl]                                        ; $4275: $96
	ld   d, h                                        ; $4276: $54
	sbc  [hl]                                        ; $4277: $9e
	and  e                                           ; $4278: $a3
	and  l                                           ; $4279: $a5
	db   $ec                                         ; $427a: $ec
	cp   d                                           ; $427b: $ba
	sbc  a                                           ; $427c: $9f
	dec  c                                           ; $427d: $0d
	nop                                              ; $427e: $00
	ld   a, [bc]                                     ; $427f: $0a
	inc  e                                           ; $4280: $1c
	inc  b                                           ; $4281: $04
	nop                                              ; $4282: $00
	nop                                              ; $4283: $00
	ld   bc, $a5a3                                   ; $4284: $01 $a3 $a5
	db   $ec                                         ; $4287: $ec
	cp   d                                           ; $4288: $ba
	sbc  [hl]                                        ; $4289: $9e
	ld   d, d                                        ; $428a: $52
	ld   l, e                                        ; $428b: $6b
	ld   e, d                                        ; $428c: $5a
	ld   h, l                                        ; $428d: $65
	ld   d, d                                        ; $428e: $52
	ld   a, h                                        ; $428f: $7c
	sbc  a                                           ; $4290: $9f
	dec  c                                           ; $4291: $0d
	adc  h                                           ; $4292: $8c
	ld   l, l                                        ; $4293: $6d
	ld   a, e                                        ; $4294: $7b
	sbc  a                                           ; $4295: $9f
	dec  c                                           ; $4296: $0d
	nop                                              ; $4297: $00
	ld   a, [bc]                                     ; $4298: $0a
	dec  c                                           ; $4299: $0d
	nop                                              ; $429a: $00
	nop                                              ; $429b: $00
	rrca                                             ; $429c: $0f
	nop                                              ; $429d: $00
	ld   bc, $1e09                                   ; $429e: $01 $09 $1e
	nop                                              ; $42a1: $00
	rrca                                             ; $42a2: $0f
	nop                                              ; $42a3: $00
	ld   bc, $040d                                   ; $42a4: $01 $0d $04
	nop                                              ; $42a7: $00
	ld   bc, $7d58                                   ; $42a8: $01 $58 $7d
	sub  [hl]                                        ; $42ab: $96
	ld   d, h                                        ; $42ac: $54
	sbc  [hl]                                        ; $42ad: $9e
	and  e                                           ; $42ae: $a3
	and  l                                           ; $42af: $a5
	db   $ec                                         ; $42b0: $ec
	cp   d                                           ; $42b1: $ba
	sbc  a                                           ; $42b2: $9f
	dec  c                                           ; $42b3: $0d
	nop                                              ; $42b4: $00
	ld   a, [bc]                                     ; $42b5: $0a
	rrca                                             ; $42b6: $0f
	inc  b                                           ; $42b7: $04
	nop                                              ; $42b8: $00
	ld   bc, $7d58                                   ; $42b9: $01 $58 $7d
	sub  [hl]                                        ; $42bc: $96
	ld   d, h                                        ; $42bd: $54
	sbc  a                                           ; $42be: $9f
	dec  c                                           ; $42bf: $0d
	adc  h                                           ; $42c0: $8c
	ld   l, l                                        ; $42c1: $6d
	ld   a, e                                        ; $42c2: $7b
	sbc  a                                           ; $42c3: $9f
	dec  c                                           ; $42c4: $0d
	nop                                              ; $42c5: $00
	ld   a, [bc]                                     ; $42c6: $0a
	dec  c                                           ; $42c7: $0d
	nop                                              ; $42c8: $00
	nop                                              ; $42c9: $00
	rrca                                             ; $42ca: $0f
	nop                                              ; $42cb: $00
	ld   bc, $1e09                                   ; $42cc: $01 $09 $1e
	nop                                              ; $42cf: $00
	rrca                                             ; $42d0: $0f
	nop                                              ; $42d1: $00
	ld   bc, $040d                                   ; $42d2: $01 $0d $04
	nop                                              ; $42d5: $00
	ld   bc, $7d58                                   ; $42d6: $01 $58 $7d
	sub  [hl]                                        ; $42d9: $96
	ld   d, h                                        ; $42da: $54
	sbc  [hl]                                        ; $42db: $9e
	and  e                                           ; $42dc: $a3
	and  l                                           ; $42dd: $a5
	db   $ec                                         ; $42de: $ec
	cp   d                                           ; $42df: $ba
	sbc  a                                           ; $42e0: $9f
	dec  c                                           ; $42e1: $0d
	nop                                              ; $42e2: $00
	ld   a, [bc]                                     ; $42e3: $0a
	inc  e                                           ; $42e4: $1c
	inc  b                                           ; $42e5: $04
	ld   bc, $0101                                   ; $42e6: $01 $01 $01
	ld   e, b                                        ; $42e9: $58
	ld   a, l                                        ; $42ea: $7d
	sub  [hl]                                        ; $42eb: $96
	ld   d, h                                        ; $42ec: $54
	sbc  a                                           ; $42ed: $9f
	dec  c                                           ; $42ee: $0d
	ld   l, a                                        ; $42ef: $6f
	ld   d, d                                        ; $42f0: $52
	ld   [bc], a                                     ; $42f1: $02
	inc  de                                          ; $42f2: $13
	ld   l, a                                        ; $42f3: $6f
	sub  c                                           ; $42f4: $91
	and  c                                           ; $42f5: $a1
	sbc  a                                           ; $42f6: $9f
	dec  c                                           ; $42f7: $0d
	adc  h                                           ; $42f8: $8c
	ld   l, l                                        ; $42f9: $6d
	ld   a, e                                        ; $42fa: $7b
	sbc  a                                           ; $42fb: $9f
	dec  c                                           ; $42fc: $0d
	nop                                              ; $42fd: $00
	ld   a, [bc]                                     ; $42fe: $0a
	dec  c                                           ; $42ff: $0d
	nop                                              ; $4300: $00
	nop                                              ; $4301: $00
	rrca                                             ; $4302: $0f
	nop                                              ; $4303: $00
	ld   bc, $1e09                                   ; $4304: $01 $09 $1e
	nop                                              ; $4307: $00
	inc  e                                           ; $4308: $1c
	inc  b                                           ; $4309: $04
	ld   bc, $0101                                   ; $430a: $01 $01 $01
	ld   l, a                                        ; $430d: $6f
	ld   d, d                                        ; $430e: $52
	ld   [bc], a                                     ; $430f: $02
	inc  de                                          ; $4310: $13
	ld   l, a                                        ; $4311: $6f
	sub  c                                           ; $4312: $91
	and  c                                           ; $4313: $a1
	sbc  [hl]                                        ; $4314: $9e
	ld   e, b                                        ; $4315: $58
	ld   a, l                                        ; $4316: $7d
	sub  [hl]                                        ; $4317: $96
	ld   d, h                                        ; $4318: $54
	sbc  a                                           ; $4319: $9f
	dec  c                                           ; $431a: $0d
	nop                                              ; $431b: $00
	ld   a, [bc]                                     ; $431c: $0a
	rrca                                             ; $431d: $0f
	nop                                              ; $431e: $00
	ld   bc, $5801                                   ; $431f: $01 $01 $58
	ld   a, l                                        ; $4322: $7d
	sub  [hl]                                        ; $4323: $96
	ld   d, h                                        ; $4324: $54
	sbc  [hl]                                        ; $4325: $9e
	and  e                                           ; $4326: $a3
	and  l                                           ; $4327: $a5
	db   $ec                                         ; $4328: $ec
	cp   d                                           ; $4329: $ba
	sbc  a                                           ; $432a: $9f
	dec  c                                           ; $432b: $0d
	nop                                              ; $432c: $00
	ld   a, [bc]                                     ; $432d: $0a
	rrca                                             ; $432e: $0f
	inc  b                                           ; $432f: $04
	ld   bc, $5b01                                   ; $4330: $01 $01 $5b
	sub  l                                           ; $4333: $95
	ld   d, h                                        ; $4334: $54
	sub  b                                           ; $4335: $90
	sbc  [hl]                                        ; $4336: $9e
	ld   d, b                                        ; $4337: $50
	ld   l, e                                        ; $4338: $6b
	adc  d                                           ; $4339: $8a
	ld   d, h                                        ; $433a: $54
	ld   a, e                                        ; $433b: $7b
	sbc  a                                           ; $433c: $9f
	dec  c                                           ; $433d: $0d
	ld   h, [hl]                                     ; $433e: $66
	sub  c                                           ; $433f: $91
	sbc  [hl]                                        ; $4340: $9e
	adc  h                                           ; $4341: $8c
	ld   l, l                                        ; $4342: $6d
	ld   a, e                                        ; $4343: $7b
	sbc  [hl]                                        ; $4344: $9e
	ld   l, a                                        ; $4345: $6f
	ld   d, d                                        ; $4346: $52
	ld   [bc], a                                     ; $4347: $02
	inc  de                                          ; $4348: $13
	ld   l, a                                        ; $4349: $6f
	sub  c                                           ; $434a: $91
	and  c                                           ; $434b: $a1
	sbc  a                                           ; $434c: $9f
	dec  c                                           ; $434d: $0d
	nop                                              ; $434e: $00
	ld   a, [bc]                                     ; $434f: $0a
	dec  c                                           ; $4350: $0d
	nop                                              ; $4351: $00
	nop                                              ; $4352: $00
	rrca                                             ; $4353: $0f
	nop                                              ; $4354: $00
	ld   bc, $1e09                                   ; $4355: $01 $09 $1e
	nop                                              ; $4358: $00
	nop                                              ; $4359: $00
	ld   [bc], a                                     ; $435a: $02
	rlca                                             ; $435b: $07
	ld   sp, $0300                                   ; $435c: $31 $00 $03
	ld   d, $01                                      ; $435f: $16 $01
	ld   h, l                                        ; $4361: $65
	ld   [hl+], a                                    ; $4362: $22
	nop                                              ; $4363: $00
	rlca                                             ; $4364: $07
	ld   l, c                                        ; $4365: $69
	nop                                              ; $4366: $00
	inc  bc                                          ; $4367: $03
	ld   d, $01                                      ; $4368: $16 $01
	ld   h, [hl]                                     ; $436a: $66
	dec  h                                           ; $436b: $25
	inc  bc                                          ; $436c: $03
	ld   d, $01                                      ; $436d: $16 $01
	adc  h                                           ; $436f: $8c
	ld   [hl+], a                                    ; $4370: $22
	inc  e                                           ; $4371: $1c
	nop                                              ; $4372: $00
	rlca                                             ; $4373: $07
	sbc  a                                           ; $4374: $9f
	nop                                              ; $4375: $00
	inc  bc                                          ; $4376: $03
	ld   d, $01                                      ; $4377: $16 $01
	adc  h                                           ; $4379: $8c
	dec  h                                           ; $437a: $25
	inc  bc                                          ; $437b: $03
	ld   d, $01                                      ; $437c: $16 $01
	and  b                                           ; $437e: $a0
	ld   [hl+], a                                    ; $437f: $22
	inc  e                                           ; $4380: $1c
	nop                                              ; $4381: $00
	rlca                                             ; $4382: $07
	reti                                             ; $4383: $d9


	nop                                              ; $4384: $00
	inc  bc                                          ; $4385: $03
	ld   d, $01                                      ; $4386: $16 $01
	and  b                                           ; $4388: $a0
	dec  h                                           ; $4389: $25
	nop                                              ; $438a: $00
	rrca                                             ; $438b: $0f
	nop                                              ; $438c: $00
	ld   bc, $ac01                                   ; $438d: $01 $01 $ac
	push af                                          ; $4390: $f5
	bit  4, e                                        ; $4391: $cb $63
	and  c                                           ; $4393: $a1
	sbc  a                                           ; $4394: $9f
	dec  c                                           ; $4395: $0d
	nop                                              ; $4396: $00
	ld   a, [bc]                                     ; $4397: $0a
	inc  e                                           ; $4398: $1c
	ld   b, $00                                      ; $4399: $06 $00
	nop                                              ; $439b: $00
	ld   bc, $999d                                   ; $439c: $01 $9d $99
	ld   d, d                                        ; $439f: $52
	sbc  a                                           ; $43a0: $9f
	ld   l, a                                        ; $43a1: $6f
	sub  l                                           ; $43a2: $95
	ld   d, d                                        ; $43a3: $52
	halt                                             ; $43a4: $76
	dec  b                                           ; $43a5: $05
	jr   z, jr_059_4404                              ; $43a6: $28 $5c

	ld   a, h                                        ; $43a8: $7c
	dec  c                                           ; $43a9: $0d
	inc  b                                           ; $43aa: $04
	di                                               ; $43ab: $f3
	ld   e, d                                        ; $43ac: $5a
	ld   d, b                                        ; $43ad: $50
	sbc  c                                           ; $43ae: $99
	and  c                                           ; $43af: $a1
	ld   l, [hl]                                     ; $43b0: $6e
	sbc  a                                           ; $43b1: $9f
	dec  c                                           ; $43b2: $0d
	adc  h                                           ; $43b3: $8c
	ld   l, l                                        ; $43b4: $6d
	ld   a, b                                        ; $43b5: $78
	sbc  a                                           ; $43b6: $9f
	dec  c                                           ; $43b7: $0d
	nop                                              ; $43b8: $00
	ld   a, [bc]                                     ; $43b9: $0a
	dec  c                                           ; $43ba: $0d
	nop                                              ; $43bb: $00
	nop                                              ; $43bc: $00
	rrca                                             ; $43bd: $0f
	nop                                              ; $43be: $00
	ld   bc, $1e09                                   ; $43bf: $01 $09 $1e
	nop                                              ; $43c2: $00
	rrca                                             ; $43c3: $0f
	nop                                              ; $43c4: $00
	ld   bc, $060d                                   ; $43c5: $01 $0d $06
	nop                                              ; $43c8: $00
	ld   bc, $f5ac                                   ; $43c9: $01 $ac $f5
	bit  4, e                                        ; $43cc: $cb $63
	and  c                                           ; $43ce: $a1
	sbc  a                                           ; $43cf: $9f
	dec  c                                           ; $43d0: $0d
	ld   e, b                                        ; $43d1: $58
	ld   a, l                                        ; $43d2: $7d
	sub  [hl]                                        ; $43d3: $96
	ld   d, h                                        ; $43d4: $54
	ld   h, d                                        ; $43d5: $62
	ld   h, h                                        ; $43d6: $64
	ld   d, d                                        ; $43d7: $52
	adc  h                                           ; $43d8: $8c
	ld   h, a                                        ; $43d9: $67
	sbc  a                                           ; $43da: $9f
	dec  c                                           ; $43db: $0d
	nop                                              ; $43dc: $00
	ld   a, [bc]                                     ; $43dd: $0a
	rrca                                             ; $43de: $0f
	ld   b, $00                                      ; $43df: $06 $00
	ld   bc, $7d58                                   ; $43e1: $01 $58 $7d
	sub  [hl]                                        ; $43e4: $96
	ld   d, h                                        ; $43e5: $54
	sbc  a                                           ; $43e6: $9f
	dec  c                                           ; $43e7: $0d
	ld   h, [hl]                                     ; $43e8: $66
	sub  c                                           ; $43e9: $91
	ld   d, b                                        ; $43ea: $50
	ld   a, b                                        ; $43eb: $78
	sbc  a                                           ; $43ec: $9f
	dec  c                                           ; $43ed: $0d
	nop                                              ; $43ee: $00
	ld   a, [bc]                                     ; $43ef: $0a
	dec  c                                           ; $43f0: $0d
	nop                                              ; $43f1: $00
	nop                                              ; $43f2: $00
	rrca                                             ; $43f3: $0f
	nop                                              ; $43f4: $00
	ld   bc, $1e09                                   ; $43f5: $01 $09 $1e
	nop                                              ; $43f8: $00
	rrca                                             ; $43f9: $0f
	nop                                              ; $43fa: $00
	ld   bc, $060d                                   ; $43fb: $01 $0d $06
	nop                                              ; $43fe: $00
	ld   bc, $f5ac                                   ; $43ff: $01 $ac $f5
	bit  4, e                                        ; $4402: $cb $63

jr_059_4404:
	and  c                                           ; $4404: $a1
	sbc  a                                           ; $4405: $9f
	dec  c                                           ; $4406: $0d
	ld   e, b                                        ; $4407: $58
	ld   a, l                                        ; $4408: $7d
	sub  [hl]                                        ; $4409: $96
	ld   d, h                                        ; $440a: $54
	ld   h, d                                        ; $440b: $62
	ld   h, h                                        ; $440c: $64
	ld   d, d                                        ; $440d: $52
	adc  h                                           ; $440e: $8c
	ld   h, a                                        ; $440f: $67
	sbc  a                                           ; $4410: $9f
	dec  c                                           ; $4411: $0d
	nop                                              ; $4412: $00
	ld   a, [bc]                                     ; $4413: $0a
	inc  e                                           ; $4414: $1c
	ld   b, $01                                      ; $4415: $06 $01
	ld   bc, $5801                                   ; $4417: $01 $01 $58
	ld   a, l                                        ; $441a: $7d
	sub  [hl]                                        ; $441b: $96
	ld   d, h                                        ; $441c: $54
	sbc  [hl]                                        ; $441d: $9e
	ld   [$9f00], sp                                 ; $441e: $08 $00 $9f
	dec  c                                           ; $4421: $0d
	ld   h, [hl]                                     ; $4422: $66
	sub  c                                           ; $4423: $91
	ld   d, b                                        ; $4424: $50
	ld   a, b                                        ; $4425: $78
	sbc  a                                           ; $4426: $9f
	dec  c                                           ; $4427: $0d
	nop                                              ; $4428: $00
	ld   a, [bc]                                     ; $4429: $0a
	dec  c                                           ; $442a: $0d
	nop                                              ; $442b: $00
	nop                                              ; $442c: $00
	rrca                                             ; $442d: $0f
	nop                                              ; $442e: $00
	ld   bc, $1e09                                   ; $442f: $01 $09 $1e
	nop                                              ; $4432: $00
	inc  e                                           ; $4433: $1c
	ld   b, $01                                      ; $4434: $06 $01
	ld   bc, $9601                                   ; $4436: $01 $01 $96
	ld   [hl], c                                     ; $4439: $71
	ld   a, [$0810]                                  ; $443a: $fa $10 $08
	nop                                              ; $443d: $00
	sbc  a                                           ; $443e: $9f
	dec  c                                           ; $443f: $0d
	ld   e, b                                        ; $4440: $58
	ld   a, l                                        ; $4441: $7d
	sub  [hl]                                        ; $4442: $96
	ld   d, h                                        ; $4443: $54
	sbc  a                                           ; $4444: $9f
	dec  c                                           ; $4445: $0d
	nop                                              ; $4446: $00
	ld   a, [bc]                                     ; $4447: $0a
	rrca                                             ; $4448: $0f
	nop                                              ; $4449: $00
	ld   bc, $5801                                   ; $444a: $01 $01 $58
	ld   a, l                                        ; $444d: $7d
	sub  [hl]                                        ; $444e: $96
	ld   d, h                                        ; $444f: $54
	ld   h, d                                        ; $4450: $62
	ld   h, h                                        ; $4451: $64
	ld   d, d                                        ; $4452: $52
	adc  h                                           ; $4453: $8c
	ld   h, a                                        ; $4454: $67
	sbc  a                                           ; $4455: $9f
	dec  c                                           ; $4456: $0d
	xor  h                                           ; $4457: $ac
	push af                                          ; $4458: $f5
	bit  4, e                                        ; $4459: $cb $63
	and  c                                           ; $445b: $a1
	sbc  a                                           ; $445c: $9f
	dec  c                                           ; $445d: $0d
	nop                                              ; $445e: $00
	ld   a, [bc]                                     ; $445f: $0a
	rrca                                             ; $4460: $0f
	ld   b, $01                                      ; $4461: $06 $01
	ld   bc, $a502                                   ; $4463: $01 $02 $a5
	inc  b                                           ; $4466: $04
	xor  d                                           ; $4467: $aa
	sub  b                                           ; $4468: $90
	ld   [bc], a                                     ; $4469: $02
	jr   nz, jr_059_4470                             ; $446a: $20 $04

	xor  d                                           ; $446c: $aa
	sbc  [hl]                                        ; $446d: $9e
	dec  c                                           ; $446e: $0d
	ld   e, d                                        ; $446f: $5a

jr_059_4470:
	and  c                                           ; $4470: $a1
	ld   a, [hl]                                     ; $4471: $7e
	sbc  e                                           ; $4472: $9b
	ld   d, h                                        ; $4473: $54
	ld   l, d                                        ; $4474: $6a
	sbc  a                                           ; $4475: $9f
	dec  c                                           ; $4476: $0d
	ld   h, [hl]                                     ; $4477: $66
	sub  c                                           ; $4478: $91
	ld   d, b                                        ; $4479: $50
	ld   a, b                                        ; $447a: $78
	sbc  a                                           ; $447b: $9f
	dec  c                                           ; $447c: $0d
	nop                                              ; $447d: $00
	ld   a, [bc]                                     ; $447e: $0a
	dec  c                                           ; $447f: $0d
	nop                                              ; $4480: $00
	nop                                              ; $4481: $00
	rrca                                             ; $4482: $0f
	nop                                              ; $4483: $00
	ld   bc, $1e09                                   ; $4484: $01 $09 $1e
	nop                                              ; $4487: $00
	nop                                              ; $4488: $00
	ld   [bc], a                                     ; $4489: $02
	rlca                                             ; $448a: $07
	ld   sp, $0300                                   ; $448b: $31 $00 $03
	dec  d                                           ; $448e: $15
	ld   bc, $2265                                   ; $448f: $01 $65 $22
	nop                                              ; $4492: $00
	rlca                                             ; $4493: $07
	ld   l, c                                        ; $4494: $69
	nop                                              ; $4495: $00
	inc  bc                                          ; $4496: $03
	dec  d                                           ; $4497: $15
	ld   bc, $2566                                   ; $4498: $01 $66 $25
	inc  bc                                          ; $449b: $03
	dec  d                                           ; $449c: $15
	ld   bc, $228c                                   ; $449d: $01 $8c $22
	inc  e                                           ; $44a0: $1c
	nop                                              ; $44a1: $00
	rlca                                             ; $44a2: $07
	and  b                                           ; $44a3: $a0
	nop                                              ; $44a4: $00
	inc  bc                                          ; $44a5: $03
	dec  d                                           ; $44a6: $15
	ld   bc, $258c                                   ; $44a7: $01 $8c $25
	inc  bc                                          ; $44aa: $03
	dec  d                                           ; $44ab: $15
	ld   bc, $22a0                                   ; $44ac: $01 $a0 $22
	inc  e                                           ; $44af: $1c
	nop                                              ; $44b0: $00
	rlca                                             ; $44b1: $07
	db   $dd                                         ; $44b2: $dd
	nop                                              ; $44b3: $00
	inc  bc                                          ; $44b4: $03
	dec  d                                           ; $44b5: $15
	ld   bc, $25a0                                   ; $44b6: $01 $a0 $25
	nop                                              ; $44b9: $00
	rrca                                             ; $44ba: $0f
	nop                                              ; $44bb: $00
	ld   bc, $0201                                   ; $44bc: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44bf: $cf
	dec  b                                           ; $44c0: $05
	ld   a, [de]                                     ; $44c1: $1a
	ld   h, e                                        ; $44c2: $63
	and  c                                           ; $44c3: $a1
	sbc  a                                           ; $44c4: $9f
	dec  c                                           ; $44c5: $0d
	nop                                              ; $44c6: $00
	ld   a, [bc]                                     ; $44c7: $0a
	inc  e                                           ; $44c8: $1c
	dec  b                                           ; $44c9: $05
	nop                                              ; $44ca: $00
	nop                                              ; $44cb: $00
	ld   bc, $a502                                   ; $44cc: $01 $02 $a5
	ld   l, a                                        ; $44cf: $6f
	sub  l                                           ; $44d0: $95
	ld   [hl], c                                     ; $44d1: $71
	halt                                             ; $44d2: $76
	sbc  [hl]                                        ; $44d3: $9e
	inc  b                                           ; $44d4: $04
	ld   c, $04                                      ; $44d5: $0e $04
	adc  h                                           ; $44d7: $8c
	ld   a, b                                        ; $44d8: $78
	and  c                                           ; $44d9: $a1
	sub  d                                           ; $44da: $92
	sbc  a                                           ; $44db: $9f
	dec  c                                           ; $44dc: $0d
	ld   h, a                                        ; $44dd: $67
	adc  h                                           ; $44de: $8c
	and  c                                           ; $44df: $a1
	ld   a, b                                        ; $44e0: $78
	db   $fc                                         ; $44e1: $fc
	sbc  a                                           ; $44e2: $9f
	adc  c                                           ; $44e3: $89
	ld   a, b                                        ; $44e4: $78
	sbc  a                                           ; $44e5: $9f
	dec  c                                           ; $44e6: $0d
	nop                                              ; $44e7: $00
	ld   a, [bc]                                     ; $44e8: $0a
	dec  c                                           ; $44e9: $0d
	nop                                              ; $44ea: $00
	nop                                              ; $44eb: $00
	rrca                                             ; $44ec: $0f
	nop                                              ; $44ed: $00
	ld   bc, $1e09                                   ; $44ee: $01 $09 $1e
	nop                                              ; $44f1: $00
	rrca                                             ; $44f2: $0f
	nop                                              ; $44f3: $00
	ld   bc, $050d                                   ; $44f4: $01 $0d $05
	nop                                              ; $44f7: $00
	ld   bc, $cf02                                   ; $44f8: $01 $02 $cf
	dec  b                                           ; $44fb: $05
	ld   a, [de]                                     ; $44fc: $1a
	ld   h, e                                        ; $44fd: $63
	and  c                                           ; $44fe: $a1
	sbc  a                                           ; $44ff: $9f
	dec  c                                           ; $4500: $0d
	ld   e, b                                        ; $4501: $58
	ld   a, l                                        ; $4502: $7d
	sub  [hl]                                        ; $4503: $96
	ld   d, h                                        ; $4504: $54
	ld   h, d                                        ; $4505: $62
	ld   h, h                                        ; $4506: $64
	ld   d, d                                        ; $4507: $52
	adc  h                                           ; $4508: $8c
	ld   h, a                                        ; $4509: $67
	sbc  a                                           ; $450a: $9f
	dec  c                                           ; $450b: $0d
	nop                                              ; $450c: $00
	ld   a, [bc]                                     ; $450d: $0a
	rrca                                             ; $450e: $0f
	dec  b                                           ; $450f: $05
	nop                                              ; $4510: $00
	ld   bc, $7d58                                   ; $4511: $01 $58 $7d
	sub  [hl]                                        ; $4514: $96
	ld   d, h                                        ; $4515: $54
	ld   h, e                                        ; $4516: $63
	and  c                                           ; $4517: $a1
	sbc  a                                           ; $4518: $9f
	dec  c                                           ; $4519: $0d
	adc  c                                           ; $451a: $89
	ld   a, b                                        ; $451b: $78
	sbc  a                                           ; $451c: $9f
	dec  c                                           ; $451d: $0d
	nop                                              ; $451e: $00
	ld   a, [bc]                                     ; $451f: $0a
	dec  c                                           ; $4520: $0d
	nop                                              ; $4521: $00
	nop                                              ; $4522: $00
	rrca                                             ; $4523: $0f
	nop                                              ; $4524: $00
	ld   bc, $1e09                                   ; $4525: $01 $09 $1e
	nop                                              ; $4528: $00
	rrca                                             ; $4529: $0f
	nop                                              ; $452a: $00
	ld   bc, $050d                                   ; $452b: $01 $0d $05
	nop                                              ; $452e: $00
	ld   bc, $cf02                                   ; $452f: $01 $02 $cf
	dec  b                                           ; $4532: $05
	ld   a, [de]                                     ; $4533: $1a
	ld   h, e                                        ; $4534: $63
	and  c                                           ; $4535: $a1
	sbc  a                                           ; $4536: $9f
	dec  c                                           ; $4537: $0d
	ld   e, b                                        ; $4538: $58
	ld   a, l                                        ; $4539: $7d
	sub  [hl]                                        ; $453a: $96
	ld   d, h                                        ; $453b: $54
	ld   h, d                                        ; $453c: $62
	ld   h, h                                        ; $453d: $64
	ld   d, d                                        ; $453e: $52
	adc  h                                           ; $453f: $8c
	ld   h, a                                        ; $4540: $67
	sbc  a                                           ; $4541: $9f
	dec  c                                           ; $4542: $0d
	nop                                              ; $4543: $00
	ld   a, [bc]                                     ; $4544: $0a
	inc  e                                           ; $4545: $1c
	dec  b                                           ; $4546: $05
	ld   bc, $0101                                   ; $4547: $01 $01 $01
	ld   [$7d00], sp                                 ; $454a: $08 $00 $7d
	and  c                                           ; $454d: $a1
	sbc  a                                           ; $454e: $9f
	dec  c                                           ; $454f: $0d
	ld   e, b                                        ; $4550: $58
	ld   a, l                                        ; $4551: $7d
	sub  [hl]                                        ; $4552: $96
	ld   d, h                                        ; $4553: $54
	ld   h, e                                        ; $4554: $63
	and  c                                           ; $4555: $a1
	sbc  a                                           ; $4556: $9f
	adc  c                                           ; $4557: $89
	ld   a, b                                        ; $4558: $78
	sbc  a                                           ; $4559: $9f
	dec  c                                           ; $455a: $0d
	nop                                              ; $455b: $00
	ld   a, [bc]                                     ; $455c: $0a
	dec  c                                           ; $455d: $0d
	nop                                              ; $455e: $00
	nop                                              ; $455f: $00
	rrca                                             ; $4560: $0f
	nop                                              ; $4561: $00
	ld   bc, $1e09                                   ; $4562: $01 $09 $1e
	nop                                              ; $4565: $00
	inc  e                                           ; $4566: $1c
	dec  b                                           ; $4567: $05
	ld   bc, $0101                                   ; $4568: $01 $01 $01
	ld   e, b                                        ; $456b: $58
	ld   a, l                                        ; $456c: $7d
	sub  [hl]                                        ; $456d: $96
	ld   d, h                                        ; $456e: $54
	ld   h, e                                        ; $456f: $63
	and  c                                           ; $4570: $a1
	sbc  a                                           ; $4571: $9f
	dec  c                                           ; $4572: $0d
	ld   [$7d00], sp                                 ; $4573: $08 $00 $7d
	and  c                                           ; $4576: $a1
	sbc  a                                           ; $4577: $9f
	dec  c                                           ; $4578: $0d
	nop                                              ; $4579: $00
	ld   a, [bc]                                     ; $457a: $0a
	rrca                                             ; $457b: $0f
	nop                                              ; $457c: $00
	ld   bc, $5801                                   ; $457d: $01 $01 $58
	ld   a, l                                        ; $4580: $7d
	sub  [hl]                                        ; $4581: $96
	ld   d, h                                        ; $4582: $54
	ld   h, d                                        ; $4583: $62
	ld   h, h                                        ; $4584: $64
	ld   d, d                                        ; $4585: $52
	adc  h                                           ; $4586: $8c
	ld   h, a                                        ; $4587: $67
	sbc  a                                           ; $4588: $9f
	dec  c                                           ; $4589: $0d
	ld   [bc], a                                     ; $458a: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $458b: $cf
	dec  b                                           ; $458c: $05
	ld   a, [de]                                     ; $458d: $1a
	ld   h, e                                        ; $458e: $63
	and  c                                           ; $458f: $a1
	sbc  a                                           ; $4590: $9f
	dec  c                                           ; $4591: $0d
	nop                                              ; $4592: $00
	ld   a, [bc]                                     ; $4593: $0a
	rrca                                             ; $4594: $0f
	dec  b                                           ; $4595: $05
	ld   bc, $0201                                   ; $4596: $01 $01 $02
	and  l                                           ; $4599: $a5
	inc  b                                           ; $459a: $04
	xor  d                                           ; $459b: $aa
	sub  b                                           ; $459c: $90
	ret  nc                                          ; $459d: $d0

	db   $ec                                         ; $459e: $ec
	ld   e, e                                        ; $459f: $5b
	ld   [hl], c                                     ; $45a0: $71
	ld   [hl], h                                     ; $45a1: $74
	ld   [bc], a                                     ; $45a2: $02
	ld   a, a                                        ; $45a3: $7f
	ld   h, c                                        ; $45a4: $61
	ld   a, b                                        ; $45a5: $78
	sbc  a                                           ; $45a6: $9f
	dec  c                                           ; $45a7: $0d
	adc  c                                           ; $45a8: $89
	ld   a, b                                        ; $45a9: $78
	sbc  a                                           ; $45aa: $9f
	dec  c                                           ; $45ab: $0d
	nop                                              ; $45ac: $00
	ld   a, [bc]                                     ; $45ad: $0a
	dec  c                                           ; $45ae: $0d
	nop                                              ; $45af: $00
	nop                                              ; $45b0: $00
	rrca                                             ; $45b1: $0f
	nop                                              ; $45b2: $00
	ld   bc, $1e09                                   ; $45b3: $01 $09 $1e
	nop                                              ; $45b6: $00
	nop                                              ; $45b7: $00
	ld   [bc], a                                     ; $45b8: $02
	rlca                                             ; $45b9: $07
	ld   sp, $0300                                   ; $45ba: $31 $00 $03
	ld   [de], a                                     ; $45bd: $12
	ld   bc, $2364                                   ; $45be: $01 $64 $23
	nop                                              ; $45c1: $00
	rlca                                             ; $45c2: $07
	ld   l, c                                        ; $45c3: $69
	nop                                              ; $45c4: $00
	inc  bc                                          ; $45c5: $03
	ld   [de], a                                     ; $45c6: $12
	ld   bc, $2565                                   ; $45c7: $01 $65 $25
	inc  bc                                          ; $45ca: $03
	ld   [de], a                                     ; $45cb: $12
	ld   bc, $22a0                                   ; $45cc: $01 $a0 $22
	inc  e                                           ; $45cf: $1c
	nop                                              ; $45d0: $00
	rlca                                             ; $45d1: $07
	sbc  c                                           ; $45d2: $99
	nop                                              ; $45d3: $00
	inc  bc                                          ; $45d4: $03
	ld   [de], a                                     ; $45d5: $12
	ld   bc, $25a0                                   ; $45d6: $01 $a0 $25
	inc  bc                                          ; $45d9: $03
	ld   [de], a                                     ; $45da: $12
	ld   bc, $22b4                                   ; $45db: $01 $b4 $22
	inc  e                                           ; $45de: $1c
	nop                                              ; $45df: $00
	rlca                                             ; $45e0: $07
	reti                                             ; $45e1: $d9


	nop                                              ; $45e2: $00
	inc  bc                                          ; $45e3: $03
	ld   [de], a                                     ; $45e4: $12
	ld   bc, $25b4                                   ; $45e5: $01 $b4 $25
	nop                                              ; $45e8: $00
	rrca                                             ; $45e9: $0f
	nop                                              ; $45ea: $00
	ld   bc, $6701                                   ; $45eb: $01 $01 $67
	adc  l                                           ; $45ee: $8d
	sbc  d                                           ; $45ef: $9a
	ld   h, e                                        ; $45f0: $63
	and  c                                           ; $45f1: $a1
	sbc  a                                           ; $45f2: $9f
	dec  c                                           ; $45f3: $0d
	nop                                              ; $45f4: $00
	ld   a, [bc]                                     ; $45f5: $0a
	inc  e                                           ; $45f6: $1c
	ld   [bc], a                                     ; $45f7: $02
	nop                                              ; $45f8: $00
	nop                                              ; $45f9: $00
	ld   bc, $8c52                                   ; $45fa: $01 $52 $8c
	sbc  [hl]                                        ; $45fd: $9e
	inc  bc                                          ; $45fe: $03
	ld   l, e                                        ; $45ff: $6b
	ld   e, d                                        ; $4600: $5a
	inc  b                                           ; $4601: $04
	sbc  c                                           ; $4602: $99
	ld   l, c                                        ; $4603: $69
	adc  h                                           ; $4604: $8c
	ld   l, c                                        ; $4605: $69
	and  c                                           ; $4606: $a1
	ld   a, h                                        ; $4607: $7c
	sbc  a                                           ; $4608: $9f
	dec  c                                           ; $4609: $0d
	ld   d, b                                        ; $460a: $50
	halt                                             ; $460b: $76
	ld   a, c                                        ; $460c: $79
	ld   h, l                                        ; $460d: $65
	ld   [hl], h                                     ; $460e: $74
	ld   e, l                                        ; $460f: $5d
	ld   l, [hl]                                     ; $4610: $6e
	ld   h, e                                        ; $4611: $63
	ld   d, d                                        ; $4612: $52
	ld   a, b                                        ; $4613: $78
	sbc  a                                           ; $4614: $9f
	dec  c                                           ; $4615: $0d
	nop                                              ; $4616: $00
	ld   a, [bc]                                     ; $4617: $0a
	dec  c                                           ; $4618: $0d
	nop                                              ; $4619: $00
	nop                                              ; $461a: $00
	rrca                                             ; $461b: $0f
	nop                                              ; $461c: $00
	ld   bc, $1e09                                   ; $461d: $01 $09 $1e
	nop                                              ; $4620: $00
	dec  c                                           ; $4621: $0d
	ld   [bc], a                                     ; $4622: $02
	nop                                              ; $4623: $00
	rrca                                             ; $4624: $0f
	nop                                              ; $4625: $00
	ld   bc, $6701                                   ; $4626: $01 $01 $67
	adc  l                                           ; $4629: $8d
	sbc  d                                           ; $462a: $9a
	ld   h, e                                        ; $462b: $63
	and  c                                           ; $462c: $a1
	sbc  a                                           ; $462d: $9f
	dec  c                                           ; $462e: $0d
	ld   e, b                                        ; $462f: $58
	ld   a, l                                        ; $4630: $7d
	sub  [hl]                                        ; $4631: $96
	ld   d, h                                        ; $4632: $54
	ld   h, d                                        ; $4633: $62
	ld   h, h                                        ; $4634: $64
	ld   d, d                                        ; $4635: $52
	adc  h                                           ; $4636: $8c
	ld   h, a                                        ; $4637: $67
	sbc  a                                           ; $4638: $9f
	dec  c                                           ; $4639: $0d
	nop                                              ; $463a: $00
	ld   a, [bc]                                     ; $463b: $0a
	rrca                                             ; $463c: $0f
	ld   [bc], a                                     ; $463d: $02
	nop                                              ; $463e: $00
	ld   bc, $7d58                                   ; $463f: $01 $58 $7d
	sub  [hl]                                        ; $4642: $96
	ld   d, h                                        ; $4643: $54
	sbc  a                                           ; $4644: $9f
	dec  c                                           ; $4645: $0d
	nop                                              ; $4646: $00
	ld   a, [bc]                                     ; $4647: $0a
	dec  c                                           ; $4648: $0d
	nop                                              ; $4649: $00
	nop                                              ; $464a: $00
	rrca                                             ; $464b: $0f
	nop                                              ; $464c: $00
	ld   bc, $1e09                                   ; $464d: $01 $09 $1e
	nop                                              ; $4650: $00
	dec  c                                           ; $4651: $0d
	ld   [bc], a                                     ; $4652: $02
	nop                                              ; $4653: $00
	rrca                                             ; $4654: $0f
	nop                                              ; $4655: $00
	ld   bc, $6701                                   ; $4656: $01 $01 $67
	adc  l                                           ; $4659: $8d
	sbc  d                                           ; $465a: $9a
	ld   h, e                                        ; $465b: $63
	and  c                                           ; $465c: $a1
	sbc  a                                           ; $465d: $9f
	dec  c                                           ; $465e: $0d
	ld   e, b                                        ; $465f: $58
	ld   a, l                                        ; $4660: $7d
	sub  [hl]                                        ; $4661: $96
	ld   d, h                                        ; $4662: $54
	ld   h, d                                        ; $4663: $62
	ld   h, h                                        ; $4664: $64
	ld   d, d                                        ; $4665: $52
	adc  h                                           ; $4666: $8c
	ld   h, a                                        ; $4667: $67
	sbc  a                                           ; $4668: $9f
	dec  c                                           ; $4669: $0d
	nop                                              ; $466a: $00
	ld   a, [bc]                                     ; $466b: $0a
	inc  e                                           ; $466c: $1c
	ld   [bc], a                                     ; $466d: $02
	ld   bc, $0101                                   ; $466e: $01 $01 $01
	ld   e, b                                        ; $4671: $58
	ld   a, l                                        ; $4672: $7d
	sub  [hl]                                        ; $4673: $96
	ld   d, h                                        ; $4674: $54
	sbc  a                                           ; $4675: $9f
	dec  c                                           ; $4676: $0d
	ld   [$6300], sp                                 ; $4677: $08 $00 $63
	and  c                                           ; $467a: $a1
	sbc  a                                           ; $467b: $9f
	dec  c                                           ; $467c: $0d
	ld   [hl], l                                     ; $467d: $75
	ld   a, l                                        ; $467e: $7d
	inc  bc                                          ; $467f: $03
	add  e                                           ; $4680: $83
	dec  b                                           ; $4681: $05
	dec  c                                           ; $4682: $0d
	rst  $38                                         ; $4683: $ff
	rst  $38                                         ; $4684: $ff
	dec  c                                           ; $4685: $0d
	nop                                              ; $4686: $00
	ld   a, [bc]                                     ; $4687: $0a
	dec  c                                           ; $4688: $0d
	nop                                              ; $4689: $00
	nop                                              ; $468a: $00
	rrca                                             ; $468b: $0f
	nop                                              ; $468c: $00
	ld   bc, $1e09                                   ; $468d: $01 $09 $1e
	nop                                              ; $4690: $00
	inc  e                                           ; $4691: $1c
	ld   [bc], a                                     ; $4692: $02
	ld   bc, $0101                                   ; $4693: $01 $01 $01
	ld   [$6300], sp                                 ; $4696: $08 $00 $63
	and  c                                           ; $4699: $a1
	sbc  a                                           ; $469a: $9f
	dec  c                                           ; $469b: $0d
	ld   e, b                                        ; $469c: $58
	ld   a, l                                        ; $469d: $7d
	sub  [hl]                                        ; $469e: $96
	ld   d, h                                        ; $469f: $54
	sbc  a                                           ; $46a0: $9f
	dec  c                                           ; $46a1: $0d
	nop                                              ; $46a2: $00
	ld   a, [bc]                                     ; $46a3: $0a
	rrca                                             ; $46a4: $0f
	nop                                              ; $46a5: $00
	ld   bc, $5801                                   ; $46a6: $01 $01 $58
	ld   a, l                                        ; $46a9: $7d
	sub  [hl]                                        ; $46aa: $96
	ld   d, h                                        ; $46ab: $54
	ld   h, d                                        ; $46ac: $62
	ld   h, h                                        ; $46ad: $64
	ld   d, d                                        ; $46ae: $52
	adc  h                                           ; $46af: $8c
	ld   h, a                                        ; $46b0: $67
	sbc  a                                           ; $46b1: $9f
	dec  c                                           ; $46b2: $0d
	ld   h, a                                        ; $46b3: $67
	adc  l                                           ; $46b4: $8d
	sbc  d                                           ; $46b5: $9a
	ld   h, e                                        ; $46b6: $63
	and  c                                           ; $46b7: $a1
	sbc  a                                           ; $46b8: $9f
	dec  c                                           ; $46b9: $0d
	nop                                              ; $46ba: $00
	ld   a, [bc]                                     ; $46bb: $0a
	rrca                                             ; $46bc: $0f
	ld   [bc], a                                     ; $46bd: $02
	ld   bc, $0201                                   ; $46be: $01 $01 $02
	and  l                                           ; $46c1: $a5
	inc  b                                           ; $46c2: $04
	xor  d                                           ; $46c3: $aa
	sub  b                                           ; $46c4: $90
	ld   [bc], a                                     ; $46c5: $02
	jr   nz, jr_059_46cc                             ; $46c6: $20 $04

	xor  d                                           ; $46c8: $aa
	sbc  [hl]                                        ; $46c9: $9e
	dec  c                                           ; $46ca: $0d
	ld   e, d                                        ; $46cb: $5a

jr_059_46cc:
	and  c                                           ; $46cc: $a1
	ld   a, [hl]                                     ; $46cd: $7e
	sbc  b                                           ; $46ce: $98
	ld   a, b                                        ; $46cf: $78
	ld   h, e                                        ; $46d0: $63
	ld   d, d                                        ; $46d1: $52
	sbc  a                                           ; $46d2: $9f
	dec  c                                           ; $46d3: $0d
	ld   [hl], l                                     ; $46d4: $75
	ld   a, l                                        ; $46d5: $7d
	inc  bc                                          ; $46d6: $03
	add  e                                           ; $46d7: $83
	dec  b                                           ; $46d8: $05
	dec  c                                           ; $46d9: $0d
	rst  $38                                         ; $46da: $ff
	rst  $38                                         ; $46db: $ff
	dec  c                                           ; $46dc: $0d
	nop                                              ; $46dd: $00
	ld   a, [bc]                                     ; $46de: $0a
	dec  c                                           ; $46df: $0d
	nop                                              ; $46e0: $00
	nop                                              ; $46e1: $00
	rrca                                             ; $46e2: $0f
	nop                                              ; $46e3: $00
	ld   bc, $1e09                                   ; $46e4: $01 $09 $1e
	nop                                              ; $46e7: $00
	nop                                              ; $46e8: $00
	ld   [bc], a                                     ; $46e9: $02
	rlca                                             ; $46ea: $07
	ld   sp, $0300                                   ; $46eb: $31 $00 $03
	ld   de, $6501                                   ; $46ee: $11 $01 $65
	ld   [hl+], a                                    ; $46f1: $22
	nop                                              ; $46f2: $00
	rlca                                             ; $46f3: $07
	ld   l, b                                        ; $46f4: $68
	nop                                              ; $46f5: $00
	inc  bc                                          ; $46f6: $03
	ld   de, $6501                                   ; $46f7: $11 $01 $65
	dec  h                                           ; $46fa: $25
	inc  bc                                          ; $46fb: $03
	ld   de, $a001                                   ; $46fc: $11 $01 $a0
	ld   [hl+], a                                    ; $46ff: $22
	inc  e                                           ; $4700: $1c
	nop                                              ; $4701: $00
	rlca                                             ; $4702: $07
	and  e                                           ; $4703: $a3
	nop                                              ; $4704: $00
	inc  bc                                          ; $4705: $03
	ld   de, $a001                                   ; $4706: $11 $01 $a0
	dec  h                                           ; $4709: $25
	inc  bc                                          ; $470a: $03
	ld   de, $b401                                   ; $470b: $11 $01 $b4
	ld   [hl+], a                                    ; $470e: $22
	inc  e                                           ; $470f: $1c
	nop                                              ; $4710: $00
	rlca                                             ; $4711: $07
	push hl                                          ; $4712: $e5
	nop                                              ; $4713: $00
	inc  bc                                          ; $4714: $03
	ld   de, $b401                                   ; $4715: $11 $01 $b4
	dec  h                                           ; $4718: $25
	nop                                              ; $4719: $00
	rrca                                             ; $471a: $0f
	nop                                              ; $471b: $00
	ld   bc, $6301                                   ; $471c: $01 $01 $63
	ld   e, l                                        ; $471f: $5d
	sub  a                                           ; $4720: $97
	ld   h, e                                        ; $4721: $63
	and  c                                           ; $4722: $a1
	sbc  a                                           ; $4723: $9f
	dec  c                                           ; $4724: $0d
	nop                                              ; $4725: $00
	ld   a, [bc]                                     ; $4726: $0a
	inc  e                                           ; $4727: $1c
	ld   bc, $0000                                   ; $4728: $01 $00 $00
	ld   bc, $8f62                                   ; $472b: $01 $62 $8f
	and  c                                           ; $472e: $a1
	ld   a, b                                        ; $472f: $78
	ld   h, e                                        ; $4730: $63
	ld   d, d                                        ; $4731: $52
	sbc  a                                           ; $4732: $9f
	dec  c                                           ; $4733: $0d
	ld   d, d                                        ; $4734: $52
	adc  h                                           ; $4735: $8c
	dec  b                                           ; $4736: $05
	jr   z, jr_059_478b                              ; $4737: $28 $52

	ld   [hl], l                                     ; $4739: $75
	sbc  c                                           ; $473a: $99
	and  c                                           ; $473b: $a1
	ld   [hl], l                                     ; $473c: $75
	ld   h, a                                        ; $473d: $67
	sbc  a                                           ; $473e: $9f
	dec  c                                           ; $473f: $0d
	ld   l, e                                        ; $4740: $6b
	sbc  d                                           ; $4741: $9a
	ld   [hl], l                                     ; $4742: $75
	ld   a, l                                        ; $4743: $7d
	sbc  a                                           ; $4744: $9f
	dec  c                                           ; $4745: $0d
	nop                                              ; $4746: $00
	ld   a, [bc]                                     ; $4747: $0a
	dec  c                                           ; $4748: $0d
	nop                                              ; $4749: $00
	nop                                              ; $474a: $00
	rrca                                             ; $474b: $0f
	nop                                              ; $474c: $00
	ld   bc, $1e09                                   ; $474d: $01 $09 $1e
	nop                                              ; $4750: $00
	rrca                                             ; $4751: $0f
	nop                                              ; $4752: $00
	ld   bc, $010d                                   ; $4753: $01 $0d $01
	nop                                              ; $4756: $00
	ld   bc, $5d63                                   ; $4757: $01 $63 $5d
	sub  a                                           ; $475a: $97
	ld   h, e                                        ; $475b: $63
	and  c                                           ; $475c: $a1
	sbc  a                                           ; $475d: $9f
	dec  c                                           ; $475e: $0d
	ld   e, b                                        ; $475f: $58
	ld   a, l                                        ; $4760: $7d
	sub  [hl]                                        ; $4761: $96
	ld   d, h                                        ; $4762: $54
	ld   h, d                                        ; $4763: $62
	ld   h, h                                        ; $4764: $64
	ld   d, d                                        ; $4765: $52
	adc  h                                           ; $4766: $8c
	ld   h, a                                        ; $4767: $67
	sbc  a                                           ; $4768: $9f
	dec  c                                           ; $4769: $0d
	nop                                              ; $476a: $00
	ld   a, [bc]                                     ; $476b: $0a
	rrca                                             ; $476c: $0f
	ld   bc, $0100                                   ; $476d: $01 $00 $01
	ld   e, b                                        ; $4770: $58
	ld   a, l                                        ; $4771: $7d
	sub  [hl]                                        ; $4772: $96
	ld   d, h                                        ; $4773: $54
	ld   h, d                                        ; $4774: $62
	ld   h, h                                        ; $4775: $64
	ld   d, d                                        ; $4776: $52
	adc  h                                           ; $4777: $8c
	ld   h, a                                        ; $4778: $67
	sbc  a                                           ; $4779: $9f
	dec  c                                           ; $477a: $0d
	ld   l, e                                        ; $477b: $6b
	sbc  d                                           ; $477c: $9a
	ld   [hl], l                                     ; $477d: $75
	ld   a, l                                        ; $477e: $7d
	sbc  a                                           ; $477f: $9f
	dec  c                                           ; $4780: $0d
	nop                                              ; $4781: $00
	ld   a, [bc]                                     ; $4782: $0a
	dec  c                                           ; $4783: $0d
	nop                                              ; $4784: $00
	nop                                              ; $4785: $00
	rrca                                             ; $4786: $0f
	nop                                              ; $4787: $00
	ld   bc, $1e09                                   ; $4788: $01 $09 $1e

jr_059_478b:
	nop                                              ; $478b: $00
	rrca                                             ; $478c: $0f
	nop                                              ; $478d: $00
	ld   bc, $010d                                   ; $478e: $01 $0d $01
	nop                                              ; $4791: $00
	ld   bc, $5d63                                   ; $4792: $01 $63 $5d
	sub  a                                           ; $4795: $97
	ld   h, e                                        ; $4796: $63
	and  c                                           ; $4797: $a1
	sbc  a                                           ; $4798: $9f
	dec  c                                           ; $4799: $0d
	ld   e, b                                        ; $479a: $58
	ld   a, l                                        ; $479b: $7d
	sub  [hl]                                        ; $479c: $96
	ld   d, h                                        ; $479d: $54
	ld   h, d                                        ; $479e: $62
	ld   h, h                                        ; $479f: $64
	ld   d, d                                        ; $47a0: $52
	adc  h                                           ; $47a1: $8c
	ld   h, a                                        ; $47a2: $67
	sbc  a                                           ; $47a3: $9f
	dec  c                                           ; $47a4: $0d
	nop                                              ; $47a5: $00
	ld   a, [bc]                                     ; $47a6: $0a
	inc  e                                           ; $47a7: $1c
	ld   bc, $0101                                   ; $47a8: $01 $01 $01
	ld   bc, $7d58                                   ; $47ab: $01 $58 $7d
	sub  [hl]                                        ; $47ae: $96
	ld   d, h                                        ; $47af: $54
	ld   h, d                                        ; $47b0: $62
	ld   h, h                                        ; $47b1: $64
	ld   d, d                                        ; $47b2: $52
	adc  h                                           ; $47b3: $8c
	ld   h, a                                        ; $47b4: $67
	sbc  a                                           ; $47b5: $9f
	dec  c                                           ; $47b6: $0d
	ld   [$6300], sp                                 ; $47b7: $08 $00 $63
	and  c                                           ; $47ba: $a1
	sbc  a                                           ; $47bb: $9f
	dec  c                                           ; $47bc: $0d
	ld   l, e                                        ; $47bd: $6b
	sbc  d                                           ; $47be: $9a
	ld   [hl], l                                     ; $47bf: $75
	ld   a, l                                        ; $47c0: $7d
	sbc  a                                           ; $47c1: $9f
	dec  c                                           ; $47c2: $0d
	nop                                              ; $47c3: $00
	ld   a, [bc]                                     ; $47c4: $0a
	dec  c                                           ; $47c5: $0d
	nop                                              ; $47c6: $00
	nop                                              ; $47c7: $00
	rrca                                             ; $47c8: $0f
	nop                                              ; $47c9: $00
	ld   bc, $1e09                                   ; $47ca: $01 $09 $1e
	nop                                              ; $47cd: $00
	inc  e                                           ; $47ce: $1c
	ld   bc, $0101                                   ; $47cf: $01 $01 $01
	ld   bc, $0008                                   ; $47d2: $01 $08 $00
	ld   h, e                                        ; $47d5: $63
	and  c                                           ; $47d6: $a1
	sbc  a                                           ; $47d7: $9f
	dec  c                                           ; $47d8: $0d
	ld   e, b                                        ; $47d9: $58
	ld   a, l                                        ; $47da: $7d
	sub  [hl]                                        ; $47db: $96
	ld   d, h                                        ; $47dc: $54
	ld   h, d                                        ; $47dd: $62
	ld   h, h                                        ; $47de: $64
	ld   d, d                                        ; $47df: $52
	adc  h                                           ; $47e0: $8c
	ld   h, a                                        ; $47e1: $67
	sbc  a                                           ; $47e2: $9f
	dec  c                                           ; $47e3: $0d
	nop                                              ; $47e4: $00
	ld   a, [bc]                                     ; $47e5: $0a
	rrca                                             ; $47e6: $0f
	nop                                              ; $47e7: $00
	ld   bc, $5801                                   ; $47e8: $01 $01 $58
	ld   a, l                                        ; $47eb: $7d
	sub  [hl]                                        ; $47ec: $96
	ld   d, h                                        ; $47ed: $54
	ld   h, d                                        ; $47ee: $62
	ld   h, h                                        ; $47ef: $64
	ld   d, d                                        ; $47f0: $52
	adc  h                                           ; $47f1: $8c
	ld   h, a                                        ; $47f2: $67
	sbc  a                                           ; $47f3: $9f
	dec  c                                           ; $47f4: $0d
	ld   h, e                                        ; $47f5: $63
	ld   e, l                                        ; $47f6: $5d
	sub  a                                           ; $47f7: $97
	ld   h, e                                        ; $47f8: $63
	and  c                                           ; $47f9: $a1
	sbc  a                                           ; $47fa: $9f
	dec  c                                           ; $47fb: $0d
	nop                                              ; $47fc: $00
	ld   a, [bc]                                     ; $47fd: $0a
	inc  e                                           ; $47fe: $1c
	ld   bc, $0101                                   ; $47ff: $01 $01 $01
	ld   bc, $a502                                   ; $4802: $01 $02 $a5
	inc  b                                           ; $4805: $04
	xor  d                                           ; $4806: $aa
	sub  b                                           ; $4807: $90
	ld   [bc], a                                     ; $4808: $02
	jr   nz, jr_059_480f                             ; $4809: $20 $04

	xor  d                                           ; $480b: $aa
	sbc  [hl]                                        ; $480c: $9e
	dec  c                                           ; $480d: $0d
	ld   e, d                                        ; $480e: $5a

jr_059_480f:
	and  c                                           ; $480f: $a1
	ld   a, [hl]                                     ; $4810: $7e
	sbc  b                                           ; $4811: $98
	adc  h                                           ; $4812: $8c
	ld   h, l                                        ; $4813: $65
	sub  l                                           ; $4814: $95
	ld   d, h                                        ; $4815: $54
	ld   a, e                                        ; $4816: $7b
	sbc  a                                           ; $4817: $9f
	dec  c                                           ; $4818: $0d
	ld   l, e                                        ; $4819: $6b
	sbc  d                                           ; $481a: $9a
	ld   [hl], l                                     ; $481b: $75
	ld   a, l                                        ; $481c: $7d
	adc  h                                           ; $481d: $8c
	ld   l, l                                        ; $481e: $6d
	sbc  a                                           ; $481f: $9f
	dec  c                                           ; $4820: $0d
	nop                                              ; $4821: $00
	ld   a, [bc]                                     ; $4822: $0a
	dec  c                                           ; $4823: $0d
	nop                                              ; $4824: $00
	nop                                              ; $4825: $00
	rrca                                             ; $4826: $0f
	nop                                              ; $4827: $00
	ld   bc, $1e09                                   ; $4828: $01 $09 $1e
	nop                                              ; $482b: $00
	nop                                              ; $482c: $00
	ld   [bc], a                                     ; $482d: $02
	rlca                                             ; $482e: $07
	ld   sp, $0300                                   ; $482f: $31 $00 $03
	inc  de                                          ; $4832: $13
	ld   bc, $2265                                   ; $4833: $01 $65 $22
	nop                                              ; $4836: $00
	rlca                                             ; $4837: $07
	ld   h, c                                        ; $4838: $61
	nop                                              ; $4839: $00
	inc  bc                                          ; $483a: $03
	inc  de                                          ; $483b: $13
	ld   bc, $2566                                   ; $483c: $01 $66 $25
	inc  bc                                          ; $483f: $03
	inc  de                                          ; $4840: $13
	ld   bc, $22a0                                   ; $4841: $01 $a0 $22
	inc  e                                           ; $4844: $1c
	nop                                              ; $4845: $00
	rlca                                             ; $4846: $07
	sub  a                                           ; $4847: $97
	nop                                              ; $4848: $00
	inc  bc                                          ; $4849: $03
	inc  de                                          ; $484a: $13
	ld   bc, $25a0                                   ; $484b: $01 $a0 $25
	inc  bc                                          ; $484e: $03
	inc  de                                          ; $484f: $13
	ld   bc, $22b4                                   ; $4850: $01 $b4 $22
	inc  e                                           ; $4853: $1c
	nop                                              ; $4854: $00
	rlca                                             ; $4855: $07
	push de                                          ; $4856: $d5
	nop                                              ; $4857: $00
	inc  bc                                          ; $4858: $03
	inc  de                                          ; $4859: $13
	ld   bc, $25b4                                   ; $485a: $01 $b4 $25
	nop                                              ; $485d: $00
	rrca                                             ; $485e: $0f
	nop                                              ; $485f: $00
	ld   bc, $df01                                   ; $4860: $01 $01 $df
	db   $ec                                         ; $4863: $ec
	and  e                                           ; $4864: $a3
	ld   h, e                                        ; $4865: $63
	and  c                                           ; $4866: $a1
	sbc  a                                           ; $4867: $9f
	dec  c                                           ; $4868: $0d
	nop                                              ; $4869: $00
	ld   a, [bc]                                     ; $486a: $0a
	inc  e                                           ; $486b: $1c
	inc  bc                                          ; $486c: $03
	nop                                              ; $486d: $00
	nop                                              ; $486e: $00
	ld   bc, $8c52                                   ; $486f: $01 $52 $8c
	dec  b                                           ; $4872: $05
	jr   z, @+$54                                    ; $4873: $28 $52

	ld   [hl], l                                     ; $4875: $75
	sbc  c                                           ; $4876: $99
	ld   a, h                                        ; $4877: $7c
	sbc  a                                           ; $4878: $9f
	dec  c                                           ; $4879: $0d
	adc  h                                           ; $487a: $8c
	ld   l, l                                        ; $487b: $6d
	sbc  [hl]                                        ; $487c: $9e
	ld   [bc], a                                     ; $487d: $02
	xor  d                                           ; $487e: $aa
	ld   [hl], l                                     ; $487f: $75
	ld   a, e                                        ; $4880: $7b
	sbc  a                                           ; $4881: $9f
	dec  c                                           ; $4882: $0d
	nop                                              ; $4883: $00
	ld   a, [bc]                                     ; $4884: $0a
	dec  c                                           ; $4885: $0d
	nop                                              ; $4886: $00
	nop                                              ; $4887: $00
	rrca                                             ; $4888: $0f
	nop                                              ; $4889: $00
	ld   bc, $1e09                                   ; $488a: $01 $09 $1e
	nop                                              ; $488d: $00
	rrca                                             ; $488e: $0f
	nop                                              ; $488f: $00
	ld   bc, $030d                                   ; $4890: $01 $0d $03
	nop                                              ; $4893: $00
	ld   bc, $ecdf                                   ; $4894: $01 $df $ec
	and  e                                           ; $4897: $a3
	ld   h, e                                        ; $4898: $63
	and  c                                           ; $4899: $a1
	sbc  [hl]                                        ; $489a: $9e
	dec  c                                           ; $489b: $0d
	ld   e, b                                        ; $489c: $58
	ld   a, l                                        ; $489d: $7d
	sub  [hl]                                        ; $489e: $96
	ld   d, h                                        ; $489f: $54
	ld   h, d                                        ; $48a0: $62
	ld   h, h                                        ; $48a1: $64
	ld   d, d                                        ; $48a2: $52
	adc  h                                           ; $48a3: $8c
	ld   h, a                                        ; $48a4: $67
	sbc  a                                           ; $48a5: $9f
	dec  c                                           ; $48a6: $0d
	nop                                              ; $48a7: $00
	ld   a, [bc]                                     ; $48a8: $0a
	rrca                                             ; $48a9: $0f
	inc  bc                                          ; $48aa: $03
	nop                                              ; $48ab: $00
	ld   bc, $7d58                                   ; $48ac: $01 $58 $7d
	sub  [hl]                                        ; $48af: $96
	ld   d, h                                        ; $48b0: $54
	sbc  a                                           ; $48b1: $9f
	dec  c                                           ; $48b2: $0d
	ld   h, [hl]                                     ; $48b3: $66
	sub  c                                           ; $48b4: $91
	ld   d, b                                        ; $48b5: $50
	ld   a, e                                        ; $48b6: $7b
	sbc  a                                           ; $48b7: $9f
	dec  c                                           ; $48b8: $0d
	nop                                              ; $48b9: $00
	ld   a, [bc]                                     ; $48ba: $0a
	dec  c                                           ; $48bb: $0d
	nop                                              ; $48bc: $00
	nop                                              ; $48bd: $00
	rrca                                             ; $48be: $0f
	nop                                              ; $48bf: $00
	ld   bc, $1e09                                   ; $48c0: $01 $09 $1e
	nop                                              ; $48c3: $00
	rrca                                             ; $48c4: $0f
	nop                                              ; $48c5: $00
	ld   bc, $030d                                   ; $48c6: $01 $0d $03
	nop                                              ; $48c9: $00
	ld   bc, $ecdf                                   ; $48ca: $01 $df $ec
	and  e                                           ; $48cd: $a3
	ld   h, e                                        ; $48ce: $63
	and  c                                           ; $48cf: $a1
	sbc  [hl]                                        ; $48d0: $9e
	dec  c                                           ; $48d1: $0d
	ld   e, b                                        ; $48d2: $58
	ld   a, l                                        ; $48d3: $7d
	sub  [hl]                                        ; $48d4: $96
	ld   d, h                                        ; $48d5: $54
	ld   h, d                                        ; $48d6: $62
	ld   h, h                                        ; $48d7: $64
	ld   d, d                                        ; $48d8: $52
	adc  h                                           ; $48d9: $8c
	ld   h, a                                        ; $48da: $67
	sbc  a                                           ; $48db: $9f
	dec  c                                           ; $48dc: $0d
	nop                                              ; $48dd: $00
	ld   a, [bc]                                     ; $48de: $0a
	rrca                                             ; $48df: $0f
	inc  bc                                          ; $48e0: $03
	nop                                              ; $48e1: $00
	ld   bc, $7d58                                   ; $48e2: $01 $58 $7d
	sub  [hl]                                        ; $48e5: $96
	ld   d, h                                        ; $48e6: $54
	sbc  a                                           ; $48e7: $9f
	dec  c                                           ; $48e8: $0d
	ld   [$5d00], sp                                 ; $48e9: $08 $00 $5d
	and  c                                           ; $48ec: $a1
	sbc  a                                           ; $48ed: $9f
	dec  c                                           ; $48ee: $0d
	ld   l, e                                        ; $48ef: $6b
	sbc  d                                           ; $48f0: $9a
	ld   h, [hl]                                     ; $48f1: $66
	sub  c                                           ; $48f2: $91
	ld   d, b                                        ; $48f3: $50
	ld   a, e                                        ; $48f4: $7b
	sbc  a                                           ; $48f5: $9f
	dec  c                                           ; $48f6: $0d
	nop                                              ; $48f7: $00
	ld   a, [bc]                                     ; $48f8: $0a
	dec  c                                           ; $48f9: $0d
	nop                                              ; $48fa: $00
	nop                                              ; $48fb: $00
	rrca                                             ; $48fc: $0f
	nop                                              ; $48fd: $00
	ld   bc, $1e09                                   ; $48fe: $01 $09 $1e
	nop                                              ; $4901: $00
	inc  e                                           ; $4902: $1c
	inc  bc                                          ; $4903: $03
	inc  bc                                          ; $4904: $03
	inc  bc                                          ; $4905: $03
	ld   bc, $0008                                   ; $4906: $01 $08 $00
	ld   e, l                                        ; $4909: $5d
	and  c                                           ; $490a: $a1
	sbc  [hl]                                        ; $490b: $9e
	dec  c                                           ; $490c: $0d
	ld   e, b                                        ; $490d: $58
	ld   a, l                                        ; $490e: $7d
	sub  [hl]                                        ; $490f: $96
	ld   d, h                                        ; $4910: $54
	sbc  a                                           ; $4911: $9f
	dec  c                                           ; $4912: $0d
	nop                                              ; $4913: $00
	ld   a, [bc]                                     ; $4914: $0a
	rrca                                             ; $4915: $0f
	nop                                              ; $4916: $00
	ld   bc, $5801                                   ; $4917: $01 $01 $58
	ld   a, l                                        ; $491a: $7d
	sub  [hl]                                        ; $491b: $96
	ld   d, h                                        ; $491c: $54
	ld   h, d                                        ; $491d: $62
	ld   h, h                                        ; $491e: $64
	ld   d, d                                        ; $491f: $52
	adc  h                                           ; $4920: $8c
	ld   h, a                                        ; $4921: $67
	sbc  a                                           ; $4922: $9f
	dec  c                                           ; $4923: $0d
	rst  JumpTable                                         ; $4924: $df
	db   $ec                                         ; $4925: $ec
	and  e                                           ; $4926: $a3
	ld   h, e                                        ; $4927: $63
	and  c                                           ; $4928: $a1
	sbc  a                                           ; $4929: $9f
	dec  c                                           ; $492a: $0d
	nop                                              ; $492b: $00
	ld   a, [bc]                                     ; $492c: $0a
	rrca                                             ; $492d: $0f
	inc  bc                                          ; $492e: $03
	inc  bc                                          ; $492f: $03
	ld   bc, $a502                                   ; $4930: $01 $02 $a5
	inc  b                                           ; $4933: $04
	xor  d                                           ; $4934: $aa
	sub  b                                           ; $4935: $90
	ld   [bc], a                                     ; $4936: $02
	jr   nz, jr_059_493d                             ; $4937: $20 $04

	xor  d                                           ; $4939: $aa
	sbc  [hl]                                        ; $493a: $9e
	dec  c                                           ; $493b: $0d
	ld   e, d                                        ; $493c: $5a

jr_059_493d:
	and  c                                           ; $493d: $a1
	ld   a, [hl]                                     ; $493e: $7e
	sbc  b                                           ; $493f: $98
	adc  h                                           ; $4940: $8c
	ld   h, l                                        ; $4941: $65
	sub  l                                           ; $4942: $95
	ld   d, h                                        ; $4943: $54
	sbc  a                                           ; $4944: $9f
	dec  c                                           ; $4945: $0d
	ld   l, e                                        ; $4946: $6b
	sbc  d                                           ; $4947: $9a
	ld   h, [hl]                                     ; $4948: $66
	sub  c                                           ; $4949: $91
	ld   d, b                                        ; $494a: $50
	ld   a, e                                        ; $494b: $7b
	sbc  a                                           ; $494c: $9f
	dec  c                                           ; $494d: $0d
	nop                                              ; $494e: $00
	ld   a, [bc]                                     ; $494f: $0a
	dec  c                                           ; $4950: $0d
	nop                                              ; $4951: $00
	nop                                              ; $4952: $00
	rrca                                             ; $4953: $0f
	nop                                              ; $4954: $00
	ld   bc, $1e09                                   ; $4955: $01 $09 $1e
	nop                                              ; $4958: $00
	nop                                              ; $4959: $00
	ld   [bc], a                                     ; $495a: $02
	rlca                                             ; $495b: $07
	ld   sp, $0300                                   ; $495c: $31 $00 $03
	inc  d                                           ; $495f: $14
	ld   bc, $2265                                   ; $4960: $01 $65 $22
	nop                                              ; $4963: $00
	rlca                                             ; $4964: $07
	ld   h, h                                        ; $4965: $64
	nop                                              ; $4966: $00
	inc  bc                                          ; $4967: $03
	inc  d                                           ; $4968: $14
	ld   bc, $2566                                   ; $4969: $01 $66 $25
	inc  bc                                          ; $496c: $03
	inc  d                                           ; $496d: $14
	ld   bc, $22a0                                   ; $496e: $01 $a0 $22
	inc  e                                           ; $4971: $1c
	nop                                              ; $4972: $00
	rlca                                             ; $4973: $07
	sub  d                                           ; $4974: $92
	nop                                              ; $4975: $00
	inc  bc                                          ; $4976: $03
	inc  d                                           ; $4977: $14
	ld   bc, $25a0                                   ; $4978: $01 $a0 $25
	inc  bc                                          ; $497b: $03
	inc  d                                           ; $497c: $14
	ld   bc, $22b4                                   ; $497d: $01 $b4 $22
	inc  e                                           ; $4980: $1c
	nop                                              ; $4981: $00
	rlca                                             ; $4982: $07
	ret                                              ; $4983: $c9


	nop                                              ; $4984: $00
	inc  bc                                          ; $4985: $03
	inc  d                                           ; $4986: $14
	ld   bc, $25b4                                   ; $4987: $01 $b4 $25
	nop                                              ; $498a: $00
	rrca                                             ; $498b: $0f
	nop                                              ; $498c: $00
	ld   bc, $5801                                   ; $498d: $01 $01 $58
	ld   a, l                                        ; $4990: $7d
	sub  [hl]                                        ; $4991: $96
	ld   d, h                                        ; $4992: $54
	sbc  [hl]                                        ; $4993: $9e
	and  e                                           ; $4994: $a3
	and  l                                           ; $4995: $a5
	db   $ec                                         ; $4996: $ec
	cp   d                                           ; $4997: $ba
	sbc  a                                           ; $4998: $9f
	dec  c                                           ; $4999: $0d
	nop                                              ; $499a: $00
	ld   a, [bc]                                     ; $499b: $0a
	inc  e                                           ; $499c: $1c
	inc  b                                           ; $499d: $04
	nop                                              ; $499e: $00
	nop                                              ; $499f: $00
	ld   bc, $a5a3                                   ; $49a0: $01 $a3 $a5
	db   $ec                                         ; $49a3: $ec
	cp   d                                           ; $49a4: $ba
	sbc  [hl]                                        ; $49a5: $9e
	ld   d, d                                        ; $49a6: $52
	ld   l, e                                        ; $49a7: $6b
	ld   e, d                                        ; $49a8: $5a
	ld   h, l                                        ; $49a9: $65
	ld   d, d                                        ; $49aa: $52
	ld   a, h                                        ; $49ab: $7c
	sbc  a                                           ; $49ac: $9f
	dec  c                                           ; $49ad: $0d
	adc  h                                           ; $49ae: $8c
	ld   l, l                                        ; $49af: $6d
	ld   a, e                                        ; $49b0: $7b
	sbc  a                                           ; $49b1: $9f
	dec  c                                           ; $49b2: $0d
	nop                                              ; $49b3: $00
	ld   a, [bc]                                     ; $49b4: $0a
	dec  c                                           ; $49b5: $0d
	nop                                              ; $49b6: $00
	nop                                              ; $49b7: $00
	rrca                                             ; $49b8: $0f
	nop                                              ; $49b9: $00
	ld   bc, $1e09                                   ; $49ba: $01 $09 $1e
	nop                                              ; $49bd: $00
	rrca                                             ; $49be: $0f
	nop                                              ; $49bf: $00
	ld   bc, $040d                                   ; $49c0: $01 $0d $04
	nop                                              ; $49c3: $00
	ld   bc, $7d58                                   ; $49c4: $01 $58 $7d
	sub  [hl]                                        ; $49c7: $96
	ld   d, h                                        ; $49c8: $54
	sbc  [hl]                                        ; $49c9: $9e
	and  e                                           ; $49ca: $a3
	and  l                                           ; $49cb: $a5
	db   $ec                                         ; $49cc: $ec
	cp   d                                           ; $49cd: $ba
	sbc  a                                           ; $49ce: $9f
	dec  c                                           ; $49cf: $0d
	nop                                              ; $49d0: $00
	ld   a, [bc]                                     ; $49d1: $0a
	rrca                                             ; $49d2: $0f
	inc  b                                           ; $49d3: $04
	nop                                              ; $49d4: $00
	ld   bc, $7d58                                   ; $49d5: $01 $58 $7d
	sub  [hl]                                        ; $49d8: $96
	ld   d, h                                        ; $49d9: $54
	sbc  a                                           ; $49da: $9f
	dec  c                                           ; $49db: $0d
	adc  h                                           ; $49dc: $8c
	ld   l, l                                        ; $49dd: $6d
	ld   a, e                                        ; $49de: $7b
	sbc  a                                           ; $49df: $9f
	dec  c                                           ; $49e0: $0d
	nop                                              ; $49e1: $00
	ld   a, [bc]                                     ; $49e2: $0a
	dec  c                                           ; $49e3: $0d
	nop                                              ; $49e4: $00
	nop                                              ; $49e5: $00
	rrca                                             ; $49e6: $0f
	nop                                              ; $49e7: $00
	ld   bc, $1e09                                   ; $49e8: $01 $09 $1e
	nop                                              ; $49eb: $00
	rrca                                             ; $49ec: $0f
	nop                                              ; $49ed: $00
	ld   bc, $040d                                   ; $49ee: $01 $0d $04
	nop                                              ; $49f1: $00
	ld   bc, $7d58                                   ; $49f2: $01 $58 $7d
	sub  [hl]                                        ; $49f5: $96
	ld   d, h                                        ; $49f6: $54
	sbc  [hl]                                        ; $49f7: $9e
	and  e                                           ; $49f8: $a3
	and  l                                           ; $49f9: $a5
	db   $ec                                         ; $49fa: $ec
	cp   d                                           ; $49fb: $ba
	sbc  a                                           ; $49fc: $9f
	dec  c                                           ; $49fd: $0d
	nop                                              ; $49fe: $00
	ld   a, [bc]                                     ; $49ff: $0a
	inc  e                                           ; $4a00: $1c
	inc  b                                           ; $4a01: $04
	ld   bc, $0101                                   ; $4a02: $01 $01 $01
	ld   e, b                                        ; $4a05: $58
	ld   a, l                                        ; $4a06: $7d
	sub  [hl]                                        ; $4a07: $96
	ld   d, h                                        ; $4a08: $54
	sbc  [hl]                                        ; $4a09: $9e
	ld   l, a                                        ; $4a0a: $6f
	ld   d, d                                        ; $4a0b: $52
	ld   [bc], a                                     ; $4a0c: $02
	inc  de                                          ; $4a0d: $13
	ld   l, a                                        ; $4a0e: $6f
	sub  c                                           ; $4a0f: $91
	and  c                                           ; $4a10: $a1
	sbc  a                                           ; $4a11: $9f
	dec  c                                           ; $4a12: $0d
	adc  h                                           ; $4a13: $8c
	ld   l, l                                        ; $4a14: $6d
	ld   a, e                                        ; $4a15: $7b
	sbc  a                                           ; $4a16: $9f
	dec  c                                           ; $4a17: $0d
	nop                                              ; $4a18: $00
	ld   a, [bc]                                     ; $4a19: $0a
	dec  c                                           ; $4a1a: $0d
	nop                                              ; $4a1b: $00
	nop                                              ; $4a1c: $00
	rrca                                             ; $4a1d: $0f
	nop                                              ; $4a1e: $00
	ld   bc, $1e09                                   ; $4a1f: $01 $09 $1e
	nop                                              ; $4a22: $00
	inc  e                                           ; $4a23: $1c
	inc  b                                           ; $4a24: $04
	ld   bc, $0101                                   ; $4a25: $01 $01 $01
	ld   l, a                                        ; $4a28: $6f
	ld   d, d                                        ; $4a29: $52
	ld   [bc], a                                     ; $4a2a: $02
	inc  de                                          ; $4a2b: $13
	ld   l, a                                        ; $4a2c: $6f
	sub  c                                           ; $4a2d: $91
	and  c                                           ; $4a2e: $a1
	sbc  [hl]                                        ; $4a2f: $9e
	ld   e, b                                        ; $4a30: $58
	ld   a, l                                        ; $4a31: $7d
	sub  [hl]                                        ; $4a32: $96
	ld   d, h                                        ; $4a33: $54
	sbc  a                                           ; $4a34: $9f
	dec  c                                           ; $4a35: $0d
	nop                                              ; $4a36: $00
	ld   a, [bc]                                     ; $4a37: $0a
	rrca                                             ; $4a38: $0f
	nop                                              ; $4a39: $00
	ld   bc, $5801                                   ; $4a3a: $01 $01 $58
	ld   a, l                                        ; $4a3d: $7d
	sub  [hl]                                        ; $4a3e: $96
	ld   d, h                                        ; $4a3f: $54
	sbc  [hl]                                        ; $4a40: $9e
	and  e                                           ; $4a41: $a3
	and  l                                           ; $4a42: $a5
	db   $ec                                         ; $4a43: $ec
	cp   d                                           ; $4a44: $ba
	sbc  a                                           ; $4a45: $9f
	dec  c                                           ; $4a46: $0d
	nop                                              ; $4a47: $00
	ld   a, [bc]                                     ; $4a48: $0a
	rrca                                             ; $4a49: $0f
	inc  b                                           ; $4a4a: $04
	ld   bc, $5b01                                   ; $4a4b: $01 $01 $5b
	sub  l                                           ; $4a4e: $95
	ld   d, h                                        ; $4a4f: $54
	sub  b                                           ; $4a50: $90
	sbc  [hl]                                        ; $4a51: $9e
	ld   d, b                                        ; $4a52: $50
	ld   l, e                                        ; $4a53: $6b
	adc  d                                           ; $4a54: $8a
	ld   d, h                                        ; $4a55: $54
	ld   a, e                                        ; $4a56: $7b
	sbc  a                                           ; $4a57: $9f
	dec  c                                           ; $4a58: $0d
	ld   h, [hl]                                     ; $4a59: $66
	sub  c                                           ; $4a5a: $91
	sbc  [hl]                                        ; $4a5b: $9e
	adc  h                                           ; $4a5c: $8c
	ld   l, l                                        ; $4a5d: $6d
	ld   a, e                                        ; $4a5e: $7b
	sbc  [hl]                                        ; $4a5f: $9e
	ld   l, a                                        ; $4a60: $6f
	ld   d, d                                        ; $4a61: $52
	ld   [bc], a                                     ; $4a62: $02
	inc  de                                          ; $4a63: $13
	ld   l, a                                        ; $4a64: $6f
	sub  c                                           ; $4a65: $91
	and  c                                           ; $4a66: $a1
	sbc  a                                           ; $4a67: $9f
	dec  c                                           ; $4a68: $0d
	nop                                              ; $4a69: $00
	ld   a, [bc]                                     ; $4a6a: $0a
	dec  c                                           ; $4a6b: $0d
	nop                                              ; $4a6c: $00
	nop                                              ; $4a6d: $00
	rrca                                             ; $4a6e: $0f
	nop                                              ; $4a6f: $00
	ld   bc, $1e09                                   ; $4a70: $01 $09 $1e
	nop                                              ; $4a73: $00
	nop                                              ; $4a74: $00
	ld   [bc], a                                     ; $4a75: $02
	rlca                                             ; $4a76: $07
	ld   sp, $0300                                   ; $4a77: $31 $00 $03
	ld   d, $01                                      ; $4a7a: $16 $01
	ld   h, l                                        ; $4a7c: $65
	inc  hl                                          ; $4a7d: $23
	nop                                              ; $4a7e: $00
	rlca                                             ; $4a7f: $07
	ld   l, c                                        ; $4a80: $69
	nop                                              ; $4a81: $00
	inc  bc                                          ; $4a82: $03
	ld   d, $01                                      ; $4a83: $16 $01
	ld   h, [hl]                                     ; $4a85: $66
	dec  h                                           ; $4a86: $25
	inc  bc                                          ; $4a87: $03
	ld   d, $01                                      ; $4a88: $16 $01
	and  b                                           ; $4a8a: $a0
	ld   [hl+], a                                    ; $4a8b: $22
	inc  e                                           ; $4a8c: $1c
	nop                                              ; $4a8d: $00
	rlca                                             ; $4a8e: $07
	sbc  a                                           ; $4a8f: $9f
	nop                                              ; $4a90: $00
	inc  bc                                          ; $4a91: $03
	ld   d, $01                                      ; $4a92: $16 $01
	and  b                                           ; $4a94: $a0
	dec  h                                           ; $4a95: $25
	inc  bc                                          ; $4a96: $03
	ld   d, $01                                      ; $4a97: $16 $01
	or   h                                           ; $4a99: $b4
	ld   [hl+], a                                    ; $4a9a: $22
	inc  e                                           ; $4a9b: $1c
	nop                                              ; $4a9c: $00
	rlca                                             ; $4a9d: $07
	reti                                             ; $4a9e: $d9


	nop                                              ; $4a9f: $00
	inc  bc                                          ; $4aa0: $03
	ld   d, $01                                      ; $4aa1: $16 $01
	or   h                                           ; $4aa3: $b4
	dec  h                                           ; $4aa4: $25
	nop                                              ; $4aa5: $00
	rrca                                             ; $4aa6: $0f
	nop                                              ; $4aa7: $00
	ld   bc, $ac01                                   ; $4aa8: $01 $01 $ac
	push af                                          ; $4aab: $f5
	bit  4, e                                        ; $4aac: $cb $63
	and  c                                           ; $4aae: $a1
	sbc  a                                           ; $4aaf: $9f
	dec  c                                           ; $4ab0: $0d
	nop                                              ; $4ab1: $00
	ld   a, [bc]                                     ; $4ab2: $0a
	inc  e                                           ; $4ab3: $1c
	ld   b, $00                                      ; $4ab4: $06 $00
	nop                                              ; $4ab6: $00
	ld   bc, $999d                                   ; $4ab7: $01 $9d $99
	ld   d, d                                        ; $4aba: $52
	sbc  a                                           ; $4abb: $9f
	dec  c                                           ; $4abc: $0d
	ld   l, a                                        ; $4abd: $6f
	sub  l                                           ; $4abe: $95
	ld   d, d                                        ; $4abf: $52
	halt                                             ; $4ac0: $76
	dec  b                                           ; $4ac1: $05
	jr   z, jr_059_4b20                              ; $4ac2: $28 $5c

	ld   a, h                                        ; $4ac4: $7c
	inc  b                                           ; $4ac5: $04
	di                                               ; $4ac6: $f3
	ld   e, d                                        ; $4ac7: $5a
	ld   d, b                                        ; $4ac8: $50
	sbc  c                                           ; $4ac9: $99
	and  c                                           ; $4aca: $a1
	ld   l, [hl]                                     ; $4acb: $6e
	sbc  a                                           ; $4acc: $9f
	dec  c                                           ; $4acd: $0d
	adc  h                                           ; $4ace: $8c
	ld   l, l                                        ; $4acf: $6d
	ld   a, b                                        ; $4ad0: $78
	sbc  a                                           ; $4ad1: $9f
	dec  c                                           ; $4ad2: $0d
	nop                                              ; $4ad3: $00
	ld   a, [bc]                                     ; $4ad4: $0a
	dec  c                                           ; $4ad5: $0d
	nop                                              ; $4ad6: $00
	nop                                              ; $4ad7: $00
	rrca                                             ; $4ad8: $0f
	nop                                              ; $4ad9: $00
	ld   bc, $1e09                                   ; $4ada: $01 $09 $1e
	nop                                              ; $4add: $00
	rrca                                             ; $4ade: $0f
	nop                                              ; $4adf: $00
	ld   bc, $060d                                   ; $4ae0: $01 $0d $06
	nop                                              ; $4ae3: $00
	ld   bc, $f5ac                                   ; $4ae4: $01 $ac $f5
	bit  4, e                                        ; $4ae7: $cb $63
	and  c                                           ; $4ae9: $a1
	sbc  a                                           ; $4aea: $9f
	dec  c                                           ; $4aeb: $0d
	ld   e, b                                        ; $4aec: $58
	ld   a, l                                        ; $4aed: $7d
	sub  [hl]                                        ; $4aee: $96
	ld   d, h                                        ; $4aef: $54
	ld   h, d                                        ; $4af0: $62
	ld   h, h                                        ; $4af1: $64
	ld   d, d                                        ; $4af2: $52
	adc  h                                           ; $4af3: $8c
	ld   h, a                                        ; $4af4: $67
	sbc  a                                           ; $4af5: $9f
	dec  c                                           ; $4af6: $0d
	nop                                              ; $4af7: $00
	ld   a, [bc]                                     ; $4af8: $0a
	rrca                                             ; $4af9: $0f
	ld   b, $00                                      ; $4afa: $06 $00
	ld   bc, $7d58                                   ; $4afc: $01 $58 $7d
	sub  [hl]                                        ; $4aff: $96
	ld   d, h                                        ; $4b00: $54
	sbc  a                                           ; $4b01: $9f
	dec  c                                           ; $4b02: $0d
	ld   h, [hl]                                     ; $4b03: $66
	sub  c                                           ; $4b04: $91
	ld   d, b                                        ; $4b05: $50
	ld   a, b                                        ; $4b06: $78
	sbc  a                                           ; $4b07: $9f
	dec  c                                           ; $4b08: $0d
	nop                                              ; $4b09: $00
	ld   a, [bc]                                     ; $4b0a: $0a
	dec  c                                           ; $4b0b: $0d
	nop                                              ; $4b0c: $00
	nop                                              ; $4b0d: $00
	rrca                                             ; $4b0e: $0f
	nop                                              ; $4b0f: $00
	ld   bc, $1e09                                   ; $4b10: $01 $09 $1e
	nop                                              ; $4b13: $00
	rrca                                             ; $4b14: $0f
	nop                                              ; $4b15: $00
	ld   bc, $060d                                   ; $4b16: $01 $0d $06
	nop                                              ; $4b19: $00
	ld   bc, $f5ac                                   ; $4b1a: $01 $ac $f5
	bit  4, e                                        ; $4b1d: $cb $63
	and  c                                           ; $4b1f: $a1

jr_059_4b20:
	sbc  a                                           ; $4b20: $9f
	dec  c                                           ; $4b21: $0d
	ld   e, b                                        ; $4b22: $58
	ld   a, l                                        ; $4b23: $7d
	sub  [hl]                                        ; $4b24: $96
	ld   d, h                                        ; $4b25: $54
	ld   h, d                                        ; $4b26: $62
	ld   h, h                                        ; $4b27: $64
	ld   d, d                                        ; $4b28: $52
	adc  h                                           ; $4b29: $8c
	ld   h, a                                        ; $4b2a: $67
	sbc  a                                           ; $4b2b: $9f
	dec  c                                           ; $4b2c: $0d
	nop                                              ; $4b2d: $00
	ld   a, [bc]                                     ; $4b2e: $0a
	inc  e                                           ; $4b2f: $1c
	ld   b, $01                                      ; $4b30: $06 $01
	ld   bc, $5801                                   ; $4b32: $01 $01 $58
	ld   a, l                                        ; $4b35: $7d
	sub  [hl]                                        ; $4b36: $96
	ld   d, h                                        ; $4b37: $54
	sbc  a                                           ; $4b38: $9f
	ld   [$9f00], sp                                 ; $4b39: $08 $00 $9f
	dec  c                                           ; $4b3c: $0d
	ld   h, [hl]                                     ; $4b3d: $66
	sub  c                                           ; $4b3e: $91
	ld   d, b                                        ; $4b3f: $50
	ld   a, b                                        ; $4b40: $78
	sbc  a                                           ; $4b41: $9f
	dec  c                                           ; $4b42: $0d
	nop                                              ; $4b43: $00
	ld   a, [bc]                                     ; $4b44: $0a
	dec  c                                           ; $4b45: $0d
	nop                                              ; $4b46: $00
	nop                                              ; $4b47: $00
	rrca                                             ; $4b48: $0f
	nop                                              ; $4b49: $00
	ld   bc, $1e09                                   ; $4b4a: $01 $09 $1e
	nop                                              ; $4b4d: $00
	inc  e                                           ; $4b4e: $1c
	ld   b, $01                                      ; $4b4f: $06 $01
	ld   bc, $5801                                   ; $4b51: $01 $01 $58
	ld   a, l                                        ; $4b54: $7d
	sub  [hl]                                        ; $4b55: $96
	ld   d, h                                        ; $4b56: $54
	sbc  [hl]                                        ; $4b57: $9e
	ld   [$9f00], sp                                 ; $4b58: $08 $00 $9f
	dec  c                                           ; $4b5b: $0d
	nop                                              ; $4b5c: $00
	ld   a, [bc]                                     ; $4b5d: $0a
	rrca                                             ; $4b5e: $0f
	nop                                              ; $4b5f: $00
	ld   bc, $5801                                   ; $4b60: $01 $01 $58
	ld   a, l                                        ; $4b63: $7d
	sub  [hl]                                        ; $4b64: $96
	ld   d, h                                        ; $4b65: $54
	ld   h, d                                        ; $4b66: $62
	ld   h, h                                        ; $4b67: $64
	ld   d, d                                        ; $4b68: $52
	adc  h                                           ; $4b69: $8c
	ld   h, a                                        ; $4b6a: $67
	sbc  a                                           ; $4b6b: $9f
	dec  c                                           ; $4b6c: $0d
	xor  h                                           ; $4b6d: $ac
	push af                                          ; $4b6e: $f5
	bit  4, e                                        ; $4b6f: $cb $63
	and  c                                           ; $4b71: $a1
	sbc  a                                           ; $4b72: $9f
	dec  c                                           ; $4b73: $0d
	nop                                              ; $4b74: $00
	ld   a, [bc]                                     ; $4b75: $0a
	rrca                                             ; $4b76: $0f
	ld   b, $01                                      ; $4b77: $06 $01
	ld   bc, $a502                                   ; $4b79: $01 $02 $a5
	inc  b                                           ; $4b7c: $04
	xor  d                                           ; $4b7d: $aa
	sub  b                                           ; $4b7e: $90
	ld   [bc], a                                     ; $4b7f: $02
	jr   nz, jr_059_4b86                             ; $4b80: $20 $04

	xor  d                                           ; $4b82: $aa
	sbc  [hl]                                        ; $4b83: $9e
	dec  c                                           ; $4b84: $0d
	ld   e, d                                        ; $4b85: $5a

jr_059_4b86:
	and  c                                           ; $4b86: $a1
	ld   a, [hl]                                     ; $4b87: $7e
	sbc  e                                           ; $4b88: $9b
	ld   d, h                                        ; $4b89: $54
	ld   l, d                                        ; $4b8a: $6a
	sbc  a                                           ; $4b8b: $9f
	dec  c                                           ; $4b8c: $0d
	ld   h, [hl]                                     ; $4b8d: $66
	sub  c                                           ; $4b8e: $91
	ld   d, b                                        ; $4b8f: $50
	ld   a, b                                        ; $4b90: $78
	sbc  a                                           ; $4b91: $9f
	dec  c                                           ; $4b92: $0d
	nop                                              ; $4b93: $00
	ld   a, [bc]                                     ; $4b94: $0a
	dec  c                                           ; $4b95: $0d
	nop                                              ; $4b96: $00
	nop                                              ; $4b97: $00
	rrca                                             ; $4b98: $0f
	nop                                              ; $4b99: $00
	ld   bc, $1e09                                   ; $4b9a: $01 $09 $1e
	nop                                              ; $4b9d: $00
	nop                                              ; $4b9e: $00
	ld   [bc], a                                     ; $4b9f: $02
	rlca                                             ; $4ba0: $07
	ld   sp, $0300                                   ; $4ba1: $31 $00 $03
	dec  d                                           ; $4ba4: $15
	ld   bc, $2265                                   ; $4ba5: $01 $65 $22
	nop                                              ; $4ba8: $00
	rlca                                             ; $4ba9: $07
	ld   l, c                                        ; $4baa: $69
	nop                                              ; $4bab: $00
	inc  bc                                          ; $4bac: $03
	dec  d                                           ; $4bad: $15
	ld   bc, $2566                                   ; $4bae: $01 $66 $25
	inc  bc                                          ; $4bb1: $03
	dec  d                                           ; $4bb2: $15
	ld   bc, $22a0                                   ; $4bb3: $01 $a0 $22
	inc  e                                           ; $4bb6: $1c
	nop                                              ; $4bb7: $00
	rlca                                             ; $4bb8: $07
	and  b                                           ; $4bb9: $a0
	nop                                              ; $4bba: $00
	inc  bc                                          ; $4bbb: $03
	dec  d                                           ; $4bbc: $15
	ld   bc, $25a0                                   ; $4bbd: $01 $a0 $25
	inc  bc                                          ; $4bc0: $03
	dec  d                                           ; $4bc1: $15
	ld   bc, $22b4                                   ; $4bc2: $01 $b4 $22
	inc  e                                           ; $4bc5: $1c
	nop                                              ; $4bc6: $00
	rlca                                             ; $4bc7: $07
	db   $dd                                         ; $4bc8: $dd
	nop                                              ; $4bc9: $00
	inc  bc                                          ; $4bca: $03
	dec  d                                           ; $4bcb: $15
	ld   bc, $25b4                                   ; $4bcc: $01 $b4 $25
	nop                                              ; $4bcf: $00
	rrca                                             ; $4bd0: $0f
	nop                                              ; $4bd1: $00
	ld   bc, $0201                                   ; $4bd2: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bd5: $cf
	dec  b                                           ; $4bd6: $05
	ld   a, [de]                                     ; $4bd7: $1a
	ld   h, e                                        ; $4bd8: $63
	and  c                                           ; $4bd9: $a1
	sbc  a                                           ; $4bda: $9f
	dec  c                                           ; $4bdb: $0d
	nop                                              ; $4bdc: $00
	ld   a, [bc]                                     ; $4bdd: $0a
	inc  e                                           ; $4bde: $1c
	dec  b                                           ; $4bdf: $05
	nop                                              ; $4be0: $00
	nop                                              ; $4be1: $00
	ld   bc, $a502                                   ; $4be2: $01 $02 $a5
	ld   l, a                                        ; $4be5: $6f
	sub  l                                           ; $4be6: $95
	ld   [hl], c                                     ; $4be7: $71
	halt                                             ; $4be8: $76
	sbc  [hl]                                        ; $4be9: $9e
	inc  b                                           ; $4bea: $04
	ld   c, $04                                      ; $4beb: $0e $04
	adc  h                                           ; $4bed: $8c
	ld   a, b                                        ; $4bee: $78
	and  c                                           ; $4bef: $a1
	sub  d                                           ; $4bf0: $92
	sbc  a                                           ; $4bf1: $9f
	dec  c                                           ; $4bf2: $0d
	ld   h, a                                        ; $4bf3: $67
	adc  h                                           ; $4bf4: $8c
	and  c                                           ; $4bf5: $a1
	ld   a, b                                        ; $4bf6: $78
	db   $fc                                         ; $4bf7: $fc
	sbc  a                                           ; $4bf8: $9f
	adc  c                                           ; $4bf9: $89
	ld   a, b                                        ; $4bfa: $78
	sbc  a                                           ; $4bfb: $9f
	dec  c                                           ; $4bfc: $0d
	nop                                              ; $4bfd: $00
	ld   a, [bc]                                     ; $4bfe: $0a
	dec  c                                           ; $4bff: $0d
	nop                                              ; $4c00: $00
	nop                                              ; $4c01: $00
	rrca                                             ; $4c02: $0f
	nop                                              ; $4c03: $00
	ld   bc, $1e09                                   ; $4c04: $01 $09 $1e
	nop                                              ; $4c07: $00
	rrca                                             ; $4c08: $0f
	nop                                              ; $4c09: $00
	ld   bc, $050d                                   ; $4c0a: $01 $0d $05
	nop                                              ; $4c0d: $00
	ld   bc, $cf02                                   ; $4c0e: $01 $02 $cf
	dec  b                                           ; $4c11: $05
	ld   a, [de]                                     ; $4c12: $1a
	ld   h, e                                        ; $4c13: $63
	and  c                                           ; $4c14: $a1
	sbc  a                                           ; $4c15: $9f
	dec  c                                           ; $4c16: $0d
	ld   e, b                                        ; $4c17: $58
	ld   a, l                                        ; $4c18: $7d
	sub  [hl]                                        ; $4c19: $96
	ld   d, h                                        ; $4c1a: $54
	ld   h, d                                        ; $4c1b: $62
	ld   h, h                                        ; $4c1c: $64
	ld   d, d                                        ; $4c1d: $52
	adc  h                                           ; $4c1e: $8c
	ld   h, a                                        ; $4c1f: $67
	sbc  a                                           ; $4c20: $9f
	dec  c                                           ; $4c21: $0d
	nop                                              ; $4c22: $00
	ld   a, [bc]                                     ; $4c23: $0a
	rrca                                             ; $4c24: $0f
	dec  b                                           ; $4c25: $05
	nop                                              ; $4c26: $00
	ld   bc, $7d58                                   ; $4c27: $01 $58 $7d
	sub  [hl]                                        ; $4c2a: $96
	ld   d, h                                        ; $4c2b: $54
	ld   h, e                                        ; $4c2c: $63
	and  c                                           ; $4c2d: $a1
	sbc  a                                           ; $4c2e: $9f
	dec  c                                           ; $4c2f: $0d
	adc  c                                           ; $4c30: $89
	ld   a, b                                        ; $4c31: $78
	sbc  a                                           ; $4c32: $9f
	dec  c                                           ; $4c33: $0d
	nop                                              ; $4c34: $00
	ld   a, [bc]                                     ; $4c35: $0a
	dec  c                                           ; $4c36: $0d
	nop                                              ; $4c37: $00
	nop                                              ; $4c38: $00
	rrca                                             ; $4c39: $0f
	nop                                              ; $4c3a: $00
	ld   bc, $1e09                                   ; $4c3b: $01 $09 $1e
	nop                                              ; $4c3e: $00
	rrca                                             ; $4c3f: $0f
	nop                                              ; $4c40: $00
	ld   bc, $050d                                   ; $4c41: $01 $0d $05
	nop                                              ; $4c44: $00
	ld   bc, $cf02                                   ; $4c45: $01 $02 $cf
	dec  b                                           ; $4c48: $05
	ld   a, [de]                                     ; $4c49: $1a
	ld   h, e                                        ; $4c4a: $63
	and  c                                           ; $4c4b: $a1
	sbc  a                                           ; $4c4c: $9f
	dec  c                                           ; $4c4d: $0d
	ld   e, b                                        ; $4c4e: $58
	ld   a, l                                        ; $4c4f: $7d
	sub  [hl]                                        ; $4c50: $96
	ld   d, h                                        ; $4c51: $54
	ld   h, d                                        ; $4c52: $62
	ld   h, h                                        ; $4c53: $64
	ld   d, d                                        ; $4c54: $52
	adc  h                                           ; $4c55: $8c
	ld   h, a                                        ; $4c56: $67
	sbc  a                                           ; $4c57: $9f
	dec  c                                           ; $4c58: $0d
	nop                                              ; $4c59: $00
	ld   a, [bc]                                     ; $4c5a: $0a
	inc  e                                           ; $4c5b: $1c
	dec  b                                           ; $4c5c: $05
	ld   bc, $0101                                   ; $4c5d: $01 $01 $01
	ld   [$7d00], sp                                 ; $4c60: $08 $00 $7d
	and  c                                           ; $4c63: $a1
	sbc  a                                           ; $4c64: $9f
	dec  c                                           ; $4c65: $0d
	ld   e, b                                        ; $4c66: $58
	ld   a, l                                        ; $4c67: $7d
	sub  [hl]                                        ; $4c68: $96
	ld   d, h                                        ; $4c69: $54
	ld   h, e                                        ; $4c6a: $63
	and  c                                           ; $4c6b: $a1
	sbc  a                                           ; $4c6c: $9f
	adc  c                                           ; $4c6d: $89
	ld   a, b                                        ; $4c6e: $78
	sbc  a                                           ; $4c6f: $9f
	dec  c                                           ; $4c70: $0d
	nop                                              ; $4c71: $00
	ld   a, [bc]                                     ; $4c72: $0a
	dec  c                                           ; $4c73: $0d
	nop                                              ; $4c74: $00
	nop                                              ; $4c75: $00
	rrca                                             ; $4c76: $0f
	nop                                              ; $4c77: $00
	ld   bc, $1e09                                   ; $4c78: $01 $09 $1e
	nop                                              ; $4c7b: $00
	inc  e                                           ; $4c7c: $1c
	dec  b                                           ; $4c7d: $05
	ld   bc, $0101                                   ; $4c7e: $01 $01 $01
	ld   e, b                                        ; $4c81: $58
	ld   a, l                                        ; $4c82: $7d
	sub  [hl]                                        ; $4c83: $96
	ld   d, h                                        ; $4c84: $54
	ld   h, e                                        ; $4c85: $63
	and  c                                           ; $4c86: $a1
	sbc  a                                           ; $4c87: $9f
	dec  c                                           ; $4c88: $0d
	ld   [$7d00], sp                                 ; $4c89: $08 $00 $7d
	and  c                                           ; $4c8c: $a1
	sbc  a                                           ; $4c8d: $9f
	dec  c                                           ; $4c8e: $0d
	nop                                              ; $4c8f: $00
	ld   a, [bc]                                     ; $4c90: $0a
	rrca                                             ; $4c91: $0f
	nop                                              ; $4c92: $00
	ld   bc, $5801                                   ; $4c93: $01 $01 $58
	ld   a, l                                        ; $4c96: $7d
	sub  [hl]                                        ; $4c97: $96
	ld   d, h                                        ; $4c98: $54
	ld   h, d                                        ; $4c99: $62
	ld   h, h                                        ; $4c9a: $64
	ld   d, d                                        ; $4c9b: $52
	adc  h                                           ; $4c9c: $8c
	ld   h, a                                        ; $4c9d: $67
	sbc  a                                           ; $4c9e: $9f
	dec  c                                           ; $4c9f: $0d
	ld   [bc], a                                     ; $4ca0: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ca1: $cf
	dec  b                                           ; $4ca2: $05
	ld   a, [de]                                     ; $4ca3: $1a
	ld   h, e                                        ; $4ca4: $63
	and  c                                           ; $4ca5: $a1
	sbc  a                                           ; $4ca6: $9f
	dec  c                                           ; $4ca7: $0d
	nop                                              ; $4ca8: $00
	ld   a, [bc]                                     ; $4ca9: $0a
	rrca                                             ; $4caa: $0f
	dec  b                                           ; $4cab: $05
	ld   bc, $0201                                   ; $4cac: $01 $01 $02
	and  l                                           ; $4caf: $a5
	inc  b                                           ; $4cb0: $04
	xor  d                                           ; $4cb1: $aa
	sub  b                                           ; $4cb2: $90
	ret  nc                                          ; $4cb3: $d0

	db   $ec                                         ; $4cb4: $ec
	ld   e, e                                        ; $4cb5: $5b
	ld   [hl], c                                     ; $4cb6: $71
	ld   [hl], h                                     ; $4cb7: $74
	ld   [bc], a                                     ; $4cb8: $02
	ld   a, a                                        ; $4cb9: $7f
	ld   h, c                                        ; $4cba: $61
	ld   a, b                                        ; $4cbb: $78
	sbc  a                                           ; $4cbc: $9f
	dec  c                                           ; $4cbd: $0d
	adc  c                                           ; $4cbe: $89
	ld   a, b                                        ; $4cbf: $78
	sbc  a                                           ; $4cc0: $9f
	dec  c                                           ; $4cc1: $0d
	nop                                              ; $4cc2: $00
	ld   a, [bc]                                     ; $4cc3: $0a
	dec  c                                           ; $4cc4: $0d
	nop                                              ; $4cc5: $00
	nop                                              ; $4cc6: $00
	rrca                                             ; $4cc7: $0f
	nop                                              ; $4cc8: $00
	ld   bc, $1e09                                   ; $4cc9: $01 $09 $1e
	nop                                              ; $4ccc: $00
	nop                                              ; $4ccd: $00
	inc  b                                           ; $4cce: $04
	add  b                                           ; $4ccf: $80
	daa                                              ; $4cd0: $27
	ld   bc, $20ff                                   ; $4cd1: $01 $ff $20
	inc  bc                                          ; $4cd4: $03
	ld   e, d                                        ; $4cd5: $5a
	ld   [bc], a                                     ; $4cd6: $02
	nop                                              ; $4cd7: $00
	jr   nz, jr_059_4cf6                             ; $4cd8: $20 $1c

	nop                                              ; $4cda: $00
	ld   c, $54                                      ; $4cdb: $0e $54
	rrca                                             ; $4cdd: $0f
	nop                                              ; $4cde: $00
	ld   bc, $1402                                   ; $4cdf: $01 $02 $14
	ld   a, [bc]                                     ; $4ce2: $0a
	ld   bc, $6101                                   ; $4ce3: $01 $01 $61
	and  c                                           ; $4ce6: $a1
	ld   a, c                                        ; $4ce7: $79
	ld   l, a                                        ; $4ce8: $6f
	ld   a, l                                        ; $4ce9: $7d
	sbc  a                                           ; $4cea: $9f
	dec  c                                           ; $4ceb: $0d
	inc  b                                           ; $4cec: $04
	ldh  [$03], a                                    ; $4ced: $e0 $03
	dec  hl                                          ; $4cef: $2b
	inc  bc                                          ; $4cf0: $03
	pop  hl                                          ; $4cf1: $e1
	sbc  b                                           ; $4cf2: $98
	dec  b                                           ; $4cf3: $05
	db   $10                                         ; $4cf4: $10
	adc  h                                           ; $4cf5: $8c

jr_059_4cf6:
	ld   h, l                                        ; $4cf6: $65
	ld   l, l                                        ; $4cf7: $6d
	sub  [hl]                                        ; $4cf8: $96
	sbc  a                                           ; $4cf9: $9f
	dec  c                                           ; $4cfa: $0d
	nop                                              ; $4cfb: $00
	ld   a, [bc]                                     ; $4cfc: $0a
	dec  b                                           ; $4cfd: $05
	add  b                                           ; $4cfe: $80
	ld   [hl], $01                                   ; $4cff: $36 $01
	ld   bc, $1c00                                   ; $4d01: $01 $00 $1c
	dec  b                                           ; $4d04: $05
	ld   bc, $0101                                   ; $4d05: $01 $01 $01
	ld   e, b                                        ; $4d08: $58
	ld   d, h                                        ; $4d09: $54
	sbc  [hl]                                        ; $4d0a: $9e
	ld   [$7d00], sp                                 ; $4d0b: $08 $00 $7d
	and  c                                           ; $4d0e: $a1
	sbc  a                                           ; $4d0f: $9f
	dec  c                                           ; $4d10: $0d
	inc  b                                           ; $4d11: $04
	rla                                              ; $4d12: $17
	ld   [hl], c                                     ; $4d13: $71
	ld   [hl], h                                     ; $4d14: $74
	ld   l, l                                        ; $4d15: $6d
	ld   [hl], l                                     ; $4d16: $75
	sbc  a                                           ; $4d17: $9f
	dec  c                                           ; $4d18: $0d
	nop                                              ; $4d19: $00
	ld   a, [bc]                                     ; $4d1a: $0a
	inc  e                                           ; $4d1b: $1c
	dec  b                                           ; $4d1c: $05
	nop                                              ; $4d1d: $00
	nop                                              ; $4d1e: $00
	ld   bc, $7889                                   ; $4d1f: $01 $89 $78
	sbc  [hl]                                        ; $4d22: $9e
	ld   h, e                                        ; $4d23: $63
	ld   [hl], c                                     ; $4d24: $71
	ld   l, e                                        ; $4d25: $6b
	ld   e, l                                        ; $4d26: $5d
	adc  h                                           ; $4d27: $8c
	ld   h, c                                        ; $4d28: $61
	halt                                             ; $4d29: $76
	ld   e, l                                        ; $4d2a: $5d
	and  c                                           ; $4d2b: $a1
	and  b                                           ; $4d2c: $a0
	dec  c                                           ; $4d2d: $0d
	cp   h                                           ; $4d2e: $bc
	call nz, Call_059_65c9                           ; $4d2f: $c4 $c9 $65
	ld   [hl], h                                     ; $4d32: $74
	halt                                             ; $4d33: $76
	rst  $38                                         ; $4d34: $ff
	rst  $38                                         ; $4d35: $ff
	dec  c                                           ; $4d36: $0d
	nop                                              ; $4d37: $00
	ld   a, [bc]                                     ; $4d38: $0a
	db   $10                                         ; $4d39: $10
	ld   a, $00                                      ; $4d3a: $3e $00
	ld   bc, $7889                                   ; $4d3c: $01 $89 $78
	sbc  [hl]                                        ; $4d3f: $9e
	inc  bc                                          ; $4d40: $03
	dec  d                                           ; $4d41: $15
	inc  b                                           ; $4d42: $04
	cp   a                                           ; $4d43: $bf
	ld   h, a                                        ; $4d44: $67
	sbc  c                                           ; $4d45: $99
	ld   [hl], l                                     ; $4d46: $75
	sbc  a                                           ; $4d47: $9f
	dec  c                                           ; $4d48: $0d
	nop                                              ; $4d49: $00
	ld   a, [bc]                                     ; $4d4a: $0a
	inc  e                                           ; $4d4b: $1c
	dec  b                                           ; $4d4c: $05
	rlca                                             ; $4d4d: $07
	rlca                                             ; $4d4e: $07
	ld   bc, $9e50                                   ; $4d4f: $01 $50 $9e
	ld   l, e                                        ; $4d52: $6b
	ld   d, h                                        ; $4d53: $54
	ld   l, e                                        ; $4d54: $6b
	ld   d, h                                        ; $4d55: $54
	sbc  a                                           ; $4d56: $9f
	ld   [bc], a                                     ; $4d57: $02
	sbc  l                                           ; $4d58: $9d
	ld   d, h                                        ; $4d59: $54
	halt                                             ; $4d5a: $76
	ld   e, l                                        ; $4d5b: $5d
	ld   e, a                                        ; $4d5c: $5f
	ld   [hl], a                                     ; $4d5d: $77
	dec  c                                           ; $4d5e: $0d
	and  a                                           ; $4d5f: $a7
	cp   [hl]                                        ; $4d60: $be
	ld   [hl], d                                     ; $4d61: $72
	ld   d, d                                        ; $4d62: $52
	ld   l, l                                        ; $4d63: $6d
	sub  a                                           ; $4d64: $97
	pop  de                                          ; $4d65: $d1
	or   b                                           ; $4d66: $b0
	ret  nc                                          ; $4d67: $d0

	push bc                                          ; $4d68: $c5
	ld   h, a                                        ; $4d69: $67
	sbc  c                                           ; $4d6a: $99
	ld   e, c                                        ; $4d6b: $59
	sub  a                                           ; $4d6c: $97
	dec  c                                           ; $4d6d: $0d
	inc  bc                                          ; $4d6e: $03
	ld   [hl], l                                     ; $4d6f: $75
	ld   h, l                                        ; $4d70: $65
	ld   [hl], h                                     ; $4d71: $74
	inc  bc                                          ; $4d72: $03
	call c, $9956                                    ; $4d73: $dc $56 $99
	sub  [hl]                                        ; $4d76: $96
	ld   d, h                                        ; $4d77: $54
	ld   a, c                                        ; $4d78: $79
	ld   a, b                                        ; $4d79: $78
	sbc  a                                           ; $4d7a: $9f
	dec  c                                           ; $4d7b: $0d
	nop                                              ; $4d7c: $00
	ld   a, [bc]                                     ; $4d7d: $0a
	inc  e                                           ; $4d7e: $1c
	dec  b                                           ; $4d7f: $05
	nop                                              ; $4d80: $00
	nop                                              ; $4d81: $00
	ld   bc, $7889                                   ; $4d82: $01 $89 $78
	sbc  [hl]                                        ; $4d85: $9e
	inc  bc                                          ; $4d86: $03
	dec  d                                           ; $4d87: $15
	inc  b                                           ; $4d88: $04
	cp   a                                           ; $4d89: $bf
	sbc  a                                           ; $4d8a: $9f
	dec  c                                           ; $4d8b: $0d
	ld   [$7d00], sp                                 ; $4d8c: $08 $00 $7d
	and  c                                           ; $4d8f: $a1
	ld   a, l                                        ; $4d90: $7d
	dec  c                                           ; $4d91: $0d
	inc  bc                                          ; $4d92: $03
	add  d                                           ; $4d93: $82
	ld   [bc], a                                     ; $4d94: $02
	xor  c                                           ; $4d95: $a9
	ld   [hl], l                                     ; $4d96: $75
	ld   d, b                                        ; $4d97: $50
	sbc  c                                           ; $4d98: $99
	sbc  a                                           ; $4d99: $9f
	dec  c                                           ; $4d9a: $0d
	nop                                              ; $4d9b: $00
	ld   a, [bc]                                     ; $4d9c: $0a
	add  hl, de                                      ; $4d9d: $19
	dec  b                                           ; $4d9e: $05
	inc  bc                                          ; $4d9f: $03
	ld   a, l                                        ; $4da0: $7d
	ld   d, d                                        ; $4da1: $52
	nop                                              ; $4da2: $00
	nop                                              ; $4da3: $00
	ld   d, d                                        ; $4da4: $52
	ld   d, d                                        ; $4da5: $52
	ld   d, [hl]                                     ; $4da6: $56
	nop                                              ; $4da7: $00
	ld   bc, $6f77                                   ; $4da8: $01 $77 $6f
	sub  a                                           ; $4dab: $97
	halt                                             ; $4dac: $76
	sub  b                                           ; $4dad: $90
	ld   [bc], a                                     ; $4dae: $02
	sbc  l                                           ; $4daf: $9d
	ld   d, [hl]                                     ; $4db0: $56
	ld   a, b                                        ; $4db1: $78
	ld   d, d                                        ; $4db2: $52
	nop                                              ; $4db3: $00
	ld   [bc], a                                     ; $4db4: $02
	rlca                                             ; $4db5: $07
	ld   hl, sp+$00                                  ; $4db6: $f8 $00
	ld   [bc], a                                     ; $4db8: $02
	inc  bc                                          ; $4db9: $03
	ld   bc, $2000                                   ; $4dba: $01 $00 $20
	nop                                              ; $4dbd: $00
	rlca                                             ; $4dbe: $07
	ret  nz                                          ; $4dbf: $c0

	ld   bc, $0302                                   ; $4dc0: $01 $02 $03
	ld   bc, $2001                                   ; $4dc3: $01 $01 $20
	nop                                              ; $4dc6: $00
	rlca                                             ; $4dc7: $07
	pop  af                                          ; $4dc8: $f1
	ld   bc, $0302                                   ; $4dc9: $01 $02 $03
	ld   bc, $2002                                   ; $4dcc: $01 $02 $20
	nop                                              ; $4dcf: $00
	ld   b, $78                                      ; $4dd0: $06 $78
	inc  b                                           ; $4dd2: $04
	rrca                                             ; $4dd3: $0f
	nop                                              ; $4dd4: $00
	ld   bc, $7d01                                   ; $4dd5: $01 $01 $7d
	ld   d, d                                        ; $4dd8: $52
	sbc  a                                           ; $4dd9: $9f
	dec  c                                           ; $4dda: $0d
	nop                                              ; $4ddb: $00
	ld   a, [bc]                                     ; $4ddc: $0a
	rrca                                             ; $4ddd: $0f
	dec  b                                           ; $4dde: $05
	nop                                              ; $4ddf: $00
	ld   bc, $7889                                   ; $4de0: $01 $89 $78
	sbc  [hl]                                        ; $4de3: $9e
	inc  bc                                          ; $4de4: $03
	ld   l, b                                        ; $4de5: $68
	ld   a, h                                        ; $4de6: $7c
	inc  bc                                          ; $4de7: $03
	dec  d                                           ; $4de8: $15
	inc  b                                           ; $4de9: $04
	cp   a                                           ; $4dea: $bf
	sbc  a                                           ; $4deb: $9f
	dec  c                                           ; $4dec: $0d
	ld   [$7d00], sp                                 ; $4ded: $08 $00 $7d
	and  c                                           ; $4df0: $a1
	ld   a, l                                        ; $4df1: $7d
	dec  c                                           ; $4df2: $0d
	inc  de                                          ; $4df3: $13
	ld   de, $0511                                   ; $4df4: $11 $11 $05
	ret  c                                           ; $4df7: $d8

	ld   [hl], l                                     ; $4df8: $75
	ld   d, b                                        ; $4df9: $50
	sbc  c                                           ; $4dfa: $99
	sbc  a                                           ; $4dfb: $9f
	dec  c                                           ; $4dfc: $0d
	nop                                              ; $4dfd: $00
	ld   a, [bc]                                     ; $4dfe: $0a
	add  hl, de                                      ; $4dff: $19
	dec  b                                           ; $4e00: $05
	inc  bc                                          ; $4e01: $03
	ld   d, d                                        ; $4e02: $52
	ld   d, d                                        ; $4e03: $52
	ld   d, [hl]                                     ; $4e04: $56
	nop                                              ; $4e05: $00
	nop                                              ; $4e06: $00
	ld   a, l                                        ; $4e07: $7d
	ld   d, d                                        ; $4e08: $52
	nop                                              ; $4e09: $00
	ld   bc, $546b                                   ; $4e0a: $01 $6b $54
	ld   e, c                                        ; $4e0d: $59
	sub  b                                           ; $4e0e: $90
	ld   h, l                                        ; $4e0f: $65
	sbc  d                                           ; $4e10: $9a
	ld   a, b                                        ; $4e11: $78
	ld   d, d                                        ; $4e12: $52
	nop                                              ; $4e13: $00
	ld   [bc], a                                     ; $4e14: $02
	rlca                                             ; $4e15: $07
	ld   e, b                                        ; $4e16: $58
	ld   bc, $0302                                   ; $4e17: $01 $02 $03
	ld   bc, $2000                                   ; $4e1a: $01 $00 $20
	nop                                              ; $4e1d: $00
	rlca                                             ; $4e1e: $07
	ld   a, [hl+]                                    ; $4e1f: $2a
	ld   [bc], a                                     ; $4e20: $02
	ld   [bc], a                                     ; $4e21: $02
	inc  bc                                          ; $4e22: $03
	ld   bc, $2001                                   ; $4e23: $01 $01 $20
	nop                                              ; $4e26: $00
	rlca                                             ; $4e27: $07
	ld   e, d                                        ; $4e28: $5a
	ld   [bc], a                                     ; $4e29: $02
	ld   [bc], a                                     ; $4e2a: $02
	inc  bc                                          ; $4e2b: $03
	ld   bc, $2002                                   ; $4e2c: $01 $02 $20
	nop                                              ; $4e2f: $00
	ld   b, $78                                      ; $4e30: $06 $78
	inc  b                                           ; $4e32: $04
	rrca                                             ; $4e33: $0f
	nop                                              ; $4e34: $00
	ld   bc, $5201                                   ; $4e35: $01 $01 $52
	ld   d, d                                        ; $4e38: $52
	ld   d, [hl]                                     ; $4e39: $56
	sbc  a                                           ; $4e3a: $9f
	dec  c                                           ; $4e3b: $0d
	nop                                              ; $4e3c: $00
	ld   a, [bc]                                     ; $4e3d: $0a
	rrca                                             ; $4e3e: $0f
	dec  b                                           ; $4e3f: $05
	nop                                              ; $4e40: $00
	ld   bc, $7d75                                   ; $4e41: $01 $75 $7d
	sbc  [hl]                                        ; $4e44: $9e
	inc  bc                                          ; $4e45: $03
	ld   l, c                                        ; $4e46: $69
	ld   [bc], a                                     ; $4e47: $02
	xor  d                                           ; $4e48: $aa
	ld   a, h                                        ; $4e49: $7c
	inc  bc                                          ; $4e4a: $03
	dec  d                                           ; $4e4b: $15
	inc  b                                           ; $4e4c: $04
	cp   a                                           ; $4e4d: $bf
	sbc  a                                           ; $4e4e: $9f
	dec  c                                           ; $4e4f: $0d
	ld   [bc], a                                     ; $4e50: $02
	sbc  b                                           ; $4e51: $98
	inc  bc                                          ; $4e52: $03
	nop                                              ; $4e53: $00
	ld   a, h                                        ; $4e54: $7c
	inc  b                                           ; $4e55: $04
	dec  c                                           ; $4e56: $0d
	ld   [bc], a                                     ; $4e57: $02
	sub  [hl]                                        ; $4e58: $96
	inc  b                                           ; $4e59: $04
	ld   b, l                                        ; $4e5a: $45
	inc  b                                           ; $4e5b: $04
	ld   a, [bc]                                     ; $4e5c: $0a
	and  b                                           ; $4e5d: $a0
	dec  c                                           ; $4e5e: $0d
	ld   e, d                                        ; $4e5f: $5a
	and  c                                           ; $4e60: $a1
	ld   a, [hl]                                     ; $4e61: $7e
	ld   [hl], c                                     ; $4e62: $71
	ld   [hl], h                                     ; $4e63: $74
	ld   d, d                                        ; $4e64: $52
	sbc  c                                           ; $4e65: $99
	sbc  a                                           ; $4e66: $9f
	dec  c                                           ; $4e67: $0d
	nop                                              ; $4e68: $00
	ld   a, [bc]                                     ; $4e69: $0a
	add  hl, de                                      ; $4e6a: $19
	dec  b                                           ; $4e6b: $05
	inc  bc                                          ; $4e6c: $03
	ld   a, l                                        ; $4e6d: $7d
	ld   d, d                                        ; $4e6e: $52
	nop                                              ; $4e6f: $00
	nop                                              ; $4e70: $00
	ld   d, d                                        ; $4e71: $52
	ld   d, d                                        ; $4e72: $52
	ld   d, [hl]                                     ; $4e73: $56
	nop                                              ; $4e74: $00
	ld   bc, $599d                                   ; $4e75: $01 $9d $59
	sub  a                                           ; $4e78: $97
	ld   a, b                                        ; $4e79: $78
	ld   d, d                                        ; $4e7a: $52
	nop                                              ; $4e7b: $00
	ld   [bc], a                                     ; $4e7c: $02
	rlca                                             ; $4e7d: $07
	ei                                               ; $4e7e: $fb
	ld   [bc], a                                     ; $4e7f: $02
	ld   [bc], a                                     ; $4e80: $02
	inc  bc                                          ; $4e81: $03
	ld   bc, $2000                                   ; $4e82: $01 $00 $20
	nop                                              ; $4e85: $00
	rlca                                             ; $4e86: $07
	sbc  [hl]                                        ; $4e87: $9e
	inc  bc                                          ; $4e88: $03
	ld   [bc], a                                     ; $4e89: $02
	inc  bc                                          ; $4e8a: $03
	ld   bc, $2001                                   ; $4e8b: $01 $01 $20
	nop                                              ; $4e8e: $00
	rlca                                             ; $4e8f: $07
	sub  c                                           ; $4e90: $91
	ld   [bc], a                                     ; $4e91: $02
	ld   [bc], a                                     ; $4e92: $02
	inc  bc                                          ; $4e93: $03
	ld   bc, $2002                                   ; $4e94: $01 $02 $20
	nop                                              ; $4e97: $00
	ld   b, $78                                      ; $4e98: $06 $78
	inc  b                                           ; $4e9a: $04
	rrca                                             ; $4e9b: $0f
	nop                                              ; $4e9c: $00
	ld   bc, $5201                                   ; $4e9d: $01 $01 $52
	ld   d, d                                        ; $4ea0: $52
	ld   d, [hl]                                     ; $4ea1: $56
	rst  $38                                         ; $4ea2: $ff
	rst  $38                                         ; $4ea3: $ff
	dec  c                                           ; $4ea4: $0d
	nop                                              ; $4ea5: $00
	ld   a, [bc]                                     ; $4ea6: $0a
	dec  c                                           ; $4ea7: $0d
	nop                                              ; $4ea8: $00
	nop                                              ; $4ea9: $00
	inc  c                                           ; $4eaa: $0c
	ld   [$051c], sp                                 ; $4eab: $08 $1c $05
	jr   nz, jr_059_4eb8                             ; $4eae: $20 $08

	ld   sp, $2040                                   ; $4eb0: $31 $40 $20
	inc  bc                                          ; $4eb3: $03
	jr   nz, jr_059_4eb7                             ; $4eb4: $20 $01

	inc  d                                           ; $4eb6: $14

jr_059_4eb7:
	add  hl, hl                                      ; $4eb7: $29

jr_059_4eb8:
	nop                                              ; $4eb8: $00
	ld   bc, $5950                                   ; $4eb9: $01 $50 $59
	and  c                                           ; $4ebc: $a1
	ld   e, d                                        ; $4ebd: $5a
	ld   a, b                                        ; $4ebe: $78
	and  a                                           ; $4ebf: $a7
	cp   [hl]                                        ; $4ec0: $be
	ld   [hl], d                                     ; $4ec1: $72
	ld   d, d                                        ; $4ec2: $52
	ld   l, l                                        ; $4ec3: $6d
	sub  a                                           ; $4ec4: $97
	sbc  a                                           ; $4ec5: $9f
	dec  c                                           ; $4ec6: $0d
	nop                                              ; $4ec7: $00
	ld   a, [bc]                                     ; $4ec8: $0a
	ld   b, $ca                                      ; $4ec9: $06 $ca
	ld   [bc], a                                     ; $4ecb: $02
	rrca                                             ; $4ecc: $0f
	nop                                              ; $4ecd: $00
	ld   bc, $7701                                   ; $4ece: $01 $01 $77
	ld   l, a                                        ; $4ed1: $6f
	sub  a                                           ; $4ed2: $97
	halt                                             ; $4ed3: $76
	sub  b                                           ; $4ed4: $90
	ld   [bc], a                                     ; $4ed5: $02
	sbc  l                                           ; $4ed6: $9d
	ld   d, [hl]                                     ; $4ed7: $56
	adc  h                                           ; $4ed8: $8c
	ld   l, c                                        ; $4ed9: $69
	and  c                                           ; $4eda: $a1
	rst  $38                                         ; $4edb: $ff
	rst  $38                                         ; $4edc: $ff
	dec  c                                           ; $4edd: $0d
	nop                                              ; $4ede: $00
	ld   a, [bc]                                     ; $4edf: $0a
	dec  c                                           ; $4ee0: $0d
	nop                                              ; $4ee1: $00
	nop                                              ; $4ee2: $00
	inc  c                                           ; $4ee3: $0c
	ld   [$051c], sp                                 ; $4ee4: $08 $1c $05
	jr   nz, jr_059_4ef1                             ; $4ee7: $20 $08

	ld   sp, $2040                                   ; $4ee9: $31 $40 $20
	inc  bc                                          ; $4eec: $03
	jr   nz, jr_059_4ef0                             ; $4eed: $20 $01

	inc  d                                           ; $4eef: $14

jr_059_4ef0:
	add  hl, hl                                      ; $4ef0: $29

jr_059_4ef1:
	nop                                              ; $4ef1: $00
	ld   bc, $5950                                   ; $4ef2: $01 $50 $59
	and  c                                           ; $4ef5: $a1
	ld   e, d                                        ; $4ef6: $5a
	ld   a, b                                        ; $4ef7: $78
	and  a                                           ; $4ef8: $a7
	cp   [hl]                                        ; $4ef9: $be
	ld   [hl], d                                     ; $4efa: $72
	ld   d, d                                        ; $4efb: $52
	ld   l, l                                        ; $4efc: $6d
	sub  a                                           ; $4efd: $97
	sbc  a                                           ; $4efe: $9f
	dec  c                                           ; $4eff: $0d
	nop                                              ; $4f00: $00
	ld   a, [bc]                                     ; $4f01: $0a
	ld   b, $ca                                      ; $4f02: $06 $ca
	ld   [bc], a                                     ; $4f04: $02
	rrca                                             ; $4f05: $0f
	nop                                              ; $4f06: $00
	ld   bc, $7d01                                   ; $4f07: $01 $01 $7d
	ld   d, d                                        ; $4f0a: $52
	rst  $38                                         ; $4f0b: $ff
	rst  $38                                         ; $4f0c: $ff
	dec  c                                           ; $4f0d: $0d
	nop                                              ; $4f0e: $00
	ld   a, [bc]                                     ; $4f0f: $0a
	dec  c                                           ; $4f10: $0d
	nop                                              ; $4f11: $00
	nop                                              ; $4f12: $00
	inc  c                                           ; $4f13: $0c
	ld   [$051c], sp                                 ; $4f14: $08 $1c $05
	jr   nz, jr_059_4f21                             ; $4f17: $20 $08

	ld   sp, $2040                                   ; $4f19: $31 $40 $20
	inc  bc                                          ; $4f1c: $03
	jr   nz, jr_059_4f20                             ; $4f1d: $20 $01

	inc  d                                           ; $4f1f: $14

jr_059_4f20:
	add  hl, hl                                      ; $4f20: $29

jr_059_4f21:
	nop                                              ; $4f21: $00
	ld   bc, $5950                                   ; $4f22: $01 $50 $59
	and  c                                           ; $4f25: $a1
	ld   e, d                                        ; $4f26: $5a
	ld   a, b                                        ; $4f27: $78
	and  a                                           ; $4f28: $a7
	cp   [hl]                                        ; $4f29: $be
	ld   [hl], d                                     ; $4f2a: $72
	ld   d, d                                        ; $4f2b: $52
	ld   l, l                                        ; $4f2c: $6d
	sub  a                                           ; $4f2d: $97
	sbc  a                                           ; $4f2e: $9f
	dec  c                                           ; $4f2f: $0d
	nop                                              ; $4f30: $00
	ld   a, [bc]                                     ; $4f31: $0a
	ld   b, $ca                                      ; $4f32: $06 $ca
	ld   [bc], a                                     ; $4f34: $02
	rrca                                             ; $4f35: $0f
	nop                                              ; $4f36: $00
	ld   bc, $6b01                                   ; $4f37: $01 $01 $6b
	ld   d, h                                        ; $4f3a: $54
	ld   e, c                                        ; $4f3b: $59
	sub  b                                           ; $4f3c: $90
	ld   h, l                                        ; $4f3d: $65
	sbc  d                                           ; $4f3e: $9a
	adc  h                                           ; $4f3f: $8c
	ld   l, c                                        ; $4f40: $69
	and  c                                           ; $4f41: $a1
	rst  $38                                         ; $4f42: $ff
	rst  $38                                         ; $4f43: $ff
	dec  c                                           ; $4f44: $0d
	nop                                              ; $4f45: $00
	ld   a, [bc]                                     ; $4f46: $0a
	dec  c                                           ; $4f47: $0d
	nop                                              ; $4f48: $00
	nop                                              ; $4f49: $00
	inc  c                                           ; $4f4a: $0c
	ld   [$051c], sp                                 ; $4f4b: $08 $1c $05
	jr   nz, jr_059_4f58                             ; $4f4e: $20 $08

	ld   sp, $2040                                   ; $4f50: $31 $40 $20
	inc  bc                                          ; $4f53: $03
	jr   nz, jr_059_4f57                             ; $4f54: $20 $01

	inc  d                                           ; $4f56: $14

jr_059_4f57:
	add  hl, hl                                      ; $4f57: $29

jr_059_4f58:
	nop                                              ; $4f58: $00
	ld   bc, $5950                                   ; $4f59: $01 $50 $59
	and  c                                           ; $4f5c: $a1
	ld   e, d                                        ; $4f5d: $5a
	ld   a, b                                        ; $4f5e: $78
	and  a                                           ; $4f5f: $a7
	cp   [hl]                                        ; $4f60: $be
	ld   [hl], d                                     ; $4f61: $72
	ld   d, d                                        ; $4f62: $52
	ld   l, l                                        ; $4f63: $6d
	sub  a                                           ; $4f64: $97
	sbc  a                                           ; $4f65: $9f
	dec  c                                           ; $4f66: $0d
	nop                                              ; $4f67: $00
	ld   a, [bc]                                     ; $4f68: $0a
	ld   b, $ca                                      ; $4f69: $06 $ca
	ld   [bc], a                                     ; $4f6b: $02
	rrca                                             ; $4f6c: $0f
	nop                                              ; $4f6d: $00
	ld   bc, $5401                                   ; $4f6e: $01 $01 $54
	db   $fc                                         ; $4f71: $fc
	and  c                                           ; $4f72: $a1
	rst  $38                                         ; $4f73: $ff
	rst  $38                                         ; $4f74: $ff
	dec  c                                           ; $4f75: $0d
	sbc  l                                           ; $4f76: $9d
	ld   e, c                                        ; $4f77: $59
	sbc  b                                           ; $4f78: $98
	adc  h                                           ; $4f79: $8c
	ld   l, c                                        ; $4f7a: $69
	and  c                                           ; $4f7b: $a1
	sbc  a                                           ; $4f7c: $9f
	dec  c                                           ; $4f7d: $0d
	nop                                              ; $4f7e: $00
	ld   a, [bc]                                     ; $4f7f: $0a
	dec  c                                           ; $4f80: $0d
	nop                                              ; $4f81: $00
	nop                                              ; $4f82: $00
	inc  c                                           ; $4f83: $0c
	ld   [$051c], sp                                 ; $4f84: $08 $1c $05
	jr   nz, jr_059_4f91                             ; $4f87: $20 $08

	ld   sp, $2040                                   ; $4f89: $31 $40 $20
	inc  bc                                          ; $4f8c: $03
	jr   nz, jr_059_4f90                             ; $4f8d: $20 $01

	inc  d                                           ; $4f8f: $14

jr_059_4f90:
	add  hl, hl                                      ; $4f90: $29

jr_059_4f91:
	nop                                              ; $4f91: $00
	ld   bc, $5950                                   ; $4f92: $01 $50 $59
	and  c                                           ; $4f95: $a1
	ld   e, d                                        ; $4f96: $5a
	ld   a, b                                        ; $4f97: $78
	and  a                                           ; $4f98: $a7
	cp   [hl]                                        ; $4f99: $be
	ld   [hl], d                                     ; $4f9a: $72
	ld   d, d                                        ; $4f9b: $52
	ld   l, l                                        ; $4f9c: $6d
	sub  a                                           ; $4f9d: $97
	sbc  a                                           ; $4f9e: $9f
	dec  c                                           ; $4f9f: $0d
	nop                                              ; $4fa0: $00
	ld   a, [bc]                                     ; $4fa1: $0a
	ld   b, $ca                                      ; $4fa2: $06 $ca
	ld   [bc], a                                     ; $4fa4: $02
	ld   bc, $618c                                   ; $4fa5: $01 $8c $61
	halt                                             ; $4fa8: $76
	ld   e, l                                        ; $4fa9: $5d
	and  c                                           ; $4faa: $a1
	ld   b, $0d                                      ; $4fab: $06 $0d
	inc  b                                           ; $4fad: $04
	ld   e, [hl]                                     ; $4fae: $5e
	ld   h, l                                        ; $4faf: $65
	ld   l, l                                        ; $4fb0: $6d
	ld   h, l                                        ; $4fb1: $65
	sbc  [hl]                                        ; $4fb2: $9e
	dec  c                                           ; $4fb3: $0d
	ld   [bc], a                                     ; $4fb4: $02
	and  l                                           ; $4fb5: $a5
	inc  b                                           ; $4fb6: $04
	xor  d                                           ; $4fb7: $aa
	ld   a, l                                        ; $4fb8: $7d
	ld   h, c                                        ; $4fb9: $61
	sbc  d                                           ; $4fba: $9a
	ld   [hl], l                                     ; $4fbb: $75
	ld   e, b                                        ; $4fbc: $58
	ld   h, l                                        ; $4fbd: $65
	adc  h                                           ; $4fbe: $8c
	ld   d, d                                        ; $4fbf: $52
	sub  d                                           ; $4fc0: $92
	sbc  a                                           ; $4fc1: $9f
	dec  c                                           ; $4fc2: $0d
	adc  c                                           ; $4fc3: $89
	ld   a, b                                        ; $4fc4: $78
	sbc  [hl]                                        ; $4fc5: $9e
	adc  h                                           ; $4fc6: $8c
	ld   l, l                                        ; $4fc7: $6d
	ld   a, b                                        ; $4fc8: $78
	sbc  a                                           ; $4fc9: $9f
	dec  c                                           ; $4fca: $0d
	nop                                              ; $4fcb: $00
	ld   a, [bc]                                     ; $4fcc: $0a
	dec  c                                           ; $4fcd: $0d
	nop                                              ; $4fce: $00
	nop                                              ; $4fcf: $00
	rrca                                             ; $4fd0: $0f
	nop                                              ; $4fd1: $00
	ld   bc, $1e09                                   ; $4fd2: $01 $09 $1e
	nop                                              ; $4fd5: $00
	rrca                                             ; $4fd6: $0f
	nop                                              ; $4fd7: $00
	ld   bc, $7d01                                   ; $4fd8: $01 $01 $7d
	ld   d, d                                        ; $4fdb: $52
	rst  $38                                         ; $4fdc: $ff
	rst  $38                                         ; $4fdd: $ff
	dec  c                                           ; $4fde: $0d
	nop                                              ; $4fdf: $00
	ld   a, [bc]                                     ; $4fe0: $0a
	rlca                                             ; $4fe1: $07
	ld   h, l                                        ; $4fe2: $65
	inc  bc                                          ; $4fe3: $03
	inc  bc                                          ; $4fe4: $03
	ld   hl, $9601                                   ; $4fe5: $21 $01 $96
	dec  h                                           ; $4fe8: $25
	nop                                              ; $4fe9: $00
	dec  c                                           ; $4fea: $0d
	nop                                              ; $4feb: $00
	nop                                              ; $4fec: $00
	rrca                                             ; $4fed: $0f
	nop                                              ; $4fee: $00
	ld   bc, $080c                                   ; $4fef: $01 $0c $08
	inc  e                                           ; $4ff2: $1c
	dec  b                                           ; $4ff3: $05
	jr   nz, jr_059_4ffe                             ; $4ff4: $20 $08

	ld   bc, $5950                                   ; $4ff6: $01 $50 $59
	and  c                                           ; $4ff9: $a1
	ld   e, d                                        ; $4ffa: $5a
	ld   a, b                                        ; $4ffb: $78
	and  a                                           ; $4ffc: $a7
	cp   [hl]                                        ; $4ffd: $be

jr_059_4ffe:
	ld   [hl], d                                     ; $4ffe: $72
	ld   d, d                                        ; $4fff: $52
	ld   l, l                                        ; $5000: $6d
	sub  a                                           ; $5001: $97
	sbc  a                                           ; $5002: $9f
	dec  c                                           ; $5003: $0d
	nop                                              ; $5004: $00
	ld   a, [bc]                                     ; $5005: $0a
	ld   sp, $2040                                   ; $5006: $31 $40 $20
	inc  bc                                          ; $5009: $03
	jr   nz, jr_059_500d                             ; $500a: $20 $01

	inc  d                                           ; $500c: $14

jr_059_500d:
	add  hl, hl                                      ; $500d: $29
	nop                                              ; $500e: $00
	ld   bc, $618c                                   ; $500f: $01 $8c $61
	halt                                             ; $5012: $76
	ld   e, l                                        ; $5013: $5d
	and  c                                           ; $5014: $a1
	ld   b, $0d                                      ; $5015: $06 $0d
	inc  b                                           ; $5017: $04
	ld   e, [hl]                                     ; $5018: $5e
	ld   h, l                                        ; $5019: $65
	ld   l, l                                        ; $501a: $6d
	ld   h, l                                        ; $501b: $65
	sbc  [hl]                                        ; $501c: $9e
	dec  c                                           ; $501d: $0d
	ld   [bc], a                                     ; $501e: $02
	and  l                                           ; $501f: $a5
	inc  b                                           ; $5020: $04
	xor  d                                           ; $5021: $aa
	ld   a, l                                        ; $5022: $7d
	ld   h, c                                        ; $5023: $61
	sbc  d                                           ; $5024: $9a
	ld   [hl], l                                     ; $5025: $75
	ld   e, b                                        ; $5026: $58
	ld   h, l                                        ; $5027: $65
	adc  h                                           ; $5028: $8c
	ld   d, d                                        ; $5029: $52
	sub  d                                           ; $502a: $92
	sbc  a                                           ; $502b: $9f
	dec  c                                           ; $502c: $0d
	adc  c                                           ; $502d: $89
	ld   a, b                                        ; $502e: $78
	sbc  [hl]                                        ; $502f: $9e
	adc  h                                           ; $5030: $8c
	ld   l, l                                        ; $5031: $6d
	ld   a, b                                        ; $5032: $78
	sbc  a                                           ; $5033: $9f
	dec  c                                           ; $5034: $0d
	nop                                              ; $5035: $00
	ld   a, [bc]                                     ; $5036: $0a
	dec  c                                           ; $5037: $0d
	nop                                              ; $5038: $00
	nop                                              ; $5039: $00
	rrca                                             ; $503a: $0f
	nop                                              ; $503b: $00
	ld   bc, $1e09                                   ; $503c: $01 $09 $1e
	nop                                              ; $503f: $00
	inc  e                                           ; $5040: $1c
	dec  b                                           ; $5041: $05
	ld   bc, $1d01                                   ; $5042: $01 $01 $1d
	ld   b, b                                        ; $5045: $40
	dec  d                                           ; $5046: $15
	inc  bc                                          ; $5047: $03
	dec  d                                           ; $5048: $15
	ld   bc, $2802                                   ; $5049: $01 $02 $28
	nop                                              ; $504c: $00
	ld   bc, $6763                                   ; $504d: $01 $63 $67
	ld   e, d                                        ; $5050: $5a
	sbc  [hl]                                        ; $5051: $9e
	ld   [$7d00], sp                                 ; $5052: $08 $00 $7d
	and  c                                           ; $5055: $a1
	sbc  a                                           ; $5056: $9f
	dec  c                                           ; $5057: $0d
	ld   h, c                                        ; $5058: $61
	sbc  d                                           ; $5059: $9a

Jump_059_505a:
	ld   e, c                                        ; $505a: $59
	sub  a                                           ; $505b: $97
	sub  b                                           ; $505c: $90
	sbc  [hl]                                        ; $505d: $9e
	and  a                                           ; $505e: $a7
	cp   [hl]                                        ; $505f: $be
	ld   a, l                                        ; $5060: $7d
	ld   [hl], d                                     ; $5061: $72
	ld   e, c                                        ; $5062: $59
	and  c                                           ; $5063: $a1
	dec  c                                           ; $5064: $0d
	sub  [hl]                                        ; $5065: $96
	ld   d, h                                        ; $5066: $54
	ld   a, c                                        ; $5067: $79
	ld   a, b                                        ; $5068: $78
	sbc  a                                           ; $5069: $9f
	dec  c                                           ; $506a: $0d
	nop                                              ; $506b: $00
	ld   a, [bc]                                     ; $506c: $0a
	ld   bc, $7889                                   ; $506d: $01 $89 $78
	sbc  [hl]                                        ; $5070: $9e
	adc  h                                           ; $5071: $8c
	ld   l, l                                        ; $5072: $6d
	ld   a, b                                        ; $5073: $78
	sbc  a                                           ; $5074: $9f
	dec  c                                           ; $5075: $0d
	nop                                              ; $5076: $00
	ld   a, [bc]                                     ; $5077: $0a
	nop                                              ; $5078: $00
	rrca                                             ; $5079: $0f
	nop                                              ; $507a: $00
	ld   bc, $5201                                   ; $507b: $01 $01 $52
	ld   d, d                                        ; $507e: $52
	ld   d, [hl]                                     ; $507f: $56
	rst  $38                                         ; $5080: $ff
	rst  $38                                         ; $5081: $ff
	dec  c                                           ; $5082: $0d
	nop                                              ; $5083: $00
	ld   a, [bc]                                     ; $5084: $0a
	rlca                                             ; $5085: $07
	rlca                                             ; $5086: $07
	inc  b                                           ; $5087: $04
	inc  bc                                          ; $5088: $03
	ld   hl, $9601                                   ; $5089: $21 $01 $96
	dec  h                                           ; $508c: $25
	nop                                              ; $508d: $00
	inc  e                                           ; $508e: $1c
	dec  b                                           ; $508f: $05
	ld   [bc], a                                     ; $5090: $02
	ld   [bc], a                                     ; $5091: $02
	dec  e                                           ; $5092: $1d
	ld   b, b                                        ; $5093: $40
	dec  d                                           ; $5094: $15
	inc  bc                                          ; $5095: $03
	dec  d                                           ; $5096: $15
	ld   bc, $2802                                   ; $5097: $01 $02 $28
	nop                                              ; $509a: $00
	ld   bc, $6763                                   ; $509b: $01 $63 $67
	ld   e, d                                        ; $509e: $5a
	sbc  [hl]                                        ; $509f: $9e

Call_059_50a0:
	ld   [$7d00], sp                                 ; $50a0: $08 $00 $7d
	and  c                                           ; $50a3: $a1
	sbc  a                                           ; $50a4: $9f
	dec  c                                           ; $50a5: $0d
	and  a                                           ; $50a6: $a7
	cp   [hl]                                        ; $50a7: $be
	ld   a, l                                        ; $50a8: $7d
	ld   [hl], d                                     ; $50a9: $72
	ld   d, d                                        ; $50aa: $52
	ld   [hl], h                                     ; $50ab: $74
	ld   a, b                                        ; $50ac: $78
	ld   d, d                                        ; $50ad: $52
	sub  [hl]                                        ; $50ae: $96
	ld   d, h                                        ; $50af: $54
	sub  d                                           ; $50b0: $92
	ld   a, b                                        ; $50b1: $78
	sbc  a                                           ; $50b2: $9f
	dec  c                                           ; $50b3: $0d
	ld   l, e                                        ; $50b4: $6b
	sub  d                                           ; $50b5: $92
	ld   e, a                                        ; $50b6: $5f
	ld   [hl], a                                     ; $50b7: $77
	rst  $38                                         ; $50b8: $ff
	rst  $38                                         ; $50b9: $ff
	dec  c                                           ; $50ba: $0d
	nop                                              ; $50bb: $00
	ld   a, [bc]                                     ; $50bc: $0a
	inc  e                                           ; $50bd: $1c
	dec  b                                           ; $50be: $05
	rlca                                             ; $50bf: $07
	rlca                                             ; $50c0: $07
	ld   bc, $5950                                   ; $50c1: $01 $50 $59
	and  c                                           ; $50c4: $a1
	ld   [hl], l                                     ; $50c5: $75
	sbc  a                                           ; $50c6: $9f
	inc  bc                                          ; $50c7: $03
	ld   l, l                                        ; $50c8: $6d
	dec  b                                           ; $50c9: $05
	add  hl, de                                      ; $50ca: $19
	sbc  [hl]                                        ; $50cb: $9e
	sub  b                                           ; $50cc: $90
	ld   [hl], c                                     ; $50cd: $71
	halt                                             ; $50ce: $76
	dec  c                                           ; $50cf: $0d
	ld   e, d                                        ; $50d0: $5a
	and  c                                           ; $50d1: $a1
	ld   a, [hl]                                     ; $50d2: $7e
	sub  a                                           ; $50d3: $97
	ld   a, b                                        ; $50d4: $78
	sbc  a                                           ; $50d5: $9f
	dec  c                                           ; $50d6: $0d
	adc  c                                           ; $50d7: $89
	ld   a, b                                        ; $50d8: $78
	sbc  [hl]                                        ; $50d9: $9e
	adc  h                                           ; $50da: $8c
	ld   l, l                                        ; $50db: $6d
	ld   a, b                                        ; $50dc: $78
	sbc  a                                           ; $50dd: $9f
	dec  c                                           ; $50de: $0d
	nop                                              ; $50df: $00
	ld   a, [bc]                                     ; $50e0: $0a
	nop                                              ; $50e1: $00
	dec  c                                           ; $50e2: $0d
	nop                                              ; $50e3: $00
	nop                                              ; $50e4: $00
	rrca                                             ; $50e5: $0f
	nop                                              ; $50e6: $00
	ld   bc, $080c                                   ; $50e7: $01 $0c $08
	inc  e                                           ; $50ea: $1c
	dec  b                                           ; $50eb: $05
	jr   nz, jr_059_50f6                             ; $50ec: $20 $08

	ld   bc, $5950                                   ; $50ee: $01 $50 $59
	and  c                                           ; $50f1: $a1
	ld   e, d                                        ; $50f2: $5a
	ld   a, b                                        ; $50f3: $78
	and  a                                           ; $50f4: $a7
	cp   [hl]                                        ; $50f5: $be

jr_059_50f6:
	ld   [hl], d                                     ; $50f6: $72
	ld   d, d                                        ; $50f7: $52
	ld   l, l                                        ; $50f8: $6d
	sub  a                                           ; $50f9: $97
	sbc  a                                           ; $50fa: $9f
	dec  c                                           ; $50fb: $0d
	nop                                              ; $50fc: $00
	ld   sp, $2040                                   ; $50fd: $31 $40 $20
	inc  bc                                          ; $5100: $03
	jr   nz, jr_059_5104                             ; $5101: $20 $01

	inc  d                                           ; $5103: $14

jr_059_5104:
	add  hl, hl                                      ; $5104: $29
	nop                                              ; $5105: $00
	ld   bc, $0008                                   ; $5106: $01 $08 $00
	ld   a, l                                        ; $5109: $7d
	and  c                                           ; $510a: $a1
	sbc  [hl]                                        ; $510b: $9e
	ld   d, [hl]                                     ; $510c: $56
	ld   d, [hl]                                     ; $510d: $56
	inc  bc                                          ; $510e: $03
	ld   [de], a                                     ; $510f: $12
	inc  bc                                          ; $5110: $03
	dec  sp                                          ; $5111: $3b
	sub  d                                           ; $5112: $92
	sbc  a                                           ; $5113: $9f
	dec  c                                           ; $5114: $0d
	ld   e, d                                        ; $5115: $5a
	and  c                                           ; $5116: $a1
	ld   a, [hl]                                     ; $5117: $7e
	ld   [hl], c                                     ; $5118: $71
	ld   [hl], h                                     ; $5119: $74
	sbc  c                                           ; $511a: $99
	sub  d                                           ; $511b: $92
	and  c                                           ; $511c: $a1
	ld   e, c                                        ; $511d: $59
	sbc  a                                           ; $511e: $9f
	dec  c                                           ; $511f: $0d
	nop                                              ; $5120: $00
	ld   a, [bc]                                     ; $5121: $0a
	ld   bc, $618c                                   ; $5122: $01 $8c $61
	halt                                             ; $5125: $76
	ld   e, l                                        ; $5126: $5d
	and  c                                           ; $5127: $a1
	ld   b, $0d                                      ; $5128: $06 $0d
	inc  b                                           ; $512a: $04
	ld   e, [hl]                                     ; $512b: $5e
	ld   h, l                                        ; $512c: $65
	ld   l, l                                        ; $512d: $6d
	ld   h, l                                        ; $512e: $65
	sbc  a                                           ; $512f: $9f
	dec  c                                           ; $5130: $0d
	ld   [bc], a                                     ; $5131: $02
	and  l                                           ; $5132: $a5
	inc  b                                           ; $5133: $04
	xor  d                                           ; $5134: $aa
	ld   a, l                                        ; $5135: $7d
	ld   h, c                                        ; $5136: $61
	sbc  d                                           ; $5137: $9a
	ld   [hl], l                                     ; $5138: $75
	ld   e, b                                        ; $5139: $58
	ld   h, l                                        ; $513a: $65
	adc  h                                           ; $513b: $8c
	ld   d, d                                        ; $513c: $52
	sub  d                                           ; $513d: $92
	sbc  a                                           ; $513e: $9f
	dec  c                                           ; $513f: $0d
	adc  c                                           ; $5140: $89
	ld   a, b                                        ; $5141: $78
	sbc  [hl]                                        ; $5142: $9e
	adc  h                                           ; $5143: $8c
	ld   l, l                                        ; $5144: $6d
	ld   a, b                                        ; $5145: $78
	sbc  a                                           ; $5146: $9f
	dec  c                                           ; $5147: $0d
	nop                                              ; $5148: $00
	ld   a, [bc]                                     ; $5149: $0a
	dec  c                                           ; $514a: $0d
	nop                                              ; $514b: $00
	nop                                              ; $514c: $00
	rrca                                             ; $514d: $0f
	nop                                              ; $514e: $00
	ld   bc, $1e09                                   ; $514f: $01 $09 $1e
	nop                                              ; $5152: $00
	dec  c                                           ; $5153: $0d
	nop                                              ; $5154: $00
	nop                                              ; $5155: $00
	rrca                                             ; $5156: $0f
	nop                                              ; $5157: $00
	ld   bc, $080c                                   ; $5158: $01 $0c $08
	inc  e                                           ; $515b: $1c
	dec  b                                           ; $515c: $05
	jr   nz, jr_059_5167                             ; $515d: $20 $08

	ld   bc, $5950                                   ; $515f: $01 $50 $59
	and  c                                           ; $5162: $a1
	ld   e, d                                        ; $5163: $5a
	ld   a, b                                        ; $5164: $78
	ret  nz                                          ; $5165: $c0

	and  l                                           ; $5166: $a5

jr_059_5167:
	ldh  [c], a                                      ; $5167: $e2
	xor  e                                           ; $5168: $ab
	ei                                               ; $5169: $fb
	pop  de                                          ; $516a: $d1
	ei                                               ; $516b: $fb
	sub  d                                           ; $516c: $92
	sbc  a                                           ; $516d: $9f
	dec  c                                           ; $516e: $0d
	nop                                              ; $516f: $00
	ld   a, [bc]                                     ; $5170: $0a
	ld   sp, $2040                                   ; $5171: $31 $40 $20
	inc  bc                                          ; $5174: $03
	jr   nz, jr_059_5178                             ; $5175: $20 $01

	inc  d                                           ; $5177: $14

jr_059_5178:
	add  hl, hl                                      ; $5178: $29
	nop                                              ; $5179: $00
	ld   bc, $618c                                   ; $517a: $01 $8c $61
	halt                                             ; $517d: $76
	ld   e, l                                        ; $517e: $5d
	and  c                                           ; $517f: $a1
	ld   b, $0d                                      ; $5180: $06 $0d
	inc  b                                           ; $5182: $04
	ld   e, [hl]                                     ; $5183: $5e
	ld   h, l                                        ; $5184: $65
	ld   l, l                                        ; $5185: $6d
	ld   h, l                                        ; $5186: $65
	sbc  [hl]                                        ; $5187: $9e
	dec  c                                           ; $5188: $0d
	ld   [bc], a                                     ; $5189: $02
	and  l                                           ; $518a: $a5
	inc  b                                           ; $518b: $04
	xor  d                                           ; $518c: $aa
	ld   a, l                                        ; $518d: $7d
	ld   h, c                                        ; $518e: $61
	sbc  d                                           ; $518f: $9a
	ld   [hl], l                                     ; $5190: $75
	ld   e, b                                        ; $5191: $58
	ld   h, l                                        ; $5192: $65
	adc  h                                           ; $5193: $8c
	ld   d, d                                        ; $5194: $52
	sub  d                                           ; $5195: $92
	sbc  a                                           ; $5196: $9f
	dec  c                                           ; $5197: $0d
	adc  c                                           ; $5198: $89
	ld   a, b                                        ; $5199: $78
	sbc  [hl]                                        ; $519a: $9e
	adc  h                                           ; $519b: $8c
	ld   l, l                                        ; $519c: $6d
	ld   a, b                                        ; $519d: $78
	sbc  a                                           ; $519e: $9f
	dec  c                                           ; $519f: $0d
	nop                                              ; $51a0: $00
	ld   a, [bc]                                     ; $51a1: $0a
	dec  c                                           ; $51a2: $0d
	nop                                              ; $51a3: $00
	nop                                              ; $51a4: $00
	rrca                                             ; $51a5: $0f
	nop                                              ; $51a6: $00
	ld   bc, $1e09                                   ; $51a7: $01 $09 $1e
	nop                                              ; $51aa: $00
	nop                                              ; $51ab: $00
	inc  bc                                          ; $51ac: $03
	ld   d, $01                                      ; $51ad: $16 $01
	and  b                                           ; $51af: $a0
	inc  h                                           ; $51b0: $24
	inc  bc                                          ; $51b1: $03
	ld   d, e                                        ; $51b2: $53
	ld   [bc], a                                     ; $51b3: $02
	nop                                              ; $51b4: $00
	inc  bc                                          ; $51b5: $03
	ld   c, l                                        ; $51b6: $4d
	add  hl, hl                                      ; $51b7: $29
	add  hl, hl                                      ; $51b8: $29
	ld   bc, $2201                                   ; $51b9: $01 $01 $22
	inc  e                                           ; $51bc: $1c
	nop                                              ; $51bd: $00
	inc  e                                           ; $51be: $1c
	ld   b, $00                                      ; $51bf: $06 $00
	nop                                              ; $51c1: $00
	ld   [bc], a                                     ; $51c2: $02
	ld   bc, $5458                                   ; $51c3: $01 $58 $54
	sbc  [hl]                                        ; $51c6: $9e
	ld   [$9f00], sp                                 ; $51c7: $08 $00 $9f
	dec  c                                           ; $51ca: $0d
	ld   l, a                                        ; $51cb: $6f
	sub  l                                           ; $51cc: $95
	ld   d, h                                        ; $51cd: $54
	ld   [hl], a                                     ; $51ce: $77
	sub  [hl]                                        ; $51cf: $96
	ld   e, c                                        ; $51d0: $59
	ld   [hl], c                                     ; $51d1: $71
	ld   l, l                                        ; $51d2: $6d
	sbc  a                                           ; $51d3: $9f
	inc  b                                           ; $51d4: $04
	adc  [hl]                                        ; $51d5: $8e
	inc  b                                           ; $51d6: $04
	inc  c                                           ; $51d7: $0c
	ld   a, h                                        ; $51d8: $7c
	dec  c                                           ; $51d9: $0d
	ld   e, a                                        ; $51da: $5f
	ld   d, d                                        ; $51db: $52
	ld   h, c                                        ; $51dc: $61
	and  b                                           ; $51dd: $a0
	inc  bc                                          ; $51de: $03
	ld   l, e                                        ; $51df: $6b
	inc  b                                           ; $51e0: $04
	ld   [de], a                                     ; $51e1: $12
	ld   [hl], c                                     ; $51e2: $71
	ld   [hl], h                                     ; $51e3: $74
	ld   e, l                                        ; $51e4: $5d
	sbc  d                                           ; $51e5: $9a
	sub  [hl]                                        ; $51e6: $96
	sbc  a                                           ; $51e7: $9f
	dec  c                                           ; $51e8: $0d
	nop                                              ; $51e9: $00
	ld   a, [bc]                                     ; $51ea: $0a
	add  hl, de                                      ; $51eb: $19
	dec  b                                           ; $51ec: $05
	ld   [bc], a                                     ; $51ed: $02
	ld   [bc], a                                     ; $51ee: $02
	ld   a, [de]                                     ; $51ef: $1a
	inc  bc                                          ; $51f0: $03
	ld   l, e                                        ; $51f1: $6b
	and  b                                           ; $51f2: $a0
	ld   h, a                                        ; $51f3: $67
	sbc  c                                           ; $51f4: $99
	nop                                              ; $51f5: $00
	nop                                              ; $51f6: $00
	ld   h, c                                        ; $51f7: $61
	halt                                             ; $51f8: $76
	sbc  l                                           ; $51f9: $9d
	sbc  c                                           ; $51fa: $99
	nop                                              ; $51fb: $00
	ld   bc, $b307                                   ; $51fc: $01 $07 $b3
	nop                                              ; $51ff: $00
	ld   [bc], a                                     ; $5200: $02
	inc  bc                                          ; $5201: $03
	ld   bc, $2000                                   ; $5202: $01 $00 $20
	nop                                              ; $5205: $00
	rlca                                             ; $5206: $07
	ld   d, h                                        ; $5207: $54
	nop                                              ; $5208: $00
	ld   [bc], a                                     ; $5209: $02
	inc  bc                                          ; $520a: $03
	ld   bc, $2001                                   ; $520b: $01 $01 $20
	nop                                              ; $520e: $00
	ld   b, $85                                      ; $520f: $06 $85
	nop                                              ; $5211: $00
	rrca                                             ; $5212: $0f
	nop                                              ; $5213: $00
	ld   bc, $6701                                   ; $5214: $01 $01 $67
	adc  l                                           ; $5217: $8d
	adc  h                                           ; $5218: $8c
	ld   l, c                                        ; $5219: $69
	and  c                                           ; $521a: $a1
	sbc  a                                           ; $521b: $9f
	dec  c                                           ; $521c: $0d
	ld   l, a                                        ; $521d: $6f
	sub  l                                           ; $521e: $95
	ld   [hl], c                                     ; $521f: $71
	halt                                             ; $5220: $76
	ld   [bc], a                                     ; $5221: $02
	and  l                                           ; $5222: $a5
	ld   a, l                                        ; $5223: $7d
	rst  $38                                         ; $5224: $ff
	rst  $38                                         ; $5225: $ff
	dec  c                                           ; $5226: $0d
	nop                                              ; $5227: $00
	ld   a, [bc]                                     ; $5228: $0a
	inc  e                                           ; $5229: $1c
	ld   b, $05                                      ; $522a: $06 $05
	dec  b                                           ; $522c: $05
	ld   bc, $546b                                   ; $522d: $01 $6b $54
	ld   e, c                                        ; $5230: $59
	rst  $38                                         ; $5231: $ff
	rst  $38                                         ; $5232: $ff
	dec  c                                           ; $5233: $0d
	ld   a, b                                        ; $5234: $78
	sub  a                                           ; $5235: $97
	sbc  [hl]                                        ; $5236: $9e
	inc  bc                                          ; $5237: $03
	dec  c                                           ; $5238: $0d
	inc  b                                           ; $5239: $04
	ld   a, b                                        ; $523a: $78
	ld   a, b                                        ; $523b: $78
	ld   d, d                                        ; $523c: $52
	ld   a, b                                        ; $523d: $78
	sbc  a                                           ; $523e: $9f
	dec  c                                           ; $523f: $0d
	nop                                              ; $5240: $00
	ld   a, [bc]                                     ; $5241: $0a
	nop                                              ; $5242: $00
	inc  e                                           ; $5243: $1c
	ld   b, $02                                      ; $5244: $06 $02
	ld   [bc], a                                     ; $5246: $02
	dec  e                                           ; $5247: $1d
	ld   b, b                                        ; $5248: $40
	ld   d, $03                                      ; $5249: $16 $03
	ld   d, $01                                      ; $524b: $16 $01
	ld   bc, $0029                                   ; $524d: $01 $29 $00
	ld   bc, $a178                                   ; $5250: $01 $78 $a1
	ld   l, [hl]                                     ; $5253: $6e
	sub  [hl]                                        ; $5254: $96
	rst  $38                                         ; $5255: $ff
	ld   d, d                                        ; $5256: $52
	ld   l, e                                        ; $5257: $6b
	ld   e, d                                        ; $5258: $5a
	ld   h, l                                        ; $5259: $65
	ld   d, d                                        ; $525a: $52
	ld   a, h                                        ; $525b: $7c
	ld   e, c                                        ; $525c: $59
	sub  [hl]                                        ; $525d: $96
	sbc  a                                           ; $525e: $9f
	dec  c                                           ; $525f: $0d
	ld   l, [hl]                                     ; $5260: $6e
	ld   [hl], c                                     ; $5261: $71
	ld   l, l                                        ; $5262: $6d
	sub  a                                           ; $5263: $97
	sbc  [hl]                                        ; $5264: $9e
	ld   l, e                                        ; $5265: $6b
	ld   d, h                                        ; $5266: $54
	ld   [bc], a                                     ; $5267: $02
	sbc  l                                           ; $5268: $9d
	ld   d, [hl]                                     ; $5269: $56
	sub  [hl]                                        ; $526a: $96
	ld   a, b                                        ; $526b: $78
	sbc  a                                           ; $526c: $9f
	dec  c                                           ; $526d: $0d
	nop                                              ; $526e: $00
	ld   a, [bc]                                     ; $526f: $0a
	nop                                              ; $5270: $00
	rrca                                             ; $5271: $0f
	nop                                              ; $5272: $00
	ld   bc, $5201                                   ; $5273: $01 $01 $52

Jump_059_5276:
	ld   d, d                                        ; $5276: $52
	ld   [hl], l                                     ; $5277: $75
	ld   h, a                                        ; $5278: $67
	sub  [hl]                                        ; $5279: $96
	sbc  a                                           ; $527a: $9f
	dec  c                                           ; $527b: $0d
	inc  b                                           ; $527c: $04
	ld   l, l                                        ; $527d: $6d
	ld   [hl], l                                     ; $527e: $75
	ld   e, b                                        ; $527f: $58
	inc  b                                           ; $5280: $04
	db   $ec                                         ; $5281: $ec
	ld   a, c                                        ; $5282: $79
	dec  b                                           ; $5283: $05
	ld   d, $74                                      ; $5284: $16 $74
	sbc  c                                           ; $5286: $99
	ld   a, b                                        ; $5287: $78
	sub  a                                           ; $5288: $97
	rst  $38                                         ; $5289: $ff
	rst  $38                                         ; $528a: $ff
	dec  c                                           ; $528b: $0d
	nop                                              ; $528c: $00
	ld   a, [bc]                                     ; $528d: $0a
	inc  e                                           ; $528e: $1c
	ld   b, $01                                      ; $528f: $06 $01
	ld   bc, $b601                                   ; $5291: $01 $01 $b6
	push af                                          ; $5294: $f5
	xor  [hl]                                        ; $5295: $ae
	rst  $20                                         ; $5296: $e7
	ei                                               ; $5297: $fb
	dec  c                                           ; $5298: $0d
	nop                                              ; $5299: $00
	ld   a, [bc]                                     ; $529a: $0a
	inc  e                                           ; $529b: $1c
	ld   b, $00                                      ; $529c: $06 $00
	nop                                              ; $529e: $00
	ld   bc, $9166                                   ; $529f: $01 $66 $91
	ld   d, b                                        ; $52a2: $50
	sbc  [hl]                                        ; $52a3: $9e
	ld   [$7d00], sp                                 ; $52a4: $08 $00 $7d
	dec  c                                           ; $52a7: $0d
	inc  b                                           ; $52a8: $04
	ld   hl, sp+$02                                  ; $52a9: $f8 $02
	add  a                                           ; $52ab: $87
	inc  b                                           ; $52ac: $04
	or   a                                           ; $52ad: $b7
	inc  bc                                          ; $52ae: $03
	add  d                                           ; $52af: $82
	ld   a, h                                        ; $52b0: $7c
	inc  b                                           ; $52b1: $04
	db   $ec                                         ; $52b2: $ec
	and  b                                           ; $52b3: $a0
	sub  d                                           ; $52b4: $92
	ld   [hl], c                                     ; $52b5: $71
	ld   [hl], h                                     ; $52b6: $74
	ld   e, l                                        ; $52b7: $5d
	sbc  d                                           ; $52b8: $9a
	sbc  a                                           ; $52b9: $9f
	dec  c                                           ; $52ba: $0d
	nop                                              ; $52bb: $00
	ld   a, [bc]                                     ; $52bc: $0a
	ld   bc, $6d50                                   ; $52bd: $01 $50 $6d
	ld   d, d                                        ; $52c0: $52
	ld   a, h                                        ; $52c1: $7c
	ld   [bc], a                                     ; $52c2: $02
	ld   a, h                                        ; $52c3: $7c
	ld   [bc], a                                     ; $52c4: $02
	or   [hl]                                        ; $52c5: $b6
	halt                                             ; $52c6: $76
	ld   a, h                                        ; $52c7: $7c
	dec  c                                           ; $52c8: $0d
	ld   [bc], a                                     ; $52c9: $02
	add  e                                           ; $52ca: $83
	dec  b                                           ; $52cb: $05
	rst  $38                                         ; $52cc: $ff
	cp   b                                           ; $52cd: $b8
	ei                                               ; $52ce: $fb
	push af                                          ; $52cf: $f5
	ld   l, [hl]                                     ; $52d0: $6e
	sbc  a                                           ; $52d1: $9f
	dec  c                                           ; $52d2: $0d
	ld   [bc], a                                     ; $52d3: $02
	and  l                                           ; $52d4: $a5
	ld   e, c                                        ; $52d5: $59
	sub  a                                           ; $52d6: $97
	ld   [bc], a                                     ; $52d7: $02
	sbc  l                                           ; $52d8: $9d
	ld   d, h                                        ; $52d9: $54
	ld   e, c                                        ; $52da: $59
	sub  a                                           ; $52db: $97
	ld   [bc], a                                     ; $52dc: $02
	ld   a, d                                        ; $52dd: $7a
	ld   d, [hl]                                     ; $52de: $56
	sbc  c                                           ; $52df: $99
	and  c                                           ; $52e0: $a1
	ld   l, [hl]                                     ; $52e1: $6e
	ld   l, h                                        ; $52e2: $6c
	sbc  a                                           ; $52e3: $9f
	dec  c                                           ; $52e4: $0d
	nop                                              ; $52e5: $00
	ld   a, [bc]                                     ; $52e6: $0a
	ld   bc, $688c                                   ; $52e7: $01 $8c $68
	ld   d, b                                        ; $52ea: $50
	ld   l, l                                        ; $52eb: $6d
	ld   d, d                                        ; $52ec: $52
	ld   a, h                                        ; $52ed: $7c
	dec  b                                           ; $52ee: $05
	ret  nc                                          ; $52ef: $d0

	ld   [bc], a                                     ; $52f0: $02
	ld   b, $04                                      ; $52f1: $06 $04
	ld   e, l                                        ; $52f3: $5d
	and  b                                           ; $52f4: $a0
	dec  c                                           ; $52f5: $0d
	ld   a, [bc]                                     ; $52f6: $0a
	ld   [bc], a                                     ; $52f7: $02
	ld   [bc], a                                     ; $52f8: $02
	inc  e                                           ; $52f9: $1c
	inc  bc                                          ; $52fa: $03
	ld   l, e                                        ; $52fb: $6b
	ld   [hl], l                                     ; $52fc: $75
	ld   a, l                                        ; $52fd: $7d
	sub  a                                           ; $52fe: $97
	ld   d, d                                        ; $52ff: $52
	ld   a, h                                        ; $5300: $7c
	ld   e, a                                        ; $5301: $5f
	sbc  c                                           ; $5302: $99
	ld   a, [bc]                                     ; $5303: $0a
	inc  bc                                          ; $5304: $03
	sbc  a                                           ; $5305: $9f
	dec  c                                           ; $5306: $0d
	nop                                              ; $5307: $00
	ld   a, [bc]                                     ; $5308: $0a
	ld   bc, $6803                                   ; $5309: $01 $03 $68
	ld   a, c                                        ; $530c: $79
	sbc  [hl]                                        ; $530d: $9e
	ld   d, b                                        ; $530e: $50
	ld   l, l                                        ; $530f: $6d
	ld   d, d                                        ; $5310: $52
	ld   a, h                                        ; $5311: $7c
	dec  b                                           ; $5312: $05
	ret  nc                                          ; $5313: $d0

	ld   [bc], a                                     ; $5314: $02
	ld   b, $04                                      ; $5315: $06 $04
	ld   e, l                                        ; $5317: $5d
	and  b                                           ; $5318: $a0
	dec  c                                           ; $5319: $0d
	ld   a, [bc]                                     ; $531a: $0a
	ld   [bc], a                                     ; $531b: $02
	ld   b, $3a                                      ; $531c: $06 $3a
	inc  bc                                          ; $531e: $03
	ld   l, e                                        ; $531f: $6b
	ld   [hl], l                                     ; $5320: $75
	ld   [bc], a                                     ; $5321: $02
	rst  $38                                         ; $5322: $ff
	ld   e, a                                        ; $5323: $5f
	halt                                             ; $5324: $76
	adc  a                                           ; $5325: $8f
	sbc  c                                           ; $5326: $99
	ld   a, [bc]                                     ; $5327: $0a
	inc  bc                                          ; $5328: $03
	sbc  a                                           ; $5329: $9f
	dec  c                                           ; $532a: $0d
	nop                                              ; $532b: $00
	ld   a, [bc]                                     ; $532c: $0a
	ld   bc, $656b                                   ; $532d: $01 $6b $65
	ld   [hl], h                                     ; $5330: $74
	sbc  [hl]                                        ; $5331: $9e
	inc  b                                           ; $5332: $04
	ld   hl, sp+$02                                  ; $5333: $f8 $02
	add  a                                           ; $5335: $87
	inc  b                                           ; $5336: $04
	or   a                                           ; $5337: $b7
	inc  bc                                          ; $5338: $03
	add  d                                           ; $5339: $82
	ld   a, l                                        ; $533a: $7d
	dec  c                                           ; $533b: $0d
	ld   d, b                                        ; $533c: $50
	ld   l, l                                        ; $533d: $6d
	ld   d, d                                        ; $533e: $52
	ld   a, c                                        ; $533f: $79
	sbc  [hl]                                        ; $5340: $9e
	ld   a, [bc]                                     ; $5341: $0a
	ld   [bc], a                                     ; $5342: $02
	inc  b                                           ; $5343: $04
	ld   hl, sp+$03                                  ; $5344: $f8 $03
	db   $10                                         ; $5346: $10
	ld   h, c                                        ; $5347: $61
	ld   d, h                                        ; $5348: $54
	ld   h, b                                        ; $5349: $60
	ld   e, e                                        ; $534a: $5b
	ld   a, [bc]                                     ; $534b: $0a
	inc  bc                                          ; $534c: $03
	sbc  a                                           ; $534d: $9f
	dec  c                                           ; $534e: $0d
	nop                                              ; $534f: $00
	ld   a, [bc]                                     ; $5350: $0a
	ld   bc, $8a58                                   ; $5351: $01 $58 $8a
	ld   d, [hl]                                     ; $5354: $56
	ld   l, l                                        ; $5355: $6d
	ld   e, c                                        ; $5356: $59
	ld   sp, hl                                      ; $5357: $f9
	dec  c                                           ; $5358: $0d
	ld   h, [hl]                                     ; $5359: $66
	sub  c                                           ; $535a: $91
	sbc  [hl]                                        ; $535b: $9e
	ld   d, d                                        ; $535c: $52
	ld   e, l                                        ; $535d: $5d
	ld   l, h                                        ; $535e: $6c
	ld   a, [$000d]                                  ; $535f: $fa $0d $00
	ld   a, [bc]                                     ; $5362: $0a
	inc  e                                           ; $5363: $1c
	ld   b, $02                                      ; $5364: $06 $02
	ld   [bc], a                                     ; $5366: $02
	ld   bc, $f804                                   ; $5367: $01 $04 $f8
	ld   [bc], a                                     ; $536a: $02
	add  a                                           ; $536b: $87
	inc  b                                           ; $536c: $04
	or   a                                           ; $536d: $b7
	inc  bc                                          ; $536e: $03
	add  d                                           ; $536f: $82
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $5370: $fa $10 $0d
	ld   e, b                                        ; $5373: $58
	ld   d, d                                        ; $5374: $52
	sub  a                                           ; $5375: $97
	ld   a, h                                        ; $5376: $7c
	dec  b                                           ; $5377: $05
	ret  nc                                          ; $5378: $d0

	ld   [bc], a                                     ; $5379: $02
	ld   b, $04                                      ; $537a: $06 $04
	ld   e, l                                        ; $537c: $5d
	and  b                                           ; $537d: $a0
	dec  c                                           ; $537e: $0d
	ld   e, l                                        ; $537f: $5d
	sub  a                                           ; $5380: $97
	ld   d, d                                        ; $5381: $52
	sub  d                                           ; $5382: $92
	ld   e, d                                        ; $5383: $5a
	sbc  d                                           ; $5384: $9a
	ld   a, [$000d]                                  ; $5385: $fa $0d $00
	ld   a, [bc]                                     ; $5388: $0a
	rrca                                             ; $5389: $0f
	nop                                              ; $538a: $00
	ld   bc, $5601                                   ; $538b: $01 $01 $56
	db   $fc                                         ; $538e: $fc
	halt                                             ; $538f: $76
	rst  $38                                         ; $5390: $ff
	rst  $38                                         ; $5391: $ff
	dec  c                                           ; $5392: $0d
	inc  b                                           ; $5393: $04
	ld   hl, sp+$02                                  ; $5394: $f8 $02
	add  a                                           ; $5396: $87
	inc  b                                           ; $5397: $04
	or   a                                           ; $5398: $b7
	inc  bc                                          ; $5399: $03
	add  d                                           ; $539a: $82
	ld   a, l                                        ; $539b: $7d
	ld   [bc], a                                     ; $539c: $02
	ld   a, h                                        ; $539d: $7c
	ld   [bc], a                                     ; $539e: $02
	or   [hl]                                        ; $539f: $b6
	ld   a, h                                        ; $53a0: $7c
	ld   [bc], a                                     ; $53a1: $02
	ld   c, b                                        ; $53a2: $48
	ld   [bc], a                                     ; $53a3: $02
	sub  c                                           ; $53a4: $91
	and  b                                           ; $53a5: $a0
	dec  c                                           ; $53a6: $0d
	ld   [hl], a                                     ; $53a7: $77
	ld   d, h                                        ; $53a8: $54
	ld   h, a                                        ; $53a9: $67
	sbc  c                                           ; $53aa: $99
	and  c                                           ; $53ab: $a1
	ld   l, [hl]                                     ; $53ac: $6e
	ld   [hl], c                                     ; $53ad: $71
	ld   e, a                                        ; $53ae: $5f
	ld   sp, hl                                      ; $53af: $f9
	dec  c                                           ; $53b0: $0d
	nop                                              ; $53b1: $00
	ld   a, [bc]                                     ; $53b2: $0a
	add  hl, de                                      ; $53b3: $19
	dec  b                                           ; $53b4: $05
	inc  bc                                          ; $53b5: $03
	ld   [bc], a                                     ; $53b6: $02
	inc  e                                           ; $53b7: $1c
	inc  bc                                          ; $53b8: $03
	ld   l, e                                        ; $53b9: $6b
	ld   [hl], l                                     ; $53ba: $75
	ld   a, l                                        ; $53bb: $7d
	sub  a                                           ; $53bc: $97
	ld   d, d                                        ; $53bd: $52
	ld   a, h                                        ; $53be: $7c
	ld   e, a                                        ; $53bf: $5f
	sbc  c                                           ; $53c0: $99
	nop                                              ; $53c1: $00
	nop                                              ; $53c2: $00
	ld   [bc], a                                     ; $53c3: $02
	inc  e                                           ; $53c4: $1c
	inc  bc                                          ; $53c5: $03
	ld   l, e                                        ; $53c6: $6b
	ld   [hl], l                                     ; $53c7: $75
	ld   [bc], a                                     ; $53c8: $02
	rst  $38                                         ; $53c9: $ff
	ld   e, a                                        ; $53ca: $5f
	halt                                             ; $53cb: $76
	adc  a                                           ; $53cc: $8f
	sbc  c                                           ; $53cd: $99
	nop                                              ; $53ce: $00
	ld   bc, $1c02                                   ; $53cf: $01 $02 $1c
	inc  bc                                          ; $53d2: $03
	ld   l, e                                        ; $53d3: $6b
	ld   [hl], l                                     ; $53d4: $75
	ld   a, b                                        ; $53d5: $78
	ld   e, [hl]                                     ; $53d6: $5e
	sbc  b                                           ; $53d7: $98
	ld   l, l                                        ; $53d8: $6d
	ld   e, b                                        ; $53d9: $58
	ld   h, a                                        ; $53da: $67
	nop                                              ; $53db: $00
	ld   [bc], a                                     ; $53dc: $02
	rlca                                             ; $53dd: $07
	dec  a                                           ; $53de: $3d
	ld   [bc], a                                     ; $53df: $02
	ld   [bc], a                                     ; $53e0: $02
	inc  bc                                          ; $53e1: $03
	ld   bc, $2000                                   ; $53e2: $01 $00 $20
	nop                                              ; $53e5: $00
	rlca                                             ; $53e6: $07
	ld   l, b                                        ; $53e7: $68
	ld   [bc], a                                     ; $53e8: $02
	ld   [bc], a                                     ; $53e9: $02
	inc  bc                                          ; $53ea: $03
	ld   bc, $2001                                   ; $53eb: $01 $01 $20
	nop                                              ; $53ee: $00
	rlca                                             ; $53ef: $07
	sub  b                                           ; $53f0: $90
	ld   [bc], a                                     ; $53f1: $02
	ld   [bc], a                                     ; $53f2: $02
	inc  bc                                          ; $53f3: $03
	ld   bc, $2002                                   ; $53f4: $01 $02 $20
	nop                                              ; $53f7: $00
	ld   b, $4f                                      ; $53f8: $06 $4f
	dec  b                                           ; $53fa: $05
	rrca                                             ; $53fb: $0f
	nop                                              ; $53fc: $00
	ld   bc, $8c01                                   ; $53fd: $01 $01 $8c
	ld   l, b                                        ; $5400: $68
	ld   a, l                                        ; $5401: $7d
	sbc  [hl]                                        ; $5402: $9e
	dec  b                                           ; $5403: $05
	ret  nc                                          ; $5404: $d0

	ld   [bc], a                                     ; $5405: $02
	ld   b, $04                                      ; $5406: $06 $04
	ld   e, l                                        ; $5408: $5d
	and  b                                           ; $5409: $a0
	dec  c                                           ; $540a: $0d
	ld   [bc], a                                     ; $540b: $02
	inc  e                                           ; $540c: $1c
	inc  bc                                          ; $540d: $03
	ld   l, e                                        ; $540e: $6b
	ld   [hl], l                                     ; $540f: $75
	ld   a, l                                        ; $5410: $7d
	sub  a                                           ; $5411: $97
	ld   d, d                                        ; $5412: $52
	ld   a, h                                        ; $5413: $7c
	ld   e, a                                        ; $5414: $5f
	sbc  c                                           ; $5415: $99
	sbc  a                                           ; $5416: $9f
	dec  c                                           ; $5417: $0d
	nop                                              ; $5418: $00
	ld   a, [bc]                                     ; $5419: $0a
	dec  b                                           ; $541a: $05
	ld   b, b                                        ; $541b: $40
	rst  $38                                         ; $541c: $ff
	inc  bc                                          ; $541d: $03
	rst  $38                                         ; $541e: $ff
	ld   bc, $2801                                   ; $541f: $01 $01 $28
	nop                                              ; $5422: $00
	ld   b, $b8                                      ; $5423: $06 $b8
	ld   [bc], a                                     ; $5425: $02
	rrca                                             ; $5426: $0f
	nop                                              ; $5427: $00
	ld   bc, $8c01                                   ; $5428: $01 $01 $8c
	ld   l, b                                        ; $542b: $68
	ld   a, l                                        ; $542c: $7d
	sbc  [hl]                                        ; $542d: $9e
	dec  b                                           ; $542e: $05
	ret  nc                                          ; $542f: $d0

	ld   [bc], a                                     ; $5430: $02
	ld   b, $04                                      ; $5431: $06 $04
	ld   e, l                                        ; $5433: $5d
	and  b                                           ; $5434: $a0
	dec  c                                           ; $5435: $0d
	ld   [bc], a                                     ; $5436: $02
	inc  e                                           ; $5437: $1c
	inc  bc                                          ; $5438: $03
	ld   l, e                                        ; $5439: $6b
	ld   [hl], l                                     ; $543a: $75
	ld   [bc], a                                     ; $543b: $02
	rst  $38                                         ; $543c: $ff
	ld   e, a                                        ; $543d: $5f
	halt                                             ; $543e: $76
	adc  a                                           ; $543f: $8f
	sbc  c                                           ; $5440: $99
	rst  $38                                         ; $5441: $ff
	rst  $38                                         ; $5442: $ff
	dec  c                                           ; $5443: $0d
	ld   l, [hl]                                     ; $5444: $6e
	ld   [hl], c                                     ; $5445: $71
	ld   e, a                                        ; $5446: $5f
	ld   sp, hl                                      ; $5447: $f9
	dec  c                                           ; $5448: $0d
	nop                                              ; $5449: $00
	ld   a, [bc]                                     ; $544a: $0a
	ld   b, $b8                                      ; $544b: $06 $b8
	ld   [bc], a                                     ; $544d: $02
	rrca                                             ; $544e: $0f
	nop                                              ; $544f: $00
	ld   bc, $8c01                                   ; $5450: $01 $01 $8c
	ld   l, b                                        ; $5453: $68
	ld   a, l                                        ; $5454: $7d
	sbc  [hl]                                        ; $5455: $9e
	dec  b                                           ; $5456: $05
	ret  nc                                          ; $5457: $d0

	ld   [bc], a                                     ; $5458: $02
	ld   b, $04                                      ; $5459: $06 $04
	ld   e, l                                        ; $545b: $5d
	and  b                                           ; $545c: $a0
	dec  c                                           ; $545d: $0d
	ld   [bc], a                                     ; $545e: $02
	inc  e                                           ; $545f: $1c
	inc  bc                                          ; $5460: $03
	ld   l, e                                        ; $5461: $6b
	ld   [hl], l                                     ; $5462: $75
	ld   a, b                                        ; $5463: $78
	ld   e, [hl]                                     ; $5464: $5e
	sbc  b                                           ; $5465: $98
	ld   l, l                                        ; $5466: $6d
	ld   e, b                                        ; $5467: $58
	ld   h, a                                        ; $5468: $67
	rst  $38                                         ; $5469: $ff
	rst  $38                                         ; $546a: $ff
	dec  c                                           ; $546b: $0d
	ld   l, [hl]                                     ; $546c: $6e
	ld   [hl], c                                     ; $546d: $71
	ld   e, a                                        ; $546e: $5f
	ld   sp, hl                                      ; $546f: $f9
	dec  c                                           ; $5470: $0d
	nop                                              ; $5471: $00
	ld   a, [bc]                                     ; $5472: $0a
	ld   b, $b8                                      ; $5473: $06 $b8
	ld   [bc], a                                     ; $5475: $02
	inc  e                                           ; $5476: $1c
	ld   b, $02                                      ; $5477: $06 $02
	ld   [bc], a                                     ; $5479: $02
	ld   bc, $715d                                   ; $547a: $01 $5d $71
	ld   l, e                                        ; $547d: $6b
	ei                                               ; $547e: $fb
	sbc  [hl]                                        ; $547f: $9e
	ld   e, c                                        ; $5480: $59
	sbc  l                                           ; $5481: $9d
	ld   h, e                                        ; $5482: $63
	sbc  d                                           ; $5483: $9a
	ld   l, l                                        ; $5484: $6d
	sbc  a                                           ; $5485: $9f
	dec  c                                           ; $5486: $0d
	ld   a, b                                        ; $5487: $78
	sub  a                                           ; $5488: $97
	ld   a, [hl]                                     ; $5489: $7e
	sbc  [hl]                                        ; $548a: $9e
	ld   h, c                                        ; $548b: $61
	sbc  d                                           ; $548c: $9a
	ld   a, l                                        ; $548d: $7d
	ld   [hl], a                                     ; $548e: $77
	ld   d, h                                        ; $548f: $54
	ld   l, [hl]                                     ; $5490: $6e
	ld   a, [$000d]                                  ; $5491: $fa $0d $00
	ld   a, [bc]                                     ; $5494: $0a
	rrca                                             ; $5495: $0f
	nop                                              ; $5496: $00
	ld   bc, $5601                                   ; $5497: $01 $01 $56
	db   $fc                                         ; $549a: $fc
	halt                                             ; $549b: $76
	rst  $38                                         ; $549c: $ff
	rst  $38                                         ; $549d: $ff
	dec  c                                           ; $549e: $0d
	inc  b                                           ; $549f: $04
	ld   hl, sp+$02                                  ; $54a0: $f8 $02
	add  a                                           ; $54a2: $87
	inc  b                                           ; $54a3: $04
	or   a                                           ; $54a4: $b7
	inc  bc                                          ; $54a5: $03
	add  d                                           ; $54a6: $82
	ld   a, l                                        ; $54a7: $7d
	ld   [bc], a                                     ; $54a8: $02
	ld   a, h                                        ; $54a9: $7c
	ld   [bc], a                                     ; $54aa: $02
	or   [hl]                                        ; $54ab: $b6
	ld   a, h                                        ; $54ac: $7c
	dec  b                                           ; $54ad: $05
	ret  nc                                          ; $54ae: $d0

	ld   [bc], a                                     ; $54af: $02
	ld   b, $04                                      ; $54b0: $06 $04
	ld   e, l                                        ; $54b2: $5d
	and  b                                           ; $54b3: $a0
	dec  c                                           ; $54b4: $0d
	ld   [hl], a                                     ; $54b5: $77
	ld   d, h                                        ; $54b6: $54
	ld   h, a                                        ; $54b7: $67
	sbc  c                                           ; $54b8: $99
	and  c                                           ; $54b9: $a1
	ld   l, [hl]                                     ; $54ba: $6e
	ld   [hl], c                                     ; $54bb: $71
	ld   e, a                                        ; $54bc: $5f
	ld   sp, hl                                      ; $54bd: $f9
	dec  c                                           ; $54be: $0d
	nop                                              ; $54bf: $00
	ld   a, [bc]                                     ; $54c0: $0a
	add  hl, de                                      ; $54c1: $19
	dec  b                                           ; $54c2: $05
	inc  bc                                          ; $54c3: $03
	ld   b, $3a                                      ; $54c4: $06 $3a
	inc  bc                                          ; $54c6: $03
	ld   l, e                                        ; $54c7: $6b
	ld   [hl], l                                     ; $54c8: $75
	ld   [bc], a                                     ; $54c9: $02
	rst  $38                                         ; $54ca: $ff
	ld   e, a                                        ; $54cb: $5f
	sbc  c                                           ; $54cc: $99
	nop                                              ; $54cd: $00
	nop                                              ; $54ce: $00
	ld   b, $3a                                      ; $54cf: $06 $3a
	inc  bc                                          ; $54d1: $03
	ld   l, e                                        ; $54d2: $6b
	ld   [hl], l                                     ; $54d3: $75
	ld   a, l                                        ; $54d4: $7d
	sub  a                                           ; $54d5: $97
	ld   d, d                                        ; $54d6: $52
	ld   a, h                                        ; $54d7: $7c
	ld   e, a                                        ; $54d8: $5f
	sbc  c                                           ; $54d9: $99
	nop                                              ; $54da: $00
	ld   bc, $1c02                                   ; $54db: $01 $02 $1c
	inc  bc                                          ; $54de: $03
	ld   l, e                                        ; $54df: $6b
	ld   [hl], l                                     ; $54e0: $75
	ld   [bc], a                                     ; $54e1: $02
	rst  $38                                         ; $54e2: $ff
	ld   e, a                                        ; $54e3: $5f
	sbc  c                                           ; $54e4: $99
	nop                                              ; $54e5: $00
	ld   [bc], a                                     ; $54e6: $02
	rlca                                             ; $54e7: $07
	ld   b, a                                        ; $54e8: $47
	inc  bc                                          ; $54e9: $03
	ld   [bc], a                                     ; $54ea: $02
	inc  bc                                          ; $54eb: $03
	ld   bc, $2000                                   ; $54ec: $01 $00 $20
	nop                                              ; $54ef: $00
	rlca                                             ; $54f0: $07
	ld   [hl], d                                     ; $54f1: $72
	inc  bc                                          ; $54f2: $03
	ld   [bc], a                                     ; $54f3: $02
	inc  bc                                          ; $54f4: $03
	ld   bc, $2001                                   ; $54f5: $01 $01 $20
	nop                                              ; $54f8: $00
	rlca                                             ; $54f9: $07
	sub  a                                           ; $54fa: $97
	inc  bc                                          ; $54fb: $03
	ld   [bc], a                                     ; $54fc: $02
	inc  bc                                          ; $54fd: $03
	ld   bc, $2002                                   ; $54fe: $01 $02 $20
	nop                                              ; $5501: $00
	ld   b, $4f                                      ; $5502: $06 $4f
	dec  b                                           ; $5504: $05
	rrca                                             ; $5505: $0f
	nop                                              ; $5506: $00
	ld   bc, $0301                                   ; $5507: $01 $01 $03
	ld   l, b                                        ; $550a: $68
	ld   a, c                                        ; $550b: $79
	sbc  [hl]                                        ; $550c: $9e
	dec  b                                           ; $550d: $05
	ret  nc                                          ; $550e: $d0

	ld   [bc], a                                     ; $550f: $02
	ld   b, $04                                      ; $5510: $06 $04
	ld   e, l                                        ; $5512: $5d
	and  b                                           ; $5513: $a0
	dec  c                                           ; $5514: $0d
	ld   b, $3a                                      ; $5515: $06 $3a
	inc  bc                                          ; $5517: $03
	ld   l, e                                        ; $5518: $6b
	ld   [hl], l                                     ; $5519: $75
	ld   [bc], a                                     ; $551a: $02
	rst  $38                                         ; $551b: $ff
	ld   e, a                                        ; $551c: $5f
	halt                                             ; $551d: $76
	adc  a                                           ; $551e: $8f
	sbc  c                                           ; $551f: $99
	sbc  a                                           ; $5520: $9f
	dec  c                                           ; $5521: $0d
	nop                                              ; $5522: $00
	ld   a, [bc]                                     ; $5523: $0a
	dec  b                                           ; $5524: $05
	ld   b, b                                        ; $5525: $40
	rst  $38                                         ; $5526: $ff
	inc  bc                                          ; $5527: $03
	rst  $38                                         ; $5528: $ff
	ld   bc, $2801                                   ; $5529: $01 $01 $28
	nop                                              ; $552c: $00
	ld   b, $bf                                      ; $552d: $06 $bf
	inc  bc                                          ; $552f: $03
	rrca                                             ; $5530: $0f
	nop                                              ; $5531: $00
	ld   bc, $0301                                   ; $5532: $01 $01 $03
	ld   l, b                                        ; $5535: $68
	ld   a, c                                        ; $5536: $79
	sbc  [hl]                                        ; $5537: $9e
	dec  b                                           ; $5538: $05
	ret  nc                                          ; $5539: $d0

	ld   [bc], a                                     ; $553a: $02
	ld   b, $04                                      ; $553b: $06 $04
	ld   e, l                                        ; $553d: $5d
	and  b                                           ; $553e: $a0
	dec  c                                           ; $553f: $0d
	ld   b, $3a                                      ; $5540: $06 $3a
	inc  bc                                          ; $5542: $03
	ld   l, e                                        ; $5543: $6b
	ld   [hl], l                                     ; $5544: $75
	ld   a, l                                        ; $5545: $7d
	sub  a                                           ; $5546: $97
	ld   d, h                                        ; $5547: $54
	rst  $38                                         ; $5548: $ff
	rst  $38                                         ; $5549: $ff
	dec  c                                           ; $554a: $0d
	ld   l, [hl]                                     ; $554b: $6e
	ld   [hl], c                                     ; $554c: $71
	ld   e, a                                        ; $554d: $5f
	ld   sp, hl                                      ; $554e: $f9
	dec  c                                           ; $554f: $0d
	nop                                              ; $5550: $00
	ld   a, [bc]                                     ; $5551: $0a
	ld   b, $bf                                      ; $5552: $06 $bf
	inc  bc                                          ; $5554: $03
	rrca                                             ; $5555: $0f
	nop                                              ; $5556: $00
	ld   bc, $0301                                   ; $5557: $01 $01 $03
	ld   l, b                                        ; $555a: $68
	ld   a, c                                        ; $555b: $79
	sbc  [hl]                                        ; $555c: $9e
	dec  b                                           ; $555d: $05
	ret  nc                                          ; $555e: $d0

	ld   [bc], a                                     ; $555f: $02
	ld   b, $04                                      ; $5560: $06 $04
	ld   e, l                                        ; $5562: $5d
	and  b                                           ; $5563: $a0
	dec  c                                           ; $5564: $0d
	ld   [bc], a                                     ; $5565: $02
	inc  e                                           ; $5566: $1c
	inc  bc                                          ; $5567: $03
	ld   l, e                                        ; $5568: $6b
	ld   [hl], l                                     ; $5569: $75
	ld   [bc], a                                     ; $556a: $02
	rst  $38                                         ; $556b: $ff
	ld   e, a                                        ; $556c: $5f
	halt                                             ; $556d: $76
	adc  a                                           ; $556e: $8f
	sbc  c                                           ; $556f: $99
	rst  $38                                         ; $5570: $ff
	rst  $38                                         ; $5571: $ff
	dec  c                                           ; $5572: $0d
	ld   l, [hl]                                     ; $5573: $6e
	ld   [hl], c                                     ; $5574: $71
	ld   e, a                                        ; $5575: $5f
	ld   sp, hl                                      ; $5576: $f9
	dec  c                                           ; $5577: $0d
	nop                                              ; $5578: $00
	ld   a, [bc]                                     ; $5579: $0a
	ld   b, $bf                                      ; $557a: $06 $bf
	inc  bc                                          ; $557c: $03
	inc  e                                           ; $557d: $1c
	ld   b, $02                                      ; $557e: $06 $02
	ld   [bc], a                                     ; $5580: $02
	ld   bc, $a178                                   ; $5581: $01 $78 $a1
	ld   [hl], h                                     ; $5584: $74
	sub  d                                           ; $5585: $92
	ld   [hl], d                                     ; $5586: $72
	ld   l, [hl]                                     ; $5587: $6e
	ld   a, [$500d]                                  ; $5588: $fa $0d $50
	ld   [hl], c                                     ; $558b: $71
	ld   a, [$6510]                                  ; $558c: $fa $10 $65
	adc  h                                           ; $558f: $8c
	ld   [hl], c                                     ; $5590: $71
	ld   l, l                                        ; $5591: $6d
	ld   a, [$000d]                                  ; $5592: $fa $0d $00
	ld   a, [bc]                                     ; $5595: $0a
	rrca                                             ; $5596: $0f
	nop                                              ; $5597: $00
	ld   bc, $5601                                   ; $5598: $01 $01 $56
	db   $fc                                         ; $559b: $fc
	halt                                             ; $559c: $76
	rst  $38                                         ; $559d: $ff
	rst  $38                                         ; $559e: $ff
	dec  c                                           ; $559f: $0d
	inc  b                                           ; $55a0: $04
	ld   hl, sp+$02                                  ; $55a1: $f8 $02
	add  a                                           ; $55a3: $87
	inc  b                                           ; $55a4: $04
	or   a                                           ; $55a5: $b7
	inc  bc                                          ; $55a6: $03
	add  d                                           ; $55a7: $82
	ld   a, l                                        ; $55a8: $7d
	ld   [bc], a                                     ; $55a9: $02
	ld   a, h                                        ; $55aa: $7c
	ld   [bc], a                                     ; $55ab: $02
	or   [hl]                                        ; $55ac: $b6
	ld   a, c                                        ; $55ad: $79
	dec  c                                           ; $55ae: $0d
	ld   [hl], a                                     ; $55af: $77
	and  c                                           ; $55b0: $a1
	ld   a, b                                        ; $55b1: $78
	ld   [bc], a                                     ; $55b2: $02
	ld   c, b                                        ; $55b3: $48
	ld   [bc], a                                     ; $55b4: $02
	sub  c                                           ; $55b5: $91
	and  b                                           ; $55b6: $a0
	ld   h, a                                        ; $55b7: $67
	sbc  c                                           ; $55b8: $99
	and  c                                           ; $55b9: $a1
	ld   l, [hl]                                     ; $55ba: $6e
	ld   [hl], c                                     ; $55bb: $71
	ld   e, a                                        ; $55bc: $5f
	ld   sp, hl                                      ; $55bd: $f9
	dec  c                                           ; $55be: $0d
	nop                                              ; $55bf: $00
	ld   a, [bc]                                     ; $55c0: $0a
	add  hl, de                                      ; $55c1: $19
	dec  b                                           ; $55c2: $05
	inc  bc                                          ; $55c3: $03
	inc  b                                           ; $55c4: $04
	ld   hl, sp+$03                                  ; $55c5: $f8 $03
	db   $10                                         ; $55c7: $10
	ld   h, c                                        ; $55c8: $61
	ld   d, h                                        ; $55c9: $54
	ld   h, b                                        ; $55ca: $60
	ld   e, e                                        ; $55cb: $5b
	nop                                              ; $55cc: $00
	nop                                              ; $55cd: $00
	inc  b                                           ; $55ce: $04
	ld   a, a                                        ; $55cf: $7f
	add  c                                           ; $55d0: $81
	db   $d3                                         ; $55d1: $d3
	or   a                                           ; $55d2: $b7
	ld   h, b                                        ; $55d3: $60
	sbc  b                                           ; $55d4: $98
	nop                                              ; $55d5: $00
	ld   bc, $b602                                   ; $55d6: $01 $02 $b6
	inc  bc                                          ; $55d9: $03
	ld   l, e                                        ; $55da: $6b
	jp   nz, $c4e9                                   ; $55db: $c2 $e9 $c4

	ret  c                                           ; $55de: $d8

	nop                                              ; $55df: $00
	ld   [bc], a                                     ; $55e0: $02
	rlca                                             ; $55e1: $07
	ld   b, c                                        ; $55e2: $41
	inc  b                                           ; $55e3: $04
	ld   [bc], a                                     ; $55e4: $02
	inc  bc                                          ; $55e5: $03
	ld   bc, $2000                                   ; $55e6: $01 $00 $20
	nop                                              ; $55e9: $00
	rlca                                             ; $55ea: $07
	ld   l, d                                        ; $55eb: $6a
	inc  b                                           ; $55ec: $04
	ld   [bc], a                                     ; $55ed: $02
	inc  bc                                          ; $55ee: $03
	ld   bc, $2001                                   ; $55ef: $01 $01 $20
	nop                                              ; $55f2: $00
	rlca                                             ; $55f3: $07
	pop  hl                                          ; $55f4: $e1
	inc  b                                           ; $55f5: $04
	ld   [bc], a                                     ; $55f6: $02
	inc  bc                                          ; $55f7: $03
	ld   bc, $2002                                   ; $55f8: $01 $02 $20
	nop                                              ; $55fb: $00
	ld   b, $4f                                      ; $55fc: $06 $4f
	dec  b                                           ; $55fe: $05
	rrca                                             ; $55ff: $0f
	nop                                              ; $5600: $00
	ld   bc, $0301                                   ; $5601: $01 $01 $03
	ld   l, c                                        ; $5604: $69
	ld   [bc], a                                     ; $5605: $02
	xor  d                                           ; $5606: $aa
	ld   a, l                                        ; $5607: $7d
	sbc  [hl]                                        ; $5608: $9e
	ld   [bc], a                                     ; $5609: $02
	ld   a, h                                        ; $560a: $7c
	ld   [bc], a                                     ; $560b: $02
	or   [hl]                                        ; $560c: $b6
	ld   a, c                                        ; $560d: $79
	dec  c                                           ; $560e: $0d
	inc  b                                           ; $560f: $04
	ld   hl, sp+$03                                  ; $5610: $f8 $03
	db   $10                                         ; $5612: $10
	ld   h, c                                        ; $5613: $61
	ld   d, h                                        ; $5614: $54
	ld   h, b                                        ; $5615: $60
	ld   e, e                                        ; $5616: $5b
	ld   l, [hl]                                     ; $5617: $6e
	ld   a, [$000d]                                  ; $5618: $fa $0d $00
	ld   a, [bc]                                     ; $561b: $0a
	dec  b                                           ; $561c: $05
	ld   b, b                                        ; $561d: $40
	rst  $38                                         ; $561e: $ff
	inc  bc                                          ; $561f: $03
	rst  $38                                         ; $5620: $ff
	ld   bc, $2801                                   ; $5621: $01 $01 $28
	nop                                              ; $5624: $00
	ld   b, $80                                      ; $5625: $06 $80
	dec  b                                           ; $5627: $05
	rrca                                             ; $5628: $0f
	nop                                              ; $5629: $00
	ld   bc, $0301                                   ; $562a: $01 $01 $03
	ld   l, c                                        ; $562d: $69
	ld   [bc], a                                     ; $562e: $02
	xor  d                                           ; $562f: $aa
	ld   a, l                                        ; $5630: $7d
	sbc  [hl]                                        ; $5631: $9e
	ld   [bc], a                                     ; $5632: $02
	ld   a, h                                        ; $5633: $7c
	ld   [bc], a                                     ; $5634: $02
	or   [hl]                                        ; $5635: $b6
	ld   a, c                                        ; $5636: $79
	dec  c                                           ; $5637: $0d
	inc  b                                           ; $5638: $04
	ld   a, a                                        ; $5639: $7f
	add  c                                           ; $563a: $81
	db   $d3                                         ; $563b: $d3
	or   a                                           ; $563c: $b7
	ld   h, b                                        ; $563d: $60
	sbc  b                                           ; $563e: $98
	ld   sp, hl                                      ; $563f: $f9
	dec  c                                           ; $5640: $0d
	nop                                              ; $5641: $00
	ld   a, [bc]                                     ; $5642: $0a
	inc  d                                           ; $5643: $14
	rlca                                             ; $5644: $07
	ld   bc, $030c                                   ; $5645: $01 $0c $03
	inc  e                                           ; $5648: $1c
	ld   b, $03                                      ; $5649: $06 $03
	inc  bc                                          ; $564b: $03
	ld   bc, $c4b1                                   ; $564c: $01 $b1 $c4
	rst  $38                                         ; $564f: $ff
	rst  $38                                         ; $5650: $ff
	dec  c                                           ; $5651: $0d
	ld   d, b                                        ; $5652: $50
	sbc  [hl]                                        ; $5653: $9e
	ld   d, b                                        ; $5654: $50
	ld   l, l                                        ; $5655: $6d
	ld   d, d                                        ; $5656: $52
	ld   a, c                                        ; $5657: $79
	inc  b                                           ; $5658: $04
	ld   a, a                                        ; $5659: $7f
	add  c                                           ; $565a: $81
	db   $d3                                         ; $565b: $d3
	or   a                                           ; $565c: $b7
	ld   h, b                                        ; $565d: $60
	sbc  b                                           ; $565e: $98
	dec  c                                           ; $565f: $0d
	and  b                                           ; $5660: $a0
	ld   e, c                                        ; $5661: $59
	ld   e, a                                        ; $5662: $5f
	sbc  c                                           ; $5663: $99
	halt                                             ; $5664: $76
	ld   a, l                                        ; $5665: $7d
	rst  $38                                         ; $5666: $ff
	rst  $38                                         ; $5667: $ff
	dec  c                                           ; $5668: $0d
	nop                                              ; $5669: $00
	ld   a, [bc]                                     ; $566a: $0a
	ld   bc, $5978                                   ; $566b: $01 $78 $59
	ld   a, b                                        ; $566e: $78
	ld   e, c                                        ; $566f: $59
	sbc  [hl]                                        ; $5670: $9e
	sub  d                                           ; $5671: $92
	sbc  c                                           ; $5672: $99
	ld   a, b                                        ; $5673: $78
	rst  $38                                         ; $5674: $ff
	rst  $38                                         ; $5675: $ff
	dec  c                                           ; $5676: $0d
	ld   [hl], l                                     ; $5677: $75
	sbc  [hl]                                        ; $5678: $9e
	ld   [hl], l                                     ; $5679: $75
	sub  b                                           ; $567a: $90
	adc  h                                           ; $567b: $8c
	ld   l, a                                        ; $567c: $6f
	ld   e, d                                        ; $567d: $5a
	ld   [hl], c                                     ; $567e: $71
	ld   [hl], h                                     ; $567f: $74
	sbc  c                                           ; $5680: $99
	ld   l, d                                        ; $5681: $6a
	rst  $38                                         ; $5682: $ff
	rst  $38                                         ; $5683: $ff
	dec  c                                           ; $5684: $0d
	inc  b                                           ; $5685: $04
	ld   hl, sp+$03                                  ; $5686: $f8 $03
	db   $10                                         ; $5688: $10
	ld   h, c                                        ; $5689: $61
	ld   d, h                                        ; $568a: $54
	ld   h, b                                        ; $568b: $60
	ld   e, e                                        ; $568c: $5b
	ld   l, [hl]                                     ; $568d: $6e
	sub  [hl]                                        ; $568e: $96
	rst  $38                                         ; $568f: $ff
	rst  $38                                         ; $5690: $ff
	dec  c                                           ; $5691: $0d
	nop                                              ; $5692: $00
	ld   a, [bc]                                     ; $5693: $0a
	dec  c                                           ; $5694: $0d
	nop                                              ; $5695: $00
	nop                                              ; $5696: $00
	rrca                                             ; $5697: $0f
	nop                                              ; $5698: $00
	ld   bc, $0b0c                                   ; $5699: $01 $0c $0b
	ld   b, $80                                      ; $569c: $06 $80
	dec  b                                           ; $569e: $05
	rrca                                             ; $569f: $0f
	nop                                              ; $56a0: $00
	ld   bc, $0301                                   ; $56a1: $01 $01 $03
	ld   l, c                                        ; $56a4: $69
	ld   [bc], a                                     ; $56a5: $02
	xor  d                                           ; $56a6: $aa
	ld   a, l                                        ; $56a7: $7d
	sbc  [hl]                                        ; $56a8: $9e
	ld   [bc], a                                     ; $56a9: $02
	ld   a, h                                        ; $56aa: $7c
	ld   [bc], a                                     ; $56ab: $02
	or   [hl]                                        ; $56ac: $b6
	ld   a, c                                        ; $56ad: $79
	dec  c                                           ; $56ae: $0d
	ld   [bc], a                                     ; $56af: $02
	or   [hl]                                        ; $56b0: $b6
	inc  bc                                          ; $56b1: $03
	ld   l, e                                        ; $56b2: $6b
	jp   nz, $c4e9                                   ; $56b3: $c2 $e9 $c4

	ret  c                                           ; $56b6: $d8

	ld   sp, hl                                      ; $56b7: $f9
	dec  c                                           ; $56b8: $0d
	nop                                              ; $56b9: $00
	ld   a, [bc]                                     ; $56ba: $0a
	inc  d                                           ; $56bb: $14
	inc  de                                          ; $56bc: $13
	ld   bc, $030c                                   ; $56bd: $01 $0c $03
	inc  e                                           ; $56c0: $1c
	ld   b, $03                                      ; $56c1: $06 $03
	inc  bc                                          ; $56c3: $03
	ld   bc, $9d54                                   ; $56c4: $01 $54 $9d
	ld   [hl], c                                     ; $56c7: $71
	ld   a, [$500d]                                  ; $56c8: $fa $0d $50
	sbc  [hl]                                        ; $56cb: $9e
	ld   d, b                                        ; $56cc: $50
	add  h                                           ; $56cd: $84
	ld   a, e                                        ; $56ce: $7b
	ei                                               ; $56cf: $fb
	ld   a, b                                        ; $56d0: $78
	ei                                               ; $56d1: $fb
	sbc  a                                           ; $56d2: $9f
	dec  c                                           ; $56d3: $0d
	ld   a, b                                        ; $56d4: $78
	ld   a, c                                        ; $56d5: $79
	sub  d                                           ; $56d6: $92
	ld   [hl], c                                     ; $56d7: $71
	ld   [hl], h                                     ; $56d8: $74
	and  c                                           ; $56d9: $a1
	ld   l, [hl]                                     ; $56da: $6e
	sub  [hl]                                        ; $56db: $96
	sbc  a                                           ; $56dc: $9f
	dec  c                                           ; $56dd: $0d
	nop                                              ; $56de: $00
	ld   a, [bc]                                     ; $56df: $0a
	inc  e                                           ; $56e0: $1c
	ld   b, $05                                      ; $56e1: $06 $05
	dec  b                                           ; $56e3: $05
	ld   bc, $6161                                   ; $56e4: $01 $61 $61
	ld   a, l                                        ; $56e7: $7d
	sbc  [hl]                                        ; $56e8: $9e
	inc  b                                           ; $56e9: $04
	ld   hl, sp+$03                                  ; $56ea: $f8 $03
	db   $10                                         ; $56ec: $10
	ld   h, c                                        ; $56ed: $61
	ld   d, h                                        ; $56ee: $54
	ld   h, b                                        ; $56ef: $60
	ld   e, e                                        ; $56f0: $5b
	ld   l, [hl]                                     ; $56f1: $6e
	ld   l, d                                        ; $56f2: $6a
	sbc  a                                           ; $56f3: $9f
	dec  c                                           ; $56f4: $0d
	ld   h, l                                        ; $56f5: $65
	ld   [hl], c                                     ; $56f6: $71
	ld   e, c                                        ; $56f7: $59
	sbc  b                                           ; $56f8: $98
	ld   h, l                                        ; $56f9: $65
	ld   [hl], h                                     ; $56fa: $74
	ld   e, l                                        ; $56fb: $5d
	sbc  d                                           ; $56fc: $9a
	sub  [hl]                                        ; $56fd: $96
	sbc  a                                           ; $56fe: $9f
	dec  c                                           ; $56ff: $0d
	nop                                              ; $5700: $00
	ld   a, [bc]                                     ; $5701: $0a
	dec  c                                           ; $5702: $0d
	nop                                              ; $5703: $00
	nop                                              ; $5704: $00
	rrca                                             ; $5705: $0f
	nop                                              ; $5706: $00
	ld   bc, $0b0c                                   ; $5707: $01 $0c $0b
	ld   b, $80                                      ; $570a: $06 $80
	dec  b                                           ; $570c: $05
	inc  e                                           ; $570d: $1c
	ld   b, $05                                      ; $570e: $06 $05
	dec  b                                           ; $5710: $05
	ld   bc, $7c61                                   ; $5711: $01 $61 $7c
	ld   e, l                                        ; $5714: $5d
	sub  a                                           ; $5715: $97
	ld   d, d                                        ; $5716: $52
	ld   a, h                                        ; $5717: $7c
	inc  b                                           ; $5718: $04
	dec  de                                          ; $5719: $1b
	ld   e, e                                        ; $571a: $5b
	ld   [hl], l                                     ; $571b: $75
	dec  c                                           ; $571c: $0d
	adc  h                                           ; $571d: $8c
	ld   l, a                                        ; $571e: $6f
	ld   e, d                                        ; $571f: $5a
	ld   d, [hl]                                     ; $5720: $56
	sub  a                                           ; $5721: $97
	sbc  d                                           ; $5722: $9a
	sbc  c                                           ; $5723: $99
	halt                                             ; $5724: $76
	dec  c                                           ; $5725: $0d
	ld   [hl], a                                     ; $5726: $77
	ld   d, h                                        ; $5727: $54
	ld   h, l                                        ; $5728: $65
	sub  [hl]                                        ; $5729: $96
	ld   d, h                                        ; $572a: $54
	sub  b                                           ; $572b: $90
	ld   a, b                                        ; $572c: $78
	ld   d, d                                        ; $572d: $52
	ld   a, b                                        ; $572e: $78
	sbc  a                                           ; $572f: $9f
	dec  c                                           ; $5730: $0d
	nop                                              ; $5731: $00
	ld   a, [bc]                                     ; $5732: $0a
	dec  c                                           ; $5733: $0d
	nop                                              ; $5734: $00
	nop                                              ; $5735: $00
	rrca                                             ; $5736: $0f
	nop                                              ; $5737: $00
	ld   bc, $0b0c                                   ; $5738: $01 $0c $0b
	ld   b, $ef                                      ; $573b: $06 $ef
	dec  b                                           ; $573d: $05
	rlca                                             ; $573e: $07
	sbc  e                                           ; $573f: $9b
	dec  b                                           ; $5740: $05
	inc  bc                                          ; $5741: $03
	rst  $38                                         ; $5742: $ff
	ld   bc, $2003                                   ; $5743: $01 $03 $20
	nop                                              ; $5746: $00
	rlca                                             ; $5747: $07
	cp   h                                           ; $5748: $bc
	dec  b                                           ; $5749: $05
	inc  bc                                          ; $574a: $03
	rst  $38                                         ; $574b: $ff
	ld   bc, $2002                                   ; $574c: $01 $02 $20
	nop                                              ; $574f: $00
	rlca                                             ; $5750: $07
	rst  $28                                         ; $5751: $ef
	dec  b                                           ; $5752: $05
	inc  bc                                          ; $5753: $03
	rst  $38                                         ; $5754: $ff
	ld   bc, $2301                                   ; $5755: $01 $01 $23
	nop                                              ; $5758: $00
	inc  e                                           ; $5759: $1c
	ld   b, $01                                      ; $575a: $06 $01
	ld   bc, $401d                                   ; $575c: $01 $1d $40
	ld   d, $03                                      ; $575f: $16 $03
	ld   d, $01                                      ; $5761: $16 $01
	inc  bc                                          ; $5763: $03
	jr   z, jr_059_5766                              ; $5764: $28 $00

jr_059_5766:
	ld   bc, $f5b6                                   ; $5766: $01 $b6 $f5
	xor  [hl]                                        ; $5769: $ae
	rst  $20                                         ; $576a: $e7
	ei                                               ; $576b: $fb
	dec  c                                           ; $576c: $0d
	inc  bc                                          ; $576d: $03
	ld   e, e                                        ; $576e: $5b
	ld   e, c                                        ; $576f: $59
	ld   [hl], c                                     ; $5770: $71
	ld   l, l                                        ; $5771: $6d
	ld   l, d                                        ; $5772: $6a
	sbc  a                                           ; $5773: $9f
	dec  c                                           ; $5774: $0d
	nop                                              ; $5775: $00
	ld   a, [bc]                                     ; $5776: $0a
	ld   b, $dc                                      ; $5777: $06 $dc
	dec  b                                           ; $5779: $05
	inc  e                                           ; $577a: $1c
	ld   b, $00                                      ; $577b: $06 $00
	nop                                              ; $577d: $00
	dec  e                                           ; $577e: $1d
	ld   b, b                                        ; $577f: $40
	ld   d, $03                                      ; $5780: $16 $03
	ld   d, $01                                      ; $5782: $16 $01
	ld   [bc], a                                     ; $5784: $02
	jr   z, jr_059_5787                              ; $5785: $28 $00

jr_059_5787:
	ld   bc, $5483                                   ; $5787: $01 $83 $54
	rst  $38                                         ; $578a: $ff
	rst  $38                                         ; $578b: $ff
	dec  c                                           ; $578c: $0d
	ld   d, b                                        ; $578d: $50
	sbc  b                                           ; $578e: $98
	ld   e, d                                        ; $578f: $5a
	halt                                             ; $5790: $76
	ld   d, h                                        ; $5791: $54
	ld   a, b                                        ; $5792: $78
	sbc  a                                           ; $5793: $9f
	dec  c                                           ; $5794: $0d
	nop                                              ; $5795: $00
	ld   a, [bc]                                     ; $5796: $0a
	ld   b, $dc                                      ; $5797: $06 $dc
	dec  b                                           ; $5799: $05
	inc  e                                           ; $579a: $1c
	ld   b, $00                                      ; $579b: $06 $00
	nop                                              ; $579d: $00
	ld   bc, $9166                                   ; $579e: $01 $66 $91
	sbc  [hl]                                        ; $57a1: $9e
	ld   e, b                                        ; $57a2: $58
	inc  b                                           ; $57a3: $04
	ld   a, e                                        ; $57a4: $7b
	sbc  d                                           ; $57a5: $9a
	ld   h, e                                        ; $57a6: $63
	and  c                                           ; $57a7: $a1
	sbc  a                                           ; $57a8: $9f
	dec  c                                           ; $57a9: $0d
	nop                                              ; $57aa: $00
	ld   a, [bc]                                     ; $57ab: $0a
	nop                                              ; $57ac: $00
	inc  e                                           ; $57ad: $1c
	ld   b, $05                                      ; $57ae: $06 $05
	dec  b                                           ; $57b0: $05
	dec  e                                           ; $57b1: $1d
	ld   b, b                                        ; $57b2: $40
	ld   d, $03                                      ; $57b3: $16 $03
	ld   d, $01                                      ; $57b5: $16 $01
	ld   [bc], a                                     ; $57b7: $02
	add  hl, hl                                      ; $57b8: $29
	nop                                              ; $57b9: $00
	ld   bc, $5461                                   ; $57ba: $01 $61 $54
	ld   d, d                                        ; $57bd: $52
	ld   d, h                                        ; $57be: $54
	ld   e, a                                        ; $57bf: $5f
	ld   d, d                                        ; $57c0: $52
	ld   h, c                                        ; $57c1: $61
	rst  $38                                         ; $57c2: $ff
	rst  $38                                         ; $57c3: $ff
	dec  c                                           ; $57c4: $0d
	ld   [$7900], sp                                 ; $57c5: $08 $00 $79
	ld   a, l                                        ; $57c8: $7d
	sbc  [hl]                                        ; $57c9: $9e
	dec  c                                           ; $57ca: $0d
	adc  h                                           ; $57cb: $8c
	ld   l, [hl]                                     ; $57cc: $6e
	inc  bc                                          ; $57cd: $03
	ld   [hl], b                                     ; $57ce: $70
	ld   e, c                                        ; $57cf: $59
	ld   [hl], c                                     ; $57d0: $71
	ld   l, l                                        ; $57d1: $6d
	ld   e, c                                        ; $57d2: $59
	ld   a, b                                        ; $57d3: $78
	ld   sp, hl                                      ; $57d4: $f9
	dec  c                                           ; $57d5: $0d
	nop                                              ; $57d6: $00
	ld   a, [bc]                                     ; $57d7: $0a
	ld   bc, $9166                                   ; $57d8: $01 $66 $91
	sbc  [hl]                                        ; $57db: $9e
	adc  h                                           ; $57dc: $8c
	ld   d, b                                        ; $57dd: $50
	sbc  [hl]                                        ; $57de: $9e
	ld   e, b                                        ; $57df: $58
	inc  b                                           ; $57e0: $04
	ld   a, e                                        ; $57e1: $7b
	sbc  d                                           ; $57e2: $9a
	ld   h, e                                        ; $57e3: $63
	and  c                                           ; $57e4: $a1
	sbc  a                                           ; $57e5: $9f
	dec  c                                           ; $57e6: $0d
	nop                                              ; $57e7: $00
	ld   a, [bc]                                     ; $57e8: $0a
	nop                                              ; $57e9: $00
	nop                                              ; $57ea: $00
	inc  b                                           ; $57eb: $04
	add  b                                           ; $57ec: $80
	ld   l, h                                        ; $57ed: $6c
	ld   bc, $20ff                                   ; $57ee: $01 $ff $20
	nop                                              ; $57f1: $00
	ld   c, $66                                      ; $57f2: $0e $66
	inc  e                                           ; $57f4: $1c
	inc  bc                                          ; $57f5: $03
	nop                                              ; $57f6: $00
	nop                                              ; $57f7: $00
	ld   [bc], a                                     ; $57f8: $02
	dec  b                                           ; $57f9: $05
	add  b                                           ; $57fa: $80
	ld   l, l                                        ; $57fb: $6d
	ld   bc, $0001                                   ; $57fc: $01 $01 $00
	ld   bc, $9e50                                   ; $57ff: $01 $50 $9e
	ld   [$5d00], sp                                 ; $5802: $08 $00 $5d
	and  c                                           ; $5805: $a1
	sbc  a                                           ; $5806: $9f
	dec  c                                           ; $5807: $0d
	ld   [hl], a                                     ; $5808: $77
	ld   d, h                                        ; $5809: $54
	ld   h, l                                        ; $580a: $65
	ld   l, l                                        ; $580b: $6d
	ld   a, h                                        ; $580c: $7c
	ld   sp, hl                                      ; $580d: $f9
	dec  c                                           ; $580e: $0d
	nop                                              ; $580f: $00
	ld   a, [bc]                                     ; $5810: $0a
	rrca                                             ; $5811: $0f
	nop                                              ; $5812: $00
	ld   bc, $df01                                   ; $5813: $01 $01 $df
	db   $ec                                         ; $5816: $ec
	and  e                                           ; $5817: $a3
	ld   h, e                                        ; $5818: $63
	and  c                                           ; $5819: $a1
	sbc  a                                           ; $581a: $9f
	rst  $28                                         ; $581b: $ef
	call nz, $fbac                                   ; $581c: $c4 $ac $fb
	ld   e, d                                        ; $581f: $5a
	dec  c                                           ; $5820: $0d
	ld   d, b                                        ; $5821: $50
	ld   e, c                                        ; $5822: $59
	ld   a, b                                        ; $5823: $78
	ld   d, d                                        ; $5824: $52
	and  c                                           ; $5825: $a1
	ld   [hl], l                                     ; $5826: $75
	ld   h, a                                        ; $5827: $67
	ld   [hl], c                                     ; $5828: $71
	ld   [hl], h                                     ; $5829: $74
	ld   sp, hl                                      ; $582a: $f9
	dec  c                                           ; $582b: $0d
	inc  b                                           ; $582c: $04
	ld   l, l                                        ; $582d: $6d
	ld   e, d                                        ; $582e: $5a
	ld   d, b                                        ; $582f: $50
	ld   e, a                                        ; $5830: $5f
	ld   [hl], h                                     ; $5831: $74
	ld   h, e                                        ; $5832: $63
	ld   h, l                                        ; $5833: $65
	ld   d, b                                        ; $5834: $50
	ld   h, b                                        ; $5835: $60
	adc  h                                           ; $5836: $8c
	ld   h, a                                        ; $5837: $67
	sub  [hl]                                        ; $5838: $96
	sbc  a                                           ; $5839: $9f
	dec  c                                           ; $583a: $0d
	nop                                              ; $583b: $00
	ld   a, [bc]                                     ; $583c: $0a
	rlca                                             ; $583d: $07
	ld   h, h                                        ; $583e: $64
	inc  b                                           ; $583f: $04
	inc  bc                                          ; $5840: $03
	ld   d, b                                        ; $5841: $50
	ld   [bc], a                                     ; $5842: $02
	nop                                              ; $5843: $00
	inc  bc                                          ; $5844: $03
	ld   c, d                                        ; $5845: $4a
	add  hl, hl                                      ; $5846: $29
	add  hl, hl                                      ; $5847: $29
	ld   bc, $2501                                   ; $5848: $01 $01 $25
	nop                                              ; $584b: $00
	inc  e                                           ; $584c: $1c
	inc  bc                                          ; $584d: $03
	rlca                                             ; $584e: $07
	rlca                                             ; $584f: $07
	ld   bc, $956f                                   ; $5850: $01 $6f $95
	ld   [hl], c                                     ; $5853: $71
	halt                                             ; $5854: $76
	sbc  [hl]                                        ; $5855: $9e
	ld   l, a                                        ; $5856: $6f
	sub  l                                           ; $5857: $95
	ld   [hl], c                                     ; $5858: $71
	halt                                             ; $5859: $76
	rst  $38                                         ; $585a: $ff
	rst  $38                                         ; $585b: $ff
	dec  c                                           ; $585c: $0d
	nop                                              ; $585d: $00
	ld   a, [bc]                                     ; $585e: $0a
	dec  c                                           ; $585f: $0d
	nop                                              ; $5860: $00
	nop                                              ; $5861: $00
	rrca                                             ; $5862: $0f
	nop                                              ; $5863: $00
	ld   bc, $0519                                   ; $5864: $01 $19 $05
	inc  bc                                          ; $5867: $03
	ld   [bc], a                                     ; $5868: $02
	jp   nc, Jump_059_7159                           ; $5869: $d2 $59 $71

	ld   [hl], h                                     ; $586c: $74
	inc  bc                                          ; $586d: $03
	ld   h, b                                        ; $586e: $60
	ld   e, c                                        ; $586f: $59
	sub  a                                           ; $5870: $97
	inc  d                                           ; $5871: $14
	inc  b                                           ; $5872: $04
	ld   a, c                                        ; $5873: $79
	inc  b                                           ; $5874: $04
	call nc, Call_059_50a0                           ; $5875: $d4 $a0 $50
	ld   e, a                                        ; $5878: $5f
	sbc  c                                           ; $5879: $99
	nop                                              ; $587a: $00
	nop                                              ; $587b: $00
	ld   [bc], a                                     ; $587c: $02
	jp   nc, Jump_059_7159                           ; $587d: $d2 $59 $71

	ld   [hl], h                                     ; $5880: $74
	inc  bc                                          ; $5881: $03
	ld   h, b                                        ; $5882: $60
	ld   e, c                                        ; $5883: $59
	sub  a                                           ; $5884: $97
	jr   @+$06                                       ; $5885: $18 $04

	ld   a, c                                        ; $5887: $79
	inc  b                                           ; $5888: $04
	call nc, Call_059_50a0                           ; $5889: $d4 $a0 $50
	ld   e, a                                        ; $588c: $5f
	sbc  c                                           ; $588d: $99
	nop                                              ; $588e: $00
	ld   bc, $d202                                   ; $588f: $01 $02 $d2
	ld   e, c                                        ; $5892: $59
	ld   [hl], c                                     ; $5893: $71
	ld   [hl], h                                     ; $5894: $74
	ld   [bc], a                                     ; $5895: $02
	inc  e                                           ; $5896: $1c
	ld   e, c                                        ; $5897: $59
	sub  a                                           ; $5898: $97
	jr   @+$06                                       ; $5899: $18 $04

	ld   a, c                                        ; $589b: $79
	inc  b                                           ; $589c: $04
	call nc, Call_059_50a0                           ; $589d: $d4 $a0 $50
	ld   e, a                                        ; $58a0: $5f
	sbc  c                                           ; $58a1: $99
	nop                                              ; $58a2: $00
	ld   [bc], a                                     ; $58a3: $02
	rlca                                             ; $58a4: $07
	ret  nc                                          ; $58a5: $d0

	nop                                              ; $58a6: $00
	ld   [bc], a                                     ; $58a7: $02
	inc  bc                                          ; $58a8: $03
	ld   bc, $2000                                   ; $58a9: $01 $00 $20
	nop                                              ; $58ac: $00
	rlca                                             ; $58ad: $07
	ld   hl, $0201                                   ; $58ae: $21 $01 $02
	inc  bc                                          ; $58b1: $03
	ld   bc, $2001                                   ; $58b2: $01 $01 $20
	nop                                              ; $58b5: $00
	rlca                                             ; $58b6: $07
	or   h                                           ; $58b7: $b4
	inc  b                                           ; $58b8: $04
	ld   [bc], a                                     ; $58b9: $02
	inc  bc                                          ; $58ba: $03
	ld   bc, $2002                                   ; $58bb: $01 $02 $20
	nop                                              ; $58be: $00
	ld   b, $78                                      ; $58bf: $06 $78
	ld   bc, $000f                                   ; $58c1: $01 $0f $00
	ld   bc, $a901                                   ; $58c4: $01 $01 $a9
	and  l                                           ; $58c7: $a5
	call nz, $0dfa                                   ; $58c8: $c4 $fa $0d
	nop                                              ; $58cb: $00
	ld   a, [bc]                                     ; $58cc: $0a
	ld   c, $69                                      ; $58cd: $0e $69
	rrca                                             ; $58cf: $0f
	nop                                              ; $58d0: $00
	ld   bc, $5001                                   ; $58d1: $01 $01 $50
	sbc  d                                           ; $58d4: $9a
	ld   sp, hl                                      ; $58d5: $f9
	ld   sp, hl                                      ; $58d6: $f9
	ld   sp, hl                                      ; $58d7: $f9
	dec  c                                           ; $58d8: $0d
	dec  b                                           ; $58d9: $05
	adc  d                                           ; $58da: $8a
	dec  b                                           ; $58db: $05
	ld   c, l                                        ; $58dc: $4d
	ld   a, c                                        ; $58dd: $79
	ld   d, b                                        ; $58de: $50
	ld   d, d                                        ; $58df: $52
	ld   l, l                                        ; $58e0: $6d
	ld   l, h                                        ; $58e1: $6c
	ld   sp, hl                                      ; $58e2: $f9
	dec  c                                           ; $58e3: $0d
	and  c                                           ; $58e4: $a1
	ld   sp, hl                                      ; $58e5: $f9
	db   $10                                         ; $58e6: $10
	inc  bc                                          ; $58e7: $03
	ld   e, c                                        ; $58e8: $59
	inc  b                                           ; $58e9: $04
	rlca                                             ; $58ea: $07
	ld   sp, hl                                      ; $58eb: $f9
	dec  c                                           ; $58ec: $0d
	nop                                              ; $58ed: $00
	ld   a, [bc]                                     ; $58ee: $0a
	inc  e                                           ; $58ef: $1c
	inc  bc                                          ; $58f0: $03
	inc  b                                           ; $58f1: $04
	inc  b                                           ; $58f2: $04
	dec  e                                           ; $58f3: $1d
	ld   b, b                                        ; $58f4: $40
	inc  de                                          ; $58f5: $13
	inc  bc                                          ; $58f6: $03
	inc  de                                          ; $58f7: $13
	ld   bc, $2901                                   ; $58f8: $01 $01 $29
	nop                                              ; $58fb: $00
	ld   bc, $9a6b                                   ; $58fc: $01 $6b $9a
	ld   a, l                                        ; $58ff: $7d
	sbc  [hl]                                        ; $5900: $9e
	ld   h, a                                        ; $5901: $67
	adc  l                                           ; $5902: $8d
	sbc  d                                           ; $5903: $9a
	ld   a, h                                        ; $5904: $7c
	dec  c                                           ; $5905: $0d
	rst  $28                                         ; $5906: $ef
	call nz, $fbac                                   ; $5907: $c4 $ac $fb
	sub  [hl]                                        ; $590a: $96
	rst  $38                                         ; $590b: $ff
	rst  $38                                         ; $590c: $ff
	dec  c                                           ; $590d: $0d
	nop                                              ; $590e: $00
	ld   a, [bc]                                     ; $590f: $0a
	ld   b, $90                                      ; $5910: $06 $90
	ld   bc, $000f                                   ; $5912: $01 $0f $00
	ld   bc, $a901                                   ; $5915: $01 $01 $a9
	and  l                                           ; $5918: $a5
	call nz, $0dfa                                   ; $5919: $c4 $fa $0d
	nop                                              ; $591c: $00
	ld   a, [bc]                                     ; $591d: $0a
	ld   c, $6d                                      ; $591e: $0e $6d
	rrca                                             ; $5920: $0f
	nop                                              ; $5921: $00
	ld   bc, $5001                                   ; $5922: $01 $01 $50
	sbc  d                                           ; $5925: $9a
	ld   sp, hl                                      ; $5926: $f9
	ld   sp, hl                                      ; $5927: $f9
	ld   sp, hl                                      ; $5928: $f9
	dec  c                                           ; $5929: $0d
	dec  b                                           ; $592a: $05
	adc  d                                           ; $592b: $8a
	dec  b                                           ; $592c: $05
	ld   c, l                                        ; $592d: $4d
	ld   a, c                                        ; $592e: $79
	ld   d, b                                        ; $592f: $50
	ld   d, d                                        ; $5930: $52
	ld   l, l                                        ; $5931: $6d
	ld   l, h                                        ; $5932: $6c
	ld   sp, hl                                      ; $5933: $f9
	dec  c                                           ; $5934: $0d
	and  c                                           ; $5935: $a1
	ld   sp, hl                                      ; $5936: $f9
	db   $10                                         ; $5937: $10
	or   [hl]                                        ; $5938: $b6
	db   $eb                                         ; $5939: $eb
	halt                                             ; $593a: $76
	ld   [bc], a                                     ; $593b: $02
	ld   c, a                                        ; $593c: $4f
	ld   [bc], a                                     ; $593d: $02
	xor  b                                           ; $593e: $a8
	inc  b                                           ; $593f: $04
	add  a                                           ; $5940: $87
	ld   sp, hl                                      ; $5941: $f9
	dec  c                                           ; $5942: $0d
	nop                                              ; $5943: $00
	ld   a, [bc]                                     ; $5944: $0a
	inc  e                                           ; $5945: $1c
	inc  bc                                          ; $5946: $03
	inc  b                                           ; $5947: $04
	inc  b                                           ; $5948: $04
	dec  e                                           ; $5949: $1d
	ld   b, b                                        ; $594a: $40
	inc  de                                          ; $594b: $13
	inc  bc                                          ; $594c: $03
	inc  de                                          ; $594d: $13
	ld   bc, $2901                                   ; $594e: $01 $01 $29
	nop                                              ; $5951: $00
	ld   bc, $9a6b                                   ; $5952: $01 $6b $9a
	ld   a, l                                        ; $5955: $7d
	sbc  [hl]                                        ; $5956: $9e
	ld   [bc], a                                     ; $5957: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5958: $cf
	dec  b                                           ; $5959: $05
	ld   a, [de]                                     ; $595a: $1a
	ld   a, h                                        ; $595b: $7c
	dec  c                                           ; $595c: $0d
	rst  $28                                         ; $595d: $ef
	call nz, $fbac                                   ; $595e: $c4 $ac $fb
	sub  [hl]                                        ; $5961: $96
	rst  $38                                         ; $5962: $ff
	rst  $38                                         ; $5963: $ff
	dec  c                                           ; $5964: $0d
	nop                                              ; $5965: $00
	ld   a, [bc]                                     ; $5966: $0a
	ld   b, $90                                      ; $5967: $06 $90
	ld   bc, $000f                                   ; $5969: $01 $0f $00
	ld   bc, $5401                                   ; $596c: $01 $01 $54
	db   $fc                                         ; $596f: $fc
	and  c                                           ; $5970: $a1
	rst  $38                                         ; $5971: $ff
	rst  $38                                         ; $5972: $ff
	dec  c                                           ; $5973: $0d
	ld   [hl], a                                     ; $5974: $77
	sbc  d                                           ; $5975: $9a
	ld   e, c                                        ; $5976: $59
	ld   a, b                                        ; $5977: $78
	rst  $38                                         ; $5978: $ff
	rst  $38                                         ; $5979: $ff
	rst  $38                                         ; $597a: $ff
	rst  $38                                         ; $597b: $ff
	dec  c                                           ; $597c: $0d
	nop                                              ; $597d: $00
	ld   a, [bc]                                     ; $597e: $0a
	ld   b, $a5                                      ; $597f: $06 $a5
	ld   bc, $000f                                   ; $5981: $01 $0f $00
	ld   bc, $6601                                   ; $5984: $01 $01 $66
	sub  c                                           ; $5987: $91
	ld   d, b                                        ; $5988: $50
	sbc  [hl]                                        ; $5989: $9e
	ld   h, c                                        ; $598a: $61
	sbc  d                                           ; $598b: $9a
	ld   l, [hl]                                     ; $598c: $6e
	ld   a, [$000d]                                  ; $598d: $fa $0d $00
	ld   a, [bc]                                     ; $5990: $0a
	dec  c                                           ; $5991: $0d
	nop                                              ; $5992: $00
	nop                                              ; $5993: $00
	rrca                                             ; $5994: $0f
	nop                                              ; $5995: $00
	ld   bc, $0519                                   ; $5996: $01 $19 $05
	inc  bc                                          ; $5999: $03
	ld   [bc], a                                     ; $599a: $02
	jp   nc, Jump_059_7159                           ; $599b: $d2 $59 $71

	ld   [hl], h                                     ; $599e: $74
	inc  bc                                          ; $599f: $03
	ld   h, b                                        ; $59a0: $60
	ld   e, c                                        ; $59a1: $59
	sub  a                                           ; $59a2: $97
	inc  de                                          ; $59a3: $13
	inc  b                                           ; $59a4: $04
	ld   a, c                                        ; $59a5: $79
	inc  b                                           ; $59a6: $04
	call nc, Call_059_50a0                           ; $59a7: $d4 $a0 $50
	ld   e, a                                        ; $59aa: $5f
	sbc  c                                           ; $59ab: $99
	nop                                              ; $59ac: $00
	nop                                              ; $59ad: $00
	ld   [bc], a                                     ; $59ae: $02
	jp   nc, Jump_059_7159                           ; $59af: $d2 $59 $71

	ld   [hl], h                                     ; $59b2: $74
	inc  b                                           ; $59b3: $04
	dec  bc                                          ; $59b4: $0b
	dec  b                                           ; $59b5: $05
	ld   l, a                                        ; $59b6: $6f
	ld   e, c                                        ; $59b7: $59
	sub  a                                           ; $59b8: $97
	ld   [bc], a                                     ; $59b9: $02
	inc  e                                           ; $59ba: $1c
	ld   [de], a                                     ; $59bb: $12
	inc  b                                           ; $59bc: $04
	ld   a, c                                        ; $59bd: $79
	inc  b                                           ; $59be: $04
	call nc, Call_059_50a0                           ; $59bf: $d4 $a0 $50
	ld   e, a                                        ; $59c2: $5f
	sbc  c                                           ; $59c3: $99
	nop                                              ; $59c4: $00
	ld   bc, $d202                                   ; $59c5: $01 $02 $d2
	ld   e, c                                        ; $59c8: $59
	ld   [hl], c                                     ; $59c9: $71
	ld   [hl], h                                     ; $59ca: $74
	inc  b                                           ; $59cb: $04
	dec  bc                                          ; $59cc: $0b
	dec  b                                           ; $59cd: $05
	ld   l, a                                        ; $59ce: $6f
	ld   e, c                                        ; $59cf: $59
	sub  a                                           ; $59d0: $97
	inc  bc                                          ; $59d1: $03
	ld   h, b                                        ; $59d2: $60
	inc  d                                           ; $59d3: $14
	inc  b                                           ; $59d4: $04
	ld   a, c                                        ; $59d5: $79
	inc  b                                           ; $59d6: $04
	call nc, Call_059_50a0                           ; $59d7: $d4 $a0 $50
	ld   e, a                                        ; $59da: $5f
	sbc  c                                           ; $59db: $99
	nop                                              ; $59dc: $00
	ld   [bc], a                                     ; $59dd: $02
	rlca                                             ; $59de: $07
	dec  d                                           ; $59df: $15
	ld   [bc], a                                     ; $59e0: $02
	ld   [bc], a                                     ; $59e1: $02
	inc  bc                                          ; $59e2: $03
	ld   bc, $2000                                   ; $59e3: $01 $00 $20
	nop                                              ; $59e6: $00
	rlca                                             ; $59e7: $07
	ld   e, d                                        ; $59e8: $5a
	ld   [bc], a                                     ; $59e9: $02
	ld   [bc], a                                     ; $59ea: $02
	inc  bc                                          ; $59eb: $03
	ld   bc, $2001                                   ; $59ec: $01 $01 $20
	nop                                              ; $59ef: $00
	rlca                                             ; $59f0: $07
	or   h                                           ; $59f1: $b4
	inc  b                                           ; $59f2: $04
	ld   [bc], a                                     ; $59f3: $02
	inc  bc                                          ; $59f4: $03
	ld   bc, $2002                                   ; $59f5: $01 $02 $20
	nop                                              ; $59f8: $00
	ld   b, $ad                                      ; $59f9: $06 $ad
	ld   [bc], a                                     ; $59fb: $02
	rrca                                             ; $59fc: $0f
	nop                                              ; $59fd: $00
	ld   bc, $a901                                   ; $59fe: $01 $01 $a9
	and  l                                           ; $5a01: $a5
	call nz, $0dfa                                   ; $5a02: $c4 $fa $0d
	nop                                              ; $5a05: $00
	ld   a, [bc]                                     ; $5a06: $0a
	ld   c, $68                                      ; $5a07: $0e $68
	rrca                                             ; $5a09: $0f
	nop                                              ; $5a0a: $00
	ld   bc, $5001                                   ; $5a0b: $01 $01 $50
	sbc  d                                           ; $5a0e: $9a
	ld   sp, hl                                      ; $5a0f: $f9
	ld   sp, hl                                      ; $5a10: $f9
	ld   sp, hl                                      ; $5a11: $f9
	dec  c                                           ; $5a12: $0d
	dec  b                                           ; $5a13: $05
	adc  d                                           ; $5a14: $8a
	dec  b                                           ; $5a15: $05
	ld   c, l                                        ; $5a16: $4d
	ld   a, c                                        ; $5a17: $79
	ld   d, b                                        ; $5a18: $50
	ld   d, d                                        ; $5a19: $52
	ld   l, l                                        ; $5a1a: $6d
	ld   l, h                                        ; $5a1b: $6c
	ld   sp, hl                                      ; $5a1c: $f9
	dec  c                                           ; $5a1d: $0d
	and  c                                           ; $5a1e: $a1
	ld   sp, hl                                      ; $5a1f: $f9
	db   $10                                         ; $5a20: $10
	ld   e, c                                        ; $5a21: $59
	sbc  l                                           ; $5a22: $9d
	sub  a                                           ; $5a23: $97
	ld   sp, hl                                      ; $5a24: $f9
	dec  c                                           ; $5a25: $0d
	nop                                              ; $5a26: $00
	ld   a, [bc]                                     ; $5a27: $0a
	inc  e                                           ; $5a28: $1c
	inc  bc                                          ; $5a29: $03
	inc  b                                           ; $5a2a: $04
	inc  b                                           ; $5a2b: $04
	dec  e                                           ; $5a2c: $1d
	ld   b, b                                        ; $5a2d: $40
	inc  de                                          ; $5a2e: $13
	inc  bc                                          ; $5a2f: $03
	inc  de                                          ; $5a30: $13
	ld   bc, $2901                                   ; $5a31: $01 $01 $29
	nop                                              ; $5a34: $00
	ld   bc, $9a6b                                   ; $5a35: $01 $6b $9a
	ld   a, l                                        ; $5a38: $7d
	sbc  [hl]                                        ; $5a39: $9e
	xor  h                                           ; $5a3a: $ac
	push af                                          ; $5a3b: $f5
	bit  7, h                                        ; $5a3c: $cb $7c
	dec  c                                           ; $5a3e: $0d
	rst  $28                                         ; $5a3f: $ef
	call nz, $fbac                                   ; $5a40: $c4 $ac $fb
	sub  [hl]                                        ; $5a43: $96
	rst  $38                                         ; $5a44: $ff
	rst  $38                                         ; $5a45: $ff
	dec  c                                           ; $5a46: $0d
	nop                                              ; $5a47: $00
	ld   a, [bc]                                     ; $5a48: $0a
	ld   b, $c5                                      ; $5a49: $06 $c5
	ld   [bc], a                                     ; $5a4b: $02
	rrca                                             ; $5a4c: $0f
	nop                                              ; $5a4d: $00
	ld   bc, $a901                                   ; $5a4e: $01 $01 $a9
	and  l                                           ; $5a51: $a5
	call nz, $0dfa                                   ; $5a52: $c4 $fa $0d
	nop                                              ; $5a55: $00
	ld   a, [bc]                                     ; $5a56: $0a
	ld   c, $6b                                      ; $5a57: $0e $6b
	rrca                                             ; $5a59: $0f
	nop                                              ; $5a5a: $00
	ld   bc, $5001                                   ; $5a5b: $01 $01 $50
	sbc  d                                           ; $5a5e: $9a
	ld   sp, hl                                      ; $5a5f: $f9
	ld   sp, hl                                      ; $5a60: $f9
	ld   sp, hl                                      ; $5a61: $f9
	dec  c                                           ; $5a62: $0d
	dec  b                                           ; $5a63: $05
	adc  d                                           ; $5a64: $8a
	dec  b                                           ; $5a65: $05
	ld   c, l                                        ; $5a66: $4d
	ld   a, c                                        ; $5a67: $79
	ld   d, b                                        ; $5a68: $50
	ld   d, d                                        ; $5a69: $52
	ld   l, l                                        ; $5a6a: $6d
	ld   l, h                                        ; $5a6b: $6c
	ld   sp, hl                                      ; $5a6c: $f9
	dec  c                                           ; $5a6d: $0d
	and  c                                           ; $5a6e: $a1
	ld   sp, hl                                      ; $5a6f: $f9
	db   $10                                         ; $5a70: $10
	ld   e, c                                        ; $5a71: $59
	sub  a                                           ; $5a72: $97
	ld   [hl], c                                     ; $5a73: $71
	adc  e                                           ; $5a74: $8b
	ld   l, [hl]                                     ; $5a75: $6e
	ld   sp, hl                                      ; $5a76: $f9
	dec  c                                           ; $5a77: $0d
	nop                                              ; $5a78: $00
	ld   a, [bc]                                     ; $5a79: $0a
	inc  e                                           ; $5a7a: $1c
	inc  bc                                          ; $5a7b: $03
	inc  b                                           ; $5a7c: $04
	inc  b                                           ; $5a7d: $04
	dec  e                                           ; $5a7e: $1d
	ld   b, b                                        ; $5a7f: $40
	inc  de                                          ; $5a80: $13
	inc  bc                                          ; $5a81: $03
	inc  de                                          ; $5a82: $13
	ld   bc, $2901                                   ; $5a83: $01 $01 $29
	nop                                              ; $5a86: $00
	ld   bc, $9a6b                                   ; $5a87: $01 $6b $9a
	ld   a, l                                        ; $5a8a: $7d
	sbc  [hl]                                        ; $5a8b: $9e
	inc  b                                           ; $5a8c: $04
	ld   a, [bc]                                     ; $5a8d: $0a
	inc  bc                                          ; $5a8e: $03
	jp   nc, $0d7c                                   ; $5a8f: $d2 $7c $0d

	rst  $28                                         ; $5a92: $ef
	call nz, $fbac                                   ; $5a93: $c4 $ac $fb
	sub  [hl]                                        ; $5a96: $96
	rst  $38                                         ; $5a97: $ff
	rst  $38                                         ; $5a98: $ff
	dec  c                                           ; $5a99: $0d
	nop                                              ; $5a9a: $00
	ld   a, [bc]                                     ; $5a9b: $0a
	ld   b, $c5                                      ; $5a9c: $06 $c5
	ld   [bc], a                                     ; $5a9e: $02
	rrca                                             ; $5a9f: $0f
	nop                                              ; $5aa0: $00
	ld   bc, $5401                                   ; $5aa1: $01 $01 $54
	db   $fc                                         ; $5aa4: $fc
	and  c                                           ; $5aa5: $a1
	rst  $38                                         ; $5aa6: $ff
	rst  $38                                         ; $5aa7: $ff
	dec  c                                           ; $5aa8: $0d
	ld   [hl], a                                     ; $5aa9: $77
	sbc  d                                           ; $5aaa: $9a
	ld   e, c                                        ; $5aab: $59
	ld   a, b                                        ; $5aac: $78
	rst  $38                                         ; $5aad: $ff
	rst  $38                                         ; $5aae: $ff
	rst  $38                                         ; $5aaf: $ff
	rst  $38                                         ; $5ab0: $ff
	dec  c                                           ; $5ab1: $0d
	nop                                              ; $5ab2: $00
	ld   a, [bc]                                     ; $5ab3: $0a
	ld   b, $e4                                      ; $5ab4: $06 $e4
	ld   [bc], a                                     ; $5ab6: $02
	rrca                                             ; $5ab7: $0f
	nop                                              ; $5ab8: $00
	ld   bc, $6601                                   ; $5ab9: $01 $01 $66
	sub  c                                           ; $5abc: $91
	ld   d, b                                        ; $5abd: $50
	sbc  [hl]                                        ; $5abe: $9e
	inc  bc                                          ; $5abf: $03
	ld   l, c                                        ; $5ac0: $69
	ld   [bc], a                                     ; $5ac1: $02
	xor  d                                           ; $5ac2: $aa
	ld   a, c                                        ; $5ac3: $79
	rst  $38                                         ; $5ac4: $ff
	rst  $38                                         ; $5ac5: $ff
	dec  c                                           ; $5ac6: $0d
	ld   h, c                                        ; $5ac7: $61
	sbc  d                                           ; $5ac8: $9a
	ld   [hl], l                                     ; $5ac9: $75
	ld   h, a                                        ; $5aca: $67
	ld   a, e                                        ; $5acb: $7b
	ld   a, [$000d]                                  ; $5acc: $fa $0d $00
	ld   a, [bc]                                     ; $5acf: $0a
	dec  c                                           ; $5ad0: $0d
	nop                                              ; $5ad1: $00
	nop                                              ; $5ad2: $00
	rrca                                             ; $5ad3: $0f
	nop                                              ; $5ad4: $00
	ld   bc, $0519                                   ; $5ad5: $01 $19 $05
	inc  bc                                          ; $5ad8: $03
	ld   [bc], a                                     ; $5ad9: $02
	jp   nc, Jump_059_7159                           ; $5ada: $d2 $59 $71

	ld   [hl], h                                     ; $5add: $74
	inc  b                                           ; $5ade: $04
	dec  bc                                          ; $5adf: $0b
	dec  b                                           ; $5ae0: $05
	ld   l, a                                        ; $5ae1: $6f
	and  b                                           ; $5ae2: $a0
	ld   d, b                                        ; $5ae3: $50
	ld   e, a                                        ; $5ae4: $5f
	sbc  c                                           ; $5ae5: $99
	nop                                              ; $5ae6: $00
	nop                                              ; $5ae7: $00
	ld   [bc], a                                     ; $5ae8: $02
	jp   nc, Jump_059_7159                           ; $5ae9: $d2 $59 $71

	ld   [hl], h                                     ; $5aec: $74
	inc  bc                                          ; $5aed: $03
	ld   h, b                                        ; $5aee: $60
	ld   e, c                                        ; $5aef: $59
	sub  a                                           ; $5af0: $97
	rla                                              ; $5af1: $17
	inc  b                                           ; $5af2: $04
	ld   a, c                                        ; $5af3: $79
	inc  b                                           ; $5af4: $04
	call nc, Call_059_50a0                           ; $5af5: $d4 $a0 $50
	ld   e, a                                        ; $5af8: $5f
	sbc  c                                           ; $5af9: $99
	nop                                              ; $5afa: $00
	ld   bc, $d202                                   ; $5afb: $01 $02 $d2
	ld   e, c                                        ; $5afe: $59
	ld   [hl], c                                     ; $5aff: $71
	ld   [hl], h                                     ; $5b00: $74
	inc  bc                                          ; $5b01: $03
	ld   h, b                                        ; $5b02: $60
	ld   e, c                                        ; $5b03: $59
	sub  a                                           ; $5b04: $97
	ld   [de], a                                     ; $5b05: $12
	inc  b                                           ; $5b06: $04
	ld   a, c                                        ; $5b07: $79
	inc  b                                           ; $5b08: $04
	call nc, Call_059_50a0                           ; $5b09: $d4 $a0 $50
	ld   e, a                                        ; $5b0c: $5f
	sbc  c                                           ; $5b0d: $99
	nop                                              ; $5b0e: $00
	ld   [bc], a                                     ; $5b0f: $02
	rlca                                             ; $5b10: $07
	inc  a                                           ; $5b11: $3c
	inc  bc                                          ; $5b12: $03
	ld   [bc], a                                     ; $5b13: $02
	inc  bc                                          ; $5b14: $03
	ld   bc, $2000                                   ; $5b15: $01 $00 $20
	nop                                              ; $5b18: $00
	rlca                                             ; $5b19: $07
	sub  h                                           ; $5b1a: $94
	inc  bc                                          ; $5b1b: $03
	ld   [bc], a                                     ; $5b1c: $02
	inc  bc                                          ; $5b1d: $03
	ld   bc, $2001                                   ; $5b1e: $01 $01 $20
	nop                                              ; $5b21: $00
	rlca                                             ; $5b22: $07
	or   h                                           ; $5b23: $b4
	inc  b                                           ; $5b24: $04
	ld   [bc], a                                     ; $5b25: $02
	inc  bc                                          ; $5b26: $03
	ld   bc, $2002                                   ; $5b27: $01 $02 $20
	nop                                              ; $5b2a: $00
	ld   b, $eb                                      ; $5b2b: $06 $eb
	inc  bc                                          ; $5b2d: $03
	rrca                                             ; $5b2e: $0f
	nop                                              ; $5b2f: $00
	ld   bc, $a901                                   ; $5b30: $01 $01 $a9
	and  l                                           ; $5b33: $a5
	call nz, $0dfa                                   ; $5b34: $c4 $fa $0d
	nop                                              ; $5b37: $00
	ld   a, [bc]                                     ; $5b38: $0a
	ld   c, $6a                                      ; $5b39: $0e $6a
	rrca                                             ; $5b3b: $0f
	nop                                              ; $5b3c: $00
	ld   bc, $5001                                   ; $5b3d: $01 $01 $50
	sbc  d                                           ; $5b40: $9a
	ld   sp, hl                                      ; $5b41: $f9
	ld   sp, hl                                      ; $5b42: $f9
	ld   sp, hl                                      ; $5b43: $f9
	dec  c                                           ; $5b44: $0d
	dec  b                                           ; $5b45: $05
	adc  d                                           ; $5b46: $8a
	dec  b                                           ; $5b47: $05
	ld   c, l                                        ; $5b48: $4d
	ld   a, c                                        ; $5b49: $79
	ld   d, b                                        ; $5b4a: $50
	ld   d, d                                        ; $5b4b: $52
	ld   l, l                                        ; $5b4c: $6d
	ld   l, h                                        ; $5b4d: $6c
	ld   sp, hl                                      ; $5b4e: $f9
	dec  c                                           ; $5b4f: $0d
	sbc  l                                           ; $5b50: $9d
	ld   [hl], c                                     ; $5b51: $71
	ld   a, [$7a10]                                  ; $5b52: $fa $10 $7a
	ld   d, d                                        ; $5b55: $52
	ld   e, [hl]                                     ; $5b56: $5e
	sbc  c                                           ; $5b57: $99
	adc  l                                           ; $5b58: $8d
	ld   l, [hl]                                     ; $5b59: $6e
	sub  a                                           ; $5b5a: $97
	ld   e, a                                        ; $5b5b: $5f
	ld   l, [hl]                                     ; $5b5c: $6e
	ld   a, [$000d]                                  ; $5b5d: $fa $0d $00
	ld   a, [bc]                                     ; $5b60: $0a
	inc  e                                           ; $5b61: $1c
	inc  bc                                          ; $5b62: $03
	inc  b                                           ; $5b63: $04
	inc  b                                           ; $5b64: $04
	dec  e                                           ; $5b65: $1d
	ld   b, b                                        ; $5b66: $40
	inc  de                                          ; $5b67: $13
	inc  bc                                          ; $5b68: $03
	inc  de                                          ; $5b69: $13
	ld   bc, $2901                                   ; $5b6a: $01 $01 $29
	nop                                              ; $5b6d: $00
	ld   bc, $9a6b                                   ; $5b6e: $01 $6b $9a
	ld   a, l                                        ; $5b71: $7d
	sbc  [hl]                                        ; $5b72: $9e
	and  e                                           ; $5b73: $a3
	and  l                                           ; $5b74: $a5
	db   $ec                                         ; $5b75: $ec
	cp   d                                           ; $5b76: $ba
	ld   a, h                                        ; $5b77: $7c
	dec  c                                           ; $5b78: $0d
	rst  $28                                         ; $5b79: $ef
	call nz, $fbac                                   ; $5b7a: $c4 $ac $fb
	sub  [hl]                                        ; $5b7d: $96
	rst  $38                                         ; $5b7e: $ff
	rst  $38                                         ; $5b7f: $ff
	dec  c                                           ; $5b80: $0d
	nop                                              ; $5b81: $00
	ld   a, [bc]                                     ; $5b82: $0a
	ld   b, $eb                                      ; $5b83: $06 $eb
	inc  bc                                          ; $5b85: $03
	rrca                                             ; $5b86: $0f
	nop                                              ; $5b87: $00
	ld   bc, $a901                                   ; $5b88: $01 $01 $a9
	and  l                                           ; $5b8b: $a5
	call nz, $0dfa                                   ; $5b8c: $c4 $fa $0d
	nop                                              ; $5b8f: $00
	ld   a, [bc]                                     ; $5b90: $0a
	ld   c, $6c                                      ; $5b91: $0e $6c
	rrca                                             ; $5b93: $0f
	nop                                              ; $5b94: $00
	ld   bc, $5001                                   ; $5b95: $01 $01 $50
	sbc  d                                           ; $5b98: $9a
	ld   sp, hl                                      ; $5b99: $f9
	ld   sp, hl                                      ; $5b9a: $f9
	ld   sp, hl                                      ; $5b9b: $f9
	dec  c                                           ; $5b9c: $0d
	dec  b                                           ; $5b9d: $05
	adc  d                                           ; $5b9e: $8a
	dec  b                                           ; $5b9f: $05
	ld   c, l                                        ; $5ba0: $4d
	ld   a, c                                        ; $5ba1: $79
	ld   d, b                                        ; $5ba2: $50
	ld   d, d                                        ; $5ba3: $52
	ld   l, l                                        ; $5ba4: $6d
	ld   l, h                                        ; $5ba5: $6c
	ld   sp, hl                                      ; $5ba6: $f9
	dec  c                                           ; $5ba7: $0d
	and  c                                           ; $5ba8: $a1
	ld   sp, hl                                      ; $5ba9: $f9
	db   $10                                         ; $5baa: $10
	ld   a, l                                        ; $5bab: $7d
	ld   e, c                                        ; $5bac: $59
	adc  h                                           ; $5bad: $8c
	ld   sp, hl                                      ; $5bae: $f9
	db   $10                                         ; $5baf: $10
	ld   e, a                                        ; $5bb0: $5f
	ld   d, d                                        ; $5bb1: $52
	ld   h, c                                        ; $5bb2: $61
	inc  b                                           ; $5bb3: $04
	rlca                                             ; $5bb4: $07
	ld   sp, hl                                      ; $5bb5: $f9
	dec  c                                           ; $5bb6: $0d
	nop                                              ; $5bb7: $00
	ld   a, [bc]                                     ; $5bb8: $0a
	inc  e                                           ; $5bb9: $1c
	inc  bc                                          ; $5bba: $03
	inc  b                                           ; $5bbb: $04
	inc  b                                           ; $5bbc: $04
	dec  e                                           ; $5bbd: $1d
	ld   b, b                                        ; $5bbe: $40
	inc  de                                          ; $5bbf: $13
	inc  bc                                          ; $5bc0: $03
	inc  de                                          ; $5bc1: $13
	ld   bc, $2901                                   ; $5bc2: $01 $01 $29
	nop                                              ; $5bc5: $00
	ld   bc, $9a6b                                   ; $5bc6: $01 $6b $9a
	ld   a, l                                        ; $5bc9: $7d
	sbc  [hl]                                        ; $5bca: $9e
	ld   h, e                                        ; $5bcb: $63
	ld   e, l                                        ; $5bcc: $5d
	sub  a                                           ; $5bcd: $97
	ld   a, h                                        ; $5bce: $7c
	dec  c                                           ; $5bcf: $0d
	rst  $28                                         ; $5bd0: $ef
	call nz, $fbac                                   ; $5bd1: $c4 $ac $fb
	sub  [hl]                                        ; $5bd4: $96
	rst  $38                                         ; $5bd5: $ff
	rst  $38                                         ; $5bd6: $ff
	dec  c                                           ; $5bd7: $0d
	nop                                              ; $5bd8: $00
	ld   a, [bc]                                     ; $5bd9: $0a
	ld   b, $eb                                      ; $5bda: $06 $eb
	inc  bc                                          ; $5bdc: $03
	rrca                                             ; $5bdd: $0f
	nop                                              ; $5bde: $00
	ld   bc, $5401                                   ; $5bdf: $01 $01 $54
	db   $fc                                         ; $5be2: $fc
	and  c                                           ; $5be3: $a1
	rst  $38                                         ; $5be4: $ff
	rst  $38                                         ; $5be5: $ff
	dec  c                                           ; $5be6: $0d
	sbc  l                                           ; $5be7: $9d
	ld   e, c                                        ; $5be8: $59
	and  c                                           ; $5be9: $a1
	ld   a, b                                        ; $5bea: $78
	ld   d, d                                        ; $5beb: $52
	sub  d                                           ; $5bec: $92
	rst  $38                                         ; $5bed: $ff
	rst  $38                                         ; $5bee: $ff
	rst  $38                                         ; $5bef: $ff
	rst  $38                                         ; $5bf0: $ff
	dec  c                                           ; $5bf1: $0d
	nop                                              ; $5bf2: $00
	ld   a, [bc]                                     ; $5bf3: $0a
	inc  e                                           ; $5bf4: $1c
	inc  bc                                          ; $5bf5: $03
	inc  b                                           ; $5bf6: $04
	inc  b                                           ; $5bf7: $04
	dec  e                                           ; $5bf8: $1d
	ld   b, b                                        ; $5bf9: $40
	inc  de                                          ; $5bfa: $13
	inc  bc                                          ; $5bfb: $03
	inc  de                                          ; $5bfc: $13
	ld   bc, $2902                                   ; $5bfd: $01 $02 $29
	nop                                              ; $5c00: $00
	ld   bc, $5490                                   ; $5c01: $01 $90 $54
	ld   d, d                                        ; $5c04: $52
	ld   d, d                                        ; $5c05: $52
	sbc  l                                           ; $5c06: $9d
	sbc  a                                           ; $5c07: $9f
	ld   [$5d00], sp                                 ; $5c08: $08 $00 $5d
	and  c                                           ; $5c0b: $a1
	sbc  a                                           ; $5c0c: $9f
	dec  c                                           ; $5c0d: $0d
	inc  b                                           ; $5c0e: $04
	pop  hl                                          ; $5c0f: $e1
	inc  b                                           ; $5c10: $04
	rst  $38                                         ; $5c11: $ff
	ld   a, c                                        ; $5c12: $79
	ld   l, l                                        ; $5c13: $6d
	ld   a, h                                        ; $5c14: $7c
	and  c                                           ; $5c15: $a1
	ld   [hl], l                                     ; $5c16: $75
	xor  h                                           ; $5c17: $ac
	xor  a                                           ; $5c18: $af
	ld   [bc], a                                     ; $5c19: $02
	ld   hl, $a163                                   ; $5c1a: $21 $63 $a1
	and  b                                           ; $5c1d: $a0
	dec  c                                           ; $5c1e: $0d
	ld   [bc], a                                     ; $5c1f: $02
	ld   a, b                                        ; $5c20: $78
	and  c                                           ; $5c21: $a1
	ld   [hl], l                                     ; $5c22: $75
	sub  b                                           ; $5c23: $90
	sub  a                                           ; $5c24: $97
	ld   d, h                                        ; $5c25: $54
	ld   e, c                                        ; $5c26: $59
	sub  a                                           ; $5c27: $97
	sbc  a                                           ; $5c28: $9f
	dec  c                                           ; $5c29: $0d
	nop                                              ; $5c2a: $00
	ld   a, [bc]                                     ; $5c2b: $0a
	ld   bc, $786f                                   ; $5c2c: $01 $6f $78
	adc  l                                           ; $5c2f: $8d
	ld   a, c                                        ; $5c30: $79
	inc  bc                                          ; $5c31: $03
	ret  z                                           ; $5c32: $c8

	ld   a, h                                        ; $5c33: $7c
	rst  $28                                         ; $5c34: $ef
	call nz, $fbac                                   ; $5c35: $c4 $ac $fb
	ld   a, l                                        ; $5c38: $7d
	dec  c                                           ; $5c39: $0d
	ld   d, d                                        ; $5c3a: $52
	ld   l, a                                        ; $5c3b: $6f
	ld   a, [hl]                                     ; $5c3c: $7e
	and  c                                           ; $5c3d: $a1
	inc  bc                                          ; $5c3e: $03
	ld   h, b                                        ; $5c3f: $60
	dec  b                                           ; $5c40: $05
	ld   c, c                                        ; $5c41: $49
	sub  [hl]                                        ; $5c42: $96
	sbc  a                                           ; $5c43: $9f
	dec  c                                           ; $5c44: $0d
	ld   h, [hl]                                     ; $5c45: $66
	sub  c                                           ; $5c46: $91
	ld   d, b                                        ; $5c47: $50
	ld   a, e                                        ; $5c48: $7b
	sbc  a                                           ; $5c49: $9f
	dec  c                                           ; $5c4a: $0d
	nop                                              ; $5c4b: $00
	ld   a, [bc]                                     ; $5c4c: $0a
	dec  c                                           ; $5c4d: $0d
	nop                                              ; $5c4e: $00
	nop                                              ; $5c4f: $00
	rrca                                             ; $5c50: $0f
	nop                                              ; $5c51: $00
	ld   bc, $1e09                                   ; $5c52: $01 $09 $1e
	nop                                              ; $5c55: $00
	inc  e                                           ; $5c56: $1c
	inc  bc                                          ; $5c57: $03
	ld   [bc], a                                     ; $5c58: $02
	ld   [bc], a                                     ; $5c59: $02
	ld   bc, $715f                                   ; $5c5a: $01 $5f $71
	ld   h, c                                        ; $5c5d: $61
	ld   d, h                                        ; $5c5e: $54
	sub  [hl]                                        ; $5c5f: $96
	sbc  a                                           ; $5c60: $9f
	dec  c                                           ; $5c61: $0d
	inc  b                                           ; $5c62: $04
	pop  hl                                          ; $5c63: $e1
	inc  b                                           ; $5c64: $04
	rst  $38                                         ; $5c65: $ff
	ld   a, c                                        ; $5c66: $79
	ld   l, l                                        ; $5c67: $6d
	ld   a, h                                        ; $5c68: $7c
	and  c                                           ; $5c69: $a1
	ld   [hl], l                                     ; $5c6a: $75
	xor  h                                           ; $5c6b: $ac
	xor  a                                           ; $5c6c: $af
	ld   [bc], a                                     ; $5c6d: $02
	ld   hl, $a163                                   ; $5c6e: $21 $63 $a1
	and  b                                           ; $5c71: $a0
	dec  c                                           ; $5c72: $0d
	ld   [bc], a                                     ; $5c73: $02
	ld   a, b                                        ; $5c74: $78
	and  c                                           ; $5c75: $a1
	ld   [hl], l                                     ; $5c76: $75
	sub  b                                           ; $5c77: $90
	sub  a                                           ; $5c78: $97
	ld   d, h                                        ; $5c79: $54
	ld   e, c                                        ; $5c7a: $59
	sub  a                                           ; $5c7b: $97
	sbc  a                                           ; $5c7c: $9f
	dec  c                                           ; $5c7d: $0d
	nop                                              ; $5c7e: $00
	ld   a, [bc]                                     ; $5c7f: $0a
	dec  c                                           ; $5c80: $0d
	nop                                              ; $5c81: $00
	nop                                              ; $5c82: $00
	rrca                                             ; $5c83: $0f
	nop                                              ; $5c84: $00
	ld   bc, $4005                                   ; $5c85: $01 $05 $40
	ld   d, b                                        ; $5c88: $50
	ld   bc, $0000                                   ; $5c89: $01 $00 $00
	ld   bc, $9750                                   ; $5c8c: $01 $50 $97
	sub  a                                           ; $5c8f: $97
	rst  $38                                         ; $5c90: $ff
	rst  $38                                         ; $5c91: $ff
	dec  c                                           ; $5c92: $0d
	rst  JumpTable                                         ; $5c93: $df
	db   $ec                                         ; $5c94: $ec
	and  e                                           ; $5c95: $a3
	ld   h, e                                        ; $5c96: $63
	and  c                                           ; $5c97: $a1
	sbc  [hl]                                        ; $5c98: $9e
	ld   [bc], a                                     ; $5c99: $02
	ld   a, a                                        ; $5c9a: $7f
	ld   [hl], c                                     ; $5c9b: $71
	ld   l, a                                        ; $5c9c: $6f
	sub  c                                           ; $5c9d: $91
	ld   [hl], c                                     ; $5c9e: $71
	ld   l, l                                        ; $5c9f: $6d
	rst  $38                                         ; $5ca0: $ff
	rst  $38                                         ; $5ca1: $ff
	dec  c                                           ; $5ca2: $0d
	nop                                              ; $5ca3: $00
	ld   a, [bc]                                     ; $5ca4: $0a
	nop                                              ; $5ca5: $00
	rrca                                             ; $5ca6: $0f
	nop                                              ; $5ca7: $00
	ld   bc, $a901                                   ; $5ca8: $01 $01 $a9
	and  l                                           ; $5cab: $a5
	call nz, $0dfa                                   ; $5cac: $c4 $fa $0d
	nop                                              ; $5caf: $00
	ld   a, [bc]                                     ; $5cb0: $0a
	ld   bc, $9a50                                   ; $5cb1: $01 $50 $9a
	ld   sp, hl                                      ; $5cb4: $f9
	db   $10                                         ; $5cb5: $10
	and  c                                           ; $5cb6: $a1
	ld   sp, hl                                      ; $5cb7: $f9
	dec  c                                           ; $5cb8: $0d
	ld   d, b                                        ; $5cb9: $50
	ld   e, c                                        ; $5cba: $59
	ld   a, b                                        ; $5cbb: $78
	ld   d, d                                        ; $5cbc: $52
	ld   l, h                                        ; $5cbd: $6c
	ld   sp, hl                                      ; $5cbe: $f9
	dec  c                                           ; $5cbf: $0d
	nop                                              ; $5cc0: $00
	ld   a, [bc]                                     ; $5cc1: $0a
	add  hl, de                                      ; $5cc2: $19
	dec  b                                           ; $5cc3: $05
	inc  bc                                          ; $5cc4: $03
	dec  b                                           ; $5cc5: $05
	ld   a, [bc]                                     ; $5cc6: $0a
	ld   l, b                                        ; $5cc7: $68
	ld   e, l                                        ; $5cc8: $5d
	ld   [hl], l                                     ; $5cc9: $75
	ld   [bc], a                                     ; $5cca: $02
	inc  l                                           ; $5ccb: $2c
	ld   d, d                                        ; $5ccc: $52
	ld   [hl], h                                     ; $5ccd: $74
	adc  l                                           ; $5cce: $8d
	sbc  c                                           ; $5ccf: $99
	nop                                              ; $5cd0: $00
	nop                                              ; $5cd1: $00
	ld   [bc], a                                     ; $5cd2: $02
	rla                                              ; $5cd3: $17
	ld   h, l                                        ; $5cd4: $65
	ld   [hl], h                                     ; $5cd5: $74
	adc  l                                           ; $5cd6: $8d
	sbc  c                                           ; $5cd7: $99
	nop                                              ; $5cd8: $00
	ld   bc, $995f                                   ; $5cd9: $01 $5f $99
	nop                                              ; $5cdc: $00
	ld   [bc], a                                     ; $5cdd: $02
	rlca                                             ; $5cde: $07
	ld   a, [bc]                                     ; $5cdf: $0a
	dec  b                                           ; $5ce0: $05
	ld   [bc], a                                     ; $5ce1: $02
	inc  bc                                          ; $5ce2: $03
	ld   bc, $2000                                   ; $5ce3: $01 $00 $20
	nop                                              ; $5ce6: $00
	rlca                                             ; $5ce7: $07
	add  c                                           ; $5ce8: $81
	ld   b, $02                                      ; $5ce9: $06 $02
	inc  bc                                          ; $5ceb: $03
	ld   bc, $2001                                   ; $5cec: $01 $01 $20
	nop                                              ; $5cef: $00
	rlca                                             ; $5cf0: $07
	xor  l                                           ; $5cf1: $ad
	dec  b                                           ; $5cf2: $05
	ld   [bc], a                                     ; $5cf3: $02
	inc  bc                                          ; $5cf4: $03
	ld   bc, $2002                                   ; $5cf5: $01 $02 $20
	nop                                              ; $5cf8: $00
	ld   b, $40                                      ; $5cf9: $06 $40
	ld   b, $0f                                      ; $5cfb: $06 $0f
	nop                                              ; $5cfd: $00
	ld   bc, $7501                                   ; $5cfe: $01 $01 $75
	sbc  b                                           ; $5d01: $98
	sub  c                                           ; $5d02: $91
	ld   d, b                                        ; $5d03: $50
	ei                                               ; $5d04: $fb
	ld   [hl], c                                     ; $5d05: $71
	ld   a, [$000d]                                  ; $5d06: $fa $0d $00
	ld   a, [bc]                                     ; $5d09: $0a
	dec  c                                           ; $5d0a: $0d
	nop                                              ; $5d0b: $00
	nop                                              ; $5d0c: $00
	rrca                                             ; $5d0d: $0f
	nop                                              ; $5d0e: $00
	ld   bc, $030c                                   ; $5d0f: $01 $0c $03
	ld   c, $67                                      ; $5d12: $0e $67
	ld   bc, $9e50                                   ; $5d14: $01 $50 $9e
	ld   d, b                                        ; $5d17: $50
	ld   d, d                                        ; $5d18: $52
	ld   l, l                                        ; $5d19: $6d
	ld   a, [$000d]                                  ; $5d1a: $fa $0d $00
	ld   a, [bc]                                     ; $5d1d: $0a
	inc  e                                           ; $5d1e: $1c
	inc  bc                                          ; $5d1f: $03
	ld   [bc], a                                     ; $5d20: $02
	ld   [bc], a                                     ; $5d21: $02
	dec  e                                           ; $5d22: $1d
	ld   b, b                                        ; $5d23: $40
	inc  de                                          ; $5d24: $13
	inc  bc                                          ; $5d25: $03
	inc  de                                          ; $5d26: $13
	ld   bc, $2903                                   ; $5d27: $01 $03 $29
	nop                                              ; $5d2a: $00
	ld   bc, $5250                                   ; $5d2b: $01 $50 $52
	ld   l, l                                        ; $5d2e: $6d
	ld   h, [hl]                                     ; $5d2f: $66
	sub  c                                           ; $5d30: $91
	ld   a, b                                        ; $5d31: $78
	ld   d, d                                        ; $5d32: $52
	ld   [hl], l                                     ; $5d33: $75
	ld   h, l                                        ; $5d34: $65
	sub  l                                           ; $5d35: $95
	sbc  a                                           ; $5d36: $9f
	dec  c                                           ; $5d37: $0d
	inc  b                                           ; $5d38: $04
	sub  $05                                         ; $5d39: $d6 $05
	ld   de, $2a06                                   ; $5d3b: $11 $06 $2a
	dec  b                                           ; $5d3e: $05
	ld   de, $2c02                                   ; $5d3f: $11 $02 $2c
	ld   [hl], c                                     ; $5d42: $71
	ld   a, a                                        ; $5d43: $7f
	sbc  c                                           ; $5d44: $99
	ld   e, c                                        ; $5d45: $59
	sub  a                                           ; $5d46: $97
	dec  c                                           ; $5d47: $0d
	ret                                              ; $5d48: $c9


	call nc, $5aeb                                   ; $5d49: $d4 $eb $5a
	ld   h, c                                        ; $5d4c: $61
	sbc  l                                           ; $5d4d: $9d
	sbc  d                                           ; $5d4e: $9a
	ld   l, l                                        ; $5d4f: $6d
	ld   h, [hl]                                     ; $5d50: $66
	sub  c                                           ; $5d51: $91
	ld   a, b                                        ; $5d52: $78
	ld   d, d                                        ; $5d53: $52
	ld   a, [$000d]                                  ; $5d54: $fa $0d $00
	ld   a, [bc]                                     ; $5d57: $0a
	rrca                                             ; $5d58: $0f
	nop                                              ; $5d59: $00
	ld   bc, $6701                                   ; $5d5a: $01 $01 $67
	sbc  [hl]                                        ; $5d5d: $9e
	ld   h, a                                        ; $5d5e: $67
	adc  l                                           ; $5d5f: $8d
	adc  h                                           ; $5d60: $8c
	ld   l, c                                        ; $5d61: $69
	and  c                                           ; $5d62: $a1
	sbc  a                                           ; $5d63: $9f
	dec  c                                           ; $5d64: $0d
	nop                                              ; $5d65: $00
	ld   a, [bc]                                     ; $5d66: $0a
	inc  e                                           ; $5d67: $1c
	inc  bc                                          ; $5d68: $03
	inc  b                                           ; $5d69: $04
	inc  b                                           ; $5d6a: $04
	ld   bc, $9565                                   ; $5d6b: $01 $65 $95
	ld   d, h                                        ; $5d6e: $54
	ld   e, d                                        ; $5d6f: $5a
	ld   a, b                                        ; $5d70: $78
	ld   d, d                                        ; $5d71: $52
	sbc  l                                           ; $5d72: $9d
	ld   a, e                                        ; $5d73: $7b
	sbc  a                                           ; $5d74: $9f
	dec  c                                           ; $5d75: $0d
	inc  b                                           ; $5d76: $04
	pop  hl                                          ; $5d77: $e1
	inc  b                                           ; $5d78: $04
	rst  $38                                         ; $5d79: $ff
	ld   a, c                                        ; $5d7a: $79
	ld   l, l                                        ; $5d7b: $6d
	ld   a, h                                        ; $5d7c: $7c
	and  c                                           ; $5d7d: $a1
	ld   [hl], l                                     ; $5d7e: $75
	sbc  [hl]                                        ; $5d7f: $9e
	ld   h, l                                        ; $5d80: $65
	sub  e                                           ; $5d81: $93
	ld   d, h                                        ; $5d82: $54
	sbc  b                                           ; $5d83: $98
	ld   [bc], a                                     ; $5d84: $02
	ld   hl, $630d                                   ; $5d85: $21 $0d $63
	and  c                                           ; $5d88: $a1
	and  b                                           ; $5d89: $a0
	ld   [bc], a                                     ; $5d8a: $02
	ld   a, b                                        ; $5d8b: $78
	and  c                                           ; $5d8c: $a1
	ld   [hl], l                                     ; $5d8d: $75
	sub  b                                           ; $5d8e: $90
	sub  a                                           ; $5d8f: $97
	ld   d, h                                        ; $5d90: $54
	sbc  l                                           ; $5d91: $9d
	sbc  a                                           ; $5d92: $9f
	dec  c                                           ; $5d93: $0d
	nop                                              ; $5d94: $00
	ld   a, [bc]                                     ; $5d95: $0a
	dec  c                                           ; $5d96: $0d
	nop                                              ; $5d97: $00
	nop                                              ; $5d98: $00
	rrca                                             ; $5d99: $0f
	nop                                              ; $5d9a: $00
	ld   bc, $1e09                                   ; $5d9b: $01 $09 $1e
	nop                                              ; $5d9e: $00
	rrca                                             ; $5d9f: $0f
	nop                                              ; $5da0: $00
	ld   bc, $0801                                   ; $5da1: $01 $01 $08
	nop                                              ; $5da4: $00
	xor  [hl]                                        ; $5da5: $ae
	ei                                               ; $5da6: $fb
	call nz, $fab0                                   ; $5da7: $c4 $b0 $fa
	dec  c                                           ; $5daa: $0d
	nop                                              ; $5dab: $00
	ld   a, [bc]                                     ; $5dac: $0a
	inc  c                                           ; $5dad: $0c
	inc  bc                                          ; $5dae: $03
	ld   c, $67                                      ; $5daf: $0e $67
	ld   bc, $9e50                                   ; $5db1: $01 $50 $9e
	ld   d, b                                        ; $5db4: $50
	ld   d, d                                        ; $5db5: $52
	ld   l, l                                        ; $5db6: $6d
	ld   a, [$000d]                                  ; $5db7: $fa $0d $00
	ld   a, [bc]                                     ; $5dba: $0a
	inc  e                                           ; $5dbb: $1c
	inc  bc                                          ; $5dbc: $03
	ld   [bc], a                                     ; $5dbd: $02
	ld   [bc], a                                     ; $5dbe: $02
	dec  e                                           ; $5dbf: $1d
	ld   b, b                                        ; $5dc0: $40
	inc  de                                          ; $5dc1: $13
	inc  bc                                          ; $5dc2: $03
	inc  de                                          ; $5dc3: $13
	ld   bc, $2903                                   ; $5dc4: $01 $03 $29
	nop                                              ; $5dc7: $00
	ld   bc, $5250                                   ; $5dc8: $01 $50 $52
	ld   l, l                                        ; $5dcb: $6d
	ld   h, [hl]                                     ; $5dcc: $66
	sub  c                                           ; $5dcd: $91
	ld   a, b                                        ; $5dce: $78
	ld   d, d                                        ; $5dcf: $52
	ld   [hl], l                                     ; $5dd0: $75
	ld   h, l                                        ; $5dd1: $65
	sub  l                                           ; $5dd2: $95
	sbc  a                                           ; $5dd3: $9f
	dec  c                                           ; $5dd4: $0d
	ld   e, a                                        ; $5dd5: $5f
	sbc  c                                           ; $5dd6: $99
	ld   e, c                                        ; $5dd7: $59
	sub  a                                           ; $5dd8: $97
	sbc  [hl]                                        ; $5dd9: $9e
	ret                                              ; $5dda: $c9


	call nc, $5aeb                                   ; $5ddb: $d4 $eb $5a
	dec  c                                           ; $5dde: $0d
	add  [hl]                                        ; $5ddf: $86
	ld   h, c                                        ; $5de0: $61
	and  c                                           ; $5de1: $a1
	ld   l, [hl]                                     ; $5de2: $6e
	ld   h, [hl]                                     ; $5de3: $66
	sub  c                                           ; $5de4: $91
	ld   a, b                                        ; $5de5: $78
	ld   d, d                                        ; $5de6: $52
	ld   a, [$000d]                                  ; $5de7: $fa $0d $00
	ld   a, [bc]                                     ; $5dea: $0a
	rrca                                             ; $5deb: $0f
	nop                                              ; $5dec: $00
	ld   bc, $6701                                   ; $5ded: $01 $01 $67
	sbc  [hl]                                        ; $5df0: $9e
	ld   h, a                                        ; $5df1: $67
	adc  l                                           ; $5df2: $8d
	adc  h                                           ; $5df3: $8c
	ld   l, c                                        ; $5df4: $69
	and  c                                           ; $5df5: $a1
	sbc  a                                           ; $5df6: $9f
	dec  c                                           ; $5df7: $0d
	nop                                              ; $5df8: $00
	ld   a, [bc]                                     ; $5df9: $0a
	inc  e                                           ; $5dfa: $1c
	inc  bc                                          ; $5dfb: $03
	inc  b                                           ; $5dfc: $04
	inc  b                                           ; $5dfd: $04
	ld   bc, $9565                                   ; $5dfe: $01 $65 $95
	ld   d, h                                        ; $5e01: $54
	ld   e, d                                        ; $5e02: $5a
	ld   a, b                                        ; $5e03: $78
	ld   d, d                                        ; $5e04: $52
	sbc  l                                           ; $5e05: $9d
	ld   a, e                                        ; $5e06: $7b
	sbc  a                                           ; $5e07: $9f
	dec  c                                           ; $5e08: $0d
	inc  b                                           ; $5e09: $04
	pop  hl                                          ; $5e0a: $e1
	inc  b                                           ; $5e0b: $04
	rst  $38                                         ; $5e0c: $ff
	ld   a, c                                        ; $5e0d: $79
	ld   l, l                                        ; $5e0e: $6d
	ld   a, h                                        ; $5e0f: $7c
	and  c                                           ; $5e10: $a1
	ld   [hl], l                                     ; $5e11: $75
	sbc  [hl]                                        ; $5e12: $9e
	ld   h, l                                        ; $5e13: $65
	sub  e                                           ; $5e14: $93
	ld   d, h                                        ; $5e15: $54
	sbc  b                                           ; $5e16: $98
	ld   [bc], a                                     ; $5e17: $02
	ld   hl, $630d                                   ; $5e18: $21 $0d $63
	and  c                                           ; $5e1b: $a1
	and  b                                           ; $5e1c: $a0
	ld   [bc], a                                     ; $5e1d: $02
	ld   a, b                                        ; $5e1e: $78
	and  c                                           ; $5e1f: $a1
	ld   [hl], l                                     ; $5e20: $75
	sub  b                                           ; $5e21: $90
	sub  a                                           ; $5e22: $97
	ld   d, h                                        ; $5e23: $54
	sbc  l                                           ; $5e24: $9d
	sbc  a                                           ; $5e25: $9f
	dec  c                                           ; $5e26: $0d
	nop                                              ; $5e27: $00
	ld   a, [bc]                                     ; $5e28: $0a
	dec  c                                           ; $5e29: $0d
	nop                                              ; $5e2a: $00
	nop                                              ; $5e2b: $00
	rrca                                             ; $5e2c: $0f
	nop                                              ; $5e2d: $00
	ld   bc, $1e09                                   ; $5e2e: $01 $09 $1e
	nop                                              ; $5e31: $00
	inc  e                                           ; $5e32: $1c
	inc  bc                                          ; $5e33: $03
	inc  b                                           ; $5e34: $04
	inc  b                                           ; $5e35: $04
	dec  e                                           ; $5e36: $1d
	ld   b, b                                        ; $5e37: $40
	inc  de                                          ; $5e38: $13
	inc  bc                                          ; $5e39: $03
	inc  de                                          ; $5e3a: $13
	ld   bc, $2902                                   ; $5e3b: $01 $02 $29
	nop                                              ; $5e3e: $00
	ld   bc, $9992                                   ; $5e3f: $01 $92 $99
	ld   [bc], a                                     ; $5e42: $02
	and  c                                           ; $5e43: $a1
	ld   e, d                                        ; $5e44: $5a
	ld   a, b                                        ; $5e45: $78
	ld   d, d                                        ; $5e46: $52
	ld   a, b                                        ; $5e47: $78
	sub  a                                           ; $5e48: $97
	sub  b                                           ; $5e49: $90
	ld   d, h                                        ; $5e4a: $54
	ld   d, d                                        ; $5e4b: $52
	ld   d, d                                        ; $5e4c: $52
	sbc  l                                           ; $5e4d: $9d
	sbc  a                                           ; $5e4e: $9f
	dec  c                                           ; $5e4f: $0d
	inc  b                                           ; $5e50: $04
	pop  hl                                          ; $5e51: $e1
	inc  b                                           ; $5e52: $04
	rst  $38                                         ; $5e53: $ff
	ld   a, c                                        ; $5e54: $79
	ld   l, l                                        ; $5e55: $6d
	ld   a, h                                        ; $5e56: $7c
	and  c                                           ; $5e57: $a1
	ld   [hl], l                                     ; $5e58: $75
	xor  h                                           ; $5e59: $ac
	xor  a                                           ; $5e5a: $af
	ld   [bc], a                                     ; $5e5b: $02
	ld   hl, $a163                                   ; $5e5c: $21 $63 $a1
	and  b                                           ; $5e5f: $a0
	dec  c                                           ; $5e60: $0d
	ld   [bc], a                                     ; $5e61: $02
	ld   a, b                                        ; $5e62: $78
	add  h                                           ; $5e63: $84
	ld   e, c                                        ; $5e64: $59
	sub  a                                           ; $5e65: $97
	sbc  a                                           ; $5e66: $9f
	dec  c                                           ; $5e67: $0d
	nop                                              ; $5e68: $00
	ld   a, [bc]                                     ; $5e69: $0a
	dec  c                                           ; $5e6a: $0d
	nop                                              ; $5e6b: $00
	nop                                              ; $5e6c: $00
	rrca                                             ; $5e6d: $0f
	nop                                              ; $5e6e: $00
	ld   bc, $1e09                                   ; $5e6f: $01 $09 $1e
	nop                                              ; $5e72: $00
	rrca                                             ; $5e73: $0f
	nop                                              ; $5e74: $00
	ld   bc, $670e                                   ; $5e75: $01 $0e $67
	ld   bc, $7158                                   ; $5e78: $01 $58 $71
	ld   a, [$5010]                                  ; $5e7b: $fa $10 $50
	ld   d, d                                        ; $5e7e: $52
	ld   l, l                                        ; $5e7f: $6d
	ld   a, [$000d]                                  ; $5e80: $fa $0d $00
	ld   a, [bc]                                     ; $5e83: $0a
	inc  e                                           ; $5e84: $1c
	inc  bc                                          ; $5e85: $03
	rlca                                             ; $5e86: $07
	rlca                                             ; $5e87: $07
	ld   bc, $9750                                   ; $5e88: $01 $50 $97
	sbc  [hl]                                        ; $5e8b: $9e
	ld   [bc], a                                     ; $5e8c: $02
	inc  l                                           ; $5e8d: $2c
	ld   e, c                                        ; $5e8e: $59
	ld   a, b                                        ; $5e8f: $78
	ld   e, e                                        ; $5e90: $5b
	sub  c                                           ; $5e91: $91
	ld   [bc], a                                     ; $5e92: $02
	adc  b                                           ; $5e93: $88
	ld   e, c                                        ; $5e94: $59
	ld   a, b                                        ; $5e95: $78
	ld   d, d                                        ; $5e96: $52
	dec  c                                           ; $5e97: $0d
	ret                                              ; $5e98: $c9


	call nc, Call_059_78eb                           ; $5e99: $d4 $eb $78
	ld   a, h                                        ; $5e9c: $7c
	ld   a, c                                        ; $5e9d: $79
	rst  $38                                         ; $5e9e: $ff
	rst  $38                                         ; $5e9f: $ff
	dec  c                                           ; $5ea0: $0d
	nop                                              ; $5ea1: $00
	ld   a, [bc]                                     ; $5ea2: $0a
	inc  e                                           ; $5ea3: $1c
	inc  bc                                          ; $5ea4: $03
	nop                                              ; $5ea5: $00
	nop                                              ; $5ea6: $00
	ld   bc, $5050                                   ; $5ea7: $01 $50 $50
	sbc  [hl]                                        ; $5eaa: $9e
	inc  bc                                          ; $5eab: $03
	inc  [hl]                                        ; $5eac: $34
	ld   a, h                                        ; $5ead: $7c
	call c, $baed                                    ; $5eae: $dc $ed $ba
	ret  nz                                          ; $5eb1: $c0

	ei                                               ; $5eb2: $fb
	ld   e, d                                        ; $5eb3: $5a
	dec  c                                           ; $5eb4: $0d
	ld   [bc], a                                     ; $5eb5: $02
	inc  l                                           ; $5eb6: $2c
	ld   [hl], c                                     ; $5eb7: $71
	ld   e, c                                        ; $5eb8: $59
	ld   e, c                                        ; $5eb9: $59
	ld   [hl], c                                     ; $5eba: $71
	ld   [hl], h                                     ; $5ebb: $74
	ld   l, l                                        ; $5ebc: $6d
	ld   a, h                                        ; $5ebd: $7c
	ld   a, e                                        ; $5ebe: $7b
	sbc  a                                           ; $5ebf: $9f
	dec  c                                           ; $5ec0: $0d
	nop                                              ; $5ec1: $00
	ld   a, [bc]                                     ; $5ec2: $0a
	inc  e                                           ; $5ec3: $1c
	inc  bc                                          ; $5ec4: $03
	inc  bc                                          ; $5ec5: $03
	inc  bc                                          ; $5ec6: $03
	dec  e                                           ; $5ec7: $1d
	ld   b, b                                        ; $5ec8: $40
	inc  de                                          ; $5ec9: $13
	inc  bc                                          ; $5eca: $03
	inc  de                                          ; $5ecb: $13
	ld   bc, $2803                                   ; $5ecc: $01 $03 $28
	nop                                              ; $5ecf: $00
	ld   bc, $9850                                   ; $5ed0: $01 $50 $98
	ld   e, d                                        ; $5ed3: $5a
	halt                                             ; $5ed4: $76
	ld   d, h                                        ; $5ed5: $54
	sbc  [hl]                                        ; $5ed6: $9e
	ld   [$5d00], sp                                 ; $5ed7: $08 $00 $5d
	and  c                                           ; $5eda: $a1
	sbc  a                                           ; $5edb: $9f
	dec  c                                           ; $5edc: $0d
	inc  bc                                          ; $5edd: $03
	ld   e, e                                        ; $5ede: $5b
	ld   e, c                                        ; $5edf: $59
	ld   [hl], c                                     ; $5ee0: $71
	ld   l, l                                        ; $5ee1: $6d
	sbc  l                                           ; $5ee2: $9d
	sbc  a                                           ; $5ee3: $9f
	dec  c                                           ; $5ee4: $0d
	nop                                              ; $5ee5: $00
	ld   a, [bc]                                     ; $5ee6: $0a
	dec  c                                           ; $5ee7: $0d
	nop                                              ; $5ee8: $00
	nop                                              ; $5ee9: $00
	rrca                                             ; $5eea: $0f
	nop                                              ; $5eeb: $00
	ld   bc, $1e09                                   ; $5eec: $01 $09 $1e
	nop                                              ; $5eef: $00
	nop                                              ; $5ef0: $00
	inc  b                                           ; $5ef1: $04
	add  b                                           ; $5ef2: $80
	ld   [$ff01], sp                                 ; $5ef3: $08 $01 $ff
	jr   nz, jr_059_5efb                             ; $5ef6: $20 $03

	ld   e, b                                        ; $5ef8: $58
	ld   [bc], a                                     ; $5ef9: $02
	nop                                              ; $5efa: $00

jr_059_5efb:
	jr   nz, jr_059_5f19                             ; $5efb: $20 $1c

	nop                                              ; $5efd: $00
	ld   c, $1e                                      ; $5efe: $0e $1e
	inc  e                                           ; $5f00: $1c
	ld   bc, $0101                                   ; $5f01: $01 $01 $01
	ld   [bc], a                                     ; $5f04: $02
	dec  b                                           ; $5f05: $05
	add  b                                           ; $5f06: $80
	add  hl, bc                                      ; $5f07: $09
	ld   bc, $0001                                   ; $5f08: $01 $01 $00
	ld   bc, $9e50                                   ; $5f0b: $01 $50 $9e
	ld   [$6300], sp                                 ; $5f0e: $08 $00 $63
	and  c                                           ; $5f11: $a1
	sbc  [hl]                                        ; $5f12: $9e
	dec  c                                           ; $5f13: $0d
	ld   e, b                                        ; $5f14: $58
	inc  b                                           ; $5f15: $04
	rla                                              ; $5f16: $17
	ld   l, a                                        ; $5f17: $6f
	ld   h, l                                        ; $5f18: $65

jr_059_5f19:
	ld   [hl], h                                     ; $5f19: $74
	adc  h                                           ; $5f1a: $8c
	ld   h, l                                        ; $5f1b: $65
	ld   l, l                                        ; $5f1c: $6d
	sbc  a                                           ; $5f1d: $9f
	dec  c                                           ; $5f1e: $0d
	nop                                              ; $5f1f: $00
	ld   a, [bc]                                     ; $5f20: $0a
	inc  e                                           ; $5f21: $1c
	ld   bc, $0000                                   ; $5f22: $01 $00 $00
	ld   bc, $9166                                   ; $5f25: $01 $66 $91
	dec  b                                           ; $5f28: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f29: $cf
	adc  a                                           ; $5f2a: $8f
	adc  h                                           ; $5f2b: $8c
	ld   h, l                                        ; $5f2c: $65
	sub  l                                           ; $5f2d: $95
	ld   d, h                                        ; $5f2e: $54
	ld   e, c                                        ; $5f2f: $59
	sbc  a                                           ; $5f30: $9f
	dec  c                                           ; $5f31: $0d
	nop                                              ; $5f32: $00
	ld   a, [bc]                                     ; $5f33: $0a
	inc  e                                           ; $5f34: $1c
	ld   bc, $0000                                   ; $5f35: $01 $00 $00
	ld   bc, $9166                                   ; $5f38: $01 $66 $91
	sbc  [hl]                                        ; $5f3b: $9e
	adc  h                                           ; $5f3c: $8c
	ld   l, b                                        ; $5f3d: $68
	ld   a, l                                        ; $5f3e: $7d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f3f: $cf
	or   h                                           ; $5f40: $b4
	xor  a                                           ; $5f41: $af
	db   $ec                                         ; $5f42: $ec
	ld   [hl], l                                     ; $5f43: $75
	rst  $38                                         ; $5f44: $ff
	rst  $38                                         ; $5f45: $ff
	dec  c                                           ; $5f46: $0d
	nop                                              ; $5f47: $00
	ld   a, [bc]                                     ; $5f48: $0a
	add  hl, de                                      ; $5f49: $19
	dec  b                                           ; $5f4a: $05
	inc  bc                                          ; $5f4b: $03
	inc  b                                           ; $5f4c: $04
	ld   [hl], h                                     ; $5f4d: $74
	and  b                                           ; $5f4e: $a0
	ld   [bc], a                                     ; $5f4f: $02
	halt                                             ; $5f50: $76
	sbc  c                                           ; $5f51: $99
	nop                                              ; $5f52: $00
	nop                                              ; $5f53: $00
	inc  b                                           ; $5f54: $04
	ld   [hl], h                                     ; $5f55: $74
	and  b                                           ; $5f56: $a0
	inc  bc                                          ; $5f57: $03
	ld   c, $5d                                      ; $5f58: $0e $5d
	nop                                              ; $5f5a: $00
	ld   bc, $7404                                   ; $5f5b: $01 $04 $74
	and  b                                           ; $5f5e: $a0
	inc  bc                                          ; $5f5f: $03
	dec  de                                          ; $5f60: $1b
	sbc  c                                           ; $5f61: $99
	nop                                              ; $5f62: $00
	ld   [bc], a                                     ; $5f63: $02
	rlca                                             ; $5f64: $07
	add  h                                           ; $5f65: $84
	nop                                              ; $5f66: $00
	ld   [bc], a                                     ; $5f67: $02
	inc  bc                                          ; $5f68: $03
	ld   bc, $2000                                   ; $5f69: $01 $00 $20
	nop                                              ; $5f6c: $00
	rlca                                             ; $5f6d: $07
	cp   e                                           ; $5f6e: $bb
	nop                                              ; $5f6f: $00
	ld   [bc], a                                     ; $5f70: $02
	inc  bc                                          ; $5f71: $03
	ld   bc, $2001                                   ; $5f72: $01 $01 $20
	nop                                              ; $5f75: $00
	rlca                                             ; $5f76: $07
	db   $fc                                         ; $5f77: $fc
	nop                                              ; $5f78: $00
	ld   [bc], a                                     ; $5f79: $02
	inc  bc                                          ; $5f7a: $03
	ld   bc, $2002                                   ; $5f7b: $01 $02 $20
	nop                                              ; $5f7e: $00
	ld   b, $45                                      ; $5f7f: $06 $45
	ld   bc, $000f                                   ; $5f81: $01 $0f $00
	ld   bc, $cf01                                   ; $5f84: $01 $01 $cf
	or   h                                           ; $5f87: $b4
	xor  a                                           ; $5f88: $af
	db   $ec                                         ; $5f89: $ec
	ld   [hl], l                                     ; $5f8a: $75
	inc  b                                           ; $5f8b: $04
	ld   [hl], h                                     ; $5f8c: $74
	and  b                                           ; $5f8d: $a0
	rst  $38                                         ; $5f8e: $ff
	rst  $38                                         ; $5f8f: $ff
	dec  c                                           ; $5f90: $0d
	ld   [bc], a                                     ; $5f91: $02
	halt                                             ; $5f92: $76
	ld   [hl], c                                     ; $5f93: $71
	ld   [hl], h                                     ; $5f94: $74
	adc  l                                           ; $5f95: $8d
	sub  [hl]                                        ; $5f96: $96
	ld   d, h                                        ; $5f97: $54
	ld   e, c                                        ; $5f98: $59
	ld   a, b                                        ; $5f99: $78
	ld   sp, hl                                      ; $5f9a: $f9
	dec  c                                           ; $5f9b: $0d
	nop                                              ; $5f9c: $00
	ld   a, [bc]                                     ; $5f9d: $0a
	inc  e                                           ; $5f9e: $1c
	ld   bc, $0202                                   ; $5f9f: $01 $02 $02
	ld   bc, $7404                                   ; $5fa2: $01 $04 $74
	and  b                                           ; $5fa5: $a0
	ld   [bc], a                                     ; $5fa6: $02
	halt                                             ; $5fa7: $76
	ld   [hl], c                                     ; $5fa8: $71
	ld   [hl], h                                     ; $5fa9: $74
	ld   [hl], a                                     ; $5faa: $77
	ld   d, h                                        ; $5fab: $54
	ld   h, a                                        ; $5fac: $67
	sbc  c                                           ; $5fad: $99
	and  c                                           ; $5fae: $a1
	ld   [hl], l                                     ; $5faf: $75
	ld   h, a                                        ; $5fb0: $67
	ld   e, c                                        ; $5fb1: $59
	ld   a, [$000d]                                  ; $5fb2: $fa $0d $00
	ld   a, [bc]                                     ; $5fb5: $0a
	ld   b, $5d                                      ; $5fb6: $06 $5d
	ld   bc, $000f                                   ; $5fb8: $01 $0f $00
	ld   bc, $cf01                                   ; $5fbb: $01 $01 $cf
	or   h                                           ; $5fbe: $b4
	xor  a                                           ; $5fbf: $af
	db   $ec                                         ; $5fc0: $ec
	ld   a, l                                        ; $5fc1: $7d
	ld   e, b                                        ; $5fc2: $58
	ld   d, d                                        ; $5fc3: $52
	halt                                             ; $5fc4: $76
	ld   d, d                                        ; $5fc5: $52
	ld   [hl], h                                     ; $5fc6: $74
	sbc  [hl]                                        ; $5fc7: $9e
	dec  c                                           ; $5fc8: $0d
	halt                                             ; $5fc9: $76
	sbc  b                                           ; $5fca: $98
	ld   d, b                                        ; $5fcb: $50
	ld   d, [hl]                                     ; $5fcc: $56
	ld   l, b                                        ; $5fcd: $68
	sbc  [hl]                                        ; $5fce: $9e
	ld   h, c                                        ; $5fcf: $61
	ld   a, h                                        ; $5fd0: $7c
	inc  b                                           ; $5fd1: $04
	ld   [hl], h                                     ; $5fd2: $74
	and  b                                           ; $5fd3: $a0
	inc  bc                                          ; $5fd4: $03
	ld   c, $52                                      ; $5fd5: $0e $52
	ld   [hl], h                                     ; $5fd7: $74
	dec  c                                           ; $5fd8: $0d
	adc  l                                           ; $5fd9: $8d
	sbc  c                                           ; $5fda: $99
	ld   e, c                                        ; $5fdb: $59
	ld   a, b                                        ; $5fdc: $78
	ld   sp, hl                                      ; $5fdd: $f9
	dec  c                                           ; $5fde: $0d
	nop                                              ; $5fdf: $00
	ld   a, [bc]                                     ; $5fe0: $0a
	inc  e                                           ; $5fe1: $1c
	ld   bc, $0303                                   ; $5fe2: $01 $03 $03
	ld   bc, $7404                                   ; $5fe5: $01 $04 $74
	and  b                                           ; $5fe8: $a0
	inc  bc                                          ; $5fe9: $03
	ld   c, $59                                      ; $5fea: $0e $59
	ld   a, b                                        ; $5fec: $78
	ld   d, d                                        ; $5fed: $52
	ld   [hl], l                                     ; $5fee: $75
	ld   [bc], a                                     ; $5fef: $02
	inc  [hl]                                        ; $5ff0: $34
	ld   h, e                                        ; $5ff1: $63
	ld   d, d                                        ; $5ff2: $52
	ld   a, [$000d]                                  ; $5ff3: $fa $0d $00
	ld   a, [bc]                                     ; $5ff6: $0a
	ld   b, $5d                                      ; $5ff7: $06 $5d
	ld   bc, $000f                                   ; $5ff9: $01 $0f $00
	ld   bc, $cf01                                   ; $5ffc: $01 $01 $cf
	or   h                                           ; $5fff: $b4
	xor  a                                           ; $6000: $af
	db   $ec                                         ; $6001: $ec
	ld   [hl], l                                     ; $6002: $75
	inc  b                                           ; $6003: $04
	ld   [hl], h                                     ; $6004: $74
	and  b                                           ; $6005: $a0
	inc  bc                                          ; $6006: $03
	dec  de                                          ; $6007: $1b
	sbc  c                                           ; $6008: $99
	sbc  a                                           ; $6009: $9f
	dec  c                                           ; $600a: $0d
	nop                                              ; $600b: $00
	ld   a, [bc]                                     ; $600c: $0a
	inc  e                                           ; $600d: $1c
	ld   bc, $0101                                   ; $600e: $01 $01 $01
	dec  b                                           ; $6011: $05
	ld   b, b                                        ; $6012: $40
	rst  $38                                         ; $6013: $ff
	inc  bc                                          ; $6014: $03
	rst  $38                                         ; $6015: $ff
	ld   bc, $2801                                   ; $6016: $01 $01 $28
	nop                                              ; $6019: $00
	ld   bc, $b5ba                                   ; $601a: $01 $ba $b5
	and  l                                           ; $601d: $a5
	ld   a, [$ae10]                                  ; $601e: $fa $10 $ae
	xor  $a5                                         ; $6021: $ee $a5
	ld   a, c                                        ; $6023: $79
	inc  bc                                          ; $6024: $03
	dec  de                                          ; $6025: $1b
	sbc  d                                           ; $6026: $9a
	ld   [hl], h                                     ; $6027: $74
	dec  c                                           ; $6028: $0d
	adc  h                                           ; $6029: $8c
	ld   h, a                                        ; $602a: $67
	sub  [hl]                                        ; $602b: $96
	sbc  a                                           ; $602c: $9f
	ld   [$6300], sp                                 ; $602d: $08 $00 $63
	and  c                                           ; $6030: $a1
	ld   [hl], h                                     ; $6031: $74
	dec  c                                           ; $6032: $0d
	ld   [bc], a                                     ; $6033: $02
	ld   d, a                                        ; $6034: $57
	inc  b                                           ; $6035: $04
	di                                               ; $6036: $f3
	ld   a, b                                        ; $6037: $78
	and  c                                           ; $6038: $a1
	ld   [hl], l                                     ; $6039: $75
	ld   h, a                                        ; $603a: $67
	ld   a, e                                        ; $603b: $7b
	sbc  a                                           ; $603c: $9f
	dec  c                                           ; $603d: $0d
	nop                                              ; $603e: $00
	ld   a, [bc]                                     ; $603f: $0a
	ld   b, $5d                                      ; $6040: $06 $5d
	ld   bc, $011c                                   ; $6042: $01 $1c $01
	rlca                                             ; $6045: $07
	rlca                                             ; $6046: $07
	ld   bc, $fbdd                                   ; $6047: $01 $dd $fb
	ld   [hl], c                                     ; $604a: $71
	halt                                             ; $604b: $76
	ld   h, l                                        ; $604c: $65
	ld   a, b                                        ; $604d: $78
	ld   d, d                                        ; $604e: $52
	ld   [hl], l                                     ; $604f: $75
	ld   [bc], a                                     ; $6050: $02
	inc  [hl]                                        ; $6051: $34
	ld   h, e                                        ; $6052: $63
	ld   d, d                                        ; $6053: $52
	ld   a, [$000d]                                  ; $6054: $fa $0d $00
	ld   a, [bc]                                     ; $6057: $0a
	ld   b, $5d                                      ; $6058: $06 $5d
	ld   bc, $011c                                   ; $605a: $01 $1c $01
	nop                                              ; $605d: $00
	nop                                              ; $605e: $00
	ld   bc, $9166                                   ; $605f: $01 $66 $91
	sbc  [hl]                                        ; $6062: $9e
	inc  bc                                          ; $6063: $03
	ld   l, b                                        ; $6064: $68
	ld   a, l                                        ; $6065: $7d
	xor  h                                           ; $6066: $ac
	set  0, [hl]                                     ; $6067: $cb $c6
	jp   nz, $ff75                                   ; $6069: $c2 $75 $ff

	rst  $38                                         ; $606c: $ff
	dec  c                                           ; $606d: $0d
	nop                                              ; $606e: $00
	ld   a, [bc]                                     ; $606f: $0a
	add  hl, de                                      ; $6070: $19
	dec  b                                           ; $6071: $05
	inc  bc                                          ; $6072: $03
	or   b                                           ; $6073: $b0
	xor  a                                           ; $6074: $af
	and  b                                           ; $6075: $a0
	dec  b                                           ; $6076: $05
	pop  af                                          ; $6077: $f1
	ld   [hl], d                                     ; $6078: $72
	nop                                              ; $6079: $00
	nop                                              ; $607a: $00
	or   b                                           ; $607b: $b0
	xor  a                                           ; $607c: $af
	and  b                                           ; $607d: $a0
	inc  b                                           ; $607e: $04
	sub  h                                           ; $607f: $94
	ld   e, l                                        ; $6080: $5d
	nop                                              ; $6081: $00
	ld   bc, sCurrDay                                   ; $6082: $01 $b0 $af
	and  b                                           ; $6085: $a0
	dec  b                                           ; $6086: $05
	db   $eb                                         ; $6087: $eb
	sbc  c                                           ; $6088: $99
	nop                                              ; $6089: $00
	ld   [bc], a                                     ; $608a: $02
	rlca                                             ; $608b: $07
	xor  e                                           ; $608c: $ab
	ld   bc, $0302                                   ; $608d: $01 $02 $03
	ld   bc, $2000                                   ; $6090: $01 $00 $20
	nop                                              ; $6093: $00
	rlca                                             ; $6094: $07
	or   $01                                         ; $6095: $f6 $01
	ld   [bc], a                                     ; $6097: $02
	inc  bc                                          ; $6098: $03
	ld   bc, $2001                                   ; $6099: $01 $01 $20
	nop                                              ; $609c: $00
	rlca                                             ; $609d: $07
	inc  l                                           ; $609e: $2c
	ld   [bc], a                                     ; $609f: $02
	ld   [bc], a                                     ; $60a0: $02
	inc  bc                                          ; $60a1: $03
	ld   bc, $2002                                   ; $60a2: $01 $02 $20
	nop                                              ; $60a5: $00
	ld   b, $5f                                      ; $60a6: $06 $5f
	ld   [bc], a                                     ; $60a8: $02
	rrca                                             ; $60a9: $0f
	nop                                              ; $60aa: $00
	ld   bc, $ac01                                   ; $60ab: $01 $01 $ac
	set  0, [hl]                                     ; $60ae: $cb $c6
	jp   nz, $b075                                   ; $60b0: $c2 $75 $b0

	xor  a                                           ; $60b3: $af
	and  b                                           ; $60b4: $a0
	dec  b                                           ; $60b5: $05
	pop  af                                          ; $60b6: $f1
	ld   [hl], d                                     ; $60b7: $72
	ld   l, h                                        ; $60b8: $6c
	sbc  a                                           ; $60b9: $9f
	dec  c                                           ; $60ba: $0d
	nop                                              ; $60bb: $00
	ld   a, [bc]                                     ; $60bc: $0a
	inc  e                                           ; $60bd: $1c
	ld   bc, $0101                                   ; $60be: $01 $01 $01
	dec  b                                           ; $60c1: $05
	ld   b, b                                        ; $60c2: $40
	rst  $38                                         ; $60c3: $ff
	inc  bc                                          ; $60c4: $03
	rst  $38                                         ; $60c5: $ff
	ld   bc, $2801                                   ; $60c6: $01 $01 $28
	nop                                              ; $60c9: $00
	ld   bc, $9750                                   ; $60ca: $01 $50 $97
	sbc  [hl]                                        ; $60cd: $9e
	or   b                                           ; $60ce: $b0
	xor  a                                           ; $60cf: $af
	and  b                                           ; $60d0: $a0
	adc  h                                           ; $60d1: $8c
	ld   [hl], c                                     ; $60d2: $71
	ld   h, a                                        ; $60d3: $67
	ld   e, [hl]                                     ; $60d4: $5e
	ld   a, c                                        ; $60d5: $79
	dec  c                                           ; $60d6: $0d
	dec  b                                           ; $60d7: $05
	pop  af                                          ; $60d8: $f1
	ld   [hl], h                                     ; $60d9: $74
	sbc  c                                           ; $60da: $99
	ld   a, b                                        ; $60db: $78
	and  c                                           ; $60dc: $a1
	ld   [hl], h                                     ; $60dd: $74
	sbc  [hl]                                        ; $60de: $9e
	ld   [$6300], sp                                 ; $60df: $08 $00 $63
	and  c                                           ; $60e2: $a1
	dec  c                                           ; $60e3: $0d
	inc  bc                                          ; $60e4: $03
	ld   h, l                                        ; $60e5: $65
	inc  bc                                          ; $60e6: $03
	ld   l, e                                        ; $60e7: $6b
	ld   a, b                                        ; $60e8: $78
	and  c                                           ; $60e9: $a1
	ld   [hl], l                                     ; $60ea: $75
	ld   h, a                                        ; $60eb: $67
	ld   a, e                                        ; $60ec: $7b
	sbc  a                                           ; $60ed: $9f
	dec  c                                           ; $60ee: $0d
	nop                                              ; $60ef: $00
	ld   a, [bc]                                     ; $60f0: $0a
	ld   b, $77                                      ; $60f1: $06 $77
	ld   [bc], a                                     ; $60f3: $02
	rrca                                             ; $60f4: $0f
	nop                                              ; $60f5: $00
	ld   bc, $ac01                                   ; $60f6: $01 $01 $ac
	set  0, [hl]                                     ; $60f9: $cb $c6
	jp   nz, $b075                                   ; $60fb: $c2 $75 $b0

	xor  a                                           ; $60fe: $af
	and  b                                           ; $60ff: $a0
	rst  $38                                         ; $6100: $ff
	rst  $38                                         ; $6101: $ff
	dec  c                                           ; $6102: $0d
	inc  b                                           ; $6103: $04
	sub  h                                           ; $6104: $94
	ld   d, d                                        ; $6105: $52
	ld   [hl], h                                     ; $6106: $74
	adc  l                                           ; $6107: $8d
	sbc  c                                           ; $6108: $99
	ld   e, c                                        ; $6109: $59
	ld   sp, hl                                      ; $610a: $f9
	dec  c                                           ; $610b: $0d
	nop                                              ; $610c: $00
	ld   a, [bc]                                     ; $610d: $0a
	inc  e                                           ; $610e: $1c
	ld   bc, $0303                                   ; $610f: $01 $03 $03
	ld   bc, sCurrDay                                   ; $6112: $01 $b0 $af
	and  b                                           ; $6115: $a0
	inc  b                                           ; $6116: $04
	sub  h                                           ; $6117: $94
	ld   d, d                                        ; $6118: $52
	ld   [hl], h                                     ; $6119: $74
	ld   [hl], a                                     ; $611a: $77
	ld   d, h                                        ; $611b: $54
	ld   h, a                                        ; $611c: $67
	sbc  c                                           ; $611d: $99
	and  c                                           ; $611e: $a1
	dec  c                                           ; $611f: $0d
	ld   [hl], l                                     ; $6120: $75
	ld   h, a                                        ; $6121: $67
	ld   e, c                                        ; $6122: $59
	ld   a, [$000d]                                  ; $6123: $fa $0d $00
	ld   a, [bc]                                     ; $6126: $0a
	ld   b, $77                                      ; $6127: $06 $77
	ld   [bc], a                                     ; $6129: $02
	rrca                                             ; $612a: $0f
	nop                                              ; $612b: $00
	ld   bc, $ac01                                   ; $612c: $01 $01 $ac
	set  0, [hl]                                     ; $612f: $cb $c6
	jp   nz, $b075                                   ; $6131: $c2 $75 $b0

	xor  a                                           ; $6134: $af
	and  b                                           ; $6135: $a0
	rst  $38                                         ; $6136: $ff
	rst  $38                                         ; $6137: $ff
	dec  c                                           ; $6138: $0d
	dec  b                                           ; $6139: $05
	db   $eb                                         ; $613a: $eb
	ld   [hl], c                                     ; $613b: $71
	ld   [hl], h                                     ; $613c: $74
	adc  l                                           ; $613d: $8d
	sbc  c                                           ; $613e: $99
	ld   e, c                                        ; $613f: $59
	ld   sp, hl                                      ; $6140: $f9
	dec  c                                           ; $6141: $0d
	nop                                              ; $6142: $00
	ld   a, [bc]                                     ; $6143: $0a
	inc  e                                           ; $6144: $1c
	ld   bc, $0202                                   ; $6145: $01 $02 $02
	ld   bc, sCurrDay                                   ; $6148: $01 $b0 $af
	and  b                                           ; $614b: $a0
	dec  b                                           ; $614c: $05
	db   $eb                                         ; $614d: $eb
	sub  a                                           ; $614e: $97
	ld   a, b                                        ; $614f: $78
	ld   d, d                                        ; $6150: $52
	ld   [hl], l                                     ; $6151: $75
	ld   [bc], a                                     ; $6152: $02
	inc  [hl]                                        ; $6153: $34
	ld   h, e                                        ; $6154: $63
	ld   d, d                                        ; $6155: $52
	ld   a, [$000d]                                  ; $6156: $fa $0d $00
	ld   a, [bc]                                     ; $6159: $0a
	ld   b, $77                                      ; $615a: $06 $77
	ld   [bc], a                                     ; $615c: $02
	inc  e                                           ; $615d: $1c
	ld   bc, $0707                                   ; $615e: $01 $07 $07
	ld   bc, $fbdd                                   ; $6161: $01 $dd $fb
	ld   [hl], c                                     ; $6164: $71
	halt                                             ; $6165: $76
	ld   h, l                                        ; $6166: $65
	ld   a, b                                        ; $6167: $78
	ld   d, d                                        ; $6168: $52
	ld   [hl], l                                     ; $6169: $75
	ld   [bc], a                                     ; $616a: $02
	inc  [hl]                                        ; $616b: $34
	ld   h, e                                        ; $616c: $63
	ld   d, d                                        ; $616d: $52
	ld   a, [$000d]                                  ; $616e: $fa $0d $00
	ld   a, [bc]                                     ; $6171: $0a
	ld   b, $77                                      ; $6172: $06 $77
	ld   [bc], a                                     ; $6174: $02
	inc  e                                           ; $6175: $1c
	ld   bc, $0000                                   ; $6176: $01 $00 $00
	ld   bc, $9166                                   ; $6179: $01 $66 $91
	sbc  [hl]                                        ; $617c: $9e
	ld   h, c                                        ; $617d: $61
	ld   h, c                                        ; $617e: $61
	ld   a, c                                        ; $617f: $79
	ret  nc                                          ; $6180: $d0

	or   d                                           ; $6181: $b2
	ld   [hl], l                                     ; $6182: $75
	rst  $38                                         ; $6183: $ff
	rst  $38                                         ; $6184: $ff
	dec  c                                           ; $6185: $0d
	nop                                              ; $6186: $00
	ld   a, [bc]                                     ; $6187: $0a
	add  hl, de                                      ; $6188: $19
	dec  b                                           ; $6189: $05
	inc  bc                                          ; $618a: $03
	call z, $a0ba                                    ; $618b: $cc $ba $a0
	ld   a, h                                        ; $618e: $7c
	adc  [hl]                                        ; $618f: $8e
	nop                                              ; $6190: $00
	nop                                              ; $6191: $00
	call z, $a0ba                                    ; $6192: $cc $ba $a0
	ld   a, d                                        ; $6195: $7a
	sbc  c                                           ; $6196: $99
	nop                                              ; $6197: $00
	ld   bc, $bacc                                   ; $6198: $01 $cc $ba
	and  b                                           ; $619b: $a0
	adc  h                                           ; $619c: $8c
	ld   e, l                                        ; $619d: $5d
	nop                                              ; $619e: $00
	ld   [bc], a                                     ; $619f: $02
	rlca                                             ; $61a0: $07
	ret  nz                                          ; $61a1: $c0

	ld   [bc], a                                     ; $61a2: $02
	ld   [bc], a                                     ; $61a3: $02
	inc  bc                                          ; $61a4: $03
	ld   bc, $2000                                   ; $61a5: $01 $00 $20
	nop                                              ; $61a8: $00
	rlca                                             ; $61a9: $07
	cp   $02                                         ; $61aa: $fe $02
	ld   [bc], a                                     ; $61ac: $02
	inc  bc                                          ; $61ad: $03
	ld   bc, $2001                                   ; $61ae: $01 $01 $20
	nop                                              ; $61b1: $00
	rlca                                             ; $61b2: $07
	ld   b, a                                        ; $61b3: $47
	inc  bc                                          ; $61b4: $03
	ld   [bc], a                                     ; $61b5: $02
	inc  bc                                          ; $61b6: $03
	ld   bc, $2002                                   ; $61b7: $01 $02 $20
	nop                                              ; $61ba: $00
	ld   b, $86                                      ; $61bb: $06 $86
	inc  bc                                          ; $61bd: $03
	rrca                                             ; $61be: $0f
	nop                                              ; $61bf: $00
	ld   bc, $d001                                   ; $61c0: $01 $01 $d0
	or   d                                           ; $61c3: $b2
	ld   a, l                                        ; $61c4: $7d
	halt                                             ; $61c5: $76
	sub  b                                           ; $61c6: $90
	ld   e, c                                        ; $61c7: $59
	ld   e, l                                        ; $61c8: $5d
	sbc  [hl]                                        ; $61c9: $9e
	call z, $a0ba                                    ; $61ca: $cc $ba $a0
	dec  c                                           ; $61cd: $0d
	ld   a, h                                        ; $61ce: $7c
	and  c                                           ; $61cf: $a1
	ld   [hl], l                                     ; $61d0: $75
	adc  l                                           ; $61d1: $8d
	sub  [hl]                                        ; $61d2: $96
	ld   d, h                                        ; $61d3: $54
	ld   e, c                                        ; $61d4: $59
	ld   a, b                                        ; $61d5: $78
	ld   sp, hl                                      ; $61d6: $f9
	dec  c                                           ; $61d7: $0d
	nop                                              ; $61d8: $00
	ld   a, [bc]                                     ; $61d9: $0a
	inc  e                                           ; $61da: $1c
	ld   bc, $0202                                   ; $61db: $01 $02 $02
	ld   bc, $9ecc                                   ; $61de: $01 $cc $9e
	call z, $a0ba                                    ; $61e1: $cc $ba $a0
	ld   a, h                                        ; $61e4: $7c
	adc  h                                           ; $61e5: $8c
	ld   a, b                                        ; $61e6: $78
	ld   d, d                                        ; $61e7: $52
	ld   [hl], l                                     ; $61e8: $75
	ld   [bc], a                                     ; $61e9: $02
	inc  [hl]                                        ; $61ea: $34
	ld   h, e                                        ; $61eb: $63
	ld   d, d                                        ; $61ec: $52
	ld   a, [$000d]                                  ; $61ed: $fa $0d $00
	ld   a, [bc]                                     ; $61f0: $0a
	dec  c                                           ; $61f1: $0d
	nop                                              ; $61f2: $00
	nop                                              ; $61f3: $00
	rrca                                             ; $61f4: $0f
	nop                                              ; $61f5: $00
	ld   bc, $020c                                   ; $61f6: $01 $0c $02
	ld   b, $a6                                      ; $61f9: $06 $a6
	inc  bc                                          ; $61fb: $03
	rrca                                             ; $61fc: $0f
	nop                                              ; $61fd: $00
	ld   bc, $d001                                   ; $61fe: $01 $01 $d0
	or   d                                           ; $6201: $b2
	ld   [hl], l                                     ; $6202: $75
	call z, $a0ba                                    ; $6203: $cc $ba $a0
	ld   a, d                                        ; $6206: $7a
	sbc  c                                           ; $6207: $99
	sbc  a                                           ; $6208: $9f
	dec  c                                           ; $6209: $0d
	nop                                              ; $620a: $00
	ld   a, [bc]                                     ; $620b: $0a
	inc  e                                           ; $620c: $1c
	ld   bc, $0101                                   ; $620d: $01 $01 $01
	dec  b                                           ; $6210: $05
	ld   b, b                                        ; $6211: $40
	rst  $38                                         ; $6212: $ff
	inc  bc                                          ; $6213: $03
	rst  $38                                         ; $6214: $ff
	ld   bc, $2801                                   ; $6215: $01 $01 $28
	nop                                              ; $6218: $00
	ld   bc, $eeae                                   ; $6219: $01 $ae $ee
	and  l                                           ; $621c: $a5
	ld   a, c                                        ; $621d: $79
	ld   a, d                                        ; $621e: $7a
	sbc  d                                           ; $621f: $9a
	ld   [hl], h                                     ; $6220: $74
	sbc  c                                           ; $6221: $99
	ld   h, [hl]                                     ; $6222: $66
	sub  c                                           ; $6223: $91
	ld   a, b                                        ; $6224: $78
	ld   d, d                                        ; $6225: $52
	dec  c                                           ; $6226: $0d
	ld   [hl], l                                     ; $6227: $75
	ld   h, a                                        ; $6228: $67
	ld   e, c                                        ; $6229: $59
	sbc  a                                           ; $622a: $9f
	dec  c                                           ; $622b: $0d
	ld   [$6300], sp                                 ; $622c: $08 $00 $63
	and  c                                           ; $622f: $a1
	cp   d                                           ; $6230: $ba
	or   l                                           ; $6231: $b5
	and  l                                           ; $6232: $a5
	ld   [hl], l                                     ; $6233: $75
	ld   h, a                                        ; $6234: $67
	ld   a, e                                        ; $6235: $7b
	sbc  a                                           ; $6236: $9f
	dec  c                                           ; $6237: $0d
	nop                                              ; $6238: $00
	ld   a, [bc]                                     ; $6239: $0a
	dec  c                                           ; $623a: $0d
	nop                                              ; $623b: $00
	nop                                              ; $623c: $00
	rrca                                             ; $623d: $0f
	nop                                              ; $623e: $00
	ld   bc, $020c                                   ; $623f: $01 $0c $02
	ld   b, $a6                                      ; $6242: $06 $a6
	inc  bc                                          ; $6244: $03
	rrca                                             ; $6245: $0f
	nop                                              ; $6246: $00
	ld   bc, $cc01                                   ; $6247: $01 $01 $cc
	cp   d                                           ; $624a: $ba
	ld   sp, hl                                      ; $624b: $f9
	db   $10                                         ; $624c: $10
	ret  nc                                          ; $624d: $d0

	or   d                                           ; $624e: $b2
	ld   sp, hl                                      ; $624f: $f9
	dec  c                                           ; $6250: $0d
	halt                                             ; $6251: $76
	sbc  b                                           ; $6252: $98
	ld   d, b                                        ; $6253: $50
	ld   d, [hl]                                     ; $6254: $56
	ld   l, b                                        ; $6255: $68
	sbc  [hl]                                        ; $6256: $9e
	adc  h                                           ; $6257: $8c
	ld   d, d                                        ; $6258: $52
	ld   [hl], h                                     ; $6259: $74
	adc  l                                           ; $625a: $8d
	sbc  c                                           ; $625b: $99
	ld   e, c                                        ; $625c: $59
	ld   sp, hl                                      ; $625d: $f9
	dec  c                                           ; $625e: $0d
	nop                                              ; $625f: $00
	ld   a, [bc]                                     ; $6260: $0a
	inc  e                                           ; $6261: $1c
	ld   bc, $0303                                   ; $6262: $01 $03 $03
	ld   bc, $bacc                                   ; $6265: $01 $cc $ba
	and  b                                           ; $6268: $a0
	adc  h                                           ; $6269: $8c
	ld   d, d                                        ; $626a: $52
	ld   [hl], h                                     ; $626b: $74
	ld   [hl], a                                     ; $626c: $77
	ld   d, h                                        ; $626d: $54
	ld   h, a                                        ; $626e: $67
	sbc  c                                           ; $626f: $99
	and  c                                           ; $6270: $a1
	dec  c                                           ; $6271: $0d
	ld   [hl], l                                     ; $6272: $75
	ld   h, a                                        ; $6273: $67
	ld   e, c                                        ; $6274: $59
	ld   a, [$000d]                                  ; $6275: $fa $0d $00
	ld   a, [bc]                                     ; $6278: $0a
	dec  c                                           ; $6279: $0d
	nop                                              ; $627a: $00
	nop                                              ; $627b: $00
	rrca                                             ; $627c: $0f
	nop                                              ; $627d: $00
	ld   bc, $020c                                   ; $627e: $01 $0c $02
	ld   b, $a6                                      ; $6281: $06 $a6
	inc  bc                                          ; $6283: $03
	inc  e                                           ; $6284: $1c
	ld   bc, $0707                                   ; $6285: $01 $07 $07
	ld   bc, $fbdd                                   ; $6288: $01 $dd $fb
	ld   [hl], c                                     ; $628b: $71
	halt                                             ; $628c: $76
	ld   h, l                                        ; $628d: $65
	ld   a, b                                        ; $628e: $78
	ld   d, d                                        ; $628f: $52
	ld   [hl], l                                     ; $6290: $75
	ld   [bc], a                                     ; $6291: $02
	inc  [hl]                                        ; $6292: $34
	ld   h, e                                        ; $6293: $63
	ld   d, d                                        ; $6294: $52
	ld   a, [$000d]                                  ; $6295: $fa $0d $00
	ld   a, [bc]                                     ; $6298: $0a
	dec  c                                           ; $6299: $0d
	nop                                              ; $629a: $00
	nop                                              ; $629b: $00
	rrca                                             ; $629c: $0f
	nop                                              ; $629d: $00
	ld   bc, $020c                                   ; $629e: $01 $0c $02
	ld   b, $a6                                      ; $62a1: $06 $a6
	inc  bc                                          ; $62a3: $03
	ld   c, $1e                                      ; $62a4: $0e $1e
	rlca                                             ; $62a6: $07
	jp   $0303                                       ; $62a7: $c3 $03 $03


	rst  $38                                         ; $62aa: $ff
	ld   bc, $2003                                   ; $62ab: $01 $03 $20
	nop                                              ; $62ae: $00
	rlca                                             ; $62af: $07
	ei                                               ; $62b0: $fb
	inc  bc                                          ; $62b1: $03
	inc  bc                                          ; $62b2: $03
	rst  $38                                         ; $62b3: $ff
	ld   bc, $2002                                   ; $62b4: $01 $02 $20
	nop                                              ; $62b7: $00
	rlca                                             ; $62b8: $07
	ld   [hl], $04                                   ; $62b9: $36 $04
	inc  bc                                          ; $62bb: $03
	rst  $38                                         ; $62bc: $ff
	ld   bc, $2301                                   ; $62bd: $01 $01 $23
	nop                                              ; $62c0: $00
	inc  e                                           ; $62c1: $1c
	ld   bc, $0101                                   ; $62c2: $01 $01 $01
	dec  e                                           ; $62c5: $1d
	ld   b, b                                        ; $62c6: $40
	ld   de, $1103                                   ; $62c7: $11 $03 $11
	ld   bc, $2803                                   ; $62ca: $01 $03 $28
	nop                                              ; $62cd: $00
	ld   bc, $9850                                   ; $62ce: $01 $50 $98
	ld   e, d                                        ; $62d1: $5a
	halt                                             ; $62d2: $76
	ld   d, h                                        ; $62d3: $54
	ld   h, d                                        ; $62d4: $62
	ld   h, h                                        ; $62d5: $64
	ld   d, d                                        ; $62d6: $52
	adc  h                                           ; $62d7: $8c
	ld   h, a                                        ; $62d8: $67
	ld   a, [$080d]                                  ; $62d9: $fa $0d $08
	nop                                              ; $62dc: $00
	ld   h, e                                        ; $62dd: $63
	and  c                                           ; $62de: $a1
	ld   a, h                                        ; $62df: $7c
	ld   e, b                                        ; $62e0: $58
	ld   e, c                                        ; $62e1: $59
	ld   h, b                                        ; $62e2: $60
	ld   [hl], l                                     ; $62e3: $75
	dec  c                                           ; $62e4: $0d
	halt                                             ; $62e5: $76
	ld   [hl], h                                     ; $62e6: $74
	sub  b                                           ; $62e7: $90
	inc  bc                                          ; $62e8: $03
	ld   [hl], b                                     ; $62e9: $70
	ld   e, l                                        ; $62ea: $5d
	inc  bc                                          ; $62eb: $03
	ld   a, [hl]                                     ; $62ec: $7e
	sbc  l                                           ; $62ed: $9d
	sbc  b                                           ; $62ee: $98
	adc  h                                           ; $62ef: $8c
	ld   h, l                                        ; $62f0: $65
	ld   l, l                                        ; $62f1: $6d
	ld   a, [$000d]                                  ; $62f2: $fa $0d $00
	ld   a, [bc]                                     ; $62f5: $0a
	ld   b, $24                                      ; $62f6: $06 $24
	inc  b                                           ; $62f8: $04
	inc  e                                           ; $62f9: $1c
	ld   bc, $0101                                   ; $62fa: $01 $01 $01
	dec  e                                           ; $62fd: $1d
	ld   b, b                                        ; $62fe: $40
	ld   de, $1103                                   ; $62ff: $11 $03 $11
	ld   bc, $2801                                   ; $6302: $01 $01 $28
	nop                                              ; $6305: $00
	ld   bc, $9850                                   ; $6306: $01 $50 $98
	ld   e, d                                        ; $6309: $5a
	halt                                             ; $630a: $76
	ld   d, h                                        ; $630b: $54
	ld   h, d                                        ; $630c: $62
	ld   h, h                                        ; $630d: $64
	ld   d, d                                        ; $630e: $52
	adc  h                                           ; $630f: $8c
	ld   h, l                                        ; $6310: $65
	ld   l, l                                        ; $6311: $6d
	sbc  a                                           ; $6312: $9f
	dec  c                                           ; $6313: $0d
	inc  bc                                          ; $6314: $03
	ld   e, e                                        ; $6315: $5b
	ld   e, c                                        ; $6316: $59
	sbc  b                                           ; $6317: $98
	adc  h                                           ; $6318: $8c
	ld   h, l                                        ; $6319: $65
	ld   l, l                                        ; $631a: $6d
	sbc  a                                           ; $631b: $9f
	dec  c                                           ; $631c: $0d
	nop                                              ; $631d: $00
	ld   a, [bc]                                     ; $631e: $0a
	ld   b, $24                                      ; $631f: $06 $24
	inc  b                                           ; $6321: $04
	ld   bc, $7d75                                   ; $6322: $01 $75 $7d
	sbc  [hl]                                        ; $6325: $9e
	ld   e, b                                        ; $6326: $58
	inc  b                                           ; $6327: $04
	ld   a, e                                        ; $6328: $7b
	sbc  d                                           ; $6329: $9a
	ld   h, e                                        ; $632a: $63
	adc  h                                           ; $632b: $8c
	ld   [hl], l                                     ; $632c: $75
	ld   h, l                                        ; $632d: $65
	ld   l, l                                        ; $632e: $6d
	sbc  a                                           ; $632f: $9f
	dec  c                                           ; $6330: $0d
	nop                                              ; $6331: $00
	ld   a, [bc]                                     ; $6332: $0a
	nop                                              ; $6333: $00
	inc  e                                           ; $6334: $1c
	ld   bc, $0404                                   ; $6335: $01 $04 $04
	dec  e                                           ; $6338: $1d
	ld   b, b                                        ; $6339: $40
	ld   de, $1103                                   ; $633a: $11 $03 $11
	ld   bc, $2902                                   ; $633d: $01 $02 $29
	nop                                              ; $6340: $00
	ld   bc, $5490                                   ; $6341: $01 $90 $54
	ld   d, d                                        ; $6344: $52
	ld   d, d                                        ; $6345: $52
	ld   [hl], l                                     ; $6346: $75
	ld   h, a                                        ; $6347: $67
	rst  $38                                         ; $6348: $ff
	rst  $38                                         ; $6349: $ff
	dec  c                                           ; $634a: $0d
	ld   [bc], a                                     ; $634b: $02
	xor  d                                           ; $634c: $aa
	ld   a, l                                        ; $634d: $7d
	ld   d, b                                        ; $634e: $50
	ld   l, l                                        ; $634f: $6d
	ld   h, l                                        ; $6350: $65
	ld   e, d                                        ; $6351: $5a
	sub  d                                           ; $6352: $92
	sbc  b                                           ; $6353: $98
	adc  h                                           ; $6354: $8c
	ld   h, a                                        ; $6355: $67
	ld   e, c                                        ; $6356: $59
	sub  a                                           ; $6357: $97
	rst  $38                                         ; $6358: $ff
	rst  $38                                         ; $6359: $ff
	dec  c                                           ; $635a: $0d
	nop                                              ; $635b: $00
	ld   a, [bc]                                     ; $635c: $0a
	nop                                              ; $635d: $00
	nop                                              ; $635e: $00
	ld   c, $41                                      ; $635f: $0e $41
	rrca                                             ; $6361: $0f
	nop                                              ; $6362: $00
	ld   bc, $1c02                                   ; $6363: $01 $02 $1c
	add  hl, bc                                      ; $6366: $09
	nop                                              ; $6367: $00
	nop                                              ; $6368: $00
	ld   bc, $0008                                   ; $6369: $01 $08 $00
	ld   e, l                                        ; $636c: $5d
	and  c                                           ; $636d: $a1
	ld   h, [hl]                                     ; $636e: $66
	sub  c                                           ; $636f: $91
	ld   a, b                                        ; $6370: $78
	ld   d, d                                        ; $6371: $52
	ld   e, c                                        ; $6372: $59
	sbc  a                                           ; $6373: $9f
	dec  c                                           ; $6374: $0d
	ld   a, b                                        ; $6375: $78
	ld   a, c                                        ; $6376: $79
	ld   e, c                                        ; $6377: $59
	inc  b                                           ; $6378: $04
	di                                               ; $6379: $f3
	ld   e, c                                        ; $637a: $59
	ld   d, d                                        ; $637b: $52
	ld   sp, hl                                      ; $637c: $f9
	dec  c                                           ; $637d: $0d
	nop                                              ; $637e: $00
	ld   a, [bc]                                     ; $637f: $0a
	add  hl, de                                      ; $6380: $19
	dec  b                                           ; $6381: $05
	ld   [bc], a                                     ; $6382: $02
	inc  b                                           ; $6383: $04
	ld   a, [bc]                                     ; $6384: $0a
	ld   [bc], a                                     ; $6385: $02
	nop                                              ; $6386: $00
	ld   e, c                                        ; $6387: $59
	sub  a                                           ; $6388: $97
	ld   a, h                                        ; $6389: $7c
	inc  b                                           ; $638a: $04
	ld   d, a                                        ; $638b: $57
	inc  b                                           ; $638c: $04
	ld   h, e                                        ; $638d: $63
	and  b                                           ; $638e: $a0
	ld   [bc], a                                     ; $638f: $02
	jp   nz, $005d                                   ; $6390: $c2 $5d $00

	nop                                              ; $6393: $00
	inc  bc                                          ; $6394: $03
	ld   l, l                                        ; $6395: $6d
	dec  b                                           ; $6396: $05
	add  hl, de                                      ; $6397: $19
	ld   a, h                                        ; $6398: $7c
	and  e                                           ; $6399: $a3
	jp   z, $a5d1                                    ; $639a: $ca $d1 $a5

	cp   d                                           ; $639d: $ba
	and  b                                           ; $639e: $a0
	ld   [bc], a                                     ; $639f: $02

Call_059_63a0:
	jp   nz, $005d                                   ; $63a0: $c2 $5d $00

	ld   bc, $8b07                                   ; $63a3: $01 $07 $8b
	ld   bc, $0302                                   ; $63a6: $01 $02 $03
	ld   bc, $2000                                   ; $63a9: $01 $00 $20
	nop                                              ; $63ac: $00
	rlca                                             ; $63ad: $07
	ld   c, c                                        ; $63ae: $49
	ld   a, [bc]                                     ; $63af: $0a
	ld   [bc], a                                     ; $63b0: $02
	inc  bc                                          ; $63b1: $03
	ld   bc, $2001                                   ; $63b2: $01 $01 $20
	nop                                              ; $63b5: $00
	ld   b, $5a                                      ; $63b6: $06 $5a
	nop                                              ; $63b8: $00
	rrca                                             ; $63b9: $0f
	nop                                              ; $63ba: $00
	ld   bc, $5201                                   ; $63bb: $01 $01 $52
	ld   d, [hl]                                     ; $63be: $56
	rst  $38                                         ; $63bf: $ff
	rst  $38                                         ; $63c0: $ff
	sbc  a                                           ; $63c1: $9f
	dec  c                                           ; $63c2: $0d
	halt                                             ; $63c3: $76
	ld   e, l                                        ; $63c4: $5d
	ld   a, c                                        ; $63c5: $79
	inc  b                                           ; $63c6: $04
	di                                               ; $63c7: $f3
	ld   [bc], a                                     ; $63c8: $02
	jp   Jump_059_5276                               ; $63c9: $c3 $76 $52


	ld   d, h                                        ; $63cc: $54
	sbc  l                                           ; $63cd: $9d
	ld   e, a                                        ; $63ce: $5f
	ld   [hl], l                                     ; $63cf: $75
	ld   a, l                                        ; $63d0: $7d
	rst  $38                                         ; $63d1: $ff
	sbc  a                                           ; $63d2: $9f
	dec  c                                           ; $63d3: $0d
	nop                                              ; $63d4: $00
	ld   a, [bc]                                     ; $63d5: $0a
	rlca                                             ; $63d6: $07
	rst  JumpTable                                         ; $63d7: $df
	nop                                              ; $63d8: $00
	inc  bc                                          ; $63d9: $03
	jr   nz, jr_059_63dd                             ; $63da: $20 $01

	ld   h, h                                        ; $63dc: $64

jr_059_63dd:
	inc  hl                                          ; $63dd: $23
	nop                                              ; $63de: $00
	rrca                                             ; $63df: $0f
	add  hl, bc                                      ; $63e0: $09
	nop                                              ; $63e1: $00
	ld   bc, $546b                                   ; $63e2: $01 $6b $54
	ld   e, c                                        ; $63e5: $59
	rst  $38                                         ; $63e6: $ff
	rst  $38                                         ; $63e7: $ff
	adc  h                                           ; $63e8: $8c
	ld   d, b                                        ; $63e9: $50
	sbc  [hl]                                        ; $63ea: $9e
	dec  c                                           ; $63eb: $0d
	ld   a, b                                        ; $63ec: $78
	ld   a, c                                        ; $63ed: $79
	ld   e, c                                        ; $63ee: $59
	ld   [bc], a                                     ; $63ef: $02
	ld   a, [de]                                     ; $63f0: $1a
	dec  b                                           ; $63f1: $05
	ldh  a, [$5a]                                    ; $63f2: $f0 $5a
	ld   d, b                                        ; $63f4: $50
	sbc  c                                           ; $63f5: $99
	ld   a, b                                        ; $63f6: $78
	sub  a                                           ; $63f7: $97
	dec  c                                           ; $63f8: $0d
	ld   d, d                                        ; $63f9: $52
	ld   [hl], d                                     ; $63fa: $72
	ld   [hl], l                                     ; $63fb: $75
	sub  b                                           ; $63fc: $90
	dec  b                                           ; $63fd: $05
	db   $10                                         ; $63fe: $10
	sbc  c                                           ; $63ff: $99
	halt                                             ; $6400: $76
	ld   d, d                                        ; $6401: $52
	ld   d, d                                        ; $6402: $52
	sbc  a                                           ; $6403: $9f
	dec  c                                           ; $6404: $0d
	nop                                              ; $6405: $00
	ld   a, [bc]                                     ; $6406: $0a
	rrca                                             ; $6407: $0f
	nop                                              ; $6408: $00
	ld   bc, $7d01                                   ; $6409: $01 $01 $7d
	rst  $38                                         ; $640c: $ff
	rst  $38                                         ; $640d: $ff
	ld   a, l                                        ; $640e: $7d
	ld   d, d                                        ; $640f: $52
	sbc  a                                           ; $6410: $9f
	dec  c                                           ; $6411: $0d
	ld   d, b                                        ; $6412: $50
	sbc  b                                           ; $6413: $98
	ld   e, d                                        ; $6414: $5a
	halt                                             ; $6415: $76
	ld   d, h                                        ; $6416: $54
	ld   h, d                                        ; $6417: $62
	ld   h, h                                        ; $6418: $64
	ld   d, d                                        ; $6419: $52
	adc  h                                           ; $641a: $8c
	ld   h, a                                        ; $641b: $67
	sbc  a                                           ; $641c: $9f
	dec  c                                           ; $641d: $0d
	nop                                              ; $641e: $00
	ld   a, [bc]                                     ; $641f: $0a
	rrca                                             ; $6420: $0f
	add  hl, bc                                      ; $6421: $09
	nop                                              ; $6422: $00
	ld   bc, $9a6b                                   ; $6423: $01 $6b $9a
	ld   h, [hl]                                     ; $6426: $66
	sub  c                                           ; $6427: $91
	sbc  [hl]                                        ; $6428: $9e
	dec  b                                           ; $6429: $05
	ld   [hl], e                                     ; $642a: $73
	sub  b                                           ; $642b: $90
	inc  bc                                          ; $642c: $03
	dec  c                                           ; $642d: $0d
	ld   [bc], a                                     ; $642e: $02
	jp   Jump_059_505a                               ; $642f: $c3 $5a $50


	sbc  c                                           ; $6432: $99
	ld   e, c                                        ; $6433: $59
	sub  a                                           ; $6434: $97
	dec  c                                           ; $6435: $0d
	ld   h, c                                        ; $6436: $61
	sbc  d                                           ; $6437: $9a
	ld   [hl], l                                     ; $6438: $75
	sbc  a                                           ; $6439: $9f
	dec  c                                           ; $643a: $0d
	nop                                              ; $643b: $00
	ld   a, [bc]                                     ; $643c: $0a
	nop                                              ; $643d: $00
	inc  e                                           ; $643e: $1c
	add  hl, bc                                      ; $643f: $09
	dec  b                                           ; $6440: $05
	ld   a, [bc]                                     ; $6441: $0a
	ld   bc, $0008                                   ; $6442: $01 $08 $00
	ld   e, l                                        ; $6445: $5d
	and  c                                           ; $6446: $a1
	sbc  a                                           ; $6447: $9f
	dec  c                                           ; $6448: $0d
	ld   a, b                                        ; $6449: $78
	and  c                                           ; $644a: $a1
	ld   l, [hl]                                     ; $644b: $6e
	ld   e, c                                        ; $644c: $59
	ld   [bc], a                                     ; $644d: $02
	ld   [hl], d                                     ; $644e: $72
	inc  bc                                          ; $644f: $03
	dec  bc                                          ; $6450: $0b
	ld   e, d                                        ; $6451: $5a
	ld   [bc], a                                     ; $6452: $02
	jr   z, jr_059_64a7                              ; $6453: $28 $52

	ld   l, h                                        ; $6455: $6c
	sbc  a                                           ; $6456: $9f
	dec  c                                           ; $6457: $0d
	nop                                              ; $6458: $00
	ld   a, [bc]                                     ; $6459: $0a
	inc  e                                           ; $645a: $1c
	add  hl, bc                                      ; $645b: $09
	nop                                              ; $645c: $00
	nop                                              ; $645d: $00
	ld   bc, $a15a                                   ; $645e: $01 $5a $a1
	ld   a, [hl]                                     ; $6461: $7e
	sbc  c                                           ; $6462: $99
	ld   a, h                                        ; $6463: $7c
	sub  b                                           ; $6464: $90
	ld   d, d                                        ; $6465: $52
	ld   d, d                                        ; $6466: $52
	ld   e, d                                        ; $6467: $5a
	sbc  [hl]                                        ; $6468: $9e
	dec  c                                           ; $6469: $0d
	ld   l, l                                        ; $646a: $6d
	adc  h                                           ; $646b: $8c
	ld   a, c                                        ; $646c: $79
	ld   a, l                                        ; $646d: $7d
	inc  bc                                          ; $646e: $03
	and  a                                           ; $646f: $a7
	adc  l                                           ; $6470: $8d
	and  b                                           ; $6471: $a0
	halt                                             ; $6472: $76
	sub  a                                           ; $6473: $97
	ld   a, b                                        ; $6474: $78
	ld   d, d                                        ; $6475: $52
	halt                                             ; $6476: $76
	dec  c                                           ; $6477: $0d
	inc  b                                           ; $6478: $04
	dec  c                                           ; $6479: $0d
	ld   e, d                                        ; $647a: $5a
	sub  b                                           ; $647b: $90
	ld   l, l                                        ; $647c: $6d
	ld   a, b                                        ; $647d: $78
	ld   d, d                                        ; $647e: $52
	ld   l, h                                        ; $647f: $6c
	sbc  a                                           ; $6480: $9f
	dec  c                                           ; $6481: $0d
	nop                                              ; $6482: $00
	ld   a, [bc]                                     ; $6483: $0a
	ld   bc, $0a04                                   ; $6484: $01 $04 $0a
	ld   [bc], a                                     ; $6487: $02
	nop                                              ; $6488: $00
	ld   a, c                                        ; $6489: $79
	halt                                             ; $648a: $76
	ld   [hl], c                                     ; $648b: $71
	ld   [hl], h                                     ; $648c: $74
	ld   a, l                                        ; $648d: $7d
	inc  bc                                          ; $648e: $03
	sub  h                                           ; $648f: $94
	dec  b                                           ; $6490: $05
	inc  sp                                          ; $6491: $33
	ld   [bc], a                                     ; $6492: $02
	ld   l, b                                        ; $6493: $68
	dec  b                                           ; $6494: $05
	ld   de, $0d90                                   ; $6495: $11 $90 $0d
	inc  b                                           ; $6498: $04
	ld   c, $02                                      ; $6499: $0e $02
	jp   $0378                                       ; $649b: $c3 $78 $03


	dec  c                                           ; $649e: $0d
	ld   [bc], a                                     ; $649f: $02
	jp   $547c                                       ; $64a0: $c3 $7c $54


	ld   l, a                                        ; $64a3: $6f
	ld   l, [hl]                                     ; $64a4: $6e
	ld   e, c                                        ; $64a5: $59
	sub  a                                           ; $64a6: $97

jr_059_64a7:
	ld   a, b                                        ; $64a7: $78
	sbc  a                                           ; $64a8: $9f
	dec  c                                           ; $64a9: $0d
	nop                                              ; $64aa: $00
	ld   a, [bc]                                     ; $64ab: $0a
	rrca                                             ; $64ac: $0f
	nop                                              ; $64ad: $00
	ld   bc, $7d01                                   ; $64ae: $01 $01 $7d
	rst  $38                                         ; $64b1: $ff
	rst  $38                                         ; $64b2: $ff
	ld   a, l                                        ; $64b3: $7d
	ld   d, d                                        ; $64b4: $52
	sbc  a                                           ; $64b5: $9f
	dec  c                                           ; $64b6: $0d
	ld   [bc], a                                     ; $64b7: $02
	and  c                                           ; $64b8: $a1
	and  b                                           ; $64b9: $a0
	ld   [hl], d                                     ; $64ba: $72
	ld   e, a                                        ; $64bb: $5f
	adc  h                                           ; $64bc: $8c
	ld   h, a                                        ; $64bd: $67
	sbc  a                                           ; $64be: $9f
	dec  c                                           ; $64bf: $0d
	nop                                              ; $64c0: $00
	ld   a, [bc]                                     ; $64c1: $0a
	inc  e                                           ; $64c2: $1c
	add  hl, bc                                      ; $64c3: $09
	ld   bc, $0101                                   ; $64c4: $01 $01 $01
	ld   d, h                                        ; $64c7: $54
	and  c                                           ; $64c8: $a1
	sbc  a                                           ; $64c9: $9f
	dec  c                                           ; $64ca: $0d
	ld   l, e                                        ; $64cb: $6b
	sbc  d                                           ; $64cc: $9a
	ld   h, [hl]                                     ; $64cd: $66
	sub  c                                           ; $64ce: $91
	sbc  [hl]                                        ; $64cf: $9e
	dec  b                                           ; $64d0: $05
	ld   [hl], e                                     ; $64d1: $73
	sub  b                                           ; $64d2: $90
	ld   l, e                                        ; $64d3: $6b
	sbc  e                                           ; $64d4: $9b
	ld   l, e                                        ; $64d5: $6b
	sbc  e                                           ; $64d6: $9b
	inc  bc                                          ; $64d7: $03
	dec  c                                           ; $64d8: $0d
	ld   [bc], a                                     ; $64d9: $02
	jp   $0d79                                       ; $64da: $c3 $79 $0d


	sub  b                                           ; $64dd: $90
	ld   [hl], a                                     ; $64de: $77
	sbc  c                                           ; $64df: $99
	ld   e, c                                        ; $64e0: $59
	sub  a                                           ; $64e1: $97
	ld   h, c                                        ; $64e2: $61
	sbc  d                                           ; $64e3: $9a
	ld   [hl], l                                     ; $64e4: $75
	sbc  a                                           ; $64e5: $9f
	dec  c                                           ; $64e6: $0d
	nop                                              ; $64e7: $00
	ld   a, [bc]                                     ; $64e8: $0a
	nop                                              ; $64e9: $00
	rrca                                             ; $64ea: $0f
	nop                                              ; $64eb: $00
	ld   bc, $5001                                   ; $64ec: $01 $01 $50
	ld   a, h                                        ; $64ef: $7c
	rst  $38                                         ; $64f0: $ff
	rst  $38                                         ; $64f1: $ff
	ld   l, a                                        ; $64f2: $6f
	sub  l                                           ; $64f3: $95
	ld   [hl], c                                     ; $64f4: $71
	halt                                             ; $64f5: $76
	dec  c                                           ; $64f6: $0d
	ld   e, b                                        ; $64f7: $58
	ld   [bc], a                                     ; $64f8: $02
	jp   nz, Jump_059_655b                           ; $64f9: $c2 $5b $65

	ld   l, l                                        ; $64fc: $6d
	ld   d, d                                        ; $64fd: $52
	ld   h, c                                        ; $64fe: $61
	halt                                             ; $64ff: $76
	ld   e, d                                        ; $6500: $5a
	dec  c                                           ; $6501: $0d
	ld   d, b                                        ; $6502: $50
	sbc  c                                           ; $6503: $99
	and  c                                           ; $6504: $a1
	ld   [hl], l                                     ; $6505: $75
	ld   h, a                                        ; $6506: $67
	ld   e, a                                        ; $6507: $5f
	ld   [hl], a                                     ; $6508: $77
	rst  $38                                         ; $6509: $ff
	dec  c                                           ; $650a: $0d
	nop                                              ; $650b: $00
	ld   a, [bc]                                     ; $650c: $0a
	rrca                                             ; $650d: $0f
	add  hl, bc                                      ; $650e: $09
	nop                                              ; $650f: $00
	ld   bc, $ffff                                   ; $6510: $01 $ff $ff
	ld   [bc], a                                     ; $6513: $02
	jp   nz, Jump_059_6d5b                           ; $6514: $c2 $5b $6d

	ld   d, d                                        ; $6517: $52
	ld   h, c                                        ; $6518: $61
	halt                                             ; $6519: $76
	ld   sp, hl                                      ; $651a: $f9
	dec  c                                           ; $651b: $0d
	nop                                              ; $651c: $00
	ld   a, [bc]                                     ; $651d: $0a
	jr   jr_059_6523                                 ; $651e: $18 $03

	ld   bc, $5d63                                   ; $6520: $01 $63 $5d

jr_059_6523:
	sub  a                                           ; $6523: $97
	ld   e, c                                        ; $6524: $59
	sub  a                                           ; $6525: $97
	ld   a, h                                        ; $6526: $7c
	inc  b                                           ; $6527: $04
	ld   d, a                                        ; $6528: $57
	inc  b                                           ; $6529: $04
	ld   h, e                                        ; $652a: $63
	and  b                                           ; $652b: $a0
	ld   e, e                                        ; $652c: $5b
	ld   e, l                                        ; $652d: $5d
	nop                                              ; $652e: $00
	nop                                              ; $652f: $00
	ld   h, a                                        ; $6530: $67
	adc  l                                           ; $6531: $8d
	sbc  d                                           ; $6532: $9a
	ld   e, c                                        ; $6533: $59
	sub  a                                           ; $6534: $97
	ld   a, h                                        ; $6535: $7c
	inc  b                                           ; $6536: $04
	ld   d, a                                        ; $6537: $57
	inc  b                                           ; $6538: $04
	ld   h, e                                        ; $6539: $63
	and  b                                           ; $653a: $a0
	ld   e, e                                        ; $653b: $5b
	ld   e, l                                        ; $653c: $5d
	nop                                              ; $653d: $00
	ld   bc, $7c6b                                   ; $653e: $01 $6b $7c
	inc  b                                           ; $6541: $04
	ld   e, $7c                                      ; $6542: $1e $7c
	inc  bc                                          ; $6544: $03
	add  d                                           ; $6545: $82
	ld   a, h                                        ; $6546: $7c
	inc  b                                           ; $6547: $04
	ld   d, a                                        ; $6548: $57
	inc  b                                           ; $6549: $04
	ld   h, e                                        ; $654a: $63
	and  b                                           ; $654b: $a0
	ld   e, e                                        ; $654c: $5b
	ld   e, l                                        ; $654d: $5d
	nop                                              ; $654e: $00
	ld   [bc], a                                     ; $654f: $02
	rlca                                             ; $6550: $07
	ld   h, $03                                      ; $6551: $26 $03
	ld   [bc], a                                     ; $6553: $02
	ld   [bc], a                                     ; $6554: $02
	ld   bc, $2000                                   ; $6555: $01 $00 $20
	nop                                              ; $6558: $00
	rlca                                             ; $6559: $07
	ld   d, d                                        ; $655a: $52

Jump_059_655b:
	inc  b                                           ; $655b: $04
	ld   [bc], a                                     ; $655c: $02
	ld   [bc], a                                     ; $655d: $02
	ld   bc, $2001                                   ; $655e: $01 $01 $20
	nop                                              ; $6561: $00
	rlca                                             ; $6562: $07
	inc  c                                           ; $6563: $0c
	ld   [bc], a                                     ; $6564: $02
	ld   [bc], a                                     ; $6565: $02
	ld   [bc], a                                     ; $6566: $02
	ld   bc, $2002                                   ; $6567: $01 $02 $20
	nop                                              ; $656a: $00
	jr   jr_059_6570                                 ; $656b: $18 $03

	ld   bc, $ecdf                                   ; $656d: $01 $df $ec

jr_059_6570:
	and  e                                           ; $6570: $a3
	ld   e, c                                        ; $6571: $59
	sub  a                                           ; $6572: $97
	ld   a, h                                        ; $6573: $7c
	inc  b                                           ; $6574: $04
	ld   d, a                                        ; $6575: $57
	inc  b                                           ; $6576: $04
	ld   h, e                                        ; $6577: $63
	and  b                                           ; $6578: $a0
	ld   e, e                                        ; $6579: $5b
	ld   e, l                                        ; $657a: $5d
	nop                                              ; $657b: $00
	nop                                              ; $657c: $00
	xor  h                                           ; $657d: $ac
	push af                                          ; $657e: $f5
	bit  3, c                                        ; $657f: $cb $59
	sub  a                                           ; $6581: $97
	ld   a, h                                        ; $6582: $7c
	inc  b                                           ; $6583: $04
	ld   d, a                                        ; $6584: $57
	inc  b                                           ; $6585: $04
	ld   h, e                                        ; $6586: $63
	and  b                                           ; $6587: $a0
	ld   e, e                                        ; $6588: $5b
	ld   e, l                                        ; $6589: $5d
	nop                                              ; $658a: $00
	ld   bc, $7c6b                                   ; $658b: $01 $6b $7c
	inc  b                                           ; $658e: $04
	ld   e, $7c                                      ; $658f: $1e $7c
	inc  bc                                          ; $6591: $03
	add  d                                           ; $6592: $82
	ld   a, h                                        ; $6593: $7c
	inc  b                                           ; $6594: $04
	ld   d, a                                        ; $6595: $57
	inc  b                                           ; $6596: $04
	ld   h, e                                        ; $6597: $63
	and  b                                           ; $6598: $a0
	ld   e, e                                        ; $6599: $5b
	ld   e, l                                        ; $659a: $5d
	nop                                              ; $659b: $00
	ld   [bc], a                                     ; $659c: $02
	rlca                                             ; $659d: $07
	ld   a, [hl]                                     ; $659e: $7e
	dec  b                                           ; $659f: $05
	ld   [bc], a                                     ; $65a0: $02
	ld   [bc], a                                     ; $65a1: $02
	ld   bc, $2000                                   ; $65a2: $01 $00 $20
	nop                                              ; $65a5: $00
	rlca                                             ; $65a6: $07
	or   $08                                         ; $65a7: $f6 $08
	ld   [bc], a                                     ; $65a9: $02
	ld   [bc], a                                     ; $65aa: $02
	ld   bc, $2001                                   ; $65ab: $01 $01 $20
	nop                                              ; $65ae: $00
	rlca                                             ; $65af: $07
	ld   e, c                                        ; $65b0: $59
	ld   [bc], a                                     ; $65b1: $02
	ld   [bc], a                                     ; $65b2: $02
	ld   [bc], a                                     ; $65b3: $02
	ld   bc, $2002                                   ; $65b4: $01 $02 $20
	nop                                              ; $65b7: $00
	jr   jr_059_65bd                                 ; $65b8: $18 $03

	ld   bc, $cf02                                   ; $65ba: $01 $02 $cf

jr_059_65bd:
	dec  b                                           ; $65bd: $05
	ld   a, [de]                                     ; $65be: $1a
	ld   e, c                                        ; $65bf: $59
	sub  a                                           ; $65c0: $97
	ld   a, h                                        ; $65c1: $7c
	inc  b                                           ; $65c2: $04
	ld   d, a                                        ; $65c3: $57
	inc  b                                           ; $65c4: $04
	ld   h, e                                        ; $65c5: $63
	and  b                                           ; $65c6: $a0
	ld   e, e                                        ; $65c7: $5b
	ld   e, l                                        ; $65c8: $5d

Call_059_65c9:
	nop                                              ; $65c9: $00
	nop                                              ; $65ca: $00
	and  e                                           ; $65cb: $a3
	and  l                                           ; $65cc: $a5
	db   $ec                                         ; $65cd: $ec
	cp   d                                           ; $65ce: $ba
	ld   e, c                                        ; $65cf: $59
	sub  a                                           ; $65d0: $97
	ld   a, h                                        ; $65d1: $7c
	inc  b                                           ; $65d2: $04
	ld   d, a                                        ; $65d3: $57
	inc  b                                           ; $65d4: $04
	ld   h, e                                        ; $65d5: $63
	and  b                                           ; $65d6: $a0
	ld   e, e                                        ; $65d7: $5b
	ld   e, l                                        ; $65d8: $5d
	nop                                              ; $65d9: $00
	ld   bc, $7c6b                                   ; $65da: $01 $6b $7c
	inc  b                                           ; $65dd: $04
	ld   e, $7c                                      ; $65de: $1e $7c
	inc  bc                                          ; $65e0: $03
	add  d                                           ; $65e1: $82
	ld   a, h                                        ; $65e2: $7c
	inc  b                                           ; $65e3: $04
	ld   d, a                                        ; $65e4: $57
	inc  b                                           ; $65e5: $04
	ld   h, e                                        ; $65e6: $63
	and  b                                           ; $65e7: $a0
	ld   e, e                                        ; $65e8: $5b
	ld   e, l                                        ; $65e9: $5d
	nop                                              ; $65ea: $00
	ld   [bc], a                                     ; $65eb: $02
	rlca                                             ; $65ec: $07
	call z, $0207                                    ; $65ed: $cc $07 $02
	ld   [bc], a                                     ; $65f0: $02
	ld   bc, $2000                                   ; $65f1: $01 $00 $20
	nop                                              ; $65f4: $00
	rlca                                             ; $65f5: $07
	and  h                                           ; $65f6: $a4
	ld   b, $02                                      ; $65f7: $06 $02
	ld   [bc], a                                     ; $65f9: $02
	ld   bc, $2001                                   ; $65fa: $01 $01 $20
	nop                                              ; $65fd: $00
	rlca                                             ; $65fe: $07
	xor  b                                           ; $65ff: $a8
	ld   [bc], a                                     ; $6600: $02
	ld   [bc], a                                     ; $6601: $02
	ld   [bc], a                                     ; $6602: $02
	ld   bc, $2002                                   ; $6603: $01 $02 $20
	nop                                              ; $6606: $00
	jr   @+$04                                       ; $6607: $18 $02

	ld   bc, $7192                                   ; $6609: $01 $92 $71
	ld   a, a                                        ; $660c: $7f
	sbc  b                                           ; $660d: $98
	sub  d                                           ; $660e: $92
	adc  a                                           ; $660f: $8f
	sbc  c                                           ; $6610: $99
	nop                                              ; $6611: $00
	nop                                              ; $6612: $00
	ld   l, e                                        ; $6613: $6b
	ld   a, h                                        ; $6614: $7c
	inc  b                                           ; $6615: $04
	ld   e, $7c                                      ; $6616: $1e $7c
	inc  bc                                          ; $6618: $03
	add  d                                           ; $6619: $82
	ld   a, h                                        ; $661a: $7c
	inc  b                                           ; $661b: $04
	ld   d, a                                        ; $661c: $57
	inc  b                                           ; $661d: $04
	ld   h, e                                        ; $661e: $63
	and  b                                           ; $661f: $a0
	ld   e, e                                        ; $6620: $5b
	ld   e, l                                        ; $6621: $5d
	nop                                              ; $6622: $00
	ld   bc, $d707                                   ; $6623: $01 $07 $d7
	ld   [bc], a                                     ; $6626: $02
	ld   [bc], a                                     ; $6627: $02
	ld   [bc], a                                     ; $6628: $02
	ld   bc, $2000                                   ; $6629: $01 $00 $20
	nop                                              ; $662c: $00
	rlca                                             ; $662d: $07
	cp   a                                           ; $662e: $bf
	ld   bc, $0202                                   ; $662f: $01 $02 $02
	ld   bc, $2001                                   ; $6632: $01 $01 $20
	nop                                              ; $6635: $00
	rrca                                             ; $6636: $0f
	nop                                              ; $6637: $00
	ld   bc, $5001                                   ; $6638: $01 $01 $50
	sbc  [hl]                                        ; $663b: $9e
	sub  d                                           ; $663c: $92
	ld   [hl], c                                     ; $663d: $71
	ld   a, a                                        ; $663e: $7f
	sbc  b                                           ; $663f: $98
	ld   d, d                                        ; $6640: $52
	ld   d, d                                        ; $6641: $52
	ld   [hl], l                                     ; $6642: $75
	ld   h, a                                        ; $6643: $67
	sbc  a                                           ; $6644: $9f
	dec  c                                           ; $6645: $0d
	ld   [hl], l                                     ; $6646: $75
	ld   a, l                                        ; $6647: $7d
	sbc  [hl]                                        ; $6648: $9e
	inc  bc                                          ; $6649: $03
	add  e                                           ; $664a: $83
	dec  b                                           ; $664b: $05
	dec  c                                           ; $664c: $0d
	ld   h, l                                        ; $664d: $65
	adc  h                                           ; $664e: $8c
	ld   h, a                                        ; $664f: $67
	sbc  a                                           ; $6650: $9f
	dec  c                                           ; $6651: $0d
	nop                                              ; $6652: $00
	ld   a, [bc]                                     ; $6653: $0a
	rrca                                             ; $6654: $0f
	add  hl, bc                                      ; $6655: $09
	nop                                              ; $6656: $00
	ld   bc, $546b                                   ; $6657: $01 $6b $54
	ld   e, c                                        ; $665a: $59
	ld   d, d                                        ; $665b: $52
	sbc  a                                           ; $665c: $9f
	dec  c                                           ; $665d: $0d
	ld   [hl], l                                     ; $665e: $75
	sub  b                                           ; $665f: $90
	sbc  [hl]                                        ; $6660: $9e
	inc  b                                           ; $6661: $04
	di                                               ; $6662: $f3
	ld   e, d                                        ; $6663: $5a
	ld   d, b                                        ; $6664: $50
	ld   [hl], c                                     ; $6665: $71
	ld   l, l                                        ; $6666: $6d
	sub  a                                           ; $6667: $97
	dec  c                                           ; $6668: $0d
	ld   d, d                                        ; $6669: $52
	ld   [hl], d                                     ; $666a: $72
	ld   [hl], l                                     ; $666b: $75
	sub  b                                           ; $666c: $90
	dec  b                                           ; $666d: $05
	db   $10                                         ; $666e: $10
	sbc  c                                           ; $666f: $99
	halt                                             ; $6670: $76
	ld   d, d                                        ; $6671: $52
	ld   d, d                                        ; $6672: $52
	sbc  a                                           ; $6673: $9f
	dec  c                                           ; $6674: $0d
	nop                                              ; $6675: $00
	ld   a, [bc]                                     ; $6676: $0a
	ld   bc, $9166                                   ; $6677: $01 $66 $91
	sbc  [hl]                                        ; $667a: $9e
	ld   e, d                                        ; $667b: $5a
	and  c                                           ; $667c: $a1
	ld   a, [hl]                                     ; $667d: $7e
	sbc  d                                           ; $667e: $9a
	sub  [hl]                                        ; $667f: $96
	sbc  a                                           ; $6680: $9f
	dec  c                                           ; $6681: $0d
	nop                                              ; $6682: $00
	ld   a, [bc]                                     ; $6683: $0a
	nop                                              ; $6684: $00
	rrca                                             ; $6685: $0f
	nop                                              ; $6686: $00
	ld   bc, $6301                                   ; $6687: $01 $01 $63

jr_059_668a:
	ld   e, l                                        ; $668a: $5d
	sub  a                                           ; $668b: $97
	ld   h, e                                        ; $668c: $63
	and  c                                           ; $668d: $a1
	ld   a, h                                        ; $668e: $7c
	inc  b                                           ; $668f: $04
	ld   l, l                                        ; $6690: $6d
	add  [hl]                                        ; $6691: $86
	ld   a, h                                        ; $6692: $7c
	inc  b                                           ; $6693: $04
	ld   d, a                                        ; $6694: $57
	inc  b                                           ; $6695: $04
	ld   h, e                                        ; $6696: $63
	ld   [hl], c                                     ; $6697: $71
	ld   [hl], h                                     ; $6698: $74
	dec  c                                           ; $6699: $0d
	ld   [hl], a                                     ; $669a: $77
	ld   d, h                                        ; $669b: $54
	ld   a, b                                        ; $669c: $78
	and  c                                           ; $669d: $a1
	ld   [hl], l                                     ; $669e: $75
	ld   h, l                                        ; $669f: $65
	sub  l                                           ; $66a0: $95

jr_059_66a1:
	ld   d, h                                        ; $66a1: $54
	ld   e, c                                        ; $66a2: $59
	ld   sp, hl                                      ; $66a3: $f9
	dec  c                                           ; $66a4: $0d
	nop                                              ; $66a5: $00
	ld   a, [bc]                                     ; $66a6: $0a
	rrca                                             ; $66a7: $0f
	add  hl, bc                                      ; $66a8: $09
	nop                                              ; $66a9: $00
	ld   bc, $8e83                                   ; $66aa: $01 $83 $8e
	sbc  [hl]                                        ; $66ad: $9e
	ld   l, e                                        ; $66ae: $6b
	ld   d, h                                        ; $66af: $54
	ld   l, [hl]                                     ; $66b0: $6e
	ld   a, b                                        ; $66b1: $78
	rst  $38                                         ; $66b2: $ff
	rst  $38                                         ; $66b3: $ff
	dec  c                                           ; $66b4: $0d
	nop                                              ; $66b5: $00
	ld   a, [bc]                                     ; $66b6: $0a
	rlca                                             ; $66b7: $07
	ret  nz                                          ; $66b8: $c0

	inc  bc                                          ; $66b9: $03
	inc  bc                                          ; $66ba: $03
	ld   de, $7301                                   ; $66bb: $11 $01 $73
	inc  hl                                          ; $66be: $23
	nop                                              ; $66bf: $00
	rlca                                             ; $66c0: $07
	rrca                                             ; $66c1: $0f
	inc  b                                           ; $66c2: $04
	inc  bc                                          ; $66c3: $03
	ld   de, $ac01                                   ; $66c4: $11 $01 $ac
	dec  h                                           ; $66c7: $25
	nop                                              ; $66c8: $00
	ld   bc, $5d63                                   ; $66c9: $01 $63 $5d
	sub  a                                           ; $66cc: $97
	ld   e, l                                        ; $66cd: $5d
	and  c                                           ; $66ce: $a1
	ld   a, h                                        ; $66cf: $7c
	sbc  [hl]                                        ; $66d0: $9e
	ld   [$5d00], sp                                 ; $66d1: $08 $00 $5d
	and  c                                           ; $66d4: $a1
	dec  c                                           ; $66d5: $0d
	add  [hl]                                        ; $66d6: $86
	ld   a, h                                        ; $66d7: $7c
	inc  b                                           ; $66d8: $04
	ld   d, a                                        ; $66d9: $57
	inc  b                                           ; $66da: $04
	ld   h, e                                        ; $66db: $63
	ld   a, l                                        ; $66dc: $7d
	sbc  [hl]                                        ; $66dd: $9e
	adc  h                                           ; $66de: $8c
	ld   d, b                                        ; $66df: $50
	adc  h                                           ; $66e0: $8c
	ld   d, b                                        ; $66e1: $50
	dec  c                                           ; $66e2: $0d
	halt                                             ; $66e3: $76
	ld   d, d                                        ; $66e4: $52
	ld   [hl], c                                     ; $66e5: $71
	ld   l, l                                        ; $66e6: $6d
	halt                                             ; $66e7: $76
	ld   h, c                                        ; $66e8: $61
	sbc  e                                           ; $66e9: $9b
	ld   e, c                                        ; $66ea: $59
	ld   a, b                                        ; $66eb: $78
	sbc  a                                           ; $66ec: $9f
	dec  c                                           ; $66ed: $0d
	nop                                              ; $66ee: $00
	ld   a, [bc]                                     ; $66ef: $0a
	ld   bc, $5d76                                   ; $66f0: $01 $76 $5d
	ld   a, c                                        ; $66f3: $79
	ld   [bc], a                                     ; $66f4: $02
	jr   z, jr_059_6749                              ; $66f5: $28 $52

	dec  b                                           ; $66f7: $05
	jr   nz, jr_059_668a                             ; $66f8: $20 $90

	ld   [bc], a                                     ; $66fa: $02
	jp   nz, Jump_059_7859                           ; $66fb: $c2 $59 $78

	ld   d, d                                        ; $66fe: $52
	ld   h, l                                        ; $66ff: $65
	rst  $38                                         ; $6700: $ff
	rst  $38                                         ; $6701: $ff
	dec  c                                           ; $6702: $0d
	ld   e, c                                        ; $6703: $59
	halt                                             ; $6704: $76
	ld   d, d                                        ; $6705: $52
	ld   [hl], c                                     ; $6706: $71
	ld   [hl], h                                     ; $6707: $74
	sbc  [hl]                                        ; $6708: $9e
	ld   d, d                                        ; $6709: $52
	ld   d, d                                        ; $670a: $52
	halt                                             ; $670b: $76
	ld   d, d                                        ; $670c: $52
	ld   d, h                                        ; $670d: $54
	dec  b                                           ; $670e: $05
	jr   nz, jr_059_66a1                             ; $670f: $20 $90

	dec  c                                           ; $6711: $0d
	ld   [bc], a                                     ; $6712: $02
	jp   nz, Jump_059_7859                           ; $6713: $c2 $59 $78

	ld   d, d                                        ; $6716: $52
	ld   a, b                                        ; $6717: $78
	sbc  a                                           ; $6718: $9f
	dec  c                                           ; $6719: $0d
	nop                                              ; $671a: $00
	ld   a, [bc]                                     ; $671b: $0a
	ld   b, $1c                                      ; $671c: $06 $1c
	ld   a, [bc]                                     ; $671e: $0a
	ld   bc, $5d63                                   ; $671f: $01 $63 $5d
	sub  a                                           ; $6722: $97
	ld   e, l                                        ; $6723: $5d
	and  c                                           ; $6724: $a1
	ld   a, h                                        ; $6725: $7c
	sbc  [hl]                                        ; $6726: $9e
	ld   [$5d00], sp                                 ; $6727: $08 $00 $5d
	and  c                                           ; $672a: $a1
	dec  c                                           ; $672b: $0d
	add  [hl]                                        ; $672c: $86
	ld   a, h                                        ; $672d: $7c
	inc  b                                           ; $672e: $04
	ld   d, a                                        ; $672f: $57
	inc  b                                           ; $6730: $04
	ld   h, e                                        ; $6731: $63
	ld   a, l                                        ; $6732: $7d
	rst  $38                                         ; $6733: $ff
	rst  $38                                         ; $6734: $ff
	dec  c                                           ; $6735: $0d
	ld   d, b                                        ; $6736: $50
	adc  h                                           ; $6737: $8c
	sbc  b                                           ; $6738: $98
	sub  [hl]                                        ; $6739: $96
	ld   e, l                                        ; $673a: $5d
	ld   a, b                                        ; $673b: $78
	ld   d, d                                        ; $673c: $52
	ld   a, b                                        ; $673d: $78
	sbc  a                                           ; $673e: $9f
	dec  c                                           ; $673f: $0d
	nop                                              ; $6740: $00
	ld   a, [bc]                                     ; $6741: $0a
	ld   bc, $7190                                   ; $6742: $01 $90 $71
	halt                                             ; $6745: $76
	ld   [bc], a                                     ; $6746: $02
	ld   a, [de]                                     ; $6747: $1a
	inc  bc                                          ; $6748: $03

jr_059_6749:
	ld   l, e                                        ; $6749: $6b
	ld   a, h                                        ; $674a: $7c
	ld   [bc], a                                     ; $674b: $02
	and  c                                           ; $674c: $a1
	inc  bc                                          ; $674d: $03
	and  b                                           ; $674e: $a0
	ld   l, a                                        ; $674f: $6f
	and  b                                           ; $6750: $a0
	dec  c                                           ; $6751: $0d
	ld   [bc], a                                     ; $6752: $02
	ld   h, l                                        ; $6753: $65
	ld   d, [hl]                                     ; $6754: $56
	ld   [hl], h                                     ; $6755: $74
	ld   [bc], a                                     ; $6756: $02
	ld   a, a                                        ; $6757: $7f
	inc  b                                           ; $6758: $04
	dec  de                                          ; $6759: $1b
	ld   h, l                                        ; $675a: $65
	ld   l, l                                        ; $675b: $6d
	adc  c                                           ; $675c: $89
	ld   d, h                                        ; $675d: $54
	ld   e, d                                        ; $675e: $5a
	ld   d, d                                        ; $675f: $52
	ld   d, d                                        ; $6760: $52
	halt                                             ; $6761: $76
	dec  c                                           ; $6762: $0d
	dec  b                                           ; $6763: $05
	pop  de                                          ; $6764: $d1
	ld   d, h                                        ; $6765: $54
	ld   l, h                                        ; $6766: $6c
	sbc  a                                           ; $6767: $9f
	dec  c                                           ; $6768: $0d
	nop                                              ; $6769: $00
	ld   a, [bc]                                     ; $676a: $0a
	ld   b, $1c                                      ; $676b: $06 $1c
	ld   a, [bc]                                     ; $676d: $0a
	ld   bc, $5d63                                   ; $676e: $01 $63 $5d
	sub  a                                           ; $6771: $97
	ld   e, l                                        ; $6772: $5d
	and  c                                           ; $6773: $a1
	ld   a, h                                        ; $6774: $7c
	sbc  [hl]                                        ; $6775: $9e
	ld   [$5d00], sp                                 ; $6776: $08 $00 $5d
	and  c                                           ; $6779: $a1
	dec  c                                           ; $677a: $0d
	add  [hl]                                        ; $677b: $86
	ld   a, h                                        ; $677c: $7c
	inc  b                                           ; $677d: $04
	ld   d, a                                        ; $677e: $57
	inc  b                                           ; $677f: $04
	ld   h, e                                        ; $6780: $63
	ld   a, l                                        ; $6781: $7d
	sbc  [hl]                                        ; $6782: $9e
	ld   e, c                                        ; $6783: $59
	ld   a, b                                        ; $6784: $78
	sbc  b                                           ; $6785: $98
	ld   d, d                                        ; $6786: $52
	ld   d, d                                        ; $6787: $52
	dec  c                                           ; $6788: $0d
	halt                                             ; $6789: $76
	dec  b                                           ; $678a: $05
	pop  de                                          ; $678b: $d1
	ld   d, h                                        ; $678c: $54
	ld   l, h                                        ; $678d: $6c
	sbc  a                                           ; $678e: $9f
	dec  c                                           ; $678f: $0d
	nop                                              ; $6790: $00
	ld   a, [bc]                                     ; $6791: $0a
	ld   bc, $ca02                                   ; $6792: $01 $02 $ca
	sub  b                                           ; $6795: $90
	ld   l, e                                        ; $6796: $6b
	sbc  d                                           ; $6797: $9a
	ld   a, c                                        ; $6798: $79
	ld   [bc], a                                     ; $6799: $02
	add  hl, bc                                      ; $679a: $09
	ld   d, [hl]                                     ; $679b: $56
	sub  a                                           ; $679c: $97
	sbc  d                                           ; $679d: $9a
	sbc  c                                           ; $679e: $99
	sub  [hl]                                        ; $679f: $96
	ld   d, h                                        ; $67a0: $54
	ld   a, c                                        ; $67a1: $79
	dec  c                                           ; $67a2: $0d
	ld   e, d                                        ; $67a3: $5a
	and  c                                           ; $67a4: $a1
	ld   a, [hl]                                     ; $67a5: $7e
	sbc  c                                           ; $67a6: $99
	and  c                                           ; $67a7: $a1
	ld   l, [hl]                                     ; $67a8: $6e
	ld   l, h                                        ; $67a9: $6c
	sbc  a                                           ; $67aa: $9f
	dec  c                                           ; $67ab: $0d
	nop                                              ; $67ac: $00
	ld   a, [bc]                                     ; $67ad: $0a
	ld   b, $1c                                      ; $67ae: $06 $1c
	ld   a, [bc]                                     ; $67b0: $0a
	rrca                                             ; $67b1: $0f
	nop                                              ; $67b2: $00
	ld   bc, $6701                                   ; $67b3: $01 $01 $67

jr_059_67b6:
	adc  l                                           ; $67b6: $8d
	sbc  d                                           ; $67b7: $9a
	ld   h, e                                        ; $67b8: $63
	and  c                                           ; $67b9: $a1
	ld   a, h                                        ; $67ba: $7c
	inc  b                                           ; $67bb: $04
	ld   l, l                                        ; $67bc: $6d
	add  [hl]                                        ; $67bd: $86
	ld   a, h                                        ; $67be: $7c
	inc  b                                           ; $67bf: $04
	ld   d, a                                        ; $67c0: $57
	inc  b                                           ; $67c1: $04
	ld   h, e                                        ; $67c2: $63
	ld   [hl], c                                     ; $67c3: $71
	ld   [hl], h                                     ; $67c4: $74
	dec  c                                           ; $67c5: $0d
	ld   [hl], a                                     ; $67c6: $77
	ld   d, h                                        ; $67c7: $54
	ld   a, b                                        ; $67c8: $78
	and  c                                           ; $67c9: $a1
	ld   [hl], l                                     ; $67ca: $75
	ld   h, l                                        ; $67cb: $65
	sub  l                                           ; $67cc: $95

jr_059_67cd:
	ld   d, h                                        ; $67cd: $54
	ld   e, c                                        ; $67ce: $59
	ld   sp, hl                                      ; $67cf: $f9
	dec  c                                           ; $67d0: $0d
	nop                                              ; $67d1: $00
	ld   a, [bc]                                     ; $67d2: $0a
	rrca                                             ; $67d3: $0f
	add  hl, bc                                      ; $67d4: $09
	nop                                              ; $67d5: $00
	ld   bc, $8e83                                   ; $67d6: $01 $83 $8e
	sbc  [hl]                                        ; $67d9: $9e
	ld   l, e                                        ; $67da: $6b
	ld   d, h                                        ; $67db: $54
	ld   l, [hl]                                     ; $67dc: $6e
	ld   a, b                                        ; $67dd: $78
	rst  $38                                         ; $67de: $ff
	rst  $38                                         ; $67df: $ff
	dec  c                                           ; $67e0: $0d
	nop                                              ; $67e1: $00
	ld   a, [bc]                                     ; $67e2: $0a
	rlca                                             ; $67e3: $07
	db   $ec                                         ; $67e4: $ec
	inc  b                                           ; $67e5: $04
	inc  bc                                          ; $67e6: $03
	ld   [de], a                                     ; $67e7: $12
	ld   bc, $2373                                   ; $67e8: $01 $73 $23
	nop                                              ; $67eb: $00
	rlca                                             ; $67ec: $07
	dec  sp                                          ; $67ed: $3b
	dec  b                                           ; $67ee: $05
	inc  bc                                          ; $67ef: $03
	ld   [de], a                                     ; $67f0: $12
	ld   bc, $25ac                                   ; $67f1: $01 $ac $25
	nop                                              ; $67f4: $00
	ld   bc, $8d67                                   ; $67f5: $01 $67 $8d
	sbc  d                                           ; $67f8: $9a
	ld   e, l                                        ; $67f9: $5d
	and  c                                           ; $67fa: $a1
	ld   a, h                                        ; $67fb: $7c
	sbc  [hl]                                        ; $67fc: $9e
	ld   [$5d00], sp                                 ; $67fd: $08 $00 $5d
	and  c                                           ; $6800: $a1
	dec  c                                           ; $6801: $0d
	add  [hl]                                        ; $6802: $86
	ld   a, h                                        ; $6803: $7c
	inc  b                                           ; $6804: $04
	ld   d, a                                        ; $6805: $57
	inc  b                                           ; $6806: $04
	ld   h, e                                        ; $6807: $63
	ld   a, l                                        ; $6808: $7d
	sbc  [hl]                                        ; $6809: $9e
	adc  h                                           ; $680a: $8c
	ld   d, b                                        ; $680b: $50
	adc  h                                           ; $680c: $8c
	ld   d, b                                        ; $680d: $50
	dec  c                                           ; $680e: $0d
	halt                                             ; $680f: $76
	ld   d, d                                        ; $6810: $52
	ld   [hl], c                                     ; $6811: $71
	ld   l, l                                        ; $6812: $6d
	halt                                             ; $6813: $76
	ld   h, c                                        ; $6814: $61
	sbc  e                                           ; $6815: $9b
	ld   e, c                                        ; $6816: $59
	ld   a, b                                        ; $6817: $78
	sbc  a                                           ; $6818: $9f
	dec  c                                           ; $6819: $0d
	nop                                              ; $681a: $00
	ld   a, [bc]                                     ; $681b: $0a
	ld   bc, $5d76                                   ; $681c: $01 $76 $5d
	ld   a, c                                        ; $681f: $79
	ld   [bc], a                                     ; $6820: $02
	jr   z, jr_059_6875                              ; $6821: $28 $52

	dec  b                                           ; $6823: $05
	jr   nz, jr_059_67b6                             ; $6824: $20 $90

	ld   [bc], a                                     ; $6826: $02
	jp   nz, Jump_059_7859                           ; $6827: $c2 $59 $78

	ld   d, d                                        ; $682a: $52
	ld   h, l                                        ; $682b: $65
	rst  $38                                         ; $682c: $ff
	rst  $38                                         ; $682d: $ff
	dec  c                                           ; $682e: $0d
	ld   e, c                                        ; $682f: $59
	halt                                             ; $6830: $76
	ld   d, d                                        ; $6831: $52
	ld   [hl], c                                     ; $6832: $71
	ld   [hl], h                                     ; $6833: $74
	sbc  [hl]                                        ; $6834: $9e
	ld   d, d                                        ; $6835: $52
	ld   d, d                                        ; $6836: $52
	halt                                             ; $6837: $76
	ld   d, d                                        ; $6838: $52
	ld   d, h                                        ; $6839: $54
	dec  b                                           ; $683a: $05
	jr   nz, jr_059_67cd                             ; $683b: $20 $90

	dec  c                                           ; $683d: $0d
	ld   [bc], a                                     ; $683e: $02
	jp   nz, Jump_059_7859                           ; $683f: $c2 $59 $78

	ld   d, d                                        ; $6842: $52
	ld   a, b                                        ; $6843: $78
	sbc  a                                           ; $6844: $9f
	dec  c                                           ; $6845: $0d
	nop                                              ; $6846: $00
	ld   a, [bc]                                     ; $6847: $0a
	ld   b, $1c                                      ; $6848: $06 $1c
	ld   a, [bc]                                     ; $684a: $0a
	ld   bc, $8d67                                   ; $684b: $01 $67 $8d
	sbc  d                                           ; $684e: $9a
	ld   e, l                                        ; $684f: $5d
	and  c                                           ; $6850: $a1
	ld   a, h                                        ; $6851: $7c
	sbc  [hl]                                        ; $6852: $9e
	ld   [$5d00], sp                                 ; $6853: $08 $00 $5d
	and  c                                           ; $6856: $a1
	dec  c                                           ; $6857: $0d
	add  [hl]                                        ; $6858: $86
	ld   a, h                                        ; $6859: $7c
	inc  b                                           ; $685a: $04
	ld   d, a                                        ; $685b: $57
	inc  b                                           ; $685c: $04
	ld   h, e                                        ; $685d: $63
	ld   a, l                                        ; $685e: $7d
	rst  $38                                         ; $685f: $ff
	rst  $38                                         ; $6860: $ff
	dec  c                                           ; $6861: $0d
	ld   d, b                                        ; $6862: $50
	adc  h                                           ; $6863: $8c
	sbc  b                                           ; $6864: $98
	sub  [hl]                                        ; $6865: $96
	ld   e, l                                        ; $6866: $5d
	ld   a, b                                        ; $6867: $78
	ld   d, d                                        ; $6868: $52
	ld   a, b                                        ; $6869: $78
	sbc  a                                           ; $686a: $9f
	dec  c                                           ; $686b: $0d
	nop                                              ; $686c: $00
	ld   a, [bc]                                     ; $686d: $0a
	ld   bc, $7190                                   ; $686e: $01 $90 $71
	halt                                             ; $6871: $76
	ld   [bc], a                                     ; $6872: $02
	ld   a, [de]                                     ; $6873: $1a
	inc  bc                                          ; $6874: $03

jr_059_6875:
	ld   l, e                                        ; $6875: $6b
	ld   a, h                                        ; $6876: $7c
	ld   [bc], a                                     ; $6877: $02
	and  c                                           ; $6878: $a1
	inc  bc                                          ; $6879: $03
	and  b                                           ; $687a: $a0
	ld   l, a                                        ; $687b: $6f
	and  b                                           ; $687c: $a0
	dec  c                                           ; $687d: $0d
	ld   [bc], a                                     ; $687e: $02
	ld   h, l                                        ; $687f: $65
	ld   d, [hl]                                     ; $6880: $56
	ld   [hl], h                                     ; $6881: $74
	ld   [bc], a                                     ; $6882: $02
	ld   a, a                                        ; $6883: $7f
	inc  b                                           ; $6884: $04
	dec  de                                          ; $6885: $1b
	ld   h, l                                        ; $6886: $65
	ld   l, l                                        ; $6887: $6d
	adc  c                                           ; $6888: $89
	ld   d, h                                        ; $6889: $54
	ld   e, d                                        ; $688a: $5a
	ld   d, d                                        ; $688b: $52
	ld   d, d                                        ; $688c: $52
	halt                                             ; $688d: $76
	dec  c                                           ; $688e: $0d
	dec  b                                           ; $688f: $05
	pop  de                                          ; $6890: $d1
	ld   d, h                                        ; $6891: $54
	ld   l, h                                        ; $6892: $6c
	sbc  a                                           ; $6893: $9f
	dec  c                                           ; $6894: $0d
	nop                                              ; $6895: $00
	ld   a, [bc]                                     ; $6896: $0a
	ld   b, $1c                                      ; $6897: $06 $1c
	ld   a, [bc]                                     ; $6899: $0a
	ld   bc, $8d67                                   ; $689a: $01 $67 $8d
	sbc  d                                           ; $689d: $9a
	ld   e, l                                        ; $689e: $5d
	and  c                                           ; $689f: $a1
	ld   a, h                                        ; $68a0: $7c
	sbc  [hl]                                        ; $68a1: $9e
	ld   [$5d00], sp                                 ; $68a2: $08 $00 $5d
	and  c                                           ; $68a5: $a1
	dec  c                                           ; $68a6: $0d
	add  [hl]                                        ; $68a7: $86
	ld   a, h                                        ; $68a8: $7c
	inc  b                                           ; $68a9: $04
	ld   d, a                                        ; $68aa: $57
	inc  b                                           ; $68ab: $04
	ld   h, e                                        ; $68ac: $63
	ld   a, l                                        ; $68ad: $7d
	sbc  [hl]                                        ; $68ae: $9e
	ld   e, c                                        ; $68af: $59
	ld   a, b                                        ; $68b0: $78
	sbc  b                                           ; $68b1: $98
	ld   d, d                                        ; $68b2: $52
	ld   d, d                                        ; $68b3: $52
	dec  c                                           ; $68b4: $0d
	halt                                             ; $68b5: $76
	dec  b                                           ; $68b6: $05
	pop  de                                          ; $68b7: $d1
	ld   d, h                                        ; $68b8: $54
	ld   l, h                                        ; $68b9: $6c
	sbc  a                                           ; $68ba: $9f
	dec  c                                           ; $68bb: $0d
	nop                                              ; $68bc: $00
	ld   a, [bc]                                     ; $68bd: $0a
	ld   bc, $ca02                                   ; $68be: $01 $02 $ca
	sub  b                                           ; $68c1: $90
	ld   l, e                                        ; $68c2: $6b
	sbc  d                                           ; $68c3: $9a
	ld   a, c                                        ; $68c4: $79
	ld   [bc], a                                     ; $68c5: $02
	add  hl, bc                                      ; $68c6: $09
	ld   d, [hl]                                     ; $68c7: $56
	sub  a                                           ; $68c8: $97
	sbc  d                                           ; $68c9: $9a
	sbc  c                                           ; $68ca: $99
	sub  [hl]                                        ; $68cb: $96
	ld   d, h                                        ; $68cc: $54
	ld   a, c                                        ; $68cd: $79
	dec  c                                           ; $68ce: $0d
	ld   e, d                                        ; $68cf: $5a
	and  c                                           ; $68d0: $a1
	ld   a, [hl]                                     ; $68d1: $7e
	sbc  c                                           ; $68d2: $99
	and  c                                           ; $68d3: $a1
	ld   l, [hl]                                     ; $68d4: $6e
	ld   l, h                                        ; $68d5: $6c
	sbc  a                                           ; $68d6: $9f
	dec  c                                           ; $68d7: $0d
	nop                                              ; $68d8: $00
	ld   a, [bc]                                     ; $68d9: $0a
	ld   b, $1c                                      ; $68da: $06 $1c
	ld   a, [bc]                                     ; $68dc: $0a
	rrca                                             ; $68dd: $0f
	nop                                              ; $68de: $00
	ld   bc, $df01                                   ; $68df: $01 $01 $df
	db   $ec                                         ; $68e2: $ec
	and  e                                           ; $68e3: $a3
	ld   h, e                                        ; $68e4: $63
	and  c                                           ; $68e5: $a1
	ld   a, h                                        ; $68e6: $7c
	inc  b                                           ; $68e7: $04
	ld   l, l                                        ; $68e8: $6d
	add  [hl]                                        ; $68e9: $86
	ld   a, h                                        ; $68ea: $7c
	inc  b                                           ; $68eb: $04
	ld   d, a                                        ; $68ec: $57
	inc  b                                           ; $68ed: $04
	ld   h, e                                        ; $68ee: $63
	ld   [hl], c                                     ; $68ef: $71
	ld   [hl], h                                     ; $68f0: $74
	dec  c                                           ; $68f1: $0d
	ld   [hl], a                                     ; $68f2: $77
	ld   d, h                                        ; $68f3: $54
	ld   a, b                                        ; $68f4: $78
	and  c                                           ; $68f5: $a1
	ld   [hl], l                                     ; $68f6: $75

jr_059_68f7:
	ld   h, l                                        ; $68f7: $65
	sub  l                                           ; $68f8: $95
	ld   d, h                                        ; $68f9: $54
	ld   e, c                                        ; $68fa: $59
	ld   sp, hl                                      ; $68fb: $f9
	dec  c                                           ; $68fc: $0d
	nop                                              ; $68fd: $00
	ld   a, [bc]                                     ; $68fe: $0a
	rrca                                             ; $68ff: $0f
	add  hl, bc                                      ; $6900: $09
	nop                                              ; $6901: $00
	ld   bc, $8e83                                   ; $6902: $01 $83 $8e
	sbc  [hl]                                        ; $6905: $9e
	ld   l, e                                        ; $6906: $6b
	ld   d, h                                        ; $6907: $54
	ld   l, [hl]                                     ; $6908: $6e
	ld   a, b                                        ; $6909: $78
	rst  $38                                         ; $690a: $ff
	rst  $38                                         ; $690b: $ff
	dec  c                                           ; $690c: $0d
	nop                                              ; $690d: $00
	ld   a, [bc]                                     ; $690e: $0a
	rlca                                             ; $690f: $07
	ld   d, $06                                      ; $6910: $16 $06
	inc  bc                                          ; $6912: $03
	inc  de                                          ; $6913: $13
	ld   bc, $2373                                   ; $6914: $01 $73 $23
	nop                                              ; $6917: $00
	rlca                                             ; $6918: $07
	ld   h, e                                        ; $6919: $63
	ld   b, $03                                      ; $691a: $06 $03
	inc  de                                          ; $691c: $13
	ld   bc, $25ac                                   ; $691d: $01 $ac $25
	nop                                              ; $6920: $00
	ld   bc, $ecdf                                   ; $6921: $01 $df $ec
	and  e                                           ; $6924: $a3
	ld   a, h                                        ; $6925: $7c
	sbc  [hl]                                        ; $6926: $9e
	ld   [$5d00], sp                                 ; $6927: $08 $00 $5d
	and  c                                           ; $692a: $a1
	dec  c                                           ; $692b: $0d
	add  [hl]                                        ; $692c: $86
	ld   a, h                                        ; $692d: $7c
	inc  b                                           ; $692e: $04
	ld   d, a                                        ; $692f: $57
	inc  b                                           ; $6930: $04
	ld   h, e                                        ; $6931: $63
	ld   a, l                                        ; $6932: $7d
	sbc  [hl]                                        ; $6933: $9e
	adc  h                                           ; $6934: $8c
	ld   d, b                                        ; $6935: $50
	adc  h                                           ; $6936: $8c
	ld   d, b                                        ; $6937: $50
	dec  c                                           ; $6938: $0d
	halt                                             ; $6939: $76
	ld   d, d                                        ; $693a: $52
	ld   [hl], c                                     ; $693b: $71
	ld   l, l                                        ; $693c: $6d
	halt                                             ; $693d: $76
	ld   h, c                                        ; $693e: $61
	sbc  e                                           ; $693f: $9b
	ld   e, c                                        ; $6940: $59
	ld   a, b                                        ; $6941: $78
	sbc  a                                           ; $6942: $9f
	dec  c                                           ; $6943: $0d
	nop                                              ; $6944: $00
	ld   a, [bc]                                     ; $6945: $0a
	ld   bc, $5d76                                   ; $6946: $01 $76 $5d
	ld   a, c                                        ; $6949: $79
	ld   [bc], a                                     ; $694a: $02
	jr   z, jr_059_699f                              ; $694b: $28 $52

	dec  b                                           ; $694d: $05
	jr   nz, @-$6e                                   ; $694e: $20 $90

	ld   [bc], a                                     ; $6950: $02
	jp   nz, Jump_059_7859                           ; $6951: $c2 $59 $78

	ld   d, d                                        ; $6954: $52
	ld   h, l                                        ; $6955: $65
	rst  $38                                         ; $6956: $ff
	rst  $38                                         ; $6957: $ff
	dec  c                                           ; $6958: $0d
	ld   e, c                                        ; $6959: $59
	halt                                             ; $695a: $76
	ld   d, d                                        ; $695b: $52
	ld   [hl], c                                     ; $695c: $71
	ld   [hl], h                                     ; $695d: $74
	sbc  [hl]                                        ; $695e: $9e
	ld   d, d                                        ; $695f: $52
	ld   d, d                                        ; $6960: $52
	halt                                             ; $6961: $76
	ld   d, d                                        ; $6962: $52
	ld   d, h                                        ; $6963: $54
	dec  b                                           ; $6964: $05
	jr   nz, jr_059_68f7                             ; $6965: $20 $90

	dec  c                                           ; $6967: $0d
	ld   [bc], a                                     ; $6968: $02
	jp   nz, Jump_059_7859                           ; $6969: $c2 $59 $78

	ld   d, d                                        ; $696c: $52
	ld   a, b                                        ; $696d: $78
	sbc  a                                           ; $696e: $9f
	dec  c                                           ; $696f: $0d
	nop                                              ; $6970: $00
	ld   a, [bc]                                     ; $6971: $0a
	ld   b, $1c                                      ; $6972: $06 $1c
	ld   a, [bc]                                     ; $6974: $0a
	ld   bc, $ecdf                                   ; $6975: $01 $df $ec
	and  e                                           ; $6978: $a3
	ld   a, h                                        ; $6979: $7c
	sbc  [hl]                                        ; $697a: $9e
	ld   [$5d00], sp                                 ; $697b: $08 $00 $5d
	and  c                                           ; $697e: $a1
	dec  c                                           ; $697f: $0d
	add  [hl]                                        ; $6980: $86
	ld   a, h                                        ; $6981: $7c
	inc  b                                           ; $6982: $04
	ld   d, a                                        ; $6983: $57
	inc  b                                           ; $6984: $04
	ld   h, e                                        ; $6985: $63
	ld   a, l                                        ; $6986: $7d
	rst  $38                                         ; $6987: $ff
	rst  $38                                         ; $6988: $ff
	dec  c                                           ; $6989: $0d
	ld   d, b                                        ; $698a: $50
	adc  h                                           ; $698b: $8c
	sbc  b                                           ; $698c: $98
	sub  [hl]                                        ; $698d: $96
	ld   e, l                                        ; $698e: $5d
	ld   a, b                                        ; $698f: $78
	ld   d, d                                        ; $6990: $52
	ld   a, b                                        ; $6991: $78
	sbc  a                                           ; $6992: $9f
	dec  c                                           ; $6993: $0d
	nop                                              ; $6994: $00
	ld   a, [bc]                                     ; $6995: $0a
	ld   bc, $7190                                   ; $6996: $01 $90 $71
	halt                                             ; $6999: $76
	ld   [bc], a                                     ; $699a: $02
	ld   a, [de]                                     ; $699b: $1a
	inc  bc                                          ; $699c: $03
	ld   l, e                                        ; $699d: $6b
	ld   a, h                                        ; $699e: $7c

jr_059_699f:
	ld   [bc], a                                     ; $699f: $02
	and  c                                           ; $69a0: $a1
	inc  bc                                          ; $69a1: $03
	and  b                                           ; $69a2: $a0
	ld   l, a                                        ; $69a3: $6f
	and  b                                           ; $69a4: $a0
	dec  c                                           ; $69a5: $0d
	ld   [bc], a                                     ; $69a6: $02
	ld   h, l                                        ; $69a7: $65
	ld   d, [hl]                                     ; $69a8: $56
	ld   [hl], h                                     ; $69a9: $74
	ld   [bc], a                                     ; $69aa: $02
	ld   a, a                                        ; $69ab: $7f
	inc  b                                           ; $69ac: $04
	dec  de                                          ; $69ad: $1b
	ld   h, l                                        ; $69ae: $65
	ld   l, l                                        ; $69af: $6d
	adc  c                                           ; $69b0: $89
	ld   d, h                                        ; $69b1: $54
	ld   e, d                                        ; $69b2: $5a
	ld   d, d                                        ; $69b3: $52
	ld   d, d                                        ; $69b4: $52
	halt                                             ; $69b5: $76
	dec  c                                           ; $69b6: $0d
	dec  b                                           ; $69b7: $05
	pop  de                                          ; $69b8: $d1
	ld   d, h                                        ; $69b9: $54
	ld   l, h                                        ; $69ba: $6c
	sbc  a                                           ; $69bb: $9f
	dec  c                                           ; $69bc: $0d
	nop                                              ; $69bd: $00
	ld   a, [bc]                                     ; $69be: $0a
	ld   b, $1c                                      ; $69bf: $06 $1c
	ld   a, [bc]                                     ; $69c1: $0a
	ld   bc, $ecdf                                   ; $69c2: $01 $df $ec
	and  e                                           ; $69c5: $a3
	ld   a, h                                        ; $69c6: $7c
	sbc  [hl]                                        ; $69c7: $9e
	ld   [$5d00], sp                                 ; $69c8: $08 $00 $5d
	and  c                                           ; $69cb: $a1
	dec  c                                           ; $69cc: $0d
	add  [hl]                                        ; $69cd: $86
	ld   a, h                                        ; $69ce: $7c
	inc  b                                           ; $69cf: $04
	ld   d, a                                        ; $69d0: $57
	inc  b                                           ; $69d1: $04
	ld   h, e                                        ; $69d2: $63
	ld   a, l                                        ; $69d3: $7d
	sbc  [hl]                                        ; $69d4: $9e
	ld   e, c                                        ; $69d5: $59
	ld   a, b                                        ; $69d6: $78
	sbc  b                                           ; $69d7: $98
	ld   d, d                                        ; $69d8: $52
	ld   d, d                                        ; $69d9: $52
	dec  c                                           ; $69da: $0d
	halt                                             ; $69db: $76
	dec  b                                           ; $69dc: $05
	pop  de                                          ; $69dd: $d1
	ld   d, h                                        ; $69de: $54
	ld   l, h                                        ; $69df: $6c
	sbc  a                                           ; $69e0: $9f
	dec  c                                           ; $69e1: $0d
	nop                                              ; $69e2: $00
	ld   a, [bc]                                     ; $69e3: $0a
	ld   bc, $ca02                                   ; $69e4: $01 $02 $ca
	sub  b                                           ; $69e7: $90
	ld   l, e                                        ; $69e8: $6b
	sbc  d                                           ; $69e9: $9a
	ld   a, c                                        ; $69ea: $79
	ld   [bc], a                                     ; $69eb: $02
	add  hl, bc                                      ; $69ec: $09
	ld   d, [hl]                                     ; $69ed: $56
	sub  a                                           ; $69ee: $97
	sbc  d                                           ; $69ef: $9a
	sbc  c                                           ; $69f0: $99
	sub  [hl]                                        ; $69f1: $96
	ld   d, h                                        ; $69f2: $54
	ld   a, c                                        ; $69f3: $79
	dec  c                                           ; $69f4: $0d
	ld   e, d                                        ; $69f5: $5a
	and  c                                           ; $69f6: $a1
	ld   a, [hl]                                     ; $69f7: $7e
	sbc  c                                           ; $69f8: $99
	and  c                                           ; $69f9: $a1
	ld   l, [hl]                                     ; $69fa: $6e
	ld   l, h                                        ; $69fb: $6c
	sbc  a                                           ; $69fc: $9f
	dec  c                                           ; $69fd: $0d
	nop                                              ; $69fe: $00
	ld   a, [bc]                                     ; $69ff: $0a
	ld   b, $1c                                      ; $6a00: $06 $1c
	ld   a, [bc]                                     ; $6a02: $0a
	rrca                                             ; $6a03: $0f
	nop                                              ; $6a04: $00
	ld   bc, $a301                                   ; $6a05: $01 $01 $a3
	and  l                                           ; $6a08: $a5
	db   $ec                                         ; $6a09: $ec
	cp   d                                           ; $6a0a: $ba
	ld   a, h                                        ; $6a0b: $7c
	inc  b                                           ; $6a0c: $04
	ld   l, l                                        ; $6a0d: $6d
	add  [hl]                                        ; $6a0e: $86
	ld   a, h                                        ; $6a0f: $7c
	inc  b                                           ; $6a10: $04
	ld   d, a                                        ; $6a11: $57
	inc  b                                           ; $6a12: $04
	ld   h, e                                        ; $6a13: $63
	ld   [hl], c                                     ; $6a14: $71
	ld   [hl], h                                     ; $6a15: $74
	dec  c                                           ; $6a16: $0d
	ld   [hl], a                                     ; $6a17: $77
	ld   d, h                                        ; $6a18: $54
	ld   a, b                                        ; $6a19: $78
	and  c                                           ; $6a1a: $a1
	ld   [hl], l                                     ; $6a1b: $75
	ld   h, l                                        ; $6a1c: $65

jr_059_6a1d:
	sub  l                                           ; $6a1d: $95
	ld   d, h                                        ; $6a1e: $54
	ld   e, c                                        ; $6a1f: $59
	ld   sp, hl                                      ; $6a20: $f9
	dec  c                                           ; $6a21: $0d
	nop                                              ; $6a22: $00
	ld   a, [bc]                                     ; $6a23: $0a
	rrca                                             ; $6a24: $0f
	add  hl, bc                                      ; $6a25: $09
	nop                                              ; $6a26: $00
	ld   bc, $8e83                                   ; $6a27: $01 $83 $8e
	sbc  [hl]                                        ; $6a2a: $9e
	ld   l, e                                        ; $6a2b: $6b
	ld   d, h                                        ; $6a2c: $54
	ld   l, [hl]                                     ; $6a2d: $6e
	ld   a, b                                        ; $6a2e: $78
	rst  $38                                         ; $6a2f: $ff
	rst  $38                                         ; $6a30: $ff
	dec  c                                           ; $6a31: $0d
	nop                                              ; $6a32: $00
	ld   a, [bc]                                     ; $6a33: $0a
	rlca                                             ; $6a34: $07
	inc  a                                           ; $6a35: $3c
	rlca                                             ; $6a36: $07
	inc  bc                                          ; $6a37: $03
	inc  d                                           ; $6a38: $14
	ld   bc, $2373                                   ; $6a39: $01 $73 $23
	nop                                              ; $6a3c: $00
	rlca                                             ; $6a3d: $07
	adc  d                                           ; $6a3e: $8a
	rlca                                             ; $6a3f: $07
	inc  bc                                          ; $6a40: $03
	inc  d                                           ; $6a41: $14
	ld   bc, $25ac                                   ; $6a42: $01 $ac $25
	nop                                              ; $6a45: $00
	ld   bc, $a5a3                                   ; $6a46: $01 $a3 $a5
	db   $ec                                         ; $6a49: $ec
	cp   d                                           ; $6a4a: $ba
	ld   a, h                                        ; $6a4b: $7c
	sbc  [hl]                                        ; $6a4c: $9e
	ld   [$5d00], sp                                 ; $6a4d: $08 $00 $5d
	and  c                                           ; $6a50: $a1
	dec  c                                           ; $6a51: $0d
	add  [hl]                                        ; $6a52: $86
	ld   a, h                                        ; $6a53: $7c
	inc  b                                           ; $6a54: $04
	ld   d, a                                        ; $6a55: $57
	inc  b                                           ; $6a56: $04
	ld   h, e                                        ; $6a57: $63
	ld   a, l                                        ; $6a58: $7d
	sbc  [hl]                                        ; $6a59: $9e
	adc  h                                           ; $6a5a: $8c
	ld   d, b                                        ; $6a5b: $50
	adc  h                                           ; $6a5c: $8c
	ld   d, b                                        ; $6a5d: $50
	dec  c                                           ; $6a5e: $0d
	halt                                             ; $6a5f: $76
	ld   d, d                                        ; $6a60: $52
	ld   [hl], c                                     ; $6a61: $71
	ld   l, l                                        ; $6a62: $6d
	halt                                             ; $6a63: $76
	ld   h, c                                        ; $6a64: $61
	sbc  e                                           ; $6a65: $9b
	ld   e, c                                        ; $6a66: $59
	ld   a, b                                        ; $6a67: $78
	sbc  a                                           ; $6a68: $9f
	dec  c                                           ; $6a69: $0d
	nop                                              ; $6a6a: $00
	ld   a, [bc]                                     ; $6a6b: $0a
	ld   bc, $5d76                                   ; $6a6c: $01 $76 $5d
	ld   a, c                                        ; $6a6f: $79
	ld   [bc], a                                     ; $6a70: $02
	jr   z, jr_059_6ac5                              ; $6a71: $28 $52

	dec  b                                           ; $6a73: $05
	jr   nz, @-$6e                                   ; $6a74: $20 $90

	ld   [bc], a                                     ; $6a76: $02
	jp   nz, Jump_059_7859                           ; $6a77: $c2 $59 $78

	ld   d, d                                        ; $6a7a: $52
	ld   h, l                                        ; $6a7b: $65
	rst  $38                                         ; $6a7c: $ff
	rst  $38                                         ; $6a7d: $ff
	dec  c                                           ; $6a7e: $0d
	ld   e, c                                        ; $6a7f: $59
	halt                                             ; $6a80: $76
	ld   d, d                                        ; $6a81: $52
	ld   [hl], c                                     ; $6a82: $71
	ld   [hl], h                                     ; $6a83: $74
	sbc  [hl]                                        ; $6a84: $9e
	ld   d, d                                        ; $6a85: $52
	ld   d, d                                        ; $6a86: $52
	halt                                             ; $6a87: $76
	ld   d, d                                        ; $6a88: $52
	ld   d, h                                        ; $6a89: $54
	dec  b                                           ; $6a8a: $05
	jr   nz, jr_059_6a1d                             ; $6a8b: $20 $90

	dec  c                                           ; $6a8d: $0d
	ld   [bc], a                                     ; $6a8e: $02
	jp   nz, Jump_059_7859                           ; $6a8f: $c2 $59 $78

	ld   d, d                                        ; $6a92: $52
	ld   a, b                                        ; $6a93: $78
	sbc  a                                           ; $6a94: $9f
	dec  c                                           ; $6a95: $0d
	nop                                              ; $6a96: $00
	ld   a, [bc]                                     ; $6a97: $0a
	ld   b, $1c                                      ; $6a98: $06 $1c
	ld   a, [bc]                                     ; $6a9a: $0a
	ld   bc, $a5a3                                   ; $6a9b: $01 $a3 $a5
	db   $ec                                         ; $6a9e: $ec
	cp   d                                           ; $6a9f: $ba
	ld   a, h                                        ; $6aa0: $7c
	sbc  [hl]                                        ; $6aa1: $9e
	ld   [$5d00], sp                                 ; $6aa2: $08 $00 $5d
	and  c                                           ; $6aa5: $a1
	dec  c                                           ; $6aa6: $0d
	add  [hl]                                        ; $6aa7: $86
	ld   a, h                                        ; $6aa8: $7c
	inc  b                                           ; $6aa9: $04
	ld   d, a                                        ; $6aaa: $57
	inc  b                                           ; $6aab: $04
	ld   h, e                                        ; $6aac: $63
	ld   a, l                                        ; $6aad: $7d
	rst  $38                                         ; $6aae: $ff
	rst  $38                                         ; $6aaf: $ff
	dec  c                                           ; $6ab0: $0d
	ld   d, b                                        ; $6ab1: $50
	adc  h                                           ; $6ab2: $8c
	sbc  b                                           ; $6ab3: $98
	sub  [hl]                                        ; $6ab4: $96
	ld   e, l                                        ; $6ab5: $5d
	ld   a, b                                        ; $6ab6: $78
	ld   d, d                                        ; $6ab7: $52
	ld   a, b                                        ; $6ab8: $78
	sbc  a                                           ; $6ab9: $9f
	dec  c                                           ; $6aba: $0d
	nop                                              ; $6abb: $00
	ld   a, [bc]                                     ; $6abc: $0a
	ld   bc, $7190                                   ; $6abd: $01 $90 $71
	halt                                             ; $6ac0: $76
	ld   [bc], a                                     ; $6ac1: $02
	ld   a, [de]                                     ; $6ac2: $1a
	inc  bc                                          ; $6ac3: $03
	ld   l, e                                        ; $6ac4: $6b

jr_059_6ac5:
	ld   a, h                                        ; $6ac5: $7c
	ld   [bc], a                                     ; $6ac6: $02
	and  c                                           ; $6ac7: $a1
	inc  bc                                          ; $6ac8: $03
	and  b                                           ; $6ac9: $a0
	ld   l, a                                        ; $6aca: $6f
	and  b                                           ; $6acb: $a0
	dec  c                                           ; $6acc: $0d
	ld   [bc], a                                     ; $6acd: $02
	ld   h, l                                        ; $6ace: $65
	ld   d, [hl]                                     ; $6acf: $56
	ld   [hl], h                                     ; $6ad0: $74
	ld   [bc], a                                     ; $6ad1: $02
	ld   a, a                                        ; $6ad2: $7f
	inc  b                                           ; $6ad3: $04
	dec  de                                          ; $6ad4: $1b
	ld   h, l                                        ; $6ad5: $65
	ld   l, l                                        ; $6ad6: $6d
	adc  c                                           ; $6ad7: $89
	ld   d, h                                        ; $6ad8: $54
	ld   e, d                                        ; $6ad9: $5a
	ld   d, d                                        ; $6ada: $52
	ld   d, d                                        ; $6adb: $52
	halt                                             ; $6adc: $76
	dec  c                                           ; $6add: $0d
	dec  b                                           ; $6ade: $05
	pop  de                                          ; $6adf: $d1
	ld   d, h                                        ; $6ae0: $54
	ld   l, h                                        ; $6ae1: $6c
	sbc  a                                           ; $6ae2: $9f
	dec  c                                           ; $6ae3: $0d
	nop                                              ; $6ae4: $00
	ld   a, [bc]                                     ; $6ae5: $0a
	ld   b, $1c                                      ; $6ae6: $06 $1c
	ld   a, [bc]                                     ; $6ae8: $0a
	ld   bc, $a5a3                                   ; $6ae9: $01 $a3 $a5
	db   $ec                                         ; $6aec: $ec
	cp   d                                           ; $6aed: $ba
	ld   a, h                                        ; $6aee: $7c
	sbc  [hl]                                        ; $6aef: $9e
	ld   [$5d00], sp                                 ; $6af0: $08 $00 $5d
	and  c                                           ; $6af3: $a1
	dec  c                                           ; $6af4: $0d
	add  [hl]                                        ; $6af5: $86
	ld   a, h                                        ; $6af6: $7c
	inc  b                                           ; $6af7: $04
	ld   d, a                                        ; $6af8: $57
	inc  b                                           ; $6af9: $04
	ld   h, e                                        ; $6afa: $63
	ld   a, l                                        ; $6afb: $7d
	sbc  [hl]                                        ; $6afc: $9e
	ld   e, c                                        ; $6afd: $59
	ld   a, b                                        ; $6afe: $78
	sbc  b                                           ; $6aff: $98
	ld   d, d                                        ; $6b00: $52
	ld   d, d                                        ; $6b01: $52
	dec  c                                           ; $6b02: $0d
	halt                                             ; $6b03: $76
	dec  b                                           ; $6b04: $05
	pop  de                                          ; $6b05: $d1
	ld   d, h                                        ; $6b06: $54
	ld   l, h                                        ; $6b07: $6c
	sbc  a                                           ; $6b08: $9f
	dec  c                                           ; $6b09: $0d
	nop                                              ; $6b0a: $00
	ld   a, [bc]                                     ; $6b0b: $0a
	ld   bc, $ca02                                   ; $6b0c: $01 $02 $ca
	sub  b                                           ; $6b0f: $90
	ld   l, e                                        ; $6b10: $6b
	sbc  d                                           ; $6b11: $9a
	ld   a, c                                        ; $6b12: $79
	ld   [bc], a                                     ; $6b13: $02
	add  hl, bc                                      ; $6b14: $09
	ld   d, [hl]                                     ; $6b15: $56
	sub  a                                           ; $6b16: $97
	sbc  d                                           ; $6b17: $9a
	sbc  c                                           ; $6b18: $99
	sub  [hl]                                        ; $6b19: $96
	ld   d, h                                        ; $6b1a: $54
	ld   a, c                                        ; $6b1b: $79
	dec  c                                           ; $6b1c: $0d
	ld   e, d                                        ; $6b1d: $5a
	and  c                                           ; $6b1e: $a1
	ld   a, [hl]                                     ; $6b1f: $7e
	sbc  c                                           ; $6b20: $99
	and  c                                           ; $6b21: $a1
	ld   l, [hl]                                     ; $6b22: $6e
	ld   l, h                                        ; $6b23: $6c
	sbc  a                                           ; $6b24: $9f
	dec  c                                           ; $6b25: $0d
	nop                                              ; $6b26: $00
	ld   a, [bc]                                     ; $6b27: $0a
	ld   b, $1c                                      ; $6b28: $06 $1c
	ld   a, [bc]                                     ; $6b2a: $0a
	rrca                                             ; $6b2b: $0f
	nop                                              ; $6b2c: $00
	ld   bc, $0201                                   ; $6b2d: $01 $01 $02

jr_059_6b30:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b30: $cf
	dec  b                                           ; $6b31: $05
	ld   a, [de]                                     ; $6b32: $1a
	ld   h, e                                        ; $6b33: $63
	and  c                                           ; $6b34: $a1
	ld   a, h                                        ; $6b35: $7c
	inc  b                                           ; $6b36: $04
	ld   l, l                                        ; $6b37: $6d
	add  [hl]                                        ; $6b38: $86
	ld   a, h                                        ; $6b39: $7c
	inc  b                                           ; $6b3a: $04
	ld   d, a                                        ; $6b3b: $57
	inc  b                                           ; $6b3c: $04
	ld   h, e                                        ; $6b3d: $63
	ld   [hl], c                                     ; $6b3e: $71
	ld   [hl], h                                     ; $6b3f: $74
	dec  c                                           ; $6b40: $0d
	ld   [hl], a                                     ; $6b41: $77
	ld   d, h                                        ; $6b42: $54
	ld   a, b                                        ; $6b43: $78
	and  c                                           ; $6b44: $a1
	ld   [hl], l                                     ; $6b45: $75
	ld   h, l                                        ; $6b46: $65

jr_059_6b47:
	sub  l                                           ; $6b47: $95
	ld   d, h                                        ; $6b48: $54
	ld   e, c                                        ; $6b49: $59
	ld   sp, hl                                      ; $6b4a: $f9
	dec  c                                           ; $6b4b: $0d
	nop                                              ; $6b4c: $00
	ld   a, [bc]                                     ; $6b4d: $0a
	rrca                                             ; $6b4e: $0f
	add  hl, bc                                      ; $6b4f: $09
	nop                                              ; $6b50: $00
	ld   bc, $8e83                                   ; $6b51: $01 $83 $8e
	sbc  [hl]                                        ; $6b54: $9e
	ld   l, e                                        ; $6b55: $6b
	ld   d, h                                        ; $6b56: $54
	ld   l, [hl]                                     ; $6b57: $6e
	ld   a, b                                        ; $6b58: $78
	rst  $38                                         ; $6b59: $ff
	rst  $38                                         ; $6b5a: $ff
	dec  c                                           ; $6b5b: $0d
	nop                                              ; $6b5c: $00
	ld   a, [bc]                                     ; $6b5d: $0a
	rlca                                             ; $6b5e: $07
	ld   h, [hl]                                     ; $6b5f: $66
	ld   [$1503], sp                                 ; $6b60: $08 $03 $15
	ld   bc, $2373                                   ; $6b63: $01 $73 $23
	nop                                              ; $6b66: $00
	rlca                                             ; $6b67: $07
	or   h                                           ; $6b68: $b4
	ld   [$1503], sp                                 ; $6b69: $08 $03 $15
	ld   bc, $25ac                                   ; $6b6c: $01 $ac $25
	nop                                              ; $6b6f: $00
	ld   bc, $cf02                                   ; $6b70: $01 $02 $cf
	dec  b                                           ; $6b73: $05
	ld   a, [de]                                     ; $6b74: $1a
	ld   a, h                                        ; $6b75: $7c
	sbc  [hl]                                        ; $6b76: $9e
	ld   [$5d00], sp                                 ; $6b77: $08 $00 $5d
	and  c                                           ; $6b7a: $a1
	dec  c                                           ; $6b7b: $0d
	add  [hl]                                        ; $6b7c: $86
	ld   a, h                                        ; $6b7d: $7c
	inc  b                                           ; $6b7e: $04
	ld   d, a                                        ; $6b7f: $57
	inc  b                                           ; $6b80: $04
	ld   h, e                                        ; $6b81: $63
	ld   a, l                                        ; $6b82: $7d
	sbc  [hl]                                        ; $6b83: $9e
	adc  h                                           ; $6b84: $8c
	ld   d, b                                        ; $6b85: $50
	adc  h                                           ; $6b86: $8c
	ld   d, b                                        ; $6b87: $50
	dec  c                                           ; $6b88: $0d
	halt                                             ; $6b89: $76
	ld   d, d                                        ; $6b8a: $52
	ld   [hl], c                                     ; $6b8b: $71
	ld   l, l                                        ; $6b8c: $6d
	halt                                             ; $6b8d: $76
	ld   h, c                                        ; $6b8e: $61
	sbc  e                                           ; $6b8f: $9b
	ld   e, c                                        ; $6b90: $59
	ld   a, b                                        ; $6b91: $78
	sbc  a                                           ; $6b92: $9f
	dec  c                                           ; $6b93: $0d
	nop                                              ; $6b94: $00
	ld   a, [bc]                                     ; $6b95: $0a
	ld   bc, $5d76                                   ; $6b96: $01 $76 $5d
	ld   a, c                                        ; $6b99: $79
	ld   [bc], a                                     ; $6b9a: $02
	jr   z, jr_059_6bef                              ; $6b9b: $28 $52

	dec  b                                           ; $6b9d: $05
	jr   nz, jr_059_6b30                             ; $6b9e: $20 $90

	ld   [bc], a                                     ; $6ba0: $02
	jp   nz, Jump_059_7859                           ; $6ba1: $c2 $59 $78

	ld   d, d                                        ; $6ba4: $52
	ld   h, l                                        ; $6ba5: $65
	rst  $38                                         ; $6ba6: $ff
	rst  $38                                         ; $6ba7: $ff
	dec  c                                           ; $6ba8: $0d
	ld   e, c                                        ; $6ba9: $59
	halt                                             ; $6baa: $76
	ld   d, d                                        ; $6bab: $52
	ld   [hl], c                                     ; $6bac: $71
	ld   [hl], h                                     ; $6bad: $74
	sbc  [hl]                                        ; $6bae: $9e
	ld   d, d                                        ; $6baf: $52
	ld   d, d                                        ; $6bb0: $52
	halt                                             ; $6bb1: $76
	ld   d, d                                        ; $6bb2: $52
	ld   d, h                                        ; $6bb3: $54
	dec  b                                           ; $6bb4: $05
	jr   nz, jr_059_6b47                             ; $6bb5: $20 $90

	dec  c                                           ; $6bb7: $0d
	ld   [bc], a                                     ; $6bb8: $02
	jp   nz, Jump_059_7859                           ; $6bb9: $c2 $59 $78

	ld   d, d                                        ; $6bbc: $52
	ld   a, b                                        ; $6bbd: $78
	sbc  a                                           ; $6bbe: $9f
	dec  c                                           ; $6bbf: $0d
	nop                                              ; $6bc0: $00
	ld   a, [bc]                                     ; $6bc1: $0a
	ld   b, $1c                                      ; $6bc2: $06 $1c
	ld   a, [bc]                                     ; $6bc4: $0a
	ld   bc, $cf02                                   ; $6bc5: $01 $02 $cf
	dec  b                                           ; $6bc8: $05
	ld   a, [de]                                     ; $6bc9: $1a
	ld   a, h                                        ; $6bca: $7c
	sbc  [hl]                                        ; $6bcb: $9e
	ld   [$5d00], sp                                 ; $6bcc: $08 $00 $5d
	and  c                                           ; $6bcf: $a1
	dec  c                                           ; $6bd0: $0d
	add  [hl]                                        ; $6bd1: $86
	ld   a, h                                        ; $6bd2: $7c
	inc  b                                           ; $6bd3: $04
	ld   d, a                                        ; $6bd4: $57
	inc  b                                           ; $6bd5: $04
	ld   h, e                                        ; $6bd6: $63
	ld   a, l                                        ; $6bd7: $7d
	rst  $38                                         ; $6bd8: $ff
	rst  $38                                         ; $6bd9: $ff
	dec  c                                           ; $6bda: $0d
	ld   d, b                                        ; $6bdb: $50
	adc  h                                           ; $6bdc: $8c
	sbc  b                                           ; $6bdd: $98
	sub  [hl]                                        ; $6bde: $96
	ld   e, l                                        ; $6bdf: $5d
	ld   a, b                                        ; $6be0: $78
	ld   d, d                                        ; $6be1: $52
	ld   a, b                                        ; $6be2: $78
	sbc  a                                           ; $6be3: $9f
	dec  c                                           ; $6be4: $0d
	nop                                              ; $6be5: $00
	ld   a, [bc]                                     ; $6be6: $0a
	ld   bc, $7190                                   ; $6be7: $01 $90 $71
	halt                                             ; $6bea: $76
	ld   [bc], a                                     ; $6beb: $02
	ld   a, [de]                                     ; $6bec: $1a
	inc  bc                                          ; $6bed: $03
	ld   l, e                                        ; $6bee: $6b

jr_059_6bef:
	ld   a, h                                        ; $6bef: $7c
	ld   [bc], a                                     ; $6bf0: $02
	and  c                                           ; $6bf1: $a1
	inc  bc                                          ; $6bf2: $03
	and  b                                           ; $6bf3: $a0
	ld   l, a                                        ; $6bf4: $6f
	and  b                                           ; $6bf5: $a0
	dec  c                                           ; $6bf6: $0d
	ld   [bc], a                                     ; $6bf7: $02
	ld   h, l                                        ; $6bf8: $65
	ld   d, [hl]                                     ; $6bf9: $56
	ld   [hl], h                                     ; $6bfa: $74
	ld   [bc], a                                     ; $6bfb: $02
	ld   a, a                                        ; $6bfc: $7f
	inc  b                                           ; $6bfd: $04
	dec  de                                          ; $6bfe: $1b
	ld   h, l                                        ; $6bff: $65
	ld   l, l                                        ; $6c00: $6d
	adc  c                                           ; $6c01: $89
	ld   d, h                                        ; $6c02: $54
	ld   e, d                                        ; $6c03: $5a
	ld   d, d                                        ; $6c04: $52
	ld   d, d                                        ; $6c05: $52
	halt                                             ; $6c06: $76
	dec  c                                           ; $6c07: $0d
	dec  b                                           ; $6c08: $05
	pop  de                                          ; $6c09: $d1
	ld   d, h                                        ; $6c0a: $54
	ld   l, h                                        ; $6c0b: $6c
	sbc  a                                           ; $6c0c: $9f
	dec  c                                           ; $6c0d: $0d
	nop                                              ; $6c0e: $00
	ld   a, [bc]                                     ; $6c0f: $0a
	ld   b, $1c                                      ; $6c10: $06 $1c
	ld   a, [bc]                                     ; $6c12: $0a
	ld   bc, $cf02                                   ; $6c13: $01 $02 $cf
	dec  b                                           ; $6c16: $05
	ld   a, [de]                                     ; $6c17: $1a
	ld   a, h                                        ; $6c18: $7c
	sbc  [hl]                                        ; $6c19: $9e
	ld   [$5d00], sp                                 ; $6c1a: $08 $00 $5d
	and  c                                           ; $6c1d: $a1
	dec  c                                           ; $6c1e: $0d
	add  [hl]                                        ; $6c1f: $86
	ld   a, h                                        ; $6c20: $7c
	inc  b                                           ; $6c21: $04
	ld   d, a                                        ; $6c22: $57
	inc  b                                           ; $6c23: $04
	ld   h, e                                        ; $6c24: $63
	ld   a, l                                        ; $6c25: $7d
	sbc  [hl]                                        ; $6c26: $9e
	ld   e, c                                        ; $6c27: $59
	ld   a, b                                        ; $6c28: $78
	sbc  b                                           ; $6c29: $98
	ld   d, d                                        ; $6c2a: $52
	ld   d, d                                        ; $6c2b: $52
	dec  c                                           ; $6c2c: $0d
	halt                                             ; $6c2d: $76
	dec  b                                           ; $6c2e: $05
	pop  de                                          ; $6c2f: $d1
	ld   d, h                                        ; $6c30: $54
	ld   l, h                                        ; $6c31: $6c
	sbc  a                                           ; $6c32: $9f
	dec  c                                           ; $6c33: $0d
	nop                                              ; $6c34: $00
	ld   a, [bc]                                     ; $6c35: $0a
	ld   bc, $ca02                                   ; $6c36: $01 $02 $ca
	sub  b                                           ; $6c39: $90
	ld   l, e                                        ; $6c3a: $6b
	sbc  d                                           ; $6c3b: $9a
	ld   a, c                                        ; $6c3c: $79
	ld   [bc], a                                     ; $6c3d: $02
	add  hl, bc                                      ; $6c3e: $09
	ld   d, [hl]                                     ; $6c3f: $56
	sub  a                                           ; $6c40: $97
	sbc  d                                           ; $6c41: $9a
	sbc  c                                           ; $6c42: $99
	sub  [hl]                                        ; $6c43: $96
	ld   d, h                                        ; $6c44: $54
	ld   a, c                                        ; $6c45: $79
	dec  c                                           ; $6c46: $0d
	ld   e, d                                        ; $6c47: $5a
	and  c                                           ; $6c48: $a1
	ld   a, [hl]                                     ; $6c49: $7e
	sbc  c                                           ; $6c4a: $99
	and  c                                           ; $6c4b: $a1
	ld   l, [hl]                                     ; $6c4c: $6e
	ld   l, h                                        ; $6c4d: $6c
	sbc  a                                           ; $6c4e: $9f
	dec  c                                           ; $6c4f: $0d
	nop                                              ; $6c50: $00
	ld   a, [bc]                                     ; $6c51: $0a
	ld   b, $1c                                      ; $6c52: $06 $1c
	ld   a, [bc]                                     ; $6c54: $0a
	rrca                                             ; $6c55: $0f
	nop                                              ; $6c56: $00
	ld   bc, $ac01                                   ; $6c57: $01 $01 $ac
	push af                                          ; $6c5a: $f5
	bit  4, e                                        ; $6c5b: $cb $63
	and  c                                           ; $6c5d: $a1
	ld   a, h                                        ; $6c5e: $7c
	inc  b                                           ; $6c5f: $04
	ld   l, l                                        ; $6c60: $6d
	add  [hl]                                        ; $6c61: $86
	ld   a, h                                        ; $6c62: $7c
	inc  b                                           ; $6c63: $04
	ld   d, a                                        ; $6c64: $57
	inc  b                                           ; $6c65: $04
	ld   h, e                                        ; $6c66: $63
	ld   [hl], c                                     ; $6c67: $71
	ld   [hl], h                                     ; $6c68: $74
	dec  c                                           ; $6c69: $0d
	ld   [hl], a                                     ; $6c6a: $77
	ld   d, h                                        ; $6c6b: $54
	ld   a, b                                        ; $6c6c: $78
	and  c                                           ; $6c6d: $a1
	ld   [hl], l                                     ; $6c6e: $75

jr_059_6c6f:
	ld   h, l                                        ; $6c6f: $65
	sub  l                                           ; $6c70: $95
	ld   d, h                                        ; $6c71: $54
	ld   e, c                                        ; $6c72: $59
	ld   sp, hl                                      ; $6c73: $f9
	dec  c                                           ; $6c74: $0d
	nop                                              ; $6c75: $00
	ld   a, [bc]                                     ; $6c76: $0a
	rrca                                             ; $6c77: $0f
	add  hl, bc                                      ; $6c78: $09
	nop                                              ; $6c79: $00
	ld   bc, $8e83                                   ; $6c7a: $01 $83 $8e
	sbc  [hl]                                        ; $6c7d: $9e
	ld   l, e                                        ; $6c7e: $6b
	ld   d, h                                        ; $6c7f: $54
	ld   l, [hl]                                     ; $6c80: $6e
	ld   a, b                                        ; $6c81: $78
	rst  $38                                         ; $6c82: $ff
	rst  $38                                         ; $6c83: $ff
	dec  c                                           ; $6c84: $0d
	nop                                              ; $6c85: $00
	ld   a, [bc]                                     ; $6c86: $0a
	rlca                                             ; $6c87: $07
	adc  [hl]                                        ; $6c88: $8e
	add  hl, bc                                      ; $6c89: $09
	inc  bc                                          ; $6c8a: $03
	ld   d, $01                                      ; $6c8b: $16 $01
	ld   [hl], e                                     ; $6c8d: $73
	inc  hl                                          ; $6c8e: $23
	nop                                              ; $6c8f: $00
	rlca                                             ; $6c90: $07
	db   $db                                         ; $6c91: $db
	add  hl, bc                                      ; $6c92: $09
	inc  bc                                          ; $6c93: $03
	ld   d, $01                                      ; $6c94: $16 $01
	xor  h                                           ; $6c96: $ac
	dec  h                                           ; $6c97: $25
	nop                                              ; $6c98: $00
	ld   bc, $f5ac                                   ; $6c99: $01 $ac $f5
	bit  7, h                                        ; $6c9c: $cb $7c
	sbc  [hl]                                        ; $6c9e: $9e
	ld   [$5d00], sp                                 ; $6c9f: $08 $00 $5d
	and  c                                           ; $6ca2: $a1
	dec  c                                           ; $6ca3: $0d
	add  [hl]                                        ; $6ca4: $86
	ld   a, h                                        ; $6ca5: $7c
	inc  b                                           ; $6ca6: $04
	ld   d, a                                        ; $6ca7: $57
	inc  b                                           ; $6ca8: $04
	ld   h, e                                        ; $6ca9: $63
	ld   a, l                                        ; $6caa: $7d
	sbc  [hl]                                        ; $6cab: $9e
	adc  h                                           ; $6cac: $8c
	ld   d, b                                        ; $6cad: $50
	adc  h                                           ; $6cae: $8c
	ld   d, b                                        ; $6caf: $50
	dec  c                                           ; $6cb0: $0d
	halt                                             ; $6cb1: $76
	ld   d, d                                        ; $6cb2: $52
	ld   [hl], c                                     ; $6cb3: $71
	ld   l, l                                        ; $6cb4: $6d
	halt                                             ; $6cb5: $76
	ld   h, c                                        ; $6cb6: $61
	sbc  e                                           ; $6cb7: $9b
	ld   e, c                                        ; $6cb8: $59
	ld   a, b                                        ; $6cb9: $78
	sbc  a                                           ; $6cba: $9f
	dec  c                                           ; $6cbb: $0d
	nop                                              ; $6cbc: $00
	ld   a, [bc]                                     ; $6cbd: $0a
	ld   bc, $5d76                                   ; $6cbe: $01 $76 $5d
	ld   a, c                                        ; $6cc1: $79
	ld   [bc], a                                     ; $6cc2: $02
	jr   z, jr_059_6d17                              ; $6cc3: $28 $52

	dec  b                                           ; $6cc5: $05
	jr   nz, @-$6e                                   ; $6cc6: $20 $90

	ld   [bc], a                                     ; $6cc8: $02
	jp   nz, Jump_059_7859                           ; $6cc9: $c2 $59 $78

	ld   d, d                                        ; $6ccc: $52
	ld   h, l                                        ; $6ccd: $65
	rst  $38                                         ; $6cce: $ff
	rst  $38                                         ; $6ccf: $ff
	dec  c                                           ; $6cd0: $0d
	ld   e, c                                        ; $6cd1: $59
	halt                                             ; $6cd2: $76
	ld   d, d                                        ; $6cd3: $52
	ld   [hl], c                                     ; $6cd4: $71
	ld   [hl], h                                     ; $6cd5: $74
	sbc  [hl]                                        ; $6cd6: $9e
	ld   d, d                                        ; $6cd7: $52
	ld   d, d                                        ; $6cd8: $52
	halt                                             ; $6cd9: $76
	ld   d, d                                        ; $6cda: $52
	ld   d, h                                        ; $6cdb: $54
	dec  b                                           ; $6cdc: $05
	jr   nz, jr_059_6c6f                             ; $6cdd: $20 $90

	dec  c                                           ; $6cdf: $0d
	ld   [bc], a                                     ; $6ce0: $02
	jp   nz, Jump_059_7859                           ; $6ce1: $c2 $59 $78

	ld   d, d                                        ; $6ce4: $52
	ld   a, b                                        ; $6ce5: $78
	sbc  a                                           ; $6ce6: $9f
	dec  c                                           ; $6ce7: $0d
	nop                                              ; $6ce8: $00
	ld   a, [bc]                                     ; $6ce9: $0a
	ld   b, $1c                                      ; $6cea: $06 $1c
	ld   a, [bc]                                     ; $6cec: $0a
	ld   bc, $f5ac                                   ; $6ced: $01 $ac $f5
	bit  7, h                                        ; $6cf0: $cb $7c
	sbc  [hl]                                        ; $6cf2: $9e
	ld   [$5d00], sp                                 ; $6cf3: $08 $00 $5d
	and  c                                           ; $6cf6: $a1
	dec  c                                           ; $6cf7: $0d
	add  [hl]                                        ; $6cf8: $86
	ld   a, h                                        ; $6cf9: $7c
	inc  b                                           ; $6cfa: $04
	ld   d, a                                        ; $6cfb: $57
	inc  b                                           ; $6cfc: $04
	ld   h, e                                        ; $6cfd: $63
	ld   a, l                                        ; $6cfe: $7d
	rst  $38                                         ; $6cff: $ff
	rst  $38                                         ; $6d00: $ff
	dec  c                                           ; $6d01: $0d
	ld   d, b                                        ; $6d02: $50
	adc  h                                           ; $6d03: $8c
	sbc  b                                           ; $6d04: $98
	sub  [hl]                                        ; $6d05: $96
	ld   e, l                                        ; $6d06: $5d
	ld   a, b                                        ; $6d07: $78
	ld   d, d                                        ; $6d08: $52
	ld   a, b                                        ; $6d09: $78
	sbc  a                                           ; $6d0a: $9f
	dec  c                                           ; $6d0b: $0d
	nop                                              ; $6d0c: $00
	ld   a, [bc]                                     ; $6d0d: $0a
	ld   bc, $7190                                   ; $6d0e: $01 $90 $71
	halt                                             ; $6d11: $76
	ld   [bc], a                                     ; $6d12: $02
	ld   a, [de]                                     ; $6d13: $1a
	inc  bc                                          ; $6d14: $03
	ld   l, e                                        ; $6d15: $6b
	ld   a, h                                        ; $6d16: $7c

jr_059_6d17:
	ld   [bc], a                                     ; $6d17: $02
	and  c                                           ; $6d18: $a1
	inc  bc                                          ; $6d19: $03
	and  b                                           ; $6d1a: $a0
	ld   l, a                                        ; $6d1b: $6f
	and  b                                           ; $6d1c: $a0
	dec  c                                           ; $6d1d: $0d
	ld   [bc], a                                     ; $6d1e: $02
	ld   h, l                                        ; $6d1f: $65
	ld   d, [hl]                                     ; $6d20: $56
	ld   [hl], h                                     ; $6d21: $74
	ld   [bc], a                                     ; $6d22: $02
	ld   a, a                                        ; $6d23: $7f
	inc  b                                           ; $6d24: $04
	dec  de                                          ; $6d25: $1b
	ld   h, l                                        ; $6d26: $65
	ld   l, l                                        ; $6d27: $6d
	adc  c                                           ; $6d28: $89
	ld   d, h                                        ; $6d29: $54
	ld   e, d                                        ; $6d2a: $5a
	ld   d, d                                        ; $6d2b: $52
	ld   d, d                                        ; $6d2c: $52
	halt                                             ; $6d2d: $76
	dec  c                                           ; $6d2e: $0d
	dec  b                                           ; $6d2f: $05
	pop  de                                          ; $6d30: $d1
	ld   d, h                                        ; $6d31: $54
	ld   l, h                                        ; $6d32: $6c
	sbc  a                                           ; $6d33: $9f
	dec  c                                           ; $6d34: $0d
	nop                                              ; $6d35: $00
	ld   a, [bc]                                     ; $6d36: $0a
	ld   b, $1c                                      ; $6d37: $06 $1c
	ld   a, [bc]                                     ; $6d39: $0a
	ld   bc, $f5ac                                   ; $6d3a: $01 $ac $f5
	bit  7, h                                        ; $6d3d: $cb $7c
	sbc  [hl]                                        ; $6d3f: $9e
	ld   [$5d00], sp                                 ; $6d40: $08 $00 $5d
	and  c                                           ; $6d43: $a1
	dec  c                                           ; $6d44: $0d
	add  [hl]                                        ; $6d45: $86
	ld   a, h                                        ; $6d46: $7c
	inc  b                                           ; $6d47: $04
	ld   d, a                                        ; $6d48: $57
	inc  b                                           ; $6d49: $04
	ld   h, e                                        ; $6d4a: $63
	ld   a, l                                        ; $6d4b: $7d
	sbc  [hl]                                        ; $6d4c: $9e
	ld   e, c                                        ; $6d4d: $59
	ld   a, b                                        ; $6d4e: $78
	sbc  b                                           ; $6d4f: $98
	ld   d, d                                        ; $6d50: $52
	ld   d, d                                        ; $6d51: $52
	dec  c                                           ; $6d52: $0d
	halt                                             ; $6d53: $76
	dec  b                                           ; $6d54: $05
	pop  de                                          ; $6d55: $d1
	ld   d, h                                        ; $6d56: $54
	ld   l, h                                        ; $6d57: $6c
	sbc  a                                           ; $6d58: $9f
	dec  c                                           ; $6d59: $0d
	nop                                              ; $6d5a: $00

Jump_059_6d5b:
	ld   a, [bc]                                     ; $6d5b: $0a
	ld   bc, $ca02                                   ; $6d5c: $01 $02 $ca
	sub  b                                           ; $6d5f: $90
	ld   l, e                                        ; $6d60: $6b
	sbc  d                                           ; $6d61: $9a
	ld   a, c                                        ; $6d62: $79
	ld   [bc], a                                     ; $6d63: $02
	add  hl, bc                                      ; $6d64: $09
	ld   d, [hl]                                     ; $6d65: $56
	sub  a                                           ; $6d66: $97
	sbc  d                                           ; $6d67: $9a
	sbc  c                                           ; $6d68: $99
	sub  [hl]                                        ; $6d69: $96
	ld   d, h                                        ; $6d6a: $54
	ld   a, c                                        ; $6d6b: $79
	dec  c                                           ; $6d6c: $0d
	ld   e, d                                        ; $6d6d: $5a
	and  c                                           ; $6d6e: $a1
	ld   a, [hl]                                     ; $6d6f: $7e
	sbc  c                                           ; $6d70: $99
	and  c                                           ; $6d71: $a1
	ld   l, [hl]                                     ; $6d72: $6e
	ld   l, h                                        ; $6d73: $6c
	sbc  a                                           ; $6d74: $9f
	dec  c                                           ; $6d75: $0d
	nop                                              ; $6d76: $00
	ld   a, [bc]                                     ; $6d77: $0a
	ld   b, $1c                                      ; $6d78: $06 $1c
	ld   a, [bc]                                     ; $6d7a: $0a
	rrca                                             ; $6d7b: $0f
	nop                                              ; $6d7c: $00
	ld   bc, $6b01                                   ; $6d7d: $01 $01 $6b
	ld   d, h                                        ; $6d80: $54
	ld   [hl], l                                     ; $6d81: $75
	ld   h, a                                        ; $6d82: $67
	ld   e, c                                        ; $6d83: $59
	rst  $38                                         ; $6d84: $ff
	rst  $38                                         ; $6d85: $ff
	dec  c                                           ; $6d86: $0d
	ld   d, b                                        ; $6d87: $50
	sbc  b                                           ; $6d88: $98
	ld   e, d                                        ; $6d89: $5a
	halt                                             ; $6d8a: $76
	ld   d, h                                        ; $6d8b: $54
	ld   h, d                                        ; $6d8c: $62
	ld   h, h                                        ; $6d8d: $64
	ld   d, d                                        ; $6d8e: $52
	adc  h                                           ; $6d8f: $8c
	ld   h, l                                        ; $6d90: $65
	ld   l, l                                        ; $6d91: $6d
	sbc  a                                           ; $6d92: $9f
	dec  c                                           ; $6d93: $0d
	nop                                              ; $6d94: $00
	ld   a, [bc]                                     ; $6d95: $0a
	rrca                                             ; $6d96: $0f
	add  hl, bc                                      ; $6d97: $09
	nop                                              ; $6d98: $00
	ld   bc, $a154                                   ; $6d99: $01 $54 $a1
	sbc  a                                           ; $6d9c: $9f
	dec  c                                           ; $6d9d: $0d
	ld   e, d                                        ; $6d9e: $5a
	and  c                                           ; $6d9f: $a1
	ld   a, [hl]                                     ; $6da0: $7e
	sbc  d                                           ; $6da1: $9a
	sub  [hl]                                        ; $6da2: $96
	sbc  a                                           ; $6da3: $9f
	dec  c                                           ; $6da4: $0d
	nop                                              ; $6da5: $00
	ld   a, [bc]                                     ; $6da6: $0a
	nop                                              ; $6da7: $00
	rrca                                             ; $6da8: $0f
	nop                                              ; $6da9: $00
	ld   bc, $5001                                   ; $6daa: $01 $01 $50
	ld   a, h                                        ; $6dad: $7c
	sbc  [hl]                                        ; $6dae: $9e
	inc  bc                                          ; $6daf: $03
	ld   l, l                                        ; $6db0: $6d
	dec  b                                           ; $6db1: $05
	add  hl, de                                      ; $6db2: $19
	ld   a, h                                        ; $6db3: $7c
	and  e                                           ; $6db4: $a3
	jp   z, $a5d1                                    ; $6db5: $ca $d1 $a5

	cp   d                                           ; $6db8: $ba
	and  b                                           ; $6db9: $a0
	dec  c                                           ; $6dba: $0d
	ld   e, b                                        ; $6dbb: $58
	ld   [bc], a                                     ; $6dbc: $02
	add  b                                           ; $6dbd: $80
	ld   d, d                                        ; $6dbe: $52
	ld   h, l                                        ; $6dbf: $65
	ld   l, l                                        ; $6dc0: $6d
	ld   d, d                                        ; $6dc1: $52
	and  c                                           ; $6dc2: $a1
	ld   [hl], l                                     ; $6dc3: $75
	ld   h, a                                        ; $6dc4: $67
	ld   e, a                                        ; $6dc5: $5f
	ld   [hl], a                                     ; $6dc6: $77
	sbc  a                                           ; $6dc7: $9f
	dec  c                                           ; $6dc8: $0d
	nop                                              ; $6dc9: $00
	ld   a, [bc]                                     ; $6dca: $0a
	rrca                                             ; $6dcb: $0f
	add  hl, bc                                      ; $6dcc: $09
	nop                                              ; $6dcd: $00
	ld   bc, $8e83                                   ; $6dce: $01 $83 $8e
	sbc  [hl]                                        ; $6dd1: $9e
	ld   l, e                                        ; $6dd2: $6b
	ld   d, h                                        ; $6dd3: $54
	ld   l, [hl]                                     ; $6dd4: $6e
	ld   a, b                                        ; $6dd5: $78
	rst  $38                                         ; $6dd6: $ff
	rst  $38                                         ; $6dd7: $ff
	dec  c                                           ; $6dd8: $0d
	nop                                              ; $6dd9: $00
	ld   a, [bc]                                     ; $6dda: $0a
	rlca                                             ; $6ddb: $07
	ld   b, d                                        ; $6ddc: $42
	dec  bc                                          ; $6ddd: $0b
	inc  bc                                          ; $6dde: $03
	inc  hl                                          ; $6ddf: $23
	ld   bc, $2368                                   ; $6de0: $01 $68 $23
	inc  bc                                          ; $6de3: $03
	inc  h                                           ; $6de4: $24
	ld   bc, $2368                                   ; $6de5: $01 $68 $23
	inc  e                                           ; $6de8: $1c
	inc  bc                                          ; $6de9: $03
	dec  h                                           ; $6dea: $25
	ld   bc, $2368                                   ; $6deb: $01 $68 $23
	inc  e                                           ; $6dee: $1c
	inc  bc                                          ; $6def: $03
	ld   [hl+], a                                    ; $6df0: $22
	ld   bc, $2368                                   ; $6df1: $01 $68 $23
	inc  e                                           ; $6df4: $1c
	inc  bc                                          ; $6df5: $03
	ld   hl, $6801                                   ; $6df6: $21 $01 $68
	inc  hl                                          ; $6df9: $23
	inc  e                                           ; $6dfa: $1c
	nop                                              ; $6dfb: $00
	rlca                                             ; $6dfc: $07
	or   [hl]                                        ; $6dfd: $b6
	dec  bc                                          ; $6dfe: $0b
	inc  bc                                          ; $6dff: $03
	inc  hl                                          ; $6e00: $23
	ld   bc, $257d                                   ; $6e01: $01 $7d $25
	inc  bc                                          ; $6e04: $03
	inc  h                                           ; $6e05: $24
	ld   bc, $257d                                   ; $6e06: $01 $7d $25
	inc  e                                           ; $6e09: $1c
	inc  bc                                          ; $6e0a: $03
	dec  h                                           ; $6e0b: $25
	ld   bc, $257d                                   ; $6e0c: $01 $7d $25
	inc  e                                           ; $6e0f: $1c
	inc  bc                                          ; $6e10: $03
	ld   [hl+], a                                    ; $6e11: $22
	ld   bc, $257d                                   ; $6e12: $01 $7d $25
	inc  e                                           ; $6e15: $1c
	inc  bc                                          ; $6e16: $03
	ld   hl, $7d01                                   ; $6e17: $21 $01 $7d
	dec  h                                           ; $6e1a: $25
	inc  e                                           ; $6e1b: $1c
	nop                                              ; $6e1c: $00
	rlca                                             ; $6e1d: $07
	ld   b, b                                        ; $6e1e: $40
	inc  c                                           ; $6e1f: $0c
	inc  bc                                          ; $6e20: $03
	inc  hl                                          ; $6e21: $23
	ld   bc, $236e                                   ; $6e22: $01 $6e $23
	inc  bc                                          ; $6e25: $03
	inc  h                                           ; $6e26: $24
	ld   bc, $236e                                   ; $6e27: $01 $6e $23
	inc  e                                           ; $6e2a: $1c
	inc  bc                                          ; $6e2b: $03
	dec  h                                           ; $6e2c: $25
	ld   bc, $236e                                   ; $6e2d: $01 $6e $23
	inc  e                                           ; $6e30: $1c
	nop                                              ; $6e31: $00
	rlca                                             ; $6e32: $07
	ldh  a, [$0c]                                    ; $6e33: $f0 $0c
	inc  bc                                          ; $6e35: $03
	inc  h                                           ; $6e36: $24
	inc  bc                                          ; $6e37: $03
	inc  hl                                          ; $6e38: $23
	inc  hl                                          ; $6e39: $23
	inc  bc                                          ; $6e3a: $03
	inc  h                                           ; $6e3b: $24
	inc  bc                                          ; $6e3c: $03
	dec  h                                           ; $6e3d: $25
	inc  hl                                          ; $6e3e: $23
	inc  e                                           ; $6e3f: $1c
	inc  bc                                          ; $6e40: $03
	inc  h                                           ; $6e41: $24
	inc  bc                                          ; $6e42: $03
	ld   [hl+], a                                    ; $6e43: $22
	inc  hl                                          ; $6e44: $23
	inc  e                                           ; $6e45: $1c
	inc  bc                                          ; $6e46: $03
	inc  h                                           ; $6e47: $24
	inc  bc                                          ; $6e48: $03
	ld   hl, $1c23                                   ; $6e49: $21 $23 $1c
	nop                                              ; $6e4c: $00
	rlca                                             ; $6e4d: $07
	adc  h                                           ; $6e4e: $8c
	dec  c                                           ; $6e4f: $0d
	inc  bc                                          ; $6e50: $03
	dec  h                                           ; $6e51: $25
	inc  bc                                          ; $6e52: $03
	inc  hl                                          ; $6e53: $23
	inc  hl                                          ; $6e54: $23
	inc  bc                                          ; $6e55: $03
	dec  h                                           ; $6e56: $25
	inc  bc                                          ; $6e57: $03
	inc  h                                           ; $6e58: $24
	inc  hl                                          ; $6e59: $23
	inc  e                                           ; $6e5a: $1c
	inc  bc                                          ; $6e5b: $03
	dec  h                                           ; $6e5c: $25
	inc  bc                                          ; $6e5d: $03
	ld   [hl+], a                                    ; $6e5e: $22
	inc  hl                                          ; $6e5f: $23
	inc  e                                           ; $6e60: $1c
	inc  bc                                          ; $6e61: $03
	dec  h                                           ; $6e62: $25
	inc  bc                                          ; $6e63: $03
	ld   hl, $1c23                                   ; $6e64: $21 $23 $1c
	nop                                              ; $6e67: $00
	rlca                                             ; $6e68: $07
	dec  l                                           ; $6e69: $2d
	ld   c, $03                                      ; $6e6a: $0e $03
	ld   [hl+], a                                    ; $6e6c: $22
	inc  bc                                          ; $6e6d: $03
	inc  hl                                          ; $6e6e: $23
	inc  hl                                          ; $6e6f: $23
	inc  bc                                          ; $6e70: $03
	ld   [hl+], a                                    ; $6e71: $22
	inc  bc                                          ; $6e72: $03
	inc  h                                           ; $6e73: $24
	inc  hl                                          ; $6e74: $23
	inc  e                                           ; $6e75: $1c
	inc  bc                                          ; $6e76: $03
	ld   [hl+], a                                    ; $6e77: $22
	inc  bc                                          ; $6e78: $03
	dec  h                                           ; $6e79: $25
	inc  hl                                          ; $6e7a: $23
	inc  e                                           ; $6e7b: $1c
	inc  bc                                          ; $6e7c: $03
	ld   [hl+], a                                    ; $6e7d: $22
	inc  bc                                          ; $6e7e: $03
	ld   hl, $1c23                                   ; $6e7f: $21 $23 $1c
	nop                                              ; $6e82: $00
	rlca                                             ; $6e83: $07
	ld   h, a                                        ; $6e84: $67
	rrca                                             ; $6e85: $0f
	inc  bc                                          ; $6e86: $03
	inc  hl                                          ; $6e87: $23
	inc  bc                                          ; $6e88: $03
	ld   [hl+], a                                    ; $6e89: $22
	inc  hl                                          ; $6e8a: $23
	inc  bc                                          ; $6e8b: $03
	inc  hl                                          ; $6e8c: $23
	inc  bc                                          ; $6e8d: $03
	inc  h                                           ; $6e8e: $24
	inc  hl                                          ; $6e8f: $23
	inc  e                                           ; $6e90: $1c
	inc  bc                                          ; $6e91: $03
	inc  hl                                          ; $6e92: $23
	inc  bc                                          ; $6e93: $03
	ld   [hl+], a                                    ; $6e94: $22
	inc  hl                                          ; $6e95: $23
	inc  e                                           ; $6e96: $1c
	inc  bc                                          ; $6e97: $03
	inc  hl                                          ; $6e98: $23
	inc  bc                                          ; $6e99: $03
	ld   hl, $1c23                                   ; $6e9a: $21 $23 $1c
	nop                                              ; $6e9d: $00
	ld   b, $c3                                      ; $6e9e: $06 $c3
	ld   c, $0f                                      ; $6ea0: $0e $0f
	add  hl, bc                                      ; $6ea2: $09
	nop                                              ; $6ea3: $00
	ld   bc, $ca02                                   ; $6ea4: $01 $02 $ca
	ld   a, h                                        ; $6ea7: $7c
	inc  b                                           ; $6ea8: $04
	ld   a, d                                        ; $6ea9: $7a
	ld   [bc], a                                     ; $6eaa: $02
	ld   a, e                                        ; $6eab: $7b
	sbc  [hl]                                        ; $6eac: $9e
	and  e                                           ; $6ead: $a3
	jp   z, $a5d1                                    ; $6eae: $ca $d1 $a5

	cp   d                                           ; $6eb1: $ba
	ld   d, d                                        ; $6eb2: $52
	ld   l, d                                        ; $6eb3: $6a
	and  c                                           ; $6eb4: $a1
	ld   a, c                                        ; $6eb5: $79
	dec  c                                           ; $6eb6: $0d
	sub  b                                           ; $6eb7: $90
	ld   [hl], c                                     ; $6eb8: $71
	halt                                             ; $6eb9: $76
	ld   l, a                                        ; $6eba: $6f
	sub  c                                           ; $6ebb: $91
	and  c                                           ; $6ebc: $a1
	halt                                             ; $6ebd: $76
	inc  bc                                          ; $6ebe: $03
	ld   l, l                                        ; $6ebf: $6d
	dec  b                                           ; $6ec0: $05
	add  hl, de                                      ; $6ec1: $19
	ld   a, c                                        ; $6ec2: $79
	dec  c                                           ; $6ec3: $0d
	inc  bc                                          ; $6ec4: $03
	add  b                                           ; $6ec5: $80
	ld   l, l                                        ; $6ec6: $6d
	adc  c                                           ; $6ec7: $89
	ld   d, h                                        ; $6ec8: $54
	ld   e, d                                        ; $6ec9: $5a
	ld   d, d                                        ; $6eca: $52
	ld   d, d                                        ; $6ecb: $52
	ld   a, b                                        ; $6ecc: $78
	sbc  a                                           ; $6ecd: $9f
	dec  c                                           ; $6ece: $0d
	nop                                              ; $6ecf: $00
	ld   a, [bc]                                     ; $6ed0: $0a
	ld   bc, $d303                                   ; $6ed1: $01 $03 $d3
	dec  b                                           ; $6ed4: $05
	ld   a, [bc]                                     ; $6ed5: $0a
	sub  b                                           ; $6ed6: $90
	ld   l, c                                        ; $6ed7: $69
	ld   l, b                                        ; $6ed8: $68
	ld   a, c                                        ; $6ed9: $79
	ld   [bc], a                                     ; $6eda: $02
	reti                                             ; $6edb: $d9


	ld   [bc], a                                     ; $6edc: $02
	ld   h, e                                        ; $6edd: $63
	ld   l, [hl]                                     ; $6ede: $6e
	ld   e, a                                        ; $6edf: $5f
	dec  c                                           ; $6ee0: $0d
	sub  b                                           ; $6ee1: $90
	halt                                             ; $6ee2: $76
	adc  a                                           ; $6ee3: $8f
	sbc  c                                           ; $6ee4: $99
	sub  [hl]                                        ; $6ee5: $96
	ld   d, h                                        ; $6ee6: $54
	ld   [hl], l                                     ; $6ee7: $75
	ld   a, l                                        ; $6ee8: $7d
	pop  bc                                          ; $6ee9: $c1
	db   $e3                                         ; $6eea: $e3
	ld   l, [hl]                                     ; $6eeb: $6e
	ld   l, h                                        ; $6eec: $6c
	sbc  a                                           ; $6eed: $9f
	dec  c                                           ; $6eee: $0d
	nop                                              ; $6eef: $00
	ld   a, [bc]                                     ; $6ef0: $0a
	rrca                                             ; $6ef1: $0f
	nop                                              ; $6ef2: $00
	ld   bc, $7d01                                   ; $6ef3: $01 $01 $7d
	sbc  [hl]                                        ; $6ef6: $9e
	ld   a, l                                        ; $6ef7: $7d
	ld   d, d                                        ; $6ef8: $52
	sbc  a                                           ; $6ef9: $9f
	dec  c                                           ; $6efa: $0d
	sbc  l                                           ; $6efb: $9d
	ld   e, c                                        ; $6efc: $59
	sbc  b                                           ; $6efd: $98
	adc  h                                           ; $6efe: $8c
	ld   h, l                                        ; $6eff: $65
	ld   l, l                                        ; $6f00: $6d
	ld   a, [$0dfa]                                  ; $6f01: $fa $fa $0d
	ld   d, b                                        ; $6f04: $50
	sbc  b                                           ; $6f05: $98
	ld   e, d                                        ; $6f06: $5a
	halt                                             ; $6f07: $76
	ld   d, h                                        ; $6f08: $54
	ld   h, d                                        ; $6f09: $62
	ld   h, h                                        ; $6f0a: $64
	ld   d, d                                        ; $6f0b: $52
	adc  h                                           ; $6f0c: $8c
	ld   h, a                                        ; $6f0d: $67
	ld   a, [$000d]                                  ; $6f0e: $fa $0d $00
	ld   a, [bc]                                     ; $6f11: $0a
	ld   b, $08                                      ; $6f12: $06 $08
	db   $10                                         ; $6f14: $10
	inc  e                                           ; $6f15: $1c
	add  hl, bc                                      ; $6f16: $09
	ld   bc, $0101                                   ; $6f17: $01 $01 $01
	ld   [$5d00], sp                                 ; $6f1a: $08 $00 $5d
	and  c                                           ; $6f1d: $a1
	ld   a, l                                        ; $6f1e: $7d
	dec  c                                           ; $6f1f: $0d
	ld   [bc], a                                     ; $6f20: $02
	and  l                                           ; $6f21: $a5
	ld   a, h                                        ; $6f22: $7c
	halt                                             ; $6f23: $76
	ld   h, c                                        ; $6f24: $61
	sbc  e                                           ; $6f25: $9b
	ld   [bc], a                                     ; $6f26: $02
	sbc  l                                           ; $6f27: $9d
	ld   d, h                                        ; $6f28: $54
	ld   h, c                                        ; $6f29: $61
	halt                                             ; $6f2a: $76
	ld   a, b                                        ; $6f2b: $78
	ld   h, l                                        ; $6f2c: $65
	ld   l, [hl]                                     ; $6f2d: $6e
	ld   a, b                                        ; $6f2e: $78
	sbc  a                                           ; $6f2f: $9f
	dec  c                                           ; $6f30: $0d
	nop                                              ; $6f31: $00
	ld   a, [bc]                                     ; $6f32: $0a
	ld   bc, $7c77                                   ; $6f33: $01 $77 $7c
	inc  bc                                          ; $6f36: $03
	ld   l, l                                        ; $6f37: $6d
	dec  b                                           ; $6f38: $05
	add  hl, de                                      ; $6f39: $19
	sub  b                                           ; $6f3a: $90
	adc  h                                           ; $6f3b: $8c
	and  c                                           ; $6f3c: $a1
	add  a                                           ; $6f3d: $87
	and  c                                           ; $6f3e: $a1
	ld   a, b                                        ; $6f3f: $78
	ld   e, l                                        ; $6f40: $5d
	dec  c                                           ; $6f41: $0d
	ld   e, d                                        ; $6f42: $5a
	and  c                                           ; $6f43: $a1
	ld   a, [hl]                                     ; $6f44: $7e
	ld   [hl], c                                     ; $6f45: $71
	ld   [hl], h                                     ; $6f46: $74
	sub  d                                           ; $6f47: $92
	ld   [hl], c                                     ; $6f48: $71
	ld   [hl], h                                     ; $6f49: $74
	ld   d, d                                        ; $6f4a: $52
	sbc  c                                           ; $6f4b: $99
	dec  c                                           ; $6f4c: $0d
	sub  [hl]                                        ; $6f4d: $96
	ld   d, h                                        ; $6f4e: $54
	ld   l, [hl]                                     ; $6f4f: $6e
	ld   h, l                                        ; $6f50: $65
	rst  $38                                         ; $6f51: $ff
	rst  $38                                         ; $6f52: $ff
	dec  c                                           ; $6f53: $0d
	nop                                              ; $6f54: $00
	ld   a, [bc]                                     ; $6f55: $0a
	ld   bc, $9a61                                   ; $6f56: $01 $61 $9a
	ld   e, c                                        ; $6f59: $59
	sub  a                                           ; $6f5a: $97
	sub  b                                           ; $6f5b: $90
	sbc  [hl]                                        ; $6f5c: $9e
	ld   h, c                                        ; $6f5d: $61
	ld   a, h                                        ; $6f5e: $7c
	inc  bc                                          ; $6f5f: $03
	cp   $03                                         ; $6f60: $fe $03
	add  [hl]                                        ; $6f62: $86
	ld   [hl], l                                     ; $6f63: $75
	dec  c                                           ; $6f64: $0d
	ld   d, d                                        ; $6f65: $52
	ld   e, a                                        ; $6f66: $5f
	ld   a, [hl]                                     ; $6f67: $7e
	sbc  [hl]                                        ; $6f68: $9e
	ld   [bc], a                                     ; $6f69: $02
	sbc  l                                           ; $6f6a: $9d
	ld   d, h                                        ; $6f6b: $54
	ld   h, c                                        ; $6f6c: $61
	halt                                             ; $6f6d: $76
	ld   a, b                                        ; $6f6e: $78
	ld   h, l                                        ; $6f6f: $65
	ld   l, [hl]                                     ; $6f70: $6e
	sbc  a                                           ; $6f71: $9f
	dec  c                                           ; $6f72: $0d
	nop                                              ; $6f73: $00
	ld   a, [bc]                                     ; $6f74: $0a
	rrca                                             ; $6f75: $0f
	nop                                              ; $6f76: $00
	ld   bc, $7d01                                   ; $6f77: $01 $01 $7d
	ld   d, d                                        ; $6f7a: $52
	ld   a, [$500d]                                  ; $6f7b: $fa $0d $50
	sbc  b                                           ; $6f7e: $98
	ld   e, d                                        ; $6f7f: $5a
	halt                                             ; $6f80: $76
	ld   d, h                                        ; $6f81: $54
	ld   h, d                                        ; $6f82: $62
	ld   h, h                                        ; $6f83: $64
	ld   d, d                                        ; $6f84: $52
	adc  h                                           ; $6f85: $8c
	ld   h, a                                        ; $6f86: $67
	ld   a, [$0dfa]                                  ; $6f87: $fa $fa $0d
	ld   [bc], a                                     ; $6f8a: $02
	and  l                                           ; $6f8b: $a5
	ld   [bc], a                                     ; $6f8c: $02
	xor  d                                           ; $6f8d: $aa
	sub  b                                           ; $6f8e: $90
	sbc  [hl]                                        ; $6f8f: $9e
	ld   e, d                                        ; $6f90: $5a
	and  c                                           ; $6f91: $a1
	ld   a, [hl]                                     ; $6f92: $7e
	sbc  b                                           ; $6f93: $98
	adc  h                                           ; $6f94: $8c
	ld   h, a                                        ; $6f95: $67
	ld   [hl], c                                     ; $6f96: $71
	ld   a, [$0dfa]                                  ; $6f97: $fa $fa $0d
	nop                                              ; $6f9a: $00
	ld   a, [bc]                                     ; $6f9b: $0a
	ld   b, $08                                      ; $6f9c: $06 $08
	db   $10                                         ; $6f9e: $10
	rrca                                             ; $6f9f: $0f
	add  hl, bc                                      ; $6fa0: $09
	nop                                              ; $6fa1: $00
	ld   bc, $0008                                   ; $6fa2: $01 $08 $00
	ld   e, l                                        ; $6fa5: $5d
	and  c                                           ; $6fa6: $a1
	ld   a, l                                        ; $6fa7: $7d
	dec  c                                           ; $6fa8: $0d
	ld   [bc], a                                     ; $6fa9: $02
	jr   nc, jr_059_6fb0                             ; $6faa: $30 $04

	dec  de                                          ; $6fac: $1b
	inc  b                                           ; $6fad: $04
	ld   b, e                                        ; $6fae: $43
	dec  b                                           ; $6faf: $05

jr_059_6fb0:
	ld   a, [bc]                                     ; $6fb0: $0a
	ld   a, h                                        ; $6fb1: $7c
	inc  b                                           ; $6fb2: $04
	ld   d, a                                        ; $6fb3: $57
	dec  b                                           ; $6fb4: $05
	add  hl, hl                                      ; $6fb5: $29
	ld   e, d                                        ; $6fb6: $5a
	inc  bc                                          ; $6fb7: $03
	ld   d, a                                        ; $6fb8: $57
	inc  b                                           ; $6fb9: $04
	dec  c                                           ; $6fba: $0d
	inc  b                                           ; $6fbb: $04
	jr   nz, jr_059_7037                             ; $6fbc: $20 $79

	dec  c                                           ; $6fbe: $0d
	inc  bc                                          ; $6fbf: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fc0: $cf
	ld   d, d                                        ; $6fc1: $52
	sub  [hl]                                        ; $6fc2: $96
	ld   d, h                                        ; $6fc3: $54
	ld   l, [hl]                                     ; $6fc4: $6e
	ld   a, b                                        ; $6fc5: $78
	sbc  a                                           ; $6fc6: $9f
	dec  c                                           ; $6fc7: $0d
	nop                                              ; $6fc8: $00
	ld   a, [bc]                                     ; $6fc9: $0a
	ld   bc, $5d63                                   ; $6fca: $01 $63 $5d
	sub  a                                           ; $6fcd: $97
	ld   e, l                                        ; $6fce: $5d
	and  c                                           ; $6fcf: $a1
	ld   a, h                                        ; $6fd0: $7c
	inc  bc                                          ; $6fd1: $03
	ld   l, l                                        ; $6fd2: $6d
	dec  b                                           ; $6fd3: $05
	add  hl, de                                      ; $6fd4: $19
	and  b                                           ; $6fd5: $a0
	dec  c                                           ; $6fd6: $0d
	ld   l, a                                        ; $6fd7: $6f
	sub  l                                           ; $6fd8: $95
	ld   [hl], c                                     ; $6fd9: $71
	halt                                             ; $6fda: $76
	inc  b                                           ; $6fdb: $04
	rrca                                             ; $6fdc: $0f
	adc  a                                           ; $6fdd: $8f
	ld   a, c                                        ; $6fde: $79
	halt                                             ; $6fdf: $76
	ld   [hl], c                                     ; $6fe0: $71
	ld   [hl], h                                     ; $6fe1: $74
	ld   e, b                                        ; $6fe2: $58
	ld   e, l                                        ; $6fe3: $5d
	halt                                             ; $6fe4: $76
	dec  c                                           ; $6fe5: $0d
	ld   d, d                                        ; $6fe6: $52
	ld   d, d                                        ; $6fe7: $52
	and  c                                           ; $6fe8: $a1
	ld   h, [hl]                                     ; $6fe9: $66
	sub  c                                           ; $6fea: $91
	ld   a, b                                        ; $6feb: $78
	ld   d, d                                        ; $6fec: $52
	ld   e, c                                        ; $6fed: $59
	ld   a, b                                        ; $6fee: $78
	sbc  a                                           ; $6fef: $9f
	dec  c                                           ; $6ff0: $0d
	nop                                              ; $6ff1: $00
	ld   a, [bc]                                     ; $6ff2: $0a
	ld   bc, $5d63                                   ; $6ff3: $01 $63 $5d
	sub  a                                           ; $6ff6: $97
	ld   e, l                                        ; $6ff7: $5d
	and  c                                           ; $6ff8: $a1
	ld   a, h                                        ; $6ff9: $7c
	inc  bc                                          ; $6ffa: $03
	ld   l, l                                        ; $6ffb: $6d
	dec  b                                           ; $6ffc: $05
	add  hl, de                                      ; $6ffd: $19
	ld   a, l                                        ; $6ffe: $7d
	sbc  [hl]                                        ; $6fff: $9e
	dec  c                                           ; $7000: $0d
	inc  bc                                          ; $7001: $03
	ld   [hl], l                                     ; $7002: $75
	di                                               ; $7003: $f3
	ld   [bc], a                                     ; $7004: $02
	adc  h                                           ; $7005: $8c
	di                                               ; $7006: $f3
	inc  b                                           ; $7007: $04
	dec  c                                           ; $7008: $0d
	db   $10                                         ; $7009: $10
	halt                                             ; $700a: $76
	sbc  [hl]                                        ; $700b: $9e
	inc  bc                                          ; $700c: $03
	ld   d, a                                        ; $700d: $57
	ld   [hl], h                                     ; $700e: $74
	ld   a, h                                        ; $700f: $7c
	inc  b                                           ; $7010: $04
	rst  JumpTable                                         ; $7011: $df
	inc  bc                                          ; $7012: $03
	and  [hl]                                        ; $7013: $a6
	ld   e, d                                        ; $7014: $5a
	dec  c                                           ; $7015: $0d
	ld   [bc], a                                     ; $7016: $02
	call nc, $5102                                   ; $7017: $d4 $02 $51
	ld   h, e                                        ; $701a: $63
	sbc  d                                           ; $701b: $9a
	sbc  c                                           ; $701c: $99
	ld   e, c                                        ; $701d: $59
	sub  a                                           ; $701e: $97
	ld   a, e                                        ; $701f: $7b
	sbc  a                                           ; $7020: $9f
	dec  c                                           ; $7021: $0d
	nop                                              ; $7022: $00
	ld   a, [bc]                                     ; $7023: $0a
	rrca                                             ; $7024: $0f
	nop                                              ; $7025: $00
	ld   bc, $7801                                   ; $7026: $01 $01 $78
	sbc  c                                           ; $7029: $99
	adc  c                                           ; $702a: $89
	ld   [hl], a                                     ; $702b: $77
	rst  $38                                         ; $702c: $ff
	rst  $38                                         ; $702d: $ff
	dec  c                                           ; $702e: $0d
	sbc  l                                           ; $702f: $9d
	ld   e, c                                        ; $7030: $59
	sbc  b                                           ; $7031: $98
	adc  h                                           ; $7032: $8c
	ld   h, l                                        ; $7033: $65
	ld   l, l                                        ; $7034: $6d
	sbc  [hl]                                        ; $7035: $9e
	and  e                                           ; $7036: $a3

jr_059_7037:
	jp   z, $a5d1                                    ; $7037: $ca $d1 $a5

	cp   d                                           ; $703a: $ba
	sbc  [hl]                                        ; $703b: $9e
	dec  c                                           ; $703c: $0d
	ld   d, b                                        ; $703d: $50
	sbc  b                                           ; $703e: $98
	ld   e, d                                        ; $703f: $5a
	halt                                             ; $7040: $76
	ld   d, h                                        ; $7041: $54
	ld   h, d                                        ; $7042: $62
	ld   h, h                                        ; $7043: $64
	ld   d, d                                        ; $7044: $52
	adc  h                                           ; $7045: $8c
	ld   h, l                                        ; $7046: $65
	ld   l, l                                        ; $7047: $6d
	sbc  a                                           ; $7048: $9f
	dec  c                                           ; $7049: $0d
	nop                                              ; $704a: $00
	ld   a, [bc]                                     ; $704b: $0a
	ld   b, $08                                      ; $704c: $06 $08
	db   $10                                         ; $704e: $10
	rrca                                             ; $704f: $0f
	add  hl, bc                                      ; $7050: $09
	nop                                              ; $7051: $00
	ld   bc, $0008                                   ; $7052: $01 $08 $00
	ld   e, l                                        ; $7055: $5d
	and  c                                           ; $7056: $a1
	ld   a, l                                        ; $7057: $7d
	dec  c                                           ; $7058: $0d
	inc  bc                                          ; $7059: $03
	and  [hl]                                        ; $705a: $a6
	inc  bc                                          ; $705b: $03
	ld   [hl], b                                     ; $705c: $70
	ld   h, e                                        ; $705d: $63
	ld   a, h                                        ; $705e: $7c
	inc  b                                           ; $705f: $04
	ld   d, a                                        ; $7060: $57
	dec  b                                           ; $7061: $05
	add  hl, hl                                      ; $7062: $29
	ld   e, d                                        ; $7063: $5a
	dec  c                                           ; $7064: $0d
	inc  bc                                          ; $7065: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7066: $cf
	ld   d, d                                        ; $7067: $52
	sub  [hl]                                        ; $7068: $96
	ld   d, h                                        ; $7069: $54
	ld   l, [hl]                                     ; $706a: $6e
	ld   a, b                                        ; $706b: $78
	sbc  a                                           ; $706c: $9f
	dec  c                                           ; $706d: $0d
	nop                                              ; $706e: $00
	ld   a, [bc]                                     ; $706f: $0a
	ld   bc, $8d67                                   ; $7070: $01 $67 $8d
	sbc  d                                           ; $7073: $9a
	ld   e, l                                        ; $7074: $5d
	and  c                                           ; $7075: $a1
	ld   a, h                                        ; $7076: $7c
	inc  bc                                          ; $7077: $03
	ld   l, l                                        ; $7078: $6d
	dec  b                                           ; $7079: $05
	add  hl, de                                      ; $707a: $19
	and  b                                           ; $707b: $a0
	dec  c                                           ; $707c: $0d
	ld   l, a                                        ; $707d: $6f
	sub  l                                           ; $707e: $95
	ld   [hl], c                                     ; $707f: $71
	halt                                             ; $7080: $76
	inc  b                                           ; $7081: $04
	rrca                                             ; $7082: $0f
	adc  a                                           ; $7083: $8f
	ld   a, c                                        ; $7084: $79
	halt                                             ; $7085: $76
	ld   [hl], c                                     ; $7086: $71
	ld   [hl], h                                     ; $7087: $74
	ld   e, b                                        ; $7088: $58
	ld   e, l                                        ; $7089: $5d
	halt                                             ; $708a: $76
	dec  c                                           ; $708b: $0d
	ld   d, d                                        ; $708c: $52
	ld   d, d                                        ; $708d: $52
	and  c                                           ; $708e: $a1
	ld   h, [hl]                                     ; $708f: $66
	sub  c                                           ; $7090: $91
	ld   a, b                                        ; $7091: $78
	ld   d, d                                        ; $7092: $52
	ld   e, c                                        ; $7093: $59
	ld   a, b                                        ; $7094: $78
	sbc  a                                           ; $7095: $9f
	dec  c                                           ; $7096: $0d
	nop                                              ; $7097: $00
	ld   a, [bc]                                     ; $7098: $0a
	ld   bc, $8d67                                   ; $7099: $01 $67 $8d
	sbc  d                                           ; $709c: $9a
	ld   e, l                                        ; $709d: $5d
	and  c                                           ; $709e: $a1
	ld   a, h                                        ; $709f: $7c
	inc  bc                                          ; $70a0: $03
	ld   l, l                                        ; $70a1: $6d
	dec  b                                           ; $70a2: $05
	add  hl, de                                      ; $70a3: $19
	ld   a, l                                        ; $70a4: $7d
	dec  c                                           ; $70a5: $0d
	inc  bc                                          ; $70a6: $03
	and  [hl]                                        ; $70a7: $a6
	inc  bc                                          ; $70a8: $03
	ld   [hl], b                                     ; $70a9: $70
	ld   h, e                                        ; $70aa: $63
	ld   a, h                                        ; $70ab: $7c
	ld   [bc], a                                     ; $70ac: $02
	call nc, $5102                                   ; $70ad: $d4 $02 $51
	ld   a, c                                        ; $70b0: $79
	ld   a, l                                        ; $70b1: $7d
	dec  c                                           ; $70b2: $0d
	ld   d, h                                        ; $70b3: $54
	ld   [hl], c                                     ; $70b4: $71
	ld   [hl], h                                     ; $70b5: $74
	ld   [hl], d                                     ; $70b6: $72
	ld   e, a                                        ; $70b7: $5f
	ld   l, [hl]                                     ; $70b8: $6e
	ld   e, c                                        ; $70b9: $59
	sub  a                                           ; $70ba: $97
	ld   a, e                                        ; $70bb: $7b
	sbc  a                                           ; $70bc: $9f
	dec  c                                           ; $70bd: $0d
	nop                                              ; $70be: $00
	ld   a, [bc]                                     ; $70bf: $0a
	rrca                                             ; $70c0: $0f
	nop                                              ; $70c1: $00
	ld   bc, $7801                                   ; $70c2: $01 $01 $78
	sbc  c                                           ; $70c5: $99
	adc  c                                           ; $70c6: $89
	ld   [hl], a                                     ; $70c7: $77
	rst  $38                                         ; $70c8: $ff
	rst  $38                                         ; $70c9: $ff
	dec  c                                           ; $70ca: $0d
	sbc  l                                           ; $70cb: $9d
	ld   e, c                                        ; $70cc: $59
	sbc  b                                           ; $70cd: $98
	adc  h                                           ; $70ce: $8c
	ld   h, l                                        ; $70cf: $65
	ld   l, l                                        ; $70d0: $6d
	sbc  [hl]                                        ; $70d1: $9e
	and  e                                           ; $70d2: $a3
	jp   z, $a5d1                                    ; $70d3: $ca $d1 $a5

	cp   d                                           ; $70d6: $ba
	sbc  [hl]                                        ; $70d7: $9e
	dec  c                                           ; $70d8: $0d
	ld   d, b                                        ; $70d9: $50
	sbc  b                                           ; $70da: $98
	ld   e, d                                        ; $70db: $5a
	halt                                             ; $70dc: $76
	ld   d, h                                        ; $70dd: $54
	ld   h, d                                        ; $70de: $62
	ld   h, h                                        ; $70df: $64
	ld   d, d                                        ; $70e0: $52
	adc  h                                           ; $70e1: $8c
	ld   h, l                                        ; $70e2: $65
	ld   l, l                                        ; $70e3: $6d
	sbc  a                                           ; $70e4: $9f
	dec  c                                           ; $70e5: $0d
	nop                                              ; $70e6: $00
	ld   a, [bc]                                     ; $70e7: $0a
	ld   b, $08                                      ; $70e8: $06 $08
	db   $10                                         ; $70ea: $10
	rrca                                             ; $70eb: $0f
	add  hl, bc                                      ; $70ec: $09
	nop                                              ; $70ed: $00
	ld   bc, $0008                                   ; $70ee: $01 $08 $00
	ld   e, l                                        ; $70f1: $5d
	and  c                                           ; $70f2: $a1
	ld   a, l                                        ; $70f3: $7d
	dec  c                                           ; $70f4: $0d
	ld   b, $25                                      ; $70f5: $06 $25
	inc  b                                           ; $70f7: $04
	dec  bc                                          ; $70f8: $0b
	ld   b, $80                                      ; $70f9: $06 $80
	ld   a, h                                        ; $70fb: $7c
	inc  b                                           ; $70fc: $04
	ld   d, a                                        ; $70fd: $57
	dec  b                                           ; $70fe: $05
	add  hl, hl                                      ; $70ff: $29
	ld   e, d                                        ; $7100: $5a
	dec  c                                           ; $7101: $0d
	inc  bc                                          ; $7102: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7103: $cf
	ld   d, d                                        ; $7104: $52
	sub  [hl]                                        ; $7105: $96
	ld   d, h                                        ; $7106: $54
	ld   l, [hl]                                     ; $7107: $6e
	ld   a, b                                        ; $7108: $78
	sbc  a                                           ; $7109: $9f
	dec  c                                           ; $710a: $0d
	nop                                              ; $710b: $00
	ld   a, [bc]                                     ; $710c: $0a
	ld   bc, $ecdf                                   ; $710d: $01 $df $ec
	and  e                                           ; $7110: $a3
	ld   a, h                                        ; $7111: $7c
	inc  bc                                          ; $7112: $03
	ld   l, l                                        ; $7113: $6d
	dec  b                                           ; $7114: $05
	add  hl, de                                      ; $7115: $19
	and  b                                           ; $7116: $a0
	dec  c                                           ; $7117: $0d
	ld   l, a                                        ; $7118: $6f
	sub  l                                           ; $7119: $95
	ld   [hl], c                                     ; $711a: $71
	halt                                             ; $711b: $76
	inc  b                                           ; $711c: $04
	rrca                                             ; $711d: $0f
	adc  a                                           ; $711e: $8f
	ld   a, c                                        ; $711f: $79
	halt                                             ; $7120: $76
	ld   [hl], c                                     ; $7121: $71
	ld   [hl], h                                     ; $7122: $74
	ld   e, b                                        ; $7123: $58
	ld   e, l                                        ; $7124: $5d
	halt                                             ; $7125: $76
	dec  c                                           ; $7126: $0d
	ld   d, d                                        ; $7127: $52
	ld   d, d                                        ; $7128: $52
	and  c                                           ; $7129: $a1
	ld   h, [hl]                                     ; $712a: $66
	sub  c                                           ; $712b: $91
	ld   a, b                                        ; $712c: $78
	ld   d, d                                        ; $712d: $52
	ld   e, c                                        ; $712e: $59
	ld   a, b                                        ; $712f: $78
	sbc  a                                           ; $7130: $9f
	dec  c                                           ; $7131: $0d
	nop                                              ; $7132: $00
	ld   a, [bc]                                     ; $7133: $0a
	ld   bc, $ecdf                                   ; $7134: $01 $df $ec
	and  e                                           ; $7137: $a3
	ld   a, h                                        ; $7138: $7c
	inc  bc                                          ; $7139: $03
	ld   l, l                                        ; $713a: $6d
	dec  b                                           ; $713b: $05
	add  hl, de                                      ; $713c: $19
	ld   a, l                                        ; $713d: $7d
	inc  bc                                          ; $713e: $03
	daa                                              ; $713f: $27
	ld   [bc], a                                     ; $7140: $02
	sub  c                                           ; $7141: $91
	ld   l, [hl]                                     ; $7142: $6e
	ld   e, c                                        ; $7143: $59
	sub  a                                           ; $7144: $97
	sbc  [hl]                                        ; $7145: $9e
	dec  c                                           ; $7146: $0d
	ld   e, c                                        ; $7147: $59
	ld   a, b                                        ; $7148: $78
	sbc  b                                           ; $7149: $98
	ld   a, h                                        ; $714a: $7c
	ld   b, $25                                      ; $714b: $06 $25
	inc  b                                           ; $714d: $04
	dec  bc                                          ; $714e: $0b
	ld   b, $80                                      ; $714f: $06 $80
	and  b                                           ; $7151: $a0
	dec  c                                           ; $7152: $0d
	inc  b                                           ; $7153: $04
	rst  JumpTable                                         ; $7154: $df
	ld   b, $85                                      ; $7155: $06 $85
	ld   h, e                                        ; $7157: $63
	sbc  d                                           ; $7158: $9a

Jump_059_7159:
	sbc  c                                           ; $7159: $99
	ld   e, c                                        ; $715a: $59
	sub  a                                           ; $715b: $97
	ld   a, e                                        ; $715c: $7b
	sbc  a                                           ; $715d: $9f
	dec  c                                           ; $715e: $0d
	nop                                              ; $715f: $00
	ld   a, [bc]                                     ; $7160: $0a
	rrca                                             ; $7161: $0f
	nop                                              ; $7162: $00
	ld   bc, $7801                                   ; $7163: $01 $01 $78
	sbc  c                                           ; $7166: $99
	adc  c                                           ; $7167: $89
	ld   [hl], a                                     ; $7168: $77
	rst  $38                                         ; $7169: $ff
	rst  $38                                         ; $716a: $ff
	dec  c                                           ; $716b: $0d
	sbc  l                                           ; $716c: $9d
	ld   e, c                                        ; $716d: $59
	sbc  b                                           ; $716e: $98
	adc  h                                           ; $716f: $8c
	ld   h, l                                        ; $7170: $65
	ld   l, l                                        ; $7171: $6d
	sbc  [hl]                                        ; $7172: $9e
	and  e                                           ; $7173: $a3
	jp   z, $a5d1                                    ; $7174: $ca $d1 $a5

	cp   d                                           ; $7177: $ba
	sbc  [hl]                                        ; $7178: $9e
	dec  c                                           ; $7179: $0d
	ld   d, b                                        ; $717a: $50
	sbc  b                                           ; $717b: $98
	ld   e, d                                        ; $717c: $5a
	halt                                             ; $717d: $76
	ld   d, h                                        ; $717e: $54
	ld   h, d                                        ; $717f: $62
	ld   h, h                                        ; $7180: $64
	ld   d, d                                        ; $7181: $52
	adc  h                                           ; $7182: $8c
	ld   h, l                                        ; $7183: $65
	ld   l, l                                        ; $7184: $6d
	sbc  a                                           ; $7185: $9f
	dec  c                                           ; $7186: $0d
	nop                                              ; $7187: $00
	ld   a, [bc]                                     ; $7188: $0a
	ld   b, $08                                      ; $7189: $06 $08
	db   $10                                         ; $718b: $10
	rrca                                             ; $718c: $0f
	add  hl, bc                                      ; $718d: $09
	nop                                              ; $718e: $00
	ld   bc, $0008                                   ; $718f: $01 $08 $00
	ld   e, l                                        ; $7192: $5d
	and  c                                           ; $7193: $a1
	ld   a, l                                        ; $7194: $7d
	dec  c                                           ; $7195: $0d
	dec  b                                           ; $7196: $05
	add  hl, bc                                      ; $7197: $09
	dec  b                                           ; $7198: $05
	ld   a, [bc]                                     ; $7199: $0a
	ld   a, h                                        ; $719a: $7c
	inc  b                                           ; $719b: $04
	ld   d, a                                        ; $719c: $57
	dec  b                                           ; $719d: $05
	add  hl, hl                                      ; $719e: $29
	ld   e, d                                        ; $719f: $5a
	dec  c                                           ; $71a0: $0d
	inc  bc                                          ; $71a1: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71a2: $cf
	ld   d, d                                        ; $71a3: $52
	sub  [hl]                                        ; $71a4: $96
	ld   d, h                                        ; $71a5: $54
	ld   l, [hl]                                     ; $71a6: $6e
	ld   a, b                                        ; $71a7: $78
	sbc  a                                           ; $71a8: $9f
	dec  c                                           ; $71a9: $0d
	nop                                              ; $71aa: $00
	ld   a, [bc]                                     ; $71ab: $0a
	ld   bc, $a5a3                                   ; $71ac: $01 $a3 $a5
	db   $ec                                         ; $71af: $ec
	cp   d                                           ; $71b0: $ba
	ld   a, h                                        ; $71b1: $7c
	inc  bc                                          ; $71b2: $03
	ld   l, l                                        ; $71b3: $6d
	dec  b                                           ; $71b4: $05
	add  hl, de                                      ; $71b5: $19
	and  b                                           ; $71b6: $a0
	dec  c                                           ; $71b7: $0d
	ld   l, a                                        ; $71b8: $6f
	sub  l                                           ; $71b9: $95
	ld   [hl], c                                     ; $71ba: $71
	halt                                             ; $71bb: $76
	inc  b                                           ; $71bc: $04
	rrca                                             ; $71bd: $0f
	adc  a                                           ; $71be: $8f
	ld   a, c                                        ; $71bf: $79
	halt                                             ; $71c0: $76
	ld   [hl], c                                     ; $71c1: $71
	ld   [hl], h                                     ; $71c2: $74
	ld   e, b                                        ; $71c3: $58
	ld   e, l                                        ; $71c4: $5d
	halt                                             ; $71c5: $76
	dec  c                                           ; $71c6: $0d
	ld   d, d                                        ; $71c7: $52
	ld   d, d                                        ; $71c8: $52
	and  c                                           ; $71c9: $a1
	ld   h, [hl]                                     ; $71ca: $66
	sub  c                                           ; $71cb: $91
	ld   a, b                                        ; $71cc: $78
	ld   d, d                                        ; $71cd: $52
	ld   e, c                                        ; $71ce: $59
	ld   a, b                                        ; $71cf: $78
	sbc  a                                           ; $71d0: $9f
	dec  c                                           ; $71d1: $0d
	nop                                              ; $71d2: $00
	ld   a, [bc]                                     ; $71d3: $0a
	ld   bc, $a5a3                                   ; $71d4: $01 $a3 $a5
	db   $ec                                         ; $71d7: $ec
	cp   d                                           ; $71d8: $ba
	ld   a, h                                        ; $71d9: $7c
	inc  bc                                          ; $71da: $03
	ld   l, l                                        ; $71db: $6d
	dec  b                                           ; $71dc: $05
	add  hl, de                                      ; $71dd: $19
	ld   a, l                                        ; $71de: $7d
	dec  c                                           ; $71df: $0d
	dec  b                                           ; $71e0: $05
	add  hl, bc                                      ; $71e1: $09
	dec  b                                           ; $71e2: $05
	ld   a, [bc]                                     ; $71e3: $0a
	and  e                                           ; $71e4: $a3
	call nz, Call_059_79d8                           ; $71e5: $c4 $d8 $79
	ld   a, l                                        ; $71e8: $7d
	dec  c                                           ; $71e9: $0d
	ld   d, h                                        ; $71ea: $54
	ld   [hl], c                                     ; $71eb: $71
	ld   [hl], h                                     ; $71ec: $74
	ld   [hl], d                                     ; $71ed: $72
	ld   e, a                                        ; $71ee: $5f
	ld   l, [hl]                                     ; $71ef: $6e
	ld   e, c                                        ; $71f0: $59
	sub  a                                           ; $71f1: $97
	ld   a, e                                        ; $71f2: $7b
	sbc  a                                           ; $71f3: $9f
	dec  c                                           ; $71f4: $0d
	nop                                              ; $71f5: $00
	ld   a, [bc]                                     ; $71f6: $0a
	rrca                                             ; $71f7: $0f
	nop                                              ; $71f8: $00
	ld   bc, $7801                                   ; $71f9: $01 $01 $78
	sbc  c                                           ; $71fc: $99
	adc  c                                           ; $71fd: $89
	ld   [hl], a                                     ; $71fe: $77
	rst  $38                                         ; $71ff: $ff
	rst  $38                                         ; $7200: $ff
	dec  c                                           ; $7201: $0d
	sbc  l                                           ; $7202: $9d
	ld   e, c                                        ; $7203: $59
	sbc  b                                           ; $7204: $98
	adc  h                                           ; $7205: $8c
	ld   h, l                                        ; $7206: $65
	ld   l, l                                        ; $7207: $6d
	sbc  [hl]                                        ; $7208: $9e
	and  e                                           ; $7209: $a3
	jp   z, $a5d1                                    ; $720a: $ca $d1 $a5

	cp   d                                           ; $720d: $ba
	sbc  [hl]                                        ; $720e: $9e
	dec  c                                           ; $720f: $0d
	ld   d, b                                        ; $7210: $50
	sbc  b                                           ; $7211: $98
	ld   e, d                                        ; $7212: $5a
	halt                                             ; $7213: $76
	ld   d, h                                        ; $7214: $54
	ld   h, d                                        ; $7215: $62
	ld   h, h                                        ; $7216: $64
	ld   d, d                                        ; $7217: $52
	adc  h                                           ; $7218: $8c
	ld   h, l                                        ; $7219: $65
	ld   l, l                                        ; $721a: $6d
	sbc  a                                           ; $721b: $9f
	dec  c                                           ; $721c: $0d
	nop                                              ; $721d: $00
	ld   a, [bc]                                     ; $721e: $0a
	ld   b, $08                                      ; $721f: $06 $08
	db   $10                                         ; $7221: $10
	rrca                                             ; $7222: $0f
	add  hl, bc                                      ; $7223: $09
	nop                                              ; $7224: $00
	ld   bc, $0008                                   ; $7225: $01 $08 $00
	ld   e, l                                        ; $7228: $5d
	and  c                                           ; $7229: $a1
	ld   a, l                                        ; $722a: $7d
	dec  c                                           ; $722b: $0d
	sub  b                                           ; $722c: $90
	ld   d, h                                        ; $722d: $54
	inc  bc                                          ; $722e: $03
	ld   l, h                                        ; $722f: $6c
	ld   h, l                                        ; $7230: $65
	ld   [bc], a                                     ; $7231: $02
	add  h                                           ; $7232: $84
	ld   [bc], a                                     ; $7233: $02
	and  d                                           ; $7234: $a2
	inc  b                                           ; $7235: $04
	jr   nz, jr_059_723c                             ; $7236: $20 $04

	dec  hl                                          ; $7238: $2b
	inc  bc                                          ; $7239: $03
	dec  [hl]                                        ; $723a: $35
	and  b                                           ; $723b: $a0

jr_059_723c:
	dec  c                                           ; $723c: $0d
	inc  b                                           ; $723d: $04
	pop  de                                          ; $723e: $d1
	ld   a, c                                        ; $723f: $79
	ld   [hl], d                                     ; $7240: $72
	ld   e, a                                        ; $7241: $5f
	ld   l, l                                        ; $7242: $6d
	adc  c                                           ; $7243: $89
	ld   d, h                                        ; $7244: $54
	ld   e, d                                        ; $7245: $5a
	ld   d, d                                        ; $7246: $52
	ld   d, d                                        ; $7247: $52
	ld   a, b                                        ; $7248: $78
	sbc  a                                           ; $7249: $9f
	dec  c                                           ; $724a: $0d
	nop                                              ; $724b: $00
	ld   a, [bc]                                     ; $724c: $0a
	ld   bc, $cf02                                   ; $724d: $01 $02 $cf
	dec  b                                           ; $7250: $05
	ld   a, [de]                                     ; $7251: $1a
	ld   a, h                                        ; $7252: $7c
	inc  bc                                          ; $7253: $03
	ld   l, l                                        ; $7254: $6d
	dec  b                                           ; $7255: $05
	add  hl, de                                      ; $7256: $19
	and  b                                           ; $7257: $a0
	dec  c                                           ; $7258: $0d
	ld   l, a                                        ; $7259: $6f
	sub  l                                           ; $725a: $95
	ld   [hl], c                                     ; $725b: $71
	halt                                             ; $725c: $76
	inc  b                                           ; $725d: $04
	rrca                                             ; $725e: $0f
	adc  a                                           ; $725f: $8f
	ld   a, c                                        ; $7260: $79
	halt                                             ; $7261: $76
	ld   [hl], c                                     ; $7262: $71
	ld   [hl], h                                     ; $7263: $74
	ld   e, b                                        ; $7264: $58
	ld   e, l                                        ; $7265: $5d
	halt                                             ; $7266: $76
	dec  c                                           ; $7267: $0d
	ld   d, d                                        ; $7268: $52
	ld   d, d                                        ; $7269: $52
	and  c                                           ; $726a: $a1
	ld   h, [hl]                                     ; $726b: $66
	sub  c                                           ; $726c: $91
	ld   a, b                                        ; $726d: $78
	ld   d, d                                        ; $726e: $52
	ld   e, c                                        ; $726f: $59
	ld   a, b                                        ; $7270: $78
	sbc  a                                           ; $7271: $9f
	dec  c                                           ; $7272: $0d
	nop                                              ; $7273: $00
	ld   a, [bc]                                     ; $7274: $0a
	ld   bc, $cf02                                   ; $7275: $01 $02 $cf
	dec  b                                           ; $7278: $05
	ld   a, [de]                                     ; $7279: $1a
	ld   a, h                                        ; $727a: $7c
	ld   [bc], a                                     ; $727b: $02
	ld   l, d                                        ; $727c: $6a
	ld   b, $44                                      ; $727d: $06 $44
	and  b                                           ; $727f: $a0
	sbc  [hl]                                        ; $7280: $9e
	ld   l, e                                        ; $7281: $6b
	ld   a, [hl]                                     ; $7282: $7e
	ld   [hl], l                                     ; $7283: $75
	ld   [bc], a                                     ; $7284: $02
	sub  l                                           ; $7285: $95
	ld   [hl], h                                     ; $7286: $74
	sbc  c                                           ; $7287: $99
	dec  c                                           ; $7288: $0d
	ld   l, [hl]                                     ; $7289: $6e
	ld   e, a                                        ; $728a: $5f
	ld   [hl], l                                     ; $728b: $75
	sub  b                                           ; $728c: $90
	inc  b                                           ; $728d: $04
	xor  [hl]                                        ; $728e: $ae
	ld   [bc], a                                     ; $728f: $02
	call nc, $7879                                   ; $7290: $d4 $79 $78
	sbc  c                                           ; $7293: $99
	ld   e, c                                        ; $7294: $59
	sub  a                                           ; $7295: $97
	ld   a, e                                        ; $7296: $7b
	sbc  a                                           ; $7297: $9f
	dec  c                                           ; $7298: $0d
	nop                                              ; $7299: $00
	ld   a, [bc]                                     ; $729a: $0a
	rrca                                             ; $729b: $0f
	nop                                              ; $729c: $00
	ld   bc, $7801                                   ; $729d: $01 $01 $78
	sbc  c                                           ; $72a0: $99
	adc  c                                           ; $72a1: $89
	ld   [hl], a                                     ; $72a2: $77
	rst  $38                                         ; $72a3: $ff
	rst  $38                                         ; $72a4: $ff
	dec  c                                           ; $72a5: $0d
	sbc  l                                           ; $72a6: $9d
	ld   e, c                                        ; $72a7: $59
	sbc  b                                           ; $72a8: $98
	adc  h                                           ; $72a9: $8c
	ld   h, l                                        ; $72aa: $65
	ld   l, l                                        ; $72ab: $6d
	sbc  [hl]                                        ; $72ac: $9e
	and  e                                           ; $72ad: $a3
	jp   z, $a5d1                                    ; $72ae: $ca $d1 $a5

	cp   d                                           ; $72b1: $ba
	sbc  [hl]                                        ; $72b2: $9e
	dec  c                                           ; $72b3: $0d
	ld   d, b                                        ; $72b4: $50
	sbc  b                                           ; $72b5: $98
	ld   e, d                                        ; $72b6: $5a
	halt                                             ; $72b7: $76
	ld   d, h                                        ; $72b8: $54
	ld   h, d                                        ; $72b9: $62
	ld   h, h                                        ; $72ba: $64
	ld   d, d                                        ; $72bb: $52
	adc  h                                           ; $72bc: $8c
	ld   h, l                                        ; $72bd: $65
	ld   l, l                                        ; $72be: $6d
	sbc  a                                           ; $72bf: $9f
	dec  c                                           ; $72c0: $0d
	nop                                              ; $72c1: $00
	ld   a, [bc]                                     ; $72c2: $0a
	ld   b, $08                                      ; $72c3: $06 $08
	db   $10                                         ; $72c5: $10
	rrca                                             ; $72c6: $0f
	add  hl, bc                                      ; $72c7: $09
	nop                                              ; $72c8: $00
	ld   bc, $0008                                   ; $72c9: $01 $08 $00
	ld   e, l                                        ; $72cc: $5d
	and  c                                           ; $72cd: $a1
	ld   a, l                                        ; $72ce: $7d
	dec  c                                           ; $72cf: $0d
	sub  b                                           ; $72d0: $90
	ld   [hl], c                                     ; $72d1: $71
	halt                                             ; $72d2: $76
	ld   [bc], a                                     ; $72d3: $02
	and  c                                           ; $72d4: $a1
	ld   [bc], a                                     ; $72d5: $02
	ld   a, e                                        ; $72d6: $7b
	ld   d, d                                        ; $72d7: $52
	and  b                                           ; $72d8: $a0
	dec  c                                           ; $72d9: $0d
	inc  b                                           ; $72da: $04
	pop  de                                          ; $72db: $d1
	ld   a, c                                        ; $72dc: $79
	ld   [hl], d                                     ; $72dd: $72
	ld   e, a                                        ; $72de: $5f
	ld   l, l                                        ; $72df: $6d
	adc  c                                           ; $72e0: $89
	ld   d, h                                        ; $72e1: $54
	ld   e, d                                        ; $72e2: $5a
	ld   d, d                                        ; $72e3: $52
	ld   d, d                                        ; $72e4: $52
	ld   a, b                                        ; $72e5: $78
	sbc  a                                           ; $72e6: $9f
	dec  c                                           ; $72e7: $0d
	nop                                              ; $72e8: $00
	ld   a, [bc]                                     ; $72e9: $0a
	ld   bc, $f5ac                                   ; $72ea: $01 $ac $f5
	bit  7, h                                        ; $72ed: $cb $7c
	inc  bc                                          ; $72ef: $03
	ld   l, l                                        ; $72f0: $6d
	dec  b                                           ; $72f1: $05
	add  hl, de                                      ; $72f2: $19
	and  b                                           ; $72f3: $a0
	dec  c                                           ; $72f4: $0d
	ld   l, a                                        ; $72f5: $6f
	sub  l                                           ; $72f6: $95
	ld   [hl], c                                     ; $72f7: $71
	halt                                             ; $72f8: $76
	inc  b                                           ; $72f9: $04
	rrca                                             ; $72fa: $0f
	adc  a                                           ; $72fb: $8f
	ld   a, c                                        ; $72fc: $79
	halt                                             ; $72fd: $76
	ld   [hl], c                                     ; $72fe: $71
	ld   [hl], h                                     ; $72ff: $74
	ld   e, b                                        ; $7300: $58
	ld   e, l                                        ; $7301: $5d
	halt                                             ; $7302: $76
	dec  c                                           ; $7303: $0d
	ld   d, d                                        ; $7304: $52
	ld   d, d                                        ; $7305: $52
	and  c                                           ; $7306: $a1
	ld   h, [hl]                                     ; $7307: $66
	sub  c                                           ; $7308: $91
	ld   a, b                                        ; $7309: $78
	ld   d, d                                        ; $730a: $52
	ld   e, c                                        ; $730b: $59
	ld   a, b                                        ; $730c: $78
	sbc  a                                           ; $730d: $9f
	dec  c                                           ; $730e: $0d
	nop                                              ; $730f: $00
	ld   a, [bc]                                     ; $7310: $0a
	ld   bc, $f5ac                                   ; $7311: $01 $ac $f5
	bit  7, h                                        ; $7314: $cb $7c
	ld   [bc], a                                     ; $7316: $02
	or   [hl]                                        ; $7317: $b6
	inc  bc                                          ; $7318: $03
	ld   l, e                                        ; $7319: $6b
	ld   a, l                                        ; $731a: $7d
	dec  c                                           ; $731b: $0d
	adc  h                                           ; $731c: $8c
	ld   h, e                                        ; $731d: $63
	ld   a, c                                        ; $731e: $79
	ld   bc, $0207                                   ; $731f: $01 $07 $02
	and  c                                           ; $7322: $a1
	ld   [bc], a                                     ; $7323: $02
	ld   a, e                                        ; $7324: $7b
	ld   d, d                                        ; $7325: $52
	ld   a, h                                        ; $7326: $7c
	inc  b                                           ; $7327: $04
	ld   d, d                                        ; $7328: $52
	inc  bc                                          ; $7329: $03
	db   $10                                         ; $732a: $10
	ld   bc, $0d08                                   ; $732b: $01 $08 $0d
	halt                                             ; $732e: $76
	ld   d, d                                        ; $732f: $52
	ld   d, h                                        ; $7330: $54
	ld   [bc], a                                     ; $7331: $02
	scf                                              ; $7332: $37
	ld   h, [hl]                                     ; $7333: $66
	ld   l, [hl]                                     ; $7334: $6e
	ld   e, c                                        ; $7335: $59
	sub  a                                           ; $7336: $97
	ld   a, e                                        ; $7337: $7b
	sbc  a                                           ; $7338: $9f
	dec  c                                           ; $7339: $0d
	nop                                              ; $733a: $00
	ld   a, [bc]                                     ; $733b: $0a
	rrca                                             ; $733c: $0f
	nop                                              ; $733d: $00
	ld   bc, $7801                                   ; $733e: $01 $01 $78
	sbc  c                                           ; $7341: $99
	adc  c                                           ; $7342: $89
	ld   [hl], a                                     ; $7343: $77
	rst  $38                                         ; $7344: $ff
	rst  $38                                         ; $7345: $ff
	dec  c                                           ; $7346: $0d
	sbc  l                                           ; $7347: $9d
	ld   e, c                                        ; $7348: $59
	sbc  b                                           ; $7349: $98
	adc  h                                           ; $734a: $8c
	ld   h, l                                        ; $734b: $65
	ld   l, l                                        ; $734c: $6d
	sbc  [hl]                                        ; $734d: $9e
	and  e                                           ; $734e: $a3
	jp   z, $a5d1                                    ; $734f: $ca $d1 $a5

	cp   d                                           ; $7352: $ba
	sbc  [hl]                                        ; $7353: $9e
	dec  c                                           ; $7354: $0d
	ld   d, b                                        ; $7355: $50
	sbc  b                                           ; $7356: $98
	ld   e, d                                        ; $7357: $5a
	halt                                             ; $7358: $76
	ld   d, h                                        ; $7359: $54
	ld   h, d                                        ; $735a: $62
	ld   h, h                                        ; $735b: $64
	ld   d, d                                        ; $735c: $52
	adc  h                                           ; $735d: $8c
	ld   h, l                                        ; $735e: $65
	ld   l, l                                        ; $735f: $6d
	sbc  a                                           ; $7360: $9f
	dec  c                                           ; $7361: $0d
	nop                                              ; $7362: $00
	ld   a, [bc]                                     ; $7363: $0a
	ld   b, $08                                      ; $7364: $06 $08
	db   $10                                         ; $7366: $10
	inc  e                                           ; $7367: $1c
	add  hl, bc                                      ; $7368: $09
	ld   bc, $0101                                   ; $7369: $01 $01 $01
	ld   d, h                                        ; $736c: $54
	and  c                                           ; $736d: $a1
	sbc  a                                           ; $736e: $9f
	dec  c                                           ; $736f: $0d
	ld   l, e                                        ; $7370: $6b
	sbc  d                                           ; $7371: $9a
	ld   h, [hl]                                     ; $7372: $66
	sub  c                                           ; $7373: $91
	sbc  [hl]                                        ; $7374: $9e
	ld   e, d                                        ; $7375: $5a
	and  c                                           ; $7376: $a1
	ld   a, [hl]                                     ; $7377: $7e
	sbc  d                                           ; $7378: $9a
	sub  [hl]                                        ; $7379: $96
	sbc  a                                           ; $737a: $9f
	dec  c                                           ; $737b: $0d
	nop                                              ; $737c: $00
	ld   a, [bc]                                     ; $737d: $0a
	nop                                              ; $737e: $00
	nop                                              ; $737f: $00
	ld   c, $48                                      ; $7380: $0e $48
	rrca                                             ; $7382: $0f
	nop                                              ; $7383: $00
	ld   bc, $1402                                   ; $7384: $01 $02 $14
	ld   b, $01                                      ; $7387: $06 $01
	ld   bc, $f5ac                                   ; $7389: $01 $ac $f5
	bit  4, e                                        ; $738c: $cb $63
	and  c                                           ; $738e: $a1
	sbc  a                                           ; $738f: $9f
	dec  c                                           ; $7390: $0d
	ld   h, a                                        ; $7391: $67
	adc  l                                           ; $7392: $8d
	adc  h                                           ; $7393: $8c
	ld   l, c                                        ; $7394: $69
	rst  $38                                         ; $7395: $ff
	rst  $38                                         ; $7396: $ff
	dec  c                                           ; $7397: $0d
	nop                                              ; $7398: $00
	ld   a, [bc]                                     ; $7399: $0a
	inc  d                                           ; $739a: $14
	rlca                                             ; $739b: $07
	ld   bc, $030c                                   ; $739c: $01 $0c $03
	ld   c, $49                                      ; $739f: $0e $49
	ld   bc, $0301                                   ; $73a1: $01 $01 $03
	and  l                                           ; $73a4: $a5
	call nz, $fbc7                                   ; $73a5: $c4 $c7 $fb
	sbc  [hl]                                        ; $73a8: $9e
	xor  h                                           ; $73a9: $ac
	push af                                          ; $73aa: $f5
	bit  4, e                                        ; $73ab: $cb $63
	and  c                                           ; $73ad: $a1
	ld   e, d                                        ; $73ae: $5a
	dec  c                                           ; $73af: $0d
	db   $10                                         ; $73b0: $10
	inc  bc                                          ; $73b1: $03
	di                                               ; $73b2: $f3
	inc  bc                                          ; $73b3: $03
	sbc  c                                           ; $73b4: $99
	jp   z, $a0a3                                    ; $73b5: $ca $a3 $a0

	ld   d, b                                        ; $73b8: $50
	ld   e, a                                        ; $73b9: $5f
	ld   l, l                                        ; $73ba: $6d
	ld   e, c                                        ; $73bb: $59
	sub  a                                           ; $73bc: $97
	sbc  [hl]                                        ; $73bd: $9e
	dec  c                                           ; $73be: $0d
	db   $10                                         ; $73bf: $10
	inc  b                                           ; $73c0: $04
	ld   l, l                                        ; $73c1: $6d
	ld   a, h                                        ; $73c2: $7c
	xor  e                                           ; $73c3: $ab
	ret  z                                           ; $73c4: $c8

	or   h                                           ; $73c5: $b4
	ld   a, c                                        ; $73c6: $79
	add  h                                           ; $73c7: $84
	ld   [hl], d                                     ; $73c8: $72
	ld   e, c                                        ; $73c9: $59
	ld   [hl], c                                     ; $73ca: $71
	ld   l, l                                        ; $73cb: $6d
	rst  $38                                         ; $73cc: $ff
	ld   bc, $0d04                                   ; $73cd: $01 $04 $0d
	nop                                              ; $73d0: $00
	ld   a, [bc]                                     ; $73d1: $0a
	add  hl, de                                      ; $73d2: $19
	dec  b                                           ; $73d3: $05
	inc  bc                                          ; $73d4: $03
	ld   h, c                                        ; $73d5: $61
	ld   a, h                                        ; $73d6: $7c
	adc  h                                           ; $73d7: $8c
	adc  h                                           ; $73d8: $8c
	ld   l, l                                        ; $73d9: $6d
	ld   e, b                                        ; $73da: $58
	sbc  d                                           ; $73db: $9a
	sbc  c                                           ; $73dc: $99
	nop                                              ; $73dd: $00
	nop                                              ; $73de: $00
	ld   e, d                                        ; $73df: $5a
	adc  h                                           ; $73e0: $8c
	and  c                                           ; $73e1: $a1
	ld   h, a                                        ; $73e2: $67
	sbc  c                                           ; $73e3: $99
	nop                                              ; $73e4: $00
	ld   bc, $a3ca                                   ; $73e5: $01 $ca $a3
	and  b                                           ; $73e8: $a0
	inc  b                                           ; $73e9: $04
	ld   l, [hl]                                     ; $73ea: $6e
	adc  a                                           ; $73eb: $8f
	ld   a, b                                        ; $73ec: $78
	ld   e, b                                        ; $73ed: $58
	ld   h, a                                        ; $73ee: $67
	nop                                              ; $73ef: $00
	ld   [bc], a                                     ; $73f0: $02
	rlca                                             ; $73f1: $07
	adc  a                                           ; $73f2: $8f
	nop                                              ; $73f3: $00
	ld   [bc], a                                     ; $73f4: $02
	inc  bc                                          ; $73f5: $03
	ld   bc, $2000                                   ; $73f6: $01 $00 $20
	nop                                              ; $73f9: $00
	rlca                                             ; $73fa: $07
	ccf                                              ; $73fb: $3f
	ld   bc, $0302                                   ; $73fc: $01 $02 $03
	ld   bc, $2001                                   ; $73ff: $01 $01 $20
	nop                                              ; $7402: $00
	rlca                                             ; $7403: $07
	rst  JumpTable                                         ; $7404: $df
	ld   bc, $0302                                   ; $7405: $01 $02 $03
	ld   bc, $2002                                   ; $7408: $01 $02 $20
	nop                                              ; $740b: $00
	ld   b, $8f                                      ; $740c: $06 $8f
	nop                                              ; $740e: $00
	rrca                                             ; $740f: $0f
	nop                                              ; $7410: $00
	ld   bc, $0101                                   ; $7411: $01 $01 $01
	inc  bc                                          ; $7414: $03
	ld   d, b                                        ; $7415: $50
	ei                                               ; $7416: $fb
	sbc  [hl]                                        ; $7417: $9e
	pop  bc                                          ; $7418: $c1
	db   $e3                                         ; $7419: $e3
	ld   l, [hl]                                     ; $741a: $6e
	rst  $38                                         ; $741b: $ff
	rst  $38                                         ; $741c: $ff
	dec  c                                           ; $741d: $0d
	db   $10                                         ; $741e: $10
	ld   e, e                                        ; $741f: $5b
	ld   l, d                                        ; $7420: $6a
	ld   [hl], d                                     ; $7421: $72
	ld   h, a                                        ; $7422: $67
	sbc  c                                           ; $7423: $99
	rst  $38                                         ; $7424: $ff
	rst  $38                                         ; $7425: $ff
	rst  $38                                         ; $7426: $ff
	rst  $38                                         ; $7427: $ff
	ld   bc, $0d04                                   ; $7428: $01 $04 $0d
	nop                                              ; $742b: $00
	ld   a, [bc]                                     ; $742c: $0a
	inc  c                                           ; $742d: $0c
	ld   [bc], a                                     ; $742e: $02
	ld   c, $03                                      ; $742f: $0e $03
	rrca                                             ; $7431: $0f
	ld   b, $05                                      ; $7432: $06 $05
	ld   bc, $5258                                   ; $7434: $01 $58 $52
	sbc  [hl]                                        ; $7437: $9e
	ld   [$9f00], sp                                 ; $7438: $08 $00 $9f
	dec  c                                           ; $743b: $0d
	inc  b                                           ; $743c: $04
	ld   c, $03                                      ; $743d: $0e $03
	sbc  l                                           ; $743f: $9d
	inc  b                                           ; $7440: $04
	and  [hl]                                        ; $7441: $a6
	ld   e, c                                        ; $7442: $59
	ld   sp, hl                                      ; $7443: $f9
	dec  c                                           ; $7444: $0d
	nop                                              ; $7445: $00
	ld   a, [bc]                                     ; $7446: $0a
	inc  c                                           ; $7447: $0c
	inc  c                                           ; $7448: $0c
	ld   c, $49                                      ; $7449: $0e $49
	inc  e                                           ; $744b: $1c
	ld   b, $01                                      ; $744c: $06 $01
	ld   bc, $5001                                   ; $744e: $01 $01 $50
	rst  $38                                         ; $7451: $ff
	sbc  [hl]                                        ; $7452: $9e
	sub  [hl]                                        ; $7453: $96
	ld   e, c                                        ; $7454: $59
	ld   [hl], c                                     ; $7455: $71
	ld   l, l                                        ; $7456: $6d
	sbc  a                                           ; $7457: $9f
	dec  c                                           ; $7458: $0d
	inc  b                                           ; $7459: $04
	call nc, Call_059_63a0                           ; $745a: $d4 $a0 $63
	adc  h                                           ; $745d: $8c
	ld   h, l                                        ; $745e: $65
	ld   l, l                                        ; $745f: $6d
	rst  $38                                         ; $7460: $ff
	rst  $38                                         ; $7461: $ff
	dec  c                                           ; $7462: $0d
	nop                                              ; $7463: $00
	ld   a, [bc]                                     ; $7464: $0a
	inc  e                                           ; $7465: $1c
	ld   b, $04                                      ; $7466: $06 $04
	inc  b                                           ; $7468: $04
	ld   bc, $8c67                                   ; $7469: $01 $67 $8c
	ld   a, b                                        ; $746c: $78
	ld   e, c                                        ; $746d: $59
	ld   [hl], c                                     ; $746e: $71
	ld   l, l                                        ; $746f: $6d
	ld   a, b                                        ; $7470: $78
	sbc  a                                           ; $7471: $9f
	dec  c                                           ; $7472: $0d
	inc  b                                           ; $7473: $04
	dec  hl                                          ; $7474: $2b
	sub  a                                           ; $7475: $97
	ld   a, b                                        ; $7476: $78
	ld   e, c                                        ; $7477: $59
	ld   [hl], c                                     ; $7478: $71
	ld   l, l                                        ; $7479: $6d
	and  c                                           ; $747a: $a1
	ld   l, [hl]                                     ; $747b: $6e
	sub  [hl]                                        ; $747c: $96
	sbc  a                                           ; $747d: $9f
	dec  c                                           ; $747e: $0d
	ld   e, b                                        ; $747f: $58
	inc  bc                                          ; $7480: $03
	ld   c, a                                        ; $7481: $4f
	ld   e, d                                        ; $7482: $5a
	jp   z, $7ca3                                    ; $7483: $ca $a3 $7c

	inc  bc                                          ; $7486: $03
	ld   c, e                                        ; $7487: $4b
	ld   a, c                                        ; $7488: $79
	ld   d, d                                        ; $7489: $52
	sbc  c                                           ; $748a: $99
	ld   a, h                                        ; $748b: $7c
	and  b                                           ; $748c: $a0
	sbc  a                                           ; $748d: $9f
	dec  c                                           ; $748e: $0d
	nop                                              ; $748f: $00
	ld   a, [bc]                                     ; $7490: $0a
	dec  e                                           ; $7491: $1d
	ld   b, b                                        ; $7492: $40
	ld   d, $03                                      ; $7493: $16 $03
	ld   d, $01                                      ; $7495: $16 $01
	ld   [bc], a                                     ; $7497: $02
	jr   z, jr_059_749a                              ; $7498: $28 $00

jr_059_749a:
	ld   bc, $b9df                                   ; $749a: $01 $df $b9
	ld   [hl], l                                     ; $749d: $75
	ld   h, d                                        ; $749e: $62
	adc  a                                           ; $749f: $8f
	and  c                                           ; $74a0: $a1
	ld   a, b                                        ; $74a1: $78
	rst  $38                                         ; $74a2: $ff
	rst  $38                                         ; $74a3: $ff
	rst  $38                                         ; $74a4: $ff
	dec  c                                           ; $74a5: $0d
	ld   h, [hl]                                     ; $74a6: $66
	sub  c                                           ; $74a7: $91
	ld   d, b                                        ; $74a8: $50
	sbc  [hl]                                        ; $74a9: $9e
	inc  b                                           ; $74aa: $04
	sub  l                                           ; $74ab: $95
	ld   [bc], a                                     ; $74ac: $02
	ld   hl, $0375                                   ; $74ad: $21 $75 $03
	ld   l, h                                        ; $74b0: $6c
	ld   h, l                                        ; $74b1: $65
	dec  c                                           ; $74b2: $0d
	inc  bc                                          ; $74b3: $03
	and  a                                           ; $74b4: $a7
	and  c                                           ; $74b5: $a1
	ld   [hl], l                                     ; $74b6: $75
	ld   d, d                                        ; $74b7: $52
	ld   e, a                                        ; $74b8: $5f
	sub  [hl]                                        ; $74b9: $96
	sbc  a                                           ; $74ba: $9f
	dec  c                                           ; $74bb: $0d
	nop                                              ; $74bc: $00
	ld   a, [bc]                                     ; $74bd: $0a
	nop                                              ; $74be: $00
	rrca                                             ; $74bf: $0f
	nop                                              ; $74c0: $00
	ld   bc, $0101                                   ; $74c1: $01 $01 $01
	inc  bc                                          ; $74c4: $03
	ld   e, l                                        ; $74c5: $5d
	ld   [hl], c                                     ; $74c6: $71
	rst  $38                                         ; $74c7: $ff
	rst  $38                                         ; $74c8: $ff
	ld   a, [$100d]                                  ; $74c9: $fa $0d $10
	ld   l, l                                        ; $74cc: $6d
	ld   e, b                                        ; $74cd: $58
	sbc  d                                           ; $74ce: $9a
	ld   a, b                                        ; $74cf: $78
	ld   d, d                                        ; $74d0: $52
	ld   l, h                                        ; $74d1: $6c
	rst  $38                                         ; $74d2: $ff
	rst  $38                                         ; $74d3: $ff
	ld   bc, $0d04                                   ; $74d4: $01 $04 $0d
	nop                                              ; $74d7: $00
	ld   a, [bc]                                     ; $74d8: $0a
	rrca                                             ; $74d9: $0f
	ld   b, $00                                      ; $74da: $06 $00
	ld   bc, $a502                                   ; $74dc: $01 $02 $a5
	ld   a, h                                        ; $74df: $7c
	ld   bc, $ad07                                   ; $74e0: $01 $07 $ad
	push af                                          ; $74e3: $f5
	ld   bc, $7408                                   ; $74e4: $01 $08 $74
	inc  bc                                          ; $74e7: $03
	ld   l, e                                        ; $74e8: $6b
	ld   [bc], a                                     ; $74e9: $02
	add  hl, bc                                      ; $74ea: $09
	ld   d, [hl]                                     ; $74eb: $56
	ld   a, b                                        ; $74ec: $78
	and  c                                           ; $74ed: $a1
	ld   l, [hl]                                     ; $74ee: $6e
	ld   sp, hl                                      ; $74ef: $f9
	dec  c                                           ; $74f0: $0d
	rst  $38                                         ; $74f1: $ff
	rst  $38                                         ; $74f2: $ff
	rst  $38                                         ; $74f3: $ff
	rst  $38                                         ; $74f4: $ff
	rst  $38                                         ; $74f5: $ff
	rst  $38                                         ; $74f6: $ff
	dec  c                                           ; $74f7: $0d
	nop                                              ; $74f8: $00
	ld   a, [bc]                                     ; $74f9: $0a
	inc  e                                           ; $74fa: $1c
	ld   b, $03                                      ; $74fb: $06 $03
	inc  bc                                          ; $74fd: $03
	ld   bc, $9e50                                   ; $74fe: $01 $50 $9e
	ld   [$9f00], sp                                 ; $7501: $08 $00 $9f
	dec  c                                           ; $7504: $0d
	sub  b                                           ; $7505: $90
	ld   h, l                                        ; $7506: $65
	ld   e, c                                        ; $7507: $59
	ld   h, l                                        ; $7508: $65
	ld   [hl], h                                     ; $7509: $74
	sbc  [hl]                                        ; $750a: $9e
	add  h                                           ; $750b: $84
	ld   [hl], d                                     ; $750c: $72
	ld   e, c                                        ; $750d: $59
	ld   [hl], c                                     ; $750e: $71
	ld   l, l                                        ; $750f: $6d
	ld   sp, hl                                      ; $7510: $f9
	dec  c                                           ; $7511: $0d
	nop                                              ; $7512: $00
	ld   a, [bc]                                     ; $7513: $0a
	inc  e                                           ; $7514: $1c
	ld   b, $01                                      ; $7515: $06 $01
	ld   bc, $6201                                   ; $7517: $01 $01 $62
	adc  a                                           ; $751a: $8f
	and  c                                           ; $751b: $a1
	ld   h, d                                        ; $751c: $62
	adc  a                                           ; $751d: $8f
	and  c                                           ; $751e: $a1
	sbc  a                                           ; $751f: $9f
	dec  c                                           ; $7520: $0d
	ld   [hl], l                                     ; $7521: $75
	sub  b                                           ; $7522: $90
	sbc  [hl]                                        ; $7523: $9e
	sub  [hl]                                        ; $7524: $96
	ld   e, l                                        ; $7525: $5d
	ld   l, l                                        ; $7526: $6d
	ld   e, b                                        ; $7527: $58
	sbc  d                                           ; $7528: $9a
	ld   a, b                                        ; $7529: $78
	ld   e, c                                        ; $752a: $59
	ld   [hl], c                                     ; $752b: $71
	ld   l, l                                        ; $752c: $6d
	ld   a, b                                        ; $752d: $78
	sbc  a                                           ; $752e: $9f
	dec  c                                           ; $752f: $0d
	nop                                              ; $7530: $00
	dec  e                                           ; $7531: $1d
	ld   b, b                                        ; $7532: $40
	ld   d, $03                                      ; $7533: $16 $03
	ld   d, $01                                      ; $7535: $16 $01
	inc  bc                                          ; $7537: $03
	jr   z, jr_059_753a                              ; $7538: $28 $00

jr_059_753a:
	ld   bc, $eba9                                   ; $753a: $01 $a9 $eb
	and  l                                           ; $753d: $a5
	ld   l, d                                        ; $753e: $6a
	sbc  a                                           ; $753f: $9f
	dec  c                                           ; $7540: $0d
	nop                                              ; $7541: $00
	ld   a, [bc]                                     ; $7542: $0a
	ld   bc, $9876                                   ; $7543: $01 $76 $98
	ld   d, b                                        ; $7546: $50
	ld   d, [hl]                                     ; $7547: $56
	ld   l, b                                        ; $7548: $68
	sbc  [hl]                                        ; $7549: $9e
	inc  b                                           ; $754a: $04
	sub  l                                           ; $754b: $95
	ld   [bc], a                                     ; $754c: $02
	ld   hl, $0375                                   ; $754d: $21 $75 $03
	ld   l, h                                        ; $7550: $6c
	ld   h, l                                        ; $7551: $65
	dec  c                                           ; $7552: $0d
	inc  bc                                          ; $7553: $03
	and  a                                           ; $7554: $a7
	and  c                                           ; $7555: $a1
	ld   [hl], l                                     ; $7556: $75
	ld   d, d                                        ; $7557: $52
	ld   e, a                                        ; $7558: $5f
	sub  [hl]                                        ; $7559: $96
	sbc  a                                           ; $755a: $9f
	dec  c                                           ; $755b: $0d
	nop                                              ; $755c: $00
	ld   a, [bc]                                     ; $755d: $0a
	nop                                              ; $755e: $00
	rrca                                             ; $755f: $0f
	nop                                              ; $7560: $00
	ld   bc, $0401                                   ; $7561: $01 $01 $04
	ld   c, c                                        ; $7564: $49
	ld   [hl], l                                     ; $7565: $75
	ld   d, d                                        ; $7566: $52
	ld   e, e                                        ; $7567: $5b
	ld   a, b                                        ; $7568: $78
	sbc  b                                           ; $7569: $98
	dec  c                                           ; $756a: $0d
	add  b                                           ; $756b: $80
	sub  a                                           ; $756c: $97
	ld   e, l                                        ; $756d: $5d
	and  c                                           ; $756e: $a1
	ld   l, [hl]                                     ; $756f: $6e
	sub  [hl]                                        ; $7570: $96
	ld   a, [$040d]                                  ; $7571: $fa $0d $04
	ld   l, [hl]                                     ; $7574: $6e
	adc  a                                           ; $7575: $8f
	ld   a, b                                        ; $7576: $78
	ld   e, b                                        ; $7577: $58
	ld   h, l                                        ; $7578: $65
	ld   [hl], h                                     ; $7579: $74
	sub  d                                           ; $757a: $92
	sbc  c                                           ; $757b: $99
	ld   a, [$000d]                                  ; $757c: $fa $0d $00
	ld   a, [bc]                                     ; $757f: $0a
	inc  d                                           ; $7580: $14
	ld   a, [bc]                                     ; $7581: $0a
	ld   bc, $480e                                   ; $7582: $01 $0e $48
	inc  d                                           ; $7585: $14
	rlca                                             ; $7586: $07
	ld   bc, $030c                                   ; $7587: $01 $0c $03
	rrca                                             ; $758a: $0f
	ld   b, $03                                      ; $758b: $06 $03
	ld   bc, $c4a5                                   ; $758d: $01 $a5 $c4
	rst  ToBoot                                         ; $7590: $c7
	db   $fc                                         ; $7591: $fc
	dec  c                                           ; $7592: $0d
	nop                                              ; $7593: $00
	ld   a, [bc]                                     ; $7594: $0a
	rrca                                             ; $7595: $0f
	nop                                              ; $7596: $00
	ld   bc, $0101                                   ; $7597: $01 $01 $01
	inc  bc                                          ; $759a: $03
	sub  d                                           ; $759b: $92
	sbc  [hl]                                        ; $759c: $9e
	sub  d                                           ; $759d: $92
	ld   a, [hl]                                     ; $759e: $7e
	ld   d, d                                        ; $759f: $52
	ld   a, [$100d]                                  ; $75a0: $fa $0d $10

Jump_059_75a3:
	xor  h                                           ; $75a3: $ac
	push af                                          ; $75a4: $f5
	bit  4, e                                        ; $75a5: $cb $63
	and  c                                           ; $75a7: $a1
	ld   a, c                                        ; $75a8: $79
	inc  b                                           ; $75a9: $04
	jr   jr_059_7619                                 ; $75aa: $18 $6d

	ld   [hl], c                                     ; $75ac: $71
	ld   l, l                                        ; $75ad: $6d
	dec  c                                           ; $75ae: $0d
	db   $10                                         ; $75af: $10
	sub  [hl]                                        ; $75b0: $96
	ld   d, h                                        ; $75b1: $54
	ld   l, [hl]                                     ; $75b2: $6e
	ld   l, h                                        ; $75b3: $6c
	rst  $38                                         ; $75b4: $ff
	rst  $38                                         ; $75b5: $ff
	ld   bc, $0d04                                   ; $75b6: $01 $04 $0d
	nop                                              ; $75b9: $00
	ld   a, [bc]                                     ; $75ba: $0a
	add  hl, de                                      ; $75bb: $19
	dec  b                                           ; $75bc: $05
	ld   [bc], a                                     ; $75bd: $02
	inc  bc                                          ; $75be: $03
	push de                                          ; $75bf: $d5
	ld   h, b                                        ; $75c0: $60
	sbc  c                                           ; $75c1: $99
	nop                                              ; $75c2: $00
	nop                                              ; $75c3: $00
	ld   d, b                                        ; $75c4: $50
	sub  d                                           ; $75c5: $92
	adc  h                                           ; $75c6: $8c
	sbc  c                                           ; $75c7: $99
	nop                                              ; $75c8: $00
	ld   bc, $5f07                                   ; $75c9: $01 $07 $5f
	ld   [bc], a                                     ; $75cc: $02
	ld   [bc], a                                     ; $75cd: $02
	inc  bc                                          ; $75ce: $03
	ld   bc, $2000                                   ; $75cf: $01 $00 $20
	nop                                              ; $75d2: $00
	rlca                                             ; $75d3: $07
	ld   [hl], b                                     ; $75d4: $70
	ld   [bc], a                                     ; $75d5: $02
	ld   [bc], a                                     ; $75d6: $02
	inc  bc                                          ; $75d7: $03
	ld   bc, $2001                                   ; $75d8: $01 $01 $20
	nop                                              ; $75db: $00
	ld   b, $5f                                      ; $75dc: $06 $5f
	ld   [bc], a                                     ; $75de: $02
	rrca                                             ; $75df: $0f
	nop                                              ; $75e0: $00
	ld   bc, $0101                                   ; $75e1: $01 $01 $01
	inc  bc                                          ; $75e4: $03
	inc  bc                                          ; $75e5: $03
	push de                                          ; $75e6: $d5
	ld   h, b                                        ; $75e7: $60
	sub  [hl]                                        ; $75e8: $96
	ld   d, h                                        ; $75e9: $54
	ld   bc, $0d04                                   ; $75ea: $01 $04 $0d
	nop                                              ; $75ed: $00
	ld   a, [bc]                                     ; $75ee: $0a
	nop                                              ; $75ef: $00
	rrca                                             ; $75f0: $0f
	nop                                              ; $75f1: $00
	ld   bc, $5001                                   ; $75f2: $01 $01 $50
	sbc  [hl]                                        ; $75f5: $9e
	xor  h                                           ; $75f6: $ac
	push af                                          ; $75f7: $f5
	bit  4, e                                        ; $75f8: $cb $63
	and  c                                           ; $75fa: $a1
	sbc  [hl]                                        ; $75fb: $9e
	ld   h, a                                        ; $75fc: $67
	adc  l                                           ; $75fd: $8d
	adc  h                                           ; $75fe: $8c
	ld   l, c                                        ; $75ff: $69
	and  c                                           ; $7600: $a1
	sbc  a                                           ; $7601: $9f
	dec  c                                           ; $7602: $0d
	inc  bc                                          ; $7603: $03
	di                                               ; $7604: $f3
	inc  bc                                          ; $7605: $03
	sbc  c                                           ; $7606: $99
	add  b                                           ; $7607: $80
	sub  a                                           ; $7608: $97
	ld   d, d                                        ; $7609: $52
	ld   l, l                                        ; $760a: $6d
	jp   z, $a0a3                                    ; $760b: $ca $a3 $a0

	inc  b                                           ; $760e: $04
	ld   l, [hl]                                     ; $760f: $6e
	adc  a                                           ; $7610: $8f
	ld   l, l                                        ; $7611: $6d
	ld   a, h                                        ; $7612: $7c
	ld   a, l                                        ; $7613: $7d
	dec  c                                           ; $7614: $0d
	inc  b                                           ; $7615: $04
	ld   l, l                                        ; $7616: $6d
	ld   [hl], l                                     ; $7617: $75
	ld   h, a                                        ; $7618: $67

jr_059_7619:
	sbc  a                                           ; $7619: $9f
	dec  c                                           ; $761a: $0d
	nop                                              ; $761b: $00
	ld   a, [bc]                                     ; $761c: $0a
	ld   c, $49                                      ; $761d: $0e $49
	inc  e                                           ; $761f: $1c
	ld   b, $05                                      ; $7620: $06 $05
	dec  b                                           ; $7622: $05
	ld   bc, $c7a5                                   ; $7623: $01 $a5 $c7
	rst  ToBoot                                         ; $7626: $c7
	rst  ToBoot                                         ; $7627: $c7
	rst  ToBoot                                         ; $7628: $c7
	rst  $38                                         ; $7629: $ff
	rst  $38                                         ; $762a: $ff
	dec  c                                           ; $762b: $0d
	ld   a, b                                        ; $762c: $78
	and  c                                           ; $762d: $a1
	ld   l, [hl]                                     ; $762e: $6e
	sub  [hl]                                        ; $762f: $96
	sbc  [hl]                                        ; $7630: $9e
	ld   [bc], a                                     ; $7631: $02
	and  c                                           ; $7632: $a1
	and  b                                           ; $7633: $a0
	ld   [hl], d                                     ; $7634: $72
	ld   e, a                                        ; $7635: $5f
	sbc  e                                           ; $7636: $9b
	sub  [hl]                                        ; $7637: $96
	ld   a, b                                        ; $7638: $78
	sbc  a                                           ; $7639: $9f
	dec  c                                           ; $763a: $0d
	adc  h                                           ; $763b: $8c
	ld   [hl], c                                     ; $763c: $71
	ld   l, l                                        ; $763d: $6d
	ld   e, l                                        ; $763e: $5d
	sub  b                                           ; $763f: $90
	ei                                               ; $7640: $fb
	sbc  a                                           ; $7641: $9f
	dec  c                                           ; $7642: $0d
	nop                                              ; $7643: $00
	ld   a, [bc]                                     ; $7644: $0a
	rrca                                             ; $7645: $0f
	nop                                              ; $7646: $00
	ld   bc, $8c01                                   ; $7647: $01 $01 $8c
	ld   h, e                                        ; $764a: $63
	ld   a, c                                        ; $764b: $79
	ld   l, e                                        ; $764c: $6b
	ld   d, h                                        ; $764d: $54
	ld   [hl], l                                     ; $764e: $75
	ld   h, a                                        ; $764f: $67
	ld   a, e                                        ; $7650: $7b
	sbc  a                                           ; $7651: $9f
	xor  h                                           ; $7652: $ac
	push af                                          ; $7653: $f5
	bit  4, e                                        ; $7654: $cb $63
	and  c                                           ; $7656: $a1
	dec  c                                           ; $7657: $0d
	ld   e, d                                        ; $7658: $5a
	ld   d, d                                        ; $7659: $52
	ld   e, e                                        ; $765a: $5b
	ld   e, b                                        ; $765b: $58
	ld   d, d                                        ; $765c: $52
	sub  [hl]                                        ; $765d: $96
	ld   e, l                                        ; $765e: $5d
	ld   d, b                                        ; $765f: $50
	ld   e, a                                        ; $7660: $5f
	ld   l, l                                        ; $7661: $6d
	jp   z, Jump_059_75a3                            ; $7662: $ca $a3 $75

	dec  c                                           ; $7665: $0d
	inc  b                                           ; $7666: $04
	ld   l, l                                        ; $7667: $6d
	ld   a, h                                        ; $7668: $7c
	xor  e                                           ; $7669: $ab
	ret  z                                           ; $766a: $c8

	or   h                                           ; $766b: $b4
	sub  b                                           ; $766c: $90
	ret  nc                                          ; $766d: $d0

	xor  $74                                         ; $766e: $ee $74
	adc  h                                           ; $7670: $8c
	ld   h, a                                        ; $7671: $67
	ld   h, l                                        ; $7672: $65
	sbc  a                                           ; $7673: $9f
	dec  c                                           ; $7674: $0d
	nop                                              ; $7675: $00
	ld   a, [bc]                                     ; $7676: $0a
	inc  e                                           ; $7677: $1c
	ld   b, $03                                      ; $7678: $06 $03
	inc  bc                                          ; $767a: $03
	dec  e                                           ; $767b: $1d

Jump_059_767c:
	ld   b, b                                        ; $767c: $40
	ld   d, $03                                      ; $767d: $16 $03
	ld   d, $01                                      ; $767f: $16 $01
	ld   [bc], a                                     ; $7681: $02
	jr   z, jr_059_7684                              ; $7682: $28 $00

jr_059_7684:
	ld   bc, $7156                                   ; $7684: $01 $56 $71
	rst  $38                                         ; $7687: $ff
	rst  $38                                         ; $7688: $ff
	ld   a, [$6b0d]                                  ; $7689: $fa $0d $6b
	ld   d, h                                        ; $768c: $54
	ld   a, b                                        ; $768d: $78
	ld   a, h                                        ; $768e: $7c
	ld   e, c                                        ; $768f: $59
	ld   sp, hl                                      ; $7690: $f9
	db   $10                                         ; $7691: $10
	dec  c                                           ; $7692: $0d
	ld   l, e                                        ; $7693: $6b
	sbc  d                                           ; $7694: $9a
	ld   a, l                                        ; $7695: $7d
	ld   h, a                                        ; $7696: $67
	adc  h                                           ; $7697: $8c
	ld   a, b                                        ; $7698: $78
	ld   e, c                                        ; $7699: $59
	ld   [hl], c                                     ; $769a: $71
	ld   l, l                                        ; $769b: $6d
	ld   a, b                                        ; $769c: $78
	sbc  a                                           ; $769d: $9f
	dec  c                                           ; $769e: $0d
	nop                                              ; $769f: $00
	ld   a, [bc]                                     ; $76a0: $0a
	inc  e                                           ; $76a1: $1c
	ld   b, $01                                      ; $76a2: $06 $01
	ld   bc, $6601                                   ; $76a4: $01 $01 $66
	sub  c                                           ; $76a7: $91
	ld   d, b                                        ; $76a8: $50
	sbc  [hl]                                        ; $76a9: $9e
	adc  h                                           ; $76aa: $8c
	ld   c, a                                        ; $76ab: $4f
	dec  c                                           ; $76ac: $0d
	and  l                                           ; $76ad: $a5
	ret  nz                                          ; $76ae: $c0

	ldh  [rDIV], a                                   ; $76af: $e0 $04
	sbc  [hl]                                        ; $76b1: $9e
	ld   e, a                                        ; $76b2: $5f
	ld   [hl], c                                     ; $76b3: $71
	ld   [hl], h                                     ; $76b4: $74
	ld   h, c                                        ; $76b5: $61
	halt                                             ; $76b6: $76
	ld   [hl], l                                     ; $76b7: $75
	rst  $38                                         ; $76b8: $ff
	rst  $38                                         ; $76b9: $ff
	dec  c                                           ; $76ba: $0d
	ld   l, e                                        ; $76bb: $6b
	sbc  d                                           ; $76bc: $9a
	ld   h, [hl]                                     ; $76bd: $66
	sub  c                                           ; $76be: $91
	ld   d, b                                        ; $76bf: $50
	ld   a, b                                        ; $76c0: $78
	sbc  a                                           ; $76c1: $9f
	dec  c                                           ; $76c2: $0d
	nop                                              ; $76c3: $00
	ld   a, [bc]                                     ; $76c4: $0a
	dec  c                                           ; $76c5: $0d
	nop                                              ; $76c6: $00
	nop                                              ; $76c7: $00
	rrca                                             ; $76c8: $0f
	nop                                              ; $76c9: $00
	ld   bc, $0a14                                   ; $76ca: $01 $14 $0a
	ld   bc, $480e                                   ; $76cd: $01 $0e $48
	nop                                              ; $76d0: $00
	nop                                              ; $76d1: $00
	ld   d, $37                                      ; $76d2: $16 $37
	rrca                                             ; $76d4: $0f
	nop                                              ; $76d5: $00
	ld   bc, $0102                                   ; $76d6: $01 $02 $01
	ld   d, b                                        ; $76d9: $50
	sbc  d                                           ; $76da: $9a
	ld   sp, hl                                      ; $76db: $f9
	dec  c                                           ; $76dc: $0d
	inc  b                                           ; $76dd: $04
	ld   c, c                                        ; $76de: $49
	sub  d                                           ; $76df: $92
	ld   [hl], c                                     ; $76e0: $71
	ld   [hl], h                                     ; $76e1: $74
	sbc  c                                           ; $76e2: $99
	and  c                                           ; $76e3: $a1
	ld   [hl], l                                     ; $76e4: $75
	ld   h, a                                        ; $76e5: $67
	ld   e, c                                        ; $76e6: $59
	ld   sp, hl                                      ; $76e7: $f9
	dec  c                                           ; $76e8: $0d
	nop                                              ; $76e9: $00
	ld   a, [bc]                                     ; $76ea: $0a
	dec  c                                           ; $76eb: $0d
	nop                                              ; $76ec: $00
	nop                                              ; $76ed: $00
	ld   c, $19                                      ; $76ee: $0e $19
	inc  e                                           ; $76f0: $1c
	inc  bc                                          ; $76f1: $03
	nop                                              ; $76f2: $00
	nop                                              ; $76f3: $00
	ld   bc, $9750                                   ; $76f4: $01 $50 $97
	sbc  [hl]                                        ; $76f7: $9e
	ld   [$5d00], sp                                 ; $76f8: $08 $00 $5d
	and  c                                           ; $76fb: $a1
	sbc  a                                           ; $76fc: $9f
	dec  c                                           ; $76fd: $0d
	ld   l, a                                        ; $76fe: $6f
	sub  l                                           ; $76ff: $95
	ld   [hl], c                                     ; $7700: $71
	halt                                             ; $7701: $76
	inc  bc                                          ; $7702: $03
	sub  c                                           ; $7703: $91
	ld   [bc], a                                     ; $7704: $02
	dec  h                                           ; $7705: $25
	ld   a, h                                        ; $7706: $7c
	ld   e, a                                        ; $7707: $5f
	ld   d, d                                        ; $7708: $52
	ld   h, c                                        ; $7709: $61
	and  b                                           ; $770a: $a0
	dec  c                                           ; $770b: $0d
	ld   h, l                                        ; $770c: $65
	ld   [hl], h                                     ; $770d: $74
	ld   d, d                                        ; $770e: $52
	ld   l, l                                        ; $770f: $6d
	ld   a, h                                        ; $7710: $7c
	sbc  a                                           ; $7711: $9f
	dec  c                                           ; $7712: $0d
	nop                                              ; $7713: $00
	ld   a, [bc]                                     ; $7714: $0a
	ld   bc, $7850                                   ; $7715: $01 $50 $78
	ld   l, l                                        ; $7718: $6d
	sub  b                                           ; $7719: $90
	sub  d                                           ; $771a: $92
	ld   [hl], c                                     ; $771b: $71
	ld   [hl], h                                     ; $771c: $74
	adc  l                                           ; $771d: $8d
	sbc  c                                           ; $771e: $99
	ld   sp, hl                                      ; $771f: $f9
	dec  c                                           ; $7720: $0d
	nop                                              ; $7721: $00
	ld   a, [bc]                                     ; $7722: $0a
	jr   jr_059_7727                                 ; $7723: $18 $02

	nop                                              ; $7725: $00
	sub  d                                           ; $7726: $92

jr_059_7727:
	sbc  c                                           ; $7727: $99
	nop                                              ; $7728: $00
	nop                                              ; $7729: $00
	sub  d                                           ; $772a: $92
	sub  a                                           ; $772b: $97
	ld   a, b                                        ; $772c: $78
	ld   d, d                                        ; $772d: $52
	nop                                              ; $772e: $00
	ld   bc, $a007                                   ; $772f: $01 $07 $a0
	nop                                              ; $7732: $00
	ld   [bc], a                                     ; $7733: $02
	ld   [bc], a                                     ; $7734: $02
	ld   bc, $2000                                   ; $7735: $01 $00 $20
	nop                                              ; $7738: $00
	rlca                                             ; $7739: $07
	ld   [hl], b                                     ; $773a: $70
	nop                                              ; $773b: $00
	ld   [bc], a                                     ; $773c: $02
	ld   [bc], a                                     ; $773d: $02
	ld   bc, $2001                                   ; $773e: $01 $01 $20
	nop                                              ; $7741: $00
	rrca                                             ; $7742: $0f
	nop                                              ; $7743: $00
	ld   bc, $6701                                   ; $7744: $01 $01 $67
	adc  l                                           ; $7747: $8d
	adc  h                                           ; $7748: $8c
	ld   l, c                                        ; $7749: $69
	and  c                                           ; $774a: $a1
	sbc  [hl]                                        ; $774b: $9e
	dec  c                                           ; $774c: $0d
	inc  b                                           ; $774d: $04
	di                                               ; $774e: $f3
	ld   [bc], a                                     ; $774f: $02
	jp   Jump_059_767c                               ; $7750: $c3 $7c $76


	ld   l, a                                        ; $7753: $6f
	sub  e                                           ; $7754: $93
	ld   d, h                                        ; $7755: $54
	ld   a, b                                        ; $7756: $78
	ld   a, h                                        ; $7757: $7c
	ld   [hl], l                                     ; $7758: $75
	rst  $38                                         ; $7759: $ff
	rst  $38                                         ; $775a: $ff
	dec  c                                           ; $775b: $0d
	nop                                              ; $775c: $00
	ld   a, [bc]                                     ; $775d: $0a
	inc  e                                           ; $775e: $1c
	inc  bc                                          ; $775f: $03
	nop                                              ; $7760: $00
	nop                                              ; $7761: $00
	ld   bc, $9778                                   ; $7762: $01 $78 $97
	inc  bc                                          ; $7765: $03
	dec  c                                           ; $7766: $0d
	inc  b                                           ; $7767: $04
	ld   a, b                                        ; $7768: $78
	ld   a, b                                        ; $7769: $78
	ld   d, d                                        ; $776a: $52
	sbc  l                                           ; $776b: $9d
	ld   a, e                                        ; $776c: $7b
	sbc  a                                           ; $776d: $9f
	dec  c                                           ; $776e: $0d
	nop                                              ; $776f: $00
	ld   a, [bc]                                     ; $7770: $0a
	nop                                              ; $7771: $00
	rrca                                             ; $7772: $0f
	nop                                              ; $7773: $00
	ld   bc, $9201                                   ; $7774: $01 $01 $92
	ld   [hl], c                                     ; $7777: $71
	ld   [hl], h                                     ; $7778: $74
	adc  l                                           ; $7779: $8d
	adc  h                                           ; $777a: $8c
	ld   h, a                                        ; $777b: $67
	sbc  a                                           ; $777c: $9f
	dec  c                                           ; $777d: $0d
	nop                                              ; $777e: $00
	ld   a, [bc]                                     ; $777f: $0a
	inc  e                                           ; $7780: $1c
	inc  bc                                          ; $7781: $03
	nop                                              ; $7782: $00
	nop                                              ; $7783: $00
	ld   bc, $9166                                   ; $7784: $01 $66 $91
	ld   d, b                                        ; $7787: $50
	sbc  [hl]                                        ; $7788: $9e
	inc  bc                                          ; $7789: $03
	ret  z                                           ; $778a: $c8

	ld   e, d                                        ; $778b: $5a
	ld   e, b                                        ; $778c: $58
	inc  bc                                          ; $778d: $03
	ld   l, e                                        ; $778e: $6b
	inc  b                                           ; $778f: $04
	adc  a                                           ; $7790: $8f
	and  b                                           ; $7791: $a0
	dec  c                                           ; $7792: $0d
	ld   [bc], a                                     ; $7793: $02
	sub  l                                           ; $7794: $95
	ld   l, c                                        ; $7795: $69
	sbc  c                                           ; $7796: $99
	ld   e, c                                        ; $7797: $59
	sub  a                                           ; $7798: $97
	sbc  [hl]                                        ; $7799: $9e
	ld   l, e                                        ; $779a: $6b
	ld   a, h                                        ; $779b: $7c
	inc  bc                                          ; $779c: $03
	pop  hl                                          ; $779d: $e1
	sbc  b                                           ; $779e: $98
	dec  c                                           ; $779f: $0d
	ld   [bc], a                                     ; $77a0: $02
	rra                                              ; $77a1: $1f
	ld   h, [hl]                                     ; $77a2: $66
	sbc  c                                           ; $77a3: $99
	ld   a, h                                        ; $77a4: $7c
	sub  [hl]                                        ; $77a5: $96
	sbc  a                                           ; $77a6: $9f
	dec  c                                           ; $77a7: $0d
	nop                                              ; $77a8: $00
	ld   a, [bc]                                     ; $77a9: $0a
	ld   bc, $688c                                   ; $77aa: $01 $8c $68
	ld   a, l                                        ; $77ad: $7d
	sbc  [hl]                                        ; $77ae: $9e
	ld   a, [bc]                                     ; $77af: $0a
	ld   [bc], a                                     ; $77b0: $02
	ld   [bc], a                                     ; $77b1: $02
	inc  e                                           ; $77b2: $1c
	inc  bc                                          ; $77b3: $03
	ld   a, l                                        ; $77b4: $7d
	and  b                                           ; $77b5: $a0
	ld   [bc], a                                     ; $77b6: $02
	xor  d                                           ; $77b7: $aa
	sbc  e                                           ; $77b8: $9b
	ld   a, c                                        ; $77b9: $79
	ld   [bc], a                                     ; $77ba: $02
	inc  [hl]                                        ; $77bb: $34
	ld   h, b                                        ; $77bc: $60
	sbc  c                                           ; $77bd: $99
	ld   a, [bc]                                     ; $77be: $0a
	inc  bc                                          ; $77bf: $03
	sbc  a                                           ; $77c0: $9f
	dec  c                                           ; $77c1: $0d
	nop                                              ; $77c2: $00
	ld   a, [bc]                                     ; $77c3: $0a
	ld   bc, $6803                                   ; $77c4: $01 $03 $68
	ld   a, c                                        ; $77c7: $79
	inc  b                                           ; $77c8: $04
	dec  c                                           ; $77c9: $0d
	and  b                                           ; $77ca: $a0
	ld   a, [bc]                                     ; $77cb: $0a
	ld   [bc], a                                     ; $77cc: $02
	ld   [bc], a                                     ; $77cd: $02
	inc  e                                           ; $77ce: $1c
	ld   [bc], a                                     ; $77cf: $02
	sub  e                                           ; $77d0: $93
	ld   h, l                                        ; $77d1: $65
	ld   a, c                                        ; $77d2: $79
	dec  c                                           ; $77d3: $0d
	inc  b                                           ; $77d4: $04
	ld   [hl], d                                     ; $77d5: $72
	ld   [bc], a                                     ; $77d6: $02
	sub  e                                           ; $77d7: $93
	inc  b                                           ; $77d8: $04
	inc  sp                                          ; $77d9: $33
	ld   a, [bc]                                     ; $77da: $0a
	inc  bc                                          ; $77db: $03
	ld   h, e                                        ; $77dc: $63
	ld   l, c                                        ; $77dd: $69
	sbc  c                                           ; $77de: $99
	sbc  a                                           ; $77df: $9f
	dec  c                                           ; $77e0: $0d
	nop                                              ; $77e1: $00
	ld   a, [bc]                                     ; $77e2: $0a
	ld   bc, $6903                                   ; $77e3: $01 $03 $69
	ld   [bc], a                                     ; $77e6: $02
	xor  d                                           ; $77e7: $aa
	ld   a, c                                        ; $77e8: $79
	sbc  [hl]                                        ; $77e9: $9e
	ld   a, [bc]                                     ; $77ea: $0a
	ld   [bc], a                                     ; $77eb: $02
	ld   [bc], a                                     ; $77ec: $02
	inc  e                                           ; $77ed: $1c
	inc  bc                                          ; $77ee: $03
	ld   a, l                                        ; $77ef: $7d
	and  b                                           ; $77f0: $a0
	inc  bc                                          ; $77f1: $03
	ld   h, b                                        ; $77f2: $60
	inc  bc                                          ; $77f3: $03
	ld   a, l                                        ; $77f4: $7d
	ld   a, c                                        ; $77f5: $79
	dec  c                                           ; $77f6: $0d
	ld   l, e                                        ; $77f7: $6b
	sbc  e                                           ; $77f8: $9b
	ld   d, [hl]                                     ; $77f9: $56
	ld   [hl], h                                     ; $77fa: $74
	ld   a, [bc]                                     ; $77fb: $0a
	inc  bc                                          ; $77fc: $03
	inc  bc                                          ; $77fd: $03
	ld   a, [hl]                                     ; $77fe: $7e
	sbc  l                                           ; $77ff: $9d
	sbc  b                                           ; $7800: $98
	sbc  a                                           ; $7801: $9f
	dec  c                                           ; $7802: $0d
	ld   h, e                                        ; $7803: $63
	ld   d, b                                        ; $7804: $50
	sbc  [hl]                                        ; $7805: $9e
	sub  d                                           ; $7806: $92
	ld   [hl], c                                     ; $7807: $71
	ld   [hl], h                                     ; $7808: $74
	adc  l                                           ; $7809: $8d
	ld   a, b                                        ; $780a: $78
	ld   h, e                                        ; $780b: $63
	ld   d, d                                        ; $780c: $52
	sbc  a                                           ; $780d: $9f
	dec  c                                           ; $780e: $0d
	nop                                              ; $780f: $00
	ld   a, [bc]                                     ; $7810: $0a
	rrca                                             ; $7811: $0f
	nop                                              ; $7812: $00
	ld   bc, $0101                                   ; $7813: $01 $01 $01
	inc  bc                                          ; $7816: $03
	adc  h                                           ; $7817: $8c
	ld   l, b                                        ; $7818: $68
	ld   a, l                                        ; $7819: $7d
	rst  $38                                         ; $781a: $ff
	rst  $38                                         ; $781b: $ff
	ld   bc, $0d04                                   ; $781c: $01 $04 $0d
	nop                                              ; $781f: $00
	ld   a, [bc]                                     ; $7820: $0a
	add  hl, de                                      ; $7821: $19
	dec  b                                           ; $7822: $05
	inc  bc                                          ; $7823: $03
	ld   [bc], a                                     ; $7824: $02
	inc  e                                           ; $7825: $1c
	inc  bc                                          ; $7826: $03
	ld   a, l                                        ; $7827: $7d
	and  b                                           ; $7828: $a0
	ld   [bc], a                                     ; $7829: $02
	xor  d                                           ; $782a: $aa
	sbc  e                                           ; $782b: $9b
	ld   a, c                                        ; $782c: $79
	ld   [bc], a                                     ; $782d: $02
	inc  [hl]                                        ; $782e: $34
	ld   h, b                                        ; $782f: $60
	sbc  c                                           ; $7830: $99
	nop                                              ; $7831: $00
	nop                                              ; $7832: $00
	inc  bc                                          ; $7833: $03
	ld   h, b                                        ; $7834: $60
	inc  bc                                          ; $7835: $03
	ld   a, l                                        ; $7836: $7d
	and  b                                           ; $7837: $a0
	ld   [bc], a                                     ; $7838: $02
	xor  d                                           ; $7839: $aa
	sbc  e                                           ; $783a: $9b
	ld   a, c                                        ; $783b: $79
	ld   [bc], a                                     ; $783c: $02
	inc  [hl]                                        ; $783d: $34
	ld   h, b                                        ; $783e: $60
	sbc  c                                           ; $783f: $99
	nop                                              ; $7840: $00
	ld   bc, $3a06                                   ; $7841: $01 $06 $3a
	inc  bc                                          ; $7844: $03
	ld   a, l                                        ; $7845: $7d
	and  b                                           ; $7846: $a0
	inc  bc                                          ; $7847: $03
	ld   h, b                                        ; $7848: $60
	ld   [bc], a                                     ; $7849: $02
	inc  e                                           ; $784a: $1c
	ld   a, c                                        ; $784b: $79
	add  b                                           ; $784c: $80
	sub  a                                           ; $784d: $97
	ld   e, l                                        ; $784e: $5d
	nop                                              ; $784f: $00
	ld   [bc], a                                     ; $7850: $02
	rlca                                             ; $7851: $07
	pop  hl                                          ; $7852: $e1
	ld   bc, $0302                                   ; $7853: $01 $02 $03
	ld   bc, $2000                                   ; $7856: $01 $00 $20

Jump_059_7859:
	nop                                              ; $7859: $00
	rlca                                             ; $785a: $07
	add  hl, bc                                      ; $785b: $09
	ld   [bc], a                                     ; $785c: $02
	ld   [bc], a                                     ; $785d: $02
	inc  bc                                          ; $785e: $03
	ld   bc, $2001                                   ; $785f: $01 $01 $20
	nop                                              ; $7862: $00
	rlca                                             ; $7863: $07
	jr   z, jr_059_7868                              ; $7864: $28 $02

	ld   [bc], a                                     ; $7866: $02
	inc  bc                                          ; $7867: $03

jr_059_7868:
	ld   bc, $2002                                   ; $7868: $01 $02 $20
	nop                                              ; $786b: $00
	ld   b, $9d                                      ; $786c: $06 $9d
	ld   bc, $031c                                   ; $786e: $01 $1c $03
	inc  b                                           ; $7871: $04
	inc  b                                           ; $7872: $04
	dec  e                                           ; $7873: $1d
	ld   b, b                                        ; $7874: $40
	inc  de                                          ; $7875: $13
	inc  bc                                          ; $7876: $03
	inc  de                                          ; $7877: $13
	ld   bc, $2901                                   ; $7878: $01 $01 $29
	nop                                              ; $787b: $00
	ld   bc, $6e8c                                   ; $787c: $01 $8c $6e
	sbc  [hl]                                        ; $787f: $9e
	ld   d, b                                        ; $7880: $50
	ld   a, b                                        ; $7881: $78
	ld   l, l                                        ; $7882: $6d
	ld   a, c                                        ; $7883: $79
	ld   a, l                                        ; $7884: $7d
	dec  c                                           ; $7885: $0d
	adc  [hl]                                        ; $7886: $8e
	ld   l, b                                        ; $7887: $68
	ld   e, c                                        ; $7888: $59
	ld   h, l                                        ; $7889: $65
	ld   e, c                                        ; $788a: $59
	ld   [hl], c                                     ; $788b: $71
	ld   l, l                                        ; $788c: $6d
	sub  [hl]                                        ; $788d: $96
	ld   d, h                                        ; $788e: $54
	ld   a, e                                        ; $788f: $7b
	sbc  a                                           ; $7890: $9f
	dec  c                                           ; $7891: $0d
	nop                                              ; $7892: $00
	ld   a, [bc]                                     ; $7893: $0a
	inc  e                                           ; $7894: $1c
	inc  bc                                          ; $7895: $03
	nop                                              ; $7896: $00
	nop                                              ; $7897: $00
	ld   bc, $9166                                   ; $7898: $01 $66 $91
	sbc  [hl]                                        ; $789b: $9e
	inc  bc                                          ; $789c: $03
	ret  z                                           ; $789d: $c8

	ld   a, l                                        ; $789e: $7d
	ld   e, a                                        ; $789f: $5f
	ld   d, d                                        ; $78a0: $52
	ld   h, c                                        ; $78a1: $61
	and  b                                           ; $78a2: $a0
	dec  c                                           ; $78a3: $0d
	ld   [hl], d                                     ; $78a4: $72
	ld   [hl], e                                     ; $78a5: $73
	ld   e, a                                        ; $78a6: $5f
	sbc  c                                           ; $78a7: $99
	ld   e, c                                        ; $78a8: $59
	sub  a                                           ; $78a9: $97
	sbc  [hl]                                        ; $78aa: $9e
	adc  h                                           ; $78ab: $8c
	ld   l, l                                        ; $78ac: $6d
	ld   a, e                                        ; $78ad: $7b
	sbc  a                                           ; $78ae: $9f
	dec  c                                           ; $78af: $0d
	nop                                              ; $78b0: $00
	ld   a, [bc]                                     ; $78b1: $0a
	nop                                              ; $78b2: $00
	rrca                                             ; $78b3: $0f
	nop                                              ; $78b4: $00
	ld   bc, $4005                                   ; $78b5: $01 $05 $40
	rst  $38                                         ; $78b8: $ff
	inc  bc                                          ; $78b9: $03
	rst  $38                                         ; $78ba: $ff
	ld   bc, $2801                                   ; $78bb: $01 $01 $28
	nop                                              ; $78be: $00
	ld   bc, $1c02                                   ; $78bf: $01 $02 $1c
	inc  bc                                          ; $78c2: $03
	ld   a, l                                        ; $78c3: $7d
	and  b                                           ; $78c4: $a0
	ld   [bc], a                                     ; $78c5: $02
	xor  d                                           ; $78c6: $aa
	sbc  e                                           ; $78c7: $9b
	ld   a, c                                        ; $78c8: $79
	ld   [bc], a                                     ; $78c9: $02
	inc  [hl]                                        ; $78ca: $34
	ld   h, b                                        ; $78cb: $60
	sbc  c                                           ; $78cc: $99
	rst  $38                                         ; $78cd: $ff
	rst  $38                                         ; $78ce: $ff
	dec  c                                           ; $78cf: $0d
	inc  bc                                          ; $78d0: $03
	ld   l, b                                        ; $78d1: $68
	ld   a, l                                        ; $78d2: $7d
	rst  $38                                         ; $78d3: $ff
	rst  $38                                         ; $78d4: $ff
	dec  c                                           ; $78d5: $0d
	nop                                              ; $78d6: $00
	ld   a, [bc]                                     ; $78d7: $0a
	ld   b, $47                                      ; $78d8: $06 $47
	ld   [bc], a                                     ; $78da: $02
	rrca                                             ; $78db: $0f
	nop                                              ; $78dc: $00
	ld   bc, $0301                                   ; $78dd: $01 $01 $03
	ld   h, b                                        ; $78e0: $60
	inc  bc                                          ; $78e1: $03
	ld   a, l                                        ; $78e2: $7d
	and  b                                           ; $78e3: $a0
	ld   [bc], a                                     ; $78e4: $02
	xor  d                                           ; $78e5: $aa
	sbc  e                                           ; $78e6: $9b
	ld   a, c                                        ; $78e7: $79
	ld   [bc], a                                     ; $78e8: $02
	inc  [hl]                                        ; $78e9: $34
	ld   h, b                                        ; $78ea: $60

Call_059_78eb:
	sbc  c                                           ; $78eb: $99
	rst  $38                                         ; $78ec: $ff
	rst  $38                                         ; $78ed: $ff
	dec  c                                           ; $78ee: $0d
	inc  bc                                          ; $78ef: $03
	ld   l, b                                        ; $78f0: $68
	ld   a, l                                        ; $78f1: $7d
	rst  $38                                         ; $78f2: $ff
	rst  $38                                         ; $78f3: $ff
	dec  c                                           ; $78f4: $0d
	nop                                              ; $78f5: $00
	ld   a, [bc]                                     ; $78f6: $0a
	ld   b, $47                                      ; $78f7: $06 $47
	ld   [bc], a                                     ; $78f9: $02
	rrca                                             ; $78fa: $0f
	nop                                              ; $78fb: $00
	ld   bc, $0601                                   ; $78fc: $01 $01 $06
	ld   a, [hl-]                                    ; $78ff: $3a
	inc  bc                                          ; $7900: $03
	ld   a, l                                        ; $7901: $7d
	and  b                                           ; $7902: $a0
	inc  bc                                          ; $7903: $03
	ld   h, b                                        ; $7904: $60
	ld   [bc], a                                     ; $7905: $02
	inc  e                                           ; $7906: $1c
	ld   a, c                                        ; $7907: $79
	add  b                                           ; $7908: $80
	sub  a                                           ; $7909: $97
	ld   e, l                                        ; $790a: $5d
	rst  $38                                         ; $790b: $ff
	rst  $38                                         ; $790c: $ff
	dec  c                                           ; $790d: $0d
	inc  bc                                          ; $790e: $03
	ld   l, b                                        ; $790f: $68
	ld   a, l                                        ; $7910: $7d
	rst  $38                                         ; $7911: $ff
	rst  $38                                         ; $7912: $ff
	dec  c                                           ; $7913: $0d
	nop                                              ; $7914: $00
	ld   a, [bc]                                     ; $7915: $0a
	ld   b, $47                                      ; $7916: $06 $47
	ld   [bc], a                                     ; $7918: $02
	add  hl, de                                      ; $7919: $19
	dec  b                                           ; $791a: $05
	inc  bc                                          ; $791b: $03
	inc  b                                           ; $791c: $04
	dec  c                                           ; $791d: $0d
	and  b                                           ; $791e: $a0
	ld   [bc], a                                     ; $791f: $02
	inc  e                                           ; $7920: $1c
	ld   [bc], a                                     ; $7921: $02
	sub  e                                           ; $7922: $93
	ld   h, l                                        ; $7923: $65
	ld   a, c                                        ; $7924: $79
	inc  b                                           ; $7925: $04
	ld   [hl], d                                     ; $7926: $72
	ld   [bc], a                                     ; $7927: $02
	sub  e                                           ; $7928: $93
	inc  b                                           ; $7929: $04
	inc  sp                                          ; $792a: $33
	nop                                              ; $792b: $00
	nop                                              ; $792c: $00
	inc  b                                           ; $792d: $04
	dec  c                                           ; $792e: $0d
	and  b                                           ; $792f: $a0
	inc  bc                                          ; $7930: $03
	ld   h, b                                        ; $7931: $60
	ld   [bc], a                                     ; $7932: $02
	sub  e                                           ; $7933: $93
	ld   h, l                                        ; $7934: $65
	ld   a, c                                        ; $7935: $79
	inc  b                                           ; $7936: $04
	ld   [hl], d                                     ; $7937: $72
	ld   [bc], a                                     ; $7938: $02
	sub  e                                           ; $7939: $93
	inc  b                                           ; $793a: $04
	inc  sp                                          ; $793b: $33
	nop                                              ; $793c: $00
	ld   bc, $0d04                                   ; $793d: $01 $04 $0d
	and  b                                           ; $7940: $a0
	inc  bc                                          ; $7941: $03
	ld   h, b                                        ; $7942: $60
	ld   [bc], a                                     ; $7943: $02
	sub  e                                           ; $7944: $93
	ld   h, l                                        ; $7945: $65
	ld   a, c                                        ; $7946: $79
	ld   [bc], a                                     ; $7947: $02
	jr   nz, jr_059_794c                             ; $7948: $20 $02

	sub  e                                           ; $794a: $93
	inc  b                                           ; $794b: $04

jr_059_794c:
	inc  sp                                          ; $794c: $33
	nop                                              ; $794d: $00
	ld   [bc], a                                     ; $794e: $02
	rlca                                             ; $794f: $07
	sbc  e                                           ; $7950: $9b
	ld   [bc], a                                     ; $7951: $02
	ld   [bc], a                                     ; $7952: $02
	inc  bc                                          ; $7953: $03
	ld   bc, $2000                                   ; $7954: $01 $00 $20
	nop                                              ; $7957: $00
	rlca                                             ; $7958: $07
	rst  ToBoot                                         ; $7959: $c7
	ld   [bc], a                                     ; $795a: $02
	ld   [bc], a                                     ; $795b: $02
	inc  bc                                          ; $795c: $03
	ld   bc, $2001                                   ; $795d: $01 $01 $20
	nop                                              ; $7960: $00
	rlca                                             ; $7961: $07
	ld   [$0202], a                                  ; $7962: $ea $02 $02
	inc  bc                                          ; $7965: $03
	ld   bc, $2002                                   ; $7966: $01 $02 $20
	nop                                              ; $7969: $00
	ld   b, $9d                                      ; $796a: $06 $9d
	ld   bc, $000f                                   ; $796c: $01 $0f $00
	ld   bc, $4005                                   ; $796f: $01 $05 $40
	rst  $38                                         ; $7972: $ff
	inc  bc                                          ; $7973: $03
	rst  $38                                         ; $7974: $ff
	ld   bc, $2801                                   ; $7975: $01 $01 $28
	nop                                              ; $7978: $00
	ld   bc, $0d04                                   ; $7979: $01 $04 $0d
	and  b                                           ; $797c: $a0
	ld   [bc], a                                     ; $797d: $02
	inc  e                                           ; $797e: $1c
	ld   [bc], a                                     ; $797f: $02
	sub  e                                           ; $7980: $93
	ld   h, l                                        ; $7981: $65
	ld   a, c                                        ; $7982: $79
	inc  b                                           ; $7983: $04
	ld   [hl], d                                     ; $7984: $72
	ld   [bc], a                                     ; $7985: $02
	sub  e                                           ; $7986: $93
	inc  b                                           ; $7987: $04
	inc  sp                                          ; $7988: $33
	rst  $38                                         ; $7989: $ff
	rst  $38                                         ; $798a: $ff
	dec  c                                           ; $798b: $0d
	inc  bc                                          ; $798c: $03
	ld   l, c                                        ; $798d: $69
	ld   [bc], a                                     ; $798e: $02
	xor  d                                           ; $798f: $aa
	ld   a, l                                        ; $7990: $7d
	rst  $38                                         ; $7991: $ff
	rst  $38                                         ; $7992: $ff
	dec  c                                           ; $7993: $0d
	nop                                              ; $7994: $00
	ld   a, [bc]                                     ; $7995: $0a
	ld   b, $0d                                      ; $7996: $06 $0d
	inc  bc                                          ; $7998: $03
	rrca                                             ; $7999: $0f
	nop                                              ; $799a: $00
	ld   bc, $0401                                   ; $799b: $01 $01 $04
	dec  c                                           ; $799e: $0d
	and  b                                           ; $799f: $a0
	inc  bc                                          ; $79a0: $03
	ld   h, b                                        ; $79a1: $60
	ld   [bc], a                                     ; $79a2: $02
	sub  e                                           ; $79a3: $93
	ld   h, l                                        ; $79a4: $65
	ld   a, c                                        ; $79a5: $79
	inc  b                                           ; $79a6: $04
	ld   [hl], d                                     ; $79a7: $72
	ld   [bc], a                                     ; $79a8: $02
	sub  e                                           ; $79a9: $93
	inc  b                                           ; $79aa: $04
	inc  sp                                          ; $79ab: $33
	rst  $38                                         ; $79ac: $ff
	rst  $38                                         ; $79ad: $ff
	dec  c                                           ; $79ae: $0d
	inc  bc                                          ; $79af: $03
	ld   l, c                                        ; $79b0: $69
	ld   [bc], a                                     ; $79b1: $02
	xor  d                                           ; $79b2: $aa
	ld   a, l                                        ; $79b3: $7d
	rst  $38                                         ; $79b4: $ff
	rst  $38                                         ; $79b5: $ff
	dec  c                                           ; $79b6: $0d
	nop                                              ; $79b7: $00
	ld   a, [bc]                                     ; $79b8: $0a
	ld   b, $0d                                      ; $79b9: $06 $0d
	inc  bc                                          ; $79bb: $03
	rrca                                             ; $79bc: $0f
	nop                                              ; $79bd: $00
	ld   bc, $0401                                   ; $79be: $01 $01 $04
	dec  c                                           ; $79c1: $0d
	and  b                                           ; $79c2: $a0
	inc  bc                                          ; $79c3: $03
	ld   h, b                                        ; $79c4: $60
	ld   [bc], a                                     ; $79c5: $02
	sub  e                                           ; $79c6: $93
	ld   h, l                                        ; $79c7: $65
	ld   a, c                                        ; $79c8: $79
	ld   [bc], a                                     ; $79c9: $02
	jr   nz, jr_059_79ce                             ; $79ca: $20 $02

	sub  e                                           ; $79cc: $93
	inc  b                                           ; $79cd: $04

jr_059_79ce:
	inc  sp                                          ; $79ce: $33
	rst  $38                                         ; $79cf: $ff
	rst  $38                                         ; $79d0: $ff
	dec  c                                           ; $79d1: $0d
	inc  bc                                          ; $79d2: $03
	ld   l, c                                        ; $79d3: $69
	ld   [bc], a                                     ; $79d4: $02
	xor  d                                           ; $79d5: $aa
	ld   a, l                                        ; $79d6: $7d
	rst  $38                                         ; $79d7: $ff

Call_059_79d8:
	rst  $38                                         ; $79d8: $ff
	dec  c                                           ; $79d9: $0d
	nop                                              ; $79da: $00
	ld   a, [bc]                                     ; $79db: $0a
	ld   b, $0d                                      ; $79dc: $06 $0d
	inc  bc                                          ; $79de: $03
	add  hl, de                                      ; $79df: $19
	dec  b                                           ; $79e0: $05
	inc  bc                                          ; $79e1: $03
	ld   [bc], a                                     ; $79e2: $02
	inc  e                                           ; $79e3: $1c
	inc  bc                                          ; $79e4: $03
	ld   a, l                                        ; $79e5: $7d
	and  b                                           ; $79e6: $a0
	inc  bc                                          ; $79e7: $03
	ld   h, b                                        ; $79e8: $60
	inc  bc                                          ; $79e9: $03
	ld   a, l                                        ; $79ea: $7d
	ld   a, c                                        ; $79eb: $79
	ld   l, e                                        ; $79ec: $6b
	sbc  e                                           ; $79ed: $9b
	ld   d, [hl]                                     ; $79ee: $56
	sbc  c                                           ; $79ef: $99
	nop                                              ; $79f0: $00
	nop                                              ; $79f1: $00
	inc  bc                                          ; $79f2: $03
	ld   h, b                                        ; $79f3: $60
	inc  bc                                          ; $79f4: $03
	ld   a, l                                        ; $79f5: $7d
	and  b                                           ; $79f6: $a0
	ld   [bc], a                                     ; $79f7: $02
	inc  e                                           ; $79f8: $1c
	inc  bc                                          ; $79f9: $03
	ld   a, l                                        ; $79fa: $7d
	ld   a, c                                        ; $79fb: $79
	ld   l, e                                        ; $79fc: $6b
	sbc  e                                           ; $79fd: $9b
	ld   d, [hl]                                     ; $79fe: $56
	sbc  c                                           ; $79ff: $99
	nop                                              ; $7a00: $00
	ld   bc, $1c02                                   ; $7a01: $01 $02 $1c
	inc  bc                                          ; $7a04: $03
	ld   a, l                                        ; $7a05: $7d
	and  b                                           ; $7a06: $a0
	inc  bc                                          ; $7a07: $03
	ld   h, b                                        ; $7a08: $60
	inc  bc                                          ; $7a09: $03
	ld   l, e                                        ; $7a0a: $6b
	ld   a, c                                        ; $7a0b: $79
	ld   l, e                                        ; $7a0c: $6b
	sbc  e                                           ; $7a0d: $9b
	ld   d, [hl]                                     ; $7a0e: $56
	sbc  c                                           ; $7a0f: $99
	nop                                              ; $7a10: $00
	ld   [bc], a                                     ; $7a11: $02
	rlca                                             ; $7a12: $07
	ld   e, [hl]                                     ; $7a13: $5e
	inc  bc                                          ; $7a14: $03
	ld   [bc], a                                     ; $7a15: $02
	inc  bc                                          ; $7a16: $03
	ld   bc, $2000                                   ; $7a17: $01 $00 $20
	nop                                              ; $7a1a: $00
	rlca                                             ; $7a1b: $07
	xor  d                                           ; $7a1c: $aa
	inc  bc                                          ; $7a1d: $03
	ld   [bc], a                                     ; $7a1e: $02
	inc  bc                                          ; $7a1f: $03
	ld   bc, $2001                                   ; $7a20: $01 $01 $20
	nop                                              ; $7a23: $00
	rlca                                             ; $7a24: $07
	db   $e4                                         ; $7a25: $e4
	inc  bc                                          ; $7a26: $03
	ld   [bc], a                                     ; $7a27: $02
	inc  bc                                          ; $7a28: $03
	ld   bc, $2002                                   ; $7a29: $01 $02 $20
	nop                                              ; $7a2c: $00
	ld   b, $9d                                      ; $7a2d: $06 $9d
	ld   bc, $000f                                   ; $7a2f: $01 $0f $00
	ld   bc, $4005                                   ; $7a32: $01 $05 $40
	rst  $38                                         ; $7a35: $ff
	inc  bc                                          ; $7a36: $03
	rst  $38                                         ; $7a37: $ff
	ld   bc, $2801                                   ; $7a38: $01 $01 $28
	nop                                              ; $7a3b: $00
	ld   bc, $1c02                                   ; $7a3c: $01 $02 $1c
	inc  bc                                          ; $7a3f: $03
	ld   a, l                                        ; $7a40: $7d
	and  b                                           ; $7a41: $a0
	inc  bc                                          ; $7a42: $03
	ld   h, b                                        ; $7a43: $60
	inc  bc                                          ; $7a44: $03
	ld   a, l                                        ; $7a45: $7d
	ld   a, c                                        ; $7a46: $79
	ld   l, e                                        ; $7a47: $6b
	sbc  e                                           ; $7a48: $9b
	ld   d, [hl]                                     ; $7a49: $56
	sbc  c                                           ; $7a4a: $99
	rst  $38                                         ; $7a4b: $ff
	rst  $38                                         ; $7a4c: $ff
	dec  c                                           ; $7a4d: $0d
	ld   h, c                                        ; $7a4e: $61
	sbc  d                                           ; $7a4f: $9a
	ld   [hl], l                                     ; $7a50: $75
	ld   [hl], a                                     ; $7a51: $77
	ld   d, h                                        ; $7a52: $54
	ld   e, c                                        ; $7a53: $59
	ld   a, b                                        ; $7a54: $78
	ld   sp, hl                                      ; $7a55: $f9
	dec  c                                           ; $7a56: $0d
	nop                                              ; $7a57: $00
	ld   a, [bc]                                     ; $7a58: $0a
	dec  c                                           ; $7a59: $0d
	nop                                              ; $7a5a: $00
	nop                                              ; $7a5b: $00
	rrca                                             ; $7a5c: $0f
	nop                                              ; $7a5d: $00
	ld   bc, $0b0c                                   ; $7a5e: $01 $0c $0b
	rlca                                             ; $7a61: $07
	ld   e, $04                                      ; $7a62: $1e $04
	inc  bc                                          ; $7a64: $03
	rst  $38                                         ; $7a65: $ff
	ld   bc, $2003                                   ; $7a66: $01 $03 $20
	nop                                              ; $7a69: $00
	rlca                                             ; $7a6a: $07
	ld   l, h                                        ; $7a6b: $6c
	inc  b                                           ; $7a6c: $04
	inc  bc                                          ; $7a6d: $03
	rst  $38                                         ; $7a6e: $ff
	ld   bc, $2002                                   ; $7a6f: $01 $02 $20
	nop                                              ; $7a72: $00
	rlca                                             ; $7a73: $07
	sbc  l                                           ; $7a74: $9d
	ld   bc, $ff03                                   ; $7a75: $01 $03 $ff
	ld   bc, $2301                                   ; $7a78: $01 $01 $23
	nop                                              ; $7a7b: $00
	rrca                                             ; $7a7c: $0f
	nop                                              ; $7a7d: $00
	ld   bc, $0301                                   ; $7a7e: $01 $01 $03
	ld   h, b                                        ; $7a81: $60
	inc  bc                                          ; $7a82: $03
	ld   a, l                                        ; $7a83: $7d
	and  b                                           ; $7a84: $a0
	ld   [bc], a                                     ; $7a85: $02
	inc  e                                           ; $7a86: $1c
	inc  bc                                          ; $7a87: $03
	ld   a, l                                        ; $7a88: $7d
	ld   a, c                                        ; $7a89: $79
	ld   l, e                                        ; $7a8a: $6b
	sbc  e                                           ; $7a8b: $9b
	ld   d, [hl]                                     ; $7a8c: $56
	sbc  c                                           ; $7a8d: $99
	rst  $38                                         ; $7a8e: $ff
	rst  $38                                         ; $7a8f: $ff
	dec  c                                           ; $7a90: $0d
	ld   h, c                                        ; $7a91: $61
	sbc  d                                           ; $7a92: $9a
	ld   [hl], l                                     ; $7a93: $75
	ld   [hl], a                                     ; $7a94: $77
	ld   d, h                                        ; $7a95: $54
	ld   e, c                                        ; $7a96: $59
	ld   a, b                                        ; $7a97: $78
	ld   sp, hl                                      ; $7a98: $f9
	dec  c                                           ; $7a99: $0d
	nop                                              ; $7a9a: $00
	ld   a, [bc]                                     ; $7a9b: $0a
	dec  c                                           ; $7a9c: $0d
	nop                                              ; $7a9d: $00
	nop                                              ; $7a9e: $00
	rrca                                             ; $7a9f: $0f
	nop                                              ; $7aa0: $00
	ld   bc, $0b0c                                   ; $7aa1: $01 $0c $0b
	rlca                                             ; $7aa4: $07
	ld   l, h                                        ; $7aa5: $6c
	inc  b                                           ; $7aa6: $04
	inc  bc                                          ; $7aa7: $03
	rst  $38                                         ; $7aa8: $ff
	ld   bc, $2002                                   ; $7aa9: $01 $02 $20
	nop                                              ; $7aac: $00
	rlca                                             ; $7aad: $07
	sbc  l                                           ; $7aae: $9d
	ld   bc, $ff03                                   ; $7aaf: $01 $03 $ff
	ld   bc, $2301                                   ; $7ab2: $01 $01 $23
	nop                                              ; $7ab5: $00
	rrca                                             ; $7ab6: $0f
	nop                                              ; $7ab7: $00
	ld   bc, $0201                                   ; $7ab8: $01 $01 $02
	inc  e                                           ; $7abb: $1c
	inc  bc                                          ; $7abc: $03
	ld   a, l                                        ; $7abd: $7d
	and  b                                           ; $7abe: $a0
	inc  bc                                          ; $7abf: $03
	ld   h, b                                        ; $7ac0: $60
	inc  bc                                          ; $7ac1: $03
	ld   l, e                                        ; $7ac2: $6b
	ld   a, c                                        ; $7ac3: $79
	ld   l, e                                        ; $7ac4: $6b
	sbc  e                                           ; $7ac5: $9b
	ld   d, [hl]                                     ; $7ac6: $56
	sbc  c                                           ; $7ac7: $99
	rst  $38                                         ; $7ac8: $ff
	rst  $38                                         ; $7ac9: $ff
	dec  c                                           ; $7aca: $0d
	ld   h, c                                        ; $7acb: $61
	sbc  d                                           ; $7acc: $9a
	ld   [hl], l                                     ; $7acd: $75
	ld   [hl], a                                     ; $7ace: $77
	ld   d, h                                        ; $7acf: $54
	ld   e, c                                        ; $7ad0: $59
	ld   a, b                                        ; $7ad1: $78
	ld   sp, hl                                      ; $7ad2: $f9
	dec  c                                           ; $7ad3: $0d
	nop                                              ; $7ad4: $00
	ld   a, [bc]                                     ; $7ad5: $0a
	dec  c                                           ; $7ad6: $0d
	nop                                              ; $7ad7: $00
	nop                                              ; $7ad8: $00
	rrca                                             ; $7ad9: $0f
	nop                                              ; $7ada: $00
	ld   bc, $0b0c                                   ; $7adb: $01 $0c $0b
	rlca                                             ; $7ade: $07
	ld   l, h                                        ; $7adf: $6c
	inc  b                                           ; $7ae0: $04
	inc  bc                                          ; $7ae1: $03
	rst  $38                                         ; $7ae2: $ff
	ld   bc, $2002                                   ; $7ae3: $01 $02 $20
	nop                                              ; $7ae6: $00
	rlca                                             ; $7ae7: $07
	sbc  l                                           ; $7ae8: $9d
	ld   bc, $ff03                                   ; $7ae9: $01 $03 $ff
	ld   bc, $2301                                   ; $7aec: $01 $01 $23
	nop                                              ; $7aef: $00
	inc  e                                           ; $7af0: $1c
	inc  bc                                          ; $7af1: $03
	inc  bc                                          ; $7af2: $03
	inc  bc                                          ; $7af3: $03
	dec  e                                           ; $7af4: $1d
	ld   b, b                                        ; $7af5: $40
	inc  de                                          ; $7af6: $13
	inc  bc                                          ; $7af7: $03
	inc  de                                          ; $7af8: $13
	ld   bc, $2803                                   ; $7af9: $01 $03 $28
	nop                                              ; $7afc: $00
	ld   bc, $5978                                   ; $7afd: $01 $78 $59
	ld   a, b                                        ; $7b00: $78
	ld   e, c                                        ; $7b01: $59
	ld   [bc], a                                     ; $7b02: $02
	ld   d, a                                        ; $7b03: $57
	inc  b                                           ; $7b04: $04
	di                                               ; $7b05: $f3
	ld   h, [hl]                                     ; $7b06: $66
	sub  c                                           ; $7b07: $91
	ld   a, b                                        ; $7b08: $78
	ld   d, d                                        ; $7b09: $52
	dec  c                                           ; $7b0a: $0d
	ld   [$5d00], sp                                 ; $7b0b: $08 $00 $5d
	and  c                                           ; $7b0e: $a1
	sbc  a                                           ; $7b0f: $9f
	dec  c                                           ; $7b10: $0d
	sub  [hl]                                        ; $7b11: $96
	ld   e, l                                        ; $7b12: $5d
	ld   [hl], l                                     ; $7b13: $75
	ld   e, e                                        ; $7b14: $5b
	ld   l, l                                        ; $7b15: $6d
	sbc  l                                           ; $7b16: $9d
	sbc  a                                           ; $7b17: $9f
	dec  c                                           ; $7b18: $0d
	nop                                              ; $7b19: $00
	ld   a, [bc]                                     ; $7b1a: $0a
	ld   bc, $9166                                   ; $7b1b: $01 $66 $91
	sbc  [hl]                                        ; $7b1e: $9e
	inc  bc                                          ; $7b1f: $03
	ret  z                                           ; $7b20: $c8

	ld   a, l                                        ; $7b21: $7d
	ld   e, a                                        ; $7b22: $5f
	ld   d, d                                        ; $7b23: $52
	ld   h, c                                        ; $7b24: $61
	and  b                                           ; $7b25: $a0
	dec  c                                           ; $7b26: $0d
	ld   [hl], d                                     ; $7b27: $72
	ld   [hl], e                                     ; $7b28: $73
	ld   e, a                                        ; $7b29: $5f
	sbc  c                                           ; $7b2a: $99
	ld   e, c                                        ; $7b2b: $59
	sub  a                                           ; $7b2c: $97
	sbc  a                                           ; $7b2d: $9f
	adc  h                                           ; $7b2e: $8c
	ld   l, l                                        ; $7b2f: $6d
	ld   a, e                                        ; $7b30: $7b
	sbc  a                                           ; $7b31: $9f
	dec  c                                           ; $7b32: $0d
	nop                                              ; $7b33: $00
	ld   a, [bc]                                     ; $7b34: $0a
	dec  c                                           ; $7b35: $0d
	nop                                              ; $7b36: $00
	nop                                              ; $7b37: $00
	rrca                                             ; $7b38: $0f
	nop                                              ; $7b39: $00
	ld   bc, $1e09                                   ; $7b3a: $01 $09 $1e
	nop                                              ; $7b3d: $00
	inc  e                                           ; $7b3e: $1c
	inc  bc                                          ; $7b3f: $03
	inc  bc                                          ; $7b40: $03
	inc  bc                                          ; $7b41: $03
	dec  e                                           ; $7b42: $1d
	ld   b, b                                        ; $7b43: $40
	inc  de                                          ; $7b44: $13
	inc  bc                                          ; $7b45: $03
	inc  de                                          ; $7b46: $13
	ld   bc, $2801                                   ; $7b47: $01 $01 $28
	nop                                              ; $7b4a: $00
	ld   bc, $6558                                   ; $7b4b: $01 $58 $65
	ld   e, c                                        ; $7b4e: $59
	ld   [hl], c                                     ; $7b4f: $71
	ld   l, l                                        ; $7b50: $6d
	sbc  l                                           ; $7b51: $9d
	ld   a, e                                        ; $7b52: $7b
	rst  $38                                         ; $7b53: $ff
	rst  $38                                         ; $7b54: $ff
	dec  c                                           ; $7b55: $0d
	ld   [hl], l                                     ; $7b56: $75
	sub  b                                           ; $7b57: $90
	sbc  [hl]                                        ; $7b58: $9e
	inc  bc                                          ; $7b59: $03
	ld   h, l                                        ; $7b5a: $65
	inc  bc                                          ; $7b5b: $03
	add  b                                           ; $7b5c: $80
	dec  b                                           ; $7b5d: $05
	db   $10                                         ; $7b5e: $10
	sub  [hl]                                        ; $7b5f: $96
	sbc  a                                           ; $7b60: $9f
	dec  c                                           ; $7b61: $0d
	nop                                              ; $7b62: $00
	ld   a, [bc]                                     ; $7b63: $0a
	ld   bc, $9166                                   ; $7b64: $01 $66 $91
	sbc  [hl]                                        ; $7b67: $9e
	inc  bc                                          ; $7b68: $03
	ret  z                                           ; $7b69: $c8

	ld   a, l                                        ; $7b6a: $7d
	ld   e, a                                        ; $7b6b: $5f
	ld   d, d                                        ; $7b6c: $52
	ld   h, c                                        ; $7b6d: $61
	and  b                                           ; $7b6e: $a0
	dec  c                                           ; $7b6f: $0d
	ld   [hl], d                                     ; $7b70: $72
	ld   [hl], e                                     ; $7b71: $73
	ld   e, a                                        ; $7b72: $5f
	sbc  c                                           ; $7b73: $99
	ld   e, c                                        ; $7b74: $59
	sub  a                                           ; $7b75: $97
	sbc  [hl]                                        ; $7b76: $9e
	adc  h                                           ; $7b77: $8c
	ld   l, l                                        ; $7b78: $6d
	ld   a, e                                        ; $7b79: $7b
	sbc  a                                           ; $7b7a: $9f
	dec  c                                           ; $7b7b: $0d
	nop                                              ; $7b7c: $00
	ld   a, [bc]                                     ; $7b7d: $0a
	dec  c                                           ; $7b7e: $0d
	nop                                              ; $7b7f: $00
	nop                                              ; $7b80: $00
	rrca                                             ; $7b81: $0f
	nop                                              ; $7b82: $00
	ld   bc, $1e09                                   ; $7b83: $01 $09 $1e
	nop                                              ; $7b86: $00
	nop                                              ; $7b87: $00
	inc  e                                           ; $7b88: $1c
	rrca                                             ; $7b89: $0f
	ld   bc, $0201                                   ; $7b8a: $01 $01 $02
	dec  b                                           ; $7b8d: $05
	add  b                                           ; $7b8e: $80
	ld   b, [hl]                                     ; $7b8f: $46
	ld   bc, $0001                                   ; $7b90: $01 $01 $00
	ld   bc, $5092                                   ; $7b93: $01 $92 $50
	sbc  [hl]                                        ; $7b96: $9e
	ld   [$5d00], sp                                 ; $7b97: $08 $00 $5d
	and  c                                           ; $7b9a: $a1
	sbc  a                                           ; $7b9b: $9f
	dec  c                                           ; $7b9c: $0d
	nop                                              ; $7b9d: $00
	ld   a, [bc]                                     ; $7b9e: $0a
	dec  b                                           ; $7b9f: $05
	add  b                                           ; $7ba0: $80
	ld   c, d                                        ; $7ba1: $4a
	ld   bc, $0001                                   ; $7ba2: $01 $01 $00
	rlca                                             ; $7ba5: $07
	ld   e, l                                        ; $7ba6: $5d
	nop                                              ; $7ba7: $00
	inc  b                                           ; $7ba8: $04
	add  b                                           ; $7ba9: $80
	rst  ToBoot                                         ; $7baa: $c7
	ld   bc, $20ff                                   ; $7bab: $01 $ff $20
	nop                                              ; $7bae: $00
	dec  b                                           ; $7baf: $05
	add  b                                           ; $7bb0: $80
	rst  ToBoot                                         ; $7bb1: $c7
	ld   bc, $0001                                   ; $7bb2: $01 $01 $00
	ld   bc, $7305                                   ; $7bb5: $01 $05 $73
	ld   a, l                                        ; $7bb8: $7d
	ld   [bc], a                                     ; $7bb9: $02
	ld   d, b                                        ; $7bba: $50
	inc  bc                                          ; $7bbb: $03
	ld   e, b                                        ; $7bbc: $58
	ld   b, $2d                                      ; $7bbd: $06 $2d
	ld   [bc], a                                     ; $7bbf: $02
	jr   nz, @+$01                                   ; $7bc0: $20 $ff

	rst  $38                                         ; $7bc2: $ff
	dec  c                                           ; $7bc3: $0d
	inc  b                                           ; $7bc4: $04
	ld   c, $03                                      ; $7bc5: $0e $03
	sub  b                                           ; $7bc7: $90
	halt                                             ; $7bc8: $76
	ld   a, l                                        ; $7bc9: $7d
	inc  b                                           ; $7bca: $04
	ld   c, $7c                                      ; $7bcb: $0e $7c
	inc  bc                                          ; $7bcd: $03
	sub  d                                           ; $7bce: $92
	inc  b                                           ; $7bcf: $04
	ld   [$9f6e], a                                  ; $7bd0: $ea $6e $9f
	dec  c                                           ; $7bd3: $0d
	ld   [bc], a                                     ; $7bd4: $02
	dec  bc                                          ; $7bd5: $0b
	ld   [bc], a                                     ; $7bd6: $02
	xor  d                                           ; $7bd7: $aa
	sbc  [hl]                                        ; $7bd8: $9e
	sub  [hl]                                        ; $7bd9: $96
	sbc  e                                           ; $7bda: $9b
	ld   h, l                                        ; $7bdb: $65
	ld   e, l                                        ; $7bdc: $5d
	ld   a, b                                        ; $7bdd: $78
	sbc  a                                           ; $7bde: $9f
	dec  c                                           ; $7bdf: $0d
	nop                                              ; $7be0: $00
	ld   a, [bc]                                     ; $7be1: $0a
	ld   b, $87                                      ; $7be2: $06 $87
	nop                                              ; $7be4: $00
	ld   bc, $7305                                   ; $7be5: $01 $05 $73
	ld   a, l                                        ; $7be8: $7d
	ld   [bc], a                                     ; $7be9: $02
	ld   d, b                                        ; $7bea: $50
	inc  bc                                          ; $7beb: $03
	ld   e, b                                        ; $7bec: $58
	ld   b, $2d                                      ; $7bed: $06 $2d
	ld   [bc], a                                     ; $7bef: $02
	jr   nz, @+$01                                   ; $7bf0: $20 $ff

	rst  $38                                         ; $7bf2: $ff
	dec  c                                           ; $7bf3: $0d
	ld   e, b                                        ; $7bf4: $58
	ld   [hl], c                                     ; $7bf5: $71
	halt                                             ; $7bf6: $76
	sbc  [hl]                                        ; $7bf7: $9e
	inc  bc                                          ; $7bf8: $03
	sub  h                                           ; $7bf9: $94
	dec  b                                           ; $7bfa: $05
	inc  sp                                          ; $7bfb: $33
	dec  b                                           ; $7bfc: $05
	ld   b, a                                        ; $7bfd: $47
	dec  b                                           ; $7bfe: $05
	ld   [hl-], a                                    ; $7bff: $32
	ld   a, l                                        ; $7c00: $7d
	dec  c                                           ; $7c01: $0d
	ld   h, c                                        ; $7c02: $61
	ld   a, h                                        ; $7c03: $7c
	inc  bc                                          ; $7c04: $03
	ld   c, a                                        ; $7c05: $4f
	sub  d                                           ; $7c06: $92
	ld   [hl], c                                     ; $7c07: $71
	ld   l, l                                        ; $7c08: $6d
	ld   a, b                                        ; $7c09: $78
	rst  $38                                         ; $7c0a: $ff
	rst  $38                                         ; $7c0b: $ff
	dec  c                                           ; $7c0c: $0d
	nop                                              ; $7c0d: $00
	ld   a, [bc]                                     ; $7c0e: $0a
	ld   bc, $ca02                                   ; $7c0f: $01 $02 $ca
	ld   e, d                                        ; $7c12: $5a
	inc  b                                           ; $7c13: $04
	ld   [$8f02], sp                                 ; $7c14: $08 $02 $8f
	ld   [bc], a                                     ; $7c17: $02
	sub  b                                           ; $7c18: $90
	ld   [bc], a                                     ; $7c19: $02
	sub  c                                           ; $7c1a: $91
	inc  b                                           ; $7c1b: $04
	add  hl, bc                                      ; $7c1c: $09
	ld   a, c                                        ; $7c1d: $79
	dec  c                                           ; $7c1e: $0d
	ld   a, b                                        ; $7c1f: $78
	sbc  d                                           ; $7c20: $9a
	ld   l, l                                        ; $7c21: $6d
	ld   e, c                                        ; $7c22: $59
	ld   [hl], a                                     ; $7c23: $77
	ld   d, h                                        ; $7c24: $54
	ld   e, c                                        ; $7c25: $59
	sbc  [hl]                                        ; $7c26: $9e
	dec  c                                           ; $7c27: $0d
	or   b                                           ; $7c28: $b0
	and  l                                           ; $7c29: $a5
	cp   e                                           ; $7c2a: $bb
	ld   [hl], l                                     ; $7c2b: $75
	ld   [bc], a                                     ; $7c2c: $02
	sbc  a                                           ; $7c2d: $9f
	ld   e, c                                        ; $7c2e: $59
	adc  a                                           ; $7c2f: $8f
	ld   [hl], h                                     ; $7c30: $74
	ld   d, b                                        ; $7c31: $50
	ld   h, b                                        ; $7c32: $60
	sub  [hl]                                        ; $7c33: $96
	ld   d, h                                        ; $7c34: $54
	sbc  a                                           ; $7c35: $9f
	dec  c                                           ; $7c36: $0d
	nop                                              ; $7c37: $00
	ld   a, [bc]                                     ; $7c38: $0a
	dec  c                                           ; $7c39: $0d
	rrca                                             ; $7c3a: $0f
	db   $10                                         ; $7c3b: $10
	rrca                                             ; $7c3c: $0f
	rrca                                             ; $7c3d: $0f
	ld   bc, $6501                                   ; $7c3e: $01 $01 $65
	ld   d, b                                        ; $7c41: $50
	sbc  l                                           ; $7c42: $9d
	ld   l, c                                        ; $7c43: $69
	ld   l, [hl]                                     ; $7c44: $6e
	ld   a, b                                        ; $7c45: $78
	ld   c, a                                        ; $7c46: $4f
	db   $fc                                         ; $7c47: $fc
	rst  $38                                         ; $7c48: $ff
	rst  $38                                         ; $7c49: $ff
	dec  c                                           ; $7c4a: $0d
	ld   h, c                                        ; $7c4b: $61
	and  c                                           ; $7c4c: $a1
	ld   a, b                                        ; $7c4d: $78
	inc  b                                           ; $7c4e: $04
	db   $ec                                         ; $7c4f: $ec
	and  b                                           ; $7c50: $a0
	sub  b                                           ; $7c51: $90
	sub  a                                           ; $7c52: $97
	ld   d, [hl]                                     ; $7c53: $56
	sbc  c                                           ; $7c54: $99
	ld   a, b                                        ; $7c55: $78
	and  c                                           ; $7c56: $a1
	ld   [hl], h                                     ; $7c57: $74
	sbc  a                                           ; $7c58: $9f
	dec  c                                           ; $7c59: $0d
	nop                                              ; $7c5a: $00
	ld   a, [bc]                                     ; $7c5b: $0a
	inc  e                                           ; $7c5c: $1c
	rrca                                             ; $7c5d: $0f
	ld   [bc], a                                     ; $7c5e: $02
	ld   [bc], a                                     ; $7c5f: $02
	ld   bc, $7463                                   ; $7c60: $01 $63 $74
	inc  b                                           ; $7c63: $04
	cp   a                                           ; $7c64: $bf
	inc  b                                           ; $7c65: $04
	dec  d                                           ; $7c66: $15
	ld   l, [hl]                                     ; $7c67: $6e
	ld   a, [$000d]                                  ; $7c68: $fa $0d $00
	ld   a, [bc]                                     ; $7c6b: $0a
	ld   b, $28                                      ; $7c6c: $06 $28
	ld   bc, $0f1c                                   ; $7c6e: $01 $1c $0f
	ld   bc, $0101                                   ; $7c71: $01 $01 $01
	ld   [bc], a                                     ; $7c74: $02
	dec  bc                                          ; $7c75: $0b
	inc  bc                                          ; $7c76: $03
	ld   h, l                                        ; $7c77: $65
	ld   [hl], l                                     ; $7c78: $75
	or   b                                           ; $7c79: $b0
	and  l                                           ; $7c7a: $a5
	cp   e                                           ; $7c7b: $bb
	ld   a, l                                        ; $7c7c: $7d
	inc  bc                                          ; $7c7d: $03
	ld   a, [hl]                                     ; $7c7e: $7e
	sbc  l                                           ; $7c7f: $9d
	sbc  b                                           ; $7c80: $98
	ld   l, [hl]                                     ; $7c81: $6e
	sbc  a                                           ; $7c82: $9f
	dec  c                                           ; $7c83: $0d
	ld   [bc], a                                     ; $7c84: $02
	jp   z, EnqueueHDMATransfer                                    ; $7c85: $ca $7c $02

	and  c                                           ; $7c88: $a1
	inc  bc                                          ; $7c89: $03
	and  b                                           ; $7c8a: $a0
	ld   l, a                                        ; $7c8b: $6f
	ld   a, l                                        ; $7c8c: $7d
	sbc  [hl]                                        ; $7c8d: $9e
	and  e                                           ; $7c8e: $a3
	and  l                                           ; $7c8f: $a5
	db   $ec                                         ; $7c90: $ec
	cp   d                                           ; $7c91: $ba
	ld   a, c                                        ; $7c92: $79
	dec  c                                           ; $7c93: $0d
	inc  b                                           ; $7c94: $04
	ld   [de], a                                     ; $7c95: $12
	ld   d, [hl]                                     ; $7c96: $56
	ld   [hl], h                                     ; $7c97: $74
	ld   e, b                                        ; $7c98: $58
	ld   e, l                                        ; $7c99: $5d
	sub  [hl]                                        ; $7c9a: $96
	rst  $38                                         ; $7c9b: $ff
	rst  $38                                         ; $7c9c: $ff
	and  e                                           ; $7c9d: $a3
	ret  z                                           ; $7c9e: $c8

	and  h                                           ; $7c9f: $a4
	xor  e                                           ; $7ca0: $ab
	cp   d                                           ; $7ca1: $ba
	ld   a, [$000d]                                  ; $7ca2: $fa $0d $00
	ld   a, [bc]                                     ; $7ca5: $0a
	dec  e                                           ; $7ca6: $1d
	ld   b, b                                        ; $7ca7: $40
	inc  d                                           ; $7ca8: $14
	inc  bc                                          ; $7ca9: $03
	inc  d                                           ; $7caa: $14
	inc  bc                                          ; $7cab: $03
	rst  $38                                         ; $7cac: $ff
	jr   z, jr_059_7caf                              ; $7cad: $28 $00

jr_059_7caf:
	nop                                              ; $7caf: $00
	dec  b                                           ; $7cb0: $05
	ld   b, b                                        ; $7cb1: $40
	cp   $01                                         ; $7cb2: $fe $01
	nop                                              ; $7cb4: $00
	nop                                              ; $7cb5: $00
	dec  b                                           ; $7cb6: $05
	add  b                                           ; $7cb7: $80
	ld   c, a                                        ; $7cb8: $4f
	ld   bc, $0000                                   ; $7cb9: $01 $00 $00
	dec  b                                           ; $7cbc: $05
	add  b                                           ; $7cbd: $80
	ld   d, b                                        ; $7cbe: $50
	ld   bc, $0000                                   ; $7cbf: $01 $00 $00
	dec  b                                           ; $7cc2: $05
	add  b                                           ; $7cc3: $80
	ld   d, c                                        ; $7cc4: $51
	ld   bc, $0000                                   ; $7cc5: $01 $00 $00
	dec  b                                           ; $7cc8: $05
	add  b                                           ; $7cc9: $80
	ld   d, d                                        ; $7cca: $52
	ld   bc, $0000                                   ; $7ccb: $01 $00 $00
	dec  b                                           ; $7cce: $05
	add  b                                           ; $7ccf: $80
	ld   d, e                                        ; $7cd0: $53
	ld   bc, $0000                                   ; $7cd1: $01 $00 $00
	dec  b                                           ; $7cd4: $05
	add  b                                           ; $7cd5: $80
	ld   d, h                                        ; $7cd6: $54
	ld   bc, $0000                                   ; $7cd7: $01 $00 $00
	dec  b                                           ; $7cda: $05
	add  b                                           ; $7cdb: $80
	ld   d, l                                        ; $7cdc: $55
	ld   bc, $0000                                   ; $7cdd: $01 $00 $00
	dec  b                                           ; $7ce0: $05
	add  b                                           ; $7ce1: $80
	ld   d, [hl]                                     ; $7ce2: $56
	ld   bc, $0000                                   ; $7ce3: $01 $00 $00
	dec  b                                           ; $7ce6: $05
	add  b                                           ; $7ce7: $80
	ld   d, a                                        ; $7ce8: $57
	ld   bc, $0000                                   ; $7ce9: $01 $00 $00
	rlca                                             ; $7cec: $07
	rst  $20                                         ; $7ced: $e7
	nop                                              ; $7cee: $00
	inc  bc                                          ; $7cef: $03
	cp   $01                                         ; $7cf0: $fe $01
	inc  bc                                          ; $7cf2: $03
	dec  h                                           ; $7cf3: $25
	nop                                              ; $7cf4: $00
	dec  b                                           ; $7cf5: $05
	ld   b, b                                        ; $7cf6: $40
	cp   $03                                         ; $7cf7: $fe $03
	cp   $01                                         ; $7cf9: $fe $01
	ld   bc, $0028                                   ; $7cfb: $01 $28 $00
	jr   nz, jr_059_7d01                             ; $7cfe: $20 $01

	ld   e, d                                        ; $7d00: $5a

jr_059_7d01:
	nop                                              ; $7d01: $00
	rlca                                             ; $7d02: $07
	push bc                                          ; $7d03: $c5
	ld   bc, $0502                                   ; $7d04: $01 $02 $05
	ld   bc, $220a                                   ; $7d07: $01 $0a $22
	nop                                              ; $7d0a: $00
	rlca                                             ; $7d0b: $07
	ld   e, a                                        ; $7d0c: $5f
	ld   [bc], a                                     ; $7d0d: $02
	ld   [bc], a                                     ; $7d0e: $02
	dec  b                                           ; $7d0f: $05
	ld   bc, $2214                                   ; $7d10: $01 $14 $22
	nop                                              ; $7d13: $00
	rlca                                             ; $7d14: $07
	rrca                                             ; $7d15: $0f
	inc  bc                                          ; $7d16: $03
	ld   [bc], a                                     ; $7d17: $02
	dec  b                                           ; $7d18: $05
	ld   bc, $221e                                   ; $7d19: $01 $1e $22
	nop                                              ; $7d1c: $00
	rlca                                             ; $7d1d: $07
	cp   c                                           ; $7d1e: $b9
	inc  bc                                          ; $7d1f: $03
	ld   [bc], a                                     ; $7d20: $02
	dec  b                                           ; $7d21: $05
	ld   bc, $2228                                   ; $7d22: $01 $28 $22
	nop                                              ; $7d25: $00
	rlca                                             ; $7d26: $07
	ld   e, d                                        ; $7d27: $5a
	inc  b                                           ; $7d28: $04
	ld   [bc], a                                     ; $7d29: $02
	dec  b                                           ; $7d2a: $05
	ld   bc, $2232                                   ; $7d2b: $01 $32 $22
	nop                                              ; $7d2e: $00
	rlca                                             ; $7d2f: $07
	db   $fc                                         ; $7d30: $fc
	inc  b                                           ; $7d31: $04
	ld   [bc], a                                     ; $7d32: $02
	dec  b                                           ; $7d33: $05
	ld   bc, $223c                                   ; $7d34: $01 $3c $22
	nop                                              ; $7d37: $00
	rlca                                             ; $7d38: $07
	sbc  b                                           ; $7d39: $98
	dec  b                                           ; $7d3a: $05
	ld   [bc], a                                     ; $7d3b: $02
	dec  b                                           ; $7d3c: $05
	ld   bc, $2246                                   ; $7d3d: $01 $46 $22
	nop                                              ; $7d40: $00
	rlca                                             ; $7d41: $07
	ld   b, c                                        ; $7d42: $41
	ld   b, $02                                      ; $7d43: $06 $02
	dec  b                                           ; $7d45: $05
	ld   bc, $2250                                   ; $7d46: $01 $50 $22
	nop                                              ; $7d49: $00
	ld   b, $ed                                      ; $7d4a: $06 $ed
	ld   b, $07                                      ; $7d4c: $06 $07
	ld   e, a                                        ; $7d4e: $5f
	ld   [bc], a                                     ; $7d4f: $02
	inc  b                                           ; $7d50: $04
	add  b                                           ; $7d51: $80
	ld   c, a                                        ; $7d52: $4f
	ld   bc, $20ff                                   ; $7d53: $01 $ff $20
	nop                                              ; $7d56: $00
	dec  b                                           ; $7d57: $05
	add  b                                           ; $7d58: $80
	ld   c, a                                        ; $7d59: $4f
	ld   bc, $0001                                   ; $7d5a: $01 $01 $00
	ld   bc, $a5a3                                   ; $7d5d: $01 $a3 $a5
	db   $ec                                         ; $7d60: $ec
	cp   d                                           ; $7d61: $ba
	ld   a, h                                        ; $7d62: $7c
	inc  bc                                          ; $7d63: $03
	ld   d, d                                        ; $7d64: $52
	adc  h                                           ; $7d65: $8c
	sbc  d                                           ; $7d66: $9a
	ld   l, l                                        ; $7d67: $6d
	ld   [bc], a                                     ; $7d68: $02
	adc  a                                           ; $7d69: $8f
	ld   a, l                                        ; $7d6a: $7d
	ld   sp, hl                                      ; $7d6b: $f9
	dec  c                                           ; $7d6c: $0d
	nop                                              ; $7d6d: $00
	ld   a, [bc]                                     ; $7d6e: $0a
	add  hl, de                                      ; $7d6f: $19
	dec  b                                           ; $7d70: $05
	inc  bc                                          ; $7d71: $03
	sub  $eb                                         ; $7d72: $d6 $eb
	push af                                          ; $7d74: $f5
	cp   d                                           ; $7d75: $ba
	nop                                              ; $7d76: $00
	nop                                              ; $7d77: $00
	and  l                                           ; $7d78: $a5
	xor  a                                           ; $7d79: $af
	db   $ec                                         ; $7d7a: $ec
	cp   d                                           ; $7d7b: $ba
	nop                                              ; $7d7c: $00
	ld   bc, $e3a3                                   ; $7d7d: $01 $a3 $e3
	db   $ec                                         ; $7d80: $ec
	xor  h                                           ; $7d81: $ac
	nop                                              ; $7d82: $00
	ld   [bc], a                                     ; $7d83: $02
	rlca                                             ; $7d84: $07
	ld   a, [de]                                     ; $7d85: $1a
	ld   [bc], a                                     ; $7d86: $02
	ld   [bc], a                                     ; $7d87: $02
	inc  bc                                          ; $7d88: $03
	ld   bc, $2000                                   ; $7d89: $01 $00 $20
	nop                                              ; $7d8c: $00
	rlca                                             ; $7d8d: $07
	scf                                              ; $7d8e: $37
	ld   [bc], a                                     ; $7d8f: $02
	ld   [bc], a                                     ; $7d90: $02
	inc  bc                                          ; $7d91: $03
	ld   bc, $2001                                   ; $7d92: $01 $01 $20
	nop                                              ; $7d95: $00
	rlca                                             ; $7d96: $07
	scf                                              ; $7d97: $37
	ld   [bc], a                                     ; $7d98: $02
	ld   [bc], a                                     ; $7d99: $02
	inc  bc                                          ; $7d9a: $03
	ld   bc, $2002                                   ; $7d9b: $01 $02 $20
	nop                                              ; $7d9e: $00
	ld   b, $37                                      ; $7d9f: $06 $37
	ld   [bc], a                                     ; $7da1: $02
	inc  e                                           ; $7da2: $1c
	rrca                                             ; $7da3: $0f
	ld   bc, $1401                                   ; $7da4: $01 $01 $14
	dec  de                                          ; $7da7: $1b
	ld   bc, $0301                                   ; $7da8: $01 $01 $03
	ld   c, d                                        ; $7dab: $4a
	ld   [bc], a                                     ; $7dac: $02
	or   h                                           ; $7dad: $b4
	ld   l, [hl]                                     ; $7dae: $6e
	sbc  a                                           ; $7daf: $9f
	dec  c                                           ; $7db0: $0d
	nop                                              ; $7db1: $00
	ld   a, [bc]                                     ; $7db2: $0a
	dec  b                                           ; $7db3: $05
	ld   b, b                                        ; $7db4: $40
	rst  $38                                         ; $7db5: $ff
	inc  bc                                          ; $7db6: $03
	rst  $38                                         ; $7db7: $ff
	ld   bc, $2801                                   ; $7db8: $01 $01 $28
	nop                                              ; $7dbb: $00
	ld   b, $64                                      ; $7dbc: $06 $64
	ld   bc, $0f1c                                   ; $7dbe: $01 $1c $0f
	ld   [bc], a                                     ; $7dc1: $02
	ld   [bc], a                                     ; $7dc2: $02
	inc  d                                           ; $7dc3: $14
	inc  e                                           ; $7dc4: $1c
	ld   bc, $0301                                   ; $7dc5: $01 $01 $03
	jr   z, jr_059_7dce                              ; $7dc8: $28 $04

	ld   c, b                                        ; $7dca: $48
	ld   l, [hl]                                     ; $7dcb: $6e
	ld   [hl], c                                     ; $7dcc: $71
	ld   l, l                                        ; $7dcd: $6d

jr_059_7dce:
	ld   a, b                                        ; $7dce: $78
	rst  $38                                         ; $7dcf: $ff
	rst  $38                                         ; $7dd0: $ff
	dec  c                                           ; $7dd1: $0d
	inc  bc                                          ; $7dd2: $03
	ld   c, d                                        ; $7dd3: $4a
	ld   [bc], a                                     ; $7dd4: $02
	or   h                                           ; $7dd5: $b4
	ld   a, l                                        ; $7dd6: $7d
	ld   bc, $d607                                   ; $7dd7: $01 $07 $d6
	db   $eb                                         ; $7dda: $eb
	push af                                          ; $7ddb: $f5
	cp   d                                           ; $7ddc: $ba
	ld   bc, $6e08                                   ; $7ddd: $01 $08 $6e
	sbc  a                                           ; $7de0: $9f
	dec  c                                           ; $7de1: $0d
	nop                                              ; $7de2: $00
	ld   a, [bc]                                     ; $7de3: $0a
	ld   b, $64                                      ; $7de4: $06 $64
	ld   bc, $0f07                                   ; $7de6: $01 $07 $0f
	inc  bc                                          ; $7de9: $03
	inc  b                                           ; $7dea: $04
	add  b                                           ; $7deb: $80
	ld   d, b                                        ; $7dec: $50
	ld   bc, $20ff                                   ; $7ded: $01 $ff $20
	nop                                              ; $7df0: $00
	dec  b                                           ; $7df1: $05
	add  b                                           ; $7df2: $80
	ld   d, b                                        ; $7df3: $50
	ld   bc, $0001                                   ; $7df4: $01 $01 $00
	ld   bc, $a5a3                                   ; $7df7: $01 $a3 $a5
	db   $ec                                         ; $7dfa: $ec
	cp   d                                           ; $7dfb: $ba
	ld   e, d                                        ; $7dfc: $5a
	sbc  [hl]                                        ; $7dfd: $9e
	dec  c                                           ; $7dfe: $0d
	ld   d, d                                        ; $7dff: $52
	ld   [hl], d                                     ; $7e00: $72
	sub  b                                           ; $7e01: $90
	ld   l, [hl]                                     ; $7e02: $6e
	ld   d, d                                        ; $7e03: $52
	ld   [hl], h                                     ; $7e04: $74
	ld   d, d                                        ; $7e05: $52
	sbc  c                                           ; $7e06: $99
	dec  c                                           ; $7e07: $0d
	ld   a, d                                        ; $7e08: $7a
	ld   d, d                                        ; $7e09: $52
	ld   e, [hl]                                     ; $7e0a: $5e
	sbc  c                                           ; $7e0b: $99
	adc  l                                           ; $7e0c: $8d
	ld   a, h                                        ; $7e0d: $7c
	inc  b                                           ; $7e0e: $04
	rst  ToBoot                                         ; $7e0f: $c7
	inc  bc                                          ; $7e10: $03
	ld   c, a                                        ; $7e11: $4f
	ld   a, l                                        ; $7e12: $7d
	ld   sp, hl                                      ; $7e13: $f9
	dec  c                                           ; $7e14: $0d
	nop                                              ; $7e15: $00
	ld   a, [bc]                                     ; $7e16: $0a
	add  hl, de                                      ; $7e17: $19
	dec  b                                           ; $7e18: $05
	inc  bc                                          ; $7e19: $03
	cp   c                                           ; $7e1a: $b9
	push hl                                          ; $7e1b: $e5
	push af                                          ; $7e1c: $f5
	sbc  $fb                                         ; $7e1d: $de $fb
	db   $ed                                         ; $7e1f: $ed
	nop                                              ; $7e20: $00
	nop                                              ; $7e21: $00
	cp   c                                           ; $7e22: $b9
	push hl                                          ; $7e23: $e5
	push af                                          ; $7e24: $f5
	db   $dd                                         ; $7e25: $dd
	ei                                               ; $7e26: $fb
	or   c                                           ; $7e27: $b1
	nop                                              ; $7e28: $00
	ld   bc, $dfb0                                   ; $7e29: $01 $b0 $df
	inc  bc                                          ; $7e2c: $03
	ld   l, b                                        ; $7e2d: $68
	dec  b                                           ; $7e2e: $05
	inc  c                                           ; $7e2f: $0c
	nop                                              ; $7e30: $00
	ld   [bc], a                                     ; $7e31: $02
	rlca                                             ; $7e32: $07
	ret  z                                           ; $7e33: $c8

	ld   [bc], a                                     ; $7e34: $02
	ld   [bc], a                                     ; $7e35: $02
	inc  bc                                          ; $7e36: $03
	ld   bc, $2000                                   ; $7e37: $01 $00 $20
	nop                                              ; $7e3a: $00
	rlca                                             ; $7e3b: $07
	push hl                                          ; $7e3c: $e5
	ld   [bc], a                                     ; $7e3d: $02
	ld   [bc], a                                     ; $7e3e: $02
	inc  bc                                          ; $7e3f: $03
	ld   bc, $2001                                   ; $7e40: $01 $01 $20
	nop                                              ; $7e43: $00
	rlca                                             ; $7e44: $07
	push hl                                          ; $7e45: $e5
	ld   [bc], a                                     ; $7e46: $02
	ld   [bc], a                                     ; $7e47: $02
	inc  bc                                          ; $7e48: $03
	ld   bc, $2002                                   ; $7e49: $01 $02 $20
	nop                                              ; $7e4c: $00
	ld   b, $e5                                      ; $7e4d: $06 $e5
	ld   [bc], a                                     ; $7e4f: $02
	inc  e                                           ; $7e50: $1c
	rrca                                             ; $7e51: $0f
	ld   bc, $1401                                   ; $7e52: $01 $01 $14
	dec  de                                          ; $7e55: $1b
	ld   bc, $0301                                   ; $7e56: $01 $01 $03
	ld   c, d                                        ; $7e59: $4a
	ld   [bc], a                                     ; $7e5a: $02
	or   h                                           ; $7e5b: $b4
	ld   l, [hl]                                     ; $7e5c: $6e
	sbc  a                                           ; $7e5d: $9f
	dec  c                                           ; $7e5e: $0d
	nop                                              ; $7e5f: $00
	ld   a, [bc]                                     ; $7e60: $0a
	dec  b                                           ; $7e61: $05
	ld   b, b                                        ; $7e62: $40
	rst  $38                                         ; $7e63: $ff
	inc  bc                                          ; $7e64: $03
	rst  $38                                         ; $7e65: $ff
	ld   bc, $2801                                   ; $7e66: $01 $01 $28
	nop                                              ; $7e69: $00
	ld   b, $64                                      ; $7e6a: $06 $64
	ld   bc, $0f1c                                   ; $7e6c: $01 $1c $0f
	ld   [bc], a                                     ; $7e6f: $02
	ld   [bc], a                                     ; $7e70: $02
	inc  d                                           ; $7e71: $14
	inc  e                                           ; $7e72: $1c
	ld   bc, $0301                                   ; $7e73: $01 $01 $03
	jr   z, jr_059_7e7c                              ; $7e76: $28 $04

	ld   c, b                                        ; $7e78: $48
	ld   l, [hl]                                     ; $7e79: $6e
	ld   [hl], c                                     ; $7e7a: $71
	ld   l, l                                        ; $7e7b: $6d

jr_059_7e7c:
	ld   a, b                                        ; $7e7c: $78
	rst  $38                                         ; $7e7d: $ff
	rst  $38                                         ; $7e7e: $ff
	dec  c                                           ; $7e7f: $0d
	inc  bc                                          ; $7e80: $03
	ld   c, d                                        ; $7e81: $4a
	ld   [bc], a                                     ; $7e82: $02
	or   h                                           ; $7e83: $b4
	ld   a, l                                        ; $7e84: $7d
	ld   bc, $b907                                   ; $7e85: $01 $07 $b9
	push hl                                          ; $7e88: $e5
	push af                                          ; $7e89: $f5
	sbc  $fb                                         ; $7e8a: $de $fb
	db   $ed                                         ; $7e8c: $ed
	ld   bc, $6e08                                   ; $7e8d: $01 $08 $6e
	sbc  a                                           ; $7e90: $9f
	dec  c                                           ; $7e91: $0d
	nop                                              ; $7e92: $00
	ld   a, [bc]                                     ; $7e93: $0a
	ld   b, $64                                      ; $7e94: $06 $64
	ld   bc, $b907                                   ; $7e96: $01 $07 $b9
	inc  bc                                          ; $7e99: $03
	inc  b                                           ; $7e9a: $04
	add  b                                           ; $7e9b: $80
	ld   d, c                                        ; $7e9c: $51
	ld   bc, $20ff                                   ; $7e9d: $01 $ff $20
	nop                                              ; $7ea0: $00
	dec  b                                           ; $7ea1: $05
	add  b                                           ; $7ea2: $80
	ld   d, c                                        ; $7ea3: $51
	ld   bc, $0001                                   ; $7ea4: $01 $01 $00
	ld   bc, $a5a3                                   ; $7ea7: $01 $a3 $a5
	db   $ec                                         ; $7eaa: $ec
	cp   d                                           ; $7eab: $ba
	ld   a, h                                        ; $7eac: $7c
	inc  b                                           ; $7ead: $04
	rst  ToBoot                                         ; $7eae: $c7
	inc  bc                                          ; $7eaf: $03
	sbc  h                                           ; $7eb0: $9c
	ld   a, l                                        ; $7eb1: $7d
	ld   sp, hl                                      ; $7eb2: $f9
	dec  c                                           ; $7eb3: $0d
	nop                                              ; $7eb4: $00
	ld   a, [bc]                                     ; $7eb5: $0a
	add  hl, de                                      ; $7eb6: $19
	dec  b                                           ; $7eb7: $05
	inc  bc                                          ; $7eb8: $03
	cp   b                                           ; $7eb9: $b8
	push hl                                          ; $7eba: $e5
	ret                                              ; $7ebb: $c9


	ei                                               ; $7ebc: $fb
	rst  $10                                         ; $7ebd: $d7
	db   $ec                                         ; $7ebe: $ec
	and  e                                           ; $7ebf: $a3
	push af                                          ; $7ec0: $f5
	nop                                              ; $7ec1: $00
	nop                                              ; $7ec2: $00
	cp   b                                           ; $7ec3: $b8
	push hl                                          ; $7ec4: $e5
	ret                                              ; $7ec5: $c9


	ei                                               ; $7ec6: $fb
	rst  $10                                         ; $7ec7: $d7
	db   $ec                                         ; $7ec8: $ec
	db   $ec                                         ; $7ec9: $ec
	and  e                                           ; $7eca: $a3
	push af                                          ; $7ecb: $f5
	ret                                              ; $7ecc: $c9


	nop                                              ; $7ecd: $00
	ld   bc, $e5b8                                   ; $7ece: $01 $b8 $e5
	jp   z, $d7fb                                    ; $7ed1: $ca $fb $d7

	db   $ec                                         ; $7ed4: $ec
	and  e                                           ; $7ed5: $a3
	push af                                          ; $7ed6: $f5
	nop                                              ; $7ed7: $00
	ld   [bc], a                                     ; $7ed8: $02
	rlca                                             ; $7ed9: $07
	ld   l, a                                        ; $7eda: $6f
	inc  bc                                          ; $7edb: $03
	ld   [bc], a                                     ; $7edc: $02
	inc  bc                                          ; $7edd: $03
	ld   bc, $2000                                   ; $7ede: $01 $00 $20
	nop                                              ; $7ee1: $00
	rlca                                             ; $7ee2: $07
	adc  h                                           ; $7ee3: $8c
	inc  bc                                          ; $7ee4: $03
	ld   [bc], a                                     ; $7ee5: $02
	inc  bc                                          ; $7ee6: $03
	ld   bc, $2001                                   ; $7ee7: $01 $01 $20
	nop                                              ; $7eea: $00
	rlca                                             ; $7eeb: $07
	adc  h                                           ; $7eec: $8c
	inc  bc                                          ; $7eed: $03
	ld   [bc], a                                     ; $7eee: $02
	inc  bc                                          ; $7eef: $03
	ld   bc, $2002                                   ; $7ef0: $01 $02 $20
	nop                                              ; $7ef3: $00
	ld   b, $8c                                      ; $7ef4: $06 $8c
	inc  bc                                          ; $7ef6: $03
	inc  e                                           ; $7ef7: $1c
	rrca                                             ; $7ef8: $0f
	ld   bc, $1401                                   ; $7ef9: $01 $01 $14
	dec  de                                          ; $7efc: $1b
	ld   bc, $0301                                   ; $7efd: $01 $01 $03
	ld   c, d                                        ; $7f00: $4a
	ld   [bc], a                                     ; $7f01: $02
	or   h                                           ; $7f02: $b4
	ld   l, [hl]                                     ; $7f03: $6e
	sbc  a                                           ; $7f04: $9f
	dec  c                                           ; $7f05: $0d
	nop                                              ; $7f06: $00
	ld   a, [bc]                                     ; $7f07: $0a
	dec  b                                           ; $7f08: $05
	ld   b, b                                        ; $7f09: $40
	rst  $38                                         ; $7f0a: $ff
	inc  bc                                          ; $7f0b: $03
	rst  $38                                         ; $7f0c: $ff
	ld   bc, $2801                                   ; $7f0d: $01 $01 $28
	nop                                              ; $7f10: $00
	ld   b, $64                                      ; $7f11: $06 $64
	ld   bc, $0f1c                                   ; $7f13: $01 $1c $0f
	ld   [bc], a                                     ; $7f16: $02
	ld   [bc], a                                     ; $7f17: $02
	inc  d                                           ; $7f18: $14
	inc  e                                           ; $7f19: $1c
	ld   bc, $0301                                   ; $7f1a: $01 $01 $03
	jr   z, jr_059_7f23                              ; $7f1d: $28 $04

	ld   c, b                                        ; $7f1f: $48
	ld   l, [hl]                                     ; $7f20: $6e
	ld   [hl], c                                     ; $7f21: $71
	ld   l, l                                        ; $7f22: $6d

jr_059_7f23:
	ld   a, b                                        ; $7f23: $78
	rst  $38                                         ; $7f24: $ff
	rst  $38                                         ; $7f25: $ff
	dec  c                                           ; $7f26: $0d
	inc  bc                                          ; $7f27: $03
	ld   c, d                                        ; $7f28: $4a
	ld   [bc], a                                     ; $7f29: $02
	or   h                                           ; $7f2a: $b4
	ld   a, l                                        ; $7f2b: $7d
	ld   bc, $b807                                   ; $7f2c: $01 $07 $b8
	push hl                                          ; $7f2f: $e5
	ret                                              ; $7f30: $c9


	ei                                               ; $7f31: $fb
	rst  $10                                         ; $7f32: $d7
	db   $ec                                         ; $7f33: $ec
	and  e                                           ; $7f34: $a3
	push af                                          ; $7f35: $f5
	ld   bc, $0d08                                   ; $7f36: $01 $08 $0d
	ld   l, [hl]                                     ; $7f39: $6e
	sbc  a                                           ; $7f3a: $9f
	dec  c                                           ; $7f3b: $0d
	nop                                              ; $7f3c: $00
	ld   a, [bc]                                     ; $7f3d: $0a
	ld   b, $64                                      ; $7f3e: $06 $64
	ld   bc, $5a07                                   ; $7f40: $01 $07 $5a
	inc  b                                           ; $7f43: $04
	inc  b                                           ; $7f44: $04
	add  b                                           ; $7f45: $80
	ld   d, d                                        ; $7f46: $52
	ld   bc, $20ff                                   ; $7f47: $01 $ff $20
	nop                                              ; $7f4a: $00
	dec  b                                           ; $7f4b: $05
	add  b                                           ; $7f4c: $80
	ld   d, d                                        ; $7f4d: $52
	ld   bc, $0001                                   ; $7f4e: $01 $01 $00
	ld   bc, $a5a3                                   ; $7f51: $01 $a3 $a5
	db   $ec                                         ; $7f54: $ec
	cp   d                                           ; $7f55: $ba
	ld   e, d                                        ; $7f56: $5a
	inc  bc                                          ; $7f57: $03
	sub  h                                           ; $7f58: $94
	inc  b                                           ; $7f59: $04
	sbc  [hl]                                        ; $7f5a: $9e
	and  b                                           ; $7f5b: $a0
	dec  c                                           ; $7f5c: $0d
	sub  [hl]                                        ; $7f5d: $96
	add  h                                           ; $7f5e: $84
	halt                                             ; $7f5f: $76
	ld   e, e                                        ; $7f60: $5b
	ld   a, l                                        ; $7f61: $7d
	ld   a, b                                        ; $7f62: $78
	and  c                                           ; $7f63: $a1
	ld   [hl], h                                     ; $7f64: $74
	ld   [bc], a                                     ; $7f65: $02
	sbc  l                                           ; $7f66: $9d
	ld   d, h                                        ; $7f67: $54
	ld   sp, hl                                      ; $7f68: $f9
	dec  c                                           ; $7f69: $0d
	nop                                              ; $7f6a: $00
	ld   a, [bc]                                     ; $7f6b: $0a
	add  hl, de                                      ; $7f6c: $19
	dec  b                                           ; $7f6d: $05
	inc  bc                                          ; $7f6e: $03
	and  e                                           ; $7f6f: $a3
	and  l                                           ; $7f70: $a5
	db   $ec                                         ; $7f71: $ec
	cp   d                                           ; $7f72: $ba
	nop                                              ; $7f73: $00
	nop                                              ; $7f74: $00
	ld   d, b                                        ; $7f75: $50
	ld   l, l                                        ; $7f76: $6d
	ld   h, l                                        ; $7f77: $65
	nop                                              ; $7f78: $00
	ld   bc, $6d9d                                   ; $7f79: $01 $9d $6d
	ld   h, l                                        ; $7f7c: $65
	nop                                              ; $7f7d: $00
	ld   [bc], a                                     ; $7f7e: $02
	rlca                                             ; $7f7f: $07
	dec  d                                           ; $7f80: $15
	inc  b                                           ; $7f81: $04
	ld   [bc], a                                     ; $7f82: $02
	inc  bc                                          ; $7f83: $03
	ld   bc, $2000                                   ; $7f84: $01 $00 $20
	nop                                              ; $7f87: $00
	rlca                                             ; $7f88: $07
	ld   [hl-], a                                    ; $7f89: $32
	inc  b                                           ; $7f8a: $04
	ld   [bc], a                                     ; $7f8b: $02
	inc  bc                                          ; $7f8c: $03
	ld   bc, $2001                                   ; $7f8d: $01 $01 $20
	nop                                              ; $7f90: $00
	rlca                                             ; $7f91: $07
	ld   [hl-], a                                    ; $7f92: $32
	inc  b                                           ; $7f93: $04
	ld   [bc], a                                     ; $7f94: $02
	inc  bc                                          ; $7f95: $03
	ld   bc, $2002                                   ; $7f96: $01 $02 $20
	nop                                              ; $7f99: $00
	ld   b, $32                                      ; $7f9a: $06 $32
	inc  b                                           ; $7f9c: $04
	inc  e                                           ; $7f9d: $1c
	rrca                                             ; $7f9e: $0f
	ld   bc, $1401                                   ; $7f9f: $01 $01 $14
	dec  de                                          ; $7fa2: $1b
	ld   bc, $0301                                   ; $7fa3: $01 $01 $03
	ld   c, d                                        ; $7fa6: $4a
	ld   [bc], a                                     ; $7fa7: $02
	or   h                                           ; $7fa8: $b4
	ld   l, [hl]                                     ; $7fa9: $6e
	sbc  a                                           ; $7faa: $9f
	dec  c                                           ; $7fab: $0d
	nop                                              ; $7fac: $00
	ld   a, [bc]                                     ; $7fad: $0a
	dec  b                                           ; $7fae: $05
	ld   b, b                                        ; $7faf: $40
	rst  $38                                         ; $7fb0: $ff
	inc  bc                                          ; $7fb1: $03
	rst  $38                                         ; $7fb2: $ff
	ld   bc, $2801                                   ; $7fb3: $01 $01 $28
	nop                                              ; $7fb6: $00
	ld   b, $64                                      ; $7fb7: $06 $64
	ld   bc, $0f1c                                   ; $7fb9: $01 $1c $0f
	ld   [bc], a                                     ; $7fbc: $02
	ld   [bc], a                                     ; $7fbd: $02
	inc  d                                           ; $7fbe: $14
	inc  e                                           ; $7fbf: $1c
	ld   bc, $0301                                   ; $7fc0: $01 $01 $03
	jr   z, jr_059_7fc9                              ; $7fc3: $28 $04

	ld   c, b                                        ; $7fc5: $48
	ld   l, [hl]                                     ; $7fc6: $6e
	ld   [hl], c                                     ; $7fc7: $71
	ld   l, l                                        ; $7fc8: $6d

jr_059_7fc9:
	ld   a, b                                        ; $7fc9: $78
	rst  $38                                         ; $7fca: $ff
	rst  $38                                         ; $7fcb: $ff
	dec  c                                           ; $7fcc: $0d
	inc  bc                                          ; $7fcd: $03
	ld   c, d                                        ; $7fce: $4a
	ld   [bc], a                                     ; $7fcf: $02
	or   h                                           ; $7fd0: $b4
	ld   a, l                                        ; $7fd1: $7d
	ld   bc, $a307                                   ; $7fd2: $01 $07 $a3
	and  l                                           ; $7fd5: $a5
	db   $ec                                         ; $7fd6: $ec
	cp   d                                           ; $7fd7: $ba
	ld   bc, $6e08                                   ; $7fd8: $01 $08 $6e
	sbc  a                                           ; $7fdb: $9f
	dec  c                                           ; $7fdc: $0d
	nop                                              ; $7fdd: $00
	ld   a, [bc]                                     ; $7fde: $0a
	ld   b, $64                                      ; $7fdf: $06 $64
	ld   bc, $fc07                                   ; $7fe1: $01 $07 $fc
	inc  b                                           ; $7fe4: $04
	inc  b                                           ; $7fe5: $04
	add  b                                           ; $7fe6: $80
	ld   d, e                                        ; $7fe7: $53
	ld   bc, $20ff                                   ; $7fe8: $01 $ff $20
	nop                                              ; $7feb: $00
	dec  b                                           ; $7fec: $05
	add  b                                           ; $7fed: $80
	ld   d, e                                        ; $7fee: $53
	ld   bc, $0001                                   ; $7fef: $01 $01 $00
	ld   bc, $e5b9                                   ; $7ff2: $01 $b9 $e5
	push af                                          ; $7ff5: $f5
	sbc  $fb                                         ; $7ff6: $de $fb
	db   $ed                                         ; $7ff8: $ed
	ld   a, h                                        ; $7ff9: $7c
	dec  b                                           ; $7ffa: $05
	dec  bc                                          ; $7ffb: $0b
	inc  bc                                          ; $7ffc: $03
	add  d                                           ; $7ffd: $82
	ld   a, l                                        ; $7ffe: $7d
	ld   sp, hl                                      ; $7fff: $f9
