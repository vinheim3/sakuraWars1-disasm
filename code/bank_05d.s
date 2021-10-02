; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $05d", ROMX[$4000], BANK[$5d]

	ld   bc, $2004                                   ; $4000: $01 $04 $20
	nop                                              ; $4003: $00
	rlca                                             ; $4004: $07
	ld   d, $03                                      ; $4005: $16 $03
	ld   [bc], a                                     ; $4007: $02
	rlca                                             ; $4008: $07
	ld   bc, $2002                                   ; $4009: $01 $02 $20
	nop                                              ; $400c: $00
	rlca                                             ; $400d: $07
	sbc  b                                           ; $400e: $98
	ld   b, $02                                      ; $400f: $06 $02
	rlca                                             ; $4011: $07
	ld   bc, $2005                                   ; $4012: $01 $05 $20
	nop                                              ; $4015: $00
	rlca                                             ; $4016: $07
	add  a                                           ; $4017: $87
	inc  b                                           ; $4018: $04
	ld   [bc], a                                     ; $4019: $02
	rlca                                             ; $401a: $07
	ld   bc, $2003                                   ; $401b: $01 $03 $20
	nop                                              ; $401e: $00
	rlca                                             ; $401f: $07
	pop  de                                          ; $4020: $d1
	rlca                                             ; $4021: $07
	ld   [bc], a                                     ; $4022: $02
	rlca                                             ; $4023: $07
	ld   bc, $2006                                   ; $4024: $01 $06 $20
	nop                                              ; $4027: $00
	rrca                                             ; $4028: $0f
	nop                                              ; $4029: $00
	ld   bc, $8c01                                   ; $402a: $01 $01 $8c
	rst  $38                                         ; $402d: $ff
	rst  $38                                         ; $402e: $ff
	inc  b                                           ; $402f: $04
	ld   a, l                                        ; $4030: $7d
	ld   e, a                                        ; $4031: $5f
	ld   l, l                                        ; $4032: $6d
	rst  $38                                         ; $4033: $ff
	rst  $38                                         ; $4034: $ff
	dec  c                                           ; $4035: $0d
	nop                                              ; $4036: $00
	ld   a, [bc]                                     ; $4037: $0a
	inc  e                                           ; $4038: $1c
	add  hl, bc                                      ; $4039: $09
	ld   [bc], a                                     ; $403a: $02
	ld   [bc], a                                     ; $403b: $02
	ld   bc, $2803                                   ; $403c: $01 $03 $28
	inc  b                                           ; $403f: $04
	ld   c, b                                        ; $4040: $48
	ld   l, [hl]                                     ; $4041: $6e
	ld   [hl], c                                     ; $4042: $71
	ld   l, l                                        ; $4043: $6d
	ld   a, b                                        ; $4044: $78
	sbc  [hl]                                        ; $4045: $9e
	dec  c                                           ; $4046: $0d
	ld   [$5d00], sp                                 ; $4047: $08 $00 $5d
	and  c                                           ; $404a: $a1
	sbc  a                                           ; $404b: $9f
	dec  c                                           ; $404c: $0d
	nop                                              ; $404d: $00
	ld   a, [bc]                                     ; $404e: $0a
	ld   bc, $3802                                   ; $404f: $01 $02 $38
	inc  b                                           ; $4052: $04
	ld   d, d                                        ; $4053: $52
	ld   [hl], l                                     ; $4054: $75
	ld   a, h                                        ; $4055: $7c
	inc  bc                                          ; $4056: $03
	xor  b                                           ; $4057: $a8
	dec  b                                           ; $4058: $05
	rst  $38                                         ; $4059: $ff
	ld   a, l                                        ; $405a: $7d
	sbc  [hl]                                        ; $405b: $9e
	dec  b                                           ; $405c: $05
	pop  de                                          ; $405d: $d1
	ld   [hl], c                                     ; $405e: $71
	ld   l, l                                        ; $405f: $6d
	sub  [hl]                                        ; $4060: $96
	sbc  b                                           ; $4061: $98
	dec  c                                           ; $4062: $0d
	adc  [hl]                                        ; $4063: $8e
	ld   l, b                                        ; $4064: $68
	ld   e, c                                        ; $4065: $59
	ld   h, l                                        ; $4066: $65
	ld   d, d                                        ; $4067: $52
	ld   l, [hl]                                     ; $4068: $6e
	sbc  e                                           ; $4069: $9b
	sbc  a                                           ; $406a: $9f
	dec  c                                           ; $406b: $0d
	nop                                              ; $406c: $00
	ld   a, [bc]                                     ; $406d: $0a
	ld   bc, $2403                                   ; $406e: $01 $03 $24
	ld   [bc], a                                     ; $4071: $02
	sub  [hl]                                        ; $4072: $96
	ld   a, l                                        ; $4073: $7d
	adc  h                                           ; $4074: $8c
	ld   l, [hl]                                     ; $4075: $6e
	dec  b                                           ; $4076: $05
	db   $10                                         ; $4077: $10
	inc  bc                                          ; $4078: $03
	ld   a, c                                        ; $4079: $79
	sub  b                                           ; $407a: $90
	ld   d, b                                        ; $407b: $50
	sbc  c                                           ; $407c: $99
	sbc  a                                           ; $407d: $9f
	dec  c                                           ; $407e: $0d
	ld   [bc], a                                     ; $407f: $02
	and  c                                           ; $4080: $a1
	and  b                                           ; $4081: $a0
	sub  h                                           ; $4082: $94
	sbc  c                                           ; $4083: $99
	adc  a                                           ; $4084: $8f
	ld   l, b                                        ; $4085: $68
	ld   a, c                                        ; $4086: $79
	inc  bc                                          ; $4087: $03
	ld   l, l                                        ; $4088: $6d
	dec  b                                           ; $4089: $05
	add  hl, de                                      ; $408a: $19
	dec  c                                           ; $408b: $0d
	ld   h, l                                        ; $408c: $65
	ld   [hl], h                                     ; $408d: $74
	ld   e, b                                        ; $408e: $58
	ld   e, l                                        ; $408f: $5d
	sub  [hl]                                        ; $4090: $96
	ld   d, h                                        ; $4091: $54
	ld   a, c                                        ; $4092: $79
	ld   a, b                                        ; $4093: $78
	sbc  a                                           ; $4094: $9f
	dec  c                                           ; $4095: $0d
	nop                                              ; $4096: $00
	ld   a, [bc]                                     ; $4097: $0a
	dec  c                                           ; $4098: $0d
	nop                                              ; $4099: $00
	nop                                              ; $409a: $00
	rrca                                             ; $409b: $0f
	nop                                              ; $409c: $00
	ld   bc, $1e09                                   ; $409d: $01 $09 $1e
	nop                                              ; $40a0: $00
	inc  c                                           ; $40a1: $0c
	ld   [bc], a                                     ; $40a2: $02
	ld   c, $33                                      ; $40a3: $0e $33
	rrca                                             ; $40a5: $0f
	nop                                              ; $40a6: $00
	ld   bc, $ff01                                   ; $40a7: $01 $01 $ff
	rst  $38                                         ; $40aa: $ff
	add  e                                           ; $40ab: $83
	ld   d, h                                        ; $40ac: $54
	rst  $38                                         ; $40ad: $ff
	rst  $38                                         ; $40ae: $ff
	dec  c                                           ; $40af: $0d
	ld   [bc], a                                     ; $40b0: $02
	and  l                                           ; $40b1: $a5
	inc  b                                           ; $40b2: $04
	xor  d                                           ; $40b3: $aa
	ld   a, h                                        ; $40b4: $7c
	rst  ToBoot                                         ; $40b5: $c7
	cp   d                                           ; $40b6: $ba
	ret                                              ; $40b7: $c9


	ld   a, l                                        ; $40b8: $7d
	dec  c                                           ; $40b9: $0d
	ld   e, e                                        ; $40ba: $5b
	and  c                                           ; $40bb: $a1
	ld   l, a                                        ; $40bc: $6f
	sub  l                                           ; $40bd: $95
	ld   d, h                                        ; $40be: $54
	ld   h, l                                        ; $40bf: $65
	ld   l, l                                        ; $40c0: $6d
	ld   a, b                                        ; $40c1: $78
	ld   d, b                                        ; $40c2: $50
	rst  $38                                         ; $40c3: $ff
	rst  $38                                         ; $40c4: $ff
	dec  c                                           ; $40c5: $0d
	nop                                              ; $40c6: $00
	ld   a, [bc]                                     ; $40c7: $0a
	inc  e                                           ; $40c8: $1c
	ld   bc, $0000                                   ; $40c9: $01 $00 $00
	ld   bc, $0458                                   ; $40cc: $01 $58 $04
	ld   a, e                                        ; $40cf: $7b
	sbc  d                                           ; $40d0: $9a
	ld   h, e                                        ; $40d1: $63
	adc  h                                           ; $40d2: $8c
	ld   [hl], l                                     ; $40d3: $75
	ld   h, l                                        ; $40d4: $65
	ld   l, l                                        ; $40d5: $6d
	sbc  a                                           ; $40d6: $9f
	dec  c                                           ; $40d7: $0d
	ld   [$6300], sp                                 ; $40d8: $08 $00 $63
	and  c                                           ; $40db: $a1
	sbc  a                                           ; $40dc: $9f
	dec  c                                           ; $40dd: $0d
	nop                                              ; $40de: $00
	ld   a, [bc]                                     ; $40df: $0a
	rrca                                             ; $40e0: $0f
	nop                                              ; $40e1: $00
	ld   bc, $5001                                   ; $40e2: $01 $01 $50
	ld   [hl], c                                     ; $40e5: $71
	sbc  [hl]                                        ; $40e6: $9e
	ld   h, e                                        ; $40e7: $63
	ld   e, l                                        ; $40e8: $5d
	sub  a                                           ; $40e9: $97
	ld   h, e                                        ; $40ea: $63
	and  c                                           ; $40eb: $a1
	rst  $38                                         ; $40ec: $ff
	rst  $38                                         ; $40ed: $ff
	dec  c                                           ; $40ee: $0d
	nop                                              ; $40ef: $00
	ld   a, [bc]                                     ; $40f0: $0a
	inc  e                                           ; $40f1: $1c
	ld   bc, $0101                                   ; $40f2: $01 $01 $01
	ld   bc, $bac7                                   ; $40f5: $01 $c7 $ba
	ret                                              ; $40f8: $c9


	sbc  [hl]                                        ; $40f9: $9e
	ld   d, d                                        ; $40fa: $52
	ld   d, d                                        ; $40fb: $52
	ld   [bc], a                                     ; $40fc: $02
	reti                                             ; $40fd: $d9


	ld   [bc], a                                     ; $40fe: $02
	ld   h, e                                        ; $40ff: $63
	ld   l, [hl]                                     ; $4100: $6e
	ld   [hl], c                                     ; $4101: $71
	ld   l, l                                        ; $4102: $6d
	dec  c                                           ; $4103: $0d
	adc  l                                           ; $4104: $8d
	ld   l, l                                        ; $4105: $6d
	ld   d, d                                        ; $4106: $52
	ld   [hl], l                                     ; $4107: $75
	ld   h, a                                        ; $4108: $67
	ld   a, e                                        ; $4109: $7b
	sbc  a                                           ; $410a: $9f
	dec  c                                           ; $410b: $0d
	nop                                              ; $410c: $00
	ld   a, [bc]                                     ; $410d: $0a
	ld   bc, $5965                                   ; $410e: $01 $65 $59
	sub  b                                           ; $4111: $90
	sbc  [hl]                                        ; $4112: $9e
	ld   d, b                                        ; $4113: $50
	ld   l, l                                        ; $4114: $6d
	ld   h, l                                        ; $4115: $65
	ld   a, h                                        ; $4116: $7c
	ld   [bc], a                                     ; $4117: $02
	jr   c, jr_05d_411e                              ; $4118: $38 $04

	ld   d, d                                        ; $411a: $52
	ld   [hl], l                                     ; $411b: $75
	dec  c                                           ; $411c: $0d
	rst  ToBoot                                         ; $411d: $c7

jr_05d_411e:
	cp   d                                           ; $411e: $ba
	ret                                              ; $411f: $c9


	ld   h, l                                        ; $4120: $65
	ld   l, l                                        ; $4121: $6d
	and  c                                           ; $4122: $a1
	ld   [hl], l                                     ; $4123: $75
	ld   h, a                                        ; $4124: $67
	ld   [hl], c                                     ; $4125: $71
	ld   [hl], h                                     ; $4126: $74
	ld   sp, hl                                      ; $4127: $f9
	dec  c                                           ; $4128: $0d
	inc  b                                           ; $4129: $04
	ld   c, $03                                      ; $412a: $0e $03
	sub  b                                           ; $412c: $90
	ld   h, e                                        ; $412d: $63
	and  c                                           ; $412e: $a1
	ld   a, c                                        ; $412f: $79
	ld   [bc], a                                     ; $4130: $02
	jp   nz, $8c5b                                   ; $4131: $c2 $5b $8c

	ld   h, l                                        ; $4134: $65
	ld   l, l                                        ; $4135: $6d
	sub  [hl]                                        ; $4136: $96
	sbc  a                                           ; $4137: $9f
	dec  c                                           ; $4138: $0d
	nop                                              ; $4139: $00
	ld   a, [bc]                                     ; $413a: $0a
	rrca                                             ; $413b: $0f
	nop                                              ; $413c: $00
	ld   bc, $7d01                                   ; $413d: $01 $01 $7d
	ld   d, d                                        ; $4140: $52
	sbc  [hl]                                        ; $4141: $9e
	ld   d, b                                        ; $4142: $50
	sbc  b                                           ; $4143: $98
	ld   e, d                                        ; $4144: $5a
	halt                                             ; $4145: $76
	ld   d, h                                        ; $4146: $54
	ld   h, d                                        ; $4147: $62
	ld   h, h                                        ; $4148: $64
	ld   d, d                                        ; $4149: $52
	adc  h                                           ; $414a: $8c
	ld   h, a                                        ; $414b: $67
	ld   a, [$610d]                                  ; $414c: $fa $0d $61
	sbc  d                                           ; $414f: $9a
	sub  b                                           ; $4150: $90
	sbc  [hl]                                        ; $4151: $9e
	ld   h, e                                        ; $4152: $63
	ld   e, l                                        ; $4153: $5d
	sub  a                                           ; $4154: $97
	ld   h, e                                        ; $4155: $63
	and  c                                           ; $4156: $a1
	ld   a, h                                        ; $4157: $7c
	inc  bc                                          ; $4158: $03
	ld   l, l                                        ; $4159: $6d
	dec  b                                           ; $415a: $05
	add  hl, de                                      ; $415b: $19
	ld   a, h                                        ; $415c: $7c
	dec  c                                           ; $415d: $0d
	ld   e, b                                        ; $415e: $58
	ld   e, c                                        ; $415f: $59
	ld   h, b                                        ; $4160: $60
	ld   [hl], l                                     ; $4161: $75
	ld   h, a                                        ; $4162: $67
	sub  [hl]                                        ; $4163: $96
	sbc  a                                           ; $4164: $9f
	dec  c                                           ; $4165: $0d
	nop                                              ; $4166: $00
	ld   a, [bc]                                     ; $4167: $0a
	inc  e                                           ; $4168: $1c
	ld   bc, $0101                                   ; $4169: $01 $01 $01
	dec  e                                           ; $416c: $1d
	ld   b, b                                        ; $416d: $40
	ld   de, $1103                                   ; $416e: $11 $03 $11
	ld   bc, $2803                                   ; $4171: $01 $03 $28
	nop                                              ; $4174: $00
	ld   bc, $d6d6                                   ; $4175: $01 $d6 $d6
	rst  $38                                         ; $4178: $ff
	rst  $38                                         ; $4179: $ff
	ld   [hl], l                                     ; $417a: $75
	sub  b                                           ; $417b: $90
	sbc  [hl]                                        ; $417c: $9e
	ld   [bc], a                                     ; $417d: $02
	reti                                             ; $417e: $d9


	ld   [bc], a                                     ; $417f: $02
	ld   h, e                                        ; $4180: $63
	and  b                                           ; $4181: $a0
	inc  bc                                          ; $4182: $03
	add  b                                           ; $4183: $80
	ld   l, c                                        ; $4184: $69
	ld   l, l                                        ; $4185: $6d
	dec  c                                           ; $4186: $0d
	ld   a, h                                        ; $4187: $7c
	ld   a, l                                        ; $4188: $7d
	sbc  [hl]                                        ; $4189: $9e
	ld   [$6300], sp                                 ; $418a: $08 $00 $63
	and  c                                           ; $418d: $a1
	ld   e, d                                        ; $418e: $5a
	dec  c                                           ; $418f: $0d
	ld   e, d                                        ; $4190: $5a
	and  c                                           ; $4191: $a1
	ld   a, [hl]                                     ; $4192: $7e
	ld   [hl], c                                     ; $4193: $71
	ld   l, l                                        ; $4194: $6d
	ld   e, c                                        ; $4195: $59
	sub  a                                           ; $4196: $97
	ld   [hl], l                                     ; $4197: $75
	ld   h, a                                        ; $4198: $67
	sub  [hl]                                        ; $4199: $96
	sbc  a                                           ; $419a: $9f
	dec  c                                           ; $419b: $0d
	nop                                              ; $419c: $00
	ld   a, [bc]                                     ; $419d: $0a
	ld   bc, $9a61                                   ; $419e: $01 $61 $9a
	ld   e, c                                        ; $41a1: $59
	sub  a                                           ; $41a2: $97
	sub  b                                           ; $41a3: $90
	sbc  [hl]                                        ; $41a4: $9e
	ld   h, c                                        ; $41a5: $61
	ld   a, h                                        ; $41a6: $7c
	inc  bc                                          ; $41a7: $03
	cp   $03                                         ; $41a8: $fe $03
	add  [hl]                                        ; $41aa: $86
	ld   [hl], l                                     ; $41ab: $75
	dec  c                                           ; $41ac: $0d
	ld   e, d                                        ; $41ad: $5a
	and  c                                           ; $41ae: $a1
	ld   a, [hl]                                     ; $41af: $7e
	ld   [hl], c                                     ; $41b0: $71
	ld   [hl], h                                     ; $41b1: $74
	ld   e, l                                        ; $41b2: $5d
	ld   l, [hl]                                     ; $41b3: $6e
	ld   h, e                                        ; $41b4: $63
	ld   d, d                                        ; $41b5: $52
	sbc  a                                           ; $41b6: $9f
	dec  c                                           ; $41b7: $0d
	nop                                              ; $41b8: $00
	ld   a, [bc]                                     ; $41b9: $0a
	dec  c                                           ; $41ba: $0d
	nop                                              ; $41bb: $00
	nop                                              ; $41bc: $00
	rrca                                             ; $41bd: $0f
	nop                                              ; $41be: $00
	ld   bc, $1e09                                   ; $41bf: $01 $09 $1e
	nop                                              ; $41c2: $00
	inc  c                                           ; $41c3: $0c
	ld   [bc], a                                     ; $41c4: $02
	ld   c, $3f                                      ; $41c5: $0e $3f
	rrca                                             ; $41c7: $0f
	nop                                              ; $41c8: $00
	ld   bc, $ff01                                   ; $41c9: $01 $01 $ff
	rst  $38                                         ; $41cc: $ff
	add  e                                           ; $41cd: $83
	ld   d, h                                        ; $41ce: $54
	rst  $38                                         ; $41cf: $ff
	rst  $38                                         ; $41d0: $ff
	dec  c                                           ; $41d1: $0d
	ld   [bc], a                                     ; $41d2: $02
	and  l                                           ; $41d3: $a5
	inc  b                                           ; $41d4: $04
	xor  d                                           ; $41d5: $aa
	ld   a, h                                        ; $41d6: $7c
	rst  ToBoot                                         ; $41d7: $c7
	cp   d                                           ; $41d8: $ba
	ret                                              ; $41d9: $c9


	ld   a, l                                        ; $41da: $7d
	ld   e, e                                        ; $41db: $5b
	and  c                                           ; $41dc: $a1
	ld   l, a                                        ; $41dd: $6f
	sub  l                                           ; $41de: $95
	ld   d, h                                        ; $41df: $54
	dec  c                                           ; $41e0: $0d
	ld   h, l                                        ; $41e1: $65
	ld   l, l                                        ; $41e2: $6d
	ld   a, b                                        ; $41e3: $78
	ld   d, b                                        ; $41e4: $50
	rst  $38                                         ; $41e5: $ff
	rst  $38                                         ; $41e6: $ff
	dec  c                                           ; $41e7: $0d
	nop                                              ; $41e8: $00
	ld   a, [bc]                                     ; $41e9: $0a
	inc  e                                           ; $41ea: $1c
	ld   [bc], a                                     ; $41eb: $02
	nop                                              ; $41ec: $00
	nop                                              ; $41ed: $00
	ld   bc, $0458                                   ; $41ee: $01 $58 $04
	ld   a, e                                        ; $41f1: $7b
	sbc  d                                           ; $41f2: $9a
	ld   h, e                                        ; $41f3: $63
	adc  h                                           ; $41f4: $8c
	ld   [hl], l                                     ; $41f5: $75
	ld   h, l                                        ; $41f6: $65
	ld   l, l                                        ; $41f7: $6d
	sbc  a                                           ; $41f8: $9f
	dec  c                                           ; $41f9: $0d
	ld   [$6300], sp                                 ; $41fa: $08 $00 $63
	and  c                                           ; $41fd: $a1
	sbc  a                                           ; $41fe: $9f
	dec  c                                           ; $41ff: $0d
	nop                                              ; $4200: $00
	ld   a, [bc]                                     ; $4201: $0a
	rrca                                             ; $4202: $0f
	nop                                              ; $4203: $00
	ld   bc, $5001                                   ; $4204: $01 $01 $50
	ld   [hl], c                                     ; $4207: $71
	sbc  [hl]                                        ; $4208: $9e
	ld   h, a                                        ; $4209: $67
	adc  l                                           ; $420a: $8d
	sbc  d                                           ; $420b: $9a
	ld   h, e                                        ; $420c: $63
	and  c                                           ; $420d: $a1
	rst  $38                                         ; $420e: $ff
	rst  $38                                         ; $420f: $ff
	dec  c                                           ; $4210: $0d
	nop                                              ; $4211: $00
	ld   a, [bc]                                     ; $4212: $0a
	inc  e                                           ; $4213: $1c
	ld   [bc], a                                     ; $4214: $02
	ld   bc, $0101                                   ; $4215: $01 $01 $01
	rst  ToBoot                                         ; $4218: $c7
	cp   d                                           ; $4219: $ba
	ret                                              ; $421a: $c9


	sbc  [hl]                                        ; $421b: $9e
	ld   d, d                                        ; $421c: $52
	ld   d, d                                        ; $421d: $52
	ld   [bc], a                                     ; $421e: $02
	reti                                             ; $421f: $d9


	ld   [bc], a                                     ; $4220: $02
	ld   h, e                                        ; $4221: $63
	ld   l, [hl]                                     ; $4222: $6e
	ld   [hl], c                                     ; $4223: $71
	ld   l, l                                        ; $4224: $6d
	dec  c                                           ; $4225: $0d
	adc  l                                           ; $4226: $8d
	ld   l, l                                        ; $4227: $6d
	ld   d, d                                        ; $4228: $52
	ld   [hl], l                                     ; $4229: $75
	ld   h, a                                        ; $422a: $67
	sbc  l                                           ; $422b: $9d
	ld   a, e                                        ; $422c: $7b
	sbc  a                                           ; $422d: $9f
	dec  c                                           ; $422e: $0d
	nop                                              ; $422f: $00
	ld   a, [bc]                                     ; $4230: $0a
	ld   bc, $5965                                   ; $4231: $01 $65 $59
	sub  b                                           ; $4234: $90
	sbc  [hl]                                        ; $4235: $9e
	sbc  l                                           ; $4236: $9d
	ld   l, l                                        ; $4237: $6d
	ld   e, l                                        ; $4238: $5d
	ld   h, l                                        ; $4239: $65
	ld   a, h                                        ; $423a: $7c
	ld   [bc], a                                     ; $423b: $02
	jr   c, jr_05d_4242                              ; $423c: $38 $04

	ld   d, d                                        ; $423e: $52
	ld   [hl], l                                     ; $423f: $75
	dec  c                                           ; $4240: $0d
	rst  ToBoot                                         ; $4241: $c7

jr_05d_4242:
	cp   d                                           ; $4242: $ba
	ret                                              ; $4243: $c9


	ld   h, l                                        ; $4244: $65
	ld   l, l                                        ; $4245: $6d
	and  c                                           ; $4246: $a1
	ld   [hl], l                                     ; $4247: $75
	ld   h, a                                        ; $4248: $67
	ld   [hl], c                                     ; $4249: $71
	ld   [hl], h                                     ; $424a: $74
	ld   sp, hl                                      ; $424b: $f9
	dec  c                                           ; $424c: $0d
	inc  bc                                          ; $424d: $03
	ld   l, h                                        ; $424e: $6c
	dec  b                                           ; $424f: $05
	ld   h, $79                                      ; $4250: $26 $79
	ld   [bc], a                                     ; $4252: $02
	jp   nz, $8c5b                                   ; $4253: $c2 $5b $8c

	ld   h, l                                        ; $4256: $65
	ld   l, l                                        ; $4257: $6d
	sbc  l                                           ; $4258: $9d
	sbc  a                                           ; $4259: $9f
	dec  c                                           ; $425a: $0d
	nop                                              ; $425b: $00
	ld   a, [bc]                                     ; $425c: $0a
	rrca                                             ; $425d: $0f
	nop                                              ; $425e: $00
	ld   bc, $7d01                                   ; $425f: $01 $01 $7d
	ld   d, d                                        ; $4262: $52
	sbc  [hl]                                        ; $4263: $9e
	ld   d, b                                        ; $4264: $50
	sbc  b                                           ; $4265: $98
	ld   e, d                                        ; $4266: $5a
	halt                                             ; $4267: $76
	ld   d, h                                        ; $4268: $54
	ld   h, d                                        ; $4269: $62
	ld   h, h                                        ; $426a: $64
	ld   d, d                                        ; $426b: $52
	adc  h                                           ; $426c: $8c
	ld   h, a                                        ; $426d: $67
	ld   a, [$610d]                                  ; $426e: $fa $0d $61
	sbc  d                                           ; $4271: $9a
	sub  b                                           ; $4272: $90
	sbc  [hl]                                        ; $4273: $9e
	ld   h, a                                        ; $4274: $67
	adc  l                                           ; $4275: $8d
	sbc  d                                           ; $4276: $9a
	ld   h, e                                        ; $4277: $63
	and  c                                           ; $4278: $a1
	ld   a, h                                        ; $4279: $7c
	inc  bc                                          ; $427a: $03
	ld   l, l                                        ; $427b: $6d
	dec  b                                           ; $427c: $05
	add  hl, de                                      ; $427d: $19
	ld   a, h                                        ; $427e: $7c
	dec  c                                           ; $427f: $0d
	ld   e, b                                        ; $4280: $58
	ld   e, c                                        ; $4281: $59
	ld   h, b                                        ; $4282: $60
	ld   [hl], l                                     ; $4283: $75
	ld   h, a                                        ; $4284: $67
	sbc  a                                           ; $4285: $9f
	dec  c                                           ; $4286: $0d
	nop                                              ; $4287: $00
	ld   a, [bc]                                     ; $4288: $0a
	inc  e                                           ; $4289: $1c
	ld   [bc], a                                     ; $428a: $02
	jr   nc, @+$1b                                   ; $428b: $30 $19

	ld   bc, $fc58                                   ; $428d: $01 $58 $fc
	ld   [hl], c                                     ; $4290: $71
	adc  c                                           ; $4291: $89
	ld   [hl], c                                     ; $4292: $71
	adc  c                                           ; $4293: $89
	ld   [hl], c                                     ; $4294: $71
	adc  c                                           ; $4295: $89
	sbc  a                                           ; $4296: $9f
	dec  c                                           ; $4297: $0d
	inc  b                                           ; $4298: $04
	jr   jr_05d_429e                                 ; $4299: $18 $03

	sbc  c                                           ; $429b: $99
	ld   [hl], l                                     ; $429c: $75
	ld   h, a                                        ; $429d: $67

jr_05d_429e:
	sbc  l                                           ; $429e: $9d
	sbc  a                                           ; $429f: $9f
	dec  c                                           ; $42a0: $0d
	nop                                              ; $42a1: $00
	ld   a, [bc]                                     ; $42a2: $0a
	inc  e                                           ; $42a3: $1c
	ld   [bc], a                                     ; $42a4: $02
	ld   bc, $1d01                                   ; $42a5: $01 $01 $1d
	ld   b, b                                        ; $42a8: $40
	ld   [de], a                                     ; $42a9: $12
	inc  bc                                          ; $42aa: $03
	ld   [de], a                                     ; $42ab: $12
	ld   bc, $2803                                   ; $42ac: $01 $03 $28
	nop                                              ; $42af: $00
	ld   bc, $7d76                                   ; $42b0: $01 $76 $7d
	ld   d, d                                        ; $42b3: $52
	ld   d, [hl]                                     ; $42b4: $56
	rst  $38                                         ; $42b5: $ff
	ld   d, b                                        ; $42b6: $50
	ld   a, b                                        ; $42b7: $78
	ld   l, l                                        ; $42b8: $6d
	ld   a, h                                        ; $42b9: $7c
	ld   e, d                                        ; $42ba: $5a
	and  c                                           ; $42bb: $a1
	ld   a, [hl]                                     ; $42bc: $7e
	sbc  b                                           ; $42bd: $98
	ld   e, d                                        ; $42be: $5a
	dec  c                                           ; $42bf: $0d
	ld   d, b                                        ; $42c0: $50
	ld   [hl], c                                     ; $42c1: $71
	ld   l, l                                        ; $42c2: $6d
	ld   e, c                                        ; $42c3: $59
	sub  a                                           ; $42c4: $97
	ld   h, c                                        ; $42c5: $61
	ld   l, e                                        ; $42c6: $6b
	ld   [hl], l                                     ; $42c7: $75
	ld   h, a                                        ; $42c8: $67
	sbc  l                                           ; $42c9: $9d
	sbc  a                                           ; $42ca: $9f
	dec  c                                           ; $42cb: $0d
	nop                                              ; $42cc: $00
	ld   a, [bc]                                     ; $42cd: $0a
	ld   bc, $9a61                                   ; $42ce: $01 $61 $9a
	ld   e, c                                        ; $42d1: $59
	sub  a                                           ; $42d2: $97
	sub  b                                           ; $42d3: $90
	sbc  [hl]                                        ; $42d4: $9e
	ld   h, c                                        ; $42d5: $61
	ld   a, h                                        ; $42d6: $7c
	inc  bc                                          ; $42d7: $03
	cp   $03                                         ; $42d8: $fe $03
	add  [hl]                                        ; $42da: $86
	ld   [hl], l                                     ; $42db: $75
	dec  c                                           ; $42dc: $0d
	ld   e, d                                        ; $42dd: $5a
	and  c                                           ; $42de: $a1
	ld   a, [hl]                                     ; $42df: $7e
	ld   [hl], c                                     ; $42e0: $71
	ld   [hl], h                                     ; $42e1: $74
	ld   e, l                                        ; $42e2: $5d
	ld   l, [hl]                                     ; $42e3: $6e
	ld   h, e                                        ; $42e4: $63
	ld   d, d                                        ; $42e5: $52
	ld   a, b                                        ; $42e6: $78
	sbc  a                                           ; $42e7: $9f
	dec  c                                           ; $42e8: $0d
	nop                                              ; $42e9: $00
	ld   a, [bc]                                     ; $42ea: $0a
	ld   bc, $7190                                   ; $42eb: $01 $90 $71
	halt                                             ; $42ee: $76
	sub  b                                           ; $42ef: $90
	rst  $38                                         ; $42f0: $ff
	rst  $38                                         ; $42f1: $ff
	sbc  l                                           ; $42f2: $9d
	ld   l, l                                        ; $42f3: $6d
	ld   e, l                                        ; $42f4: $5d
	ld   h, l                                        ; $42f5: $65
	ld   a, h                                        ; $42f6: $7c
	inc  bc                                          ; $42f7: $03
	ld   l, l                                        ; $42f8: $6d
	dec  b                                           ; $42f9: $05
	add  hl, de                                      ; $42fa: $19
	and  b                                           ; $42fb: $a0
	dec  c                                           ; $42fc: $0d
	ld   d, h                                        ; $42fd: $54
	ld   e, a                                        ; $42fe: $5f
	ld   [hl], h                                     ; $42ff: $74
	sbc  [hl]                                        ; $4300: $9e
	sbc  l                                           ; $4301: $9d
	sbc  c                                           ; $4302: $99
	ld   d, d                                        ; $4303: $52
	ld   [bc], a                                     ; $4304: $02
	reti                                             ; $4305: $d9


	ld   [bc], a                                     ; $4306: $02
	ld   h, e                                        ; $4307: $63
	ld   a, c                                        ; $4308: $79
	ld   a, b                                        ; $4309: $78
	sbc  c                                           ; $430a: $99
	dec  c                                           ; $430b: $0d
	sbc  l                                           ; $430c: $9d
	ld   e, a                                        ; $430d: $5f
	ld   a, l                                        ; $430e: $7d
	ld   h, d                                        ; $430f: $62
	ld   h, h                                        ; $4310: $64
	ld   d, d                                        ; $4311: $52
	adc  h                                           ; $4312: $8c
	ld   l, c                                        ; $4313: $69
	and  c                                           ; $4314: $a1
	ld   e, a                                        ; $4315: $5f
	sbc  d                                           ; $4316: $9a
	ld   [hl], a                                     ; $4317: $77
	rst  $38                                         ; $4318: $ff
	rst  $38                                         ; $4319: $ff
	dec  c                                           ; $431a: $0d
	nop                                              ; $431b: $00
	ld   a, [bc]                                     ; $431c: $0a
	ld   bc, $9a6b                                   ; $431d: $01 $6b $9a
	ld   [hl], l                                     ; $4320: $75
	ld   a, l                                        ; $4321: $7d
	sbc  [hl]                                        ; $4322: $9e
	inc  bc                                          ; $4323: $03
	add  e                                           ; $4324: $83
	dec  b                                           ; $4325: $05
	dec  c                                           ; $4326: $0d
	sbc  a                                           ; $4327: $9f
	dec  c                                           ; $4328: $0d
	nop                                              ; $4329: $00
	ld   a, [bc]                                     ; $432a: $0a
	dec  c                                           ; $432b: $0d
	nop                                              ; $432c: $00
	nop                                              ; $432d: $00
	rrca                                             ; $432e: $0f
	nop                                              ; $432f: $00
	ld   bc, $1e09                                   ; $4330: $01 $09 $1e
	nop                                              ; $4333: $00
	inc  c                                           ; $4334: $0c
	ld   [bc], a                                     ; $4335: $02
	ld   c, $33                                      ; $4336: $0e $33
	rrca                                             ; $4338: $0f
	nop                                              ; $4339: $00
	ld   bc, $ff01                                   ; $433a: $01 $01 $ff
	rst  $38                                         ; $433d: $ff
	add  e                                           ; $433e: $83
	ld   d, h                                        ; $433f: $54
	rst  $38                                         ; $4340: $ff
	rst  $38                                         ; $4341: $ff
	dec  c                                           ; $4342: $0d
	ld   [bc], a                                     ; $4343: $02
	and  l                                           ; $4344: $a5
	inc  b                                           ; $4345: $04
	xor  d                                           ; $4346: $aa
	ld   a, h                                        ; $4347: $7c
	rst  ToBoot                                         ; $4348: $c7
	cp   d                                           ; $4349: $ba
	ret                                              ; $434a: $c9


	ld   a, l                                        ; $434b: $7d
	dec  c                                           ; $434c: $0d
	ld   e, e                                        ; $434d: $5b
	and  c                                           ; $434e: $a1
	ld   l, a                                        ; $434f: $6f
	sub  l                                           ; $4350: $95
	ld   d, h                                        ; $4351: $54
	ld   h, l                                        ; $4352: $65
	ld   l, l                                        ; $4353: $6d
	ld   a, b                                        ; $4354: $78
	ld   d, b                                        ; $4355: $50
	rst  $38                                         ; $4356: $ff
	rst  $38                                         ; $4357: $ff
	dec  c                                           ; $4358: $0d
	nop                                              ; $4359: $00
	ld   a, [bc]                                     ; $435a: $0a
	inc  e                                           ; $435b: $1c
	inc  bc                                          ; $435c: $03
	nop                                              ; $435d: $00
	nop                                              ; $435e: $00
	ld   bc, $0458                                   ; $435f: $01 $58 $04
	ld   a, e                                        ; $4362: $7b
	sbc  d                                           ; $4363: $9a
	ld   h, e                                        ; $4364: $63
	adc  h                                           ; $4365: $8c
	sbc  a                                           ; $4366: $9f
	dec  c                                           ; $4367: $0d
	ld   [$5d00], sp                                 ; $4368: $08 $00 $5d
	and  c                                           ; $436b: $a1
	sbc  a                                           ; $436c: $9f
	dec  c                                           ; $436d: $0d
	nop                                              ; $436e: $00
	ld   a, [bc]                                     ; $436f: $0a
	rrca                                             ; $4370: $0f
	nop                                              ; $4371: $00
	ld   bc, $5001                                   ; $4372: $01 $01 $50
	ld   [hl], c                                     ; $4375: $71
	sbc  [hl]                                        ; $4376: $9e
	rst  JumpTable                                         ; $4377: $df
	db   $ec                                         ; $4378: $ec
	and  e                                           ; $4379: $a3
	ld   h, e                                        ; $437a: $63
	and  c                                           ; $437b: $a1
	rst  $38                                         ; $437c: $ff
	rst  $38                                         ; $437d: $ff
	dec  c                                           ; $437e: $0d
	nop                                              ; $437f: $00
	ld   a, [bc]                                     ; $4380: $0a
	inc  e                                           ; $4381: $1c
	inc  bc                                          ; $4382: $03
	inc  bc                                          ; $4383: $03
	inc  bc                                          ; $4384: $03
	ld   bc, $bac7                                   ; $4385: $01 $c7 $ba
	ret                                              ; $4388: $c9


	sbc  [hl]                                        ; $4389: $9e
	ld   d, d                                        ; $438a: $52
	ld   d, d                                        ; $438b: $52
	ld   [bc], a                                     ; $438c: $02
	reti                                             ; $438d: $d9


	ld   [bc], a                                     ; $438e: $02
	ld   h, e                                        ; $438f: $63
	ld   l, [hl]                                     ; $4390: $6e
	ld   [hl], c                                     ; $4391: $71
	ld   l, l                                        ; $4392: $6d
	dec  c                                           ; $4393: $0d
	adc  l                                           ; $4394: $8d
	ld   l, l                                        ; $4395: $6d
	ld   d, d                                        ; $4396: $52
	ld   a, e                                        ; $4397: $7b
	sbc  a                                           ; $4398: $9f
	dec  c                                           ; $4399: $0d
	nop                                              ; $439a: $00
	ld   a, [bc]                                     ; $439b: $0a
	ld   bc, $5965                                   ; $439c: $01 $65 $59
	sub  b                                           ; $439f: $90
	sbc  [hl]                                        ; $43a0: $9e
	sbc  l                                           ; $43a1: $9d
	ld   l, l                                        ; $43a2: $6d
	ld   h, l                                        ; $43a3: $65
	ld   a, h                                        ; $43a4: $7c
	ld   [bc], a                                     ; $43a5: $02
	jr   c, jr_05d_43ac                              ; $43a6: $38 $04

	ld   d, d                                        ; $43a8: $52
	ld   [hl], l                                     ; $43a9: $75
	dec  c                                           ; $43aa: $0d
	rst  ToBoot                                         ; $43ab: $c7

jr_05d_43ac:
	cp   d                                           ; $43ac: $ba
	ret                                              ; $43ad: $c9


	ld   h, l                                        ; $43ae: $65
	ld   l, l                                        ; $43af: $6d
	and  c                                           ; $43b0: $a1
	ld   [hl], l                                     ; $43b1: $75
	ld   h, a                                        ; $43b2: $67
	ld   [hl], c                                     ; $43b3: $71
	ld   [hl], h                                     ; $43b4: $74
	ld   sp, hl                                      ; $43b5: $f9
	dec  c                                           ; $43b6: $0d
	inc  b                                           ; $43b7: $04
	ld   a, [bc]                                     ; $43b8: $0a
	inc  bc                                          ; $43b9: $03
	jp   nc, $0279                                   ; $43ba: $d2 $79 $02

	jp   nz, $8c5b                                   ; $43bd: $c2 $5b $8c

	ld   h, l                                        ; $43c0: $65
	ld   l, l                                        ; $43c1: $6d
	sub  [hl]                                        ; $43c2: $96
	sbc  a                                           ; $43c3: $9f
	dec  c                                           ; $43c4: $0d
	nop                                              ; $43c5: $00
	ld   a, [bc]                                     ; $43c6: $0a
	rrca                                             ; $43c7: $0f
	nop                                              ; $43c8: $00
	ld   bc, $7d01                                   ; $43c9: $01 $01 $7d
	ld   d, d                                        ; $43cc: $52
	sbc  [hl]                                        ; $43cd: $9e
	ld   d, b                                        ; $43ce: $50
	sbc  b                                           ; $43cf: $98
	ld   e, d                                        ; $43d0: $5a
	halt                                             ; $43d1: $76
	ld   d, h                                        ; $43d2: $54
	ld   h, d                                        ; $43d3: $62
	ld   h, h                                        ; $43d4: $64
	ld   d, d                                        ; $43d5: $52
	adc  h                                           ; $43d6: $8c
	ld   h, a                                        ; $43d7: $67
	ld   a, [$df0d]                                  ; $43d8: $fa $0d $df
	db   $ec                                         ; $43db: $ec
	and  e                                           ; $43dc: $a3
	ld   h, e                                        ; $43dd: $63
	and  c                                           ; $43de: $a1
	ld   a, h                                        ; $43df: $7c
	inc  bc                                          ; $43e0: $03
	ld   l, l                                        ; $43e1: $6d
	dec  b                                           ; $43e2: $05
	add  hl, de                                      ; $43e3: $19
	ld   a, h                                        ; $43e4: $7c
	dec  c                                           ; $43e5: $0d
	ld   e, b                                        ; $43e6: $58
	ld   e, c                                        ; $43e7: $59
	ld   h, b                                        ; $43e8: $60
	ld   [hl], l                                     ; $43e9: $75
	ld   h, a                                        ; $43ea: $67
	sbc  a                                           ; $43eb: $9f
	dec  c                                           ; $43ec: $0d
	nop                                              ; $43ed: $00
	ld   a, [bc]                                     ; $43ee: $0a
	rrca                                             ; $43ef: $0f
	inc  bc                                          ; $43f0: $03
	inc  bc                                          ; $43f1: $03
	dec  e                                           ; $43f2: $1d
	ld   b, b                                        ; $43f3: $40
	inc  de                                          ; $43f4: $13
	inc  bc                                          ; $43f5: $03
	inc  de                                          ; $43f6: $13
	ld   bc, $2803                                   ; $43f7: $01 $03 $28
	nop                                              ; $43fa: $00
	ld   bc, $d6d6                                   ; $43fb: $01 $d6 $d6
	rst  $38                                         ; $43fe: $ff
	rst  $38                                         ; $43ff: $ff
	ld   [hl], l                                     ; $4400: $75
	sub  b                                           ; $4401: $90
	sbc  [hl]                                        ; $4402: $9e
	ld   [bc], a                                     ; $4403: $02
	reti                                             ; $4404: $d9


	ld   [bc], a                                     ; $4405: $02
	ld   h, e                                        ; $4406: $63
	and  b                                           ; $4407: $a0
	inc  bc                                          ; $4408: $03
	add  b                                           ; $4409: $80
	ld   l, c                                        ; $440a: $69
	ld   l, l                                        ; $440b: $6d
	dec  c                                           ; $440c: $0d
	ld   a, h                                        ; $440d: $7c
	ld   a, l                                        ; $440e: $7d
	sbc  [hl]                                        ; $440f: $9e
	ld   [$5d00], sp                                 ; $4410: $08 $00 $5d
	and  c                                           ; $4413: $a1
	ld   e, d                                        ; $4414: $5a
	dec  c                                           ; $4415: $0d
	ld   e, d                                        ; $4416: $5a
	and  c                                           ; $4417: $a1
	ld   a, [hl]                                     ; $4418: $7e
	ld   [hl], c                                     ; $4419: $71
	ld   l, l                                        ; $441a: $6d
	ld   e, c                                        ; $441b: $59
	sub  a                                           ; $441c: $97
	sub  [hl]                                        ; $441d: $96
	sbc  a                                           ; $441e: $9f
	dec  c                                           ; $441f: $0d
	nop                                              ; $4420: $00
	ld   a, [bc]                                     ; $4421: $0a
	ld   bc, $9403                                   ; $4422: $01 $03 $94
	ld   [bc], a                                     ; $4425: $02
	ld   hl, sp-$60                                  ; $4426: $f8 $a0
	sub  b                                           ; $4428: $90
	ld   l, a                                        ; $4429: $6f
	ld   a, b                                        ; $442a: $78
	ld   h, e                                        ; $442b: $63
	ld   d, d                                        ; $442c: $52
	sbc  a                                           ; $442d: $9f
	dec  c                                           ; $442e: $0d
	ld   l, e                                        ; $442f: $6b
	sbc  d                                           ; $4430: $9a
	ld   h, [hl]                                     ; $4431: $66
	sub  c                                           ; $4432: $91
	sbc  a                                           ; $4433: $9f
	dec  c                                           ; $4434: $0d
	nop                                              ; $4435: $00
	ld   a, [bc]                                     ; $4436: $0a
	dec  c                                           ; $4437: $0d
	nop                                              ; $4438: $00
	nop                                              ; $4439: $00
	rrca                                             ; $443a: $0f
	nop                                              ; $443b: $00
	ld   bc, $1e09                                   ; $443c: $01 $09 $1e
	nop                                              ; $443f: $00
	inc  c                                           ; $4440: $0c
	ld   [bc], a                                     ; $4441: $02
	ld   c, $31                                      ; $4442: $0e $31
	rrca                                             ; $4444: $0f
	nop                                              ; $4445: $00
	ld   bc, $ff01                                   ; $4446: $01 $01 $ff
	rst  $38                                         ; $4449: $ff
	add  e                                           ; $444a: $83
	ld   d, h                                        ; $444b: $54
	rst  $38                                         ; $444c: $ff
	rst  $38                                         ; $444d: $ff
	dec  c                                           ; $444e: $0d
	ld   [bc], a                                     ; $444f: $02
	and  l                                           ; $4450: $a5
	inc  b                                           ; $4451: $04
	xor  d                                           ; $4452: $aa
	ld   a, h                                        ; $4453: $7c
	rst  ToBoot                                         ; $4454: $c7
	cp   d                                           ; $4455: $ba
	ret                                              ; $4456: $c9


	ld   a, l                                        ; $4457: $7d
	dec  c                                           ; $4458: $0d
	ld   e, e                                        ; $4459: $5b
	and  c                                           ; $445a: $a1
	ld   l, a                                        ; $445b: $6f
	sub  l                                           ; $445c: $95
	ld   d, h                                        ; $445d: $54
	ld   h, l                                        ; $445e: $65
	ld   l, l                                        ; $445f: $6d
	ld   a, b                                        ; $4460: $78
	ld   d, b                                        ; $4461: $50
	rst  $38                                         ; $4462: $ff
	rst  $38                                         ; $4463: $ff
	dec  c                                           ; $4464: $0d
	nop                                              ; $4465: $00
	ld   a, [bc]                                     ; $4466: $0a
	inc  e                                           ; $4467: $1c
	inc  b                                           ; $4468: $04
	nop                                              ; $4469: $00
	nop                                              ; $446a: $00
	ld   bc, $7258                                   ; $446b: $01 $58 $72
	ld   e, c                                        ; $446e: $59
	sbc  d                                           ; $446f: $9a
	ld   h, e                                        ; $4470: $63
	adc  h                                           ; $4471: $8c
	ld   [hl], c                                     ; $4472: $71
	ld   a, [$0dfa]                                  ; $4473: $fa $fa $0d
	ld   l, a                                        ; $4476: $6f
	ld   d, d                                        ; $4477: $52
	ld   [bc], a                                     ; $4478: $02
	inc  de                                          ; $4479: $13
	ld   l, a                                        ; $447a: $6f
	sub  c                                           ; $447b: $91
	and  c                                           ; $447c: $a1
	ld   a, [$0dfa]                                  ; $447d: $fa $fa $0d
	nop                                              ; $4480: $00
	ld   a, [bc]                                     ; $4481: $0a
	rrca                                             ; $4482: $0f
	nop                                              ; $4483: $00
	ld   bc, $5001                                   ; $4484: $01 $01 $50
	ld   [hl], c                                     ; $4487: $71
	sbc  [hl]                                        ; $4488: $9e
	and  e                                           ; $4489: $a3
	and  l                                           ; $448a: $a5
	db   $ec                                         ; $448b: $ec
	cp   d                                           ; $448c: $ba
	rst  $38                                         ; $448d: $ff
	dec  c                                           ; $448e: $0d
	nop                                              ; $448f: $00
	ld   a, [bc]                                     ; $4490: $0a
	inc  e                                           ; $4491: $1c
	inc  b                                           ; $4492: $04
	ld   bc, $0101                                   ; $4493: $01 $01 $01
	rst  ToBoot                                         ; $4496: $c7
	cp   d                                           ; $4497: $ba
	ret                                              ; $4498: $c9


	sbc  [hl]                                        ; $4499: $9e
	ld   d, d                                        ; $449a: $52
	ld   d, d                                        ; $449b: $52
	ld   e, a                                        ; $449c: $5f
	ld   [hl], c                                     ; $449d: $71
	ld   e, c                                        ; $449e: $59
	ld   l, [hl]                                     ; $449f: $6e
	ld   [hl], c                                     ; $44a0: $71
	ld   l, l                                        ; $44a1: $6d
	dec  c                                           ; $44a2: $0d
	adc  l                                           ; $44a3: $8d
	ld   l, l                                        ; $44a4: $6d
	ld   d, d                                        ; $44a5: $52
	ld   l, [hl]                                     ; $44a6: $6e
	ld   a, e                                        ; $44a7: $7b
	ei                                               ; $44a8: $fb
	sbc  a                                           ; $44a9: $9f
	dec  c                                           ; $44aa: $0d
	nop                                              ; $44ab: $00
	ld   a, [bc]                                     ; $44ac: $0a
	ld   bc, $a15a                                   ; $44ad: $01 $5a $a1
	ld   a, [hl]                                     ; $44b0: $7e
	ld   [hl], c                                     ; $44b1: $71
	ld   l, l                                        ; $44b2: $6d
	and  c                                           ; $44b3: $a1
	ld   l, [hl]                                     ; $44b4: $6e
	ld   a, e                                        ; $44b5: $7b
	ld   a, [$0dfa]                                  ; $44b6: $fa $fa $0d
	ld   l, a                                        ; $44b9: $6f
	ld   d, d                                        ; $44ba: $52
	ld   [bc], a                                     ; $44bb: $02
	inc  de                                          ; $44bc: $13
	ld   l, a                                        ; $44bd: $6f
	sub  c                                           ; $44be: $91
	and  c                                           ; $44bf: $a1
	ld   a, [$0dfa]                                  ; $44c0: $fa $fa $0d
	nop                                              ; $44c3: $00
	ld   a, [bc]                                     ; $44c4: $0a
	rrca                                             ; $44c5: $0f
	nop                                              ; $44c6: $00
	ld   bc, $5001                                   ; $44c7: $01 $01 $50
	sbc  b                                           ; $44ca: $98
	ld   e, d                                        ; $44cb: $5a
	halt                                             ; $44cc: $76
	ld   d, h                                        ; $44cd: $54
	sbc  [hl]                                        ; $44ce: $9e
	and  e                                           ; $44cf: $a3
	and  l                                           ; $44d0: $a5
	db   $ec                                         ; $44d1: $ec
	cp   d                                           ; $44d2: $ba
	sbc  a                                           ; $44d3: $9f
	dec  c                                           ; $44d4: $0d
	ld   h, c                                        ; $44d5: $61
	sbc  d                                           ; $44d6: $9a
	sub  b                                           ; $44d7: $90
	sbc  [hl]                                        ; $44d8: $9e
	and  e                                           ; $44d9: $a3
	and  l                                           ; $44da: $a5
	db   $ec                                         ; $44db: $ec
	cp   d                                           ; $44dc: $ba
	ld   a, h                                        ; $44dd: $7c
	inc  bc                                          ; $44de: $03
	ld   l, l                                        ; $44df: $6d
	dec  b                                           ; $44e0: $05
	add  hl, de                                      ; $44e1: $19
	ld   a, h                                        ; $44e2: $7c
	dec  c                                           ; $44e3: $0d
	ld   e, b                                        ; $44e4: $58
	ld   e, c                                        ; $44e5: $59
	ld   h, b                                        ; $44e6: $60
	ld   l, [hl]                                     ; $44e7: $6e
	sub  [hl]                                        ; $44e8: $96
	sbc  a                                           ; $44e9: $9f
	dec  c                                           ; $44ea: $0d
	nop                                              ; $44eb: $00
	ld   a, [bc]                                     ; $44ec: $0a
	inc  e                                           ; $44ed: $1c
	inc  b                                           ; $44ee: $04
	dec  b                                           ; $44ef: $05
	dec  b                                           ; $44f0: $05
	dec  e                                           ; $44f1: $1d
	ld   b, b                                        ; $44f2: $40
	inc  d                                           ; $44f3: $14
	inc  bc                                          ; $44f4: $03
	inc  d                                           ; $44f5: $14
	ld   bc, $2803                                   ; $44f6: $01 $03 $28
	nop                                              ; $44f9: $00
	ld   bc, $d9a9                                   ; $44fa: $01 $a9 $d9
	reti                                             ; $44fd: $d9


	rst  $38                                         ; $44fe: $ff
	rst  $38                                         ; $44ff: $ff
	dec  c                                           ; $4500: $0d
	ld   l, a                                        ; $4501: $6f
	ld   d, d                                        ; $4502: $52
	ld   [bc], a                                     ; $4503: $02
	inc  de                                          ; $4504: $13
	ld   l, a                                        ; $4505: $6f
	sub  c                                           ; $4506: $91
	and  c                                           ; $4507: $a1
	ld   e, d                                        ; $4508: $5a
	sbc  [hl]                                        ; $4509: $9e
	ld   e, d                                        ; $450a: $5a
	and  c                                           ; $450b: $a1
	ld   a, [hl]                                     ; $450c: $7e
	ld   [hl], c                                     ; $450d: $71
	ld   l, l                                        ; $450e: $6d
	dec  c                                           ; $450f: $0d
	ld   e, c                                        ; $4510: $59
	sub  a                                           ; $4511: $97
	ld   l, [hl]                                     ; $4512: $6e
	sub  [hl]                                        ; $4513: $96
	ld   d, a                                        ; $4514: $57
	db   $fc                                         ; $4515: $fc
	sbc  a                                           ; $4516: $9f
	dec  c                                           ; $4517: $0d
	nop                                              ; $4518: $00
	ld   a, [bc]                                     ; $4519: $0a
	ld   bc, $9a6b                                   ; $451a: $01 $6b $9a
	ld   h, [hl]                                     ; $451d: $66
	sub  c                                           ; $451e: $91
	rst  $38                                         ; $451f: $ff
	rst  $38                                         ; $4520: $ff
	dec  c                                           ; $4521: $0d
	ld   h, c                                        ; $4522: $61
	sbc  d                                           ; $4523: $9a
	ld   e, c                                        ; $4524: $59
	sub  a                                           ; $4525: $97
	sub  b                                           ; $4526: $90
	sbc  [hl]                                        ; $4527: $9e
	ld   e, d                                        ; $4528: $5a
	and  c                                           ; $4529: $a1
	ld   a, [hl]                                     ; $452a: $7e
	ld   [hl], c                                     ; $452b: $71
	ld   [hl], h                                     ; $452c: $74
	ld   a, e                                        ; $452d: $7b
	ld   a, [$6f0d]                                  ; $452e: $fa $0d $6f
	ld   d, d                                        ; $4531: $52
	ld   [bc], a                                     ; $4532: $02
	inc  de                                          ; $4533: $13
	ld   l, a                                        ; $4534: $6f
	sub  c                                           ; $4535: $91
	and  c                                           ; $4536: $a1
	ld   a, [$0dfa]                                  ; $4537: $fa $fa $0d
	nop                                              ; $453a: $00
	ld   a, [bc]                                     ; $453b: $0a
	dec  c                                           ; $453c: $0d
	nop                                              ; $453d: $00
	nop                                              ; $453e: $00
	rrca                                             ; $453f: $0f
	nop                                              ; $4540: $00
	ld   bc, $1e09                                   ; $4541: $01 $09 $1e
	nop                                              ; $4544: $00
	inc  c                                           ; $4545: $0c
	ld   [bc], a                                     ; $4546: $02
	ld   c, $3f                                      ; $4547: $0e $3f
	rrca                                             ; $4549: $0f
	nop                                              ; $454a: $00
	ld   bc, $ff01                                   ; $454b: $01 $01 $ff
	rst  $38                                         ; $454e: $ff
	add  e                                           ; $454f: $83
	ld   d, h                                        ; $4550: $54
	rst  $38                                         ; $4551: $ff
	rst  $38                                         ; $4552: $ff
	dec  c                                           ; $4553: $0d
	ld   [bc], a                                     ; $4554: $02
	and  l                                           ; $4555: $a5
	inc  b                                           ; $4556: $04
	xor  d                                           ; $4557: $aa
	ld   a, h                                        ; $4558: $7c
	rst  ToBoot                                         ; $4559: $c7
	cp   d                                           ; $455a: $ba
	ret                                              ; $455b: $c9


	ld   a, l                                        ; $455c: $7d
	dec  c                                           ; $455d: $0d
	ld   e, e                                        ; $455e: $5b
	and  c                                           ; $455f: $a1
	ld   l, a                                        ; $4560: $6f
	sub  l                                           ; $4561: $95
	ld   d, h                                        ; $4562: $54
	ld   h, l                                        ; $4563: $65
	ld   l, l                                        ; $4564: $6d
	ld   a, b                                        ; $4565: $78
	ld   d, b                                        ; $4566: $50
	rst  $38                                         ; $4567: $ff
	rst  $38                                         ; $4568: $ff
	dec  c                                           ; $4569: $0d
	nop                                              ; $456a: $00
	ld   a, [bc]                                     ; $456b: $0a
	inc  e                                           ; $456c: $1c
	dec  b                                           ; $456d: $05
	nop                                              ; $456e: $00
	nop                                              ; $456f: $00
	ld   bc, $0458                                   ; $4570: $01 $58 $04
	ld   a, e                                        ; $4573: $7b
	sbc  d                                           ; $4574: $9a
	ld   h, e                                        ; $4575: $63
	and  c                                           ; $4576: $a1
	ld   [hl], l                                     ; $4577: $75
	ld   h, l                                        ; $4578: $65
	ld   l, l                                        ; $4579: $6d
	sbc  a                                           ; $457a: $9f
	dec  c                                           ; $457b: $0d
	ld   [$7d00], sp                                 ; $457c: $08 $00 $7d
	and  c                                           ; $457f: $a1
	sbc  a                                           ; $4580: $9f
	dec  c                                           ; $4581: $0d
	nop                                              ; $4582: $00
	ld   a, [bc]                                     ; $4583: $0a
	rrca                                             ; $4584: $0f
	nop                                              ; $4585: $00
	ld   bc, $5001                                   ; $4586: $01 $01 $50
	ld   [hl], c                                     ; $4589: $71
	sbc  [hl]                                        ; $458a: $9e
	ld   [bc], a                                     ; $458b: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $458c: $cf
	dec  b                                           ; $458d: $05
	ld   a, [de]                                     ; $458e: $1a
	ld   h, e                                        ; $458f: $63
	and  c                                           ; $4590: $a1
	rst  $38                                         ; $4591: $ff
	rst  $38                                         ; $4592: $ff
	dec  c                                           ; $4593: $0d
	nop                                              ; $4594: $00
	ld   a, [bc]                                     ; $4595: $0a
	inc  e                                           ; $4596: $1c
	dec  b                                           ; $4597: $05
	ld   bc, $0101                                   ; $4598: $01 $01 $01
	rst  ToBoot                                         ; $459b: $c7
	cp   d                                           ; $459c: $ba
	ret                                              ; $459d: $c9


	sbc  [hl]                                        ; $459e: $9e
	ld   d, [hl]                                     ; $459f: $56
	ld   d, [hl]                                     ; $45a0: $56
	ld   [bc], a                                     ; $45a1: $02
	reti                                             ; $45a2: $d9


	ld   [bc], a                                     ; $45a3: $02
	ld   h, e                                        ; $45a4: $63
	sub  d                                           ; $45a5: $92
	ld   [hl], c                                     ; $45a6: $71
	ld   l, l                                        ; $45a7: $6d
	dec  c                                           ; $45a8: $0d
	adc  l                                           ; $45a9: $8d
	ld   l, l                                        ; $45aa: $6d
	ld   d, d                                        ; $45ab: $52
	sub  d                                           ; $45ac: $92
	ld   a, b                                        ; $45ad: $78
	ei                                               ; $45ae: $fb
	sbc  a                                           ; $45af: $9f
	dec  c                                           ; $45b0: $0d
	nop                                              ; $45b1: $00
	ld   a, [bc]                                     ; $45b2: $0a
	ld   bc, $5965                                   ; $45b3: $01 $65 $59
	sub  b                                           ; $45b6: $90
	sbc  [hl]                                        ; $45b7: $9e
	and  a                                           ; $45b8: $a7
	jp   nz, EnqueueHDMATransfer                                   ; $45b9: $c2 $7c $02

	jr   c, jr_05d_45c2                              ; $45bc: $38 $04

	ld   d, d                                        ; $45be: $52
	ld   [hl], l                                     ; $45bf: $75
	dec  c                                           ; $45c0: $0d
	rst  ToBoot                                         ; $45c1: $c7

jr_05d_45c2:
	cp   d                                           ; $45c2: $ba
	ret                                              ; $45c3: $c9


	ld   h, l                                        ; $45c4: $65
	ld   l, l                                        ; $45c5: $6d
	and  c                                           ; $45c6: $a1
	sub  d                                           ; $45c7: $92
	ld   [hl], h                                     ; $45c8: $74
	ld   sp, hl                                      ; $45c9: $f9
	dec  c                                           ; $45ca: $0d
	inc  b                                           ; $45cb: $04
	ld   c, $03                                      ; $45cc: $0e $03
	sub  b                                           ; $45ce: $90
	ld   a, l                                        ; $45cf: $7d
	and  c                                           ; $45d0: $a1
	ld   a, c                                        ; $45d1: $79
	ld   [bc], a                                     ; $45d2: $02
	jp   nz, Jump_05d_6d52                           ; $45d3: $c2 $52 $6d

	ld   [hl], l                                     ; $45d6: $75
	db   $fc                                         ; $45d7: $fc
	sbc  a                                           ; $45d8: $9f
	dec  c                                           ; $45d9: $0d
	nop                                              ; $45da: $00
	ld   a, [bc]                                     ; $45db: $0a
	rrca                                             ; $45dc: $0f
	nop                                              ; $45dd: $00
	ld   bc, $7d01                                   ; $45de: $01 $01 $7d
	ld   d, d                                        ; $45e1: $52
	sbc  [hl]                                        ; $45e2: $9e
	ld   d, b                                        ; $45e3: $50
	sbc  b                                           ; $45e4: $98
	ld   e, d                                        ; $45e5: $5a
	halt                                             ; $45e6: $76
	ld   d, h                                        ; $45e7: $54
	ld   h, d                                        ; $45e8: $62
	ld   h, h                                        ; $45e9: $64
	ld   d, d                                        ; $45ea: $52
	adc  h                                           ; $45eb: $8c
	ld   h, a                                        ; $45ec: $67
	ld   a, [$610d]                                  ; $45ed: $fa $0d $61
	sbc  d                                           ; $45f0: $9a
	sub  b                                           ; $45f1: $90
	sbc  [hl]                                        ; $45f2: $9e
	ld   [bc], a                                     ; $45f3: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45f4: $cf
	dec  b                                           ; $45f5: $05
	ld   a, [de]                                     ; $45f6: $1a
	ld   h, e                                        ; $45f7: $63
	and  c                                           ; $45f8: $a1
	ld   a, h                                        ; $45f9: $7c
	inc  bc                                          ; $45fa: $03
	ld   l, l                                        ; $45fb: $6d
	dec  b                                           ; $45fc: $05
	add  hl, de                                      ; $45fd: $19
	ld   a, h                                        ; $45fe: $7c
	dec  c                                           ; $45ff: $0d
	ld   e, b                                        ; $4600: $58
	ld   e, c                                        ; $4601: $59
	ld   h, b                                        ; $4602: $60
	ld   [hl], l                                     ; $4603: $75
	ld   h, a                                        ; $4604: $67
	sub  [hl]                                        ; $4605: $96
	sbc  a                                           ; $4606: $9f
	dec  c                                           ; $4607: $0d
	nop                                              ; $4608: $00
	ld   a, [bc]                                     ; $4609: $0a
	rrca                                             ; $460a: $0f
	dec  b                                           ; $460b: $05
	ld   bc, $8c01                                   ; $460c: $01 $01 $8c
	ld   l, l                                        ; $460f: $6d
	adc  h                                           ; $4610: $8c
	ld   l, l                                        ; $4611: $6d
	db   $fc                                         ; $4612: $fc
	sbc  a                                           ; $4613: $9f
	dec  c                                           ; $4614: $0d
	ld   d, b                                        ; $4615: $50
	and  c                                           ; $4616: $a1
	adc  h                                           ; $4617: $8c
	inc  bc                                          ; $4618: $03
	and  b                                           ; $4619: $a0
	ld   l, a                                        ; $461a: $6f
	inc  bc                                          ; $461b: $03
	ld   h, l                                        ; $461c: $65
	ld   h, b                                        ; $461d: $60
	and  c                                           ; $461e: $a1
	halt                                             ; $461f: $76
	ld   d, d                                        ; $4620: $52
	ld   [hl], h                                     ; $4621: $74
	sub  d                                           ; $4622: $92
	sbc  a                                           ; $4623: $9f
	dec  c                                           ; $4624: $0d
	nop                                              ; $4625: $00
	ld   a, [bc]                                     ; $4626: $0a
	dec  e                                           ; $4627: $1d
	ld   b, b                                        ; $4628: $40
	dec  d                                           ; $4629: $15
	inc  bc                                          ; $462a: $03
	dec  d                                           ; $462b: $15
	ld   bc, $2803                                   ; $462c: $01 $03 $28
	nop                                              ; $462f: $00
	ld   bc, $ffff                                   ; $4630: $01 $ff $ff
	ld   [hl], l                                     ; $4633: $75
	sub  b                                           ; $4634: $90
	sbc  [hl]                                        ; $4635: $9e
	ld   d, [hl]                                     ; $4636: $56
	ld   d, [hl]                                     ; $4637: $56
	ld   [bc], a                                     ; $4638: $02
	reti                                             ; $4639: $d9


	ld   [bc], a                                     ; $463a: $02
	ld   h, e                                        ; $463b: $63
	ld   e, d                                        ; $463c: $5a
	inc  bc                                          ; $463d: $03
	add  b                                           ; $463e: $80
	ld   l, l                                        ; $463f: $6d
	and  c                                           ; $4640: $a1
	ld   a, l                                        ; $4641: $7d
	dec  c                                           ; $4642: $0d
	sub  d                                           ; $4643: $92
	ld   [hl], c                                     ; $4644: $71
	ld   a, a                                        ; $4645: $7f
	sbc  b                                           ; $4646: $98
	ld   [$7d00], sp                                 ; $4647: $08 $00 $7d
	and  c                                           ; $464a: $a1
	ld   e, d                                        ; $464b: $5a
	dec  c                                           ; $464c: $0d
	ld   e, d                                        ; $464d: $5a
	and  c                                           ; $464e: $a1
	ld   a, [hl]                                     ; $464f: $7e
	ld   [hl], c                                     ; $4650: $71
	ld   l, l                                        ; $4651: $6d
	ld   e, c                                        ; $4652: $59
	sub  a                                           ; $4653: $97
	sub  d                                           ; $4654: $92
	sbc  a                                           ; $4655: $9f
	dec  c                                           ; $4656: $0d
	nop                                              ; $4657: $00
	ld   a, [bc]                                     ; $4658: $0a
	ld   bc, $7889                                   ; $4659: $01 $89 $78
	sbc  [hl]                                        ; $465c: $9e
	ld   h, c                                        ; $465d: $61
	sbc  d                                           ; $465e: $9a
	ld   e, c                                        ; $465f: $59
	sub  a                                           ; $4660: $97
	sub  b                                           ; $4661: $90
	sbc  [hl]                                        ; $4662: $9e
	dec  c                                           ; $4663: $0d
	ld   h, c                                        ; $4664: $61
	ld   a, h                                        ; $4665: $7c
	inc  bc                                          ; $4666: $03
	cp   $03                                         ; $4667: $fe $03
	add  [hl]                                        ; $4669: $86
	ld   [hl], l                                     ; $466a: $75
	ld   e, d                                        ; $466b: $5a
	and  c                                           ; $466c: $a1
	ld   a, [hl]                                     ; $466d: $7e
	ld   [hl], c                                     ; $466e: $71
	ld   [hl], h                                     ; $466f: $74
	ld   a, b                                        ; $4670: $78
	sbc  a                                           ; $4671: $9f
	dec  c                                           ; $4672: $0d
	nop                                              ; $4673: $00
	ld   a, [bc]                                     ; $4674: $0a
	dec  c                                           ; $4675: $0d
	nop                                              ; $4676: $00
	nop                                              ; $4677: $00
	rrca                                             ; $4678: $0f
	nop                                              ; $4679: $00
	ld   bc, $1e09                                   ; $467a: $01 $09 $1e
	nop                                              ; $467d: $00
	inc  c                                           ; $467e: $0c
	ld   [bc], a                                     ; $467f: $02
	ld   c, $9d                                      ; $4680: $0e $9d
	rrca                                             ; $4682: $0f
	nop                                              ; $4683: $00
	ld   bc, $ff01                                   ; $4684: $01 $01 $ff
	rst  $38                                         ; $4687: $ff
	add  e                                           ; $4688: $83
	ld   d, h                                        ; $4689: $54
	rst  $38                                         ; $468a: $ff
	rst  $38                                         ; $468b: $ff
	dec  c                                           ; $468c: $0d
	ld   [bc], a                                     ; $468d: $02
	and  l                                           ; $468e: $a5
	inc  b                                           ; $468f: $04
	xor  d                                           ; $4690: $aa
	ld   a, h                                        ; $4691: $7c
	rst  ToBoot                                         ; $4692: $c7
	cp   d                                           ; $4693: $ba
	ret                                              ; $4694: $c9


	ld   a, l                                        ; $4695: $7d
	dec  c                                           ; $4696: $0d
	ld   e, e                                        ; $4697: $5b
	and  c                                           ; $4698: $a1
	ld   l, a                                        ; $4699: $6f
	sub  l                                           ; $469a: $95
	ld   d, h                                        ; $469b: $54
	ld   h, l                                        ; $469c: $65
	ld   l, l                                        ; $469d: $6d
	ld   a, b                                        ; $469e: $78
	ld   d, b                                        ; $469f: $50
	rst  $38                                         ; $46a0: $ff
	rst  $38                                         ; $46a1: $ff
	dec  c                                           ; $46a2: $0d
	nop                                              ; $46a3: $00
	ld   a, [bc]                                     ; $46a4: $0a
	inc  e                                           ; $46a5: $1c
	ld   b, $00                                      ; $46a6: $06 $00
	nop                                              ; $46a8: $00
	ld   bc, $5896                                   ; $46a9: $01 $96 $58
	ld   [hl], c                                     ; $46ac: $71
	sbc  [hl]                                        ; $46ad: $9e
	ld   [$fa00], sp                                 ; $46ae: $08 $00 $fa
	ld   a, [$580d]                                  ; $46b1: $fa $0d $58
	inc  b                                           ; $46b4: $04
	ld   a, e                                        ; $46b5: $7b
	sbc  d                                           ; $46b6: $9a
	ld   h, e                                        ; $46b7: $63
	and  c                                           ; $46b8: $a1
	sbc  a                                           ; $46b9: $9f
	dec  c                                           ; $46ba: $0d
	nop                                              ; $46bb: $00
	ld   a, [bc]                                     ; $46bc: $0a
	rrca                                             ; $46bd: $0f
	nop                                              ; $46be: $00
	ld   bc, $5001                                   ; $46bf: $01 $01 $50
	ld   [hl], c                                     ; $46c2: $71
	sbc  [hl]                                        ; $46c3: $9e
	xor  h                                           ; $46c4: $ac
	push af                                          ; $46c5: $f5
	bit  4, e                                        ; $46c6: $cb $63
	and  c                                           ; $46c8: $a1
	rst  $38                                         ; $46c9: $ff
	rst  $38                                         ; $46ca: $ff
	dec  c                                           ; $46cb: $0d
	nop                                              ; $46cc: $00
	ld   a, [bc]                                     ; $46cd: $0a
	inc  e                                           ; $46ce: $1c
	ld   b, $07                                      ; $46cf: $06 $07
	rlca                                             ; $46d1: $07
	ld   bc, $bac7                                   ; $46d2: $01 $c7 $ba
	ret                                              ; $46d5: $c9


	sbc  [hl]                                        ; $46d6: $9e
	ld   d, d                                        ; $46d7: $52
	ld   d, d                                        ; $46d8: $52
	ld   [bc], a                                     ; $46d9: $02
	reti                                             ; $46da: $d9


	ld   [bc], a                                     ; $46db: $02
	ld   h, e                                        ; $46dc: $63
	ld   l, [hl]                                     ; $46dd: $6e
	ld   [hl], c                                     ; $46de: $71
	ld   l, l                                        ; $46df: $6d
	dec  c                                           ; $46e0: $0d
	adc  l                                           ; $46e1: $8d
	ld   l, l                                        ; $46e2: $6d
	ld   d, d                                        ; $46e3: $52
	ld   h, [hl]                                     ; $46e4: $66
	sub  c                                           ; $46e5: $91
	ld   a, e                                        ; $46e6: $7b
	ld   d, [hl]                                     ; $46e7: $56
	ld   e, c                                        ; $46e8: $59
	sbc  a                                           ; $46e9: $9f
	dec  c                                           ; $46ea: $0d
	nop                                              ; $46eb: $00
	ld   a, [bc]                                     ; $46ec: $0a
	inc  e                                           ; $46ed: $1c
	ld   b, $01                                      ; $46ee: $06 $01
	ld   bc, $6501                                   ; $46f0: $01 $01 $65
	ld   e, c                                        ; $46f3: $59
	sub  b                                           ; $46f4: $90
	sbc  [hl]                                        ; $46f5: $9e
	ld   d, b                                        ; $46f6: $50
	ld   l, l                                        ; $46f7: $6d
	ld   d, d                                        ; $46f8: $52
	ld   a, h                                        ; $46f9: $7c
	ld   [bc], a                                     ; $46fa: $02
	jr   c, jr_05d_4701                              ; $46fb: $38 $04

	ld   d, d                                        ; $46fd: $52
	ld   [hl], l                                     ; $46fe: $75
	dec  c                                           ; $46ff: $0d
	rst  ToBoot                                         ; $4700: $c7

jr_05d_4701:
	cp   d                                           ; $4701: $ba
	ret                                              ; $4702: $c9


	ld   h, l                                        ; $4703: $65
	ld   l, l                                        ; $4704: $6d
	and  c                                           ; $4705: $a1
	ld   l, [hl]                                     ; $4706: $6e
	ld   [hl], c                                     ; $4707: $71
	ld   [hl], h                                     ; $4708: $74
	ld   sp, hl                                      ; $4709: $f9
	dec  c                                           ; $470a: $0d
	inc  b                                           ; $470b: $04
	ld   a, [bc]                                     ; $470c: $0a
	inc  bc                                          ; $470d: $03
	jp   nc, $0279                                   ; $470e: $d2 $79 $02

	jp   nz, Jump_05d_6d52                           ; $4711: $c2 $52 $6d

	ld   l, d                                        ; $4714: $6a
	sbc  a                                           ; $4715: $9f
	dec  c                                           ; $4716: $0d
	nop                                              ; $4717: $00
	ld   a, [bc]                                     ; $4718: $0a
	rrca                                             ; $4719: $0f
	nop                                              ; $471a: $00
	ld   bc, $7d01                                   ; $471b: $01 $01 $7d
	ld   d, d                                        ; $471e: $52
	sbc  [hl]                                        ; $471f: $9e
	ld   d, b                                        ; $4720: $50
	sbc  b                                           ; $4721: $98
	ld   e, d                                        ; $4722: $5a
	halt                                             ; $4723: $76
	ld   d, h                                        ; $4724: $54
	ld   h, d                                        ; $4725: $62
	ld   h, h                                        ; $4726: $64
	ld   d, d                                        ; $4727: $52
	adc  h                                           ; $4728: $8c
	ld   h, a                                        ; $4729: $67
	ld   a, [$610d]                                  ; $472a: $fa $0d $61
	sbc  d                                           ; $472d: $9a
	sub  b                                           ; $472e: $90
	xor  h                                           ; $472f: $ac
	push af                                          ; $4730: $f5
	bit  4, e                                        ; $4731: $cb $63
	and  c                                           ; $4733: $a1
	ld   a, h                                        ; $4734: $7c
	inc  bc                                          ; $4735: $03
	ld   l, l                                        ; $4736: $6d
	dec  b                                           ; $4737: $05
	add  hl, de                                      ; $4738: $19
	ld   a, h                                        ; $4739: $7c
	dec  c                                           ; $473a: $0d
	ld   e, b                                        ; $473b: $58
	ld   e, c                                        ; $473c: $59
	ld   h, b                                        ; $473d: $60
	ld   [hl], l                                     ; $473e: $75
	ld   h, a                                        ; $473f: $67
	sbc  a                                           ; $4740: $9f
	dec  c                                           ; $4741: $0d
	nop                                              ; $4742: $00
	ld   a, [bc]                                     ; $4743: $0a
	inc  e                                           ; $4744: $1c
	ld   b, $04                                      ; $4745: $06 $04
	inc  b                                           ; $4747: $04
	dec  e                                           ; $4748: $1d
	ld   b, b                                        ; $4749: $40
	ld   d, $03                                      ; $474a: $16 $03
	ld   d, $01                                      ; $474c: $16 $01
	inc  bc                                          ; $474e: $03
	jr   z, jr_05d_4751                              ; $474f: $28 $00

jr_05d_4751:
	ld   bc, $8686                                   ; $4751: $01 $86 $86
	rst  $38                                         ; $4754: $ff
	rst  $38                                         ; $4755: $ff
	ld   d, h                                        ; $4756: $54
	sbc  d                                           ; $4757: $9a
	ld   h, l                                        ; $4758: $65
	ld   d, d                                        ; $4759: $52
	ld   h, c                                        ; $475a: $61
	halt                                             ; $475b: $76
	ld   [bc], a                                     ; $475c: $02
	sbc  l                                           ; $475d: $9d
	ld   [hl], c                                     ; $475e: $71
	ld   [hl], h                                     ; $475f: $74
	dec  c                                           ; $4760: $0d
	ld   e, l                                        ; $4761: $5d
	sbc  d                                           ; $4762: $9a
	sbc  c                                           ; $4763: $99
	ld   h, [hl]                                     ; $4764: $66
	sub  c                                           ; $4765: $91
	ld   a, e                                        ; $4766: $7b
	ld   d, [hl]                                     ; $4767: $56
	ld   e, c                                        ; $4768: $59
	sbc  a                                           ; $4769: $9f
	dec  c                                           ; $476a: $0d
	nop                                              ; $476b: $00
	ld   a, [bc]                                     ; $476c: $0a
	inc  e                                           ; $476d: $1c
	ld   b, $01                                      ; $476e: $06 $01
	ld   bc, $7501                                   ; $4770: $01 $01 $75
	sub  b                                           ; $4773: $90
	ld   a, b                                        ; $4774: $78
	rst  $38                                         ; $4775: $ff
	rst  $38                                         ; $4776: $ff
	ld   e, b                                        ; $4777: $58
	inc  bc                                          ; $4778: $03
	ld   c, a                                        ; $4779: $4f
	ld   a, h                                        ; $477a: $7c
	ld   e, d                                        ; $477b: $5a
	and  c                                           ; $477c: $a1
	ld   a, [hl]                                     ; $477d: $7e
	sbc  b                                           ; $477e: $98
	dec  c                                           ; $477f: $0d
	ld   l, [hl]                                     ; $4780: $6e
	ld   [hl], c                                     ; $4781: $71
	ld   [hl], h                                     ; $4782: $74
	sbc  [hl]                                        ; $4783: $9e
	ld   d, b                                        ; $4784: $50
	ld   l, l                                        ; $4785: $6d
	ld   d, d                                        ; $4786: $52
	ld   a, l                                        ; $4787: $7d
	ld   l, a                                        ; $4788: $6f
	sub  c                                           ; $4789: $91
	and  c                                           ; $478a: $a1
	halt                                             ; $478b: $76
	dec  c                                           ; $478c: $0d
	inc  b                                           ; $478d: $04
	ld   d, a                                        ; $478e: $57
	dec  b                                           ; $478f: $05
	add  hl, hl                                      ; $4790: $29
	ld   h, l                                        ; $4791: $65
	ld   [hl], h                                     ; $4792: $74
	sbc  c                                           ; $4793: $99
	ld   l, d                                        ; $4794: $6a
	sbc  a                                           ; $4795: $9f
	dec  c                                           ; $4796: $0d
	nop                                              ; $4797: $00
	ld   a, [bc]                                     ; $4798: $0a
	ld   bc, $9a6b                                   ; $4799: $01 $6b $9a
	ld   h, [hl]                                     ; $479c: $66
	sub  c                                           ; $479d: $91
	sbc  [hl]                                        ; $479e: $9e
	ld   h, c                                        ; $479f: $61
	sbc  d                                           ; $47a0: $9a
	ld   e, c                                        ; $47a1: $59
	sub  a                                           ; $47a2: $97
	sub  b                                           ; $47a3: $90
	dec  c                                           ; $47a4: $0d
	ld   h, c                                        ; $47a5: $61
	ld   a, h                                        ; $47a6: $7c
	inc  bc                                          ; $47a7: $03
	cp   $03                                         ; $47a8: $fe $03
	add  [hl]                                        ; $47aa: $86
	ld   [hl], l                                     ; $47ab: $75
	ld   e, d                                        ; $47ac: $5a
	and  c                                           ; $47ad: $a1
	ld   a, [hl]                                     ; $47ae: $7e
	sbc  d                                           ; $47af: $9a
	sub  [hl]                                        ; $47b0: $96
	ld   a, [$0dfa]                                  ; $47b1: $fa $fa $0d
	nop                                              ; $47b4: $00
	ld   a, [bc]                                     ; $47b5: $0a
	dec  c                                           ; $47b6: $0d
	nop                                              ; $47b7: $00
	nop                                              ; $47b8: $00
	rrca                                             ; $47b9: $0f
	nop                                              ; $47ba: $00
	ld   bc, $1e09                                   ; $47bb: $01 $09 $1e
	nop                                              ; $47be: $00
	nop                                              ; $47bf: $00
	inc  b                                           ; $47c0: $04
	add  b                                           ; $47c1: $80
	daa                                              ; $47c2: $27
	inc  b                                           ; $47c3: $04
	add  b                                           ; $47c4: $80
	ld   [hl], $01                                   ; $47c5: $36 $01
	nop                                              ; $47c7: $00
	jr   nz, jr_05d_47e6                             ; $47c8: $20 $1c

	inc  bc                                          ; $47ca: $03
	ld   e, d                                        ; $47cb: $5a
	ld   [bc], a                                     ; $47cc: $02
	nop                                              ; $47cd: $00
	jr   nz, jr_05d_47ec                             ; $47ce: $20 $1c

	nop                                              ; $47d0: $00
	ld   c, $02                                      ; $47d1: $0e $02
	rrca                                             ; $47d3: $0f
	nop                                              ; $47d4: $00
	ld   bc, $0502                                   ; $47d5: $01 $02 $05
	add  b                                           ; $47d8: $80
	ld   [hl], $01                                   ; $47d9: $36 $01
	ld   bc, $0100                                   ; $47db: $01 $00 $01
	ld   l, e                                        ; $47de: $6b
	sbc  e                                           ; $47df: $9b
	ld   l, e                                        ; $47e0: $6b
	sbc  e                                           ; $47e1: $9b
	sbc  [hl]                                        ; $47e2: $9e
	ld   [bc], a                                     ; $47e3: $02
	sub  l                                           ; $47e4: $95
	ld   [bc], a                                     ; $47e5: $02

jr_05d_47e6:
	sub  e                                           ; $47e6: $93
	sbc  b                                           ; $47e7: $98
	ld   a, c                                        ; $47e8: $79
	ld   [bc], a                                     ; $47e9: $02
	ld   a, a                                        ; $47ea: $7f
	ld   e, l                                        ; $47eb: $5d

jr_05d_47ec:
	dec  c                                           ; $47ec: $0d
	inc  bc                                          ; $47ed: $03
	ld   l, a                                        ; $47ee: $6f
	ld   [bc], a                                     ; $47ef: $02
	xor  c                                           ; $47f0: $a9
	ld   l, [hl]                                     ; $47f1: $6e
	ld   a, b                                        ; $47f2: $78
	rst  $38                                         ; $47f3: $ff
	rst  $38                                         ; $47f4: $ff
	dec  c                                           ; $47f5: $0d
	nop                                              ; $47f6: $00
	ld   a, [bc]                                     ; $47f7: $0a
	inc  d                                           ; $47f8: $14
	ld   b, $01                                      ; $47f9: $06 $01
	rrca                                             ; $47fb: $0f
	dec  b                                           ; $47fc: $05
	nop                                              ; $47fd: $00
	ld   bc, $0008                                   ; $47fe: $01 $08 $00
	ld   a, l                                        ; $4801: $7d
	and  c                                           ; $4802: $a1
	dec  c                                           ; $4803: $0d
	ld   l, a                                        ; $4804: $6f
	sub  l                                           ; $4805: $95
	ld   [hl], c                                     ; $4806: $71
	halt                                             ; $4807: $76
	xor  c                                           ; $4808: $a9
	xor  c                                           ; $4809: $a9
	ld   e, c                                        ; $480a: $59
	ld   sp, hl                                      ; $480b: $f9
	dec  c                                           ; $480c: $0d
	nop                                              ; $480d: $00
	ld   a, [bc]                                     ; $480e: $0a
	rrca                                             ; $480f: $0f
	nop                                              ; $4810: $00
	ld   bc, $0a14                                   ; $4811: $01 $14 $0a
	ld   bc, $7d01                                   ; $4814: $01 $01 $7d
	ld   d, d                                        ; $4817: $52
	sbc  [hl]                                        ; $4818: $9e
	ld   [hl], a                                     ; $4819: $77
	ld   d, h                                        ; $481a: $54
	ld   l, h                                        ; $481b: $6c
	sbc  a                                           ; $481c: $9f
	dec  c                                           ; $481d: $0d
	nop                                              ; $481e: $00
	ld   a, [bc]                                     ; $481f: $0a
	inc  e                                           ; $4820: $1c
	dec  b                                           ; $4821: $05
	rlca                                             ; $4822: $07
	rlca                                             ; $4823: $07
	ld   bc, $0008                                   ; $4824: $01 $08 $00
	ld   a, l                                        ; $4827: $7d
	and  c                                           ; $4828: $a1
	sbc  a                                           ; $4829: $9f
	dec  c                                           ; $482a: $0d
	ld   a, b                                        ; $482b: $78
	and  c                                           ; $482c: $a1
	ld   e, c                                        ; $482d: $59
	inc  b                                           ; $482e: $04
	and  e                                           ; $482f: $a3
	sbc  d                                           ; $4830: $9a
	ld   [hl], h                                     ; $4831: $74
	add  [hl]                                        ; $4832: $86
	and  c                                           ; $4833: $a1
	ld   sp, hl                                      ; $4834: $f9
	dec  c                                           ; $4835: $0d
	nop                                              ; $4836: $00
	ld   a, [bc]                                     ; $4837: $0a
	ld   bc, wRandomNumStruct                                   ; $4838: $01 $a7 $c2
	halt                                             ; $483b: $76
	ld   a, h                                        ; $483c: $7c
	inc  b                                           ; $483d: $04
	ldh  [$03], a                                    ; $483e: $e0 $03
	dec  hl                                          ; $4840: $2b
	sub  d                                           ; $4841: $92
	add  h                                           ; $4842: $84
	ld   [hl], c                                     ; $4843: $71
	ld   l, l                                        ; $4844: $6d
	sub  d                                           ; $4845: $92
	sbc  e                                           ; $4846: $9b
	sbc  a                                           ; $4847: $9f
	dec  c                                           ; $4848: $0d
	ld   e, b                                        ; $4849: $58
	inc  b                                           ; $484a: $04
	xor  l                                           ; $484b: $ad
	ld   a, c                                        ; $484c: $79
	sbc  [hl]                                        ; $484d: $9e
	and  a                                           ; $484e: $a7
	jp   nz, $047c                                   ; $484f: $c2 $7c $04

	sub  l                                           ; $4852: $95
	ld   [bc], a                                     ; $4853: $02
	ld   hl, $0d79                                   ; $4854: $21 $79 $0d
	dec  b                                           ; $4857: $05
	db   $10                                         ; $4858: $10
	sbc  c                                           ; $4859: $99
	ld   [bc], a                                     ; $485a: $02
	sbc  l                                           ; $485b: $9d
	ld   d, h                                        ; $485c: $54
	ld   [hl], h                                     ; $485d: $74
	ld   l, l                                        ; $485e: $6d
	sub  d                                           ; $485f: $92
	and  c                                           ; $4860: $a1
	sbc  a                                           ; $4861: $9f
	dec  c                                           ; $4862: $0d
	nop                                              ; $4863: $00
	ld   a, [bc]                                     ; $4864: $0a
	dec  e                                           ; $4865: $1d
	ld   b, b                                        ; $4866: $40
	dec  d                                           ; $4867: $15
	inc  bc                                          ; $4868: $03
	dec  d                                           ; $4869: $15
	ld   bc, $2903                                   ; $486a: $01 $03 $29
	nop                                              ; $486d: $00
	ld   bc, $e004                                   ; $486e: $01 $04 $e0
	inc  bc                                          ; $4871: $03
	dec  hl                                          ; $4872: $2b
	and  b                                           ; $4873: $a0
	sub  d                                           ; $4874: $92
	add  h                                           ; $4875: $84
	sbc  c                                           ; $4876: $99
	and  c                                           ; $4877: $a1
	ld   a, l                                        ; $4878: $7d
	dec  c                                           ; $4879: $0d
	inc  bc                                          ; $487a: $03
	add  d                                           ; $487b: $82
	halt                                             ; $487c: $76
	ld   h, l                                        ; $487d: $65
	ld   [hl], h                                     ; $487e: $74
	inc  bc                                          ; $487f: $03
	ld   l, c                                        ; $4880: $69
	inc  bc                                          ; $4881: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4882: $cf
	sub  d                                           ; $4883: $92
	ld   [hl], l                                     ; $4884: $75
	sbc  a                                           ; $4885: $9f
	dec  c                                           ; $4886: $0d
	ld   h, c                                        ; $4887: $61
	sbc  d                                           ; $4888: $9a
	ld   e, c                                        ; $4889: $59
	sub  a                                           ; $488a: $97
	ld   a, l                                        ; $488b: $7d
	ld   [bc], a                                     ; $488c: $02
	and  c                                           ; $488d: $a1
	ld   d, d                                        ; $488e: $52
	ld   [hl], d                                     ; $488f: $72
	ld   e, a                                        ; $4890: $5f
	ld   [hl], h                                     ; $4891: $74
	ld   a, b                                        ; $4892: $78
	sbc  a                                           ; $4893: $9f
	dec  c                                           ; $4894: $0d
	nop                                              ; $4895: $00
	ld   a, [bc]                                     ; $4896: $0a
	inc  e                                           ; $4897: $1c
	dec  b                                           ; $4898: $05
	nop                                              ; $4899: $00
	nop                                              ; $489a: $00
	ld   bc, $7889                                   ; $489b: $01 $89 $78
	sbc  [hl]                                        ; $489e: $9e
	adc  h                                           ; $489f: $8c
	ld   l, l                                        ; $48a0: $6d
	ld   a, b                                        ; $48a1: $78
	sbc  a                                           ; $48a2: $9f
	dec  c                                           ; $48a3: $0d
	nop                                              ; $48a4: $00
	ld   a, [bc]                                     ; $48a5: $0a
	dec  c                                           ; $48a6: $0d
	nop                                              ; $48a7: $00
	nop                                              ; $48a8: $00
	rrca                                             ; $48a9: $0f
	nop                                              ; $48aa: $00
	ld   bc, $1e09                                   ; $48ab: $01 $09 $1e
	add  hl, hl                                      ; $48ae: $29
	nop                                              ; $48af: $00
	nop                                              ; $48b0: $00
	nop                                              ; $48b1: $00
	inc  b                                           ; $48b2: $04
	add  b                                           ; $48b3: $80
	ld   [$ff01], sp                                 ; $48b4: $08 $01 $ff
	jr   nz, @+$06                                   ; $48b7: $20 $04

	add  b                                           ; $48b9: $80
	add  hl, bc                                      ; $48ba: $09
	ld   bc, $2000                                   ; $48bb: $01 $00 $20
	inc  e                                           ; $48be: $1c
	inc  bc                                          ; $48bf: $03
	ld   e, b                                        ; $48c0: $58
	ld   [bc], a                                     ; $48c1: $02
	nop                                              ; $48c2: $00
	jr   nz, jr_05d_48e1                             ; $48c3: $20 $1c

	nop                                              ; $48c5: $00
	ld   c, $02                                      ; $48c6: $0e $02
	rrca                                             ; $48c8: $0f
	nop                                              ; $48c9: $00
	ld   bc, $0502                                   ; $48ca: $01 $02 $05
	add  b                                           ; $48cd: $80
	add  hl, bc                                      ; $48ce: $09
	ld   bc, $0001                                   ; $48cf: $01 $01 $00
	ld   bc, $9b6b                                   ; $48d2: $01 $6b $9b
	ld   l, e                                        ; $48d5: $6b
	sbc  e                                           ; $48d6: $9b
	sbc  [hl]                                        ; $48d7: $9e
	ld   [bc], a                                     ; $48d8: $02
	sub  l                                           ; $48d9: $95
	ld   [bc], a                                     ; $48da: $02
	sub  e                                           ; $48db: $93
	sbc  b                                           ; $48dc: $98
	ld   a, c                                        ; $48dd: $79
	ld   [bc], a                                     ; $48de: $02
	ld   a, a                                        ; $48df: $7f
	ld   e, l                                        ; $48e0: $5d

jr_05d_48e1:
	dec  c                                           ; $48e1: $0d
	inc  bc                                          ; $48e2: $03
	ld   l, a                                        ; $48e3: $6f
	ld   [bc], a                                     ; $48e4: $02
	xor  c                                           ; $48e5: $a9
	ld   l, [hl]                                     ; $48e6: $6e
	ld   a, b                                        ; $48e7: $78
	rst  $38                                         ; $48e8: $ff
	rst  $38                                         ; $48e9: $ff
	dec  c                                           ; $48ea: $0d
	nop                                              ; $48eb: $00
	ld   a, [bc]                                     ; $48ec: $0a
	inc  d                                           ; $48ed: $14
	ld   b, $01                                      ; $48ee: $06 $01
	rrca                                             ; $48f0: $0f
	ld   bc, $0100                                   ; $48f1: $01 $00 $01
	ld   [$6300], sp                                 ; $48f4: $08 $00 $63
	and  c                                           ; $48f7: $a1
	dec  c                                           ; $48f8: $0d
	ld   d, d                                        ; $48f9: $52
	adc  h                                           ; $48fa: $8c
	ld   h, a                                        ; $48fb: $67
	ld   sp, hl                                      ; $48fc: $f9
	dec  c                                           ; $48fd: $0d
	nop                                              ; $48fe: $00
	ld   a, [bc]                                     ; $48ff: $0a
	rrca                                             ; $4900: $0f
	nop                                              ; $4901: $00
	ld   bc, $7d01                                   ; $4902: $01 $01 $7d
	ld   d, d                                        ; $4905: $52
	sbc  [hl]                                        ; $4906: $9e
	ld   [hl], a                                     ; $4907: $77
	ld   d, h                                        ; $4908: $54
	ld   l, h                                        ; $4909: $6c
	sbc  a                                           ; $490a: $9f
	dec  c                                           ; $490b: $0d
	nop                                              ; $490c: $00
	ld   a, [bc]                                     ; $490d: $0a
	inc  d                                           ; $490e: $14
	ld   a, [bc]                                     ; $490f: $0a
	ld   bc, $011c                                   ; $4910: $01 $1c $01
	rlca                                             ; $4913: $07
	rlca                                             ; $4914: $07
	ld   bc, $0008                                   ; $4915: $01 $08 $00
	ld   h, e                                        ; $4918: $63
	and  c                                           ; $4919: $a1
	dec  c                                           ; $491a: $0d
	inc  b                                           ; $491b: $04
	ld   c, c                                        ; $491c: $49
	ld   e, c                                        ; $491d: $59
	sbc  l                                           ; $491e: $9d
	ld   h, a                                        ; $491f: $67
	sbc  d                                           ; $4920: $9a
	ld   [hl], h                                     ; $4921: $74
	adc  h                                           ; $4922: $8c
	ld   l, c                                        ; $4923: $69
	and  c                                           ; $4924: $a1
	ld   e, c                                        ; $4925: $59
	ld   sp, hl                                      ; $4926: $f9
	dec  c                                           ; $4927: $0d
	nop                                              ; $4928: $00
	ld   a, [bc]                                     ; $4929: $0a
	ld   bc, $0458                                   ; $492a: $01 $58 $04
	xor  l                                           ; $492d: $ad
	ld   a, c                                        ; $492e: $79
	sbc  [hl]                                        ; $492f: $9e
	inc  b                                           ; $4930: $04
	ld   c, $04                                      ; $4931: $0e $04
	ld   d, $02                                      ; $4933: $16 $02
	xor  b                                           ; $4935: $a8
	ld   a, h                                        ; $4936: $7c
	inc  bc                                          ; $4937: $03
	ld   a, e                                        ; $4938: $7b
	dec  b                                           ; $4939: $05
	ld   de, $0da0                                   ; $493a: $11 $a0 $0d
	inc  bc                                          ; $493d: $03
	ld   l, e                                        ; $493e: $6b
	inc  b                                           ; $493f: $04
	ld   [de], a                                     ; $4940: $12
	ld   [hl], c                                     ; $4941: $71
	ld   [hl], h                                     ; $4942: $74
	ld   e, l                                        ; $4943: $5d
	sbc  d                                           ; $4944: $9a
	sbc  c                                           ; $4945: $99
	ld   [hl], c                                     ; $4946: $71
	ld   [hl], h                                     ; $4947: $74
	dec  c                                           ; $4948: $0d
	inc  b                                           ; $4949: $04
	ldh  [$03], a                                    ; $494a: $e0 $03
	dec  hl                                          ; $494c: $2b
	ld   h, l                                        ; $494d: $65
	ld   l, l                                        ; $494e: $6d
	ld   a, h                                        ; $494f: $7c
	ld   a, c                                        ; $4950: $79
	rst  $38                                         ; $4951: $ff
	rst  $38                                         ; $4952: $ff
	dec  c                                           ; $4953: $0d
	nop                                              ; $4954: $00
	ld   a, [bc]                                     ; $4955: $0a
	inc  e                                           ; $4956: $1c
	ld   bc, $0202                                   ; $4957: $01 $02 $02
	dec  e                                           ; $495a: $1d
	ld   b, b                                        ; $495b: $40
	ld   de, $1103                                   ; $495c: $11 $03 $11
	ld   bc, $2903                                   ; $495f: $01 $03 $29
	nop                                              ; $4962: $00
	ld   bc, $679d                                   ; $4963: $01 $9d $67
	sbc  d                                           ; $4966: $9a
	ld   [hl], h                                     ; $4967: $74
	ld   d, d                                        ; $4968: $52
	adc  h                                           ; $4969: $8c
	ld   h, l                                        ; $496a: $65
	ld   l, l                                        ; $496b: $6d
	ld   a, e                                        ; $496c: $7b
	ld   a, [$800d]                                  ; $496d: $fa $0d $80
	ld   [hl], a                                     ; $4970: $77
	ld   d, d                                        ; $4971: $52
	ld   [hl], l                                     ; $4972: $75
	ld   h, a                                        ; $4973: $67
	sbc  a                                           ; $4974: $9f
	dec  c                                           ; $4975: $0d
	nop                                              ; $4976: $00
	ld   a, [bc]                                     ; $4977: $0a
	inc  e                                           ; $4978: $1c
	ld   bc, $0707                                   ; $4979: $01 $07 $07
	ld   bc, $a502                                   ; $497c: $01 $02 $a5
	ld   [bc], a                                     ; $497f: $02
	xor  d                                           ; $4980: $aa
	sbc  [hl]                                        ; $4981: $9e
	inc  bc                                          ; $4982: $03
	sub  e                                           ; $4983: $93
	sbc  d                                           ; $4984: $9a
	ld   a, b                                        ; $4985: $78
	ld   d, d                                        ; $4986: $52
	sub  [hl]                                        ; $4987: $96
	ld   d, h                                        ; $4988: $54
	ld   a, b                                        ; $4989: $78
	inc  b                                           ; $498a: $04
	ldh  [$03], a                                    ; $498b: $e0 $03
	dec  hl                                          ; $498d: $2b
	ld   a, l                                        ; $498e: $7d
	dec  c                                           ; $498f: $0d
	ld   h, l                                        ; $4990: $65
	ld   a, b                                        ; $4991: $78
	ld   d, d                                        ; $4992: $52
	ld   [hl], l                                     ; $4993: $75
	ld   e, l                                        ; $4994: $5d
	ld   l, [hl]                                     ; $4995: $6e
	ld   h, e                                        ; $4996: $63
	ld   d, d                                        ; $4997: $52
	ld   a, e                                        ; $4998: $7b
	sbc  a                                           ; $4999: $9f
	dec  c                                           ; $499a: $0d
	nop                                              ; $499b: $00
	ld   a, [bc]                                     ; $499c: $0a
	add  hl, hl                                      ; $499d: $29
	nop                                              ; $499e: $00
	nop                                              ; $499f: $00
	nop                                              ; $49a0: $00
	inc  b                                           ; $49a1: $04
	add  b                                           ; $49a2: $80
	ld   b, e                                        ; $49a3: $43
	ld   bc, $20ff                                   ; $49a4: $01 $ff $20
	nop                                              ; $49a7: $00
	ld   c, $02                                      ; $49a8: $0e $02
	rrca                                             ; $49aa: $0f
	inc  b                                           ; $49ab: $04
	rlca                                             ; $49ac: $07
	ld   [bc], a                                     ; $49ad: $02
	add  hl, bc                                      ; $49ae: $09
	ld   e, $14                                      ; $49af: $1e $14
	ld   b, $01                                      ; $49b1: $06 $01
	add  hl, bc                                      ; $49b3: $09
	ld   e, $01                                      ; $49b4: $1e $01
	ld   l, a                                        ; $49b6: $6f
	ld   d, d                                        ; $49b7: $52
	ld   [bc], a                                     ; $49b8: $02
	inc  de                                          ; $49b9: $13
	ld   l, a                                        ; $49ba: $6f
	sub  c                                           ; $49bb: $91
	and  c                                           ; $49bc: $a1
	rst  $38                                         ; $49bd: $ff
	rst  $38                                         ; $49be: $ff
	dec  c                                           ; $49bf: $0d
	ld   d, d                                        ; $49c0: $52
	sbc  c                                           ; $49c1: $99
	ld   sp, hl                                      ; $49c2: $f9
	dec  c                                           ; $49c3: $0d
	nop                                              ; $49c4: $00
	ld   a, [bc]                                     ; $49c5: $0a
	rrca                                             ; $49c6: $0f
	nop                                              ; $49c7: $00
	ld   bc, $a101                                   ; $49c8: $01 $01 $a1
	ld   sp, hl                                      ; $49cb: $f9
	db   $10                                         ; $49cc: $10
	and  e                                           ; $49cd: $a3
	and  l                                           ; $49ce: $a5
	db   $ec                                         ; $49cf: $ec
	cp   d                                           ; $49d0: $ba
	sbc  a                                           ; $49d1: $9f
	dec  c                                           ; $49d2: $0d
	ld   d, d                                        ; $49d3: $52
	sbc  c                                           ; $49d4: $99
	sub  [hl]                                        ; $49d5: $96
	sbc  a                                           ; $49d6: $9f
	dec  c                                           ; $49d7: $0d
	nop                                              ; $49d8: $00
	ld   a, [bc]                                     ; $49d9: $0a
	inc  d                                           ; $49da: $14
	ld   a, [bc]                                     ; $49db: $0a
	ld   bc, $041c                                   ; $49dc: $01 $1c $04
	rlca                                             ; $49df: $07
	rlca                                             ; $49e0: $07
	ld   bc, $526f                                   ; $49e1: $01 $6f $52
	ld   [bc], a                                     ; $49e4: $02
	inc  de                                          ; $49e5: $13
	ld   l, a                                        ; $49e6: $6f
	sub  c                                           ; $49e7: $91
	and  c                                           ; $49e8: $a1
	dec  c                                           ; $49e9: $0d
	cp   c                                           ; $49ea: $b9
	push hl                                          ; $49eb: $e5
	push af                                          ; $49ec: $f5
	sbc  $fb                                         ; $49ed: $de $fb
	db   $ed                                         ; $49ef: $ed
	ld   a, h                                        ; $49f0: $7c
	ld   l, c                                        ; $49f1: $69
	sbc  l                                           ; $49f2: $9d
	dec  c                                           ; $49f3: $0d
	ld   h, e                                        ; $49f4: $63
	ld   d, d                                        ; $49f5: $52
	ld   h, d                                        ; $49f6: $62
	adc  h                                           ; $49f7: $8c
	ld   [hl], l                                     ; $49f8: $75
	ld   h, l                                        ; $49f9: $65
	ld   a, b                                        ; $49fa: $78
	ld   e, c                                        ; $49fb: $59
	ld   [hl], c                                     ; $49fc: $71
	ld   l, l                                        ; $49fd: $6d
	ld   [hl], l                                     ; $49fe: $75
	ld   h, l                                        ; $49ff: $65
	sub  l                                           ; $4a00: $95
	sbc  a                                           ; $4a01: $9f
	dec  c                                           ; $4a02: $0d
	nop                                              ; $4a03: $00
	ld   a, [bc]                                     ; $4a04: $0a
	inc  e                                           ; $4a05: $1c
	inc  b                                           ; $4a06: $04
	inc  b                                           ; $4a07: $04
	inc  b                                           ; $4a08: $04
	ld   bc, $a5a3                                   ; $4a09: $01 $a3 $a5
	db   $ec                                         ; $4a0c: $ec
	cp   d                                           ; $4a0d: $ba
	ld   e, d                                        ; $4a0e: $5a
	ld   e, c                                        ; $4a0f: $59
	ld   d, [hl]                                     ; $4a10: $56
	ld   [hl], c                                     ; $4a11: $71
	ld   [hl], h                                     ; $4a12: $74
	ld   e, e                                        ; $4a13: $5b
	ld   l, l                                        ; $4a14: $6d
	sub  a                                           ; $4a15: $97
	dec  c                                           ; $4a16: $0d
	cp   c                                           ; $4a17: $b9
	push hl                                          ; $4a18: $e5
	push af                                          ; $4a19: $f5
	sbc  $fb                                         ; $4a1a: $de $fb
	db   $ed                                         ; $4a1c: $ed
	ld   h, e                                        ; $4a1d: $63
	adc  l                                           ; $4a1e: $8d
	ld   h, l                                        ; $4a1f: $65
	ld   l, e                                        ; $4a20: $6b
	ld   d, h                                        ; $4a21: $54
	ld   a, c                                        ; $4a22: $79
	dec  c                                           ; $4a23: $0d
	ld   h, l                                        ; $4a24: $65
	ld   [hl], h                                     ; $4a25: $74
	ld   l, l                                        ; $4a26: $6d
	and  c                                           ; $4a27: $a1
	ld   l, [hl]                                     ; $4a28: $6e
	ld   e, c                                        ; $4a29: $59
	sub  a                                           ; $4a2a: $97
	ld   a, [$000d]                                  ; $4a2b: $fa $0d $00
	ld   a, [bc]                                     ; $4a2e: $0a
	inc  e                                           ; $4a2f: $1c
	inc  b                                           ; $4a30: $04
	ld   [bc], a                                     ; $4a31: $02
	ld   [bc], a                                     ; $4a32: $02
	dec  e                                           ; $4a33: $1d
	ld   b, b                                        ; $4a34: $40
	inc  d                                           ; $4a35: $14
	inc  bc                                          ; $4a36: $03
	inc  d                                           ; $4a37: $14
	ld   bc, $2903                                   ; $4a38: $01 $03 $29
	nop                                              ; $4a3b: $00
	ld   bc, $526f                                   ; $4a3c: $01 $6f $52
	ld   [bc], a                                     ; $4a3f: $02
	inc  de                                          ; $4a40: $13
	ld   l, a                                        ; $4a41: $6f
	sub  c                                           ; $4a42: $91
	and  c                                           ; $4a43: $a1
	ld   a, b                                        ; $4a44: $78
	and  c                                           ; $4a45: $a1
	ld   e, c                                        ; $4a46: $59
	dec  c                                           ; $4a47: $0d
	ld   l, [hl]                                     ; $4a48: $6e
	ld   d, d                                        ; $4a49: $52
	ld   [hl], c                                     ; $4a4a: $71
	xor  [hl]                                        ; $4a4b: $ae
	db   $eb                                         ; $4a4c: $eb
	and  l                                           ; $4a4d: $a5
	ld   a, [$000d]                                  ; $4a4e: $fa $0d $00
	ld   a, [bc]                                     ; $4a51: $0a
	dec  b                                           ; $4a52: $05
	ld   b, b                                        ; $4a53: $40
	ld   c, e                                        ; $4a54: $4b
	ld   [bc], a                                     ; $4a55: $02
	nop                                              ; $4a56: $00
	nop                                              ; $4a57: $00
	dec  b                                           ; $4a58: $05
	ld   b, b                                        ; $4a59: $40
	ld   d, c                                        ; $4a5a: $51
	ld   bc, $0002                                   ; $4a5b: $01 $02 $00
	add  hl, hl                                      ; $4a5e: $29
	nop                                              ; $4a5f: $00
	nop                                              ; $4a60: $00
	nop                                              ; $4a61: $00
	inc  b                                           ; $4a62: $04
	add  b                                           ; $4a63: $80
	ld   l, [hl]                                     ; $4a64: $6e
	ld   bc, $20ff                                   ; $4a65: $01 $ff $20
	nop                                              ; $4a68: $00
	ld   c, $89                                      ; $4a69: $0e $89
	inc  e                                           ; $4a6b: $1c
	inc  bc                                          ; $4a6c: $03
	inc  bc                                          ; $4a6d: $03
	inc  bc                                          ; $4a6e: $03
	ld   [bc], a                                     ; $4a6f: $02
	ld   bc, $9e50                                   ; $4a70: $01 $50 $9e
	ld   [$5d00], sp                                 ; $4a73: $08 $00 $5d
	and  c                                           ; $4a76: $a1
	sbc  a                                           ; $4a77: $9f
	dec  c                                           ; $4a78: $0d
	ld   l, a                                        ; $4a79: $6f
	sub  l                                           ; $4a7a: $95
	ld   d, h                                        ; $4a7b: $54
	ld   [hl], a                                     ; $4a7c: $77
	ld   d, d                                        ; $4a7d: $52
	ld   d, d                                        ; $4a7e: $52
	halt                                             ; $4a7f: $76
	ld   h, c                                        ; $4a80: $61
	sbc  e                                           ; $4a81: $9b
	ld   a, c                                        ; $4a82: $79
	dec  b                                           ; $4a83: $05
	db   $10                                         ; $4a84: $10
	ld   l, l                                        ; $4a85: $6d
	sbc  l                                           ; $4a86: $9d
	sbc  a                                           ; $4a87: $9f
	dec  c                                           ; $4a88: $0d
	nop                                              ; $4a89: $00
	ld   a, [bc]                                     ; $4a8a: $0a
	ld   bc, $7c61                                   ; $4a8b: $01 $61 $7c
	inc  bc                                          ; $4a8e: $03
	ld   c, a                                        ; $4a8f: $4f
	ld   [bc], a                                     ; $4a90: $02
	sbc  l                                           ; $4a91: $9d
	ld   [hl], c                                     ; $4a92: $71
	ld   [hl], h                                     ; $4a93: $74
	ld   l, l                                        ; $4a94: $6d
	ld   [hl], l                                     ; $4a95: $75
	ld   h, l                                        ; $4a96: $65
	sub  l                                           ; $4a97: $95
	ld   d, h                                        ; $4a98: $54
	ld   sp, hl                                      ; $4a99: $f9
	dec  c                                           ; $4a9a: $0d
	dec  b                                           ; $4a9b: $05
	ld   [bc], a                                     ; $4a9c: $02
	dec  b                                           ; $4a9d: $05
	ld   de, $6a03                                   ; $4a9e: $11 $03 $6a
	add  a                                           ; $4aa1: $87
	ld   l, l                                        ; $4aa2: $6d
	ld   d, d                                        ; $4aa3: $52
	ld   [hl], c                                     ; $4aa4: $71
	ld   [hl], h                                     ; $4aa5: $74
	rst  $38                                         ; $4aa6: $ff
	rst  $38                                         ; $4aa7: $ff
	dec  c                                           ; $4aa8: $0d
	ld   l, [hl]                                     ; $4aa9: $6e
	ld   e, c                                        ; $4aaa: $59
	sub  a                                           ; $4aab: $97
	db   $dd                                         ; $4aac: $dd
	db   $ed                                         ; $4aad: $ed
	cp   b                                           ; $4aae: $b8
	jp   nz, $03a0                                   ; $4aaf: $c2 $a0 $03

	xor  h                                           ; $4ab2: $ac
	ld   [hl], c                                     ; $4ab3: $71
	ld   l, l                                        ; $4ab4: $6d
	ld   a, h                                        ; $4ab5: $7c
	sbc  a                                           ; $4ab6: $9f
	dec  c                                           ; $4ab7: $0d
	nop                                              ; $4ab8: $00
	ld   a, [bc]                                     ; $4ab9: $0a
	ld   bc, $956f                                   ; $4aba: $01 $6f $95
	ld   [hl], c                                     ; $4abd: $71
	halt                                             ; $4abe: $76
	inc  b                                           ; $4abf: $04
	jp   nc, $9502                                   ; $4ac0: $d2 $02 $95

	ld   h, l                                        ; $4ac3: $65
	ld   [hl], h                                     ; $4ac4: $74
	ld   e, l                                        ; $4ac5: $5d
	sbc  d                                           ; $4ac6: $9a
	sbc  c                                           ; $4ac7: $99
	ld   sp, hl                                      ; $4ac8: $f9
	dec  c                                           ; $4ac9: $0d
	nop                                              ; $4aca: $00
	ld   a, [bc]                                     ; $4acb: $0a
	dec  c                                           ; $4acc: $0d
	nop                                              ; $4acd: $00
	nop                                              ; $4ace: $00
	db   $10                                         ; $4acf: $10
	ld   e, $00                                      ; $4ad0: $1e $00
	rrca                                             ; $4ad2: $0f
	nop                                              ; $4ad3: $00
	ld   bc, $7501                                   ; $4ad4: $01 $01 $75
	ld   a, l                                        ; $4ad7: $7d
	sbc  [hl]                                        ; $4ad8: $9e
	ld   e, b                                        ; $4ad9: $58
	ld   [bc], a                                     ; $4ada: $02
	sbc  l                                           ; $4adb: $9d
	inc  b                                           ; $4adc: $04
	sub  c                                           ; $4add: $91
	ld   a, c                                        ; $4ade: $79
	dec  b                                           ; $4adf: $05
	and  c                                           ; $4ae0: $a1
	ld   d, [hl]                                     ; $4ae1: $56
	ld   [hl], h                                     ; $4ae2: $74
	rst  $38                                         ; $4ae3: $ff
	rst  $38                                         ; $4ae4: $ff
	dec  c                                           ; $4ae5: $0d
	nop                                              ; $4ae6: $00
	ld   a, [bc]                                     ; $4ae7: $0a
	inc  e                                           ; $4ae8: $1c
	inc  bc                                          ; $4ae9: $03
	nop                                              ; $4aea: $00
	nop                                              ; $4aeb: $00
	ld   bc, $5477                                   ; $4aec: $01 $77 $54
	ld   e, c                                        ; $4aef: $59
	ld   h, l                                        ; $4af0: $65
	sub  a                                           ; $4af1: $97
	rst  $38                                         ; $4af2: $ff
	rst  $38                                         ; $4af3: $ff
	ld   sp, hl                                      ; $4af4: $f9
	dec  c                                           ; $4af5: $0d
	nop                                              ; $4af6: $00
	ld   a, [bc]                                     ; $4af7: $0a
	add  hl, de                                      ; $4af8: $19
	dec  b                                           ; $4af9: $05
	ld   [bc], a                                     ; $4afa: $02
	ld   e, b                                        ; $4afb: $58
	ld   d, d                                        ; $4afc: $52
	ld   h, l                                        ; $4afd: $65
	ld   d, d                                        ; $4afe: $52
	ld   a, [rRAMG]                                  ; $4aff: $fa $00 $00
	adc  h                                           ; $4b02: $8c
	ld   l, b                                        ; $4b03: $68
	ld   d, d                                        ; $4b04: $52
	ld   a, [$0100]                                  ; $4b05: $fa $00 $01
	rlca                                             ; $4b08: $07
	or   h                                           ; $4b09: $b4
	nop                                              ; $4b0a: $00
	ld   [bc], a                                     ; $4b0b: $02
	inc  bc                                          ; $4b0c: $03
	ld   bc, $2000                                   ; $4b0d: $01 $00 $20
	nop                                              ; $4b10: $00
	rlca                                             ; $4b11: $07
	rlca                                             ; $4b12: $07
	ld   bc, $0302                                   ; $4b13: $01 $02 $03
	ld   bc, $2001                                   ; $4b16: $01 $01 $20
	nop                                              ; $4b19: $00
	ld   b, $3b                                      ; $4b1a: $06 $3b
	ld   bc, $000f                                   ; $4b1c: $01 $0f $00
	ld   bc, $5801                                   ; $4b1f: $01 $01 $58
	ld   d, d                                        ; $4b22: $52
	ld   h, l                                        ; $4b23: $65
	ld   d, d                                        ; $4b24: $52
	ld   a, [$000d]                                  ; $4b25: $fa $0d $00
	ld   a, [bc]                                     ; $4b28: $0a
	inc  e                                           ; $4b29: $1c
	inc  bc                                          ; $4b2a: $03
	inc  bc                                          ; $4b2b: $03
	inc  bc                                          ; $4b2c: $03
	dec  e                                           ; $4b2d: $1d
	ld   b, b                                        ; $4b2e: $40
	inc  de                                          ; $4b2f: $13
	inc  bc                                          ; $4b30: $03
	inc  de                                          ; $4b31: $13
	ld   bc, $2803                                   ; $4b32: $01 $03 $28
	nop                                              ; $4b35: $00
	ld   bc, $5996                                   ; $4b36: $01 $96 $59
	ld   [hl], c                                     ; $4b39: $71
	ld   l, l                                        ; $4b3a: $6d
	sbc  l                                           ; $4b3b: $9d
	sbc  a                                           ; $4b3c: $9f
	dec  c                                           ; $4b3d: $0d
	ld   [bc], a                                     ; $4b3e: $02
	and  l                                           ; $4b3f: $a5
	inc  b                                           ; $4b40: $04
	xor  d                                           ; $4b41: $aa
	ld   a, h                                        ; $4b42: $7c
	ld   a, l                                        ; $4b43: $7d
	ld   l, a                                        ; $4b44: $6f
	sub  l                                           ; $4b45: $95
	ld   [hl], c                                     ; $4b46: $71
	halt                                             ; $4b47: $76
	dec  c                                           ; $4b48: $0d
	inc  bc                                          ; $4b49: $03
	sub  h                                           ; $4b4a: $94
	ld   [bc], a                                     ; $4b4b: $02
	ld   hl, sp+$50                                  ; $4b4c: $f8 $50
	ld   [hl], c                                     ; $4b4e: $71
	ld   l, l                                        ; $4b4f: $6d
	ld   a, h                                        ; $4b50: $7c
	sbc  a                                           ; $4b51: $9f
	dec  c                                           ; $4b52: $0d
	nop                                              ; $4b53: $00
	ld   a, [bc]                                     ; $4b54: $0a
	ld   bc, $9166                                   ; $4b55: $01 $66 $91
	ld   d, b                                        ; $4b58: $50
	sbc  [hl]                                        ; $4b59: $9e
	ld   l, l                                        ; $4b5a: $6d
	ld   e, l                                        ; $4b5b: $5d
	ld   h, e                                        ; $4b5c: $63
	and  c                                           ; $4b5d: $a1
	inc  bc                                          ; $4b5e: $03
	ld   l, d                                        ; $4b5f: $6a
	add  a                                           ; $4b60: $87
	ld   [hl], h                                     ; $4b61: $74
	ld   d, d                                        ; $4b62: $52
	ld   [hl], c                                     ; $4b63: $71
	ld   [hl], h                                     ; $4b64: $74
	dec  c                                           ; $4b65: $0d
	ld   l, a                                        ; $4b66: $6f
	sub  l                                           ; $4b67: $95
	ld   d, h                                        ; $4b68: $54
	ld   l, [hl]                                     ; $4b69: $6e
	ld   d, d                                        ; $4b6a: $52
	sbc  a                                           ; $4b6b: $9f
	dec  c                                           ; $4b6c: $0d
	nop                                              ; $4b6d: $00
	ld   a, [bc]                                     ; $4b6e: $0a
	nop                                              ; $4b6f: $00
	rrca                                             ; $4b70: $0f
	nop                                              ; $4b71: $00
	ld   bc, $8c01                                   ; $4b72: $01 $01 $8c
	ld   l, b                                        ; $4b75: $68
	ld   d, d                                        ; $4b76: $52
	ld   a, [$000d]                                  ; $4b77: $fa $0d $00
	ld   a, [bc]                                     ; $4b7a: $0a
	inc  e                                           ; $4b7b: $1c
	inc  bc                                          ; $4b7c: $03
	inc  b                                           ; $4b7d: $04
	inc  b                                           ; $4b7e: $04
	dec  e                                           ; $4b7f: $1d
	ld   b, b                                        ; $4b80: $40
	inc  de                                          ; $4b81: $13
	inc  bc                                          ; $4b82: $03
	inc  de                                          ; $4b83: $13
	ld   bc, $2903                                   ; $4b84: $01 $03 $29
	nop                                              ; $4b87: $00
	ld   bc, $546b                                   ; $4b88: $01 $6b $54
	rst  $38                                         ; $4b8b: $ff
	rst  $38                                         ; $4b8c: $ff
	dec  c                                           ; $4b8d: $0d
	ld   e, b                                        ; $4b8e: $58
	ld   [bc], a                                     ; $4b8f: $02
	xor  [hl]                                        ; $4b90: $ae
	ld   a, c                                        ; $4b91: $79
	ld   d, b                                        ; $4b92: $50
	sbc  l                                           ; $4b93: $9d
	ld   a, b                                        ; $4b94: $78
	ld   e, l                                        ; $4b95: $5d
	ld   [hl], h                                     ; $4b96: $74
	inc  bc                                          ; $4b97: $03
	jr   z, jr_05d_4b9e                              ; $4b98: $28 $04

	ld   c, b                                        ; $4b9a: $48
	ld   l, [hl]                                     ; $4b9b: $6e
	sbc  l                                           ; $4b9c: $9d
	sbc  a                                           ; $4b9d: $9f

jr_05d_4b9e:
	dec  c                                           ; $4b9e: $0d
	nop                                              ; $4b9f: $00
	ld   a, [bc]                                     ; $4ba0: $0a
	ld   b, $5b                                      ; $4ba1: $06 $5b
	ld   bc, $031c                                   ; $4ba3: $01 $1c $03
	inc  b                                           ; $4ba6: $04
	inc  b                                           ; $4ba7: $04
	dec  e                                           ; $4ba8: $1d
	ld   b, b                                        ; $4ba9: $40
	inc  de                                          ; $4baa: $13
	inc  bc                                          ; $4bab: $03
	inc  de                                          ; $4bac: $13
	ld   bc, $2902                                   ; $4bad: $01 $02 $29
	nop                                              ; $4bb0: $00
	ld   bc, $0258                                   ; $4bb1: $01 $58 $02
	xor  [hl]                                        ; $4bb4: $ae
	ld   a, c                                        ; $4bb5: $79
	ld   d, b                                        ; $4bb6: $50
	sbc  l                                           ; $4bb7: $9d
	ld   a, b                                        ; $4bb8: $78
	ld   e, c                                        ; $4bb9: $59
	ld   [hl], c                                     ; $4bba: $71
	ld   l, l                                        ; $4bbb: $6d
	sub  [hl]                                        ; $4bbc: $96
	ld   d, h                                        ; $4bbd: $54
	ld   a, e                                        ; $4bbe: $7b
	rst  $38                                         ; $4bbf: $ff
	rst  $38                                         ; $4bc0: $ff
	dec  c                                           ; $4bc1: $0d
	nop                                              ; $4bc2: $00
	ld   a, [bc]                                     ; $4bc3: $0a
	ld   bc, $0d03                                   ; $4bc4: $01 $03 $0d
	inc  b                                           ; $4bc7: $04
	ld   a, b                                        ; $4bc8: $78
	ld   a, b                                        ; $4bc9: $78
	ld   d, d                                        ; $4bca: $52
	sbc  l                                           ; $4bcb: $9d
	ld   a, e                                        ; $4bcc: $7b
	rst  $38                                         ; $4bcd: $ff
	rst  $38                                         ; $4bce: $ff
	dec  c                                           ; $4bcf: $0d
	xor  h                                           ; $4bd0: $ac
	push af                                          ; $4bd1: $f5
	bit  7, c                                        ; $4bd2: $cb $79
	inc  bc                                          ; $4bd4: $03
	ld   l, d                                        ; $4bd5: $6a
	add  a                                           ; $4bd6: $87
	ld   [hl], h                                     ; $4bd7: $74
	sub  b                                           ; $4bd8: $90
	sub  a                                           ; $4bd9: $97
	ld   d, h                                        ; $4bda: $54
	sbc  l                                           ; $4bdb: $9d
	sbc  a                                           ; $4bdc: $9f
	dec  c                                           ; $4bdd: $0d
	nop                                              ; $4bde: $00
	ld   a, [bc]                                     ; $4bdf: $0a
	nop                                              ; $4be0: $00
	nop                                              ; $4be1: $00
	inc  bc                                          ; $4be2: $03
	ld   [de], a                                     ; $4be3: $12
	ld   bc, $2578                                   ; $4be4: $01 $78 $25
	nop                                              ; $4be7: $00
	ld   d, $03                                      ; $4be8: $16 $03
	rrca                                             ; $4bea: $0f
	nop                                              ; $4beb: $00
	ld   bc, $0102                                   ; $4bec: $01 $02 $01
	ld   bc, $5803                                   ; $4bef: $01 $03 $58
	ld   e, b                                        ; $4bf2: $58
	ld   a, [$6710]                                  ; $4bf3: $fa $10 $67
	adc  l                                           ; $4bf6: $8d
	sbc  d                                           ; $4bf7: $9a
	ld   h, e                                        ; $4bf8: $63
	and  c                                           ; $4bf9: $a1
	ld   l, [hl]                                     ; $4bfa: $6e
	rst  $38                                         ; $4bfb: $ff
	rst  $38                                         ; $4bfc: $ff
	ld   bc, $0d04                                   ; $4bfd: $01 $04 $0d
	nop                                              ; $4c00: $00
	ld   a, [bc]                                     ; $4c01: $0a
	dec  b                                           ; $4c02: $05
	add  b                                           ; $4c03: $80
	inc  e                                           ; $4c04: $1c
	ld   bc, $0001                                   ; $4c05: $01 $01 $00
	add  hl, de                                      ; $4c08: $19
	dec  b                                           ; $4c09: $05
	ld   [bc], a                                     ; $4c0a: $02
	ld   [bc], a                                     ; $4c0b: $02
	and  b                                           ; $4c0c: $a0
	ld   [hl], e                                     ; $4c0d: $73
	ld   e, l                                        ; $4c0e: $5d
	nop                                              ; $4c0f: $00
	nop                                              ; $4c10: $00
	dec  b                                           ; $4c11: $05
	ld   d, $6f                                      ; $4c12: $16 $6f
	ld   [bc], a                                     ; $4c14: $02
	ld   d, e                                        ; $4c15: $53
	sbc  c                                           ; $4c16: $99
	nop                                              ; $4c17: $00
	ld   bc, $9907                                   ; $4c18: $01 $07 $99
	nop                                              ; $4c1b: $00
	ld   [bc], a                                     ; $4c1c: $02
	inc  bc                                          ; $4c1d: $03
	ld   bc, $2000                                   ; $4c1e: $01 $00 $20
	nop                                              ; $4c21: $00
	rlca                                             ; $4c22: $07
	ld   b, [hl]                                     ; $4c23: $46
	nop                                              ; $4c24: $00
	ld   [bc], a                                     ; $4c25: $02
	inc  bc                                          ; $4c26: $03
	ld   bc, $2001                                   ; $4c27: $01 $01 $20
	nop                                              ; $4c2a: $00
	ld   b, $6d                                      ; $4c2b: $06 $6d
	nop                                              ; $4c2d: $00
	rrca                                             ; $4c2e: $0f
	nop                                              ; $4c2f: $00
	ld   bc, $0101                                   ; $4c30: $01 $01 $01
	inc  bc                                          ; $4c33: $03
	sub  d                                           ; $4c34: $92
	ld   [hl], c                                     ; $4c35: $71
	ld   a, a                                        ; $4c36: $7f
	sbc  b                                           ; $4c37: $98
	sbc  [hl]                                        ; $4c38: $9e
	ld   a, h                                        ; $4c39: $7c
	ld   l, h                                        ; $4c3a: $6c
	ld   e, e                                        ; $4c3b: $5b
	ld   a, l                                        ; $4c3c: $7d
	pop  bc                                          ; $4c3d: $c1
	db   $e3                                         ; $4c3e: $e3
	ld   l, [hl]                                     ; $4c3f: $6e
	sub  [hl]                                        ; $4c40: $96
	dec  c                                           ; $4c41: $0d
	db   $10                                         ; $4c42: $10
	ld   h, c                                        ; $4c43: $61
	ld   h, c                                        ; $4c44: $61
	ld   a, l                                        ; $4c45: $7d
	ld   d, d                                        ; $4c46: $52
	ld   h, e                                        ; $4c47: $63
	ld   e, h                                        ; $4c48: $5c
	sub  [hl]                                        ; $4c49: $96
	ld   e, l                                        ; $4c4a: $5d
	ld   [bc], a                                     ; $4c4b: $02
	ld   d, e                                        ; $4c4c: $53
	sbc  e                                           ; $4c4d: $9b
	ld   d, h                                        ; $4c4e: $54
	ld   bc, $0d04                                   ; $4c4f: $01 $04 $0d
	nop                                              ; $4c52: $00
	ld   a, [bc]                                     ; $4c53: $0a
	nop                                              ; $4c54: $00
	rrca                                             ; $4c55: $0f
	ld   [bc], a                                     ; $4c56: $02
	ld   de, $0301                                   ; $4c57: $11 $01 $03
	xor  c                                           ; $4c5a: $a9
	ld   e, c                                        ; $4c5b: $59
	ld   l, e                                        ; $4c5c: $6b
	ld   h, c                                        ; $4c5d: $61
	ld   a, c                                        ; $4c5e: $79
	ld   d, d                                        ; $4c5f: $52
	sub  a                                           ; $4c60: $97
	ld   [hl], c                                     ; $4c61: $71
	ld   h, l                                        ; $4c62: $65
	sub  c                                           ; $4c63: $91
	sbc  c                                           ; $4c64: $99
	ld   a, h                                        ; $4c65: $7c
	ld   sp, hl                                      ; $4c66: $f9
	dec  c                                           ; $4c67: $0d
	nop                                              ; $4c68: $00
	ld   a, [bc]                                     ; $4c69: $0a
	rrca                                             ; $4c6a: $0f
	nop                                              ; $4c6b: $00
	ld   bc, $0101                                   ; $4c6c: $01 $01 $01
	inc  bc                                          ; $4c6f: $03
	adc  h                                           ; $4c70: $8c
	ld   l, b                                        ; $4c71: $68
	ld   d, d                                        ; $4c72: $52
	rst  $38                                         ; $4c73: $ff
	rst  $38                                         ; $4c74: $ff
	inc  bc                                          ; $4c75: $03
	push de                                          ; $4c76: $d5
	ld   h, b                                        ; $4c77: $60
	sub  [hl]                                        ; $4c78: $96
	ld   d, h                                        ; $4c79: $54
	ld   a, [$0401]                                  ; $4c7a: $fa $01 $04
	dec  c                                           ; $4c7d: $0d
	nop                                              ; $4c7e: $00
	ld   a, [bc]                                     ; $4c7f: $0a
	nop                                              ; $4c80: $00
	rrca                                             ; $4c81: $0f
	nop                                              ; $4c82: $00
	ld   bc, $0101                                   ; $4c83: $01 $01 $01
	inc  bc                                          ; $4c86: $03
	sub  b                                           ; $4c87: $90
	ld   d, h                                        ; $4c88: $54
	inc  bc                                          ; $4c89: $03
	ld   l, h                                        ; $4c8a: $6c
	ld   h, l                                        ; $4c8b: $65
	ld   [bc], a                                     ; $4c8c: $02
	and  b                                           ; $4c8d: $a0
	ld   [hl], e                                     ; $4c8e: $73
	ld   d, d                                        ; $4c8f: $52
	ld   [hl], h                                     ; $4c90: $74
	adc  l                                           ; $4c91: $8d
	sub  [hl]                                        ; $4c92: $96
	ld   d, h                                        ; $4c93: $54
	ld   bc, $0d04                                   ; $4c94: $01 $04 $0d
	nop                                              ; $4c97: $00
	ld   a, [bc]                                     ; $4c98: $0a
	rlca                                             ; $4c99: $07
	rrca                                             ; $4c9a: $0f
	ld   bc, $1203                                   ; $4c9b: $01 $03 $12
	ld   bc, $238c                                   ; $4c9e: $01 $8c $23
	nop                                              ; $4ca1: $00
	rrca                                             ; $4ca2: $0f
	ld   [bc], a                                     ; $4ca3: $02
	ld   [de], a                                     ; $4ca4: $12
	ld   bc, $6763                                   ; $4ca5: $01 $63 $67
	ld   e, d                                        ; $4ca8: $5a
	sbc  l                                           ; $4ca9: $9d
	ld   l, l                                        ; $4caa: $6d
	ld   e, l                                        ; $4cab: $5d
	ld   h, l                                        ; $4cac: $65
	sbc  [hl]                                        ; $4cad: $9e
	dec  c                                           ; $4cae: $0d
	ld   a, b                                        ; $4caf: $78
	and  c                                           ; $4cb0: $a1
	ld   [hl], h                                     ; $4cb1: $74
	dec  b                                           ; $4cb2: $05
	and  b                                           ; $4cb3: $a0
	adc  b                                           ; $4cb4: $88
	ld   e, e                                        ; $4cb5: $5b
	ld   a, b                                        ; $4cb6: $78
	dec  c                                           ; $4cb7: $0d
	cp   d                                           ; $4cb8: $ba
	ret  nz                                          ; $4cb9: $c0

	and  l                                           ; $4cba: $a5
	db   $ed                                         ; $4cbb: $ed
	ld   a, b                                        ; $4cbc: $78
	ld   a, h                                        ; $4cbd: $7c
	ld   e, c                                        ; $4cbe: $59
	ld   h, l                                        ; $4cbf: $65
	sub  a                                           ; $4cc0: $97
	rst  $38                                         ; $4cc1: $ff
	rst  $38                                         ; $4cc2: $ff
	dec  c                                           ; $4cc3: $0d
	nop                                              ; $4cc4: $00
	ld   a, [bc]                                     ; $4cc5: $0a
	add  hl, de                                      ; $4cc6: $19
	dec  b                                           ; $4cc7: $05
	ld   bc, $c004                                   ; $4cc8: $01 $04 $c0
	inc  bc                                          ; $4ccb: $03
	ld   a, l                                        ; $4ccc: $7d
	ld   h, l                                        ; $4ccd: $65
	ld   l, l                                        ; $4cce: $6d
	nop                                              ; $4ccf: $00
	nop                                              ; $4cd0: $00
	rlca                                             ; $4cd1: $07
	push af                                          ; $4cd2: $f5
	nop                                              ; $4cd3: $00
	ld   [bc], a                                     ; $4cd4: $02
	inc  bc                                          ; $4cd5: $03
	ld   bc, $2000                                   ; $4cd6: $01 $00 $20
	nop                                              ; $4cd9: $00
	ld   b, $0f                                      ; $4cda: $06 $0f
	ld   bc, $000f                                   ; $4cdc: $01 $0f $00
	ld   bc, $0101                                   ; $4cdf: $01 $01 $01
	inc  bc                                          ; $4ce2: $03
	ld   l, e                                        ; $4ce3: $6b
	sbc  e                                           ; $4ce4: $9b
	ld   l, e                                        ; $4ce5: $6b
	sbc  e                                           ; $4ce6: $9b
	ld   [bc], a                                     ; $4ce7: $02
	inc  l                                           ; $4ce8: $2c
	ld   e, e                                        ; $4ce9: $5b
	inc  bc                                          ; $4cea: $03
	ld   h, l                                        ; $4ceb: $65
	ld   h, b                                        ; $4cec: $60
	sub  [hl]                                        ; $4ced: $96
	ld   d, h                                        ; $4cee: $54
	rst  $38                                         ; $4cef: $ff
	rst  $38                                         ; $4cf0: $ff
	ld   bc, $0d04                                   ; $4cf1: $01 $04 $0d
	nop                                              ; $4cf4: $00
	ld   a, [bc]                                     ; $4cf5: $0a
	nop                                              ; $4cf6: $00
	rrca                                             ; $4cf7: $0f
	ld   [bc], a                                     ; $4cf8: $02
	inc  d                                           ; $4cf9: $14
	ld   bc, $ffff                                   ; $4cfa: $01 $ff $ff
	ld   a, [$030d]                                  ; $4cfd: $fa $0d $03
	xor  c                                           ; $4d00: $a9
	ld   sp, hl                                      ; $4d01: $f9
	db   $10                                         ; $4d02: $10
	dec  c                                           ; $4d03: $0d
	ld   l, e                                        ; $4d04: $6b
	ld   h, c                                        ; $4d05: $61
	ld   a, c                                        ; $4d06: $79
	inc  bc                                          ; $4d07: $03
	xor  c                                           ; $4d08: $a9
	ld   e, c                                        ; $4d09: $59
	ld   d, d                                        ; $4d0a: $52
	adc  h                                           ; $4d0b: $8c
	ld   h, a                                        ; $4d0c: $67
	ld   a, h                                        ; $4d0d: $7c
	ld   a, [$000d]                                  ; $4d0e: $fa $0d $00
	ld   a, [bc]                                     ; $4d11: $0a
	rrca                                             ; $4d12: $0f
	nop                                              ; $4d13: $00
	ld   bc, $0101                                   ; $4d14: $01 $01 $01
	inc  bc                                          ; $4d17: $03
	ld   [bc], a                                     ; $4d18: $02
	and  c                                           ; $4d19: $a1
	ld   [hl], e                                     ; $4d1a: $73
	ld   e, c                                        ; $4d1b: $59
	sbc  d                                           ; $4d1c: $9a
	ld   l, l                                        ; $4d1d: $6d
	ld   a, [$0401]                                  ; $4d1e: $fa $01 $04
	dec  c                                           ; $4d21: $0d
	nop                                              ; $4d22: $00
	ld   a, [bc]                                     ; $4d23: $0a
	add  hl, de                                      ; $4d24: $19
	dec  b                                           ; $4d25: $05
	inc  bc                                          ; $4d26: $03
	inc  bc                                          ; $4d27: $03
	db   $db                                         ; $4d28: $db
	ld   bc, $7614                                   ; $4d29: $01 $14 $76
	ld   h, a                                        ; $4d2c: $67
	sbc  c                                           ; $4d2d: $99
	nop                                              ; $4d2e: $00
	nop                                              ; $4d2f: $00
	sub  b                                           ; $4d30: $90
	ld   a, h                                        ; $4d31: $7c
	adc  h                                           ; $4d32: $8c
	ld   a, e                                        ; $4d33: $7b
	and  b                                           ; $4d34: $a0
	ld   h, a                                        ; $4d35: $67
	sbc  c                                           ; $4d36: $99
	nop                                              ; $4d37: $00
	ld   bc, $d503                                   ; $4d38: $01 $03 $d5
	ld   h, b                                        ; $4d3b: $60
	inc  bc                                          ; $4d3c: $03
	add  b                                           ; $4d3d: $80
	ld   h, a                                        ; $4d3e: $67
	nop                                              ; $4d3f: $00
	ld   [bc], a                                     ; $4d40: $02
	rlca                                             ; $4d41: $07
	ld   a, l                                        ; $4d42: $7d
	ld   bc, $0302                                   ; $4d43: $01 $02 $03
	ld   bc, $2000                                   ; $4d46: $01 $00 $20
	nop                                              ; $4d49: $00
	rlca                                             ; $4d4a: $07
	add  hl, de                                      ; $4d4b: $19
	ld   [bc], a                                     ; $4d4c: $02
	ld   [bc], a                                     ; $4d4d: $02
	inc  bc                                          ; $4d4e: $03
	ld   bc, $2001                                   ; $4d4f: $01 $01 $20
	nop                                              ; $4d52: $00
	rlca                                             ; $4d53: $07
	adc  l                                           ; $4d54: $8d
	ld   [bc], a                                     ; $4d55: $02
	ld   [bc], a                                     ; $4d56: $02
	inc  bc                                          ; $4d57: $03
	ld   bc, $2002                                   ; $4d58: $01 $02 $20
	nop                                              ; $4d5b: $00
	ld   b, $77                                      ; $4d5c: $06 $77
	ld   bc, $000f                                   ; $4d5e: $01 $0f $00
	ld   bc, $e206                                   ; $4d61: $01 $06 $e2
	ld   [bc], a                                     ; $4d64: $02
	rrca                                             ; $4d65: $0f
	nop                                              ; $4d66: $00
	ld   bc, $0101                                   ; $4d67: $01 $01 $01
	inc  bc                                          ; $4d6a: $03
	ld   h, c                                        ; $4d6b: $61
	ld   h, c                                        ; $4d6c: $61
	ld   a, l                                        ; $4d6d: $7d
	inc  bc                                          ; $4d6e: $03
	db   $db                                         ; $4d6f: $db
	ld   bc, $7614                                   ; $4d70: $01 $14 $76
	rst  $38                                         ; $4d73: $ff
	rst  $38                                         ; $4d74: $ff
	ld   bc, $0d04                                   ; $4d75: $01 $04 $0d
	nop                                              ; $4d78: $00
	ld   a, [bc]                                     ; $4d79: $0a
	ld   bc, $9e50                                   ; $4d7a: $01 $50 $9e
	ld   h, a                                        ; $4d7d: $67
	adc  l                                           ; $4d7e: $8d
	adc  h                                           ; $4d7f: $8c
	ld   l, c                                        ; $4d80: $69
	and  c                                           ; $4d81: $a1
	rst  $38                                         ; $4d82: $ff
	rst  $38                                         ; $4d83: $ff
	dec  c                                           ; $4d84: $0d
	ld   [hl], a                                     ; $4d85: $77
	ld   a, b                                        ; $4d86: $78
	ld   l, l                                        ; $4d87: $6d
	ld   e, c                                        ; $4d88: $59
	inc  b                                           ; $4d89: $04
	ld   b, l                                        ; $4d8a: $45
	ld   [hl], c                                     ; $4d8b: $71
	ld   [hl], h                                     ; $4d8c: $74
	sub  a                                           ; $4d8d: $97
	ld   [hl], c                                     ; $4d8e: $71
	ld   h, l                                        ; $4d8f: $65
	sub  c                                           ; $4d90: $91
	sbc  c                                           ; $4d91: $99
	and  c                                           ; $4d92: $a1
	dec  c                                           ; $4d93: $0d
	ld   [hl], l                                     ; $4d94: $75
	ld   h, a                                        ; $4d95: $67
	ld   a, e                                        ; $4d96: $7b
	ld   sp, hl                                      ; $4d97: $f9
	dec  c                                           ; $4d98: $0d
	nop                                              ; $4d99: $00
	ld   a, [bc]                                     ; $4d9a: $0a
	rrca                                             ; $4d9b: $0f
	ld   [bc], a                                     ; $4d9c: $02
	ld   de, $5001                                   ; $4d9d: $11 $01 $50
	sbc  [hl]                                        ; $4da0: $9e
	ld   [$6300], sp                                 ; $4da1: $08 $00 $63
	and  c                                           ; $4da4: $a1
	ld   sp, hl                                      ; $4da5: $f9
	dec  c                                           ; $4da6: $0d
	sbc  l                                           ; $4da7: $9d
	ld   l, l                                        ; $4da8: $6d
	ld   e, l                                        ; $4da9: $5d
	ld   h, l                                        ; $4daa: $65
	ld   [hl], l                                     ; $4dab: $75
	ld   h, a                                        ; $4dac: $67
	sbc  l                                           ; $4dad: $9d
	sbc  a                                           ; $4dae: $9f
	dec  c                                           ; $4daf: $0d
	nop                                              ; $4db0: $00
	ld   a, [bc]                                     ; $4db1: $0a
	rrca                                             ; $4db2: $0f
	nop                                              ; $4db3: $00
	ld   bc, $6701                                   ; $4db4: $01 $01 $67
	adc  l                                           ; $4db7: $8d
	sbc  d                                           ; $4db8: $9a
	ld   h, e                                        ; $4db9: $63
	and  c                                           ; $4dba: $a1
	ld   [hl], l                                     ; $4dbb: $75
	ld   h, l                                        ; $4dbc: $65
	ld   l, l                                        ; $4dbd: $6d
	ld   e, c                                        ; $4dbe: $59
	rst  $38                                         ; $4dbf: $ff
	rst  $38                                         ; $4dc0: $ff
	dec  c                                           ; $4dc1: $0d
	ld   h, c                                        ; $4dc2: $61
	sbc  d                                           ; $4dc3: $9a
	ld   a, l                                        ; $4dc4: $7d
	inc  bc                                          ; $4dc5: $03
	add  e                                           ; $4dc6: $83
	dec  b                                           ; $4dc7: $05
	dec  c                                           ; $4dc8: $0d
	ld   h, l                                        ; $4dc9: $65
	adc  h                                           ; $4dca: $8c
	ld   h, l                                        ; $4dcb: $65
	ld   l, l                                        ; $4dcc: $6d
	sbc  a                                           ; $4dcd: $9f
	dec  c                                           ; $4dce: $0d
	nop                                              ; $4dcf: $00
	ld   a, [bc]                                     ; $4dd0: $0a
	rrca                                             ; $4dd1: $0f
	ld   [bc], a                                     ; $4dd2: $02
	ld   de, $5201                                   ; $4dd3: $11 $01 $52
	ld   d, d                                        ; $4dd6: $52
	ld   d, [hl]                                     ; $4dd7: $56
	sbc  a                                           ; $4dd8: $9f
	dec  c                                           ; $4dd9: $0d
	ld   e, b                                        ; $4dda: $58
	ld   [bc], a                                     ; $4ddb: $02
	and  c                                           ; $4ddc: $a1
	and  b                                           ; $4ddd: $a0
	ld   [hl], d                                     ; $4dde: $72
	ld   e, a                                        ; $4ddf: $5f
	ld   a, c                                        ; $4de0: $79
	ld   a, b                                        ; $4de1: $78
	ld   [hl], c                                     ; $4de2: $71
	ld   [hl], h                                     ; $4de3: $74
	dec  c                                           ; $4de4: $0d
	ld   l, a                                        ; $4de5: $6f
	sub  l                                           ; $4de6: $95
	ld   d, h                                        ; $4de7: $54
	ld   l, [hl]                                     ; $4de8: $6e
	ld   d, d                                        ; $4de9: $52
	sbc  a                                           ; $4dea: $9f
	dec  c                                           ; $4deb: $0d
	nop                                              ; $4dec: $00
	ld   a, [bc]                                     ; $4ded: $0a
	rrca                                             ; $4dee: $0f
	nop                                              ; $4def: $00
	ld   bc, $0101                                   ; $4df0: $01 $01 $01
	inc  bc                                          ; $4df3: $03
	inc  bc                                          ; $4df4: $03
	ld   e, e                                        ; $4df5: $5b
	ld   e, c                                        ; $4df6: $59
	ld   [hl], c                                     ; $4df7: $71
	ld   l, l                                        ; $4df8: $6d
	rst  $38                                         ; $4df9: $ff
	rst  $38                                         ; $4dfa: $ff
	ld   bc, $0d04                                   ; $4dfb: $01 $04 $0d
	nop                                              ; $4dfe: $00
	ld   a, [bc]                                     ; $4dff: $0a
	nop                                              ; $4e00: $00
	rrca                                             ; $4e01: $0f
	nop                                              ; $4e02: $00
	ld   bc, $0101                                   ; $4e03: $01 $01 $01
	inc  bc                                          ; $4e06: $03
	ld   h, c                                        ; $4e07: $61
	ld   d, h                                        ; $4e08: $54
	ld   a, b                                        ; $4e09: $78
	ld   [hl], c                                     ; $4e0a: $71
	ld   l, l                                        ; $4e0b: $6d
	sub  a                                           ; $4e0c: $97
	rst  $38                                         ; $4e0d: $ff
	rst  $38                                         ; $4e0e: $ff
	ld   bc, $0d04                                   ; $4e0f: $01 $04 $0d
	nop                                              ; $4e12: $00
	ld   a, [bc]                                     ; $4e13: $0a
	ld   bc, $e5cc                                   ; $4e14: $01 $cc $e5
	ei                                               ; $4e17: $fb
	xor  e                                           ; $4e18: $ab
	sbc  a                                           ; $4e19: $9f
	dec  c                                           ; $4e1a: $0d
	nop                                              ; $4e1b: $00
	ld   a, [bc]                                     ; $4e1c: $0a
	rrca                                             ; $4e1d: $0f
	ld   [bc], a                                     ; $4e1e: $02
	ld   de, $5001                                   ; $4e1f: $11 $01 $50
	sub  a                                           ; $4e22: $97
	sbc  [hl]                                        ; $4e23: $9e
	adc  $b4                                         ; $4e24: $ce $b4
	ld   l, a                                        ; $4e26: $6f
	sub  c                                           ; $4e27: $91
	and  c                                           ; $4e28: $a1
	ld   [hl], l                                     ; $4e29: $75
	ld   h, l                                        ; $4e2a: $65
	ld   l, l                                        ; $4e2b: $6d
	ld   a, h                                        ; $4e2c: $7c
	rst  $38                                         ; $4e2d: $ff
	rst  $38                                         ; $4e2e: $ff
	dec  c                                           ; $4e2f: $0d
	nop                                              ; $4e30: $00
	ld   a, [bc]                                     ; $4e31: $0a
	rrca                                             ; $4e32: $0f
	nop                                              ; $4e33: $00
	ld   bc, $0101                                   ; $4e34: $01 $01 $01
	inc  bc                                          ; $4e37: $03
	inc  bc                                          ; $4e38: $03
	ld   e, e                                        ; $4e39: $5b
	ld   e, c                                        ; $4e3a: $59
	ld   [hl], c                                     ; $4e3b: $71
	ld   l, l                                        ; $4e3c: $6d
	rst  $38                                         ; $4e3d: $ff
	rst  $38                                         ; $4e3e: $ff
	ld   bc, $0d04                                   ; $4e3f: $01 $04 $0d
	nop                                              ; $4e42: $00
	ld   a, [bc]                                     ; $4e43: $0a
	rrca                                             ; $4e44: $0f
	ld   [bc], a                                     ; $4e45: $02
	inc  de                                          ; $4e46: $13
	ld   bc, $ffff                                   ; $4e47: $01 $ff $ff
	ld   [hl], h                                     ; $4e4a: $74
	sbc  [hl]                                        ; $4e4b: $9e
	ld   l, e                                        ; $4e4c: $6b
	and  c                                           ; $4e4d: $a1
	ld   a, b                                        ; $4e4e: $78
	ld   a, c                                        ; $4e4f: $79
	ld   e, b                                        ; $4e50: $58
	ld   e, b                                        ; $4e51: $58
	ld   e, e                                        ; $4e52: $5b
	ld   a, b                                        ; $4e53: $78
	dec  c                                           ; $4e54: $0d
	adc  $b4                                         ; $4e55: $ce $b4
	ld   e, d                                        ; $4e57: $5a
	ld   d, d                                        ; $4e58: $52
	sbc  c                                           ; $4e59: $99
	sbc  l                                           ; $4e5a: $9d
	ld   e, a                                        ; $4e5b: $5f
	ld   h, d                                        ; $4e5c: $62
	ld   h, h                                        ; $4e5d: $64
	ld   d, d                                        ; $4e5e: $52
	adc  h                                           ; $4e5f: $8c
	ld   l, c                                        ; $4e60: $69
	and  c                                           ; $4e61: $a1
	dec  c                                           ; $4e62: $0d
	ld   [hl], l                                     ; $4e63: $75
	ld   h, l                                        ; $4e64: $65
	sub  l                                           ; $4e65: $95
	ld   a, [$000d]                                  ; $4e66: $fa $0d $00
	ld   a, [bc]                                     ; $4e69: $0a
	dec  c                                           ; $4e6a: $0d
	nop                                              ; $4e6b: $00
	nop                                              ; $4e6c: $00
	rrca                                             ; $4e6d: $0f
	nop                                              ; $4e6e: $00
	ld   bc, $020c                                   ; $4e6f: $01 $0c $02
	ld   b, $e2                                      ; $4e72: $06 $e2
	ld   [bc], a                                     ; $4e74: $02
	rrca                                             ; $4e75: $0f
	nop                                              ; $4e76: $00
	ld   bc, $0101                                   ; $4e77: $01 $01 $01
	inc  bc                                          ; $4e7a: $03
	ld   h, c                                        ; $4e7b: $61
	ld   h, c                                        ; $4e7c: $61
	ld   a, l                                        ; $4e7d: $7d
	inc  bc                                          ; $4e7e: $03
	push de                                          ; $4e7f: $d5
	ld   h, b                                        ; $4e80: $60
	sub  [hl]                                        ; $4e81: $96
	ld   d, h                                        ; $4e82: $54
	rst  $38                                         ; $4e83: $ff
	rst  $38                                         ; $4e84: $ff
	ld   bc, $0d04                                   ; $4e85: $01 $04 $0d
	nop                                              ; $4e88: $00
	ld   a, [bc]                                     ; $4e89: $0a
	ld   bc, $fa50                                   ; $4e8a: $01 $50 $fa
	dec  c                                           ; $4e8d: $0d
	pop  de                                          ; $4e8e: $d1
	set  1, e                                        ; $4e8f: $cb $cb
	ld   a, h                                        ; $4e91: $7c
	ld   b, $1c                                      ; $4e92: $06 $1c
	ld   e, d                                        ; $4e94: $5a
	ld   a, [$580d]                                  ; $4e95: $fa $0d $58
	sbc  [hl]                                        ; $4e98: $9e
	ld   e, b                                        ; $4e99: $58
	inc  b                                           ; $4e9a: $04
	ldh  [$03], a                                    ; $4e9b: $e0 $03
	dec  hl                                          ; $4e9d: $2b
	ld   h, a                                        ; $4e9e: $67
	ld   e, h                                        ; $4e9f: $5c
	sbc  c                                           ; $4ea0: $99
	ei                                               ; $4ea1: $fb
	ei                                               ; $4ea2: $fb
	ld   [hl], c                                     ; $4ea3: $71
	ld   a, [$000d]                                  ; $4ea4: $fa $0d $00
	ld   a, [bc]                                     ; $4ea7: $0a
	ld   bc, $9d54                                   ; $4ea8: $01 $54 $9d
	ld   [hl], c                                     ; $4eab: $71
	ld   a, [$000d]                                  ; $4eac: $fa $0d $00
	ld   a, [bc]                                     ; $4eaf: $0a
	inc  c                                           ; $4eb0: $0c
	rlca                                             ; $4eb1: $07
	inc  d                                           ; $4eb2: $14
	ld   [$0101], sp                                 ; $4eb3: $08 $01 $01
	ld   d, b                                        ; $4eb6: $50
	ld   l, l                                        ; $4eb7: $6d
	ld   l, l                                        ; $4eb8: $6d
	ld   l, l                                        ; $4eb9: $6d
	ld   l, l                                        ; $4eba: $6d
	ld   l, l                                        ; $4ebb: $6d
	ld   l, l                                        ; $4ebc: $6d
	rst  $38                                         ; $4ebd: $ff
	rst  $38                                         ; $4ebe: $ff
	dec  c                                           ; $4ebf: $0d
	nop                                              ; $4ec0: $00
	ld   a, [bc]                                     ; $4ec1: $0a
	dec  c                                           ; $4ec2: $0d
	nop                                              ; $4ec3: $00
	nop                                              ; $4ec4: $00
	rrca                                             ; $4ec5: $0f
	nop                                              ; $4ec6: $00
	ld   bc, $020c                                   ; $4ec7: $01 $0c $02
	ld   c, $69                                      ; $4eca: $0e $69
	inc  e                                           ; $4ecc: $1c
	ld   [bc], a                                     ; $4ecd: $02
	ld   [bc], a                                     ; $4ece: $02
	ld   [bc], a                                     ; $4ecf: $02
	dec  e                                           ; $4ed0: $1d
	ld   b, b                                        ; $4ed1: $40
	ld   [de], a                                     ; $4ed2: $12
	inc  bc                                          ; $4ed3: $03
	ld   [de], a                                     ; $4ed4: $12
	ld   bc, $2903                                   ; $4ed5: $01 $03 $29
	nop                                              ; $4ed8: $00
	ld   bc, $0008                                   ; $4ed9: $01 $08 $00
	ld   h, e                                        ; $4edc: $63
	and  c                                           ; $4edd: $a1
	ld   a, [$7c0d]                                  ; $4ede: $fa $0d $7c
	ld   l, h                                        ; $4ee1: $6c
	ld   e, e                                        ; $4ee2: $5b
	ld   l, [hl]                                     ; $4ee3: $6e
	ld   a, b                                        ; $4ee4: $78
	and  c                                           ; $4ee5: $a1
	ld   [hl], h                                     ; $4ee6: $74
	sbc  [hl]                                        ; $4ee7: $9e
	sbc  l                                           ; $4ee8: $9d
	ld   l, l                                        ; $4ee9: $6d
	ld   e, l                                        ; $4eea: $5d
	ld   h, l                                        ; $4eeb: $65
	dec  c                                           ; $4eec: $0d
	ld   [bc], a                                     ; $4eed: $02
	sub  l                                           ; $4eee: $95
	ld   l, e                                        ; $4eef: $6b
	ld   h, c                                        ; $4ef0: $61
	ld   a, b                                        ; $4ef1: $78
	ld   d, d                                        ; $4ef2: $52
	adc  h                                           ; $4ef3: $8c
	ld   h, l                                        ; $4ef4: $65
	ld   l, l                                        ; $4ef5: $6d
	sbc  l                                           ; $4ef6: $9d
	ld   a, [$000d]                                  ; $4ef7: $fa $0d $00
	ld   a, [bc]                                     ; $4efa: $0a
	dec  b                                           ; $4efb: $05
	ld   b, b                                        ; $4efc: $40
	ld   c, c                                        ; $4efd: $49
	ld   [bc], a                                     ; $4efe: $02
	nop                                              ; $4eff: $00
	nop                                              ; $4f00: $00
	inc  e                                           ; $4f01: $1c
	ld   [bc], a                                     ; $4f02: $02
	rlca                                             ; $4f03: $07
	rlca                                             ; $4f04: $07
	ld   bc, $f5d6                                   ; $4f05: $01 $d6 $f5
	ld   a, [$000d]                                  ; $4f08: $fa $0d $00
	ld   a, [bc]                                     ; $4f0b: $0a
	dec  b                                           ; $4f0c: $05
	ld   b, b                                        ; $4f0d: $40
	ld   c, a                                        ; $4f0e: $4f
	ld   bc, $0002                                   ; $4f0f: $01 $02 $00
	dec  c                                           ; $4f12: $0d
	nop                                              ; $4f13: $00
	nop                                              ; $4f14: $00
	rrca                                             ; $4f15: $0f
	nop                                              ; $4f16: $00
	ld   bc, $1e09                                   ; $4f17: $01 $09 $1e
	rlca                                             ; $4f1a: $07
	ld   b, e                                        ; $4f1b: $43
	inc  bc                                          ; $4f1c: $03
	inc  b                                           ; $4f1d: $04
	add  b                                           ; $4f1e: $80
	ld   b, $01                                      ; $4f1f: $06 $01
	rst  $38                                         ; $4f21: $ff
	jr   nz, jr_05d_4f24                             ; $4f22: $20 $00

jr_05d_4f24:
	dec  b                                           ; $4f24: $05
	add  b                                           ; $4f25: $80
	ld   b, $01                                      ; $4f26: $06 $01
	ld   bc, $0000                                   ; $4f28: $01 $00 $00
	inc  c                                           ; $4f2b: $0c
	ld   [bc], a                                     ; $4f2c: $02
	ld   c, $02                                      ; $4f2d: $0e $02
	rrca                                             ; $4f2f: $0f
	nop                                              ; $4f30: $00
	ld   bc, $5001                                   ; $4f31: $01 $01 $50
	rst  $38                                         ; $4f34: $ff
	rst  $38                                         ; $4f35: $ff
	sbc  [hl]                                        ; $4f36: $9e
	sub  d                                           ; $4f37: $92
	ld   a, [hl]                                     ; $4f38: $7e
	ld   d, d                                        ; $4f39: $52
	sub  [hl]                                        ; $4f3a: $96
	ld   a, b                                        ; $4f3b: $78
	db   $fc                                         ; $4f3c: $fc
	rst  $38                                         ; $4f3d: $ff
	rst  $38                                         ; $4f3e: $ff
	dec  c                                           ; $4f3f: $0d
	inc  bc                                          ; $4f40: $03
	add  b                                           ; $4f41: $80
	dec  b                                           ; $4f42: $05
	db   $10                                         ; $4f43: $10
	inc  bc                                          ; $4f44: $03
	ld   [hl], l                                     ; $4f45: $75
	halt                                             ; $4f46: $76
	ld   a, l                                        ; $4f47: $7d
	ld   d, d                                        ; $4f48: $52
	ld   d, [hl]                                     ; $4f49: $56
	rst  $38                                         ; $4f4a: $ff
	rst  $38                                         ; $4f4b: $ff
	rst  $38                                         ; $4f4c: $ff
	rst  $38                                         ; $4f4d: $ff
	dec  c                                           ; $4f4e: $0d
	rst  $38                                         ; $4f4f: $ff
	rst  $38                                         ; $4f50: $ff
	rst  $38                                         ; $4f51: $ff
	rst  $38                                         ; $4f52: $ff
	rst  $38                                         ; $4f53: $ff
	rst  $38                                         ; $4f54: $ff
	rst  $38                                         ; $4f55: $ff
	rst  $38                                         ; $4f56: $ff
	rst  $38                                         ; $4f57: $ff
	rst  $38                                         ; $4f58: $ff
	dec  c                                           ; $4f59: $0d
	nop                                              ; $4f5a: $00
	ld   a, [bc]                                     ; $4f5b: $0a
	inc  d                                           ; $4f5c: $14
	ld   b, $01                                      ; $4f5d: $06 $01
	rrca                                             ; $4f5f: $0f
	dec  bc                                          ; $4f60: $0b
	ld   [bc], a                                     ; $4f61: $02
	ld   bc, $0008                                   ; $4f62: $01 $08 $00
	ld   e, l                                        ; $4f65: $5d
	and  c                                           ; $4f66: $a1
	sbc  a                                           ; $4f67: $9f
	dec  c                                           ; $4f68: $0d
	ld   [bc], a                                     ; $4f69: $02
	and  l                                           ; $4f6a: $a5
	ld   h, a                                        ; $4f6b: $67
	ld   e, [hl]                                     ; $4f6c: $5e
	sbc  [hl]                                        ; $4f6d: $9e
	inc  bc                                          ; $4f6e: $03
	add  l                                           ; $4f6f: $85
	inc  b                                           ; $4f70: $04
	xor  e                                           ; $4f71: $ab
	inc  bc                                          ; $4f72: $03
	add  d                                           ; $4f73: $82
	inc  bc                                          ; $4f74: $03
	ld   c, l                                        ; $4f75: $4d
	ld   a, c                                        ; $4f76: $79
	dec  b                                           ; $4f77: $05
	db   $10                                         ; $4f78: $10
	ld   a, b                                        ; $4f79: $78
	ld   h, e                                        ; $4f7a: $63
	ld   d, d                                        ; $4f7b: $52
	sbc  a                                           ; $4f7c: $9f
	dec  c                                           ; $4f7d: $0d
	nop                                              ; $4f7e: $00
	ld   a, [bc]                                     ; $4f7f: $0a
	rrca                                             ; $4f80: $0f
	nop                                              ; $4f81: $00
	ld   bc, $020c                                   ; $4f82: $01 $0c $02
	add  hl, bc                                      ; $4f85: $09
	ld   e, $01                                      ; $4f86: $1e $01
	adc  h                                           ; $4f88: $8c
	sbc  [hl]                                        ; $4f89: $9e
	adc  h                                           ; $4f8a: $8c
	ld   h, e                                        ; $4f8b: $63
	ld   e, c                                        ; $4f8c: $59
	rst  $38                                         ; $4f8d: $ff
	rst  $38                                         ; $4f8e: $ff
	dec  c                                           ; $4f8f: $0d
	nop                                              ; $4f90: $00
	ld   a, [bc]                                     ; $4f91: $0a
	ld   c, $0e                                      ; $4f92: $0e $0e
	inc  e                                           ; $4f94: $1c
	ld   a, [bc]                                     ; $4f95: $0a
	inc  b                                           ; $4f96: $04
	inc  b                                           ; $4f97: $04
	ld   bc, $5258                                   ; $4f98: $01 $58 $52
	sbc  [hl]                                        ; $4f9b: $9e
	ld   [$9f00], sp                                 ; $4f9c: $08 $00 $9f
	dec  c                                           ; $4f9f: $0d
	ld   e, b                                        ; $4fa0: $58
	adc  a                                           ; $4fa1: $8f
	ei                                               ; $4fa2: $fb
	cp   b                                           ; $4fa3: $b8
	push hl                                          ; $4fa4: $e5
	pop  af                                          ; $4fa5: $f1
	ei                                               ; $4fa6: $fb
	ld   a, h                                        ; $4fa7: $7c
	ld   l, h                                        ; $4fa8: $6c
	ld   d, d                                        ; $4fa9: $52
	ld   [hl], h                                     ; $4faa: $74
	ld   l, l                                        ; $4fab: $6d
	and  c                                           ; $4fac: $a1
	dec  c                                           ; $4fad: $0d
	ld   l, [hl]                                     ; $4fae: $6e
	ld   [hl], c                                     ; $4faf: $71
	ld   [hl], h                                     ; $4fb0: $74
	ld   a, b                                        ; $4fb1: $78
	sbc  a                                           ; $4fb2: $9f
	dec  c                                           ; $4fb3: $0d
	nop                                              ; $4fb4: $00
	ld   a, [bc]                                     ; $4fb5: $0a
	ld   bc, $a102                                   ; $4fb6: $01 $02 $a1
	inc  bc                                          ; $4fb9: $03
	and  b                                           ; $4fba: $a0
	ld   l, a                                        ; $4fbb: $6f
	ld   a, l                                        ; $4fbc: $7d
	sbc  [hl]                                        ; $4fbd: $9e
	sbc  l                                           ; $4fbe: $9d
	ld   e, c                                        ; $4fbf: $59
	and  c                                           ; $4fc0: $a1
	sub  a                                           ; $4fc1: $97
	and  c                                           ; $4fc2: $a1
	ld   [hl], l                                     ; $4fc3: $75
	sub  b                                           ; $4fc4: $90
	ld   a, b                                        ; $4fc5: $78
	ld   d, d                                        ; $4fc6: $52
	dec  c                                           ; $4fc7: $0d
	ld   e, d                                        ; $4fc8: $5a
	sbc  [hl]                                        ; $4fc9: $9e
	inc  de                                          ; $4fca: $13
	ld   [bc], a                                     ; $4fcb: $02
	sub  e                                           ; $4fcc: $93
	sub  b                                           ; $4fcd: $90
	sub  d                                           ; $4fce: $92
	ld   [hl], c                                     ; $4fcf: $71
	ld   l, a                                        ; $4fd0: $6f
	sub  c                                           ; $4fd1: $91
	ei                                               ; $4fd2: $fb
	dec  c                                           ; $4fd3: $0d
	adc  h                                           ; $4fd4: $8c
	ld   l, b                                        ; $4fd5: $68
	ld   d, d                                        ; $4fd6: $52
	ld   l, [hl]                                     ; $4fd7: $6e
	sbc  e                                           ; $4fd8: $9b
	sbc  a                                           ; $4fd9: $9f
	dec  c                                           ; $4fda: $0d
	nop                                              ; $4fdb: $00
	ld   a, [bc]                                     ; $4fdc: $0a
	ld   bc, $7e59                                   ; $4fdd: $01 $59 $7e
	ld   [hl], c                                     ; $4fe0: $71
	ld   [hl], h                                     ; $4fe1: $74
	sub  d                                           ; $4fe2: $92
	sbc  b                                           ; $4fe3: $98
	ld   l, l                                        ; $4fe4: $6d
	ld   d, d                                        ; $4fe5: $52
	ld   e, d                                        ; $4fe6: $5a
	dec  c                                           ; $4fe7: $0d
	ld   [bc], a                                     ; $4fe8: $02
	sbc  b                                           ; $4fe9: $98
	inc  bc                                          ; $4fea: $03
	nop                                              ; $4feb: $00
	ld   a, h                                        ; $4fec: $7c
	inc  bc                                          ; $4fed: $03
	ld   l, e                                        ; $4fee: $6b
	inc  bc                                          ; $4fef: $03
	ld   c, a                                        ; $4ff0: $4f
	sbc  [hl]                                        ; $4ff1: $9e
	ld   l, a                                        ; $4ff2: $6f
	sub  l                                           ; $4ff3: $95
	ld   [hl], c                                     ; $4ff4: $71
	halt                                             ; $4ff5: $76
	ldh  [c], a                                      ; $4ff6: $e2
	db   $ec                                         ; $4ff7: $ec
	dec  c                                           ; $4ff8: $0d
	ld   a, b                                        ; $4ff9: $78
	and  c                                           ; $4ffa: $a1
	ld   [hl], l                                     ; $4ffb: $75
	ld   a, b                                        ; $4ffc: $78
	sbc  a                                           ; $4ffd: $9f
	dec  c                                           ; $4ffe: $0d
	nop                                              ; $4fff: $00
	ld   a, [bc]                                     ; $5000: $0a
	inc  e                                           ; $5001: $1c
	ld   a, [bc]                                     ; $5002: $0a
	ld   [bc], a                                     ; $5003: $02
	ld   [bc], a                                     ; $5004: $02
	ld   bc, $9d59                                   ; $5005: $01 $59 $9d
	ld   d, d                                        ; $5008: $52
	ld   l, e                                        ; $5009: $6b
	ld   d, h                                        ; $500a: $54
	ld   l, [hl]                                     ; $500b: $6e
	ld   e, d                                        ; $500c: $5a
	sbc  [hl]                                        ; $500d: $9e
	dec  c                                           ; $500e: $0d
	inc  b                                           ; $500f: $04
	dec  c                                           ; $5010: $0d
	ld   [bc], a                                     ; $5011: $02
	sub  [hl]                                        ; $5012: $96
	inc  b                                           ; $5013: $04
	ld   b, l                                        ; $5014: $45
	inc  b                                           ; $5015: $04
	ld   a, [bc]                                     ; $5016: $0a
	ld   a, l                                        ; $5017: $7d
	ld   h, c                                        ; $5018: $61
	ld   h, c                                        ; $5019: $61
	ld   [hl], l                                     ; $501a: $75
	inc  bc                                          ; $501b: $03
	ld   a, [hl]                                     ; $501c: $7e
	dec  b                                           ; $501d: $05
	nop                                              ; $501e: $00
	ld   l, [hl]                                     ; $501f: $6e
	ld   a, [$000d]                                  ; $5020: $fa $0d $00
	ld   a, [bc]                                     ; $5023: $0a
	ld   bc, $a102                                   ; $5024: $01 $02 $a1
	inc  bc                                          ; $5027: $03
	and  b                                           ; $5028: $a0
	ld   l, a                                        ; $5029: $6f
	and  b                                           ; $502a: $a0
	inc  b                                           ; $502b: $04
	ld   b, l                                        ; $502c: $45
	sbc  d                                           ; $502d: $9a
	dec  b                                           ; $502e: $05
	scf                                              ; $502f: $37
	ld   d, [hl]                                     ; $5030: $56
	ld   [hl], h                                     ; $5031: $74
	dec  c                                           ; $5032: $0d
	inc  bc                                          ; $5033: $03
	add  b                                           ; $5034: $80
	inc  bc                                          ; $5035: $03
	jp   c, Jump_05d_7465                            ; $5036: $da $65 $74

	ld   e, e                                        ; $5039: $5b
	ld   a, b                                        ; $503a: $78
	ld   a, [$000d]                                  ; $503b: $fa $0d $00
	ld   a, [bc]                                     ; $503e: $0a
	ld   h, $00                                      ; $503f: $26 $00
	inc  b                                           ; $5041: $04
	add  b                                           ; $5042: $80
	add  h                                           ; $5043: $84
	ld   bc, $20ff                                   ; $5044: $01 $ff $20
	nop                                              ; $5047: $00
	ld   c, $28                                      ; $5048: $0e $28
	rrca                                             ; $504a: $0f
	nop                                              ; $504b: $00
	ld   bc, $060d                                   ; $504c: $01 $0d $06
	nop                                              ; $504f: $00
	ld   [bc], a                                     ; $5050: $02
	dec  b                                           ; $5051: $05
	add  b                                           ; $5052: $80
	adc  b                                           ; $5053: $88
	ld   bc, $0001                                   ; $5054: $01 $01 $00
	ld   bc, $9e50                                   ; $5057: $01 $50 $9e

Jump_05d_505a:
	xor  h                                           ; $505a: $ac
	push af                                          ; $505b: $f5
	bit  4, e                                        ; $505c: $cb $63
	and  c                                           ; $505e: $a1
	sbc  a                                           ; $505f: $9f
	dec  c                                           ; $5060: $0d
	inc  b                                           ; $5061: $04
	inc  d                                           ; $5062: $14
	ld   h, l                                        ; $5063: $65
	ld   [hl], h                                     ; $5064: $74
	ld   l, l                                        ; $5065: $6d
	and  c                                           ; $5066: $a1
	ld   [hl], l                                     ; $5067: $75
	ld   h, a                                        ; $5068: $67
	sub  [hl]                                        ; $5069: $96
	sbc  a                                           ; $506a: $9f
	dec  c                                           ; $506b: $0d
	nop                                              ; $506c: $00
	ld   a, [bc]                                     ; $506d: $0a
	rlca                                             ; $506e: $07
	cp   c                                           ; $506f: $b9
	inc  bc                                          ; $5070: $03
	inc  bc                                          ; $5071: $03
	ld   d, e                                        ; $5072: $53
	ld   [bc], a                                     ; $5073: $02
	nop                                              ; $5074: $00
	inc  bc                                          ; $5075: $03
	ld   c, l                                        ; $5076: $4d
	add  hl, hl                                      ; $5077: $29
	add  hl, hl                                      ; $5078: $29
	ld   bc, $2501                                   ; $5079: $01 $01 $25
	nop                                              ; $507c: $00
	ld   bc, $e104                                   ; $507d: $01 $04 $e1
	inc  b                                           ; $5080: $04
	rst  $38                                         ; $5081: $ff
	ld   h, e                                        ; $5082: $63
	and  c                                           ; $5083: $a1
	ld   e, c                                        ; $5084: $59
	sub  a                                           ; $5085: $97
	and  a                                           ; $5086: $a7
	pop  af                                          ; $5087: $f1
	or   [hl]                                        ; $5088: $b6
	ld   [bc], a                                     ; $5089: $02
	jp   nz, $8c5b                                   ; $508a: $c2 $5b $8c

	ld   h, l                                        ; $508d: $65
	ld   [hl], h                                     ; $508e: $74
	dec  c                                           ; $508f: $0d
	rst  $38                                         ; $5090: $ff
	rst  $38                                         ; $5091: $ff
	xor  h                                           ; $5092: $ac
	push af                                          ; $5093: $f5
	bit  4, e                                        ; $5094: $cb $63
	and  c                                           ; $5096: $a1
	ld   h, a                                        ; $5097: $67
	ld   h, d                                        ; $5098: $62
	ld   e, l                                        ; $5099: $5d
	ld   d, h                                        ; $509a: $54
	adc  h                                           ; $509b: $8c
	ld   d, d                                        ; $509c: $52
	dec  c                                           ; $509d: $0d
	dec  b                                           ; $509e: $05
	ld   [bc], a                                     ; $509f: $02
	dec  b                                           ; $50a0: $05
	ld   de, $035a                                   ; $50a1: $11 $5a $03
	xor  h                                           ; $50a4: $ac
	sbc  d                                           ; $50a5: $9a
	sbc  c                                           ; $50a6: $99
	halt                                             ; $50a7: $76
	ld   e, c                                        ; $50a8: $59
	rst  $38                                         ; $50a9: $ff
	rst  $38                                         ; $50aa: $ff
	dec  c                                           ; $50ab: $0d
	nop                                              ; $50ac: $00
	ld   a, [bc]                                     ; $50ad: $0a
	inc  e                                           ; $50ae: $1c
	ld   b, $00                                      ; $50af: $06 $00
	nop                                              ; $50b1: $00
	ld   bc, $5050                                   ; $50b2: $01 $50 $50
	rst  $38                                         ; $50b5: $ff
	rst  $38                                         ; $50b6: $ff
	dec  c                                           ; $50b7: $0d
	ld   bc, $0207                                   ; $50b8: $01 $07 $02
	dec  [hl]                                        ; $50bb: $35
	inc  bc                                          ; $50bc: $03
	or   $76                                         ; $50bd: $f6 $76
	or   l                                           ; $50bf: $b5
	ei                                               ; $50c0: $fb
	and  $a0                                         ; $50c1: $e6 $a0
	ret                                              ; $50c3: $c9


	and  a                                           ; $50c4: $a7
	xor  l                                           ; $50c5: $ad
	db   $eb                                         ; $50c6: $eb
	cp   b                                           ; $50c7: $b8
	halt                                             ; $50c8: $76
	dec  c                                           ; $50c9: $0d
	ld   [bc], a                                     ; $50ca: $02
	dec  [hl]                                        ; $50cb: $35
	or   h                                           ; $50cc: $b4
	cp   b                                           ; $50cd: $b8
	jp   hl                                          ; $50ce: $e9


	and  a                                           ; $50cf: $a7
	ld   [hl], l                                     ; $50d0: $75
	ld   [bc], a                                     ; $50d1: $02
	rrca                                             ; $50d2: $0f
	adc  a                                           ; $50d3: $8f
	ld   l, l                                        ; $50d4: $6d
	and  $c5                                         ; $50d5: $e6 $c5
	ld   bc, $5908                                   ; $50d7: $01 $08 $59
	ld   sp, hl                                      ; $50da: $f9
	dec  c                                           ; $50db: $0d
	nop                                              ; $50dc: $00
	ld   a, [bc]                                     ; $50dd: $0a
	ld   bc, $6a03                                   ; $50de: $01 $03 $6a
	add  a                                           ; $50e1: $87
	ld   l, l                                        ; $50e2: $6d
	ld   d, d                                        ; $50e3: $52
	and  c                                           ; $50e4: $a1
	ld   l, [hl]                                     ; $50e5: $6e
	ld   [hl], c                                     ; $50e6: $71
	ld   l, l                                        ; $50e7: $6d
	sub  a                                           ; $50e8: $97
	dec  c                                           ; $50e9: $0d
	inc  bc                                          ; $50ea: $03
	xor  h                                           ; $50eb: $ac
	ld   [hl], c                                     ; $50ec: $71
	ld   [hl], h                                     ; $50ed: $74
	sub  d                                           ; $50ee: $92
	sbc  c                                           ; $50ef: $99
	sub  [hl]                                        ; $50f0: $96
	sbc  a                                           ; $50f1: $9f
	dec  c                                           ; $50f2: $0d
	ld   l, a                                        ; $50f3: $6f
	sub  l                                           ; $50f4: $95
	ld   [hl], c                                     ; $50f5: $71
	halt                                             ; $50f6: $76
	inc  b                                           ; $50f7: $04
	rla                                              ; $50f8: $17
	ld   [hl], c                                     ; $50f9: $71
	ld   [hl], h                                     ; $50fa: $74
	ld   a, b                                        ; $50fb: $78
	sbc  a                                           ; $50fc: $9f
	dec  c                                           ; $50fd: $0d
	nop                                              ; $50fe: $00
	ld   a, [bc]                                     ; $50ff: $0a
	inc  c                                           ; $5100: $0c
	dec  bc                                          ; $5101: $0b

Call_05d_5102:
	inc  e                                           ; $5102: $1c
	ld   b, $01                                      ; $5103: $06 $01
	ld   bc, $7d01                                   ; $5105: $01 $01 $7d
	ld   d, d                                        ; $5108: $52
	sbc  [hl]                                        ; $5109: $9e
	ld   e, b                                        ; $510a: $58
	adc  h                                           ; $510b: $8c
	ld   l, l                                        ; $510c: $6d
	ld   l, c                                        ; $510d: $69
	sbc  a                                           ; $510e: $9f
	dec  c                                           ; $510f: $0d
	ld   [hl], a                                     ; $5110: $77
	ld   d, h                                        ; $5111: $54
	ld   l, h                                        ; $5112: $6c
	sbc  a                                           ; $5113: $9f
	dec  c                                           ; $5114: $0d
	nop                                              ; $5115: $00
	ld   a, [bc]                                     ; $5116: $0a
	rrca                                             ; $5117: $0f
	nop                                              ; $5118: $00
	ld   bc, $0101                                   ; $5119: $01 $01 $01
	inc  bc                                          ; $511c: $03
	ld   [hl], a                                     ; $511d: $77
	sbc  d                                           ; $511e: $9a
	ld   [hl], a                                     ; $511f: $77
	sbc  d                                           ; $5120: $9a
	rst  $38                                         ; $5121: $ff
	rst  $38                                         ; $5122: $ff
	dec  c                                           ; $5123: $0d
	db   $10                                         ; $5124: $10
	sbc  l                                           ; $5125: $9d
	ld   [hl], c                                     ; $5126: $71
	ld   a, [$0310]                                  ; $5127: $fa $10 $03
	dec  a                                           ; $512a: $3d
	ld   l, e                                        ; $512b: $6b
	ld   d, h                                        ; $512c: $54
	ld   l, [hl]                                     ; $512d: $6e
	ld   a, b                                        ; $512e: $78
	db   $fc                                         ; $512f: $fc
	dec  c                                           ; $5130: $0d
	db   $10                                         ; $5131: $10
	ld   h, c                                        ; $5132: $61
	sbc  d                                           ; $5133: $9a
	ld   a, l                                        ; $5134: $7d
	rst  $38                                         ; $5135: $ff
	rst  $38                                         ; $5136: $ff
	ld   bc, $0d04                                   ; $5137: $01 $04 $0d
	nop                                              ; $513a: $00
	ld   a, [bc]                                     ; $513b: $0a
	add  hl, de                                      ; $513c: $19
	dec  b                                           ; $513d: $05
	inc  bc                                          ; $513e: $03
	inc  bc                                          ; $513f: $03
	dec  a                                           ; $5140: $3d
	ld   d, d                                        ; $5141: $52
	ld   [hl], l                                     ; $5142: $75
	ld   h, a                                        ; $5143: $67
	nop                                              ; $5144: $00
	nop                                              ; $5145: $00
	sub  b                                           ; $5146: $90
	ld   d, h                                        ; $5147: $54
	inc  bc                                          ; $5148: $03
	ld   l, h                                        ; $5149: $6c
	ld   h, l                                        ; $514a: $65
	inc  bc                                          ; $514b: $03
	ld   l, d                                        ; $514c: $6a
	add  a                                           ; $514d: $87
	sbc  c                                           ; $514e: $99
	nop                                              ; $514f: $00
	ld   bc, $688c                                   ; $5150: $01 $8c $68
	ld   d, d                                        ; $5153: $52
	nop                                              ; $5154: $00
	ld   [bc], a                                     ; $5155: $02
	rlca                                             ; $5156: $07
	inc  l                                           ; $5157: $2c
	ld   bc, $0302                                   ; $5158: $01 $02 $03
	ld   bc, $2000                                   ; $515b: $01 $00 $20
	nop                                              ; $515e: $00
	rlca                                             ; $515f: $07
	jr   nz, jr_05d_5164                             ; $5160: $20 $02

	ld   [bc], a                                     ; $5162: $02
	inc  bc                                          ; $5163: $03

jr_05d_5164:
	ld   bc, $2001                                   ; $5164: $01 $01 $20
	nop                                              ; $5167: $00
	rlca                                             ; $5168: $07
	and  [hl]                                        ; $5169: $a6
	ld   bc, $0302                                   ; $516a: $01 $02 $03
	ld   bc, $2002                                   ; $516d: $01 $02 $20
	nop                                              ; $5170: $00
	ld   b, $20                                      ; $5171: $06 $20
	ld   [bc], a                                     ; $5173: $02
	rrca                                             ; $5174: $0f
	nop                                              ; $5175: $00
	ld   bc, $ac01                                   ; $5176: $01 $01 $ac
	sbc  [hl]                                        ; $5179: $9e
	xor  h                                           ; $517a: $ac
	push af                                          ; $517b: $f5
	bit  4, e                                        ; $517c: $cb $63
	and  c                                           ; $517e: $a1
	sbc  a                                           ; $517f: $9f
	dec  c                                           ; $5180: $0d
	ld   h, c                                        ; $5181: $61
	sbc  d                                           ; $5182: $9a
	sbc  [hl]                                        ; $5183: $9e
	adc  a                                           ; $5184: $8f
	ld   l, a                                        ; $5185: $6f
	sub  c                                           ; $5186: $91
	ld   e, l                                        ; $5187: $5d
	ld   l, a                                        ; $5188: $6f
	sub  c                                           ; $5189: $91
	inc  bc                                          ; $518a: $03
	dec  a                                           ; $518b: $3d
	ld   d, d                                        ; $518c: $52
	ld   [hl], l                                     ; $518d: $75
	ld   h, a                                        ; $518e: $67
	sbc  a                                           ; $518f: $9f
	dec  c                                           ; $5190: $0d
	nop                                              ; $5191: $00
	ld   a, [bc]                                     ; $5192: $0a
	inc  e                                           ; $5193: $1c
	ld   b, $05                                      ; $5194: $06 $05
	dec  b                                           ; $5196: $05
	dec  e                                           ; $5197: $1d
	ld   b, b                                        ; $5198: $40
	ld   d, $03                                      ; $5199: $16 $03
	ld   d, $01                                      ; $519b: $16 $01
	ld   [bc], a                                     ; $519d: $02
	add  hl, hl                                      ; $519e: $29
	nop                                              ; $519f: $00
	ld   bc, $fc56                                   ; $51a0: $01 $56 $fc
	sbc  [hl]                                        ; $51a3: $9e
	ld   l, e                                        ; $51a4: $6b
	sbc  d                                           ; $51a5: $9a
	ld   [hl], l                                     ; $51a6: $75
	sub  b                                           ; $51a7: $90
	inc  bc                                          ; $51a8: $03
	dec  a                                           ; $51a9: $3d
	ld   h, e                                        ; $51aa: $63
	dec  c                                           ; $51ab: $0d
	ld   e, b                                        ; $51ac: $58
	ld   h, e                                        ; $51ad: $63
	ld   d, [hl]                                     ; $51ae: $56
	ld   l, l                                        ; $51af: $6d
	and  c                                           ; $51b0: $a1
	ld   l, [hl]                                     ; $51b1: $6e
	ld   l, d                                        ; $51b2: $6a
	sbc  a                                           ; $51b3: $9f
	dec  c                                           ; $51b4: $0d
	ld   l, [hl]                                     ; $51b5: $6e
	sub  a                                           ; $51b6: $97
	ld   h, l                                        ; $51b7: $65
	ld   a, b                                        ; $51b8: $78
	ld   d, d                                        ; $51b9: $52
	ld   a, b                                        ; $51ba: $78
	db   $fc                                         ; $51bb: $fc
	sbc  a                                           ; $51bc: $9f
	dec  c                                           ; $51bd: $0d
	nop                                              ; $51be: $00
	ld   a, [bc]                                     ; $51bf: $0a
	inc  e                                           ; $51c0: $1c
	ld   b, $00                                      ; $51c1: $06 $00
	nop                                              ; $51c3: $00
	ld   bc, $5276                                   ; $51c4: $01 $76 $52
	ld   d, h                                        ; $51c7: $54
	ld   h, c                                        ; $51c8: $61
	halt                                             ; $51c9: $76
	ld   a, l                                        ; $51ca: $7d
	sbc  [hl]                                        ; $51cb: $9e
	ld   [$7900], sp                                 ; $51cc: $08 $00 $79
	ld   a, l                                        ; $51cf: $7d
	dec  c                                           ; $51d0: $0d
	ldh  [c], a                                      ; $51d1: $e2
	db   $ec                                         ; $51d2: $ec
	ld   l, [hl]                                     ; $51d3: $6e
	ld   a, b                                        ; $51d4: $78
	sbc  a                                           ; $51d5: $9f
	ld   h, c                                        ; $51d6: $61
	sbc  d                                           ; $51d7: $9a
	inc  bc                                          ; $51d8: $03
	ld   l, d                                        ; $51d9: $6a
	add  a                                           ; $51da: $87
	sbc  c                                           ; $51db: $99
	ld   a, h                                        ; $51dc: $7c
	ld   a, l                                        ; $51dd: $7d
	sbc  a                                           ; $51de: $9f
	dec  c                                           ; $51df: $0d
	ld   h, [hl]                                     ; $51e0: $66
	sub  c                                           ; $51e1: $91
	sbc  [hl]                                        ; $51e2: $9e
	ld   e, b                                        ; $51e3: $58
	sub  d                                           ; $51e4: $92
	ld   h, a                                        ; $51e5: $67
	adc  l                                           ; $51e6: $8d
	sbc  a                                           ; $51e7: $9f
	dec  c                                           ; $51e8: $0d
	nop                                              ; $51e9: $00
	ld   a, [bc]                                     ; $51ea: $0a
	add  hl, hl                                      ; $51eb: $29
	nop                                              ; $51ec: $00
	nop                                              ; $51ed: $00
	rrca                                             ; $51ee: $0f
	nop                                              ; $51ef: $00
	ld   bc, $8c01                                   ; $51f0: $01 $01 $8c
	sbc  [hl]                                        ; $51f3: $9e
	adc  h                                           ; $51f4: $8c
	ld   l, b                                        ; $51f5: $68
	ld   d, d                                        ; $51f6: $52
	ld   a, [$740d]                                  ; $51f7: $fa $0d $74
	ld   d, d                                        ; $51fa: $52
	ld   d, h                                        ; $51fb: $54
	ld   e, c                                        ; $51fc: $59
	sbc  [hl]                                        ; $51fd: $9e
	inc  bc                                          ; $51fe: $03
	dec  a                                           ; $51ff: $3d
	ld   d, d                                        ; $5200: $52
	ld   a, h                                        ; $5201: $7c
	pop  bc                                          ; $5202: $c1
	db   $e3                                         ; $5203: $e3
	ld   a, [$000d]                                  ; $5204: $fa $0d $00
	ld   a, [bc]                                     ; $5207: $0a
	inc  e                                           ; $5208: $1c
	ld   b, $02                                      ; $5209: $06 $02
	ld   [bc], a                                     ; $520b: $02
	dec  e                                           ; $520c: $1d
	ld   b, b                                        ; $520d: $40
	ld   d, $03                                      ; $520e: $16 $03
	ld   d, $01                                      ; $5210: $16 $01
	inc  bc                                          ; $5212: $03
	add  hl, hl                                      ; $5213: $29
	nop                                              ; $5214: $00
	ld   bc, $a178                                   ; $5215: $01 $78 $a1
	ld   l, [hl]                                     ; $5218: $6e
	sub  [hl]                                        ; $5219: $96
	sbc  a                                           ; $521a: $9f
	inc  bc                                          ; $521b: $03
	dec  a                                           ; $521c: $3d
	ld   d, d                                        ; $521d: $52
	ld   a, h                                        ; $521e: $7c
	pop  bc                                          ; $521f: $c1
	db   $e3                                         ; $5220: $e3
	ld   a, b                                        ; $5221: $78
	sub  a                                           ; $5222: $97
	dec  c                                           ; $5223: $0d
	inc  bc                                          ; $5224: $03
	ld   l, c                                        ; $5225: $69
	inc  bc                                          ; $5226: $03
	inc  c                                           ; $5227: $0c
	ld   [hl], c                                     ; $5228: $71
	ld   e, c                                        ; $5229: $59
	sub  a                                           ; $522a: $97
	ld   [bc], a                                     ; $522b: $02
	sbc  l                                           ; $522c: $9d
	ld   d, [hl]                                     ; $522d: $56
	sub  [hl]                                        ; $522e: $96
	sbc  a                                           ; $522f: $9f
	dec  c                                           ; $5230: $0d
	adc  h                                           ; $5231: $8c
	ld   [hl], c                                     ; $5232: $71
	ld   l, l                                        ; $5233: $6d
	ld   e, l                                        ; $5234: $5d
	db   $fc                                         ; $5235: $fc
	sbc  a                                           ; $5236: $9f
	dec  c                                           ; $5237: $0d
	nop                                              ; $5238: $00
	ld   a, [bc]                                     ; $5239: $0a
	inc  e                                           ; $523a: $1c
	ld   b, $05                                      ; $523b: $06 $05
	dec  b                                           ; $523d: $05
	ld   bc, $5276                                   ; $523e: $01 $76 $52
	ld   d, h                                        ; $5241: $54
	ld   h, c                                        ; $5242: $61
	halt                                             ; $5243: $76
	ld   a, l                                        ; $5244: $7d
	sbc  [hl]                                        ; $5245: $9e
	ld   [$7900], sp                                 ; $5246: $08 $00 $79
	ld   a, l                                        ; $5249: $7d
	dec  c                                           ; $524a: $0d
	ldh  [c], a                                      ; $524b: $e2
	db   $ec                                         ; $524c: $ec
	ld   l, [hl]                                     ; $524d: $6e
	ld   a, b                                        ; $524e: $78
	sbc  a                                           ; $524f: $9f
	ld   h, c                                        ; $5250: $61
	sbc  d                                           ; $5251: $9a
	inc  bc                                          ; $5252: $03
	ld   l, d                                        ; $5253: $6a
	add  a                                           ; $5254: $87
	sbc  c                                           ; $5255: $99
	ld   a, h                                        ; $5256: $7c
	ld   a, l                                        ; $5257: $7d
	sbc  a                                           ; $5258: $9f
	dec  c                                           ; $5259: $0d
	ld   h, [hl]                                     ; $525a: $66
	sub  c                                           ; $525b: $91
	sbc  [hl]                                        ; $525c: $9e
	ld   e, b                                        ; $525d: $58
	sub  d                                           ; $525e: $92
	ld   h, a                                        ; $525f: $67
	adc  l                                           ; $5260: $8d
	sbc  a                                           ; $5261: $9f
	dec  c                                           ; $5262: $0d
	nop                                              ; $5263: $00
	ld   a, [bc]                                     ; $5264: $0a
	add  hl, hl                                      ; $5265: $29
	nop                                              ; $5266: $00
	nop                                              ; $5267: $00
	rrca                                             ; $5268: $0f
	nop                                              ; $5269: $00
	ld   bc, $0101                                   ; $526a: $01 $01 $01
	inc  bc                                          ; $526d: $03
	sub  b                                           ; $526e: $90
	ld   d, h                                        ; $526f: $54
	inc  bc                                          ; $5270: $03
	ld   l, h                                        ; $5271: $6c
	ld   h, l                                        ; $5272: $65
	inc  bc                                          ; $5273: $03
	ld   l, d                                        ; $5274: $6a
	add  a                                           ; $5275: $87

Jump_05d_5276:
	ld   [hl], h                                     ; $5276: $74
	adc  l                                           ; $5277: $8d
	sub  [hl]                                        ; $5278: $96
	ld   d, h                                        ; $5279: $54
	rst  $38                                         ; $527a: $ff
	rst  $38                                         ; $527b: $ff
	ld   bc, $0d04                                   ; $527c: $01 $04 $0d
	nop                                              ; $527f: $00
	ld   a, [bc]                                     ; $5280: $0a
	add  hl, de                                      ; $5281: $19
	dec  b                                           ; $5282: $05
	inc  bc                                          ; $5283: $03
	ld   d, d                                        ; $5284: $52
	ld   e, a                                        ; $5285: $5f
	sbc  c                                           ; $5286: $99
	sbc  [hl]                                        ; $5287: $9e
	ld   d, d                                        ; $5288: $52
	ld   e, a                                        ; $5289: $5f
	sbc  c                                           ; $528a: $99
	nop                                              ; $528b: $00
	nop                                              ; $528c: $00
	sub  d                                           ; $528d: $92
	ld   [hl], c                                     ; $528e: $71
	ld   a, a                                        ; $528f: $7f
	inc  bc                                          ; $5290: $03
	dec  a                                           ; $5291: $3d
	ld   d, d                                        ; $5292: $52
	nop                                              ; $5293: $00
	ld   bc, $688c                                   ; $5294: $01 $8c $68
	ld   d, d                                        ; $5297: $52
	nop                                              ; $5298: $00
	ld   [bc], a                                     ; $5299: $02
	rlca                                             ; $529a: $07
	ld   [hl], b                                     ; $529b: $70
	ld   [bc], a                                     ; $529c: $02
	ld   [bc], a                                     ; $529d: $02
	inc  bc                                          ; $529e: $03
	ld   bc, $2000                                   ; $529f: $01 $00 $20
	nop                                              ; $52a2: $00
	rlca                                             ; $52a3: $07
	inc  l                                           ; $52a4: $2c
	ld   bc, $0302                                   ; $52a5: $01 $02 $03
	ld   bc, $2001                                   ; $52a8: $01 $01 $20
	nop                                              ; $52ab: $00
	rlca                                             ; $52ac: $07
	and  [hl]                                        ; $52ad: $a6
	ld   bc, $0302                                   ; $52ae: $01 $02 $03
	ld   bc, $2002                                   ; $52b1: $01 $02 $20
	nop                                              ; $52b4: $00
	ld   b, $20                                      ; $52b5: $06 $20
	ld   [bc], a                                     ; $52b7: $02
	rrca                                             ; $52b8: $0f
	nop                                              ; $52b9: $00
	ld   bc, $0101                                   ; $52ba: $01 $01 $01
	inc  bc                                          ; $52bd: $03
	ld   d, d                                        ; $52be: $52
	ld   e, a                                        ; $52bf: $5f
	sbc  c                                           ; $52c0: $99
	and  c                                           ; $52c1: $a1
	ld   h, [hl]                                     ; $52c2: $66
	sub  c                                           ; $52c3: $91
	ld   a, b                                        ; $52c4: $78
	ld   d, d                                        ; $52c5: $52
	ld   e, c                                        ; $52c6: $59
	ld   sp, hl                                      ; $52c7: $f9
	dec  c                                           ; $52c8: $0d
	db   $10                                         ; $52c9: $10
	ld   h, c                                        ; $52ca: $61
	ld   a, h                                        ; $52cb: $7c
	or   b                                           ; $52cc: $b0
	cp   [hl]                                        ; $52cd: $be
	inc  bc                                          ; $52ce: $03
	dec  a                                           ; $52cf: $3d
	ld   d, d                                        ; $52d0: $52
	dec  b                                           ; $52d1: $05
	ld   [bc], a                                     ; $52d2: $02
	dec  b                                           ; $52d3: $05
	ld   de, $ffff                                   ; $52d4: $11 $ff $ff
	ld   bc, $0d04                                   ; $52d7: $01 $04 $0d
	nop                                              ; $52da: $00
	ld   a, [bc]                                     ; $52db: $0a
	inc  e                                           ; $52dc: $1c
	ld   b, $00                                      ; $52dd: $06 $00
	nop                                              ; $52df: $00
	ld   bc, $5477                                   ; $52e0: $01 $77 $54
	ld   l, [hl]                                     ; $52e3: $6e
	sbc  a                                           ; $52e4: $9f
	dec  c                                           ; $52e5: $0d
	ld   d, b                                        ; $52e6: $50
	ld   l, l                                        ; $52e7: $6d
	ld   d, d                                        ; $52e8: $52
	ld   a, h                                        ; $52e9: $7c
	dec  b                                           ; $52ea: $05
	ld   [bc], a                                     ; $52eb: $02
	dec  b                                           ; $52ec: $05
	ld   de, $f97d                                   ; $52ed: $11 $7d $f9
	dec  c                                           ; $52f0: $0d
	nop                                              ; $52f1: $00
	ld   a, [bc]                                     ; $52f2: $0a
	add  hl, de                                      ; $52f3: $19
	dec  b                                           ; $52f4: $05
	ld   [bc], a                                     ; $52f5: $02
	ld   d, h                                        ; $52f6: $54
	adc  h                                           ; $52f7: $8c
	ld   e, c                                        ; $52f8: $59
	ld   [hl], c                                     ; $52f9: $71
	ld   l, l                                        ; $52fa: $6d
	nop                                              ; $52fb: $00
	nop                                              ; $52fc: $00
	adc  h                                           ; $52fd: $8c
	ld   l, b                                        ; $52fe: $68
	ld   e, c                                        ; $52ff: $59
	ld   [hl], c                                     ; $5300: $71
	ld   l, l                                        ; $5301: $6d
	nop                                              ; $5302: $00
	ld   bc, $d107                                   ; $5303: $01 $07 $d1
	ld   [bc], a                                     ; $5306: $02
	ld   [bc], a                                     ; $5307: $02
	inc  bc                                          ; $5308: $03
	ld   bc, $2000                                   ; $5309: $01 $00 $20
	nop                                              ; $530c: $00
	rlca                                             ; $530d: $07
	and  [hl]                                        ; $530e: $a6
	ld   bc, $0302                                   ; $530f: $01 $02 $03
	ld   bc, $2001                                   ; $5312: $01 $01 $20
	nop                                              ; $5315: $00
	ld   b, $42                                      ; $5316: $06 $42
	inc  bc                                          ; $5318: $03
	rrca                                             ; $5319: $0f
	nop                                              ; $531a: $00
	ld   bc, $5401                                   ; $531b: $01 $01 $54
	adc  h                                           ; $531e: $8c
	ld   d, d                                        ; $531f: $52
	ld   [hl], l                                     ; $5320: $75
	ld   h, a                                        ; $5321: $67
	sub  [hl]                                        ; $5322: $96
	sbc  a                                           ; $5323: $9f
	dec  c                                           ; $5324: $0d
	inc  bc                                          ; $5325: $03
	dec  a                                           ; $5326: $3d
	ld   h, e                                        ; $5327: $63
	ld   e, d                                        ; $5328: $5a
	ld   a, b                                        ; $5329: $78
	and  c                                           ; $532a: $a1
	ld   e, c                                        ; $532b: $59
	sub  d                                           ; $532c: $92
	adc  l                                           ; $532d: $8d
	ld   [hl], d                                     ; $532e: $72
	ld   e, e                                        ; $532f: $5b
	ld   a, c                                        ; $5330: $79
	dec  c                                           ; $5331: $0d
	ld   a, b                                        ; $5332: $78
	sbc  b                                           ; $5333: $98
	ld   l, e                                        ; $5334: $6b
	ld   d, h                                        ; $5335: $54
	ld   [hl], l                                     ; $5336: $75
	sbc  a                                           ; $5337: $9f
	dec  c                                           ; $5338: $0d
	nop                                              ; $5339: $00
	ld   a, [bc]                                     ; $533a: $0a
	inc  e                                           ; $533b: $1c
	ld   b, $07                                      ; $533c: $06 $07
	rlca                                             ; $533e: $07
	dec  e                                           ; $533f: $1d
	ld   b, b                                        ; $5340: $40
	ld   d, $03                                      ; $5341: $16 $03
	ld   d, $01                                      ; $5343: $16 $01
	inc  bc                                          ; $5345: $03
	jr   z, jr_05d_5348                              ; $5346: $28 $00

jr_05d_5348:
	ld   bc, $546b                                   ; $5348: $01 $6b $54
	ld   e, c                                        ; $534b: $59
	sbc  a                                           ; $534c: $9f
	dec  c                                           ; $534d: $0d
	sub  [hl]                                        ; $534e: $96
	ld   e, c                                        ; $534f: $59
	ld   [hl], c                                     ; $5350: $71
	ld   l, l                                        ; $5351: $6d
	sub  [hl]                                        ; $5352: $96
	sbc  [hl]                                        ; $5353: $9e
	ld   [bc], a                                     ; $5354: $02
	xor  [hl]                                        ; $5355: $ae
	ld   a, c                                        ; $5356: $79
	ld   d, b                                        ; $5357: $50
	ld   [hl], c                                     ; $5358: $71
	ld   [hl], h                                     ; $5359: $74
	sbc  a                                           ; $535a: $9f
	dec  c                                           ; $535b: $0d
	nop                                              ; $535c: $00
	ld   a, [bc]                                     ; $535d: $0a
	inc  e                                           ; $535e: $1c
	ld   b, $01                                      ; $535f: $06 $01
	ld   bc, $6601                                   ; $5361: $01 $01 $66
	sub  c                                           ; $5364: $91
	ld   d, b                                        ; $5365: $50
	sbc  [hl]                                        ; $5366: $9e
	inc  b                                           ; $5367: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5368: $cf
	inc  b                                           ; $5369: $04
	xor  d                                           ; $536a: $aa
	sub  b                                           ; $536b: $90
	inc  bc                                          ; $536c: $03
	ld   [hl], b                                     ; $536d: $70
	ld   d, d                                        ; $536e: $52
	ld   e, c                                        ; $536f: $59
	sub  a                                           ; $5370: $97
	dec  c                                           ; $5371: $0d
	ld   l, e                                        ; $5372: $6b
	sbc  e                                           ; $5373: $9b
	ld   l, e                                        ; $5374: $6b
	sbc  e                                           ; $5375: $9b
	sbc  [hl]                                        ; $5376: $9e
	inc  b                                           ; $5377: $04
	ld   b, d                                        ; $5378: $42
	ld   a, b                                        ; $5379: $78
	ld   e, e                                        ; $537a: $5b
	sub  c                                           ; $537b: $91
	ld   a, b                                        ; $537c: $78
	sbc  a                                           ; $537d: $9f
	dec  c                                           ; $537e: $0d
	ld   e, b                                        ; $537f: $58
	sub  d                                           ; $5380: $92
	ld   h, a                                        ; $5381: $67
	adc  l                                           ; $5382: $8d
	sbc  a                                           ; $5383: $9f
	dec  c                                           ; $5384: $0d
	nop                                              ; $5385: $00
	ld   a, [bc]                                     ; $5386: $0a
	add  hl, hl                                      ; $5387: $29
	nop                                              ; $5388: $00
	nop                                              ; $5389: $00
	inc  e                                           ; $538a: $1c
	ld   b, $01                                      ; $538b: $06 $01
	ld   bc, $401d                                   ; $538d: $01 $1d $40
	ld   d, $03                                      ; $5390: $16 $03
	ld   d, $01                                      ; $5392: $16 $01
	ld   bc, $0028                                   ; $5394: $01 $28 $00
	ld   bc, $546b                                   ; $5397: $01 $6b $54
	ld   e, c                                        ; $539a: $59
	rst  $38                                         ; $539b: $ff
	rst  $38                                         ; $539c: $ff
	dec  c                                           ; $539d: $0d
	ld   [bc], a                                     ; $539e: $02
	sbc  l                                           ; $539f: $9d
	inc  b                                           ; $53a0: $04
	sub  c                                           ; $53a1: $91
	ld   a, c                                        ; $53a2: $79
	ld   [hl], l                                     ; $53a3: $75
	ld   e, e                                        ; $53a4: $5b
	ld   a, b                                        ; $53a5: $78
	ld   d, d                                        ; $53a6: $52
	ld   d, h                                        ; $53a7: $54
	adc  h                                           ; $53a8: $8c
	ld   h, e                                        ; $53a9: $63
	ld   [hl], c                                     ; $53aa: $71
	ld   [hl], h                                     ; $53ab: $74
	dec  c                                           ; $53ac: $0d
	sub  d                                           ; $53ad: $92
	ld   [hl], d                                     ; $53ae: $72
	ld   e, c                                        ; $53af: $59
	rst  $38                                         ; $53b0: $ff
	rst  $38                                         ; $53b1: $ff
	dec  c                                           ; $53b2: $0d
	nop                                              ; $53b3: $00
	ld   a, [bc]                                     ; $53b4: $0a
	inc  e                                           ; $53b5: $1c
	ld   b, $00                                      ; $53b6: $06 $00
	nop                                              ; $53b8: $00
	ld   bc, $9075                                   ; $53b9: $01 $75 $90
	sbc  [hl]                                        ; $53bc: $9e
	ld   d, h                                        ; $53bd: $54
	adc  h                                           ; $53be: $8c
	ld   e, c                                        ; $53bf: $59
	ld   [hl], c                                     ; $53c0: $71
	ld   l, l                                        ; $53c1: $6d
	sub  a                                           ; $53c2: $97
	dec  c                                           ; $53c3: $0d
	db   $fd                                         ; $53c4: $fd
	ld   d, h                                        ; $53c5: $54
	adc  h                                           ; $53c6: $8c
	ld   d, d                                        ; $53c7: $52
	cp   $76                                         ; $53c8: $fe $76
	ld   [bc], a                                     ; $53ca: $02
	sbc  l                                           ; $53cb: $9d
	sbc  l                                           ; $53cc: $9d
	ld   a, b                                        ; $53cd: $78
	ld   e, e                                        ; $53ce: $5b
	sub  c                                           ; $53cf: $91
	dec  c                                           ; $53d0: $0d
	pop  bc                                          ; $53d1: $c1
	db   $e3                                         ; $53d2: $e3
	ld   l, [hl]                                     ; $53d3: $6e
	ld   l, d                                        ; $53d4: $6a
	sbc  a                                           ; $53d5: $9f
	dec  c                                           ; $53d6: $0d
	nop                                              ; $53d7: $00
	ld   a, [bc]                                     ; $53d8: $0a
	ld   bc, $9166                                   ; $53d9: $01 $66 $91
	ld   d, b                                        ; $53dc: $50
	sbc  [hl]                                        ; $53dd: $9e
	inc  b                                           ; $53de: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53df: $cf
	inc  b                                           ; $53e0: $04
	xor  d                                           ; $53e1: $aa
	sub  b                                           ; $53e2: $90
	inc  bc                                          ; $53e3: $03
	ld   [hl], b                                     ; $53e4: $70
	ld   d, d                                        ; $53e5: $52
	ld   e, c                                        ; $53e6: $59
	sub  a                                           ; $53e7: $97
	dec  c                                           ; $53e8: $0d
	ld   l, e                                        ; $53e9: $6b
	sbc  e                                           ; $53ea: $9b
	ld   l, e                                        ; $53eb: $6b
	sbc  e                                           ; $53ec: $9b
	sbc  [hl]                                        ; $53ed: $9e
	inc  b                                           ; $53ee: $04
	ld   b, d                                        ; $53ef: $42
	ld   a, b                                        ; $53f0: $78
	ld   e, e                                        ; $53f1: $5b
	sub  c                                           ; $53f2: $91
	ld   a, b                                        ; $53f3: $78
	sbc  a                                           ; $53f4: $9f
	dec  c                                           ; $53f5: $0d
	ld   e, b                                        ; $53f6: $58
	sub  d                                           ; $53f7: $92
	ld   h, a                                        ; $53f8: $67
	adc  l                                           ; $53f9: $8d
	sbc  a                                           ; $53fa: $9f
	dec  c                                           ; $53fb: $0d
	nop                                              ; $53fc: $00
	ld   a, [bc]                                     ; $53fd: $0a
	add  hl, hl                                      ; $53fe: $29
	nop                                              ; $53ff: $00
	nop                                              ; $5400: $00
	dec  c                                           ; $5401: $0d
	ld   b, $02                                      ; $5402: $06 $02
	ld   bc, $e104                                   ; $5404: $01 $04 $e1
	inc  b                                           ; $5407: $04
	rst  $38                                         ; $5408: $ff
	ld   h, e                                        ; $5409: $63
	and  c                                           ; $540a: $a1
	ld   e, c                                        ; $540b: $59
	sub  a                                           ; $540c: $97
	and  a                                           ; $540d: $a7
	pop  af                                          ; $540e: $f1
	or   [hl]                                        ; $540f: $b6
	ld   [bc], a                                     ; $5410: $02
	jp   nz, $8c5b                                   ; $5411: $c2 $5b $8c

	ld   h, l                                        ; $5414: $65
	ld   [hl], h                                     ; $5415: $74
	dec  c                                           ; $5416: $0d
	rst  $38                                         ; $5417: $ff
	rst  $38                                         ; $5418: $ff
	xor  h                                           ; $5419: $ac
	push af                                          ; $541a: $f5
	bit  4, e                                        ; $541b: $cb $63
	and  c                                           ; $541d: $a1
	ld   h, a                                        ; $541e: $67
	ld   h, d                                        ; $541f: $62
	ld   e, l                                        ; $5420: $5d
	ld   d, h                                        ; $5421: $54
	adc  h                                           ; $5422: $8c
	ld   d, d                                        ; $5423: $52
	dec  c                                           ; $5424: $0d
	dec  b                                           ; $5425: $05
	ld   [bc], a                                     ; $5426: $02
	dec  b                                           ; $5427: $05
	ld   de, $035a                                   ; $5428: $11 $5a $03
	xor  h                                           ; $542b: $ac
	sbc  d                                           ; $542c: $9a
	sbc  c                                           ; $542d: $99
	halt                                             ; $542e: $76
	ld   e, c                                        ; $542f: $59
	rst  $38                                         ; $5430: $ff
	rst  $38                                         ; $5431: $ff
	dec  c                                           ; $5432: $0d
	nop                                              ; $5433: $00
	ld   a, [bc]                                     ; $5434: $0a
	rrca                                             ; $5435: $0f
	ld   b, $02                                      ; $5436: $06 $02
	ld   bc, $6a03                                   ; $5438: $01 $03 $6a
	add  a                                           ; $543b: $87
	ld   l, l                                        ; $543c: $6d
	ld   d, d                                        ; $543d: $52
	ld   [hl], c                                     ; $543e: $71
	ld   [hl], h                                     ; $543f: $74
	ld   [bc], a                                     ; $5440: $02
	sbc  l                                           ; $5441: $9d
	ld   [hl], c                                     ; $5442: $71
	ld   [hl], h                                     ; $5443: $74
	sub  b                                           ; $5444: $90
	sbc  [hl]                                        ; $5445: $9e
	dec  c                                           ; $5446: $0d
	inc  bc                                          ; $5447: $03
	xor  h                                           ; $5448: $ac
	sub  a                                           ; $5449: $97
	ld   a, b                                        ; $544a: $78
	ld   d, d                                        ; $544b: $52
	ld   e, c                                        ; $544c: $59
	sub  a                                           ; $544d: $97
	ld   a, b                                        ; $544e: $78
	sbc  a                                           ; $544f: $9f
	dec  c                                           ; $5450: $0d
	nop                                              ; $5451: $00
	ld   a, [bc]                                     ; $5452: $0a
	dec  b                                           ; $5453: $05
	ld   b, b                                        ; $5454: $40
	ld   d, e                                        ; $5455: $53
	ld   bc, $0000                                   ; $5456: $01 $00 $00
	ld   bc, $6d50                                   ; $5459: $01 $50 $6d
	ld   d, d                                        ; $545c: $52
	ld   a, l                                        ; $545d: $7d
	ld   [bc], a                                     ; $545e: $02
	and  l                                           ; $545f: $a5
	sbc  [hl]                                        ; $5460: $9e
	ldh  [c], a                                      ; $5461: $e2
	cp   b                                           ; $5462: $b8
	ld   a, h                                        ; $5463: $7c
	ld   d, d                                        ; $5464: $52
	ld   [hl], a                                     ; $5465: $77
	ld   h, c                                        ; $5466: $61
	sbc  e                                           ; $5467: $9b
	ld   e, d                                        ; $5468: $5a
	dec  c                                           ; $5469: $0d
	ld   [bc], a                                     ; $546a: $02
	jr   z, jr_05d_54bf                              ; $546b: $28 $52

	and  c                                           ; $546d: $a1
	ld   l, [hl]                                     ; $546e: $6e
	sbc  a                                           ; $546f: $9f
	ld   h, [hl]                                     ; $5470: $66
	sub  c                                           ; $5471: $91
	ld   d, b                                        ; $5472: $50
	ld   a, b                                        ; $5473: $78
	sbc  a                                           ; $5474: $9f
	dec  c                                           ; $5475: $0d
	nop                                              ; $5476: $00
	ld   a, [bc]                                     ; $5477: $0a
	dec  c                                           ; $5478: $0d
	nop                                              ; $5479: $00
	nop                                              ; $547a: $00
	rrca                                             ; $547b: $0f

Jump_05d_547c:
	nop                                              ; $547c: $00
	ld   bc, $5001                                   ; $547d: $01 $01 $50
	rst  $38                                         ; $5480: $ff
	rst  $38                                         ; $5481: $ff
	xor  h                                           ; $5482: $ac
	push af                                          ; $5483: $f5
	bit  4, e                                        ; $5484: $cb $63
	and  c                                           ; $5486: $a1
	ld   a, [$ff0d]                                  ; $5487: $fa $0d $ff
	rst  $38                                         ; $548a: $ff
	ld   [bc], a                                     ; $548b: $02
	ld   a, a                                        ; $548c: $7f
	ld   [hl], c                                     ; $548d: $71
	ld   l, a                                        ; $548e: $6f
	sub  c                                           ; $548f: $91
	ld   [hl], c                                     ; $5490: $71
	ld   l, l                                        ; $5491: $6d
	rst  $38                                         ; $5492: $ff
	rst  $38                                         ; $5493: $ff
	sbc  a                                           ; $5494: $9f
	dec  c                                           ; $5495: $0d
	inc  bc                                          ; $5496: $03
	ld   hl, sp+$71                                  ; $5497: $f8 $71
	ld   [hl], h                                     ; $5499: $74
	ld   l, l                                        ; $549a: $6d
	ld   a, b                                        ; $549b: $78
	ld   d, b                                        ; $549c: $50
	rst  $38                                         ; $549d: $ff
	rst  $38                                         ; $549e: $ff
	sbc  a                                           ; $549f: $9f
	dec  c                                           ; $54a0: $0d
	nop                                              ; $54a1: $00
	ld   a, [bc]                                     ; $54a2: $0a
	add  hl, hl                                      ; $54a3: $29
	nop                                              ; $54a4: $00
	nop                                              ; $54a5: $00
	nop                                              ; $54a6: $00
	inc  b                                           ; $54a7: $04
	add  b                                           ; $54a8: $80
	dec  e                                           ; $54a9: $1d
	ld   bc, $20ff                                   ; $54aa: $01 $ff $20
	inc  bc                                          ; $54ad: $03
	ld   l, c                                        ; $54ae: $69
	ld   [bc], a                                     ; $54af: $02
	nop                                              ; $54b0: $00
	jr   nz, jr_05d_54cf                             ; $54b1: $20 $1c

	nop                                              ; $54b3: $00
	ld   c, $17                                      ; $54b4: $0e $17
	dec  c                                           ; $54b6: $0d
	ld   [bc], a                                     ; $54b7: $02
	nop                                              ; $54b8: $00
	rrca                                             ; $54b9: $0f
	nop                                              ; $54ba: $00
	ld   bc, $0502                                   ; $54bb: $01 $02 $05
	add  b                                           ; $54be: $80

jr_05d_54bf:
	ld   e, $01                                      ; $54bf: $1e $01
	ld   bc, $0100                                   ; $54c1: $01 $00 $01
	ld   h, a                                        ; $54c4: $67
	adc  l                                           ; $54c5: $8d
	sbc  d                                           ; $54c6: $9a
	ld   h, e                                        ; $54c7: $63
	and  c                                           ; $54c8: $a1
	sbc  a                                           ; $54c9: $9f
	dec  c                                           ; $54ca: $0d
	ld   e, b                                        ; $54cb: $58
	inc  b                                           ; $54cc: $04
	rla                                              ; $54cd: $17
	ld   l, l                                        ; $54ce: $6d

jr_05d_54cf:
	ld   l, c                                        ; $54cf: $69
	ld   h, l                                        ; $54d0: $65
	adc  h                                           ; $54d1: $8c
	ld   h, l                                        ; $54d2: $65
	ld   l, l                                        ; $54d3: $6d
	sbc  a                                           ; $54d4: $9f
	dec  c                                           ; $54d5: $0d
	nop                                              ; $54d6: $00
	ld   a, [bc]                                     ; $54d7: $0a
	rlca                                             ; $54d8: $07
	and  d                                           ; $54d9: $a2
	inc  bc                                          ; $54da: $03
	inc  bc                                          ; $54db: $03
	ld   c, a                                        ; $54dc: $4f
	ld   [bc], a                                     ; $54dd: $02
	nop                                              ; $54de: $00
	inc  bc                                          ; $54df: $03
	ld   c, c                                        ; $54e0: $49
	add  hl, hl                                      ; $54e1: $29
	add  hl, hl                                      ; $54e2: $29
	ld   bc, $2501                                   ; $54e3: $01 $01 $25
	nop                                              ; $54e6: $00
	rrca                                             ; $54e7: $0f
	ld   [bc], a                                     ; $54e8: $02
	nop                                              ; $54e9: $00
	ld   bc, $7d75                                   ; $54ea: $01 $75 $7d
	sbc  [hl]                                        ; $54ed: $9e
	dec  b                                           ; $54ee: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54ef: $cf
	adc  a                                           ; $54f0: $8f
	adc  h                                           ; $54f1: $8c
	ld   h, l                                        ; $54f2: $65
	sub  l                                           ; $54f3: $95
	ld   d, h                                        ; $54f4: $54
	ld   e, c                                        ; $54f5: $59
	sbc  a                                           ; $54f6: $9f
	dec  c                                           ; $54f7: $0d
	ld   [$6300], sp                                 ; $54f8: $08 $00 $63
	and  c                                           ; $54fb: $a1
	sbc  a                                           ; $54fc: $9f
	dec  c                                           ; $54fd: $0d
	nop                                              ; $54fe: $00
	ld   a, [bc]                                     ; $54ff: $0a
	ld   bc, $7850                                   ; $5500: $01 $50 $78
	ld   l, l                                        ; $5503: $6d
	ld   a, l                                        ; $5504: $7d
	sbc  [hl]                                        ; $5505: $9e
	inc  bc                                          ; $5506: $03
	ld   d, b                                        ; $5507: $50
	ld   [bc], a                                     ; $5508: $02
	ld   a, h                                        ; $5509: $7c
	ld   [bc], a                                     ; $550a: $02
	or   [hl]                                        ; $550b: $b6
	ld   a, h                                        ; $550c: $7c
	inc  b                                           ; $550d: $04
	db   $ec                                         ; $550e: $ec
	ld   [hl], l                                     ; $550f: $75
	ld   h, a                                        ; $5510: $67
	sbc  l                                           ; $5511: $9d
	sbc  a                                           ; $5512: $9f
	dec  c                                           ; $5513: $0d
	inc  b                                           ; $5514: $04
	ld   hl, sp+$02                                  ; $5515: $f8 $02
	add  a                                           ; $5517: $87
	inc  b                                           ; $5518: $04
	or   a                                           ; $5519: $b7
	inc  bc                                          ; $551a: $03
	add  d                                           ; $551b: $82
	ld   c, d                                        ; $551c: $4a
	ld   b, a                                        ; $551d: $47
	inc  bc                                          ; $551e: $03
	ld   d, b                                        ; $551f: $50
	ld   [bc], a                                     ; $5520: $02
	ld   a, h                                        ; $5521: $7c
	ld   [bc], a                                     ; $5522: $02
	or   [hl]                                        ; $5523: $b6
	ld   a, h                                        ; $5524: $7c
	inc  b                                           ; $5525: $04
	ld   a, d                                        ; $5526: $7a
	inc  b                                           ; $5527: $04
	ret  c                                           ; $5528: $d8

	dec  c                                           ; $5529: $0d
	and  b                                           ; $552a: $a0
	sub  d                                           ; $552b: $92
	sbc  b                                           ; $552c: $98
	adc  h                                           ; $552d: $8c
	ld   h, a                                        ; $552e: $67
	sbc  l                                           ; $552f: $9d
	sub  [hl]                                        ; $5530: $96
	sbc  a                                           ; $5531: $9f
	dec  c                                           ; $5532: $0d
	nop                                              ; $5533: $00
	ld   a, [bc]                                     ; $5534: $0a
	ld   bc, $688c                                   ; $5535: $01 $8c $68
	ld   a, l                                        ; $5538: $7d
	sbc  [hl]                                        ; $5539: $9e
	sbc  l                                           ; $553a: $9d
	ld   l, l                                        ; $553b: $6d
	ld   e, l                                        ; $553c: $5d
	ld   h, l                                        ; $553d: $65
	ld   a, h                                        ; $553e: $7c
	ld   [bc], a                                     ; $553f: $02
	ld   c, b                                        ; $5540: $48
	ld   [bc], a                                     ; $5541: $02
	sub  c                                           ; $5542: $91
	and  b                                           ; $5543: $a0
	dec  c                                           ; $5544: $0d
	ld   a, [bc]                                     ; $5545: $0a
	ld   [bc], a                                     ; $5546: $02
	inc  bc                                          ; $5547: $03
	ld   h, b                                        ; $5548: $60
	ld   a, c                                        ; $5549: $79
	ld   e, c                                        ; $554a: $59
	sbc  l                                           ; $554b: $9d
	ld   h, l                                        ; $554c: $65
	ld   a, [bc]                                     ; $554d: $0a
	inc  bc                                          ; $554e: $03
	adc  h                                           ; $554f: $8c
	ld   h, a                                        ; $5550: $67
	sbc  a                                           ; $5551: $9f
	dec  c                                           ; $5552: $0d
	nop                                              ; $5553: $00
	ld   a, [bc]                                     ; $5554: $0a
	ld   bc, $6803                                   ; $5555: $01 $03 $68
	ld   a, c                                        ; $5558: $79
	sbc  l                                           ; $5559: $9d
	ld   l, l                                        ; $555a: $6d
	ld   e, l                                        ; $555b: $5d
	ld   h, l                                        ; $555c: $65
	ld   a, h                                        ; $555d: $7c
	ld   [bc], a                                     ; $555e: $02
	ld   c, b                                        ; $555f: $48
	ld   [bc], a                                     ; $5560: $02
	sub  c                                           ; $5561: $91
	and  b                                           ; $5562: $a0
	dec  c                                           ; $5563: $0d
	ld   a, [bc]                                     ; $5564: $0a
	ld   [bc], a                                     ; $5565: $02
	pop  de                                          ; $5566: $d1
	or   b                                           ; $5567: $b0
	inc  b                                           ; $5568: $04
	inc  sp                                          ; $5569: $33
	ld   h, l                                        ; $556a: $65
	ld   [hl], h                                     ; $556b: $74
	ld   e, c                                        ; $556c: $59
	sbc  l                                           ; $556d: $9d
	ld   h, l                                        ; $556e: $65
	ld   a, [bc]                                     ; $556f: $0a
	inc  bc                                          ; $5570: $03
	adc  h                                           ; $5571: $8c
	ld   h, a                                        ; $5572: $67
	sbc  a                                           ; $5573: $9f
	dec  c                                           ; $5574: $0d
	nop                                              ; $5575: $00
	ld   a, [bc]                                     ; $5576: $0a
	ld   bc, $6903                                   ; $5577: $01 $03 $69
	ld   [bc], a                                     ; $557a: $02
	xor  d                                           ; $557b: $aa
	ld   a, c                                        ; $557c: $79
	sbc  [hl]                                        ; $557d: $9e
	sbc  l                                           ; $557e: $9d
	ld   l, l                                        ; $557f: $6d
	ld   e, l                                        ; $5580: $5d
	ld   h, l                                        ; $5581: $65
	ld   a, h                                        ; $5582: $7c
	ld   a, [bc]                                     ; $5583: $0a
	ld   [bc], a                                     ; $5584: $02
	ld   [bc], a                                     ; $5585: $02
	inc  e                                           ; $5586: $1c
	dec  b                                           ; $5587: $05
	ld   c, c                                        ; $5588: $49
	ld   e, c                                        ; $5589: $59
	sub  a                                           ; $558a: $97
	dec  c                                           ; $558b: $0d
	ld   [bc], a                                     ; $558c: $02
	ld   c, b                                        ; $558d: $48
	ld   [bc], a                                     ; $558e: $02
	sub  c                                           ; $558f: $91
	ld   a, [bc]                                     ; $5590: $0a
	inc  bc                                          ; $5591: $03
	ld   h, l                                        ; $5592: $65
	ld   [hl], h                                     ; $5593: $74
	ld   e, e                                        ; $5594: $5b
	adc  h                                           ; $5595: $8c
	ld   h, a                                        ; $5596: $67
	sbc  a                                           ; $5597: $9f
	dec  c                                           ; $5598: $0d
	ld   h, e                                        ; $5599: $63
	ld   d, b                                        ; $559a: $50
	sbc  [hl]                                        ; $559b: $9e
	ld   d, d                                        ; $559c: $52
	ld   e, e                                        ; $559d: $5b
	adc  h                                           ; $559e: $8c
	ld   h, a                                        ; $559f: $67
	sbc  l                                           ; $55a0: $9d
	sub  [hl]                                        ; $55a1: $96
	sbc  a                                           ; $55a2: $9f
	dec  c                                           ; $55a3: $0d
	nop                                              ; $55a4: $00
	ld   a, [bc]                                     ; $55a5: $0a
	inc  e                                           ; $55a6: $1c
	ld   [bc], a                                     ; $55a7: $02
	ld   [bc], a                                     ; $55a8: $02
	ld   [bc], a                                     ; $55a9: $02
	ld   bc, $5d52                                   ; $55aa: $01 $52 $5d
	ld   l, h                                        ; $55ad: $6c
	ld   a, [$020d]                                  ; $55ae: $fa $0d $02
	ld   a, h                                        ; $55b1: $7c
	ld   [bc], a                                     ; $55b2: $02
	or   [hl]                                        ; $55b3: $b6
	ld   a, [$5910]                                  ; $55b4: $fa $10 $59
	ld   e, l                                        ; $55b7: $5d
	ld   h, d                                        ; $55b8: $62
	ld   a, [$000d]                                  ; $55b9: $fa $0d $00
	ld   a, [bc]                                     ; $55bc: $0a
	rrca                                             ; $55bd: $0f
	nop                                              ; $55be: $00
	ld   bc, $0101                                   ; $55bf: $01 $01 $01
	inc  bc                                          ; $55c2: $03
	adc  h                                           ; $55c3: $8c
	ld   l, b                                        ; $55c4: $68
	ld   a, l                                        ; $55c5: $7d
	sbc  [hl]                                        ; $55c6: $9e
	dec  c                                           ; $55c7: $0d
	db   $10                                         ; $55c8: $10
	ld   h, a                                        ; $55c9: $67
	adc  l                                           ; $55ca: $8d
	sbc  d                                           ; $55cb: $9a
	ld   h, e                                        ; $55cc: $63
	and  c                                           ; $55cd: $a1
	ld   a, h                                        ; $55ce: $7c
	ld   [bc], a                                     ; $55cf: $02
	ld   c, b                                        ; $55d0: $48
	ld   [bc], a                                     ; $55d1: $02
	sub  c                                           ; $55d2: $91
	and  b                                           ; $55d3: $a0
	rst  $38                                         ; $55d4: $ff
	rst  $38                                         ; $55d5: $ff
	ld   bc, $0d04                                   ; $55d6: $01 $04 $0d
	nop                                              ; $55d9: $00
	ld   a, [bc]                                     ; $55da: $0a
	add  hl, de                                      ; $55db: $19
	dec  b                                           ; $55dc: $05
	inc  bc                                          ; $55dd: $03
	inc  bc                                          ; $55de: $03
	ld   h, b                                        ; $55df: $60
	ld   a, c                                        ; $55e0: $79
	ld   e, c                                        ; $55e1: $59
	sbc  l                                           ; $55e2: $9d
	ld   h, a                                        ; $55e3: $67
	nop                                              ; $55e4: $00
	nop                                              ; $55e5: $00
	ld   [bc], a                                     ; $55e6: $02
	inc  e                                           ; $55e7: $1c
	ld   a, c                                        ; $55e8: $79
	ld   e, c                                        ; $55e9: $59
	sbc  l                                           ; $55ea: $9d
	ld   h, a                                        ; $55eb: $67
	nop                                              ; $55ec: $00
	ld   bc, $aa02                                   ; $55ed: $01 $02 $aa
	sbc  e                                           ; $55f0: $9b
	ld   a, c                                        ; $55f1: $79
	ld   e, c                                        ; $55f2: $59
	sbc  l                                           ; $55f3: $9d
	ld   h, a                                        ; $55f4: $67
	nop                                              ; $55f5: $00
	ld   [bc], a                                     ; $55f6: $02
	rlca                                             ; $55f7: $07
	ld   h, c                                        ; $55f8: $61
	ld   bc, $0302                                   ; $55f9: $01 $02 $03
	ld   bc, $2000                                   ; $55fc: $01 $00 $20
	nop                                              ; $55ff: $00
	rlca                                             ; $5600: $07
	ld   a, e                                        ; $5601: $7b
	ld   bc, $0302                                   ; $5602: $01 $02 $03
	ld   bc, $2001                                   ; $5605: $01 $01 $20
	nop                                              ; $5608: $00
	rlca                                             ; $5609: $07
	sub  d                                           ; $560a: $92
	ld   bc, $0302                                   ; $560b: $01 $02 $03
	ld   bc, $2002                                   ; $560e: $01 $02 $20
	nop                                              ; $5611: $00
	ld   b, $7a                                      ; $5612: $06 $7a
	inc  bc                                          ; $5614: $03
	rrca                                             ; $5615: $0f
	nop                                              ; $5616: $00
	ld   bc, $0301                                   ; $5617: $01 $01 $03
	ld   h, b                                        ; $561a: $60
	ld   a, c                                        ; $561b: $79
	ld   e, c                                        ; $561c: $59
	sbc  l                                           ; $561d: $9d
	ld   h, a                                        ; $561e: $67
	ld   a, [$000d]                                  ; $561f: $fa $0d $00
	ld   a, [bc]                                     ; $5622: $0a
	dec  b                                           ; $5623: $05
	ld   b, b                                        ; $5624: $40
	rst  $38                                         ; $5625: $ff
	inc  bc                                          ; $5626: $03
	rst  $38                                         ; $5627: $ff
	ld   bc, $2801                                   ; $5628: $01 $01 $28
	nop                                              ; $562b: $00
	ld   b, $a9                                      ; $562c: $06 $a9
	ld   bc, $000f                                   ; $562e: $01 $0f $00
	ld   bc, $0201                                   ; $5631: $01 $01 $02
	inc  e                                           ; $5634: $1c
	ld   a, c                                        ; $5635: $79
	ld   e, c                                        ; $5636: $59
	sbc  l                                           ; $5637: $9d
	ld   h, a                                        ; $5638: $67
	rst  $38                                         ; $5639: $ff
	rst  $38                                         ; $563a: $ff
	ld   l, [hl]                                     ; $563b: $6e
	ld   [hl], c                                     ; $563c: $71
	ld   e, a                                        ; $563d: $5f
	rst  $38                                         ; $563e: $ff
	rst  $38                                         ; $563f: $ff
	dec  c                                           ; $5640: $0d
	nop                                              ; $5641: $00
	ld   a, [bc]                                     ; $5642: $0a
	ld   b, $a9                                      ; $5643: $06 $a9
	ld   bc, $000f                                   ; $5645: $01 $0f $00
	ld   bc, $0201                                   ; $5648: $01 $01 $02
	xor  d                                           ; $564b: $aa
	ld   a, c                                        ; $564c: $79
	ld   e, c                                        ; $564d: $59
	sbc  l                                           ; $564e: $9d
	ld   h, a                                        ; $564f: $67
	rst  $38                                         ; $5650: $ff
	rst  $38                                         ; $5651: $ff
	ld   l, [hl]                                     ; $5652: $6e
	ld   [hl], c                                     ; $5653: $71
	ld   e, a                                        ; $5654: $5f
	rst  $38                                         ; $5655: $ff
	rst  $38                                         ; $5656: $ff
	dec  c                                           ; $5657: $0d
	nop                                              ; $5658: $00
	ld   a, [bc]                                     ; $5659: $0a
	ld   b, $a9                                      ; $565a: $06 $a9
	ld   bc, $021c                                   ; $565c: $01 $1c $02
	ld   [bc], a                                     ; $565f: $02
	ld   [bc], a                                     ; $5660: $02
	ld   bc, $7a54                                   ; $5661: $01 $54 $7a
	ld   a, [$b610]                                  ; $5664: $fa $10 $b6
	db   $ed                                         ; $5667: $ed
	adc  a                                           ; $5668: $8f
	db   $fc                                         ; $5669: $fc
	sbc  a                                           ; $566a: $9f
	dec  c                                           ; $566b: $0d
	ld   l, a                                        ; $566c: $6f
	sub  l                                           ; $566d: $95
	ld   h, c                                        ; $566e: $61
	adc  h                                           ; $566f: $8c
	ld   e, c                                        ; $5670: $59
	halt                                             ; $5671: $76
	sbc  [hl]                                        ; $5672: $9e
	ld   h, c                                        ; $5673: $61
	ld   h, h                                        ; $5674: $64
	ld   e, c                                        ; $5675: $59
	ld   h, l                                        ; $5676: $65
	ld   d, d                                        ; $5677: $52
	ld   a, [$760d]                                  ; $5678: $fa $0d $76
	sbc  b                                           ; $567b: $98
	sub  c                                           ; $567c: $91
	ei                                               ; $567d: $fb
	ei                                               ; $567e: $fb
	ld   a, [$000d]                                  ; $567f: $fa $0d $00
	ld   a, [bc]                                     ; $5682: $0a
	rrca                                             ; $5683: $0f
	nop                                              ; $5684: $00
	ld   bc, $0101                                   ; $5685: $01 $01 $01
	inc  bc                                          ; $5688: $03
	inc  bc                                          ; $5689: $03
	ld   l, b                                        ; $568a: $68
	ld   a, c                                        ; $568b: $79
	sbc  [hl]                                        ; $568c: $9e
	dec  c                                           ; $568d: $0d
	db   $10                                         ; $568e: $10
	ld   h, a                                        ; $568f: $67
	adc  l                                           ; $5690: $8d
	sbc  d                                           ; $5691: $9a
	ld   h, e                                        ; $5692: $63
	and  c                                           ; $5693: $a1
	ld   a, h                                        ; $5694: $7c
	ld   [bc], a                                     ; $5695: $02
	ld   c, b                                        ; $5696: $48
	ld   [bc], a                                     ; $5697: $02
	sub  c                                           ; $5698: $91
	and  b                                           ; $5699: $a0
	rst  $38                                         ; $569a: $ff
	rst  $38                                         ; $569b: $ff
	ld   bc, $0d04                                   ; $569c: $01 $04 $0d
	nop                                              ; $569f: $00
	ld   a, [bc]                                     ; $56a0: $0a
	add  hl, de                                      ; $56a1: $19
	dec  b                                           ; $56a2: $05
	inc  bc                                          ; $56a3: $03
	pop  de                                          ; $56a4: $d1
	or   b                                           ; $56a5: $b0
	inc  b                                           ; $56a6: $04
	inc  sp                                          ; $56a7: $33
	ld   [hl], l                                     ; $56a8: $75
	ld   e, c                                        ; $56a9: $59
	sbc  l                                           ; $56aa: $9d
	ld   h, a                                        ; $56ab: $67
	nop                                              ; $56ac: $00
	nop                                              ; $56ad: $00
	cp   l                                           ; $56ae: $bd
	push af                                          ; $56af: $f5
	inc  b                                           ; $56b0: $04
	inc  sp                                          ; $56b1: $33
	ld   [hl], l                                     ; $56b2: $75
	ld   e, c                                        ; $56b3: $59
	sbc  l                                           ; $56b4: $9d
	ld   h, a                                        ; $56b5: $67
	nop                                              ; $56b6: $00
	ld   bc, $b0be                                   ; $56b7: $01 $be $b0
	inc  b                                           ; $56ba: $04
	inc  sp                                          ; $56bb: $33
	ld   [hl], l                                     ; $56bc: $75
	ld   e, c                                        ; $56bd: $59
	sbc  l                                           ; $56be: $9d
	ld   h, a                                        ; $56bf: $67
	nop                                              ; $56c0: $00
	ld   [bc], a                                     ; $56c1: $02
	rlca                                             ; $56c2: $07
	inc  l                                           ; $56c3: $2c
	ld   [bc], a                                     ; $56c4: $02
	ld   [bc], a                                     ; $56c5: $02
	inc  bc                                          ; $56c6: $03
	ld   bc, $2000                                   ; $56c7: $01 $00 $20
	nop                                              ; $56ca: $00
	rlca                                             ; $56cb: $07
	ld   c, b                                        ; $56cc: $48
	ld   [bc], a                                     ; $56cd: $02
	ld   [bc], a                                     ; $56ce: $02
	inc  bc                                          ; $56cf: $03
	ld   bc, $2001                                   ; $56d0: $01 $01 $20
	nop                                              ; $56d3: $00
	rlca                                             ; $56d4: $07
	ld   h, d                                        ; $56d5: $62
	ld   [bc], a                                     ; $56d6: $02
	ld   [bc], a                                     ; $56d7: $02
	inc  bc                                          ; $56d8: $03
	ld   bc, $2002                                   ; $56d9: $01 $02 $20
	nop                                              ; $56dc: $00
	ld   b, $7a                                      ; $56dd: $06 $7a
	inc  bc                                          ; $56df: $03
	rrca                                             ; $56e0: $0f
	nop                                              ; $56e1: $00
	ld   bc, $d101                                   ; $56e2: $01 $01 $d1
	or   b                                           ; $56e5: $b0
	inc  b                                           ; $56e6: $04
	inc  sp                                          ; $56e7: $33
	ld   [hl], l                                     ; $56e8: $75
	ld   e, c                                        ; $56e9: $59
	sbc  l                                           ; $56ea: $9d
	ld   h, a                                        ; $56eb: $67
	ld   a, [$000d]                                  ; $56ec: $fa $0d $00
	ld   a, [bc]                                     ; $56ef: $0a
	dec  b                                           ; $56f0: $05
	ld   b, b                                        ; $56f1: $40
	rst  $38                                         ; $56f2: $ff
	inc  bc                                          ; $56f3: $03
	rst  $38                                         ; $56f4: $ff
	ld   bc, $2801                                   ; $56f5: $01 $01 $28
	nop                                              ; $56f8: $00
	ld   b, $7c                                      ; $56f9: $06 $7c
	ld   [bc], a                                     ; $56fb: $02
	rrca                                             ; $56fc: $0f
	nop                                              ; $56fd: $00
	ld   bc, $bd01                                   ; $56fe: $01 $01 $bd
	push af                                          ; $5701: $f5
	inc  b                                           ; $5702: $04
	inc  sp                                          ; $5703: $33
	ld   [hl], l                                     ; $5704: $75
	ld   e, c                                        ; $5705: $59
	sbc  l                                           ; $5706: $9d
	ld   h, a                                        ; $5707: $67
	rst  $38                                         ; $5708: $ff
	rst  $38                                         ; $5709: $ff
	dec  c                                           ; $570a: $0d
	ld   l, [hl]                                     ; $570b: $6e
	ld   [hl], c                                     ; $570c: $71
	ld   e, a                                        ; $570d: $5f
	rst  $38                                         ; $570e: $ff
	rst  $38                                         ; $570f: $ff
	dec  c                                           ; $5710: $0d
	nop                                              ; $5711: $00
	ld   a, [bc]                                     ; $5712: $0a
	ld   b, $7c                                      ; $5713: $06 $7c
	ld   [bc], a                                     ; $5715: $02
	rrca                                             ; $5716: $0f
	nop                                              ; $5717: $00
	ld   bc, $be01                                   ; $5718: $01 $01 $be
	or   b                                           ; $571b: $b0
	inc  b                                           ; $571c: $04
	inc  sp                                          ; $571d: $33
	ld   [hl], l                                     ; $571e: $75
	ld   e, c                                        ; $571f: $59
	sbc  l                                           ; $5720: $9d
	ld   h, a                                        ; $5721: $67
	rst  $38                                         ; $5722: $ff
	rst  $38                                         ; $5723: $ff
	dec  c                                           ; $5724: $0d
	ld   l, [hl]                                     ; $5725: $6e
	ld   [hl], c                                     ; $5726: $71
	ld   e, a                                        ; $5727: $5f
	rst  $38                                         ; $5728: $ff
	rst  $38                                         ; $5729: $ff
	dec  c                                           ; $572a: $0d
	nop                                              ; $572b: $00
	ld   a, [bc]                                     ; $572c: $0a
	ld   b, $7c                                      ; $572d: $06 $7c
	ld   [bc], a                                     ; $572f: $02
	inc  e                                           ; $5730: $1c
	ld   [bc], a                                     ; $5731: $02
	rlca                                             ; $5732: $07
	rlca                                             ; $5733: $07
	ld   bc, $c4b0                                   ; $5734: $01 $b0 $c4
	ld   a, [$9210]                                  ; $5737: $fa $10 $92
	sbc  c                                           ; $573a: $99
	ld   a, b                                        ; $573b: $78
	ld   d, b                                        ; $573c: $50
	rst  $38                                         ; $573d: $ff
	rst  $38                                         ; $573e: $ff
	dec  c                                           ; $573f: $0d
	ld   d, b                                        ; $5740: $50
	ld   [hl], c                                     ; $5741: $71
	ld   a, [$fafa]                                  ; $5742: $fa $fa $fa
	dec  c                                           ; $5745: $0d
	nop                                              ; $5746: $00
	ld   a, [bc]                                     ; $5747: $0a
	rrca                                             ; $5748: $0f
	nop                                              ; $5749: $00
	ld   bc, $0101                                   ; $574a: $01 $01 $01
	inc  bc                                          ; $574d: $03
	inc  bc                                          ; $574e: $03
	ld   l, c                                        ; $574f: $69
	ld   [bc], a                                     ; $5750: $02
	xor  d                                           ; $5751: $aa
	ld   a, c                                        ; $5752: $79
	sbc  [hl]                                        ; $5753: $9e
	ld   h, a                                        ; $5754: $67
	adc  l                                           ; $5755: $8d
	sbc  d                                           ; $5756: $9a
	ld   h, e                                        ; $5757: $63
	and  c                                           ; $5758: $a1
	ld   a, c                                        ; $5759: $79
	dec  c                                           ; $575a: $0d
	db   $10                                         ; $575b: $10
	ld   [bc], a                                     ; $575c: $02
	ld   c, b                                        ; $575d: $48
	ld   [bc], a                                     ; $575e: $02
	sub  c                                           ; $575f: $91
	and  b                                           ; $5760: $a0
	ld   h, l                                        ; $5761: $65
	ld   e, c                                        ; $5762: $59
	ld   e, a                                        ; $5763: $5f
	sbc  c                                           ; $5764: $99
	and  c                                           ; $5765: $a1
	ld   l, [hl]                                     ; $5766: $6e
	ld   a, b                                        ; $5767: $78
	rst  $38                                         ; $5768: $ff
	rst  $38                                         ; $5769: $ff
	ld   bc, $0d04                                   ; $576a: $01 $04 $0d
	nop                                              ; $576d: $00
	ld   a, [bc]                                     ; $576e: $0a
	add  hl, de                                      ; $576f: $19
	dec  b                                           ; $5770: $05
	inc  bc                                          ; $5771: $03
	ld   [bc], a                                     ; $5772: $02
	inc  e                                           ; $5773: $1c
	dec  b                                           ; $5774: $05
	ld   c, c                                        ; $5775: $49
	ld   e, c                                        ; $5776: $59
	sub  a                                           ; $5777: $97
	ld   [bc], a                                     ; $5778: $02
	ld   c, b                                        ; $5779: $48
	ld   [bc], a                                     ; $577a: $02
	sub  c                                           ; $577b: $91
	nop                                              ; $577c: $00
	nop                                              ; $577d: $00
	inc  bc                                          ; $577e: $03
	ld   h, l                                        ; $577f: $65
	inc  bc                                          ; $5780: $03
	ret  nc                                          ; $5781: $d0

	ld   e, c                                        ; $5782: $59
	sub  a                                           ; $5783: $97
	ld   [bc], a                                     ; $5784: $02
	ld   c, b                                        ; $5785: $48
	ld   [bc], a                                     ; $5786: $02
	sub  c                                           ; $5787: $91
	nop                                              ; $5788: $00
	ld   bc, $5305                                   ; $5789: $01 $05 $53
	ld   [bc], a                                     ; $578c: $02
	xor  d                                           ; $578d: $aa
	ld   e, c                                        ; $578e: $59
	sub  a                                           ; $578f: $97
	ld   [bc], a                                     ; $5790: $02
	ld   c, b                                        ; $5791: $48
	ld   [bc], a                                     ; $5792: $02
	sub  c                                           ; $5793: $91
	nop                                              ; $5794: $00
	ld   [bc], a                                     ; $5795: $02
	rlca                                             ; $5796: $07
	nop                                              ; $5797: $00
	inc  bc                                          ; $5798: $03
	ld   [bc], a                                     ; $5799: $02
	inc  bc                                          ; $579a: $03
	ld   bc, $2000                                   ; $579b: $01 $00 $20
	nop                                              ; $579e: $00
	rlca                                             ; $579f: $07
	ld   a, [hl+]                                    ; $57a0: $2a
	inc  bc                                          ; $57a1: $03
	ld   [bc], a                                     ; $57a2: $02
	inc  bc                                          ; $57a3: $03
	ld   bc, $2001                                   ; $57a4: $01 $01 $20
	nop                                              ; $57a7: $00
	rlca                                             ; $57a8: $07
	ld   a, [hl+]                                    ; $57a9: $2a
	inc  bc                                          ; $57aa: $03
	ld   [bc], a                                     ; $57ab: $02
	inc  bc                                          ; $57ac: $03
	ld   bc, $2002                                   ; $57ad: $01 $02 $20
	nop                                              ; $57b0: $00
	ld   b, $7a                                      ; $57b1: $06 $7a
	inc  bc                                          ; $57b3: $03
	rrca                                             ; $57b4: $0f
	nop                                              ; $57b5: $00
	ld   bc, $0201                                   ; $57b6: $01 $01 $02
	inc  e                                           ; $57b9: $1c
	dec  b                                           ; $57ba: $05
	ld   c, c                                        ; $57bb: $49
	ld   e, c                                        ; $57bc: $59
	sub  a                                           ; $57bd: $97
	ld   [bc], a                                     ; $57be: $02
	ld   c, b                                        ; $57bf: $48
	ld   [bc], a                                     ; $57c0: $02
	sub  c                                           ; $57c1: $91
	ld   l, [hl]                                     ; $57c2: $6e
	ld   a, [$000d]                                  ; $57c3: $fa $0d $00
	ld   a, [bc]                                     ; $57c6: $0a
	inc  d                                           ; $57c7: $14
	rlca                                             ; $57c8: $07
	ld   bc, $4005                                   ; $57c9: $01 $05 $40
	rst  $38                                         ; $57cc: $ff
	inc  bc                                          ; $57cd: $03
	rst  $38                                         ; $57ce: $ff
	ld   bc, $2801                                   ; $57cf: $01 $01 $28
	nop                                              ; $57d2: $00
	dec  c                                           ; $57d3: $0d
	nop                                              ; $57d4: $00
	nop                                              ; $57d5: $00
	rrca                                             ; $57d6: $0f
	nop                                              ; $57d7: $00
	ld   bc, $0b0c                                   ; $57d8: $01 $0c $0b
	ld   b, $17                                      ; $57db: $06 $17
	inc  b                                           ; $57dd: $04
	inc  c                                           ; $57de: $0c
	inc  bc                                          ; $57df: $03
	inc  e                                           ; $57e0: $1c
	ld   [bc], a                                     ; $57e1: $02
	inc  bc                                          ; $57e2: $03
	inc  bc                                          ; $57e3: $03
	dec  e                                           ; $57e4: $1d
	ld   b, b                                        ; $57e5: $40
	ld   [de], a                                     ; $57e6: $12
	inc  bc                                          ; $57e7: $03
	ld   [de], a                                     ; $57e8: $12
	ld   bc, $2901                                   ; $57e9: $01 $01 $29
	nop                                              ; $57ec: $00
	ld   bc, $9e52                                   ; $57ed: $01 $52 $9e
	inc  bc                                          ; $57f0: $03
	ldh  a, [c]                                      ; $57f1: $f2
	ld   d, d                                        ; $57f2: $52
	ld   [hl], l                                     ; $57f3: $75
	ld   h, a                                        ; $57f4: $67
	sbc  l                                           ; $57f5: $9d
	rst  $38                                         ; $57f6: $ff
	rst  $38                                         ; $57f7: $ff
	dec  c                                           ; $57f8: $0d
	nop                                              ; $57f9: $00
	add  hl, bc                                      ; $57fa: $09
	ld   e, $1c                                      ; $57fb: $1e $1c
	ld   [bc], a                                     ; $57fd: $02
	rlca                                             ; $57fe: $07
	rlca                                             ; $57ff: $07
	ld   bc, $5490                                   ; $5800: $01 $90 $54
	rst  $38                                         ; $5803: $ff
	rst  $38                                         ; $5804: $ff
	ld   bc, $0207                                   ; $5805: $01 $07 $02
	inc  e                                           ; $5808: $1c
	dec  b                                           ; $5809: $05
	ld   c, c                                        ; $580a: $49
	ld   e, c                                        ; $580b: $59
	sub  a                                           ; $580c: $97
	ld   [bc], a                                     ; $580d: $02
	ld   c, b                                        ; $580e: $48
	ld   [bc], a                                     ; $580f: $02
	sub  c                                           ; $5810: $91
	ld   bc, $0d08                                   ; $5811: $01 $08 $0d
	ld   [hl], l                                     ; $5814: $75
	ld   h, a                                        ; $5815: $67
	sbc  l                                           ; $5816: $9d
	sub  [hl]                                        ; $5817: $96
	sbc  a                                           ; $5818: $9f
	ld   d, b                                        ; $5819: $50
	ld   d, b                                        ; $581a: $50
	sbc  [hl]                                        ; $581b: $9e
	inc  bc                                          ; $581c: $03
	ldh  a, [c]                                      ; $581d: $f2
	ld   d, d                                        ; $581e: $52
	ld   a, [$000d]                                  ; $581f: $fa $0d $00
	ld   a, [bc]                                     ; $5822: $0a
	dec  c                                           ; $5823: $0d
	nop                                              ; $5824: $00
	nop                                              ; $5825: $00
	rrca                                             ; $5826: $0f
	nop                                              ; $5827: $00
	ld   bc, $0b0c                                   ; $5828: $01 $0c $0b
	ld   b, $17                                      ; $582b: $06 $17
	inc  b                                           ; $582d: $04
	inc  e                                           ; $582e: $1c
	ld   [bc], a                                     ; $582f: $02
	dec  b                                           ; $5830: $05
	dec  b                                           ; $5831: $05
	ld   bc, $9750                                   ; $5832: $01 $50 $97
	sub  a                                           ; $5835: $97
	sbc  [hl]                                        ; $5836: $9e
	ld   [$6300], sp                                 ; $5837: $08 $00 $63
	and  c                                           ; $583a: $a1
	ld   a, c                                        ; $583b: $79
	ld   a, l                                        ; $583c: $7d
	dec  c                                           ; $583d: $0d
	ldh  [c], a                                      ; $583e: $e2
	db   $ec                                         ; $583f: $ec
	ld   l, [hl]                                     ; $5840: $6e
	ld   [hl], c                                     ; $5841: $71
	ld   l, l                                        ; $5842: $6d
	ld   e, c                                        ; $5843: $59
	ld   h, l                                        ; $5844: $65
	sub  a                                           ; $5845: $97
	rst  $38                                         ; $5846: $ff
	rst  $38                                         ; $5847: $ff
	dec  c                                           ; $5848: $0d
	nop                                              ; $5849: $00
	ld   a, [bc]                                     ; $584a: $0a
	dec  c                                           ; $584b: $0d
	nop                                              ; $584c: $00
	nop                                              ; $584d: $00
	rrca                                             ; $584e: $0f
	nop                                              ; $584f: $00
	ld   bc, $0b0c                                   ; $5850: $01 $0c $0b
	ld   b, $c1                                      ; $5853: $06 $c1
	inc  b                                           ; $5855: $04
	inc  e                                           ; $5856: $1c
	ld   [bc], a                                     ; $5857: $02
	rlca                                             ; $5858: $07
	rlca                                             ; $5859: $07
	ld   bc, $0008                                   ; $585a: $01 $08 $00
	ld   h, e                                        ; $585d: $63
	and  c                                           ; $585e: $a1
	rst  $38                                         ; $585f: $ff
	rst  $38                                         ; $5860: $ff
	rst  $38                                         ; $5861: $ff
	rst  $38                                         ; $5862: $ff
	dec  c                                           ; $5863: $0d
	ld   [bc], a                                     ; $5864: $02
	and  l                                           ; $5865: $a5
	sbc  [hl]                                        ; $5866: $9e
	sbc  l                                           ; $5867: $9d
	ld   l, l                                        ; $5868: $6d
	ld   e, l                                        ; $5869: $5d
	ld   h, l                                        ; $586a: $65
	sbc  [hl]                                        ; $586b: $9e
	ld   l, e                                        ; $586c: $6b
	and  c                                           ; $586d: $a1
	ld   a, b                                        ; $586e: $78
	ld   [bc], a                                     ; $586f: $02
	and  c                                           ; $5870: $a1
	inc  b                                           ; $5871: $04
	sbc  [hl]                                        ; $5872: $9e
	dec  c                                           ; $5873: $0d
	ld   h, [hl]                                     ; $5874: $66
	sub  c                                           ; $5875: $91
	ld   d, b                                        ; $5876: $50
	sbc  b                                           ; $5877: $98
	adc  h                                           ; $5878: $8c
	ld   l, c                                        ; $5879: $69
	and  c                                           ; $587a: $a1
	ld   a, h                                        ; $587b: $7c
	sbc  a                                           ; $587c: $9f
	dec  c                                           ; $587d: $0d
	nop                                              ; $587e: $00
	ld   a, [bc]                                     ; $587f: $0a
	ld   bc, $525f                                   ; $5880: $01 $5f $52
	ld   h, c                                        ; $5883: $61
	ld   a, l                                        ; $5884: $7d
	inc  b                                           ; $5885: $04
	dec  bc                                          ; $5886: $0b
	inc  bc                                          ; $5887: $03
	ld   b, c                                        ; $5888: $41
	ld   a, c                                        ; $5889: $79
	ld   d, d                                        ; $588a: $52
	ld   l, l                                        ; $588b: $6d
	ld   h, l                                        ; $588c: $65
	adc  h                                           ; $588d: $8c
	ld   h, a                                        ; $588e: $67
	sbc  l                                           ; $588f: $9d
	sbc  a                                           ; $5890: $9f
	dec  c                                           ; $5891: $0d
	nop                                              ; $5892: $00
	dec  b                                           ; $5893: $05
	ld   b, b                                        ; $5894: $40
	ld   c, a                                        ; $5895: $4f
	ld   bc, $0000                                   ; $5896: $01 $00 $00
	ld   bc, $7d75                                   ; $5899: $01 $75 $7d
	inc  bc                                          ; $589c: $03
	add  e                                           ; $589d: $83
	dec  b                                           ; $589e: $05
	dec  c                                           ; $589f: $0d
	sbc  a                                           ; $58a0: $9f
	dec  c                                           ; $58a1: $0d
	nop                                              ; $58a2: $00
	ld   a, [bc]                                     ; $58a3: $0a
	dec  c                                           ; $58a4: $0d
	nop                                              ; $58a5: $00
	nop                                              ; $58a6: $00
	rrca                                             ; $58a7: $0f
	nop                                              ; $58a8: $00
	ld   bc, $5001                                   ; $58a9: $01 $01 $50
	ei                                               ; $58ac: $fb
	ld   d, b                                        ; $58ad: $50
	sbc  a                                           ; $58ae: $9f
	ld   [bc], a                                     ; $58af: $02
	ld   a, a                                        ; $58b0: $7f
	ld   [hl], c                                     ; $58b1: $71
	ld   l, a                                        ; $58b2: $6f
	sub  c                                           ; $58b3: $91
	ld   [hl], c                                     ; $58b4: $71
	ld   l, l                                        ; $58b5: $6d
	sbc  a                                           ; $58b6: $9f
	dec  c                                           ; $58b7: $0d
	ld   h, a                                        ; $58b8: $67
	adc  l                                           ; $58b9: $8d
	sbc  d                                           ; $58ba: $9a
	ld   h, e                                        ; $58bb: $63
	and  c                                           ; $58bc: $a1
	sbc  [hl]                                        ; $58bd: $9e
	inc  bc                                          ; $58be: $03
	ld   hl, sp+$71                                  ; $58bf: $f8 $71
	ld   [hl], h                                     ; $58c1: $74
	ld   l, l                                        ; $58c2: $6d
	ld   a, b                                        ; $58c3: $78
	ld   d, b                                        ; $58c4: $50
	rst  $38                                         ; $58c5: $ff
	rst  $38                                         ; $58c6: $ff
	dec  c                                           ; $58c7: $0d
	nop                                              ; $58c8: $00
	ld   a, [bc]                                     ; $58c9: $0a
	nop                                              ; $58ca: $00
	rlca                                             ; $58cb: $07
	ld   [hl-], a                                    ; $58cc: $32
	inc  b                                           ; $58cd: $04
	inc  bc                                          ; $58ce: $03
	rst  $38                                         ; $58cf: $ff
	ld   bc, $2003                                   ; $58d0: $01 $03 $20
	nop                                              ; $58d3: $00
	rlca                                             ; $58d4: $07
	ld   h, h                                        ; $58d5: $64
	inc  b                                           ; $58d6: $04
	inc  bc                                          ; $58d7: $03
	rst  $38                                         ; $58d8: $ff
	ld   bc, $2002                                   ; $58d9: $01 $02 $20
	nop                                              ; $58dc: $00
	rlca                                             ; $58dd: $07
	pop  bc                                          ; $58de: $c1
	inc  b                                           ; $58df: $04
	inc  bc                                          ; $58e0: $03
	rst  $38                                         ; $58e1: $ff
	ld   bc, $2301                                   ; $58e2: $01 $01 $23
	nop                                              ; $58e5: $00
	inc  e                                           ; $58e6: $1c
	ld   [bc], a                                     ; $58e7: $02
	ld   bc, $1d01                                   ; $58e8: $01 $01 $1d
	ld   b, b                                        ; $58eb: $40
	ld   [de], a                                     ; $58ec: $12
	inc  bc                                          ; $58ed: $03
	ld   [de], a                                     ; $58ee: $12
	ld   bc, $2803                                   ; $58ef: $01 $03 $28
	nop                                              ; $58f2: $00
	ld   bc, $5978                                   ; $58f3: $01 $78 $59
	ld   a, b                                        ; $58f6: $78
	ld   e, c                                        ; $58f7: $59
	ld   d, d                                        ; $58f8: $52
	ld   d, d                                        ; $58f9: $52
	dec  b                                           ; $58fa: $05
	add  hl, de                                      ; $58fb: $19
	inc  bc                                          ; $58fc: $03
	and  h                                           ; $58fd: $a4
	ld   a, c                                        ; $58fe: $79
	dec  c                                           ; $58ff: $0d
	ld   a, b                                        ; $5900: $78
	sbc  b                                           ; $5901: $98
	adc  h                                           ; $5902: $8c
	ld   h, l                                        ; $5903: $65
	ld   l, l                                        ; $5904: $6d
	sbc  l                                           ; $5905: $9d
	sbc  a                                           ; $5906: $9f
	ld   d, b                                        ; $5907: $50
	sbc  b                                           ; $5908: $98
	ld   e, d                                        ; $5909: $5a
	halt                                             ; $590a: $76
	ld   d, h                                        ; $590b: $54
	dec  c                                           ; $590c: $0d
	ld   [$6300], sp                                 ; $590d: $08 $00 $63
	and  c                                           ; $5910: $a1
	sbc  a                                           ; $5911: $9f
	dec  c                                           ; $5912: $0d
	nop                                              ; $5913: $00
	ld   a, [bc]                                     ; $5914: $0a
	ld   b, $8b                                      ; $5915: $06 $8b
	inc  b                                           ; $5917: $04
	inc  e                                           ; $5918: $1c
	ld   [bc], a                                     ; $5919: $02
	nop                                              ; $591a: $00
	nop                                              ; $591b: $00
	dec  e                                           ; $591c: $1d
	ld   b, b                                        ; $591d: $40
	ld   [de], a                                     ; $591e: $12
	inc  bc                                          ; $591f: $03
	ld   [de], a                                     ; $5920: $12
	ld   bc, $2801                                   ; $5921: $01 $01 $28
	nop                                              ; $5924: $00
	ld   bc, $508c                                   ; $5925: $01 $8c $50
	adc  h                                           ; $5928: $8c
	ld   d, b                                        ; $5929: $50
	sbc  [hl]                                        ; $592a: $9e
	halt                                             ; $592b: $76
	ld   [bc], a                                     ; $592c: $02
	sbc  l                                           ; $592d: $9d
	ld   [hl], c                                     ; $592e: $71
	ld   l, l                                        ; $592f: $6d
	halt                                             ; $5930: $76
	ld   h, c                                        ; $5931: $61
	sbc  e                                           ; $5932: $9b
	dec  c                                           ; $5933: $0d
	ld   [hl], l                                     ; $5934: $75
	ld   h, a                                        ; $5935: $67
	sbc  l                                           ; $5936: $9d
	ld   a, e                                        ; $5937: $7b
	sbc  a                                           ; $5938: $9f
	dec  c                                           ; $5939: $0d
	nop                                              ; $593a: $00
	ld   a, [bc]                                     ; $593b: $0a
	ld   b, $8b                                      ; $593c: $06 $8b
	inc  b                                           ; $593e: $04
	ld   bc, $7d75                                   ; $593f: $01 $75 $7d
	sbc  [hl]                                        ; $5942: $9e
	sbc  l                                           ; $5943: $9d
	ld   l, l                                        ; $5944: $6d
	ld   e, l                                        ; $5945: $5d
	ld   h, l                                        ; $5946: $65
	dec  c                                           ; $5947: $0d
	ld   d, b                                        ; $5948: $50
	halt                                             ; $5949: $76
	ld   a, l                                        ; $594a: $7d
	sbc  [hl]                                        ; $594b: $9e
	add  b                                           ; $594c: $80
	halt                                             ; $594d: $76
	sbc  b                                           ; $594e: $98
	ld   [hl], l                                     ; $594f: $75
	dec  c                                           ; $5950: $0d
	dec  b                                           ; $5951: $05
	add  hl, de                                      ; $5952: $19
	inc  bc                                          ; $5953: $03
	and  h                                           ; $5954: $a4
	ld   h, l                                        ; $5955: $65
	adc  h                                           ; $5956: $8c
	ld   h, a                                        ; $5957: $67
	ld   a, h                                        ; $5958: $7c
	ld   [hl], l                                     ; $5959: $75
	sbc  a                                           ; $595a: $9f
	dec  c                                           ; $595b: $0d
	nop                                              ; $595c: $00
	ld   a, [bc]                                     ; $595d: $0a
	ld   bc, $0458                                   ; $595e: $01 $58 $04
	ld   a, e                                        ; $5961: $7b
	sbc  d                                           ; $5962: $9a
	ld   h, e                                        ; $5963: $63
	adc  h                                           ; $5964: $8c
	ld   [hl], l                                     ; $5965: $75
	ld   h, l                                        ; $5966: $65
	ld   l, l                                        ; $5967: $6d
	sbc  a                                           ; $5968: $9f
	dec  c                                           ; $5969: $0d
	nop                                              ; $596a: $00
	ld   a, [bc]                                     ; $596b: $0a
	dec  c                                           ; $596c: $0d
	nop                                              ; $596d: $00
	nop                                              ; $596e: $00
	rrca                                             ; $596f: $0f
	nop                                              ; $5970: $00
	ld   bc, $1e09                                   ; $5971: $01 $09 $1e
	nop                                              ; $5974: $00
	inc  e                                           ; $5975: $1c
	ld   [bc], a                                     ; $5976: $02
	dec  b                                           ; $5977: $05
	dec  b                                           ; $5978: $05
	dec  e                                           ; $5979: $1d
	ld   b, b                                        ; $597a: $40
	ld   [de], a                                     ; $597b: $12
	inc  bc                                          ; $597c: $03
	ld   [de], a                                     ; $597d: $12
	ld   bc, $2902                                   ; $597e: $01 $02 $29
	nop                                              ; $5981: $00
	ld   bc, $5490                                   ; $5982: $01 $90 $54
	sbc  [hl]                                        ; $5985: $9e
	ld   h, c                                        ; $5986: $61
	and  c                                           ; $5987: $a1
	ld   a, b                                        ; $5988: $78
	ld   h, c                                        ; $5989: $61
	halt                                             ; $598a: $76
	ld   a, b                                        ; $598b: $78
	sub  a                                           ; $598c: $97
	dec  c                                           ; $598d: $0d
	inc  bc                                          ; $598e: $03
	ld   l, h                                        ; $598f: $6c
	dec  b                                           ; $5990: $05
	ld   h, $79                                      ; $5991: $26 $79
	ld   l, l                                        ; $5993: $6d
	ld   a, h                                        ; $5994: $7c
	adc  a                                           ; $5995: $8f
	ld   a, [hl]                                     ; $5996: $7e
	sub  [hl]                                        ; $5997: $96
	ld   e, c                                        ; $5998: $59
	ld   [hl], c                                     ; $5999: $71
	ld   l, l                                        ; $599a: $6d
	dec  c                                           ; $599b: $0d
	ld   [hl], l                                     ; $599c: $75
	ld   h, a                                        ; $599d: $67
	sbc  l                                           ; $599e: $9d
	sbc  a                                           ; $599f: $9f
	dec  c                                           ; $59a0: $0d
	nop                                              ; $59a1: $00
	ld   a, [bc]                                     ; $59a2: $0a
	ld   bc, $7d75                                   ; $59a3: $01 $75 $7d
	sbc  [hl]                                        ; $59a6: $9e
	sbc  l                                           ; $59a7: $9d
	ld   l, l                                        ; $59a8: $6d
	ld   e, l                                        ; $59a9: $5d
	ld   h, l                                        ; $59aa: $65
	dec  c                                           ; $59ab: $0d
	ld   d, b                                        ; $59ac: $50
	halt                                             ; $59ad: $76
	ld   a, l                                        ; $59ae: $7d
	sbc  [hl]                                        ; $59af: $9e
	add  b                                           ; $59b0: $80
	halt                                             ; $59b1: $76
	sbc  b                                           ; $59b2: $98
	ld   [hl], l                                     ; $59b3: $75
	dec  c                                           ; $59b4: $0d
	dec  b                                           ; $59b5: $05
	add  hl, de                                      ; $59b6: $19
	inc  bc                                          ; $59b7: $03
	and  h                                           ; $59b8: $a4
	ld   h, l                                        ; $59b9: $65
	adc  h                                           ; $59ba: $8c
	ld   h, a                                        ; $59bb: $67
	ld   a, h                                        ; $59bc: $7c
	ld   [hl], l                                     ; $59bd: $75
	sbc  a                                           ; $59be: $9f
	dec  c                                           ; $59bf: $0d
	nop                                              ; $59c0: $00
	ld   a, [bc]                                     ; $59c1: $0a
	dec  c                                           ; $59c2: $0d
	nop                                              ; $59c3: $00
	nop                                              ; $59c4: $00
	rrca                                             ; $59c5: $0f
	nop                                              ; $59c6: $00
	ld   bc, $1e09                                   ; $59c7: $01 $09 $1e
	nop                                              ; $59ca: $00
	nop                                              ; $59cb: $00
	inc  b                                           ; $59cc: $04
	add  b                                           ; $59cd: $80
	dec  bc                                          ; $59ce: $0b
	ld   bc, $20ff                                   ; $59cf: $01 $ff $20
	nop                                              ; $59d2: $00
	ld   c, $42                                      ; $59d3: $0e $42
	rrca                                             ; $59d5: $0f
	nop                                              ; $59d6: $00
	ld   bc, $0902                                   ; $59d7: $01 $02 $09
	ld   e, $14                                      ; $59da: $1e $14
	ld   b, $01                                      ; $59dc: $06 $01
	ld   bc, $5d63                                   ; $59de: $01 $63 $5d
	sub  a                                           ; $59e1: $97
	ld   h, e                                        ; $59e2: $63
	and  c                                           ; $59e3: $a1
	sbc  [hl]                                        ; $59e4: $9e
	dec  c                                           ; $59e5: $0d
	ld   d, d                                        ; $59e6: $52
	sub  a                                           ; $59e7: $97
	ld   [hl], c                                     ; $59e8: $71
	ld   h, l                                        ; $59e9: $65
	sub  c                                           ; $59ea: $91
	ld   d, d                                        ; $59eb: $52
	adc  h                                           ; $59ec: $8c
	ld   h, a                                        ; $59ed: $67
	ld   e, c                                        ; $59ee: $59
	ld   sp, hl                                      ; $59ef: $f9
	dec  c                                           ; $59f0: $0d
	nop                                              ; $59f1: $00
	ld   a, [bc]                                     ; $59f2: $0a
	rrca                                             ; $59f3: $0f
	ld   bc, $0100                                   ; $59f4: $01 $00 $01
	ld   d, b                                        ; $59f7: $50
	sbc  [hl]                                        ; $59f8: $9e
	ld   [$6300], sp                                 ; $59f9: $08 $00 $63
	and  c                                           ; $59fc: $a1
	sbc  a                                           ; $59fd: $9f
	dec  c                                           ; $59fe: $0d
	ld   l, a                                        ; $59ff: $6f
	sub  l                                           ; $5a00: $95
	ld   d, h                                        ; $5a01: $54
	ld   [hl], a                                     ; $5a02: $77
	ld   d, d                                        ; $5a03: $52
	ld   d, d                                        ; $5a04: $52
	halt                                             ; $5a05: $76
	ld   h, c                                        ; $5a06: $61
	sbc  e                                           ; $5a07: $9b
	ld   a, c                                        ; $5a08: $79
	rst  $38                                         ; $5a09: $ff
	rst  $38                                         ; $5a0a: $ff
	dec  c                                           ; $5a0b: $0d
	ld   [hl], a                                     ; $5a0c: $77
	ld   d, h                                        ; $5a0d: $54
	ld   l, h                                        ; $5a0e: $6c
	sbc  [hl]                                        ; $5a0f: $9e
	inc  b                                           ; $5a10: $04
	ld   b, l                                        ; $5a11: $45
	ld   [hl], c                                     ; $5a12: $71
	ld   [hl], h                                     ; $5a13: $74
	ld   e, l                                        ; $5a14: $5d
	ld   l, [hl]                                     ; $5a15: $6e
	ld   h, e                                        ; $5a16: $63
	ld   d, d                                        ; $5a17: $52
	sbc  a                                           ; $5a18: $9f
	dec  c                                           ; $5a19: $0d
	nop                                              ; $5a1a: $00
	ld   a, [bc]                                     ; $5a1b: $0a
	rrca                                             ; $5a1c: $0f
	nop                                              ; $5a1d: $00
	ld   bc, $4f23                                   ; $5a1e: $01 $23 $4f
	inc  e                                           ; $5a21: $1c
	ld   bc, $0000                                   ; $5a22: $01 $00 $00
	ld   bc, $a502                                   ; $5a25: $01 $02 $a5
	sbc  [hl]                                        ; $5a28: $9e
	ld   [bc], a                                     ; $5a29: $02
	dec  a                                           ; $5a2a: $3d
	ld   [bc], a                                     ; $5a2b: $02
	dec  b                                           ; $5a2c: $05
	ld   [bc], a                                     ; $5a2d: $02
	ld   d, l                                        ; $5a2e: $55
	dec  b                                           ; $5a2f: $05
	sub  $52                                         ; $5a30: $d6 $52
	and  b                                           ; $5a32: $a0
	sub  d                                           ; $5a33: $92
	ld   [hl], c                                     ; $5a34: $71
	ld   [hl], h                                     ; $5a35: $74
	ld   d, d                                        ; $5a36: $52
	sbc  c                                           ; $5a37: $99
	dec  c                                           ; $5a38: $0d
	and  c                                           ; $5a39: $a1
	ld   [hl], l                                     ; $5a3a: $75
	ld   h, a                                        ; $5a3b: $67
	ld   e, a                                        ; $5a3c: $5f
	ld   [hl], a                                     ; $5a3d: $77
	sbc  [hl]                                        ; $5a3e: $9e
	dec  c                                           ; $5a3f: $0d
	sub  d                                           ; $5a40: $92
	ld   [hl], c                                     ; $5a41: $71
	ld   [hl], h                                     ; $5a42: $74
	adc  l                                           ; $5a43: $8d
	adc  h                                           ; $5a44: $8c
	ld   l, c                                        ; $5a45: $69
	and  c                                           ; $5a46: $a1
	ld   e, c                                        ; $5a47: $59
	ld   sp, hl                                      ; $5a48: $f9
	dec  c                                           ; $5a49: $0d
	nop                                              ; $5a4a: $00
	ld   a, [bc]                                     ; $5a4b: $0a
	add  hl, de                                      ; $5a4c: $19
	dec  b                                           ; $5a4d: $05
	ld   [bc], a                                     ; $5a4e: $02
	sub  d                                           ; $5a4f: $92
	sbc  c                                           ; $5a50: $99
	nop                                              ; $5a51: $00
	nop                                              ; $5a52: $00
	sub  d                                           ; $5a53: $92
	sub  a                                           ; $5a54: $97
	ld   a, b                                        ; $5a55: $78
	ld   d, d                                        ; $5a56: $52
	nop                                              ; $5a57: $00
	ld   bc, $0a07                                   ; $5a58: $01 $07 $0a
	ld   bc, $0302                                   ; $5a5b: $01 $02 $03
	ld   bc, $2000                                   ; $5a5e: $01 $00 $20
	nop                                              ; $5a61: $00
	rlca                                             ; $5a62: $07
	sbc  e                                           ; $5a63: $9b
	nop                                              ; $5a64: $00
	ld   [bc], a                                     ; $5a65: $02
	inc  bc                                          ; $5a66: $03
	ld   bc, $2001                                   ; $5a67: $01 $01 $20
	nop                                              ; $5a6a: $00
	ld   b, $d9                                      ; $5a6b: $06 $d9
	nop                                              ; $5a6d: $00
	rrca                                             ; $5a6e: $0f
	nop                                              ; $5a6f: $00
	ld   bc, $6701                                   ; $5a70: $01 $01 $67
	adc  l                                           ; $5a73: $8d
	adc  h                                           ; $5a74: $8c
	ld   l, c                                        ; $5a75: $69
	and  c                                           ; $5a76: $a1
	sbc  a                                           ; $5a77: $9f
	dec  c                                           ; $5a78: $0d
	ld   [bc], a                                     ; $5a79: $02
	sub  l                                           ; $5a7a: $95
	ld   [bc], a                                     ; $5a7b: $02
	sub  e                                           ; $5a7c: $93
	sbc  b                                           ; $5a7d: $98
	ld   a, h                                        ; $5a7e: $7c
	inc  b                                           ; $5a7f: $04
	ld   [hl-], a                                    ; $5a80: $32
	inc  b                                           ; $5a81: $04
	dec  bc                                          ; $5a82: $0b
	ld   [hl], l                                     ; $5a83: $75
	ld   h, a                                        ; $5a84: $67
	ld   a, h                                        ; $5a85: $7c
	ld   [hl], l                                     ; $5a86: $75
	rst  $38                                         ; $5a87: $ff
	rst  $38                                         ; $5a88: $ff
	dec  c                                           ; $5a89: $0d
	nop                                              ; $5a8a: $00
	ld   a, [bc]                                     ; $5a8b: $0a
	inc  e                                           ; $5a8c: $1c
	ld   bc, $0000                                   ; $5a8d: $01 $00 $00
	ld   bc, $546b                                   ; $5a90: $01 $6b $54
	ld   [hl], l                                     ; $5a93: $75
	ld   h, a                                        ; $5a94: $67
	ld   e, c                                        ; $5a95: $59
	sbc  a                                           ; $5a96: $9f
	dec  c                                           ; $5a97: $0d
	ld   h, [hl]                                     ; $5a98: $66
	sub  c                                           ; $5a99: $91
	sbc  [hl]                                        ; $5a9a: $9e
	adc  h                                           ; $5a9b: $8c
	ld   l, l                                        ; $5a9c: $6d
	ld   [bc], a                                     ; $5a9d: $02
	and  l                                           ; $5a9e: $a5
	inc  b                                           ; $5a9f: $04
	add  hl, hl                                      ; $5aa0: $29
	ld   a, c                                        ; $5aa1: $79
	ld   h, l                                        ; $5aa2: $65
	adc  h                                           ; $5aa3: $8c
	ld   h, l                                        ; $5aa4: $65
	sub  l                                           ; $5aa5: $95
	ld   d, h                                        ; $5aa6: $54
	sbc  a                                           ; $5aa7: $9f
	dec  c                                           ; $5aa8: $0d
	nop                                              ; $5aa9: $00
	ld   a, [bc]                                     ; $5aaa: $0a
	nop                                              ; $5aab: $00
	inc  e                                           ; $5aac: $1c
	ld   bc, $0000                                   ; $5aad: $01 $00 $00
	ld   bc, $9e50                                   ; $5ab0: $01 $50 $9e
	ld   [bc], a                                     ; $5ab3: $02
	sub  l                                           ; $5ab4: $95
	ld   [bc], a                                     ; $5ab5: $02
	sub  e                                           ; $5ab6: $93
	sbc  b                                           ; $5ab7: $98
	ld   a, h                                        ; $5ab8: $7c
	inc  b                                           ; $5ab9: $04
	ld   [hl-], a                                    ; $5aba: $32
	inc  b                                           ; $5abb: $04
	dec  bc                                          ; $5abc: $0b
	ld   [hl], l                                     ; $5abd: $75
	ld   h, l                                        ; $5abe: $65
	ld   l, l                                        ; $5abf: $6d
	ld   a, e                                        ; $5ac0: $7b
	sbc  a                                           ; $5ac1: $9f
	dec  c                                           ; $5ac2: $0d
	ld   h, d                                        ; $5ac3: $62
	adc  a                                           ; $5ac4: $8f
	and  c                                           ; $5ac5: $a1
	ld   a, b                                        ; $5ac6: $78
	ld   h, e                                        ; $5ac7: $63
	ld   d, d                                        ; $5ac8: $52
	sbc  a                                           ; $5ac9: $9f
	dec  c                                           ; $5aca: $0d
	adc  h                                           ; $5acb: $8c
	ld   l, l                                        ; $5acc: $6d
	sbc  [hl]                                        ; $5acd: $9e
	ld   [bc], a                                     ; $5ace: $02
	and  l                                           ; $5acf: $a5
	inc  b                                           ; $5ad0: $04
	add  hl, hl                                      ; $5ad1: $29
	ld   a, c                                        ; $5ad2: $79
	ld   h, l                                        ; $5ad3: $65
	adc  h                                           ; $5ad4: $8c
	ld   h, l                                        ; $5ad5: $65
	sub  l                                           ; $5ad6: $95
	ld   d, h                                        ; $5ad7: $54
	sbc  a                                           ; $5ad8: $9f
	dec  c                                           ; $5ad9: $0d
	nop                                              ; $5ada: $00
	ld   a, [bc]                                     ; $5adb: $0a
	nop                                              ; $5adc: $00
	rrca                                             ; $5add: $0f
	nop                                              ; $5ade: $00
	ld   bc, $0401                                   ; $5adf: $01 $01 $04
	ret  c                                           ; $5ae2: $d8

	inc  b                                           ; $5ae3: $04
	xor  h                                           ; $5ae4: $ac
	ld   l, e                                        ; $5ae5: $6b
	ld   d, h                                        ; $5ae6: $54
	ld   [hl], l                                     ; $5ae7: $75
	ld   h, a                                        ; $5ae8: $67
	ld   a, e                                        ; $5ae9: $7b
	rst  $38                                         ; $5aea: $ff
	rst  $38                                         ; $5aeb: $ff
	dec  c                                           ; $5aec: $0d
	sub  d                                           ; $5aed: $92
	ld   [hl], c                                     ; $5aee: $71
	ld   [hl], h                                     ; $5aef: $74
	adc  l                                           ; $5af0: $8d
	adc  h                                           ; $5af1: $8c
	ld   h, a                                        ; $5af2: $67
	sbc  a                                           ; $5af3: $9f
	dec  c                                           ; $5af4: $0d
	nop                                              ; $5af5: $00
	ld   a, [bc]                                     ; $5af6: $0a
	inc  e                                           ; $5af7: $1c
	ld   bc, $0000                                   ; $5af8: $01 $00 $00
	ld   bc, $9166                                   ; $5afb: $01 $66 $91
	ld   d, b                                        ; $5afe: $50
	sbc  [hl]                                        ; $5aff: $9e
	ld   [$6300], sp                                 ; $5b00: $08 $00 $63
	and  c                                           ; $5b03: $a1
	ld   a, h                                        ; $5b04: $7c
	dec  c                                           ; $5b05: $0d
	ld   [bc], a                                     ; $5b06: $02
	dec  a                                           ; $5b07: $3d
	ld   [bc], a                                     ; $5b08: $02
	dec  b                                           ; $5b09: $05
	ld   [bc], a                                     ; $5b0a: $02
	ld   d, l                                        ; $5b0b: $55
	and  b                                           ; $5b0c: $a0
	ld   [bc], a                                     ; $5b0d: $02
	ret  nc                                          ; $5b0e: $d0

	ld   d, [hl]                                     ; $5b0f: $56
	ld   [hl], h                                     ; $5b10: $74
	ld   [bc], a                                     ; $5b11: $02
	inc  [hl]                                        ; $5b12: $34
	ld   h, e                                        ; $5b13: $63
	ld   d, d                                        ; $5b14: $52
	sbc  a                                           ; $5b15: $9f
	dec  c                                           ; $5b16: $0d
	nop                                              ; $5b17: $00
	ld   a, [bc]                                     ; $5b18: $0a
	jr   jr_05d_5b1e                                 ; $5b19: $18 $03

	ld   bc, $021b                                   ; $5b1b: $01 $1b $02

jr_05d_5b1e:
	ld   d, l                                        ; $5b1e: $55
	nop                                              ; $5b1f: $00
	nop                                              ; $5b20: $00
	inc  e                                           ; $5b21: $1c
	ld   [bc], a                                     ; $5b22: $02
	ld   d, l                                        ; $5b23: $55
	nop                                              ; $5b24: $00
	ld   bc, $7c6b                                   ; $5b25: $01 $6b $7c
	inc  b                                           ; $5b28: $04
	ld   e, $7c                                      ; $5b29: $1e $7c
	ld   [bc], a                                     ; $5b2b: $02
	dec  a                                           ; $5b2c: $3d
	ld   [bc], a                                     ; $5b2d: $02
	dec  b                                           ; $5b2e: $05
	ld   [bc], a                                     ; $5b2f: $02
	ld   d, l                                        ; $5b30: $55
	nop                                              ; $5b31: $00
	ld   [bc], a                                     ; $5b32: $02
	rlca                                             ; $5b33: $07
	or   c                                           ; $5b34: $b1
	ld   bc, $0202                                   ; $5b35: $01 $02 $02
	ld   bc, $2000                                   ; $5b38: $01 $00 $20
	nop                                              ; $5b3b: $00
	rlca                                             ; $5b3c: $07
	ld   a, c                                        ; $5b3d: $79
	ld   [bc], a                                     ; $5b3e: $02
	ld   [bc], a                                     ; $5b3f: $02
	ld   [bc], a                                     ; $5b40: $02
	ld   bc, $2001                                   ; $5b41: $01 $01 $20
	nop                                              ; $5b44: $00
	rlca                                             ; $5b45: $07
	ld   a, e                                        ; $5b46: $7b
	ld   bc, $0202                                   ; $5b47: $01 $02 $02
	ld   bc, $2002                                   ; $5b4a: $01 $02 $20
	nop                                              ; $5b4d: $00
	jr   jr_05d_5b53                                 ; $5b4e: $18 $03

	ld   bc, $0229                                   ; $5b50: $01 $29 $02

jr_05d_5b53:
	ld   d, l                                        ; $5b53: $55
	nop                                              ; $5b54: $00
	nop                                              ; $5b55: $00
	dec  de                                          ; $5b56: $1b
	inc  e                                           ; $5b57: $1c
	ld   [bc], a                                     ; $5b58: $02
	ld   d, l                                        ; $5b59: $55
	nop                                              ; $5b5a: $00
	ld   bc, $7c6b                                   ; $5b5b: $01 $6b $7c
	inc  b                                           ; $5b5e: $04
	ld   e, $7c                                      ; $5b5f: $1e $7c
	ld   [bc], a                                     ; $5b61: $02
	dec  a                                           ; $5b62: $3d
	ld   [bc], a                                     ; $5b63: $02
	dec  b                                           ; $5b64: $05
	ld   [bc], a                                     ; $5b65: $02
	ld   d, l                                        ; $5b66: $55
	nop                                              ; $5b67: $00
	ld   [bc], a                                     ; $5b68: $02
	rlca                                             ; $5b69: $07
	jr   nc, @+$05                                   ; $5b6a: $30 $03

	ld   [bc], a                                     ; $5b6c: $02
	ld   [bc], a                                     ; $5b6d: $02
	ld   bc, $2000                                   ; $5b6e: $01 $00 $20
	nop                                              ; $5b71: $00
	rlca                                             ; $5b72: $07
	or   $03                                         ; $5b73: $f6 $03
	ld   [bc], a                                     ; $5b75: $02
	ld   [bc], a                                     ; $5b76: $02
	ld   bc, $2001                                   ; $5b77: $01 $01 $20
	nop                                              ; $5b7a: $00
	rlca                                             ; $5b7b: $07
	ld   b, [hl]                                     ; $5b7c: $46
	ld   bc, $0202                                   ; $5b7d: $01 $02 $02
	ld   bc, $2002                                   ; $5b80: $01 $02 $20
	nop                                              ; $5b83: $00
	inc  e                                           ; $5b84: $1c
	ld   bc, $0000                                   ; $5b85: $01 $00 $00
	ld   bc, $021b                                   ; $5b88: $01 $1b $02
	ld   d, l                                        ; $5b8b: $55
	ld   a, h                                        ; $5b8c: $7c
	ld   [bc], a                                     ; $5b8d: $02
	dec  d                                           ; $5b8e: $15
	ld   [bc], a                                     ; $5b8f: $02
	db   $fc                                         ; $5b90: $fc
	ld   a, l                                        ; $5b91: $7d
	rst  $38                                         ; $5b92: $ff
	rst  $38                                         ; $5b93: $ff
	dec  c                                           ; $5b94: $0d
	ld   [bc], a                                     ; $5b95: $02
	ccf                                              ; $5b96: $3f
	ld   [bc], a                                     ; $5b97: $02
	cp   c                                           ; $5b98: $b9
	and  b                                           ; $5b99: $a0
	dec  b                                           ; $5b9a: $05
	ld   d, $74                                      ; $5b9b: $16 $74
	ld   [hl], h                                     ; $5b9d: $74
	ld   [bc], a                                     ; $5b9e: $02
	ld   a, a                                        ; $5b9f: $7f
	inc  b                                           ; $5ba0: $04
	dec  de                                          ; $5ba1: $1b
	ld   h, a                                        ; $5ba2: $67
	sbc  c                                           ; $5ba3: $99
	dec  c                                           ; $5ba4: $0d
	ld   h, l                                        ; $5ba5: $65
	and  c                                           ; $5ba6: $a1
	ld   l, a                                        ; $5ba7: $6f
	sub  l                                           ; $5ba8: $95
	ld   d, h                                        ; $5ba9: $54
	ld   a, b                                        ; $5baa: $78
	ld   [bc], a                                     ; $5bab: $02
	db   $fc                                         ; $5bac: $fc
	ld   [bc], a                                     ; $5bad: $02
	ld   [hl], l                                     ; $5bae: $75
	ld   [hl], l                                     ; $5baf: $75
	ld   h, a                                        ; $5bb0: $67
	sbc  a                                           ; $5bb1: $9f
	dec  c                                           ; $5bb2: $0d
	nop                                              ; $5bb3: $00
	ld   a, [bc]                                     ; $5bb4: $0a
	ld   bc, $9403                                   ; $5bb5: $01 $03 $94
	inc  b                                           ; $5bb8: $04
	sbc  [hl]                                        ; $5bb9: $9e
	ld   a, h                                        ; $5bba: $7c
	inc  b                                           ; $5bbb: $04
	jr   z, jr_05d_5c17                              ; $5bbc: $28 $59

	sbc  d                                           ; $5bbe: $9a
	ld   l, l                                        ; $5bbf: $6d
	dec  b                                           ; $5bc0: $05
	ld   d, $04                                      ; $5bc1: $16 $04
	ld   a, d                                        ; $5bc3: $7a
	and  b                                           ; $5bc4: $a0
	dec  c                                           ; $5bc5: $0d
	sub  [hl]                                        ; $5bc6: $96
	ld   e, l                                        ; $5bc7: $5d
	sbc  b                                           ; $5bc8: $98
	ld   e, c                                        ; $5bc9: $59
	ld   d, d                                        ; $5bca: $52
	ld   h, l                                        ; $5bcb: $65
	ld   [hl], h                                     ; $5bcc: $74
	sbc  [hl]                                        ; $5bcd: $9e
	inc  b                                           ; $5bce: $04
	ld   c, c                                        ; $5bcf: $49
	ld   [bc], a                                     ; $5bd0: $02
	jp   $0d90                                       ; $5bd1: $c3 $90 $0d


	inc  bc                                          ; $5bd4: $03
	or   h                                           ; $5bd5: $b4
	inc  b                                           ; $5bd6: $04
	ld   c, a                                        ; $5bd7: $4f
	ld   [bc], a                                     ; $5bd8: $02
	scf                                              ; $5bd9: $37
	and  b                                           ; $5bda: $a0
	sub  b                                           ; $5bdb: $90
	ld   [hl], c                                     ; $5bdc: $71
	ld   [hl], h                                     ; $5bdd: $74
	ld   [bc], a                                     ; $5bde: $02
	ld   a, a                                        ; $5bdf: $7f
	ld   d, d                                        ; $5be0: $52
	adc  h                                           ; $5be1: $8c
	ld   h, a                                        ; $5be2: $67
	sbc  a                                           ; $5be3: $9f
	dec  c                                           ; $5be4: $0d
	nop                                              ; $5be5: $00
	ld   a, [bc]                                     ; $5be6: $0a
	inc  e                                           ; $5be7: $1c
	ld   bc, $0303                                   ; $5be8: $01 $03 $03
	ld   bc, $1d04                                   ; $5beb: $01 $04 $1d
	ld   h, [hl]                                     ; $5bee: $66
	ld   [bc], a                                     ; $5bef: $02
	dec  a                                           ; $5bf0: $3d
	ld   [bc], a                                     ; $5bf1: $02
	dec  b                                           ; $5bf2: $05
	ld   [bc], a                                     ; $5bf3: $02
	ld   d, l                                        ; $5bf4: $55
	halt                                             ; $5bf5: $76
	ld   a, h                                        ; $5bf6: $7c
	ld   [bc], a                                     ; $5bf7: $02
	ld   a, [de]                                     ; $5bf8: $1a
	ld   [bc], a                                     ; $5bf9: $02
	db   $fc                                         ; $5bfa: $fc
	ld   a, l                                        ; $5bfb: $7d
	jr   jr_05d_5c14                                 ; $5bfc: $18 $16

	ld   bc, $9f0e                                   ; $5bfe: $01 $0e $9f
	dec  c                                           ; $5c01: $0d
	ld   e, c                                        ; $5c02: $59
	ld   a, b                                        ; $5c03: $78
	sbc  b                                           ; $5c04: $98
	ld   d, d                                        ; $5c05: $52
	ld   d, d                                        ; $5c06: $52
	inc  bc                                          ; $5c07: $03
	nop                                              ; $5c08: $00
	adc  l                                           ; $5c09: $8d
	ld   [bc], a                                     ; $5c0a: $02
	ld   a, e                                        ; $5c0b: $7b
	sbc  l                                           ; $5c0c: $9d
	ld   l, c                                        ; $5c0d: $69
	ld   a, [$750d]                                  ; $5c0e: $fa $0d $75
	ld   h, a                                        ; $5c11: $67
	ld   [hl], c                                     ; $5c12: $71
	ld   [hl], h                                     ; $5c13: $74

jr_05d_5c14:
	sbc  a                                           ; $5c14: $9f
	dec  c                                           ; $5c15: $0d
	nop                                              ; $5c16: $00

jr_05d_5c17:
	ld   a, [bc]                                     ; $5c17: $0a
	inc  e                                           ; $5c18: $1c
	ld   bc, $0101                                   ; $5c19: $01 $01 $01
	dec  e                                           ; $5c1c: $1d
	ld   b, b                                        ; $5c1d: $40
	ld   de, $1103                                   ; $5c1e: $11 $03 $11
	ld   bc, $2802                                   ; $5c21: $01 $02 $28
	nop                                              ; $5c24: $00
	ld   bc, $6d50                                   ; $5c25: $01 $50 $6d
	ld   h, l                                        ; $5c28: $65
	sub  b                                           ; $5c29: $90
	dec  de                                          ; $5c2a: $1b
	ld   [bc], a                                     ; $5c2b: $02
	ld   d, l                                        ; $5c2c: $55
	ld   a, b                                        ; $5c2d: $78
	ld   a, h                                        ; $5c2e: $7c
	ld   [hl], l                                     ; $5c2f: $75
	dec  c                                           ; $5c30: $0d
	ld   [$6300], sp                                 ; $5c31: $08 $00 $63
	and  c                                           ; $5c34: $a1
	halt                                             ; $5c35: $76
	ld   a, l                                        ; $5c36: $7d
	dec  c                                           ; $5c37: $0d
	ld   [bc], a                                     ; $5c38: $02
	ld   a, [de]                                     ; $5c39: $1a
	ld   [bc], a                                     ; $5c3a: $02
	db   $fc                                         ; $5c3b: $fc
	ld   e, d                                        ; $5c3c: $5a
	ld   d, d                                        ; $5c3d: $52
	ld   d, d                                        ; $5c3e: $52
	adc  l                                           ; $5c3f: $8d
	ld   l, l                                        ; $5c40: $6d
	ld   d, d                                        ; $5c41: $52
	ld   [hl], l                                     ; $5c42: $75
	ld   h, a                                        ; $5c43: $67
	ld   a, e                                        ; $5c44: $7b
	sbc  a                                           ; $5c45: $9f
	dec  c                                           ; $5c46: $0d
	nop                                              ; $5c47: $00
	ld   a, [bc]                                     ; $5c48: $0a
	ld   b, $b2                                      ; $5c49: $06 $b2
	inc  b                                           ; $5c4b: $04
	inc  e                                           ; $5c4c: $1c
	ld   bc, $0000                                   ; $5c4d: $01 $00 $00
	ld   bc, $021c                                   ; $5c50: $01 $1c $02
	ld   d, l                                        ; $5c53: $55
	ld   a, h                                        ; $5c54: $7c
	inc  bc                                          ; $5c55: $03
	add  d                                           ; $5c56: $82
	ld   a, l                                        ; $5c57: $7d
	sbc  [hl]                                        ; $5c58: $9e
	ld   d, b                                        ; $5c59: $50
	ld   e, l                                        ; $5c5a: $5d
	adc  h                                           ; $5c5b: $8c
	ld   [hl], l                                     ; $5c5c: $75
	sub  b                                           ; $5c5d: $90
	dec  c                                           ; $5c5e: $0d
	rst  JumpTable                                         ; $5c5f: $df
	and  l                                           ; $5c60: $a5
	db   $db                                         ; $5c61: $db
	ei                                               ; $5c62: $fb
	cp   d                                           ; $5c63: $ba
	sbc  a                                           ; $5c64: $9f
	dec  c                                           ; $5c65: $0d
	nop                                              ; $5c66: $00
	ld   a, [bc]                                     ; $5c67: $0a
	ld   bc, $9403                                   ; $5c68: $01 $03 $94
	inc  b                                           ; $5c6b: $04
	sbc  [hl]                                        ; $5c6c: $9e
	ld   a, h                                        ; $5c6d: $7c
	db   $ec                                         ; $5c6e: $ec
	cp   e                                           ; $5c6f: $bb
	ldh  [c], a                                      ; $5c70: $e2
	and  b                                           ; $5c71: $a0
	halt                                             ; $5c72: $76
	ld   [hl], h                                     ; $5c73: $74
	sub  b                                           ; $5c74: $90
	inc  b                                           ; $5c75: $04
	ld   c, $03                                      ; $5c76: $0e $03
	dec  de                                          ; $5c78: $1b
	ld   a, c                                        ; $5c79: $79
	ld   h, l                                        ; $5c7a: $65
	dec  c                                           ; $5c7b: $0d
	inc  bc                                          ; $5c7c: $03
	nop                                              ; $5c7d: $00
	inc  bc                                          ; $5c7e: $03
	ret                                              ; $5c7f: $c9


	sub  d                                           ; $5c80: $92
	inc  bc                                          ; $5c81: $03
	cpl                                              ; $5c82: $2f
	ld   [bc], a                                     ; $5c83: $02
	add  [hl]                                        ; $5c84: $86
	ld   a, h                                        ; $5c85: $7c
	db   $ed                                         ; $5c86: $ed
	ei                                               ; $5c87: $fb
	db   $ed                                         ; $5c88: $ed
	ld   a, c                                        ; $5c89: $79
	dec  c                                           ; $5c8a: $0d
	ld   d, b                                        ; $5c8b: $50
	adc  h                                           ; $5c8c: $8c
	sbc  b                                           ; $5c8d: $98
	ld   h, c                                        ; $5c8e: $61
	ld   l, [hl]                                     ; $5c8f: $6e
	sbc  l                                           ; $5c90: $9d
	sub  a                                           ; $5c91: $97
	ld   a, b                                        ; $5c92: $78
	ld   d, d                                        ; $5c93: $52
	sub  [hl]                                        ; $5c94: $96
	ld   d, h                                        ; $5c95: $54
	ld   [hl], l                                     ; $5c96: $75
	ld   h, a                                        ; $5c97: $67
	sbc  a                                           ; $5c98: $9f
	dec  c                                           ; $5c99: $0d
	nop                                              ; $5c9a: $00
	ld   a, [bc]                                     ; $5c9b: $0a
	ld   bc, $9075                                   ; $5c9c: $01 $75 $90
	sbc  [hl]                                        ; $5c9f: $9e
	ld   [bc], a                                     ; $5ca0: $02
	ld   hl, sp+$04                                  ; $5ca1: $f8 $04
	ld   c, b                                        ; $5ca3: $48
	and  b                                           ; $5ca4: $a0
	inc  bc                                          ; $5ca5: $03
	and  b                                           ; $5ca6: $a0
	ld   [hl], c                                     ; $5ca7: $71
	ld   [hl], h                                     ; $5ca8: $74
	inc  bc                                          ; $5ca9: $03
	ld   d, d                                        ; $5caa: $52
	ld   e, e                                        ; $5cab: $5b
	ld   [hl], h                                     ; $5cac: $74
	ld   d, d                                        ; $5cad: $52
	sbc  c                                           ; $5cae: $99
	dec  c                                           ; $5caf: $0d
	halt                                             ; $5cb0: $76
	ld   d, d                                        ; $5cb1: $52
	ld   d, h                                        ; $5cb2: $54
	sbc  l                                           ; $5cb3: $9d
	ld   e, a                                        ; $5cb4: $5f
	ld   [hl], l                                     ; $5cb5: $75
	ld   a, l                                        ; $5cb6: $7d
	ld   a, b                                        ; $5cb7: $78
	ld   d, d                                        ; $5cb8: $52
	sub  [hl]                                        ; $5cb9: $96
	ld   d, h                                        ; $5cba: $54
	ld   [hl], l                                     ; $5cbb: $75
	ld   h, a                                        ; $5cbc: $67
	sbc  a                                           ; $5cbd: $9f
	dec  c                                           ; $5cbe: $0d
	nop                                              ; $5cbf: $00
	ld   a, [bc]                                     ; $5cc0: $0a
	ld   bc, $021b                                   ; $5cc1: $01 $1b $02
	ld   d, l                                        ; $5cc4: $55
	ld   a, h                                        ; $5cc5: $7c
	inc  bc                                          ; $5cc6: $03
	add  d                                           ; $5cc7: $82
	halt                                             ; $5cc8: $76
	ld   a, h                                        ; $5cc9: $7c
	ld   [bc], a                                     ; $5cca: $02
	ld   a, [de]                                     ; $5ccb: $1a
	ld   [bc], a                                     ; $5ccc: $02
	db   $fc                                         ; $5ccd: $fc

jr_05d_5cce:
	ld   a, l                                        ; $5cce: $7d
	rla                                              ; $5ccf: $17
	ld   de, $0e01                                   ; $5cd0: $11 $01 $0e
	ld   a, [$520d]                                  ; $5cd3: $fa $0d $52
	adc  h                                           ; $5cd6: $8c
	ld   d, d                                        ; $5cd7: $52
	ld   l, a                                        ; $5cd8: $6f
	ld   e, c                                        ; $5cd9: $59
	ld   a, b                                        ; $5cda: $78
	rst  $38                                         ; $5cdb: $ff
	rst  $38                                         ; $5cdc: $ff
	dec  c                                           ; $5cdd: $0d
	ld   [hl], l                                     ; $5cde: $75
	ld   h, a                                        ; $5cdf: $67
	ld   [hl], c                                     ; $5ce0: $71
	ld   [hl], h                                     ; $5ce1: $74
	sbc  a                                           ; $5ce2: $9f
	dec  c                                           ; $5ce3: $0d
	nop                                              ; $5ce4: $00
	ld   a, [bc]                                     ; $5ce5: $0a
	inc  e                                           ; $5ce6: $1c
	ld   bc, $0404                                   ; $5ce7: $01 $04 $04
	ld   bc, $786f                                   ; $5cea: $01 $6f $78
	adc  l                                           ; $5ced: $8d
	ld   a, c                                        ; $5cee: $79
	sbc  [hl]                                        ; $5cef: $9e
	ld   d, b                                        ; $5cf0: $50
	ld   l, l                                        ; $5cf1: $6d
	ld   h, l                                        ; $5cf2: $65
	dec  de                                          ; $5cf3: $1b
	ld   [bc], a                                     ; $5cf4: $02
	ld   d, l                                        ; $5cf5: $55
	dec  c                                           ; $5cf6: $0d
	ld   a, b                                        ; $5cf7: $78
	and  c                                           ; $5cf8: $a1
	ld   [hl], l                                     ; $5cf9: $75
	ld   h, a                                        ; $5cfa: $67
	sub  [hl]                                        ; $5cfb: $96
	sbc  a                                           ; $5cfc: $9f
	dec  c                                           ; $5cfd: $0d
	nop                                              ; $5cfe: $00
	ld   a, [bc]                                     ; $5cff: $0a
	ld   b, $b2                                      ; $5d00: $06 $b2
	inc  b                                           ; $5d02: $04
	inc  e                                           ; $5d03: $1c
	ld   bc, $0000                                   ; $5d04: $01 $00 $00
	ld   bc, $0229                                   ; $5d07: $01 $29 $02
	ld   d, l                                        ; $5d0a: $55
	ld   a, h                                        ; $5d0b: $7c
	inc  bc                                          ; $5d0c: $03
	add  d                                           ; $5d0d: $82
	ld   a, l                                        ; $5d0e: $7d
	sbc  [hl]                                        ; $5d0f: $9e
	inc  b                                           ; $5d10: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d11: $cf
	sbc  c                                           ; $5d12: $99
	ld   e, l                                        ; $5d13: $5d
	dec  c                                           ; $5d14: $0d
	inc  bc                                          ; $5d15: $03
	add  d                                           ; $5d16: $82
	inc  bc                                          ; $5d17: $03
	or   d                                           ; $5d18: $b2
	inc  bc                                          ; $5d19: $03
	and  e                                           ; $5d1a: $a3
	ld   d, d                                        ; $5d1b: $52
	halt                                             ; $5d1c: $76
	ld   h, c                                        ; $5d1d: $61
	sbc  e                                           ; $5d1e: $9b
	ld   e, d                                        ; $5d1f: $5a
	ld   d, b                                        ; $5d20: $50
	sbc  b                                           ; $5d21: $98
	adc  h                                           ; $5d22: $8c
	ld   h, a                                        ; $5d23: $67
	sbc  a                                           ; $5d24: $9f
	dec  c                                           ; $5d25: $0d
	nop                                              ; $5d26: $00
	ld   a, [bc]                                     ; $5d27: $0a
	ld   bc, $d404                                   ; $5d28: $01 $04 $d4
	inc  b                                           ; $5d2b: $04
	jr   nz, jr_05d_5cce                             ; $5d2c: $20 $a0

	inc  bc                                          ; $5d2e: $03
	and  b                                           ; $5d2f: $a0
	ld   l, a                                        ; $5d30: $6f
	sbc  [hl]                                        ; $5d31: $9e
	ld   l, e                                        ; $5d32: $6b
	sbc  d                                           ; $5d33: $9a
	ld   a, c                                        ; $5d34: $79
	ld   [bc], a                                     ; $5d35: $02
	jp   nc, Jump_05d_7159                           ; $5d36: $d2 $59 $71

	ld   [hl], h                                     ; $5d39: $74
	dec  c                                           ; $5d3a: $0d
	inc  bc                                          ; $5d3b: $03
	di                                               ; $5d3c: $f3
	ld   e, e                                        ; $5d3d: $5b
	dec  b                                           ; $5d3e: $05
	db   $dd                                         ; $5d3f: $dd
	adc  l                                           ; $5d40: $8d
	sbc  [hl]                                        ; $5d41: $9e
	dec  b                                           ; $5d42: $05
	ldh  [$03], a                                    ; $5d43: $e0 $03
	sub  b                                           ; $5d45: $90
	inc  b                                           ; $5d46: $04
	jr   nz, jr_05d_5dc2                             ; $5d47: $20 $79

	sub  b                                           ; $5d49: $90
	ld   [bc], a                                     ; $5d4a: $02
	call nc, $0d5d                                   ; $5d4b: $d4 $5d $0d
	inc  bc                                          ; $5d4e: $03
	add  d                                           ; $5d4f: $82
	ld   a, c                                        ; $5d50: $79
	ld   l, l                                        ; $5d51: $6d
	sub  [hl]                                        ; $5d52: $96
	sbc  b                                           ; $5d53: $98
	adc  h                                           ; $5d54: $8c
	ld   l, c                                        ; $5d55: $69
	and  c                                           ; $5d56: $a1
	sbc  a                                           ; $5d57: $9f
	dec  c                                           ; $5d58: $0d
	nop                                              ; $5d59: $00
	ld   a, [bc]                                     ; $5d5a: $0a
	inc  e                                           ; $5d5b: $1c
	ld   bc, $0303                                   ; $5d5c: $01 $03 $03
	ld   bc, $021b                                   ; $5d5f: $01 $1b $02
	ld   d, l                                        ; $5d62: $55
	ld   a, h                                        ; $5d63: $7c
	inc  bc                                          ; $5d64: $03
	add  d                                           ; $5d65: $82
	halt                                             ; $5d66: $76
	ld   a, h                                        ; $5d67: $7c
	ld   [bc], a                                     ; $5d68: $02
	ld   a, [de]                                     ; $5d69: $1a
	ld   [bc], a                                     ; $5d6a: $02
	db   $fc                                         ; $5d6b: $fc
	ld   a, l                                        ; $5d6c: $7d
	ld   a, [de]                                     ; $5d6d: $1a
	ld   d, $01                                      ; $5d6e: $16 $01
	ld   c, $fa                                      ; $5d70: $0e $fa
	dec  c                                           ; $5d72: $0d
	sub  b                                           ; $5d73: $90
	ld   d, h                                        ; $5d74: $54
	inc  bc                                          ; $5d75: $03
	ld   l, c                                        ; $5d76: $69
	ld   [bc], a                                     ; $5d77: $02
	cp   [hl]                                        ; $5d78: $be
	sbc  [hl]                                        ; $5d79: $9e
	ld   [bc], a                                     ; $5d7a: $02
	sbc  l                                           ; $5d7b: $9d
	ld   d, h                                        ; $5d7c: $54
	ld   h, c                                        ; $5d7d: $61
	halt                                             ; $5d7e: $76
	inc  b                                           ; $5d7f: $04
	sub  $65                                         ; $5d80: $d6 $65
	ld   a, [$750d]                                  ; $5d82: $fa $0d $75
	ld   h, a                                        ; $5d85: $67
	ld   [hl], c                                     ; $5d86: $71
	ld   [hl], h                                     ; $5d87: $74
	sbc  a                                           ; $5d88: $9f
	dec  c                                           ; $5d89: $0d
	nop                                              ; $5d8a: $00
	ld   a, [bc]                                     ; $5d8b: $0a
	inc  e                                           ; $5d8c: $1c
	ld   bc, $0505                                   ; $5d8d: $01 $05 $05
	dec  e                                           ; $5d90: $1d
	ld   b, b                                        ; $5d91: $40
	ld   de, $1103                                   ; $5d92: $11 $03 $11
	ld   bc, $2803                                   ; $5d95: $01 $03 $28
	nop                                              ; $5d98: $00
	ld   bc, $6d50                                   ; $5d99: $01 $50 $6d
	ld   h, l                                        ; $5d9c: $65
	dec  de                                          ; $5d9d: $1b
	ld   [bc], a                                     ; $5d9e: $02
	ld   d, l                                        ; $5d9f: $55
	ld   a, b                                        ; $5da0: $78
	and  c                                           ; $5da1: $a1
	ld   [hl], l                                     ; $5da2: $75
	ld   h, a                                        ; $5da3: $67
	sub  [hl]                                        ; $5da4: $96
	sbc  a                                           ; $5da5: $9f
	dec  c                                           ; $5da6: $0d
	sub  [hl]                                        ; $5da7: $96
	ld   e, c                                        ; $5da8: $59
	ld   [hl], c                                     ; $5da9: $71
	ld   l, l                                        ; $5daa: $6d
	sbc  [hl]                                        ; $5dab: $9e
	ld   [$6300], sp                                 ; $5dac: $08 $00 $63
	and  c                                           ; $5daf: $a1
	halt                                             ; $5db0: $76
	ld   a, l                                        ; $5db1: $7d
	dec  c                                           ; $5db2: $0d
	ld   [bc], a                                     ; $5db3: $02
	ld   a, [de]                                     ; $5db4: $1a
	ld   [bc], a                                     ; $5db5: $02
	db   $fc                                         ; $5db6: $fc
	ld   e, d                                        ; $5db7: $5a
	pop  de                                          ; $5db8: $d1
	push bc                                          ; $5db9: $c5
	or   c                                           ; $5dba: $b1
	push af                                          ; $5dbb: $f5
	adc  l                                           ; $5dbc: $8d
	ld   l, l                                        ; $5dbd: $6d
	ld   d, d                                        ; $5dbe: $52
	ld   [hl], l                                     ; $5dbf: $75
	ld   h, a                                        ; $5dc0: $67
	ld   a, e                                        ; $5dc1: $7b

jr_05d_5dc2:
	sbc  a                                           ; $5dc2: $9f
	dec  c                                           ; $5dc3: $0d
	nop                                              ; $5dc4: $00
	ld   a, [bc]                                     ; $5dc5: $0a
	ld   b, $b2                                      ; $5dc6: $06 $b2
	inc  b                                           ; $5dc8: $04
	inc  e                                           ; $5dc9: $1c
	ld   bc, $0000                                   ; $5dca: $01 $00 $00
	ld   bc, $1c1b                                   ; $5dcd: $01 $1b $1c
	ld   [bc], a                                     ; $5dd0: $02
	ld   d, l                                        ; $5dd1: $55
	ld   a, h                                        ; $5dd2: $7c
	inc  bc                                          ; $5dd3: $03
	add  d                                           ; $5dd4: $82
	ld   a, l                                        ; $5dd5: $7d
	sbc  [hl]                                        ; $5dd6: $9e
	inc  b                                           ; $5dd7: $04
	ld   c, c                                        ; $5dd8: $49
	ld   [bc], a                                     ; $5dd9: $02
	jp   $0d90                                       ; $5dda: $c3 $90 $0d


	ld   [bc], a                                     ; $5ddd: $02
	ld   d, a                                        ; $5dde: $57
	inc  b                                           ; $5ddf: $04
	di                                               ; $5de0: $f3
	ld   a, c                                        ; $5de1: $79
	ld   l, e                                        ; $5de2: $6b
	ld   [hl], d                                     ; $5de3: $72
	ld   a, b                                        ; $5de4: $78
	ld   e, l                                        ; $5de5: $5d
	ld   h, c                                        ; $5de6: $61
	ld   a, b                                        ; $5de7: $78
	ld   h, a                                        ; $5de8: $67
	dec  c                                           ; $5de9: $0d
	ld   [bc], a                                     ; $5dea: $02
	ld   a, e                                        ; $5deb: $7b
	dec  b                                           ; $5dec: $05
	ld   de, $2004                                   ; $5ded: $11 $04 $20
	ld   a, b                                        ; $5df0: $78
	ret  nz                                          ; $5df1: $c0

	and  l                                           ; $5df2: $a5
	ret  c                                           ; $5df3: $d8

	ld   a, h                                        ; $5df4: $7c
	sub  [hl]                                        ; $5df5: $96
	ld   d, h                                        ; $5df6: $54
	ld   [hl], l                                     ; $5df7: $75
	ld   h, a                                        ; $5df8: $67
	sbc  a                                           ; $5df9: $9f
	dec  c                                           ; $5dfa: $0d
	nop                                              ; $5dfb: $00
	ld   a, [bc]                                     ; $5dfc: $0a
	ld   bc, $1105                                   ; $5dfd: $01 $05 $11
	inc  b                                           ; $5e00: $04
	ei                                               ; $5e01: $fb
	inc  b                                           ; $5e02: $04
	sbc  l                                           ; $5e03: $9d
	halt                                             ; $5e04: $76
	ld   d, d                                        ; $5e05: $52
	ld   d, h                                        ; $5e06: $54
	sub  [hl]                                        ; $5e07: $96
	sbc  b                                           ; $5e08: $98
	ld   [bc], a                                     ; $5e09: $02
	scf                                              ; $5e0a: $37
	ld   [bc], a                                     ; $5e0b: $02
	db   $fc                                         ; $5e0c: $fc
	inc  b                                           ; $5e0d: $04
	sbc  l                                           ; $5e0e: $9d
	ld   [hl], l                                     ; $5e0f: $75
	sbc  [hl]                                        ; $5e10: $9e
	dec  c                                           ; $5e11: $0d
	ld   e, c                                        ; $5e12: $59
	ld   a, b                                        ; $5e13: $78
	sbc  b                                           ; $5e14: $98
	ld   a, h                                        ; $5e15: $7c
	dec  b                                           ; $5e16: $05
	ld   de, $1a03                                   ; $5e17: $11 $03 $1a
	inc  b                                           ; $5e1a: $04
	ei                                               ; $5e1b: $fb
	inc  bc                                          ; $5e1c: $03
	or   b                                           ; $5e1d: $b0
	ld   [hl], l                                     ; $5e1e: $75
	sub  b                                           ; $5e1f: $90
	dec  c                                           ; $5e20: $0d
	ld   d, b                                        ; $5e21: $50
	sbc  c                                           ; $5e22: $99
	sub  [hl]                                        ; $5e23: $96
	ld   d, h                                        ; $5e24: $54
	ld   [hl], l                                     ; $5e25: $75
	ld   h, a                                        ; $5e26: $67
	sbc  a                                           ; $5e27: $9f
	dec  c                                           ; $5e28: $0d
	nop                                              ; $5e29: $00
	ld   a, [bc]                                     ; $5e2a: $0a
	ld   bc, $021b                                   ; $5e2b: $01 $1b $02
	ld   d, l                                        ; $5e2e: $55
	ld   a, h                                        ; $5e2f: $7c
	inc  bc                                          ; $5e30: $03
	add  d                                           ; $5e31: $82
	halt                                             ; $5e32: $76
	ld   a, h                                        ; $5e33: $7c
	ld   [bc], a                                     ; $5e34: $02
	ld   a, [de]                                     ; $5e35: $1a
	ld   [bc], a                                     ; $5e36: $02
	db   $fc                                         ; $5e37: $fc
	ld   a, l                                        ; $5e38: $7d
	dec  d                                           ; $5e39: $15
	ld   de, $0e01                                   ; $5e3a: $11 $01 $0e
	ld   a, [$030d]                                  ; $5e3d: $fa $0d $03
	db   $d3                                         ; $5e40: $d3
	dec  b                                           ; $5e41: $05
	ld   a, [bc]                                     ; $5e42: $0a
	ld   d, b                                        ; $5e43: $50
	sbc  c                                           ; $5e44: $99
	ld   a, h                                        ; $5e45: $7c
	adc  l                                           ; $5e46: $8d
	ld   a, [$750d]                                  ; $5e47: $fa $0d $75
	ld   h, a                                        ; $5e4a: $67
	ld   [hl], c                                     ; $5e4b: $71
	ld   [hl], h                                     ; $5e4c: $74
	rst  $38                                         ; $5e4d: $ff
	rst  $38                                         ; $5e4e: $ff
	dec  c                                           ; $5e4f: $0d
	nop                                              ; $5e50: $00
	ld   a, [bc]                                     ; $5e51: $0a
	inc  e                                           ; $5e52: $1c
	ld   bc, $0404                                   ; $5e53: $01 $04 $04
	ld   bc, $6d50                                   ; $5e56: $01 $50 $6d
	ld   h, l                                        ; $5e59: $65
	dec  de                                          ; $5e5a: $1b
	ld   [bc], a                                     ; $5e5b: $02
	ld   d, l                                        ; $5e5c: $55
	ld   a, b                                        ; $5e5d: $78
	and  c                                           ; $5e5e: $a1
	ld   [hl], l                                     ; $5e5f: $75
	ld   h, a                                        ; $5e60: $67
	rst  $38                                         ; $5e61: $ff
	rst  $38                                         ; $5e62: $ff
	dec  c                                           ; $5e63: $0d
	ld   [$6300], sp                                 ; $5e64: $08 $00 $63
	and  c                                           ; $5e67: $a1
	halt                                             ; $5e68: $76
	ld   a, l                                        ; $5e69: $7d
	sbc  [hl]                                        ; $5e6a: $9e
	ld   d, b                                        ; $5e6b: $50
	adc  h                                           ; $5e6c: $8c
	sbc  b                                           ; $5e6d: $98
	dec  c                                           ; $5e6e: $0d
	ld   [bc], a                                     ; $5e6f: $02
	ld   a, [de]                                     ; $5e70: $1a
	ld   [bc], a                                     ; $5e71: $02
	db   $fc                                         ; $5e72: $fc
	ld   e, d                                        ; $5e73: $5a
	sub  [hl]                                        ; $5e74: $96
	ld   e, l                                        ; $5e75: $5d
	ld   a, b                                        ; $5e76: $78
	ld   d, d                                        ; $5e77: $52
	adc  l                                           ; $5e78: $8d
	ld   l, l                                        ; $5e79: $6d
	ld   d, d                                        ; $5e7a: $52
	ld   [hl], l                                     ; $5e7b: $75
	ld   h, a                                        ; $5e7c: $67
	ld   a, e                                        ; $5e7d: $7b
	sbc  a                                           ; $5e7e: $9f
	dec  c                                           ; $5e7f: $0d
	nop                                              ; $5e80: $00
	ld   a, [bc]                                     ; $5e81: $0a
	ld   b, $b2                                      ; $5e82: $06 $b2
	inc  b                                           ; $5e84: $04
	inc  e                                           ; $5e85: $1c
	ld   bc, $0101                                   ; $5e86: $01 $01 $01
	ld   bc, $5477                                   ; $5e89: $01 $77 $54
	ld   [hl], l                                     ; $5e8c: $75
	ld   h, a                                        ; $5e8d: $67
	ld   sp, hl                                      ; $5e8e: $f9
	dec  c                                           ; $5e8f: $0d
	inc  b                                           ; $5e90: $04
	ret  c                                           ; $5e91: $d8

	inc  b                                           ; $5e92: $04
	xor  h                                           ; $5e93: $ac
	ld   e, c                                        ; $5e94: $59
	ld   [hl], c                                     ; $5e95: $71
	ld   l, l                                        ; $5e96: $6d
	ld   [hl], l                                     ; $5e97: $75
	ld   h, a                                        ; $5e98: $67
	ld   e, c                                        ; $5e99: $59
	ld   sp, hl                                      ; $5e9a: $f9
	dec  c                                           ; $5e9b: $0d
	nop                                              ; $5e9c: $00
	ld   a, [bc]                                     ; $5e9d: $0a
	add  hl, de                                      ; $5e9e: $19
	dec  b                                           ; $5e9f: $05
	ld   [bc], a                                     ; $5ea0: $02
	inc  b                                           ; $5ea1: $04
	ret  c                                           ; $5ea2: $d8

	inc  b                                           ; $5ea3: $04
	xor  h                                           ; $5ea4: $ac
	ld   e, c                                        ; $5ea5: $59
	ld   [hl], c                                     ; $5ea6: $71
	ld   l, l                                        ; $5ea7: $6d
	nop                                              ; $5ea8: $00
	nop                                              ; $5ea9: $00
	inc  b                                           ; $5eaa: $04
	ret  c                                           ; $5eab: $d8

	inc  b                                           ; $5eac: $04
	xor  h                                           ; $5ead: $ac
	ld   e, l                                        ; $5eae: $5d
	ld   a, b                                        ; $5eaf: $78
	ld   e, c                                        ; $5eb0: $59
	ld   [hl], c                                     ; $5eb1: $71
	ld   l, l                                        ; $5eb2: $6d
	nop                                              ; $5eb3: $00
	ld   bc, $f707                                   ; $5eb4: $01 $07 $f7
	inc  b                                           ; $5eb7: $04
	ld   [bc], a                                     ; $5eb8: $02
	inc  bc                                          ; $5eb9: $03
	ld   bc, $2000                                   ; $5eba: $01 $00 $20
	nop                                              ; $5ebd: $00
	rlca                                             ; $5ebe: $07
	ld   [hl], $05                                   ; $5ebf: $36 $05
	ld   [bc], a                                     ; $5ec1: $02
	inc  bc                                          ; $5ec2: $03
	ld   bc, $2001                                   ; $5ec3: $01 $01 $20
	nop                                              ; $5ec6: $00
	ld   b, $8b                                      ; $5ec7: $06 $8b
	dec  b                                           ; $5ec9: $05
	rrca                                             ; $5eca: $0f
	nop                                              ; $5ecb: $00
	ld   bc, $0401                                   ; $5ecc: $01 $01 $04
	ret  c                                           ; $5ecf: $d8

	inc  b                                           ; $5ed0: $04
	xor  h                                           ; $5ed1: $ac
	ld   e, c                                        ; $5ed2: $59
	ld   [hl], c                                     ; $5ed3: $71
	ld   l, l                                        ; $5ed4: $6d
	ld   [hl], l                                     ; $5ed5: $75
	ld   h, a                                        ; $5ed6: $67
	sbc  a                                           ; $5ed7: $9f
	dec  c                                           ; $5ed8: $0d
	nop                                              ; $5ed9: $00
	ld   a, [bc]                                     ; $5eda: $0a
	inc  e                                           ; $5edb: $1c
	ld   bc, $0101                                   ; $5edc: $01 $01 $01
	ld   bc, $546b                                   ; $5edf: $01 $6b $54
	ld   [hl], l                                     ; $5ee2: $75
	ld   h, a                                        ; $5ee3: $67
	ld   e, c                                        ; $5ee4: $59
	sbc  [hl]                                        ; $5ee5: $9e
	sub  [hl]                                        ; $5ee6: $96
	ld   e, c                                        ; $5ee7: $59
	ld   [hl], c                                     ; $5ee8: $71
	ld   l, l                                        ; $5ee9: $6d
	sbc  a                                           ; $5eea: $9f
	dec  c                                           ; $5eeb: $0d
	ld   h, [hl]                                     ; $5eec: $66
	sub  c                                           ; $5eed: $91
	sbc  [hl]                                        ; $5eee: $9e
	ld   [bc], a                                     ; $5eef: $02
	and  l                                           ; $5ef0: $a5
	inc  b                                           ; $5ef1: $04
	xor  d                                           ; $5ef2: $aa
	ld   a, l                                        ; $5ef3: $7d
	sub  b                                           ; $5ef4: $90
	ld   d, h                                        ; $5ef5: $54
	ld   e, b                                        ; $5ef6: $58
	ld   l, e                                        ; $5ef7: $6b
	ld   d, d                                        ; $5ef8: $52
	ld   e, c                                        ; $5ef9: $59
	sub  a                                           ; $5efa: $97
	sbc  a                                           ; $5efb: $9f
	dec  c                                           ; $5efc: $0d
	ld   e, b                                        ; $5efd: $58
	sub  d                                           ; $5efe: $92
	ld   h, a                                        ; $5eff: $67
	adc  l                                           ; $5f00: $8d
	ld   a, b                                        ; $5f01: $78
	ld   h, e                                        ; $5f02: $63
	ld   d, d                                        ; $5f03: $52
	sbc  a                                           ; $5f04: $9f
	dec  c                                           ; $5f05: $0d
	nop                                              ; $5f06: $00
	ld   a, [bc]                                     ; $5f07: $0a
	nop                                              ; $5f08: $00
	rrca                                             ; $5f09: $0f
	nop                                              ; $5f0a: $00
	ld   bc, $9001                                   ; $5f0b: $01 $01 $90
	ld   d, h                                        ; $5f0e: $54
	add  b                                           ; $5f0f: $80
	halt                                             ; $5f10: $76
	ld   [hl], d                                     ; $5f11: $72
	sbc  [hl]                                        ; $5f12: $9e
	ld   [hl], l                                     ; $5f13: $75
	ld   h, l                                        ; $5f14: $65
	ld   l, l                                        ; $5f15: $6d
	ld   a, e                                        ; $5f16: $7b
	sbc  a                                           ; $5f17: $9f
	dec  c                                           ; $5f18: $0d
	nop                                              ; $5f19: $00
	ld   a, [bc]                                     ; $5f1a: $0a
	inc  e                                           ; $5f1b: $1c
	ld   bc, $0404                                   ; $5f1c: $01 $04 $04
	ld   bc, $5252                                   ; $5f1f: $01 $52 $52
	ld   [bc], a                                     ; $5f22: $02
	reti                                             ; $5f23: $d9


	ld   [bc], a                                     ; $5f24: $02
	ld   h, e                                        ; $5f25: $63
	ld   e, d                                        ; $5f26: $5a
	inc  bc                                          ; $5f27: $03
	add  b                                           ; $5f28: $80
	ld   a, b                                        ; $5f29: $78
	ld   d, d                                        ; $5f2a: $52
	halt                                             ; $5f2b: $76
	dec  c                                           ; $5f2c: $0d
	ld   l, e                                        ; $5f2d: $6b
	and  c                                           ; $5f2e: $a1
	ld   a, b                                        ; $5f2f: $78
	sub  b                                           ; $5f30: $90
	ld   a, h                                        ; $5f31: $7c
	ld   [hl], l                                     ; $5f32: $75
	ld   h, a                                        ; $5f33: $67
	sub  [hl]                                        ; $5f34: $96
	ld   a, e                                        ; $5f35: $7b
	sbc  a                                           ; $5f36: $9f
	dec  c                                           ; $5f37: $0d
	nop                                              ; $5f38: $00
	ld   a, [bc]                                     ; $5f39: $0a
	inc  e                                           ; $5f3a: $1c
	ld   bc, $0000                                   ; $5f3b: $01 $00 $00
	ld   bc, $9166                                   ; $5f3e: $01 $66 $91
	sbc  [hl]                                        ; $5f41: $9e
	ld   [bc], a                                     ; $5f42: $02
	and  l                                           ; $5f43: $a5
	inc  b                                           ; $5f44: $04
	xor  d                                           ; $5f45: $aa
	ld   a, l                                        ; $5f46: $7d
	sub  b                                           ; $5f47: $90
	ld   d, h                                        ; $5f48: $54
	dec  c                                           ; $5f49: $0d
	ld   e, b                                        ; $5f4a: $58
	ld   l, e                                        ; $5f4b: $6b
	ld   d, d                                        ; $5f4c: $52
	ld   e, c                                        ; $5f4d: $59
	sub  a                                           ; $5f4e: $97
	rst  $38                                         ; $5f4f: $ff
	rst  $38                                         ; $5f50: $ff
	dec  c                                           ; $5f51: $0d
	ld   e, b                                        ; $5f52: $58
	sub  d                                           ; $5f53: $92
	ld   h, a                                        ; $5f54: $67
	adc  l                                           ; $5f55: $8d
	ld   a, b                                        ; $5f56: $78
	ld   h, e                                        ; $5f57: $63
	ld   d, d                                        ; $5f58: $52
	sbc  a                                           ; $5f59: $9f
	dec  c                                           ; $5f5a: $0d
	nop                                              ; $5f5b: $00
	ld   a, [bc]                                     ; $5f5c: $0a
	nop                                              ; $5f5d: $00
	inc  e                                           ; $5f5e: $1c
	ld   bc, $0404                                   ; $5f5f: $01 $04 $04
	ld   bc, $8c50                                   ; $5f62: $01 $50 $8c
	sbc  b                                           ; $5f65: $98
	ld   e, b                                        ; $5f66: $58
	ld   [bc], a                                     ; $5f67: $02
	and  c                                           ; $5f68: $a1
	ld   a, c                                        ; $5f69: $79
	adc  a                                           ; $5f6a: $8f
	ld   h, e                                        ; $5f6b: $63
	ld   a, b                                        ; $5f6c: $78
	ld   e, c                                        ; $5f6d: $59
	ld   [hl], c                                     ; $5f6e: $71
	ld   l, l                                        ; $5f6f: $6d
	dec  c                                           ; $5f70: $0d
	sub  [hl]                                        ; $5f71: $96
	ld   d, h                                        ; $5f72: $54
	ld   [hl], l                                     ; $5f73: $75
	ld   h, a                                        ; $5f74: $67
	ld   a, e                                        ; $5f75: $7b
	rst  $38                                         ; $5f76: $ff
	rst  $38                                         ; $5f77: $ff
	dec  c                                           ; $5f78: $0d
	nop                                              ; $5f79: $00
	ld   a, [bc]                                     ; $5f7a: $0a
	ld   bc, $9166                                   ; $5f7b: $01 $66 $91
	sbc  [hl]                                        ; $5f7e: $9e
	ld   [bc], a                                     ; $5f7f: $02
	and  l                                           ; $5f80: $a5
	inc  b                                           ; $5f81: $04
	xor  d                                           ; $5f82: $aa
	ld   a, l                                        ; $5f83: $7d
	sub  b                                           ; $5f84: $90
	ld   d, h                                        ; $5f85: $54
	dec  c                                           ; $5f86: $0d
	ld   e, b                                        ; $5f87: $58
	ld   l, e                                        ; $5f88: $6b
	ld   d, d                                        ; $5f89: $52
	ld   e, c                                        ; $5f8a: $59
	sub  a                                           ; $5f8b: $97
	rst  $38                                         ; $5f8c: $ff
	rst  $38                                         ; $5f8d: $ff
	dec  c                                           ; $5f8e: $0d
	ld   e, b                                        ; $5f8f: $58
	sub  d                                           ; $5f90: $92
	ld   h, a                                        ; $5f91: $67
	adc  l                                           ; $5f92: $8d
	ld   a, b                                        ; $5f93: $78
	ld   h, e                                        ; $5f94: $63
	ld   d, d                                        ; $5f95: $52
	sbc  a                                           ; $5f96: $9f
	dec  c                                           ; $5f97: $0d
	nop                                              ; $5f98: $00
	ld   a, [bc]                                     ; $5f99: $0a
	nop                                              ; $5f9a: $00
	nop                                              ; $5f9b: $00
	inc  b                                           ; $5f9c: $04
	add  b                                           ; $5f9d: $80
	add  hl, hl                                      ; $5f9e: $29
	ld   bc, $20ff                                   ; $5f9f: $01 $ff $20
	nop                                              ; $5fa2: $00
	rrca                                             ; $5fa3: $0f
	nop                                              ; $5fa4: $00
	ld   bc, $050d                                   ; $5fa5: $01 $0d $05
	nop                                              ; $5fa8: $00
	ld   [bc], a                                     ; $5fa9: $02
	ld   bc, $cf02                                   ; $5faa: $01 $02 $cf
	dec  b                                           ; $5fad: $05
	ld   a, [de]                                     ; $5fae: $1a
	ld   h, e                                        ; $5faf: $63
	and  c                                           ; $5fb0: $a1
	sbc  a                                           ; $5fb1: $9f
	dec  c                                           ; $5fb2: $0d
	ld   h, c                                        ; $5fb3: $61
	sbc  d                                           ; $5fb4: $9a
	sbc  [hl]                                        ; $5fb5: $9e
	ld   e, c                                        ; $5fb6: $59
	ld   h, a                                        ; $5fb7: $67
	adc  l                                           ; $5fb8: $8d
	ld   h, e                                        ; $5fb9: $63
	and  c                                           ; $5fba: $a1
	ld   e, c                                        ; $5fbb: $59
	sub  a                                           ; $5fbc: $97
	dec  c                                           ; $5fbd: $0d
	ld   d, b                                        ; $5fbe: $50
	ld   l, b                                        ; $5fbf: $68
	ld   e, c                                        ; $5fc0: $59
	ld   [hl], c                                     ; $5fc1: $71
	ld   l, l                                        ; $5fc2: $6d
	ld   a, h                                        ; $5fc3: $7c
	ld   [hl], l                                     ; $5fc4: $75
	ld   h, a                                        ; $5fc5: $67
	ld   e, d                                        ; $5fc6: $5a
	sbc  a                                           ; $5fc7: $9f
	dec  c                                           ; $5fc8: $0d
	nop                                              ; $5fc9: $00
	ld   a, [bc]                                     ; $5fca: $0a
	db   $10                                         ; $5fcb: $10
	ld   sp, $1c00                                   ; $5fcc: $31 $00 $1c
	dec  b                                           ; $5fcf: $05
	inc  bc                                          ; $5fd0: $03
	inc  bc                                          ; $5fd1: $03
	ld   bc, $5858                                   ; $5fd2: $01 $58 $58
	sbc  [hl]                                        ; $5fd5: $9e
	inc  b                                           ; $5fd6: $04
	inc  d                                           ; $5fd7: $14
	ld   h, l                                        ; $5fd8: $65
	halt                                             ; $5fd9: $76
	ld   [hl], c                                     ; $5fda: $71
	ld   l, l                                        ; $5fdb: $6d
	and  c                                           ; $5fdc: $a1
	sub  d                                           ; $5fdd: $92
	sbc  a                                           ; $5fde: $9f
	dec  c                                           ; $5fdf: $0d
	ld   e, b                                        ; $5fe0: $58
	ld   e, b                                        ; $5fe1: $58
	ld   e, e                                        ; $5fe2: $5b
	ld   a, c                                        ; $5fe3: $79
	sbc  a                                           ; $5fe4: $9f
	dec  c                                           ; $5fe5: $0d
	nop                                              ; $5fe6: $00
	ld   a, [bc]                                     ; $5fe7: $0a
	rrca                                             ; $5fe8: $0f
	nop                                              ; $5fe9: $00
	ld   bc, $6b01                                   ; $5fea: $01 $01 $6b
	sbc  d                                           ; $5fed: $9a
	sbc  [hl]                                        ; $5fee: $9e
	ld   a, b                                        ; $5fef: $78
	and  c                                           ; $5ff0: $a1
	ld   [hl], l                                     ; $5ff1: $75
	ld   h, a                                        ; $5ff2: $67
	ld   e, c                                        ; $5ff3: $59
	ld   sp, hl                                      ; $5ff4: $f9
	dec  c                                           ; $5ff5: $0d
	nop                                              ; $5ff6: $00
	ld   a, [bc]                                     ; $5ff7: $0a
	inc  e                                           ; $5ff8: $1c
	dec  b                                           ; $5ff9: $05
	dec  b                                           ; $5ffa: $05
	dec  b                                           ; $5ffb: $05
	ld   bc, $9a61                                   ; $5ffc: $01 $61 $9a
	ld   a, l                                        ; $5fff: $7d
	sbc  [hl]                                        ; $6000: $9e
	ld   [bc], a                                     ; $6001: $02
	ld   a, [de]                                     ; $6002: $1a
	ld   [bc], a                                     ; $6003: $02
	db   $fc                                         ; $6004: $fc
	ld   [bc], a                                     ; $6005: $02
	or   $04                                         ; $6006: $f6 $04
	inc  h                                           ; $6008: $24
	db   $e3                                         ; $6009: $e3
	xor  h                                           ; $600a: $ac
	dec  c                                           ; $600b: $0d
	ld   bc, $0207                                   ; $600c: $01 $07 $02
	dec  hl                                          ; $600f: $2b
	and  e                                           ; $6010: $a3
	and  l                                           ; $6011: $a5
	ld   e, l                                        ; $6012: $5d
	and  c                                           ; $6013: $a1
	ld   bc, $9208                                   ; $6014: $01 $08 $92
	sbc  a                                           ; $6017: $9f
	dec  c                                           ; $6018: $0d
	nop                                              ; $6019: $00
	ld   a, [bc]                                     ; $601a: $0a
	rrca                                             ; $601b: $0f
	nop                                              ; $601c: $00
	ld   bc, $8601                                   ; $601d: $01 $01 $86
	ld   d, [hl]                                     ; $6020: $56
	db   $fc                                         ; $6021: $fc
	sbc  [hl]                                        ; $6022: $9e
	ld   [bc], a                                     ; $6023: $02
	ld   a, [de]                                     ; $6024: $1a
	ld   [bc], a                                     ; $6025: $02
	db   $fc                                         ; $6026: $fc
	ld   [bc], a                                     ; $6027: $02
	or   $04                                         ; $6028: $f6 $04
	inc  h                                           ; $602a: $24
	db   $e3                                         ; $602b: $e3
	xor  h                                           ; $602c: $ac
	ld   [hl], l                                     ; $602d: $75
	ld   h, a                                        ; $602e: $67
	ld   e, c                                        ; $602f: $59
	sbc  a                                           ; $6030: $9f
	dec  c                                           ; $6031: $0d
	nop                                              ; $6032: $00
	ld   a, [bc]                                     ; $6033: $0a
	add  hl, de                                      ; $6034: $19
	dec  b                                           ; $6035: $05
	inc  bc                                          ; $6036: $03
	adc  h                                           ; $6037: $8c
	ld   l, l                                        ; $6038: $6d
	sbc  [hl]                                        ; $6039: $9e
	ld   b, $0d                                      ; $603a: $06 $0d
	inc  b                                           ; $603c: $04
	ld   e, [hl]                                     ; $603d: $5e
	ld   h, a                                        ; $603e: $67
	sbc  c                                           ; $603f: $99
	ld   a, h                                        ; $6040: $7c
	ld   sp, hl                                      ; $6041: $f9
	nop                                              ; $6042: $00
	nop                                              ; $6043: $00
	ld   [bc], a                                     ; $6044: $02
	ld   a, [de]                                     ; $6045: $1a
	ld   [bc], a                                     ; $6046: $02
	db   $fc                                         ; $6047: $fc
	and  b                                           ; $6048: $a0
	adc  l                                           ; $6049: $8d
	ld   [hl], h                                     ; $604a: $74
	sub  b                                           ; $604b: $90
	sub  a                                           ; $604c: $97
	ld   d, h                                        ; $604d: $54
	nop                                              ; $604e: $00
	ld   bc, $8a04                                   ; $604f: $01 $04 $8a
	inc  b                                           ; $6052: $04
	rst  JumpTable                                         ; $6053: $df
	ld   d, b                                        ; $6054: $50
	sbc  c                                           ; $6055: $99
	ld   a, h                                        ; $6056: $7c
	ld   sp, hl                                      ; $6057: $f9
	nop                                              ; $6058: $00
	ld   [bc], a                                     ; $6059: $02
	rlca                                             ; $605a: $07
	ld   sp, hl                                      ; $605b: $f9
	nop                                              ; $605c: $00
	ld   [bc], a                                     ; $605d: $02
	inc  bc                                          ; $605e: $03
	ld   bc, $2000                                   ; $605f: $01 $00 $20
	nop                                              ; $6062: $00
	rlca                                             ; $6063: $07
	add  hl, de                                      ; $6064: $19
	ld   [bc], a                                     ; $6065: $02
	ld   [bc], a                                     ; $6066: $02
	inc  bc                                          ; $6067: $03
	ld   bc, $2001                                   ; $6068: $01 $01 $20
	nop                                              ; $606b: $00
	rlca                                             ; $606c: $07
	ld   de, $0203                                   ; $606d: $11 $03 $02
	inc  bc                                          ; $6070: $03
	ld   bc, $2002                                   ; $6071: $01 $02 $20
	nop                                              ; $6074: $00
	ld   b, $d5                                      ; $6075: $06 $d5
	nop                                              ; $6077: $00
	inc  e                                           ; $6078: $1c
	dec  b                                           ; $6079: $05
	ld   bc, $0101                                   ; $607a: $01 $01 $01
	sbc  l                                           ; $607d: $9d
	ld   h, h                                        ; $607e: $64
	sbc  l                                           ; $607f: $9d
	ld   h, h                                        ; $6080: $64
	sbc  [hl]                                        ; $6081: $9e
	ld   e, b                                        ; $6082: $58
	ld   e, b                                        ; $6083: $58
	ld   e, e                                        ; $6084: $5b
	ld   a, c                                        ; $6085: $79
	ld   a, b                                        ; $6086: $78
	sbc  a                                           ; $6087: $9f
	dec  c                                           ; $6088: $0d
	adc  c                                           ; $6089: $89
	ld   a, b                                        ; $608a: $78
	sbc  [hl]                                        ; $608b: $9e
	ld   e, b                                        ; $608c: $58
	sub  d                                           ; $608d: $92
	ld   h, a                                        ; $608e: $67
	adc  l                                           ; $608f: $8d
	dec  c                                           ; $6090: $0d
	nop                                              ; $6091: $00
	ld   a, [bc]                                     ; $6092: $0a
	dec  c                                           ; $6093: $0d
	nop                                              ; $6094: $00
	nop                                              ; $6095: $00
	rrca                                             ; $6096: $0f
	nop                                              ; $6097: $00
	ld   bc, $1e09                                   ; $6098: $01 $09 $1e
	nop                                              ; $609b: $00
	rrca                                             ; $609c: $0f
	nop                                              ; $609d: $00
	ld   bc, $7701                                   ; $609e: $01 $01 $77
	ld   d, h                                        ; $60a1: $54
	ld   l, c                                        ; $60a2: $69
	adc  h                                           ; $60a3: $8c
	ld   l, l                                        ; $60a4: $6d
	sbc  [hl]                                        ; $60a5: $9e
	ld   b, $0d                                      ; $60a6: $06 $0d
	inc  b                                           ; $60a8: $04
	ld   e, [hl]                                     ; $60a9: $5e
	ld   h, a                                        ; $60aa: $67
	sbc  c                                           ; $60ab: $99
	and  c                                           ; $60ac: $a1
	ld   h, [hl]                                     ; $60ad: $66
	sub  c                                           ; $60ae: $91
	dec  c                                           ; $60af: $0d
	ld   a, b                                        ; $60b0: $78
	ld   d, d                                        ; $60b1: $52
	and  c                                           ; $60b2: $a1
	ld   [hl], l                                     ; $60b3: $75
	ld   h, a                                        ; $60b4: $67
	ld   e, c                                        ; $60b5: $59
	ld   sp, hl                                      ; $60b6: $f9
	dec  c                                           ; $60b7: $0d
	nop                                              ; $60b8: $00
	ld   a, [bc]                                     ; $60b9: $0a
	inc  e                                           ; $60ba: $1c
	dec  b                                           ; $60bb: $05
	nop                                              ; $60bc: $00
	nop                                              ; $60bd: $00
	ld   bc, $9166                                   ; $60be: $01 $66 $91
	ld   d, b                                        ; $60c1: $50
	sbc  [hl]                                        ; $60c2: $9e
	inc  bc                                          ; $60c3: $03
	adc  e                                           ; $60c4: $8b
	ld   [bc], a                                     ; $60c5: $02
	sub  [hl]                                        ; $60c6: $96
	ld   h, l                                        ; $60c7: $65
	ld   [hl], h                                     ; $60c8: $74
	adc  l                                           ; $60c9: $8d
	sub  [hl]                                        ; $60ca: $96
	ld   e, c                                        ; $60cb: $59
	sbc  a                                           ; $60cc: $9f
	dec  c                                           ; $60cd: $0d
	nop                                              ; $60ce: $00
	ld   a, [bc]                                     ; $60cf: $0a
	add  hl, de                                      ; $60d0: $19
	dec  b                                           ; $60d1: $05
	ld   [bc], a                                     ; $60d2: $02
	ld   d, d                                        ; $60d3: $52
	ld   d, d                                        ; $60d4: $52
	ld   [hl], l                                     ; $60d5: $75
	ld   h, a                                        ; $60d6: $67
	sub  [hl]                                        ; $60d7: $96
	sbc  a                                           ; $60d8: $9f
	nop                                              ; $60d9: $00
	nop                                              ; $60da: $00
	sub  d                                           ; $60db: $92
	adc  a                                           ; $60dc: $8f
	halt                                             ; $60dd: $76
	ld   e, l                                        ; $60de: $5d
	nop                                              ; $60df: $00
	ld   bc, $5307                                   ; $60e0: $01 $07 $53
	ld   bc, $0302                                   ; $60e3: $01 $02 $03
	ld   bc, $2000                                   ; $60e6: $01 $00 $20
	nop                                              ; $60e9: $00
	rlca                                             ; $60ea: $07
	ldh  [c], a                                      ; $60eb: $e2
	ld   bc, $0302                                   ; $60ec: $01 $02 $03
	ld   bc, $2001                                   ; $60ef: $01 $01 $20
	nop                                              ; $60f2: $00
	ld   b, $68                                      ; $60f3: $06 $68
	ld   bc, $000f                                   ; $60f5: $01 $0f $00
	ld   bc, $5201                                   ; $60f8: $01 $01 $52
	ld   d, d                                        ; $60fb: $52
	ld   [hl], l                                     ; $60fc: $75
	ld   h, a                                        ; $60fd: $67
	sub  [hl]                                        ; $60fe: $96
	sbc  a                                           ; $60ff: $9f
	dec  c                                           ; $6100: $0d
	sub  d                                           ; $6101: $92
	sbc  b                                           ; $6102: $98
	adc  h                                           ; $6103: $8c
	ld   h, l                                        ; $6104: $65
	sub  l                                           ; $6105: $95
	ld   d, h                                        ; $6106: $54
	sbc  a                                           ; $6107: $9f
	dec  c                                           ; $6108: $0d
	nop                                              ; $6109: $00
	ld   a, [bc]                                     ; $610a: $0a
	rrca                                             ; $610b: $0f
	dec  b                                           ; $610c: $05
	nop                                              ; $610d: $00
	ld   bc, $7889                                   ; $610e: $01 $89 $78
	sbc  [hl]                                        ; $6111: $9e
	ld   d, d                                        ; $6112: $52
	ld   e, l                                        ; $6113: $5d
	ld   [hl], l                                     ; $6114: $75
	sbc  a                                           ; $6115: $9f
	dec  c                                           ; $6116: $0d
	nop                                              ; $6117: $00
	ld   a, [bc]                                     ; $6118: $0a
	dec  c                                           ; $6119: $0d
	nop                                              ; $611a: $00
	nop                                              ; $611b: $00
	rrca                                             ; $611c: $0f
	nop                                              ; $611d: $00
	ld   bc, $080c                                   ; $611e: $01 $0c $08
	ld   sp, $2040                                   ; $6121: $31 $40 $20
	inc  bc                                          ; $6124: $03
	jr   nz, jr_05d_6128                             ; $6125: $20 $01

	inc  d                                           ; $6127: $14

jr_05d_6128:
	add  hl, hl                                      ; $6128: $29
	nop                                              ; $6129: $00
	dec  c                                           ; $612a: $0d
	dec  b                                           ; $612b: $05
	jr   nz, jr_05d_613d                             ; $612c: $20 $0f

	dec  b                                           ; $612e: $05
	ld   [$401d], sp                                 ; $612f: $08 $1d $40
	dec  d                                           ; $6132: $15
	inc  bc                                          ; $6133: $03
	dec  d                                           ; $6134: $15
	ld   bc, $2802                                   ; $6135: $01 $02 $28
	nop                                              ; $6138: $00
	ld   bc, $d0a3                                   ; $6139: $01 $a3 $d0
	ret  nc                                          ; $613c: $d0

jr_05d_613d:
	ret  nc                                          ; $613d: $d0

	ret  nc                                          ; $613e: $d0

	ret  nc                                          ; $613f: $d0

	ret  nc                                          ; $6140: $d0

	rst  $38                                         ; $6141: $ff
	dec  c                                           ; $6142: $0d
	ld   b, $0d                                      ; $6143: $06 $0d
	inc  b                                           ; $6145: $04
	ld   e, [hl]                                     ; $6146: $5e
	ld   h, l                                        ; $6147: $65
	ld   [hl], h                                     ; $6148: $74
	sub  b                                           ; $6149: $90
	ld   d, h                                        ; $614a: $54
	ld   l, l                                        ; $614b: $6d
	ld   a, b                                        ; $614c: $78
	sbc  a                                           ; $614d: $9f
	dec  c                                           ; $614e: $0d
	cp   d                                           ; $614f: $ba
	rst  JumpTable                                         ; $6150: $df
	push af                                          ; $6151: $f5
	sbc  [hl]                                        ; $6152: $9e
	cp   d                                           ; $6153: $ba
	rst  JumpTable                                         ; $6154: $df
	push af                                          ; $6155: $f5
	sbc  a                                           ; $6156: $9f
	dec  c                                           ; $6157: $0d
	nop                                              ; $6158: $00
	ld   a, [bc]                                     ; $6159: $0a
	ld   bc, $5490                                   ; $615a: $01 $90 $54
	ld   l, a                                        ; $615d: $6f
	sub  l                                           ; $615e: $95
	ld   [hl], c                                     ; $615f: $71
	halt                                             ; $6160: $76
	ld   b, $40                                      ; $6161: $06 $40
	dec  b                                           ; $6163: $05
	dec  d                                           ; $6164: $15
	ld   l, c                                        ; $6165: $69
	and  c                                           ; $6166: $a1
	halt                                             ; $6167: $76
	sbc  [hl]                                        ; $6168: $9e
	dec  c                                           ; $6169: $0d
	and  e                                           ; $616a: $a3
	xor  h                                           ; $616b: $ac
	push af                                          ; $616c: $f5
	ld   a, b                                        ; $616d: $78
	db   $fc                                         ; $616e: $fc
	sbc  a                                           ; $616f: $9f
	dec  c                                           ; $6170: $0d
	adc  c                                           ; $6171: $89
	ld   a, b                                        ; $6172: $78
	sbc  [hl]                                        ; $6173: $9e
	ld   e, b                                        ; $6174: $58
	sub  d                                           ; $6175: $92
	ld   h, a                                        ; $6176: $67
	adc  l                                           ; $6177: $8d
	sbc  a                                           ; $6178: $9f
	dec  c                                           ; $6179: $0d
	nop                                              ; $617a: $00
	ld   a, [bc]                                     ; $617b: $0a
	dec  c                                           ; $617c: $0d
	nop                                              ; $617d: $00
	nop                                              ; $617e: $00
	rrca                                             ; $617f: $0f
	nop                                              ; $6180: $00
	ld   bc, $1e09                                   ; $6181: $01 $09 $1e
	nop                                              ; $6184: $00
	rrca                                             ; $6185: $0f
	nop                                              ; $6186: $00
	ld   bc, $5201                                   ; $6187: $01 $01 $52
	sbc  [hl]                                        ; $618a: $9e
	ld   d, d                                        ; $618b: $52
	sub  d                                           ; $618c: $92
	db   $fc                                         ; $618d: $fc
	sbc  a                                           ; $618e: $9f
	dec  c                                           ; $618f: $0d
	sub  d                                           ; $6190: $92
	adc  a                                           ; $6191: $8f
	halt                                             ; $6192: $76
	ld   e, e                                        ; $6193: $5b
	adc  h                                           ; $6194: $8c
	ld   h, a                                        ; $6195: $67
	sbc  a                                           ; $6196: $9f
	dec  c                                           ; $6197: $0d
	nop                                              ; $6198: $00
	ld   a, [bc]                                     ; $6199: $0a
	inc  e                                           ; $619a: $1c
	dec  b                                           ; $619b: $05
	ld   [bc], a                                     ; $619c: $02
	ld   [bc], a                                     ; $619d: $02
	ld   bc, $a178                                   ; $619e: $01 $78 $a1
	sub  d                                           ; $61a1: $92
	sbc  [hl]                                        ; $61a2: $9e
	ld   e, b                                        ; $61a3: $58
	sub  b                                           ; $61a4: $90
	sbc  e                                           ; $61a5: $9b
	ld   a, b                                        ; $61a6: $78
	ld   d, d                                        ; $61a7: $52
	ld   a, b                                        ; $61a8: $78
	db   $fc                                         ; $61a9: $fc
	sbc  a                                           ; $61aa: $9f
	dec  c                                           ; $61ab: $0d
	jp   nz, $c4a8                                   ; $61ac: $c2 $a8 $c4

	ld   a, [$000d]                                  ; $61af: $fa $0d $00
	ld   a, [bc]                                     ; $61b2: $0a
	dec  c                                           ; $61b3: $0d
	nop                                              ; $61b4: $00
	nop                                              ; $61b5: $00
	rrca                                             ; $61b6: $0f
	nop                                              ; $61b7: $00
	ld   bc, $1e09                                   ; $61b8: $01 $09 $1e
	nop                                              ; $61bb: $00
	rrca                                             ; $61bc: $0f
	nop                                              ; $61bd: $00
	ld   bc, $6601                                   ; $61be: $01 $01 $66
	sub  c                                           ; $61c1: $91
	ld   d, b                                        ; $61c2: $50
	sbc  [hl]                                        ; $61c3: $9e
	inc  b                                           ; $61c4: $04
	ld   l, l                                        ; $61c5: $6d
	halt                                             ; $61c6: $76
	ld   [bc], a                                     ; $61c7: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61c8: $cf
	dec  b                                           ; $61c9: $05
	ld   a, [de]                                     ; $61ca: $1a
	ld   h, e                                        ; $61cb: $63
	and  c                                           ; $61cc: $a1
	ld   a, h                                        ; $61cd: $7c
	ld   [bc], a                                     ; $61ce: $02
	ld   a, [de]                                     ; $61cf: $1a
	ld   [bc], a                                     ; $61d0: $02
	db   $fc                                         ; $61d1: $fc
	and  b                                           ; $61d2: $a0
	dec  c                                           ; $61d3: $0d
	adc  l                                           ; $61d4: $8d
	ld   [hl], h                                     ; $61d5: $74
	sub  b                                           ; $61d6: $90
	sub  a                                           ; $61d7: $97
	ld   [hl], c                                     ; $61d8: $71
	ld   l, a                                        ; $61d9: $6f
	sub  c                                           ; $61da: $91
	ld   e, b                                        ; $61db: $58
	ld   d, h                                        ; $61dc: $54
	ld   e, c                                        ; $61dd: $59
	ld   a, b                                        ; $61de: $78
	ld   sp, hl                                      ; $61df: $f9
	dec  c                                           ; $61e0: $0d
	nop                                              ; $61e1: $00
	ld   a, [bc]                                     ; $61e2: $0a
	rlca                                             ; $61e3: $07
	ldh  [c], a                                      ; $61e4: $e2
	ld   [bc], a                                     ; $61e5: $02
	inc  bc                                          ; $61e6: $03
	dec  d                                           ; $61e7: $15
	ld   bc, $2296                                   ; $61e8: $01 $96 $22
	nop                                              ; $61eb: $00
	inc  e                                           ; $61ec: $1c
	dec  b                                           ; $61ed: $05
	inc  b                                           ; $61ee: $04
	inc  b                                           ; $61ef: $04
	ld   bc, $9e6b                                   ; $61f0: $01 $6b $9e
	ld   l, e                                        ; $61f3: $6b
	ld   d, h                                        ; $61f4: $54
	ld   e, c                                        ; $61f5: $59
	db   $fc                                         ; $61f6: $fc
	sbc  a                                           ; $61f7: $9f
	dec  c                                           ; $61f8: $0d
	adc  c                                           ; $61f9: $89
	ld   a, b                                        ; $61fa: $78
	sbc  [hl]                                        ; $61fb: $9e
	sub  d                                           ; $61fc: $92
	ld   [hl], c                                     ; $61fd: $71
	ld   [hl], h                                     ; $61fe: $74
	adc  l                                           ; $61ff: $8d
	sub  [hl]                                        ; $6200: $96
	ld   e, c                                        ; $6201: $59
	sbc  a                                           ; $6202: $9f
	dec  c                                           ; $6203: $0d
	cp   d                                           ; $6204: $ba
	and  l                                           ; $6205: $a5
	call nz, $dec2                                   ; $6206: $c4 $c2 $de
	push af                                          ; $6209: $f5
	ld   a, [$000d]                                  ; $620a: $fa $0d $00
	ld   a, [bc]                                     ; $620d: $0a
	dec  c                                           ; $620e: $0d
	nop                                              ; $620f: $00
	nop                                              ; $6210: $00
	rrca                                             ; $6211: $0f
	nop                                              ; $6212: $00
	ld   bc, $080c                                   ; $6213: $01 $0c $08
	ld   sp, $2040                                   ; $6216: $31 $40 $20
	inc  bc                                          ; $6219: $03
	jr   nz, jr_05d_621d                             ; $621a: $20 $01

	inc  d                                           ; $621c: $14

jr_05d_621d:
	add  hl, hl                                      ; $621d: $29
	nop                                              ; $621e: $00
	dec  c                                           ; $621f: $0d
	dec  b                                           ; $6220: $05
	jr   nz, jr_05d_6232                             ; $6221: $20 $0f

	dec  b                                           ; $6223: $05
	ld   [$401d], sp                                 ; $6224: $08 $1d $40
	dec  d                                           ; $6227: $15
	inc  bc                                          ; $6228: $03
	dec  d                                           ; $6229: $15
	ld   bc, $2803                                   ; $622a: $01 $03 $28
	nop                                              ; $622d: $00
	ld   bc, $d0a3                                   ; $622e: $01 $a3 $d0
	ret  nc                                          ; $6231: $d0

jr_05d_6232:
	ret  nc                                          ; $6232: $d0

	ret  nc                                          ; $6233: $d0

	ret  nc                                          ; $6234: $d0

	ret  nc                                          ; $6235: $d0

	rst  $38                                         ; $6236: $ff
	rst  $38                                         ; $6237: $ff
	dec  c                                           ; $6238: $0d
	ld   b, $0d                                      ; $6239: $06 $0d
	inc  b                                           ; $623b: $04
	ld   e, [hl]                                     ; $623c: $5e
	ld   h, l                                        ; $623d: $65
	ld   [hl], h                                     ; $623e: $74
	sub  b                                           ; $623f: $90
	ld   d, h                                        ; $6240: $54
	ld   l, l                                        ; $6241: $6d
	ld   a, b                                        ; $6242: $78
	sbc  a                                           ; $6243: $9f
	dec  c                                           ; $6244: $0d
	cp   d                                           ; $6245: $ba
	rst  JumpTable                                         ; $6246: $df
	push af                                          ; $6247: $f5
	sbc  [hl]                                        ; $6248: $9e
	cp   d                                           ; $6249: $ba
	rst  JumpTable                                         ; $624a: $df
	push af                                          ; $624b: $f5
	sbc  a                                           ; $624c: $9f
	dec  c                                           ; $624d: $0d
	nop                                              ; $624e: $00
	ld   a, [bc]                                     ; $624f: $0a
	ld   bc, $5490                                   ; $6250: $01 $90 $54
	ld   l, a                                        ; $6253: $6f
	sub  l                                           ; $6254: $95
	ld   [hl], c                                     ; $6255: $71
	halt                                             ; $6256: $76
	ld   b, $40                                      ; $6257: $06 $40
	dec  b                                           ; $6259: $05
	dec  d                                           ; $625a: $15
	ld   l, c                                        ; $625b: $69
	and  c                                           ; $625c: $a1
	halt                                             ; $625d: $76
	ld   a, b                                        ; $625e: $78
	sbc  a                                           ; $625f: $9f
	dec  c                                           ; $6260: $0d
	ld   h, c                                        ; $6261: $61
	sbc  d                                           ; $6262: $9a
	sbc  [hl]                                        ; $6263: $9e
	inc  b                                           ; $6264: $04
	ld   b, $5f                                      ; $6265: $06 $5f
	ld   [hl], h                                     ; $6267: $74
	ld   e, l                                        ; $6268: $5d
	sbc  d                                           ; $6269: $9a
	ld   [hl], h                                     ; $626a: $74
	ld   e, b                                        ; $626b: $58
	ld   e, b                                        ; $626c: $58
	ld   e, e                                        ; $626d: $5b
	ld   a, c                                        ; $626e: $79
	sbc  a                                           ; $626f: $9f
	dec  c                                           ; $6270: $0d
	adc  c                                           ; $6271: $89
	ld   a, b                                        ; $6272: $78
	sbc  [hl]                                        ; $6273: $9e
	ld   e, b                                        ; $6274: $58
	sub  d                                           ; $6275: $92
	ld   h, a                                        ; $6276: $67
	adc  l                                           ; $6277: $8d
	sbc  a                                           ; $6278: $9f
	dec  c                                           ; $6279: $0d
	nop                                              ; $627a: $00
	ld   a, [bc]                                     ; $627b: $0a
	dec  c                                           ; $627c: $0d
	nop                                              ; $627d: $00
	nop                                              ; $627e: $00
	rrca                                             ; $627f: $0f
	nop                                              ; $6280: $00
	ld   bc, $1e09                                   ; $6281: $01 $09 $1e
	nop                                              ; $6284: $00
	inc  e                                           ; $6285: $1c
	dec  b                                           ; $6286: $05
	ld   [bc], a                                     ; $6287: $02
	ld   [bc], a                                     ; $6288: $02
	ld   bc, $9252                                   ; $6289: $01 $52 $92
	sbc  [hl]                                        ; $628c: $9e
	ld   [bc], a                                     ; $628d: $02
	and  l                                           ; $628e: $a5
	inc  b                                           ; $628f: $04
	xor  d                                           ; $6290: $aa
	ld   a, l                                        ; $6291: $7d
	sub  b                                           ; $6292: $90
	ld   d, h                                        ; $6293: $54
	ld   e, b                                        ; $6294: $58
	ld   l, e                                        ; $6295: $6b
	ld   d, d                                        ; $6296: $52
	ld   e, c                                        ; $6297: $59
	sub  a                                           ; $6298: $97
	dec  c                                           ; $6299: $0d
	sub  d                                           ; $629a: $92
	adc  a                                           ; $629b: $8f
	halt                                             ; $629c: $76
	ld   h, c                                        ; $629d: $61
	sbc  a                                           ; $629e: $9f
	dec  c                                           ; $629f: $0d
	adc  c                                           ; $62a0: $89
	ld   a, b                                        ; $62a1: $78
	sbc  [hl]                                        ; $62a2: $9e
	ld   e, b                                        ; $62a3: $58
	sub  d                                           ; $62a4: $92
	ld   h, a                                        ; $62a5: $67
	adc  l                                           ; $62a6: $8d
	sbc  a                                           ; $62a7: $9f
	dec  c                                           ; $62a8: $0d
	nop                                              ; $62a9: $00
	ld   a, [bc]                                     ; $62aa: $0a
	dec  c                                           ; $62ab: $0d
	nop                                              ; $62ac: $00
	nop                                              ; $62ad: $00
	rrca                                             ; $62ae: $0f
	nop                                              ; $62af: $00
	ld   bc, $1e09                                   ; $62b0: $01 $09 $1e
	nop                                              ; $62b3: $00
	rrca                                             ; $62b4: $0f
	nop                                              ; $62b5: $00
	ld   bc, $0201                                   ; $62b6: $01 $01 $02
	ld   a, [de]                                     ; $62b9: $1a
	ld   [bc], a                                     ; $62ba: $02
	db   $fc                                         ; $62bb: $fc
	ld   [bc], a                                     ; $62bc: $02
	or   $04                                         ; $62bd: $f6 $04
	inc  h                                           ; $62bf: $24
	db   $e3                                         ; $62c0: $e3
	xor  h                                           ; $62c1: $ac
	ld   [hl], c                                     ; $62c2: $71
	ld   [hl], h                                     ; $62c3: $74
	dec  c                                           ; $62c4: $0d
	ld   [bc], a                                     ; $62c5: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62c6: $cf
	dec  b                                           ; $62c7: $05
	ld   a, [de]                                     ; $62c8: $1a
	ld   h, e                                        ; $62c9: $63
	and  c                                           ; $62ca: $a1
	ld   a, c                                        ; $62cb: $79
	inc  b                                           ; $62cc: $04
	adc  d                                           ; $62cd: $8a
	inc  b                                           ; $62ce: $04
	rst  JumpTable                                         ; $62cf: $df
	ld   d, b                                        ; $62d0: $50
	sbc  c                                           ; $62d1: $99
	and  c                                           ; $62d2: $a1
	ld   [hl], l                                     ; $62d3: $75
	ld   h, a                                        ; $62d4: $67
	ld   e, c                                        ; $62d5: $59
	ld   sp, hl                                      ; $62d6: $f9
	dec  c                                           ; $62d7: $0d
	nop                                              ; $62d8: $00
	ld   a, [bc]                                     ; $62d9: $0a
	inc  e                                           ; $62da: $1c
	dec  b                                           ; $62db: $05
	rlca                                             ; $62dc: $07
	rlca                                             ; $62dd: $07
	dec  e                                           ; $62de: $1d
	ld   b, b                                        ; $62df: $40
	dec  d                                           ; $62e0: $15
	inc  bc                                          ; $62e1: $03
	dec  d                                           ; $62e2: $15
	ld   bc, $2903                                   ; $62e3: $01 $03 $29
	nop                                              ; $62e6: $00
	ld   bc, $9a61                                   ; $62e7: $01 $61 $9a
	ld   a, l                                        ; $62ea: $7d
	ld   a, b                                        ; $62eb: $78
	sbc  [hl]                                        ; $62ec: $9e
	adc  l                                           ; $62ed: $8d
	and  c                                           ; $62ee: $a1
	ld   a, b                                        ; $62ef: $78
	ld   a, h                                        ; $62f0: $7c
	ld   l, l                                        ; $62f1: $6d
	adc  a                                           ; $62f2: $8f
	ld   a, c                                        ; $62f3: $79
	dec  c                                           ; $62f4: $0d
	inc  bc                                          ; $62f5: $03
	xor  h                                           ; $62f6: $ac
	ld   [hl], c                                     ; $62f7: $71
	ld   l, l                                        ; $62f8: $6d
	and  c                                           ; $62f9: $a1
	sub  d                                           ; $62fa: $92
	sbc  a                                           ; $62fb: $9f
	dec  c                                           ; $62fc: $0d
	nop                                              ; $62fd: $00
	ld   a, [bc]                                     ; $62fe: $0a
	ld   bc, $7889                                   ; $62ff: $01 $89 $78
	sbc  [hl]                                        ; $6302: $9e
	ld   e, b                                        ; $6303: $58
	sub  d                                           ; $6304: $92
	ld   h, a                                        ; $6305: $67
	adc  l                                           ; $6306: $8d
	sbc  a                                           ; $6307: $9f
	dec  c                                           ; $6308: $0d
	nop                                              ; $6309: $00
	ld   a, [bc]                                     ; $630a: $0a
	dec  c                                           ; $630b: $0d
	nop                                              ; $630c: $00
	nop                                              ; $630d: $00
	rrca                                             ; $630e: $0f
	nop                                              ; $630f: $00
	ld   bc, $1e09                                   ; $6310: $01 $09 $1e
	nop                                              ; $6313: $00
	nop                                              ; $6314: $00
	inc  b                                           ; $6315: $04
	add  b                                           ; $6316: $80
	jr   nz, jr_05d_631a                             ; $6317: $20 $01

	rst  $38                                         ; $6319: $ff

jr_05d_631a:
	jr   nz, jr_05d_631f                             ; $631a: $20 $03

	ld   l, h                                        ; $631c: $6c
	ld   [bc], a                                     ; $631d: $02
	nop                                              ; $631e: $00

jr_05d_631f:
	jr   nz, jr_05d_633d                             ; $631f: $20 $1c

	nop                                              ; $6321: $00
	inc  e                                           ; $6322: $1c
	ld   [bc], a                                     ; $6323: $02
	nop                                              ; $6324: $00
	nop                                              ; $6325: $00
	ld   c, $44                                      ; $6326: $0e $44
	ld   [bc], a                                     ; $6328: $02
	ld   bc, $9750                                   ; $6329: $01 $50 $97
	sbc  [hl]                                        ; $632c: $9e
	ld   [$6300], sp                                 ; $632d: $08 $00 $63
	and  c                                           ; $6330: $a1
	sbc  [hl]                                        ; $6331: $9e
	dec  c                                           ; $6332: $0d
	ld   [bc], a                                     ; $6333: $02
	sub  l                                           ; $6334: $95
	ld   [bc], a                                     ; $6335: $02
	sub  e                                           ; $6336: $93
	sbc  b                                           ; $6337: $98
	ld   h, d                                        ; $6338: $62
	ld   [bc], a                                     ; $6339: $02
	sub  h                                           ; $633a: $94
	dec  b                                           ; $633b: $05
	rrca                                             ; $633c: $0f

jr_05d_633d:
	ld   h, e                                        ; $633d: $63
	adc  h                                           ; $633e: $8c
	sbc  a                                           ; $633f: $9f
	dec  c                                           ; $6340: $0d
	nop                                              ; $6341: $00
	ld   a, [bc]                                     ; $6342: $0a
	inc  e                                           ; $6343: $1c
	ld   [bc], a                                     ; $6344: $02
	ld   bc, $0101                                   ; $6345: $01 $01 $01
	ld   d, b                                        ; $6348: $50
	sbc  [hl]                                        ; $6349: $9e
	ld   l, e                                        ; $634a: $6b
	ld   d, h                                        ; $634b: $54
	ld   [hl], l                                     ; $634c: $75
	ld   h, a                                        ; $634d: $67
	sbc  l                                           ; $634e: $9d
	dec  c                                           ; $634f: $0d
	inc  b                                           ; $6350: $04
	xor  l                                           ; $6351: $ad
	ld   [bc], a                                     ; $6352: $02
	xor  c                                           ; $6353: $a9
	ld   a, h                                        ; $6354: $7c
	ld   e, b                                        ; $6355: $58
	dec  b                                           ; $6356: $05
	dec  c                                           ; $6357: $0d
	sub  b                                           ; $6358: $90
	ld   e, c                                        ; $6359: $59
	ld   a, e                                        ; $635a: $7b
	ld   [hl], h                                     ; $635b: $74
	sbc  [hl]                                        ; $635c: $9e
	ld   l, a                                        ; $635d: $6f
	sub  l                                           ; $635e: $95
	ld   [hl], c                                     ; $635f: $71
	halt                                             ; $6360: $76
	dec  c                                           ; $6361: $0d
	ld   e, b                                        ; $6362: $58
	inc  bc                                          ; $6363: $03
	jp   $0702                                       ; $6364: $c3 $02 $07


	and  c                                           ; $6367: $a1
	ld   [hl], l                                     ; $6368: $75
	ld   d, d                                        ; $6369: $52
	ld   e, e                                        ; $636a: $5b
	adc  h                                           ; $636b: $8c
	ld   l, c                                        ; $636c: $69
	and  c                                           ; $636d: $a1
	ld   h, c                                        ; $636e: $61
	halt                                             ; $636f: $76
	dec  c                                           ; $6370: $0d
	nop                                              ; $6371: $00
	ld   a, [bc]                                     ; $6372: $0a
	dec  c                                           ; $6373: $0d
	nop                                              ; $6374: $00
	nop                                              ; $6375: $00
	rrca                                             ; $6376: $0f
	nop                                              ; $6377: $00
	ld   bc, $0a14                                   ; $6378: $01 $14 $0a
	ld   bc, $5123                                   ; $637b: $01 $23 $51
	inc  e                                           ; $637e: $1c
	ld   [bc], a                                     ; $637f: $02
	ld   bc, $0101                                   ; $6380: $01 $01 $01
	ld   h, e                                        ; $6383: $63
	ld   e, e                                        ; $6384: $5b
	adc  c                                           ; $6385: $89
	ld   [hl], a                                     ; $6386: $77
	ld   a, l                                        ; $6387: $7d
	sbc  [hl]                                        ; $6388: $9e
	or   b                                           ; $6389: $b0
	db   $e4                                         ; $638a: $e4
	and  b                                           ; $638b: $a0
	halt                                             ; $638c: $76
	ld   [hl], c                                     ; $638d: $71
	ld   [hl], h                                     ; $638e: $74
	dec  c                                           ; $638f: $0d
	ld   e, l                                        ; $6390: $5d
	ld   l, [hl]                                     ; $6391: $6e
	ld   h, e                                        ; $6392: $63
	ld   [hl], c                                     ; $6393: $71
	ld   [hl], h                                     ; $6394: $74
	sbc  [hl]                                        ; $6395: $9e
	inc  b                                           ; $6396: $04
	adc  a                                           ; $6397: $8f
	inc  b                                           ; $6398: $04
	jr   jr_05d_6414                                 ; $6399: $18 $79

	dec  c                                           ; $639b: $0d
	ld   d, b                                        ; $639c: $50
	sbc  b                                           ; $639d: $98
	ld   e, d                                        ; $639e: $5a
	halt                                             ; $639f: $76
	ld   d, h                                        ; $63a0: $54
	ld   h, d                                        ; $63a1: $62
	ld   h, h                                        ; $63a2: $64
	ld   d, d                                        ; $63a3: $52
	adc  h                                           ; $63a4: $8c
	ld   h, l                                        ; $63a5: $65
	ld   l, l                                        ; $63a6: $6d
	sbc  a                                           ; $63a7: $9f
	dec  c                                           ; $63a8: $0d
	nop                                              ; $63a9: $00
	ld   a, [bc]                                     ; $63aa: $0a
	ld   bc, $6d9d                                   ; $63ab: $01 $9d $6d
	ld   e, l                                        ; $63ae: $5d
	ld   h, l                                        ; $63af: $65
	ld   e, d                                        ; $63b0: $5a
	or   b                                           ; $63b1: $b0
	db   $e4                                         ; $63b2: $e4
	ld   e, h                                        ; $63b3: $5c
	sub  a                                           ; $63b4: $97
	ld   d, d                                        ; $63b5: $52
	ld   a, c                                        ; $63b6: $79
	ld   a, b                                        ; $63b7: $78
	ld   [hl], c                                     ; $63b8: $71
	ld   l, l                                        ; $63b9: $6d
	dec  c                                           ; $63ba: $0d
	ld   d, d                                        ; $63bb: $52
	ld   e, e                                        ; $63bc: $5b
	ld   h, e                                        ; $63bd: $63
	ld   [hl], d                                     ; $63be: $72
	and  b                                           ; $63bf: $a0
	ld   e, b                                        ; $63c0: $58
	dec  b                                           ; $63c1: $05
	jr   nz, jr_05d_6429                             ; $63c2: $20 $65

	ld   h, l                                        ; $63c4: $65
	adc  h                                           ; $63c5: $8c
	ld   h, a                                        ; $63c6: $67
	sbc  l                                           ; $63c7: $9d
	sbc  a                                           ; $63c8: $9f
	dec  c                                           ; $63c9: $0d
	inc  bc                                          ; $63ca: $03
	ld   l, h                                        ; $63cb: $6c
	ld   h, l                                        ; $63cc: $65
	inc  bc                                          ; $63cd: $03
	jp   nc, Jump_05d_7552                           ; $63ce: $d2 $52 $75

	ld   h, a                                        ; $63d1: $67
	ld   e, a                                        ; $63d2: $5f
	ld   [hl], a                                     ; $63d3: $77
	rst  $38                                         ; $63d4: $ff
	rst  $38                                         ; $63d5: $ff
	dec  c                                           ; $63d6: $0d
	nop                                              ; $63d7: $00
	ld   a, [bc]                                     ; $63d8: $0a
	inc  e                                           ; $63d9: $1c
	ld   [bc], a                                     ; $63da: $02
	nop                                              ; $63db: $00
	nop                                              ; $63dc: $00
	ld   bc, $6d9d                                   ; $63dd: $01 $9d $6d
	ld   e, l                                        ; $63e0: $5d
	ld   h, l                                        ; $63e1: $65
	ld   a, h                                        ; $63e2: $7c
	inc  b                                           ; $63e3: $04
	ld   l, $7d                                      ; $63e4: $2e $7d
	inc  bc                                          ; $63e6: $03
	sub  b                                           ; $63e7: $90
	inc  bc                                          ; $63e8: $03
	cp   e                                           ; $63e9: $bb
	inc  bc                                          ; $63ea: $03
	ccf                                              ; $63eb: $3f
	ld   [bc], a                                     ; $63ec: $02
	ld   c, a                                        ; $63ed: $4f
	inc  bc                                          ; $63ee: $03
	cpl                                              ; $63ef: $2f
	inc  bc                                          ; $63f0: $03
	jp   nc, $0d9f                                   ; $63f1: $d2 $9f $0d

	inc  b                                           ; $63f4: $04
	add  c                                           ; $63f5: $81
	ld   a, l                                        ; $63f6: $7d
	ld   [bc], a                                     ; $63f7: $02
	ld   l, h                                        ; $63f8: $6c
	inc  b                                           ; $63f9: $04
	reti                                             ; $63fa: $d9


	ld   a, h                                        ; $63fb: $7c
	ret                                              ; $63fc: $c9


	call nz, $bad8                                   ; $63fd: $c4 $d8 $ba
	ret  nz                                          ; $6400: $c0

	and  e                                           ; $6401: $a3
	sbc  a                                           ; $6402: $9f
	dec  c                                           ; $6403: $0d
	nop                                              ; $6404: $00
	ld   a, [bc]                                     ; $6405: $0a
	inc  e                                           ; $6406: $1c
	ld   [bc], a                                     ; $6407: $02
	dec  b                                           ; $6408: $05
	dec  b                                           ; $6409: $05
	ld   bc, $0906                                   ; $640a: $01 $06 $09
	inc  bc                                          ; $640d: $03
	add  d                                           ; $640e: $82
	halt                                             ; $640f: $76
	sub  b                                           ; $6410: $90
	ld   [bc], a                                     ; $6411: $02
	cp   b                                           ; $6412: $b8
	ld   a, h                                        ; $6413: $7c

jr_05d_6414:
	inc  bc                                          ; $6414: $03
	db   $fc                                         ; $6415: $fc
	inc  bc                                          ; $6416: $03
	ld   d, d                                        ; $6417: $52
	inc  b                                           ; $6418: $04
	xor  d                                           ; $6419: $aa
	ld   a, c                                        ; $641a: $79
	ld   h, e                                        ; $641b: $63
	ld   d, [hl]                                     ; $641c: $56
	dec  c                                           ; $641d: $0d
	ld   [bc], a                                     ; $641e: $02
	and  [hl]                                        ; $641f: $a6
	ld   a, c                                        ; $6420: $79
	ld   d, d                                        ; $6421: $52
	sub  a                                           ; $6422: $97
	sbc  d                                           ; $6423: $9a
	ld   a, b                                        ; $6424: $78
	ld   d, d                                        ; $6425: $52
	ld   d, d                                        ; $6426: $52
	ld   l, e                                        ; $6427: $6b
	ld   e, d                                        ; $6428: $5a

jr_05d_6429:
	ld   h, l                                        ; $6429: $65
	ld   h, e                                        ; $642a: $63
	rst  $38                                         ; $642b: $ff
	rst  $38                                         ; $642c: $ff
	dec  c                                           ; $642d: $0d
	dec  b                                           ; $642e: $05
	and  e                                           ; $642f: $a3
	ld   [bc], a                                     ; $6430: $02
	sub  b                                           ; $6431: $90
	ld   a, b                                        ; $6432: $78
	ret  c                                           ; $6433: $d8

	xor  $bd                                         ; $6434: $ee $bd
	push af                                          ; $6436: $f5
	ret                                              ; $6437: $c9


	ld   a, b                                        ; $6438: $78
	and  c                                           ; $6439: $a1
	ld   [hl], h                                     ; $643a: $74
	ld   d, d                                        ; $643b: $52
	ld   d, d                                        ; $643c: $52
	sbc  a                                           ; $643d: $9f
	dec  c                                           ; $643e: $0d
	nop                                              ; $643f: $00
	ld   a, [bc]                                     ; $6440: $0a
	inc  e                                           ; $6441: $1c
	ld   [bc], a                                     ; $6442: $02
	ld   b, $06                                      ; $6443: $06 $06
	ld   bc, $2e04                                   ; $6445: $01 $04 $2e
	halt                                             ; $6448: $76
	inc  b                                           ; $6449: $04
	add  c                                           ; $644a: $81
	ld   h, e                                        ; $644b: $63
	ld   d, [hl]                                     ; $644c: $56
	ld   d, d                                        ; $644d: $52
	ld   [hl], h                                     ; $644e: $74
	ld   e, l                                        ; $644f: $5d
	sbc  d                                           ; $6450: $9a
	sbc  d                                           ; $6451: $9a
	ld   a, [hl]                                     ; $6452: $7e
	rst  $38                                         ; $6453: $ff
	rst  $38                                         ; $6454: $ff
	dec  c                                           ; $6455: $0d
	inc  b                                           ; $6456: $04
	ld   l, h                                        ; $6457: $6c
	ld   h, l                                        ; $6458: $65
	ld   e, l                                        ; $6459: $5d
	ld   [hl], h                                     ; $645a: $74
	sbc  [hl]                                        ; $645b: $9e
	ld   h, e                                        ; $645c: $63
	add  c                                           ; $645d: $81
	ld   h, l                                        ; $645e: $65
	ld   e, l                                        ; $645f: $5d
	ld   [hl], h                                     ; $6460: $74
	sbc  [hl]                                        ; $6461: $9e
	dec  c                                           ; $6462: $0d
	dec  b                                           ; $6463: $05
	pop  de                                          ; $6464: $d1
	sbc  l                                           ; $6465: $9d
	ld   l, b                                        ; $6466: $68
	inc  b                                           ; $6467: $04
	rra                                              ; $6468: $1f
	ld   a, c                                        ; $6469: $79
	ld   e, c                                        ; $646a: $59
	ld   e, a                                        ; $646b: $5f
	ld   l, [hl]                                     ; $646c: $6e
	ld   h, l                                        ; $646d: $65
	ld   l, l                                        ; $646e: $6d
	inc  bc                                          ; $646f: $03
	ld   l, a                                        ; $6470: $6f
	dec  c                                           ; $6471: $0d
	nop                                              ; $6472: $00
	ld   a, [bc]                                     ; $6473: $0a
	inc  e                                           ; $6474: $1c
	ld   [bc], a                                     ; $6475: $02
	inc  bc                                          ; $6476: $03
	inc  bc                                          ; $6477: $03
	ld   bc, $7154                                   ; $6478: $01 $54 $71
	ld   e, c                                        ; $647b: $59
	sbc  b                                           ; $647c: $98
	or   b                                           ; $647d: $b0
	db   $e4                                         ; $647e: $e4
	ld   a, h                                        ; $647f: $7c
	dec  b                                           ; $6480: $05
	dec  sp                                          ; $6481: $3b
	ld   a, c                                        ; $6482: $79
	ld   e, c                                        ; $6483: $59
	sub  a                                           ; $6484: $97
	adc  h                                           ; $6485: $8c
	ld   [hl], c                                     ; $6486: $71
	ld   [hl], h                                     ; $6487: $74
	dec  c                                           ; $6488: $0d
	ld   h, l                                        ; $6489: $65
	adc  h                                           ; $648a: $8c
	ld   d, d                                        ; $648b: $52
	rst  $38                                         ; $648c: $ff
	rst  $38                                         ; $648d: $ff
	ld   [bc], a                                     ; $648e: $02
	and  c                                           ; $648f: $a1
	inc  bc                                          ; $6490: $03
	and  b                                           ; $6491: $a0
	ld   l, a                                        ; $6492: $6f
	ld   [bc], a                                     ; $6493: $02
	jr   z, jr_05d_64ef                              ; $6494: $28 $59

	ld   [hl], c                                     ; $6496: $71
	ld   l, l                                        ; $6497: $6d
	sbc  a                                           ; $6498: $9f
	dec  c                                           ; $6499: $0d
	nop                                              ; $649a: $00
	ld   a, [bc]                                     ; $649b: $0a
	inc  e                                           ; $649c: $1c
	ld   [bc], a                                     ; $649d: $02
	ld   b, $06                                      ; $649e: $06 $06
	ld   bc, $9075                                   ; $64a0: $01 $75 $90
	sbc  [hl]                                        ; $64a3: $9e
	ld   d, d                                        ; $64a4: $52
	ld   e, l                                        ; $64a5: $5d
	sub  a                                           ; $64a6: $97
	dec  b                                           ; $64a7: $05
	xor  l                                           ; $64a8: $ad
	ld   d, d                                        ; $64a9: $52
	ld   [hl], h                                     ; $64aa: $74
	sub  b                                           ; $64ab: $90
	rst  $38                                         ; $64ac: $ff
	rst  $38                                         ; $64ad: $ff
	dec  c                                           ; $64ae: $0d
	inc  bc                                          ; $64af: $03
	xor  c                                           ; $64b0: $a9
	sub  b                                           ; $64b1: $90
	ld   e, e                                        ; $64b2: $5b
	ld   [hl], h                                     ; $64b3: $74
	ld   e, l                                        ; $64b4: $5d
	sbc  d                                           ; $64b5: $9a
	ld   a, b                                        ; $64b6: $78
	ld   e, c                                        ; $64b7: $59
	ld   [hl], c                                     ; $64b8: $71
	ld   l, l                                        ; $64b9: $6d
	sbc  a                                           ; $64ba: $9f
	dec  c                                           ; $64bb: $0d
	nop                                              ; $64bc: $00
	ld   a, [bc]                                     ; $64bd: $0a
	ld   bc, $9a6b                                   ; $64be: $01 $6b $9a
	ld   [bc], a                                     ; $64c1: $02
	dec  bc                                          ; $64c2: $0b
	dec  b                                           ; $64c3: $05
	db   $10                                         ; $64c4: $10
	sbc  [hl]                                        ; $64c5: $9e
	or   b                                           ; $64c6: $b0
	db   $e4                                         ; $64c7: $e4
	ld   e, d                                        ; $64c8: $5a
	ld   [bc], a                                     ; $64c9: $02
	sub  h                                           ; $64ca: $94
	inc  bc                                          ; $64cb: $03
	ld   l, e                                        ; $64cc: $6b
	ld   a, c                                        ; $64cd: $79
	ld   a, b                                        ; $64ce: $78
	ld   [hl], c                                     ; $64cf: $71
	ld   [hl], h                                     ; $64d0: $74
	dec  c                                           ; $64d1: $0d
	ld   h, l                                        ; $64d2: $65
	adc  h                                           ; $64d3: $8c
	ld   [hl], c                                     ; $64d4: $71
	ld   l, l                                        ; $64d5: $6d
	and  c                                           ; $64d6: $a1
	ld   [hl], l                                     ; $64d7: $75
	ld   h, a                                        ; $64d8: $67
	ld   a, h                                        ; $64d9: $7c
	sbc  a                                           ; $64da: $9f
	dec  c                                           ; $64db: $0d
	nop                                              ; $64dc: $00
	ld   a, [bc]                                     ; $64dd: $0a
	inc  e                                           ; $64de: $1c
	ld   [bc], a                                     ; $64df: $02
	dec  b                                           ; $64e0: $05
	dec  b                                           ; $64e1: $05
	ld   bc, $e4b0                                   ; $64e2: $01 $b0 $e4
	and  b                                           ; $64e5: $a0
	ld   [bc], a                                     ; $64e6: $02
	sub  l                                           ; $64e7: $95
	sbc  c                                           ; $64e8: $99
	halt                                             ; $64e9: $76
	sbc  [hl]                                        ; $64ea: $9e
	ld   l, e                                        ; $64eb: $6b
	ld   a, h                                        ; $64ec: $7c
	ld   [bc], a                                     ; $64ed: $02
	and  c                                           ; $64ee: $a1

jr_05d_64ef:
	inc  bc                                          ; $64ef: $03
	and  b                                           ; $64f0: $a0
	ld   l, a                                        ; $64f1: $6f
	ld   [bc], a                                     ; $64f2: $02
	jr   z, jr_05d_6558                              ; $64f3: $28 $63

	dec  c                                           ; $64f5: $0d
	halt                                             ; $64f6: $76
	sbc  [hl]                                        ; $64f7: $9e
	ld   d, b                                        ; $64f8: $50
	ld   a, h                                        ; $64f9: $7c

jr_05d_64fa:
	inc  bc                                          ; $64fa: $03
	ld   l, a                                        ; $64fb: $6f
	ld   a, h                                        ; $64fc: $7c
	inc  b                                           ; $64fd: $04
	and  b                                           ; $64fe: $a0
	ld   [bc], a                                     ; $64ff: $02
	ld   h, $76                                      ; $6500: $26 $76
	ld   h, e                                        ; $6502: $63
	add  c                                           ; $6503: $81
	ld   h, l                                        ; $6504: $65
	ld   h, e                                        ; $6505: $63
	ld   e, d                                        ; $6506: $5a
	dec  c                                           ; $6507: $0d
	adc  h                                           ; $6508: $8c
	ld   h, h                                        ; $6509: $64
	sbc  b                                           ; $650a: $98
	ld   d, b                                        ; $650b: $50
	ld   [hl], c                                     ; $650c: $71
	ld   [hl], h                                     ; $650d: $74
	rst  $38                                         ; $650e: $ff
	rst  $38                                         ; $650f: $ff
	dec  c                                           ; $6510: $0d
	nop                                              ; $6511: $00
	ld   a, [bc]                                     ; $6512: $0a
	ld   bc, $1803                                   ; $6513: $01 $03 $18
	sbc  b                                           ; $6516: $98
	dec  b                                           ; $6517: $05
	ld   h, b                                        ; $6518: $60
	ld   h, l                                        ; $6519: $65
	ld   [hl], h                                     ; $651a: $74
	ld   h, l                                        ; $651b: $65
	adc  h                                           ; $651c: $8c
	ld   d, h                                        ; $651d: $54
	and  c                                           ; $651e: $a1
	ld   [hl], l                                     ; $651f: $75
	ld   h, a                                        ; $6520: $67
	ld   a, h                                        ; $6521: $7c
	rst  $38                                         ; $6522: $ff
	dec  c                                           ; $6523: $0d
	rst  $38                                         ; $6524: $ff
	rst  $38                                         ; $6525: $ff
	rst  $38                                         ; $6526: $ff
	rst  $38                                         ; $6527: $ff
	rst  $38                                         ; $6528: $ff
	rst  $38                                         ; $6529: $ff
	dec  c                                           ; $652a: $0d
	nop                                              ; $652b: $00
	ld   a, [bc]                                     ; $652c: $0a
	inc  e                                           ; $652d: $1c
	ld   [bc], a                                     ; $652e: $02
	nop                                              ; $652f: $00
	nop                                              ; $6530: $00
	dec  e                                           ; $6531: $1d
	ld   b, b                                        ; $6532: $40
	ld   [de], a                                     ; $6533: $12
	inc  bc                                          ; $6534: $03
	ld   [de], a                                     ; $6535: $12
	ld   bc, $2803                                   ; $6536: $01 $03 $28
	nop                                              ; $6539: $00
	ld   bc, $9750                                   ; $653a: $01 $50 $97
	sbc  [hl]                                        ; $653d: $9e
	sub  b                                           ; $653e: $90
	ld   d, h                                        ; $653f: $54
	ld   h, c                                        ; $6540: $61
	and  c                                           ; $6541: $a1
	ld   a, b                                        ; $6542: $78
	inc  bc                                          ; $6543: $03
	ld   l, a                                        ; $6544: $6f
	ld   [bc], a                                     ; $6545: $02
	xor  c                                           ; $6546: $a9
	sbc  a                                           ; $6547: $9f
	dec  c                                           ; $6548: $0d
	inc  bc                                          ; $6549: $03
	jp   nc, $1401                                   ; $654a: $d2 $01 $14

	halt                                             ; $654d: $76
	ld   h, d                                        ; $654e: $62
	adc  a                                           ; $654f: $8f
	and  c                                           ; $6550: $a1
	ld   a, b                                        ; $6551: $78
	ld   h, e                                        ; $6552: $63
	ld   d, d                                        ; $6553: $52
	ld   a, e                                        ; $6554: $7b
	sbc  a                                           ; $6555: $9f
	dec  c                                           ; $6556: $0d
	dec  b                                           ; $6557: $05

jr_05d_6558:
	jr   nz, jr_05d_64fa                             ; $6558: $20 $a0

	ld   [bc], a                                     ; $655a: $02

Jump_05d_655b:
	jp   nz, Jump_05d_7452                           ; $655b: $c2 $52 $74

	ld   e, l                                        ; $655e: $5d
	sbc  d                                           ; $655f: $9a
	ld   [hl], h                                     ; $6560: $74
	ld   d, b                                        ; $6561: $50
	sbc  b                                           ; $6562: $98
	ld   e, d                                        ; $6563: $5a
	halt                                             ; $6564: $76
	ld   d, h                                        ; $6565: $54
	sbc  a                                           ; $6566: $9f
	dec  c                                           ; $6567: $0d
	nop                                              ; $6568: $00
	ld   a, [bc]                                     ; $6569: $0a
	ld   bc, $9166                                   ; $656a: $01 $66 $91
	sbc  [hl]                                        ; $656d: $9e
	ld   e, b                                        ; $656e: $58
	sub  d                                           ; $656f: $92
	ld   h, a                                        ; $6570: $67
	adc  l                                           ; $6571: $8d
	ld   a, b                                        ; $6572: $78
	ld   h, e                                        ; $6573: $63
	ld   d, d                                        ; $6574: $52
	sbc  a                                           ; $6575: $9f
	dec  c                                           ; $6576: $0d
	nop                                              ; $6577: $00
	ld   a, [bc]                                     ; $6578: $0a
	nop                                              ; $6579: $00
	nop                                              ; $657a: $00
	inc  b                                           ; $657b: $04
	add  b                                           ; $657c: $80
	dec  c                                           ; $657d: $0d
	ld   bc, $20ff                                   ; $657e: $01 $ff $20
	inc  bc                                          ; $6581: $03
	ld   c, [hl]                                     ; $6582: $4e
	ld   [bc], a                                     ; $6583: $02
	nop                                              ; $6584: $00
	inc  bc                                          ; $6585: $03
	ld   c, b                                        ; $6586: $48
	add  hl, hl                                      ; $6587: $29
	add  hl, hl                                      ; $6588: $29
	ld   bc, $2201                                   ; $6589: $01 $01 $22
	inc  e                                           ; $658c: $1c
	nop                                              ; $658d: $00
	rrca                                             ; $658e: $0f
	nop                                              ; $658f: $00
	ld   bc, $010d                                   ; $6590: $01 $0d $01
	ld   b, $02                                      ; $6593: $06 $02
	ld   bc, $5d63                                   ; $6595: $01 $63 $5d
	sub  a                                           ; $6598: $97
	ld   h, e                                        ; $6599: $63
	and  c                                           ; $659a: $a1
	rst  $38                                         ; $659b: $ff
	rst  $38                                         ; $659c: $ff
	dec  c                                           ; $659d: $0d
	ld   h, c                                        ; $659e: $61
	and  c                                           ; $659f: $a1
	ld   a, b                                        ; $65a0: $78
	inc  bc                                          ; $65a1: $03
	ld   l, a                                        ; $65a2: $6f
	ld   [bc], a                                     ; $65a3: $02
	xor  c                                           ; $65a4: $a9
	ld   a, c                                        ; $65a5: $79
	ld   [hl], a                                     ; $65a6: $77
	ld   d, h                                        ; $65a7: $54
	ld   h, l                                        ; $65a8: $65
	ld   l, l                                        ; $65a9: $6d
	and  c                                           ; $65aa: $a1
	dec  c                                           ; $65ab: $0d
	ld   [hl], l                                     ; $65ac: $75
	ld   h, a                                        ; $65ad: $67
	ld   e, c                                        ; $65ae: $59
	ld   sp, hl                                      ; $65af: $f9
	dec  c                                           ; $65b0: $0d
	nop                                              ; $65b1: $00
	ld   a, [bc]                                     ; $65b2: $0a
	inc  e                                           ; $65b3: $1c
	ld   bc, $0404                                   ; $65b4: $01 $04 $04
	ld   bc, $9e50                                   ; $65b7: $01 $50 $9e
	ld   [$6300], sp                                 ; $65ba: $08 $00 $63
	and  c                                           ; $65bd: $a1
	rst  $38                                         ; $65be: $ff
	rst  $38                                         ; $65bf: $ff
	dec  c                                           ; $65c0: $0d
	nop                                              ; $65c1: $00
	ld   a, [bc]                                     ; $65c2: $0a
	ld   bc, $ffff                                   ; $65c3: $01 $ff $ff
	add  e                                           ; $65c6: $83
	halt                                             ; $65c7: $76
	inc  b                                           ; $65c8: $04
	ld   l, $7c                                      ; $65c9: $2e $7c
	ld   [bc], a                                     ; $65cb: $02
	jp   $05a0                                       ; $65cc: $c3 $a0 $05


	pop  de                                          ; $65cf: $d1
	ld   d, d                                        ; $65d0: $52
	inc  bc                                          ; $65d1: $03
	add  b                                           ; $65d2: $80
	ld   h, l                                        ; $65d3: $65
	ld   l, l                                        ; $65d4: $6d
	sub  a                                           ; $65d5: $97
	dec  c                                           ; $65d6: $0d
	inc  b                                           ; $65d7: $04
	adc  $9a                                         ; $65d8: $ce $9a
	ld   a, b                                        ; $65da: $78
	ld   e, l                                        ; $65db: $5d
	ld   a, b                                        ; $65dc: $78
	ld   [hl], c                                     ; $65dd: $71
	ld   l, a                                        ; $65de: $6f
	sub  c                                           ; $65df: $91
	ld   [hl], c                                     ; $65e0: $71
	ld   [hl], h                                     ; $65e1: $74
	rst  $38                                         ; $65e2: $ff
	rst  $38                                         ; $65e3: $ff
	dec  c                                           ; $65e4: $0d
	nop                                              ; $65e5: $00
	ld   a, [bc]                                     ; $65e6: $0a
	rrca                                             ; $65e7: $0f
	nop                                              ; $65e8: $00
	ld   bc, $7701                                   ; $65e9: $01 $01 $77
	and  c                                           ; $65ec: $a1
	ld   a, b                                        ; $65ed: $78
	inc  b                                           ; $65ee: $04
	ld   a, b                                        ; $65ef: $78
	ld   a, b                                        ; $65f0: $78
	and  c                                           ; $65f1: $a1
	ld   [hl], l                                     ; $65f2: $75
	ld   h, a                                        ; $65f3: $67
	ld   e, c                                        ; $65f4: $59
	ld   sp, hl                                      ; $65f5: $f9
	dec  c                                           ; $65f6: $0d
	nop                                              ; $65f7: $00
	ld   a, [bc]                                     ; $65f8: $0a
	inc  e                                           ; $65f9: $1c
	ld   bc, $0000                                   ; $65fa: $01 $00 $00
	ld   bc, $9403                                   ; $65fd: $01 $03 $94
	inc  b                                           ; $6600: $04
	sbc  [hl]                                        ; $6601: $9e
	ld   a, h                                        ; $6602: $7c
	inc  b                                           ; $6603: $04
	ld   l, $03                                      ; $6604: $2e $03
	sub  d                                           ; $6606: $92
	and  b                                           ; $6607: $a0
	adc  c                                           ; $6608: $89
	adc  a                                           ; $6609: $8f
	sbc  c                                           ; $660a: $99
	ld   a, h                                        ; $660b: $7c
	sub  b                                           ; $660c: $90
	dec  c                                           ; $660d: $0d
	inc  b                                           ; $660e: $04
	ld   c, c                                        ; $660f: $49
	ld   [hl], l                                     ; $6610: $75
	ld   h, a                                        ; $6611: $67
	ld   e, a                                        ; $6612: $5f
	ld   [hl], a                                     ; $6613: $77
	sbc  [hl]                                        ; $6614: $9e
	ld   h, a                                        ; $6615: $67
	ld   h, d                                        ; $6616: $62
	ld   e, l                                        ; $6617: $5d
	dec  b                                           ; $6618: $05
	ld   d, $04                                      ; $6619: $16 $04
	sbc  l                                           ; $661b: $9d
	ld   a, b                                        ; $661c: $78
	dec  c                                           ; $661d: $0d
	inc  bc                                          ; $661e: $03
	add  d                                           ; $661f: $82
	ld   [hl], l                                     ; $6620: $75
	ld   h, l                                        ; $6621: $65
	ld   l, l                                        ; $6622: $6d
	rst  $38                                         ; $6623: $ff
	rst  $38                                         ; $6624: $ff
	dec  c                                           ; $6625: $0d
	nop                                              ; $6626: $00
	ld   a, [bc]                                     ; $6627: $0a
	ld   bc, $6d50                                   ; $6628: $01 $50 $6d
	ld   h, l                                        ; $662b: $65
	ld   l, l                                        ; $662c: $6d
	ld   l, a                                        ; $662d: $6f
	ld   a, h                                        ; $662e: $7c
	ld   l, l                                        ; $662f: $6d
	adc  a                                           ; $6630: $8f
	ld   a, c                                        ; $6631: $79
	rst  $38                                         ; $6632: $ff
	rst  $38                                         ; $6633: $ff
	dec  c                                           ; $6634: $0d
	ld   b, $25                                      ; $6635: $06 $25
	and  b                                           ; $6637: $a0
	ld   e, c                                        ; $6638: $59
	ld   e, a                                        ; $6639: $5f
	ld   [hl], h                                     ; $663a: $74
	sbc  [hl]                                        ; $663b: $9e
	ld   h, c                                        ; $663c: $61
	ld   a, h                                        ; $663d: $7c
	inc  b                                           ; $663e: $04
	ld   [$2f04], sp                                 ; $663f: $08 $04 $2f
	and  b                                           ; $6642: $a0
	dec  c                                           ; $6643: $0d
	ld   [bc], a                                     ; $6644: $02
	ret  z                                           ; $6645: $c8

	inc  b                                           ; $6646: $04
	call $9759                                       ; $6647: $cd $59 $97
	inc  bc                                          ; $664a: $03
	sub  e                                           ; $664b: $93
	sbc  b                                           ; $664c: $98
	inc  b                                           ; $664d: $04
	sub  h                                           ; $664e: $94
	ld   e, e                                        ; $664f: $5b
	rst  $38                                         ; $6650: $ff
	rst  $38                                         ; $6651: $ff
	dec  c                                           ; $6652: $0d
	nop                                              ; $6653: $00
	ld   a, [bc]                                     ; $6654: $0a
	inc  e                                           ; $6655: $1c
	ld   bc, $0404                                   ; $6656: $01 $04 $04
	ld   bc, $656b                                   ; $6659: $01 $6b $65
	ld   [hl], h                                     ; $665c: $74
	ld   h, c                                        ; $665d: $61
	ld   a, h                                        ; $665e: $7c
	inc  bc                                          ; $665f: $03
	add  hl, de                                      ; $6660: $19
	and  b                                           ; $6661: $a0
	ld   [bc], a                                     ; $6662: $02
	ld   d, e                                        ; $6663: $53
	sbc  b                                           ; $6664: $98
	adc  h                                           ; $6665: $8c
	ld   h, l                                        ; $6666: $65
	ld   l, l                                        ; $6667: $6d
	rst  $38                                         ; $6668: $ff
	rst  $38                                         ; $6669: $ff
	dec  c                                           ; $666a: $0d
	nop                                              ; $666b: $00
	ld   a, [bc]                                     ; $666c: $0a
	rrca                                             ; $666d: $0f
	nop                                              ; $666e: $00
	ld   bc, $ff01                                   ; $666f: $01 $01 $ff
	rst  $38                                         ; $6672: $ff
	rst  $38                                         ; $6673: $ff
	rst  $38                                         ; $6674: $ff
	dec  c                                           ; $6675: $0d
	nop                                              ; $6676: $00
	ld   a, [bc]                                     ; $6677: $0a
	inc  e                                           ; $6678: $1c
	ld   bc, $0000                                   ; $6679: $01 $00 $00
	ld   bc, $af03                                   ; $667c: $01 $03 $af
	ld   h, e                                        ; $667f: $63
	ld   d, d                                        ; $6680: $52
	ld   [bc], a                                     ; $6681: $02
	ld   e, a                                        ; $6682: $5f
	ld   a, l                                        ; $6683: $7d
	sbc  [hl]                                        ; $6684: $9e
	sub  [hl]                                        ; $6685: $96
	ld   e, l                                        ; $6686: $5d
	inc  b                                           ; $6687: $04
	ld   l, $79                                      ; $6688: $2e $79
	inc  b                                           ; $668a: $04
	ldh  a, [c]                                      ; $668b: $f2
	and  c                                           ; $668c: $a1
	ld   [hl], l                                     ; $668d: $75
	dec  c                                           ; $668e: $0d
	sub  b                                           ; $668f: $90
	sub  a                                           ; $6690: $97
	ld   d, d                                        ; $6691: $52
	adc  h                                           ; $6692: $8c
	ld   h, l                                        ; $6693: $65
	ld   l, l                                        ; $6694: $6d
	rst  $38                                         ; $6695: $ff
	rst  $38                                         ; $6696: $ff
	dec  c                                           ; $6697: $0d
	nop                                              ; $6698: $00
	ld   a, [bc]                                     ; $6699: $0a
	inc  e                                           ; $669a: $1c
	ld   bc, $0101                                   ; $669b: $01 $01 $01
	ld   bc, $6d59                                   ; $669e: $01 $59 $6d
	inc  bc                                          ; $66a1: $03
	sub  l                                           ; $66a2: $95
	and  b                                           ; $66a3: $a0
	ld   h, l                                        ; $66a4: $65
	ld   [hl], h                                     ; $66a5: $74
	sub  b                                           ; $66a6: $90
	sub  a                                           ; $66a7: $97
	ld   [hl], c                                     ; $66a8: $71
	ld   [hl], h                                     ; $66a9: $74
	dec  c                                           ; $66aa: $0d
	inc  b                                           ; $66ab: $04
	jr   nc, @+$05                                   ; $66ac: $30 $03

	ld   l, e                                        ; $66ae: $6b
	and  b                                           ; $66af: $a0
	ld   b, $09                                      ; $66b0: $06 $09
	inc  bc                                          ; $66b2: $03
	add  d                                           ; $66b3: $82
	ld   [hl], l                                     ; $66b4: $75
	inc  bc                                          ; $66b5: $03
	sub  [hl]                                        ; $66b6: $96
	inc  b                                           ; $66b7: $04
	sbc  a                                           ; $66b8: $9f
	ld   h, l                                        ; $66b9: $65
	ld   l, l                                        ; $66ba: $6d
	sbc  b                                           ; $66bb: $98
	ld   h, l                                        ; $66bc: $65
	ld   [hl], h                                     ; $66bd: $74
	dec  c                                           ; $66be: $0d
	rst  $38                                         ; $66bf: $ff
	rst  $38                                         ; $66c0: $ff
	dec  c                                           ; $66c1: $0d
	nop                                              ; $66c2: $00
	ld   a, [bc]                                     ; $66c3: $0a
	inc  e                                           ; $66c4: $1c
	ld   bc, $0404                                   ; $66c5: $01 $04 $04
	ld   bc, $a16b                                   ; $66c8: $01 $6b $a1
	ld   a, b                                        ; $66cb: $78
	inc  b                                           ; $66cc: $04
	ld   l, $5a                                      ; $66cd: $2e $5a
	ld   b, $25                                      ; $66cf: $06 $25
	and  b                                           ; $66d1: $a0
	dec  b                                           ; $66d2: $05
	ld   [de], a                                     ; $66d3: $12
	halt                                             ; $66d4: $76
	ld   h, l                                        ; $66d5: $65
	ld   l, l                                        ; $66d6: $6d
	inc  bc                                          ; $66d7: $03
	ld   l, a                                        ; $66d8: $6f
	sbc  [hl]                                        ; $66d9: $9e
	dec  c                                           ; $66da: $0d
	ld   d, b                                        ; $66db: $50
	ld   l, l                                        ; $66dc: $6d
	ld   h, l                                        ; $66dd: $65
	ld   a, l                                        ; $66de: $7d
	dec  b                                           ; $66df: $05
	pop  de                                          ; $66e0: $d1
	ld   d, d                                        ; $66e1: $52
	adc  h                                           ; $66e2: $8c
	ld   h, l                                        ; $66e3: $65
	ld   l, l                                        ; $66e4: $6d
	rst  $38                                         ; $66e5: $ff
	rst  $38                                         ; $66e6: $ff
	dec  c                                           ; $66e7: $0d
	nop                                              ; $66e8: $00
	ld   a, [bc]                                     ; $66e9: $0a
	ld   bc, $4904                                   ; $66ea: $01 $04 $49
	ld   [hl], l                                     ; $66ed: $75
	inc  bc                                          ; $66ee: $03
	xor  b                                           ; $66ef: $a8
	ld   [hl], c                                     ; $66f0: $71
	ld   l, l                                        ; $66f1: $6d
	sbc  b                                           ; $66f2: $98
	ld   h, l                                        ; $66f3: $65
	ld   l, l                                        ; $66f4: $6d
	ld   a, h                                        ; $66f5: $7c
	ld   sp, hl                                      ; $66f6: $f9
	dec  c                                           ; $66f7: $0d
	inc  b                                           ; $66f8: $04
	ld   c, c                                        ; $66f9: $49
	ld   [hl], l                                     ; $66fa: $75
	dec  b                                           ; $66fb: $05
	sbc  b                                           ; $66fc: $98
	dec  b                                           ; $66fd: $05
	sbc  [hl]                                        ; $66fe: $9e
	ld   a, b                                        ; $66ff: $78
	ld   h, c                                        ; $6700: $61
	halt                                             ; $6701: $76
	and  b                                           ; $6702: $a0
	ld   h, l                                        ; $6703: $65
	ld   l, l                                        ; $6704: $6d
	ld   a, h                                        ; $6705: $7c
	ld   sp, hl                                      ; $6706: $f9
	dec  c                                           ; $6707: $0d
	inc  b                                           ; $6708: $04
	ld   c, c                                        ; $6709: $49
	ld   [hl], l                                     ; $670a: $75
	inc  bc                                          ; $670b: $03
	ld   a, $a1                                      ; $670c: $3e $a1
	ld   h, [hl]                                     ; $670e: $66
	sub  c                                           ; $670f: $91
	ld   [hl], c                                     ; $6710: $71
	ld   l, l                                        ; $6711: $6d
	ld   a, h                                        ; $6712: $7c
	rst  $38                                         ; $6713: $ff
	rst  $38                                         ; $6714: $ff
	ld   [hl], c                                     ; $6715: $71
	ld   [hl], h                                     ; $6716: $74
	sbc  a                                           ; $6717: $9f
	dec  c                                           ; $6718: $0d
	nop                                              ; $6719: $00
	ld   a, [bc]                                     ; $671a: $0a
	ld   bc, $9075                                   ; $671b: $01 $75 $90
	sbc  [hl]                                        ; $671e: $9e
	ld   [bc], a                                     ; $671f: $02
	and  l                                           ; $6720: $a5
	ld   a, l                                        ; $6721: $7d
	inc  b                                           ; $6722: $04
	sbc  [hl]                                        ; $6723: $9e
	ld   e, c                                        ; $6724: $59
	sbc  c                                           ; $6725: $99
	and  c                                           ; $6726: $a1
	ld   [hl], l                                     ; $6727: $75
	ld   h, a                                        ; $6728: $67
	rst  $38                                         ; $6729: $ff
	rst  $38                                         ; $672a: $ff
	dec  c                                           ; $672b: $0d
	ld   a, b                                        ; $672c: $78
	ld   l, d                                        ; $672d: $6a
	inc  b                                           ; $672e: $04
	ld   l, $5a                                      ; $672f: $2e $5a
	ld   b, $25                                      ; $6731: $06 $25
	and  b                                           ; $6733: $a0
	ld   e, c                                        ; $6734: $59
	ld   e, a                                        ; $6735: $5f
	ld   [hl], h                                     ; $6736: $74
	adc  h                                           ; $6737: $8c
	ld   [hl], l                                     ; $6738: $75
	dec  c                                           ; $6739: $0d
	inc  bc                                          ; $673a: $03
	xor  b                                           ; $673b: $a8
	ld   [hl], c                                     ; $673c: $71
	ld   l, l                                        ; $673d: $6d
	ld   a, h                                        ; $673e: $7c
	ld   e, c                                        ; $673f: $59
	rst  $38                                         ; $6740: $ff
	rst  $38                                         ; $6741: $ff
	dec  c                                           ; $6742: $0d
	nop                                              ; $6743: $00
	ld   a, [bc]                                     ; $6744: $0a
	inc  e                                           ; $6745: $1c
	ld   bc, $0000                                   ; $6746: $01 $00 $00
	ld   bc, $4904                                   ; $6749: $01 $04 $49
	and  b                                           ; $674c: $a0
	inc  bc                                          ; $674d: $03
	sub  e                                           ; $674e: $93
	sbc  e                                           ; $674f: $9b
	ld   d, h                                        ; $6750: $54
	halt                                             ; $6751: $76
	ld   h, l                                        ; $6752: $65
	ld   l, l                                        ; $6753: $6d
	ld   a, h                                        ; $6754: $7c
	ld   e, c                                        ; $6755: $59
	rst  $38                                         ; $6756: $ff
	rst  $38                                         ; $6757: $ff
	dec  c                                           ; $6758: $0d
	ld   [bc], a                                     ; $6759: $02
	and  l                                           ; $675a: $a5
	ld   a, c                                        ; $675b: $79
	ld   a, b                                        ; $675c: $78
	ld   [hl], c                                     ; $675d: $71
	ld   [hl], h                                     ; $675e: $74
	sub  [hl]                                        ; $675f: $96
	ld   d, h                                        ; $6760: $54
	sub  d                                           ; $6761: $92
	ld   e, l                                        ; $6762: $5d
	dec  c                                           ; $6763: $0d
	sbc  b                                           ; $6764: $98
	ld   e, c                                        ; $6765: $59
	ld   d, d                                        ; $6766: $52
	ld   [hl], l                                     ; $6767: $75
	ld   e, e                                        ; $6768: $5b
	ld   l, l                                        ; $6769: $6d
	and  c                                           ; $676a: $a1
	ld   [hl], l                                     ; $676b: $75
	ld   h, a                                        ; $676c: $67
	sbc  a                                           ; $676d: $9f
	dec  c                                           ; $676e: $0d
	nop                                              ; $676f: $00
	ld   a, [bc]                                     ; $6770: $0a
	ld   bc, $596e                                   ; $6771: $01 $6e $59
	sub  a                                           ; $6774: $97
	sbc  [hl]                                        ; $6775: $9e
	ld   d, b                                        ; $6776: $50
	ld   l, l                                        ; $6777: $6d
	ld   h, l                                        ; $6778: $65
	ld   a, l                                        ; $6779: $7d
	dec  c                                           ; $677a: $0d
	ld   h, c                                        ; $677b: $61
	ld   h, c                                        ; $677c: $61
	ld   a, c                                        ; $677d: $79
	ld   d, d                                        ; $677e: $52
	sbc  c                                           ; $677f: $99
	and  c                                           ; $6780: $a1
	ld   [hl], l                                     ; $6781: $75
	ld   h, a                                        ; $6782: $67
	sbc  a                                           ; $6783: $9f
	dec  c                                           ; $6784: $0d
	nop                                              ; $6785: $00
	ld   a, [bc]                                     ; $6786: $0a
	rrca                                             ; $6787: $0f
	nop                                              ; $6788: $00
	ld   bc, $6301                                   ; $6789: $01 $01 $63
	ld   e, l                                        ; $678c: $5d
	sub  a                                           ; $678d: $97
	ld   h, e                                        ; $678e: $63
	and  c                                           ; $678f: $a1
	rst  $38                                         ; $6790: $ff
	rst  $38                                         ; $6791: $ff
	dec  c                                           ; $6792: $0d
	nop                                              ; $6793: $00
	ld   a, [bc]                                     ; $6794: $0a
	inc  e                                           ; $6795: $1c
	ld   bc, $0101                                   ; $6796: $01 $01 $01
	dec  e                                           ; $6799: $1d
	ld   b, b                                        ; $679a: $40
	ld   de, $1103                                   ; $679b: $11 $03 $11
	ld   bc, $2803                                   ; $679e: $01 $03 $28
	nop                                              ; $67a1: $00
	ld   bc, $8f62                                   ; $67a2: $01 $62 $8f
	and  c                                           ; $67a5: $a1
	ld   a, b                                        ; $67a6: $78
	ld   h, e                                        ; $67a7: $63
	ld   d, d                                        ; $67a8: $52
	rst  $38                                         ; $67a9: $ff
	rst  $38                                         ; $67aa: $ff
	dec  c                                           ; $67ab: $0d
	ld   [hl], d                                     ; $67ac: $72
	adc  h                                           ; $67ad: $8c
	sub  a                                           ; $67ae: $97
	ld   a, b                                        ; $67af: $78
	ld   d, d                                        ; $67b0: $52
	dec  b                                           ; $67b1: $05
	jr   nz, @+$7b                                   ; $67b2: $20 $79

	dec  c                                           ; $67b4: $0d
	ld   [hl], d                                     ; $67b5: $72
	ld   e, e                                        ; $67b6: $5b
	ld   d, b                                        ; $67b7: $50
	sbc  l                                           ; $67b8: $9d
	ld   l, c                                        ; $67b9: $69
	ld   l, a                                        ; $67ba: $6f
	sub  c                                           ; $67bb: $91
	ld   [hl], c                                     ; $67bc: $71
	ld   [hl], h                                     ; $67bd: $74
	dec  c                                           ; $67be: $0d
	nop                                              ; $67bf: $00
	ld   a, [bc]                                     ; $67c0: $0a
	ld   bc, $9258                                   ; $67c1: $01 $58 $92
	ld   h, a                                        ; $67c4: $67
	adc  l                                           ; $67c5: $8d
	ld   a, b                                        ; $67c6: $78
	ld   h, e                                        ; $67c7: $63
	ld   d, d                                        ; $67c8: $52
	rst  $38                                         ; $67c9: $ff
	rst  $38                                         ; $67ca: $ff
	dec  c                                           ; $67cb: $0d
	nop                                              ; $67cc: $00
	ld   a, [bc]                                     ; $67cd: $0a
	dec  c                                           ; $67ce: $0d
	nop                                              ; $67cf: $00
	nop                                              ; $67d0: $00
	rrca                                             ; $67d1: $0f
	nop                                              ; $67d2: $00
	ld   bc, $1e09                                   ; $67d3: $01 $09 $1e
	nop                                              ; $67d6: $00
	nop                                              ; $67d7: $00
	ld   c, $41                                      ; $67d8: $0e $41
	rrca                                             ; $67da: $0f
	nop                                              ; $67db: $00
	ld   bc, $1c02                                   ; $67dc: $01 $02 $1c
	add  hl, bc                                      ; $67df: $09
	nop                                              ; $67e0: $00
	nop                                              ; $67e1: $00
	ld   bc, $0008                                   ; $67e2: $01 $08 $00
	ld   e, l                                        ; $67e5: $5d
	and  c                                           ; $67e6: $a1
	ld   h, [hl]                                     ; $67e7: $66
	sub  c                                           ; $67e8: $91
	ld   a, b                                        ; $67e9: $78
	ld   d, d                                        ; $67ea: $52
	ld   e, c                                        ; $67eb: $59
	sbc  a                                           ; $67ec: $9f
	dec  c                                           ; $67ed: $0d
	ld   a, b                                        ; $67ee: $78
	ld   a, c                                        ; $67ef: $79
	ld   e, c                                        ; $67f0: $59
	inc  b                                           ; $67f1: $04
	di                                               ; $67f2: $f3
	ld   e, c                                        ; $67f3: $59
	ld   d, d                                        ; $67f4: $52
	ld   sp, hl                                      ; $67f5: $f9
	dec  c                                           ; $67f6: $0d
	nop                                              ; $67f7: $00
	ld   a, [bc]                                     ; $67f8: $0a
	add  hl, de                                      ; $67f9: $19
	dec  b                                           ; $67fa: $05
	ld   [bc], a                                     ; $67fb: $02
	inc  b                                           ; $67fc: $04
	ld   a, [bc]                                     ; $67fd: $0a
	ld   [bc], a                                     ; $67fe: $02
	nop                                              ; $67ff: $00
	ld   e, c                                        ; $6800: $59
	sub  a                                           ; $6801: $97
	ld   a, h                                        ; $6802: $7c
	inc  b                                           ; $6803: $04
	ld   d, a                                        ; $6804: $57
	inc  b                                           ; $6805: $04
	ld   h, e                                        ; $6806: $63
	and  b                                           ; $6807: $a0
	ld   [bc], a                                     ; $6808: $02
	jp   nz, $005d                                   ; $6809: $c2 $5d $00

	nop                                              ; $680c: $00
	inc  bc                                          ; $680d: $03
	ld   l, l                                        ; $680e: $6d
	dec  b                                           ; $680f: $05
	add  hl, de                                      ; $6810: $19
	ld   a, h                                        ; $6811: $7c
	and  e                                           ; $6812: $a3
	jp   z, $a5d1                                    ; $6813: $ca $d1 $a5

	cp   d                                           ; $6816: $ba
	and  b                                           ; $6817: $a0
	ld   [bc], a                                     ; $6818: $02
	jp   nz, $005d                                   ; $6819: $c2 $5d $00

	ld   bc, $8b07                                   ; $681c: $01 $07 $8b
	ld   bc, $0302                                   ; $681f: $01 $02 $03
	ld   bc, $2000                                   ; $6822: $01 $00 $20
	nop                                              ; $6825: $00
	rlca                                             ; $6826: $07
	ld   c, c                                        ; $6827: $49
	ld   a, [bc]                                     ; $6828: $0a
	ld   [bc], a                                     ; $6829: $02
	inc  bc                                          ; $682a: $03
	ld   bc, $2001                                   ; $682b: $01 $01 $20
	nop                                              ; $682e: $00
	ld   b, $5a                                      ; $682f: $06 $5a
	nop                                              ; $6831: $00
	rrca                                             ; $6832: $0f
	nop                                              ; $6833: $00
	ld   bc, $5201                                   ; $6834: $01 $01 $52
	ld   d, [hl]                                     ; $6837: $56
	rst  $38                                         ; $6838: $ff
	rst  $38                                         ; $6839: $ff
	sbc  a                                           ; $683a: $9f
	dec  c                                           ; $683b: $0d
	halt                                             ; $683c: $76
	ld   e, l                                        ; $683d: $5d
	ld   a, c                                        ; $683e: $79
	inc  b                                           ; $683f: $04
	di                                               ; $6840: $f3
	ld   [bc], a                                     ; $6841: $02
	jp   Jump_05d_5276                               ; $6842: $c3 $76 $52


	ld   d, h                                        ; $6845: $54
	sbc  l                                           ; $6846: $9d
	ld   e, a                                        ; $6847: $5f
	ld   [hl], l                                     ; $6848: $75
	ld   a, l                                        ; $6849: $7d
	rst  $38                                         ; $684a: $ff
	sbc  a                                           ; $684b: $9f
	dec  c                                           ; $684c: $0d
	nop                                              ; $684d: $00
	ld   a, [bc]                                     ; $684e: $0a
	rlca                                             ; $684f: $07
	rst  JumpTable                                         ; $6850: $df
	nop                                              ; $6851: $00
	inc  bc                                          ; $6852: $03
	jr   nz, jr_05d_6856                             ; $6853: $20 $01

	ld   h, h                                        ; $6855: $64

jr_05d_6856:
	inc  hl                                          ; $6856: $23
	nop                                              ; $6857: $00
	rrca                                             ; $6858: $0f
	add  hl, bc                                      ; $6859: $09
	nop                                              ; $685a: $00
	ld   bc, $546b                                   ; $685b: $01 $6b $54
	ld   e, c                                        ; $685e: $59
	rst  $38                                         ; $685f: $ff
	rst  $38                                         ; $6860: $ff
	adc  h                                           ; $6861: $8c
	ld   d, b                                        ; $6862: $50
	sbc  [hl]                                        ; $6863: $9e
	dec  c                                           ; $6864: $0d
	ld   a, b                                        ; $6865: $78
	ld   a, c                                        ; $6866: $79
	ld   e, c                                        ; $6867: $59
	ld   [bc], a                                     ; $6868: $02
	ld   a, [de]                                     ; $6869: $1a
	dec  b                                           ; $686a: $05
	ldh  a, [$5a]                                    ; $686b: $f0 $5a
	ld   d, b                                        ; $686d: $50
	sbc  c                                           ; $686e: $99
	ld   a, b                                        ; $686f: $78
	sub  a                                           ; $6870: $97
	dec  c                                           ; $6871: $0d
	ld   d, d                                        ; $6872: $52
	ld   [hl], d                                     ; $6873: $72
	ld   [hl], l                                     ; $6874: $75
	sub  b                                           ; $6875: $90
	dec  b                                           ; $6876: $05
	db   $10                                         ; $6877: $10
	sbc  c                                           ; $6878: $99
	halt                                             ; $6879: $76
	ld   d, d                                        ; $687a: $52
	ld   d, d                                        ; $687b: $52
	sbc  a                                           ; $687c: $9f
	dec  c                                           ; $687d: $0d
	nop                                              ; $687e: $00
	ld   a, [bc]                                     ; $687f: $0a
	rrca                                             ; $6880: $0f
	nop                                              ; $6881: $00
	ld   bc, $7d01                                   ; $6882: $01 $01 $7d
	rst  $38                                         ; $6885: $ff
	rst  $38                                         ; $6886: $ff
	ld   a, l                                        ; $6887: $7d
	ld   d, d                                        ; $6888: $52
	sbc  a                                           ; $6889: $9f
	dec  c                                           ; $688a: $0d
	ld   d, b                                        ; $688b: $50
	sbc  b                                           ; $688c: $98
	ld   e, d                                        ; $688d: $5a
	halt                                             ; $688e: $76
	ld   d, h                                        ; $688f: $54
	ld   h, d                                        ; $6890: $62
	ld   h, h                                        ; $6891: $64
	ld   d, d                                        ; $6892: $52
	adc  h                                           ; $6893: $8c
	ld   h, a                                        ; $6894: $67
	sbc  a                                           ; $6895: $9f
	dec  c                                           ; $6896: $0d
	nop                                              ; $6897: $00
	ld   a, [bc]                                     ; $6898: $0a
	rrca                                             ; $6899: $0f
	add  hl, bc                                      ; $689a: $09
	nop                                              ; $689b: $00
	ld   bc, $9a6b                                   ; $689c: $01 $6b $9a
	ld   h, [hl]                                     ; $689f: $66
	sub  c                                           ; $68a0: $91
	sbc  [hl]                                        ; $68a1: $9e
	dec  b                                           ; $68a2: $05
	ld   [hl], e                                     ; $68a3: $73
	sub  b                                           ; $68a4: $90
	inc  bc                                          ; $68a5: $03
	dec  c                                           ; $68a6: $0d
	ld   [bc], a                                     ; $68a7: $02
	jp   Jump_05d_505a                               ; $68a8: $c3 $5a $50


	sbc  c                                           ; $68ab: $99
	ld   e, c                                        ; $68ac: $59
	sub  a                                           ; $68ad: $97
	dec  c                                           ; $68ae: $0d
	ld   h, c                                        ; $68af: $61
	sbc  d                                           ; $68b0: $9a
	ld   [hl], l                                     ; $68b1: $75
	sbc  a                                           ; $68b2: $9f
	dec  c                                           ; $68b3: $0d
	nop                                              ; $68b4: $00
	ld   a, [bc]                                     ; $68b5: $0a
	nop                                              ; $68b6: $00
	inc  e                                           ; $68b7: $1c
	add  hl, bc                                      ; $68b8: $09
	dec  b                                           ; $68b9: $05
	ld   a, [bc]                                     ; $68ba: $0a
	ld   bc, $0008                                   ; $68bb: $01 $08 $00
	ld   e, l                                        ; $68be: $5d
	and  c                                           ; $68bf: $a1
	sbc  a                                           ; $68c0: $9f
	dec  c                                           ; $68c1: $0d
	ld   a, b                                        ; $68c2: $78
	and  c                                           ; $68c3: $a1
	ld   l, [hl]                                     ; $68c4: $6e
	ld   e, c                                        ; $68c5: $59
	ld   [bc], a                                     ; $68c6: $02
	ld   [hl], d                                     ; $68c7: $72
	inc  bc                                          ; $68c8: $03
	dec  bc                                          ; $68c9: $0b
	ld   e, d                                        ; $68ca: $5a
	ld   [bc], a                                     ; $68cb: $02
	jr   z, jr_05d_6920                              ; $68cc: $28 $52

	ld   l, h                                        ; $68ce: $6c
	sbc  a                                           ; $68cf: $9f
	dec  c                                           ; $68d0: $0d
	nop                                              ; $68d1: $00
	ld   a, [bc]                                     ; $68d2: $0a
	inc  e                                           ; $68d3: $1c
	add  hl, bc                                      ; $68d4: $09
	nop                                              ; $68d5: $00
	nop                                              ; $68d6: $00
	ld   bc, $a15a                                   ; $68d7: $01 $5a $a1
	ld   a, [hl]                                     ; $68da: $7e
	sbc  c                                           ; $68db: $99
	ld   a, h                                        ; $68dc: $7c
	sub  b                                           ; $68dd: $90
	ld   d, d                                        ; $68de: $52
	ld   d, d                                        ; $68df: $52
	ld   e, d                                        ; $68e0: $5a
	sbc  [hl]                                        ; $68e1: $9e
	dec  c                                           ; $68e2: $0d
	ld   l, l                                        ; $68e3: $6d
	adc  h                                           ; $68e4: $8c
	ld   a, c                                        ; $68e5: $79
	ld   a, l                                        ; $68e6: $7d
	inc  bc                                          ; $68e7: $03
	and  a                                           ; $68e8: $a7
	adc  l                                           ; $68e9: $8d
	and  b                                           ; $68ea: $a0
	halt                                             ; $68eb: $76
	sub  a                                           ; $68ec: $97
	ld   a, b                                        ; $68ed: $78
	ld   d, d                                        ; $68ee: $52
	halt                                             ; $68ef: $76
	dec  c                                           ; $68f0: $0d
	inc  b                                           ; $68f1: $04
	dec  c                                           ; $68f2: $0d
	ld   e, d                                        ; $68f3: $5a
	sub  b                                           ; $68f4: $90
	ld   l, l                                        ; $68f5: $6d
	ld   a, b                                        ; $68f6: $78
	ld   d, d                                        ; $68f7: $52
	ld   l, h                                        ; $68f8: $6c
	sbc  a                                           ; $68f9: $9f
	dec  c                                           ; $68fa: $0d
	nop                                              ; $68fb: $00
	ld   a, [bc]                                     ; $68fc: $0a
	ld   bc, $0a04                                   ; $68fd: $01 $04 $0a
	ld   [bc], a                                     ; $6900: $02
	nop                                              ; $6901: $00
	ld   a, c                                        ; $6902: $79
	halt                                             ; $6903: $76
	ld   [hl], c                                     ; $6904: $71
	ld   [hl], h                                     ; $6905: $74
	ld   a, l                                        ; $6906: $7d
	inc  bc                                          ; $6907: $03
	sub  h                                           ; $6908: $94
	dec  b                                           ; $6909: $05
	inc  sp                                          ; $690a: $33
	ld   [bc], a                                     ; $690b: $02
	ld   l, b                                        ; $690c: $68
	dec  b                                           ; $690d: $05
	ld   de, $0d90                                   ; $690e: $11 $90 $0d
	inc  b                                           ; $6911: $04
	ld   c, $02                                      ; $6912: $0e $02
	jp   $0378                                       ; $6914: $c3 $78 $03


	dec  c                                           ; $6917: $0d
	ld   [bc], a                                     ; $6918: $02
	jp   Jump_05d_547c                               ; $6919: $c3 $7c $54


	ld   l, a                                        ; $691c: $6f
	ld   l, [hl]                                     ; $691d: $6e
	ld   e, c                                        ; $691e: $59
	sub  a                                           ; $691f: $97

jr_05d_6920:
	ld   a, b                                        ; $6920: $78
	sbc  a                                           ; $6921: $9f
	dec  c                                           ; $6922: $0d
	nop                                              ; $6923: $00
	ld   a, [bc]                                     ; $6924: $0a
	rrca                                             ; $6925: $0f
	nop                                              ; $6926: $00
	ld   bc, $7d01                                   ; $6927: $01 $01 $7d
	rst  $38                                         ; $692a: $ff
	rst  $38                                         ; $692b: $ff
	ld   a, l                                        ; $692c: $7d
	ld   d, d                                        ; $692d: $52
	sbc  a                                           ; $692e: $9f
	dec  c                                           ; $692f: $0d
	ld   [bc], a                                     ; $6930: $02
	and  c                                           ; $6931: $a1
	and  b                                           ; $6932: $a0
	ld   [hl], d                                     ; $6933: $72
	ld   e, a                                        ; $6934: $5f
	adc  h                                           ; $6935: $8c
	ld   h, a                                        ; $6936: $67
	sbc  a                                           ; $6937: $9f
	dec  c                                           ; $6938: $0d
	nop                                              ; $6939: $00
	ld   a, [bc]                                     ; $693a: $0a
	inc  e                                           ; $693b: $1c
	add  hl, bc                                      ; $693c: $09
	ld   bc, $0101                                   ; $693d: $01 $01 $01
	ld   d, h                                        ; $6940: $54
	and  c                                           ; $6941: $a1
	sbc  a                                           ; $6942: $9f
	dec  c                                           ; $6943: $0d
	ld   l, e                                        ; $6944: $6b
	sbc  d                                           ; $6945: $9a
	ld   h, [hl]                                     ; $6946: $66
	sub  c                                           ; $6947: $91
	sbc  [hl]                                        ; $6948: $9e
	dec  b                                           ; $6949: $05
	ld   [hl], e                                     ; $694a: $73
	sub  b                                           ; $694b: $90
	ld   l, e                                        ; $694c: $6b
	sbc  e                                           ; $694d: $9b
	ld   l, e                                        ; $694e: $6b
	sbc  e                                           ; $694f: $9b
	inc  bc                                          ; $6950: $03
	dec  c                                           ; $6951: $0d
	ld   [bc], a                                     ; $6952: $02
	jp   $0d79                                       ; $6953: $c3 $79 $0d


	sub  b                                           ; $6956: $90
	ld   [hl], a                                     ; $6957: $77
	sbc  c                                           ; $6958: $99
	ld   e, c                                        ; $6959: $59
	sub  a                                           ; $695a: $97
	ld   h, c                                        ; $695b: $61
	sbc  d                                           ; $695c: $9a
	ld   [hl], l                                     ; $695d: $75
	sbc  a                                           ; $695e: $9f
	dec  c                                           ; $695f: $0d
	nop                                              ; $6960: $00
	ld   a, [bc]                                     ; $6961: $0a
	nop                                              ; $6962: $00
	rrca                                             ; $6963: $0f
	nop                                              ; $6964: $00
	ld   bc, $5001                                   ; $6965: $01 $01 $50
	ld   a, h                                        ; $6968: $7c
	rst  $38                                         ; $6969: $ff
	rst  $38                                         ; $696a: $ff
	ld   l, a                                        ; $696b: $6f
	sub  l                                           ; $696c: $95
	ld   [hl], c                                     ; $696d: $71
	halt                                             ; $696e: $76
	dec  c                                           ; $696f: $0d
	ld   e, b                                        ; $6970: $58
	ld   [bc], a                                     ; $6971: $02
	jp   nz, Jump_05d_655b                           ; $6972: $c2 $5b $65

	ld   l, l                                        ; $6975: $6d
	ld   d, d                                        ; $6976: $52
	ld   h, c                                        ; $6977: $61
	halt                                             ; $6978: $76
	ld   e, d                                        ; $6979: $5a
	dec  c                                           ; $697a: $0d
	ld   d, b                                        ; $697b: $50
	sbc  c                                           ; $697c: $99
	and  c                                           ; $697d: $a1
	ld   [hl], l                                     ; $697e: $75
	ld   h, a                                        ; $697f: $67
	ld   e, a                                        ; $6980: $5f
	ld   [hl], a                                     ; $6981: $77
	rst  $38                                         ; $6982: $ff
	dec  c                                           ; $6983: $0d
	nop                                              ; $6984: $00
	ld   a, [bc]                                     ; $6985: $0a
	rrca                                             ; $6986: $0f
	add  hl, bc                                      ; $6987: $09
	nop                                              ; $6988: $00
	ld   bc, $ffff                                   ; $6989: $01 $ff $ff
	ld   [bc], a                                     ; $698c: $02
	jp   nz, Jump_05d_6d5b                           ; $698d: $c2 $5b $6d

	ld   d, d                                        ; $6990: $52
	ld   h, c                                        ; $6991: $61
	halt                                             ; $6992: $76
	ld   sp, hl                                      ; $6993: $f9
	dec  c                                           ; $6994: $0d
	nop                                              ; $6995: $00
	ld   a, [bc]                                     ; $6996: $0a
	jr   jr_05d_699c                                 ; $6997: $18 $03

	ld   bc, $5d63                                   ; $6999: $01 $63 $5d

jr_05d_699c:
	sub  a                                           ; $699c: $97
	ld   e, c                                        ; $699d: $59
	sub  a                                           ; $699e: $97
	ld   a, h                                        ; $699f: $7c
	inc  b                                           ; $69a0: $04
	ld   d, a                                        ; $69a1: $57
	inc  b                                           ; $69a2: $04
	ld   h, e                                        ; $69a3: $63
	and  b                                           ; $69a4: $a0
	ld   e, e                                        ; $69a5: $5b
	ld   e, l                                        ; $69a6: $5d
	nop                                              ; $69a7: $00
	nop                                              ; $69a8: $00
	ld   h, a                                        ; $69a9: $67
	adc  l                                           ; $69aa: $8d
	sbc  d                                           ; $69ab: $9a
	ld   e, c                                        ; $69ac: $59
	sub  a                                           ; $69ad: $97
	ld   a, h                                        ; $69ae: $7c
	inc  b                                           ; $69af: $04
	ld   d, a                                        ; $69b0: $57
	inc  b                                           ; $69b1: $04
	ld   h, e                                        ; $69b2: $63
	and  b                                           ; $69b3: $a0
	ld   e, e                                        ; $69b4: $5b
	ld   e, l                                        ; $69b5: $5d
	nop                                              ; $69b6: $00
	ld   bc, $7c6b                                   ; $69b7: $01 $6b $7c
	inc  b                                           ; $69ba: $04
	ld   e, $7c                                      ; $69bb: $1e $7c
	inc  bc                                          ; $69bd: $03
	add  d                                           ; $69be: $82
	ld   a, h                                        ; $69bf: $7c
	inc  b                                           ; $69c0: $04
	ld   d, a                                        ; $69c1: $57
	inc  b                                           ; $69c2: $04
	ld   h, e                                        ; $69c3: $63
	and  b                                           ; $69c4: $a0
	ld   e, e                                        ; $69c5: $5b
	ld   e, l                                        ; $69c6: $5d
	nop                                              ; $69c7: $00
	ld   [bc], a                                     ; $69c8: $02
	rlca                                             ; $69c9: $07
	ld   h, $03                                      ; $69ca: $26 $03
	ld   [bc], a                                     ; $69cc: $02
	ld   [bc], a                                     ; $69cd: $02
	ld   bc, $2000                                   ; $69ce: $01 $00 $20
	nop                                              ; $69d1: $00
	rlca                                             ; $69d2: $07
	ld   d, d                                        ; $69d3: $52
	inc  b                                           ; $69d4: $04
	ld   [bc], a                                     ; $69d5: $02
	ld   [bc], a                                     ; $69d6: $02
	ld   bc, $2001                                   ; $69d7: $01 $01 $20
	nop                                              ; $69da: $00
	rlca                                             ; $69db: $07
	inc  c                                           ; $69dc: $0c
	ld   [bc], a                                     ; $69dd: $02
	ld   [bc], a                                     ; $69de: $02
	ld   [bc], a                                     ; $69df: $02
	ld   bc, $2002                                   ; $69e0: $01 $02 $20
	nop                                              ; $69e3: $00
	jr   jr_05d_69e9                                 ; $69e4: $18 $03

	ld   bc, $ecdf                                   ; $69e6: $01 $df $ec

jr_05d_69e9:
	and  e                                           ; $69e9: $a3
	ld   e, c                                        ; $69ea: $59
	sub  a                                           ; $69eb: $97
	ld   a, h                                        ; $69ec: $7c
	inc  b                                           ; $69ed: $04
	ld   d, a                                        ; $69ee: $57
	inc  b                                           ; $69ef: $04
	ld   h, e                                        ; $69f0: $63
	and  b                                           ; $69f1: $a0
	ld   e, e                                        ; $69f2: $5b
	ld   e, l                                        ; $69f3: $5d
	nop                                              ; $69f4: $00
	nop                                              ; $69f5: $00
	xor  h                                           ; $69f6: $ac
	push af                                          ; $69f7: $f5
	bit  3, c                                        ; $69f8: $cb $59
	sub  a                                           ; $69fa: $97
	ld   a, h                                        ; $69fb: $7c
	inc  b                                           ; $69fc: $04
	ld   d, a                                        ; $69fd: $57
	inc  b                                           ; $69fe: $04
	ld   h, e                                        ; $69ff: $63
	and  b                                           ; $6a00: $a0
	ld   e, e                                        ; $6a01: $5b
	ld   e, l                                        ; $6a02: $5d
	nop                                              ; $6a03: $00
	ld   bc, $7c6b                                   ; $6a04: $01 $6b $7c
	inc  b                                           ; $6a07: $04
	ld   e, $7c                                      ; $6a08: $1e $7c
	inc  bc                                          ; $6a0a: $03
	add  d                                           ; $6a0b: $82
	ld   a, h                                        ; $6a0c: $7c
	inc  b                                           ; $6a0d: $04
	ld   d, a                                        ; $6a0e: $57
	inc  b                                           ; $6a0f: $04
	ld   h, e                                        ; $6a10: $63
	and  b                                           ; $6a11: $a0
	ld   e, e                                        ; $6a12: $5b
	ld   e, l                                        ; $6a13: $5d
	nop                                              ; $6a14: $00
	ld   [bc], a                                     ; $6a15: $02
	rlca                                             ; $6a16: $07
	ld   a, [hl]                                     ; $6a17: $7e
	dec  b                                           ; $6a18: $05
	ld   [bc], a                                     ; $6a19: $02
	ld   [bc], a                                     ; $6a1a: $02
	ld   bc, $2000                                   ; $6a1b: $01 $00 $20
	nop                                              ; $6a1e: $00
	rlca                                             ; $6a1f: $07
	or   $08                                         ; $6a20: $f6 $08
	ld   [bc], a                                     ; $6a22: $02
	ld   [bc], a                                     ; $6a23: $02
	ld   bc, $2001                                   ; $6a24: $01 $01 $20
	nop                                              ; $6a27: $00
	rlca                                             ; $6a28: $07
	ld   e, c                                        ; $6a29: $59
	ld   [bc], a                                     ; $6a2a: $02
	ld   [bc], a                                     ; $6a2b: $02
	ld   [bc], a                                     ; $6a2c: $02
	ld   bc, $2002                                   ; $6a2d: $01 $02 $20
	nop                                              ; $6a30: $00
	jr   jr_05d_6a36                                 ; $6a31: $18 $03

	ld   bc, $cf02                                   ; $6a33: $01 $02 $cf

jr_05d_6a36:
	dec  b                                           ; $6a36: $05
	ld   a, [de]                                     ; $6a37: $1a
	ld   e, c                                        ; $6a38: $59
	sub  a                                           ; $6a39: $97
	ld   a, h                                        ; $6a3a: $7c
	inc  b                                           ; $6a3b: $04
	ld   d, a                                        ; $6a3c: $57
	inc  b                                           ; $6a3d: $04
	ld   h, e                                        ; $6a3e: $63
	and  b                                           ; $6a3f: $a0
	ld   e, e                                        ; $6a40: $5b
	ld   e, l                                        ; $6a41: $5d
	nop                                              ; $6a42: $00
	nop                                              ; $6a43: $00
	and  e                                           ; $6a44: $a3
	and  l                                           ; $6a45: $a5
	db   $ec                                         ; $6a46: $ec
	cp   d                                           ; $6a47: $ba
	ld   e, c                                        ; $6a48: $59
	sub  a                                           ; $6a49: $97
	ld   a, h                                        ; $6a4a: $7c
	inc  b                                           ; $6a4b: $04
	ld   d, a                                        ; $6a4c: $57
	inc  b                                           ; $6a4d: $04
	ld   h, e                                        ; $6a4e: $63
	and  b                                           ; $6a4f: $a0
	ld   e, e                                        ; $6a50: $5b
	ld   e, l                                        ; $6a51: $5d
	nop                                              ; $6a52: $00
	ld   bc, $7c6b                                   ; $6a53: $01 $6b $7c
	inc  b                                           ; $6a56: $04
	ld   e, $7c                                      ; $6a57: $1e $7c
	inc  bc                                          ; $6a59: $03
	add  d                                           ; $6a5a: $82
	ld   a, h                                        ; $6a5b: $7c
	inc  b                                           ; $6a5c: $04
	ld   d, a                                        ; $6a5d: $57
	inc  b                                           ; $6a5e: $04
	ld   h, e                                        ; $6a5f: $63
	and  b                                           ; $6a60: $a0
	ld   e, e                                        ; $6a61: $5b
	ld   e, l                                        ; $6a62: $5d
	nop                                              ; $6a63: $00
	ld   [bc], a                                     ; $6a64: $02
	rlca                                             ; $6a65: $07
	call z, $0207                                    ; $6a66: $cc $07 $02
	ld   [bc], a                                     ; $6a69: $02
	ld   bc, $2000                                   ; $6a6a: $01 $00 $20
	nop                                              ; $6a6d: $00
	rlca                                             ; $6a6e: $07
	and  h                                           ; $6a6f: $a4
	ld   b, $02                                      ; $6a70: $06 $02
	ld   [bc], a                                     ; $6a72: $02
	ld   bc, $2001                                   ; $6a73: $01 $01 $20
	nop                                              ; $6a76: $00
	rlca                                             ; $6a77: $07
	xor  b                                           ; $6a78: $a8
	ld   [bc], a                                     ; $6a79: $02
	ld   [bc], a                                     ; $6a7a: $02
	ld   [bc], a                                     ; $6a7b: $02
	ld   bc, $2002                                   ; $6a7c: $01 $02 $20
	nop                                              ; $6a7f: $00
	jr   @+$04                                       ; $6a80: $18 $02

	ld   bc, $7192                                   ; $6a82: $01 $92 $71
	ld   a, a                                        ; $6a85: $7f
	sbc  b                                           ; $6a86: $98
	sub  d                                           ; $6a87: $92
	adc  a                                           ; $6a88: $8f
	sbc  c                                           ; $6a89: $99
	nop                                              ; $6a8a: $00
	nop                                              ; $6a8b: $00
	ld   l, e                                        ; $6a8c: $6b
	ld   a, h                                        ; $6a8d: $7c
	inc  b                                           ; $6a8e: $04
	ld   e, $7c                                      ; $6a8f: $1e $7c
	inc  bc                                          ; $6a91: $03
	add  d                                           ; $6a92: $82
	ld   a, h                                        ; $6a93: $7c
	inc  b                                           ; $6a94: $04
	ld   d, a                                        ; $6a95: $57
	inc  b                                           ; $6a96: $04
	ld   h, e                                        ; $6a97: $63
	and  b                                           ; $6a98: $a0
	ld   e, e                                        ; $6a99: $5b
	ld   e, l                                        ; $6a9a: $5d
	nop                                              ; $6a9b: $00
	ld   bc, $d707                                   ; $6a9c: $01 $07 $d7
	ld   [bc], a                                     ; $6a9f: $02
	ld   [bc], a                                     ; $6aa0: $02
	ld   [bc], a                                     ; $6aa1: $02
	ld   bc, $2000                                   ; $6aa2: $01 $00 $20
	nop                                              ; $6aa5: $00
	rlca                                             ; $6aa6: $07
	cp   a                                           ; $6aa7: $bf
	ld   bc, $0202                                   ; $6aa8: $01 $02 $02
	ld   bc, $2001                                   ; $6aab: $01 $01 $20
	nop                                              ; $6aae: $00
	rrca                                             ; $6aaf: $0f
	nop                                              ; $6ab0: $00
	ld   bc, $5001                                   ; $6ab1: $01 $01 $50
	sbc  [hl]                                        ; $6ab4: $9e
	sub  d                                           ; $6ab5: $92
	ld   [hl], c                                     ; $6ab6: $71
	ld   a, a                                        ; $6ab7: $7f
	sbc  b                                           ; $6ab8: $98
	ld   d, d                                        ; $6ab9: $52
	ld   d, d                                        ; $6aba: $52
	ld   [hl], l                                     ; $6abb: $75
	ld   h, a                                        ; $6abc: $67
	sbc  a                                           ; $6abd: $9f
	dec  c                                           ; $6abe: $0d
	ld   [hl], l                                     ; $6abf: $75
	ld   a, l                                        ; $6ac0: $7d
	sbc  [hl]                                        ; $6ac1: $9e
	inc  bc                                          ; $6ac2: $03
	add  e                                           ; $6ac3: $83
	dec  b                                           ; $6ac4: $05
	dec  c                                           ; $6ac5: $0d
	ld   h, l                                        ; $6ac6: $65
	adc  h                                           ; $6ac7: $8c
	ld   h, a                                        ; $6ac8: $67
	sbc  a                                           ; $6ac9: $9f
	dec  c                                           ; $6aca: $0d
	nop                                              ; $6acb: $00
	ld   a, [bc]                                     ; $6acc: $0a
	rrca                                             ; $6acd: $0f
	add  hl, bc                                      ; $6ace: $09
	nop                                              ; $6acf: $00
	ld   bc, $546b                                   ; $6ad0: $01 $6b $54
	ld   e, c                                        ; $6ad3: $59
	ld   d, d                                        ; $6ad4: $52
	sbc  a                                           ; $6ad5: $9f
	dec  c                                           ; $6ad6: $0d
	ld   [hl], l                                     ; $6ad7: $75
	sub  b                                           ; $6ad8: $90
	sbc  [hl]                                        ; $6ad9: $9e
	inc  b                                           ; $6ada: $04
	di                                               ; $6adb: $f3
	ld   e, d                                        ; $6adc: $5a
	ld   d, b                                        ; $6add: $50
	ld   [hl], c                                     ; $6ade: $71
	ld   l, l                                        ; $6adf: $6d
	sub  a                                           ; $6ae0: $97
	dec  c                                           ; $6ae1: $0d
	ld   d, d                                        ; $6ae2: $52
	ld   [hl], d                                     ; $6ae3: $72
	ld   [hl], l                                     ; $6ae4: $75
	sub  b                                           ; $6ae5: $90
	dec  b                                           ; $6ae6: $05
	db   $10                                         ; $6ae7: $10
	sbc  c                                           ; $6ae8: $99
	halt                                             ; $6ae9: $76
	ld   d, d                                        ; $6aea: $52
	ld   d, d                                        ; $6aeb: $52
	sbc  a                                           ; $6aec: $9f
	dec  c                                           ; $6aed: $0d
	nop                                              ; $6aee: $00
	ld   a, [bc]                                     ; $6aef: $0a
	ld   bc, $9166                                   ; $6af0: $01 $66 $91
	sbc  [hl]                                        ; $6af3: $9e
	ld   e, d                                        ; $6af4: $5a
	and  c                                           ; $6af5: $a1
	ld   a, [hl]                                     ; $6af6: $7e
	sbc  d                                           ; $6af7: $9a
	sub  [hl]                                        ; $6af8: $96
	sbc  a                                           ; $6af9: $9f
	dec  c                                           ; $6afa: $0d
	nop                                              ; $6afb: $00
	ld   a, [bc]                                     ; $6afc: $0a
	nop                                              ; $6afd: $00
	rrca                                             ; $6afe: $0f
	nop                                              ; $6aff: $00
	ld   bc, $6301                                   ; $6b00: $01 $01 $63

jr_05d_6b03:
	ld   e, l                                        ; $6b03: $5d
	sub  a                                           ; $6b04: $97
	ld   h, e                                        ; $6b05: $63
	and  c                                           ; $6b06: $a1
	ld   a, h                                        ; $6b07: $7c
	inc  b                                           ; $6b08: $04
	ld   l, l                                        ; $6b09: $6d
	add  [hl]                                        ; $6b0a: $86
	ld   a, h                                        ; $6b0b: $7c
	inc  b                                           ; $6b0c: $04
	ld   d, a                                        ; $6b0d: $57
	inc  b                                           ; $6b0e: $04
	ld   h, e                                        ; $6b0f: $63
	ld   [hl], c                                     ; $6b10: $71
	ld   [hl], h                                     ; $6b11: $74
	dec  c                                           ; $6b12: $0d
	ld   [hl], a                                     ; $6b13: $77
	ld   d, h                                        ; $6b14: $54
	ld   a, b                                        ; $6b15: $78
	and  c                                           ; $6b16: $a1
	ld   [hl], l                                     ; $6b17: $75
	ld   h, l                                        ; $6b18: $65
	sub  l                                           ; $6b19: $95

jr_05d_6b1a:
	ld   d, h                                        ; $6b1a: $54
	ld   e, c                                        ; $6b1b: $59
	ld   sp, hl                                      ; $6b1c: $f9
	dec  c                                           ; $6b1d: $0d
	nop                                              ; $6b1e: $00
	ld   a, [bc]                                     ; $6b1f: $0a
	rrca                                             ; $6b20: $0f
	add  hl, bc                                      ; $6b21: $09
	nop                                              ; $6b22: $00
	ld   bc, $8e83                                   ; $6b23: $01 $83 $8e
	sbc  [hl]                                        ; $6b26: $9e
	ld   l, e                                        ; $6b27: $6b
	ld   d, h                                        ; $6b28: $54
	ld   l, [hl]                                     ; $6b29: $6e
	ld   a, b                                        ; $6b2a: $78
	rst  $38                                         ; $6b2b: $ff
	rst  $38                                         ; $6b2c: $ff
	dec  c                                           ; $6b2d: $0d
	nop                                              ; $6b2e: $00
	ld   a, [bc]                                     ; $6b2f: $0a
	rlca                                             ; $6b30: $07
	ret  nz                                          ; $6b31: $c0

	inc  bc                                          ; $6b32: $03
	inc  bc                                          ; $6b33: $03
	ld   de, $7301                                   ; $6b34: $11 $01 $73
	inc  hl                                          ; $6b37: $23
	nop                                              ; $6b38: $00
	rlca                                             ; $6b39: $07
	rrca                                             ; $6b3a: $0f
	inc  b                                           ; $6b3b: $04
	inc  bc                                          ; $6b3c: $03
	ld   de, $ac01                                   ; $6b3d: $11 $01 $ac
	dec  h                                           ; $6b40: $25
	nop                                              ; $6b41: $00
	ld   bc, $5d63                                   ; $6b42: $01 $63 $5d
	sub  a                                           ; $6b45: $97
	ld   e, l                                        ; $6b46: $5d
	and  c                                           ; $6b47: $a1
	ld   a, h                                        ; $6b48: $7c
	sbc  [hl]                                        ; $6b49: $9e
	ld   [$5d00], sp                                 ; $6b4a: $08 $00 $5d
	and  c                                           ; $6b4d: $a1
	dec  c                                           ; $6b4e: $0d
	add  [hl]                                        ; $6b4f: $86
	ld   a, h                                        ; $6b50: $7c
	inc  b                                           ; $6b51: $04
	ld   d, a                                        ; $6b52: $57
	inc  b                                           ; $6b53: $04
	ld   h, e                                        ; $6b54: $63
	ld   a, l                                        ; $6b55: $7d
	sbc  [hl]                                        ; $6b56: $9e
	adc  h                                           ; $6b57: $8c
	ld   d, b                                        ; $6b58: $50
	adc  h                                           ; $6b59: $8c
	ld   d, b                                        ; $6b5a: $50
	dec  c                                           ; $6b5b: $0d
	halt                                             ; $6b5c: $76
	ld   d, d                                        ; $6b5d: $52
	ld   [hl], c                                     ; $6b5e: $71
	ld   l, l                                        ; $6b5f: $6d
	halt                                             ; $6b60: $76
	ld   h, c                                        ; $6b61: $61
	sbc  e                                           ; $6b62: $9b
	ld   e, c                                        ; $6b63: $59
	ld   a, b                                        ; $6b64: $78
	sbc  a                                           ; $6b65: $9f
	dec  c                                           ; $6b66: $0d
	nop                                              ; $6b67: $00
	ld   a, [bc]                                     ; $6b68: $0a
	ld   bc, $5d76                                   ; $6b69: $01 $76 $5d
	ld   a, c                                        ; $6b6c: $79
	ld   [bc], a                                     ; $6b6d: $02
	jr   z, jr_05d_6bc2                              ; $6b6e: $28 $52

	dec  b                                           ; $6b70: $05
	jr   nz, jr_05d_6b03                             ; $6b71: $20 $90

	ld   [bc], a                                     ; $6b73: $02
	jp   nz, Jump_05d_7859                           ; $6b74: $c2 $59 $78

	ld   d, d                                        ; $6b77: $52
	ld   h, l                                        ; $6b78: $65
	rst  $38                                         ; $6b79: $ff
	rst  $38                                         ; $6b7a: $ff
	dec  c                                           ; $6b7b: $0d
	ld   e, c                                        ; $6b7c: $59
	halt                                             ; $6b7d: $76
	ld   d, d                                        ; $6b7e: $52
	ld   [hl], c                                     ; $6b7f: $71
	ld   [hl], h                                     ; $6b80: $74
	sbc  [hl]                                        ; $6b81: $9e
	ld   d, d                                        ; $6b82: $52
	ld   d, d                                        ; $6b83: $52
	halt                                             ; $6b84: $76
	ld   d, d                                        ; $6b85: $52
	ld   d, h                                        ; $6b86: $54
	dec  b                                           ; $6b87: $05
	jr   nz, jr_05d_6b1a                             ; $6b88: $20 $90

	dec  c                                           ; $6b8a: $0d
	ld   [bc], a                                     ; $6b8b: $02
	jp   nz, Jump_05d_7859                           ; $6b8c: $c2 $59 $78

	ld   d, d                                        ; $6b8f: $52
	ld   a, b                                        ; $6b90: $78
	sbc  a                                           ; $6b91: $9f
	dec  c                                           ; $6b92: $0d
	nop                                              ; $6b93: $00
	ld   a, [bc]                                     ; $6b94: $0a
	ld   b, $1c                                      ; $6b95: $06 $1c
	ld   a, [bc]                                     ; $6b97: $0a
	ld   bc, $5d63                                   ; $6b98: $01 $63 $5d
	sub  a                                           ; $6b9b: $97
	ld   e, l                                        ; $6b9c: $5d
	and  c                                           ; $6b9d: $a1
	ld   a, h                                        ; $6b9e: $7c
	sbc  [hl]                                        ; $6b9f: $9e
	ld   [$5d00], sp                                 ; $6ba0: $08 $00 $5d
	and  c                                           ; $6ba3: $a1
	dec  c                                           ; $6ba4: $0d
	add  [hl]                                        ; $6ba5: $86
	ld   a, h                                        ; $6ba6: $7c
	inc  b                                           ; $6ba7: $04
	ld   d, a                                        ; $6ba8: $57
	inc  b                                           ; $6ba9: $04
	ld   h, e                                        ; $6baa: $63
	ld   a, l                                        ; $6bab: $7d
	rst  $38                                         ; $6bac: $ff
	rst  $38                                         ; $6bad: $ff
	dec  c                                           ; $6bae: $0d
	ld   d, b                                        ; $6baf: $50
	adc  h                                           ; $6bb0: $8c
	sbc  b                                           ; $6bb1: $98
	sub  [hl]                                        ; $6bb2: $96
	ld   e, l                                        ; $6bb3: $5d
	ld   a, b                                        ; $6bb4: $78
	ld   d, d                                        ; $6bb5: $52
	ld   a, b                                        ; $6bb6: $78
	sbc  a                                           ; $6bb7: $9f
	dec  c                                           ; $6bb8: $0d
	nop                                              ; $6bb9: $00
	ld   a, [bc]                                     ; $6bba: $0a
	ld   bc, $7190                                   ; $6bbb: $01 $90 $71
	halt                                             ; $6bbe: $76
	ld   [bc], a                                     ; $6bbf: $02
	ld   a, [de]                                     ; $6bc0: $1a
	inc  bc                                          ; $6bc1: $03

jr_05d_6bc2:
	ld   l, e                                        ; $6bc2: $6b
	ld   a, h                                        ; $6bc3: $7c
	ld   [bc], a                                     ; $6bc4: $02
	and  c                                           ; $6bc5: $a1
	inc  bc                                          ; $6bc6: $03
	and  b                                           ; $6bc7: $a0
	ld   l, a                                        ; $6bc8: $6f
	and  b                                           ; $6bc9: $a0
	dec  c                                           ; $6bca: $0d
	ld   [bc], a                                     ; $6bcb: $02
	ld   h, l                                        ; $6bcc: $65
	ld   d, [hl]                                     ; $6bcd: $56
	ld   [hl], h                                     ; $6bce: $74
	ld   [bc], a                                     ; $6bcf: $02
	ld   a, a                                        ; $6bd0: $7f
	inc  b                                           ; $6bd1: $04
	dec  de                                          ; $6bd2: $1b
	ld   h, l                                        ; $6bd3: $65
	ld   l, l                                        ; $6bd4: $6d
	adc  c                                           ; $6bd5: $89
	ld   d, h                                        ; $6bd6: $54
	ld   e, d                                        ; $6bd7: $5a
	ld   d, d                                        ; $6bd8: $52
	ld   d, d                                        ; $6bd9: $52
	halt                                             ; $6bda: $76
	dec  c                                           ; $6bdb: $0d
	dec  b                                           ; $6bdc: $05
	pop  de                                          ; $6bdd: $d1
	ld   d, h                                        ; $6bde: $54
	ld   l, h                                        ; $6bdf: $6c
	sbc  a                                           ; $6be0: $9f
	dec  c                                           ; $6be1: $0d
	nop                                              ; $6be2: $00
	ld   a, [bc]                                     ; $6be3: $0a
	ld   b, $1c                                      ; $6be4: $06 $1c
	ld   a, [bc]                                     ; $6be6: $0a
	ld   bc, $5d63                                   ; $6be7: $01 $63 $5d
	sub  a                                           ; $6bea: $97
	ld   e, l                                        ; $6beb: $5d
	and  c                                           ; $6bec: $a1
	ld   a, h                                        ; $6bed: $7c
	sbc  [hl]                                        ; $6bee: $9e
	ld   [$5d00], sp                                 ; $6bef: $08 $00 $5d
	and  c                                           ; $6bf2: $a1
	dec  c                                           ; $6bf3: $0d
	add  [hl]                                        ; $6bf4: $86
	ld   a, h                                        ; $6bf5: $7c
	inc  b                                           ; $6bf6: $04
	ld   d, a                                        ; $6bf7: $57
	inc  b                                           ; $6bf8: $04
	ld   h, e                                        ; $6bf9: $63
	ld   a, l                                        ; $6bfa: $7d
	sbc  [hl]                                        ; $6bfb: $9e
	ld   e, c                                        ; $6bfc: $59
	ld   a, b                                        ; $6bfd: $78
	sbc  b                                           ; $6bfe: $98
	ld   d, d                                        ; $6bff: $52
	ld   d, d                                        ; $6c00: $52
	dec  c                                           ; $6c01: $0d
	halt                                             ; $6c02: $76
	dec  b                                           ; $6c03: $05
	pop  de                                          ; $6c04: $d1
	ld   d, h                                        ; $6c05: $54
	ld   l, h                                        ; $6c06: $6c
	sbc  a                                           ; $6c07: $9f
	dec  c                                           ; $6c08: $0d
	nop                                              ; $6c09: $00
	ld   a, [bc]                                     ; $6c0a: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $6c0b: $01 $02 $ca
	sub  b                                           ; $6c0e: $90
	ld   l, e                                        ; $6c0f: $6b
	sbc  d                                           ; $6c10: $9a
	ld   a, c                                        ; $6c11: $79
	ld   [bc], a                                     ; $6c12: $02
	add  hl, bc                                      ; $6c13: $09
	ld   d, [hl]                                     ; $6c14: $56
	sub  a                                           ; $6c15: $97
	sbc  d                                           ; $6c16: $9a
	sbc  c                                           ; $6c17: $99
	sub  [hl]                                        ; $6c18: $96
	ld   d, h                                        ; $6c19: $54
	ld   a, c                                        ; $6c1a: $79
	dec  c                                           ; $6c1b: $0d
	ld   e, d                                        ; $6c1c: $5a
	and  c                                           ; $6c1d: $a1
	ld   a, [hl]                                     ; $6c1e: $7e
	sbc  c                                           ; $6c1f: $99
	and  c                                           ; $6c20: $a1
	ld   l, [hl]                                     ; $6c21: $6e
	ld   l, h                                        ; $6c22: $6c
	sbc  a                                           ; $6c23: $9f
	dec  c                                           ; $6c24: $0d
	nop                                              ; $6c25: $00
	ld   a, [bc]                                     ; $6c26: $0a
	ld   b, $1c                                      ; $6c27: $06 $1c
	ld   a, [bc]                                     ; $6c29: $0a
	rrca                                             ; $6c2a: $0f
	nop                                              ; $6c2b: $00
	ld   bc, $6701                                   ; $6c2c: $01 $01 $67

jr_05d_6c2f:
	adc  l                                           ; $6c2f: $8d
	sbc  d                                           ; $6c30: $9a
	ld   h, e                                        ; $6c31: $63
	and  c                                           ; $6c32: $a1
	ld   a, h                                        ; $6c33: $7c
	inc  b                                           ; $6c34: $04
	ld   l, l                                        ; $6c35: $6d
	add  [hl]                                        ; $6c36: $86
	ld   a, h                                        ; $6c37: $7c
	inc  b                                           ; $6c38: $04
	ld   d, a                                        ; $6c39: $57
	inc  b                                           ; $6c3a: $04
	ld   h, e                                        ; $6c3b: $63
	ld   [hl], c                                     ; $6c3c: $71
	ld   [hl], h                                     ; $6c3d: $74
	dec  c                                           ; $6c3e: $0d
	ld   [hl], a                                     ; $6c3f: $77
	ld   d, h                                        ; $6c40: $54
	ld   a, b                                        ; $6c41: $78
	and  c                                           ; $6c42: $a1
	ld   [hl], l                                     ; $6c43: $75
	ld   h, l                                        ; $6c44: $65
	sub  l                                           ; $6c45: $95

jr_05d_6c46:
	ld   d, h                                        ; $6c46: $54
	ld   e, c                                        ; $6c47: $59
	ld   sp, hl                                      ; $6c48: $f9
	dec  c                                           ; $6c49: $0d
	nop                                              ; $6c4a: $00
	ld   a, [bc]                                     ; $6c4b: $0a
	rrca                                             ; $6c4c: $0f
	add  hl, bc                                      ; $6c4d: $09
	nop                                              ; $6c4e: $00
	ld   bc, $8e83                                   ; $6c4f: $01 $83 $8e
	sbc  [hl]                                        ; $6c52: $9e
	ld   l, e                                        ; $6c53: $6b
	ld   d, h                                        ; $6c54: $54
	ld   l, [hl]                                     ; $6c55: $6e
	ld   a, b                                        ; $6c56: $78
	rst  $38                                         ; $6c57: $ff
	rst  $38                                         ; $6c58: $ff
	dec  c                                           ; $6c59: $0d
	nop                                              ; $6c5a: $00
	ld   a, [bc]                                     ; $6c5b: $0a
	rlca                                             ; $6c5c: $07
	db   $ec                                         ; $6c5d: $ec
	inc  b                                           ; $6c5e: $04
	inc  bc                                          ; $6c5f: $03
	ld   [de], a                                     ; $6c60: $12
	ld   bc, $2373                                   ; $6c61: $01 $73 $23
	nop                                              ; $6c64: $00
	rlca                                             ; $6c65: $07
	dec  sp                                          ; $6c66: $3b
	dec  b                                           ; $6c67: $05
	inc  bc                                          ; $6c68: $03
	ld   [de], a                                     ; $6c69: $12
	ld   bc, $25ac                                   ; $6c6a: $01 $ac $25
	nop                                              ; $6c6d: $00
	ld   bc, $8d67                                   ; $6c6e: $01 $67 $8d
	sbc  d                                           ; $6c71: $9a
	ld   e, l                                        ; $6c72: $5d
	and  c                                           ; $6c73: $a1
	ld   a, h                                        ; $6c74: $7c
	sbc  [hl]                                        ; $6c75: $9e
	ld   [$5d00], sp                                 ; $6c76: $08 $00 $5d
	and  c                                           ; $6c79: $a1
	dec  c                                           ; $6c7a: $0d
	add  [hl]                                        ; $6c7b: $86
	ld   a, h                                        ; $6c7c: $7c
	inc  b                                           ; $6c7d: $04
	ld   d, a                                        ; $6c7e: $57
	inc  b                                           ; $6c7f: $04
	ld   h, e                                        ; $6c80: $63
	ld   a, l                                        ; $6c81: $7d
	sbc  [hl]                                        ; $6c82: $9e
	adc  h                                           ; $6c83: $8c
	ld   d, b                                        ; $6c84: $50
	adc  h                                           ; $6c85: $8c
	ld   d, b                                        ; $6c86: $50
	dec  c                                           ; $6c87: $0d
	halt                                             ; $6c88: $76
	ld   d, d                                        ; $6c89: $52
	ld   [hl], c                                     ; $6c8a: $71
	ld   l, l                                        ; $6c8b: $6d
	halt                                             ; $6c8c: $76
	ld   h, c                                        ; $6c8d: $61
	sbc  e                                           ; $6c8e: $9b
	ld   e, c                                        ; $6c8f: $59
	ld   a, b                                        ; $6c90: $78
	sbc  a                                           ; $6c91: $9f
	dec  c                                           ; $6c92: $0d
	nop                                              ; $6c93: $00
	ld   a, [bc]                                     ; $6c94: $0a
	ld   bc, $5d76                                   ; $6c95: $01 $76 $5d
	ld   a, c                                        ; $6c98: $79
	ld   [bc], a                                     ; $6c99: $02
	jr   z, jr_05d_6cee                              ; $6c9a: $28 $52

	dec  b                                           ; $6c9c: $05
	jr   nz, jr_05d_6c2f                             ; $6c9d: $20 $90

	ld   [bc], a                                     ; $6c9f: $02
	jp   nz, Jump_05d_7859                           ; $6ca0: $c2 $59 $78

	ld   d, d                                        ; $6ca3: $52
	ld   h, l                                        ; $6ca4: $65
	rst  $38                                         ; $6ca5: $ff
	rst  $38                                         ; $6ca6: $ff
	dec  c                                           ; $6ca7: $0d
	ld   e, c                                        ; $6ca8: $59
	halt                                             ; $6ca9: $76
	ld   d, d                                        ; $6caa: $52
	ld   [hl], c                                     ; $6cab: $71
	ld   [hl], h                                     ; $6cac: $74
	sbc  [hl]                                        ; $6cad: $9e
	ld   d, d                                        ; $6cae: $52
	ld   d, d                                        ; $6caf: $52
	halt                                             ; $6cb0: $76
	ld   d, d                                        ; $6cb1: $52
	ld   d, h                                        ; $6cb2: $54
	dec  b                                           ; $6cb3: $05
	jr   nz, jr_05d_6c46                             ; $6cb4: $20 $90

	dec  c                                           ; $6cb6: $0d
	ld   [bc], a                                     ; $6cb7: $02
	jp   nz, Jump_05d_7859                           ; $6cb8: $c2 $59 $78

	ld   d, d                                        ; $6cbb: $52
	ld   a, b                                        ; $6cbc: $78
	sbc  a                                           ; $6cbd: $9f
	dec  c                                           ; $6cbe: $0d
	nop                                              ; $6cbf: $00
	ld   a, [bc]                                     ; $6cc0: $0a
	ld   b, $1c                                      ; $6cc1: $06 $1c
	ld   a, [bc]                                     ; $6cc3: $0a
	ld   bc, $8d67                                   ; $6cc4: $01 $67 $8d
	sbc  d                                           ; $6cc7: $9a
	ld   e, l                                        ; $6cc8: $5d
	and  c                                           ; $6cc9: $a1
	ld   a, h                                        ; $6cca: $7c
	sbc  [hl]                                        ; $6ccb: $9e
	ld   [$5d00], sp                                 ; $6ccc: $08 $00 $5d
	and  c                                           ; $6ccf: $a1
	dec  c                                           ; $6cd0: $0d
	add  [hl]                                        ; $6cd1: $86
	ld   a, h                                        ; $6cd2: $7c
	inc  b                                           ; $6cd3: $04
	ld   d, a                                        ; $6cd4: $57
	inc  b                                           ; $6cd5: $04
	ld   h, e                                        ; $6cd6: $63
	ld   a, l                                        ; $6cd7: $7d
	rst  $38                                         ; $6cd8: $ff
	rst  $38                                         ; $6cd9: $ff
	dec  c                                           ; $6cda: $0d
	ld   d, b                                        ; $6cdb: $50
	adc  h                                           ; $6cdc: $8c
	sbc  b                                           ; $6cdd: $98
	sub  [hl]                                        ; $6cde: $96
	ld   e, l                                        ; $6cdf: $5d
	ld   a, b                                        ; $6ce0: $78
	ld   d, d                                        ; $6ce1: $52
	ld   a, b                                        ; $6ce2: $78
	sbc  a                                           ; $6ce3: $9f
	dec  c                                           ; $6ce4: $0d
	nop                                              ; $6ce5: $00
	ld   a, [bc]                                     ; $6ce6: $0a
	ld   bc, $7190                                   ; $6ce7: $01 $90 $71
	halt                                             ; $6cea: $76
	ld   [bc], a                                     ; $6ceb: $02
	ld   a, [de]                                     ; $6cec: $1a
	inc  bc                                          ; $6ced: $03

jr_05d_6cee:
	ld   l, e                                        ; $6cee: $6b
	ld   a, h                                        ; $6cef: $7c
	ld   [bc], a                                     ; $6cf0: $02
	and  c                                           ; $6cf1: $a1
	inc  bc                                          ; $6cf2: $03
	and  b                                           ; $6cf3: $a0
	ld   l, a                                        ; $6cf4: $6f
	and  b                                           ; $6cf5: $a0
	dec  c                                           ; $6cf6: $0d
	ld   [bc], a                                     ; $6cf7: $02
	ld   h, l                                        ; $6cf8: $65
	ld   d, [hl]                                     ; $6cf9: $56
	ld   [hl], h                                     ; $6cfa: $74
	ld   [bc], a                                     ; $6cfb: $02
	ld   a, a                                        ; $6cfc: $7f
	inc  b                                           ; $6cfd: $04
	dec  de                                          ; $6cfe: $1b
	ld   h, l                                        ; $6cff: $65
	ld   l, l                                        ; $6d00: $6d
	adc  c                                           ; $6d01: $89
	ld   d, h                                        ; $6d02: $54
	ld   e, d                                        ; $6d03: $5a
	ld   d, d                                        ; $6d04: $52
	ld   d, d                                        ; $6d05: $52
	halt                                             ; $6d06: $76
	dec  c                                           ; $6d07: $0d
	dec  b                                           ; $6d08: $05
	pop  de                                          ; $6d09: $d1
	ld   d, h                                        ; $6d0a: $54
	ld   l, h                                        ; $6d0b: $6c
	sbc  a                                           ; $6d0c: $9f
	dec  c                                           ; $6d0d: $0d
	nop                                              ; $6d0e: $00
	ld   a, [bc]                                     ; $6d0f: $0a
	ld   b, $1c                                      ; $6d10: $06 $1c
	ld   a, [bc]                                     ; $6d12: $0a
	ld   bc, $8d67                                   ; $6d13: $01 $67 $8d
	sbc  d                                           ; $6d16: $9a
	ld   e, l                                        ; $6d17: $5d
	and  c                                           ; $6d18: $a1
	ld   a, h                                        ; $6d19: $7c
	sbc  [hl]                                        ; $6d1a: $9e
	ld   [$5d00], sp                                 ; $6d1b: $08 $00 $5d
	and  c                                           ; $6d1e: $a1
	dec  c                                           ; $6d1f: $0d
	add  [hl]                                        ; $6d20: $86
	ld   a, h                                        ; $6d21: $7c
	inc  b                                           ; $6d22: $04
	ld   d, a                                        ; $6d23: $57
	inc  b                                           ; $6d24: $04
	ld   h, e                                        ; $6d25: $63
	ld   a, l                                        ; $6d26: $7d
	sbc  [hl]                                        ; $6d27: $9e
	ld   e, c                                        ; $6d28: $59
	ld   a, b                                        ; $6d29: $78
	sbc  b                                           ; $6d2a: $98
	ld   d, d                                        ; $6d2b: $52
	ld   d, d                                        ; $6d2c: $52
	dec  c                                           ; $6d2d: $0d
	halt                                             ; $6d2e: $76
	dec  b                                           ; $6d2f: $05
	pop  de                                          ; $6d30: $d1
	ld   d, h                                        ; $6d31: $54
	ld   l, h                                        ; $6d32: $6c
	sbc  a                                           ; $6d33: $9f
	dec  c                                           ; $6d34: $0d
	nop                                              ; $6d35: $00
	ld   a, [bc]                                     ; $6d36: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $6d37: $01 $02 $ca
	sub  b                                           ; $6d3a: $90
	ld   l, e                                        ; $6d3b: $6b
	sbc  d                                           ; $6d3c: $9a
	ld   a, c                                        ; $6d3d: $79
	ld   [bc], a                                     ; $6d3e: $02
	add  hl, bc                                      ; $6d3f: $09
	ld   d, [hl]                                     ; $6d40: $56
	sub  a                                           ; $6d41: $97
	sbc  d                                           ; $6d42: $9a
	sbc  c                                           ; $6d43: $99
	sub  [hl]                                        ; $6d44: $96
	ld   d, h                                        ; $6d45: $54
	ld   a, c                                        ; $6d46: $79
	dec  c                                           ; $6d47: $0d
	ld   e, d                                        ; $6d48: $5a
	and  c                                           ; $6d49: $a1
	ld   a, [hl]                                     ; $6d4a: $7e
	sbc  c                                           ; $6d4b: $99
	and  c                                           ; $6d4c: $a1
	ld   l, [hl]                                     ; $6d4d: $6e
	ld   l, h                                        ; $6d4e: $6c
	sbc  a                                           ; $6d4f: $9f
	dec  c                                           ; $6d50: $0d
	nop                                              ; $6d51: $00

Jump_05d_6d52:
	ld   a, [bc]                                     ; $6d52: $0a
	ld   b, $1c                                      ; $6d53: $06 $1c
	ld   a, [bc]                                     ; $6d55: $0a
	rrca                                             ; $6d56: $0f
	nop                                              ; $6d57: $00
	ld   bc, $df01                                   ; $6d58: $01 $01 $df

Jump_05d_6d5b:
	db   $ec                                         ; $6d5b: $ec
	and  e                                           ; $6d5c: $a3
	ld   h, e                                        ; $6d5d: $63
	and  c                                           ; $6d5e: $a1
	ld   a, h                                        ; $6d5f: $7c
	inc  b                                           ; $6d60: $04
	ld   l, l                                        ; $6d61: $6d
	add  [hl]                                        ; $6d62: $86
	ld   a, h                                        ; $6d63: $7c
	inc  b                                           ; $6d64: $04
	ld   d, a                                        ; $6d65: $57
	inc  b                                           ; $6d66: $04
	ld   h, e                                        ; $6d67: $63
	ld   [hl], c                                     ; $6d68: $71
	ld   [hl], h                                     ; $6d69: $74
	dec  c                                           ; $6d6a: $0d
	ld   [hl], a                                     ; $6d6b: $77
	ld   d, h                                        ; $6d6c: $54
	ld   a, b                                        ; $6d6d: $78
	and  c                                           ; $6d6e: $a1
	ld   [hl], l                                     ; $6d6f: $75

jr_05d_6d70:
	ld   h, l                                        ; $6d70: $65
	sub  l                                           ; $6d71: $95
	ld   d, h                                        ; $6d72: $54
	ld   e, c                                        ; $6d73: $59
	ld   sp, hl                                      ; $6d74: $f9
	dec  c                                           ; $6d75: $0d
	nop                                              ; $6d76: $00
	ld   a, [bc]                                     ; $6d77: $0a
	rrca                                             ; $6d78: $0f
	add  hl, bc                                      ; $6d79: $09
	nop                                              ; $6d7a: $00
	ld   bc, $8e83                                   ; $6d7b: $01 $83 $8e
	sbc  [hl]                                        ; $6d7e: $9e
	ld   l, e                                        ; $6d7f: $6b
	ld   d, h                                        ; $6d80: $54
	ld   l, [hl]                                     ; $6d81: $6e
	ld   a, b                                        ; $6d82: $78
	rst  $38                                         ; $6d83: $ff
	rst  $38                                         ; $6d84: $ff
	dec  c                                           ; $6d85: $0d
	nop                                              ; $6d86: $00
	ld   a, [bc]                                     ; $6d87: $0a
	rlca                                             ; $6d88: $07
	ld   d, $06                                      ; $6d89: $16 $06
	inc  bc                                          ; $6d8b: $03
	inc  de                                          ; $6d8c: $13
	ld   bc, $2373                                   ; $6d8d: $01 $73 $23
	nop                                              ; $6d90: $00
	rlca                                             ; $6d91: $07
	ld   h, e                                        ; $6d92: $63
	ld   b, $03                                      ; $6d93: $06 $03
	inc  de                                          ; $6d95: $13
	ld   bc, $25ac                                   ; $6d96: $01 $ac $25
	nop                                              ; $6d99: $00
	ld   bc, $ecdf                                   ; $6d9a: $01 $df $ec
	and  e                                           ; $6d9d: $a3
	ld   a, h                                        ; $6d9e: $7c
	sbc  [hl]                                        ; $6d9f: $9e
	ld   [$5d00], sp                                 ; $6da0: $08 $00 $5d
	and  c                                           ; $6da3: $a1
	dec  c                                           ; $6da4: $0d
	add  [hl]                                        ; $6da5: $86
	ld   a, h                                        ; $6da6: $7c
	inc  b                                           ; $6da7: $04
	ld   d, a                                        ; $6da8: $57
	inc  b                                           ; $6da9: $04
	ld   h, e                                        ; $6daa: $63
	ld   a, l                                        ; $6dab: $7d
	sbc  [hl]                                        ; $6dac: $9e
	adc  h                                           ; $6dad: $8c
	ld   d, b                                        ; $6dae: $50
	adc  h                                           ; $6daf: $8c
	ld   d, b                                        ; $6db0: $50
	dec  c                                           ; $6db1: $0d
	halt                                             ; $6db2: $76
	ld   d, d                                        ; $6db3: $52
	ld   [hl], c                                     ; $6db4: $71
	ld   l, l                                        ; $6db5: $6d
	halt                                             ; $6db6: $76
	ld   h, c                                        ; $6db7: $61
	sbc  e                                           ; $6db8: $9b
	ld   e, c                                        ; $6db9: $59
	ld   a, b                                        ; $6dba: $78
	sbc  a                                           ; $6dbb: $9f
	dec  c                                           ; $6dbc: $0d
	nop                                              ; $6dbd: $00
	ld   a, [bc]                                     ; $6dbe: $0a
	ld   bc, $5d76                                   ; $6dbf: $01 $76 $5d
	ld   a, c                                        ; $6dc2: $79
	ld   [bc], a                                     ; $6dc3: $02
	jr   z, jr_05d_6e18                              ; $6dc4: $28 $52

	dec  b                                           ; $6dc6: $05
	jr   nz, @-$6e                                   ; $6dc7: $20 $90

	ld   [bc], a                                     ; $6dc9: $02
	jp   nz, Jump_05d_7859                           ; $6dca: $c2 $59 $78

	ld   d, d                                        ; $6dcd: $52
	ld   h, l                                        ; $6dce: $65
	rst  $38                                         ; $6dcf: $ff
	rst  $38                                         ; $6dd0: $ff
	dec  c                                           ; $6dd1: $0d
	ld   e, c                                        ; $6dd2: $59
	halt                                             ; $6dd3: $76
	ld   d, d                                        ; $6dd4: $52
	ld   [hl], c                                     ; $6dd5: $71
	ld   [hl], h                                     ; $6dd6: $74
	sbc  [hl]                                        ; $6dd7: $9e
	ld   d, d                                        ; $6dd8: $52
	ld   d, d                                        ; $6dd9: $52
	halt                                             ; $6dda: $76
	ld   d, d                                        ; $6ddb: $52
	ld   d, h                                        ; $6ddc: $54
	dec  b                                           ; $6ddd: $05
	jr   nz, jr_05d_6d70                             ; $6dde: $20 $90

	dec  c                                           ; $6de0: $0d
	ld   [bc], a                                     ; $6de1: $02
	jp   nz, Jump_05d_7859                           ; $6de2: $c2 $59 $78

	ld   d, d                                        ; $6de5: $52
	ld   a, b                                        ; $6de6: $78
	sbc  a                                           ; $6de7: $9f
	dec  c                                           ; $6de8: $0d
	nop                                              ; $6de9: $00
	ld   a, [bc]                                     ; $6dea: $0a
	ld   b, $1c                                      ; $6deb: $06 $1c
	ld   a, [bc]                                     ; $6ded: $0a
	ld   bc, $ecdf                                   ; $6dee: $01 $df $ec
	and  e                                           ; $6df1: $a3
	ld   a, h                                        ; $6df2: $7c
	sbc  [hl]                                        ; $6df3: $9e
	ld   [$5d00], sp                                 ; $6df4: $08 $00 $5d
	and  c                                           ; $6df7: $a1
	dec  c                                           ; $6df8: $0d
	add  [hl]                                        ; $6df9: $86
	ld   a, h                                        ; $6dfa: $7c
	inc  b                                           ; $6dfb: $04
	ld   d, a                                        ; $6dfc: $57
	inc  b                                           ; $6dfd: $04
	ld   h, e                                        ; $6dfe: $63
	ld   a, l                                        ; $6dff: $7d
	rst  $38                                         ; $6e00: $ff
	rst  $38                                         ; $6e01: $ff
	dec  c                                           ; $6e02: $0d
	ld   d, b                                        ; $6e03: $50
	adc  h                                           ; $6e04: $8c
	sbc  b                                           ; $6e05: $98
	sub  [hl]                                        ; $6e06: $96
	ld   e, l                                        ; $6e07: $5d
	ld   a, b                                        ; $6e08: $78
	ld   d, d                                        ; $6e09: $52
	ld   a, b                                        ; $6e0a: $78
	sbc  a                                           ; $6e0b: $9f
	dec  c                                           ; $6e0c: $0d
	nop                                              ; $6e0d: $00
	ld   a, [bc]                                     ; $6e0e: $0a
	ld   bc, $7190                                   ; $6e0f: $01 $90 $71
	halt                                             ; $6e12: $76
	ld   [bc], a                                     ; $6e13: $02
	ld   a, [de]                                     ; $6e14: $1a
	inc  bc                                          ; $6e15: $03
	ld   l, e                                        ; $6e16: $6b
	ld   a, h                                        ; $6e17: $7c

jr_05d_6e18:
	ld   [bc], a                                     ; $6e18: $02
	and  c                                           ; $6e19: $a1
	inc  bc                                          ; $6e1a: $03
	and  b                                           ; $6e1b: $a0
	ld   l, a                                        ; $6e1c: $6f
	and  b                                           ; $6e1d: $a0
	dec  c                                           ; $6e1e: $0d
	ld   [bc], a                                     ; $6e1f: $02
	ld   h, l                                        ; $6e20: $65
	ld   d, [hl]                                     ; $6e21: $56
	ld   [hl], h                                     ; $6e22: $74
	ld   [bc], a                                     ; $6e23: $02
	ld   a, a                                        ; $6e24: $7f
	inc  b                                           ; $6e25: $04
	dec  de                                          ; $6e26: $1b
	ld   h, l                                        ; $6e27: $65
	ld   l, l                                        ; $6e28: $6d
	adc  c                                           ; $6e29: $89
	ld   d, h                                        ; $6e2a: $54
	ld   e, d                                        ; $6e2b: $5a
	ld   d, d                                        ; $6e2c: $52
	ld   d, d                                        ; $6e2d: $52
	halt                                             ; $6e2e: $76
	dec  c                                           ; $6e2f: $0d
	dec  b                                           ; $6e30: $05
	pop  de                                          ; $6e31: $d1
	ld   d, h                                        ; $6e32: $54
	ld   l, h                                        ; $6e33: $6c
	sbc  a                                           ; $6e34: $9f
	dec  c                                           ; $6e35: $0d
	nop                                              ; $6e36: $00
	ld   a, [bc]                                     ; $6e37: $0a
	ld   b, $1c                                      ; $6e38: $06 $1c
	ld   a, [bc]                                     ; $6e3a: $0a
	ld   bc, $ecdf                                   ; $6e3b: $01 $df $ec
	and  e                                           ; $6e3e: $a3
	ld   a, h                                        ; $6e3f: $7c
	sbc  [hl]                                        ; $6e40: $9e
	ld   [$5d00], sp                                 ; $6e41: $08 $00 $5d
	and  c                                           ; $6e44: $a1
	dec  c                                           ; $6e45: $0d
	add  [hl]                                        ; $6e46: $86
	ld   a, h                                        ; $6e47: $7c
	inc  b                                           ; $6e48: $04
	ld   d, a                                        ; $6e49: $57
	inc  b                                           ; $6e4a: $04
	ld   h, e                                        ; $6e4b: $63
	ld   a, l                                        ; $6e4c: $7d
	sbc  [hl]                                        ; $6e4d: $9e
	ld   e, c                                        ; $6e4e: $59
	ld   a, b                                        ; $6e4f: $78
	sbc  b                                           ; $6e50: $98
	ld   d, d                                        ; $6e51: $52
	ld   d, d                                        ; $6e52: $52
	dec  c                                           ; $6e53: $0d
	halt                                             ; $6e54: $76
	dec  b                                           ; $6e55: $05
	pop  de                                          ; $6e56: $d1
	ld   d, h                                        ; $6e57: $54
	ld   l, h                                        ; $6e58: $6c
	sbc  a                                           ; $6e59: $9f
	dec  c                                           ; $6e5a: $0d
	nop                                              ; $6e5b: $00
	ld   a, [bc]                                     ; $6e5c: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $6e5d: $01 $02 $ca
	sub  b                                           ; $6e60: $90
	ld   l, e                                        ; $6e61: $6b
	sbc  d                                           ; $6e62: $9a
	ld   a, c                                        ; $6e63: $79
	ld   [bc], a                                     ; $6e64: $02
	add  hl, bc                                      ; $6e65: $09
	ld   d, [hl]                                     ; $6e66: $56
	sub  a                                           ; $6e67: $97
	sbc  d                                           ; $6e68: $9a
	sbc  c                                           ; $6e69: $99
	sub  [hl]                                        ; $6e6a: $96
	ld   d, h                                        ; $6e6b: $54
	ld   a, c                                        ; $6e6c: $79
	dec  c                                           ; $6e6d: $0d
	ld   e, d                                        ; $6e6e: $5a
	and  c                                           ; $6e6f: $a1
	ld   a, [hl]                                     ; $6e70: $7e
	sbc  c                                           ; $6e71: $99
	and  c                                           ; $6e72: $a1
	ld   l, [hl]                                     ; $6e73: $6e
	ld   l, h                                        ; $6e74: $6c
	sbc  a                                           ; $6e75: $9f
	dec  c                                           ; $6e76: $0d
	nop                                              ; $6e77: $00
	ld   a, [bc]                                     ; $6e78: $0a
	ld   b, $1c                                      ; $6e79: $06 $1c
	ld   a, [bc]                                     ; $6e7b: $0a
	rrca                                             ; $6e7c: $0f
	nop                                              ; $6e7d: $00
	ld   bc, $a301                                   ; $6e7e: $01 $01 $a3
	and  l                                           ; $6e81: $a5
	db   $ec                                         ; $6e82: $ec
	cp   d                                           ; $6e83: $ba
	ld   a, h                                        ; $6e84: $7c
	inc  b                                           ; $6e85: $04
	ld   l, l                                        ; $6e86: $6d
	add  [hl]                                        ; $6e87: $86
	ld   a, h                                        ; $6e88: $7c
	inc  b                                           ; $6e89: $04
	ld   d, a                                        ; $6e8a: $57
	inc  b                                           ; $6e8b: $04
	ld   h, e                                        ; $6e8c: $63
	ld   [hl], c                                     ; $6e8d: $71
	ld   [hl], h                                     ; $6e8e: $74
	dec  c                                           ; $6e8f: $0d
	ld   [hl], a                                     ; $6e90: $77
	ld   d, h                                        ; $6e91: $54
	ld   a, b                                        ; $6e92: $78
	and  c                                           ; $6e93: $a1
	ld   [hl], l                                     ; $6e94: $75
	ld   h, l                                        ; $6e95: $65

jr_05d_6e96:
	sub  l                                           ; $6e96: $95
	ld   d, h                                        ; $6e97: $54
	ld   e, c                                        ; $6e98: $59
	ld   sp, hl                                      ; $6e99: $f9
	dec  c                                           ; $6e9a: $0d
	nop                                              ; $6e9b: $00
	ld   a, [bc]                                     ; $6e9c: $0a
	rrca                                             ; $6e9d: $0f
	add  hl, bc                                      ; $6e9e: $09
	nop                                              ; $6e9f: $00
	ld   bc, $8e83                                   ; $6ea0: $01 $83 $8e
	sbc  [hl]                                        ; $6ea3: $9e
	ld   l, e                                        ; $6ea4: $6b
	ld   d, h                                        ; $6ea5: $54
	ld   l, [hl]                                     ; $6ea6: $6e
	ld   a, b                                        ; $6ea7: $78
	rst  $38                                         ; $6ea8: $ff
	rst  $38                                         ; $6ea9: $ff
	dec  c                                           ; $6eaa: $0d
	nop                                              ; $6eab: $00
	ld   a, [bc]                                     ; $6eac: $0a
	rlca                                             ; $6ead: $07
	inc  a                                           ; $6eae: $3c
	rlca                                             ; $6eaf: $07
	inc  bc                                          ; $6eb0: $03
	inc  d                                           ; $6eb1: $14
	ld   bc, $2373                                   ; $6eb2: $01 $73 $23
	nop                                              ; $6eb5: $00
	rlca                                             ; $6eb6: $07
	adc  d                                           ; $6eb7: $8a
	rlca                                             ; $6eb8: $07
	inc  bc                                          ; $6eb9: $03
	inc  d                                           ; $6eba: $14
	ld   bc, $25ac                                   ; $6ebb: $01 $ac $25
	nop                                              ; $6ebe: $00
	ld   bc, $a5a3                                   ; $6ebf: $01 $a3 $a5
	db   $ec                                         ; $6ec2: $ec
	cp   d                                           ; $6ec3: $ba
	ld   a, h                                        ; $6ec4: $7c
	sbc  [hl]                                        ; $6ec5: $9e
	ld   [$5d00], sp                                 ; $6ec6: $08 $00 $5d
	and  c                                           ; $6ec9: $a1
	dec  c                                           ; $6eca: $0d
	add  [hl]                                        ; $6ecb: $86
	ld   a, h                                        ; $6ecc: $7c
	inc  b                                           ; $6ecd: $04
	ld   d, a                                        ; $6ece: $57
	inc  b                                           ; $6ecf: $04
	ld   h, e                                        ; $6ed0: $63
	ld   a, l                                        ; $6ed1: $7d
	sbc  [hl]                                        ; $6ed2: $9e
	adc  h                                           ; $6ed3: $8c
	ld   d, b                                        ; $6ed4: $50
	adc  h                                           ; $6ed5: $8c
	ld   d, b                                        ; $6ed6: $50
	dec  c                                           ; $6ed7: $0d
	halt                                             ; $6ed8: $76
	ld   d, d                                        ; $6ed9: $52
	ld   [hl], c                                     ; $6eda: $71
	ld   l, l                                        ; $6edb: $6d
	halt                                             ; $6edc: $76
	ld   h, c                                        ; $6edd: $61
	sbc  e                                           ; $6ede: $9b
	ld   e, c                                        ; $6edf: $59
	ld   a, b                                        ; $6ee0: $78
	sbc  a                                           ; $6ee1: $9f
	dec  c                                           ; $6ee2: $0d
	nop                                              ; $6ee3: $00
	ld   a, [bc]                                     ; $6ee4: $0a
	ld   bc, $5d76                                   ; $6ee5: $01 $76 $5d
	ld   a, c                                        ; $6ee8: $79
	ld   [bc], a                                     ; $6ee9: $02
	jr   z, jr_05d_6f3e                              ; $6eea: $28 $52

Jump_05d_6eec:
	dec  b                                           ; $6eec: $05
	jr   nz, @-$6e                                   ; $6eed: $20 $90

	ld   [bc], a                                     ; $6eef: $02
	jp   nz, Jump_05d_7859                           ; $6ef0: $c2 $59 $78

	ld   d, d                                        ; $6ef3: $52
	ld   h, l                                        ; $6ef4: $65
	rst  $38                                         ; $6ef5: $ff
	rst  $38                                         ; $6ef6: $ff
	dec  c                                           ; $6ef7: $0d
	ld   e, c                                        ; $6ef8: $59
	halt                                             ; $6ef9: $76
	ld   d, d                                        ; $6efa: $52
	ld   [hl], c                                     ; $6efb: $71
	ld   [hl], h                                     ; $6efc: $74
	sbc  [hl]                                        ; $6efd: $9e
	ld   d, d                                        ; $6efe: $52
	ld   d, d                                        ; $6eff: $52
	halt                                             ; $6f00: $76
	ld   d, d                                        ; $6f01: $52
	ld   d, h                                        ; $6f02: $54
	dec  b                                           ; $6f03: $05
	jr   nz, jr_05d_6e96                             ; $6f04: $20 $90

	dec  c                                           ; $6f06: $0d
	ld   [bc], a                                     ; $6f07: $02
	jp   nz, Jump_05d_7859                           ; $6f08: $c2 $59 $78

	ld   d, d                                        ; $6f0b: $52
	ld   a, b                                        ; $6f0c: $78
	sbc  a                                           ; $6f0d: $9f
	dec  c                                           ; $6f0e: $0d
	nop                                              ; $6f0f: $00
	ld   a, [bc]                                     ; $6f10: $0a
	ld   b, $1c                                      ; $6f11: $06 $1c
	ld   a, [bc]                                     ; $6f13: $0a
	ld   bc, $a5a3                                   ; $6f14: $01 $a3 $a5
	db   $ec                                         ; $6f17: $ec
	cp   d                                           ; $6f18: $ba
	ld   a, h                                        ; $6f19: $7c
	sbc  [hl]                                        ; $6f1a: $9e
	ld   [$5d00], sp                                 ; $6f1b: $08 $00 $5d
	and  c                                           ; $6f1e: $a1
	dec  c                                           ; $6f1f: $0d
	add  [hl]                                        ; $6f20: $86
	ld   a, h                                        ; $6f21: $7c
	inc  b                                           ; $6f22: $04
	ld   d, a                                        ; $6f23: $57
	inc  b                                           ; $6f24: $04
	ld   h, e                                        ; $6f25: $63
	ld   a, l                                        ; $6f26: $7d
	rst  $38                                         ; $6f27: $ff
	rst  $38                                         ; $6f28: $ff
	dec  c                                           ; $6f29: $0d
	ld   d, b                                        ; $6f2a: $50
	adc  h                                           ; $6f2b: $8c
	sbc  b                                           ; $6f2c: $98
	sub  [hl]                                        ; $6f2d: $96
	ld   e, l                                        ; $6f2e: $5d
	ld   a, b                                        ; $6f2f: $78
	ld   d, d                                        ; $6f30: $52
	ld   a, b                                        ; $6f31: $78
	sbc  a                                           ; $6f32: $9f
	dec  c                                           ; $6f33: $0d
	nop                                              ; $6f34: $00
	ld   a, [bc]                                     ; $6f35: $0a
	ld   bc, $7190                                   ; $6f36: $01 $90 $71
	halt                                             ; $6f39: $76
	ld   [bc], a                                     ; $6f3a: $02
	ld   a, [de]                                     ; $6f3b: $1a
	inc  bc                                          ; $6f3c: $03
	ld   l, e                                        ; $6f3d: $6b

jr_05d_6f3e:
	ld   a, h                                        ; $6f3e: $7c
	ld   [bc], a                                     ; $6f3f: $02
	and  c                                           ; $6f40: $a1
	inc  bc                                          ; $6f41: $03
	and  b                                           ; $6f42: $a0
	ld   l, a                                        ; $6f43: $6f
	and  b                                           ; $6f44: $a0
	dec  c                                           ; $6f45: $0d
	ld   [bc], a                                     ; $6f46: $02
	ld   h, l                                        ; $6f47: $65
	ld   d, [hl]                                     ; $6f48: $56
	ld   [hl], h                                     ; $6f49: $74
	ld   [bc], a                                     ; $6f4a: $02
	ld   a, a                                        ; $6f4b: $7f
	inc  b                                           ; $6f4c: $04
	dec  de                                          ; $6f4d: $1b
	ld   h, l                                        ; $6f4e: $65
	ld   l, l                                        ; $6f4f: $6d
	adc  c                                           ; $6f50: $89
	ld   d, h                                        ; $6f51: $54
	ld   e, d                                        ; $6f52: $5a
	ld   d, d                                        ; $6f53: $52
	ld   d, d                                        ; $6f54: $52
	halt                                             ; $6f55: $76
	dec  c                                           ; $6f56: $0d
	dec  b                                           ; $6f57: $05
	pop  de                                          ; $6f58: $d1
	ld   d, h                                        ; $6f59: $54
	ld   l, h                                        ; $6f5a: $6c
	sbc  a                                           ; $6f5b: $9f
	dec  c                                           ; $6f5c: $0d
	nop                                              ; $6f5d: $00
	ld   a, [bc]                                     ; $6f5e: $0a
	ld   b, $1c                                      ; $6f5f: $06 $1c
	ld   a, [bc]                                     ; $6f61: $0a
	ld   bc, $a5a3                                   ; $6f62: $01 $a3 $a5
	db   $ec                                         ; $6f65: $ec
	cp   d                                           ; $6f66: $ba
	ld   a, h                                        ; $6f67: $7c
	sbc  [hl]                                        ; $6f68: $9e
	ld   [$5d00], sp                                 ; $6f69: $08 $00 $5d
	and  c                                           ; $6f6c: $a1
	dec  c                                           ; $6f6d: $0d
	add  [hl]                                        ; $6f6e: $86
	ld   a, h                                        ; $6f6f: $7c
	inc  b                                           ; $6f70: $04
	ld   d, a                                        ; $6f71: $57
	inc  b                                           ; $6f72: $04
	ld   h, e                                        ; $6f73: $63
	ld   a, l                                        ; $6f74: $7d
	sbc  [hl]                                        ; $6f75: $9e
	ld   e, c                                        ; $6f76: $59
	ld   a, b                                        ; $6f77: $78
	sbc  b                                           ; $6f78: $98
	ld   d, d                                        ; $6f79: $52
	ld   d, d                                        ; $6f7a: $52
	dec  c                                           ; $6f7b: $0d
	halt                                             ; $6f7c: $76
	dec  b                                           ; $6f7d: $05
	pop  de                                          ; $6f7e: $d1
	ld   d, h                                        ; $6f7f: $54
	ld   l, h                                        ; $6f80: $6c
	sbc  a                                           ; $6f81: $9f
	dec  c                                           ; $6f82: $0d
	nop                                              ; $6f83: $00
	ld   a, [bc]                                     ; $6f84: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $6f85: $01 $02 $ca
	sub  b                                           ; $6f88: $90
	ld   l, e                                        ; $6f89: $6b
	sbc  d                                           ; $6f8a: $9a
	ld   a, c                                        ; $6f8b: $79
	ld   [bc], a                                     ; $6f8c: $02
	add  hl, bc                                      ; $6f8d: $09
	ld   d, [hl]                                     ; $6f8e: $56
	sub  a                                           ; $6f8f: $97
	sbc  d                                           ; $6f90: $9a
	sbc  c                                           ; $6f91: $99
	sub  [hl]                                        ; $6f92: $96
	ld   d, h                                        ; $6f93: $54
	ld   a, c                                        ; $6f94: $79
	dec  c                                           ; $6f95: $0d
	ld   e, d                                        ; $6f96: $5a
	and  c                                           ; $6f97: $a1
	ld   a, [hl]                                     ; $6f98: $7e
	sbc  c                                           ; $6f99: $99
	and  c                                           ; $6f9a: $a1
	ld   l, [hl]                                     ; $6f9b: $6e
	ld   l, h                                        ; $6f9c: $6c
	sbc  a                                           ; $6f9d: $9f
	dec  c                                           ; $6f9e: $0d
	nop                                              ; $6f9f: $00
	ld   a, [bc]                                     ; $6fa0: $0a
	ld   b, $1c                                      ; $6fa1: $06 $1c
	ld   a, [bc]                                     ; $6fa3: $0a
	rrca                                             ; $6fa4: $0f
	nop                                              ; $6fa5: $00
	ld   bc, $0201                                   ; $6fa6: $01 $01 $02

jr_05d_6fa9:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fa9: $cf
	dec  b                                           ; $6faa: $05
	ld   a, [de]                                     ; $6fab: $1a
	ld   h, e                                        ; $6fac: $63
	and  c                                           ; $6fad: $a1
	ld   a, h                                        ; $6fae: $7c
	inc  b                                           ; $6faf: $04
	ld   l, l                                        ; $6fb0: $6d
	add  [hl]                                        ; $6fb1: $86
	ld   a, h                                        ; $6fb2: $7c
	inc  b                                           ; $6fb3: $04
	ld   d, a                                        ; $6fb4: $57
	inc  b                                           ; $6fb5: $04
	ld   h, e                                        ; $6fb6: $63
	ld   [hl], c                                     ; $6fb7: $71
	ld   [hl], h                                     ; $6fb8: $74
	dec  c                                           ; $6fb9: $0d
	ld   [hl], a                                     ; $6fba: $77
	ld   d, h                                        ; $6fbb: $54
	ld   a, b                                        ; $6fbc: $78
	and  c                                           ; $6fbd: $a1
	ld   [hl], l                                     ; $6fbe: $75
	ld   h, l                                        ; $6fbf: $65

jr_05d_6fc0:
	sub  l                                           ; $6fc0: $95
	ld   d, h                                        ; $6fc1: $54
	ld   e, c                                        ; $6fc2: $59
	ld   sp, hl                                      ; $6fc3: $f9
	dec  c                                           ; $6fc4: $0d
	nop                                              ; $6fc5: $00
	ld   a, [bc]                                     ; $6fc6: $0a
	rrca                                             ; $6fc7: $0f
	add  hl, bc                                      ; $6fc8: $09
	nop                                              ; $6fc9: $00
	ld   bc, $8e83                                   ; $6fca: $01 $83 $8e
	sbc  [hl]                                        ; $6fcd: $9e
	ld   l, e                                        ; $6fce: $6b
	ld   d, h                                        ; $6fcf: $54
	ld   l, [hl]                                     ; $6fd0: $6e
	ld   a, b                                        ; $6fd1: $78
	rst  $38                                         ; $6fd2: $ff
	rst  $38                                         ; $6fd3: $ff
	dec  c                                           ; $6fd4: $0d
	nop                                              ; $6fd5: $00
	ld   a, [bc]                                     ; $6fd6: $0a
	rlca                                             ; $6fd7: $07
	ld   h, [hl]                                     ; $6fd8: $66
	ld   [$1503], sp                                 ; $6fd9: $08 $03 $15
	ld   bc, $2373                                   ; $6fdc: $01 $73 $23
	nop                                              ; $6fdf: $00
	rlca                                             ; $6fe0: $07
	or   h                                           ; $6fe1: $b4
	ld   [$1503], sp                                 ; $6fe2: $08 $03 $15
	ld   bc, $25ac                                   ; $6fe5: $01 $ac $25
	nop                                              ; $6fe8: $00
	ld   bc, $cf02                                   ; $6fe9: $01 $02 $cf
	dec  b                                           ; $6fec: $05
	ld   a, [de]                                     ; $6fed: $1a
	ld   a, h                                        ; $6fee: $7c
	sbc  [hl]                                        ; $6fef: $9e
	ld   [$5d00], sp                                 ; $6ff0: $08 $00 $5d
	and  c                                           ; $6ff3: $a1
	dec  c                                           ; $6ff4: $0d
	add  [hl]                                        ; $6ff5: $86
	ld   a, h                                        ; $6ff6: $7c
	inc  b                                           ; $6ff7: $04
	ld   d, a                                        ; $6ff8: $57
	inc  b                                           ; $6ff9: $04
	ld   h, e                                        ; $6ffa: $63
	ld   a, l                                        ; $6ffb: $7d
	sbc  [hl]                                        ; $6ffc: $9e
	adc  h                                           ; $6ffd: $8c
	ld   d, b                                        ; $6ffe: $50
	adc  h                                           ; $6fff: $8c
	ld   d, b                                        ; $7000: $50
	dec  c                                           ; $7001: $0d
	halt                                             ; $7002: $76
	ld   d, d                                        ; $7003: $52
	ld   [hl], c                                     ; $7004: $71
	ld   l, l                                        ; $7005: $6d
	halt                                             ; $7006: $76
	ld   h, c                                        ; $7007: $61
	sbc  e                                           ; $7008: $9b
	ld   e, c                                        ; $7009: $59
	ld   a, b                                        ; $700a: $78
	sbc  a                                           ; $700b: $9f
	dec  c                                           ; $700c: $0d
	nop                                              ; $700d: $00
	ld   a, [bc]                                     ; $700e: $0a
	ld   bc, $5d76                                   ; $700f: $01 $76 $5d
	ld   a, c                                        ; $7012: $79
	ld   [bc], a                                     ; $7013: $02
	jr   z, jr_05d_7068                              ; $7014: $28 $52

	dec  b                                           ; $7016: $05
	jr   nz, jr_05d_6fa9                             ; $7017: $20 $90

	ld   [bc], a                                     ; $7019: $02
	jp   nz, Jump_05d_7859                           ; $701a: $c2 $59 $78

	ld   d, d                                        ; $701d: $52
	ld   h, l                                        ; $701e: $65
	rst  $38                                         ; $701f: $ff
	rst  $38                                         ; $7020: $ff
	dec  c                                           ; $7021: $0d
	ld   e, c                                        ; $7022: $59
	halt                                             ; $7023: $76
	ld   d, d                                        ; $7024: $52
	ld   [hl], c                                     ; $7025: $71
	ld   [hl], h                                     ; $7026: $74
	sbc  [hl]                                        ; $7027: $9e
	ld   d, d                                        ; $7028: $52
	ld   d, d                                        ; $7029: $52
	halt                                             ; $702a: $76
	ld   d, d                                        ; $702b: $52
	ld   d, h                                        ; $702c: $54
	dec  b                                           ; $702d: $05
	jr   nz, jr_05d_6fc0                             ; $702e: $20 $90

	dec  c                                           ; $7030: $0d
	ld   [bc], a                                     ; $7031: $02
	jp   nz, Jump_05d_7859                           ; $7032: $c2 $59 $78

	ld   d, d                                        ; $7035: $52
	ld   a, b                                        ; $7036: $78
	sbc  a                                           ; $7037: $9f
	dec  c                                           ; $7038: $0d
	nop                                              ; $7039: $00
	ld   a, [bc]                                     ; $703a: $0a
	ld   b, $1c                                      ; $703b: $06 $1c
	ld   a, [bc]                                     ; $703d: $0a
	ld   bc, $cf02                                   ; $703e: $01 $02 $cf
	dec  b                                           ; $7041: $05
	ld   a, [de]                                     ; $7042: $1a
	ld   a, h                                        ; $7043: $7c
	sbc  [hl]                                        ; $7044: $9e
	ld   [$5d00], sp                                 ; $7045: $08 $00 $5d
	and  c                                           ; $7048: $a1
	dec  c                                           ; $7049: $0d
	add  [hl]                                        ; $704a: $86
	ld   a, h                                        ; $704b: $7c
	inc  b                                           ; $704c: $04
	ld   d, a                                        ; $704d: $57
	inc  b                                           ; $704e: $04
	ld   h, e                                        ; $704f: $63
	ld   a, l                                        ; $7050: $7d
	rst  $38                                         ; $7051: $ff
	rst  $38                                         ; $7052: $ff
	dec  c                                           ; $7053: $0d
	ld   d, b                                        ; $7054: $50
	adc  h                                           ; $7055: $8c
	sbc  b                                           ; $7056: $98
	sub  [hl]                                        ; $7057: $96
	ld   e, l                                        ; $7058: $5d
	ld   a, b                                        ; $7059: $78
	ld   d, d                                        ; $705a: $52
	ld   a, b                                        ; $705b: $78
	sbc  a                                           ; $705c: $9f
	dec  c                                           ; $705d: $0d
	nop                                              ; $705e: $00
	ld   a, [bc]                                     ; $705f: $0a
	ld   bc, $7190                                   ; $7060: $01 $90 $71
	halt                                             ; $7063: $76
	ld   [bc], a                                     ; $7064: $02
	ld   a, [de]                                     ; $7065: $1a
	inc  bc                                          ; $7066: $03
	ld   l, e                                        ; $7067: $6b

jr_05d_7068:
	ld   a, h                                        ; $7068: $7c
	ld   [bc], a                                     ; $7069: $02
	and  c                                           ; $706a: $a1
	inc  bc                                          ; $706b: $03
	and  b                                           ; $706c: $a0
	ld   l, a                                        ; $706d: $6f
	and  b                                           ; $706e: $a0
	dec  c                                           ; $706f: $0d
	ld   [bc], a                                     ; $7070: $02
	ld   h, l                                        ; $7071: $65
	ld   d, [hl]                                     ; $7072: $56
	ld   [hl], h                                     ; $7073: $74
	ld   [bc], a                                     ; $7074: $02
	ld   a, a                                        ; $7075: $7f
	inc  b                                           ; $7076: $04
	dec  de                                          ; $7077: $1b
	ld   h, l                                        ; $7078: $65
	ld   l, l                                        ; $7079: $6d
	adc  c                                           ; $707a: $89
	ld   d, h                                        ; $707b: $54
	ld   e, d                                        ; $707c: $5a
	ld   d, d                                        ; $707d: $52
	ld   d, d                                        ; $707e: $52
	halt                                             ; $707f: $76
	dec  c                                           ; $7080: $0d
	dec  b                                           ; $7081: $05
	pop  de                                          ; $7082: $d1
	ld   d, h                                        ; $7083: $54
	ld   l, h                                        ; $7084: $6c
	sbc  a                                           ; $7085: $9f
	dec  c                                           ; $7086: $0d
	nop                                              ; $7087: $00
	ld   a, [bc]                                     ; $7088: $0a
	ld   b, $1c                                      ; $7089: $06 $1c
	ld   a, [bc]                                     ; $708b: $0a
	ld   bc, $cf02                                   ; $708c: $01 $02 $cf
	dec  b                                           ; $708f: $05
	ld   a, [de]                                     ; $7090: $1a
	ld   a, h                                        ; $7091: $7c
	sbc  [hl]                                        ; $7092: $9e
	ld   [$5d00], sp                                 ; $7093: $08 $00 $5d
	and  c                                           ; $7096: $a1
	dec  c                                           ; $7097: $0d
	add  [hl]                                        ; $7098: $86
	ld   a, h                                        ; $7099: $7c
	inc  b                                           ; $709a: $04
	ld   d, a                                        ; $709b: $57
	inc  b                                           ; $709c: $04
	ld   h, e                                        ; $709d: $63
	ld   a, l                                        ; $709e: $7d
	sbc  [hl]                                        ; $709f: $9e
	ld   e, c                                        ; $70a0: $59
	ld   a, b                                        ; $70a1: $78
	sbc  b                                           ; $70a2: $98
	ld   d, d                                        ; $70a3: $52
	ld   d, d                                        ; $70a4: $52
	dec  c                                           ; $70a5: $0d
	halt                                             ; $70a6: $76
	dec  b                                           ; $70a7: $05
	pop  de                                          ; $70a8: $d1
	ld   d, h                                        ; $70a9: $54
	ld   l, h                                        ; $70aa: $6c
	sbc  a                                           ; $70ab: $9f
	dec  c                                           ; $70ac: $0d
	nop                                              ; $70ad: $00
	ld   a, [bc]                                     ; $70ae: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $70af: $01 $02 $ca
	sub  b                                           ; $70b2: $90
	ld   l, e                                        ; $70b3: $6b
	sbc  d                                           ; $70b4: $9a
	ld   a, c                                        ; $70b5: $79
	ld   [bc], a                                     ; $70b6: $02
	add  hl, bc                                      ; $70b7: $09
	ld   d, [hl]                                     ; $70b8: $56
	sub  a                                           ; $70b9: $97
	sbc  d                                           ; $70ba: $9a
	sbc  c                                           ; $70bb: $99
	sub  [hl]                                        ; $70bc: $96
	ld   d, h                                        ; $70bd: $54
	ld   a, c                                        ; $70be: $79
	dec  c                                           ; $70bf: $0d
	ld   e, d                                        ; $70c0: $5a
	and  c                                           ; $70c1: $a1
	ld   a, [hl]                                     ; $70c2: $7e
	sbc  c                                           ; $70c3: $99
	and  c                                           ; $70c4: $a1
	ld   l, [hl]                                     ; $70c5: $6e
	ld   l, h                                        ; $70c6: $6c
	sbc  a                                           ; $70c7: $9f
	dec  c                                           ; $70c8: $0d
	nop                                              ; $70c9: $00
	ld   a, [bc]                                     ; $70ca: $0a
	ld   b, $1c                                      ; $70cb: $06 $1c
	ld   a, [bc]                                     ; $70cd: $0a
	rrca                                             ; $70ce: $0f
	nop                                              ; $70cf: $00
	ld   bc, $ac01                                   ; $70d0: $01 $01 $ac
	push af                                          ; $70d3: $f5
	bit  4, e                                        ; $70d4: $cb $63
	and  c                                           ; $70d6: $a1
	ld   a, h                                        ; $70d7: $7c
	inc  b                                           ; $70d8: $04
	ld   l, l                                        ; $70d9: $6d
	add  [hl]                                        ; $70da: $86
	ld   a, h                                        ; $70db: $7c
	inc  b                                           ; $70dc: $04
	ld   d, a                                        ; $70dd: $57
	inc  b                                           ; $70de: $04
	ld   h, e                                        ; $70df: $63
	ld   [hl], c                                     ; $70e0: $71
	ld   [hl], h                                     ; $70e1: $74
	dec  c                                           ; $70e2: $0d
	ld   [hl], a                                     ; $70e3: $77
	ld   d, h                                        ; $70e4: $54
	ld   a, b                                        ; $70e5: $78
	and  c                                           ; $70e6: $a1
	ld   [hl], l                                     ; $70e7: $75

jr_05d_70e8:
	ld   h, l                                        ; $70e8: $65
	sub  l                                           ; $70e9: $95
	ld   d, h                                        ; $70ea: $54
	ld   e, c                                        ; $70eb: $59
	ld   sp, hl                                      ; $70ec: $f9
	dec  c                                           ; $70ed: $0d
	nop                                              ; $70ee: $00
	ld   a, [bc]                                     ; $70ef: $0a
	rrca                                             ; $70f0: $0f
	add  hl, bc                                      ; $70f1: $09
	nop                                              ; $70f2: $00
	ld   bc, $8e83                                   ; $70f3: $01 $83 $8e
	sbc  [hl]                                        ; $70f6: $9e
	ld   l, e                                        ; $70f7: $6b
	ld   d, h                                        ; $70f8: $54
	ld   l, [hl]                                     ; $70f9: $6e
	ld   a, b                                        ; $70fa: $78
	rst  $38                                         ; $70fb: $ff
	rst  $38                                         ; $70fc: $ff
	dec  c                                           ; $70fd: $0d
	nop                                              ; $70fe: $00
	ld   a, [bc]                                     ; $70ff: $0a
	rlca                                             ; $7100: $07
	adc  [hl]                                        ; $7101: $8e
	add  hl, bc                                      ; $7102: $09
	inc  bc                                          ; $7103: $03
	ld   d, $01                                      ; $7104: $16 $01
	ld   [hl], e                                     ; $7106: $73
	inc  hl                                          ; $7107: $23
	nop                                              ; $7108: $00
	rlca                                             ; $7109: $07
	db   $db                                         ; $710a: $db
	add  hl, bc                                      ; $710b: $09
	inc  bc                                          ; $710c: $03
	ld   d, $01                                      ; $710d: $16 $01
	xor  h                                           ; $710f: $ac
	dec  h                                           ; $7110: $25
	nop                                              ; $7111: $00
	ld   bc, $f5ac                                   ; $7112: $01 $ac $f5
	bit  7, h                                        ; $7115: $cb $7c
	sbc  [hl]                                        ; $7117: $9e
	ld   [$5d00], sp                                 ; $7118: $08 $00 $5d
	and  c                                           ; $711b: $a1
	dec  c                                           ; $711c: $0d
	add  [hl]                                        ; $711d: $86
	ld   a, h                                        ; $711e: $7c
	inc  b                                           ; $711f: $04
	ld   d, a                                        ; $7120: $57
	inc  b                                           ; $7121: $04
	ld   h, e                                        ; $7122: $63
	ld   a, l                                        ; $7123: $7d
	sbc  [hl]                                        ; $7124: $9e
	adc  h                                           ; $7125: $8c
	ld   d, b                                        ; $7126: $50
	adc  h                                           ; $7127: $8c
	ld   d, b                                        ; $7128: $50
	dec  c                                           ; $7129: $0d
	halt                                             ; $712a: $76
	ld   d, d                                        ; $712b: $52
	ld   [hl], c                                     ; $712c: $71
	ld   l, l                                        ; $712d: $6d
	halt                                             ; $712e: $76
	ld   h, c                                        ; $712f: $61
	sbc  e                                           ; $7130: $9b
	ld   e, c                                        ; $7131: $59
	ld   a, b                                        ; $7132: $78
	sbc  a                                           ; $7133: $9f
	dec  c                                           ; $7134: $0d
	nop                                              ; $7135: $00
	ld   a, [bc]                                     ; $7136: $0a
	ld   bc, $5d76                                   ; $7137: $01 $76 $5d
	ld   a, c                                        ; $713a: $79
	ld   [bc], a                                     ; $713b: $02
	jr   z, jr_05d_7190                              ; $713c: $28 $52

	dec  b                                           ; $713e: $05
	jr   nz, @-$6e                                   ; $713f: $20 $90

	ld   [bc], a                                     ; $7141: $02
	jp   nz, Jump_05d_7859                           ; $7142: $c2 $59 $78

	ld   d, d                                        ; $7145: $52
	ld   h, l                                        ; $7146: $65
	rst  $38                                         ; $7147: $ff
	rst  $38                                         ; $7148: $ff
	dec  c                                           ; $7149: $0d
	ld   e, c                                        ; $714a: $59
	halt                                             ; $714b: $76
	ld   d, d                                        ; $714c: $52
	ld   [hl], c                                     ; $714d: $71
	ld   [hl], h                                     ; $714e: $74
	sbc  [hl]                                        ; $714f: $9e
	ld   d, d                                        ; $7150: $52
	ld   d, d                                        ; $7151: $52
	halt                                             ; $7152: $76
	ld   d, d                                        ; $7153: $52
	ld   d, h                                        ; $7154: $54
	dec  b                                           ; $7155: $05
	jr   nz, jr_05d_70e8                             ; $7156: $20 $90

	dec  c                                           ; $7158: $0d

Jump_05d_7159:
	ld   [bc], a                                     ; $7159: $02
	jp   nz, Jump_05d_7859                           ; $715a: $c2 $59 $78

	ld   d, d                                        ; $715d: $52
	ld   a, b                                        ; $715e: $78
	sbc  a                                           ; $715f: $9f
	dec  c                                           ; $7160: $0d
	nop                                              ; $7161: $00
	ld   a, [bc]                                     ; $7162: $0a
	ld   b, $1c                                      ; $7163: $06 $1c
	ld   a, [bc]                                     ; $7165: $0a
	ld   bc, $f5ac                                   ; $7166: $01 $ac $f5
	bit  7, h                                        ; $7169: $cb $7c
	sbc  [hl]                                        ; $716b: $9e
	ld   [$5d00], sp                                 ; $716c: $08 $00 $5d
	and  c                                           ; $716f: $a1
	dec  c                                           ; $7170: $0d
	add  [hl]                                        ; $7171: $86
	ld   a, h                                        ; $7172: $7c
	inc  b                                           ; $7173: $04
	ld   d, a                                        ; $7174: $57
	inc  b                                           ; $7175: $04
	ld   h, e                                        ; $7176: $63
	ld   a, l                                        ; $7177: $7d
	rst  $38                                         ; $7178: $ff
	rst  $38                                         ; $7179: $ff
	dec  c                                           ; $717a: $0d
	ld   d, b                                        ; $717b: $50
	adc  h                                           ; $717c: $8c
	sbc  b                                           ; $717d: $98
	sub  [hl]                                        ; $717e: $96
	ld   e, l                                        ; $717f: $5d
	ld   a, b                                        ; $7180: $78
	ld   d, d                                        ; $7181: $52
	ld   a, b                                        ; $7182: $78
	sbc  a                                           ; $7183: $9f
	dec  c                                           ; $7184: $0d
	nop                                              ; $7185: $00
	ld   a, [bc]                                     ; $7186: $0a
	ld   bc, $7190                                   ; $7187: $01 $90 $71
	halt                                             ; $718a: $76
	ld   [bc], a                                     ; $718b: $02
	ld   a, [de]                                     ; $718c: $1a
	inc  bc                                          ; $718d: $03
	ld   l, e                                        ; $718e: $6b
	ld   a, h                                        ; $718f: $7c

jr_05d_7190:
	ld   [bc], a                                     ; $7190: $02
	and  c                                           ; $7191: $a1
	inc  bc                                          ; $7192: $03
	and  b                                           ; $7193: $a0
	ld   l, a                                        ; $7194: $6f
	and  b                                           ; $7195: $a0
	dec  c                                           ; $7196: $0d
	ld   [bc], a                                     ; $7197: $02
	ld   h, l                                        ; $7198: $65
	ld   d, [hl]                                     ; $7199: $56
	ld   [hl], h                                     ; $719a: $74
	ld   [bc], a                                     ; $719b: $02
	ld   a, a                                        ; $719c: $7f
	inc  b                                           ; $719d: $04
	dec  de                                          ; $719e: $1b
	ld   h, l                                        ; $719f: $65
	ld   l, l                                        ; $71a0: $6d
	adc  c                                           ; $71a1: $89
	ld   d, h                                        ; $71a2: $54
	ld   e, d                                        ; $71a3: $5a
	ld   d, d                                        ; $71a4: $52
	ld   d, d                                        ; $71a5: $52
	halt                                             ; $71a6: $76
	dec  c                                           ; $71a7: $0d
	dec  b                                           ; $71a8: $05
	pop  de                                          ; $71a9: $d1
	ld   d, h                                        ; $71aa: $54
	ld   l, h                                        ; $71ab: $6c
	sbc  a                                           ; $71ac: $9f
	dec  c                                           ; $71ad: $0d
	nop                                              ; $71ae: $00
	ld   a, [bc]                                     ; $71af: $0a
	ld   b, $1c                                      ; $71b0: $06 $1c
	ld   a, [bc]                                     ; $71b2: $0a
	ld   bc, $f5ac                                   ; $71b3: $01 $ac $f5
	bit  7, h                                        ; $71b6: $cb $7c
	sbc  [hl]                                        ; $71b8: $9e
	ld   [$5d00], sp                                 ; $71b9: $08 $00 $5d
	and  c                                           ; $71bc: $a1
	dec  c                                           ; $71bd: $0d
	add  [hl]                                        ; $71be: $86
	ld   a, h                                        ; $71bf: $7c
	inc  b                                           ; $71c0: $04
	ld   d, a                                        ; $71c1: $57
	inc  b                                           ; $71c2: $04
	ld   h, e                                        ; $71c3: $63
	ld   a, l                                        ; $71c4: $7d
	sbc  [hl]                                        ; $71c5: $9e
	ld   e, c                                        ; $71c6: $59
	ld   a, b                                        ; $71c7: $78
	sbc  b                                           ; $71c8: $98
	ld   d, d                                        ; $71c9: $52
	ld   d, d                                        ; $71ca: $52
	dec  c                                           ; $71cb: $0d
	halt                                             ; $71cc: $76
	dec  b                                           ; $71cd: $05
	pop  de                                          ; $71ce: $d1
	ld   d, h                                        ; $71cf: $54
	ld   l, h                                        ; $71d0: $6c
	sbc  a                                           ; $71d1: $9f
	dec  c                                           ; $71d2: $0d
	nop                                              ; $71d3: $00
	ld   a, [bc]                                     ; $71d4: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $71d5: $01 $02 $ca
	sub  b                                           ; $71d8: $90
	ld   l, e                                        ; $71d9: $6b
	sbc  d                                           ; $71da: $9a
	ld   a, c                                        ; $71db: $79
	ld   [bc], a                                     ; $71dc: $02
	add  hl, bc                                      ; $71dd: $09
	ld   d, [hl]                                     ; $71de: $56
	sub  a                                           ; $71df: $97
	sbc  d                                           ; $71e0: $9a
	sbc  c                                           ; $71e1: $99
	sub  [hl]                                        ; $71e2: $96
	ld   d, h                                        ; $71e3: $54
	ld   a, c                                        ; $71e4: $79
	dec  c                                           ; $71e5: $0d
	ld   e, d                                        ; $71e6: $5a
	and  c                                           ; $71e7: $a1
	ld   a, [hl]                                     ; $71e8: $7e
	sbc  c                                           ; $71e9: $99
	and  c                                           ; $71ea: $a1
	ld   l, [hl]                                     ; $71eb: $6e
	ld   l, h                                        ; $71ec: $6c
	sbc  a                                           ; $71ed: $9f
	dec  c                                           ; $71ee: $0d
	nop                                              ; $71ef: $00
	ld   a, [bc]                                     ; $71f0: $0a
	ld   b, $1c                                      ; $71f1: $06 $1c
	ld   a, [bc]                                     ; $71f3: $0a
	rrca                                             ; $71f4: $0f
	nop                                              ; $71f5: $00
	ld   bc, $6b01                                   ; $71f6: $01 $01 $6b
	ld   d, h                                        ; $71f9: $54
	ld   [hl], l                                     ; $71fa: $75
	ld   h, a                                        ; $71fb: $67
	ld   e, c                                        ; $71fc: $59
	rst  $38                                         ; $71fd: $ff
	rst  $38                                         ; $71fe: $ff
	dec  c                                           ; $71ff: $0d
	ld   d, b                                        ; $7200: $50
	sbc  b                                           ; $7201: $98
	ld   e, d                                        ; $7202: $5a
	halt                                             ; $7203: $76
	ld   d, h                                        ; $7204: $54
	ld   h, d                                        ; $7205: $62
	ld   h, h                                        ; $7206: $64
	ld   d, d                                        ; $7207: $52
	adc  h                                           ; $7208: $8c
	ld   h, l                                        ; $7209: $65
	ld   l, l                                        ; $720a: $6d
	sbc  a                                           ; $720b: $9f
	dec  c                                           ; $720c: $0d
	nop                                              ; $720d: $00
	ld   a, [bc]                                     ; $720e: $0a
	rrca                                             ; $720f: $0f
	add  hl, bc                                      ; $7210: $09
	nop                                              ; $7211: $00
	ld   bc, $a154                                   ; $7212: $01 $54 $a1
	sbc  a                                           ; $7215: $9f
	dec  c                                           ; $7216: $0d
	ld   e, d                                        ; $7217: $5a
	and  c                                           ; $7218: $a1
	ld   a, [hl]                                     ; $7219: $7e
	sbc  d                                           ; $721a: $9a
	sub  [hl]                                        ; $721b: $96
	sbc  a                                           ; $721c: $9f
	dec  c                                           ; $721d: $0d
	nop                                              ; $721e: $00
	ld   a, [bc]                                     ; $721f: $0a
	nop                                              ; $7220: $00
	rrca                                             ; $7221: $0f
	nop                                              ; $7222: $00
	ld   bc, $5001                                   ; $7223: $01 $01 $50
	ld   a, h                                        ; $7226: $7c
	sbc  [hl]                                        ; $7227: $9e
	inc  bc                                          ; $7228: $03
	ld   l, l                                        ; $7229: $6d
	dec  b                                           ; $722a: $05
	add  hl, de                                      ; $722b: $19
	ld   a, h                                        ; $722c: $7c
	and  e                                           ; $722d: $a3
	jp   z, $a5d1                                    ; $722e: $ca $d1 $a5

	cp   d                                           ; $7231: $ba
	and  b                                           ; $7232: $a0
	dec  c                                           ; $7233: $0d
	ld   e, b                                        ; $7234: $58
	ld   [bc], a                                     ; $7235: $02
	add  b                                           ; $7236: $80
	ld   d, d                                        ; $7237: $52
	ld   h, l                                        ; $7238: $65
	ld   l, l                                        ; $7239: $6d
	ld   d, d                                        ; $723a: $52
	and  c                                           ; $723b: $a1
	ld   [hl], l                                     ; $723c: $75
	ld   h, a                                        ; $723d: $67
	ld   e, a                                        ; $723e: $5f
	ld   [hl], a                                     ; $723f: $77
	sbc  a                                           ; $7240: $9f
	dec  c                                           ; $7241: $0d
	nop                                              ; $7242: $00
	ld   a, [bc]                                     ; $7243: $0a
	rrca                                             ; $7244: $0f
	add  hl, bc                                      ; $7245: $09
	nop                                              ; $7246: $00
	ld   bc, $8e83                                   ; $7247: $01 $83 $8e
	sbc  [hl]                                        ; $724a: $9e
	ld   l, e                                        ; $724b: $6b
	ld   d, h                                        ; $724c: $54
	ld   l, [hl]                                     ; $724d: $6e
	ld   a, b                                        ; $724e: $78
	rst  $38                                         ; $724f: $ff
	rst  $38                                         ; $7250: $ff
	dec  c                                           ; $7251: $0d
	nop                                              ; $7252: $00
	ld   a, [bc]                                     ; $7253: $0a
	rlca                                             ; $7254: $07
	ld   b, d                                        ; $7255: $42
	dec  bc                                          ; $7256: $0b
	inc  bc                                          ; $7257: $03
	inc  hl                                          ; $7258: $23
	ld   bc, $2368                                   ; $7259: $01 $68 $23
	inc  bc                                          ; $725c: $03
	inc  h                                           ; $725d: $24
	ld   bc, $2368                                   ; $725e: $01 $68 $23
	inc  e                                           ; $7261: $1c
	inc  bc                                          ; $7262: $03
	dec  h                                           ; $7263: $25
	ld   bc, $2368                                   ; $7264: $01 $68 $23
	inc  e                                           ; $7267: $1c
	inc  bc                                          ; $7268: $03
	ld   [hl+], a                                    ; $7269: $22
	ld   bc, $2368                                   ; $726a: $01 $68 $23
	inc  e                                           ; $726d: $1c
	inc  bc                                          ; $726e: $03
	ld   hl, $6801                                   ; $726f: $21 $01 $68
	inc  hl                                          ; $7272: $23
	inc  e                                           ; $7273: $1c
	nop                                              ; $7274: $00
	rlca                                             ; $7275: $07
	or   [hl]                                        ; $7276: $b6
	dec  bc                                          ; $7277: $0b
	inc  bc                                          ; $7278: $03
	inc  hl                                          ; $7279: $23
	ld   bc, $257d                                   ; $727a: $01 $7d $25
	inc  bc                                          ; $727d: $03
	inc  h                                           ; $727e: $24
	ld   bc, $257d                                   ; $727f: $01 $7d $25
	inc  e                                           ; $7282: $1c
	inc  bc                                          ; $7283: $03
	dec  h                                           ; $7284: $25
	ld   bc, $257d                                   ; $7285: $01 $7d $25
	inc  e                                           ; $7288: $1c
	inc  bc                                          ; $7289: $03
	ld   [hl+], a                                    ; $728a: $22
	ld   bc, $257d                                   ; $728b: $01 $7d $25
	inc  e                                           ; $728e: $1c
	inc  bc                                          ; $728f: $03
	ld   hl, $7d01                                   ; $7290: $21 $01 $7d
	dec  h                                           ; $7293: $25
	inc  e                                           ; $7294: $1c
	nop                                              ; $7295: $00
	rlca                                             ; $7296: $07
	ld   b, b                                        ; $7297: $40
	inc  c                                           ; $7298: $0c
	inc  bc                                          ; $7299: $03
	inc  hl                                          ; $729a: $23
	ld   bc, $236e                                   ; $729b: $01 $6e $23
	inc  bc                                          ; $729e: $03
	inc  h                                           ; $729f: $24
	ld   bc, $236e                                   ; $72a0: $01 $6e $23
	inc  e                                           ; $72a3: $1c
	inc  bc                                          ; $72a4: $03
	dec  h                                           ; $72a5: $25
	ld   bc, $236e                                   ; $72a6: $01 $6e $23
	inc  e                                           ; $72a9: $1c
	nop                                              ; $72aa: $00
	rlca                                             ; $72ab: $07
	ldh  a, [$0c]                                    ; $72ac: $f0 $0c
	inc  bc                                          ; $72ae: $03
	inc  h                                           ; $72af: $24
	inc  bc                                          ; $72b0: $03
	inc  hl                                          ; $72b1: $23
	inc  hl                                          ; $72b2: $23
	inc  bc                                          ; $72b3: $03
	inc  h                                           ; $72b4: $24
	inc  bc                                          ; $72b5: $03
	dec  h                                           ; $72b6: $25
	inc  hl                                          ; $72b7: $23
	inc  e                                           ; $72b8: $1c
	inc  bc                                          ; $72b9: $03
	inc  h                                           ; $72ba: $24
	inc  bc                                          ; $72bb: $03
	ld   [hl+], a                                    ; $72bc: $22
	inc  hl                                          ; $72bd: $23
	inc  e                                           ; $72be: $1c
	inc  bc                                          ; $72bf: $03
	inc  h                                           ; $72c0: $24
	inc  bc                                          ; $72c1: $03
	ld   hl, $1c23                                   ; $72c2: $21 $23 $1c
	nop                                              ; $72c5: $00
	rlca                                             ; $72c6: $07
	adc  h                                           ; $72c7: $8c
	dec  c                                           ; $72c8: $0d
	inc  bc                                          ; $72c9: $03
	dec  h                                           ; $72ca: $25
	inc  bc                                          ; $72cb: $03
	inc  hl                                          ; $72cc: $23
	inc  hl                                          ; $72cd: $23
	inc  bc                                          ; $72ce: $03
	dec  h                                           ; $72cf: $25
	inc  bc                                          ; $72d0: $03
	inc  h                                           ; $72d1: $24
	inc  hl                                          ; $72d2: $23
	inc  e                                           ; $72d3: $1c
	inc  bc                                          ; $72d4: $03
	dec  h                                           ; $72d5: $25
	inc  bc                                          ; $72d6: $03
	ld   [hl+], a                                    ; $72d7: $22
	inc  hl                                          ; $72d8: $23
	inc  e                                           ; $72d9: $1c
	inc  bc                                          ; $72da: $03
	dec  h                                           ; $72db: $25
	inc  bc                                          ; $72dc: $03
	ld   hl, $1c23                                   ; $72dd: $21 $23 $1c
	nop                                              ; $72e0: $00
	rlca                                             ; $72e1: $07
	dec  l                                           ; $72e2: $2d
	ld   c, $03                                      ; $72e3: $0e $03
	ld   [hl+], a                                    ; $72e5: $22
	inc  bc                                          ; $72e6: $03
	inc  hl                                          ; $72e7: $23
	inc  hl                                          ; $72e8: $23
	inc  bc                                          ; $72e9: $03
	ld   [hl+], a                                    ; $72ea: $22
	inc  bc                                          ; $72eb: $03
	inc  h                                           ; $72ec: $24
	inc  hl                                          ; $72ed: $23
	inc  e                                           ; $72ee: $1c
	inc  bc                                          ; $72ef: $03
	ld   [hl+], a                                    ; $72f0: $22
	inc  bc                                          ; $72f1: $03
	dec  h                                           ; $72f2: $25
	inc  hl                                          ; $72f3: $23
	inc  e                                           ; $72f4: $1c
	inc  bc                                          ; $72f5: $03
	ld   [hl+], a                                    ; $72f6: $22
	inc  bc                                          ; $72f7: $03
	ld   hl, $1c23                                   ; $72f8: $21 $23 $1c
	nop                                              ; $72fb: $00
	rlca                                             ; $72fc: $07
	ld   h, a                                        ; $72fd: $67
	rrca                                             ; $72fe: $0f
	inc  bc                                          ; $72ff: $03
	inc  hl                                          ; $7300: $23
	inc  bc                                          ; $7301: $03
	ld   [hl+], a                                    ; $7302: $22
	inc  hl                                          ; $7303: $23
	inc  bc                                          ; $7304: $03
	inc  hl                                          ; $7305: $23
	inc  bc                                          ; $7306: $03
	inc  h                                           ; $7307: $24
	inc  hl                                          ; $7308: $23
	inc  e                                           ; $7309: $1c
	inc  bc                                          ; $730a: $03
	inc  hl                                          ; $730b: $23
	inc  bc                                          ; $730c: $03
	ld   [hl+], a                                    ; $730d: $22
	inc  hl                                          ; $730e: $23
	inc  e                                           ; $730f: $1c
	inc  bc                                          ; $7310: $03
	inc  hl                                          ; $7311: $23
	inc  bc                                          ; $7312: $03
	ld   hl, $1c23                                   ; $7313: $21 $23 $1c
	nop                                              ; $7316: $00
	ld   b, $c3                                      ; $7317: $06 $c3
	ld   c, $0f                                      ; $7319: $0e $0f
	add  hl, bc                                      ; $731b: $09
	nop                                              ; $731c: $00
	ld   bc, wGameResultsReturnSubstate                                   ; $731d: $01 $02 $ca
	ld   a, h                                        ; $7320: $7c
	inc  b                                           ; $7321: $04
	ld   a, d                                        ; $7322: $7a
	ld   [bc], a                                     ; $7323: $02
	ld   a, e                                        ; $7324: $7b
	sbc  [hl]                                        ; $7325: $9e
	and  e                                           ; $7326: $a3
	jp   z, $a5d1                                    ; $7327: $ca $d1 $a5

	cp   d                                           ; $732a: $ba
	ld   d, d                                        ; $732b: $52
	ld   l, d                                        ; $732c: $6a
	and  c                                           ; $732d: $a1
	ld   a, c                                        ; $732e: $79
	dec  c                                           ; $732f: $0d
	sub  b                                           ; $7330: $90
	ld   [hl], c                                     ; $7331: $71
	halt                                             ; $7332: $76
	ld   l, a                                        ; $7333: $6f
	sub  c                                           ; $7334: $91
	and  c                                           ; $7335: $a1
	halt                                             ; $7336: $76
	inc  bc                                          ; $7337: $03
	ld   l, l                                        ; $7338: $6d
	dec  b                                           ; $7339: $05
	add  hl, de                                      ; $733a: $19
	ld   a, c                                        ; $733b: $79
	dec  c                                           ; $733c: $0d
	inc  bc                                          ; $733d: $03
	add  b                                           ; $733e: $80
	ld   l, l                                        ; $733f: $6d
	adc  c                                           ; $7340: $89
	ld   d, h                                        ; $7341: $54
	ld   e, d                                        ; $7342: $5a
	ld   d, d                                        ; $7343: $52
	ld   d, d                                        ; $7344: $52
	ld   a, b                                        ; $7345: $78
	sbc  a                                           ; $7346: $9f
	dec  c                                           ; $7347: $0d
	nop                                              ; $7348: $00
	ld   a, [bc]                                     ; $7349: $0a
	ld   bc, $d303                                   ; $734a: $01 $03 $d3
	dec  b                                           ; $734d: $05
	ld   a, [bc]                                     ; $734e: $0a
	sub  b                                           ; $734f: $90
	ld   l, c                                        ; $7350: $69
	ld   l, b                                        ; $7351: $68
	ld   a, c                                        ; $7352: $79
	ld   [bc], a                                     ; $7353: $02
	reti                                             ; $7354: $d9


	ld   [bc], a                                     ; $7355: $02
	ld   h, e                                        ; $7356: $63
	ld   l, [hl]                                     ; $7357: $6e
	ld   e, a                                        ; $7358: $5f
	dec  c                                           ; $7359: $0d
	sub  b                                           ; $735a: $90
	halt                                             ; $735b: $76
	adc  a                                           ; $735c: $8f
	sbc  c                                           ; $735d: $99
	sub  [hl]                                        ; $735e: $96
	ld   d, h                                        ; $735f: $54
	ld   [hl], l                                     ; $7360: $75
	ld   a, l                                        ; $7361: $7d
	pop  bc                                          ; $7362: $c1
	db   $e3                                         ; $7363: $e3
	ld   l, [hl]                                     ; $7364: $6e
	ld   l, h                                        ; $7365: $6c
	sbc  a                                           ; $7366: $9f
	dec  c                                           ; $7367: $0d
	nop                                              ; $7368: $00
	ld   a, [bc]                                     ; $7369: $0a
	rrca                                             ; $736a: $0f
	nop                                              ; $736b: $00
	ld   bc, $7d01                                   ; $736c: $01 $01 $7d
	sbc  [hl]                                        ; $736f: $9e
	ld   a, l                                        ; $7370: $7d
	ld   d, d                                        ; $7371: $52
	sbc  a                                           ; $7372: $9f
	dec  c                                           ; $7373: $0d
	sbc  l                                           ; $7374: $9d
	ld   e, c                                        ; $7375: $59
	sbc  b                                           ; $7376: $98
	adc  h                                           ; $7377: $8c
	ld   h, l                                        ; $7378: $65
	ld   l, l                                        ; $7379: $6d
	ld   a, [$0dfa]                                  ; $737a: $fa $fa $0d
	ld   d, b                                        ; $737d: $50
	sbc  b                                           ; $737e: $98
	ld   e, d                                        ; $737f: $5a
	halt                                             ; $7380: $76
	ld   d, h                                        ; $7381: $54
	ld   h, d                                        ; $7382: $62
	ld   h, h                                        ; $7383: $64
	ld   d, d                                        ; $7384: $52
	adc  h                                           ; $7385: $8c
	ld   h, a                                        ; $7386: $67
	ld   a, [$000d]                                  ; $7387: $fa $0d $00
	ld   a, [bc]                                     ; $738a: $0a
	ld   b, $08                                      ; $738b: $06 $08
	db   $10                                         ; $738d: $10
	inc  e                                           ; $738e: $1c
	add  hl, bc                                      ; $738f: $09
	ld   bc, $0101                                   ; $7390: $01 $01 $01
	ld   [$5d00], sp                                 ; $7393: $08 $00 $5d
	and  c                                           ; $7396: $a1
	ld   a, l                                        ; $7397: $7d
	dec  c                                           ; $7398: $0d
	ld   [bc], a                                     ; $7399: $02
	and  l                                           ; $739a: $a5
	ld   a, h                                        ; $739b: $7c
	halt                                             ; $739c: $76
	ld   h, c                                        ; $739d: $61
	sbc  e                                           ; $739e: $9b
	ld   [bc], a                                     ; $739f: $02
	sbc  l                                           ; $73a0: $9d
	ld   d, h                                        ; $73a1: $54
	ld   h, c                                        ; $73a2: $61
	halt                                             ; $73a3: $76
	ld   a, b                                        ; $73a4: $78
	ld   h, l                                        ; $73a5: $65
	ld   l, [hl]                                     ; $73a6: $6e
	ld   a, b                                        ; $73a7: $78
	sbc  a                                           ; $73a8: $9f
	dec  c                                           ; $73a9: $0d
	nop                                              ; $73aa: $00
	ld   a, [bc]                                     ; $73ab: $0a
	ld   bc, $7c77                                   ; $73ac: $01 $77 $7c
	inc  bc                                          ; $73af: $03
	ld   l, l                                        ; $73b0: $6d
	dec  b                                           ; $73b1: $05
	add  hl, de                                      ; $73b2: $19
	sub  b                                           ; $73b3: $90
	adc  h                                           ; $73b4: $8c
	and  c                                           ; $73b5: $a1
	add  a                                           ; $73b6: $87
	and  c                                           ; $73b7: $a1
	ld   a, b                                        ; $73b8: $78
	ld   e, l                                        ; $73b9: $5d
	dec  c                                           ; $73ba: $0d
	ld   e, d                                        ; $73bb: $5a
	and  c                                           ; $73bc: $a1
	ld   a, [hl]                                     ; $73bd: $7e
	ld   [hl], c                                     ; $73be: $71
	ld   [hl], h                                     ; $73bf: $74
	sub  d                                           ; $73c0: $92
	ld   [hl], c                                     ; $73c1: $71
	ld   [hl], h                                     ; $73c2: $74
	ld   d, d                                        ; $73c3: $52
	sbc  c                                           ; $73c4: $99
	dec  c                                           ; $73c5: $0d
	sub  [hl]                                        ; $73c6: $96
	ld   d, h                                        ; $73c7: $54
	ld   l, [hl]                                     ; $73c8: $6e
	ld   h, l                                        ; $73c9: $65
	rst  $38                                         ; $73ca: $ff
	rst  $38                                         ; $73cb: $ff
	dec  c                                           ; $73cc: $0d
	nop                                              ; $73cd: $00
	ld   a, [bc]                                     ; $73ce: $0a
	ld   bc, $9a61                                   ; $73cf: $01 $61 $9a
	ld   e, c                                        ; $73d2: $59
	sub  a                                           ; $73d3: $97
	sub  b                                           ; $73d4: $90
	sbc  [hl]                                        ; $73d5: $9e
	ld   h, c                                        ; $73d6: $61
	ld   a, h                                        ; $73d7: $7c
	inc  bc                                          ; $73d8: $03
	cp   $03                                         ; $73d9: $fe $03
	add  [hl]                                        ; $73db: $86
	ld   [hl], l                                     ; $73dc: $75
	dec  c                                           ; $73dd: $0d
	ld   d, d                                        ; $73de: $52
	ld   e, a                                        ; $73df: $5f
	ld   a, [hl]                                     ; $73e0: $7e
	sbc  [hl]                                        ; $73e1: $9e
	ld   [bc], a                                     ; $73e2: $02
	sbc  l                                           ; $73e3: $9d
	ld   d, h                                        ; $73e4: $54
	ld   h, c                                        ; $73e5: $61
	halt                                             ; $73e6: $76
	ld   a, b                                        ; $73e7: $78
	ld   h, l                                        ; $73e8: $65
	ld   l, [hl]                                     ; $73e9: $6e
	sbc  a                                           ; $73ea: $9f
	dec  c                                           ; $73eb: $0d
	nop                                              ; $73ec: $00
	ld   a, [bc]                                     ; $73ed: $0a
	rrca                                             ; $73ee: $0f
	nop                                              ; $73ef: $00
	ld   bc, $7d01                                   ; $73f0: $01 $01 $7d
	ld   d, d                                        ; $73f3: $52
	ld   a, [$500d]                                  ; $73f4: $fa $0d $50
	sbc  b                                           ; $73f7: $98
	ld   e, d                                        ; $73f8: $5a
	halt                                             ; $73f9: $76
	ld   d, h                                        ; $73fa: $54
	ld   h, d                                        ; $73fb: $62
	ld   h, h                                        ; $73fc: $64
	ld   d, d                                        ; $73fd: $52
	adc  h                                           ; $73fe: $8c
	ld   h, a                                        ; $73ff: $67
	ld   a, [$0dfa]                                  ; $7400: $fa $fa $0d
	ld   [bc], a                                     ; $7403: $02
	and  l                                           ; $7404: $a5
	ld   [bc], a                                     ; $7405: $02
	xor  d                                           ; $7406: $aa
	sub  b                                           ; $7407: $90
	sbc  [hl]                                        ; $7408: $9e
	ld   e, d                                        ; $7409: $5a
	and  c                                           ; $740a: $a1
	ld   a, [hl]                                     ; $740b: $7e
	sbc  b                                           ; $740c: $98
	adc  h                                           ; $740d: $8c
	ld   h, a                                        ; $740e: $67
	ld   [hl], c                                     ; $740f: $71
	ld   a, [$0dfa]                                  ; $7410: $fa $fa $0d
	nop                                              ; $7413: $00
	ld   a, [bc]                                     ; $7414: $0a
	ld   b, $08                                      ; $7415: $06 $08
	db   $10                                         ; $7417: $10
	rrca                                             ; $7418: $0f
	add  hl, bc                                      ; $7419: $09
	nop                                              ; $741a: $00
	ld   bc, $0008                                   ; $741b: $01 $08 $00
	ld   e, l                                        ; $741e: $5d
	and  c                                           ; $741f: $a1
	ld   a, l                                        ; $7420: $7d
	dec  c                                           ; $7421: $0d
	ld   [bc], a                                     ; $7422: $02
	jr   nc, jr_05d_7429                             ; $7423: $30 $04

	dec  de                                          ; $7425: $1b
	inc  b                                           ; $7426: $04
	ld   b, e                                        ; $7427: $43
	dec  b                                           ; $7428: $05

jr_05d_7429:
	ld   a, [bc]                                     ; $7429: $0a
	ld   a, h                                        ; $742a: $7c
	inc  b                                           ; $742b: $04
	ld   d, a                                        ; $742c: $57
	dec  b                                           ; $742d: $05
	add  hl, hl                                      ; $742e: $29
	ld   e, d                                        ; $742f: $5a
	inc  bc                                          ; $7430: $03
	ld   d, a                                        ; $7431: $57
	inc  b                                           ; $7432: $04
	dec  c                                           ; $7433: $0d
	inc  b                                           ; $7434: $04
	jr   nz, jr_05d_74b0                             ; $7435: $20 $79

	dec  c                                           ; $7437: $0d
	inc  bc                                          ; $7438: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7439: $cf
	ld   d, d                                        ; $743a: $52
	sub  [hl]                                        ; $743b: $96
	ld   d, h                                        ; $743c: $54
	ld   l, [hl]                                     ; $743d: $6e
	ld   a, b                                        ; $743e: $78
	sbc  a                                           ; $743f: $9f
	dec  c                                           ; $7440: $0d
	nop                                              ; $7441: $00
	ld   a, [bc]                                     ; $7442: $0a
	ld   bc, $5d63                                   ; $7443: $01 $63 $5d
	sub  a                                           ; $7446: $97
	ld   e, l                                        ; $7447: $5d
	and  c                                           ; $7448: $a1
	ld   a, h                                        ; $7449: $7c
	inc  bc                                          ; $744a: $03
	ld   l, l                                        ; $744b: $6d
	dec  b                                           ; $744c: $05
	add  hl, de                                      ; $744d: $19
	and  b                                           ; $744e: $a0
	dec  c                                           ; $744f: $0d
	ld   l, a                                        ; $7450: $6f
	sub  l                                           ; $7451: $95

Jump_05d_7452:
	ld   [hl], c                                     ; $7452: $71
	halt                                             ; $7453: $76
	inc  b                                           ; $7454: $04
	rrca                                             ; $7455: $0f
	adc  a                                           ; $7456: $8f
	ld   a, c                                        ; $7457: $79
	halt                                             ; $7458: $76
	ld   [hl], c                                     ; $7459: $71
	ld   [hl], h                                     ; $745a: $74
	ld   e, b                                        ; $745b: $58
	ld   e, l                                        ; $745c: $5d
	halt                                             ; $745d: $76
	dec  c                                           ; $745e: $0d
	ld   d, d                                        ; $745f: $52
	ld   d, d                                        ; $7460: $52
	and  c                                           ; $7461: $a1
	ld   h, [hl]                                     ; $7462: $66
	sub  c                                           ; $7463: $91
	ld   a, b                                        ; $7464: $78

Jump_05d_7465:
	ld   d, d                                        ; $7465: $52
	ld   e, c                                        ; $7466: $59
	ld   a, b                                        ; $7467: $78
	sbc  a                                           ; $7468: $9f
	dec  c                                           ; $7469: $0d
	nop                                              ; $746a: $00
	ld   a, [bc]                                     ; $746b: $0a
	ld   bc, $5d63                                   ; $746c: $01 $63 $5d
	sub  a                                           ; $746f: $97
	ld   e, l                                        ; $7470: $5d
	and  c                                           ; $7471: $a1
	ld   a, h                                        ; $7472: $7c
	inc  bc                                          ; $7473: $03
	ld   l, l                                        ; $7474: $6d
	dec  b                                           ; $7475: $05
	add  hl, de                                      ; $7476: $19
	ld   a, l                                        ; $7477: $7d
	sbc  [hl]                                        ; $7478: $9e
	dec  c                                           ; $7479: $0d
	inc  bc                                          ; $747a: $03
	ld   [hl], l                                     ; $747b: $75
	di                                               ; $747c: $f3
	ld   [bc], a                                     ; $747d: $02
	adc  h                                           ; $747e: $8c
	di                                               ; $747f: $f3
	inc  b                                           ; $7480: $04
	dec  c                                           ; $7481: $0d
	db   $10                                         ; $7482: $10
	halt                                             ; $7483: $76
	sbc  [hl]                                        ; $7484: $9e
	inc  bc                                          ; $7485: $03
	ld   d, a                                        ; $7486: $57
	ld   [hl], h                                     ; $7487: $74
	ld   a, h                                        ; $7488: $7c
	inc  b                                           ; $7489: $04
	rst  JumpTable                                         ; $748a: $df
	inc  bc                                          ; $748b: $03
	and  [hl]                                        ; $748c: $a6
	ld   e, d                                        ; $748d: $5a
	dec  c                                           ; $748e: $0d
	ld   [bc], a                                     ; $748f: $02
	call nc, Call_05d_5102                           ; $7490: $d4 $02 $51
	ld   h, e                                        ; $7493: $63
	sbc  d                                           ; $7494: $9a
	sbc  c                                           ; $7495: $99
	ld   e, c                                        ; $7496: $59
	sub  a                                           ; $7497: $97
	ld   a, e                                        ; $7498: $7b
	sbc  a                                           ; $7499: $9f
	dec  c                                           ; $749a: $0d
	nop                                              ; $749b: $00
	ld   a, [bc]                                     ; $749c: $0a
	rrca                                             ; $749d: $0f
	nop                                              ; $749e: $00
	ld   bc, $7801                                   ; $749f: $01 $01 $78
	sbc  c                                           ; $74a2: $99
	adc  c                                           ; $74a3: $89
	ld   [hl], a                                     ; $74a4: $77
	rst  $38                                         ; $74a5: $ff
	rst  $38                                         ; $74a6: $ff
	dec  c                                           ; $74a7: $0d
	sbc  l                                           ; $74a8: $9d
	ld   e, c                                        ; $74a9: $59
	sbc  b                                           ; $74aa: $98
	adc  h                                           ; $74ab: $8c
	ld   h, l                                        ; $74ac: $65
	ld   l, l                                        ; $74ad: $6d
	sbc  [hl]                                        ; $74ae: $9e
	and  e                                           ; $74af: $a3

jr_05d_74b0:
	jp   z, $a5d1                                    ; $74b0: $ca $d1 $a5

	cp   d                                           ; $74b3: $ba
	sbc  [hl]                                        ; $74b4: $9e
	dec  c                                           ; $74b5: $0d
	ld   d, b                                        ; $74b6: $50
	sbc  b                                           ; $74b7: $98
	ld   e, d                                        ; $74b8: $5a
	halt                                             ; $74b9: $76
	ld   d, h                                        ; $74ba: $54
	ld   h, d                                        ; $74bb: $62
	ld   h, h                                        ; $74bc: $64
	ld   d, d                                        ; $74bd: $52
	adc  h                                           ; $74be: $8c
	ld   h, l                                        ; $74bf: $65
	ld   l, l                                        ; $74c0: $6d
	sbc  a                                           ; $74c1: $9f
	dec  c                                           ; $74c2: $0d
	nop                                              ; $74c3: $00
	ld   a, [bc]                                     ; $74c4: $0a
	ld   b, $08                                      ; $74c5: $06 $08
	db   $10                                         ; $74c7: $10
	rrca                                             ; $74c8: $0f
	add  hl, bc                                      ; $74c9: $09
	nop                                              ; $74ca: $00
	ld   bc, $0008                                   ; $74cb: $01 $08 $00
	ld   e, l                                        ; $74ce: $5d
	and  c                                           ; $74cf: $a1
	ld   a, l                                        ; $74d0: $7d
	dec  c                                           ; $74d1: $0d
	inc  bc                                          ; $74d2: $03
	and  [hl]                                        ; $74d3: $a6
	inc  bc                                          ; $74d4: $03
	ld   [hl], b                                     ; $74d5: $70
	ld   h, e                                        ; $74d6: $63
	ld   a, h                                        ; $74d7: $7c
	inc  b                                           ; $74d8: $04
	ld   d, a                                        ; $74d9: $57
	dec  b                                           ; $74da: $05
	add  hl, hl                                      ; $74db: $29
	ld   e, d                                        ; $74dc: $5a
	dec  c                                           ; $74dd: $0d
	inc  bc                                          ; $74de: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74df: $cf
	ld   d, d                                        ; $74e0: $52
	sub  [hl]                                        ; $74e1: $96
	ld   d, h                                        ; $74e2: $54
	ld   l, [hl]                                     ; $74e3: $6e
	ld   a, b                                        ; $74e4: $78
	sbc  a                                           ; $74e5: $9f
	dec  c                                           ; $74e6: $0d
	nop                                              ; $74e7: $00
	ld   a, [bc]                                     ; $74e8: $0a
	ld   bc, $8d67                                   ; $74e9: $01 $67 $8d
	sbc  d                                           ; $74ec: $9a
	ld   e, l                                        ; $74ed: $5d
	and  c                                           ; $74ee: $a1
	ld   a, h                                        ; $74ef: $7c
	inc  bc                                          ; $74f0: $03
	ld   l, l                                        ; $74f1: $6d
	dec  b                                           ; $74f2: $05
	add  hl, de                                      ; $74f3: $19
	and  b                                           ; $74f4: $a0
	dec  c                                           ; $74f5: $0d
	ld   l, a                                        ; $74f6: $6f
	sub  l                                           ; $74f7: $95
	ld   [hl], c                                     ; $74f8: $71
	halt                                             ; $74f9: $76
	inc  b                                           ; $74fa: $04
	rrca                                             ; $74fb: $0f
	adc  a                                           ; $74fc: $8f
	ld   a, c                                        ; $74fd: $79
	halt                                             ; $74fe: $76
	ld   [hl], c                                     ; $74ff: $71
	ld   [hl], h                                     ; $7500: $74
	ld   e, b                                        ; $7501: $58
	ld   e, l                                        ; $7502: $5d
	halt                                             ; $7503: $76
	dec  c                                           ; $7504: $0d
	ld   d, d                                        ; $7505: $52
	ld   d, d                                        ; $7506: $52
	and  c                                           ; $7507: $a1
	ld   h, [hl]                                     ; $7508: $66
	sub  c                                           ; $7509: $91
	ld   a, b                                        ; $750a: $78
	ld   d, d                                        ; $750b: $52
	ld   e, c                                        ; $750c: $59
	ld   a, b                                        ; $750d: $78
	sbc  a                                           ; $750e: $9f
	dec  c                                           ; $750f: $0d
	nop                                              ; $7510: $00
	ld   a, [bc]                                     ; $7511: $0a
	ld   bc, $8d67                                   ; $7512: $01 $67 $8d
	sbc  d                                           ; $7515: $9a
	ld   e, l                                        ; $7516: $5d
	and  c                                           ; $7517: $a1
	ld   a, h                                        ; $7518: $7c
	inc  bc                                          ; $7519: $03
	ld   l, l                                        ; $751a: $6d
	dec  b                                           ; $751b: $05
	add  hl, de                                      ; $751c: $19
	ld   a, l                                        ; $751d: $7d
	dec  c                                           ; $751e: $0d
	inc  bc                                          ; $751f: $03
	and  [hl]                                        ; $7520: $a6
	inc  bc                                          ; $7521: $03
	ld   [hl], b                                     ; $7522: $70
	ld   h, e                                        ; $7523: $63
	ld   a, h                                        ; $7524: $7c
	ld   [bc], a                                     ; $7525: $02
	call nc, Call_05d_5102                           ; $7526: $d4 $02 $51
	ld   a, c                                        ; $7529: $79
	ld   a, l                                        ; $752a: $7d
	dec  c                                           ; $752b: $0d
	ld   d, h                                        ; $752c: $54
	ld   [hl], c                                     ; $752d: $71
	ld   [hl], h                                     ; $752e: $74
	ld   [hl], d                                     ; $752f: $72
	ld   e, a                                        ; $7530: $5f
	ld   l, [hl]                                     ; $7531: $6e
	ld   e, c                                        ; $7532: $59
	sub  a                                           ; $7533: $97
	ld   a, e                                        ; $7534: $7b
	sbc  a                                           ; $7535: $9f
	dec  c                                           ; $7536: $0d
	nop                                              ; $7537: $00
	ld   a, [bc]                                     ; $7538: $0a
	rrca                                             ; $7539: $0f
	nop                                              ; $753a: $00
	ld   bc, $7801                                   ; $753b: $01 $01 $78
	sbc  c                                           ; $753e: $99
	adc  c                                           ; $753f: $89
	ld   [hl], a                                     ; $7540: $77
	rst  $38                                         ; $7541: $ff
	rst  $38                                         ; $7542: $ff
	dec  c                                           ; $7543: $0d
	sbc  l                                           ; $7544: $9d
	ld   e, c                                        ; $7545: $59
	sbc  b                                           ; $7546: $98
	adc  h                                           ; $7547: $8c
	ld   h, l                                        ; $7548: $65
	ld   l, l                                        ; $7549: $6d
	sbc  [hl]                                        ; $754a: $9e
	and  e                                           ; $754b: $a3
	jp   z, $a5d1                                    ; $754c: $ca $d1 $a5

	cp   d                                           ; $754f: $ba
	sbc  [hl]                                        ; $7550: $9e
	dec  c                                           ; $7551: $0d

Jump_05d_7552:
	ld   d, b                                        ; $7552: $50
	sbc  b                                           ; $7553: $98
	ld   e, d                                        ; $7554: $5a
	halt                                             ; $7555: $76
	ld   d, h                                        ; $7556: $54
	ld   h, d                                        ; $7557: $62
	ld   h, h                                        ; $7558: $64
	ld   d, d                                        ; $7559: $52
	adc  h                                           ; $755a: $8c
	ld   h, l                                        ; $755b: $65
	ld   l, l                                        ; $755c: $6d
	sbc  a                                           ; $755d: $9f
	dec  c                                           ; $755e: $0d
	nop                                              ; $755f: $00
	ld   a, [bc]                                     ; $7560: $0a
	ld   b, $08                                      ; $7561: $06 $08
	db   $10                                         ; $7563: $10
	rrca                                             ; $7564: $0f
	add  hl, bc                                      ; $7565: $09
	nop                                              ; $7566: $00
	ld   bc, $0008                                   ; $7567: $01 $08 $00
	ld   e, l                                        ; $756a: $5d
	and  c                                           ; $756b: $a1
	ld   a, l                                        ; $756c: $7d
	dec  c                                           ; $756d: $0d
	ld   b, $25                                      ; $756e: $06 $25
	inc  b                                           ; $7570: $04
	dec  bc                                          ; $7571: $0b
	ld   b, $80                                      ; $7572: $06 $80
	ld   a, h                                        ; $7574: $7c
	inc  b                                           ; $7575: $04
	ld   d, a                                        ; $7576: $57
	dec  b                                           ; $7577: $05
	add  hl, hl                                      ; $7578: $29
	ld   e, d                                        ; $7579: $5a
	dec  c                                           ; $757a: $0d
	inc  bc                                          ; $757b: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $757c: $cf
	ld   d, d                                        ; $757d: $52
	sub  [hl]                                        ; $757e: $96
	ld   d, h                                        ; $757f: $54
	ld   l, [hl]                                     ; $7580: $6e
	ld   a, b                                        ; $7581: $78
	sbc  a                                           ; $7582: $9f
	dec  c                                           ; $7583: $0d
	nop                                              ; $7584: $00
	ld   a, [bc]                                     ; $7585: $0a
	ld   bc, $ecdf                                   ; $7586: $01 $df $ec
	and  e                                           ; $7589: $a3
	ld   a, h                                        ; $758a: $7c
	inc  bc                                          ; $758b: $03
	ld   l, l                                        ; $758c: $6d
	dec  b                                           ; $758d: $05
	add  hl, de                                      ; $758e: $19
	and  b                                           ; $758f: $a0
	dec  c                                           ; $7590: $0d
	ld   l, a                                        ; $7591: $6f
	sub  l                                           ; $7592: $95
	ld   [hl], c                                     ; $7593: $71
	halt                                             ; $7594: $76
	inc  b                                           ; $7595: $04
	rrca                                             ; $7596: $0f
	adc  a                                           ; $7597: $8f
	ld   a, c                                        ; $7598: $79
	halt                                             ; $7599: $76
	ld   [hl], c                                     ; $759a: $71
	ld   [hl], h                                     ; $759b: $74
	ld   e, b                                        ; $759c: $58
	ld   e, l                                        ; $759d: $5d
	halt                                             ; $759e: $76
	dec  c                                           ; $759f: $0d
	ld   d, d                                        ; $75a0: $52
	ld   d, d                                        ; $75a1: $52
	and  c                                           ; $75a2: $a1
	ld   h, [hl]                                     ; $75a3: $66
	sub  c                                           ; $75a4: $91
	ld   a, b                                        ; $75a5: $78
	ld   d, d                                        ; $75a6: $52
	ld   e, c                                        ; $75a7: $59
	ld   a, b                                        ; $75a8: $78
	sbc  a                                           ; $75a9: $9f
	dec  c                                           ; $75aa: $0d
	nop                                              ; $75ab: $00
	ld   a, [bc]                                     ; $75ac: $0a
	ld   bc, $ecdf                                   ; $75ad: $01 $df $ec
	and  e                                           ; $75b0: $a3
	ld   a, h                                        ; $75b1: $7c
	inc  bc                                          ; $75b2: $03
	ld   l, l                                        ; $75b3: $6d
	dec  b                                           ; $75b4: $05
	add  hl, de                                      ; $75b5: $19
	ld   a, l                                        ; $75b6: $7d
	inc  bc                                          ; $75b7: $03
	daa                                              ; $75b8: $27
	ld   [bc], a                                     ; $75b9: $02
	sub  c                                           ; $75ba: $91
	ld   l, [hl]                                     ; $75bb: $6e
	ld   e, c                                        ; $75bc: $59
	sub  a                                           ; $75bd: $97
	sbc  [hl]                                        ; $75be: $9e
	dec  c                                           ; $75bf: $0d
	ld   e, c                                        ; $75c0: $59
	ld   a, b                                        ; $75c1: $78
	sbc  b                                           ; $75c2: $98
	ld   a, h                                        ; $75c3: $7c
	ld   b, $25                                      ; $75c4: $06 $25
	inc  b                                           ; $75c6: $04
	dec  bc                                          ; $75c7: $0b
	ld   b, $80                                      ; $75c8: $06 $80
	and  b                                           ; $75ca: $a0
	dec  c                                           ; $75cb: $0d
	inc  b                                           ; $75cc: $04
	rst  JumpTable                                         ; $75cd: $df
	ld   b, $85                                      ; $75ce: $06 $85
	ld   h, e                                        ; $75d0: $63
	sbc  d                                           ; $75d1: $9a
	sbc  c                                           ; $75d2: $99
	ld   e, c                                        ; $75d3: $59
	sub  a                                           ; $75d4: $97
	ld   a, e                                        ; $75d5: $7b
	sbc  a                                           ; $75d6: $9f
	dec  c                                           ; $75d7: $0d
	nop                                              ; $75d8: $00
	ld   a, [bc]                                     ; $75d9: $0a
	rrca                                             ; $75da: $0f
	nop                                              ; $75db: $00
	ld   bc, $7801                                   ; $75dc: $01 $01 $78
	sbc  c                                           ; $75df: $99
	adc  c                                           ; $75e0: $89
	ld   [hl], a                                     ; $75e1: $77
	rst  $38                                         ; $75e2: $ff
	rst  $38                                         ; $75e3: $ff
	dec  c                                           ; $75e4: $0d
	sbc  l                                           ; $75e5: $9d
	ld   e, c                                        ; $75e6: $59
	sbc  b                                           ; $75e7: $98
	adc  h                                           ; $75e8: $8c
	ld   h, l                                        ; $75e9: $65
	ld   l, l                                        ; $75ea: $6d
	sbc  [hl]                                        ; $75eb: $9e
	and  e                                           ; $75ec: $a3
	jp   z, $a5d1                                    ; $75ed: $ca $d1 $a5

	cp   d                                           ; $75f0: $ba
	sbc  [hl]                                        ; $75f1: $9e
	dec  c                                           ; $75f2: $0d
	ld   d, b                                        ; $75f3: $50
	sbc  b                                           ; $75f4: $98
	ld   e, d                                        ; $75f5: $5a
	halt                                             ; $75f6: $76
	ld   d, h                                        ; $75f7: $54
	ld   h, d                                        ; $75f8: $62
	ld   h, h                                        ; $75f9: $64
	ld   d, d                                        ; $75fa: $52
	adc  h                                           ; $75fb: $8c
	ld   h, l                                        ; $75fc: $65
	ld   l, l                                        ; $75fd: $6d
	sbc  a                                           ; $75fe: $9f
	dec  c                                           ; $75ff: $0d
	nop                                              ; $7600: $00
	ld   a, [bc]                                     ; $7601: $0a
	ld   b, $08                                      ; $7602: $06 $08
	db   $10                                         ; $7604: $10
	rrca                                             ; $7605: $0f
	add  hl, bc                                      ; $7606: $09
	nop                                              ; $7607: $00
	ld   bc, $0008                                   ; $7608: $01 $08 $00
	ld   e, l                                        ; $760b: $5d
	and  c                                           ; $760c: $a1
	ld   a, l                                        ; $760d: $7d
	dec  c                                           ; $760e: $0d
	dec  b                                           ; $760f: $05
	add  hl, bc                                      ; $7610: $09
	dec  b                                           ; $7611: $05
	ld   a, [bc]                                     ; $7612: $0a
	ld   a, h                                        ; $7613: $7c
	inc  b                                           ; $7614: $04
	ld   d, a                                        ; $7615: $57
	dec  b                                           ; $7616: $05
	add  hl, hl                                      ; $7617: $29
	ld   e, d                                        ; $7618: $5a
	dec  c                                           ; $7619: $0d
	inc  bc                                          ; $761a: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $761b: $cf
	ld   d, d                                        ; $761c: $52
	sub  [hl]                                        ; $761d: $96
	ld   d, h                                        ; $761e: $54
	ld   l, [hl]                                     ; $761f: $6e
	ld   a, b                                        ; $7620: $78
	sbc  a                                           ; $7621: $9f
	dec  c                                           ; $7622: $0d
	nop                                              ; $7623: $00
	ld   a, [bc]                                     ; $7624: $0a
	ld   bc, $a5a3                                   ; $7625: $01 $a3 $a5
	db   $ec                                         ; $7628: $ec
	cp   d                                           ; $7629: $ba
	ld   a, h                                        ; $762a: $7c
	inc  bc                                          ; $762b: $03
	ld   l, l                                        ; $762c: $6d
	dec  b                                           ; $762d: $05
	add  hl, de                                      ; $762e: $19
	and  b                                           ; $762f: $a0
	dec  c                                           ; $7630: $0d
	ld   l, a                                        ; $7631: $6f
	sub  l                                           ; $7632: $95
	ld   [hl], c                                     ; $7633: $71
	halt                                             ; $7634: $76
	inc  b                                           ; $7635: $04
	rrca                                             ; $7636: $0f
	adc  a                                           ; $7637: $8f
	ld   a, c                                        ; $7638: $79
	halt                                             ; $7639: $76
	ld   [hl], c                                     ; $763a: $71
	ld   [hl], h                                     ; $763b: $74
	ld   e, b                                        ; $763c: $58
	ld   e, l                                        ; $763d: $5d
	halt                                             ; $763e: $76
	dec  c                                           ; $763f: $0d
	ld   d, d                                        ; $7640: $52
	ld   d, d                                        ; $7641: $52
	and  c                                           ; $7642: $a1
	ld   h, [hl]                                     ; $7643: $66
	sub  c                                           ; $7644: $91
	ld   a, b                                        ; $7645: $78
	ld   d, d                                        ; $7646: $52
	ld   e, c                                        ; $7647: $59
	ld   a, b                                        ; $7648: $78
	sbc  a                                           ; $7649: $9f
	dec  c                                           ; $764a: $0d
	nop                                              ; $764b: $00
	ld   a, [bc]                                     ; $764c: $0a
	ld   bc, $a5a3                                   ; $764d: $01 $a3 $a5
	db   $ec                                         ; $7650: $ec
	cp   d                                           ; $7651: $ba
	ld   a, h                                        ; $7652: $7c
	inc  bc                                          ; $7653: $03
	ld   l, l                                        ; $7654: $6d
	dec  b                                           ; $7655: $05
	add  hl, de                                      ; $7656: $19
	ld   a, l                                        ; $7657: $7d
	dec  c                                           ; $7658: $0d
	dec  b                                           ; $7659: $05
	add  hl, bc                                      ; $765a: $09
	dec  b                                           ; $765b: $05
	ld   a, [bc]                                     ; $765c: $0a
	and  e                                           ; $765d: $a3
	call nz, Call_05d_79d8                           ; $765e: $c4 $d8 $79
	ld   a, l                                        ; $7661: $7d
	dec  c                                           ; $7662: $0d
	ld   d, h                                        ; $7663: $54
	ld   [hl], c                                     ; $7664: $71
	ld   [hl], h                                     ; $7665: $74
	ld   [hl], d                                     ; $7666: $72
	ld   e, a                                        ; $7667: $5f
	ld   l, [hl]                                     ; $7668: $6e
	ld   e, c                                        ; $7669: $59
	sub  a                                           ; $766a: $97
	ld   a, e                                        ; $766b: $7b
	sbc  a                                           ; $766c: $9f
	dec  c                                           ; $766d: $0d
	nop                                              ; $766e: $00
	ld   a, [bc]                                     ; $766f: $0a
	rrca                                             ; $7670: $0f
	nop                                              ; $7671: $00
	ld   bc, $7801                                   ; $7672: $01 $01 $78
	sbc  c                                           ; $7675: $99
	adc  c                                           ; $7676: $89
	ld   [hl], a                                     ; $7677: $77
	rst  $38                                         ; $7678: $ff
	rst  $38                                         ; $7679: $ff
	dec  c                                           ; $767a: $0d
	sbc  l                                           ; $767b: $9d
	ld   e, c                                        ; $767c: $59
	sbc  b                                           ; $767d: $98
	adc  h                                           ; $767e: $8c
	ld   h, l                                        ; $767f: $65
	ld   l, l                                        ; $7680: $6d
	sbc  [hl]                                        ; $7681: $9e
	and  e                                           ; $7682: $a3
	jp   z, $a5d1                                    ; $7683: $ca $d1 $a5

	cp   d                                           ; $7686: $ba
	sbc  [hl]                                        ; $7687: $9e
	dec  c                                           ; $7688: $0d
	ld   d, b                                        ; $7689: $50
	sbc  b                                           ; $768a: $98
	ld   e, d                                        ; $768b: $5a
	halt                                             ; $768c: $76
	ld   d, h                                        ; $768d: $54
	ld   h, d                                        ; $768e: $62
	ld   h, h                                        ; $768f: $64
	ld   d, d                                        ; $7690: $52
	adc  h                                           ; $7691: $8c
	ld   h, l                                        ; $7692: $65
	ld   l, l                                        ; $7693: $6d
	sbc  a                                           ; $7694: $9f
	dec  c                                           ; $7695: $0d
	nop                                              ; $7696: $00
	ld   a, [bc]                                     ; $7697: $0a
	ld   b, $08                                      ; $7698: $06 $08
	db   $10                                         ; $769a: $10
	rrca                                             ; $769b: $0f
	add  hl, bc                                      ; $769c: $09
	nop                                              ; $769d: $00
	ld   bc, $0008                                   ; $769e: $01 $08 $00
	ld   e, l                                        ; $76a1: $5d
	and  c                                           ; $76a2: $a1
	ld   a, l                                        ; $76a3: $7d
	dec  c                                           ; $76a4: $0d
	sub  b                                           ; $76a5: $90
	ld   d, h                                        ; $76a6: $54
	inc  bc                                          ; $76a7: $03
	ld   l, h                                        ; $76a8: $6c
	ld   h, l                                        ; $76a9: $65
	ld   [bc], a                                     ; $76aa: $02
	add  h                                           ; $76ab: $84
	ld   [bc], a                                     ; $76ac: $02
	and  d                                           ; $76ad: $a2
	inc  b                                           ; $76ae: $04
	jr   nz, jr_05d_76b5                             ; $76af: $20 $04

	dec  hl                                          ; $76b1: $2b
	inc  bc                                          ; $76b2: $03
	dec  [hl]                                        ; $76b3: $35
	and  b                                           ; $76b4: $a0

jr_05d_76b5:
	dec  c                                           ; $76b5: $0d
	inc  b                                           ; $76b6: $04
	pop  de                                          ; $76b7: $d1
	ld   a, c                                        ; $76b8: $79
	ld   [hl], d                                     ; $76b9: $72
	ld   e, a                                        ; $76ba: $5f
	ld   l, l                                        ; $76bb: $6d
	adc  c                                           ; $76bc: $89
	ld   d, h                                        ; $76bd: $54
	ld   e, d                                        ; $76be: $5a
	ld   d, d                                        ; $76bf: $52
	ld   d, d                                        ; $76c0: $52
	ld   a, b                                        ; $76c1: $78
	sbc  a                                           ; $76c2: $9f
	dec  c                                           ; $76c3: $0d
	nop                                              ; $76c4: $00
	ld   a, [bc]                                     ; $76c5: $0a
	ld   bc, $cf02                                   ; $76c6: $01 $02 $cf
	dec  b                                           ; $76c9: $05
	ld   a, [de]                                     ; $76ca: $1a
	ld   a, h                                        ; $76cb: $7c
	inc  bc                                          ; $76cc: $03
	ld   l, l                                        ; $76cd: $6d
	dec  b                                           ; $76ce: $05
	add  hl, de                                      ; $76cf: $19
	and  b                                           ; $76d0: $a0
	dec  c                                           ; $76d1: $0d
	ld   l, a                                        ; $76d2: $6f
	sub  l                                           ; $76d3: $95
	ld   [hl], c                                     ; $76d4: $71
	halt                                             ; $76d5: $76
	inc  b                                           ; $76d6: $04
	rrca                                             ; $76d7: $0f
	adc  a                                           ; $76d8: $8f
	ld   a, c                                        ; $76d9: $79
	halt                                             ; $76da: $76
	ld   [hl], c                                     ; $76db: $71
	ld   [hl], h                                     ; $76dc: $74
	ld   e, b                                        ; $76dd: $58
	ld   e, l                                        ; $76de: $5d
	halt                                             ; $76df: $76
	dec  c                                           ; $76e0: $0d
	ld   d, d                                        ; $76e1: $52
	ld   d, d                                        ; $76e2: $52
	and  c                                           ; $76e3: $a1
	ld   h, [hl]                                     ; $76e4: $66
	sub  c                                           ; $76e5: $91
	ld   a, b                                        ; $76e6: $78
	ld   d, d                                        ; $76e7: $52
	ld   e, c                                        ; $76e8: $59
	ld   a, b                                        ; $76e9: $78
	sbc  a                                           ; $76ea: $9f
	dec  c                                           ; $76eb: $0d
	nop                                              ; $76ec: $00
	ld   a, [bc]                                     ; $76ed: $0a
	ld   bc, $cf02                                   ; $76ee: $01 $02 $cf
	dec  b                                           ; $76f1: $05
	ld   a, [de]                                     ; $76f2: $1a
	ld   a, h                                        ; $76f3: $7c
	ld   [bc], a                                     ; $76f4: $02
	ld   l, d                                        ; $76f5: $6a
	ld   b, $44                                      ; $76f6: $06 $44
	and  b                                           ; $76f8: $a0
	sbc  [hl]                                        ; $76f9: $9e
	ld   l, e                                        ; $76fa: $6b
	ld   a, [hl]                                     ; $76fb: $7e
	ld   [hl], l                                     ; $76fc: $75
	ld   [bc], a                                     ; $76fd: $02
	sub  l                                           ; $76fe: $95
	ld   [hl], h                                     ; $76ff: $74
	sbc  c                                           ; $7700: $99
	dec  c                                           ; $7701: $0d
	ld   l, [hl]                                     ; $7702: $6e
	ld   e, a                                        ; $7703: $5f
	ld   [hl], l                                     ; $7704: $75
	sub  b                                           ; $7705: $90
	inc  b                                           ; $7706: $04
	xor  [hl]                                        ; $7707: $ae
	ld   [bc], a                                     ; $7708: $02
	call nc, Call_05d_7879                           ; $7709: $d4 $79 $78
	sbc  c                                           ; $770c: $99
	ld   e, c                                        ; $770d: $59
	sub  a                                           ; $770e: $97
	ld   a, e                                        ; $770f: $7b
	sbc  a                                           ; $7710: $9f
	dec  c                                           ; $7711: $0d
	nop                                              ; $7712: $00
	ld   a, [bc]                                     ; $7713: $0a
	rrca                                             ; $7714: $0f
	nop                                              ; $7715: $00
	ld   bc, $7801                                   ; $7716: $01 $01 $78
	sbc  c                                           ; $7719: $99
	adc  c                                           ; $771a: $89
	ld   [hl], a                                     ; $771b: $77
	rst  $38                                         ; $771c: $ff
	rst  $38                                         ; $771d: $ff
	dec  c                                           ; $771e: $0d
	sbc  l                                           ; $771f: $9d
	ld   e, c                                        ; $7720: $59
	sbc  b                                           ; $7721: $98
	adc  h                                           ; $7722: $8c
	ld   h, l                                        ; $7723: $65
	ld   l, l                                        ; $7724: $6d
	sbc  [hl]                                        ; $7725: $9e
	and  e                                           ; $7726: $a3
	jp   z, $a5d1                                    ; $7727: $ca $d1 $a5

	cp   d                                           ; $772a: $ba
	sbc  [hl]                                        ; $772b: $9e
	dec  c                                           ; $772c: $0d
	ld   d, b                                        ; $772d: $50
	sbc  b                                           ; $772e: $98
	ld   e, d                                        ; $772f: $5a
	halt                                             ; $7730: $76
	ld   d, h                                        ; $7731: $54
	ld   h, d                                        ; $7732: $62
	ld   h, h                                        ; $7733: $64
	ld   d, d                                        ; $7734: $52
	adc  h                                           ; $7735: $8c
	ld   h, l                                        ; $7736: $65
	ld   l, l                                        ; $7737: $6d
	sbc  a                                           ; $7738: $9f
	dec  c                                           ; $7739: $0d
	nop                                              ; $773a: $00
	ld   a, [bc]                                     ; $773b: $0a
	ld   b, $08                                      ; $773c: $06 $08
	db   $10                                         ; $773e: $10
	rrca                                             ; $773f: $0f
	add  hl, bc                                      ; $7740: $09
	nop                                              ; $7741: $00
	ld   bc, $0008                                   ; $7742: $01 $08 $00
	ld   e, l                                        ; $7745: $5d
	and  c                                           ; $7746: $a1
	ld   a, l                                        ; $7747: $7d
	dec  c                                           ; $7748: $0d
	sub  b                                           ; $7749: $90
	ld   [hl], c                                     ; $774a: $71
	halt                                             ; $774b: $76
	ld   [bc], a                                     ; $774c: $02
	and  c                                           ; $774d: $a1
	ld   [bc], a                                     ; $774e: $02
	ld   a, e                                        ; $774f: $7b
	ld   d, d                                        ; $7750: $52
	and  b                                           ; $7751: $a0
	dec  c                                           ; $7752: $0d
	inc  b                                           ; $7753: $04
	pop  de                                          ; $7754: $d1
	ld   a, c                                        ; $7755: $79
	ld   [hl], d                                     ; $7756: $72
	ld   e, a                                        ; $7757: $5f
	ld   l, l                                        ; $7758: $6d
	adc  c                                           ; $7759: $89
	ld   d, h                                        ; $775a: $54
	ld   e, d                                        ; $775b: $5a
	ld   d, d                                        ; $775c: $52
	ld   d, d                                        ; $775d: $52
	ld   a, b                                        ; $775e: $78
	sbc  a                                           ; $775f: $9f
	dec  c                                           ; $7760: $0d
	nop                                              ; $7761: $00
	ld   a, [bc]                                     ; $7762: $0a
	ld   bc, $f5ac                                   ; $7763: $01 $ac $f5
	bit  7, h                                        ; $7766: $cb $7c
	inc  bc                                          ; $7768: $03
	ld   l, l                                        ; $7769: $6d
	dec  b                                           ; $776a: $05
	add  hl, de                                      ; $776b: $19
	and  b                                           ; $776c: $a0
	dec  c                                           ; $776d: $0d
	ld   l, a                                        ; $776e: $6f
	sub  l                                           ; $776f: $95
	ld   [hl], c                                     ; $7770: $71
	halt                                             ; $7771: $76
	inc  b                                           ; $7772: $04
	rrca                                             ; $7773: $0f
	adc  a                                           ; $7774: $8f
	ld   a, c                                        ; $7775: $79
	halt                                             ; $7776: $76
	ld   [hl], c                                     ; $7777: $71
	ld   [hl], h                                     ; $7778: $74
	ld   e, b                                        ; $7779: $58
	ld   e, l                                        ; $777a: $5d
	halt                                             ; $777b: $76
	dec  c                                           ; $777c: $0d
	ld   d, d                                        ; $777d: $52
	ld   d, d                                        ; $777e: $52
	and  c                                           ; $777f: $a1
	ld   h, [hl]                                     ; $7780: $66
	sub  c                                           ; $7781: $91
	ld   a, b                                        ; $7782: $78
	ld   d, d                                        ; $7783: $52
	ld   e, c                                        ; $7784: $59
	ld   a, b                                        ; $7785: $78
	sbc  a                                           ; $7786: $9f
	dec  c                                           ; $7787: $0d
	nop                                              ; $7788: $00
	ld   a, [bc]                                     ; $7789: $0a
	ld   bc, $f5ac                                   ; $778a: $01 $ac $f5
	bit  7, h                                        ; $778d: $cb $7c
	ld   [bc], a                                     ; $778f: $02
	or   [hl]                                        ; $7790: $b6
	inc  bc                                          ; $7791: $03
	ld   l, e                                        ; $7792: $6b
	ld   a, l                                        ; $7793: $7d
	dec  c                                           ; $7794: $0d
	adc  h                                           ; $7795: $8c
	ld   h, e                                        ; $7796: $63
	ld   a, c                                        ; $7797: $79
	ld   bc, $0207                                   ; $7798: $01 $07 $02
	and  c                                           ; $779b: $a1
	ld   [bc], a                                     ; $779c: $02
	ld   a, e                                        ; $779d: $7b
	ld   d, d                                        ; $779e: $52
	ld   a, h                                        ; $779f: $7c
	inc  b                                           ; $77a0: $04
	ld   d, d                                        ; $77a1: $52
	inc  bc                                          ; $77a2: $03
	db   $10                                         ; $77a3: $10
	ld   bc, $0d08                                   ; $77a4: $01 $08 $0d
	halt                                             ; $77a7: $76
	ld   d, d                                        ; $77a8: $52
	ld   d, h                                        ; $77a9: $54
	ld   [bc], a                                     ; $77aa: $02
	scf                                              ; $77ab: $37
	ld   h, [hl]                                     ; $77ac: $66
	ld   l, [hl]                                     ; $77ad: $6e
	ld   e, c                                        ; $77ae: $59
	sub  a                                           ; $77af: $97
	ld   a, e                                        ; $77b0: $7b
	sbc  a                                           ; $77b1: $9f
	dec  c                                           ; $77b2: $0d
	nop                                              ; $77b3: $00
	ld   a, [bc]                                     ; $77b4: $0a
	rrca                                             ; $77b5: $0f
	nop                                              ; $77b6: $00
	ld   bc, $7801                                   ; $77b7: $01 $01 $78
	sbc  c                                           ; $77ba: $99
	adc  c                                           ; $77bb: $89
	ld   [hl], a                                     ; $77bc: $77
	rst  $38                                         ; $77bd: $ff
	rst  $38                                         ; $77be: $ff
	dec  c                                           ; $77bf: $0d
	sbc  l                                           ; $77c0: $9d
	ld   e, c                                        ; $77c1: $59
	sbc  b                                           ; $77c2: $98
	adc  h                                           ; $77c3: $8c
	ld   h, l                                        ; $77c4: $65
	ld   l, l                                        ; $77c5: $6d
	sbc  [hl]                                        ; $77c6: $9e
	and  e                                           ; $77c7: $a3
	jp   z, $a5d1                                    ; $77c8: $ca $d1 $a5

	cp   d                                           ; $77cb: $ba
	sbc  [hl]                                        ; $77cc: $9e
	dec  c                                           ; $77cd: $0d
	ld   d, b                                        ; $77ce: $50
	sbc  b                                           ; $77cf: $98
	ld   e, d                                        ; $77d0: $5a
	halt                                             ; $77d1: $76
	ld   d, h                                        ; $77d2: $54
	ld   h, d                                        ; $77d3: $62
	ld   h, h                                        ; $77d4: $64
	ld   d, d                                        ; $77d5: $52
	adc  h                                           ; $77d6: $8c
	ld   h, l                                        ; $77d7: $65
	ld   l, l                                        ; $77d8: $6d
	sbc  a                                           ; $77d9: $9f
	dec  c                                           ; $77da: $0d
	nop                                              ; $77db: $00
	ld   a, [bc]                                     ; $77dc: $0a
	ld   b, $08                                      ; $77dd: $06 $08
	db   $10                                         ; $77df: $10
	inc  e                                           ; $77e0: $1c
	add  hl, bc                                      ; $77e1: $09
	ld   bc, $0101                                   ; $77e2: $01 $01 $01
	ld   d, h                                        ; $77e5: $54
	and  c                                           ; $77e6: $a1
	sbc  a                                           ; $77e7: $9f
	dec  c                                           ; $77e8: $0d
	ld   l, e                                        ; $77e9: $6b
	sbc  d                                           ; $77ea: $9a
	ld   h, [hl]                                     ; $77eb: $66
	sub  c                                           ; $77ec: $91
	sbc  [hl]                                        ; $77ed: $9e
	ld   e, d                                        ; $77ee: $5a
	and  c                                           ; $77ef: $a1
	ld   a, [hl]                                     ; $77f0: $7e
	sbc  d                                           ; $77f1: $9a
	sub  [hl]                                        ; $77f2: $96
	sbc  a                                           ; $77f3: $9f
	dec  c                                           ; $77f4: $0d
	nop                                              ; $77f5: $00
	ld   a, [bc]                                     ; $77f6: $0a
	nop                                              ; $77f7: $00
	nop                                              ; $77f8: $00
	rrca                                             ; $77f9: $0f
	nop                                              ; $77fa: $00
	ld   bc, $060d                                   ; $77fb: $01 $0d $06
	nop                                              ; $77fe: $00
	ld   [bc], a                                     ; $77ff: $02
	ld   bc, $f5ac                                   ; $7800: $01 $ac $f5
	bit  4, e                                        ; $7803: $cb $63
	and  c                                           ; $7805: $a1
	dec  c                                           ; $7806: $0d
	ld   e, b                                        ; $7807: $58
	inc  b                                           ; $7808: $04
	ld   a, e                                        ; $7809: $7b
	sbc  d                                           ; $780a: $9a
	ld   h, e                                        ; $780b: $63
	adc  h                                           ; $780c: $8c
	ld   [hl], l                                     ; $780d: $75
	ld   h, a                                        ; $780e: $67
	sbc  a                                           ; $780f: $9f
	dec  c                                           ; $7810: $0d
	nop                                              ; $7811: $00
	ld   a, [bc]                                     ; $7812: $0a
	inc  e                                           ; $7813: $1c
	ld   b, $00                                      ; $7814: $06 $00
	nop                                              ; $7816: $00
	ld   bc, $5896                                   ; $7817: $01 $96 $58
	sbc  [hl]                                        ; $781a: $9e
	ld   [$9f00], sp                                 ; $781b: $08 $00 $9f
	dec  c                                           ; $781e: $0d
	ld   [bc], a                                     ; $781f: $02
	sub  l                                           ; $7820: $95
	ld   [bc], a                                     ; $7821: $02
	sub  e                                           ; $7822: $93
	sbc  b                                           ; $7823: $98
	ld   h, d                                        ; $7824: $62
	ld   e, l                                        ; $7825: $5d
	sbc  e                                           ; $7826: $9b
	ld   d, h                                        ; $7827: $54
	ld   h, e                                        ; $7828: $63
	and  c                                           ; $7829: $a1
	sbc  a                                           ; $782a: $9f
	dec  c                                           ; $782b: $0d
	nop                                              ; $782c: $00
	ld   a, [bc]                                     ; $782d: $0a
	rrca                                             ; $782e: $0f
	nop                                              ; $782f: $00
	ld   bc, $0101                                   ; $7830: $01 $01 $01
	inc  bc                                          ; $7833: $03
	ld   l, e                                        ; $7834: $6b
	ld   d, h                                        ; $7835: $54
	ld   l, [hl]                                     ; $7836: $6e
	sbc  [hl]                                        ; $7837: $9e
	ld   l, a                                        ; $7838: $6f
	sub  l                                           ; $7839: $95
	ld   [hl], c                                     ; $783a: $71
	halt                                             ; $783b: $76
	dec  c                                           ; $783c: $0d
	db   $10                                         ; $783d: $10
	inc  bc                                          ; $783e: $03
	ld   l, l                                        ; $783f: $6d
	dec  b                                           ; $7840: $05
	add  hl, de                                      ; $7841: $19
	ld   a, h                                        ; $7842: $7c
	ld   h, c                                        ; $7843: $61
	halt                                             ; $7844: $76
	and  b                                           ; $7845: $a0
	ld   [bc], a                                     ; $7846: $02
	jp   nz, Jump_05d_7452                           ; $7847: $c2 $52 $74

	dec  c                                           ; $784a: $0d
	db   $10                                         ; $784b: $10
	adc  l                                           ; $784c: $8d
	sub  [hl]                                        ; $784d: $96
	ld   d, h                                        ; $784e: $54
	ld   bc, $0d04                                   ; $784f: $01 $04 $0d
	nop                                              ; $7852: $00
	ld   a, [bc]                                     ; $7853: $0a
	add  hl, de                                      ; $7854: $19
	dec  b                                           ; $7855: $05
	ld   [bc], a                                     ; $7856: $02
	ld   [bc], a                                     ; $7857: $02
	or   [hl]                                        ; $7858: $b6

Jump_05d_7859:
	inc  bc                                          ; $7859: $03
	ld   l, e                                        ; $785a: $6b
	ld   a, c                                        ; $785b: $79
	ld   [hl], d                                     ; $785c: $72
	ld   d, d                                        ; $785d: $52
	ld   [hl], h                                     ; $785e: $74
	nop                                              ; $785f: $00
	nop                                              ; $7860: $00
	inc  bc                                          ; $7861: $03
	ld   l, l                                        ; $7862: $6d
	dec  b                                           ; $7863: $05
	add  hl, de                                      ; $7864: $19
	ld   a, h                                        ; $7865: $7c
	ld   l, c                                        ; $7866: $69
	ld   d, d                                        ; $7867: $52
	ld   e, c                                        ; $7868: $59
	ld   a, c                                        ; $7869: $79
	ld   [hl], d                                     ; $786a: $72
	ld   d, d                                        ; $786b: $52
	ld   [hl], h                                     ; $786c: $74
	nop                                              ; $786d: $00
	ld   bc, $ad07                                   ; $786e: $01 $07 $ad
	nop                                              ; $7871: $00
	ld   [bc], a                                     ; $7872: $02
	inc  bc                                          ; $7873: $03
	ld   bc, $2000                                   ; $7874: $01 $00 $20
	nop                                              ; $7877: $00
	rlca                                             ; $7878: $07

Call_05d_7879:
	xor  d                                           ; $7879: $aa
	ld   bc, $0302                                   ; $787a: $01 $02 $03
	ld   bc, $2001                                   ; $787d: $01 $01 $20
	nop                                              ; $7880: $00
	ld   b, $8b                                      ; $7881: $06 $8b
	nop                                              ; $7883: $00
	inc  e                                           ; $7884: $1c
	ld   b, $01                                      ; $7885: $06 $01
	ld   bc, $6601                                   ; $7887: $01 $01 $66
	sub  c                                           ; $788a: $91
	sbc  [hl]                                        ; $788b: $9e
	adc  h                                           ; $788c: $8c
	ld   l, l                                        ; $788d: $6d
	inc  b                                           ; $788e: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $788f: $cf
	inc  b                                           ; $7890: $04
	xor  d                                           ; $7891: $aa
	ld   a, b                                        ; $7892: $78
	sbc  a                                           ; $7893: $9f
	dec  c                                           ; $7894: $0d
	ld   e, b                                        ; $7895: $58
	sub  d                                           ; $7896: $92
	ld   h, a                                        ; $7897: $67
	adc  l                                           ; $7898: $8d
	sbc  a                                           ; $7899: $9f
	dec  c                                           ; $789a: $0d
	nop                                              ; $789b: $00
	ld   a, [bc]                                     ; $789c: $0a
	dec  c                                           ; $789d: $0d
	nop                                              ; $789e: $00
	nop                                              ; $789f: $00
	rrca                                             ; $78a0: $0f
	nop                                              ; $78a1: $00
	ld   bc, $1e09                                   ; $78a2: $01 $09 $1e
	nop                                              ; $78a5: $00
	rrca                                             ; $78a6: $0f
	nop                                              ; $78a7: $00
	ld   bc, $0201                                   ; $78a8: $01 $01 $02
	or   [hl]                                        ; $78ab: $b6
	inc  bc                                          ; $78ac: $03
	ld   l, e                                        ; $78ad: $6b
	ld   a, h                                        ; $78ae: $7c
	ld   h, c                                        ; $78af: $61
	halt                                             ; $78b0: $76
	and  b                                           ; $78b1: $a0
	dec  c                                           ; $78b2: $0d
	ld   [bc], a                                     ; $78b3: $02
	jp   nz, Jump_05d_6d5b                           ; $78b4: $c2 $5b $6d

	ld   d, d                                        ; $78b7: $52
	ld   a, h                                        ; $78b8: $7c
	ld   [hl], l                                     ; $78b9: $75
	ld   h, a                                        ; $78ba: $67
	ld   e, d                                        ; $78bb: $5a
	rst  $38                                         ; $78bc: $ff
	rst  $38                                         ; $78bd: $ff
	dec  c                                           ; $78be: $0d
	nop                                              ; $78bf: $00
	ld   a, [bc]                                     ; $78c0: $0a
	inc  e                                           ; $78c1: $1c
	ld   b, $01                                      ; $78c2: $06 $01
	ld   bc, $0201                                   ; $78c4: $01 $01 $02
	or   [hl]                                        ; $78c7: $b6
	inc  bc                                          ; $78c8: $03
	ld   l, e                                        ; $78c9: $6b
	ld   a, h                                        ; $78ca: $7c
	ld   h, c                                        ; $78cb: $61
	halt                                             ; $78cc: $76
	ld   sp, hl                                      ; $78cd: $f9
	dec  c                                           ; $78ce: $0d
	ld   l, e                                        ; $78cf: $6b
	sbc  d                                           ; $78d0: $9a
	ld   a, b                                        ; $78d1: $78
	sub  a                                           ; $78d2: $97
	sbc  [hl]                                        ; $78d3: $9e
	ld   [bc], a                                     ; $78d4: $02
	jp   nz, $965d                                   ; $78d5: $c2 $5d $96

	sbc  b                                           ; $78d8: $98
	dec  c                                           ; $78d9: $0d
	sub  d                                           ; $78da: $92
	ld   [hl], c                                     ; $78db: $71
	ld   l, l                                        ; $78dc: $6d
	inc  b                                           ; $78dd: $04
	ld   a, b                                        ; $78de: $78
	ld   e, d                                        ; $78df: $5a
	inc  bc                                          ; $78e0: $03
	ld   [hl], b                                     ; $78e1: $70
	ld   d, d                                        ; $78e2: $52
	ld   l, [hl]                                     ; $78e3: $6e
	sbc  e                                           ; $78e4: $9b
	sbc  a                                           ; $78e5: $9f
	dec  c                                           ; $78e6: $0d
	nop                                              ; $78e7: $00
	ld   a, [bc]                                     ; $78e8: $0a
	ld   a, [de]                                     ; $78e9: $1a
	ld   b, $07                                      ; $78ea: $06 $07
	rlca                                             ; $78ec: $07
	ld   bc, $0402                                   ; $78ed: $01 $02 $04
	ld   bc, $2002                                   ; $78f0: $01 $02 $20
	nop                                              ; $78f3: $00
	rlca                                             ; $78f4: $07
	inc  a                                           ; $78f5: $3c
	ld   bc, $0402                                   ; $78f6: $01 $02 $04
	ld   bc, $2001                                   ; $78f9: $01 $01 $20
	nop                                              ; $78fc: $00
	ld   b, $5b                                      ; $78fd: $06 $5b
	ld   bc, $061c                                   ; $78ff: $01 $1c $06
	rlca                                             ; $7902: $07
	rlca                                             ; $7903: $07
	dec  e                                           ; $7904: $1d
	ld   b, b                                        ; $7905: $40
	ld   d, $03                                      ; $7906: $16 $03
	ld   d, $01                                      ; $7908: $16 $01
	inc  bc                                          ; $790a: $03
	jr   z, jr_05d_790d                              ; $790b: $28 $00

jr_05d_790d:
	ld   bc, $6503                                   ; $790d: $01 $03 $65
	inc  bc                                          ; $7910: $03
	rst  $30                                         ; $7911: $f7
	ld   h, l                                        ; $7912: $65
	ld   l, l                                        ; $7913: $6d
	ld   a, b                                        ; $7914: $78
	ld   [$9f00], sp                                 ; $7915: $08 $00 $9f
	dec  c                                           ; $7918: $0d
	sub  d                                           ; $7919: $92
	sbc  c                                           ; $791a: $99
	ld   h, [hl]                                     ; $791b: $66
	sub  c                                           ; $791c: $91
	ld   a, b                                        ; $791d: $78
	ld   d, d                                        ; $791e: $52
	ld   e, c                                        ; $791f: $59
	sbc  a                                           ; $7920: $9f
	dec  c                                           ; $7921: $0d
	ld   h, c                                        ; $7922: $61
	ld   a, h                                        ; $7923: $7c
	inc  bc                                          ; $7924: $03
	cp   $03                                         ; $7925: $fe $03
	add  [hl]                                        ; $7927: $86
	ld   [hl], l                                     ; $7928: $75
	ld   e, d                                        ; $7929: $5a
	and  c                                           ; $792a: $a1
	ld   a, [hl]                                     ; $792b: $7e
	sbc  d                                           ; $792c: $9a
	sub  [hl]                                        ; $792d: $96
	sbc  a                                           ; $792e: $9f
	dec  c                                           ; $792f: $0d
	nop                                              ; $7930: $00
	ld   a, [bc]                                     ; $7931: $0a
	ld   b, $82                                      ; $7932: $06 $82
	ld   bc, $061c                                   ; $7934: $01 $1c $06
	ld   bc, $1d01                                   ; $7937: $01 $01 $1d
	ld   b, b                                        ; $793a: $40
	ld   d, $03                                      ; $793b: $16 $03
	ld   d, $01                                      ; $793d: $16 $01
	ld   bc, $0028                                   ; $793f: $01 $28 $00
	ld   bc, $508c                                   ; $7942: $01 $8c $50
	adc  h                                           ; $7945: $8c
	ld   d, b                                        ; $7946: $50
	ld   [hl], c                                     ; $7947: $71
	ld   [hl], h                                     ; $7948: $74
	halt                                             ; $7949: $76
	ld   h, c                                        ; $794a: $61
	ld   l, [hl]                                     ; $794b: $6e
	ld   a, b                                        ; $794c: $78
	sbc  a                                           ; $794d: $9f
	dec  c                                           ; $794e: $0d
	nop                                              ; $794f: $00
	ld   a, [bc]                                     ; $7950: $0a
	ld   b, $82                                      ; $7951: $06 $82
	ld   bc, $061c                                   ; $7953: $01 $1c $06
	dec  b                                           ; $7956: $05
	dec  b                                           ; $7957: $05
	dec  e                                           ; $7958: $1d
	ld   b, b                                        ; $7959: $40
	ld   d, $03                                      ; $795a: $16 $03
	ld   d, $01                                      ; $795c: $16 $01
	ld   [bc], a                                     ; $795e: $02
	add  hl, hl                                      ; $795f: $29
	nop                                              ; $7960: $00
	ld   bc, $a178                                   ; $7961: $01 $78 $a1
	ld   l, [hl]                                     ; $7964: $6e
	sub  [hl]                                        ; $7965: $96
	db   $fc                                         ; $7966: $fc
	sbc  a                                           ; $7967: $9f
	dec  c                                           ; $7968: $0d
	ld   l, d                                        ; $7969: $6a
	and  c                                           ; $796a: $a1
	ld   l, d                                        ; $796b: $6a
	and  c                                           ; $796c: $a1
	pop  bc                                          ; $796d: $c1
	db   $e3                                         ; $796e: $e3
	ld   h, [hl]                                     ; $796f: $66
	sub  c                                           ; $7970: $91
	ld   a, b                                        ; $7971: $78
	ld   d, d                                        ; $7972: $52
	ld   e, c                                        ; $7973: $59
	sbc  a                                           ; $7974: $9f
	dec  c                                           ; $7975: $0d
	nop                                              ; $7976: $00
	ld   a, [bc]                                     ; $7977: $0a
	ld   b, $82                                      ; $7978: $06 $82
	ld   bc, $061c                                   ; $797a: $01 $1c $06
	nop                                              ; $797d: $00
	nop                                              ; $797e: $00
	ld   bc, $7158                                   ; $797f: $01 $58 $71
	halt                                             ; $7982: $76
	sub  b                                           ; $7983: $90
	ld   d, h                                        ; $7984: $54
	ld   h, c                                        ; $7985: $61
	and  c                                           ; $7986: $a1
	ld   a, b                                        ; $7987: $78
	inc  bc                                          ; $7988: $03
	ld   l, a                                        ; $7989: $6f
	ld   [bc], a                                     ; $798a: $02
	xor  c                                           ; $798b: $a9
	ld   l, [hl]                                     ; $798c: $6e
	sbc  a                                           ; $798d: $9f
	dec  c                                           ; $798e: $0d
	ld   h, [hl]                                     ; $798f: $66
	sub  c                                           ; $7990: $91
	sbc  [hl]                                        ; $7991: $9e
	ld   e, b                                        ; $7992: $58
	sub  d                                           ; $7993: $92
	ld   h, a                                        ; $7994: $67
	adc  l                                           ; $7995: $8d
	sbc  a                                           ; $7996: $9f
	dec  c                                           ; $7997: $0d
	nop                                              ; $7998: $00
	ld   a, [bc]                                     ; $7999: $0a
	dec  c                                           ; $799a: $0d
	nop                                              ; $799b: $00
	nop                                              ; $799c: $00
	rrca                                             ; $799d: $0f
	nop                                              ; $799e: $00
	ld   bc, $1e09                                   ; $799f: $01 $09 $1e
	nop                                              ; $79a2: $00
	rrca                                             ; $79a3: $0f
	nop                                              ; $79a4: $00
	ld   bc, $0401                                   ; $79a5: $01 $01 $04
	ld   l, l                                        ; $79a8: $6d
	ld   a, h                                        ; $79a9: $7c
	inc  bc                                          ; $79aa: $03
	ld   l, l                                        ; $79ab: $6d
	dec  b                                           ; $79ac: $05
	add  hl, de                                      ; $79ad: $19
	ld   a, h                                        ; $79ae: $7c
	ld   l, c                                        ; $79af: $69
	ld   d, d                                        ; $79b0: $52
	ld   e, c                                        ; $79b1: $59
	ld   a, l                                        ; $79b2: $7d
	dec  c                                           ; $79b3: $0d
	ld   [hl], a                                     ; $79b4: $77
	and  c                                           ; $79b5: $a1
	ld   a, b                                        ; $79b6: $78
	sub  b                                           ; $79b7: $90
	ld   a, h                                        ; $79b8: $7c
	ld   [hl], l                                     ; $79b9: $75
	ld   h, a                                        ; $79ba: $67
	ld   e, c                                        ; $79bb: $59
	ld   sp, hl                                      ; $79bc: $f9
	dec  c                                           ; $79bd: $0d
	nop                                              ; $79be: $00
	ld   a, [bc]                                     ; $79bf: $0a
	rlca                                             ; $79c0: $07
	add  sp, $01                                     ; $79c1: $e8 $01
	inc  bc                                          ; $79c3: $03
	inc  hl                                          ; $79c4: $23
	ld   bc, $25a0                                   ; $79c5: $01 $a0 $25
	nop                                              ; $79c8: $00
	rlca                                             ; $79c9: $07
	ld   a, [hl-]                                    ; $79ca: $3a
	ld   [bc], a                                     ; $79cb: $02
	ld   bc, $0364                                   ; $79cc: $01 $64 $03
	inc  hl                                          ; $79cf: $23
	inc  hl                                          ; $79d0: $23
	inc  bc                                          ; $79d1: $03
	inc  hl                                          ; $79d2: $23
	ld   bc, $24a0                                   ; $79d3: $01 $a0 $24
	inc  e                                           ; $79d6: $1c
	nop                                              ; $79d7: $00

Call_05d_79d8:
	rlca                                             ; $79d8: $07
	sub  e                                           ; $79d9: $93
	ld   [bc], a                                     ; $79da: $02
	inc  bc                                          ; $79db: $03
	inc  hl                                          ; $79dc: $23
	ld   bc, $2264                                   ; $79dd: $01 $64 $22
	nop                                              ; $79e0: $00
	inc  e                                           ; $79e1: $1c
	ld   b, $01                                      ; $79e2: $06 $01
	ld   bc, $401d                                   ; $79e4: $01 $1d $40
	ld   d, $03                                      ; $79e7: $16 $03
	ld   d, $01                                      ; $79e9: $16 $01
	ld   [bc], a                                     ; $79eb: $02
	jr   z, jr_05d_79ee                              ; $79ec: $28 $00

jr_05d_79ee:
	ld   bc, $c4d1                                   ; $79ee: $01 $d1 $c4
	jp   nz, Jump_05d_6eec                           ; $79f1: $c2 $ec $6e

	ld   l, d                                        ; $79f4: $6a
	sbc  a                                           ; $79f5: $9f
	dec  c                                           ; $79f6: $0d
	adc  h                                           ; $79f7: $8c
	ld   h, [hl]                                     ; $79f8: $66
	adc  a                                           ; $79f9: $8f
	ld   a, c                                        ; $79fa: $79
	inc  bc                                          ; $79fb: $03
	ld   l, l                                        ; $79fc: $6d
	dec  b                                           ; $79fd: $05
	add  hl, de                                      ; $79fe: $19
	sub  d                                           ; $79ff: $92
	ld   [hl], c                                     ; $7a00: $71
	ld   [hl], h                                     ; $7a01: $74
	ld   d, d                                        ; $7a02: $52
	sbc  c                                           ; $7a03: $99
	dec  c                                           ; $7a04: $0d
	inc  b                                           ; $7a05: $04
	ld   a, $05                                      ; $7a06: $3e $05
	ld   a, l                                        ; $7a08: $7d
	ld   l, [hl]                                     ; $7a09: $6e
	ld   a, b                                        ; $7a0a: $78
	sbc  a                                           ; $7a0b: $9f
	dec  c                                           ; $7a0c: $0d
	nop                                              ; $7a0d: $00
	ld   a, [bc]                                     ; $7a0e: $0a
	ld   bc, $6202                                   ; $7a0f: $01 $02 $62
	dec  b                                           ; $7a12: $05
	pop  hl                                          ; $7a13: $e1
	ld   a, c                                        ; $7a14: $79
	ld   e, b                                        ; $7a15: $58
	ld   h, d                                        ; $7a16: $62
	sub  a                                           ; $7a17: $97
	ld   l, b                                        ; $7a18: $68
	ld   a, c                                        ; $7a19: $79
	dec  c                                           ; $7a1a: $0d
	ld   h, c                                        ; $7a1b: $61
	sbc  d                                           ; $7a1c: $9a
	ld   e, c                                        ; $7a1d: $59
	sub  a                                           ; $7a1e: $97
	sub  b                                           ; $7a1f: $90
	sbc  [hl]                                        ; $7a20: $9e
	ld   e, d                                        ; $7a21: $5a
	and  c                                           ; $7a22: $a1
	ld   a, [hl]                                     ; $7a23: $7e
	sbc  d                                           ; $7a24: $9a
	sub  [hl]                                        ; $7a25: $96
	sbc  a                                           ; $7a26: $9f
	dec  c                                           ; $7a27: $0d
	nop                                              ; $7a28: $00
	ld   a, [bc]                                     ; $7a29: $0a
	dec  c                                           ; $7a2a: $0d
	nop                                              ; $7a2b: $00
	nop                                              ; $7a2c: $00
	rrca                                             ; $7a2d: $0f
	nop                                              ; $7a2e: $00
	ld   bc, $1e09                                   ; $7a2f: $01 $09 $1e
	nop                                              ; $7a32: $00
	inc  e                                           ; $7a33: $1c
	ld   b, $00                                      ; $7a34: $06 $00
	nop                                              ; $7a36: $00
	ld   bc, $688c                                   ; $7a37: $01 $8c $68
	adc  h                                           ; $7a3a: $8c
	ld   l, b                                        ; $7a3b: $68
	halt                                             ; $7a3c: $76
	ld   [bc], a                                     ; $7a3d: $02
	sbc  l                                           ; $7a3e: $9d
	ld   [hl], c                                     ; $7a3f: $71
	ld   l, l                                        ; $7a40: $6d
	halt                                             ; $7a41: $76
	ld   h, c                                        ; $7a42: $61
	sbc  e                                           ; $7a43: $9b
	dec  c                                           ; $7a44: $0d
	ld   e, c                                        ; $7a45: $59
	ld   a, b                                        ; $7a46: $78
	sbc  a                                           ; $7a47: $9f
	dec  c                                           ; $7a48: $0d
	nop                                              ; $7a49: $00
	ld   a, [bc]                                     ; $7a4a: $0a
	ld   bc, $7c61                                   ; $7a4b: $01 $61 $7c
	adc  h                                           ; $7a4e: $8c
	adc  h                                           ; $7a4f: $8c
	sbc  [hl]                                        ; $7a50: $9e
	adc  h                                           ; $7a51: $8c
	ld   h, [hl]                                     ; $7a52: $66
	adc  a                                           ; $7a53: $8f
	ld   a, c                                        ; $7a54: $79
	dec  c                                           ; $7a55: $0d
	inc  bc                                          ; $7a56: $03
	ld   l, l                                        ; $7a57: $6d
	dec  b                                           ; $7a58: $05
	add  hl, de                                      ; $7a59: $19
	and  b                                           ; $7a5a: $a0
	ld   [bc], a                                     ; $7a5b: $02
	ei                                               ; $7a5c: $fb
	ld   e, a                                        ; $7a5d: $5f
	ld   [hl], h                                     ; $7a5e: $74
	ld   d, d                                        ; $7a5f: $52
	ld   e, a                                        ; $7a60: $5f
	ld   a, [hl]                                     ; $7a61: $7e
	dec  c                                           ; $7a62: $0d
	pop  de                                          ; $7a63: $d1
	call nz, $ecc2                                   ; $7a64: $c4 $c2 $ec
	ld   h, [hl]                                     ; $7a67: $66
	sub  c                                           ; $7a68: $91
	ld   a, b                                        ; $7a69: $78
	ld   d, d                                        ; $7a6a: $52
	ld   e, c                                        ; $7a6b: $59
	sbc  a                                           ; $7a6c: $9f
	dec  c                                           ; $7a6d: $0d
	nop                                              ; $7a6e: $00
	ld   a, [bc]                                     ; $7a6f: $0a
	ld   bc, $9166                                   ; $7a70: $01 $66 $91
	sbc  [hl]                                        ; $7a73: $9e
	ld   h, c                                        ; $7a74: $61
	sbc  d                                           ; $7a75: $9a
	ld   e, c                                        ; $7a76: $59
	sub  a                                           ; $7a77: $97
	sub  b                                           ; $7a78: $90
	dec  c                                           ; $7a79: $0d
	ld   e, d                                        ; $7a7a: $5a
	and  c                                           ; $7a7b: $a1
	ld   a, [hl]                                     ; $7a7c: $7e
	sbc  d                                           ; $7a7d: $9a
	sub  [hl]                                        ; $7a7e: $96
	sbc  a                                           ; $7a7f: $9f
	dec  c                                           ; $7a80: $0d
	nop                                              ; $7a81: $00
	ld   a, [bc]                                     ; $7a82: $0a
	dec  c                                           ; $7a83: $0d
	nop                                              ; $7a84: $00
	nop                                              ; $7a85: $00
	rrca                                             ; $7a86: $0f
	nop                                              ; $7a87: $00
	ld   bc, $1e09                                   ; $7a88: $01 $09 $1e
	nop                                              ; $7a8b: $00
	inc  e                                           ; $7a8c: $1c
	ld   b, $05                                      ; $7a8d: $06 $05
	dec  b                                           ; $7a8f: $05
	ld   bc, $fc54                                   ; $7a90: $01 $54 $fc
	and  c                                           ; $7a93: $a1
	rst  $38                                         ; $7a94: $ff
	rst  $38                                         ; $7a95: $ff
	dec  c                                           ; $7a96: $0d
	ld   a, b                                        ; $7a97: $78
	and  c                                           ; $7a98: $a1
	ld   [hl], l                                     ; $7a99: $75
	sbc  [hl]                                        ; $7a9a: $9e
	ld   h, c                                        ; $7a9b: $61
	and  c                                           ; $7a9c: $a1
	ld   a, b                                        ; $7a9d: $78
	ld   a, c                                        ; $7a9e: $79
	dec  c                                           ; $7a9f: $0d
	ld   [bc], a                                     ; $7aa0: $02
	jr   z, jr_05d_7af5                              ; $7aa1: $28 $52

	ld   a, h                                        ; $7aa3: $7c
	ld   e, c                                        ; $7aa4: $59
	ld   a, b                                        ; $7aa5: $78
	db   $fc                                         ; $7aa6: $fc
	dec  c                                           ; $7aa7: $0d
	nop                                              ; $7aa8: $00
	ld   a, [bc]                                     ; $7aa9: $0a
	ld   bc, $5490                                   ; $7aaa: $01 $90 $54
	inc  bc                                          ; $7aad: $03
	ld   l, h                                        ; $7aae: $6c
	ld   h, l                                        ; $7aaf: $65
	sbc  [hl]                                        ; $7ab0: $9e
	inc  bc                                          ; $7ab1: $03
	ld   l, l                                        ; $7ab2: $6d
	dec  b                                           ; $7ab3: $05
	add  hl, de                                      ; $7ab4: $19
	ld   a, c                                        ; $7ab5: $79
	dec  c                                           ; $7ab6: $0d
	inc  bc                                          ; $7ab7: $03
	ld   l, a                                        ; $7ab8: $6f
	ld   [bc], a                                     ; $7ab9: $02
	xor  c                                           ; $7aba: $a9
	and  b                                           ; $7abb: $a0
	ld   h, e                                        ; $7abc: $63
	ld   e, c                                        ; $7abd: $59
	ld   a, b                                        ; $7abe: $78
	ld   d, d                                        ; $7abf: $52
	halt                                             ; $7ac0: $76
	dec  c                                           ; $7ac1: $0d
	adc  h                                           ; $7ac2: $8c
	ld   l, b                                        ; $7ac3: $68
	ld   d, d                                        ; $7ac4: $52
	and  c                                           ; $7ac5: $a1
	ld   h, [hl]                                     ; $7ac6: $66
	sub  c                                           ; $7ac7: $91
	ld   a, b                                        ; $7ac8: $78
	ld   d, d                                        ; $7ac9: $52
	ld   e, c                                        ; $7aca: $59
	ld   sp, hl                                      ; $7acb: $f9
	dec  c                                           ; $7acc: $0d
	nop                                              ; $7acd: $00
	ld   a, [bc]                                     ; $7ace: $0a
	ld   bc, $9166                                   ; $7acf: $01 $66 $91
	sbc  [hl]                                        ; $7ad2: $9e
	ld   e, d                                        ; $7ad3: $5a
	and  c                                           ; $7ad4: $a1
	ld   a, [hl]                                     ; $7ad5: $7e
	sbc  d                                           ; $7ad6: $9a
	sub  [hl]                                        ; $7ad7: $96
	sbc  a                                           ; $7ad8: $9f
	dec  c                                           ; $7ad9: $0d
	nop                                              ; $7ada: $00
	ld   a, [bc]                                     ; $7adb: $0a
	dec  c                                           ; $7adc: $0d
	nop                                              ; $7add: $00
	nop                                              ; $7ade: $00
	rrca                                             ; $7adf: $0f
	nop                                              ; $7ae0: $00
	ld   bc, $1e09                                   ; $7ae1: $01 $09 $1e
	nop                                              ; $7ae4: $00
	nop                                              ; $7ae5: $00
	ld   c, $1a                                      ; $7ae6: $0e $1a
	rrca                                             ; $7ae8: $0f
	nop                                              ; $7ae9: $00
	ld   bc, $0102                                   ; $7aea: $01 $02 $01
	ld   bc, $7803                                   ; $7aed: $01 $03 $78
	and  c                                           ; $7af0: $a1
	ld   l, [hl]                                     ; $7af1: $6e
	inc  bc                                          ; $7af2: $03
	xor  c                                           ; $7af3: $a9
	sub  b                                           ; $7af4: $90

jr_05d_7af5:
	ld   d, d                                        ; $7af5: $52
	ld   a, b                                        ; $7af6: $78
	ld   d, d                                        ; $7af7: $52
	ld   a, h                                        ; $7af8: $7c
	ld   e, c                                        ; $7af9: $59
	rst  $38                                         ; $7afa: $ff
	rst  $38                                         ; $7afb: $ff
	dec  c                                           ; $7afc: $0d
	db   $10                                         ; $7afd: $10
	rst  $38                                         ; $7afe: $ff
	rst  $38                                         ; $7aff: $ff
	and  c                                           ; $7b00: $a1
	ld   sp, hl                                      ; $7b01: $f9
	ld   bc, $0d04                                   ; $7b02: $01 $04 $0d
	nop                                              ; $7b05: $00
	ld   a, [bc]                                     ; $7b06: $0a
	db   $10                                         ; $7b07: $10
	dec  e                                           ; $7b08: $1d
	nop                                              ; $7b09: $00
	ld   bc, $0301                                   ; $7b0a: $01 $01 $03
	rst  $28                                         ; $7b0d: $ef
	or   d                                           ; $7b0e: $b2
	call nz, $ffc9                                   ; $7b0f: $c4 $c9 $ff
	rst  $38                                         ; $7b12: $ff
	ld   sp, hl                                      ; $7b13: $f9
	dec  c                                           ; $7b14: $0d
	db   $10                                         ; $7b15: $10
	inc  bc                                          ; $7b16: $03
	xor  c                                           ; $7b17: $a9
	ld   a, h                                        ; $7b18: $7c
	ld   l, [hl]                                     ; $7b19: $6e
	sbc  e                                           ; $7b1a: $9b
	ld   d, h                                        ; $7b1b: $54
	rst  $38                                         ; $7b1c: $ff
	rst  $38                                         ; $7b1d: $ff
	ld   sp, hl                                      ; $7b1e: $f9
	ld   bc, $0d04                                   ; $7b1f: $01 $04 $0d
	nop                                              ; $7b22: $00
	ld   a, [bc]                                     ; $7b23: $0a
	dec  b                                           ; $7b24: $05
	add  b                                           ; $7b25: $80
	ld   l, d                                        ; $7b26: $6a
	ld   bc, $0001                                   ; $7b27: $01 $01 $00
	nop                                              ; $7b2a: $00
	nop                                              ; $7b2b: $00
	ld   c, $57                                      ; $7b2c: $0e $57
	inc  e                                           ; $7b2e: $1c
	inc  b                                           ; $7b2f: $04
	ld   bc, $0201                                   ; $7b30: $01 $01 $02
	ld   bc, $9752                                   ; $7b33: $01 $52 $97
	ld   [hl], c                                     ; $7b36: $71
	ld   h, l                                        ; $7b37: $65
	sub  c                                           ; $7b38: $91
	ld   d, d                                        ; $7b39: $52
	sbc  [hl]                                        ; $7b3a: $9e
	dec  c                                           ; $7b3b: $0d
	ld   l, a                                        ; $7b3c: $6f
	ld   d, d                                        ; $7b3d: $52
	ld   [bc], a                                     ; $7b3e: $02
	inc  de                                          ; $7b3f: $13
	ld   l, a                                        ; $7b40: $6f
	sub  c                                           ; $7b41: $91
	and  c                                           ; $7b42: $a1
	sbc  a                                           ; $7b43: $9f
	dec  c                                           ; $7b44: $0d
	nop                                              ; $7b45: $00
	ld   a, [bc]                                     ; $7b46: $0a
	ld   bc, $9e50                                   ; $7b47: $01 $50 $9e
	ld   l, e                                        ; $7b4a: $6b
	ld   d, h                                        ; $7b4b: $54
	ld   l, [hl]                                     ; $7b4c: $6e
	sbc  a                                           ; $7b4d: $9f
	dec  c                                           ; $7b4e: $0d
	ld   l, c                                        ; $7b4f: $69
	ld   [hl], c                                     ; $7b50: $71
	ld   e, c                                        ; $7b51: $59
	ld   e, l                                        ; $7b52: $5d
	ld   l, [hl]                                     ; $7b53: $6e
	ld   e, c                                        ; $7b54: $59
	sub  a                                           ; $7b55: $97
	sbc  [hl]                                        ; $7b56: $9e
	dec  c                                           ; $7b57: $0d
	adc  [hl]                                        ; $7b58: $8e
	ld   e, c                                        ; $7b59: $59
	ld   h, l                                        ; $7b5a: $65
	ld   a, [hl]                                     ; $7b5b: $7e
	ld   a, b                                        ; $7b5c: $78
	ld   h, l                                        ; $7b5d: $65
	sbc  [hl]                                        ; $7b5e: $9e
	ld   h, l                                        ; $7b5f: $65
	ld   [hl], h                                     ; $7b60: $74
	sub  [hl]                                        ; $7b61: $96
	dec  c                                           ; $7b62: $0d
	nop                                              ; $7b63: $00
	ld   a, [bc]                                     ; $7b64: $0a
	add  hl, de                                      ; $7b65: $19
	dec  b                                           ; $7b66: $05
	ld   [bc], a                                     ; $7b67: $02
	ld   a, l                                        ; $7b68: $7d
	ld   d, d                                        ; $7b69: $52
	nop                                              ; $7b6a: $00
	nop                                              ; $7b6b: $00
	ld   d, d                                        ; $7b6c: $52
	ld   d, d                                        ; $7b6d: $52
	ld   d, [hl]                                     ; $7b6e: $56
	nop                                              ; $7b6f: $00
	ld   bc, $b307                                   ; $7b70: $01 $07 $b3
	nop                                              ; $7b73: $00
	ld   [bc], a                                     ; $7b74: $02
	inc  bc                                          ; $7b75: $03
	ld   bc, $2000                                   ; $7b76: $01 $00 $20
	nop                                              ; $7b79: $00
	rlca                                             ; $7b7a: $07
	add  h                                           ; $7b7b: $84
	nop                                              ; $7b7c: $00
	ld   [bc], a                                     ; $7b7d: $02
	inc  bc                                          ; $7b7e: $03
	ld   bc, $2001                                   ; $7b7f: $01 $01 $20
	nop                                              ; $7b82: $00
	ld   b, $5a                                      ; $7b83: $06 $5a
	nop                                              ; $7b85: $00
	inc  e                                           ; $7b86: $1c
	inc  b                                           ; $7b87: $04
	rlca                                             ; $7b88: $07
	rlca                                             ; $7b89: $07
	dec  e                                           ; $7b8a: $1d
	ld   b, b                                        ; $7b8b: $40
	inc  d                                           ; $7b8c: $14
	inc  bc                                          ; $7b8d: $03
	inc  d                                           ; $7b8e: $14
	ld   bc, $2902                                   ; $7b8f: $01 $02 $29
	nop                                              ; $7b92: $00
	ld   bc, $ff50                                   ; $7b93: $01 $50 $ff
	rst  $38                                         ; $7b96: $ff
	ld   d, d                                        ; $7b97: $52
	sub  d                                           ; $7b98: $92
	ld   l, e                                        ; $7b99: $6b
	ld   d, h                                        ; $7b9a: $54
	ld   a, b                                        ; $7b9b: $78
	ld   e, c                                        ; $7b9c: $59
	ld   e, b                                        ; $7b9d: $58
	ld   h, l                                        ; $7b9e: $65
	ld   [hl], h                                     ; $7b9f: $74
	sbc  c                                           ; $7ba0: $99
	sbc  a                                           ; $7ba1: $9f
	dec  c                                           ; $7ba2: $0d
	ld   d, d                                        ; $7ba3: $52
	ld   d, d                                        ; $7ba4: $52
	sub  b                                           ; $7ba5: $90
	and  c                                           ; $7ba6: $a1
	sbc  a                                           ; $7ba7: $9f
	sub  $f5                                         ; $7ba8: $d6 $f5
	ld   l, [hl]                                     ; $7baa: $6e
	sbc  a                                           ; $7bab: $9f
	dec  c                                           ; $7bac: $0d
	nop                                              ; $7bad: $00
	ld   a, [bc]                                     ; $7bae: $0a
	nop                                              ; $7baf: $00
	rrca                                             ; $7bb0: $0f
	nop                                              ; $7bb1: $00
	ld   bc, $0201                                   ; $7bb2: $01 $01 $02
	and  l                                           ; $7bb5: $a5
	sbc  [hl]                                        ; $7bb6: $9e
	ld   d, d                                        ; $7bb7: $52
	ld   l, e                                        ; $7bb8: $6b
	ld   e, d                                        ; $7bb9: $5a
	ld   h, l                                        ; $7bba: $65
	ld   d, d                                        ; $7bbb: $52
	and  c                                           ; $7bbc: $a1
	ld   l, [hl]                                     ; $7bbd: $6e
	sbc  a                                           ; $7bbe: $9f
	dec  c                                           ; $7bbf: $0d
	nop                                              ; $7bc0: $00
	ld   a, [bc]                                     ; $7bc1: $0a
	inc  e                                           ; $7bc2: $1c
	inc  b                                           ; $7bc3: $04
	inc  bc                                          ; $7bc4: $03
	inc  bc                                          ; $7bc5: $03
	ld   bc, $9e50                                   ; $7bc6: $01 $50 $9e
	ld   l, e                                        ; $7bc9: $6b
	ld   d, h                                        ; $7bca: $54
	ld   a, b                                        ; $7bcb: $78
	and  c                                           ; $7bcc: $a1
	ld   l, [hl]                                     ; $7bcd: $6e
	rst  $38                                         ; $7bce: $ff
	rst  $38                                         ; $7bcf: $ff
	dec  c                                           ; $7bd0: $0d
	ld   h, [hl]                                     ; $7bd1: $66
	sub  c                                           ; $7bd2: $91
	sbc  [hl]                                        ; $7bd3: $9e
	adc  h                                           ; $7bd4: $8c
	ld   l, l                                        ; $7bd5: $6d
	ld   h, c                                        ; $7bd6: $61
	and  c                                           ; $7bd7: $a1
	ld   [hl], a                                     ; $7bd8: $77
	ld   a, e                                        ; $7bd9: $7b
	sbc  a                                           ; $7bda: $9f
	dec  c                                           ; $7bdb: $0d
	nop                                              ; $7bdc: $00
	ld   a, [bc]                                     ; $7bdd: $0a
	nop                                              ; $7bde: $00
	rrca                                             ; $7bdf: $0f
	nop                                              ; $7be0: $00
	ld   bc, $5201                                   ; $7be1: $01 $01 $52
	ld   d, d                                        ; $7be4: $52
	sub  [hl]                                        ; $7be5: $96
	sbc  a                                           ; $7be6: $9f
	dec  c                                           ; $7be7: $0d
	ld   h, [hl]                                     ; $7be8: $66
	sub  c                                           ; $7be9: $91
	sbc  [hl]                                        ; $7bea: $9e
	ld   [bc], a                                     ; $7beb: $02
	jr   jr_05d_7bf1                                 ; $7bec: $18 $03

	ld   e, d                                        ; $7bee: $5a
	inc  b                                           ; $7bef: $04
	inc  hl                                          ; $7bf0: $23

jr_05d_7bf1:
	dec  b                                           ; $7bf1: $05
	inc  c                                           ; $7bf2: $0c
	and  b                                           ; $7bf3: $a0
	dec  c                                           ; $7bf4: $0d
	dec  b                                           ; $7bf5: $05
	jr   nz, jr_05d_7c63                             ; $7bf6: $20 $6b

	ld   d, h                                        ; $7bf8: $54
	ld   e, c                                        ; $7bf9: $59
	sbc  a                                           ; $7bfa: $9f
	dec  c                                           ; $7bfb: $0d
	nop                                              ; $7bfc: $00
	ld   a, [bc]                                     ; $7bfd: $0a
	inc  e                                           ; $7bfe: $1c
	inc  b                                           ; $7bff: $04
	ld   bc, $0101                                   ; $7c00: $01 $01 $01
	sbc  l                                           ; $7c03: $9d
	ei                                               ; $7c04: $fb
	ld   d, d                                        ; $7c05: $52
	sbc  a                                           ; $7c06: $9f
	dec  c                                           ; $7c07: $0d
	nop                                              ; $7c08: $00
	ld   a, [bc]                                     ; $7c09: $0a
	rrca                                             ; $7c0a: $0f
	nop                                              ; $7c0b: $00
	ld   bc, $040d                                   ; $7c0c: $01 $0d $04
	nop                                              ; $7c0f: $00
	ld   bc, $598e                                   ; $7c10: $01 $8e $59
	ld   h, l                                        ; $7c13: $65
	adc  [hl]                                        ; $7c14: $8e
	ld   e, c                                        ; $7c15: $59
	ld   h, l                                        ; $7c16: $65
	ld   d, b                                        ; $7c17: $50
	sbc  c                                           ; $7c18: $99
	halt                                             ; $7c19: $76
	ld   h, c                                        ; $7c1a: $61
	sbc  e                                           ; $7c1b: $9b
	ld   a, c                                        ; $7c1c: $79
	dec  c                                           ; $7c1d: $0d
	ld   [bc], a                                     ; $7c1e: $02
	jr   jr_05d_7c24                                 ; $7c1f: $18 $03

	ld   e, d                                        ; $7c21: $5a
	inc  b                                           ; $7c22: $04
	inc  hl                                          ; $7c23: $23

jr_05d_7c24:
	dec  b                                           ; $7c24: $05
	inc  c                                           ; $7c25: $0c
	halt                                             ; $7c26: $76
	ld   d, d                                        ; $7c27: $52
	ld   d, h                                        ; $7c28: $54
	ld   [bc], a                                     ; $7c29: $02
	dec  d                                           ; $7c2a: $15
	ld   e, d                                        ; $7c2b: $5a
	ld   d, d                                        ; $7c2c: $52
	adc  h                                           ; $7c2d: $8c
	ld   h, l                                        ; $7c2e: $65
	ld   l, l                                        ; $7c2f: $6d
	sbc  a                                           ; $7c30: $9f
	dec  c                                           ; $7c31: $0d
	nop                                              ; $7c32: $00
	ld   a, [bc]                                     ; $7c33: $0a
	ld   bc, $9950                                   ; $7c34: $01 $50 $99
	inc  b                                           ; $7c37: $04
	xor  d                                           ; $7c38: $aa
	sbc  [hl]                                        ; $7c39: $9e
	ld   [bc], a                                     ; $7c3a: $02
	jr   jr_05d_7c40                                 ; $7c3b: $18 $03

	ld   e, d                                        ; $7c3d: $5a
	inc  b                                           ; $7c3e: $04
	inc  hl                                          ; $7c3f: $23

jr_05d_7c40:
	dec  b                                           ; $7c40: $05
	inc  c                                           ; $7c41: $0c
	ld   a, l                                        ; $7c42: $7d
	ld   b, $16                                      ; $7c43: $06 $16
	ld   b, $0a                                      ; $7c45: $06 $0a
	ld   [hl], l                                     ; $7c47: $75
	dec  c                                           ; $7c48: $0d
	ld   d, d                                        ; $7c49: $52
	ld   h, [hl]                                     ; $7c4a: $66
	adc  a                                           ; $7c4b: $8f
	sub  a                                           ; $7c4c: $97
	sbc  d                                           ; $7c4d: $9a
	ld   [hl], h                                     ; $7c4e: $74
	ld   d, d                                        ; $7c4f: $52
	sbc  c                                           ; $7c50: $99
	rst  $38                                         ; $7c51: $ff
	rst  $38                                         ; $7c52: $ff
	dec  c                                           ; $7c53: $0d
	nop                                              ; $7c54: $00
	ld   a, [bc]                                     ; $7c55: $0a
	add  hl, de                                      ; $7c56: $19
	dec  b                                           ; $7c57: $05
	inc  bc                                          ; $7c58: $03
	xor  h                                           ; $7c59: $ac
	db   $e3                                         ; $7c5a: $e3
	and  b                                           ; $7c5b: $a0
	ld   l, l                                        ; $7c5c: $6d
	ld   h, a                                        ; $7c5d: $67
	ld   e, a                                        ; $7c5e: $5f
	adc  h                                           ; $7c5f: $8c
	ld   h, l                                        ; $7c60: $65
	ld   l, l                                        ; $7c61: $6d
	nop                                              ; $7c62: $00

jr_05d_7c63:
	nop                                              ; $7c63: $00
	or   [hl]                                        ; $7c64: $b6
	db   $e3                                         ; $7c65: $e3
	and  b                                           ; $7c66: $a0
	ld   l, l                                        ; $7c67: $6d
	ld   h, a                                        ; $7c68: $67
	ld   e, a                                        ; $7c69: $5f
	adc  h                                           ; $7c6a: $8c
	ld   h, l                                        ; $7c6b: $65
	ld   l, l                                        ; $7c6c: $6d
	nop                                              ; $7c6d: $00
	ld   bc, $acf1                                   ; $7c6e: $01 $f1 $ac
	db   $e3                                         ; $7c71: $e3
	and  b                                           ; $7c72: $a0
	ld   l, l                                        ; $7c73: $6d
	ld   h, a                                        ; $7c74: $67
	ld   e, a                                        ; $7c75: $5f
	adc  h                                           ; $7c76: $8c
	ld   h, l                                        ; $7c77: $65
	ld   l, l                                        ; $7c78: $6d
	nop                                              ; $7c79: $00
	ld   [bc], a                                     ; $7c7a: $02
	rlca                                             ; $7c7b: $07
	xor  d                                           ; $7c7c: $aa
	ld   bc, $0302                                   ; $7c7d: $01 $02 $03
	ld   bc, $2000                                   ; $7c80: $01 $00 $20
	nop                                              ; $7c83: $00
	rlca                                             ; $7c84: $07
	rst  $28                                         ; $7c85: $ef
	ld   bc, $0302                                   ; $7c86: $01 $02 $03
	ld   bc, $2001                                   ; $7c89: $01 $01 $20
	nop                                              ; $7c8c: $00
	rlca                                             ; $7c8d: $07
	ld   b, e                                        ; $7c8e: $43
	ld   [bc], a                                     ; $7c8f: $02
	ld   [bc], a                                     ; $7c90: $02
	inc  bc                                          ; $7c91: $03
	ld   bc, $2002                                   ; $7c92: $01 $02 $20
	nop                                              ; $7c95: $00
	ld   b, $6d                                      ; $7c96: $06 $6d
	ld   bc, $041c                                   ; $7c98: $01 $1c $04
	nop                                              ; $7c9b: $00
	nop                                              ; $7c9c: $00
	ld   bc, $e3ac                                   ; $7c9d: $01 $ac $e3
	and  b                                           ; $7ca0: $a0
	ld   l, l                                        ; $7ca1: $6d
	ld   h, a                                        ; $7ca2: $67
	ld   e, a                                        ; $7ca3: $5f
	ld   l, l                                        ; $7ca4: $6d
	and  c                                           ; $7ca5: $a1
	ld   [hl], l                                     ; $7ca6: $75
	ld   h, l                                        ; $7ca7: $65
	sub  l                                           ; $7ca8: $95
	ld   sp, hl                                      ; $7ca9: $f9
	dec  c                                           ; $7caa: $0d
	nop                                              ; $7cab: $00
	ld   a, [bc]                                     ; $7cac: $0a
	rrca                                             ; $7cad: $0f
	nop                                              ; $7cae: $00
	ld   bc, $ff01                                   ; $7caf: $01 $01 $ff
	rst  $38                                         ; $7cb2: $ff
	rst  $38                                         ; $7cb3: $ff
	dec  c                                           ; $7cb4: $0d
	ld   [bc], a                                     ; $7cb5: $02
	jr   jr_05d_7cbb                                 ; $7cb6: $18 $03

	ld   e, d                                        ; $7cb8: $5a
	ld   a, l                                        ; $7cb9: $7d
	dec  b                                           ; $7cba: $05

jr_05d_7cbb:
	ld   c, $04                                      ; $7cbb: $0e $04
	ret                                              ; $7cbd: $c9


	inc  bc                                          ; $7cbe: $03
	ld   e, h                                        ; $7cbf: $5c
	ld   a, c                                        ; $7cc0: $79
	inc  bc                                          ; $7cc1: $03
	ld   e, l                                        ; $7cc2: $5d
	inc  b                                           ; $7cc3: $04
	rla                                              ; $7cc4: $17
	ld   h, e                                        ; $7cc5: $63
	sbc  d                                           ; $7cc6: $9a
	sbc  [hl]                                        ; $7cc7: $9e
	dec  c                                           ; $7cc8: $0d
	ld   l, e                                        ; $7cc9: $6b
	ld   h, c                                        ; $7cca: $61
	ld   [hl], l                                     ; $7ccb: $75
	ld   b, $1d                                      ; $7ccc: $06 $1d
	ld   a, l                                        ; $7cce: $7d
	rst  $38                                         ; $7ccf: $ff
	dec  c                                           ; $7cd0: $0d
	nop                                              ; $7cd1: $00
	ld   a, [bc]                                     ; $7cd2: $0a
	ld   b, $96                                      ; $7cd3: $06 $96
	ld   [bc], a                                     ; $7cd5: $02
	rrca                                             ; $7cd6: $0f
	nop                                              ; $7cd7: $00
	ld   bc, $ac01                                   ; $7cd8: $01 $01 $ac
	db   $e3                                         ; $7cdb: $e3
	and  b                                           ; $7cdc: $a0
	ld   l, l                                        ; $7cdd: $6d
	ld   h, a                                        ; $7cde: $67
	ld   e, a                                        ; $7cdf: $5f
	adc  h                                           ; $7ce0: $8c
	ld   h, l                                        ; $7ce1: $65
	ld   l, l                                        ; $7ce2: $6d
	sbc  a                                           ; $7ce3: $9f
	dec  c                                           ; $7ce4: $0d
	nop                                              ; $7ce5: $00
	ld   a, [bc]                                     ; $7ce6: $0a
	rrca                                             ; $7ce7: $0f
	nop                                              ; $7ce8: $00
	ld   bc, $6d01                                   ; $7ce9: $01 $01 $6d
	ld   h, a                                        ; $7cec: $67
	ld   e, a                                        ; $7ced: $5f
	sub  a                                           ; $7cee: $97
	sbc  d                                           ; $7cef: $9a
	ld   l, l                                        ; $7cf0: $6d
	xor  h                                           ; $7cf1: $ac
	db   $e3                                         ; $7cf2: $e3
	ld   a, l                                        ; $7cf3: $7d
	sbc  [hl]                                        ; $7cf4: $9e
	ld   e, b                                        ; $7cf5: $58
	dec  b                                           ; $7cf6: $05
	dec  c                                           ; $7cf7: $0d
	ld   a, c                                        ; $7cf8: $79
	dec  c                                           ; $7cf9: $0d
	ld   [bc], a                                     ; $7cfa: $02
	jr   jr_05d_7d00                                 ; $7cfb: $18 $03

	ld   e, d                                        ; $7cfd: $5a
	and  b                                           ; $7cfe: $a0
	dec  b                                           ; $7cff: $05

jr_05d_7d00:
	ld   c, $04                                      ; $7d00: $0e $04
	ret                                              ; $7d02: $c9


	inc  bc                                          ; $7d03: $03
	ld   e, h                                        ; $7d04: $5c
	ld   a, c                                        ; $7d05: $79
	inc  bc                                          ; $7d06: $03
	ld   e, l                                        ; $7d07: $5d
	inc  b                                           ; $7d08: $04
	rla                                              ; $7d09: $17
	ld   h, l                                        ; $7d0a: $65
	sbc  [hl]                                        ; $7d0b: $9e
	dec  c                                           ; $7d0c: $0d
	ld   l, e                                        ; $7d0d: $6b
	ld   h, c                                        ; $7d0e: $61
	ld   [hl], l                                     ; $7d0f: $75
	ld   b, $1d                                      ; $7d10: $06 $1d
	ld   a, l                                        ; $7d12: $7d
	rst  $38                                         ; $7d13: $ff
	rst  $38                                         ; $7d14: $ff
	dec  c                                           ; $7d15: $0d
	nop                                              ; $7d16: $00
	ld   a, [bc]                                     ; $7d17: $0a
	ld   b, $96                                      ; $7d18: $06 $96
	ld   [bc], a                                     ; $7d1a: $02
	rrca                                             ; $7d1b: $0f
	nop                                              ; $7d1c: $00
	ld   bc, $040d                                   ; $7d1d: $01 $0d $04
	ld   b, $01                                      ; $7d20: $06 $01
	or   [hl]                                        ; $7d22: $b6
	db   $e3                                         ; $7d23: $e3
	and  b                                           ; $7d24: $a0
	ld   l, l                                        ; $7d25: $6d
	ld   h, a                                        ; $7d26: $67
	ld   e, a                                        ; $7d27: $5f
	adc  h                                           ; $7d28: $8c
	ld   h, l                                        ; $7d29: $65
	ld   l, l                                        ; $7d2a: $6d
	sbc  a                                           ; $7d2b: $9f
	dec  c                                           ; $7d2c: $0d
	nop                                              ; $7d2d: $00
	ld   a, [bc]                                     ; $7d2e: $0a
	dec  b                                           ; $7d2f: $05
	ld   b, b                                        ; $7d30: $40
	rst  $38                                         ; $7d31: $ff
	inc  bc                                          ; $7d32: $03
	rst  $38                                         ; $7d33: $ff
	ld   bc, $2802                                   ; $7d34: $01 $02 $28
	nop                                              ; $7d37: $00
	rrca                                             ; $7d38: $0f
	nop                                              ; $7d39: $00
	ld   bc, $040d                                   ; $7d3a: $01 $0d $04
	nop                                              ; $7d3d: $00
	ld   bc, $676d                                   ; $7d3e: $01 $6d $67
	ld   e, a                                        ; $7d41: $5f
	sub  a                                           ; $7d42: $97
	sbc  d                                           ; $7d43: $9a
	ld   l, l                                        ; $7d44: $6d
	or   [hl]                                        ; $7d45: $b6
	db   $e3                                         ; $7d46: $e3
	ld   a, l                                        ; $7d47: $7d
	sbc  [hl]                                        ; $7d48: $9e
	ld   e, b                                        ; $7d49: $58
	dec  b                                           ; $7d4a: $05
	dec  c                                           ; $7d4b: $0d
	ld   a, c                                        ; $7d4c: $79
	dec  c                                           ; $7d4d: $0d
	ld   [bc], a                                     ; $7d4e: $02
	jr   jr_05d_7d54                                 ; $7d4f: $18 $03

	ld   e, d                                        ; $7d51: $5a
	and  b                                           ; $7d52: $a0
	dec  b                                           ; $7d53: $05

jr_05d_7d54:
	ld   c, $04                                      ; $7d54: $0e $04
	ret                                              ; $7d56: $c9


	inc  bc                                          ; $7d57: $03
	ld   e, h                                        ; $7d58: $5c
	ld   a, c                                        ; $7d59: $79
	inc  bc                                          ; $7d5a: $03
	ld   e, l                                        ; $7d5b: $5d
	inc  b                                           ; $7d5c: $04
	rla                                              ; $7d5d: $17
	ld   h, l                                        ; $7d5e: $65
	sbc  [hl]                                        ; $7d5f: $9e
	dec  c                                           ; $7d60: $0d
	ld   l, e                                        ; $7d61: $6b
	ld   h, c                                        ; $7d62: $61
	ld   [hl], l                                     ; $7d63: $75
	ld   b, $1d                                      ; $7d64: $06 $1d
	ld   a, l                                        ; $7d66: $7d
	rst  $38                                         ; $7d67: $ff
	rst  $38                                         ; $7d68: $ff
	dec  c                                           ; $7d69: $0d
	nop                                              ; $7d6a: $00
	ld   a, [bc]                                     ; $7d6b: $0a
	ld   b, $96                                      ; $7d6c: $06 $96
	ld   [bc], a                                     ; $7d6e: $02
	rrca                                             ; $7d6f: $0f
	nop                                              ; $7d70: $00
	ld   bc, $040d                                   ; $7d71: $01 $0d $04
	ld   bc, $f101                                   ; $7d74: $01 $01 $f1
	xor  h                                           ; $7d77: $ac
	db   $e3                                         ; $7d78: $e3
	and  b                                           ; $7d79: $a0
	ld   l, l                                        ; $7d7a: $6d
	ld   h, a                                        ; $7d7b: $67
	ld   e, a                                        ; $7d7c: $5f
	adc  h                                           ; $7d7d: $8c
	ld   h, l                                        ; $7d7e: $65
	ld   l, l                                        ; $7d7f: $6d
	sbc  a                                           ; $7d80: $9f
	dec  c                                           ; $7d81: $0d
	nop                                              ; $7d82: $00
	ld   a, [bc]                                     ; $7d83: $0a
	dec  b                                           ; $7d84: $05
	ld   b, b                                        ; $7d85: $40
	rst  $38                                         ; $7d86: $ff
	inc  bc                                          ; $7d87: $03
	rst  $38                                         ; $7d88: $ff
	ld   bc, $2801                                   ; $7d89: $01 $01 $28
	nop                                              ; $7d8c: $00
	rrca                                             ; $7d8d: $0f
	nop                                              ; $7d8e: $00
	ld   bc, $040d                                   ; $7d8f: $01 $0d $04
	nop                                              ; $7d92: $00
	ld   bc, $676d                                   ; $7d93: $01 $6d $67
	ld   e, a                                        ; $7d96: $5f
	sub  a                                           ; $7d97: $97
	sbc  d                                           ; $7d98: $9a
	ld   l, l                                        ; $7d99: $6d
	pop  af                                          ; $7d9a: $f1
	xor  h                                           ; $7d9b: $ac
	db   $e3                                         ; $7d9c: $e3
	ld   a, l                                        ; $7d9d: $7d
	sbc  [hl]                                        ; $7d9e: $9e
	ld   e, b                                        ; $7d9f: $58
	dec  b                                           ; $7da0: $05
	dec  c                                           ; $7da1: $0d
	ld   a, c                                        ; $7da2: $79
	dec  c                                           ; $7da3: $0d
	ld   [bc], a                                     ; $7da4: $02
	jr   jr_05d_7daa                                 ; $7da5: $18 $03

	ld   e, d                                        ; $7da7: $5a
	and  b                                           ; $7da8: $a0
	dec  b                                           ; $7da9: $05

jr_05d_7daa:
	ld   c, $04                                      ; $7daa: $0e $04
	ret                                              ; $7dac: $c9


	inc  bc                                          ; $7dad: $03
	ld   e, h                                        ; $7dae: $5c
	ld   a, c                                        ; $7daf: $79
	inc  bc                                          ; $7db0: $03
	ld   e, l                                        ; $7db1: $5d
	inc  b                                           ; $7db2: $04
	rla                                              ; $7db3: $17
	ld   h, l                                        ; $7db4: $65
	sbc  [hl]                                        ; $7db5: $9e
	dec  c                                           ; $7db6: $0d
	ld   l, e                                        ; $7db7: $6b
	ld   h, c                                        ; $7db8: $61
	ld   [hl], l                                     ; $7db9: $75
	ld   b, $1d                                      ; $7dba: $06 $1d
	ld   a, l                                        ; $7dbc: $7d
	rst  $38                                         ; $7dbd: $ff
	rst  $38                                         ; $7dbe: $ff
	dec  c                                           ; $7dbf: $0d
	nop                                              ; $7dc0: $00
	ld   a, [bc]                                     ; $7dc1: $0a
	add  hl, de                                      ; $7dc2: $19
	dec  b                                           ; $7dc3: $05
	inc  bc                                          ; $7dc4: $03
	inc  b                                           ; $7dc5: $04
	and  c                                           ; $7dc6: $a1
	ld   h, l                                        ; $7dc7: $65
	ld   d, d                                        ; $7dc8: $52
	ld   [bc], a                                     ; $7dc9: $02
	add  hl, de                                      ; $7dca: $19
	inc  b                                           ; $7dcb: $04
	add  l                                           ; $7dcc: $85
	halt                                             ; $7dcd: $76
	ld   [bc], a                                     ; $7dce: $02
	add  [hl]                                        ; $7dcf: $86
	ld   d, d                                        ; $7dd0: $52
	adc  h                                           ; $7dd1: $8c
	ld   h, l                                        ; $7dd2: $65
	ld   l, l                                        ; $7dd3: $6d
	nop                                              ; $7dd4: $00
	nop                                              ; $7dd5: $00
	inc  b                                           ; $7dd6: $04
	add  [hl]                                        ; $7dd7: $86
	ld   d, d                                        ; $7dd8: $52
	ld   [bc], a                                     ; $7dd9: $02
	add  a                                           ; $7dda: $87
	and  b                                           ; $7ddb: $a0
	inc  b                                           ; $7ddc: $04
	ld   [bc], a                                     ; $7ddd: $02
	inc  bc                                          ; $7dde: $03
	ld   sp, hl                                      ; $7ddf: $f9
	ld   h, l                                        ; $7de0: $65
	adc  h                                           ; $7de1: $8c
	ld   h, l                                        ; $7de2: $65
	ld   l, l                                        ; $7de3: $6d
	nop                                              ; $7de4: $00
	ld   bc, $b4c0                                   ; $7de5: $01 $c0 $b4
	halt                                             ; $7de8: $76
	cp   d                                           ; $7de9: $ba
	db   $e4                                         ; $7dea: $e4
	and  a                                           ; $7deb: $a7
	and  b                                           ; $7dec: $a0
	halt                                             ; $7ded: $76
	sbc  b                                           ; $7dee: $98
	adc  h                                           ; $7def: $8c
	ld   h, l                                        ; $7df0: $65
	ld   l, l                                        ; $7df1: $6d
	nop                                              ; $7df2: $00
	ld   [bc], a                                     ; $7df3: $02
	rlca                                             ; $7df4: $07
	ld   bc, $0203                                   ; $7df5: $01 $03 $02
	inc  bc                                          ; $7df8: $03
	ld   bc, $2000                                   ; $7df9: $01 $00 $20
	nop                                              ; $7dfc: $00
	rlca                                             ; $7dfd: $07
	dec  de                                          ; $7dfe: $1b
	inc  bc                                          ; $7dff: $03
	ld   [bc], a                                     ; $7e00: $02
	inc  bc                                          ; $7e01: $03
	ld   bc, $2001                                   ; $7e02: $01 $01 $20
	nop                                              ; $7e05: $00
	rlca                                             ; $7e06: $07
	ld   b, b                                        ; $7e07: $40
	inc  bc                                          ; $7e08: $03
	ld   [bc], a                                     ; $7e09: $02
	inc  bc                                          ; $7e0a: $03
	ld   bc, $2002                                   ; $7e0b: $01 $02 $20
	nop                                              ; $7e0e: $00
	ld   b, $e6                                      ; $7e0f: $06 $e6
	ld   [bc], a                                     ; $7e11: $02
	inc  e                                           ; $7e12: $1c
	inc  b                                           ; $7e13: $04
	nop                                              ; $7e14: $00
	nop                                              ; $7e15: $00
	ld   bc, $7658                                   ; $7e16: $01 $58 $76
	add  b                                           ; $7e19: $80
	adc  a                                           ; $7e1a: $8f
	ld   h, e                                        ; $7e1b: $63
	adc  h                                           ; $7e1c: $8c
	halt                                             ; $7e1d: $76
	dec  c                                           ; $7e1e: $0d
	ld   d, b                                        ; $7e1f: $50
	ld   [hl], c                                     ; $7e20: $71
	ld   l, l                                        ; $7e21: $6d
	and  c                                           ; $7e22: $a1
	ld   l, [hl]                                     ; $7e23: $6e
	sub  [hl]                                        ; $7e24: $96
	ld   a, e                                        ; $7e25: $7b
	ld   sp, hl                                      ; $7e26: $f9
	dec  c                                           ; $7e27: $0d
	nop                                              ; $7e28: $00
	ld   a, [bc]                                     ; $7e29: $0a
	ld   b, $63                                      ; $7e2a: $06 $63
	inc  bc                                          ; $7e2c: $03
	rrca                                             ; $7e2d: $0f
	nop                                              ; $7e2e: $00
	ld   bc, $0401                                   ; $7e2f: $01 $01 $04
	and  c                                           ; $7e32: $a1
	ld   h, l                                        ; $7e33: $65
	ld   d, d                                        ; $7e34: $52
	ld   [bc], a                                     ; $7e35: $02
	add  hl, de                                      ; $7e36: $19
	inc  b                                           ; $7e37: $04
	add  l                                           ; $7e38: $85
	halt                                             ; $7e39: $76
	ld   [bc], a                                     ; $7e3a: $02
	add  [hl]                                        ; $7e3b: $86
	ld   d, d                                        ; $7e3c: $52
	adc  h                                           ; $7e3d: $8c
	ld   h, l                                        ; $7e3e: $65
	ld   l, l                                        ; $7e3f: $6d
	sbc  a                                           ; $7e40: $9f
	dec  c                                           ; $7e41: $0d
	nop                                              ; $7e42: $00
	ld   a, [bc]                                     ; $7e43: $0a
	ld   b, $63                                      ; $7e44: $06 $63
	inc  bc                                          ; $7e46: $03
	rrca                                             ; $7e47: $0f
	nop                                              ; $7e48: $00
	ld   bc, $040d                                   ; $7e49: $01 $0d $04
	ld   b, $01                                      ; $7e4c: $06 $01
	inc  b                                           ; $7e4e: $04
	add  [hl]                                        ; $7e4f: $86
	ld   d, d                                        ; $7e50: $52
	ld   [bc], a                                     ; $7e51: $02
	add  a                                           ; $7e52: $87
	and  b                                           ; $7e53: $a0
	inc  b                                           ; $7e54: $04
	ld   [bc], a                                     ; $7e55: $02
	inc  bc                                          ; $7e56: $03
	ld   sp, hl                                      ; $7e57: $f9
	ld   h, l                                        ; $7e58: $65
	adc  h                                           ; $7e59: $8c
	ld   h, l                                        ; $7e5a: $65
	ld   l, l                                        ; $7e5b: $6d
	sbc  a                                           ; $7e5c: $9f
	dec  c                                           ; $7e5d: $0d
	nop                                              ; $7e5e: $00
	ld   a, [bc]                                     ; $7e5f: $0a
	dec  b                                           ; $7e60: $05
	ld   b, b                                        ; $7e61: $40
	rst  $38                                         ; $7e62: $ff
	inc  bc                                          ; $7e63: $03
	rst  $38                                         ; $7e64: $ff
	ld   bc, $2802                                   ; $7e65: $01 $02 $28
	nop                                              ; $7e68: $00
	ld   b, $63                                      ; $7e69: $06 $63
	inc  bc                                          ; $7e6b: $03
	rrca                                             ; $7e6c: $0f
	nop                                              ; $7e6d: $00
	ld   bc, $040d                                   ; $7e6e: $01 $0d $04
	ld   bc, $c001                                   ; $7e71: $01 $01 $c0
	or   h                                           ; $7e74: $b4
	halt                                             ; $7e75: $76
	cp   d                                           ; $7e76: $ba
	db   $e4                                         ; $7e77: $e4
	and  a                                           ; $7e78: $a7
	and  b                                           ; $7e79: $a0
	halt                                             ; $7e7a: $76
	sbc  b                                           ; $7e7b: $98
	adc  h                                           ; $7e7c: $8c
	ld   h, l                                        ; $7e7d: $65
	ld   l, l                                        ; $7e7e: $6d
	sbc  a                                           ; $7e7f: $9f
	dec  c                                           ; $7e80: $0d
	nop                                              ; $7e81: $00
	ld   a, [bc]                                     ; $7e82: $0a
	dec  b                                           ; $7e83: $05
	ld   b, b                                        ; $7e84: $40
	rst  $38                                         ; $7e85: $ff
	inc  bc                                          ; $7e86: $03
	rst  $38                                         ; $7e87: $ff
	ld   bc, $2801                                   ; $7e88: $01 $01 $28
	nop                                              ; $7e8b: $00
	ld   b, $63                                      ; $7e8c: $06 $63
	inc  bc                                          ; $7e8e: $03
	rrca                                             ; $7e8f: $0f
	nop                                              ; $7e90: $00
	ld   bc, $040d                                   ; $7e91: $01 $0d $04
	nop                                              ; $7e94: $00
	ld   bc, $a16b                                   ; $7e95: $01 $6b $a1
	ld   a, b                                        ; $7e98: $78
	ld   h, c                                        ; $7e99: $61
	and  c                                           ; $7e9a: $a1
	ld   a, b                                        ; $7e9b: $78
	ld   [hl], l                                     ; $7e9c: $75
	sbc  [hl]                                        ; $7e9d: $9e
	dec  b                                           ; $7e9e: $05
	ld   c, $04                                      ; $7e9f: $0e $04
	ret                                              ; $7ea1: $c9


	inc  bc                                          ; $7ea2: $03
	ld   e, h                                        ; $7ea3: $5c
	and  b                                           ; $7ea4: $a0
	ld   [bc], a                                     ; $7ea5: $02
	xor  d                                           ; $7ea6: $aa
	ld   a, c                                        ; $7ea7: $79
	dec  c                                           ; $7ea8: $0d
	ld   h, l                                        ; $7ea9: $65
	ld   l, l                                        ; $7eaa: $6d
	ld   [bc], a                                     ; $7eab: $02
	jr   jr_05d_7eb1                                 ; $7eac: $18 $03

	ld   e, d                                        ; $7eae: $5a
	inc  b                                           ; $7eaf: $04
	inc  hl                                          ; $7eb0: $23

jr_05d_7eb1:
	dec  b                                           ; $7eb1: $05
	inc  c                                           ; $7eb2: $0c
	ld   a, l                                        ; $7eb3: $7d
	sbc  [hl]                                        ; $7eb4: $9e
	ld   e, b                                        ; $7eb5: $58
	adc  l                                           ; $7eb6: $8d
	sub  d                                           ; $7eb7: $92
	ld   h, b                                        ; $7eb8: $60
	ld   a, h                                        ; $7eb9: $7c
	dec  c                                           ; $7eba: $0d
	inc  b                                           ; $7ebb: $04
	ld   bc, $6b03                                   ; $7ebc: $01 $03 $6b
	inc  b                                           ; $7ebf: $04
	add  a                                           ; $7ec0: $87
	and  b                                           ; $7ec1: $a0
	ld   d, b                                        ; $7ec2: $50
	ld   e, a                                        ; $7ec3: $5f
	adc  h                                           ; $7ec4: $8c
	ld   h, l                                        ; $7ec5: $65
	ld   l, l                                        ; $7ec6: $6d
	sbc  a                                           ; $7ec7: $9f
	dec  c                                           ; $7ec8: $0d
	nop                                              ; $7ec9: $00
	ld   a, [bc]                                     ; $7eca: $0a
	ld   bc, $9967                                   ; $7ecb: $01 $67 $99
	halt                                             ; $7ece: $76
	rst  $38                                         ; $7ecf: $ff
	rst  $38                                         ; $7ed0: $ff
	dec  c                                           ; $7ed1: $0d
	nop                                              ; $7ed2: $00
	ld   a, [bc]                                     ; $7ed3: $0a
	add  hl, de                                      ; $7ed4: $19
	dec  b                                           ; $7ed5: $05
	inc  bc                                          ; $7ed6: $03
	inc  b                                           ; $7ed7: $04
	ld   c, $04                                      ; $7ed8: $0e $04
	ld   h, e                                        ; $7eda: $63
	inc  bc                                          ; $7edb: $03
	xor  a                                           ; $7edc: $af
	inc  b                                           ; $7edd: $04
	ld   h, e                                        ; $7ede: $63
	ld   e, d                                        ; $7edf: $5a
	ld   h, h                                        ; $7ee0: $64
	ld   [hl], c                                     ; $7ee1: $71
	ld   e, l                                        ; $7ee2: $5d
	ld   h, h                                        ; $7ee3: $64
	ld   e, l                                        ; $7ee4: $5d
	nop                                              ; $7ee5: $00
	nop                                              ; $7ee6: $00
	inc  b                                           ; $7ee7: $04
	xor  h                                           ; $7ee8: $ac
	ld   d, d                                        ; $7ee9: $52
	ld   e, a                                        ; $7eea: $5f
	adc  [hl]                                        ; $7eeb: $8e
	sbc  b                                           ; $7eec: $98
	ld   e, d                                        ; $7eed: $5a
	inc  bc                                          ; $7eee: $03
	add  b                                           ; $7eef: $80
	ld   [hl], h                                     ; $7ef0: $74
	ld   e, e                                        ; $7ef1: $5b
	adc  h                                           ; $7ef2: $8c
	ld   h, l                                        ; $7ef3: $65
	ld   l, l                                        ; $7ef4: $6d
	nop                                              ; $7ef5: $00
	ld   bc, $0b04                                   ; $7ef6: $01 $04 $0b
	inc  b                                           ; $7ef9: $04
	pop  de                                          ; $7efa: $d1
	ld   a, l                                        ; $7efb: $7d
	ld   e, b                                        ; $7efc: $58
	add  a                                           ; $7efd: $87
	and  c                                           ; $7efe: $a1
	halt                                             ; $7eff: $76
	ld   d, h                                        ; $7f00: $54
	ld   [hl], l                                     ; $7f01: $75
	ld   h, l                                        ; $7f02: $65
	ld   l, l                                        ; $7f03: $6d
	nop                                              ; $7f04: $00
	ld   [bc], a                                     ; $7f05: $02
	rlca                                             ; $7f06: $07
	ld   hl, $0204                                   ; $7f07: $21 $04 $02
	inc  bc                                          ; $7f0a: $03
	ld   bc, $2000                                   ; $7f0b: $01 $00 $20
	nop                                              ; $7f0e: $00
	rlca                                             ; $7f0f: $07
	ld   l, b                                        ; $7f10: $68
	inc  b                                           ; $7f11: $04
	ld   [bc], a                                     ; $7f12: $02
	inc  bc                                          ; $7f13: $03
	ld   bc, $2001                                   ; $7f14: $01 $01 $20
	nop                                              ; $7f17: $00
	rlca                                             ; $7f18: $07
	and  c                                           ; $7f19: $a1
	inc  b                                           ; $7f1a: $04
	ld   [bc], a                                     ; $7f1b: $02
	inc  bc                                          ; $7f1c: $03
	ld   bc, $2002                                   ; $7f1d: $01 $02 $20
	nop                                              ; $7f20: $00
	ld   b, $f8                                      ; $7f21: $06 $f8
	inc  bc                                          ; $7f23: $03
	inc  e                                           ; $7f24: $1c
	inc  b                                           ; $7f25: $04
	nop                                              ; $7f26: $00
	nop                                              ; $7f27: $00
	ld   bc, $9b65                                   ; $7f28: $01 $65 $9b
	ld   d, d                                        ; $7f2b: $52
	or   d                                           ; $7f2c: $b2
	ldh  [c], a                                      ; $7f2d: $e2
	db   $ec                                         ; $7f2e: $ec
	ld   e, d                                        ; $7f2f: $5a
	ld   [hl], l                                     ; $7f30: $75
	ld   [hl], h                                     ; $7f31: $74
	ld   e, e                                        ; $7f32: $5b
	ld   [hl], h                                     ; $7f33: $74
	dec  c                                           ; $7f34: $0d
	ld   e, b                                        ; $7f35: $58
	ld   h, [hl]                                     ; $7f36: $66
	ld   d, d                                        ; $7f37: $52
	ld   h, e                                        ; $7f38: $63
	and  c                                           ; $7f39: $a1
	ld   a, c                                        ; $7f3a: $79
	ld   a, b                                        ; $7f3b: $78
	ld   [hl], c                                     ; $7f3c: $71
	ld   l, a                                        ; $7f3d: $6f
	sub  c                                           ; $7f3e: $91
	ld   [hl], c                                     ; $7f3f: $71
	ld   l, l                                        ; $7f40: $6d
	and  c                                           ; $7f41: $a1
	dec  c                                           ; $7f42: $0d
	ld   l, [hl]                                     ; $7f43: $6e
	sub  [hl]                                        ; $7f44: $96
	ld   a, e                                        ; $7f45: $7b
	ld   sp, hl                                      ; $7f46: $f9
	dec  c                                           ; $7f47: $0d
	nop                                              ; $7f48: $00
	ld   a, [bc]                                     ; $7f49: $0a
	ld   b, $e9                                      ; $7f4a: $06 $e9
	inc  b                                           ; $7f4c: $04
	rrca                                             ; $7f4d: $0f
	nop                                              ; $7f4e: $00
	ld   bc, $040d                                   ; $7f4f: $01 $0d $04
	ld   bc, $0401                                   ; $7f52: $01 $01 $04
	ld   c, $04                                      ; $7f55: $0e $04
	ld   h, e                                        ; $7f57: $63
	inc  bc                                          ; $7f58: $03
	xor  a                                           ; $7f59: $af
	inc  b                                           ; $7f5a: $04
	ld   h, e                                        ; $7f5b: $63
	ld   e, d                                        ; $7f5c: $5a
	ld   h, h                                        ; $7f5d: $64
	ld   [hl], c                                     ; $7f5e: $71
	ld   e, l                                        ; $7f5f: $5d
	ld   h, h                                        ; $7f60: $64
	ld   e, l                                        ; $7f61: $5d
	ld   a, [$020d]                                  ; $7f62: $fa $0d $02
	jr   jr_05d_7f6a                                 ; $7f65: $18 $03

	ld   e, d                                        ; $7f67: $5a
	inc  b                                           ; $7f68: $04
	inc  hl                                          ; $7f69: $23

jr_05d_7f6a:
	dec  b                                           ; $7f6a: $05
	inc  c                                           ; $7f6b: $0c
	ld   a, l                                        ; $7f6c: $7d
	sbc  [hl]                                        ; $7f6d: $9e
	sub  b                                           ; $7f6e: $90
	ld   d, h                                        ; $7f6f: $54
	inc  bc                                          ; $7f70: $03
	ld   h, b                                        ; $7f71: $60
	ld   d, h                                        ; $7f72: $54
	ld   l, a                                        ; $7f73: $6f
	sbc  l                                           ; $7f74: $9d
	ld   [hl], l                                     ; $7f75: $75
	dec  c                                           ; $7f76: $0d
	ld   h, l                                        ; $7f77: $65
	ld   d, b                                        ; $7f78: $50
	sbc  l                                           ; $7f79: $9d
	ld   l, c                                        ; $7f7a: $69
	ld   a, c                                        ; $7f7b: $79
	ld   e, l                                        ; $7f7c: $5d
	sub  a                                           ; $7f7d: $97
	ld   h, l                                        ; $7f7e: $65
	adc  h                                           ; $7f7f: $8c
	ld   h, l                                        ; $7f80: $65
	ld   l, l                                        ; $7f81: $6d
	halt                                             ; $7f82: $76
	ld   h, e                                        ; $7f83: $63
	sbc  a                                           ; $7f84: $9f
	dec  c                                           ; $7f85: $0d
	nop                                              ; $7f86: $00
	ld   a, [bc]                                     ; $7f87: $0a
	dec  b                                           ; $7f88: $05
	ld   b, b                                        ; $7f89: $40
	rst  $38                                         ; $7f8a: $ff
	inc  bc                                          ; $7f8b: $03
	rst  $38                                         ; $7f8c: $ff
	ld   bc, $2804                                   ; $7f8d: $01 $04 $28
	nop                                              ; $7f90: $00
	ld   b, $e9                                      ; $7f91: $06 $e9
	inc  b                                           ; $7f93: $04
	rrca                                             ; $7f94: $0f
	nop                                              ; $7f95: $00
	ld   bc, $0401                                   ; $7f96: $01 $01 $04
	xor  h                                           ; $7f99: $ac
	ld   d, d                                        ; $7f9a: $52
	ld   e, a                                        ; $7f9b: $5f
	adc  [hl]                                        ; $7f9c: $8e
	sbc  b                                           ; $7f9d: $98
	ld   e, d                                        ; $7f9e: $5a
	inc  bc                                          ; $7f9f: $03
	add  b                                           ; $7fa0: $80
	ld   [hl], h                                     ; $7fa1: $74
	ld   e, e                                        ; $7fa2: $5b
	adc  h                                           ; $7fa3: $8c
	ld   h, l                                        ; $7fa4: $65
	ld   l, l                                        ; $7fa5: $6d
	sbc  a                                           ; $7fa6: $9f
	dec  c                                           ; $7fa7: $0d
	ld   l, e                                        ; $7fa8: $6b
	ld   h, l                                        ; $7fa9: $65
	ld   [hl], h                                     ; $7faa: $74
	ld   [bc], a                                     ; $7fab: $02
	jr   jr_05d_7fb1                                 ; $7fac: $18 $03

	ld   e, d                                        ; $7fae: $5a
	inc  b                                           ; $7faf: $04
	inc  hl                                          ; $7fb0: $23

jr_05d_7fb1:
	dec  b                                           ; $7fb1: $05
	inc  c                                           ; $7fb2: $0c
	ld   a, l                                        ; $7fb3: $7d
	sbc  [hl]                                        ; $7fb4: $9e
	sub  [hl]                                        ; $7fb5: $96
	adc  d                                           ; $7fb6: $8a
	sub  [hl]                                        ; $7fb7: $96
	adc  d                                           ; $7fb8: $8a
	ld   a, h                                        ; $7fb9: $7c
	dec  c                                           ; $7fba: $0d
	ld   e, b                                        ; $7fbb: $58
	ld   h, [hl]                                     ; $7fbc: $66
	ld   d, d                                        ; $7fbd: $52
	ld   h, e                                        ; $7fbe: $63
	and  c                                           ; $7fbf: $a1
	ld   a, c                                        ; $7fc0: $79
	ld   a, b                                        ; $7fc1: $78
	ld   [hl], c                                     ; $7fc2: $71
	ld   l, l                                        ; $7fc3: $6d
	halt                                             ; $7fc4: $76
	ld   h, e                                        ; $7fc5: $63
	sbc  a                                           ; $7fc6: $9f
	dec  c                                           ; $7fc7: $0d
	nop                                              ; $7fc8: $00
	ld   a, [bc]                                     ; $7fc9: $0a
	ld   b, $e9                                      ; $7fca: $06 $e9
	inc  b                                           ; $7fcc: $04
	rrca                                             ; $7fcd: $0f
	nop                                              ; $7fce: $00
	ld   bc, $040d                                   ; $7fcf: $01 $0d $04
	ld   bc, $0401                                   ; $7fd2: $01 $01 $04
	dec  bc                                          ; $7fd5: $0b
	inc  b                                           ; $7fd6: $04
	pop  de                                          ; $7fd7: $d1
	ld   a, l                                        ; $7fd8: $7d
	ld   e, b                                        ; $7fd9: $58
	add  a                                           ; $7fda: $87
	and  c                                           ; $7fdb: $a1
	halt                                             ; $7fdc: $76
	ld   d, h                                        ; $7fdd: $54
	ld   [hl], l                                     ; $7fde: $75
	ld   h, l                                        ; $7fdf: $65
	ld   l, l                                        ; $7fe0: $6d
	sbc  a                                           ; $7fe1: $9f
	dec  c                                           ; $7fe2: $0d
	ld   [bc], a                                     ; $7fe3: $02
	jr   jr_05d_7fe9                                 ; $7fe4: $18 $03

	ld   e, d                                        ; $7fe6: $5a
	inc  b                                           ; $7fe7: $04
	inc  hl                                          ; $7fe8: $23

jr_05d_7fe9:
	dec  b                                           ; $7fe9: $05
	inc  c                                           ; $7fea: $0c
	ld   a, l                                        ; $7feb: $7d
	dec  b                                           ; $7fec: $05
	ld   c, $04                                      ; $7fed: $0e $04
	ret                                              ; $7fef: $c9


	inc  bc                                          ; $7ff0: $03
	ld   e, h                                        ; $7ff1: $5c
	and  b                                           ; $7ff2: $a0
	dec  b                                           ; $7ff3: $05
	pop  de                                          ; $7ff4: $d1
	ld   d, d                                        ; $7ff5: $52
	ld   a, b                                        ; $7ff6: $78
	ld   e, d                                        ; $7ff7: $5a
	sub  a                                           ; $7ff8: $97
	dec  c                                           ; $7ff9: $0d
	ld   l, e                                        ; $7ffa: $6b
	sbc  d                                           ; $7ffb: $9a
	and  b                                           ; $7ffc: $a0
	inc  bc                                          ; $7ffd: $03
	ld   l, d                                        ; $7ffe: $6a
	add  a                                           ; $7fff: $87
