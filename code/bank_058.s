; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $058", ROMX[$4000], BANK[$58]

	and  e                                           ; $4000: $a3
	and  l                                           ; $4001: $a5
	db   $ec                                         ; $4002: $ec
	cp   d                                           ; $4003: $ba
	ld   a, c                                        ; $4004: $79
	ld   [hl], d                                     ; $4005: $72
	ld   d, d                                        ; $4006: $52
	ld   [hl], h                                     ; $4007: $74
	ld   [bc], a                                     ; $4008: $02
	jp   nz, $005d                                   ; $4009: $c2 $5d $00

	nop                                              ; $400c: $00
	inc  b                                           ; $400d: $04
	ld   c, $03                                      ; $400e: $0e $03
	sub  b                                           ; $4010: $90
	ld   a, c                                        ; $4011: $79
	ld   [hl], d                                     ; $4012: $72
	ld   d, d                                        ; $4013: $52
	ld   [hl], h                                     ; $4014: $74
	ld   [bc], a                                     ; $4015: $02
	jp   nz, $005d                                   ; $4016: $c2 $5d $00

	ld   bc, $5d63                                   ; $4019: $01 $63 $5d
	sub  a                                           ; $401c: $97
	ld   a, c                                        ; $401d: $79
	ld   [hl], d                                     ; $401e: $72
	ld   d, d                                        ; $401f: $52
	ld   [hl], h                                     ; $4020: $74
	ld   [bc], a                                     ; $4021: $02
	jp   nz, $005d                                   ; $4022: $c2 $5d $00

	ld   [bc], a                                     ; $4025: $02
	rlca                                             ; $4026: $07
	or   b                                           ; $4027: $b0
	nop                                              ; $4028: $00
	ld   [bc], a                                     ; $4029: $02
	inc  bc                                          ; $402a: $03
	ld   bc, $2000                                   ; $402b: $01 $00 $20
	nop                                              ; $402e: $00
	rlca                                             ; $402f: $07
	ld   a, h                                        ; $4030: $7c
	ld   bc, $0302                                   ; $4031: $01 $02 $03
	ld   bc, $2001                                   ; $4034: $01 $01 $20
	nop                                              ; $4037: $00
	rlca                                             ; $4038: $07
	add  hl, de                                      ; $4039: $19
	ld   [bc], a                                     ; $403a: $02
	ld   [bc], a                                     ; $403b: $02
	inc  bc                                          ; $403c: $03
	ld   bc, $2002                                   ; $403d: $01 $02 $20
	nop                                              ; $4040: $00
	ld   b, $8e                                      ; $4041: $06 $8e
	nop                                              ; $4043: $00
	rrca                                             ; $4044: $0f
	ld   [bc], a                                     ; $4045: $02
	nop                                              ; $4046: $00
	ld   bc, $a502                                   ; $4047: $01 $02 $a5
	inc  b                                           ; $404a: $04
	xor  d                                           ; $404b: $aa
	sub  b                                           ; $404c: $90
	ld   [bc], a                                     ; $404d: $02
	jr   nz, jr_058_4054                             ; $404e: $20 $04

	xor  d                                           ; $4050: $aa
	sbc  [hl]                                        ; $4051: $9e
	ld   e, d                                        ; $4052: $5a
	and  c                                           ; $4053: $a1

jr_058_4054:
	ld   a, [hl]                                     ; $4054: $7e
	sbc  b                                           ; $4055: $98
	ld   a, b                                        ; $4056: $78
	ld   h, e                                        ; $4057: $63
	ld   d, d                                        ; $4058: $52
	sbc  a                                           ; $4059: $9f
	dec  c                                           ; $405a: $0d
	nop                                              ; $405b: $00
	ld   a, [bc]                                     ; $405c: $0a
	dec  c                                           ; $405d: $0d
	nop                                              ; $405e: $00
	nop                                              ; $405f: $00
	rrca                                             ; $4060: $0f
	nop                                              ; $4061: $00
	ld   bc, $1e09                                   ; $4062: $01 $09 $1e
	nop                                              ; $4065: $00
	rrca                                             ; $4066: $0f
	nop                                              ; $4067: $00
	ld   bc, $a301                                   ; $4068: $01 $01 $a3
	and  l                                           ; $406b: $a5
	db   $ec                                         ; $406c: $ec
	cp   d                                           ; $406d: $ba
	ld   [hl], c                                     ; $406e: $71
	ld   [hl], h                                     ; $406f: $74
	ld   h, a                                        ; $4070: $67
	adc  l                                           ; $4071: $8d
	sbc  d                                           ; $4072: $9a
	ld   h, e                                        ; $4073: $63
	and  c                                           ; $4074: $a1
	ld   e, c                                        ; $4075: $59
	sub  a                                           ; $4076: $97
	dec  c                                           ; $4077: $0d
	ld   [bc], a                                     ; $4078: $02
	sub  l                                           ; $4079: $95
	ld   [hl], h                                     ; $407a: $74
	sbc  [hl]                                        ; $407b: $9e
	ld   [hl], a                                     ; $407c: $77
	and  c                                           ; $407d: $a1
	ld   a, b                                        ; $407e: $78
	ld   [bc], a                                     ; $407f: $02
	cp   b                                           ; $4080: $b8
	ld   [hl], l                                     ; $4081: $75
	ld   h, a                                        ; $4082: $67
	ld   e, c                                        ; $4083: $59
	ld   sp, hl                                      ; $4084: $f9
	dec  c                                           ; $4085: $0d
	nop                                              ; $4086: $00
	ld   a, [bc]                                     ; $4087: $0a
	rrca                                             ; $4088: $0f
	ld   [bc], a                                     ; $4089: $02
	nop                                              ; $408a: $00
	ld   bc, $a5a3                                   ; $408b: $01 $a3 $a5
	db   $ec                                         ; $408e: $ec
	cp   d                                           ; $408f: $ba
	ld   [hl], l                                     ; $4090: $75
	ld   h, a                                        ; $4091: $67
	ld   a, h                                        ; $4092: $7c
	ld   sp, hl                                      ; $4093: $f9
	dec  c                                           ; $4094: $0d
	sbc  l                                           ; $4095: $9d
	ld   e, d                                        ; $4096: $5a
	adc  h                                           ; $4097: $8c
	adc  h                                           ; $4098: $8c
	ld   [hl], l                                     ; $4099: $75
	sbc  [hl]                                        ; $409a: $9e
	inc  bc                                          ; $409b: $03
	sub  h                                           ; $409c: $94
	inc  b                                           ; $409d: $04
	sbc  [hl]                                        ; $409e: $9e
	inc  bc                                          ; $409f: $03
	ld   c, [hl]                                     ; $40a0: $4e
	inc  bc                                          ; $40a1: $03
	ld   l, e                                        ; $40a2: $6b
	ld   [hl], l                                     ; $40a3: $75
	sbc  [hl]                                        ; $40a4: $9e
	dec  c                                           ; $40a5: $0d
	adc  h                                           ; $40a6: $8c
	ld   l, [hl]                                     ; $40a7: $6e
	adc  h                                           ; $40a8: $8c
	ld   l, [hl]                                     ; $40a9: $6e
	ld   e, b                                        ; $40aa: $58
	inc  bc                                          ; $40ab: $03
	add  [hl]                                        ; $40ac: $86
	inc  bc                                          ; $40ad: $03
	sbc  b                                           ; $40ae: $98
	ld   [hl], l                                     ; $40af: $75
	ld   h, a                                        ; $40b0: $67
	sbc  l                                           ; $40b1: $9d
	ld   a, e                                        ; $40b2: $7b
	sbc  a                                           ; $40b3: $9f
	dec  c                                           ; $40b4: $0d
	nop                                              ; $40b5: $00
	ld   a, [bc]                                     ; $40b6: $0a
	ld   bc, $9403                                   ; $40b7: $01 $03 $94
	inc  b                                           ; $40ba: $04
	sbc  [hl]                                        ; $40bb: $9e
	ld   [hl], l                                     ; $40bc: $75
	ld   a, l                                        ; $40bd: $7d
	inc  b                                           ; $40be: $04
	ld   c, $03                                      ; $40bf: $0e $03
	add  d                                           ; $40c1: $82
	ld   a, h                                        ; $40c2: $7c
	ld   [hl], d                                     ; $40c3: $72
	sub  b                                           ; $40c4: $90
	sbc  b                                           ; $40c5: $98
	ld   [hl], l                                     ; $40c6: $75
	dec  c                                           ; $40c7: $0d
	ld   d, d                                        ; $40c8: $52
	sbc  c                                           ; $40c9: $99
	ld   e, c                                        ; $40ca: $59
	sub  b                                           ; $40cb: $90
	ld   h, l                                        ; $40cc: $65
	sbc  d                                           ; $40cd: $9a
	ld   a, b                                        ; $40ce: $78
	ld   d, d                                        ; $40cf: $52
	ld   e, a                                        ; $40d0: $5f
	sbc  d                                           ; $40d1: $9a
	ld   [hl], a                                     ; $40d2: $77
	dec  c                                           ; $40d3: $0d
	halt                                             ; $40d4: $76
	and  c                                           ; $40d5: $a1
	ld   [hl], l                                     ; $40d6: $75
	sub  b                                           ; $40d7: $90
	ld   d, b                                        ; $40d8: $50
	sbc  b                                           ; $40d9: $98
	adc  h                                           ; $40da: $8c
	ld   l, c                                        ; $40db: $69
	and  c                                           ; $40dc: $a1
	sbc  l                                           ; $40dd: $9d
	ld   a, e                                        ; $40de: $7b
	sbc  a                                           ; $40df: $9f
	dec  c                                           ; $40e0: $0d
	nop                                              ; $40e1: $00
	ld   a, [bc]                                     ; $40e2: $0a
	ld   bc, $7190                                   ; $40e3: $01 $90 $71
	halt                                             ; $40e6: $76
	sbc  [hl]                                        ; $40e7: $9e
	sbc  l                                           ; $40e8: $9d
	ld   l, l                                        ; $40e9: $6d
	ld   e, l                                        ; $40ea: $5d
	ld   h, l                                        ; $40eb: $65
	and  b                                           ; $40ec: $a0
	ld   [bc], a                                     ; $40ed: $02
	sub  l                                           ; $40ee: $95
	inc  bc                                          ; $40ef: $03
	and  h                                           ; $40f0: $a4
	ld   [hl], c                                     ; $40f1: $71
	ld   [hl], h                                     ; $40f2: $74
	dec  c                                           ; $40f3: $0d
	dec  b                                           ; $40f4: $05
	ld   d, $04                                      ; $40f5: $16 $04
	sbc  l                                           ; $40f7: $9d
	ld   a, b                                        ; $40f8: $78
	xor  $c8                                         ; $40f9: $ee $c8
	and  h                                           ; $40fb: $a4
	ld   a, c                                        ; $40fc: $79
	ld   a, b                                        ; $40fd: $78
	sbc  d                                           ; $40fe: $9a
	ld   a, [hl]                                     ; $40ff: $7e
	dec  c                                           ; $4100: $0d
	ld   d, d                                        ; $4101: $52
	ld   d, d                                        ; $4102: $52
	ld   a, h                                        ; $4103: $7c
	ld   [hl], l                                     ; $4104: $75
	ld   h, a                                        ; $4105: $67
	ld   e, a                                        ; $4106: $5f
	ld   [hl], a                                     ; $4107: $77
	rst  $38                                         ; $4108: $ff
	rst  $38                                         ; $4109: $ff
	sbc  a                                           ; $410a: $9f
	dec  c                                           ; $410b: $0d
	nop                                              ; $410c: $00
	ld   a, [bc]                                     ; $410d: $0a
	ld   bc, $7d75                                   ; $410e: $01 $75 $7d
	sbc  [hl]                                        ; $4111: $9e
	sbc  l                                           ; $4112: $9d
	ld   l, l                                        ; $4113: $6d
	ld   e, l                                        ; $4114: $5d
	ld   h, l                                        ; $4115: $65
	dec  c                                           ; $4116: $0d
	inc  b                                           ; $4117: $04
	di                                               ; $4118: $f3
	ld   e, d                                        ; $4119: $5a
	ld   d, b                                        ; $411a: $50
	sbc  b                                           ; $411b: $98
	adc  h                                           ; $411c: $8c
	ld   h, a                                        ; $411d: $67
	ld   e, c                                        ; $411e: $59
	sub  a                                           ; $411f: $97
	sbc  [hl]                                        ; $4120: $9e
	ld   h, c                                        ; $4121: $61
	sbc  d                                           ; $4122: $9a
	ld   [hl], l                                     ; $4123: $75
	rst  $38                                         ; $4124: $ff
	rst  $38                                         ; $4125: $ff
	dec  c                                           ; $4126: $0d
	nop                                              ; $4127: $00
	ld   a, [bc]                                     ; $4128: $0a
	dec  c                                           ; $4129: $0d
	nop                                              ; $412a: $00
	nop                                              ; $412b: $00
	rrca                                             ; $412c: $0f
	nop                                              ; $412d: $00
	ld   bc, $1e09                                   ; $412e: $01 $09 $1e
	nop                                              ; $4131: $00
	rrca                                             ; $4132: $0f
	nop                                              ; $4133: $00
	ld   bc, $0401                                   ; $4134: $01 $01 $04
	ld   c, $03                                      ; $4137: $0e $03
	sub  b                                           ; $4139: $90
	ld   h, e                                        ; $413a: $63
	and  c                                           ; $413b: $a1
	ld   [hl], h                                     ; $413c: $74
	dec  c                                           ; $413d: $0d
	ld   h, a                                        ; $413e: $67
	adc  l                                           ; $413f: $8d
	sbc  d                                           ; $4140: $9a
	ld   h, e                                        ; $4141: $63
	and  c                                           ; $4142: $a1
	ld   e, c                                        ; $4143: $59
	sub  a                                           ; $4144: $97
	ld   [bc], a                                     ; $4145: $02
	sub  l                                           ; $4146: $95
	ld   [hl], h                                     ; $4147: $74
	dec  c                                           ; $4148: $0d
	ld   [hl], a                                     ; $4149: $77
	and  c                                           ; $414a: $a1
	ld   a, b                                        ; $414b: $78
	inc  b                                           ; $414c: $04
	ld   a, b                                        ; $414d: $78
	ld   a, b                                        ; $414e: $78
	ld   a, h                                        ; $414f: $7c
	ld   [hl], l                                     ; $4150: $75
	ld   h, a                                        ; $4151: $67
	ld   e, c                                        ; $4152: $59
	ld   sp, hl                                      ; $4153: $f9
	dec  c                                           ; $4154: $0d
	nop                                              ; $4155: $00
	ld   a, [bc]                                     ; $4156: $0a
	rrca                                             ; $4157: $0f
	ld   [bc], a                                     ; $4158: $02
	ld   bc, $6f01                                   ; $4159: $01 $01 $6f
	sub  l                                           ; $415c: $95
	halt                                             ; $415d: $76
	inc  bc                                          ; $415e: $03
	ld   d, d                                        ; $415f: $52
	inc  bc                                          ; $4160: $03
	xor  l                                           ; $4161: $ad
	inc  b                                           ; $4162: $04
	ret  c                                           ; $4163: $d8

	inc  b                                           ; $4164: $04
	call nc, Call_058_7678                           ; $4165: $d4 $78 $76
	ld   h, c                                        ; $4168: $61
	sbc  e                                           ; $4169: $9b
	ld   e, d                                        ; $416a: $5a
	dec  c                                           ; $416b: $0d
	ld   l, l                                        ; $416c: $6d
	adc  h                                           ; $416d: $8c
	ld   a, c                                        ; $416e: $79
	ld   e, e                                        ; $416f: $5b
	ld   l, b                                        ; $4170: $68
	ld   [hl], l                                     ; $4171: $75
	ld   h, a                                        ; $4172: $67
	ld   e, a                                        ; $4173: $5f
	ld   [hl], a                                     ; $4174: $77
	sbc  [hl]                                        ; $4175: $9e
	dec  c                                           ; $4176: $0d
	inc  bc                                          ; $4177: $03
	or   h                                           ; $4178: $b4
	inc  b                                           ; $4179: $04
	ld   c, a                                        ; $417a: $4f
	ld   [bc], a                                     ; $417b: $02
	scf                                              ; $417c: $37
	ld   e, d                                        ; $417d: $5a
	ld   d, b                                        ; $417e: $50
	ld   [hl], c                                     ; $417f: $71
	ld   [hl], h                                     ; $4180: $74
	sub  d                                           ; $4181: $92
	ld   h, e                                        ; $4182: $63
	ld   h, l                                        ; $4183: $65
	ld   e, l                                        ; $4184: $5d
	ld   [hl], h                                     ; $4185: $74
	sbc  [hl]                                        ; $4186: $9e
	dec  c                                           ; $4187: $0d
	nop                                              ; $4188: $00
	ld   a, [bc]                                     ; $4189: $0a
	ld   bc, $9802                                   ; $418a: $01 $02 $98
	inc  bc                                          ; $418d: $03
	nop                                              ; $418e: $00
	ld   a, h                                        ; $418f: $7c
	inc  b                                           ; $4190: $04
	ld   a, [bc]                                     ; $4191: $0a
	inc  bc                                          ; $4192: $03
	jp   nc, Jump_058_6576                           ; $4193: $d2 $76 $65

	ld   [hl], h                                     ; $4196: $74
	ld   a, l                                        ; $4197: $7d
	dec  c                                           ; $4198: $0d
	adc  h                                           ; $4199: $8c
	ld   l, b                                        ; $419a: $68
	adc  h                                           ; $419b: $8c
	ld   l, b                                        ; $419c: $68
	ld   a, b                                        ; $419d: $78
	and  c                                           ; $419e: $a1
	ld   h, [hl]                                     ; $419f: $66
	sub  c                                           ; $41a0: $91
	ld   a, b                                        ; $41a1: $78
	ld   d, d                                        ; $41a2: $52
	ld   e, c                                        ; $41a3: $59
	ld   h, l                                        ; $41a4: $65
	sub  a                                           ; $41a5: $97
	sbc  a                                           ; $41a6: $9f
	dec  c                                           ; $41a7: $0d
	nop                                              ; $41a8: $00
	ld   a, [bc]                                     ; $41a9: $0a
	rrca                                             ; $41aa: $0f
	ld   [bc], a                                     ; $41ab: $02
	nop                                              ; $41ac: $00
	ld   bc, $9750                                   ; $41ad: $01 $50 $97
	sbc  [hl]                                        ; $41b0: $9e
	inc  bc                                          ; $41b1: $03
	ld   l, l                                        ; $41b2: $6d
	dec  b                                           ; $41b3: $05
	add  hl, de                                      ; $41b4: $19
	ld   a, h                                        ; $41b5: $7c
	inc  bc                                          ; $41b6: $03
	ld   l, a                                        ; $41b7: $6f
	ld   [bc], a                                     ; $41b8: $02
	xor  c                                           ; $41b9: $a9
	ld   [hl], l                                     ; $41ba: $75
	ld   h, a                                        ; $41bb: $67
	sbc  l                                           ; $41bc: $9d
	sbc  a                                           ; $41bd: $9f
	dec  c                                           ; $41be: $0d
	dec  b                                           ; $41bf: $05
	jr   z, jr_058_4214                              ; $41c0: $28 $52

	ld   [hl], l                                     ; $41c2: $75
	inc  bc                                          ; $41c3: $03
	inc  e                                           ; $41c4: $1c
	inc  b                                           ; $41c5: $04
	ld   d, e                                        ; $41c6: $53
	ld   a, b                                        ; $41c7: $78
	ld   h, e                                        ; $41c8: $63
	ld   d, d                                        ; $41c9: $52
	sbc  a                                           ; $41ca: $9f
	dec  c                                           ; $41cb: $0d
	nop                                              ; $41cc: $00
	ld   a, [bc]                                     ; $41cd: $0a
	nop                                              ; $41ce: $00
	rrca                                             ; $41cf: $0f
	nop                                              ; $41d0: $00
	ld   bc, $6301                                   ; $41d1: $01 $01 $63
	ld   e, l                                        ; $41d4: $5d
	sub  a                                           ; $41d5: $97
	ld   h, e                                        ; $41d6: $63
	and  c                                           ; $41d7: $a1
	ld   [hl], h                                     ; $41d8: $74
	sbc  [hl]                                        ; $41d9: $9e
	ld   h, a                                        ; $41da: $67
	adc  l                                           ; $41db: $8d
	sbc  d                                           ; $41dc: $9a
	ld   h, e                                        ; $41dd: $63
	and  c                                           ; $41de: $a1
	ld   e, c                                        ; $41df: $59
	sub  a                                           ; $41e0: $97
	dec  c                                           ; $41e1: $0d
	ld   [bc], a                                     ; $41e2: $02
	sub  l                                           ; $41e3: $95
	ld   [hl], h                                     ; $41e4: $74
	sbc  [hl]                                        ; $41e5: $9e
	ld   [hl], a                                     ; $41e6: $77
	and  c                                           ; $41e7: $a1
	ld   a, b                                        ; $41e8: $78
	inc  b                                           ; $41e9: $04
	ld   a, b                                        ; $41ea: $78
	ld   [hl], l                                     ; $41eb: $75
	ld   h, a                                        ; $41ec: $67
	ld   e, c                                        ; $41ed: $59
	ld   sp, hl                                      ; $41ee: $f9
	dec  c                                           ; $41ef: $0d
	nop                                              ; $41f0: $00
	ld   a, [bc]                                     ; $41f1: $0a
	inc  e                                           ; $41f2: $1c
	ld   [bc], a                                     ; $41f3: $02
	inc  bc                                          ; $41f4: $03
	inc  bc                                          ; $41f5: $03
	ld   bc, $5477                                   ; $41f6: $01 $77 $54
	sub  b                                           ; $41f9: $90
	sbc  [hl]                                        ; $41fa: $9e
	ld   h, c                                        ; $41fb: $61
	ld   d, h                                        ; $41fc: $54
	sub  b                                           ; $41fd: $90
	sbc  [hl]                                        ; $41fe: $9e
	dec  c                                           ; $41ff: $0d
	ld   d, b                                        ; $4200: $50
	and  c                                           ; $4201: $a1
	ld   a, b                                        ; $4202: $78
	sbc  [hl]                                        ; $4203: $9e
	ld   d, d                                        ; $4204: $52
	ld   a, b                                        ; $4205: $78
	ld   e, c                                        ; $4206: $59
	inc  bc                                          ; $4207: $03
	cp   l                                           ; $4208: $bd
	ld   d, d                                        ; $4209: $52
	inc  b                                           ; $420a: $04
	ld   a, b                                        ; $420b: $78
	rst  $38                                         ; $420c: $ff
	rst  $38                                         ; $420d: $ff
	dec  c                                           ; $420e: $0d
	ld   a, b                                        ; $420f: $78
	and  c                                           ; $4210: $a1
	halt                                             ; $4211: $76
	sub  b                                           ; $4212: $90
	dec  b                                           ; $4213: $05

jr_058_4214:
	pop  de                                          ; $4214: $d1
	ld   [hl], c                                     ; $4215: $71
	ld   [hl], h                                     ; $4216: $74
	adc  h                                           ; $4217: $8c
	ld   l, c                                        ; $4218: $69
	and  c                                           ; $4219: $a1
	sbc  l                                           ; $421a: $9d
	sbc  a                                           ; $421b: $9f
	dec  c                                           ; $421c: $0d
	nop                                              ; $421d: $00
	ld   a, [bc]                                     ; $421e: $0a
	inc  e                                           ; $421f: $1c
	ld   [bc], a                                     ; $4220: $02
	nop                                              ; $4221: $00
	nop                                              ; $4222: $00
	ld   bc, $9e8c                                   ; $4223: $01 $8c $9e
	inc  bc                                          ; $4226: $03
	ld   l, c                                        ; $4227: $69
	ld   [bc], a                                     ; $4228: $02
	and  b                                           ; $4229: $a0
	ld   a, l                                        ; $422a: $7d
	ld   a, b                                        ; $422b: $78
	and  c                                           ; $422c: $a1
	ld   l, [hl]                                     ; $422d: $6e
	ld   e, c                                        ; $422e: $59
	sbc  [hl]                                        ; $422f: $9e
	dec  c                                           ; $4230: $0d
	sbc  l                                           ; $4231: $9d
	ld   l, l                                        ; $4232: $6d
	ld   e, l                                        ; $4233: $5d
	ld   h, l                                        ; $4234: $65
	and  b                                           ; $4235: $a0
	dec  b                                           ; $4236: $05
	inc  a                                           ; $4237: $3c
	ld   h, l                                        ; $4238: $65
	inc  b                                           ; $4239: $04
	jr   z, jr_058_428e                              ; $423a: $28 $52

	ld   [hl], h                                     ; $423c: $74
	sbc  [hl]                                        ; $423d: $9e
	dec  c                                           ; $423e: $0d
	inc  b                                           ; $423f: $04
	adc  [hl]                                        ; $4240: $8e
	inc  b                                           ; $4241: $04
	inc  c                                           ; $4242: $0c
	ld   [hl], l                                     ; $4243: $75
	inc  bc                                          ; $4244: $03
	ld   b, h                                        ; $4245: $44
	ld   [bc], a                                     ; $4246: $02
	rra                                              ; $4247: $1f
	and  b                                           ; $4248: $a0
	ld   h, l                                        ; $4249: $65
	ld   [hl], h                                     ; $424a: $74
	adc  h                                           ; $424b: $8c
	ld   h, a                                        ; $424c: $67
	ld   e, d                                        ; $424d: $5a
	sbc  [hl]                                        ; $424e: $9e
	dec  c                                           ; $424f: $0d
	nop                                              ; $4250: $00
	ld   a, [bc]                                     ; $4251: $0a
	inc  e                                           ; $4252: $1c
	ld   [bc], a                                     ; $4253: $02
	ld   bc, $0101                                   ; $4254: $01 $01 $01
	ld   h, l                                        ; $4257: $65
	sub  l                                           ; $4258: $95
	ld   l, c                                        ; $4259: $69
	and  c                                           ; $425a: $a1
	ld   a, l                                        ; $425b: $7d
	cp   b                                           ; $425c: $b8
	rst  $28                                         ; $425d: $ef
	and  a                                           ; $425e: $a7
	ret                                              ; $425f: $c9


	sbc  a                                           ; $4260: $9f
	dec  c                                           ; $4261: $0d
	inc  bc                                          ; $4262: $03
	xor  l                                           ; $4263: $ad
	ld   a, h                                        ; $4264: $7c
	ret                                              ; $4265: $c9


	call nz, $bad8                                   ; $4266: $c4 $d8 $ba
	ret  nz                                          ; $4269: $c0

	and  e                                           ; $426a: $a3
	ld   a, h                                        ; $426b: $7c
	sbc  l                                           ; $426c: $9d
	ld   l, l                                        ; $426d: $6d
	ld   e, l                                        ; $426e: $5d
	ld   h, l                                        ; $426f: $65
	ld   a, h                                        ; $4270: $7c
	dec  c                                           ; $4271: $0d
	ld   [bc], a                                     ; $4272: $02
	ld   a, [de]                                     ; $4273: $1a
	inc  bc                                          ; $4274: $03
	ld   l, e                                        ; $4275: $6b
	ld   [hl], l                                     ; $4276: $75
	ld   a, l                                        ; $4277: $7d
	ld   d, b                                        ; $4278: $50
	sbc  b                                           ; $4279: $98
	adc  h                                           ; $427a: $8c
	ld   l, c                                        ; $427b: $69
	and  c                                           ; $427c: $a1
	sbc  l                                           ; $427d: $9d
	ld   a, e                                        ; $427e: $7b

jr_058_427f:
	sbc  a                                           ; $427f: $9f
	dec  c                                           ; $4280: $0d
	nop                                              ; $4281: $00
	ld   a, [bc]                                     ; $4282: $0a
	ld   bc, $9750                                   ; $4283: $01 $50 $97
	sbc  [hl]                                        ; $4286: $9e
	inc  bc                                          ; $4287: $03
	ld   l, l                                        ; $4288: $6d
	dec  b                                           ; $4289: $05
	add  hl, de                                      ; $428a: $19
	ld   a, h                                        ; $428b: $7c
	inc  bc                                          ; $428c: $03
	ld   l, a                                        ; $428d: $6f

jr_058_428e:
	ld   [bc], a                                     ; $428e: $02
	xor  c                                           ; $428f: $a9
	ld   [hl], l                                     ; $4290: $75
	ld   h, a                                        ; $4291: $67
	sbc  l                                           ; $4292: $9d
	sbc  a                                           ; $4293: $9f
	dec  c                                           ; $4294: $0d
	dec  b                                           ; $4295: $05
	jr   z, jr_058_42ea                              ; $4296: $28 $52

	ld   [hl], l                                     ; $4298: $75
	inc  bc                                          ; $4299: $03
	inc  e                                           ; $429a: $1c
	inc  b                                           ; $429b: $04
	ld   d, e                                        ; $429c: $53
	ld   a, b                                        ; $429d: $78
	ld   h, e                                        ; $429e: $63
	ld   d, d                                        ; $429f: $52
	sbc  a                                           ; $42a0: $9f
	dec  c                                           ; $42a1: $0d
	nop                                              ; $42a2: $00
	ld   a, [bc]                                     ; $42a3: $0a
	nop                                              ; $42a4: $00
	nop                                              ; $42a5: $00
	rrca                                             ; $42a6: $0f
	nop                                              ; $42a7: $00
	ld   bc, $010d                                   ; $42a8: $01 $0d $01
	nop                                              ; $42ab: $00
	ld   [bc], a                                     ; $42ac: $02
	ld   bc, $7d58                                   ; $42ad: $01 $58 $7d
	sub  [hl]                                        ; $42b0: $96
	ld   d, h                                        ; $42b1: $54
	ld   h, d                                        ; $42b2: $62
	ld   h, h                                        ; $42b3: $64
	ld   d, d                                        ; $42b4: $52
	adc  h                                           ; $42b5: $8c
	ld   h, a                                        ; $42b6: $67
	sbc  a                                           ; $42b7: $9f
	dec  c                                           ; $42b8: $0d
	nop                                              ; $42b9: $00
	ld   a, [bc]                                     ; $42ba: $0a
	inc  e                                           ; $42bb: $1c
	ld   bc, $0101                                   ; $42bc: $01 $01 $01
	ld   bc, $0008                                   ; $42bf: $01 $08 $00
	ld   h, e                                        ; $42c2: $63
	and  c                                           ; $42c3: $a1
	sbc  a                                           ; $42c4: $9f
	dec  c                                           ; $42c5: $0d
	ld   e, b                                        ; $42c6: $58
	ld   a, l                                        ; $42c7: $7d
	sub  [hl]                                        ; $42c8: $96
	ld   d, h                                        ; $42c9: $54
	ld   h, d                                        ; $42ca: $62
	ld   h, h                                        ; $42cb: $64
	ld   d, d                                        ; $42cc: $52
	adc  h                                           ; $42cd: $8c
	ld   h, a                                        ; $42ce: $67
	sbc  a                                           ; $42cf: $9f
	dec  c                                           ; $42d0: $0d
	nop                                              ; $42d1: $00
	ld   a, [bc]                                     ; $42d2: $0a
	rrca                                             ; $42d3: $0f
	nop                                              ; $42d4: $00
	ld   bc, $0101                                   ; $42d5: $01 $01 $01
	inc  bc                                          ; $42d8: $03
	inc  b                                           ; $42d9: $04
	ld   c, c                                        ; $42da: $49
	ld   a, h                                        ; $42db: $7c
	dec  b                                           ; $42dc: $05
	jr   nz, jr_058_427f                             ; $42dd: $20 $a0

	ld   h, l                                        ; $42df: $65
	sub  [hl]                                        ; $42e0: $96
	ld   d, h                                        ; $42e1: $54
	ld   e, c                                        ; $42e2: $59
	ld   a, b                                        ; $42e3: $78
	rst  $38                                         ; $42e4: $ff
	rst  $38                                         ; $42e5: $ff
	ld   bc, $0d04                                   ; $42e6: $01 $04 $0d
	nop                                              ; $42e9: $00

jr_058_42ea:
	ld   a, [bc]                                     ; $42ea: $0a
	add  hl, de                                      ; $42eb: $19
	dec  b                                           ; $42ec: $05
	inc  bc                                          ; $42ed: $03
	inc  b                                           ; $42ee: $04
	and  l                                           ; $42ef: $a5
	inc  bc                                          ; $42f0: $03
	ld   c, h                                        ; $42f1: $4c
	ld   a, c                                        ; $42f2: $79
	ld   [hl], d                                     ; $42f3: $72
	ld   d, d                                        ; $42f4: $52
	ld   [hl], h                                     ; $42f5: $74
	ld   [bc], a                                     ; $42f6: $02
	jp   nz, $005d                                   ; $42f7: $c2 $5d $00

	nop                                              ; $42fa: $00
	inc  bc                                          ; $42fb: $03
	xor  b                                           ; $42fc: $a8
	ld   d, d                                        ; $42fd: $52
	ld   a, c                                        ; $42fe: $79
	ld   [hl], d                                     ; $42ff: $72
	ld   d, d                                        ; $4300: $52
	ld   [hl], h                                     ; $4301: $74
	ld   [bc], a                                     ; $4302: $02
	jp   nz, $005d                                   ; $4303: $c2 $5d $00

	ld   bc, $8d67                                   ; $4306: $01 $67 $8d
	sbc  d                                           ; $4309: $9a
	ld   a, c                                        ; $430a: $79
	ld   [hl], d                                     ; $430b: $72
	ld   d, d                                        ; $430c: $52
	ld   [hl], h                                     ; $430d: $74
	ld   [bc], a                                     ; $430e: $02
	jp   nz, $005d                                   ; $430f: $c2 $5d $00

	ld   [bc], a                                     ; $4312: $02
	rlca                                             ; $4313: $07
	or   c                                           ; $4314: $b1
	nop                                              ; $4315: $00
	ld   [bc], a                                     ; $4316: $02
	inc  bc                                          ; $4317: $03
	ld   bc, $2000                                   ; $4318: $01 $00 $20
	nop                                              ; $431b: $00
	rlca                                             ; $431c: $07
	adc  d                                           ; $431d: $8a
	ld   [bc], a                                     ; $431e: $02
	ld   [bc], a                                     ; $431f: $02
	inc  bc                                          ; $4320: $03
	ld   bc, $2001                                   ; $4321: $01 $01 $20
	nop                                              ; $4324: $00
	rlca                                             ; $4325: $07
	ld   d, e                                        ; $4326: $53
	inc  bc                                          ; $4327: $03
	ld   [bc], a                                     ; $4328: $02
	inc  bc                                          ; $4329: $03
	ld   bc, $2002                                   ; $432a: $01 $02 $20
	nop                                              ; $432d: $00
	ld   b, $8b                                      ; $432e: $06 $8b
	nop                                              ; $4330: $00
	inc  e                                           ; $4331: $1c
	ld   bc, $0101                                   ; $4332: $01 $01 $01
	ld   bc, $a502                                   ; $4335: $01 $02 $a5
	inc  b                                           ; $4338: $04
	xor  d                                           ; $4339: $aa
	sub  b                                           ; $433a: $90
	ld   [bc], a                                     ; $433b: $02
	jr   nz, jr_058_4342                             ; $433c: $20 $04

	xor  d                                           ; $433e: $aa
	sbc  [hl]                                        ; $433f: $9e
	dec  c                                           ; $4340: $0d
	ld   e, d                                        ; $4341: $5a

jr_058_4342:
	and  c                                           ; $4342: $a1
	ld   a, [hl]                                     ; $4343: $7e
	sbc  b                                           ; $4344: $98
	adc  h                                           ; $4345: $8c
	ld   h, l                                        ; $4346: $65
	sub  l                                           ; $4347: $95
	ld   d, h                                        ; $4348: $54
	ld   a, e                                        ; $4349: $7b
	sbc  a                                           ; $434a: $9f
	dec  c                                           ; $434b: $0d
	nop                                              ; $434c: $00
	ld   a, [bc]                                     ; $434d: $0a
	dec  c                                           ; $434e: $0d
	nop                                              ; $434f: $00
	nop                                              ; $4350: $00
	rrca                                             ; $4351: $0f
	nop                                              ; $4352: $00
	ld   bc, $1e09                                   ; $4353: $01 $09 $1e
	nop                                              ; $4356: $00
	rrca                                             ; $4357: $0f
	nop                                              ; $4358: $00
	ld   bc, $6301                                   ; $4359: $01 $01 $63
	ld   e, l                                        ; $435c: $5d
	sub  a                                           ; $435d: $97
	ld   h, e                                        ; $435e: $63
	and  c                                           ; $435f: $a1
	ld   a, h                                        ; $4360: $7c
	inc  b                                           ; $4361: $04
	rlca                                             ; $4362: $07
	inc  b                                           ; $4363: $04
	sub  d                                           ; $4364: $92
	ld   a, c                                        ; $4365: $79
	ld   a, l                                        ; $4366: $7d
	dec  c                                           ; $4367: $0d
	inc  bc                                          ; $4368: $03
	adc  a                                           ; $4369: $8f
	ld   a, h                                        ; $436a: $7c
	ld   [bc], a                                     ; $436b: $02
	add  hl, hl                                      ; $436c: $29
	ld   e, d                                        ; $436d: $5a
	ld   [hl], d                                     ; $436e: $72
	ld   d, d                                        ; $436f: $52
	ld   [hl], h                                     ; $4370: $74
	adc  h                                           ; $4371: $8c
	ld   h, a                                        ; $4372: $67
	ld   e, a                                        ; $4373: $5f
	ld   [hl], a                                     ; $4374: $77
	dec  c                                           ; $4375: $0d
	inc  bc                                          ; $4376: $03
	dec  c                                           ; $4377: $0d
	dec  b                                           ; $4378: $05
	ld   d, $04                                      ; $4379: $16 $04
	sub  d                                           ; $437b: $92
	ld   a, b                                        ; $437c: $78
	and  c                                           ; $437d: $a1
	ld   [hl], l                                     ; $437e: $75
	ld   h, a                                        ; $437f: $67
	ld   e, c                                        ; $4380: $59
	ld   sp, hl                                      ; $4381: $f9
	dec  c                                           ; $4382: $0d
	nop                                              ; $4383: $00
	ld   a, [bc]                                     ; $4384: $0a
	inc  e                                           ; $4385: $1c
	ld   bc, $0000                                   ; $4386: $01 $00 $00
	ld   bc, $8b03                                   ; $4389: $01 $03 $8b
	ld   [bc], a                                     ; $438c: $02
	and  [hl]                                        ; $438d: $a6
	ld   e, c                                        ; $438e: $59
	sub  a                                           ; $438f: $97
	inc  bc                                          ; $4390: $03
	and  b                                           ; $4391: $a0
	ld   [hl], c                                     ; $4392: $71
	ld   [hl], h                                     ; $4393: $74
	ld   e, e                                        ; $4394: $5b
	ld   l, l                                        ; $4395: $6d
	sub  b                                           ; $4396: $90
	ld   a, h                                        ; $4397: $7c
	ld   e, d                                        ; $4398: $5a
	dec  c                                           ; $4399: $0d
	inc  b                                           ; $439a: $04
	rrca                                             ; $439b: $0f
	ld   d, d                                        ; $439c: $52
	ld   a, h                                        ; $439d: $7c
	ld   [hl], l                                     ; $439e: $75
	inc  b                                           ; $439f: $04
	add  c                                           ; $43a0: $81
	ld   a, h                                        ; $43a1: $7c
	ld   e, b                                        ; $43a2: $58
	inc  bc                                          ; $43a3: $03
	ld   l, e                                        ; $43a4: $6b
	dec  b                                           ; $43a5: $05
	db   $d3                                         ; $43a6: $d3
	dec  c                                           ; $43a7: $0d
	ld   a, b                                        ; $43a8: $78
	and  c                                           ; $43a9: $a1
	ld   [hl], l                                     ; $43aa: $75
	ld   h, a                                        ; $43ab: $67
	sub  [hl]                                        ; $43ac: $96
	sbc  a                                           ; $43ad: $9f
	dec  c                                           ; $43ae: $0d
	nop                                              ; $43af: $00
	ld   a, [bc]                                     ; $43b0: $0a
	add  hl, de                                      ; $43b1: $19
	dec  b                                           ; $43b2: $05
	inc  bc                                          ; $43b3: $03
	inc  b                                           ; $43b4: $04
	dec  e                                           ; $43b5: $1d
	ld   h, [hl]                                     ; $43b6: $66
	inc  b                                           ; $43b7: $04
	and  l                                           ; $43b8: $a5
	ld   e, d                                        ; $43b9: $5a
	inc  b                                           ; $43ba: $04
	rrca                                             ; $43bb: $0f
	ld   d, d                                        ; $43bc: $52
	ld   [hl], l                                     ; $43bd: $75
	ld   h, a                                        ; $43be: $67
	ld   a, e                                        ; $43bf: $7b
	nop                                              ; $43c0: $00
	nop                                              ; $43c1: $00
	ld   d, d                                        ; $43c2: $52
	ld   d, d                                        ; $43c3: $52
	inc  b                                           ; $43c4: $04
	rlca                                             ; $43c5: $07
	inc  b                                           ; $43c6: $04
	sub  d                                           ; $43c7: $92
	ld   [hl], l                                     ; $43c8: $75
	ld   h, a                                        ; $43c9: $67
	ld   a, e                                        ; $43ca: $7b
	nop                                              ; $43cb: $00
	ld   bc, $1e04                                   ; $43cc: $01 $04 $1e
	ld   a, h                                        ; $43cf: $7c
	ld   [bc], a                                     ; $43d0: $02
	sbc  [hl]                                        ; $43d1: $9e
	ld   a, l                                        ; $43d2: $7d
	ld   e, b                                        ; $43d3: $58
	ld   [bc], a                                     ; $43d4: $02
	xor  a                                           ; $43d5: $af
	ld   d, d                                        ; $43d6: $52
	ld   [hl], l                                     ; $43d7: $75
	ld   h, a                                        ; $43d8: $67
	ld   e, c                                        ; $43d9: $59
	ld   sp, hl                                      ; $43da: $f9
	nop                                              ; $43db: $00
	ld   [bc], a                                     ; $43dc: $02
	rlca                                             ; $43dd: $07
	ld   d, l                                        ; $43de: $55
	ld   bc, $0302                                   ; $43df: $01 $02 $03
	ld   bc, $2000                                   ; $43e2: $01 $00 $20
	nop                                              ; $43e5: $00
	rlca                                             ; $43e6: $07
	call z, $0201                                    ; $43e7: $cc $01 $02
	inc  bc                                          ; $43ea: $03
	ld   bc, $2001                                   ; $43eb: $01 $01 $20
	nop                                              ; $43ee: $00
	rlca                                             ; $43ef: $07
	db   $10                                         ; $43f0: $10
	ld   [bc], a                                     ; $43f1: $02
	ld   [bc], a                                     ; $43f2: $02
	inc  bc                                          ; $43f3: $03
	ld   bc, $2002                                   ; $43f4: $01 $02 $20
	nop                                              ; $43f7: $00
	ld   b, $54                                      ; $43f8: $06 $54
	ld   [bc], a                                     ; $43fa: $02
	rrca                                             ; $43fb: $0f
	nop                                              ; $43fc: $00
	ld   bc, $0201                                   ; $43fd: $01 $01 $02
	and  c                                           ; $4400: $a1
	ld   a, h                                        ; $4401: $7c
	ld   l, c                                        ; $4402: $69
	ld   d, d                                        ; $4403: $52
	ld   e, c                                        ; $4404: $59
	sub  b                                           ; $4405: $90
	inc  b                                           ; $4406: $04
	dec  hl                                          ; $4407: $2b
	sbc  d                                           ; $4408: $9a
	adc  h                                           ; $4409: $8c
	ld   l, c                                        ; $440a: $69
	and  c                                           ; $440b: $a1
	ld   e, d                                        ; $440c: $5a
	rst  $38                                         ; $440d: $ff
	rst  $38                                         ; $440e: $ff
	dec  c                                           ; $440f: $0d
	inc  b                                           ; $4410: $04
	dec  e                                           ; $4411: $1d
	ld   h, [hl]                                     ; $4412: $66
	inc  b                                           ; $4413: $04
	and  l                                           ; $4414: $a5
	ld   e, d                                        ; $4415: $5a
	inc  b                                           ; $4416: $04
	rrca                                             ; $4417: $0f
	ld   d, d                                        ; $4418: $52
	ld   [hl], l                                     ; $4419: $75
	ld   h, a                                        ; $441a: $67
	ld   a, e                                        ; $441b: $7b
	ld   sp, hl                                      ; $441c: $f9
	dec  c                                           ; $441d: $0d
	nop                                              ; $441e: $00
	ld   a, [bc]                                     ; $441f: $0a
	inc  e                                           ; $4420: $1c
	ld   bc, $0404                                   ; $4421: $01 $04 $04
	dec  e                                           ; $4424: $1d
	ld   b, b                                        ; $4425: $40
	ld   de, $1103                                   ; $4426: $11 $03 $11
	ld   bc, $2901                                   ; $4429: $01 $01 $29
	nop                                              ; $442c: $00
	ld   bc, $9a61                                   ; $442d: $01 $61 $9a
	ld   e, b                                        ; $4430: $58
	ld   [bc], a                                     ; $4431: $02
	and  c                                           ; $4432: $a1
	ld   a, c                                        ; $4433: $79
	inc  b                                           ; $4434: $04
	ld   b, l                                        ; $4435: $45
	sbc  b                                           ; $4436: $98
	ld   [hl], l                                     ; $4437: $75
	ld   h, a                                        ; $4438: $67
	ld   h, l                                        ; $4439: $65
	rst  $38                                         ; $443a: $ff
	rst  $38                                         ; $443b: $ff
	dec  c                                           ; $443c: $0d
	ld   d, b                                        ; $443d: $50
	halt                                             ; $443e: $76
	inc  b                                           ; $443f: $04
	dec  e                                           ; $4440: $1d
	ld   h, [hl]                                     ; $4441: $66
	inc  b                                           ; $4442: $04
	sub  d                                           ; $4443: $92
	and  b                                           ; $4444: $a0
	inc  b                                           ; $4445: $04
	ld   c, c                                        ; $4446: $49
	inc  b                                           ; $4447: $04
	rlca                                             ; $4448: $07
	ld   e, c                                        ; $4449: $59
	dec  c                                           ; $444a: $0d
	inc  bc                                          ; $444b: $03
	and  b                                           ; $444c: $a0
	ld   [hl], c                                     ; $444d: $71
	ld   [hl], h                                     ; $444e: $74
	adc  h                                           ; $444f: $8c
	ld   h, a                                        ; $4450: $67
	ld   e, c                                        ; $4451: $59
	sub  a                                           ; $4452: $97
	sbc  a                                           ; $4453: $9f
	dec  c                                           ; $4454: $0d
	nop                                              ; $4455: $00
	ld   a, [bc]                                     ; $4456: $0a
	ld   bc, $9166                                   ; $4457: $01 $66 $91
	sbc  [hl]                                        ; $445a: $9e
	ld   d, b                                        ; $445b: $50
	ld   l, l                                        ; $445c: $6d
	ld   h, l                                        ; $445d: $65
	ld   [bc], a                                     ; $445e: $02
	ld   a, a                                        ; $445f: $7f
	ld   e, e                                        ; $4460: $5b
	adc  h                                           ; $4461: $8c
	ld   h, a                                        ; $4462: $67
	ld   e, c                                        ; $4463: $59
	sub  a                                           ; $4464: $97
	sbc  a                                           ; $4465: $9f
	dec  c                                           ; $4466: $0d
	nop                                              ; $4467: $00
	ld   a, [bc]                                     ; $4468: $0a
	dec  c                                           ; $4469: $0d
	nop                                              ; $446a: $00
	nop                                              ; $446b: $00
	rrca                                             ; $446c: $0f
	nop                                              ; $446d: $00
	ld   bc, $1e09                                   ; $446e: $01 $09 $1e
	nop                                              ; $4471: $00
	rrca                                             ; $4472: $0f
	nop                                              ; $4473: $00
	ld   bc, $5201                                   ; $4474: $01 $01 $52
	ld   d, d                                        ; $4477: $52
	inc  b                                           ; $4478: $04
	rlca                                             ; $4479: $07
	inc  b                                           ; $447a: $04
	sub  d                                           ; $447b: $92
	ld   [hl], l                                     ; $447c: $75
	ld   h, a                                        ; $447d: $67
	ld   a, e                                        ; $447e: $7b
	sbc  a                                           ; $447f: $9f
	dec  c                                           ; $4480: $0d
	nop                                              ; $4481: $00
	ld   a, [bc]                                     ; $4482: $0a
	inc  e                                           ; $4483: $1c
	ld   bc, $0101                                   ; $4484: $01 $01 $01
	dec  e                                           ; $4487: $1d
	ld   b, b                                        ; $4488: $40
	ld   de, $1103                                   ; $4489: $11 $03 $11
	ld   bc, $2803                                   ; $448c: $01 $03 $28
	nop                                              ; $448f: $00
	ld   bc, $9850                                   ; $4490: $01 $50 $98
	ld   e, d                                        ; $4493: $5a
	halt                                             ; $4494: $76
	ld   d, h                                        ; $4495: $54
	ld   h, d                                        ; $4496: $62
	ld   h, h                                        ; $4497: $64
	ld   d, d                                        ; $4498: $52
	adc  h                                           ; $4499: $8c
	ld   h, a                                        ; $449a: $67
	ld   a, [$6b0d]                                  ; $449b: $fa $0d $6b
	ld   d, h                                        ; $449e: $54
	ld   [bc], a                                     ; $449f: $02
	sbc  l                                           ; $44a0: $9d
	ld   [hl], c                                     ; $44a1: $71
	ld   [hl], h                                     ; $44a2: $74
	sub  b                                           ; $44a3: $90
	sub  a                                           ; $44a4: $97
	ld   d, [hl]                                     ; $44a5: $56
	sbc  c                                           ; $44a6: $99
	halt                                             ; $44a7: $76
	dec  c                                           ; $44a8: $0d
	ld   d, h                                        ; $44a9: $54
	sbc  d                                           ; $44aa: $9a
	ld   h, l                                        ; $44ab: $65
	ld   d, d                                        ; $44ac: $52
	ld   [hl], l                                     ; $44ad: $75
	ld   h, a                                        ; $44ae: $67
	sbc  a                                           ; $44af: $9f
	dec  c                                           ; $44b0: $0d
	nop                                              ; $44b1: $00
	ld   a, [bc]                                     ; $44b2: $0a
	ld   b, $58                                      ; $44b3: $06 $58
	ld   [bc], a                                     ; $44b5: $02
	rrca                                             ; $44b6: $0f
	nop                                              ; $44b7: $00
	ld   bc, $0401                                   ; $44b8: $01 $01 $04
	ld   e, $7c                                      ; $44bb: $1e $7c
	ld   [bc], a                                     ; $44bd: $02
	sbc  [hl]                                        ; $44be: $9e
	ld   a, l                                        ; $44bf: $7d
	ld   e, b                                        ; $44c0: $58
	ld   [bc], a                                     ; $44c1: $02
	xor  a                                           ; $44c2: $af
	ld   d, d                                        ; $44c3: $52
	ld   [hl], l                                     ; $44c4: $75
	ld   h, a                                        ; $44c5: $67
	ld   e, c                                        ; $44c6: $59
	ld   sp, hl                                      ; $44c7: $f9
	dec  c                                           ; $44c8: $0d
	nop                                              ; $44c9: $00
	ld   a, [bc]                                     ; $44ca: $0a
	inc  e                                           ; $44cb: $1c
	ld   bc, $0000                                   ; $44cc: $01 $00 $00
	ld   bc, $a16b                                   ; $44cf: $01 $6b $a1
	ld   a, b                                        ; $44d2: $78
	ld   h, c                                        ; $44d3: $61
	halt                                             ; $44d4: $76
	ld   a, b                                        ; $44d5: $78
	ld   d, d                                        ; $44d6: $52
	ld   [hl], l                                     ; $44d7: $75
	ld   h, a                                        ; $44d8: $67
	sub  [hl]                                        ; $44d9: $96
	sbc  a                                           ; $44da: $9f
	dec  c                                           ; $44db: $0d
	ld   l, l                                        ; $44dc: $6d
	ld   l, [hl]                                     ; $44dd: $6e
	sbc  [hl]                                        ; $44de: $9e
	sub  d                                           ; $44df: $92
	ld   [hl], c                                     ; $44e0: $71
	ld   a, a                                        ; $44e1: $7f
	sbc  b                                           ; $44e2: $98
	inc  bc                                          ; $44e3: $03
	adc  a                                           ; $44e4: $8f
	ld   a, h                                        ; $44e5: $7c
	ld   [bc], a                                     ; $44e6: $02
	sbc  [hl]                                        ; $44e7: $9e
	ld   a, l                                        ; $44e8: $7d
	dec  c                                           ; $44e9: $0d
	ld   [bc], a                                     ; $44ea: $02
	sbc  d                                           ; $44eb: $9a
	ld   e, e                                        ; $44ec: $5b
	ld   a, b                                        ; $44ed: $78
	and  c                                           ; $44ee: $a1
	ld   [hl], l                                     ; $44ef: $75
	ld   h, a                                        ; $44f0: $67
	sub  [hl]                                        ; $44f1: $96
	ld   a, e                                        ; $44f2: $7b
	sbc  a                                           ; $44f3: $9f
	dec  c                                           ; $44f4: $0d
	nop                                              ; $44f5: $00
	ld   a, [bc]                                     ; $44f6: $0a
	ld   b, $58                                      ; $44f7: $06 $58
	ld   [bc], a                                     ; $44f9: $02
	inc  e                                           ; $44fa: $1c
	ld   bc, $0000                                   ; $44fb: $01 $00 $00
	ld   bc, $9166                                   ; $44fe: $01 $66 $91
	sbc  [hl]                                        ; $4501: $9e
	ld   d, b                                        ; $4502: $50
	ld   l, l                                        ; $4503: $6d
	ld   h, l                                        ; $4504: $65
	ld   [bc], a                                     ; $4505: $02
	ld   a, a                                        ; $4506: $7f
	ld   e, e                                        ; $4507: $5b
	adc  h                                           ; $4508: $8c
	ld   h, a                                        ; $4509: $67
	ld   e, c                                        ; $450a: $59
	sub  a                                           ; $450b: $97
	sbc  a                                           ; $450c: $9f
	dec  c                                           ; $450d: $0d
	ld   [bc], a                                     ; $450e: $02
	and  l                                           ; $450f: $a5
	inc  b                                           ; $4510: $04
	xor  d                                           ; $4511: $aa
	sub  b                                           ; $4512: $90
	ld   [bc], a                                     ; $4513: $02
	jr   nz, jr_058_451a                             ; $4514: $20 $04

	xor  d                                           ; $4516: $aa
	sbc  [hl]                                        ; $4517: $9e
	dec  c                                           ; $4518: $0d
	ld   e, d                                        ; $4519: $5a

jr_058_451a:
	and  c                                           ; $451a: $a1
	ld   a, [hl]                                     ; $451b: $7e
	ld   [hl], c                                     ; $451c: $71
	ld   [hl], h                                     ; $451d: $74
	ld   e, l                                        ; $451e: $5d
	ld   l, [hl]                                     ; $451f: $6e
	ld   h, e                                        ; $4520: $63
	ld   d, d                                        ; $4521: $52
	ld   a, e                                        ; $4522: $7b
	sbc  a                                           ; $4523: $9f
	dec  c                                           ; $4524: $0d
	nop                                              ; $4525: $00
	ld   a, [bc]                                     ; $4526: $0a
	dec  c                                           ; $4527: $0d
	nop                                              ; $4528: $00
	nop                                              ; $4529: $00
	rrca                                             ; $452a: $0f
	nop                                              ; $452b: $00
	ld   bc, $1e09                                   ; $452c: $01 $09 $1e
	nop                                              ; $452f: $00
	rrca                                             ; $4530: $0f
	nop                                              ; $4531: $00
	ld   bc, $6301                                   ; $4532: $01 $01 $63
	ld   e, l                                        ; $4535: $5d
	sub  a                                           ; $4536: $97
	ld   h, e                                        ; $4537: $63
	and  c                                           ; $4538: $a1
	ld   l, l                                        ; $4539: $6d
	ld   l, a                                        ; $453a: $6f
	ld   a, l                                        ; $453b: $7d
	dec  c                                           ; $453c: $0d
	inc  b                                           ; $453d: $04
	ld   c, c                                        ; $453e: $49
	ld   a, h                                        ; $453f: $7c
	ld   l, l                                        ; $4540: $6d
	adc  a                                           ; $4541: $8f
	ld   a, c                                        ; $4542: $79
	inc  bc                                          ; $4543: $03
	xor  b                                           ; $4544: $a8
	ld   d, h                                        ; $4545: $54
	and  c                                           ; $4546: $a1
	ld   [hl], l                                     ; $4547: $75
	ld   h, a                                        ; $4548: $67
	ld   e, c                                        ; $4549: $59
	ld   sp, hl                                      ; $454a: $f9
	dec  c                                           ; $454b: $0d
	nop                                              ; $454c: $00
	ld   a, [bc]                                     ; $454d: $0a
	inc  e                                           ; $454e: $1c
	ld   bc, $0000                                   ; $454f: $01 $00 $00
	ld   bc, $546b                                   ; $4552: $01 $6b $54
	ld   [hl], l                                     ; $4555: $75
	ld   h, a                                        ; $4556: $67
	ld   a, e                                        ; $4557: $7b
	rst  $38                                         ; $4558: $ff
	rst  $38                                         ; $4559: $ff
	ld   [bc], a                                     ; $455a: $02
	and  l                                           ; $455b: $a5
	sbc  [hl]                                        ; $455c: $9e
	inc  bc                                          ; $455d: $03
	sub  h                                           ; $455e: $94
	inc  b                                           ; $455f: $04
	sbc  [hl]                                        ; $4560: $9e
	ld   l, l                                        ; $4561: $6d
	ld   l, a                                        ; $4562: $6f
	ld   e, d                                        ; $4563: $5a
	dec  c                                           ; $4564: $0d
	inc  bc                                          ; $4565: $03
	ld   d, d                                        ; $4566: $52
	ld   e, e                                        ; $4567: $5b
	sbc  c                                           ; $4568: $99
	dec  b                                           ; $4569: $05
	xor  a                                           ; $456a: $af
	and  b                                           ; $456b: $a0
	inc  bc                                          ; $456c: $03
	sub  e                                           ; $456d: $93
	sbc  b                                           ; $456e: $98
	ld   l, l                                        ; $456f: $6d
	ld   d, d                                        ; $4570: $52
	halt                                             ; $4571: $76
	ld   d, d                                        ; $4572: $52
	ld   d, h                                        ; $4573: $54
	ld   a, h                                        ; $4574: $7c
	sub  b                                           ; $4575: $90
	dec  c                                           ; $4576: $0d
	ld   d, b                                        ; $4577: $50
	sbc  b                                           ; $4578: $98
	adc  h                                           ; $4579: $8c
	ld   h, a                                        ; $457a: $67
	ld   e, a                                        ; $457b: $5f
	ld   [hl], a                                     ; $457c: $77
	rst  $38                                         ; $457d: $ff
	rst  $38                                         ; $457e: $ff
	dec  c                                           ; $457f: $0d
	nop                                              ; $4580: $00
	ld   a, [bc]                                     ; $4581: $0a
	ld   bc, $9a61                                   ; $4582: $01 $61 $9a
	ld   e, c                                        ; $4585: $59
	sub  a                                           ; $4586: $97
	inc  bc                                          ; $4587: $03
	ld   d, d                                        ; $4588: $52
	adc  h                                           ; $4589: $8c
	sbc  d                                           ; $458a: $9a
	ld   [hl], h                                     ; $458b: $74
	ld   e, l                                        ; $458c: $5d
	sbc  c                                           ; $458d: $99
	inc  bc                                          ; $458e: $03
	add  [hl]                                        ; $458f: $86
	sub  d                                           ; $4590: $92
	dec  c                                           ; $4591: $0d
	ld   b, $24                                      ; $4592: $06 $24
	dec  b                                           ; $4594: $05
	db   $10                                         ; $4595: $10
	ld   a, h                                        ; $4596: $7c
	ld   l, l                                        ; $4597: $6d
	adc  a                                           ; $4598: $8f
	ld   a, c                                        ; $4599: $79
	sub  b                                           ; $459a: $90
	sbc  [hl]                                        ; $459b: $9e
	inc  b                                           ; $459c: $04
	xor  b                                           ; $459d: $a8
	dec  b                                           ; $459e: $05
	ld   hl, $0da0                                   ; $459f: $21 $a0 $0d
	inc  bc                                          ; $45a2: $03
	ld   e, a                                        ; $45a3: $5f
	inc  b                                           ; $45a4: $04
	dec  b                                           ; $45a5: $05
	ld   a, h                                        ; $45a6: $7c
	sub  b                                           ; $45a7: $90
	ld   a, h                                        ; $45a8: $7c
	ld   a, c                                        ; $45a9: $79
	ld   h, l                                        ; $45aa: $65
	ld   l, l                                        ; $45ab: $6d
	ld   d, d                                        ; $45ac: $52
	and  c                                           ; $45ad: $a1
	ld   [hl], l                                     ; $45ae: $75
	ld   h, a                                        ; $45af: $67
	sbc  a                                           ; $45b0: $9f
	dec  c                                           ; $45b1: $0d
	nop                                              ; $45b2: $00
	ld   a, [bc]                                     ; $45b3: $0a
	inc  e                                           ; $45b4: $1c
	ld   bc, $0101                                   ; $45b5: $01 $01 $01
	ld   bc, $6d50                                   ; $45b8: $01 $50 $6d
	ld   h, l                                        ; $45bb: $65
	ld   a, h                                        ; $45bc: $7c
	inc  b                                           ; $45bd: $04
	ld   l, $7d                                      ; $45be: $2e $7d
	sbc  [hl]                                        ; $45c0: $9e
	ld   l, e                                        ; $45c1: $6b
	ld   d, h                                        ; $45c2: $54
	sub  d                                           ; $45c3: $92
	ld   [hl], c                                     ; $45c4: $71
	ld   [hl], h                                     ; $45c5: $74
	dec  c                                           ; $45c6: $0d
	inc  bc                                          ; $45c7: $03
	xor  b                                           ; $45c8: $a8
	ld   [hl], c                                     ; $45c9: $71
	ld   [hl], h                                     ; $45ca: $74
	ld   e, l                                        ; $45cb: $5d
	sbc  d                                           ; $45cc: $9a
	ld   l, l                                        ; $45cd: $6d
	and  c                                           ; $45ce: $a1
	ld   [hl], l                                     ; $45cf: $75
	ld   h, a                                        ; $45d0: $67
	sub  [hl]                                        ; $45d1: $96
	sbc  a                                           ; $45d2: $9f
	dec  c                                           ; $45d3: $0d
	nop                                              ; $45d4: $00
	ld   a, [bc]                                     ; $45d5: $0a
	ld   bc, $9166                                   ; $45d6: $01 $66 $91
	sbc  [hl]                                        ; $45d9: $9e
	ld   d, b                                        ; $45da: $50
	ld   l, l                                        ; $45db: $6d
	ld   h, l                                        ; $45dc: $65
	ld   [bc], a                                     ; $45dd: $02
	ld   a, a                                        ; $45de: $7f
	ld   e, e                                        ; $45df: $5b
	adc  h                                           ; $45e0: $8c
	ld   h, a                                        ; $45e1: $67
	ld   e, c                                        ; $45e2: $59
	sub  a                                           ; $45e3: $97
	sbc  a                                           ; $45e4: $9f
	dec  c                                           ; $45e5: $0d
	adc  h                                           ; $45e6: $8c
	ld   l, l                                        ; $45e7: $6d
	ld   [bc], a                                     ; $45e8: $02
	xor  d                                           ; $45e9: $aa
	ld   [hl], l                                     ; $45ea: $75
	rst  $38                                         ; $45eb: $ff
	rst  $38                                         ; $45ec: $ff
	dec  c                                           ; $45ed: $0d
	nop                                              ; $45ee: $00
	ld   a, [bc]                                     ; $45ef: $0a
	dec  c                                           ; $45f0: $0d
	nop                                              ; $45f1: $00
	nop                                              ; $45f2: $00
	rrca                                             ; $45f3: $0f
	nop                                              ; $45f4: $00
	ld   bc, $1e09                                   ; $45f5: $01 $09 $1e
	nop                                              ; $45f8: $00
	rrca                                             ; $45f9: $0f
	nop                                              ; $45fa: $00
	ld   bc, $6701                                   ; $45fb: $01 $01 $67
	adc  l                                           ; $45fe: $8d
	sbc  d                                           ; $45ff: $9a
	ld   h, e                                        ; $4600: $63
	and  c                                           ; $4601: $a1
	ld   [hl], h                                     ; $4602: $74
	sbc  [hl]                                        ; $4603: $9e
	ld   h, e                                        ; $4604: $63
	ld   e, l                                        ; $4605: $5d
	sub  a                                           ; $4606: $97
	ld   h, e                                        ; $4607: $63
	and  c                                           ; $4608: $a1
	ld   e, c                                        ; $4609: $59
	sub  a                                           ; $460a: $97
	dec  c                                           ; $460b: $0d
	ld   [bc], a                                     ; $460c: $02
	sub  l                                           ; $460d: $95
	ld   [hl], h                                     ; $460e: $74
	sbc  [hl]                                        ; $460f: $9e
	ld   [hl], a                                     ; $4610: $77
	and  c                                           ; $4611: $a1
	ld   a, b                                        ; $4612: $78
	inc  b                                           ; $4613: $04
	ld   a, b                                        ; $4614: $78
	ld   [hl], l                                     ; $4615: $75
	ld   h, a                                        ; $4616: $67
	ld   e, c                                        ; $4617: $59
	ld   sp, hl                                      ; $4618: $f9
	dec  c                                           ; $4619: $0d
	nop                                              ; $461a: $00
	ld   a, [bc]                                     ; $461b: $0a
	inc  e                                           ; $461c: $1c
	ld   bc, $0000                                   ; $461d: $01 $00 $00
	ld   bc, $546b                                   ; $4620: $01 $6b $54
	ld   [hl], l                                     ; $4623: $75
	ld   h, a                                        ; $4624: $67
	ld   a, e                                        ; $4625: $7b
	rst  $38                                         ; $4626: $ff
	rst  $38                                         ; $4627: $ff
	dec  c                                           ; $4628: $0d
	ld   d, d                                        ; $4629: $52
	ld   [hl], c                                     ; $462a: $71
	ld   e, a                                        ; $462b: $5f
	and  c                                           ; $462c: $a1
	ld   h, a                                        ; $462d: $67
	sbc  c                                           ; $462e: $99
	halt                                             ; $462f: $76
	dec  c                                           ; $4630: $0d
	sbc  l                                           ; $4631: $9d
	ld   e, d                                        ; $4632: $5a
	adc  h                                           ; $4633: $8c
	adc  h                                           ; $4634: $8c
	ld   a, b                                        ; $4635: $78
	inc  bc                                          ; $4636: $03
	add  d                                           ; $4637: $82
	ld   a, c                                        ; $4638: $79
	ld   [bc], a                                     ; $4639: $02
	sub  l                                           ; $463a: $95
	ld   d, [hl]                                     ; $463b: $56
	adc  h                                           ; $463c: $8c
	ld   h, a                                        ; $463d: $67
	ld   e, d                                        ; $463e: $5a
	sbc  [hl]                                        ; $463f: $9e
	dec  c                                           ; $4640: $0d
	nop                                              ; $4641: $00
	ld   a, [bc]                                     ; $4642: $0a
	inc  e                                           ; $4643: $1c
	ld   bc, $0101                                   ; $4644: $01 $01 $01
	ld   bc, $8f04                                   ; $4647: $01 $04 $8f
	inc  b                                           ; $464a: $04
	jr   jr_058_46ca                                 ; $464b: $18 $7d

	inc  bc                                          ; $464d: $03
	db   $d3                                         ; $464e: $d3
	dec  b                                           ; $464f: $05
	ld   a, [bc]                                     ; $4650: $0a
	ld   [bc], a                                     ; $4651: $02
	and  [hl]                                        ; $4652: $a6
	ld   [hl], l                                     ; $4653: $75
	sbc  [hl]                                        ; $4654: $9e
	dec  c                                           ; $4655: $0d
	dec  b                                           ; $4656: $05
	pop  de                                          ; $4657: $d1
	ld   d, d                                        ; $4658: $52
	sub  d                                           ; $4659: $92
	sbc  b                                           ; $465a: $98
	ld   a, h                                        ; $465b: $7c
	ld   d, b                                        ; $465c: $50
	sbc  c                                           ; $465d: $99
	dec  c                                           ; $465e: $0d
	sub  d                                           ; $465f: $92
	ld   h, e                                        ; $4660: $63
	ld   h, l                                        ; $4661: $65
	ld   d, d                                        ; $4662: $52
	inc  bc                                          ; $4663: $03
	add  d                                           ; $4664: $82
	ld   a, b                                        ; $4665: $78
	and  c                                           ; $4666: $a1
	ld   [hl], l                                     ; $4667: $75
	ld   h, a                                        ; $4668: $67
	sub  [hl]                                        ; $4669: $96
	sbc  a                                           ; $466a: $9f
	dec  c                                           ; $466b: $0d
	nop                                              ; $466c: $00
	ld   a, [bc]                                     ; $466d: $0a
	inc  e                                           ; $466e: $1c
	ld   bc, $0000                                   ; $466f: $01 $00 $00
	ld   bc, $9166                                   ; $4672: $01 $66 $91
	sbc  [hl]                                        ; $4675: $9e
	ld   d, b                                        ; $4676: $50
	ld   l, l                                        ; $4677: $6d
	ld   h, l                                        ; $4678: $65
	ld   [bc], a                                     ; $4679: $02
	ld   a, a                                        ; $467a: $7f
	ld   e, e                                        ; $467b: $5b
	adc  h                                           ; $467c: $8c
	ld   h, a                                        ; $467d: $67
	ld   e, c                                        ; $467e: $59
	sub  a                                           ; $467f: $97
	sbc  a                                           ; $4680: $9f
	dec  c                                           ; $4681: $0d
	ld   [bc], a                                     ; $4682: $02
	and  l                                           ; $4683: $a5
	inc  b                                           ; $4684: $04
	xor  d                                           ; $4685: $aa
	sub  b                                           ; $4686: $90
	ld   [bc], a                                     ; $4687: $02
	jr   nz, jr_058_468e                             ; $4688: $20 $04

	xor  d                                           ; $468a: $aa
	sbc  [hl]                                        ; $468b: $9e
	dec  c                                           ; $468c: $0d
	ld   e, d                                        ; $468d: $5a

jr_058_468e:
	and  c                                           ; $468e: $a1
	ld   a, [hl]                                     ; $468f: $7e
	ld   [hl], c                                     ; $4690: $71
	ld   [hl], h                                     ; $4691: $74
	ld   e, l                                        ; $4692: $5d
	ld   l, [hl]                                     ; $4693: $6e
	ld   h, e                                        ; $4694: $63
	ld   d, d                                        ; $4695: $52
	sbc  a                                           ; $4696: $9f
	dec  c                                           ; $4697: $0d
	nop                                              ; $4698: $00
	ld   a, [bc]                                     ; $4699: $0a
	dec  c                                           ; $469a: $0d
	nop                                              ; $469b: $00
	nop                                              ; $469c: $00
	rrca                                             ; $469d: $0f
	nop                                              ; $469e: $00
	ld   bc, $1e09                                   ; $469f: $01 $09 $1e
	nop                                              ; $46a2: $00
	nop                                              ; $46a3: $00
	inc  b                                           ; $46a4: $04
	add  b                                           ; $46a5: $80
	jp   z, $0001                                    ; $46a6: $ca $01 $00

	jr   nz, jr_058_46ab                             ; $46a9: $20 $00

jr_058_46ab:
	ld   c, $2f                                      ; $46ab: $0e $2f
	inc  e                                           ; $46ad: $1c
	inc  c                                           ; $46ae: $0c
	nop                                              ; $46af: $00
	nop                                              ; $46b0: $00
	ld   [bc], a                                     ; $46b1: $02
	ld   bc, $9750                                   ; $46b2: $01 $50 $97
	sbc  [hl]                                        ; $46b5: $9e
	ld   [$6300], sp                                 ; $46b6: $08 $00 $63
	and  c                                           ; $46b9: $a1
	sbc  a                                           ; $46ba: $9f
	dec  c                                           ; $46bb: $0d
	nop                                              ; $46bc: $00
	ld   a, [bc]                                     ; $46bd: $0a
	db   $10                                         ; $46be: $10
	ld   [$0100], sp                                 ; $46bf: $08 $00 $01
	ld   h, c                                        ; $46c2: $61
	sbc  d                                           ; $46c3: $9a
	ld   h, e                                        ; $46c4: $63
	ld   [hl], c                                     ; $46c5: $71
	ld   e, e                                        ; $46c6: $5b
	sbc  [hl]                                        ; $46c7: $9e
	dec  b                                           ; $46c8: $05
	inc  de                                          ; $46c9: $13

jr_058_46ca:
	ld   [bc], a                                     ; $46ca: $02
	ld   hl, $0375                                   ; $46cb: $21 $75 $03
	dec  l                                           ; $46ce: $2d
	ld   [hl], c                                     ; $46cf: $71
	ld   l, l                                        ; $46d0: $6d
	dec  c                                           ; $46d1: $0d
	ld   e, b                                        ; $46d2: $58
	inc  bc                                          ; $46d3: $03
	sub  e                                           ; $46d4: $93
	sbc  b                                           ; $46d5: $98
	ld   a, b                                        ; $46d6: $78
	ld   a, h                                        ; $46d7: $7c
	ld   [hl], l                                     ; $46d8: $75
	ld   h, a                                        ; $46d9: $67
	ld   e, d                                        ; $46da: $5a
	sbc  [hl]                                        ; $46db: $9e
	dec  c                                           ; $46dc: $0d
	inc  bc                                          ; $46dd: $03
	xor  c                                           ; $46de: $a9
	ld   a, h                                        ; $46df: $7c
	ld   e, c                                        ; $46e0: $59
	inc  b                                           ; $46e1: $04
	sbc  [hl]                                        ; $46e2: $9e
	ld   e, c                                        ; $46e3: $59
	sub  a                                           ; $46e4: $97
	ld   a, b                                        ; $46e5: $78
	ld   d, d                                        ; $46e6: $52
	and  c                                           ; $46e7: $a1
	ld   [hl], l                                     ; $46e8: $75
	ld   h, a                                        ; $46e9: $67
	sub  [hl]                                        ; $46ea: $96
	sbc  a                                           ; $46eb: $9f
	dec  c                                           ; $46ec: $0d
	nop                                              ; $46ed: $00
	ld   a, [bc]                                     ; $46ee: $0a
	rrca                                             ; $46ef: $0f
	inc  c                                           ; $46f0: $0c
	ld   bc, $6701                                   ; $46f1: $01 $01 $67
	adc  l                                           ; $46f4: $8d
	adc  h                                           ; $46f5: $8c
	ld   l, c                                        ; $46f6: $69
	and  c                                           ; $46f7: $a1
	ld   e, d                                        ; $46f8: $5a
	dec  c                                           ; $46f9: $0d
	ld   h, e                                        ; $46fa: $63
	ld   e, d                                        ; $46fb: $5a
	ld   h, l                                        ; $46fc: $65
	ld   [hl], h                                     ; $46fd: $74
	ld   d, d                                        ; $46fe: $52
	sbc  c                                           ; $46ff: $99
	inc  bc                                          ; $4700: $03
	add  d                                           ; $4701: $82
	and  b                                           ; $4702: $a0
	ld   [bc], a                                     ; $4703: $02
	sub  l                                           ; $4704: $95
	ld   e, c                                        ; $4705: $59
	ld   e, a                                        ; $4706: $5f
	ld   l, l                                        ; $4707: $6d
	sub  a                                           ; $4708: $97
	dec  c                                           ; $4709: $0d
	inc  bc                                          ; $470a: $03
	ld   [$7465], a                                  ; $470b: $ea $65 $74
	ld   e, b                                        ; $470e: $58
	ld   d, d                                        ; $470f: $52
	ld   [hl], h                                     ; $4710: $74
	ld   e, l                                        ; $4711: $5d
	ld   l, [hl]                                     ; $4712: $6e
	ld   h, e                                        ; $4713: $63
	ld   d, d                                        ; $4714: $52
	sbc  a                                           ; $4715: $9f
	dec  c                                           ; $4716: $0d
	nop                                              ; $4717: $00
	ld   a, [bc]                                     ; $4718: $0a
	rrca                                             ; $4719: $0f
	nop                                              ; $471a: $00
	ld   bc, $0101                                   ; $471b: $01 $01 $01
	inc  bc                                          ; $471e: $03
	ld   e, b                                        ; $471f: $58
	inc  bc                                          ; $4720: $03
	sub  e                                           ; $4721: $93
	sbc  b                                           ; $4722: $98
	ld   e, c                                        ; $4723: $59
	rst  $38                                         ; $4724: $ff
	inc  bc                                          ; $4725: $03
	xor  c                                           ; $4726: $a9
	ld   a, h                                        ; $4727: $7c
	ld   l, [hl]                                     ; $4728: $6e
	sbc  e                                           ; $4729: $9b
	ld   d, h                                        ; $472a: $54
	rst  $38                                         ; $472b: $ff
	rst  $38                                         ; $472c: $ff
	ld   bc, $0d04                                   ; $472d: $01 $04 $0d
	nop                                              ; $4730: $00
	ld   a, [bc]                                     ; $4731: $0a
	dec  b                                           ; $4732: $05
	add  b                                           ; $4733: $80
	ld   a, [bc]                                     ; $4734: $0a
	ld   bc, $0001                                   ; $4735: $01 $01 $00
	nop                                              ; $4738: $00
	nop                                              ; $4739: $00
	rrca                                             ; $473a: $0f
	nop                                              ; $473b: $00
	ld   bc, $0102                                   ; $473c: $01 $02 $01
	ld   e, b                                        ; $473f: $58
	ld   a, l                                        ; $4740: $7d
	sub  [hl]                                        ; $4741: $96
	ld   d, h                                        ; $4742: $54
	sbc  [hl]                                        ; $4743: $9e
	and  e                                           ; $4744: $a3
	and  l                                           ; $4745: $a5
	db   $ec                                         ; $4746: $ec
	cp   d                                           ; $4747: $ba
	sbc  a                                           ; $4748: $9f
	dec  c                                           ; $4749: $0d
	nop                                              ; $474a: $00
	ld   a, [bc]                                     ; $474b: $0a
	inc  e                                           ; $474c: $1c
	inc  b                                           ; $474d: $04
	nop                                              ; $474e: $00
	nop                                              ; $474f: $00
	ld   bc, $9e50                                   ; $4750: $01 $50 $9e
	ld   e, b                                        ; $4753: $58
	ld   a, l                                        ; $4754: $7d
	sub  [hl]                                        ; $4755: $96
	ld   d, h                                        ; $4756: $54
	sbc  a                                           ; $4757: $9f
	dec  c                                           ; $4758: $0d
	ld   l, a                                        ; $4759: $6f
	ld   d, d                                        ; $475a: $52
	ld   [bc], a                                     ; $475b: $02
	inc  de                                          ; $475c: $13
	ld   l, a                                        ; $475d: $6f
	sub  c                                           ; $475e: $91
	and  c                                           ; $475f: $a1
	sbc  a                                           ; $4760: $9f
	dec  c                                           ; $4761: $0d
	nop                                              ; $4762: $00
	ld   a, [bc]                                     ; $4763: $0a
	rrca                                             ; $4764: $0f
	nop                                              ; $4765: $00
	ld   bc, $0101                                   ; $4766: $01 $01 $01
	inc  bc                                          ; $4769: $03
	inc  b                                           ; $476a: $04
	ld   c, c                                        ; $476b: $49
	and  b                                           ; $476c: $a0
	ld   [bc], a                                     ; $476d: $02
	jp   nz, Jump_058_5461                           ; $476e: $c2 $61 $54

	ld   e, c                                        ; $4771: $59
	rst  $38                                         ; $4772: $ff
	rst  $38                                         ; $4773: $ff
	ld   bc, $0d04                                   ; $4774: $01 $04 $0d
	nop                                              ; $4777: $00
	ld   a, [bc]                                     ; $4778: $0a
	add  hl, de                                      ; $4779: $19
	dec  b                                           ; $477a: $05
	inc  bc                                          ; $477b: $03
	inc  bc                                          ; $477c: $03
	ld   l, d                                        ; $477d: $6a
	add  a                                           ; $477e: $87
	inc  b                                           ; $477f: $04
	sub  d                                           ; $4780: $92
	ld   a, h                                        ; $4781: $7c
	dec  b                                           ; $4782: $05
	jr   nz, jr_058_4789                             ; $4783: $20 $04

	dec  d                                           ; $4785: $15
	nop                                              ; $4786: $00
	nop                                              ; $4787: $00
	ld   [bc], a                                     ; $4788: $02

jr_058_4789:
	add  d                                           ; $4789: $82
	inc  bc                                          ; $478a: $03
	ld   d, [hl]                                     ; $478b: $56
	ld   a, h                                        ; $478c: $7c
	dec  b                                           ; $478d: $05
	jr   nz, @+$06                                   ; $478e: $20 $04

	dec  d                                           ; $4790: $15
	nop                                              ; $4791: $00
	ld   bc, $cf02                                   ; $4792: $01 $02 $cf
	dec  b                                           ; $4795: $05
	ld   a, [de]                                     ; $4796: $1a
	ld   a, h                                        ; $4797: $7c
	dec  b                                           ; $4798: $05
	jr   nz, jr_058_479f                             ; $4799: $20 $04

	dec  d                                           ; $479b: $15
	nop                                              ; $479c: $00
	ld   [bc], a                                     ; $479d: $02
	rlca                                             ; $479e: $07

jr_058_479f:
	sbc  h                                           ; $479f: $9c
	nop                                              ; $47a0: $00
	ld   [bc], a                                     ; $47a1: $02
	inc  bc                                          ; $47a2: $03
	ld   bc, $2000                                   ; $47a3: $01 $00 $20
	nop                                              ; $47a6: $00
	rlca                                             ; $47a7: $07
	ld   [bc], a                                     ; $47a8: $02
	ld   [bc], a                                     ; $47a9: $02
	ld   [bc], a                                     ; $47aa: $02
	inc  bc                                          ; $47ab: $03
	ld   bc, $2001                                   ; $47ac: $01 $01 $20
	nop                                              ; $47af: $00
	rlca                                             ; $47b0: $07
	jp   nc, $0203                                   ; $47b1: $d2 $03 $02

	inc  bc                                          ; $47b4: $03
	ld   bc, $2002                                   ; $47b5: $01 $02 $20
	nop                                              ; $47b8: $00
	ld   b, $82                                      ; $47b9: $06 $82
	nop                                              ; $47bb: $00
	inc  e                                           ; $47bc: $1c
	inc  b                                           ; $47bd: $04
	nop                                              ; $47be: $00
	nop                                              ; $47bf: $00
	ld   bc, $955b                                   ; $47c0: $01 $5b $95
	ld   d, h                                        ; $47c3: $54
	sub  b                                           ; $47c4: $90
	ld   d, d                                        ; $47c5: $52
	ld   l, a                                        ; $47c6: $6f
	ld   a, c                                        ; $47c7: $79
	ld   l, a                                        ; $47c8: $6f
	sbc  [hl]                                        ; $47c9: $9e
	dec  c                                           ; $47ca: $0d
	ld   e, d                                        ; $47cb: $5a
	and  c                                           ; $47cc: $a1
	ld   a, [hl]                                     ; $47cd: $7e
	sbc  e                                           ; $47ce: $9b
	ld   d, h                                        ; $47cf: $54
	ld   a, e                                        ; $47d0: $7b
	ld   a, [$000d]                                  ; $47d1: $fa $0d $00
	ld   a, [bc]                                     ; $47d4: $0a
	nop                                              ; $47d5: $00
	rrca                                             ; $47d6: $0f
	nop                                              ; $47d7: $00
	ld   bc, $a301                                   ; $47d8: $01 $01 $a3
	and  l                                           ; $47db: $a5
	db   $ec                                         ; $47dc: $ec
	cp   d                                           ; $47dd: $ba
	ld   [hl], c                                     ; $47de: $71
	ld   [hl], h                                     ; $47df: $74
	sbc  [hl]                                        ; $47e0: $9e
	halt                                             ; $47e1: $76
	ld   h, c                                        ; $47e2: $61
	sbc  e                                           ; $47e3: $9b
	ld   [hl], h                                     ; $47e4: $74
	and  c                                           ; $47e5: $a1
	ld   a, c                                        ; $47e6: $79
	dec  c                                           ; $47e7: $0d
	inc  b                                           ; $47e8: $04
	ld   c, c                                        ; $47e9: $49
	and  b                                           ; $47ea: $a0
	ld   e, c                                        ; $47eb: $59
	ld   e, a                                        ; $47ec: $5f
	ld   [hl], h                                     ; $47ed: $74
	inc  bc                                          ; $47ee: $03
	ld   l, d                                        ; $47ef: $6a
	add  a                                           ; $47f0: $87
	sbc  c                                           ; $47f1: $99
	ld   sp, hl                                      ; $47f2: $f9
	dec  c                                           ; $47f3: $0d
	nop                                              ; $47f4: $00
	ld   a, [bc]                                     ; $47f5: $0a
	inc  e                                           ; $47f6: $1c
	inc  b                                           ; $47f7: $04
	nop                                              ; $47f8: $00
	nop                                              ; $47f9: $00
	ld   bc, $c2d0                                   ; $47fa: $01 $d0 $c2
	ldh  [$c5], a                                    ; $47fd: $e0 $c5
	ld   l, [hl]                                     ; $47ff: $6e
	sub  [hl]                                        ; $4800: $96
	sbc  a                                           ; $4801: $9f
	dec  c                                           ; $4802: $0d
	nop                                              ; $4803: $00
	ld   a, [bc]                                     ; $4804: $0a
	add  hl, de                                      ; $4805: $19
	dec  b                                           ; $4806: $05
	inc  bc                                          ; $4807: $03
	ld   e, b                                        ; $4808: $58
	ld   d, d                                        ; $4809: $52
	ld   h, l                                        ; $480a: $65
	ld   l, e                                        ; $480b: $6b
	ld   d, h                                        ; $480c: $54
	ld   l, [hl]                                     ; $480d: $6e
	ld   a, e                                        ; $480e: $7b
	nop                                              ; $480f: $00
	nop                                              ; $4810: $00
	ld   h, a                                        ; $4811: $67
	ld   h, [hl]                                     ; $4812: $66
	sub  l                                           ; $4813: $95
	ld   d, h                                        ; $4814: $54
	sub  h                                           ; $4815: $94
	ld   h, [hl]                                     ; $4816: $66
	sub  c                                           ; $4817: $91
	ld   a, b                                        ; $4818: $78
	ld   d, d                                        ; $4819: $52
	ld   a, h                                        ; $481a: $7c
	ld   sp, hl                                      ; $481b: $f9
	nop                                              ; $481c: $00
	ld   bc, $905b                                   ; $481d: $01 $5b $90
	ld   l, a                                        ; $4820: $6f
	ld   [bc], a                                     ; $4821: $02
	jr   z, jr_058_4877                              ; $4822: $28 $53

	rst  $38                                         ; $4824: $ff
	rst  $38                                         ; $4825: $ff
	nop                                              ; $4826: $00
	ld   [bc], a                                     ; $4827: $02
	rlca                                             ; $4828: $07
	daa                                              ; $4829: $27
	ld   bc, $0302                                   ; $482a: $01 $02 $03
	ld   bc, $2000                                   ; $482d: $01 $00 $20
	nop                                              ; $4830: $00
	rlca                                             ; $4831: $07
	ld   h, b                                        ; $4832: $60
	ld   bc, $0302                                   ; $4833: $01 $02 $03
	ld   bc, $2001                                   ; $4836: $01 $01 $20
	nop                                              ; $4839: $00
	rlca                                             ; $483a: $07
	cp   [hl]                                        ; $483b: $be
	ld   bc, $0302                                   ; $483c: $01 $02 $03
	ld   bc, $2002                                   ; $483f: $01 $02 $20
	nop                                              ; $4842: $00
	ld   b, $0c                                      ; $4843: $06 $0c
	ld   bc, $040f                                   ; $4845: $01 $0f $04
	nop                                              ; $4848: $00
	ld   bc, $6152                                   ; $4849: $01 $52 $61
	ld   d, h                                        ; $484c: $54
	sbc  [hl]                                        ; $484d: $9e
	cp   c                                           ; $484e: $b9
	push hl                                          ; $484f: $e5
	push af                                          ; $4850: $f5
	sbc  $fb                                         ; $4851: $de $fb
	db   $ed                                         ; $4853: $ed
	sbc  a                                           ; $4854: $9f
	dec  c                                           ; $4855: $0d
	nop                                              ; $4856: $00
	ld   a, [bc]                                     ; $4857: $0a
	dec  c                                           ; $4858: $0d
	nop                                              ; $4859: $00
	nop                                              ; $485a: $00
	rrca                                             ; $485b: $0f
	nop                                              ; $485c: $00
	ld   bc, $1e09                                   ; $485d: $01 $09 $1e
	nop                                              ; $4860: $00
	rrca                                             ; $4861: $0f
	nop                                              ; $4862: $00
	ld   bc, $5801                                   ; $4863: $01 $01 $58
	ld   d, d                                        ; $4866: $52
	ld   h, l                                        ; $4867: $65
	ld   l, e                                        ; $4868: $6b
	ld   d, h                                        ; $4869: $54
	ld   l, [hl]                                     ; $486a: $6e
	ld   a, e                                        ; $486b: $7b
	sbc  a                                           ; $486c: $9f
	dec  c                                           ; $486d: $0d
	nop                                              ; $486e: $00
	ld   a, [bc]                                     ; $486f: $0a
	inc  e                                           ; $4870: $1c
	inc  b                                           ; $4871: $04
	ld   bc, $1d01                                   ; $4872: $01 $01 $1d
	ld   b, b                                        ; $4875: $40
	inc  d                                           ; $4876: $14

jr_058_4877:
	inc  bc                                          ; $4877: $03
	inc  d                                           ; $4878: $14
	ld   bc, $2802                                   ; $4879: $01 $02 $28
	nop                                              ; $487c: $00
	ld   bc, $a154                                   ; $487d: $01 $54 $a1
	ld   a, [$500d]                                  ; $4880: $fa $0d $50
	adc  h                                           ; $4883: $8c
	ld   e, l                                        ; $4884: $5d
	ld   [hl], h                                     ; $4885: $74
	sbc  [hl]                                        ; $4886: $9e
	ld   h, a                                        ; $4887: $67
	ld   [hl], c                                     ; $4888: $71
	ld   h, d                                        ; $4889: $62
	ld   e, l                                        ; $488a: $5d
	dec  c                                           ; $488b: $0d
	ld   e, b                                        ; $488c: $58
	ld   d, d                                        ; $488d: $52
	ld   h, l                                        ; $488e: $65
	ld   d, d                                        ; $488f: $52
	and  c                                           ; $4890: $a1
	ld   l, [hl]                                     ; $4891: $6e
	sub  [hl]                                        ; $4892: $96
	ld   a, [$000d]                                  ; $4893: $fa $0d $00
	ld   a, [bc]                                     ; $4896: $0a
	ld   b, $a4                                      ; $4897: $06 $a4
	ld   bc, $000f                                   ; $4899: $01 $0f $00
	ld   bc, $6701                                   ; $489c: $01 $01 $67
	ld   h, [hl]                                     ; $489f: $66
	sub  l                                           ; $48a0: $95
	ld   d, h                                        ; $48a1: $54
	sub  h                                           ; $48a2: $94
	ld   h, [hl]                                     ; $48a3: $66
	sub  c                                           ; $48a4: $91
	ld   a, b                                        ; $48a5: $78
	ld   d, d                                        ; $48a6: $52
	ld   a, h                                        ; $48a7: $7c
	ld   sp, hl                                      ; $48a8: $f9
	dec  c                                           ; $48a9: $0d
	nop                                              ; $48aa: $00
	ld   a, [bc]                                     ; $48ab: $0a
	inc  e                                           ; $48ac: $1c
	inc  b                                           ; $48ad: $04
	inc  bc                                          ; $48ae: $03
	inc  bc                                          ; $48af: $03
	dec  e                                           ; $48b0: $1d
	ld   b, b                                        ; $48b1: $40
	inc  d                                           ; $48b2: $14
	inc  bc                                          ; $48b3: $03
	inc  d                                           ; $48b4: $14
	ld   bc, $2901                                   ; $48b5: $01 $01 $29
	nop                                              ; $48b8: $00
	ld   bc, $716e                                   ; $48b9: $01 $6e $71
	ld   [hl], h                                     ; $48bc: $74
	rst  $38                                         ; $48bd: $ff
	rst  $38                                         ; $48be: $ff
	dec  c                                           ; $48bf: $0d
	ld   h, a                                        ; $48c0: $67
	ld   [hl], c                                     ; $48c1: $71
	ld   a, a                                        ; $48c2: $7f
	ld   d, d                                        ; $48c3: $52
	and  c                                           ; $48c4: $a1
	ld   l, [hl]                                     ; $48c5: $6e
	sub  b                                           ; $48c6: $90
	and  c                                           ; $48c7: $a1
	rst  $38                                         ; $48c8: $ff
	rst  $38                                         ; $48c9: $ff
	dec  c                                           ; $48ca: $0d
	and  e                                           ; $48cb: $a3
	and  l                                           ; $48cc: $a5
	db   $ec                                         ; $48cd: $ec
	cp   d                                           ; $48ce: $ba
	sbc  [hl]                                        ; $48cf: $9e
	ld   d, b                                        ; $48d0: $50
	adc  h                                           ; $48d1: $8c
	ld   d, d                                        ; $48d2: $52
	ld   a, h                                        ; $48d3: $7c
	ld   e, d                                        ; $48d4: $5a
	ld   h, a                                        ; $48d5: $67
	ld   e, e                                        ; $48d6: $5b
	sbc  a                                           ; $48d7: $9f
	dec  c                                           ; $48d8: $0d
	nop                                              ; $48d9: $00
	ld   a, [bc]                                     ; $48da: $0a
	ld   b, $a4                                      ; $48db: $06 $a4
	ld   bc, $6601                                   ; $48dd: $01 $01 $66
	sub  c                                           ; $48e0: $91
	sbc  [hl]                                        ; $48e1: $9e
	and  e                                           ; $48e2: $a3
	and  l                                           ; $48e3: $a5
	db   $ec                                         ; $48e4: $ec
	cp   d                                           ; $48e5: $ba
	sub  b                                           ; $48e6: $90
	ld   d, h                                        ; $48e7: $54
	ld   d, d                                        ; $48e8: $52
	ld   e, l                                        ; $48e9: $5d
	ld   a, e                                        ; $48ea: $7b
	sbc  a                                           ; $48eb: $9f
	dec  c                                           ; $48ec: $0d
	nop                                              ; $48ed: $00
	ld   a, [bc]                                     ; $48ee: $0a
	dec  c                                           ; $48ef: $0d
	nop                                              ; $48f0: $00
	nop                                              ; $48f1: $00
	rrca                                             ; $48f2: $0f
	nop                                              ; $48f3: $00
	ld   bc, $1e09                                   ; $48f4: $01 $09 $1e
	nop                                              ; $48f7: $00
	rrca                                             ; $48f8: $0f
	nop                                              ; $48f9: $00
	ld   bc, $5b01                                   ; $48fa: $01 $01 $5b
	sub  b                                           ; $48fd: $90
	ld   l, a                                        ; $48fe: $6f
	ld   [bc], a                                     ; $48ff: $02
	jr   z, jr_058_4955                              ; $4900: $28 $53

	rst  $38                                         ; $4902: $ff
	rst  $38                                         ; $4903: $ff
	dec  c                                           ; $4904: $0d
	nop                                              ; $4905: $00
	ld   a, [bc]                                     ; $4906: $0a
	inc  e                                           ; $4907: $1c
	inc  b                                           ; $4908: $04
	rlca                                             ; $4909: $07
	rlca                                             ; $490a: $07
	dec  e                                           ; $490b: $1d
	ld   b, b                                        ; $490c: $40
	inc  d                                           ; $490d: $14
	inc  bc                                          ; $490e: $03
	inc  d                                           ; $490f: $14
	ld   bc, $2903                                   ; $4910: $01 $03 $29
	nop                                              ; $4913: $00
	ld   bc, $905b                                   ; $4914: $01 $5b $90
	ld   l, a                                        ; $4917: $6f
	sbc  l                                           ; $4918: $9d
	sbc  c                                           ; $4919: $99
	ld   e, l                                        ; $491a: $5d
	ld   a, b                                        ; $491b: $78
	and  c                                           ; $491c: $a1
	ld   e, c                                        ; $491d: $59
	ld   a, b                                        ; $491e: $78
	ld   d, d                                        ; $491f: $52
	sub  b                                           ; $4920: $90
	and  c                                           ; $4921: $a1
	ld   a, [$6f0d]                                  ; $4922: $fa $0d $6f
	ld   d, d                                        ; $4925: $52
	ld   [bc], a                                     ; $4926: $02
	inc  de                                          ; $4927: $13
	ld   l, a                                        ; $4928: $6f
	sub  c                                           ; $4929: $91
	and  c                                           ; $492a: $a1
	sbc  [hl]                                        ; $492b: $9e
	xor  [hl]                                        ; $492c: $ae
	db   $eb                                         ; $492d: $eb
	and  l                                           ; $492e: $a5
	ld   a, [$000d]                                  ; $492f: $fa $0d $00
	ld   a, [bc]                                     ; $4932: $0a
	dec  c                                           ; $4933: $0d
	nop                                              ; $4934: $00
	nop                                              ; $4935: $00
	rrca                                             ; $4936: $0f
	nop                                              ; $4937: $00
	ld   bc, $1e09                                   ; $4938: $01 $09 $1e
	nop                                              ; $493b: $00
	rrca                                             ; $493c: $0f
	nop                                              ; $493d: $00
	ld   bc, $a301                                   ; $493e: $01 $01 $a3
	and  l                                           ; $4941: $a5
	db   $ec                                         ; $4942: $ec
	cp   d                                           ; $4943: $ba
	ld   [hl], c                                     ; $4944: $71
	ld   [hl], h                                     ; $4945: $74
	sbc  [hl]                                        ; $4946: $9e
	inc  bc                                          ; $4947: $03
	ld   [hl], d                                     ; $4948: $72
	inc  b                                           ; $4949: $04
	ld   c, h                                        ; $494a: $4c
	ld   [bc], a                                     ; $494b: $02
	ld   d, $04                                      ; $494c: $16 $04
	ld   [hl+], a                                    ; $494e: $22
	ld   a, h                                        ; $494f: $7c
	dec  c                                           ; $4950: $0d
	ld   [hl], a                                     ; $4951: $77
	sbc  d                                           ; $4952: $9a
	ld   e, d                                        ; $4953: $5a
	ld   [bc], a                                     ; $4954: $02

jr_058_4955:
	sbc  d                                           ; $4955: $9a
	ld   e, e                                        ; $4956: $5b
	ld   a, b                                        ; $4957: $78
	ld   a, h                                        ; $4958: $7c
	ld   sp, hl                                      ; $4959: $f9
	dec  c                                           ; $495a: $0d
	nop                                              ; $495b: $00
	ld   a, [bc]                                     ; $495c: $0a
	inc  e                                           ; $495d: $1c
	inc  b                                           ; $495e: $04
	inc  bc                                          ; $495f: $03
	inc  bc                                          ; $4960: $03
	ld   bc, $76a1                                   ; $4961: $01 $a1 $76
	ld   a, e                                        ; $4964: $7b
	rst  $38                                         ; $4965: $ff
	rst  $38                                         ; $4966: $ff
	dec  c                                           ; $4967: $0d
	nop                                              ; $4968: $00
	inc  e                                           ; $4969: $1c
	inc  b                                           ; $496a: $04
	ld   bc, $0101                                   ; $496b: $01 $01 $01
	ld   l, d                                        ; $496e: $6a
	ei                                               ; $496f: $fb
	and  c                                           ; $4970: $a1
	add  h                                           ; $4971: $84
	ld   h, a                                        ; $4972: $67
	ld   e, e                                        ; $4973: $5b
	ld   a, [$000d]                                  ; $4974: $fa $0d $00
	ld   a, [bc]                                     ; $4977: $0a
	ld   bc, $526f                                   ; $4978: $01 $6f $52
	ld   [bc], a                                     ; $497b: $02
	inc  de                                          ; $497c: $13
	ld   l, a                                        ; $497d: $6f
	sub  c                                           ; $497e: $91
	and  c                                           ; $497f: $a1
	ld   a, l                                        ; $4980: $7d
	sbc  [hl]                                        ; $4981: $9e
	dec  c                                           ; $4982: $0d
	ld   [hl], a                                     ; $4983: $77
	ld   a, h                                        ; $4984: $7c
	ld   e, e                                        ; $4985: $5b
	ld   l, c                                        ; $4986: $69
	ld   [hl], d                                     ; $4987: $72
	ld   e, d                                        ; $4988: $5a
	ld   h, a                                        ; $4989: $67
	ld   e, e                                        ; $498a: $5b
	ld   a, b                                        ; $498b: $78
	ld   a, h                                        ; $498c: $7c
	ld   sp, hl                                      ; $498d: $f9
	dec  c                                           ; $498e: $0d
	nop                                              ; $498f: $00
	ld   a, [bc]                                     ; $4990: $0a
	add  hl, de                                      ; $4991: $19
	dec  b                                           ; $4992: $05
	inc  bc                                          ; $4993: $03
	inc  bc                                          ; $4994: $03
	ld   d, a                                        ; $4995: $57
	inc  b                                           ; $4996: $04
	sub  l                                           ; $4997: $95
	ld   [bc], a                                     ; $4998: $02
	sbc  d                                           ; $4999: $9a
	ld   e, e                                        ; $499a: $5b
	nop                                              ; $499b: $00
	nop                                              ; $499c: $00
	inc  b                                           ; $499d: $04
	ld   c, h                                        ; $499e: $4c
	ld   e, d                                        ; $499f: $5a
	ld   [bc], a                                     ; $49a0: $02
	sbc  d                                           ; $49a1: $9a
	ld   e, e                                        ; $49a2: $5b
	nop                                              ; $49a3: $00
	ld   bc, $7203                                   ; $49a4: $01 $03 $72
	ld   e, d                                        ; $49a7: $5a
	ld   [bc], a                                     ; $49a8: $02
	sbc  d                                           ; $49a9: $9a
	ld   e, e                                        ; $49aa: $5b
	nop                                              ; $49ab: $00
	ld   [bc], a                                     ; $49ac: $02
	rlca                                             ; $49ad: $07
	sub  c                                           ; $49ae: $91
	ld   [bc], a                                     ; $49af: $02
	ld   [bc], a                                     ; $49b0: $02
	inc  bc                                          ; $49b1: $03
	ld   bc, $2000                                   ; $49b2: $01 $00 $20
	nop                                              ; $49b5: $00
	rlca                                             ; $49b6: $07
	ret  nc                                          ; $49b7: $d0

	ld   [bc], a                                     ; $49b8: $02
	ld   [bc], a                                     ; $49b9: $02
	inc  bc                                          ; $49ba: $03
	ld   bc, $2001                                   ; $49bb: $01 $01 $20
	nop                                              ; $49be: $00
	rlca                                             ; $49bf: $07
	ld   de, $0203                                   ; $49c0: $11 $03 $02
	inc  bc                                          ; $49c3: $03
	ld   bc, $2002                                   ; $49c4: $01 $02 $20
	nop                                              ; $49c7: $00
	ld   b, $6c                                      ; $49c8: $06 $6c
	inc  bc                                          ; $49ca: $03
	rrca                                             ; $49cb: $0f
	nop                                              ; $49cc: $00
	ld   bc, $0301                                   ; $49cd: $01 $01 $03
	ld   d, a                                        ; $49d0: $57
	inc  b                                           ; $49d1: $04
	sub  l                                           ; $49d2: $95
	ld   [bc], a                                     ; $49d3: $02
	sbc  d                                           ; $49d4: $9a
	ld   e, e                                        ; $49d5: $5b
	ld   e, c                                        ; $49d6: $59
	ld   a, b                                        ; $49d7: $78
	sbc  a                                           ; $49d8: $9f
	dec  c                                           ; $49d9: $0d
	nop                                              ; $49da: $00
	ld   a, [bc]                                     ; $49db: $0a
	inc  e                                           ; $49dc: $1c
	inc  b                                           ; $49dd: $04
	ld   [bc], a                                     ; $49de: $02
	ld   [bc], a                                     ; $49df: $02
	dec  e                                           ; $49e0: $1d
	ld   b, b                                        ; $49e1: $40
	inc  d                                           ; $49e2: $14
	inc  bc                                          ; $49e3: $03
	inc  d                                           ; $49e4: $14
	ld   bc, $2902                                   ; $49e5: $01 $02 $29
	nop                                              ; $49e8: $00
	ld   bc, $a5a3                                   ; $49e9: $01 $a3 $a5
	db   $ec                                         ; $49ec: $ec
	cp   d                                           ; $49ed: $ba
	ld   a, h                                        ; $49ee: $7c
	adc  h                                           ; $49ef: $8c
	ld   a, e                                        ; $49f0: $7b
	ld   l, [hl]                                     ; $49f1: $6e
	sbc  a                                           ; $49f2: $9f
	dec  c                                           ; $49f3: $0d
	ld   l, a                                        ; $49f4: $6f
	ld   d, d                                        ; $49f5: $52
	ld   [bc], a                                     ; $49f6: $02
	inc  de                                          ; $49f7: $13
	ld   l, a                                        ; $49f8: $6f
	sub  c                                           ; $49f9: $91
	and  c                                           ; $49fa: $a1
	ld   a, h                                        ; $49fb: $7c
	dec  c                                           ; $49fc: $0d
	adc  h                                           ; $49fd: $8c
	ld   a, e                                        ; $49fe: $7b
	ld   h, l                                        ; $49ff: $65
	and  c                                           ; $4a00: $a1
	adc  d                                           ; $4a01: $8a
	ld   a, [$000d]                                  ; $4a02: $fa $0d $00
	ld   a, [bc]                                     ; $4a05: $0a
	ld   b, $52                                      ; $4a06: $06 $52
	inc  bc                                          ; $4a08: $03
	nop                                              ; $4a09: $00
	rrca                                             ; $4a0a: $0f
	nop                                              ; $4a0b: $00
	ld   bc, $0401                                   ; $4a0c: $01 $01 $04
	ld   c, h                                        ; $4a0f: $4c
	ld   e, d                                        ; $4a10: $5a
	ld   [bc], a                                     ; $4a11: $02
	sbc  d                                           ; $4a12: $9a
	ld   e, e                                        ; $4a13: $5b
	ld   l, [hl]                                     ; $4a14: $6e
	ld   a, b                                        ; $4a15: $78
	sbc  a                                           ; $4a16: $9f
	dec  c                                           ; $4a17: $0d
	nop                                              ; $4a18: $00
	ld   a, [bc]                                     ; $4a19: $0a
	inc  e                                           ; $4a1a: $1c
	inc  b                                           ; $4a1b: $04
	inc  b                                           ; $4a1c: $04
	inc  b                                           ; $4a1d: $04
	dec  e                                           ; $4a1e: $1d
	ld   b, b                                        ; $4a1f: $40
	inc  d                                           ; $4a20: $14
	inc  bc                                          ; $4a21: $03
	inc  d                                           ; $4a22: $14
	ld   bc, $2902                                   ; $4a23: $01 $02 $29
	nop                                              ; $4a26: $00
	ld   bc, $9166                                   ; $4a27: $01 $66 $91
	ld   d, b                                        ; $4a2a: $50
	sbc  [hl]                                        ; $4a2b: $9e
	add  e                                           ; $4a2c: $83
	sub  h                                           ; $4a2d: $94
	ld   a, l                                        ; $4a2e: $7d
	dec  c                                           ; $4a2f: $0d
	ld   e, e                                        ; $4a30: $5b
	sub  a                                           ; $4a31: $97
	ld   d, d                                        ; $4a32: $52
	ld   a, b                                        ; $4a33: $78
	and  c                                           ; $4a34: $a1
	ld   l, [hl]                                     ; $4a35: $6e
	rst  $38                                         ; $4a36: $ff
	rst  $38                                         ; $4a37: $ff
	dec  c                                           ; $4a38: $0d
	ld   e, c                                        ; $4a39: $59
	sbc  l                                           ; $4a3a: $9d
	ld   d, d                                        ; $4a3b: $52
	ld   l, e                                        ; $4a3c: $6b
	ld   d, h                                        ; $4a3d: $54
	ld   a, c                                        ; $4a3e: $79
	rst  $38                                         ; $4a3f: $ff
	sbc  [hl]                                        ; $4a40: $9e
	add  e                                           ; $4a41: $83
	sub  h                                           ; $4a42: $94
	rst  $38                                         ; $4a43: $ff
	rst  $38                                         ; $4a44: $ff
	dec  c                                           ; $4a45: $0d
	nop                                              ; $4a46: $00
	ld   a, [bc]                                     ; $4a47: $0a
	ld   b, $52                                      ; $4a48: $06 $52
	inc  bc                                          ; $4a4a: $03
	rrca                                             ; $4a4b: $0f
	nop                                              ; $4a4c: $00
	ld   bc, $0301                                   ; $4a4d: $01 $01 $03
	ld   [hl], d                                     ; $4a50: $72
	ld   e, d                                        ; $4a51: $5a
	ld   [bc], a                                     ; $4a52: $02
	sbc  d                                           ; $4a53: $9a
	ld   e, e                                        ; $4a54: $5b
	ld   l, [hl]                                     ; $4a55: $6e
	ld   a, b                                        ; $4a56: $78
	sbc  a                                           ; $4a57: $9f
	dec  c                                           ; $4a58: $0d
	nop                                              ; $4a59: $00
	ld   a, [bc]                                     ; $4a5a: $0a
	inc  e                                           ; $4a5b: $1c
	inc  b                                           ; $4a5c: $04
	inc  b                                           ; $4a5d: $04
	inc  b                                           ; $4a5e: $04
	dec  e                                           ; $4a5f: $1d
	ld   b, b                                        ; $4a60: $40
	inc  d                                           ; $4a61: $14
	inc  bc                                          ; $4a62: $03
	inc  d                                           ; $4a63: $14
	ld   bc, $2902                                   ; $4a64: $01 $02 $29
	nop                                              ; $4a67: $00
	ld   bc, $9166                                   ; $4a68: $01 $66 $91
	ld   d, b                                        ; $4a6b: $50
	sbc  [hl]                                        ; $4a6c: $9e
	ld   d, b                                        ; $4a6d: $50
	ld   e, e                                        ; $4a6e: $5b
	ld   a, l                                        ; $4a6f: $7d
	dec  c                                           ; $4a70: $0d
	ld   e, e                                        ; $4a71: $5b
	sub  a                                           ; $4a72: $97
	ld   d, d                                        ; $4a73: $52
	ld   a, b                                        ; $4a74: $78
	and  c                                           ; $4a75: $a1
	ld   l, [hl]                                     ; $4a76: $6e
	rst  $38                                         ; $4a77: $ff
	rst  $38                                         ; $4a78: $ff
	dec  c                                           ; $4a79: $0d
	ld   e, c                                        ; $4a7a: $59
	sbc  l                                           ; $4a7b: $9d
	ld   d, d                                        ; $4a7c: $52
	ld   l, e                                        ; $4a7d: $6b
	ld   d, h                                        ; $4a7e: $54
	ld   a, c                                        ; $4a7f: $79
	rst  $38                                         ; $4a80: $ff
	sbc  [hl]                                        ; $4a81: $9e
	ld   d, b                                        ; $4a82: $50
	ld   e, e                                        ; $4a83: $5b
	rst  $38                                         ; $4a84: $ff
	rst  $38                                         ; $4a85: $ff
	dec  c                                           ; $4a86: $0d
	nop                                              ; $4a87: $00
	ld   a, [bc]                                     ; $4a88: $0a
	ld   b, $52                                      ; $4a89: $06 $52
	inc  bc                                          ; $4a8b: $03
	ld   bc, $9166                                   ; $4a8c: $01 $66 $91
	sbc  [hl]                                        ; $4a8f: $9e
	and  e                                           ; $4a90: $a3
	and  l                                           ; $4a91: $a5
	db   $ec                                         ; $4a92: $ec
	cp   d                                           ; $4a93: $ba
	sub  b                                           ; $4a94: $90
	ld   d, h                                        ; $4a95: $54
	ld   d, d                                        ; $4a96: $52
	ld   e, l                                        ; $4a97: $5d
	ld   a, e                                        ; $4a98: $7b
	sbc  a                                           ; $4a99: $9f
	dec  c                                           ; $4a9a: $0d
	nop                                              ; $4a9b: $00
	ld   a, [bc]                                     ; $4a9c: $0a
	dec  c                                           ; $4a9d: $0d
	nop                                              ; $4a9e: $00
	nop                                              ; $4a9f: $00
	rrca                                             ; $4aa0: $0f
	nop                                              ; $4aa1: $00
	ld   bc, $1e09                                   ; $4aa2: $01 $09 $1e
	nop                                              ; $4aa5: $00
	inc  e                                           ; $4aa6: $1c
	inc  b                                           ; $4aa7: $04
	ld   bc, $0101                                   ; $4aa8: $01 $01 $01
	ld   l, e                                        ; $4aab: $6b
	ld   d, h                                        ; $4aac: $54
	ld   l, [hl]                                     ; $4aad: $6e
	sub  [hl]                                        ; $4aae: $96
	ld   a, e                                        ; $4aaf: $7b
	sbc  a                                           ; $4ab0: $9f
	dec  c                                           ; $4ab1: $0d
	ld   [hl], a                                     ; $4ab2: $77
	ld   a, h                                        ; $4ab3: $7c
	ld   e, e                                        ; $4ab4: $5b
	ld   l, c                                        ; $4ab5: $69
	ld   [hl], d                                     ; $4ab6: $72
	ld   e, d                                        ; $4ab7: $5a
	ld   h, a                                        ; $4ab8: $67
	ld   e, e                                        ; $4ab9: $5b
	ld   e, c                                        ; $4aba: $59
	sbc  [hl]                                        ; $4abb: $9e
	dec  c                                           ; $4abc: $0d
	ld   a, b                                        ; $4abd: $78
	and  c                                           ; $4abe: $a1
	ld   [hl], h                                     ; $4abf: $74
	ld   e, e                                        ; $4ac0: $5b
	adc  a                                           ; $4ac1: $8f
	sub  a                                           ; $4ac2: $97
	sbc  d                                           ; $4ac3: $9a
	ld   a, b                                        ; $4ac4: $78
	ld   d, d                                        ; $4ac5: $52
	sub  [hl]                                        ; $4ac6: $96
	ld   a, e                                        ; $4ac7: $7b
	sbc  a                                           ; $4ac8: $9f
	dec  c                                           ; $4ac9: $0d
	nop                                              ; $4aca: $00
	ld   a, [bc]                                     ; $4acb: $0a
	dec  e                                           ; $4acc: $1d
	ld   b, b                                        ; $4acd: $40
	inc  d                                           ; $4ace: $14
	inc  bc                                          ; $4acf: $03
	inc  d                                           ; $4ad0: $14
	ld   bc, $2803                                   ; $4ad1: $01 $03 $28
	nop                                              ; $4ad4: $00
	ld   bc, $7252                                   ; $4ad5: $01 $52 $72
	ld   l, [hl]                                     ; $4ad8: $6e
	ld   [hl], c                                     ; $4ad9: $71
	ld   [hl], h                                     ; $4ada: $74
	dec  c                                           ; $4adb: $0d
	ld   d, d                                        ; $4adc: $52
	sbc  e                                           ; $4add: $9b
	and  c                                           ; $4ade: $a1
	ld   a, b                                        ; $4adf: $78
	ld   l, l                                        ; $4ae0: $6d
	ld   a, h                                        ; $4ae1: $7c
	ld   h, l                                        ; $4ae2: $65
	ld   d, d                                        ; $4ae3: $52
	ld   h, c                                        ; $4ae4: $61
	halt                                             ; $4ae5: $76
	ld   e, d                                        ; $4ae6: $5a
	dec  c                                           ; $4ae7: $0d
	ld   d, b                                        ; $4ae8: $50
	sbc  c                                           ; $4ae9: $99
	sub  b                                           ; $4aea: $90
	and  c                                           ; $4aeb: $a1
	ld   a, e                                        ; $4aec: $7b
	ei                                               ; $4aed: $fb
	sbc  a                                           ; $4aee: $9f
	dec  c                                           ; $4aef: $0d
	nop                                              ; $4af0: $00
	ld   a, [bc]                                     ; $4af1: $0a
	ld   bc, $9166                                   ; $4af2: $01 $66 $91
	ld   d, b                                        ; $4af5: $50
	sbc  [hl]                                        ; $4af6: $9e
	ld   e, e                                        ; $4af7: $5b
	sub  l                                           ; $4af8: $95
	ld   d, h                                        ; $4af9: $54
	sub  b                                           ; $4afa: $90
	ld   d, d                                        ; $4afb: $52
	ld   l, a                                        ; $4afc: $6f
	ld   a, c                                        ; $4afd: $79
	ld   l, a                                        ; $4afe: $6f
	sbc  [hl]                                        ; $4aff: $9e
	dec  c                                           ; $4b00: $0d
	ld   e, d                                        ; $4b01: $5a
	and  c                                           ; $4b02: $a1

Jump_058_4b03:
	ld   a, [hl]                                     ; $4b03: $7e
	sbc  e                                           ; $4b04: $9b
	ld   d, h                                        ; $4b05: $54
	ld   a, e                                        ; $4b06: $7b
	ld   a, [$000d]                                  ; $4b07: $fa $0d $00
	ld   a, [bc]                                     ; $4b0a: $0a
	nop                                              ; $4b0b: $00
	rrca                                             ; $4b0c: $0f
	nop                                              ; $4b0d: $00
	ld   bc, $a301                                   ; $4b0e: $01 $01 $a3
	and  l                                           ; $4b11: $a5
	db   $ec                                         ; $4b12: $ec
	cp   d                                           ; $4b13: $ba
	ld   e, c                                        ; $4b14: $59
	sub  a                                           ; $4b15: $97
	ld   [bc], a                                     ; $4b16: $02
	sub  l                                           ; $4b17: $95
	ld   [hl], h                                     ; $4b18: $74
	sbc  [hl]                                        ; $4b19: $9e
	dec  c                                           ; $4b1a: $0d
	ld   [bc], a                                     ; $4b1b: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b1c: $cf
	dec  b                                           ; $4b1d: $05
	ld   a, [de]                                     ; $4b1e: $1a
	ld   h, e                                        ; $4b1f: $63
	and  c                                           ; $4b20: $a1
	ld   [hl], h                                     ; $4b21: $74
	sbc  [hl]                                        ; $4b22: $9e
	ld   [hl], a                                     ; $4b23: $77
	and  c                                           ; $4b24: $a1
	ld   a, b                                        ; $4b25: $78
	inc  bc                                          ; $4b26: $03
	add  d                                           ; $4b27: $82
	ld   sp, hl                                      ; $4b28: $f9
	dec  c                                           ; $4b29: $0d
	nop                                              ; $4b2a: $00
	ld   a, [bc]                                     ; $4b2b: $0a
	inc  e                                           ; $4b2c: $1c
	inc  b                                           ; $4b2d: $04
	nop                                              ; $4b2e: $00
	nop                                              ; $4b2f: $00
	ld   bc, $fba1                                   ; $4b30: $01 $a1 $fb
	halt                                             ; $4b33: $76
	ld   a, e                                        ; $4b34: $7b
	rst  $38                                         ; $4b35: $ff
	rst  $38                                         ; $4b36: $ff
	dec  c                                           ; $4b37: $0d
	nop                                              ; $4b38: $00
	inc  e                                           ; $4b39: $1c
	inc  b                                           ; $4b3a: $04
	ld   bc, $0101                                   ; $4b3b: $01 $01 $01
	ld   e, b                                        ; $4b3e: $58
	sub  b                                           ; $4b3f: $90
	ld   h, l                                        ; $4b40: $65
	sbc  e                                           ; $4b41: $9b
	ld   d, d                                        ; $4b42: $52
	add  b                                           ; $4b43: $80
	halt                                             ; $4b44: $76
	ld   a, [$000d]                                  ; $4b45: $fa $0d $00
	ld   a, [bc]                                     ; $4b48: $0a
	ld   bc, $7252                                   ; $4b49: $01 $52 $72
	sub  b                                           ; $4b4c: $90
	reti                                             ; $4b4d: $d9


	push af                                          ; $4b4e: $f5
	rst  ToBoot                                         ; $4b4f: $c7
	or   h                                           ; $4b50: $b4
	ld   a, b                                        ; $4b51: $78
	ld   a, l                                        ; $4b52: $7d
	ld   [hl], d                                     ; $4b53: $72
	adc  a                                           ; $4b54: $8f
	ld   d, d                                        ; $4b55: $52
	dec  c                                           ; $4b56: $0d
	ld   a, [hl]                                     ; $4b57: $7e

jr_058_4b58:
	ld   [hl], c                                     ; $4b58: $71
	ld   e, c                                        ; $4b59: $59
	sbc  b                                           ; $4b5a: $98
	ld   h, a                                        ; $4b5b: $67
	sbc  c                                           ; $4b5c: $99
	and  c                                           ; $4b5d: $a1
	ld   l, [hl]                                     ; $4b5e: $6e
	sub  [hl]                                        ; $4b5f: $96
	sbc  a                                           ; $4b60: $9f
	dec  c                                           ; $4b61: $0d
	nop                                              ; $4b62: $00
	ld   a, [bc]                                     ; $4b63: $0a
	inc  e                                           ; $4b64: $1c
	inc  b                                           ; $4b65: $04
	nop                                              ; $4b66: $00
	nop                                              ; $4b67: $00
	ld   bc, $9166                                   ; $4b68: $01 $66 $91
	sbc  [hl]                                        ; $4b6b: $9e
	and  e                                           ; $4b6c: $a3
	and  l                                           ; $4b6d: $a5
	db   $ec                                         ; $4b6e: $ec
	cp   d                                           ; $4b6f: $ba
	sub  b                                           ; $4b70: $90
	ld   d, h                                        ; $4b71: $54
	ld   d, d                                        ; $4b72: $52
	ld   e, l                                        ; $4b73: $5d
	ld   a, e                                        ; $4b74: $7b
	sbc  a                                           ; $4b75: $9f
	dec  c                                           ; $4b76: $0d
	nop                                              ; $4b77: $00
	ld   a, [bc]                                     ; $4b78: $0a
	dec  c                                           ; $4b79: $0d
	nop                                              ; $4b7a: $00
	nop                                              ; $4b7b: $00
	rrca                                             ; $4b7c: $0f
	nop                                              ; $4b7d: $00
	ld   bc, $1e09                                   ; $4b7e: $01 $09 $1e
	nop                                              ; $4b81: $00
	nop                                              ; $4b82: $00
	rrca                                             ; $4b83: $0f
	nop                                              ; $4b84: $00
	ld   bc, $060d                                   ; $4b85: $01 $0d $06
	nop                                              ; $4b88: $00
	ld   [bc], a                                     ; $4b89: $02
	ld   bc, $7d58                                   ; $4b8a: $01 $58 $7d
	sub  [hl]                                        ; $4b8d: $96
	ld   d, h                                        ; $4b8e: $54
	ld   h, d                                        ; $4b8f: $62
	ld   h, h                                        ; $4b90: $64
	ld   d, d                                        ; $4b91: $52
	adc  h                                           ; $4b92: $8c
	ld   h, a                                        ; $4b93: $67
	sbc  a                                           ; $4b94: $9f
	dec  c                                           ; $4b95: $0d
	nop                                              ; $4b96: $00
	ld   a, [bc]                                     ; $4b97: $0a
	inc  e                                           ; $4b98: $1c
	ld   b, $01                                      ; $4b99: $06 $01
	ld   bc, $5801                                   ; $4b9b: $01 $01 $58
	ld   d, h                                        ; $4b9e: $54
	sbc  [hl]                                        ; $4b9f: $9e
	ld   [$9f00], sp                                 ; $4ba0: $08 $00 $9f
	dec  c                                           ; $4ba3: $0d
	ld   e, b                                        ; $4ba4: $58
	ld   a, l                                        ; $4ba5: $7d
	sub  [hl]                                        ; $4ba6: $96
	ld   d, h                                        ; $4ba7: $54
	sbc  a                                           ; $4ba8: $9f
	dec  c                                           ; $4ba9: $0d
	nop                                              ; $4baa: $00
	ld   a, [bc]                                     ; $4bab: $0a
	rrca                                             ; $4bac: $0f
	nop                                              ; $4bad: $00
	ld   bc, $0101                                   ; $4bae: $01 $01 $01
	inc  bc                                          ; $4bb1: $03
	inc  b                                           ; $4bb2: $04
	ld   c, c                                        ; $4bb3: $49
	ld   a, h                                        ; $4bb4: $7c
	dec  b                                           ; $4bb5: $05
	jr   nz, jr_058_4b58                             ; $4bb6: $20 $a0

	ld   h, l                                        ; $4bb8: $65
	sub  [hl]                                        ; $4bb9: $96
	ld   d, h                                        ; $4bba: $54
	ld   e, c                                        ; $4bbb: $59
	ld   a, b                                        ; $4bbc: $78
	rst  $38                                         ; $4bbd: $ff
	rst  $38                                         ; $4bbe: $ff
	ld   bc, $0d04                                   ; $4bbf: $01 $04 $0d
	nop                                              ; $4bc2: $00
	ld   a, [bc]                                     ; $4bc3: $0a
	add  hl, de                                      ; $4bc4: $19
	dec  b                                           ; $4bc5: $05
	inc  bc                                          ; $4bc6: $03
	ld   h, l                                        ; $4bc7: $65
	sub  e                                           ; $4bc8: $93
	adc  l                                           ; $4bc9: $8d
	ld   a, h                                        ; $4bca: $7c
	dec  b                                           ; $4bcb: $05
	jr   nz, jr_058_4bd2                             ; $4bcc: $20 $04

	dec  d                                           ; $4bce: $15
	and  b                                           ; $4bcf: $a0
	ld   h, a                                        ; $4bd0: $67
	sbc  c                                           ; $4bd1: $99

jr_058_4bd2:
	nop                                              ; $4bd2: $00
	nop                                              ; $4bd3: $00
	dec  b                                           ; $4bd4: $05
	dec  bc                                          ; $4bd5: $0b
	ld   [bc], a                                     ; $4bd6: $02
	dec  hl                                          ; $4bd7: $2b
	ld   a, h                                        ; $4bd8: $7c
	dec  b                                           ; $4bd9: $05
	jr   nz, jr_058_4be0                             ; $4bda: $20 $04

	dec  d                                           ; $4bdc: $15
	and  b                                           ; $4bdd: $a0
	ld   h, a                                        ; $4bde: $67
	sbc  c                                           ; $4bdf: $99

jr_058_4be0:
	nop                                              ; $4be0: $00
	ld   bc, $8202                                   ; $4be1: $01 $02 $82
	inc  bc                                          ; $4be4: $03
	ld   d, [hl]                                     ; $4be5: $56
	ld   a, h                                        ; $4be6: $7c
	dec  b                                           ; $4be7: $05
	jr   nz, jr_058_4bee                             ; $4be8: $20 $04

	dec  d                                           ; $4bea: $15
	and  b                                           ; $4beb: $a0
	ld   h, a                                        ; $4bec: $67
	sbc  c                                           ; $4bed: $99

jr_058_4bee:
	nop                                              ; $4bee: $00
	ld   [bc], a                                     ; $4bef: $02
	rlca                                             ; $4bf0: $07
	xor  h                                           ; $4bf1: $ac
	nop                                              ; $4bf2: $00
	ld   [bc], a                                     ; $4bf3: $02
	inc  bc                                          ; $4bf4: $03
	ld   bc, $2000                                   ; $4bf5: $01 $00 $20
	nop                                              ; $4bf8: $00
	rlca                                             ; $4bf9: $07
	ld   a, [hl-]                                    ; $4bfa: $3a
	ld   [bc], a                                     ; $4bfb: $02
	ld   [bc], a                                     ; $4bfc: $02
	inc  bc                                          ; $4bfd: $03
	ld   bc, $2001                                   ; $4bfe: $01 $01 $20
	nop                                              ; $4c01: $00
	rlca                                             ; $4c02: $07
	ld   b, h                                        ; $4c03: $44
	inc  b                                           ; $4c04: $04
	ld   [bc], a                                     ; $4c05: $02
	inc  bc                                          ; $4c06: $03
	ld   bc, $2002                                   ; $4c07: $01 $02 $20
	nop                                              ; $4c0a: $00
	ld   b, $8b                                      ; $4c0b: $06 $8b
	nop                                              ; $4c0d: $00
	inc  e                                           ; $4c0e: $1c
	ld   b, $00                                      ; $4c0f: $06 $00
	nop                                              ; $4c11: $00
	ld   bc, $a502                                   ; $4c12: $01 $02 $a5
	inc  b                                           ; $4c15: $04
	xor  d                                           ; $4c16: $aa
	sub  b                                           ; $4c17: $90
	ld   [bc], a                                     ; $4c18: $02
	jr   nz, jr_058_4c1f                             ; $4c19: $20 $04

	xor  d                                           ; $4c1b: $aa
	sbc  [hl]                                        ; $4c1c: $9e
	ld   e, d                                        ; $4c1d: $5a
	and  c                                           ; $4c1e: $a1

jr_058_4c1f:
	ld   a, [hl]                                     ; $4c1f: $7e
	sbc  d                                           ; $4c20: $9a
	sub  [hl]                                        ; $4c21: $96
	sbc  a                                           ; $4c22: $9f
	dec  c                                           ; $4c23: $0d
	nop                                              ; $4c24: $00
	ld   a, [bc]                                     ; $4c25: $0a
	dec  c                                           ; $4c26: $0d
	nop                                              ; $4c27: $00
	nop                                              ; $4c28: $00
	rrca                                             ; $4c29: $0f
	nop                                              ; $4c2a: $00
	ld   bc, $1e09                                   ; $4c2b: $01 $09 $1e
	nop                                              ; $4c2e: $00
	rrca                                             ; $4c2f: $0f
	nop                                              ; $4c30: $00
	ld   bc, $ac01                                   ; $4c31: $01 $01 $ac
	push af                                          ; $4c34: $f5
	bit  4, e                                        ; $4c35: $cb $63
	and  c                                           ; $4c37: $a1
	ld   a, h                                        ; $4c38: $7c
	ld   h, l                                        ; $4c39: $65
	sub  e                                           ; $4c3a: $93
	adc  l                                           ; $4c3b: $8d
	ld   [hl], c                                     ; $4c3c: $71
	ld   [hl], h                                     ; $4c3d: $74
	dec  c                                           ; $4c3e: $0d
	ld   a, b                                        ; $4c3f: $78
	and  c                                           ; $4c40: $a1
	ld   [hl], l                                     ; $4c41: $75
	ld   h, a                                        ; $4c42: $67
	ld   e, c                                        ; $4c43: $59
	ld   sp, hl                                      ; $4c44: $f9
	dec  c                                           ; $4c45: $0d
	nop                                              ; $4c46: $00
	ld   a, [bc]                                     ; $4c47: $0a
	inc  e                                           ; $4c48: $1c
	ld   b, $00                                      ; $4c49: $06 $00
	nop                                              ; $4c4b: $00
	ld   bc, $546b                                   ; $4c4c: $01 $6b $54
	ld   l, [hl]                                     ; $4c4f: $6e
	ld   a, b                                        ; $4c50: $78
	rst  $38                                         ; $4c51: $ff
	rst  $38                                         ; $4c52: $ff
	dec  c                                           ; $4c53: $0d
	sub  d                                           ; $4c54: $92
	ld   [hl], c                                     ; $4c55: $71
	ld   a, a                                        ; $4c56: $7f
	sbc  [hl]                                        ; $4c57: $9e
	inc  b                                           ; $4c58: $04
	dec  c                                           ; $4c59: $0d
	inc  b                                           ; $4c5a: $04
	dec  de                                          ; $4c5b: $1b
	ld   e, c                                        ; $4c5c: $59
	ld   h, a                                        ; $4c5d: $67
	ld   h, c                                        ; $4c5e: $61
	halt                                             ; $4c5f: $76
	ld   e, c                                        ; $4c60: $59
	ld   a, b                                        ; $4c61: $78
	sbc  a                                           ; $4c62: $9f
	dec  c                                           ; $4c63: $0d
	ld   [bc], a                                     ; $4c64: $02
	or   [hl]                                        ; $4c65: $b6
	inc  bc                                          ; $4c66: $03
	ld   l, e                                        ; $4c67: $6b
	halt                                             ; $4c68: $76
	ld   e, c                                        ; $4c69: $59
	rst  $38                                         ; $4c6a: $ff
	dec  c                                           ; $4c6b: $0d
	nop                                              ; $4c6c: $00
	ld   a, [bc]                                     ; $4c6d: $0a
	add  hl, de                                      ; $4c6e: $19
	dec  b                                           ; $4c6f: $05
	inc  bc                                          ; $4c70: $03
	ld   d, d                                        ; $4c71: $52
	ld   d, d                                        ; $4c72: $52
	ld   h, c                                        ; $4c73: $61
	halt                                             ; $4c74: $76
	ld   [hl], l                                     ; $4c75: $75
	ld   h, a                                        ; $4c76: $67
	sub  [hl]                                        ; $4c77: $96
	ld   a, e                                        ; $4c78: $7b
	nop                                              ; $4c79: $00
	nop                                              ; $4c7a: $00
	inc  b                                           ; $4c7b: $04
	sub  l                                           ; $4c7c: $95
	ld   [bc], a                                     ; $4c7d: $02
	ld   hl, $047c                                   ; $4c7e: $21 $7c $04
	dec  bc                                          ; $4c81: $0b
	ld   [hl], l                                     ; $4c82: $75
	inc  b                                           ; $4c83: $04
	ld   de, $5503                                   ; $4c84: $11 $03 $55
	sub  b                                           ; $4c87: $90
	ld   d, d                                        ; $4c88: $52
	ld   d, d                                        ; $4c89: $52
	ld   [hl], l                                     ; $4c8a: $75
	ld   h, a                                        ; $4c8b: $67
	sub  [hl]                                        ; $4c8c: $96
	nop                                              ; $4c8d: $00
	ld   bc, $d803                                   ; $4c8e: $01 $03 $d8
	ld   a, l                                        ; $4c91: $7d
	inc  b                                           ; $4c92: $04
	dec  de                                          ; $4c93: $1b
	ld   e, c                                        ; $4c94: $59
	ld   h, e                                        ; $4c95: $63
	ld   a, b                                        ; $4c96: $78
	ld   d, d                                        ; $4c97: $52
	ld   a, h                                        ; $4c98: $7c
	ld   sp, hl                                      ; $4c99: $f9
	nop                                              ; $4c9a: $00
	ld   [bc], a                                     ; $4c9b: $02
	rlca                                             ; $4c9c: $07
	scf                                              ; $4c9d: $37
	ld   bc, $0302                                   ; $4c9e: $01 $02 $03
	ld   bc, $2000                                   ; $4ca1: $01 $00 $20
	nop                                              ; $4ca4: $00
	rlca                                             ; $4ca5: $07
	adc  d                                           ; $4ca6: $8a
	ld   bc, $0302                                   ; $4ca7: $01 $02 $03
	ld   bc, $2001                                   ; $4caa: $01 $01 $20
	nop                                              ; $4cad: $00
	rlca                                             ; $4cae: $07
	push de                                          ; $4caf: $d5
	ld   bc, $0302                                   ; $4cb0: $01 $02 $03
	ld   bc, $2002                                   ; $4cb3: $01 $02 $20
	nop                                              ; $4cb6: $00
	ld   b, $08                                      ; $4cb7: $06 $08
	ld   [bc], a                                     ; $4cb9: $02
	rrca                                             ; $4cba: $0f
	nop                                              ; $4cbb: $00
	ld   bc, $5201                                   ; $4cbc: $01 $01 $52
	ld   d, d                                        ; $4cbf: $52
	ld   h, c                                        ; $4cc0: $61
	halt                                             ; $4cc1: $76
	ld   [hl], l                                     ; $4cc2: $75
	ld   h, a                                        ; $4cc3: $67
	sub  [hl]                                        ; $4cc4: $96
	ld   a, e                                        ; $4cc5: $7b
	sbc  a                                           ; $4cc6: $9f
	dec  c                                           ; $4cc7: $0d
	ld   e, c                                        ; $4cc8: $59
	sub  a                                           ; $4cc9: $97
	ld   l, [hl]                                     ; $4cca: $6e
	inc  b                                           ; $4ccb: $04
	dec  de                                          ; $4ccc: $1b
	ld   e, c                                        ; $4ccd: $59
	ld   h, a                                        ; $4cce: $67
	ld   a, h                                        ; $4ccf: $7c
	ld   [hl], c                                     ; $4cd0: $71
	ld   [hl], h                                     ; $4cd1: $74
	dec  c                                           ; $4cd2: $0d
	ld   [bc], a                                     ; $4cd3: $02
	and  c                                           ; $4cd4: $a1
	inc  bc                                          ; $4cd5: $03
	and  b                                           ; $4cd6: $a0
	ld   l, a                                        ; $4cd7: $6f
	ld   d, d                                        ; $4cd8: $52
	ld   d, d                                        ; $4cd9: $52
	ld   [hl], l                                     ; $4cda: $75
	ld   h, a                                        ; $4cdb: $67
	sub  [hl]                                        ; $4cdc: $96
	sbc  a                                           ; $4cdd: $9f
	dec  c                                           ; $4cde: $0d
	nop                                              ; $4cdf: $00
	ld   a, [bc]                                     ; $4ce0: $0a
	inc  e                                           ; $4ce1: $1c
	ld   b, $01                                      ; $4ce2: $06 $01
	ld   bc, $401d                                   ; $4ce4: $01 $1d $40
	ld   d, $03                                      ; $4ce7: $16 $03
	ld   d, $01                                      ; $4ce9: $16 $01
	ld   [bc], a                                     ; $4ceb: $02
	jr   z, jr_058_4cee                              ; $4cec: $28 $00

jr_058_4cee:
	ld   bc, $0008                                   ; $4cee: $01 $08 $00
	sub  b                                           ; $4cf1: $90
	ld   l, e                                        ; $4cf2: $6b
	ld   d, h                                        ; $4cf3: $54
	dec  b                                           ; $4cf4: $05
	pop  de                                          ; $4cf5: $d1
	ld   d, h                                        ; $4cf6: $54
	ld   e, c                                        ; $4cf7: $59
	sbc  a                                           ; $4cf8: $9f
	dec  c                                           ; $4cf9: $0d
	ld   a, b                                        ; $4cfa: $78
	ld   e, c                                        ; $4cfb: $59
	ld   a, b                                        ; $4cfc: $78
	ld   e, c                                        ; $4cfd: $59
	ld   [bc], a                                     ; $4cfe: $02
	sub  l                                           ; $4cff: $95
	ld   [hl], a                                     ; $4d00: $77
	ld   h, c                                        ; $4d01: $61
	sbc  e                                           ; $4d02: $9b
	ld   d, b                                        ; $4d03: $50
	sbc  c                                           ; $4d04: $99
	ld   l, d                                        ; $4d05: $6a
	sbc  a                                           ; $4d06: $9f
	dec  c                                           ; $4d07: $0d
	nop                                              ; $4d08: $00
	ld   a, [bc]                                     ; $4d09: $0a
	ld   b, $0c                                      ; $4d0a: $06 $0c
	ld   [bc], a                                     ; $4d0c: $02
	rrca                                             ; $4d0d: $0f
	nop                                              ; $4d0e: $00
	ld   bc, $6d01                                   ; $4d0f: $01 $01 $6d
	adc  h                                           ; $4d12: $8c
	ld   a, c                                        ; $4d13: $79
	ld   a, l                                        ; $4d14: $7d
	sbc  [hl]                                        ; $4d15: $9e
	inc  b                                           ; $4d16: $04
	sub  l                                           ; $4d17: $95
	ld   [bc], a                                     ; $4d18: $02
	ld   hl, $047c                                   ; $4d19: $21 $7c $04
	dec  bc                                          ; $4d1c: $0b
	ld   [hl], l                                     ; $4d1d: $75
	dec  c                                           ; $4d1e: $0d
	inc  b                                           ; $4d1f: $04
	ld   de, $5503                                   ; $4d20: $11 $03 $55
	sub  b                                           ; $4d23: $90
	ld   d, d                                        ; $4d24: $52
	ld   d, d                                        ; $4d25: $52
	sub  b                                           ; $4d26: $90
	ld   a, h                                        ; $4d27: $7c
	ld   [hl], l                                     ; $4d28: $75
	ld   h, a                                        ; $4d29: $67
	sub  [hl]                                        ; $4d2a: $96
	sbc  a                                           ; $4d2b: $9f
	dec  c                                           ; $4d2c: $0d
	nop                                              ; $4d2d: $00
	ld   a, [bc]                                     ; $4d2e: $0a
	inc  e                                           ; $4d2f: $1c
	ld   b, $06                                      ; $4d30: $06 $06
	ld   b, $1d                                      ; $4d32: $06 $1d
	ld   b, b                                        ; $4d34: $40
	ld   d, $03                                      ; $4d35: $16 $03
	ld   d, $01                                      ; $4d37: $16 $01
	ld   [bc], a                                     ; $4d39: $02
	add  hl, hl                                      ; $4d3a: $29
	nop                                              ; $4d3b: $00
	ld   bc, $5d96                                   ; $4d3c: $01 $96 $5d
	ld   a, b                                        ; $4d3f: $78
	ld   d, d                                        ; $4d40: $52
	sub  [hl]                                        ; $4d41: $96
	sbc  a                                           ; $4d42: $9f
	dec  c                                           ; $4d43: $0d
	ld   l, e                                        ; $4d44: $6b
	and  c                                           ; $4d45: $a1
	ld   a, b                                        ; $4d46: $78
	ld   a, h                                        ; $4d47: $7c
	ld   [hl], d                                     ; $4d48: $72
	adc  h                                           ; $4d49: $8c
	and  c                                           ; $4d4a: $a1
	ld   a, b                                        ; $4d4b: $78
	ld   d, d                                        ; $4d4c: $52
	ld   h, [hl]                                     ; $4d4d: $66
	sub  c                                           ; $4d4e: $91
	and  c                                           ; $4d4f: $a1
	ld   e, c                                        ; $4d50: $59
	sbc  a                                           ; $4d51: $9f
	dec  c                                           ; $4d52: $0d
	nop                                              ; $4d53: $00
	ld   a, [bc]                                     ; $4d54: $0a
	ld   b, $0c                                      ; $4d55: $06 $0c
	ld   [bc], a                                     ; $4d57: $02
	rrca                                             ; $4d58: $0f
	nop                                              ; $4d59: $00
	ld   bc, $0301                                   ; $4d5a: $01 $01 $03
	ret  c                                           ; $4d5d: $d8

	ld   a, l                                        ; $4d5e: $7d
	inc  b                                           ; $4d5f: $04
	dec  de                                          ; $4d60: $1b
	ld   e, c                                        ; $4d61: $59
	ld   h, e                                        ; $4d62: $63
	ld   a, b                                        ; $4d63: $78
	ld   d, d                                        ; $4d64: $52
	and  c                                           ; $4d65: $a1
	ld   [hl], l                                     ; $4d66: $75
	ld   h, a                                        ; $4d67: $67
	ld   e, c                                        ; $4d68: $59
	ld   sp, hl                                      ; $4d69: $f9
	dec  c                                           ; $4d6a: $0d
	nop                                              ; $4d6b: $00
	ld   a, [bc]                                     ; $4d6c: $0a
	inc  e                                           ; $4d6d: $1c
	ld   b, $07                                      ; $4d6e: $06 $07
	rlca                                             ; $4d70: $07
	ld   bc, $1b04                                   ; $4d71: $01 $04 $1b
	ld   e, c                                        ; $4d74: $59
	ld   h, a                                        ; $4d75: $67
	ld   l, d                                        ; $4d76: $6a
	sbc  a                                           ; $4d77: $9f
	dec  c                                           ; $4d78: $0d
	inc  bc                                          ; $4d79: $03
	ret  c                                           ; $4d7a: $d8

	inc  bc                                          ; $4d7b: $03
	di                                               ; $4d7c: $f3
	ld   e, e                                        ; $4d7d: $5b
	ld   h, a                                        ; $4d7e: $67
	sbc  c                                           ; $4d7f: $99
	halt                                             ; $4d80: $76
	ld   e, e                                        ; $4d81: $5b
	ld   a, c                                        ; $4d82: $79
	ld   a, b                                        ; $4d83: $78
	sbc  a                                           ; $4d84: $9f
	dec  c                                           ; $4d85: $0d
	nop                                              ; $4d86: $00
	ld   a, [bc]                                     ; $4d87: $0a
	ld   b, $0c                                      ; $4d88: $06 $0c
	ld   [bc], a                                     ; $4d8a: $02
	inc  e                                           ; $4d8b: $1c
	ld   b, $00                                      ; $4d8c: $06 $00
	nop                                              ; $4d8e: $00
	ld   bc, $7463                                   ; $4d8f: $01 $63 $74
	halt                                             ; $4d92: $76
	sbc  [hl]                                        ; $4d93: $9e
	sub  b                                           ; $4d94: $90
	ld   d, h                                        ; $4d95: $54
	ld   [bc], a                                     ; $4d96: $02
	ld   a, a                                        ; $4d97: $7f
	ld   e, c                                        ; $4d98: $59
	ld   a, b                                        ; $4d99: $78
	ld   e, l                                        ; $4d9a: $5d
	ld   l, a                                        ; $4d9b: $6f
	sub  c                                           ; $4d9c: $91
	ld   a, b                                        ; $4d9d: $78
	sbc  a                                           ; $4d9e: $9f
	dec  c                                           ; $4d9f: $0d
	ld   [bc], a                                     ; $4da0: $02
	and  l                                           ; $4da1: $a5
	inc  b                                           ; $4da2: $04
	xor  d                                           ; $4da3: $aa
	sub  b                                           ; $4da4: $90
	ld   [bc], a                                     ; $4da5: $02
	jr   nz, jr_058_4dac                             ; $4da6: $20 $04

	xor  d                                           ; $4da8: $aa
	sbc  [hl]                                        ; $4da9: $9e
	ld   e, d                                        ; $4daa: $5a
	and  c                                           ; $4dab: $a1

jr_058_4dac:
	ld   a, [hl]                                     ; $4dac: $7e
	sbc  d                                           ; $4dad: $9a
	sub  [hl]                                        ; $4dae: $96
	ld   a, b                                        ; $4daf: $78
	sbc  a                                           ; $4db0: $9f
	dec  c                                           ; $4db1: $0d
	nop                                              ; $4db2: $00
	ld   a, [bc]                                     ; $4db3: $0a
	dec  c                                           ; $4db4: $0d
	nop                                              ; $4db5: $00
	nop                                              ; $4db6: $00
	rrca                                             ; $4db7: $0f
	nop                                              ; $4db8: $00
	ld   bc, $1e09                                   ; $4db9: $01 $09 $1e
	nop                                              ; $4dbc: $00
	rrca                                             ; $4dbd: $0f
	nop                                              ; $4dbe: $00
	ld   bc, $ac01                                   ; $4dbf: $01 $01 $ac
	push af                                          ; $4dc2: $f5
	bit  4, e                                        ; $4dc3: $cb $63
	and  c                                           ; $4dc5: $a1
	ld   a, h                                        ; $4dc6: $7c
	ld   [bc], a                                     ; $4dc7: $02
	sbc  d                                           ; $4dc8: $9a
	ld   e, e                                        ; $4dc9: $5b
	ld   a, b                                        ; $4dca: $78
	ret  nz                                          ; $4dcb: $c0

	and  l                                           ; $4dcc: $a5
	ret  c                                           ; $4dcd: $d8

	ld   a, l                                        ; $4dce: $7d
	dec  c                                           ; $4dcf: $0d
	ld   [hl], a                                     ; $4dd0: $77
	and  c                                           ; $4dd1: $a1
	ld   a, b                                        ; $4dd2: $78
	inc  bc                                          ; $4dd3: $03
	add  d                                           ; $4dd4: $82
	ld   [hl], l                                     ; $4dd5: $75
	ld   h, a                                        ; $4dd6: $67
	ld   e, c                                        ; $4dd7: $59
	ld   sp, hl                                      ; $4dd8: $f9
	dec  c                                           ; $4dd9: $0d
	nop                                              ; $4dda: $00
	ld   a, [bc]                                     ; $4ddb: $0a
	inc  e                                           ; $4ddc: $1c
	ld   b, $02                                      ; $4ddd: $06 $02
	ld   [bc], a                                     ; $4ddf: $02
	ld   bc, $986b                                   ; $4de0: $01 $6b $98
	sub  c                                           ; $4de3: $91
	ei                                               ; $4de4: $fb
	sbc  [hl]                                        ; $4de5: $9e
	sub  b                                           ; $4de6: $90
	ld   l, a                                        ; $4de7: $6f
	sbc  e                                           ; $4de8: $9b
	and  c                                           ; $4de9: $a1
	dec  c                                           ; $4dea: $0d
	ld   d, b                                        ; $4deb: $50
	ld   l, l                                        ; $4dec: $6d
	ld   d, d                                        ; $4ded: $52
	sub  [hl]                                        ; $4dee: $96
	sbc  b                                           ; $4def: $98
	ld   [bc], a                                     ; $4df0: $02
	call nc, $9252                                   ; $4df1: $d4 $52 $92
	ld   [hl], d                                     ; $4df4: $72
	ld   h, e                                        ; $4df5: $63
	sbc  a                                           ; $4df6: $9f
	dec  c                                           ; $4df7: $0d
	nop                                              ; $4df8: $00
	ld   a, [bc]                                     ; $4df9: $0a
	add  hl, de                                      ; $4dfa: $19
	dec  b                                           ; $4dfb: $05
	inc  bc                                          ; $4dfc: $03
	ld   l, e                                        ; $4dfd: $6b
	and  c                                           ; $4dfe: $a1
	ld   a, b                                        ; $4dff: $78
	inc  bc                                          ; $4e00: $03
	add  d                                           ; $4e01: $82
	ld   d, d                                        ; $4e02: $52
	adc  h                                           ; $4e03: $8c
	ld   l, c                                        ; $4e04: $69
	and  c                                           ; $4e05: $a1
	sub  [hl]                                        ; $4e06: $96
	nop                                              ; $4e07: $00
	nop                                              ; $4e08: $00
	ld   [bc], a                                     ; $4e09: $02
	dec  d                                           ; $4e0a: $15
	ld   a, l                                        ; $4e0b: $7d
	ld   l, l                                        ; $4e0c: $6d
	ld   e, l                                        ; $4e0d: $5d
	adc  h                                           ; $4e0e: $8c
	ld   h, l                                        ; $4e0f: $65
	ld   e, l                                        ; $4e10: $5d
	ld   a, b                                        ; $4e11: $78
	ld   e, l                                        ; $4e12: $5d
	ld   l, a                                        ; $4e13: $6f
	sub  c                                           ; $4e14: $91
	ld   a, e                                        ; $4e15: $7b
	nop                                              ; $4e16: $00
	ld   bc, $dfb0                                   ; $4e17: $01 $b0 $df
	ld   e, [hl]                                     ; $4e1a: $5e
	sub  a                                           ; $4e1b: $97
	ld   d, d                                        ; $4e1c: $52
	ld   h, l                                        ; $4e1d: $65
	ld   e, c                                        ; $4e1e: $59
	ld   d, d                                        ; $4e1f: $52
	ld   a, b                                        ; $4e20: $78
	ld   d, d                                        ; $4e21: $52
	and  c                                           ; $4e22: $a1
	ld   h, [hl]                                     ; $4e23: $66
	sub  c                                           ; $4e24: $91
	rst  $38                                         ; $4e25: $ff
	nop                                              ; $4e26: $00
	ld   [bc], a                                     ; $4e27: $02
	rlca                                             ; $4e28: $07
	jp   $0202                                       ; $4e29: $c3 $02 $02


	inc  bc                                          ; $4e2c: $03
	ld   bc, $2000                                   ; $4e2d: $01 $00 $20
	nop                                              ; $4e30: $00
	rlca                                             ; $4e31: $07
	dec  b                                           ; $4e32: $05
	inc  bc                                          ; $4e33: $03
	ld   [bc], a                                     ; $4e34: $02
	inc  bc                                          ; $4e35: $03
	ld   bc, $2001                                   ; $4e36: $01 $01 $20
	nop                                              ; $4e39: $00
	rlca                                             ; $4e3a: $07
	ld   l, b                                        ; $4e3b: $68
	inc  bc                                          ; $4e3c: $03
	ld   [bc], a                                     ; $4e3d: $02
	inc  bc                                          ; $4e3e: $03
	ld   bc, $2002                                   ; $4e3f: $01 $02 $20
	nop                                              ; $4e42: $00
	ld   b, $cb                                      ; $4e43: $06 $cb
	inc  bc                                          ; $4e45: $03
	rrca                                             ; $4e46: $0f
	nop                                              ; $4e47: $00
	ld   bc, $6b01                                   ; $4e48: $01 $01 $6b
	and  c                                           ; $4e4b: $a1
	ld   a, b                                        ; $4e4c: $78
	inc  bc                                          ; $4e4d: $03
	add  d                                           ; $4e4e: $82
	ld   d, d                                        ; $4e4f: $52
	ld   a, b                                        ; $4e50: $78
	ld   d, d                                        ; $4e51: $52
	and  c                                           ; $4e52: $a1
	ld   h, [hl]                                     ; $4e53: $66
	sub  c                                           ; $4e54: $91
	dec  c                                           ; $4e55: $0d
	ld   a, b                                        ; $4e56: $78
	ld   d, d                                        ; $4e57: $52
	ld   [hl], l                                     ; $4e58: $75
	ld   h, a                                        ; $4e59: $67
	ld   e, c                                        ; $4e5a: $59
	ld   sp, hl                                      ; $4e5b: $f9
	dec  c                                           ; $4e5c: $0d
	nop                                              ; $4e5d: $00
	ld   a, [bc]                                     ; $4e5e: $0a
	inc  e                                           ; $4e5f: $1c
	ld   b, $05                                      ; $4e60: $06 $05
	dec  b                                           ; $4e62: $05
	ld   bc, $508c                                   ; $4e63: $01 $8c $50
	ld   a, b                                        ; $4e66: $78
	rst  $38                                         ; $4e67: $ff
	rst  $38                                         ; $4e68: $ff
	dec  c                                           ; $4e69: $0d
	ld   l, e                                        ; $4e6a: $6b
	ld   d, h                                        ; $4e6b: $54
	ld   a, b                                        ; $4e6c: $78
	and  c                                           ; $4e6d: $a1
	ld   l, [hl]                                     ; $4e6e: $6e
	sub  [hl]                                        ; $4e6f: $96
	ld   a, b                                        ; $4e70: $78
	rst  $38                                         ; $4e71: $ff
	rst  $38                                         ; $4e72: $ff
	dec  c                                           ; $4e73: $0d
	ld   l, e                                        ; $4e74: $6b
	sbc  d                                           ; $4e75: $9a
	ld   e, d                                        ; $4e76: $5a
	inc  b                                           ; $4e77: $04
	ld   b, b                                        ; $4e78: $40
	adc  l                                           ; $4e79: $8d
	ld   a, h                                        ; $4e7a: $7c
	ret  nz                                          ; $4e7b: $c0

	adc  $78                                         ; $4e7c: $ce $78
	and  c                                           ; $4e7e: $a1
	ld   l, [hl]                                     ; $4e7f: $6e
	sub  [hl]                                        ; $4e80: $96
	sbc  a                                           ; $4e81: $9f
	dec  c                                           ; $4e82: $0d
	nop                                              ; $4e83: $00
	ld   a, [bc]                                     ; $4e84: $0a
	ld   b, $cb                                      ; $4e85: $06 $cb
	inc  bc                                          ; $4e87: $03
	rrca                                             ; $4e88: $0f
	nop                                              ; $4e89: $00
	ld   bc, $6b01                                   ; $4e8a: $01 $01 $6b
	ld   d, h                                        ; $4e8d: $54
	ld   [hl], l                                     ; $4e8e: $75
	ld   h, a                                        ; $4e8f: $67
	sub  [hl]                                        ; $4e90: $96
	ld   a, e                                        ; $4e91: $7b
	sbc  a                                           ; $4e92: $9f
	dec  c                                           ; $4e93: $0d
	sub  d                                           ; $4e94: $92
	ld   [hl], c                                     ; $4e95: $71
	ld   a, a                                        ; $4e96: $7f
	sbc  b                                           ; $4e97: $98
	ld   [bc], a                                     ; $4e98: $02
	dec  d                                           ; $4e99: $15
	ld   a, l                                        ; $4e9a: $7d
	ld   l, l                                        ; $4e9b: $6d
	ld   e, l                                        ; $4e9c: $5d
	adc  h                                           ; $4e9d: $8c
	ld   h, l                                        ; $4e9e: $65
	ld   e, l                                        ; $4e9f: $5d
	dec  c                                           ; $4ea0: $0d
	ld   a, b                                        ; $4ea1: $78
	ld   e, l                                        ; $4ea2: $5d
	ld   l, a                                        ; $4ea3: $6f
	sub  c                                           ; $4ea4: $91
	ld   d, d                                        ; $4ea5: $52
	ld   e, a                                        ; $4ea6: $5f
	ld   a, b                                        ; $4ea7: $78
	ld   d, d                                        ; $4ea8: $52
	ld   [hl], l                                     ; $4ea9: $75
	ld   h, a                                        ; $4eaa: $67
	sub  [hl]                                        ; $4eab: $96
	ld   a, e                                        ; $4eac: $7b
	sbc  a                                           ; $4ead: $9f
	dec  c                                           ; $4eae: $0d
	nop                                              ; $4eaf: $00
	ld   a, [bc]                                     ; $4eb0: $0a
	inc  e                                           ; $4eb1: $1c
	ld   b, $01                                      ; $4eb2: $06 $01
	ld   bc, $401d                                   ; $4eb4: $01 $1d $40
	ld   d, $03                                      ; $4eb7: $16 $03
	ld   d, $01                                      ; $4eb9: $16 $01
	ld   [bc], a                                     ; $4ebb: $02
	jr   z, jr_058_4ebe                              ; $4ebc: $28 $00

jr_058_4ebe:
	ld   bc, $546b                                   ; $4ebe: $01 $6b $54
	ld   l, [hl]                                     ; $4ec1: $6e
	sub  [hl]                                        ; $4ec2: $96
	sbc  a                                           ; $4ec3: $9f
	ld   l, c                                        ; $4ec4: $69
	adc  a                                           ; $4ec5: $8f
	ld   [hl], h                                     ; $4ec6: $74
	sbc  [hl]                                        ; $4ec7: $9e
	ld   d, b                                        ; $4ec8: $50
	ld   l, l                                        ; $4ec9: $6d
	ld   d, d                                        ; $4eca: $52
	halt                                             ; $4ecb: $76
	dec  c                                           ; $4ecc: $0d
	ld   [bc], a                                     ; $4ecd: $02
	ret                                              ; $4ece: $c9


	dec  b                                           ; $4ecf: $05
	sbc  a                                           ; $4ed0: $9f
	ld   a, c                                        ; $4ed1: $79
	inc  bc                                          ; $4ed2: $03
	nop                                              ; $4ed3: $00
	adc  l                                           ; $4ed4: $8d
	inc  bc                                          ; $4ed5: $03
	ld   l, e                                        ; $4ed6: $6b
	ld   e, d                                        ; $4ed7: $5a
	ld   [hl], l                                     ; $4ed8: $75
	ld   e, e                                        ; $4ed9: $5b
	sbc  c                                           ; $4eda: $99
	ld   [bc], a                                     ; $4edb: $02
	dec  d                                           ; $4edc: $15
	ld   h, [hl]                                     ; $4edd: $66
	sub  c                                           ; $4ede: $91
	dec  c                                           ; $4edf: $0d
	ld   a, b                                        ; $4ee0: $78
	ld   d, d                                        ; $4ee1: $52
	halt                                             ; $4ee2: $76
	ld   a, b                                        ; $4ee3: $78
	sbc  a                                           ; $4ee4: $9f
	dec  c                                           ; $4ee5: $0d
	nop                                              ; $4ee6: $00
	ld   a, [bc]                                     ; $4ee7: $0a
	ld   b, $cb                                      ; $4ee8: $06 $cb
	inc  bc                                          ; $4eea: $03
	rrca                                             ; $4eeb: $0f
	nop                                              ; $4eec: $00
	ld   bc, $ac01                                   ; $4eed: $01 $01 $ac
	push af                                          ; $4ef0: $f5
	bit  4, e                                        ; $4ef1: $cb $63
	and  c                                           ; $4ef3: $a1
	sub  [hl]                                        ; $4ef4: $96
	sbc  b                                           ; $4ef5: $98
	ld   [bc], a                                     ; $4ef6: $02
	call nc, Call_058_7152                           ; $4ef7: $d4 $52 $71
	ld   [hl], h                                     ; $4efa: $74
	dec  c                                           ; $4efb: $0d
	or   b                                           ; $4efc: $b0
	rst  JumpTable                                         ; $4efd: $df
	ld   e, [hl]                                     ; $4efe: $5e
	sub  a                                           ; $4eff: $97
	ld   d, d                                        ; $4f00: $52
	ld   h, l                                        ; $4f01: $65
	ld   e, c                                        ; $4f02: $59
	ld   d, d                                        ; $4f03: $52
	ld   a, b                                        ; $4f04: $78
	ld   d, d                                        ; $4f05: $52
	and  c                                           ; $4f06: $a1
	ld   h, [hl]                                     ; $4f07: $66
	sub  c                                           ; $4f08: $91
	dec  c                                           ; $4f09: $0d
	ld   a, b                                        ; $4f0a: $78
	ld   d, d                                        ; $4f0b: $52
	ld   [hl], l                                     ; $4f0c: $75
	ld   h, a                                        ; $4f0d: $67
	ld   e, c                                        ; $4f0e: $59
	ld   sp, hl                                      ; $4f0f: $f9
	dec  c                                           ; $4f10: $0d
	nop                                              ; $4f11: $00
	ld   a, [bc]                                     ; $4f12: $0a
	inc  e                                           ; $4f13: $1c
	ld   b, $02                                      ; $4f14: $06 $02
	ld   [bc], a                                     ; $4f16: $02
	dec  e                                           ; $4f17: $1d
	ld   b, b                                        ; $4f18: $40
	ld   d, $03                                      ; $4f19: $16 $03
	ld   d, $01                                      ; $4f1b: $16 $01
	inc  bc                                          ; $4f1d: $03
	add  hl, hl                                      ; $4f1e: $29
	nop                                              ; $4f1f: $00
	ld   bc, $a178                                   ; $4f20: $01 $78 $a1
	ld   l, [hl]                                     ; $4f23: $6e
	sub  [hl]                                        ; $4f24: $96
	ld   l, e                                        ; $4f25: $6b
	sbc  d                                           ; $4f26: $9a
	ld   a, l                                        ; $4f27: $7d
	sbc  a                                           ; $4f28: $9f
	dec  c                                           ; $4f29: $0d
	ld   h, [hl]                                     ; $4f2a: $66
	sub  c                                           ; $4f2b: $91
	ld   d, b                                        ; $4f2c: $50
	sbc  [hl]                                        ; $4f2d: $9e
	ld   d, b                                        ; $4f2e: $50
	ld   l, l                                        ; $4f2f: $6d
	ld   d, d                                        ; $4f30: $52
	ld   a, l                                        ; $4f31: $7d
	or   b                                           ; $4f32: $b0
	rst  JumpTable                                         ; $4f33: $df
	halt                                             ; $4f34: $76
	ld   h, l                                        ; $4f35: $65
	ld   e, c                                        ; $4f36: $59
	dec  c                                           ; $4f37: $0d
	ld   [bc], a                                     ; $4f38: $02
	reti                                             ; $4f39: $d9


	dec  b                                           ; $4f3a: $05
	jr   nc, jr_058_4fb2                             ; $4f3b: $30 $75

	ld   e, e                                        ; $4f3d: $5b
	ld   a, b                                        ; $4f3e: $78
	ld   d, d                                        ; $4f3f: $52
	ld   [hl], c                                     ; $4f40: $71
	ld   [hl], h                                     ; $4f41: $74
	ld   d, d                                        ; $4f42: $52
	ld   d, h                                        ; $4f43: $54
	ld   a, h                                        ; $4f44: $7c
	ld   e, c                                        ; $4f45: $59
	sub  [hl]                                        ; $4f46: $96
	sbc  a                                           ; $4f47: $9f
	dec  c                                           ; $4f48: $0d
	nop                                              ; $4f49: $00
	ld   a, [bc]                                     ; $4f4a: $0a
	ld   b, $cb                                      ; $4f4b: $06 $cb
	inc  bc                                          ; $4f4d: $03
	inc  e                                           ; $4f4e: $1c
	ld   b, $00                                      ; $4f4f: $06 $00
	nop                                              ; $4f51: $00
	ld   bc, $6176                                   ; $4f52: $01 $76 $61
	sbc  e                                           ; $4f55: $9b
	ld   [hl], l                                     ; $4f56: $75
	sbc  [hl]                                        ; $4f57: $9e
	ld   a, b                                        ; $4f58: $78
	and  c                                           ; $4f59: $a1
	ld   [hl], l                                     ; $4f5a: $75
	ld   h, c                                        ; $4f5b: $61
	and  c                                           ; $4f5c: $a1
	ld   a, b                                        ; $4f5d: $78
	ld   h, c                                        ; $4f5e: $61
	halt                                             ; $4f5f: $76
	dec  c                                           ; $4f60: $0d
	ld   [bc], a                                     ; $4f61: $02
	jp   nz, $a15d                                   ; $4f62: $c2 $5d $a1

	ld   l, [hl]                                     ; $4f65: $6e
	ld   sp, hl                                      ; $4f66: $f9
	dec  c                                           ; $4f67: $0d
	nop                                              ; $4f68: $00
	ld   a, [bc]                                     ; $4f69: $0a
	rrca                                             ; $4f6a: $0f
	nop                                              ; $4f6b: $00
	ld   bc, $0201                                   ; $4f6c: $01 $01 $02
	and  l                                           ; $4f6f: $a5
	ld   [bc], a                                     ; $4f70: $02
	xor  d                                           ; $4f71: $aa
	ld   a, h                                        ; $4f72: $7c
	inc  bc                                          ; $4f73: $03
	add  d                                           ; $4f74: $82
	inc  bc                                          ; $4f75: $03
	ld   d, d                                        ; $4f76: $52
	dec  b                                           ; $4f77: $05
	add  $02                                         ; $4f78: $c6 $02
	ccf                                              ; $4f7a: $3f
	ld   a, h                                        ; $4f7b: $7c
	dec  c                                           ; $4f7c: $0d
	inc  bc                                          ; $4f7d: $03
	inc  de                                          ; $4f7e: $13
	ld   [bc], a                                     ; $4f7f: $02
	ld   h, l                                        ; $4f80: $65
	ld   a, c                                        ; $4f81: $79
	ld   h, l                                        ; $4f82: $65
	sub  [hl]                                        ; $4f83: $96
	ld   d, h                                        ; $4f84: $54
	halt                                             ; $4f85: $76
	dec  b                                           ; $4f86: $05
	pop  de                                          ; $4f87: $d1
	ld   d, d                                        ; $4f88: $52
	adc  h                                           ; $4f89: $8c
	ld   h, l                                        ; $4f8a: $65
	ld   [hl], h                                     ; $4f8b: $74
	sbc  a                                           ; $4f8c: $9f
	dec  c                                           ; $4f8d: $0d
	nop                                              ; $4f8e: $00
	ld   a, [bc]                                     ; $4f8f: $0a
	rrca                                             ; $4f90: $0f
	ld   b, $00                                      ; $4f91: $06 $00
	ld   bc, $fc83                                   ; $4f93: $01 $83 $fc
	and  c                                           ; $4f96: $a1
	rst  $38                                         ; $4f97: $ff
	rst  $38                                         ; $4f98: $ff
	dec  c                                           ; $4f99: $0d
	ld   d, b                                        ; $4f9a: $50
	sbc  [hl]                                        ; $4f9b: $9e
	inc  bc                                          ; $4f9c: $03
	ld   l, l                                        ; $4f9d: $6d
	dec  b                                           ; $4f9e: $05
	add  hl, de                                      ; $4f9f: $19
	ld   e, d                                        ; $4fa0: $5a
	dec  b                                           ; $4fa1: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fa2: $cf
	adc  h                                           ; $4fa3: $8c
	sbc  c                                           ; $4fa4: $99
	inc  bc                                          ; $4fa5: $03
	ld   l, a                                        ; $4fa6: $6f
	ld   [bc], a                                     ; $4fa7: $02
	xor  c                                           ; $4fa8: $a9
	ld   l, [hl]                                     ; $4fa9: $6e
	sbc  a                                           ; $4faa: $9f
	dec  c                                           ; $4fab: $0d
	ld   [bc], a                                     ; $4fac: $02
	and  l                                           ; $4fad: $a5
	inc  b                                           ; $4fae: $04
	xor  d                                           ; $4faf: $aa
	sub  b                                           ; $4fb0: $90
	ld   [bc], a                                     ; $4fb1: $02

jr_058_4fb2:
	jr   nz, jr_058_4fb8                             ; $4fb2: $20 $04

	xor  d                                           ; $4fb4: $aa
	ld   e, d                                        ; $4fb5: $5a
	and  c                                           ; $4fb6: $a1
	ld   a, [hl]                                     ; $4fb7: $7e

jr_058_4fb8:
	sbc  d                                           ; $4fb8: $9a
	sub  [hl]                                        ; $4fb9: $96
	sbc  a                                           ; $4fba: $9f
	dec  c                                           ; $4fbb: $0d
	nop                                              ; $4fbc: $00
	ld   a, [bc]                                     ; $4fbd: $0a
	dec  c                                           ; $4fbe: $0d
	nop                                              ; $4fbf: $00
	nop                                              ; $4fc0: $00
	rrca                                             ; $4fc1: $0f
	nop                                              ; $4fc2: $00
	ld   bc, $1e09                                   ; $4fc3: $01 $09 $1e
	nop                                              ; $4fc6: $00
	rrca                                             ; $4fc7: $0f
	nop                                              ; $4fc8: $00
	ld   bc, $ac01                                   ; $4fc9: $01 $01 $ac
	push af                                          ; $4fcc: $f5
	bit  4, e                                        ; $4fcd: $cb $63
	and  c                                           ; $4fcf: $a1
	ld   a, h                                        ; $4fd0: $7c
	ld   [bc], a                                     ; $4fd1: $02
	sbc  d                                           ; $4fd2: $9a
	ld   e, e                                        ; $4fd3: $5b
	ld   a, b                                        ; $4fd4: $78
	ld   [bc], a                                     ; $4fd5: $02
	add  d                                           ; $4fd6: $82
	inc  bc                                          ; $4fd7: $03
	ld   d, [hl]                                     ; $4fd8: $56
	ld   a, l                                        ; $4fd9: $7d
	dec  c                                           ; $4fda: $0d
	ld   d, d                                        ; $4fdb: $52
	ld   [hl], d                                     ; $4fdc: $72
	ld   [hl], l                                     ; $4fdd: $75
	ld   h, a                                        ; $4fde: $67
	ld   e, c                                        ; $4fdf: $59
	ld   sp, hl                                      ; $4fe0: $f9
	dec  c                                           ; $4fe1: $0d
	nop                                              ; $4fe2: $00
	ld   a, [bc]                                     ; $4fe3: $0a
	inc  e                                           ; $4fe4: $1c
	ld   b, $00                                      ; $4fe5: $06 $00
	nop                                              ; $4fe7: $00
	ld   bc, $0358                                   ; $4fe8: $01 $58 $03
	ld   c, a                                        ; $4feb: $4f
	ld   a, l                                        ; $4fec: $7d
	ld   d, d                                        ; $4fed: $52
	ld   [hl], d                                     ; $4fee: $72
	ld   a, b                                        ; $4fef: $78
	and  c                                           ; $4ff0: $a1
	ld   l, [hl]                                     ; $4ff1: $6e
	sub  [hl]                                        ; $4ff2: $96
	sbc  a                                           ; $4ff3: $9f
	dec  c                                           ; $4ff4: $0d
	nop                                              ; $4ff5: $00
	ld   a, [bc]                                     ; $4ff6: $0a
	add  hl, de                                      ; $4ff7: $19
	dec  b                                           ; $4ff8: $05
	inc  bc                                          ; $4ff9: $03
	inc  b                                           ; $4ffa: $04
	ld   c, h                                        ; $4ffb: $4c
	ld   e, d                                        ; $4ffc: $5a
	ld   [bc], a                                     ; $4ffd: $02
	sbc  d                                           ; $4ffe: $9a
	ld   e, e                                        ; $4fff: $5b
	nop                                              ; $5000: $00
	nop                                              ; $5001: $00
	inc  bc                                          ; $5002: $03
	ld   [hl], d                                     ; $5003: $72
	ld   e, d                                        ; $5004: $5a
	ld   [bc], a                                     ; $5005: $02
	sbc  d                                           ; $5006: $9a
	ld   e, e                                        ; $5007: $5b
	nop                                              ; $5008: $00
	ld   bc, $2204                                   ; $5009: $01 $04 $22
	ld   e, d                                        ; $500c: $5a
	ld   [bc], a                                     ; $500d: $02
	sbc  d                                           ; $500e: $9a
	ld   e, e                                        ; $500f: $5b
	nop                                              ; $5010: $00
	ld   [bc], a                                     ; $5011: $02
	rlca                                             ; $5012: $07
	xor  l                                           ; $5013: $ad
	inc  b                                           ; $5014: $04
	ld   [bc], a                                     ; $5015: $02
	inc  bc                                          ; $5016: $03
	ld   bc, $2000                                   ; $5017: $01 $00 $20
	nop                                              ; $501a: $00
	rlca                                             ; $501b: $07
	ld   [de], a                                     ; $501c: $12
	dec  b                                           ; $501d: $05
	ld   [bc], a                                     ; $501e: $02
	inc  bc                                          ; $501f: $03
	ld   bc, $2001                                   ; $5020: $01 $01 $20
	nop                                              ; $5023: $00
	rlca                                             ; $5024: $07
	ld   e, d                                        ; $5025: $5a
	dec  b                                           ; $5026: $05
	ld   [bc], a                                     ; $5027: $02
	inc  bc                                          ; $5028: $03
	ld   bc, $2002                                   ; $5029: $01 $02 $20
	nop                                              ; $502c: $00
	ld   b, $ad                                      ; $502d: $06 $ad
	dec  b                                           ; $502f: $05
	rrca                                             ; $5030: $0f
	nop                                              ; $5031: $00
	ld   bc, $0401                                   ; $5032: $01 $01 $04
	ld   c, h                                        ; $5035: $4c
	ld   [hl], l                                     ; $5036: $75
	ld   h, a                                        ; $5037: $67
	ld   a, e                                        ; $5038: $7b
	sbc  a                                           ; $5039: $9f
	dec  c                                           ; $503a: $0d
	inc  bc                                          ; $503b: $03
	ld   h, [hl]                                     ; $503c: $66
	sbc  b                                           ; $503d: $98
	ld   [hl], d                                     ; $503e: $72
	ld   e, a                                        ; $503f: $5f
	sbc  c                                           ; $5040: $99
	inc  b                                           ; $5041: $04
	inc  hl                                          ; $5042: $23
	ld   b, $2b                                      ; $5043: $06 $2b
	sbc  [hl]                                        ; $5045: $9e
	dec  c                                           ; $5046: $0d
	dec  b                                           ; $5047: $05
	rst  JumpTable                                         ; $5048: $df
	ld   e, e                                        ; $5049: $5b
	inc  b                                           ; $504a: $04
	sub  h                                           ; $504b: $94
	ld   e, a                                        ; $504c: $5f
	sbc  c                                           ; $504d: $99
	inc  b                                           ; $504e: $04
	ld   [hl], a                                     ; $504f: $77
	sbc  a                                           ; $5050: $9f
	dec  c                                           ; $5051: $0d
	nop                                              ; $5052: $00
	ld   a, [bc]                                     ; $5053: $0a
	ld   bc, $9759                                   ; $5054: $01 $59 $97
	ld   l, [hl]                                     ; $5057: $6e
	and  b                                           ; $5058: $a0
	inc  b                                           ; $5059: $04
	dec  de                                          ; $505a: $1b
	ld   e, c                                        ; $505b: $59
	ld   h, a                                        ; $505c: $67
	ld   a, h                                        ; $505d: $7c
	ld   a, c                                        ; $505e: $79
	inc  bc                                          ; $505f: $03
	ld   l, c                                        ; $5060: $69
	ld   [bc], a                                     ; $5061: $02
	cp   [hl]                                        ; $5062: $be
	ld   a, h                                        ; $5063: $7c
	dec  c                                           ; $5064: $0d
	ld   [bc], a                                     ; $5065: $02
	add  d                                           ; $5066: $82
	inc  bc                                          ; $5067: $03
	ld   d, [hl]                                     ; $5068: $56
	ld   [hl], l                                     ; $5069: $75
	ld   h, a                                        ; $506a: $67
	sub  [hl]                                        ; $506b: $96
	ld   a, e                                        ; $506c: $7b
	sbc  a                                           ; $506d: $9f
	dec  c                                           ; $506e: $0d
	nop                                              ; $506f: $00
	ld   a, [bc]                                     ; $5070: $0a
	inc  e                                           ; $5071: $1c
	ld   b, $07                                      ; $5072: $06 $07
	rlca                                             ; $5074: $07
	dec  e                                           ; $5075: $1d
	ld   b, b                                        ; $5076: $40
	ld   d, $03                                      ; $5077: $16 $03
	ld   d, $01                                      ; $5079: $16 $01
	inc  bc                                          ; $507b: $03
	jr   z, jr_058_507e                              ; $507c: $28 $00

jr_058_507e:
	ld   bc, $599d                                   ; $507e: $01 $9d $59
	ld   [hl], c                                     ; $5081: $71
	ld   [hl], h                                     ; $5082: $74
	sbc  c                                           ; $5083: $99
	ld   h, [hl]                                     ; $5084: $66
	sub  c                                           ; $5085: $91
	ld   a, b                                        ; $5086: $78
	ld   d, d                                        ; $5087: $52
	ld   e, c                                        ; $5088: $59
	sbc  a                                           ; $5089: $9f
	dec  c                                           ; $508a: $0d
	ld   [$9600], sp                                 ; $508b: $08 $00 $96
	sbc  a                                           ; $508e: $9f
	dec  c                                           ; $508f: $0d
	nop                                              ; $5090: $00
	ld   a, [bc]                                     ; $5091: $0a
	ld   b, $f1                                      ; $5092: $06 $f1
	dec  b                                           ; $5094: $05
	rrca                                             ; $5095: $0f
	nop                                              ; $5096: $00
	ld   bc, $0301                                   ; $5097: $01 $01 $03
	ld   [hl], d                                     ; $509a: $72
	ld   [hl], l                                     ; $509b: $75
	ld   h, a                                        ; $509c: $67
	sbc  a                                           ; $509d: $9f
	dec  c                                           ; $509e: $0d
	adc  e                                           ; $509f: $8b
	ld   e, c                                        ; $50a0: $59
	adc  e                                           ; $50a1: $8b
	ld   e, c                                        ; $50a2: $59
	ld   b, $2b                                      ; $50a3: $06 $2b
	ld   [bc], a                                     ; $50a5: $02
	and  c                                           ; $50a6: $a1
	ld   e, d                                        ; $50a7: $5a
	ld   [bc], a                                     ; $50a8: $02
	and  c                                           ; $50a9: $a1
	inc  bc                                          ; $50aa: $03
	and  b                                           ; $50ab: $a0
	ld   l, a                                        ; $50ac: $6f
	ld   d, d                                        ; $50ad: $52
	ld   d, d                                        ; $50ae: $52
	dec  c                                           ; $50af: $0d
	ld   [hl], l                                     ; $50b0: $75
	ld   h, a                                        ; $50b1: $67
	ld   e, c                                        ; $50b2: $59
	sub  a                                           ; $50b3: $97
	ld   a, e                                        ; $50b4: $7b
	sbc  a                                           ; $50b5: $9f
	dec  c                                           ; $50b6: $0d
	nop                                              ; $50b7: $00
	ld   a, [bc]                                     ; $50b8: $0a
	inc  e                                           ; $50b9: $1c
	ld   b, $00                                      ; $50ba: $06 $00
	nop                                              ; $50bc: $00
	dec  e                                           ; $50bd: $1d
	ld   b, b                                        ; $50be: $40
	ld   d, $03                                      ; $50bf: $16 $03
	ld   d, $01                                      ; $50c1: $16 $01
	ld   bc, $0028                                   ; $50c3: $01 $28 $00
	ld   bc, $fc54                                   ; $50c6: $01 $54 $fc
	and  c                                           ; $50c9: $a1
	rst  $38                                         ; $50ca: $ff
	rst  $38                                         ; $50cb: $ff
	dec  c                                           ; $50cc: $0d
	adc  h                                           ; $50cd: $8c
	ld   d, b                                        ; $50ce: $50
	adc  h                                           ; $50cf: $8c
	ld   d, b                                        ; $50d0: $50
	ld   l, [hl]                                     ; $50d1: $6e
	ld   a, b                                        ; $50d2: $78
	inc  bc                                          ; $50d3: $03
	ld   [hl], d                                     ; $50d4: $72
	ld   a, l                                        ; $50d5: $7d
	sbc  a                                           ; $50d6: $9f
	dec  c                                           ; $50d7: $0d
	nop                                              ; $50d8: $00
	ld   a, [bc]                                     ; $50d9: $0a
	ld   b, $f1                                      ; $50da: $06 $f1
	dec  b                                           ; $50dc: $05
	rrca                                             ; $50dd: $0f
	nop                                              ; $50de: $00
	ld   bc, $0401                                   ; $50df: $01 $01 $04
	ld   [hl+], a                                    ; $50e2: $22
	ld   [hl], l                                     ; $50e3: $75
	ld   h, a                                        ; $50e4: $67
	ld   a, e                                        ; $50e5: $7b
	sbc  a                                           ; $50e6: $9f
	dec  c                                           ; $50e7: $0d
	inc  bc                                          ; $50e8: $03
	inc  bc                                          ; $50e9: $03
	ld   e, d                                        ; $50ea: $5a
	ld   e, e                                        ; $50eb: $5b
	sbc  d                                           ; $50ec: $9a
	ld   d, d                                        ; $50ed: $52
	ld   [hl], l                                     ; $50ee: $75
	ld   d, d                                        ; $50ef: $52
	ld   d, d                                        ; $50f0: $52
	ld   h, [hl]                                     ; $50f1: $66
	sub  c                                           ; $50f2: $91
	dec  c                                           ; $50f3: $0d
	ld   a, b                                        ; $50f4: $78
	ld   d, d                                        ; $50f5: $52
	ld   [hl], l                                     ; $50f6: $75
	ld   h, a                                        ; $50f7: $67
	ld   e, c                                        ; $50f8: $59
	sbc  a                                           ; $50f9: $9f
	dec  c                                           ; $50fa: $0d
	nop                                              ; $50fb: $00
	ld   a, [bc]                                     ; $50fc: $0a
	inc  e                                           ; $50fd: $1c
	ld   b, $02                                      ; $50fe: $06 $02
	ld   [bc], a                                     ; $5100: $02
	dec  e                                           ; $5101: $1d
	ld   b, b                                        ; $5102: $40
	ld   d, $03                                      ; $5103: $16 $03
	ld   d, $01                                      ; $5105: $16 $01
	inc  bc                                          ; $5107: $03
	add  hl, hl                                      ; $5108: $29
	nop                                              ; $5109: $00
	ld   bc, $0d02                                   ; $510a: $01 $02 $0d
	inc  b                                           ; $510d: $04
	halt                                             ; $510e: $76
	ld   [hl], l                                     ; $510f: $75
	ld   a, l                                        ; $5110: $7d
	inc  bc                                          ; $5111: $03
	inc  bc                                          ; $5112: $03
	ld   a, b                                        ; $5113: $78
	and  c                                           ; $5114: $a1
	ld   e, c                                        ; $5115: $59
	dec  c                                           ; $5116: $0d
	add  e                                           ; $5117: $83
	sub  a                                           ; $5118: $97
	ld   a, b                                        ; $5119: $78
	ld   d, d                                        ; $511a: $52
	ld   a, h                                        ; $511b: $7c
	ld   a, [$020d]                                  ; $511c: $fa $0d $02
	db   $e4                                         ; $511f: $e4
	ld   d, d                                        ; $5120: $52
	ld   a, h                                        ; $5121: $7c
	ld   a, l                                        ; $5122: $7d
	ld   [bc], a                                     ; $5123: $02
	sub  h                                           ; $5124: $94
	inc  bc                                          ; $5125: $03
	ld   l, e                                        ; $5126: $6b
	ld   l, [hl]                                     ; $5127: $6e
	sub  [hl]                                        ; $5128: $96
	sbc  a                                           ; $5129: $9f
	dec  c                                           ; $512a: $0d
	nop                                              ; $512b: $00
	ld   a, [bc]                                     ; $512c: $0a
	ld   b, $f1                                      ; $512d: $06 $f1
	dec  b                                           ; $512f: $05
	rrca                                             ; $5130: $0f
	nop                                              ; $5131: $00
	ld   bc, $0201                                   ; $5132: $01 $01 $02
	ld   d, $75                                      ; $5135: $16 $75
	ld   h, a                                        ; $5137: $67
	ld   a, e                                        ; $5138: $7b
	sbc  a                                           ; $5139: $9f
	dec  c                                           ; $513a: $0d
	ld   h, a                                        ; $513b: $67
	ld   l, b                                        ; $513c: $68
	ld   h, l                                        ; $513d: $65
	ld   d, d                                        ; $513e: $52
	ld   h, l                                        ; $513f: $65
	sbc  a                                           ; $5140: $9f
	db   $e3                                         ; $5141: $e3
	cp   b                                           ; $5142: $b8
	ld   a, l                                        ; $5143: $7d
	ld   d, h                                        ; $5144: $54
	adc  h                                           ; $5145: $8c
	ld   d, d                                        ; $5146: $52
	ld   h, l                                        ; $5147: $65
	sbc  a                                           ; $5148: $9f
	dec  c                                           ; $5149: $0d
	nop                                              ; $514a: $00
	ld   a, [bc]                                     ; $514b: $0a
	inc  e                                           ; $514c: $1c
	ld   b, $00                                      ; $514d: $06 $00
	nop                                              ; $514f: $00
	dec  e                                           ; $5150: $1d
	ld   b, b                                        ; $5151: $40
	ld   d, $03                                      ; $5152: $16 $03
	ld   d, $01                                      ; $5154: $16 $01
	ld   [bc], a                                     ; $5156: $02
	jr   z, jr_058_5159                              ; $5157: $28 $00

jr_058_5159:
	ld   bc, $1602                                   ; $5159: $01 $02 $16
	ld   a, b                                        ; $515c: $78
	rst  $38                                         ; $515d: $ff
	rst  $38                                         ; $515e: $ff
	dec  c                                           ; $515f: $0d
	ld   d, h                                        ; $5160: $54
	and  c                                           ; $5161: $a1
	sbc  [hl]                                        ; $5162: $9e
	inc  b                                           ; $5163: $04
	sbc  h                                           ; $5164: $9c
	ld   e, d                                        ; $5165: $5a
	ld   d, h                                        ; $5166: $54
	adc  h                                           ; $5167: $8c
	ld   d, d                                        ; $5168: $52
	ld   a, h                                        ; $5169: $7c
	ld   a, l                                        ; $516a: $7d
	dec  c                                           ; $516b: $0d
	ld   d, d                                        ; $516c: $52
	ld   d, d                                        ; $516d: $52
	sub  [hl]                                        ; $516e: $96
	ld   a, b                                        ; $516f: $78
	sbc  a                                           ; $5170: $9f
	dec  c                                           ; $5171: $0d
	nop                                              ; $5172: $00
	ld   a, [bc]                                     ; $5173: $0a
	inc  e                                           ; $5174: $1c
	ld   b, $00                                      ; $5175: $06 $00
	nop                                              ; $5177: $00
	ld   bc, $7463                                   ; $5178: $01 $63 $74
	halt                                             ; $517b: $76
	sbc  [hl]                                        ; $517c: $9e
	sub  b                                           ; $517d: $90
	ld   d, h                                        ; $517e: $54
	ld   [bc], a                                     ; $517f: $02
	ld   a, a                                        ; $5180: $7f
	ld   e, c                                        ; $5181: $59
	ld   a, b                                        ; $5182: $78
	ld   e, l                                        ; $5183: $5d
	ld   l, a                                        ; $5184: $6f
	sub  c                                           ; $5185: $91
	ld   a, b                                        ; $5186: $78
	sbc  a                                           ; $5187: $9f
	dec  c                                           ; $5188: $0d
	ld   [bc], a                                     ; $5189: $02
	and  l                                           ; $518a: $a5
	inc  b                                           ; $518b: $04
	xor  d                                           ; $518c: $aa
	sub  b                                           ; $518d: $90
	ld   [bc], a                                     ; $518e: $02
	jr   nz, jr_058_5195                             ; $518f: $20 $04

	xor  d                                           ; $5191: $aa
	sbc  [hl]                                        ; $5192: $9e
	ld   e, d                                        ; $5193: $5a
	and  c                                           ; $5194: $a1

jr_058_5195:
	ld   a, [hl]                                     ; $5195: $7e
	sbc  d                                           ; $5196: $9a
	sub  [hl]                                        ; $5197: $96
	ld   a, b                                        ; $5198: $78
	sbc  a                                           ; $5199: $9f
	dec  c                                           ; $519a: $0d
	nop                                              ; $519b: $00
	ld   a, [bc]                                     ; $519c: $0a
	dec  c                                           ; $519d: $0d
	nop                                              ; $519e: $00
	nop                                              ; $519f: $00
	rrca                                             ; $51a0: $0f
	nop                                              ; $51a1: $00
	ld   bc, $1e09                                   ; $51a2: $01 $09 $1e
	nop                                              ; $51a5: $00
	nop                                              ; $51a6: $00
	dec  c                                           ; $51a7: $0d
	inc  bc                                          ; $51a8: $03
	nop                                              ; $51a9: $00
	rrca                                             ; $51aa: $0f
	nop                                              ; $51ab: $00
	ld   bc, $0102                                   ; $51ac: $01 $02 $01
	ld   e, b                                        ; $51af: $58
	ld   a, l                                        ; $51b0: $7d
	sub  [hl]                                        ; $51b1: $96
	ld   d, h                                        ; $51b2: $54
	ld   h, d                                        ; $51b3: $62
	ld   h, h                                        ; $51b4: $64
	ld   d, d                                        ; $51b5: $52
	adc  h                                           ; $51b6: $8c
	ld   h, a                                        ; $51b7: $67
	sbc  a                                           ; $51b8: $9f
	dec  c                                           ; $51b9: $0d
	nop                                              ; $51ba: $00
	ld   a, [bc]                                     ; $51bb: $0a
	inc  e                                           ; $51bc: $1c
	inc  bc                                          ; $51bd: $03
	inc  bc                                          ; $51be: $03
	inc  bc                                          ; $51bf: $03
	ld   bc, $7d58                                   ; $51c0: $01 $58 $7d
	sub  [hl]                                        ; $51c3: $96
	ld   d, h                                        ; $51c4: $54
	sbc  [hl]                                        ; $51c5: $9e
	ld   [$5d00], sp                                 ; $51c6: $08 $00 $5d
	and  c                                           ; $51c9: $a1
	sbc  a                                           ; $51ca: $9f
	dec  c                                           ; $51cb: $0d
	nop                                              ; $51cc: $00
	ld   a, [bc]                                     ; $51cd: $0a
	rrca                                             ; $51ce: $0f
	nop                                              ; $51cf: $00
	ld   bc, $0101                                   ; $51d0: $01 $01 $01
	inc  bc                                          ; $51d3: $03
	inc  b                                           ; $51d4: $04
	ld   c, c                                        ; $51d5: $49
	and  b                                           ; $51d6: $a0
	dec  b                                           ; $51d7: $05
	jr   nz, jr_058_5245                             ; $51d8: $20 $6b

	ld   d, h                                        ; $51da: $54
	ld   e, c                                        ; $51db: $59
	ld   a, b                                        ; $51dc: $78
	rst  $38                                         ; $51dd: $ff
	rst  $38                                         ; $51de: $ff
	ld   bc, $0d04                                   ; $51df: $01 $04 $0d
	nop                                              ; $51e2: $00
	ld   a, [bc]                                     ; $51e3: $0a
	add  hl, de                                      ; $51e4: $19
	dec  b                                           ; $51e5: $05
	inc  bc                                          ; $51e6: $03
	inc  bc                                          ; $51e7: $03
	ld   l, d                                        ; $51e8: $6a
	add  a                                           ; $51e9: $87
	inc  b                                           ; $51ea: $04
	sub  d                                           ; $51eb: $92
	ld   a, h                                        ; $51ec: $7c
	dec  b                                           ; $51ed: $05
	jr   nz, jr_058_51f4                             ; $51ee: $20 $04

	dec  d                                           ; $51f0: $15
	nop                                              ; $51f1: $00
	nop                                              ; $51f2: $00
	ld   [bc], a                                     ; $51f3: $02

jr_058_51f4:
	add  d                                           ; $51f4: $82
	inc  bc                                          ; $51f5: $03
	ld   d, [hl]                                     ; $51f6: $56
	ld   a, h                                        ; $51f7: $7c
	dec  b                                           ; $51f8: $05
	jr   nz, @+$06                                   ; $51f9: $20 $04

	dec  d                                           ; $51fb: $15
	nop                                              ; $51fc: $00
	ld   bc, $8d67                                   ; $51fd: $01 $67 $8d
	sbc  d                                           ; $5200: $9a
	ld   a, h                                        ; $5201: $7c
	dec  b                                           ; $5202: $05
	jr   nz, jr_058_5209                             ; $5203: $20 $04

	dec  d                                           ; $5205: $15
	nop                                              ; $5206: $00
	ld   [bc], a                                     ; $5207: $02
	rlca                                             ; $5208: $07

jr_058_5209:
	and  d                                           ; $5209: $a2
	nop                                              ; $520a: $00
	ld   [bc], a                                     ; $520b: $02
	inc  bc                                          ; $520c: $03
	ld   bc, $2000                                   ; $520d: $01 $00 $20
	nop                                              ; $5210: $00
	rlca                                             ; $5211: $07
	ld   [hl], b                                     ; $5212: $70
	ld   [bc], a                                     ; $5213: $02
	ld   [bc], a                                     ; $5214: $02
	inc  bc                                          ; $5215: $03
	ld   bc, $2001                                   ; $5216: $01 $01 $20
	nop                                              ; $5219: $00
	rlca                                             ; $521a: $07
	or   l                                           ; $521b: $b5
	inc  bc                                          ; $521c: $03
	ld   [bc], a                                     ; $521d: $02
	inc  bc                                          ; $521e: $03
	ld   bc, $2002                                   ; $521f: $01 $02 $20
	nop                                              ; $5222: $00
	ld   b, $7f                                      ; $5223: $06 $7f
	nop                                              ; $5225: $00
	inc  e                                           ; $5226: $1c
	inc  bc                                          ; $5227: $03
	inc  bc                                          ; $5228: $03
	inc  bc                                          ; $5229: $03
	ld   bc, $a502                                   ; $522a: $01 $02 $a5
	inc  b                                           ; $522d: $04
	xor  d                                           ; $522e: $aa
	sub  b                                           ; $522f: $90
	ld   [bc], a                                     ; $5230: $02
	jr   nz, jr_058_5237                             ; $5231: $20 $04

	xor  d                                           ; $5233: $aa
	dec  c                                           ; $5234: $0d
	ld   e, d                                        ; $5235: $5a
	and  c                                           ; $5236: $a1

jr_058_5237:
	ld   a, [hl]                                     ; $5237: $7e
	sbc  b                                           ; $5238: $98
	ld   a, b                                        ; $5239: $78
	ld   h, e                                        ; $523a: $63
	ld   d, d                                        ; $523b: $52
	sbc  a                                           ; $523c: $9f
	dec  c                                           ; $523d: $0d
	nop                                              ; $523e: $00
	ld   a, [bc]                                     ; $523f: $0a
	dec  c                                           ; $5240: $0d
	nop                                              ; $5241: $00
	nop                                              ; $5242: $00
	rrca                                             ; $5243: $0f
	nop                                              ; $5244: $00

jr_058_5245:
	ld   bc, $1e09                                   ; $5245: $01 $09 $1e
	nop                                              ; $5248: $00
	rrca                                             ; $5249: $0f
	nop                                              ; $524a: $00
	ld   bc, $6b01                                   ; $524b: $01 $01 $6b
	ld   d, h                                        ; $524e: $54
	ld   d, d                                        ; $524f: $52
	ld   d, [hl]                                     ; $5250: $56
	ld   a, [hl]                                     ; $5251: $7e
	sbc  [hl]                                        ; $5252: $9e
	rst  JumpTable                                         ; $5253: $df
	db   $ec                                         ; $5254: $ec
	and  e                                           ; $5255: $a3
	ld   h, e                                        ; $5256: $63
	and  c                                           ; $5257: $a1
	ld   [hl], h                                     ; $5258: $74
	dec  c                                           ; $5259: $0d
	halt                                             ; $525a: $76
	ld   h, c                                        ; $525b: $61
	sbc  e                                           ; $525c: $9b
	ld   [hl], h                                     ; $525d: $74
	and  c                                           ; $525e: $a1
	ld   a, c                                        ; $525f: $79
	inc  b                                           ; $5260: $04
	ld   c, c                                        ; $5261: $49
	and  b                                           ; $5262: $a0
	ld   e, c                                        ; $5263: $59
	ld   e, a                                        ; $5264: $5f
	adc  h                                           ; $5265: $8c
	ld   h, a                                        ; $5266: $67
	ld   e, c                                        ; $5267: $59
	ld   sp, hl                                      ; $5268: $f9
	dec  c                                           ; $5269: $0d
	nop                                              ; $526a: $00
	ld   a, [bc]                                     ; $526b: $0a
	inc  e                                           ; $526c: $1c
	inc  bc                                          ; $526d: $03
	nop                                              ; $526e: $00
	nop                                              ; $526f: $00
	ld   bc, $4904                                   ; $5270: $01 $04 $49
	and  b                                           ; $5273: $a0
	ld   e, c                                        ; $5274: $59
	ld   e, a                                        ; $5275: $5f
	sbc  c                                           ; $5276: $99
	ld   e, c                                        ; $5277: $59
	ld   [bc], a                                     ; $5278: $02
	dec  bc                                          ; $5279: $0b
	inc  bc                                          ; $527a: $03
	ld   c, a                                        ; $527b: $4f
	ld   a, c                                        ; $527c: $79
	dec  c                                           ; $527d: $0d
	inc  bc                                          ; $527e: $03
	ld   l, d                                        ; $527f: $6a
	add  a                                           ; $5280: $87
	ld   l, l                                        ; $5281: $6d
	ld   h, c                                        ; $5282: $61
	halt                                             ; $5283: $76
	ld   e, d                                        ; $5284: $5a
	ld   a, b                                        ; $5285: $78
	ld   d, d                                        ; $5286: $52
	sbc  l                                           ; $5287: $9d
	sbc  a                                           ; $5288: $9f
	dec  c                                           ; $5289: $0d
	ld   d, b                                        ; $528a: $50
	ld   a, b                                        ; $528b: $78
	ld   l, l                                        ; $528c: $6d
	ld   a, l                                        ; $528d: $7d
	inc  b                                           ; $528e: $04
	ld   c, c                                        ; $528f: $49
	and  b                                           ; $5290: $a0
	ld   e, c                                        ; $5291: $59
	ld   e, a                                        ; $5292: $5f
	sbc  c                                           ; $5293: $99
	ld   a, h                                        ; $5294: $7c
	ld   sp, hl                                      ; $5295: $f9
	dec  c                                           ; $5296: $0d
	nop                                              ; $5297: $00
	ld   a, [bc]                                     ; $5298: $0a
	add  hl, de                                      ; $5299: $19
	dec  b                                           ; $529a: $05
	inc  bc                                          ; $529b: $03
	ld   [bc], a                                     ; $529c: $02
	dec  [hl]                                        ; $529d: $35
	adc  l                                           ; $529e: $8d
	ld   [hl], d                                     ; $529f: $72
	ld   [hl], l                                     ; $52a0: $75
	ld   h, a                                        ; $52a1: $67
	nop                                              ; $52a2: $00
	nop                                              ; $52a3: $00
	inc  bc                                          ; $52a4: $03
	inc  l                                           ; $52a5: $2c
	ld   h, [hl]                                     ; $52a6: $66
	sub  l                                           ; $52a7: $95
	ld   d, h                                        ; $52a8: $54
	sub  h                                           ; $52a9: $94
	ld   [hl], l                                     ; $52aa: $75
	ld   h, a                                        ; $52ab: $67
	nop                                              ; $52ac: $00
	ld   bc, $eddd                                   ; $52ad: $01 $dd $ed
	cp   b                                           ; $52b0: $b8
	jp   nz, Jump_058_6775                           ; $52b1: $c2 $75 $67

	nop                                              ; $52b4: $00
	ld   [bc], a                                     ; $52b5: $02
	rlca                                             ; $52b6: $07
	dec  l                                           ; $52b7: $2d
	ld   bc, $0302                                   ; $52b8: $01 $02 $03
	ld   bc, $2000                                   ; $52bb: $01 $00 $20
	nop                                              ; $52be: $00
	rlca                                             ; $52bf: $07
	sub  [hl]                                        ; $52c0: $96
	ld   bc, $0302                                   ; $52c1: $01 $02 $03
	ld   bc, $2001                                   ; $52c4: $01 $01 $20
	nop                                              ; $52c7: $00
	rlca                                             ; $52c8: $07
	db   $fc                                         ; $52c9: $fc
	ld   bc, $0302                                   ; $52ca: $01 $02 $03
	ld   bc, $2002                                   ; $52cd: $01 $02 $20
	nop                                              ; $52d0: $00
	ld   b, $45                                      ; $52d1: $06 $45
	ld   [bc], a                                     ; $52d3: $02
	rrca                                             ; $52d4: $0f
	nop                                              ; $52d5: $00
	ld   bc, $0201                                   ; $52d6: $01 $01 $02
	dec  [hl]                                        ; $52d9: $35
	adc  l                                           ; $52da: $8d
	ld   [hl], d                                     ; $52db: $72
	ld   [hl], l                                     ; $52dc: $75
	ld   h, a                                        ; $52dd: $67
	sub  [hl]                                        ; $52de: $96
	sbc  a                                           ; $52df: $9f
	ld   h, a                                        ; $52e0: $67
	ld   [hl], c                                     ; $52e1: $71
	ld   e, e                                        ; $52e2: $5b
	sbc  b                                           ; $52e3: $98
	halt                                             ; $52e4: $76
	ld   h, l                                        ; $52e5: $65
	ld   l, l                                        ; $52e6: $6d
	dec  c                                           ; $52e7: $0d
	dec  b                                           ; $52e8: $05
	and  c                                           ; $52e9: $a1
	ld   h, e                                        ; $52ea: $63
	ld   [hl], l                                     ; $52eb: $75
	ld   e, b                                        ; $52ec: $58
	ld   d, d                                        ; $52ed: $52
	ld   h, l                                        ; $52ee: $65
	ld   d, d                                        ; $52ef: $52
	ld   [hl], l                                     ; $52f0: $75
	ld   h, a                                        ; $52f1: $67
	sub  [hl]                                        ; $52f2: $96
	sbc  a                                           ; $52f3: $9f
	dec  c                                           ; $52f4: $0d
	ld   [bc], a                                     ; $52f5: $02
	and  l                                           ; $52f6: $a5
	inc  b                                           ; $52f7: $04
	add  hl, hl                                      ; $52f8: $29
	sbc  [hl]                                        ; $52f9: $9e
	ld   h, d                                        ; $52fa: $62
	ld   l, a                                        ; $52fb: $6f
	ld   l, e                                        ; $52fc: $6b
	ld   d, h                                        ; $52fd: $54
	ld   h, l                                        ; $52fe: $65
	adc  h                                           ; $52ff: $8c
	ld   h, a                                        ; $5300: $67
	sbc  a                                           ; $5301: $9f
	dec  c                                           ; $5302: $0d
	nop                                              ; $5303: $00
	ld   a, [bc]                                     ; $5304: $0a
	inc  e                                           ; $5305: $1c
	inc  bc                                          ; $5306: $03
	inc  bc                                          ; $5307: $03
	inc  bc                                          ; $5308: $03
	dec  e                                           ; $5309: $1d
	ld   b, b                                        ; $530a: $40
	inc  de                                          ; $530b: $13
	inc  bc                                          ; $530c: $03
	inc  de                                          ; $530d: $13
	ld   bc, $2802                                   ; $530e: $01 $02 $28
	nop                                              ; $5311: $00
	ld   bc, $546b                                   ; $5312: $01 $6b $54
	ld   a, e                                        ; $5315: $7b
	rst  $38                                         ; $5316: $ff
	rst  $38                                         ; $5317: $ff
	dec  c                                           ; $5318: $0d
	ld   [bc], a                                     ; $5319: $02
	jr   nz, jr_058_5320                             ; $531a: $20 $04

	add  hl, hl                                      ; $531c: $29
	ld   a, l                                        ; $531d: $7d
	inc  bc                                          ; $531e: $03
	ld   l, d                                        ; $531f: $6a

jr_058_5320:
	add  a                                           ; $5320: $87
	ld   [hl], h                                     ; $5321: $74
	adc  l                                           ; $5322: $8d
	ld   l, l                                        ; $5323: $6d
	ld   d, d                                        ; $5324: $52
	ld   h, l                                        ; $5325: $65
	sbc  [hl]                                        ; $5326: $9e
	dec  c                                           ; $5327: $0d
	ld   [bc], a                                     ; $5328: $02
	ld   e, b                                        ; $5329: $58
	ld   [bc], a                                     ; $532a: $02
	add  [hl]                                        ; $532b: $86
	ld   e, d                                        ; $532c: $5a
	ld   d, b                                        ; $532d: $50
	ld   [hl], c                                     ; $532e: $71
	ld   l, l                                        ; $532f: $6d
	sub  a                                           ; $5330: $97
	ld   e, b                                        ; $5331: $58
	ld   [bc], a                                     ; $5332: $02
	add  b                                           ; $5333: $80
	ld   d, d                                        ; $5334: $52
	ld   a, e                                        ; $5335: $7b
	sbc  a                                           ; $5336: $9f
	dec  c                                           ; $5337: $0d
	nop                                              ; $5338: $00
	ld   a, [bc]                                     ; $5339: $0a
	ld   b, $45                                      ; $533a: $06 $45
	ld   [bc], a                                     ; $533c: $02
	rrca                                             ; $533d: $0f
	nop                                              ; $533e: $00
	ld   bc, $0301                                   ; $533f: $01 $01 $03
	inc  l                                           ; $5342: $2c
	ld   h, [hl]                                     ; $5343: $66
	sub  l                                           ; $5344: $95
	ld   d, h                                        ; $5345: $54
	sub  h                                           ; $5346: $94
	ld   [hl], l                                     ; $5347: $75
	ld   h, a                                        ; $5348: $67
	sub  [hl]                                        ; $5349: $96
	sbc  a                                           ; $534a: $9f
	dec  c                                           ; $534b: $0d
	ld   h, e                                        ; $534c: $63
	ld   [hl], c                                     ; $534d: $71
	ld   a, a                                        ; $534e: $7f
	sbc  b                                           ; $534f: $98
	ld   h, l                                        ; $5350: $65
	ld   [hl], h                                     ; $5351: $74
	ld   e, b                                        ; $5352: $58
	ld   d, d                                        ; $5353: $52
	ld   h, l                                        ; $5354: $65
	ld   d, d                                        ; $5355: $52
	ld   [hl], l                                     ; $5356: $75
	ld   h, a                                        ; $5357: $67
	sub  [hl]                                        ; $5358: $96
	sbc  a                                           ; $5359: $9f
	dec  c                                           ; $535a: $0d
	ld   [bc], a                                     ; $535b: $02
	and  l                                           ; $535c: $a5
	inc  b                                           ; $535d: $04
	add  hl, hl                                      ; $535e: $29
	sbc  [hl]                                        ; $535f: $9e
	ld   h, d                                        ; $5360: $62
	ld   l, a                                        ; $5361: $6f
	ld   l, e                                        ; $5362: $6b
	ld   d, h                                        ; $5363: $54
	ld   h, l                                        ; $5364: $65
	adc  h                                           ; $5365: $8c
	ld   h, a                                        ; $5366: $67
	sbc  a                                           ; $5367: $9f
	dec  c                                           ; $5368: $0d
	nop                                              ; $5369: $00
	ld   a, [bc]                                     ; $536a: $0a
	inc  e                                           ; $536b: $1c
	inc  bc                                          ; $536c: $03
	inc  bc                                          ; $536d: $03
	inc  bc                                          ; $536e: $03
	dec  e                                           ; $536f: $1d
	ld   b, b                                        ; $5370: $40
	inc  de                                          ; $5371: $13
	inc  bc                                          ; $5372: $03
	inc  de                                          ; $5373: $13
	ld   bc, $2802                                   ; $5374: $01 $02 $28
	nop                                              ; $5377: $00
	ld   bc, $546b                                   ; $5378: $01 $6b $54
	ld   a, e                                        ; $537b: $7b
	rst  $38                                         ; $537c: $ff
	rst  $38                                         ; $537d: $ff
	dec  c                                           ; $537e: $0d
	ld   [bc], a                                     ; $537f: $02
	jr   nz, jr_058_5386                             ; $5380: $20 $04

	add  hl, hl                                      ; $5382: $29
	ld   a, l                                        ; $5383: $7d
	inc  bc                                          ; $5384: $03
	ld   l, d                                        ; $5385: $6a

jr_058_5386:
	add  a                                           ; $5386: $87
	ld   [hl], h                                     ; $5387: $74
	adc  l                                           ; $5388: $8d
	ld   l, l                                        ; $5389: $6d
	ld   d, d                                        ; $538a: $52
	ld   h, l                                        ; $538b: $65
	sbc  [hl]                                        ; $538c: $9e
	dec  c                                           ; $538d: $0d
	ld   [bc], a                                     ; $538e: $02
	ld   e, b                                        ; $538f: $58
	ld   [bc], a                                     ; $5390: $02
	add  [hl]                                        ; $5391: $86
	ld   e, d                                        ; $5392: $5a
	ld   d, b                                        ; $5393: $50
	ld   [hl], c                                     ; $5394: $71
	ld   l, l                                        ; $5395: $6d
	sub  a                                           ; $5396: $97
	ld   e, b                                        ; $5397: $58
	ld   [bc], a                                     ; $5398: $02
	add  b                                           ; $5399: $80
	ld   d, d                                        ; $539a: $52
	ld   a, e                                        ; $539b: $7b
	sbc  a                                           ; $539c: $9f
	dec  c                                           ; $539d: $0d
	nop                                              ; $539e: $00
	ld   a, [bc]                                     ; $539f: $0a
	ld   b, $45                                      ; $53a0: $06 $45
	ld   [bc], a                                     ; $53a2: $02
	rrca                                             ; $53a3: $0f
	nop                                              ; $53a4: $00
	ld   bc, $df01                                   ; $53a5: $01 $01 $df
	db   $ec                                         ; $53a8: $ec
	and  e                                           ; $53a9: $a3
	ld   h, e                                        ; $53aa: $63
	and  c                                           ; $53ab: $a1
	halt                                             ; $53ac: $76
	inc  bc                                          ; $53ad: $03
	ld   l, d                                        ; $53ae: $6a
	add  a                                           ; $53af: $87
	sbc  c                                           ; $53b0: $99
	ld   a, h                                        ; $53b1: $7c
	ld   a, b                                        ; $53b2: $78
	sub  a                                           ; $53b3: $97
	dec  c                                           ; $53b4: $0d
	db   $dd                                         ; $53b5: $dd
	db   $ed                                         ; $53b6: $ed
	cp   b                                           ; $53b7: $b8
	jp   nz, Jump_058_6575                           ; $53b8: $c2 $75 $65

	sub  l                                           ; $53bb: $95
	ld   d, h                                        ; $53bc: $54
	sbc  a                                           ; $53bd: $9f
	dec  c                                           ; $53be: $0d
	ld   [bc], a                                     ; $53bf: $02
	and  l                                           ; $53c0: $a5
	inc  b                                           ; $53c1: $04
	add  hl, hl                                      ; $53c2: $29
	sbc  [hl]                                        ; $53c3: $9e
	ld   h, d                                        ; $53c4: $62
	ld   l, a                                        ; $53c5: $6f
	ld   l, e                                        ; $53c6: $6b
	ld   d, h                                        ; $53c7: $54
	ld   h, l                                        ; $53c8: $65
	adc  h                                           ; $53c9: $8c
	ld   h, a                                        ; $53ca: $67
	sbc  a                                           ; $53cb: $9f
	dec  c                                           ; $53cc: $0d
	nop                                              ; $53cd: $00
	ld   a, [bc]                                     ; $53ce: $0a
	inc  e                                           ; $53cf: $1c
	inc  bc                                          ; $53d0: $03
	rlca                                             ; $53d1: $07
	rlca                                             ; $53d2: $07
	ld   bc, $eddd                                   ; $53d3: $01 $dd $ed
	cp   b                                           ; $53d6: $b8
	jp   nz, Jump_058_59a0                           ; $53d7: $c2 $a0 $59

	ld   e, a                                        ; $53da: $5f
	sbc  c                                           ; $53db: $99
	ld   a, h                                        ; $53dc: $7c
	ld   sp, hl                                      ; $53dd: $f9
	dec  c                                           ; $53de: $0d
	ld   e, b                                        ; $53df: $58
	ld   d, d                                        ; $53e0: $52
	ld   h, l                                        ; $53e1: $65
	ld   d, d                                        ; $53e2: $52
	ld   a, h                                        ; $53e3: $7c
	ld   e, c                                        ; $53e4: $59
	ld   h, l                                        ; $53e5: $65
	sub  a                                           ; $53e6: $97
	rst  $38                                         ; $53e7: $ff
	rst  $38                                         ; $53e8: $ff
	dec  c                                           ; $53e9: $0d
	nop                                              ; $53ea: $00
	ld   a, [bc]                                     ; $53eb: $0a
	inc  e                                           ; $53ec: $1c
	inc  bc                                          ; $53ed: $03
	nop                                              ; $53ee: $00
	nop                                              ; $53ef: $00
	ld   bc, $9e63                                   ; $53f0: $01 $63 $9e
	ld   e, b                                        ; $53f3: $58
	ld   h, l                                        ; $53f4: $65
	sub  c                                           ; $53f5: $91
	add  a                                           ; $53f6: $87
	sbc  b                                           ; $53f7: $98
	ld   a, l                                        ; $53f8: $7d
	inc  bc                                          ; $53f9: $03
	ld   a, [hl]                                     ; $53fa: $7e
	sbc  l                                           ; $53fb: $9d
	sbc  b                                           ; $53fc: $98
	sbc  a                                           ; $53fd: $9f
	dec  c                                           ; $53fe: $0d
	inc  bc                                          ; $53ff: $03
	ld   l, l                                        ; $5400: $6d
	dec  b                                           ; $5401: $05
	add  hl, de                                      ; $5402: $19
	ld   a, h                                        ; $5403: $7c
	ld   h, l                                        ; $5404: $65
	ld   l, l                                        ; $5405: $6d
	ld   e, l                                        ; $5406: $5d
	ld   a, b                                        ; $5407: $78
	ld   h, e                                        ; $5408: $63
	ld   d, d                                        ; $5409: $52
	sbc  a                                           ; $540a: $9f
	dec  c                                           ; $540b: $0d
	nop                                              ; $540c: $00
	ld   a, [bc]                                     ; $540d: $0a
	dec  c                                           ; $540e: $0d
	nop                                              ; $540f: $00
	nop                                              ; $5410: $00
	rrca                                             ; $5411: $0f
	nop                                              ; $5412: $00
	ld   bc, $1e09                                   ; $5413: $01 $09 $1e
	nop                                              ; $5416: $00
	rrca                                             ; $5417: $0f
	nop                                              ; $5418: $00
	ld   bc, $df01                                   ; $5419: $01 $01 $df
	db   $ec                                         ; $541c: $ec
	and  e                                           ; $541d: $a3
	ld   h, e                                        ; $541e: $63
	and  c                                           ; $541f: $a1
	ld   [hl], h                                     ; $5420: $74
	sbc  [hl]                                        ; $5421: $9e
	dec  c                                           ; $5422: $0d
	ld   [hl], a                                     ; $5423: $77
	ld   a, h                                        ; $5424: $7c
	ld   [bc], a                                     ; $5425: $02
	add  d                                           ; $5426: $82
	inc  bc                                          ; $5427: $03
	ld   d, [hl]                                     ; $5428: $56
	ld   e, d                                        ; $5429: $5a
	ld   [bc], a                                     ; $542a: $02
	sbc  d                                           ; $542b: $9a
	ld   e, e                                        ; $542c: $5b
	ld   [hl], l                                     ; $542d: $75
	ld   h, a                                        ; $542e: $67
	ld   e, c                                        ; $542f: $59
	ld   sp, hl                                      ; $5430: $f9
	dec  c                                           ; $5431: $0d
	nop                                              ; $5432: $00
	ld   a, [bc]                                     ; $5433: $0a
	inc  e                                           ; $5434: $1c
	inc  bc                                          ; $5435: $03
	nop                                              ; $5436: $00
	nop                                              ; $5437: $00
	ld   bc, $fd03                                   ; $5438: $01 $03 $fd
	ld   a, c                                        ; $543b: $79
	ld   [bc], a                                     ; $543c: $02
	sbc  d                                           ; $543d: $9a
	ld   e, e                                        ; $543e: $5b
	ld   a, b                                        ; $543f: $78
	ld   [bc], a                                     ; $5440: $02
	add  d                                           ; $5441: $82
	inc  bc                                          ; $5442: $03
	ld   d, [hl]                                     ; $5443: $56
	ld   a, l                                        ; $5444: $7d
	ld   a, b                                        ; $5445: $78
	ld   d, d                                        ; $5446: $52
	sbc  l                                           ; $5447: $9d
	ld   a, e                                        ; $5448: $7b
	sbc  a                                           ; $5449: $9f
	dec  c                                           ; $544a: $0d
	ld   l, l                                        ; $544b: $6d
	ld   l, [hl]                                     ; $544c: $6e
	rst  $38                                         ; $544d: $ff
	rst  $38                                         ; $544e: $ff
	inc  b                                           ; $544f: $04
	ld   [hl+], a                                    ; $5450: $22
	ld   a, l                                        ; $5451: $7d
	ld   [bc], a                                     ; $5452: $02
	sbc  d                                           ; $5453: $9a
	ld   e, e                                        ; $5454: $5b
	ld   h, [hl]                                     ; $5455: $66
	sub  c                                           ; $5456: $91
	ld   a, b                                        ; $5457: $78
	ld   d, d                                        ; $5458: $52
	sbc  l                                           ; $5459: $9d
	sbc  a                                           ; $545a: $9f
	dec  c                                           ; $545b: $0d
	nop                                              ; $545c: $00
	ld   a, [bc]                                     ; $545d: $0a
	add  hl, de                                      ; $545e: $19
	dec  b                                           ; $545f: $05
	ld   [bc], a                                     ; $5460: $02

Jump_058_5461:
	inc  b                                           ; $5461: $04
	ld   [hl+], a                                    ; $5462: $22
	ld   e, d                                        ; $5463: $5a
	inc  b                                           ; $5464: $04
	ld   c, l                                        ; $5465: $4d
	ld   [bc], a                                     ; $5466: $02
	ld   a, e                                        ; $5467: $7b
	ld   d, h                                        ; $5468: $54
	inc  bc                                          ; $5469: $03
	ld   l, [hl]                                     ; $546a: $6e
	ld   [bc], a                                     ; $546b: $02
	db   $fc                                         ; $546c: $fc
	ld   a, b                                        ; $546d: $78
	ld   a, h                                        ; $546e: $7c
	ld   a, c                                        ; $546f: $79
	ld   sp, hl                                      ; $5470: $f9
	nop                                              ; $5471: $00
	nop                                              ; $5472: $00
	inc  b                                           ; $5473: $04
	ld   l, l                                        ; $5474: $6d
	sub  b                                           ; $5475: $90
	ld   [bc], a                                     ; $5476: $02
	sbc  d                                           ; $5477: $9a
	ld   e, e                                        ; $5478: $5b
	ld   h, [hl]                                     ; $5479: $66
	sub  c                                           ; $547a: $91
	ld   d, b                                        ; $547b: $50
	sbc  b                                           ; $547c: $98
	adc  h                                           ; $547d: $8c
	ld   l, c                                        ; $547e: $69
	and  c                                           ; $547f: $a1
	nop                                              ; $5480: $00
	ld   bc, $f007                                   ; $5481: $01 $07 $f0
	ld   [bc], a                                     ; $5484: $02
	ld   [bc], a                                     ; $5485: $02
	inc  bc                                          ; $5486: $03
	ld   bc, $2000                                   ; $5487: $01 $00 $20
	nop                                              ; $548a: $00
	rlca                                             ; $548b: $07
	ld   b, h                                        ; $548c: $44
	inc  bc                                          ; $548d: $03
	ld   [bc], a                                     ; $548e: $02
	inc  bc                                          ; $548f: $03
	ld   bc, $2001                                   ; $5490: $01 $01 $20
	nop                                              ; $5493: $00
	ld   b, $8a                                      ; $5494: $06 $8a
	inc  bc                                          ; $5496: $03
	rrca                                             ; $5497: $0f
	nop                                              ; $5498: $00
	ld   bc, $df01                                   ; $5499: $01 $01 $df
	db   $ec                                         ; $549c: $ec
	and  e                                           ; $549d: $a3
	ld   h, e                                        ; $549e: $63
	and  c                                           ; $549f: $a1
	ld   [hl], c                                     ; $54a0: $71
	ld   [hl], h                                     ; $54a1: $74
	sbc  [hl]                                        ; $54a2: $9e
	inc  b                                           ; $54a3: $04
	ld   [hl+], a                                    ; $54a4: $22
	ld   e, d                                        ; $54a5: $5a
	dec  c                                           ; $54a6: $0d
	inc  b                                           ; $54a7: $04
	ld   c, l                                        ; $54a8: $4d
	ld   [bc], a                                     ; $54a9: $02
	ld   a, e                                        ; $54aa: $7b
	ld   d, d                                        ; $54ab: $52
	ld   l, e                                        ; $54ac: $6b
	ld   d, h                                        ; $54ad: $54
	ld   a, b                                        ; $54ae: $78
	and  l                                           ; $54af: $a5
	db   $e3                                         ; $54b0: $e3
	ei                                               ; $54b1: $fb
	cp   c                                           ; $54b2: $b9
	dec  c                                           ; $54b3: $0d
	ld   a, b                                        ; $54b4: $78
	ld   a, h                                        ; $54b5: $7c
	ld   [hl], l                                     ; $54b6: $75
	ld   h, a                                        ; $54b7: $67
	ld   e, d                                        ; $54b8: $5a
	rst  $38                                         ; $54b9: $ff
	rst  $38                                         ; $54ba: $ff
	dec  c                                           ; $54bb: $0d
	nop                                              ; $54bc: $00
	ld   a, [bc]                                     ; $54bd: $0a
	inc  e                                           ; $54be: $1c
	inc  bc                                          ; $54bf: $03
	inc  b                                           ; $54c0: $04
	inc  b                                           ; $54c1: $04
	dec  e                                           ; $54c2: $1d
	ld   b, b                                        ; $54c3: $40
	inc  de                                          ; $54c4: $13
	inc  bc                                          ; $54c5: $03
	inc  de                                          ; $54c6: $13
	ld   bc, $2901                                   ; $54c7: $01 $01 $29
	nop                                              ; $54ca: $00
	ld   bc, $766d                                   ; $54cb: $01 $6d $76
	ld   d, [hl]                                     ; $54ce: $56
	adc  c                                           ; $54cf: $89
	adc  a                                           ; $54d0: $8f
	ld   [bc], a                                     ; $54d1: $02
	sbc  l                                           ; $54d2: $9d
	inc  b                                           ; $54d3: $04
	sub  c                                           ; $54d4: $91
	ld   [hl], l                                     ; $54d5: $75
	sub  b                                           ; $54d6: $90
	dec  c                                           ; $54d7: $0d
	ld   l, e                                        ; $54d8: $6b
	sbc  d                                           ; $54d9: $9a
	ld   a, l                                        ; $54da: $7d
	sbc  [hl]                                        ; $54db: $9e
	ld   d, h                                        ; $54dc: $54
	sbc  d                                           ; $54dd: $9a
	ld   h, l                                        ; $54de: $65
	ld   e, l                                        ; $54df: $5d
	ld   a, b                                        ; $54e0: $78
	ld   d, d                                        ; $54e1: $52
	sbc  l                                           ; $54e2: $9d
	rst  $38                                         ; $54e3: $ff
	rst  $38                                         ; $54e4: $ff
	dec  c                                           ; $54e5: $0d
	nop                                              ; $54e6: $00
	ld   a, [bc]                                     ; $54e7: $0a
	ld   b, $8a                                      ; $54e8: $06 $8a
	inc  bc                                          ; $54ea: $03
	rrca                                             ; $54eb: $0f
	nop                                              ; $54ec: $00
	ld   bc, $0401                                   ; $54ed: $01 $01 $04
	ld   l, l                                        ; $54f0: $6d
	sub  b                                           ; $54f1: $90
	ld   [bc], a                                     ; $54f2: $02
	sbc  d                                           ; $54f3: $9a
	ld   e, e                                        ; $54f4: $5b
	ld   h, [hl]                                     ; $54f5: $66
	sub  c                                           ; $54f6: $91
	ld   d, b                                        ; $54f7: $50
	sbc  b                                           ; $54f8: $98
	adc  h                                           ; $54f9: $8c
	ld   l, c                                        ; $54fa: $69
	and  c                                           ; $54fb: $a1
	sbc  a                                           ; $54fc: $9f
	dec  c                                           ; $54fd: $0d
	nop                                              ; $54fe: $00
	ld   a, [bc]                                     ; $54ff: $0a
	inc  e                                           ; $5500: $1c
	inc  bc                                          ; $5501: $03
	inc  bc                                          ; $5502: $03
	inc  bc                                          ; $5503: $03
	dec  e                                           ; $5504: $1d
	ld   b, b                                        ; $5505: $40
	inc  de                                          ; $5506: $13
	inc  bc                                          ; $5507: $03
	inc  de                                          ; $5508: $13
	ld   bc, $2801                                   ; $5509: $01 $01 $28
	nop                                              ; $550c: $00
	ld   bc, $d6d6                                   ; $550d: $01 $d6 $d6
	rst  $38                                         ; $5510: $ff
	rst  $38                                         ; $5511: $ff
	sub  b                                           ; $5512: $90
	ld   h, l                                        ; $5513: $65
	ld   e, c                                        ; $5514: $59
	ld   h, l                                        ; $5515: $65
	ld   l, l                                        ; $5516: $6d
	sub  a                                           ; $5517: $97
	dec  c                                           ; $5518: $0d
	ld   d, b                                        ; $5519: $50
	ld   a, b                                        ; $551a: $78
	ld   l, l                                        ; $551b: $6d
	sub  b                                           ; $551c: $90
	inc  bc                                          ; $551d: $03
	ret  z                                           ; $551e: $c8

	ld   a, c                                        ; $551f: $79
	ld   [bc], a                                     ; $5520: $02
	and  b                                           ; $5521: $a0
	ld   d, d                                        ; $5522: $52
	inc  bc                                          ; $5523: $03
	add  d                                           ; $5524: $82
	ld   [bc], a                                     ; $5525: $02
	xor  c                                           ; $5526: $a9
	ld   a, b                                        ; $5527: $78
	ld   a, h                                        ; $5528: $7c
	dec  c                                           ; $5529: $0d
	ld   e, c                                        ; $552a: $59
	ld   h, l                                        ; $552b: $65
	sub  a                                           ; $552c: $97
	sbc  a                                           ; $552d: $9f
	dec  c                                           ; $552e: $0d
	nop                                              ; $552f: $00
	ld   a, [bc]                                     ; $5530: $0a
	inc  e                                           ; $5531: $1c
	inc  bc                                          ; $5532: $03
	nop                                              ; $5533: $00
	nop                                              ; $5534: $00
	ld   bc, $9e63                                   ; $5535: $01 $63 $9e
	ld   e, b                                        ; $5538: $58
	ld   h, l                                        ; $5539: $65
	sub  c                                           ; $553a: $91
	add  a                                           ; $553b: $87
	sbc  b                                           ; $553c: $98
	ld   a, l                                        ; $553d: $7d
	inc  bc                                          ; $553e: $03
	ld   a, [hl]                                     ; $553f: $7e
	sbc  l                                           ; $5540: $9d
	sbc  b                                           ; $5541: $98
	sbc  a                                           ; $5542: $9f
	dec  c                                           ; $5543: $0d
	inc  bc                                          ; $5544: $03
	ld   l, l                                        ; $5545: $6d
	dec  b                                           ; $5546: $05
	add  hl, de                                      ; $5547: $19
	ld   a, h                                        ; $5548: $7c
	ld   h, l                                        ; $5549: $65
	ld   l, l                                        ; $554a: $6d
	ld   e, l                                        ; $554b: $5d
	ld   a, b                                        ; $554c: $78
	ld   h, e                                        ; $554d: $63
	ld   d, d                                        ; $554e: $52
	sbc  a                                           ; $554f: $9f
	dec  c                                           ; $5550: $0d
	nop                                              ; $5551: $00
	ld   a, [bc]                                     ; $5552: $0a
	dec  c                                           ; $5553: $0d
	nop                                              ; $5554: $00
	nop                                              ; $5555: $00
	rrca                                             ; $5556: $0f
	nop                                              ; $5557: $00
	ld   bc, $1e09                                   ; $5558: $01 $09 $1e
	nop                                              ; $555b: $00
	rrca                                             ; $555c: $0f
	nop                                              ; $555d: $00
	ld   bc, $df01                                   ; $555e: $01 $01 $df
	db   $ec                                         ; $5561: $ec
	and  e                                           ; $5562: $a3
	ld   h, e                                        ; $5563: $63
	and  c                                           ; $5564: $a1
	ld   e, c                                        ; $5565: $59
	sub  a                                           ; $5566: $97
	ld   [bc], a                                     ; $5567: $02
	sub  l                                           ; $5568: $95
	ld   [hl], h                                     ; $5569: $74
	dec  c                                           ; $556a: $0d
	ld   h, a                                        ; $556b: $67
	adc  l                                           ; $556c: $8d
	sbc  d                                           ; $556d: $9a
	ld   h, e                                        ; $556e: $63
	and  c                                           ; $556f: $a1
	ld   [hl], h                                     ; $5570: $74
	dec  c                                           ; $5571: $0d
	ld   [hl], a                                     ; $5572: $77
	and  c                                           ; $5573: $a1
	ld   a, b                                        ; $5574: $78
	inc  b                                           ; $5575: $04
	ld   a, b                                        ; $5576: $78
	ld   [hl], l                                     ; $5577: $75
	ld   h, a                                        ; $5578: $67
	ld   e, c                                        ; $5579: $59
	ld   sp, hl                                      ; $557a: $f9
	dec  c                                           ; $557b: $0d
	nop                                              ; $557c: $00
	ld   a, [bc]                                     ; $557d: $0a
	inc  e                                           ; $557e: $1c
	inc  bc                                          ; $557f: $03
	nop                                              ; $5580: $00
	nop                                              ; $5581: $00
	ld   bc, $546b                                   ; $5582: $01 $6b $54
	ld   a, e                                        ; $5585: $7b
	rst  $38                                         ; $5586: $ff
	rst  $38                                         ; $5587: $ff
	ld   [bc], a                                     ; $5588: $02
	jr   nz, jr_058_558d                             ; $5589: $20 $02

	sub  l                                           ; $558b: $95
	sbc  l                                           ; $558c: $9d

jr_058_558d:
	ld   e, d                                        ; $558d: $5a
	adc  h                                           ; $558e: $8c
	adc  h                                           ; $558f: $8c
	ld   [hl], l                                     ; $5590: $75
	dec  c                                           ; $5591: $0d
	ld   [bc], a                                     ; $5592: $02
	cp   [hl]                                        ; $5593: $be
	inc  b                                           ; $5594: $04
	ld   a, a                                        ; $5595: $7f
	inc  bc                                          ; $5596: $03
	sub  l                                           ; $5597: $95
	ld   a, b                                        ; $5598: $78
	halt                                             ; $5599: $76
	ld   h, c                                        ; $559a: $61
	sbc  e                                           ; $559b: $9b
	ld   e, d                                        ; $559c: $5a
	ld   d, b                                        ; $559d: $50
	sbc  c                                           ; $559e: $99
	ld   e, a                                        ; $559f: $5f
	ld   [hl], a                                     ; $55a0: $77
	rst  $38                                         ; $55a1: $ff
	rst  $38                                         ; $55a2: $ff
	dec  c                                           ; $55a3: $0d
	nop                                              ; $55a4: $00
	ld   a, [bc]                                     ; $55a5: $0a
	inc  e                                           ; $55a6: $1c
	inc  bc                                          ; $55a7: $03
	inc  bc                                          ; $55a8: $03
	inc  bc                                          ; $55a9: $03
	ld   bc, $8f04                                   ; $55aa: $01 $04 $8f
	inc  b                                           ; $55ad: $04
	jr   jr_058_562d                                 ; $55ae: $18 $7d

	sbc  [hl]                                        ; $55b0: $9e
	sub  d                                           ; $55b1: $92
	ld   h, e                                        ; $55b2: $63
	ld   h, l                                        ; $55b3: $65
	ld   e, l                                        ; $55b4: $5d
	ld   [hl], h                                     ; $55b5: $74
	dec  c                                           ; $55b6: $0d
	ld   h, e                                        ; $55b7: $63
	add  c                                           ; $55b8: $81
	ld   h, l                                        ; $55b9: $65
	ld   e, d                                        ; $55ba: $5a
	sbc  b                                           ; $55bb: $98
	sub  d                                           ; $55bc: $92
	ld   h, e                                        ; $55bd: $63
	and  c                                           ; $55be: $a1
	ld   a, b                                        ; $55bf: $78
	dec  c                                           ; $55c0: $0d
	inc  bc                                          ; $55c1: $03
	ld   l, [hl]                                     ; $55c2: $6e
	ld   a, h                                        ; $55c3: $7c
	inc  bc                                          ; $55c4: $03
	add  [hl]                                        ; $55c5: $86
	sub  [hl]                                        ; $55c6: $96

jr_058_55c7:
	sbc  a                                           ; $55c7: $9f
	dec  c                                           ; $55c8: $0d
	nop                                              ; $55c9: $00
	ld   a, [bc]                                     ; $55ca: $0a
	inc  e                                           ; $55cb: $1c
	inc  bc                                          ; $55cc: $03
	nop                                              ; $55cd: $00
	nop                                              ; $55ce: $00
	ld   bc, $9e63                                   ; $55cf: $01 $63 $9e
	ld   e, b                                        ; $55d2: $58
	ld   h, l                                        ; $55d3: $65
	sub  c                                           ; $55d4: $91
	add  a                                           ; $55d5: $87
	sbc  b                                           ; $55d6: $98
	ld   a, l                                        ; $55d7: $7d
	inc  bc                                          ; $55d8: $03
	ld   a, [hl]                                     ; $55d9: $7e
	sbc  l                                           ; $55da: $9d
	sbc  b                                           ; $55db: $98
	sbc  a                                           ; $55dc: $9f
	dec  c                                           ; $55dd: $0d
	inc  bc                                          ; $55de: $03
	ld   l, l                                        ; $55df: $6d
	dec  b                                           ; $55e0: $05
	add  hl, de                                      ; $55e1: $19
	ld   a, h                                        ; $55e2: $7c
	ld   h, l                                        ; $55e3: $65
	ld   l, l                                        ; $55e4: $6d
	ld   e, l                                        ; $55e5: $5d
	ld   a, b                                        ; $55e6: $78
	ld   h, e                                        ; $55e7: $63
	ld   d, d                                        ; $55e8: $52
	sbc  a                                           ; $55e9: $9f
	dec  c                                           ; $55ea: $0d
	nop                                              ; $55eb: $00
	ld   a, [bc]                                     ; $55ec: $0a
	dec  c                                           ; $55ed: $0d
	nop                                              ; $55ee: $00
	nop                                              ; $55ef: $00
	rrca                                             ; $55f0: $0f
	nop                                              ; $55f1: $00
	ld   bc, $1e09                                   ; $55f2: $01 $09 $1e
	nop                                              ; $55f5: $00
	nop                                              ; $55f6: $00
	rrca                                             ; $55f7: $0f
	nop                                              ; $55f8: $00
	ld   bc, $050d                                   ; $55f9: $01 $0d $05
	nop                                              ; $55fc: $00
	ld   [bc], a                                     ; $55fd: $02
	ld   bc, $7d58                                   ; $55fe: $01 $58 $7d
	sub  [hl]                                        ; $5601: $96
	ld   d, h                                        ; $5602: $54
	ld   h, d                                        ; $5603: $62
	ld   h, h                                        ; $5604: $64
	ld   d, d                                        ; $5605: $52
	adc  h                                           ; $5606: $8c
	ld   h, a                                        ; $5607: $67
	sbc  a                                           ; $5608: $9f
	dec  c                                           ; $5609: $0d
	nop                                              ; $560a: $00
	ld   a, [bc]                                     ; $560b: $0a
	inc  e                                           ; $560c: $1c
	dec  b                                           ; $560d: $05
	ld   bc, $0101                                   ; $560e: $01 $01 $01
	ld   e, b                                        ; $5611: $58
	ld   a, l                                        ; $5612: $7d
	sub  [hl]                                        ; $5613: $96
	ld   d, h                                        ; $5614: $54
	ld   h, e                                        ; $5615: $63
	and  c                                           ; $5616: $a1
	sbc  a                                           ; $5617: $9f
	dec  c                                           ; $5618: $0d
	nop                                              ; $5619: $00
	ld   a, [bc]                                     ; $561a: $0a
	rrca                                             ; $561b: $0f
	nop                                              ; $561c: $00
	ld   bc, $0101                                   ; $561d: $01 $01 $01
	inc  bc                                          ; $5620: $03
	inc  b                                           ; $5621: $04
	ld   c, c                                        ; $5622: $49
	ld   a, h                                        ; $5623: $7c
	dec  b                                           ; $5624: $05
	jr   nz, jr_058_55c7                             ; $5625: $20 $a0

	ld   h, l                                        ; $5627: $65
	sub  [hl]                                        ; $5628: $96
	ld   d, h                                        ; $5629: $54
	ld   e, c                                        ; $562a: $59
	ld   a, b                                        ; $562b: $78
	rst  $38                                         ; $562c: $ff

jr_058_562d:
	ld   bc, $0d04                                   ; $562d: $01 $04 $0d
	nop                                              ; $5630: $00
	ld   a, [bc]                                     ; $5631: $0a
	add  hl, de                                      ; $5632: $19
	dec  b                                           ; $5633: $05
	inc  bc                                          ; $5634: $03
	inc  bc                                          ; $5635: $03
	ld   l, d                                        ; $5636: $6a
	add  a                                           ; $5637: $87
	inc  b                                           ; $5638: $04
	sub  d                                           ; $5639: $92
	ld   a, h                                        ; $563a: $7c
	dec  b                                           ; $563b: $05
	jr   nz, jr_058_5642                             ; $563c: $20 $04

	dec  d                                           ; $563e: $15
	nop                                              ; $563f: $00
	nop                                              ; $5640: $00
	ld   [bc], a                                     ; $5641: $02

jr_058_5642:
	add  d                                           ; $5642: $82
	inc  bc                                          ; $5643: $03
	ld   d, [hl]                                     ; $5644: $56
	ld   a, h                                        ; $5645: $7c
	dec  b                                           ; $5646: $05
	jr   nz, @+$06                                   ; $5647: $20 $04

	dec  d                                           ; $5649: $15
	nop                                              ; $564a: $00
	ld   bc, $ecdf                                   ; $564b: $01 $df $ec
	and  e                                           ; $564e: $a3
	ld   a, c                                        ; $564f: $79
	ld   [hl], d                                     ; $5650: $72
	ld   d, d                                        ; $5651: $52
	ld   [hl], h                                     ; $5652: $74
	ld   [bc], a                                     ; $5653: $02
	jp   nz, $005d                                   ; $5654: $c2 $5d $00

	ld   [bc], a                                     ; $5657: $02
	rlca                                             ; $5658: $07
	sbc  a                                           ; $5659: $9f
	nop                                              ; $565a: $00
	ld   [bc], a                                     ; $565b: $02
	inc  bc                                          ; $565c: $03
	ld   bc, $2000                                   ; $565d: $01 $00 $20
	nop                                              ; $5660: $00
	rlca                                             ; $5661: $07
	ld   a, [de]                                     ; $5662: $1a
	ld   [bc], a                                     ; $5663: $02
	ld   [bc], a                                     ; $5664: $02
	inc  bc                                          ; $5665: $03
	ld   bc, $2001                                   ; $5666: $01 $01 $20
	nop                                              ; $5669: $00
	rlca                                             ; $566a: $07
	ld   h, l                                        ; $566b: $65
	inc  bc                                          ; $566c: $03
	ld   [bc], a                                     ; $566d: $02
	inc  bc                                          ; $566e: $03
	ld   bc, $2002                                   ; $566f: $01 $02 $20
	nop                                              ; $5672: $00
	ld   b, $7f                                      ; $5673: $06 $7f
	nop                                              ; $5675: $00
	rrca                                             ; $5676: $0f
	dec  b                                           ; $5677: $05
	ld   bc, $0201                                   ; $5678: $01 $01 $02
	and  l                                           ; $567b: $a5
	inc  b                                           ; $567c: $04
	xor  d                                           ; $567d: $aa
	sub  b                                           ; $567e: $90
	ld   [bc], a                                     ; $567f: $02
	jr   nz, jr_058_5686                             ; $5680: $20 $04

	xor  d                                           ; $5682: $aa
	sbc  [hl]                                        ; $5683: $9e
	ld   e, d                                        ; $5684: $5a
	and  c                                           ; $5685: $a1

jr_058_5686:
	ld   a, [hl]                                     ; $5686: $7e
	sbc  b                                           ; $5687: $98
	sub  d                                           ; $5688: $92
	sbc  a                                           ; $5689: $9f
	dec  c                                           ; $568a: $0d
	nop                                              ; $568b: $00
	ld   a, [bc]                                     ; $568c: $0a
	dec  c                                           ; $568d: $0d
	nop                                              ; $568e: $00
	nop                                              ; $568f: $00
	rrca                                             ; $5690: $0f
	nop                                              ; $5691: $00
	ld   bc, $1e09                                   ; $5692: $01 $09 $1e
	nop                                              ; $5695: $00
	rrca                                             ; $5696: $0f
	nop                                              ; $5697: $00
	ld   bc, $6b01                                   ; $5698: $01 $01 $6b
	ld   d, h                                        ; $569b: $54
	ld   d, d                                        ; $569c: $52
	ld   d, [hl]                                     ; $569d: $56
	ld   a, [hl]                                     ; $569e: $7e
	sbc  [hl]                                        ; $569f: $9e
	ld   [bc], a                                     ; $56a0: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56a1: $cf
	dec  b                                           ; $56a2: $05
	ld   a, [de]                                     ; $56a3: $1a
	ld   h, e                                        ; $56a4: $63
	and  c                                           ; $56a5: $a1
	ld   [hl], h                                     ; $56a6: $74
	dec  c                                           ; $56a7: $0d
	halt                                             ; $56a8: $76
	ld   h, c                                        ; $56a9: $61
	sbc  e                                           ; $56aa: $9b
	ld   [hl], h                                     ; $56ab: $74
	and  c                                           ; $56ac: $a1
	ld   a, c                                        ; $56ad: $79
	inc  b                                           ; $56ae: $04
	ld   c, c                                        ; $56af: $49
	and  b                                           ; $56b0: $a0
	ld   e, c                                        ; $56b1: $59
	ld   e, a                                        ; $56b2: $5f
	ld   [hl], h                                     ; $56b3: $74
	dec  c                                           ; $56b4: $0d
	inc  bc                                          ; $56b5: $03
	ld   l, d                                        ; $56b6: $6a
	add  a                                           ; $56b7: $87
	adc  h                                           ; $56b8: $8c
	ld   h, a                                        ; $56b9: $67
	ld   sp, hl                                      ; $56ba: $f9
	dec  c                                           ; $56bb: $0d
	nop                                              ; $56bc: $00
	ld   a, [bc]                                     ; $56bd: $0a
	inc  e                                           ; $56be: $1c
	dec  b                                           ; $56bf: $05
	nop                                              ; $56c0: $00
	nop                                              ; $56c1: $00
	ld   bc, $6176                                   ; $56c2: $01 $76 $61
	sbc  e                                           ; $56c5: $9b
	ld   [hl], h                                     ; $56c6: $74
	and  c                                           ; $56c7: $a1
	ld   sp, hl                                      ; $56c8: $f9
	dec  c                                           ; $56c9: $0d
	ld   [bc], a                                     ; $56ca: $02
	dec  [hl]                                        ; $56cb: $35
	adc  l                                           ; $56cc: $8d
	ld   [hl], d                                     ; $56cd: $72
	sub  d                                           ; $56ce: $92
	ld   e, a                                        ; $56cf: $5f
	ld   [hl], a                                     ; $56d0: $77
	sbc  a                                           ; $56d1: $9f
	dec  c                                           ; $56d2: $0d
	nop                                              ; $56d3: $00
	ld   a, [bc]                                     ; $56d4: $0a
	add  hl, de                                      ; $56d5: $19
	dec  b                                           ; $56d6: $05
	ld   [bc], a                                     ; $56d7: $02
	ld   l, e                                        ; $56d8: $6b
	ld   d, h                                        ; $56d9: $54
	ld   [hl], l                                     ; $56da: $75
	ld   h, a                                        ; $56db: $67
	sub  [hl]                                        ; $56dc: $96
	ld   a, e                                        ; $56dd: $7b
	nop                                              ; $56de: $00
	nop                                              ; $56df: $00
	inc  bc                                          ; $56e0: $03
	inc  l                                           ; $56e1: $2c
	ld   h, [hl]                                     ; $56e2: $66
	sub  l                                           ; $56e3: $95
	ld   d, h                                        ; $56e4: $54
	sub  h                                           ; $56e5: $94
	ld   h, [hl]                                     ; $56e6: $66
	sub  c                                           ; $56e7: $91
	ld   a, b                                        ; $56e8: $78
	ld   d, d                                        ; $56e9: $52
	and  c                                           ; $56ea: $a1
	ld   [hl], l                                     ; $56eb: $75
	ld   h, a                                        ; $56ec: $67
	ld   e, c                                        ; $56ed: $59
	ld   sp, hl                                      ; $56ee: $f9
	nop                                              ; $56ef: $00
	ld   bc, $0f07                                   ; $56f0: $01 $07 $0f
	ld   bc, $0302                                   ; $56f3: $01 $02 $03
	ld   bc, $2000                                   ; $56f6: $01 $00 $20
	nop                                              ; $56f9: $00
	rlca                                             ; $56fa: $07
	ld   sp, $0201                                   ; $56fb: $31 $01 $02
	inc  bc                                          ; $56fe: $03
	ld   bc, $2001                                   ; $56ff: $01 $01 $20
	nop                                              ; $5702: $00
	ld   b, $dc                                      ; $5703: $06 $dc
	ld   bc, $000f                                   ; $5705: $01 $0f $00
	ld   bc, $6b01                                   ; $5708: $01 $01 $6b
	ld   d, h                                        ; $570b: $54
	ld   [hl], l                                     ; $570c: $75
	ld   h, a                                        ; $570d: $67
	sub  [hl]                                        ; $570e: $96
	ld   a, e                                        ; $570f: $7b
	sbc  a                                           ; $5710: $9f
	dec  c                                           ; $5711: $0d
	nop                                              ; $5712: $00
	ld   a, [bc]                                     ; $5713: $0a
	inc  e                                           ; $5714: $1c
	dec  b                                           ; $5715: $05
	ld   [bc], a                                     ; $5716: $02
	ld   [bc], a                                     ; $5717: $02
	ld   bc, $926b                                   ; $5718: $01 $6b $92
	ld   e, a                                        ; $571b: $5f
	ld   [hl], a                                     ; $571c: $77
	sbc  [hl]                                        ; $571d: $9e
	inc  b                                           ; $571e: $04
	ld   c, c                                        ; $571f: $49
	sub  d                                           ; $5720: $92
	ld   sp, hl                                      ; $5721: $f9
	dec  c                                           ; $5722: $0d
	nop                                              ; $5723: $00
	ld   a, [bc]                                     ; $5724: $0a
	ld   b, $f0                                      ; $5725: $06 $f0
	ld   bc, $000f                                   ; $5727: $01 $0f $00
	ld   bc, $0301                                   ; $572a: $01 $01 $03
	inc  l                                           ; $572d: $2c
	ld   h, [hl]                                     ; $572e: $66
	sub  l                                           ; $572f: $95
	ld   d, h                                        ; $5730: $54
	sub  h                                           ; $5731: $94
	ld   h, [hl]                                     ; $5732: $66
	sub  c                                           ; $5733: $91
	ld   a, b                                        ; $5734: $78
	ld   d, d                                        ; $5735: $52
	and  c                                           ; $5736: $a1
	ld   [hl], l                                     ; $5737: $75
	ld   h, a                                        ; $5738: $67
	ld   e, c                                        ; $5739: $59
	ld   sp, hl                                      ; $573a: $f9
	dec  c                                           ; $573b: $0d
	nop                                              ; $573c: $00
	ld   a, [bc]                                     ; $573d: $0a
	inc  e                                           ; $573e: $1c
	dec  b                                           ; $573f: $05
	inc  bc                                          ; $5740: $03
	inc  bc                                          ; $5741: $03
	ld   bc, $2c03                                   ; $5742: $01 $03 $2c
	ld   h, [hl]                                     ; $5745: $66
	sub  l                                           ; $5746: $95
	ld   d, h                                        ; $5747: $54
	sub  h                                           ; $5748: $94
	ld   sp, hl                                      ; $5749: $f9
	dec  c                                           ; $574a: $0d
	halt                                             ; $574b: $76
	ld   h, c                                        ; $574c: $61
	sbc  e                                           ; $574d: $9b
	ld   [hl], h                                     ; $574e: $74
	and  c                                           ; $574f: $a1
	ld   a, l                                        ; $5750: $7d
	dec  b                                           ; $5751: $05
	and  c                                           ; $5752: $a1
	inc  b                                           ; $5753: $04
	jp   nc, Jump_058_4b03                           ; $5754: $d2 $03 $4b

	ld   a, c                                        ; $5757: $79
	dec  c                                           ; $5758: $0d
	ld   d, b                                        ; $5759: $50
	sbc  c                                           ; $575a: $99
	ld   a, e                                        ; $575b: $7b
	and  c                                           ; $575c: $a1
	ld   [hl], l                                     ; $575d: $75
	sbc  a                                           ; $575e: $9f
	dec  c                                           ; $575f: $0d
	nop                                              ; $5760: $00
	ld   a, [bc]                                     ; $5761: $0a
	inc  e                                           ; $5762: $1c
	dec  b                                           ; $5763: $05
	rlca                                             ; $5764: $07
	rlca                                             ; $5765: $07
	ld   bc, $a178                                   ; $5766: $01 $78 $a1
	ld   [hl], l                                     ; $5769: $75
	sbc  [hl]                                        ; $576a: $9e
	ld   h, a                                        ; $576b: $67
	ld   [hl], c                                     ; $576c: $71
	ld   a, a                                        ; $576d: $7f
	ld   e, l                                        ; $576e: $5d
	ld   h, l                                        ; $576f: $65
	ld   [hl], h                                     ; $5770: $74
	dec  c                                           ; $5771: $0d
	inc  bc                                          ; $5772: $03
	ld   l, d                                        ; $5773: $6a
	add  a                                           ; $5774: $87
	ld   a, b                                        ; $5775: $78
	ld   d, b                                        ; $5776: $50
	ld   e, c                                        ; $5777: $59
	and  c                                           ; $5778: $a1
	ld   a, e                                        ; $5779: $7b
	and  c                                           ; $577a: $a1
	sbc  a                                           ; $577b: $9f
	dec  c                                           ; $577c: $0d
	nop                                              ; $577d: $00
	ld   a, [bc]                                     ; $577e: $0a
	rrca                                             ; $577f: $0f
	nop                                              ; $5780: $00
	ld   bc, $5801                                   ; $5781: $01 $01 $58
	ld   d, d                                        ; $5784: $52
	ld   h, l                                        ; $5785: $65
	ld   d, d                                        ; $5786: $52
	ld   [hl], l                                     ; $5787: $75
	ld   h, a                                        ; $5788: $67
	sub  [hl]                                        ; $5789: $96
	sbc  [hl]                                        ; $578a: $9e
	inc  bc                                          ; $578b: $03
	inc  l                                           ; $578c: $2c
	ld   h, [hl]                                     ; $578d: $66
	sub  l                                           ; $578e: $95
	ld   d, h                                        ; $578f: $54
	sub  h                                           ; $5790: $94
	sbc  a                                           ; $5791: $9f
	dec  c                                           ; $5792: $0d
	nop                                              ; $5793: $00
	ld   a, [bc]                                     ; $5794: $0a
	rrca                                             ; $5795: $0f
	dec  b                                           ; $5796: $05
	rlca                                             ; $5797: $07
	dec  e                                           ; $5798: $1d
	ld   b, b                                        ; $5799: $40
	dec  d                                           ; $579a: $15
	inc  bc                                          ; $579b: $03
	dec  d                                           ; $579c: $15
	ld   bc, $2901                                   ; $579d: $01 $01 $29
	nop                                              ; $57a0: $00
	ld   bc, $5950                                   ; $57a1: $01 $50 $59
	and  c                                           ; $57a4: $a1
	sbc  [hl]                                        ; $57a5: $9e
	ld   d, b                                        ; $57a6: $50
	ld   e, c                                        ; $57a7: $59
	and  c                                           ; $57a8: $a1
	sbc  a                                           ; $57a9: $9f
	dec  c                                           ; $57aa: $0d
	halt                                             ; $57ab: $76
	ld   h, c                                        ; $57ac: $61
	sbc  e                                           ; $57ad: $9b
	ld   [hl], h                                     ; $57ae: $74
	and  c                                           ; $57af: $a1
	ld   a, l                                        ; $57b0: $7d
	sbc  [hl]                                        ; $57b1: $9e
	ld   [bc], a                                     ; $57b2: $02
	dec  [hl]                                        ; $57b3: $35
	adc  l                                           ; $57b4: $8d
	ld   [hl], d                                     ; $57b5: $72
	sub  d                                           ; $57b6: $92
	sbc  a                                           ; $57b7: $9f
	dec  c                                           ; $57b8: $0d
	nop                                              ; $57b9: $00
	ld   a, [bc]                                     ; $57ba: $0a
	rrca                                             ; $57bb: $0f
	nop                                              ; $57bc: $00
	ld   bc, $6701                                   ; $57bd: $01 $01 $67
	adc  l                                           ; $57c0: $8d
	adc  h                                           ; $57c1: $8c
	ld   l, c                                        ; $57c2: $69
	and  c                                           ; $57c3: $a1
	sbc  a                                           ; $57c4: $9f
	dec  c                                           ; $57c5: $0d
	ld   e, b                                        ; $57c6: $58
	ld   h, [hl]                                     ; $57c7: $66
	sub  c                                           ; $57c8: $91
	adc  h                                           ; $57c9: $8c
	ld   h, l                                        ; $57ca: $65
	adc  h                                           ; $57cb: $8c
	ld   h, l                                        ; $57cc: $65
	ld   l, l                                        ; $57cd: $6d
	sbc  a                                           ; $57ce: $9f
	dec  c                                           ; $57cf: $0d
	nop                                              ; $57d0: $00
	ld   a, [bc]                                     ; $57d1: $0a
	nop                                              ; $57d2: $00
	inc  e                                           ; $57d3: $1c
	dec  b                                           ; $57d4: $05
	ld   [bc], a                                     ; $57d5: $02
	ld   [bc], a                                     ; $57d6: $02
	ld   bc, $3502                                   ; $57d7: $01 $02 $35
	adc  l                                           ; $57da: $8d
	ld   [hl], d                                     ; $57db: $72
	sub  d                                           ; $57dc: $92
	halt                                             ; $57dd: $76
	ld   d, b                                        ; $57de: $50
	ld   e, c                                        ; $57df: $59
	and  c                                           ; $57e0: $a1
	ld   a, h                                        ; $57e1: $7c
	ld   e, c                                        ; $57e2: $59
	ld   sp, hl                                      ; $57e3: $f9
	dec  c                                           ; $57e4: $0d
	nop                                              ; $57e5: $00
	ld   a, [bc]                                     ; $57e6: $0a
	rrca                                             ; $57e7: $0f
	nop                                              ; $57e8: $00
	ld   bc, $5201                                   ; $57e9: $01 $01 $52
	ld   d, [hl]                                     ; $57ec: $56
	sbc  [hl]                                        ; $57ed: $9e
	inc  b                                           ; $57ee: $04
	ld   c, c                                        ; $57ef: $49
	ld   [hl], l                                     ; $57f0: $75
	sub  b                                           ; $57f1: $90
	ld   d, b                                        ; $57f2: $50
	sbc  b                                           ; $57f3: $98
	adc  h                                           ; $57f4: $8c
	ld   l, c                                        ; $57f5: $69
	and  c                                           ; $57f6: $a1
	rst  $38                                         ; $57f7: $ff
	rst  $38                                         ; $57f8: $ff
	dec  c                                           ; $57f9: $0d
	ld   e, b                                        ; $57fa: $58
	ld   h, [hl]                                     ; $57fb: $66
	sub  c                                           ; $57fc: $91
	adc  h                                           ; $57fd: $8c
	ld   h, l                                        ; $57fe: $65
	adc  h                                           ; $57ff: $8c
	ld   h, l                                        ; $5800: $65
	ld   l, l                                        ; $5801: $6d
	sbc  a                                           ; $5802: $9f
	dec  c                                           ; $5803: $0d
	nop                                              ; $5804: $00
	ld   a, [bc]                                     ; $5805: $0a
	rrca                                             ; $5806: $0f
	dec  b                                           ; $5807: $05
	ld   [bc], a                                     ; $5808: $02
	ld   bc, $f9f9                                   ; $5809: $01 $f9 $f9
	ld   sp, hl                                      ; $580c: $f9
	dec  c                                           ; $580d: $0d
	nop                                              ; $580e: $00
	ld   a, [bc]                                     ; $580f: $0a
	nop                                              ; $5810: $00
	rrca                                             ; $5811: $0f
	nop                                              ; $5812: $00
	ld   bc, $0201                                   ; $5813: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5816: $cf
	dec  b                                           ; $5817: $05
	ld   a, [de]                                     ; $5818: $1a
	ld   h, e                                        ; $5819: $63
	and  c                                           ; $581a: $a1
	ld   a, h                                        ; $581b: $7c
	ld   [bc], a                                     ; $581c: $02
	sbc  d                                           ; $581d: $9a
	ld   e, e                                        ; $581e: $5b
	ld   a, b                                        ; $581f: $78
	ld   [bc], a                                     ; $5820: $02
	add  d                                           ; $5821: $82
	inc  bc                                          ; $5822: $03
	ld   d, [hl]                                     ; $5823: $56
	ld   a, l                                        ; $5824: $7d
	dec  c                                           ; $5825: $0d
	ld   d, d                                        ; $5826: $52
	ld   [hl], d                                     ; $5827: $72
	ld   [hl], l                                     ; $5828: $75
	ld   h, a                                        ; $5829: $67
	ld   e, c                                        ; $582a: $59
	ld   sp, hl                                      ; $582b: $f9
	dec  c                                           ; $582c: $0d
	nop                                              ; $582d: $00
	ld   a, [bc]                                     ; $582e: $0a
	inc  e                                           ; $582f: $1c
	dec  b                                           ; $5830: $05
	nop                                              ; $5831: $00
	nop                                              ; $5832: $00
	ld   bc, $1602                                   ; $5833: $01 $02 $16
	sub  d                                           ; $5836: $92
	sbc  a                                           ; $5837: $9f
	dec  c                                           ; $5838: $0d
	inc  b                                           ; $5839: $04
	ld   e, [hl]                                     ; $583a: $5e
	inc  b                                           ; $583b: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $583c: $cf
	ld   a, h                                        ; $583d: $7c
	ld   [bc], a                                     ; $583e: $02
	ld   d, $9f                                      ; $583f: $16 $9f
	dec  c                                           ; $5841: $0d
	nop                                              ; $5842: $00
	ld   a, [bc]                                     ; $5843: $0a
	add  hl, de                                      ; $5844: $19
	dec  b                                           ; $5845: $05
	ld   [bc], a                                     ; $5846: $02
	inc  bc                                          ; $5847: $03
	di                                               ; $5848: $f3
	ld   [hl], c                                     ; $5849: $71
	ld   [bc], a                                     ; $584a: $02
	ld   b, b                                        ; $584b: $40
	adc  [hl]                                        ; $584c: $8e
	nop                                              ; $584d: $00
	nop                                              ; $584e: $00
	inc  b                                           ; $584f: $04
	dec  e                                           ; $5850: $1d
	ld   [bc], a                                     ; $5851: $02
	ld   b, $67                                      ; $5852: $06 $67
	sbc  c                                           ; $5854: $99
	nop                                              ; $5855: $00
	ld   bc, $7507                                   ; $5856: $01 $07 $75
	ld   [bc], a                                     ; $5859: $02
	ld   [bc], a                                     ; $585a: $02
	inc  bc                                          ; $585b: $03
	ld   bc, $2000                                   ; $585c: $01 $00 $20
	nop                                              ; $585f: $00
	rlca                                             ; $5860: $07
	cp   l                                           ; $5861: $bd
	ld   [bc], a                                     ; $5862: $02
	ld   [bc], a                                     ; $5863: $02
	inc  bc                                          ; $5864: $03
	ld   bc, $2001                                   ; $5865: $01 $01 $20
	nop                                              ; $5868: $00
	ld   b, $13                                      ; $5869: $06 $13
	inc  bc                                          ; $586b: $03
	rrca                                             ; $586c: $0f
	nop                                              ; $586d: $00
	ld   bc, $6b01                                   ; $586e: $01 $01 $6b
	sbc  d                                           ; $5871: $9a
	and  b                                           ; $5872: $a0
	ld   [bc], a                                     ; $5873: $02
	sbc  l                                           ; $5874: $9d
	ld   d, h                                        ; $5875: $54
	ld   a, b                                        ; $5876: $78
	sub  a                                           ; $5877: $97
	dec  c                                           ; $5878: $0d
	ld   bc, $0307                                   ; $5879: $01 $07 $03
	ld   l, d                                        ; $587c: $6a
	inc  b                                           ; $587d: $04
	db   $e3                                         ; $587e: $e3
	ld   a, h                                        ; $587f: $7c
	ld   [bc], a                                     ; $5880: $02
	ld   d, $01                                      ; $5881: $16 $01
	ld   [$6575], sp                                 ; $5883: $08 $75 $65
	sub  l                                           ; $5886: $95
	sbc  a                                           ; $5887: $9f
	dec  c                                           ; $5888: $0d
	nop                                              ; $5889: $00
	ld   a, [bc]                                     ; $588a: $0a
	inc  e                                           ; $588b: $1c
	dec  b                                           ; $588c: $05
	inc  bc                                          ; $588d: $03
	inc  bc                                          ; $588e: $03
	ld   bc, $dca3                                   ; $588f: $01 $a3 $dc
	ld   e, c                                        ; $5892: $59
	ld   d, d                                        ; $5893: $52
	ld   a, b                                        ; $5894: $78
	sbc  a                                           ; $5895: $9f
	dec  c                                           ; $5896: $0d
	ld   l, e                                        ; $5897: $6b
	sbc  d                                           ; $5898: $9a
	sub  d                                           ; $5899: $92
	ld   [hl], c                                     ; $589a: $71
	ld   l, l                                        ; $589b: $6d
	sub  a                                           ; $589c: $97
	sbc  [hl]                                        ; $589d: $9e
	xor  h                                           ; $589e: $ac
	push af                                          ; $589f: $f5
	bit  7, l                                        ; $58a0: $cb $7d
	and  c                                           ; $58a2: $a1
	ld   a, c                                        ; $58a3: $79
	dec  c                                           ; $58a4: $0d
	ld   a, b                                        ; $58a5: $78
	ld   [hl], c                                     ; $58a6: $71
	ld   [hl], h                                     ; $58a7: $74
	adc  h                                           ; $58a8: $8c
	ld   d, h                                        ; $58a9: $54
	sub  d                                           ; $58aa: $92
	and  c                                           ; $58ab: $a1
	ld   e, c                                        ; $58ac: $59
	sbc  a                                           ; $58ad: $9f
	dec  c                                           ; $58ae: $0d
	nop                                              ; $58af: $00
	ld   a, [bc]                                     ; $58b0: $0a
	ld   b, $37                                      ; $58b1: $06 $37
	inc  bc                                          ; $58b3: $03
	rrca                                             ; $58b4: $0f
	nop                                              ; $58b5: $00
	ld   bc, $6b01                                   ; $58b6: $01 $01 $6b
	ld   d, h                                        ; $58b9: $54
	ld   l, e                                        ; $58ba: $6b
	ld   d, h                                        ; $58bb: $54
	sbc  [hl]                                        ; $58bc: $9e
	ld   bc, $0207                                   ; $58bd: $01 $07 $02
	ld   c, l                                        ; $58c0: $4d
	inc  bc                                          ; $58c1: $03
	db   $10                                         ; $58c2: $10
	ld   a, h                                        ; $58c3: $7c
	ld   [bc], a                                     ; $58c4: $02
	ld   d, $01                                      ; $58c5: $16 $01
	ld   [$9076], sp                                 ; $58c7: $08 $76 $90
	dec  c                                           ; $58ca: $0d
	ld   [bc], a                                     ; $58cb: $02
	sbc  l                                           ; $58cc: $9d
	ld   d, d                                        ; $58cd: $52
	adc  h                                           ; $58ce: $8c
	ld   h, a                                        ; $58cf: $67
	ld   h, l                                        ; $58d0: $65
	ld   a, e                                        ; $58d1: $7b
	sbc  a                                           ; $58d2: $9f
	dec  c                                           ; $58d3: $0d
	nop                                              ; $58d4: $00
	ld   a, [bc]                                     ; $58d5: $0a
	inc  e                                           ; $58d6: $1c
	dec  b                                           ; $58d7: $05
	ld   bc, $1d01                                   ; $58d8: $01 $01 $1d
	ld   b, b                                        ; $58db: $40
	dec  d                                           ; $58dc: $15
	inc  bc                                          ; $58dd: $03
	dec  d                                           ; $58de: $15
	ld   bc, $2802                                   ; $58df: $01 $02 $28
	nop                                              ; $58e2: $00
	ld   bc, $a9a9                                   ; $58e3: $01 $a9 $a9
	ld   h, c                                        ; $58e6: $61
	halt                                             ; $58e7: $76
	ld   [bc], a                                     ; $58e8: $02
	sbc  l                                           ; $58e9: $9d
	ld   d, h                                        ; $58ea: $54
	sub  d                                           ; $58eb: $92
	and  c                                           ; $58ec: $a1
	sbc  a                                           ; $58ed: $9f
	dec  c                                           ; $58ee: $0d
	ld   l, e                                        ; $58ef: $6b
	ld   d, h                                        ; $58f0: $54
	sub  d                                           ; $58f1: $92
	sbc  [hl]                                        ; $58f2: $9e
	and  a                                           ; $58f3: $a7
	jp   nz, $047c                                   ; $58f4: $c2 $7c $04

	ld   e, [hl]                                     ; $58f7: $5e
	inc  b                                           ; $58f8: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58f9: $cf
	ld   a, l                                        ; $58fa: $7d
	dec  c                                           ; $58fb: $0d
	ld   [bc], a                                     ; $58fc: $02
	ld   c, l                                        ; $58fd: $4d
	inc  bc                                          ; $58fe: $03
	db   $10                                         ; $58ff: $10
	ld   a, b                                        ; $5900: $78
	and  c                                           ; $5901: $a1
	sub  d                                           ; $5902: $92
	ld   a, [$000d]                                  ; $5903: $fa $0d $00
	ld   a, [bc]                                     ; $5906: $0a
	ld   b, $37                                      ; $5907: $06 $37
	inc  bc                                          ; $5909: $03
	inc  e                                           ; $590a: $1c
	dec  b                                           ; $590b: $05
	nop                                              ; $590c: $00
	nop                                              ; $590d: $00
	ld   bc, $936f                                   ; $590e: $01 $6f $93
	ei                                               ; $5911: $fb
	ld   h, c                                        ; $5912: $61
	halt                                             ; $5913: $76
	ld   [hl], l                                     ; $5914: $75
	sbc  a                                           ; $5915: $9f
	dec  c                                           ; $5916: $0d
	adc  c                                           ; $5917: $89
	ld   a, b                                        ; $5918: $78
	sbc  [hl]                                        ; $5919: $9e
	and  a                                           ; $591a: $a7
	jp   nz, $029e                                   ; $591b: $c2 $9e $02

	ld   a, a                                        ; $591e: $7f
	ld   e, l                                        ; $591f: $5d
	sbc  l                                           ; $5920: $9d
	sbc  a                                           ; $5921: $9f
	dec  c                                           ; $5922: $0d
	nop                                              ; $5923: $00
	ld   a, [bc]                                     ; $5924: $0a
	dec  c                                           ; $5925: $0d
	nop                                              ; $5926: $00
	nop                                              ; $5927: $00
	rrca                                             ; $5928: $0f
	nop                                              ; $5929: $00
	ld   bc, $1e09                                   ; $592a: $01 $09 $1e
	nop                                              ; $592d: $00
	inc  e                                           ; $592e: $1c
	dec  b                                           ; $592f: $05
	nop                                              ; $5930: $00
	nop                                              ; $5931: $00
	ld   bc, $7463                                   ; $5932: $01 $63 $74
	sbc  [hl]                                        ; $5935: $9e
	sub  b                                           ; $5936: $90
	ld   d, h                                        ; $5937: $54
	ld   [bc], a                                     ; $5938: $02
	ld   a, a                                        ; $5939: $7f
	ld   e, c                                        ; $593a: $59
	ld   a, b                                        ; $593b: $78
	rst  $38                                         ; $593c: $ff
	dec  c                                           ; $593d: $0d
	adc  c                                           ; $593e: $89
	ld   a, b                                        ; $593f: $78
	sbc  [hl]                                        ; $5940: $9e
	ld   [bc], a                                     ; $5941: $02
	and  l                                           ; $5942: $a5
	inc  b                                           ; $5943: $04
	xor  d                                           ; $5944: $aa
	sub  b                                           ; $5945: $90
	ld   [bc], a                                     ; $5946: $02
	jr   nz, jr_058_594d                             ; $5947: $20 $04

	xor  d                                           ; $5949: $aa
	ld   e, d                                        ; $594a: $5a
	and  c                                           ; $594b: $a1
	ld   a, [hl]                                     ; $594c: $7e

jr_058_594d:
	sbc  b                                           ; $594d: $98
	sub  d                                           ; $594e: $92
	sbc  a                                           ; $594f: $9f
	dec  c                                           ; $5950: $0d
	nop                                              ; $5951: $00
	ld   a, [bc]                                     ; $5952: $0a
	dec  c                                           ; $5953: $0d
	nop                                              ; $5954: $00
	nop                                              ; $5955: $00
	rrca                                             ; $5956: $0f
	nop                                              ; $5957: $00
	ld   bc, $1e09                                   ; $5958: $01 $09 $1e
	nop                                              ; $595b: $00
	rrca                                             ; $595c: $0f
	nop                                              ; $595d: $00
	ld   bc, $df01                                   ; $595e: $01 $01 $df
	db   $ec                                         ; $5961: $ec
	and  e                                           ; $5962: $a3
	ld   h, e                                        ; $5963: $63
	and  c                                           ; $5964: $a1
	ld   [hl], h                                     ; $5965: $74
	sbc  [hl]                                        ; $5966: $9e
	ld   [bc], a                                     ; $5967: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5968: $cf
	dec  b                                           ; $5969: $05
	ld   a, [de]                                     ; $596a: $1a
	ld   h, e                                        ; $596b: $63
	and  c                                           ; $596c: $a1
	ld   e, c                                        ; $596d: $59
	sub  a                                           ; $596e: $97
	dec  c                                           ; $596f: $0d
	ld   [bc], a                                     ; $5970: $02
	sub  l                                           ; $5971: $95
	ld   [hl], h                                     ; $5972: $74
	sbc  [hl]                                        ; $5973: $9e
	ld   [hl], a                                     ; $5974: $77
	and  c                                           ; $5975: $a1
	ld   a, b                                        ; $5976: $78
	inc  b                                           ; $5977: $04
	ld   a, b                                        ; $5978: $78
	ld   [hl], l                                     ; $5979: $75
	ld   h, a                                        ; $597a: $67
	ld   e, c                                        ; $597b: $59
	ld   sp, hl                                      ; $597c: $f9
	dec  c                                           ; $597d: $0d
	nop                                              ; $597e: $00
	ld   a, [bc]                                     ; $597f: $0a
	inc  e                                           ; $5980: $1c
	dec  b                                           ; $5981: $05
	nop                                              ; $5982: $00
	nop                                              ; $5983: $00
	ld   bc, $ecdf                                   ; $5984: $01 $df $ec
	and  e                                           ; $5987: $a3
	ld   a, l                                        ; $5988: $7d
	and  c                                           ; $5989: $a1
	ld   sp, hl                                      ; $598a: $f9
	dec  c                                           ; $598b: $0d
	ld   l, e                                        ; $598c: $6b
	sub  d                                           ; $598d: $92
	ld   a, b                                        ; $598e: $78
	sbc  [hl]                                        ; $598f: $9e
	xor  c                                           ; $5990: $a9
	db   $eb                                         ; $5991: $eb
	and  l                                           ; $5992: $a5
	ld   h, l                                        ; $5993: $65
	ld   [hl], c                                     ; $5994: $71
	ld   e, c                                        ; $5995: $59
	sbc  b                                           ; $5996: $98
	ld   h, l                                        ; $5997: $65
	ld   l, l                                        ; $5998: $6d
	dec  c                                           ; $5999: $0d
	ld   e, b                                        ; $599a: $58
	inc  bc                                          ; $599b: $03
	add  d                                           ; $599c: $82
	sub  d                                           ; $599d: $92
	ld   a, b                                        ; $599e: $78
	sbc  a                                           ; $599f: $9f

Jump_058_59a0:
	dec  c                                           ; $59a0: $0d
	nop                                              ; $59a1: $00
	ld   a, [bc]                                     ; $59a2: $0a
	ld   bc, $a177                                   ; $59a3: $01 $77 $a1
	ld   a, b                                        ; $59a6: $78
	ld   h, c                                        ; $59a7: $61
	halt                                             ; $59a8: $76
	ld   [hl], l                                     ; $59a9: $75
	sub  b                                           ; $59aa: $90
	inc  bc                                          ; $59ab: $03
	ld   hl, $0d79                                   ; $59ac: $21 $79 $0d
	inc  b                                           ; $59af: $04
	db   $fc                                         ; $59b0: $fc
	inc  bc                                          ; $59b1: $03
	ld   [bc], a                                     ; $59b2: $02
	ld   [hl], l                                     ; $59b3: $75
	dec  b                                           ; $59b4: $05
	and  b                                           ; $59b5: $a0
	adc  b                                           ; $59b6: $88
	ld   e, e                                        ; $59b7: $5b
	sub  d                                           ; $59b8: $92
	ld   h, l                                        ; $59b9: $65
	sbc  [hl]                                        ; $59ba: $9e
	dec  c                                           ; $59bb: $0d
	adc  h                                           ; $59bc: $8c
	sbc  c                                           ; $59bd: $99
	ld   [hl], l                                     ; $59be: $75
	ld   [bc], a                                     ; $59bf: $02
	ld   e, b                                        ; $59c0: $58
	ld   [bc], a                                     ; $59c1: $02
	ld   d, [hl]                                     ; $59c2: $56
	adc  l                                           ; $59c3: $8d
	ld   l, l                                        ; $59c4: $6d
	ld   d, d                                        ; $59c5: $52
	ld   a, c                                        ; $59c6: $79
	inc  bc                                          ; $59c7: $03
	ld   c, d                                        ; $59c8: $4a
	ld   [bc], a                                     ; $59c9: $02
	sbc  a                                           ; $59ca: $9f
	sub  d                                           ; $59cb: $92
	sbc  a                                           ; $59cc: $9f
	dec  c                                           ; $59cd: $0d
	nop                                              ; $59ce: $00
	ld   a, [bc]                                     ; $59cf: $0a
	ld   bc, $a150                                   ; $59d0: $01 $50 $a1
	ld   l, [hl]                                     ; $59d3: $6e
	ld   e, a                                        ; $59d4: $5f
	inc  bc                                          ; $59d5: $03
	ret  c                                           ; $59d6: $d8

	sub  [hl]                                        ; $59d7: $96
	ld   e, c                                        ; $59d8: $59
	ld   [hl], c                                     ; $59d9: $71
	ld   l, l                                        ; $59da: $6d
	sub  a                                           ; $59db: $97
	sbc  [hl]                                        ; $59dc: $9e
	dec  c                                           ; $59dd: $0d
	ld   e, e                                        ; $59de: $5b
	ld   [hl], c                                     ; $59df: $71
	halt                                             ; $59e0: $76
	ld   d, d                                        ; $59e1: $52
	ld   d, d                                        ; $59e2: $52
	inc  b                                           ; $59e3: $04
	ld   e, [hl]                                     ; $59e4: $5e
	inc  b                                           ; $59e5: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59e6: $cf
	ld   [bc], a                                     ; $59e7: $02
	and  [hl]                                        ; $59e8: $a6
	ld   a, c                                        ; $59e9: $79
	dec  c                                           ; $59ea: $0d
	ld   a, b                                        ; $59eb: $78
	sbc  d                                           ; $59ec: $9a
	ld   l, l                                        ; $59ed: $6d
	and  c                                           ; $59ee: $a1
	ld   l, a                                        ; $59ef: $6f
	sub  c                                           ; $59f0: $91
	ld   d, h                                        ; $59f1: $54
	ld   e, c                                        ; $59f2: $59
	ld   a, b                                        ; $59f3: $78
	rst  $38                                         ; $59f4: $ff
	rst  $38                                         ; $59f5: $ff
	dec  c                                           ; $59f6: $0d
	nop                                              ; $59f7: $00
	ld   a, [bc]                                     ; $59f8: $0a
	ld   bc, $7463                                   ; $59f9: $01 $63 $74
	sbc  [hl]                                        ; $59fc: $9e
	sub  b                                           ; $59fd: $90
	ld   d, h                                        ; $59fe: $54
	ld   [bc], a                                     ; $59ff: $02
	ld   a, a                                        ; $5a00: $7f
	ld   e, c                                        ; $5a01: $59

jr_058_5a02:
	ld   a, b                                        ; $5a02: $78
	rst  $38                                         ; $5a03: $ff
	dec  c                                           ; $5a04: $0d
	adc  c                                           ; $5a05: $89
	ld   a, b                                        ; $5a06: $78
	sbc  [hl]                                        ; $5a07: $9e
	ld   [bc], a                                     ; $5a08: $02
	and  l                                           ; $5a09: $a5
	inc  b                                           ; $5a0a: $04
	xor  d                                           ; $5a0b: $aa
	sub  b                                           ; $5a0c: $90
	ld   [bc], a                                     ; $5a0d: $02
	jr   nz, jr_058_5a14                             ; $5a0e: $20 $04

	xor  d                                           ; $5a10: $aa
	ld   e, d                                        ; $5a11: $5a
	and  c                                           ; $5a12: $a1
	ld   a, [hl]                                     ; $5a13: $7e

jr_058_5a14:
	sbc  b                                           ; $5a14: $98
	sub  d                                           ; $5a15: $92
	sbc  a                                           ; $5a16: $9f
	dec  c                                           ; $5a17: $0d
	nop                                              ; $5a18: $00
	ld   a, [bc]                                     ; $5a19: $0a
	dec  c                                           ; $5a1a: $0d
	nop                                              ; $5a1b: $00
	nop                                              ; $5a1c: $00
	rrca                                             ; $5a1d: $0f
	nop                                              ; $5a1e: $00
	ld   bc, $1e09                                   ; $5a1f: $01 $09 $1e
	nop                                              ; $5a22: $00
	nop                                              ; $5a23: $00
	rrca                                             ; $5a24: $0f
	nop                                              ; $5a25: $00
	ld   bc, $020d                                   ; $5a26: $01 $0d $02
	nop                                              ; $5a29: $00
	ld   [bc], a                                     ; $5a2a: $02
	ld   bc, $8d67                                   ; $5a2b: $01 $67 $8d
	sbc  d                                           ; $5a2e: $9a
	ld   h, e                                        ; $5a2f: $63
	and  c                                           ; $5a30: $a1
	sbc  a                                           ; $5a31: $9f
	dec  c                                           ; $5a32: $0d
	ld   e, b                                        ; $5a33: $58
	ld   a, l                                        ; $5a34: $7d
	sub  [hl]                                        ; $5a35: $96
	ld   d, h                                        ; $5a36: $54
	ld   h, d                                        ; $5a37: $62
	ld   h, h                                        ; $5a38: $64
	ld   d, d                                        ; $5a39: $52
	adc  h                                           ; $5a3a: $8c
	ld   h, a                                        ; $5a3b: $67
	sbc  a                                           ; $5a3c: $9f
	dec  c                                           ; $5a3d: $0d
	nop                                              ; $5a3e: $00
	ld   a, [bc]                                     ; $5a3f: $0a
	inc  e                                           ; $5a40: $1c
	ld   [bc], a                                     ; $5a41: $02
	ld   bc, $0101                                   ; $5a42: $01 $01 $01
	ld   d, b                                        ; $5a45: $50
	sub  a                                           ; $5a46: $97
	sbc  [hl]                                        ; $5a47: $9e
	ld   [$6300], sp                                 ; $5a48: $08 $00 $63
	and  c                                           ; $5a4b: $a1
	sbc  a                                           ; $5a4c: $9f
	dec  c                                           ; $5a4d: $0d
	ld   e, b                                        ; $5a4e: $58
	ld   a, l                                        ; $5a4f: $7d
	sub  [hl]                                        ; $5a50: $96
	ld   d, h                                        ; $5a51: $54
	sbc  a                                           ; $5a52: $9f
	dec  c                                           ; $5a53: $0d
	nop                                              ; $5a54: $00
	ld   a, [bc]                                     ; $5a55: $0a
	rrca                                             ; $5a56: $0f
	nop                                              ; $5a57: $00
	ld   bc, $0101                                   ; $5a58: $01 $01 $01
	inc  bc                                          ; $5a5b: $03
	inc  b                                           ; $5a5c: $04
	ld   c, c                                        ; $5a5d: $49
	ld   a, h                                        ; $5a5e: $7c
	dec  b                                           ; $5a5f: $05
	jr   nz, jr_058_5a02                             ; $5a60: $20 $a0

	ld   h, l                                        ; $5a62: $65
	sub  [hl]                                        ; $5a63: $96
	ld   d, h                                        ; $5a64: $54
	ld   e, c                                        ; $5a65: $59
	ld   a, b                                        ; $5a66: $78
	rst  $38                                         ; $5a67: $ff
	ld   bc, $0d04                                   ; $5a68: $01 $04 $0d
	nop                                              ; $5a6b: $00
	ld   a, [bc]                                     ; $5a6c: $0a
	add  hl, de                                      ; $5a6d: $19
	dec  b                                           ; $5a6e: $05
	inc  bc                                          ; $5a6f: $03
	inc  bc                                          ; $5a70: $03
	ld   l, d                                        ; $5a71: $6a
	add  a                                           ; $5a72: $87
	inc  b                                           ; $5a73: $04
	sub  d                                           ; $5a74: $92
	ld   a, h                                        ; $5a75: $7c
	dec  b                                           ; $5a76: $05
	jr   nz, jr_058_5a7d                             ; $5a77: $20 $04

	dec  d                                           ; $5a79: $15
	nop                                              ; $5a7a: $00
	nop                                              ; $5a7b: $00
	ld   [bc], a                                     ; $5a7c: $02

jr_058_5a7d:
	sbc  d                                           ; $5a7d: $9a
	ld   e, e                                        ; $5a7e: $5b
	ld   a, b                                        ; $5a7f: $78
	inc  bc                                          ; $5a80: $03
	dec  bc                                          ; $5a81: $0b
	ld   a, c                                        ; $5a82: $79
	ld   [hl], d                                     ; $5a83: $72
	ld   d, d                                        ; $5a84: $52
	ld   [hl], h                                     ; $5a85: $74
	nop                                              ; $5a86: $00
	ld   bc, $f5ac                                   ; $5a87: $01 $ac $f5
	bit  7, c                                        ; $5a8a: $cb $79
	ld   [hl], d                                     ; $5a8c: $72
	ld   d, d                                        ; $5a8d: $52
	ld   [hl], h                                     ; $5a8e: $74
	nop                                              ; $5a8f: $00
	ld   [bc], a                                     ; $5a90: $02
	rlca                                             ; $5a91: $07
	xor  [hl]                                        ; $5a92: $ae
	nop                                              ; $5a93: $00
	ld   [bc], a                                     ; $5a94: $02
	inc  bc                                          ; $5a95: $03
	ld   bc, $2000                                   ; $5a96: $01 $00 $20
	nop                                              ; $5a99: $00
	rlca                                             ; $5a9a: $07
	ccf                                              ; $5a9b: $3f
	ld   bc, $0302                                   ; $5a9c: $01 $02 $03
	ld   bc, $2001                                   ; $5a9f: $01 $01 $20
	nop                                              ; $5aa2: $00
	rlca                                             ; $5aa3: $07
	dec  de                                          ; $5aa4: $1b
	inc  bc                                          ; $5aa5: $03
	ld   [bc], a                                     ; $5aa6: $02
	inc  bc                                          ; $5aa7: $03
	ld   bc, $2002                                   ; $5aa8: $01 $02 $20
	nop                                              ; $5aab: $00
	ld   b, $8b                                      ; $5aac: $06 $8b
	nop                                              ; $5aae: $00
	rrca                                             ; $5aaf: $0f
	ld   [bc], a                                     ; $5ab0: $02
	nop                                              ; $5ab1: $00
	ld   bc, $a502                                   ; $5ab2: $01 $02 $a5
	inc  b                                           ; $5ab5: $04
	xor  d                                           ; $5ab6: $aa
	sub  b                                           ; $5ab7: $90
	ld   [bc], a                                     ; $5ab8: $02
	jr   nz, jr_058_5abf                             ; $5ab9: $20 $04

	xor  d                                           ; $5abb: $aa
	sbc  [hl]                                        ; $5abc: $9e
	dec  c                                           ; $5abd: $0d
	ld   e, d                                        ; $5abe: $5a

jr_058_5abf:
	and  c                                           ; $5abf: $a1
	ld   a, [hl]                                     ; $5ac0: $7e
	sbc  b                                           ; $5ac1: $98
	ld   a, b                                        ; $5ac2: $78
	ld   h, e                                        ; $5ac3: $63
	ld   d, d                                        ; $5ac4: $52
	sbc  a                                           ; $5ac5: $9f
	dec  c                                           ; $5ac6: $0d
	nop                                              ; $5ac7: $00
	ld   a, [bc]                                     ; $5ac8: $0a
	dec  c                                           ; $5ac9: $0d
	nop                                              ; $5aca: $00
	nop                                              ; $5acb: $00
	rrca                                             ; $5acc: $0f
	nop                                              ; $5acd: $00
	ld   bc, $1e09                                   ; $5ace: $01 $09 $1e
	nop                                              ; $5ad1: $00
	rrca                                             ; $5ad2: $0f
	nop                                              ; $5ad3: $00
	ld   bc, $6b01                                   ; $5ad4: $01 $01 $6b
	ld   d, h                                        ; $5ad7: $54
	ld   d, d                                        ; $5ad8: $52
	ld   d, [hl]                                     ; $5ad9: $56
	ld   a, [hl]                                     ; $5ada: $7e
	sbc  [hl]                                        ; $5adb: $9e
	ld   h, a                                        ; $5adc: $67
	adc  l                                           ; $5add: $8d
	sbc  d                                           ; $5ade: $9a
	ld   h, e                                        ; $5adf: $63
	and  c                                           ; $5ae0: $a1
	ld   [hl], h                                     ; $5ae1: $74
	dec  c                                           ; $5ae2: $0d
	halt                                             ; $5ae3: $76
	ld   h, c                                        ; $5ae4: $61
	sbc  e                                           ; $5ae5: $9b
	ld   [hl], h                                     ; $5ae6: $74
	and  c                                           ; $5ae7: $a1
	ld   a, c                                        ; $5ae8: $79
	inc  b                                           ; $5ae9: $04
	ld   c, c                                        ; $5aea: $49
	and  b                                           ; $5aeb: $a0
	ld   e, c                                        ; $5aec: $59
	ld   e, a                                        ; $5aed: $5f
	ld   [hl], h                                     ; $5aee: $74
	dec  c                                           ; $5aef: $0d
	inc  bc                                          ; $5af0: $03
	ld   l, d                                        ; $5af1: $6a
	add  a                                           ; $5af2: $87
	adc  h                                           ; $5af3: $8c
	ld   h, a                                        ; $5af4: $67
	ld   sp, hl                                      ; $5af5: $f9
	dec  c                                           ; $5af6: $0d
	nop                                              ; $5af7: $00
	ld   a, [bc]                                     ; $5af8: $0a
	inc  e                                           ; $5af9: $1c
	ld   [bc], a                                     ; $5afa: $02
	inc  bc                                          ; $5afb: $03
	inc  bc                                          ; $5afc: $03
	ld   bc, $f956                                   ; $5afd: $01 $56 $f9
	dec  c                                           ; $5b00: $0d
	halt                                             ; $5b01: $76
	ld   h, c                                        ; $5b02: $61
	sbc  e                                           ; $5b03: $9b
	ld   [hl], h                                     ; $5b04: $74
	and  c                                           ; $5b05: $a1
	rst  $38                                         ; $5b06: $ff
	rst  $38                                         ; $5b07: $ff
	ld   [hl], l                                     ; $5b08: $75
	ld   h, a                                        ; $5b09: $67
	ld   a, h                                        ; $5b0a: $7c
	ld   sp, hl                                      ; $5b0b: $f9
	dec  c                                           ; $5b0c: $0d
	nop                                              ; $5b0d: $00
	ld   a, [bc]                                     ; $5b0e: $0a
	inc  e                                           ; $5b0f: $1c
	ld   [bc], a                                     ; $5b10: $02
	dec  b                                           ; $5b11: $05
	dec  b                                           ; $5b12: $05
	ld   bc, $6d9d                                   ; $5b13: $01 $9d $6d
	ld   e, l                                        ; $5b16: $5d
	ld   h, l                                        ; $5b17: $65
	sbc  [hl]                                        ; $5b18: $9e
	ld   l, e                                        ; $5b19: $6b
	ld   a, h                                        ; $5b1a: $7c
	sub  [hl]                                        ; $5b1b: $96
	ld   d, h                                        ; $5b1c: $54
	ld   a, b                                        ; $5b1d: $78
	dec  c                                           ; $5b1e: $0d
	inc  bc                                          ; $5b1f: $03
	call nz, $de04                                   ; $5b20: $c4 $04 $de
	inc  b                                           ; $5b23: $04
	jr   nz, jr_058_5b9e                             ; $5b24: $20 $78

	sub  b                                           ; $5b26: $90
	ld   a, h                                        ; $5b27: $7c
	ld   a, l                                        ; $5b28: $7d
	dec  c                                           ; $5b29: $0d
	ld   d, d                                        ; $5b2a: $52
	ld   l, l                                        ; $5b2b: $6d
	ld   l, [hl]                                     ; $5b2c: $6e
	ld   e, e                                        ; $5b2d: $5b
	adc  h                                           ; $5b2e: $8c
	ld   l, c                                        ; $5b2f: $69
	and  c                                           ; $5b30: $a1
	ld   a, h                                        ; $5b31: $7c
	sub  [hl]                                        ; $5b32: $96
	sbc  a                                           ; $5b33: $9f
	dec  c                                           ; $5b34: $0d
	nop                                              ; $5b35: $00
	ld   a, [bc]                                     ; $5b36: $0a
	inc  e                                           ; $5b37: $1c
	ld   [bc], a                                     ; $5b38: $02
	nop                                              ; $5b39: $00
	nop                                              ; $5b3a: $00
	ld   bc, $9750                                   ; $5b3b: $01 $50 $97
	sbc  [hl]                                        ; $5b3e: $9e
	ld   l, e                                        ; $5b3f: $6b
	sbc  e                                           ; $5b40: $9b
	ld   l, e                                        ; $5b41: $6b
	sbc  e                                           ; $5b42: $9b
	inc  bc                                          ; $5b43: $03
	ld   l, l                                        ; $5b44: $6d
	dec  b                                           ; $5b45: $05
	add  hl, de                                      ; $5b46: $19
	ld   a, h                                        ; $5b47: $7c
	inc  bc                                          ; $5b48: $03
	ld   l, a                                        ; $5b49: $6f
	ld   [bc], a                                     ; $5b4a: $02
	xor  c                                           ; $5b4b: $a9
	dec  c                                           ; $5b4c: $0d
	ld   h, [hl]                                     ; $5b4d: $66
	sub  c                                           ; $5b4e: $91
	ld   a, b                                        ; $5b4f: $78
	ld   e, l                                        ; $5b50: $5d
	ld   [hl], c                                     ; $5b51: $71
	ld   [hl], h                                     ; $5b52: $74
	sbc  a                                           ; $5b53: $9f
	dec  c                                           ; $5b54: $0d
	inc  bc                                          ; $5b55: $03
	ld   [hl], b                                     ; $5b56: $70
	ld   e, l                                        ; $5b57: $5d
	ld   [bc], a                                     ; $5b58: $02
	ld   a, a                                        ; $5b59: $7f
	ld   e, e                                        ; $5b5a: $5b
	ld   a, b                                        ; $5b5b: $78
	ld   h, e                                        ; $5b5c: $63
	ld   d, d                                        ; $5b5d: $52
	sbc  a                                           ; $5b5e: $9f
	dec  c                                           ; $5b5f: $0d
	nop                                              ; $5b60: $00
	ld   a, [bc]                                     ; $5b61: $0a
	nop                                              ; $5b62: $00
	rrca                                             ; $5b63: $0f
	nop                                              ; $5b64: $00
	ld   bc, $6701                                   ; $5b65: $01 $01 $67
	adc  l                                           ; $5b68: $8d
	sbc  d                                           ; $5b69: $9a
	ld   h, e                                        ; $5b6a: $63
	and  c                                           ; $5b6b: $a1
	ld   a, h                                        ; $5b6c: $7c
	dec  c                                           ; $5b6d: $0d
	ld   [bc], a                                     ; $5b6e: $02
	sbc  d                                           ; $5b6f: $9a
	ld   e, e                                        ; $5b70: $5b
	ld   a, b                                        ; $5b71: $78
	inc  bc                                          ; $5b72: $03
	dec  bc                                          ; $5b73: $0b
	ld   [hl], c                                     ; $5b74: $71
	ld   [hl], h                                     ; $5b75: $74
	ld   a, b                                        ; $5b76: $78
	and  c                                           ; $5b77: $a1
	ld   [hl], l                                     ; $5b78: $75
	ld   h, a                                        ; $5b79: $67
	ld   e, c                                        ; $5b7a: $59
	ld   sp, hl                                      ; $5b7b: $f9
	dec  c                                           ; $5b7c: $0d
	nop                                              ; $5b7d: $00
	ld   a, [bc]                                     ; $5b7e: $0a
	rrca                                             ; $5b7f: $0f
	ld   [bc], a                                     ; $5b80: $02
	nop                                              ; $5b81: $00
	ld   bc, $0008                                   ; $5b82: $01 $08 $00
	ld   h, e                                        ; $5b85: $63
	and  c                                           ; $5b86: $a1
	ld   a, l                                        ; $5b87: $7d
	dec  c                                           ; $5b88: $0d
	inc  b                                           ; $5b89: $04
	ld   c, c                                        ; $5b8a: $49
	ld   a, b                                        ; $5b8b: $78
	ld   a, h                                        ; $5b8c: $7c
	ld   e, c                                        ; $5b8d: $59
	ld   h, l                                        ; $5b8e: $65
	sub  a                                           ; $5b8f: $97
	ld   sp, hl                                      ; $5b90: $f9
	dec  c                                           ; $5b91: $0d
	nop                                              ; $5b92: $00
	ld   a, [bc]                                     ; $5b93: $0a
	add  hl, de                                      ; $5b94: $19
	dec  b                                           ; $5b95: $05
	inc  bc                                          ; $5b96: $03
	adc  [hl]                                        ; $5b97: $8e
	sub  a                                           ; $5b98: $97
	ld   h, e                                        ; $5b99: $63
	ld   e, e                                        ; $5b9a: $5b
	nop                                              ; $5b9b: $00
	nop                                              ; $5b9c: $00
	push de                                          ; $5b9d: $d5

jr_058_5b9e:
	push af                                          ; $5b9e: $f5
	or   b                                           ; $5b9f: $b0
	nop                                              ; $5ba0: $00
	ld   bc, $5950                                   ; $5ba1: $01 $50 $59
	nop                                              ; $5ba4: $00
	ld   [bc], a                                     ; $5ba5: $02
	rlca                                             ; $5ba6: $07
	and  b                                           ; $5ba7: $a0
	ld   bc, $0302                                   ; $5ba8: $01 $02 $03
	ld   bc, $2000                                   ; $5bab: $01 $00 $20
	nop                                              ; $5bae: $00
	rlca                                             ; $5baf: $07
	ld   a, [bc]                                     ; $5bb0: $0a
	ld   [bc], a                                     ; $5bb1: $02
	ld   [bc], a                                     ; $5bb2: $02
	inc  bc                                          ; $5bb3: $03
	ld   bc, $2001                                   ; $5bb4: $01 $01 $20
	nop                                              ; $5bb7: $00
	rlca                                             ; $5bb8: $07
	ld   h, l                                        ; $5bb9: $65
	ld   [bc], a                                     ; $5bba: $02
	ld   [bc], a                                     ; $5bbb: $02
	inc  bc                                          ; $5bbc: $03
	ld   bc, $2002                                   ; $5bbd: $01 $02 $20
	nop                                              ; $5bc0: $00
	ld   b, $b6                                      ; $5bc1: $06 $b6
	ld   [bc], a                                     ; $5bc3: $02
	rrca                                             ; $5bc4: $0f
	nop                                              ; $5bc5: $00
	ld   bc, $8e01                                   ; $5bc6: $01 $01 $8e
	sub  a                                           ; $5bc9: $97
	ld   h, e                                        ; $5bca: $63
	ld   e, e                                        ; $5bcb: $5b
	ld   [hl], l                                     ; $5bcc: $75
	ld   h, a                                        ; $5bcd: $67
	sbc  a                                           ; $5bce: $9f
	dec  c                                           ; $5bcf: $0d
	nop                                              ; $5bd0: $00
	ld   a, [bc]                                     ; $5bd1: $0a
	inc  e                                           ; $5bd2: $1c
	ld   [bc], a                                     ; $5bd3: $02
	ld   bc, $1d01                                   ; $5bd4: $01 $01 $1d
	ld   b, b                                        ; $5bd7: $40
	ld   [de], a                                     ; $5bd8: $12
	inc  bc                                          ; $5bd9: $03
	ld   [de], a                                     ; $5bda: $12
	ld   bc, $2803                                   ; $5bdb: $01 $03 $28
	nop                                              ; $5bde: $00
	ld   bc, $978e                                   ; $5bdf: $01 $8e $97
	ld   h, e                                        ; $5be2: $63
	ld   e, e                                        ; $5be3: $5b
	ld   sp, hl                                      ; $5be4: $f9
	dec  c                                           ; $5be5: $0d
	ld   l, e                                        ; $5be6: $6b
	ld   d, h                                        ; $5be7: $54
	sbc  [hl]                                        ; $5be8: $9e
	ld   d, d                                        ; $5be9: $52
	ld   d, d                                        ; $5bea: $52
	inc  bc                                          ; $5beb: $03
	dec  bc                                          ; $5bec: $0b
	ld   [hl], l                                     ; $5bed: $75
	ld   h, a                                        ; $5bee: $67
	sbc  l                                           ; $5bef: $9d
	ld   a, e                                        ; $5bf0: $7b
	sbc  a                                           ; $5bf1: $9f
	dec  c                                           ; $5bf2: $0d
	sbc  l                                           ; $5bf3: $9d
	ld   l, l                                        ; $5bf4: $6d
	ld   e, l                                        ; $5bf5: $5d
	ld   h, l                                        ; $5bf6: $65
	sub  b                                           ; $5bf7: $90
	inc  b                                           ; $5bf8: $04
	ld   c, $02                                      ; $5bf9: $0e $02
	sbc  d                                           ; $5bfb: $9a
	ld   e, e                                        ; $5bfc: $5b
	ld   [hl], l                                     ; $5bfd: $75
	ld   h, a                                        ; $5bfe: $67
	sbc  l                                           ; $5bff: $9d
	dec  c                                           ; $5c00: $0d
	nop                                              ; $5c01: $00
	ld   a, [bc]                                     ; $5c02: $0a
	ld   bc, $9750                                   ; $5c03: $01 $50 $97
	sbc  [hl]                                        ; $5c06: $9e
	ld   [$6300], sp                                 ; $5c07: $08 $00 $63
	and  c                                           ; $5c0a: $a1
	sbc  a                                           ; $5c0b: $9f
	dec  c                                           ; $5c0c: $0d
	inc  bc                                          ; $5c0d: $03
	ld   l, l                                        ; $5c0e: $6d
	dec  b                                           ; $5c0f: $05
	add  hl, de                                      ; $5c10: $19
	ld   a, h                                        ; $5c11: $7c
	dec  b                                           ; $5c12: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c13: $cf
	adc  h                                           ; $5c14: $8c
	sbc  c                                           ; $5c15: $99
	inc  bc                                          ; $5c16: $03
	ld   l, a                                        ; $5c17: $6f
	ld   [bc], a                                     ; $5c18: $02
	xor  c                                           ; $5c19: $a9
	ld   h, [hl]                                     ; $5c1a: $66
	sub  c                                           ; $5c1b: $91
	dec  c                                           ; $5c1c: $0d
	ld   a, b                                        ; $5c1d: $78
	ld   e, l                                        ; $5c1e: $5d
	ld   [hl], c                                     ; $5c1f: $71
	ld   [hl], h                                     ; $5c20: $74
	sbc  a                                           ; $5c21: $9f
	dec  c                                           ; $5c22: $0d
	nop                                              ; $5c23: $00
	ld   a, [bc]                                     ; $5c24: $0a
	dec  c                                           ; $5c25: $0d
	nop                                              ; $5c26: $00
	nop                                              ; $5c27: $00
	rrca                                             ; $5c28: $0f
	nop                                              ; $5c29: $00
	ld   bc, $1e09                                   ; $5c2a: $01 $09 $1e
	nop                                              ; $5c2d: $00
	rrca                                             ; $5c2e: $0f
	nop                                              ; $5c2f: $00
	ld   bc, $d501                                   ; $5c30: $01 $01 $d5
	push af                                          ; $5c33: $f5
	or   b                                           ; $5c34: $b0
	ld   [hl], l                                     ; $5c35: $75
	ld   h, a                                        ; $5c36: $67
	sbc  a                                           ; $5c37: $9f
	dec  c                                           ; $5c38: $0d
	nop                                              ; $5c39: $00
	ld   a, [bc]                                     ; $5c3a: $0a
	inc  e                                           ; $5c3b: $1c
	ld   [bc], a                                     ; $5c3c: $02
	rlca                                             ; $5c3d: $07
	rlca                                             ; $5c3e: $07
	dec  e                                           ; $5c3f: $1d
	ld   b, b                                        ; $5c40: $40
	ld   [de], a                                     ; $5c41: $12
	inc  bc                                          ; $5c42: $03
	ld   [de], a                                     ; $5c43: $12
	ld   bc, $2902                                   ; $5c44: $01 $02 $29
	nop                                              ; $5c47: $00
	ld   bc, $f5d5                                   ; $5c48: $01 $d5 $f5
	or   b                                           ; $5c4b: $b0
	ld   sp, hl                                      ; $5c4c: $f9
	dec  c                                           ; $5c4d: $0d
	ld   a, b                                        ; $5c4e: $78
	and  c                                           ; $5c4f: $a1
	ld   [hl], h                                     ; $5c50: $74
	inc  b                                           ; $5c51: $04
	ld   hl, $bc03                                   ; $5c52: $21 $03 $bc
	inc  bc                                          ; $5c55: $03
	cp   l                                           ; $5c56: $bd
	ld   d, d                                        ; $5c57: $52
	inc  bc                                          ; $5c58: $03
	dec  bc                                          ; $5c59: $0b
	ld   e, d                                        ; $5c5a: $5a
	dec  c                                           ; $5c5b: $0d
	ld   e, b                                        ; $5c5c: $58
	ld   [bc], a                                     ; $5c5d: $02
	sbc  d                                           ; $5c5e: $9a
	ld   e, e                                        ; $5c5f: $5b
	ld   a, b                                        ; $5c60: $78
	ld   a, h                                        ; $5c61: $7c
	ld   e, c                                        ; $5c62: $59
	ld   h, l                                        ; $5c63: $65
	sub  a                                           ; $5c64: $97
	sbc  a                                           ; $5c65: $9f
	dec  c                                           ; $5c66: $0d
	nop                                              ; $5c67: $00
	ld   a, [bc]                                     ; $5c68: $0a
	ld   bc, $6d9d                                   ; $5c69: $01 $9d $6d
	ld   e, l                                        ; $5c6c: $5d
	ld   h, l                                        ; $5c6d: $65
	sbc  [hl]                                        ; $5c6e: $9e
	ld   d, b                                        ; $5c6f: $50
	ld   e, e                                        ; $5c70: $5b
	sbc  d                                           ; $5c71: $9a
	ld   [hl], h                                     ; $5c72: $74
	ld   h, l                                        ; $5c73: $65
	adc  h                                           ; $5c74: $8c
	ld   d, d                                        ; $5c75: $52
	dec  c                                           ; $5c76: $0d
	adc  h                                           ; $5c77: $8c
	ld   h, a                                        ; $5c78: $67
	sbc  l                                           ; $5c79: $9d
	sbc  a                                           ; $5c7a: $9f
	dec  c                                           ; $5c7b: $0d
	ld   d, b                                        ; $5c7c: $50
	ei                                               ; $5c7d: $fb
	sub  d                                           ; $5c7e: $92
	ld   l, [hl]                                     ; $5c7f: $6e
	sub  d                                           ; $5c80: $92
	ld   l, [hl]                                     ; $5c81: $6e
	sbc  a                                           ; $5c82: $9f
	dec  c                                           ; $5c83: $0d
	nop                                              ; $5c84: $00
	ld   a, [bc]                                     ; $5c85: $0a
	ld   b, $ef                                      ; $5c86: $06 $ef
	ld   [bc], a                                     ; $5c88: $02
	rrca                                             ; $5c89: $0f
	nop                                              ; $5c8a: $00
	ld   bc, $5001                                   ; $5c8b: $01 $01 $50
	ld   e, c                                        ; $5c8e: $59
	ld   [hl], l                                     ; $5c8f: $75
	ld   h, a                                        ; $5c90: $67
	sbc  a                                           ; $5c91: $9f
	dec  c                                           ; $5c92: $0d
	nop                                              ; $5c93: $00
	ld   a, [bc]                                     ; $5c94: $0a
	inc  e                                           ; $5c95: $1c
	ld   [bc], a                                     ; $5c96: $02
	rlca                                             ; $5c97: $07
	rlca                                             ; $5c98: $07
	dec  e                                           ; $5c99: $1d
	ld   b, b                                        ; $5c9a: $40
	ld   [de], a                                     ; $5c9b: $12
	inc  bc                                          ; $5c9c: $03
	ld   [de], a                                     ; $5c9d: $12
	ld   bc, $2902                                   ; $5c9e: $01 $02 $29
	nop                                              ; $5ca1: $00
	ld   bc, $5950                                   ; $5ca2: $01 $50 $59
	ld   sp, hl                                      ; $5ca5: $f9
	dec  c                                           ; $5ca6: $0d
	ld   a, b                                        ; $5ca7: $78
	and  c                                           ; $5ca8: $a1
	ld   l, [hl]                                     ; $5ca9: $6e
	ld   e, c                                        ; $5caa: $59
	ld   [bc], a                                     ; $5cab: $02
	ld   l, e                                        ; $5cac: $6b
	inc  b                                           ; $5cad: $04
	ccf                                              ; $5cae: $3f
	pop  de                                          ; $5caf: $d1
	xor  h                                           ; $5cb0: $ac
	ld   [hl], c                                     ; $5cb1: $71
	adc  e                                           ; $5cb2: $8b
	ld   d, d                                        ; $5cb3: $52
	inc  bc                                          ; $5cb4: $03
	dec  bc                                          ; $5cb5: $0b
	dec  c                                           ; $5cb6: $0d
	ld   [hl], l                                     ; $5cb7: $75
	ld   h, a                                        ; $5cb8: $67
	sbc  l                                           ; $5cb9: $9d
	ld   a, e                                        ; $5cba: $7b
	sbc  a                                           ; $5cbb: $9f
	dec  c                                           ; $5cbc: $0d
	nop                                              ; $5cbd: $00
	ld   a, [bc]                                     ; $5cbe: $0a
	ld   bc, $8c50                                   ; $5cbf: $01 $50 $8c
	sbc  b                                           ; $5cc2: $98
	ld   d, d                                        ; $5cc3: $52
	ld   d, d                                        ; $5cc4: $52
	ld   h, l                                        ; $5cc5: $65
	sub  e                                           ; $5cc6: $93
	adc  l                                           ; $5cc7: $8d
	halt                                             ; $5cc8: $76
	ld   a, l                                        ; $5cc9: $7d
	dec  c                                           ; $5cca: $0d
	ld   [bc], a                                     ; $5ccb: $02
	sbc  l                                           ; $5ccc: $9d
	ld   d, [hl]                                     ; $5ccd: $56
	adc  h                                           ; $5cce: $8c
	ld   l, c                                        ; $5ccf: $69
	and  c                                           ; $5cd0: $a1
	sbc  l                                           ; $5cd1: $9d
	ld   a, e                                        ; $5cd2: $7b
	sbc  a                                           ; $5cd3: $9f
	dec  c                                           ; $5cd4: $0d
	nop                                              ; $5cd5: $00
	ld   a, [bc]                                     ; $5cd6: $0a
	ld   b, $ef                                      ; $5cd7: $06 $ef
	ld   [bc], a                                     ; $5cd9: $02
	inc  e                                           ; $5cda: $1c
	ld   [bc], a                                     ; $5cdb: $02
	dec  b                                           ; $5cdc: $05
	dec  b                                           ; $5cdd: $05
	ld   bc, $7c61                                   ; $5cde: $01 $61 $7c
	inc  b                                           ; $5ce1: $04
	dec  bc                                          ; $5ce2: $0b
	ld   a, c                                        ; $5ce3: $79
	ld   h, d                                        ; $5ce4: $62
	ld   h, h                                        ; $5ce5: $64
	ld   d, d                                        ; $5ce6: $52
	adc  h                                           ; $5ce7: $8c
	ld   l, c                                        ; $5ce8: $69
	and  c                                           ; $5ce9: $a1
	ld   a, h                                        ; $5cea: $7c
	ld   sp, hl                                      ; $5ceb: $f9
	dec  c                                           ; $5cec: $0d
	sub  b                                           ; $5ced: $90
	ld   h, l                                        ; $5cee: $65
	ld   e, c                                        ; $5cef: $59
	ld   h, l                                        ; $5cf0: $65
	ld   [hl], h                                     ; $5cf1: $74
	sbc  [hl]                                        ; $5cf2: $9e
	ld   [bc], a                                     ; $5cf3: $02
	ld   [bc], a                                     ; $5cf4: $02
	inc  bc                                          ; $5cf5: $03
	dec  bc                                          ; $5cf6: $0b
	halt                                             ; $5cf7: $76
	ld   e, c                                        ; $5cf8: $59
	dec  b                                           ; $5cf9: $05
	ld   h, c                                        ; $5cfa: $61
	ld   [hl], c                                     ; $5cfb: $71
	ld   [hl], h                                     ; $5cfc: $74
	dec  c                                           ; $5cfd: $0d
	ld   [bc], a                                     ; $5cfe: $02
	sbc  l                                           ; $5cff: $9d
	ld   d, h                                        ; $5d00: $54
	and  c                                           ; $5d01: $a1
	ld   h, [hl]                                     ; $5d02: $66
	sub  c                                           ; $5d03: $91
	ld   d, b                                        ; $5d04: $50
	sbc  b                                           ; $5d05: $98
	adc  h                                           ; $5d06: $8c
	ld   l, c                                        ; $5d07: $69
	and  c                                           ; $5d08: $a1
	sbc  l                                           ; $5d09: $9d
	sub  [hl]                                        ; $5d0a: $96
	ld   a, e                                        ; $5d0b: $7b
	sbc  a                                           ; $5d0c: $9f
	dec  c                                           ; $5d0d: $0d
	nop                                              ; $5d0e: $00
	ld   a, [bc]                                     ; $5d0f: $0a
	ld   b, $ef                                      ; $5d10: $06 $ef
	ld   [bc], a                                     ; $5d12: $02
	inc  e                                           ; $5d13: $1c
	ld   [bc], a                                     ; $5d14: $02
	nop                                              ; $5d15: $00
	nop                                              ; $5d16: $00
	ld   bc, $9750                                   ; $5d17: $01 $50 $97
	sbc  [hl]                                        ; $5d1a: $9e
	ld   l, e                                        ; $5d1b: $6b
	sbc  e                                           ; $5d1c: $9b
	ld   l, e                                        ; $5d1d: $6b
	sbc  e                                           ; $5d1e: $9b
	inc  bc                                          ; $5d1f: $03
	ld   l, l                                        ; $5d20: $6d
	dec  b                                           ; $5d21: $05
	add  hl, de                                      ; $5d22: $19
	ld   a, h                                        ; $5d23: $7c
	inc  bc                                          ; $5d24: $03
	ld   l, a                                        ; $5d25: $6f
	ld   [bc], a                                     ; $5d26: $02
	xor  c                                           ; $5d27: $a9
	dec  c                                           ; $5d28: $0d
	ld   h, [hl]                                     ; $5d29: $66
	sub  c                                           ; $5d2a: $91
	ld   a, b                                        ; $5d2b: $78
	ld   e, l                                        ; $5d2c: $5d
	ld   [hl], c                                     ; $5d2d: $71
	ld   [hl], h                                     ; $5d2e: $74
	sbc  a                                           ; $5d2f: $9f
	dec  c                                           ; $5d30: $0d
	inc  bc                                          ; $5d31: $03
	ld   [hl], b                                     ; $5d32: $70
	ld   e, l                                        ; $5d33: $5d
	ld   [bc], a                                     ; $5d34: $02
	ld   a, a                                        ; $5d35: $7f
	ld   e, e                                        ; $5d36: $5b
	ld   a, b                                        ; $5d37: $78
	ld   h, e                                        ; $5d38: $63
	ld   d, d                                        ; $5d39: $52
	sbc  a                                           ; $5d3a: $9f
	dec  c                                           ; $5d3b: $0d
	nop                                              ; $5d3c: $00
	ld   a, [bc]                                     ; $5d3d: $0a
	nop                                              ; $5d3e: $00
	rrca                                             ; $5d3f: $0f
	nop                                              ; $5d40: $00
	ld   bc, $ac01                                   ; $5d41: $01 $01 $ac
	push af                                          ; $5d44: $f5
	bit  4, e                                        ; $5d45: $cb $63
	and  c                                           ; $5d47: $a1
	ld   [hl], h                                     ; $5d48: $74
	sbc  [hl]                                        ; $5d49: $9e
	ld   h, a                                        ; $5d4a: $67
	adc  l                                           ; $5d4b: $8d
	sbc  d                                           ; $5d4c: $9a
	ld   h, e                                        ; $5d4d: $63
	and  c                                           ; $5d4e: $a1
	ld   e, c                                        ; $5d4f: $59
	sub  a                                           ; $5d50: $97
	dec  c                                           ; $5d51: $0d
	ld   [bc], a                                     ; $5d52: $02
	sub  l                                           ; $5d53: $95
	ld   [hl], h                                     ; $5d54: $74
	sbc  [hl]                                        ; $5d55: $9e
	ld   [hl], a                                     ; $5d56: $77
	and  c                                           ; $5d57: $a1
	ld   a, b                                        ; $5d58: $78
	inc  b                                           ; $5d59: $04
	ld   a, b                                        ; $5d5a: $78
	ld   [hl], l                                     ; $5d5b: $75
	ld   h, a                                        ; $5d5c: $67
	ld   e, c                                        ; $5d5d: $59
	ld   sp, hl                                      ; $5d5e: $f9
	dec  c                                           ; $5d5f: $0d
	nop                                              ; $5d60: $00
	ld   a, [bc]                                     ; $5d61: $0a
	inc  e                                           ; $5d62: $1c
	ld   [bc], a                                     ; $5d63: $02
	nop                                              ; $5d64: $00
	nop                                              ; $5d65: $00
	ld   bc, $f5ac                                   ; $5d66: $01 $ac $f5
	bit  4, e                                        ; $5d69: $cb $63
	and  c                                           ; $5d6b: $a1
	rst  $38                                         ; $5d6c: $ff
	rst  $38                                         ; $5d6d: $ff
	ld   [hl], l                                     ; $5d6e: $75
	ld   h, a                                        ; $5d6f: $67
	ld   a, h                                        ; $5d70: $7c
	ld   sp, hl                                      ; $5d71: $f9
	dec  c                                           ; $5d72: $0d
	ld   [hl], a                                     ; $5d73: $77
	and  c                                           ; $5d74: $a1
	ld   a, b                                        ; $5d75: $78
	inc  b                                           ; $5d76: $04
	ld   a, b                                        ; $5d77: $78
	ld   [hl], c                                     ; $5d78: $71
	ld   [hl], h                                     ; $5d79: $74
	rst  $38                                         ; $5d7a: $ff
	rst  $38                                         ; $5d7b: $ff
	dec  c                                           ; $5d7c: $0d
	ld   [bc], a                                     ; $5d7d: $02
	sub  l                                           ; $5d7e: $95
	ld   [hl], h                                     ; $5d7f: $74
	ld   a, h                                        ; $5d80: $7c
	inc  bc                                          ; $5d81: $03
	pop  hl                                          ; $5d82: $e1
	sbc  b                                           ; $5d83: $98
	ld   a, h                                        ; $5d84: $7c
	inc  b                                           ; $5d85: $04
	ld   a, b                                        ; $5d86: $78
	ld   [hl], l                                     ; $5d87: $75
	ld   h, a                                        ; $5d88: $67
	sbc  l                                           ; $5d89: $9d
	sbc  a                                           ; $5d8a: $9f
	dec  c                                           ; $5d8b: $0d
	nop                                              ; $5d8c: $00
	ld   a, [bc]                                     ; $5d8d: $0a
	ld   bc, $635a                                   ; $5d8e: $01 $5a $63
	ld   [hl], d                                     ; $5d91: $72
	ld   [hl], l                                     ; $5d92: $75
	sbc  [hl]                                        ; $5d93: $9e
	ld   e, b                                        ; $5d94: $58
	ld   e, b                                        ; $5d95: $58
	ld   h, h                                        ; $5d96: $64
	ld   [hl], c                                     ; $5d97: $71
	ld   a, a                                        ; $5d98: $7f
	ld   [hl], l                                     ; $5d99: $75
	dec  c                                           ; $5d9a: $0d
	dec  b                                           ; $5d9b: $05
	ld   c, l                                        ; $5d9c: $4d
	dec  b                                           ; $5d9d: $05
	ccf                                              ; $5d9e: $3f
	ld   [hl], l                                     ; $5d9f: $75
	sbc  [hl]                                        ; $5da0: $9e
	ld   [bc], a                                     ; $5da1: $02
	dec  d                                           ; $5da2: $15
	adc  h                                           ; $5da3: $8c
	ld   h, e                                        ; $5da4: $63
	sbc  b                                           ; $5da5: $98
	ld   [hl], l                                     ; $5da6: $75
	dec  c                                           ; $5da7: $0d
	ld   [bc], a                                     ; $5da8: $02
	and  c                                           ; $5da9: $a1
	inc  b                                           ; $5daa: $04
	ld   h, c                                        ; $5dab: $61
	ld   a, h                                        ; $5dac: $7c
	ld   e, c                                        ; $5dad: $59
	ld   e, a                                        ; $5dae: $5f
	sub  a                                           ; $5daf: $97
	sub  b                                           ; $5db0: $90
	ld   a, b                                        ; $5db1: $78
	ld   e, l                                        ; $5db2: $5d
	rst  $38                                         ; $5db3: $ff
	rst  $38                                         ; $5db4: $ff
	dec  c                                           ; $5db5: $0d
	nop                                              ; $5db6: $00
	ld   a, [bc]                                     ; $5db7: $0a
	ld   bc, $5050                                   ; $5db8: $01 $50 $50
	ld   d, d                                        ; $5dbb: $52
	ld   d, h                                        ; $5dbc: $54
	inc  b                                           ; $5dbd: $04
	ld   a, b                                        ; $5dbe: $78
	ld   e, d                                        ; $5dbf: $5a
	sbc  [hl]                                        ; $5dc0: $9e
	sbc  l                                           ; $5dc1: $9d
	ld   l, l                                        ; $5dc2: $6d
	ld   e, l                                        ; $5dc3: $5d
	ld   h, l                                        ; $5dc4: $65
	halt                                             ; $5dc5: $76
	inc  b                                           ; $5dc6: $04
	dec  e                                           ; $5dc7: $1d
	ld   h, [hl]                                     ; $5dc8: $66
	dec  c                                           ; $5dc9: $0d
	inc  b                                           ; $5dca: $04
	ld   [$9202], sp                                 ; $5dcb: $08 $02 $92
	ld   a, h                                        ; $5dce: $7c
	cp   d                                           ; $5dcf: $ba
	ret  nz                                          ; $5dd0: $c0

	and  e                                           ; $5dd1: $a3
	ld   l, [hl]                                     ; $5dd2: $6e
	ld   a, b                                        ; $5dd3: $78
	and  c                                           ; $5dd4: $a1
	ld   [hl], h                                     ; $5dd5: $74
	dec  c                                           ; $5dd6: $0d
	ld   d, d                                        ; $5dd7: $52
	ld   d, d                                        ; $5dd8: $52
	adc  a                                           ; $5dd9: $8f
	ld   d, d                                        ; $5dda: $52
	sbc  l                                           ; $5ddb: $9d
	ld   e, l                                        ; $5ddc: $5d
	ld   [hl], l                                     ; $5ddd: $75
	ld   h, a                                        ; $5dde: $67
	sbc  l                                           ; $5ddf: $9d
	ld   a, e                                        ; $5de0: $7b
	sbc  a                                           ; $5de1: $9f
	dec  c                                           ; $5de2: $0d
	nop                                              ; $5de3: $00
	ld   a, [bc]                                     ; $5de4: $0a
	ld   bc, $9750                                   ; $5de5: $01 $50 $97
	sbc  [hl]                                        ; $5de8: $9e
	ld   l, e                                        ; $5de9: $6b
	sbc  e                                           ; $5dea: $9b
	ld   l, e                                        ; $5deb: $6b
	sbc  e                                           ; $5dec: $9b

jr_058_5ded:
	inc  bc                                          ; $5ded: $03
	ld   l, l                                        ; $5dee: $6d
	dec  b                                           ; $5def: $05
	add  hl, de                                      ; $5df0: $19
	ld   a, h                                        ; $5df1: $7c
	inc  bc                                          ; $5df2: $03
	ld   l, a                                        ; $5df3: $6f
	ld   [bc], a                                     ; $5df4: $02
	xor  c                                           ; $5df5: $a9
	dec  c                                           ; $5df6: $0d
	ld   h, [hl]                                     ; $5df7: $66
	sub  c                                           ; $5df8: $91
	ld   a, b                                        ; $5df9: $78
	ld   e, l                                        ; $5dfa: $5d
	ld   [hl], c                                     ; $5dfb: $71
	ld   [hl], h                                     ; $5dfc: $74
	sbc  a                                           ; $5dfd: $9f
	dec  c                                           ; $5dfe: $0d
	inc  bc                                          ; $5dff: $03
	ld   [hl], b                                     ; $5e00: $70
	ld   e, l                                        ; $5e01: $5d
	ld   [bc], a                                     ; $5e02: $02
	ld   a, a                                        ; $5e03: $7f
	ld   e, e                                        ; $5e04: $5b
	ld   a, b                                        ; $5e05: $78
	ld   h, e                                        ; $5e06: $63
	ld   d, d                                        ; $5e07: $52
	sbc  a                                           ; $5e08: $9f
	dec  c                                           ; $5e09: $0d
	nop                                              ; $5e0a: $00
	ld   a, [bc]                                     ; $5e0b: $0a
	nop                                              ; $5e0c: $00
	nop                                              ; $5e0d: $00
	inc  bc                                          ; $5e0e: $03
	ld   c, [hl]                                     ; $5e0f: $4e
	ld   [bc], a                                     ; $5e10: $02
	nop                                              ; $5e11: $00
	inc  bc                                          ; $5e12: $03
	ld   c, b                                        ; $5e13: $48
	add  hl, hl                                      ; $5e14: $29
	add  hl, hl                                      ; $5e15: $29
	ld   bc, $2201                                   ; $5e16: $01 $01 $22
	nop                                              ; $5e19: $00
	rrca                                             ; $5e1a: $0f
	nop                                              ; $5e1b: $00
	ld   bc, $010d                                   ; $5e1c: $01 $0d $01
	nop                                              ; $5e1f: $00
	ld   [bc], a                                     ; $5e20: $02
	ld   bc, $7d58                                   ; $5e21: $01 $58 $7d
	sub  [hl]                                        ; $5e24: $96
	ld   d, h                                        ; $5e25: $54
	ld   h, d                                        ; $5e26: $62
	ld   h, h                                        ; $5e27: $64
	ld   d, d                                        ; $5e28: $52
	adc  h                                           ; $5e29: $8c
	ld   h, a                                        ; $5e2a: $67
	sbc  a                                           ; $5e2b: $9f
	dec  c                                           ; $5e2c: $0d
	nop                                              ; $5e2d: $00
	ld   a, [bc]                                     ; $5e2e: $0a
	inc  e                                           ; $5e2f: $1c
	ld   bc, $0000                                   ; $5e30: $01 $00 $00
	ld   bc, $7d58                                   ; $5e33: $01 $58 $7d
	sub  [hl]                                        ; $5e36: $96
	ld   d, h                                        ; $5e37: $54
	ld   h, d                                        ; $5e38: $62
	ld   h, h                                        ; $5e39: $64
	ld   d, d                                        ; $5e3a: $52
	adc  h                                           ; $5e3b: $8c
	ld   h, a                                        ; $5e3c: $67
	sbc  a                                           ; $5e3d: $9f
	dec  c                                           ; $5e3e: $0d
	nop                                              ; $5e3f: $00
	ld   a, [bc]                                     ; $5e40: $0a
	rrca                                             ; $5e41: $0f
	nop                                              ; $5e42: $00
	ld   bc, $0101                                   ; $5e43: $01 $01 $01
	inc  bc                                          ; $5e46: $03
	inc  b                                           ; $5e47: $04
	ld   c, c                                        ; $5e48: $49
	ld   a, h                                        ; $5e49: $7c
	dec  b                                           ; $5e4a: $05
	jr   nz, jr_058_5ded                             ; $5e4b: $20 $a0

	ld   h, l                                        ; $5e4d: $65
	sub  [hl]                                        ; $5e4e: $96
	ld   d, h                                        ; $5e4f: $54
	ld   e, c                                        ; $5e50: $59
	ld   a, b                                        ; $5e51: $78
	rst  $38                                         ; $5e52: $ff
	ld   bc, $0d04                                   ; $5e53: $01 $04 $0d
	nop                                              ; $5e56: $00
	ld   a, [bc]                                     ; $5e57: $0a
	add  hl, de                                      ; $5e58: $19
	dec  b                                           ; $5e59: $05
	inc  bc                                          ; $5e5a: $03
	inc  bc                                          ; $5e5b: $03
	ld   l, d                                        ; $5e5c: $6a
	add  a                                           ; $5e5d: $87
	inc  b                                           ; $5e5e: $04
	sub  d                                           ; $5e5f: $92
	ld   a, h                                        ; $5e60: $7c
	dec  b                                           ; $5e61: $05
	jr   nz, jr_058_5e68                             ; $5e62: $20 $04

	dec  d                                           ; $5e64: $15
	nop                                              ; $5e65: $00
	nop                                              ; $5e66: $00
	add  e                                           ; $5e67: $83

jr_058_5e68:
	sbc  c                                           ; $5e68: $99
	ld   h, e                                        ; $5e69: $63
	halt                                             ; $5e6a: $76
	ld   a, h                                        ; $5e6b: $7c
	dec  b                                           ; $5e6c: $05
	jr   nz, @+$06                                   ; $5e6d: $20 $04

	dec  d                                           ; $5e6f: $15
	nop                                              ; $5e70: $00
	ld   bc, $0b05                                   ; $5e71: $01 $05 $0b
	ld   [bc], a                                     ; $5e74: $02
	dec  hl                                          ; $5e75: $2b
	ld   a, h                                        ; $5e76: $7c
	dec  b                                           ; $5e77: $05
	jr   nz, jr_058_5e7e                             ; $5e78: $20 $04

	dec  d                                           ; $5e7a: $15
	nop                                              ; $5e7b: $00
	ld   [bc], a                                     ; $5e7c: $02
	rlca                                             ; $5e7d: $07

jr_058_5e7e:
	and  a                                           ; $5e7e: $a7
	nop                                              ; $5e7f: $00
	ld   [bc], a                                     ; $5e80: $02
	inc  bc                                          ; $5e81: $03
	ld   bc, $2000                                   ; $5e82: $01 $00 $20
	nop                                              ; $5e85: $00
	rlca                                             ; $5e86: $07
	db   $fc                                         ; $5e87: $fc
	ld   bc, $0302                                   ; $5e88: $01 $02 $03
	ld   bc, $2001                                   ; $5e8b: $01 $01 $20
	nop                                              ; $5e8e: $00
	rlca                                             ; $5e8f: $07
	rst  ToBoot                                         ; $5e90: $c7
	inc  bc                                          ; $5e91: $03
	ld   [bc], a                                     ; $5e92: $02
	inc  bc                                          ; $5e93: $03
	ld   bc, $2002                                   ; $5e94: $01 $02 $20
	nop                                              ; $5e97: $00
	ld   b, $81                                      ; $5e98: $06 $81
	nop                                              ; $5e9a: $00
	inc  e                                           ; $5e9b: $1c
	ld   bc, $0000                                   ; $5e9c: $01 $00 $00
	ld   bc, $a502                                   ; $5e9f: $01 $02 $a5
	inc  b                                           ; $5ea2: $04
	xor  d                                           ; $5ea3: $aa
	sub  b                                           ; $5ea4: $90
	ld   [bc], a                                     ; $5ea5: $02
	jr   nz, jr_058_5eac                             ; $5ea6: $20 $04

	xor  d                                           ; $5ea8: $aa
	sbc  [hl]                                        ; $5ea9: $9e
	dec  c                                           ; $5eaa: $0d
	ld   e, d                                        ; $5eab: $5a

jr_058_5eac:
	and  c                                           ; $5eac: $a1
	ld   a, [hl]                                     ; $5ead: $7e
	sbc  b                                           ; $5eae: $98
	adc  h                                           ; $5eaf: $8c
	ld   h, l                                        ; $5eb0: $65
	sub  l                                           ; $5eb1: $95
	ld   d, h                                        ; $5eb2: $54
	ld   a, e                                        ; $5eb3: $7b
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
	ld   bc, $6b01                                   ; $5ec3: $01 $01 $6b
	ld   d, h                                        ; $5ec6: $54
	ld   d, d                                        ; $5ec7: $52
	ld   d, [hl]                                     ; $5ec8: $56
	ld   a, [hl]                                     ; $5ec9: $7e
	sbc  [hl]                                        ; $5eca: $9e
	ld   h, e                                        ; $5ecb: $63
	ld   e, l                                        ; $5ecc: $5d
	sub  a                                           ; $5ecd: $97
	ld   h, e                                        ; $5ece: $63
	and  c                                           ; $5ecf: $a1
	ld   [hl], h                                     ; $5ed0: $74
	dec  c                                           ; $5ed1: $0d
	halt                                             ; $5ed2: $76
	ld   h, c                                        ; $5ed3: $61
	sbc  e                                           ; $5ed4: $9b
	ld   [hl], h                                     ; $5ed5: $74
	and  c                                           ; $5ed6: $a1
	ld   a, c                                        ; $5ed7: $79
	inc  b                                           ; $5ed8: $04
	ld   c, c                                        ; $5ed9: $49
	and  b                                           ; $5eda: $a0
	ld   e, c                                        ; $5edb: $59
	ld   e, a                                        ; $5edc: $5f
	ld   [hl], h                                     ; $5edd: $74
	dec  c                                           ; $5ede: $0d
	inc  bc                                          ; $5edf: $03
	ld   l, d                                        ; $5ee0: $6a
	add  a                                           ; $5ee1: $87
	adc  h                                           ; $5ee2: $8c
	ld   h, a                                        ; $5ee3: $67
	ld   sp, hl                                      ; $5ee4: $f9
	dec  c                                           ; $5ee5: $0d
	nop                                              ; $5ee6: $00
	ld   a, [bc]                                     ; $5ee7: $0a
	inc  e                                           ; $5ee8: $1c
	ld   bc, $0303                                   ; $5ee9: $01 $03 $03
	ld   bc, $f956                                   ; $5eec: $01 $56 $f9
	dec  c                                           ; $5eef: $0d
	inc  bc                                          ; $5ef0: $03
	inc  l                                           ; $5ef1: $2c
	ld   h, [hl]                                     ; $5ef2: $66
	sub  l                                           ; $5ef3: $95
	ld   d, h                                        ; $5ef4: $54
	sub  h                                           ; $5ef5: $94
	ld   [hl], l                                     ; $5ef6: $75
	ld   h, a                                        ; $5ef7: $67
	ld   e, a                                        ; $5ef8: $5f
	ld   [hl], a                                     ; $5ef9: $77
	rst  $38                                         ; $5efa: $ff
	rst  $38                                         ; $5efb: $ff
	dec  c                                           ; $5efc: $0d
	nop                                              ; $5efd: $00
	ld   a, [bc]                                     ; $5efe: $0a
	add  hl, de                                      ; $5eff: $19
	dec  b                                           ; $5f00: $05
	ld   [bc], a                                     ; $5f01: $02
	ld   l, e                                        ; $5f02: $6b
	ld   d, h                                        ; $5f03: $54
	ld   [hl], l                                     ; $5f04: $75
	ld   h, a                                        ; $5f05: $67
	sub  [hl]                                        ; $5f06: $96
	ld   a, e                                        ; $5f07: $7b
	nop                                              ; $5f08: $00
	nop                                              ; $5f09: $00
	ld   [bc], a                                     ; $5f0a: $02
	dec  [hl]                                        ; $5f0b: $35
	adc  l                                           ; $5f0c: $8d
	ld   [hl], d                                     ; $5f0d: $72
	ld   h, [hl]                                     ; $5f0e: $66
	sub  c                                           ; $5f0f: $91
	ld   a, b                                        ; $5f10: $78
	ld   d, d                                        ; $5f11: $52
	and  c                                           ; $5f12: $a1
	ld   [hl], l                                     ; $5f13: $75
	ld   h, a                                        ; $5f14: $67
	ld   e, c                                        ; $5f15: $59
	ld   sp, hl                                      ; $5f16: $f9
	nop                                              ; $5f17: $00
	ld   bc, $1407                                   ; $5f18: $01 $07 $14
	ld   bc, $0302                                   ; $5f1b: $01 $02 $03
	ld   bc, $2000                                   ; $5f1e: $01 $00 $20
	nop                                              ; $5f21: $00
	rlca                                             ; $5f22: $07
	dec  a                                           ; $5f23: $3d
	ld   bc, $0302                                   ; $5f24: $01 $02 $03
	ld   bc, $2001                                   ; $5f27: $01 $01 $20
	nop                                              ; $5f2a: $00
	ld   b, $b0                                      ; $5f2b: $06 $b0
	ld   bc, $000f                                   ; $5f2d: $01 $0f $00
	ld   bc, $6b01                                   ; $5f30: $01 $01 $6b
	ld   d, h                                        ; $5f33: $54
	ld   [hl], l                                     ; $5f34: $75
	ld   h, a                                        ; $5f35: $67
	sub  [hl]                                        ; $5f36: $96
	ld   a, e                                        ; $5f37: $7b
	sbc  a                                           ; $5f38: $9f
	dec  c                                           ; $5f39: $0d
	nop                                              ; $5f3a: $00
	ld   a, [bc]                                     ; $5f3b: $0a
	inc  e                                           ; $5f3c: $1c
	ld   bc, $0404                                   ; $5f3d: $01 $04 $04
	ld   bc, $546b                                   ; $5f40: $01 $6b $54
	ld   [hl], l                                     ; $5f43: $75
	ld   h, a                                        ; $5f44: $67
	ld   e, a                                        ; $5f45: $5f
	ld   [hl], a                                     ; $5f46: $77
	rst  $38                                         ; $5f47: $ff
	rst  $38                                         ; $5f48: $ff
	dec  c                                           ; $5f49: $0d
	ld   l, e                                        ; $5f4a: $6b
	sbc  d                                           ; $5f4b: $9a
	ld   e, d                                        ; $5f4c: $5a
	inc  b                                           ; $5f4d: $04
	ld   c, c                                        ; $5f4e: $49
	ld   e, c                                        ; $5f4f: $59
	ld   sp, hl                                      ; $5f50: $f9
	dec  c                                           ; $5f51: $0d
	nop                                              ; $5f52: $00
	ld   a, [bc]                                     ; $5f53: $0a
	ld   b, $ca                                      ; $5f54: $06 $ca
	ld   bc, $000f                                   ; $5f56: $01 $0f $00
	ld   bc, $0201                                   ; $5f59: $01 $01 $02
	dec  [hl]                                        ; $5f5c: $35
	adc  l                                           ; $5f5d: $8d
	ld   [hl], d                                     ; $5f5e: $72
	ld   h, [hl]                                     ; $5f5f: $66
	sub  c                                           ; $5f60: $91
	ld   a, b                                        ; $5f61: $78
	ld   d, d                                        ; $5f62: $52
	and  c                                           ; $5f63: $a1
	ld   [hl], l                                     ; $5f64: $75
	ld   h, a                                        ; $5f65: $67
	ld   e, c                                        ; $5f66: $59
	ld   sp, hl                                      ; $5f67: $f9
	dec  c                                           ; $5f68: $0d
	nop                                              ; $5f69: $00
	ld   a, [bc]                                     ; $5f6a: $0a
	inc  e                                           ; $5f6b: $1c
	ld   bc, $0303                                   ; $5f6c: $01 $03 $03
	ld   bc, $f956                                   ; $5f6f: $01 $56 $f9

Jump_058_5f72:
	db   $10                                         ; $5f72: $10
	ld   [bc], a                                     ; $5f73: $02
	dec  [hl]                                        ; $5f74: $35
	adc  l                                           ; $5f75: $8d
	ld   [hl], d                                     ; $5f76: $72
	ld   [hl], l                                     ; $5f77: $75
	ld   h, a                                        ; $5f78: $67
	ld   e, c                                        ; $5f79: $59
	ld   sp, hl                                      ; $5f7a: $f9
	dec  c                                           ; $5f7b: $0d
	ld   d, b                                        ; $5f7c: $50
	ld   l, l                                        ; $5f7d: $6d
	ld   h, l                                        ; $5f7e: $65
	sbc  [hl]                                        ; $5f7f: $9e
	inc  bc                                          ; $5f80: $03
	inc  l                                           ; $5f81: $2c
	ld   h, [hl]                                     ; $5f82: $66
	sub  l                                           ; $5f83: $95
	ld   d, h                                        ; $5f84: $54
	sub  h                                           ; $5f85: $94
	ld   [hl], l                                     ; $5f86: $75
	ld   h, a                                        ; $5f87: $67
	ld   e, a                                        ; $5f88: $5f
	ld   [hl], a                                     ; $5f89: $77
	sbc  a                                           ; $5f8a: $9f
	dec  c                                           ; $5f8b: $0d
	nop                                              ; $5f8c: $00
	ld   a, [bc]                                     ; $5f8d: $0a
	rrca                                             ; $5f8e: $0f
	nop                                              ; $5f8f: $00
	ld   bc, $5801                                   ; $5f90: $01 $01 $58
	ld   d, d                                        ; $5f93: $52
	ld   h, l                                        ; $5f94: $65
	ld   d, d                                        ; $5f95: $52
	ld   [hl], l                                     ; $5f96: $75
	ld   h, a                                        ; $5f97: $67
	sub  [hl]                                        ; $5f98: $96
	sbc  [hl]                                        ; $5f99: $9e
	ld   [bc], a                                     ; $5f9a: $02
	dec  [hl]                                        ; $5f9b: $35
	adc  l                                           ; $5f9c: $8d
	ld   [hl], d                                     ; $5f9d: $72
	sbc  a                                           ; $5f9e: $9f
	dec  c                                           ; $5f9f: $0d
	nop                                              ; $5fa0: $00
	ld   a, [bc]                                     ; $5fa1: $0a
	inc  e                                           ; $5fa2: $1c
	ld   bc, $0404                                   ; $5fa3: $01 $04 $04
	dec  e                                           ; $5fa6: $1d
	ld   b, b                                        ; $5fa7: $40
	ld   de, $1103                                   ; $5fa8: $11 $03 $11
	ld   bc, $2901                                   ; $5fab: $01 $01 $29
	nop                                              ; $5fae: $00
	ld   bc, $9e7d                                   ; $5faf: $01 $7d $9e
	ld   a, l                                        ; $5fb2: $7d
	ld   d, b                                        ; $5fb3: $50
	rst  $38                                         ; $5fb4: $ff
	rst  $38                                         ; $5fb5: $ff
	dec  c                                           ; $5fb6: $0d
	ld   [bc], a                                     ; $5fb7: $02
	and  l                                           ; $5fb8: $a5
	inc  b                                           ; $5fb9: $04
	add  hl, hl                                      ; $5fba: $29
	dec  b                                           ; $5fbb: $05
	ld   c, e                                        ; $5fbc: $4b
	inc  bc                                          ; $5fbd: $03
	xor  b                                           ; $5fbe: $a8
	ld   h, l                                        ; $5fbf: $65
	ld   [hl], h                                     ; $5fc0: $74
	adc  l                                           ; $5fc1: $8d
	adc  h                                           ; $5fc2: $8c
	ld   h, a                                        ; $5fc3: $67
	rst  $38                                         ; $5fc4: $ff
	rst  $38                                         ; $5fc5: $ff
	dec  c                                           ; $5fc6: $0d
	nop                                              ; $5fc7: $00
	ld   a, [bc]                                     ; $5fc8: $0a
	nop                                              ; $5fc9: $00
	inc  e                                           ; $5fca: $1c
	ld   bc, $0303                                   ; $5fcb: $01 $03 $03
	ld   bc, $2c03                                   ; $5fce: $01 $03 $2c
	ld   h, [hl]                                     ; $5fd1: $66
	sub  l                                           ; $5fd2: $95
	ld   d, h                                        ; $5fd3: $54
	sub  h                                           ; $5fd4: $94
	ld   h, [hl]                                     ; $5fd5: $66
	sub  c                                           ; $5fd6: $91
	dec  c                                           ; $5fd7: $0d
	ld   d, d                                        ; $5fd8: $52
	ld   e, a                                        ; $5fd9: $5f
	ld   a, b                                        ; $5fda: $78
	ld   d, d                                        ; $5fdb: $52
	and  c                                           ; $5fdc: $a1
	ld   [hl], l                                     ; $5fdd: $75
	ld   h, a                                        ; $5fde: $67
	ld   e, c                                        ; $5fdf: $59
	ld   sp, hl                                      ; $5fe0: $f9
	dec  c                                           ; $5fe1: $0d
	nop                                              ; $5fe2: $00
	ld   a, [bc]                                     ; $5fe3: $0a
	rrca                                             ; $5fe4: $0f
	nop                                              ; $5fe5: $00
	ld   bc, $5201                                   ; $5fe6: $01 $01 $52
	ld   d, [hl]                                     ; $5fe9: $56
	sbc  [hl]                                        ; $5fea: $9e
	inc  b                                           ; $5feb: $04
	ld   c, c                                        ; $5fec: $49
	ld   [hl], l                                     ; $5fed: $75
	sub  b                                           ; $5fee: $90
	ld   d, b                                        ; $5fef: $50
	sbc  b                                           ; $5ff0: $98
	adc  h                                           ; $5ff1: $8c
	ld   l, c                                        ; $5ff2: $69
	and  c                                           ; $5ff3: $a1
	rst  $38                                         ; $5ff4: $ff
	rst  $38                                         ; $5ff5: $ff
	dec  c                                           ; $5ff6: $0d
	ld   e, b                                        ; $5ff7: $58
	ld   h, [hl]                                     ; $5ff8: $66
	sub  c                                           ; $5ff9: $91
	adc  h                                           ; $5ffa: $8c
	ld   h, l                                        ; $5ffb: $65
	adc  h                                           ; $5ffc: $8c
	ld   h, l                                        ; $5ffd: $65
	ld   l, l                                        ; $5ffe: $6d
	sbc  a                                           ; $5fff: $9f
	dec  c                                           ; $6000: $0d
	nop                                              ; $6001: $00
	ld   a, [bc]                                     ; $6002: $0a
	inc  e                                           ; $6003: $1c
	ld   bc, $0303                                   ; $6004: $01 $03 $03
	ld   bc, $f9f9                                   ; $6007: $01 $f9 $f9
	ld   sp, hl                                      ; $600a: $f9
	ld   sp, hl                                      ; $600b: $f9
	ld   sp, hl                                      ; $600c: $f9
	ld   sp, hl                                      ; $600d: $f9
	ld   sp, hl                                      ; $600e: $f9
	ld   sp, hl                                      ; $600f: $f9
	ld   sp, hl                                      ; $6010: $f9
	ld   sp, hl                                      ; $6011: $f9
	dec  c                                           ; $6012: $0d
	nop                                              ; $6013: $00
	ld   a, [bc]                                     ; $6014: $0a
	nop                                              ; $6015: $00
	rrca                                             ; $6016: $0f
	nop                                              ; $6017: $00
	ld   bc, $6301                                   ; $6018: $01 $01 $63
	ld   e, l                                        ; $601b: $5d
	sub  a                                           ; $601c: $97
	ld   h, e                                        ; $601d: $63
	and  c                                           ; $601e: $a1
	ld   [hl], c                                     ; $601f: $71
	ld   [hl], h                                     ; $6020: $74
	dec  c                                           ; $6021: $0d
	inc  bc                                          ; $6022: $03
	add  b                                           ; $6023: $80
	inc  b                                           ; $6024: $04
	pop  de                                          ; $6025: $d1
	ld   a, l                                        ; $6026: $7d
	inc  bc                                          ; $6027: $03
	ld   a, a                                        ; $6028: $7f
	inc  b                                           ; $6029: $04
	inc  c                                           ; $602a: $0c
	ld   a, b                                        ; $602b: $78
	and  c                                           ; $602c: $a1
	ld   [hl], l                                     ; $602d: $75
	ld   h, a                                        ; $602e: $67
	sub  [hl]                                        ; $602f: $96
	ld   a, e                                        ; $6030: $7b
	sbc  a                                           ; $6031: $9f
	dec  c                                           ; $6032: $0d
	nop                                              ; $6033: $00
	ld   a, [bc]                                     ; $6034: $0a
	inc  e                                           ; $6035: $1c
	ld   bc, $0000                                   ; $6036: $01 $00 $00
	ld   bc, $5656                                   ; $6039: $01 $56 $56
	sbc  [hl]                                        ; $603c: $9e
	ld   l, e                                        ; $603d: $6b
	ld   d, h                                        ; $603e: $54
	ld   [hl], l                                     ; $603f: $75
	ld   h, a                                        ; $6040: $67
	sub  [hl]                                        ; $6041: $96
	sbc  a                                           ; $6042: $9f
	dec  c                                           ; $6043: $0d
	nop                                              ; $6044: $00
	ld   a, [bc]                                     ; $6045: $0a
	rrca                                             ; $6046: $0f
	nop                                              ; $6047: $00
	ld   bc, $0301                                   ; $6048: $01 $01 $03
	ld   a, a                                        ; $604b: $7f
	inc  b                                           ; $604c: $04
	inc  c                                           ; $604d: $0c
	halt                                             ; $604e: $76
	ld   [bc], a                                     ; $604f: $02
	sbc  l                                           ; $6050: $9d
	ld   d, [hl]                                     ; $6051: $56
	ld   a, [hl]                                     ; $6052: $7e
	inc  b                                           ; $6053: $04
	ld   c, [hl]                                     ; $6054: $4e
	inc  b                                           ; $6055: $04
	ldh  a, [$03]                                    ; $6056: $f0 $03
	adc  h                                           ; $6058: $8c
	ld   [hl], l                                     ; $6059: $75
	ld   h, a                                        ; $605a: $67
	sub  [hl]                                        ; $605b: $96
	ld   a, e                                        ; $605c: $7b
	ld   sp, hl                                      ; $605d: $f9
	dec  c                                           ; $605e: $0d
	nop                                              ; $605f: $00
	ld   a, [bc]                                     ; $6060: $0a
	inc  e                                           ; $6061: $1c
	ld   bc, $0101                                   ; $6062: $01 $01 $01
	ld   bc, $527d                                   ; $6065: $01 $7d $52
	sbc  a                                           ; $6068: $9f
	dec  c                                           ; $6069: $0d
	halt                                             ; $606a: $76
	ld   [hl], h                                     ; $606b: $74
	sub  b                                           ; $606c: $90
	ld   [bc], a                                     ; $606d: $02
	sub  b                                           ; $606e: $90
	sub  d                                           ; $606f: $92
	ld   e, c                                        ; $6070: $59
	ld   [hl], l                                     ; $6071: $75
	sbc  [hl]                                        ; $6072: $9e
	dec  b                                           ; $6073: $05
	ld   e, h                                        ; $6074: $5c
	inc  b                                           ; $6075: $04
	ld   d, b                                        ; $6076: $50
	rst  $38                                         ; $6077: $ff
	rst  $38                                         ; $6078: $ff
	dec  c                                           ; $6079: $0d
	nop                                              ; $607a: $00
	ld   a, [bc]                                     ; $607b: $0a
	add  hl, de                                      ; $607c: $19
	dec  b                                           ; $607d: $05
	inc  bc                                          ; $607e: $03
	inc  b                                           ; $607f: $04
	ld   c, [hl]                                     ; $6080: $4e
	ld   [bc], a                                     ; $6081: $02
	sbc  e                                           ; $6082: $9b
	inc  b                                           ; $6083: $04
	ld   c, [hl]                                     ; $6084: $4e
	inc  b                                           ; $6085: $04
	xor  d                                           ; $6086: $aa
	nop                                              ; $6087: $00
	nop                                              ; $6088: $00
	dec  b                                           ; $6089: $05
	ld   a, [hl+]                                    ; $608a: $2a
	ld   [bc], a                                     ; $608b: $02
	sbc  e                                           ; $608c: $9b
	dec  b                                           ; $608d: $05
	ld   a, [hl+]                                    ; $608e: $2a
	inc  b                                           ; $608f: $04
	xor  d                                           ; $6090: $aa
	nop                                              ; $6091: $00
	ld   bc, $7e04                                   ; $6092: $01 $04 $7e
	ld   [bc], a                                     ; $6095: $02
	sbc  e                                           ; $6096: $9b
	inc  b                                           ; $6097: $04
	ld   c, [hl]                                     ; $6098: $4e
	inc  b                                           ; $6099: $04
	xor  d                                           ; $609a: $aa
	nop                                              ; $609b: $00
	ld   [bc], a                                     ; $609c: $02
	rlca                                             ; $609d: $07
	and  c                                           ; $609e: $a1
	ld   [bc], a                                     ; $609f: $02
	ld   [bc], a                                     ; $60a0: $02
	inc  bc                                          ; $60a1: $03
	ld   bc, $2000                                   ; $60a2: $01 $00 $20
	nop                                              ; $60a5: $00
	rlca                                             ; $60a6: $07
	db   $eb                                         ; $60a7: $eb
	ld   [bc], a                                     ; $60a8: $02
	ld   [bc], a                                     ; $60a9: $02
	inc  bc                                          ; $60aa: $03
	ld   bc, $2001                                   ; $60ab: $01 $01 $20
	nop                                              ; $60ae: $00
	rlca                                             ; $60af: $07
	inc  hl                                          ; $60b0: $23
	inc  bc                                          ; $60b1: $03
	ld   [bc], a                                     ; $60b2: $02
	inc  bc                                          ; $60b3: $03
	ld   bc, $2002                                   ; $60b4: $01 $02 $20
	nop                                              ; $60b7: $00
	ld   b, $73                                      ; $60b8: $06 $73
	inc  bc                                          ; $60ba: $03
	rrca                                             ; $60bb: $0f
	nop                                              ; $60bc: $00
	ld   bc, $0401                                   ; $60bd: $01 $01 $04
	ld   c, [hl]                                     ; $60c0: $4e
	ld   [bc], a                                     ; $60c1: $02
	sbc  e                                           ; $60c2: $9b
	inc  b                                           ; $60c3: $04
	ld   c, [hl]                                     ; $60c4: $4e
	inc  b                                           ; $60c5: $04
	xor  d                                           ; $60c6: $aa
	ld   [hl], l                                     ; $60c7: $75
	ld   h, a                                        ; $60c8: $67
	sub  [hl]                                        ; $60c9: $96
	ld   a, e                                        ; $60ca: $7b
	sbc  a                                           ; $60cb: $9f
	dec  c                                           ; $60cc: $0d
	nop                                              ; $60cd: $00
	ld   a, [bc]                                     ; $60ce: $0a
	inc  e                                           ; $60cf: $1c
	ld   bc, $0000                                   ; $60d0: $01 $00 $00
	ld   bc, $9750                                   ; $60d3: $01 $50 $97
	sbc  [hl]                                        ; $60d6: $9e
	inc  b                                           ; $60d7: $04
	dec  hl                                          ; $60d8: $2b
	sub  a                                           ; $60d9: $97
	ld   a, b                                        ; $60da: $78
	ld   d, d                                        ; $60db: $52
	and  c                                           ; $60dc: $a1
	ld   [hl], l                                     ; $60dd: $75
	ld   h, a                                        ; $60de: $67
	ld   e, c                                        ; $60df: $59
	ld   sp, hl                                      ; $60e0: $f9
	dec  c                                           ; $60e1: $0d
	inc  b                                           ; $60e2: $04
	dec  l                                           ; $60e3: $2d
	inc  b                                           ; $60e4: $04
	sbc  d                                           ; $60e5: $9a
	ld   a, l                                        ; $60e6: $7d
	add  b                                           ; $60e7: $80
	halt                                             ; $60e8: $76
	ld   [bc], a                                     ; $60e9: $02
	sbc  e                                           ; $60ea: $9b
	ld   e, b                                        ; $60eb: $58
	ld   e, l                                        ; $60ec: $5d
	sbc  d                                           ; $60ed: $9a
	ld   [hl], l                                     ; $60ee: $75
	sbc  [hl]                                        ; $60ef: $9e
	dec  c                                           ; $60f0: $0d
	inc  b                                           ; $60f1: $04
	ld   a, [hl]                                     ; $60f2: $7e
	ld   [bc], a                                     ; $60f3: $02
	sbc  e                                           ; $60f4: $9b
	inc  b                                           ; $60f5: $04
	ld   c, [hl]                                     ; $60f6: $4e
	inc  b                                           ; $60f7: $04
	xor  d                                           ; $60f8: $aa
	ld   a, b                                        ; $60f9: $78
	and  c                                           ; $60fa: $a1
	ld   [hl], l                                     ; $60fb: $75
	ld   h, a                                        ; $60fc: $67
	sub  [hl]                                        ; $60fd: $96
	sbc  a                                           ; $60fe: $9f
	dec  c                                           ; $60ff: $0d
	nop                                              ; $6100: $00
	ld   a, [bc]                                     ; $6101: $0a
	ld   b, $91                                      ; $6102: $06 $91
	inc  bc                                          ; $6104: $03
	rrca                                             ; $6105: $0f
	nop                                              ; $6106: $00
	ld   bc, $0501                                   ; $6107: $01 $01 $05
	ld   a, [hl+]                                    ; $610a: $2a
	ld   [bc], a                                     ; $610b: $02
	sbc  e                                           ; $610c: $9b
	dec  b                                           ; $610d: $05
	ld   a, [hl+]                                    ; $610e: $2a
	inc  b                                           ; $610f: $04
	xor  d                                           ; $6110: $aa
	ld   [hl], l                                     ; $6111: $75
	ld   h, a                                        ; $6112: $67
	sub  [hl]                                        ; $6113: $96
	ld   a, e                                        ; $6114: $7b
	sbc  a                                           ; $6115: $9f
	dec  c                                           ; $6116: $0d
	nop                                              ; $6117: $00
	ld   a, [bc]                                     ; $6118: $0a
	inc  e                                           ; $6119: $1c
	ld   bc, $0404                                   ; $611a: $01 $04 $04
	dec  e                                           ; $611d: $1d
	ld   b, b                                        ; $611e: $40
	ld   de, $1103                                   ; $611f: $11 $03 $11
	ld   bc, $2901                                   ; $6122: $01 $01 $29
	nop                                              ; $6125: $00
	ld   bc, $9a6b                                   ; $6126: $01 $6b $9a
	ld   a, l                                        ; $6129: $7d
	ld   l, l                                        ; $612a: $6d
	and  c                                           ; $612b: $a1
	ld   h, d                                        ; $612c: $62
	ld   a, h                                        ; $612d: $7c
	inc  bc                                          ; $612e: $03
	ld   d, [hl]                                     ; $612f: $56
	ld   [bc], a                                     ; $6130: $02
	or   e                                           ; $6131: $b3
	ld   [hl], l                                     ; $6132: $75
	ld   h, a                                        ; $6133: $67
	sub  [hl]                                        ; $6134: $96
	rst  $38                                         ; $6135: $ff
	rst  $38                                         ; $6136: $ff
	dec  c                                           ; $6137: $0d
	nop                                              ; $6138: $00
	ld   a, [bc]                                     ; $6139: $0a
	ld   b, $91                                      ; $613a: $06 $91
	inc  bc                                          ; $613c: $03
	rrca                                             ; $613d: $0f
	nop                                              ; $613e: $00
	ld   bc, $0401                                   ; $613f: $01 $01 $04
	ld   a, [hl]                                     ; $6142: $7e
	ld   [bc], a                                     ; $6143: $02
	sbc  e                                           ; $6144: $9b
	inc  b                                           ; $6145: $04
	ld   c, [hl]                                     ; $6146: $4e
	inc  b                                           ; $6147: $04
	xor  d                                           ; $6148: $aa
	ld   [hl], l                                     ; $6149: $75
	ld   h, a                                        ; $614a: $67
	sub  [hl]                                        ; $614b: $96
	ld   a, e                                        ; $614c: $7b
	sbc  a                                           ; $614d: $9f
	dec  c                                           ; $614e: $0d
	nop                                              ; $614f: $00
	ld   a, [bc]                                     ; $6150: $0a
	inc  e                                           ; $6151: $1c
	ld   bc, $0101                                   ; $6152: $01 $01 $01
	dec  e                                           ; $6155: $1d
	ld   b, b                                        ; $6156: $40
	ld   de, $1103                                   ; $6157: $11 $03 $11
	ld   bc, $2802                                   ; $615a: $01 $02 $28
	nop                                              ; $615d: $00
	ld   bc, $9750                                   ; $615e: $01 $50 $97
	sbc  [hl]                                        ; $6161: $9e
	sub  [hl]                                        ; $6162: $96
	ld   e, l                                        ; $6163: $5d
	ld   h, d                                        ; $6164: $62
	inc  bc                                          ; $6165: $03
	push bc                                          ; $6166: $c5
	ld   h, [hl]                                     ; $6167: $66
	ld   [hl], l                                     ; $6168: $75
	ld   h, a                                        ; $6169: $67
	ld   a, e                                        ; $616a: $7b
	sbc  a                                           ; $616b: $9f
	dec  c                                           ; $616c: $0d
	ld   d, d                                        ; $616d: $52
	ld   [hl], d                                     ; $616e: $72
	sub  b                                           ; $616f: $90
	inc  b                                           ; $6170: $04
	ld   c, [hl]                                     ; $6171: $4e
	ld   [bc], a                                     ; $6172: $02
	sbc  e                                           ; $6173: $9b
	inc  b                                           ; $6174: $04
	ld   c, [hl]                                     ; $6175: $4e
	inc  b                                           ; $6176: $04
	xor  d                                           ; $6177: $aa
	ld   [hl], c                                     ; $6178: $71
	ld   [hl], h                                     ; $6179: $74
	dec  c                                           ; $617a: $0d
	adc  h                                           ; $617b: $8c

Jump_058_617c:
	ld   l, a                                        ; $617c: $6f
	ld   e, d                                        ; $617d: $5a
	sbc  l                                           ; $617e: $9d
	sbc  d                                           ; $617f: $9a
	sbc  c                                           ; $6180: $99
	and  c                                           ; $6181: $a1
	ld   [hl], l                                     ; $6182: $75
	ld   h, a                                        ; $6183: $67
	ld   e, a                                        ; $6184: $5f
	ld   [hl], a                                     ; $6185: $77
	sbc  a                                           ; $6186: $9f
	dec  c                                           ; $6187: $0d
	nop                                              ; $6188: $00
	ld   a, [bc]                                     ; $6189: $0a
	ld   b, $91                                      ; $618a: $06 $91
	inc  bc                                          ; $618c: $03
	inc  e                                           ; $618d: $1c
	ld   bc, $0101                                   ; $618e: $01 $01 $01
	ld   bc, $7e04                                   ; $6191: $01 $04 $7e
	ld   [bc], a                                     ; $6194: $02
	sbc  e                                           ; $6195: $9b
	inc  b                                           ; $6196: $04
	ld   c, [hl]                                     ; $6197: $4e
	inc  b                                           ; $6198: $04
	xor  d                                           ; $6199: $aa
	ld   a, c                                        ; $619a: $79
	sbc  [hl]                                        ; $619b: $9e
	sub  b                                           ; $619c: $90
	sub  [hl]                                        ; $619d: $96
	ld   e, b                                        ; $619e: $58
	ld   h, e                                        ; $619f: $63
	sbc  d                                           ; $61a0: $9a
	sbc  c                                           ; $61a1: $99
	and  c                                           ; $61a2: $a1
	dec  c                                           ; $61a3: $0d
	ld   [hl], l                                     ; $61a4: $75
	ld   h, a                                        ; $61a5: $67
	sub  [hl]                                        ; $61a6: $96
	sbc  a                                           ; $61a7: $9f
	dec  c                                           ; $61a8: $0d
	nop                                              ; $61a9: $00
	ld   a, [bc]                                     ; $61aa: $0a
	inc  e                                           ; $61ab: $1c
	ld   bc, $0000                                   ; $61ac: $01 $00 $00
	ld   bc, $7463                                   ; $61af: $01 $63 $74
	halt                                             ; $61b2: $76
	sbc  [hl]                                        ; $61b3: $9e
	sub  b                                           ; $61b4: $90
	ld   d, h                                        ; $61b5: $54
	ld   [bc], a                                     ; $61b6: $02
	ld   a, a                                        ; $61b7: $7f
	ld   e, c                                        ; $61b8: $59
	ld   a, b                                        ; $61b9: $78
	ld   e, l                                        ; $61ba: $5d
	ld   l, a                                        ; $61bb: $6f
	sub  c                                           ; $61bc: $91
	rst  $38                                         ; $61bd: $ff
	rst  $38                                         ; $61be: $ff
	dec  c                                           ; $61bf: $0d
	ld   [bc], a                                     ; $61c0: $02
	and  l                                           ; $61c1: $a5
	inc  b                                           ; $61c2: $04
	xor  d                                           ; $61c3: $aa
	sub  b                                           ; $61c4: $90
	ld   [bc], a                                     ; $61c5: $02
	jr   nz, jr_058_61cc                             ; $61c6: $20 $04

	xor  d                                           ; $61c8: $aa
	sbc  [hl]                                        ; $61c9: $9e
	dec  c                                           ; $61ca: $0d
	ld   e, d                                        ; $61cb: $5a

jr_058_61cc:
	and  c                                           ; $61cc: $a1
	ld   a, [hl]                                     ; $61cd: $7e
	sbc  b                                           ; $61ce: $98
	adc  h                                           ; $61cf: $8c
	ld   h, l                                        ; $61d0: $65
	sub  l                                           ; $61d1: $95
	ld   d, h                                        ; $61d2: $54
	ld   a, e                                        ; $61d3: $7b
	sbc  a                                           ; $61d4: $9f
	dec  c                                           ; $61d5: $0d
	nop                                              ; $61d6: $00
	ld   a, [bc]                                     ; $61d7: $0a
	dec  c                                           ; $61d8: $0d
	nop                                              ; $61d9: $00
	nop                                              ; $61da: $00
	rrca                                             ; $61db: $0f
	nop                                              ; $61dc: $00
	ld   bc, $1e09                                   ; $61dd: $01 $09 $1e
	nop                                              ; $61e0: $00
	rrca                                             ; $61e1: $0f
	nop                                              ; $61e2: $00
	ld   bc, $6b01                                   ; $61e3: $01 $01 $6b
	ld   d, h                                        ; $61e6: $54
	ld   d, d                                        ; $61e7: $52
	ld   d, [hl]                                     ; $61e8: $56
	ld   a, [hl]                                     ; $61e9: $7e
	sbc  [hl]                                        ; $61ea: $9e
	ld   h, e                                        ; $61eb: $63
	ld   e, l                                        ; $61ec: $5d
	sub  a                                           ; $61ed: $97
	ld   h, e                                        ; $61ee: $63
	and  c                                           ; $61ef: $a1
	ld   a, h                                        ; $61f0: $7c
	dec  c                                           ; $61f1: $0d
	ld   [bc], a                                     ; $61f2: $02
	sbc  d                                           ; $61f3: $9a
	ld   e, e                                        ; $61f4: $5b
	ld   a, b                                        ; $61f5: $78
	ret  nz                                          ; $61f6: $c0

	and  l                                           ; $61f7: $a5
	ret  c                                           ; $61f8: $d8

	ld   [hl], c                                     ; $61f9: $71
	ld   [hl], h                                     ; $61fa: $74
	dec  c                                           ; $61fb: $0d
	ld   [hl], a                                     ; $61fc: $77
	and  c                                           ; $61fd: $a1
	ld   a, b                                        ; $61fe: $78
	inc  bc                                          ; $61ff: $03
	add  d                                           ; $6200: $82
	ld   [hl], l                                     ; $6201: $75
	ld   h, a                                        ; $6202: $67
	ld   e, c                                        ; $6203: $59
	ld   sp, hl                                      ; $6204: $f9
	dec  c                                           ; $6205: $0d
	nop                                              ; $6206: $00
	ld   a, [bc]                                     ; $6207: $0a
	inc  e                                           ; $6208: $1c
	ld   bc, $0303                                   ; $6209: $01 $03 $03
	ld   bc, $f956                                   ; $620c: $01 $56 $f9
	dec  c                                           ; $620f: $0d
	nop                                              ; $6210: $00
	ld   a, [bc]                                     ; $6211: $0a
	inc  e                                           ; $6212: $1c
	ld   bc, $0505                                   ; $6213: $01 $05 $05
	ld   bc, $9e6b                                   ; $6216: $01 $6b $9e
	ld   l, e                                        ; $6219: $6b
	ld   d, h                                        ; $621a: $54
	ld   [hl], l                                     ; $621b: $75
	ld   h, a                                        ; $621c: $67
	ld   a, e                                        ; $621d: $7b
	rst  $38                                         ; $621e: $ff
	rst  $38                                         ; $621f: $ff
	dec  c                                           ; $6220: $0d
	inc  bc                                          ; $6221: $03
	adc  d                                           ; $6222: $8a
	inc  bc                                          ; $6223: $03
	adc  e                                           ; $6224: $8b
	ld   [hl], l                                     ; $6225: $75
	adc  h                                           ; $6226: $8c
	ld   h, [hl]                                     ; $6227: $66
	adc  a                                           ; $6228: $8f
	ld   a, b                                        ; $6229: $78
	inc  bc                                          ; $622a: $03
	add  d                                           ; $622b: $82
	ld   [hl], l                                     ; $622c: $75
	ld   h, a                                        ; $622d: $67
	sbc  a                                           ; $622e: $9f
	dec  c                                           ; $622f: $0d
	nop                                              ; $6230: $00
	ld   a, [bc]                                     ; $6231: $0a
	add  hl, de                                      ; $6232: $19
	dec  b                                           ; $6233: $05
	inc  bc                                          ; $6234: $03
	add  e                                           ; $6235: $83
	ld   [hl], d                                     ; $6236: $72
	ld   d, h                                        ; $6237: $54
	ld   [hl], l                                     ; $6238: $75
	ld   h, a                                        ; $6239: $67
	ld   a, e                                        ; $623a: $7b
	nop                                              ; $623b: $00
	nop                                              ; $623c: $00
	inc  b                                           ; $623d: $04
	ld   l, l                                        ; $623e: $6d
	sbc  [hl]                                        ; $623f: $9e
	ld   e, d                                        ; $6240: $5a
	and  c                                           ; $6241: $a1
	ld   a, [hl]                                     ; $6242: $7e
	sbc  b                                           ; $6243: $98
	adc  h                                           ; $6244: $8c
	ld   h, a                                        ; $6245: $67
	ld   a, [$0100]                                  ; $6246: $fa $00 $01
	sub  d                                           ; $6249: $92
	ld   [hl], c                                     ; $624a: $71
	ld   a, a                                        ; $624b: $7f
	sbc  b                                           ; $624c: $98
	ld   l, e                                        ; $624d: $6b
	ld   d, h                                        ; $624e: $54
	ld   [hl], l                                     ; $624f: $75
	ld   h, a                                        ; $6250: $67
	sub  [hl]                                        ; $6251: $96
	ld   a, e                                        ; $6252: $7b
	nop                                              ; $6253: $00
	ld   [bc], a                                     ; $6254: $02
	rlca                                             ; $6255: $07
	ld   e, c                                        ; $6256: $59
	inc  b                                           ; $6257: $04
	ld   [bc], a                                     ; $6258: $02
	inc  bc                                          ; $6259: $03
	ld   bc, $2000                                   ; $625a: $01 $00 $20
	nop                                              ; $625d: $00
	rlca                                             ; $625e: $07
	or   [hl]                                        ; $625f: $b6
	inc  b                                           ; $6260: $04
	ld   [bc], a                                     ; $6261: $02
	inc  bc                                          ; $6262: $03
	ld   bc, $2001                                   ; $6263: $01 $01 $20
	nop                                              ; $6266: $00
	rlca                                             ; $6267: $07
	push de                                          ; $6268: $d5
	inc  b                                           ; $6269: $04
	ld   [bc], a                                     ; $626a: $02
	inc  bc                                          ; $626b: $03
	ld   bc, $2002                                   ; $626c: $01 $02 $20
	nop                                              ; $626f: $00
	ld   b, $1a                                      ; $6270: $06 $1a
	dec  b                                           ; $6272: $05
	rrca                                             ; $6273: $0f
	nop                                              ; $6274: $00
	ld   bc, $7801                                   ; $6275: $01 $01 $78
	db   $fc                                         ; $6278: $fc
	and  c                                           ; $6279: $a1
	ld   l, [hl]                                     ; $627a: $6e
	sbc  [hl]                                        ; $627b: $9e
	dec  c                                           ; $627c: $0d
	add  e                                           ; $627d: $83
	ld   [hl], d                                     ; $627e: $72
	ld   d, h                                        ; $627f: $54
	ld   a, b                                        ; $6280: $78
	and  c                                           ; $6281: $a1
	ld   [hl], l                                     ; $6282: $75
	ld   h, a                                        ; $6283: $67
	ld   a, e                                        ; $6284: $7b
	sbc  a                                           ; $6285: $9f
	dec  c                                           ; $6286: $0d
	nop                                              ; $6287: $00
	ld   a, [bc]                                     ; $6288: $0a
	inc  e                                           ; $6289: $1c
	ld   bc, $0202                                   ; $628a: $01 $02 $02
	dec  e                                           ; $628d: $1d
	ld   b, b                                        ; $628e: $40
	ld   de, $1103                                   ; $628f: $11 $03 $11
	ld   bc, $2902                                   ; $6292: $01 $02 $29
	nop                                              ; $6295: $00
	ld   bc, $546b                                   ; $6296: $01 $6b $54
	ld   [hl], l                                     ; $6299: $75
	ld   h, a                                        ; $629a: $67
	ld   e, c                                        ; $629b: $59
	ld   sp, hl                                      ; $629c: $f9
	dec  c                                           ; $629d: $0d
	inc  bc                                          ; $629e: $03
	add  d                                           ; $629f: $82
	ld   a, h                                        ; $62a0: $7c
	ld   [bc], a                                     ; $62a1: $02
	sbc  d                                           ; $62a2: $9a
	ld   e, e                                        ; $62a3: $5b
	ld   l, b                                        ; $62a4: $68
	ld   e, e                                        ; $62a5: $5b
	ld   l, [hl]                                     ; $62a6: $6e
	halt                                             ; $62a7: $76
	dec  c                                           ; $62a8: $0d
	dec  b                                           ; $62a9: $05
	pop  de                                          ; $62aa: $d1
	ld   d, h                                        ; $62ab: $54
	and  c                                           ; $62ac: $a1
	ld   [hl], l                                     ; $62ad: $75
	ld   h, a                                        ; $62ae: $67
	ld   e, a                                        ; $62af: $5f
	ld   [hl], a                                     ; $62b0: $77
	rst  $38                                         ; $62b1: $ff
	rst  $38                                         ; $62b2: $ff
	dec  c                                           ; $62b3: $0d
	nop                                              ; $62b4: $00
	ld   a, [bc]                                     ; $62b5: $0a
	ld   bc, $6d50                                   ; $62b6: $01 $50 $6d
	ld   h, l                                        ; $62b9: $65
	sbc  [hl]                                        ; $62ba: $9e
	sub  b                                           ; $62bb: $90
	ld   d, h                                        ; $62bc: $54
	ld   [bc], a                                     ; $62bd: $02
	ld   a, a                                        ; $62be: $7f
	ld   e, e                                        ; $62bf: $5b
	adc  h                                           ; $62c0: $8c
	ld   h, a                                        ; $62c1: $67
	ld   a, e                                        ; $62c2: $7b
	sbc  a                                           ; $62c3: $9f
	dec  c                                           ; $62c4: $0d
	nop                                              ; $62c5: $00
	ld   a, [bc]                                     ; $62c6: $0a
	dec  c                                           ; $62c7: $0d
	nop                                              ; $62c8: $00
	nop                                              ; $62c9: $00
	rrca                                             ; $62ca: $0f
	nop                                              ; $62cb: $00
	ld   bc, $1e09                                   ; $62cc: $01 $09 $1e
	nop                                              ; $62cf: $00
	rrca                                             ; $62d0: $0f
	nop                                              ; $62d1: $00
	ld   bc, $0401                                   ; $62d2: $01 $01 $04
	ld   l, l                                        ; $62d5: $6d
	sbc  [hl]                                        ; $62d6: $9e
	ld   e, d                                        ; $62d7: $5a
	and  c                                           ; $62d8: $a1
	ld   a, [hl]                                     ; $62d9: $7e
	sbc  b                                           ; $62da: $98
	adc  h                                           ; $62db: $8c
	ld   h, a                                        ; $62dc: $67
	ld   a, [$000d]                                  ; $62dd: $fa $0d $00
	ld   a, [bc]                                     ; $62e0: $0a
	inc  e                                           ; $62e1: $1c
	ld   bc, $0303                                   ; $62e2: $01 $03 $03
	ld   bc, $f9f9                                   ; $62e5: $01 $f9 $f9
	ld   sp, hl                                      ; $62e8: $f9
	dec  c                                           ; $62e9: $0d
	nop                                              ; $62ea: $00
	ld   a, [bc]                                     ; $62eb: $0a
	ld   b, $1a                                      ; $62ec: $06 $1a
	dec  b                                           ; $62ee: $05
	rrca                                             ; $62ef: $0f
	nop                                              ; $62f0: $00
	ld   bc, $9201                                   ; $62f1: $01 $01 $92
	ld   [hl], c                                     ; $62f4: $71
	ld   a, a                                        ; $62f5: $7f
	sbc  b                                           ; $62f6: $98
	sbc  [hl]                                        ; $62f7: $9e
	ld   l, e                                        ; $62f8: $6b
	ld   d, h                                        ; $62f9: $54
	ld   [hl], l                                     ; $62fa: $75
	ld   h, a                                        ; $62fb: $67
	sub  [hl]                                        ; $62fc: $96
	ld   a, e                                        ; $62fd: $7b
	sbc  a                                           ; $62fe: $9f
	dec  c                                           ; $62ff: $0d
	inc  b                                           ; $6300: $04
	sbc  [hl]                                        ; $6301: $9e
	ld   e, c                                        ; $6302: $59
	sbc  c                                           ; $6303: $99
	ld   [bc], a                                     ; $6304: $02
	and  c                                           ; $6305: $a1
	ld   e, d                                        ; $6306: $5a
	ld   h, l                                        ; $6307: $65
	adc  h                                           ; $6308: $8c
	ld   h, a                                        ; $6309: $67
	rst  $38                                         ; $630a: $ff
	rst  $38                                         ; $630b: $ff
	dec  c                                           ; $630c: $0d
	nop                                              ; $630d: $00
	ld   a, [bc]                                     ; $630e: $0a
	inc  e                                           ; $630f: $1c
	ld   bc, $0101                                   ; $6310: $01 $01 $01
	dec  e                                           ; $6313: $1d
	ld   b, b                                        ; $6314: $40
	ld   de, $1103                                   ; $6315: $11 $03 $11
	ld   bc, $2802                                   ; $6318: $01 $02 $28
	nop                                              ; $631b: $00
	ld   bc, $546b                                   ; $631c: $01 $6b $54
	ld   [bc], a                                     ; $631f: $02
	sbc  l                                           ; $6320: $9d
	ld   [hl], c                                     ; $6321: $71
	ld   [hl], h                                     ; $6322: $74
	sub  b                                           ; $6323: $90
	sub  a                                           ; $6324: $97
	ld   d, [hl]                                     ; $6325: $56
	sbc  c                                           ; $6326: $99
	halt                                             ; $6327: $76
	sbc  [hl]                                        ; $6328: $9e
	dec  c                                           ; $6329: $0d
	ld   d, h                                        ; $632a: $54
	sbc  d                                           ; $632b: $9a
	ld   h, l                                        ; $632c: $65
	ld   d, d                                        ; $632d: $52
	ld   [hl], l                                     ; $632e: $75
	ld   h, a                                        ; $632f: $67
	sbc  a                                           ; $6330: $9f
	dec  c                                           ; $6331: $0d
	nop                                              ; $6332: $00
	ld   a, [bc]                                     ; $6333: $0a
	inc  e                                           ; $6334: $1c
	ld   bc, $0000                                   ; $6335: $01 $00 $00
	ld   bc, $7463                                   ; $6338: $01 $63 $74
	halt                                             ; $633b: $76
	sbc  [hl]                                        ; $633c: $9e
	sub  b                                           ; $633d: $90
	ld   d, h                                        ; $633e: $54
	ld   [bc], a                                     ; $633f: $02
	ld   a, a                                        ; $6340: $7f
	ld   e, c                                        ; $6341: $59
	ld   a, b                                        ; $6342: $78
	ld   e, l                                        ; $6343: $5d
	ld   l, a                                        ; $6344: $6f
	sub  c                                           ; $6345: $91
	rst  $38                                         ; $6346: $ff
	rst  $38                                         ; $6347: $ff
	dec  c                                           ; $6348: $0d
	ld   [bc], a                                     ; $6349: $02
	and  l                                           ; $634a: $a5
	inc  b                                           ; $634b: $04
	xor  d                                           ; $634c: $aa
	sub  b                                           ; $634d: $90
	ld   [bc], a                                     ; $634e: $02
	jr   nz, jr_058_6355                             ; $634f: $20 $04

	xor  d                                           ; $6351: $aa
	sbc  [hl]                                        ; $6352: $9e
	dec  c                                           ; $6353: $0d
	ld   e, d                                        ; $6354: $5a

jr_058_6355:
	and  c                                           ; $6355: $a1
	ld   a, [hl]                                     ; $6356: $7e
	sbc  b                                           ; $6357: $98
	adc  h                                           ; $6358: $8c
	ld   h, l                                        ; $6359: $65
	sub  l                                           ; $635a: $95
	ld   d, h                                        ; $635b: $54
	sbc  a                                           ; $635c: $9f
	dec  c                                           ; $635d: $0d
	nop                                              ; $635e: $00
	ld   a, [bc]                                     ; $635f: $0a
	dec  c                                           ; $6360: $0d
	nop                                              ; $6361: $00
	nop                                              ; $6362: $00
	rrca                                             ; $6363: $0f
	nop                                              ; $6364: $00
	ld   bc, $1e09                                   ; $6365: $01 $09 $1e
	nop                                              ; $6368: $00
	nop                                              ; $6369: $00
	dec  c                                           ; $636a: $0d
	inc  b                                           ; $636b: $04
	nop                                              ; $636c: $00
	ld   [bc], a                                     ; $636d: $02
	rrca                                             ; $636e: $0f
	nop                                              ; $636f: $00
	ld   bc, $8005                                   ; $6370: $01 $05 $80
	ld   c, b                                        ; $6373: $48
	ld   bc, $0001                                   ; $6374: $01 $01 $00
	ld   bc, $a5a3                                   ; $6377: $01 $a3 $a5
	db   $ec                                         ; $637a: $ec
	cp   d                                           ; $637b: $ba
	sbc  [hl]                                        ; $637c: $9e
	dec  c                                           ; $637d: $0d
	ld   l, a                                        ; $637e: $6f
	sub  l                                           ; $637f: $95
	ld   [hl], c                                     ; $6380: $71
	halt                                             ; $6381: $76
	ld   d, d                                        ; $6382: $52
	ld   d, d                                        ; $6383: $52
	ld   e, c                                        ; $6384: $59
	ld   a, b                                        ; $6385: $78
	ld   sp, hl                                      ; $6386: $f9
	dec  c                                           ; $6387: $0d
	nop                                              ; $6388: $00
	ld   a, [bc]                                     ; $6389: $0a
	rrca                                             ; $638a: $0f
	inc  b                                           ; $638b: $04
	nop                                              ; $638c: $00
	ld   bc, $7978                                   ; $638d: $01 $78 $79
	sbc  [hl]                                        ; $6390: $9e
	ld   l, a                                        ; $6391: $6f
	ld   d, d                                        ; $6392: $52
	ld   [bc], a                                     ; $6393: $02
	inc  de                                          ; $6394: $13
	ld   l, a                                        ; $6395: $6f
	sub  c                                           ; $6396: $91
	and  c                                           ; $6397: $a1
	ld   sp, hl                                      ; $6398: $f9
	dec  c                                           ; $6399: $0d
	nop                                              ; $639a: $00
	ld   a, [bc]                                     ; $639b: $0a
	add  hl, de                                      ; $639c: $19
	dec  b                                           ; $639d: $05
	inc  bc                                          ; $639e: $03
	ld   [bc], a                                     ; $639f: $02
	sbc  d                                           ; $63a0: $9a
	ld   e, e                                        ; $63a1: $5b
	ld   a, b                                        ; $63a2: $78
	inc  bc                                          ; $63a3: $03
	ld   l, d                                        ; $63a4: $6a
	add  a                                           ; $63a5: $87
	inc  b                                           ; $63a6: $04
	sub  d                                           ; $63a7: $92
	ld   a, c                                        ; $63a8: $79
	ld   [hl], d                                     ; $63a9: $72
	ld   d, d                                        ; $63aa: $52
	ld   [hl], h                                     ; $63ab: $74
	ld   [bc], a                                     ; $63ac: $02
	jp   nz, $005d                                   ; $63ad: $c2 $5d $00

	nop                                              ; $63b0: $00
	dec  b                                           ; $63b1: $05
	dec  bc                                          ; $63b2: $0b
	inc  bc                                          ; $63b3: $03
	add  d                                           ; $63b4: $82
	ld   a, c                                        ; $63b5: $79
	ld   [hl], d                                     ; $63b6: $72
	ld   d, d                                        ; $63b7: $52
	ld   [hl], h                                     ; $63b8: $74
	ld   [bc], a                                     ; $63b9: $02
	jp   nz, $005d                                   ; $63ba: $c2 $5d $00

	ld   bc, $eed8                                   ; $63bd: $01 $d8 $ee
	cp   l                                           ; $63c0: $bd
	push af                                          ; $63c1: $f5
	ret                                              ; $63c2: $c9


	and  b                                           ; $63c3: $a0
	inc  bc                                          ; $63c4: $03
	ld   [$0067], a                                  ; $63c5: $ea $67 $00
	ld   [bc], a                                     ; $63c8: $02
	rlca                                             ; $63c9: $07
	sbc  d                                           ; $63ca: $9a
	nop                                              ; $63cb: $00
	ld   [bc], a                                     ; $63cc: $02
	inc  bc                                          ; $63cd: $03
	ld   bc, $2000                                   ; $63ce: $01 $00 $20
	nop                                              ; $63d1: $00
	rlca                                             ; $63d2: $07
	xor  h                                           ; $63d3: $ac
	ld   bc, $0302                                   ; $63d4: $01 $02 $03
	ld   bc, $2001                                   ; $63d7: $01 $01 $20
	nop                                              ; $63da: $00
	rlca                                             ; $63db: $07
	ld   b, b                                        ; $63dc: $40
	ld   [bc], a                                     ; $63dd: $02
	ld   [bc], a                                     ; $63de: $02
	inc  bc                                          ; $63df: $03
	ld   bc, $2002                                   ; $63e0: $01 $02 $20
	nop                                              ; $63e3: $00
	ld   b, $7d                                      ; $63e4: $06 $7d
	nop                                              ; $63e6: $00
	inc  e                                           ; $63e7: $1c
	inc  b                                           ; $63e8: $04
	nop                                              ; $63e9: $00
	nop                                              ; $63ea: $00
	ld   bc, $5496                                   ; $63eb: $01 $96 $54
	ld   e, d                                        ; $63ee: $5a
	sbc  [hl]                                        ; $63ef: $9e
	ld   a, b                                        ; $63f0: $78
	ld   d, d                                        ; $63f1: $52
	ld   a, b                                        ; $63f2: $78
	sub  a                                           ; $63f3: $97
	ld   d, d                                        ; $63f4: $52
	ld   e, l                                        ; $63f5: $5d
	sub  [hl]                                        ; $63f6: $96
	sbc  a                                           ; $63f7: $9f
	dec  c                                           ; $63f8: $0d
	nop                                              ; $63f9: $00
	ld   a, [bc]                                     ; $63fa: $0a
	dec  c                                           ; $63fb: $0d
	nop                                              ; $63fc: $00
	nop                                              ; $63fd: $00
	rrca                                             ; $63fe: $0f
	nop                                              ; $63ff: $00
	ld   bc, $1e09                                   ; $6400: $01 $09 $1e
	nop                                              ; $6403: $00
	rrca                                             ; $6404: $0f
	nop                                              ; $6405: $00
	ld   bc, $a301                                   ; $6406: $01 $01 $a3
	and  l                                           ; $6409: $a5
	db   $ec                                         ; $640a: $ec
	cp   d                                           ; $640b: $ba
	ld   [hl], c                                     ; $640c: $71
	ld   [hl], h                                     ; $640d: $74
	sbc  [hl]                                        ; $640e: $9e
	ld   [hl], a                                     ; $640f: $77
	and  c                                           ; $6410: $a1
	ld   a, b                                        ; $6411: $78
	inc  bc                                          ; $6412: $03
	ld   l, d                                        ; $6413: $6a
	add  a                                           ; $6414: $87
	inc  b                                           ; $6415: $04
	sub  d                                           ; $6416: $92
	ld   e, d                                        ; $6417: $5a
	dec  c                                           ; $6418: $0d
	ld   [bc], a                                     ; $6419: $02
	sbc  d                                           ; $641a: $9a
	ld   e, e                                        ; $641b: $5b
	ld   a, b                                        ; $641c: $78
	ld   a, h                                        ; $641d: $7c
	ld   sp, hl                                      ; $641e: $f9
	dec  c                                           ; $641f: $0d
	nop                                              ; $6420: $00
	ld   a, [bc]                                     ; $6421: $0a
	inc  e                                           ; $6422: $1c
	inc  b                                           ; $6423: $04
	ld   bc, $0101                                   ; $6424: $01 $01 $01
	call c, $c9c4                                    ; $6427: $dc $c4 $c9
	or   d                                           ; $642a: $b2
	ei                                               ; $642b: $fb
	xor  [hl]                                        ; $642c: $ae
	ld   a, [$610d]                                  ; $642d: $fa $0d $61
	ld   a, h                                        ; $6430: $7c
	adc  h                                           ; $6431: $8c
	ld   d, [hl]                                     ; $6432: $56
	rst  JumpTable                                         ; $6433: $df
	db   $ec                                         ; $6434: $ec
	and  e                                           ; $6435: $a3
	ld   e, d                                        ; $6436: $5a
	ld   [hl], d                                     ; $6437: $72
	ld   e, l                                        ; $6438: $5d
	ld   [hl], c                                     ; $6439: $71
	ld   [hl], h                                     ; $643a: $74
	dec  c                                           ; $643b: $0d
	ld   e, l                                        ; $643c: $5d
	sbc  d                                           ; $643d: $9a
	ld   l, l                                        ; $643e: $6d
	and  c                                           ; $643f: $a1
	ld   l, [hl]                                     ; $6440: $6e
	sbc  a                                           ; $6441: $9f
	dec  c                                           ; $6442: $0d
	nop                                              ; $6443: $00
	ld   a, [bc]                                     ; $6444: $0a
	add  hl, de                                      ; $6445: $19
	dec  b                                           ; $6446: $05
	ld   [bc], a                                     ; $6447: $02
	inc  b                                           ; $6448: $04
	ld   l, l                                        ; $6449: $6d
	sub  b                                           ; $644a: $90
	inc  bc                                          ; $644b: $03
	ld   l, d                                        ; $644c: $6a
	add  a                                           ; $644d: $87
	ld   l, l                                        ; $644e: $6d
	ld   d, d                                        ; $644f: $52
	ld   a, b                                        ; $6450: $78
	nop                                              ; $6451: $00
	nop                                              ; $6452: $00
	dec  b                                           ; $6453: $05
	and  c                                           ; $6454: $a1
	ld   d, d                                        ; $6455: $52
	inc  b                                           ; $6456: $04
	sub  d                                           ; $6457: $92
	ld   a, [hl]                                     ; $6458: $7e
	ld   e, c                                        ; $6459: $59
	sbc  b                                           ; $645a: $98
	ld   l, [hl]                                     ; $645b: $6e
	halt                                             ; $645c: $76
	inc  b                                           ; $645d: $04
	inc  hl                                          ; $645e: $23
	sbc  c                                           ; $645f: $99
	sub  [hl]                                        ; $6460: $96
	nop                                              ; $6461: $00
	ld   bc, $0e07                                   ; $6462: $01 $07 $0e
	ld   bc, $0302                                   ; $6465: $01 $02 $03
	ld   bc, $2000                                   ; $6468: $01 $00 $20
	nop                                              ; $646b: $00
	rlca                                             ; $646c: $07
	ld   c, b                                        ; $646d: $48
	ld   bc, $0302                                   ; $646e: $01 $02 $03
	ld   bc, $2001                                   ; $6471: $01 $01 $20
	nop                                              ; $6474: $00
	ld   b, $91                                      ; $6475: $06 $91
	ld   bc, $000f                                   ; $6477: $01 $0f $00
	ld   bc, $0401                                   ; $647a: $01 $01 $04
	ld   l, l                                        ; $647d: $6d
	sub  b                                           ; $647e: $90
	inc  bc                                          ; $647f: $03
	ld   l, d                                        ; $6480: $6a
	add  a                                           ; $6481: $87
	ld   l, l                                        ; $6482: $6d
	ld   d, d                                        ; $6483: $52
	ld   a, b                                        ; $6484: $78
	sbc  a                                           ; $6485: $9f
	dec  c                                           ; $6486: $0d
	nop                                              ; $6487: $00
	ld   a, [bc]                                     ; $6488: $0a
	inc  e                                           ; $6489: $1c
	inc  b                                           ; $648a: $04
	ld   bc, $1d01                                   ; $648b: $01 $01 $1d
	ld   b, b                                        ; $648e: $40
	inc  d                                           ; $648f: $14
	inc  bc                                          ; $6490: $03
	inc  d                                           ; $6491: $14
	ld   bc, $2802                                   ; $6492: $01 $02 $28
	nop                                              ; $6495: $00
	ld   bc, $9166                                   ; $6496: $01 $66 $91
	sbc  [hl]                                        ; $6499: $9e
	ld   h, c                                        ; $649a: $61
	and  c                                           ; $649b: $a1
	ld   [hl], a                                     ; $649c: $77
	rst  JumpTable                                         ; $649d: $df
	db   $ec                                         ; $649e: $ec
	and  e                                           ; $649f: $a3
	ld   a, c                                        ; $64a0: $79
	dec  c                                           ; $64a1: $0d
	ld   [hl], d                                     ; $64a2: $72
	ld   e, l                                        ; $64a3: $5d
	ld   [hl], c                                     ; $64a4: $71
	ld   [hl], h                                     ; $64a5: $74
	sub  b                                           ; $64a6: $90
	sub  a                                           ; $64a7: $97
	ld   e, b                                        ; $64a8: $58
	ld   d, h                                        ; $64a9: $54
	sub  [hl]                                        ; $64aa: $96
	sbc  a                                           ; $64ab: $9f
	dec  c                                           ; $64ac: $0d
	nop                                              ; $64ad: $00
	ld   a, [bc]                                     ; $64ae: $0a
	ld   b, $91                                      ; $64af: $06 $91
	ld   bc, $000f                                   ; $64b1: $01 $0f $00
	ld   bc, $0501                                   ; $64b4: $01 $01 $05
	and  c                                           ; $64b7: $a1
	ld   d, d                                        ; $64b8: $52
	inc  b                                           ; $64b9: $04
	sub  d                                           ; $64ba: $92
	ld   a, [hl]                                     ; $64bb: $7e
	ld   e, c                                        ; $64bc: $59
	sbc  b                                           ; $64bd: $98
	ld   l, [hl]                                     ; $64be: $6e
	halt                                             ; $64bf: $76
	inc  b                                           ; $64c0: $04
	inc  hl                                          ; $64c1: $23
	sbc  c                                           ; $64c2: $99
	sub  [hl]                                        ; $64c3: $96
	sbc  a                                           ; $64c4: $9f
	dec  c                                           ; $64c5: $0d
	nop                                              ; $64c6: $00
	ld   a, [bc]                                     ; $64c7: $0a
	inc  e                                           ; $64c8: $1c
	inc  b                                           ; $64c9: $04
	rlca                                             ; $64ca: $07
	rlca                                             ; $64cb: $07
	dec  e                                           ; $64cc: $1d
	ld   b, b                                        ; $64cd: $40
	inc  d                                           ; $64ce: $14
	inc  bc                                          ; $64cf: $03
	inc  d                                           ; $64d0: $14
	ld   bc, $2903                                   ; $64d1: $01 $03 $29
	nop                                              ; $64d4: $00
	ld   bc, $a5a3                                   ; $64d5: $01 $a3 $a5
	db   $ec                                         ; $64d8: $ec
	cp   d                                           ; $64d9: $ba
	sbc  [hl]                                        ; $64da: $9e
	add  e                                           ; $64db: $83
	halt                                             ; $64dc: $76
	sub  a                                           ; $64dd: $97
	ld   a, b                                        ; $64de: $78
	ld   d, d                                        ; $64df: $52
	sub  b                                           ; $64e0: $90
	and  c                                           ; $64e1: $a1
	ld   a, [$6f0d]                                  ; $64e2: $fa $0d $6f
	ld   d, d                                        ; $64e5: $52
	ld   [bc], a                                     ; $64e6: $02
	inc  de                                          ; $64e7: $13
	ld   l, a                                        ; $64e8: $6f
	sub  c                                           ; $64e9: $91
	and  c                                           ; $64ea: $a1
	ld   a, h                                        ; $64eb: $7c
	pop  de                                          ; $64ec: $d1
	xor  h                                           ; $64ed: $ac
	ld   a, [$000d]                                  ; $64ee: $fa $0d $00
	ld   a, [bc]                                     ; $64f1: $0a
	dec  c                                           ; $64f2: $0d
	nop                                              ; $64f3: $00
	nop                                              ; $64f4: $00
	rrca                                             ; $64f5: $0f
	nop                                              ; $64f6: $00
	ld   bc, $1e09                                   ; $64f7: $01 $09 $1e
	nop                                              ; $64fa: $00
	inc  e                                           ; $64fb: $1c
	inc  b                                           ; $64fc: $04
	nop                                              ; $64fd: $00
	nop                                              ; $64fe: $00
	ld   bc, $9166                                   ; $64ff: $01 $66 $91
	sbc  [hl]                                        ; $6502: $9e
	adc  h                                           ; $6503: $8c
	ld   l, l                                        ; $6504: $6d
	ld   d, b                                        ; $6505: $50
	halt                                             ; $6506: $76
	ld   [hl], l                                     ; $6507: $75
	ld   a, e                                        ; $6508: $7b
	sbc  a                                           ; $6509: $9f
	dec  c                                           ; $650a: $0d
	nop                                              ; $650b: $00
	ld   a, [bc]                                     ; $650c: $0a
	dec  c                                           ; $650d: $0d
	nop                                              ; $650e: $00
	nop                                              ; $650f: $00
	rrca                                             ; $6510: $0f
	nop                                              ; $6511: $00
	ld   bc, $1e09                                   ; $6512: $01 $09 $1e
	nop                                              ; $6515: $00
	rrca                                             ; $6516: $0f
	nop                                              ; $6517: $00
	ld   bc, $a301                                   ; $6518: $01 $01 $a3
	and  l                                           ; $651b: $a5
	db   $ec                                         ; $651c: $ec
	cp   d                                           ; $651d: $ba
	ld   [hl], c                                     ; $651e: $71
	ld   [hl], h                                     ; $651f: $74
	dec  b                                           ; $6520: $05
	dec  bc                                          ; $6521: $0b
	inc  bc                                          ; $6522: $03
	add  d                                           ; $6523: $82
	halt                                             ; $6524: $76
	ld   e, c                                        ; $6525: $59
	dec  c                                           ; $6526: $0d
	ld   d, d                                        ; $6527: $52
	sbc  c                                           ; $6528: $99
	ld   a, h                                        ; $6529: $7c
	ld   sp, hl                                      ; $652a: $f9
	dec  c                                           ; $652b: $0d
	nop                                              ; $652c: $00
	ld   a, [bc]                                     ; $652d: $0a
	inc  e                                           ; $652e: $1c
	inc  b                                           ; $652f: $04
	ld   bc, $0101                                   ; $6530: $01 $01 $01
	ld   d, h                                        ; $6533: $54
	and  c                                           ; $6534: $a1
	sbc  [hl]                                        ; $6535: $9e
	ld   d, d                                        ; $6536: $52
	sbc  c                                           ; $6537: $99
	sub  [hl]                                        ; $6538: $96
	sbc  a                                           ; $6539: $9f
	dec  c                                           ; $653a: $0d
	ld   e, b                                        ; $653b: $58
	ld   [bc], a                                     ; $653c: $02
	inc  de                                          ; $653d: $13
	ld   l, a                                        ; $653e: $6f
	sub  c                                           ; $653f: $91
	and  c                                           ; $6540: $a1
	ld   a, [$000d]                                  ; $6541: $fa $0d $00
	ld   a, [bc]                                     ; $6544: $0a
	rrca                                             ; $6545: $0f
	nop                                              ; $6546: $00
	ld   bc, $5801                                   ; $6547: $01 $01 $58
	ld   [bc], a                                     ; $654a: $02
	inc  de                                          ; $654b: $13
	ld   l, a                                        ; $654c: $6f
	sub  c                                           ; $654d: $91
	and  c                                           ; $654e: $a1
	rst  $38                                         ; $654f: $ff
	rst  $38                                         ; $6550: $ff
	ld   sp, hl                                      ; $6551: $f9
	dec  c                                           ; $6552: $0d
	inc  b                                           ; $6553: $04
	ld   c, $03                                      ; $6554: $0e $03
	sub  b                                           ; $6556: $90
	inc  b                                           ; $6557: $04
	ld   a, [bc]                                     ; $6558: $0a
	inc  bc                                          ; $6559: $03
	jp   nc, Jump_058_617c                           ; $655a: $d2 $7c $61

	halt                                             ; $655d: $76
	ld   e, c                                        ; $655e: $59
	ld   d, d                                        ; $655f: $52
	ld   sp, hl                                      ; $6560: $f9
	dec  c                                           ; $6561: $0d
	nop                                              ; $6562: $00
	ld   a, [bc]                                     ; $6563: $0a
	inc  e                                           ; $6564: $1c
	inc  b                                           ; $6565: $04
	dec  b                                           ; $6566: $05
	dec  b                                           ; $6567: $05
	ld   bc, $a154                                   ; $6568: $01 $54 $a1
	ld   a, [$580d]                                  ; $656b: $fa $0d $58
	ld   [bc], a                                     ; $656e: $02
	inc  de                                          ; $656f: $13
	ld   l, a                                        ; $6570: $6f
	sub  c                                           ; $6571: $91
	and  c                                           ; $6572: $a1
	halt                                             ; $6573: $76
	and  e                                           ; $6574: $a3

Jump_058_6575:
	and  l                                           ; $6575: $a5

Jump_058_6576:
	db   $ec                                         ; $6576: $ec
	cp   d                                           ; $6577: $ba
	ld   a, l                                        ; $6578: $7d
	dec  c                                           ; $6579: $0d
	ld   h, l                                        ; $657a: $65
	sub  l                                           ; $657b: $95
	ld   d, h                                        ; $657c: $54
	sub  a                                           ; $657d: $97
	ld   d, d                                        ; $657e: $52
	ld   e, a                                        ; $657f: $5f
	ld   [hl], c                                     ; $6580: $71
	ld   h, c                                        ; $6581: $61
	and  c                                           ; $6582: $a1
	ld   h, a                                        ; $6583: $67
	sbc  c                                           ; $6584: $99
	ld   a, h                                        ; $6585: $7c
	sbc  a                                           ; $6586: $9f
	dec  c                                           ; $6587: $0d
	nop                                              ; $6588: $00
	ld   a, [bc]                                     ; $6589: $0a
	ld   bc, $7c6b                                   ; $658a: $01 $6b $7c
	halt                                             ; $658d: $76
	ld   e, e                                        ; $658e: $5b
	ld   a, l                                        ; $658f: $7d
	sbc  [hl]                                        ; $6590: $9e
	ld   l, a                                        ; $6591: $6f
	ld   d, d                                        ; $6592: $52
	ld   [bc], a                                     ; $6593: $02
	inc  de                                          ; $6594: $13
	ld   l, a                                        ; $6595: $6f
	sub  c                                           ; $6596: $91
	and  c                                           ; $6597: $a1
	sub  b                                           ; $6598: $90
	dec  c                                           ; $6599: $0d
	ld   h, l                                        ; $659a: $65
	sub  l                                           ; $659b: $95
	ld   d, h                                        ; $659c: $54
	ld   l, l                                        ; $659d: $6d
	ld   d, d                                        ; $659e: $52
	ld   h, l                                        ; $659f: $65
	ld   [hl], h                                     ; $65a0: $74
	ld   d, b                                        ; $65a1: $50
	ld   h, b                                        ; $65a2: $60
	sbc  c                                           ; $65a3: $99
	ld   a, e                                        ; $65a4: $7b
	sbc  a                                           ; $65a5: $9f
	dec  c                                           ; $65a6: $0d
	nop                                              ; $65a7: $00
	ld   a, [bc]                                     ; $65a8: $0a
	nop                                              ; $65a9: $00
	rrca                                             ; $65aa: $0f
	nop                                              ; $65ab: $00
	ld   bc, $a301                                   ; $65ac: $01 $01 $a3
	and  l                                           ; $65af: $a5
	db   $ec                                         ; $65b0: $ec
	cp   d                                           ; $65b1: $ba
	sbc  a                                           ; $65b2: $9f
	ld   h, c                                        ; $65b3: $61
	sbc  d                                           ; $65b4: $9a
	inc  b                                           ; $65b5: $04
	ld   hl, $bc03                                   ; $65b6: $21 $03 $bc
	ld   e, c                                        ; $65b9: $59
	sub  a                                           ; $65ba: $97
	dec  c                                           ; $65bb: $0d
	inc  bc                                          ; $65bc: $03
	sbc  a                                           ; $65bd: $9f
	ld   [hl], c                                     ; $65be: $71
	ld   [hl], h                                     ; $65bf: $74
	ld   e, e                                        ; $65c0: $5b
	ld   l, l                                        ; $65c1: $6d
	and  c                                           ; $65c2: $a1
	ld   l, [hl]                                     ; $65c3: $6e
	ld   e, a                                        ; $65c4: $5f
	ld   [hl], a                                     ; $65c5: $77
	rst  $38                                         ; $65c6: $ff
	rst  $38                                         ; $65c7: $ff
	dec  c                                           ; $65c8: $0d
	nop                                              ; $65c9: $00
	ld   a, [bc]                                     ; $65ca: $0a
	inc  e                                           ; $65cb: $1c
	inc  b                                           ; $65cc: $04
	ld   bc, $0101                                   ; $65cd: $01 $01 $01
	ld   d, [hl]                                     ; $65d0: $56
	ld   sp, hl                                      ; $65d1: $f9
	dec  c                                           ; $65d2: $0d
	ld   a, b                                        ; $65d3: $78
	ld   a, c                                        ; $65d4: $79
	sbc  [hl]                                        ; $65d5: $9e
	ld   a, b                                        ; $65d6: $78
	ld   a, c                                        ; $65d7: $79
	sbc  [hl]                                        ; $65d8: $9e
	ld   a, b                                        ; $65d9: $78
	ld   a, c                                        ; $65da: $79
	ld   sp, hl                                      ; $65db: $f9
	dec  c                                           ; $65dc: $0d
	nop                                              ; $65dd: $00
	ld   a, [bc]                                     ; $65de: $0a
	rrca                                             ; $65df: $0f
	nop                                              ; $65e0: $00
	ld   bc, $0101                                   ; $65e1: $01 $01 $01
	inc  bc                                          ; $65e4: $03
	ld   h, e                                        ; $65e5: $63
	ld   [hl], h                                     ; $65e6: $74
	sbc  [hl]                                        ; $65e7: $9e
	ld   [hl], a                                     ; $65e8: $77
	sbc  d                                           ; $65e9: $9a
	and  b                                           ; $65ea: $a0
	inc  bc                                          ; $65eb: $03
	ld   [$546b], a                                  ; $65ec: $ea $6b $54
	ld   e, c                                        ; $65ef: $59
	ld   a, b                                        ; $65f0: $78
	ld   sp, hl                                      ; $65f1: $f9
	ld   bc, $0d04                                   ; $65f2: $01 $04 $0d
	nop                                              ; $65f5: $00
	ld   a, [bc]                                     ; $65f6: $0a
	jr   @+$05                                       ; $65f7: $18 $03

	nop                                              ; $65f9: $00
	ret  nc                                          ; $65fa: $d0

	jp   nz, $c5e0                                   ; $65fb: $c2 $e0 $c5

	nop                                              ; $65fe: $00
	nop                                              ; $65ff: $00
	inc  b                                           ; $6600: $04
	add  h                                           ; $6601: $84
	ld   [bc], a                                     ; $6602: $02
	add  h                                           ; $6603: $84
	ld   [bc], a                                     ; $6604: $02
	jp   $0004                                       ; $6605: $c3 $04 $00


	nop                                              ; $6608: $00
	ld   bc, $5803                                   ; $6609: $01 $03 $58
	inc  bc                                          ; $660c: $03
	ld   e, c                                        ; $660d: $59
	ld   [bc], a                                     ; $660e: $02
	cp   c                                           ; $660f: $b9
	nop                                              ; $6610: $00
	ld   [bc], a                                     ; $6611: $02
	rlca                                             ; $6612: $07
	jp   $0202                                       ; $6613: $c3 $02 $02


	ld   [bc], a                                     ; $6616: $02
	ld   bc, $2000                                   ; $6617: $01 $00 $20
	nop                                              ; $661a: $00
	rlca                                             ; $661b: $07
	inc  b                                           ; $661c: $04
	inc  bc                                          ; $661d: $03
	ld   [bc], a                                     ; $661e: $02
	ld   [bc], a                                     ; $661f: $02
	ld   bc, $2001                                   ; $6620: $01 $01 $20
	nop                                              ; $6623: $00
	rlca                                             ; $6624: $07
	ld   d, e                                        ; $6625: $53
	inc  bc                                          ; $6626: $03
	ld   [bc], a                                     ; $6627: $02
	ld   [bc], a                                     ; $6628: $02
	ld   bc, $2002                                   ; $6629: $01 $02 $20
	nop                                              ; $662c: $00
	rrca                                             ; $662d: $0f
	nop                                              ; $662e: $00
	ld   bc, $2210                                   ; $662f: $01 $10 $22
	nop                                              ; $6632: $00
	ld   bc, $c2d0                                   ; $6633: $01 $d0 $c2
	ldh  [$c5], a                                    ; $6636: $e0 $c5
	ld   a, b                                        ; $6638: $78
	and  c                                           ; $6639: $a1
	ld   l, [hl]                                     ; $663a: $6e
	ld   e, a                                        ; $663b: $5f
	ld   [hl], a                                     ; $663c: $77
	dec  c                                           ; $663d: $0d
	inc  bc                                          ; $663e: $03
	ld   l, d                                        ; $663f: $6a
	add  a                                           ; $6640: $87
	sbc  c                                           ; $6641: $99
	ld   e, c                                        ; $6642: $59
	ld   d, d                                        ; $6643: $52
	ld   sp, hl                                      ; $6644: $f9
	dec  c                                           ; $6645: $0d
	nop                                              ; $6646: $00
	ld   a, [bc]                                     ; $6647: $0a
	inc  e                                           ; $6648: $1c
	inc  b                                           ; $6649: $04
	ld   bc, $1d01                                   ; $664a: $01 $01 $1d
	ld   b, b                                        ; $664d: $40
	inc  d                                           ; $664e: $14
	inc  bc                                          ; $664f: $03
	inc  d                                           ; $6650: $14
	ld   bc, $2802                                   ; $6651: $01 $02 $28
	nop                                              ; $6654: $00
	ld   bc, $a154                                   ; $6655: $01 $54 $a1
	ld   a, [$500d]                                  ; $6658: $fa $0d $50
	sbc  b                                           ; $665b: $98
	ld   e, d                                        ; $665c: $5a
	halt                                             ; $665d: $76
	ld   d, h                                        ; $665e: $54
	sbc  [hl]                                        ; $665f: $9e
	ld   l, a                                        ; $6660: $6f
	ld   d, d                                        ; $6661: $52
	ld   [bc], a                                     ; $6662: $02
	inc  de                                          ; $6663: $13
	ld   l, a                                        ; $6664: $6f
	sub  c                                           ; $6665: $91
	and  c                                           ; $6666: $a1
	ld   a, [$000d]                                  ; $6667: $fa $0d $00
	ld   a, [bc]                                     ; $666a: $0a
	ld   b, $84                                      ; $666b: $06 $84
	inc  bc                                          ; $666d: $03
	rrca                                             ; $666e: $0f
	nop                                              ; $666f: $00
	ld   bc, $2310                                   ; $6670: $01 $10 $23
	nop                                              ; $6673: $00
	ld   bc, $8404                                   ; $6674: $01 $04 $84
	ld   [bc], a                                     ; $6677: $02
	add  h                                           ; $6678: $84
	ld   [bc], a                                     ; $6679: $02
	jp   $0004                                       ; $667a: $c3 $04 $00


	ld   l, [hl]                                     ; $667d: $6e
	ld   e, a                                        ; $667e: $5f
	ld   [hl], a                                     ; $667f: $77
	inc  b                                           ; $6680: $04
	ld   de, $f98e                                   ; $6681: $11 $8e $f9
	dec  c                                           ; $6684: $0d
	nop                                              ; $6685: $00
	ld   a, [bc]                                     ; $6686: $0a
	inc  e                                           ; $6687: $1c
	inc  b                                           ; $6688: $04
	ld   bc, $1d01                                   ; $6689: $01 $01 $1d
	ld   b, b                                        ; $668c: $40
	inc  d                                           ; $668d: $14
	inc  bc                                          ; $668e: $03
	inc  d                                           ; $668f: $14
	ld   bc, $2803                                   ; $6690: $01 $03 $28
	nop                                              ; $6693: $00
	ld   bc, $9e50                                   ; $6694: $01 $50 $9e
	ld   e, b                                        ; $6697: $58
	ld   h, l                                        ; $6698: $65
	ld   a, [hl]                                     ; $6699: $7e
	ld   a, b                                        ; $669a: $78
	ld   [hl], d                                     ; $669b: $72
	ld   e, l                                        ; $669c: $5d
	sbc  c                                           ; $669d: $99
	ld   a, h                                        ; $669e: $7c
	ld   a, c                                        ; $669f: $79
	dec  c                                           ; $66a0: $0d
	ld   l, a                                        ; $66a1: $6f
	sub  l                                           ; $66a2: $95
	ld   d, h                                        ; $66a3: $54
	ld   [hl], a                                     ; $66a4: $77
	ld   d, d                                        ; $66a5: $52
	ld   d, d                                        ; $66a6: $52
	ld   a, [$500d]                                  ; $66a7: $fa $0d $50
	sbc  b                                           ; $66aa: $98
	ld   e, d                                        ; $66ab: $5a
	halt                                             ; $66ac: $76
	ld   d, h                                        ; $66ad: $54
	sbc  [hl]                                        ; $66ae: $9e
	ld   l, a                                        ; $66af: $6f
	ld   d, d                                        ; $66b0: $52
	ld   [bc], a                                     ; $66b1: $02
	inc  de                                          ; $66b2: $13
	ld   l, a                                        ; $66b3: $6f
	sub  c                                           ; $66b4: $91
	and  c                                           ; $66b5: $a1
	ld   a, [$000d]                                  ; $66b6: $fa $0d $00
	ld   a, [bc]                                     ; $66b9: $0a
	ld   b, $84                                      ; $66ba: $06 $84
	inc  bc                                          ; $66bc: $03
	rrca                                             ; $66bd: $0f
	nop                                              ; $66be: $00
	ld   bc, $2410                                   ; $66bf: $01 $10 $24
	nop                                              ; $66c2: $00
	ld   bc, $5803                                   ; $66c3: $01 $03 $58
	inc  bc                                          ; $66c6: $03
	ld   e, c                                        ; $66c7: $59
	ld   [bc], a                                     ; $66c8: $02
	cp   c                                           ; $66c9: $b9
	ld   l, [hl]                                     ; $66ca: $6e
	ld   e, a                                        ; $66cb: $5f
	ld   [hl], a                                     ; $66cc: $77
	sbc  [hl]                                        ; $66cd: $9e
	ld   e, c                                        ; $66ce: $59
	ld   h, h                                        ; $66cf: $64
	sbc  c                                           ; $66d0: $99
	ld   e, c                                        ; $66d1: $59
	ld   d, d                                        ; $66d2: $52
	ld   sp, hl                                      ; $66d3: $f9
	dec  c                                           ; $66d4: $0d
	nop                                              ; $66d5: $00
	ld   a, [bc]                                     ; $66d6: $0a
	inc  e                                           ; $66d7: $1c
	inc  b                                           ; $66d8: $04
	inc  bc                                          ; $66d9: $03
	inc  bc                                          ; $66da: $03
	dec  e                                           ; $66db: $1d
	ld   b, b                                        ; $66dc: $40
	inc  d                                           ; $66dd: $14

jr_058_66de:
	inc  bc                                          ; $66de: $03
	inc  d                                           ; $66df: $14
	ld   bc, $2902                                   ; $66e0: $01 $02 $29
	nop                                              ; $66e3: $00
	ld   bc, $9752                                   ; $66e4: $01 $52 $97
	ld   a, b                                        ; $66e7: $78
	ld   d, d                                        ; $66e8: $52
	rst  $38                                         ; $66e9: $ff
	rst  $38                                         ; $66ea: $ff
	dec  c                                           ; $66eb: $0d
	nop                                              ; $66ec: $00
	ld   a, [bc]                                     ; $66ed: $0a
	ld   bc, $9166                                   ; $66ee: $01 $66 $91
	sbc  [hl]                                        ; $66f1: $9e
	ld   d, d                                        ; $66f2: $52
	ld   h, c                                        ; $66f3: $61
	ld   d, h                                        ; $66f4: $54
	cp   c                                           ; $66f5: $b9
	push hl                                          ; $66f6: $e5
	push af                                          ; $66f7: $f5
	sbc  $fb                                         ; $66f8: $de $fb
	db   $ed                                         ; $66fa: $ed
	sbc  a                                           ; $66fb: $9f
	dec  c                                           ; $66fc: $0d
	nop                                              ; $66fd: $00
	ld   a, [bc]                                     ; $66fe: $0a
	dec  c                                           ; $66ff: $0d
	nop                                              ; $6700: $00
	nop                                              ; $6701: $00
	rrca                                             ; $6702: $0f
	nop                                              ; $6703: $00
	ld   bc, $1e09                                   ; $6704: $01 $09 $1e
	nop                                              ; $6707: $00
	nop                                              ; $6708: $00
	rrca                                             ; $6709: $0f
	nop                                              ; $670a: $00
	ld   bc, $060d                                   ; $670b: $01 $0d $06
	nop                                              ; $670e: $00
	ld   [bc], a                                     ; $670f: $02
	ld   bc, $7d58                                   ; $6710: $01 $58 $7d
	sub  [hl]                                        ; $6713: $96
	ld   d, h                                        ; $6714: $54
	ld   h, d                                        ; $6715: $62
	ld   h, h                                        ; $6716: $64
	ld   d, d                                        ; $6717: $52
	adc  h                                           ; $6718: $8c
	ld   h, a                                        ; $6719: $67
	sbc  a                                           ; $671a: $9f
	dec  c                                           ; $671b: $0d
	nop                                              ; $671c: $00
	ld   a, [bc]                                     ; $671d: $0a
	inc  e                                           ; $671e: $1c
	ld   b, $01                                      ; $671f: $06 $01
	ld   bc, $9601                                   ; $6721: $01 $01 $96
	ld   e, b                                        ; $6724: $58
	sbc  [hl]                                        ; $6725: $9e
	ld   [$9f00], sp                                 ; $6726: $08 $00 $9f
	dec  c                                           ; $6729: $0d
	ld   e, b                                        ; $672a: $58
	ld   a, l                                        ; $672b: $7d
	sub  [hl]                                        ; $672c: $96
	ld   d, h                                        ; $672d: $54
	sbc  a                                           ; $672e: $9f
	dec  c                                           ; $672f: $0d
	nop                                              ; $6730: $00
	ld   a, [bc]                                     ; $6731: $0a
	rrca                                             ; $6732: $0f
	nop                                              ; $6733: $00
	ld   bc, $0101                                   ; $6734: $01 $01 $01
	inc  bc                                          ; $6737: $03
	inc  b                                           ; $6738: $04
	ld   c, c                                        ; $6739: $49
	ld   a, h                                        ; $673a: $7c
	dec  b                                           ; $673b: $05
	jr   nz, jr_058_66de                             ; $673c: $20 $a0

	ld   h, l                                        ; $673e: $65
	sub  [hl]                                        ; $673f: $96
	ld   d, h                                        ; $6740: $54
	ld   e, c                                        ; $6741: $59
	ld   a, b                                        ; $6742: $78
	rst  $38                                         ; $6743: $ff
	rst  $38                                         ; $6744: $ff
	ld   bc, $0d04                                   ; $6745: $01 $04 $0d
	nop                                              ; $6748: $00
	ld   a, [bc]                                     ; $6749: $0a
	add  hl, de                                      ; $674a: $19
	dec  b                                           ; $674b: $05
	inc  bc                                          ; $674c: $03
	inc  b                                           ; $674d: $04
	ld   [$9202], sp                                 ; $674e: $08 $02 $92
	ld   a, h                                        ; $6751: $7c
	inc  bc                                          ; $6752: $03
	ld   l, d                                        ; $6753: $6a
	ld   [bc], a                                     ; $6754: $02
	jp   Jump_058_7279                               ; $6755: $c3 $79 $72


	ld   d, d                                        ; $6758: $52
	ld   [hl], h                                     ; $6759: $74
	nop                                              ; $675a: $00
	nop                                              ; $675b: $00
	inc  bc                                          ; $675c: $03
	sub  h                                           ; $675d: $94
	inc  b                                           ; $675e: $04
	sbc  [hl]                                        ; $675f: $9e
	ld   a, h                                        ; $6760: $7c
	ld   h, c                                        ; $6761: $61
	halt                                             ; $6762: $76
	and  b                                           ; $6763: $a0
	ld   [bc], a                                     ; $6764: $02
	jp   nz, $005d                                   ; $6765: $c2 $5d $00

	ld   bc, $5d63                                   ; $6768: $01 $63 $5d
	sub  a                                           ; $676b: $97
	ld   a, c                                        ; $676c: $79
	ld   [hl], d                                     ; $676d: $72
	ld   d, d                                        ; $676e: $52
	ld   [hl], h                                     ; $676f: $74
	ld   [bc], a                                     ; $6770: $02
	jp   nz, $005d                                   ; $6771: $c2 $5d $00

	ld   [bc], a                                     ; $6774: $02

Jump_058_6775:
	rlca                                             ; $6775: $07
	xor  e                                           ; $6776: $ab
	nop                                              ; $6777: $00
	ld   [bc], a                                     ; $6778: $02
	inc  bc                                          ; $6779: $03
	ld   bc, $2000                                   ; $677a: $01 $00 $20
	nop                                              ; $677d: $00
	rlca                                             ; $677e: $07
	ld   a, [hl-]                                    ; $677f: $3a
	ld   [bc], a                                     ; $6780: $02
	ld   [bc], a                                     ; $6781: $02
	inc  bc                                          ; $6782: $03
	ld   bc, $2001                                   ; $6783: $01 $01 $20
	nop                                              ; $6786: $00
	rlca                                             ; $6787: $07
	ld   b, [hl]                                     ; $6788: $46
	inc  bc                                          ; $6789: $03
	ld   [bc], a                                     ; $678a: $02
	inc  bc                                          ; $678b: $03
	ld   bc, $2002                                   ; $678c: $01 $02 $20
	nop                                              ; $678f: $00
	ld   b, $8a                                      ; $6790: $06 $8a
	nop                                              ; $6792: $00
	rrca                                             ; $6793: $0f
	ld   b, $01                                      ; $6794: $06 $01
	ld   bc, $a502                                   ; $6796: $01 $02 $a5
	inc  b                                           ; $6799: $04
	xor  d                                           ; $679a: $aa
	sub  b                                           ; $679b: $90
	ld   [bc], a                                     ; $679c: $02
	jr   nz, jr_058_67a3                             ; $679d: $20 $04

	xor  d                                           ; $679f: $aa
	sbc  [hl]                                        ; $67a0: $9e
	ld   e, d                                        ; $67a1: $5a
	and  c                                           ; $67a2: $a1

jr_058_67a3:
	ld   a, [hl]                                     ; $67a3: $7e
	sbc  d                                           ; $67a4: $9a
	sub  [hl]                                        ; $67a5: $96
	ld   a, b                                        ; $67a6: $78
	sbc  a                                           ; $67a7: $9f
	dec  c                                           ; $67a8: $0d
	nop                                              ; $67a9: $00
	ld   a, [bc]                                     ; $67aa: $0a
	dec  c                                           ; $67ab: $0d
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	rrca                                             ; $67ae: $0f
	nop                                              ; $67af: $00
	ld   bc, $1e09                                   ; $67b0: $01 $09 $1e
	nop                                              ; $67b3: $00
	rrca                                             ; $67b4: $0f
	nop                                              ; $67b5: $00
	ld   bc, $ac01                                   ; $67b6: $01 $01 $ac
	push af                                          ; $67b9: $f5
	bit  4, e                                        ; $67ba: $cb $63
	and  c                                           ; $67bc: $a1
	ld   a, l                                        ; $67bd: $7d
	sbc  [hl]                                        ; $67be: $9e
	ld   h, c                                        ; $67bf: $61
	ld   h, c                                        ; $67c0: $61
	ld   a, h                                        ; $67c1: $7c
	inc  bc                                          ; $67c2: $03
	ld   l, d                                        ; $67c3: $6a
	ld   [bc], a                                     ; $67c4: $02
	jp   $0da0                                       ; $67c5: $c3 $a0 $0d


	ld   [hl], a                                     ; $67c8: $77
	ld   d, h                                        ; $67c9: $54
	dec  b                                           ; $67ca: $05
	pop  de                                          ; $67cb: $d1
	ld   d, d                                        ; $67cc: $52
	adc  h                                           ; $67cd: $8c
	ld   h, a                                        ; $67ce: $67
	ld   e, c                                        ; $67cf: $59
	ld   sp, hl                                      ; $67d0: $f9
	dec  c                                           ; $67d1: $0d
	nop                                              ; $67d2: $00
	ld   a, [bc]                                     ; $67d3: $0a
	inc  e                                           ; $67d4: $1c
	ld   b, $00                                      ; $67d5: $06 $00
	nop                                              ; $67d7: $00
	ld   bc, $8c54                                   ; $67d8: $01 $54 $8c
	ld   d, d                                        ; $67db: $52
	ld   a, c                                        ; $67dc: $79
	ld   e, e                                        ; $67dd: $5b
	adc  h                                           ; $67de: $8c
	ld   [hl], c                                     ; $67df: $71
	ld   [hl], h                                     ; $67e0: $74
	sbc  c                                           ; $67e1: $99
	ld   l, [hl]                                     ; $67e2: $6e
	sbc  e                                           ; $67e3: $9b
	sbc  a                                           ; $67e4: $9f
	dec  c                                           ; $67e5: $0d
	ld   l, e                                        ; $67e6: $6b
	ld   d, h                                        ; $67e7: $54
	ld   d, d                                        ; $67e8: $52
	ld   d, h                                        ; $67e9: $54
	ld   e, b                                        ; $67ea: $58
	inc  bc                                          ; $67eb: $03
	ld   c, a                                        ; $67ec: $4f
	ld   a, l                                        ; $67ed: $7d
	dec  c                                           ; $67ee: $0d
	ld   [hl], a                                     ; $67ef: $77
	ld   d, h                                        ; $67f0: $54
	ld   a, b                                        ; $67f1: $78
	and  c                                           ; $67f2: $a1
	ld   l, [hl]                                     ; $67f3: $6e
	sub  [hl]                                        ; $67f4: $96
	ld   sp, hl                                      ; $67f5: $f9
	dec  c                                           ; $67f6: $0d
	nop                                              ; $67f7: $00
	ld   a, [bc]                                     ; $67f8: $0a
	add  hl, de                                      ; $67f9: $19
	dec  b                                           ; $67fa: $05
	ld   [bc], a                                     ; $67fb: $02
	ld   d, h                                        ; $67fc: $54
	adc  h                                           ; $67fd: $8c
	ld   d, d                                        ; $67fe: $52
	nop                                              ; $67ff: $00
	nop                                              ; $6800: $00
	adc  h                                           ; $6801: $8c
	ld   l, b                                        ; $6802: $68
	ld   d, d                                        ; $6803: $52
	nop                                              ; $6804: $00
	ld   bc, $1207                                   ; $6805: $01 $07 $12
	ld   bc, $0302                                   ; $6808: $01 $02 $03
	ld   bc, $2000                                   ; $680b: $01 $00 $20
	nop                                              ; $680e: $00
	rlca                                             ; $680f: $07
	ld   [hl], e                                     ; $6810: $73
	ld   bc, $0302                                   ; $6811: $01 $02 $03
	ld   bc, $2001                                   ; $6814: $01 $01 $20
	nop                                              ; $6817: $00
	ld   b, $f3                                      ; $6818: $06 $f3
	ld   bc, $000f                                   ; $681a: $01 $0f $00
	ld   bc, $9001                                   ; $681d: $01 $01 $90
	ld   l, a                                        ; $6820: $6f
	sbc  e                                           ; $6821: $9b
	and  c                                           ; $6822: $a1
	sbc  [hl]                                        ; $6823: $9e
	ld   d, h                                        ; $6824: $54
	adc  h                                           ; $6825: $8c
	ld   d, d                                        ; $6826: $52
	ld   [hl], l                                     ; $6827: $75
	ld   h, a                                        ; $6828: $67
	sub  [hl]                                        ; $6829: $96
	sbc  a                                           ; $682a: $9f
	dec  c                                           ; $682b: $0d
	nop                                              ; $682c: $00
	ld   a, [bc]                                     ; $682d: $0a
	inc  e                                           ; $682e: $1c
	ld   b, $01                                      ; $682f: $06 $01
	ld   bc, $401d                                   ; $6831: $01 $1d $40
	ld   d, $03                                      ; $6834: $16 $03
	ld   d, $01                                      ; $6836: $16 $01
	inc  bc                                          ; $6838: $03
	jr   z, jr_058_683b                              ; $6839: $28 $00

jr_058_683b:
	ld   bc, $546b                                   ; $683b: $01 $6b $54
	ld   l, [hl]                                     ; $683e: $6e
	sub  [hl]                                        ; $683f: $96
	ld   a, b                                        ; $6840: $78
	sbc  a                                           ; $6841: $9f
	dec  c                                           ; $6842: $0d
	sub  [hl]                                        ; $6843: $96
	ld   h, l                                        ; $6844: $65
	sbc  [hl]                                        ; $6845: $9e
	ld   [bc], a                                     ; $6846: $02
	and  l                                           ; $6847: $a5
	inc  b                                           ; $6848: $04
	add  hl, hl                                      ; $6849: $29
	ld   d, d                                        ; $684a: $52
	ld   [hl], c                                     ; $684b: $71
	ld   h, l                                        ; $684c: $65
	sub  l                                           ; $684d: $95
	ld   a, c                                        ; $684e: $79
	dec  c                                           ; $684f: $0d
	db   $e3                                         ; $6850: $e3
	cp   b                                           ; $6851: $b8
	inc  bc                                          ; $6852: $03
	ld   l, d                                        ; $6853: $6a
	ld   e, b                                        ; $6854: $58
	ld   d, h                                        ; $6855: $54
	ld   l, d                                        ; $6856: $6a
	sbc  a                                           ; $6857: $9f
	dec  c                                           ; $6858: $0d
	nop                                              ; $6859: $00
	ld   a, [bc]                                     ; $685a: $0a
	inc  e                                           ; $685b: $1c
	ld   b, $07                                      ; $685c: $06 $07
	rlca                                             ; $685e: $07
	ld   bc, $a502                                   ; $685f: $01 $02 $a5
	inc  b                                           ; $6862: $04
	xor  d                                           ; $6863: $aa
	sub  b                                           ; $6864: $90
	ld   [bc], a                                     ; $6865: $02
	jr   nz, jr_058_686c                             ; $6866: $20 $04

	xor  d                                           ; $6868: $aa
	sbc  [hl]                                        ; $6869: $9e
	dec  c                                           ; $686a: $0d
	ld   [bc], a                                     ; $686b: $02

jr_058_686c:
	and  c                                           ; $686c: $a1
	ld   [bc], a                                     ; $686d: $02
	ld   a, e                                        ; $686e: $7b
	ld   d, d                                        ; $686f: $52
	inc  b                                           ; $6870: $04
	ld   b, l                                        ; $6871: $45
	sbc  d                                           ; $6872: $9a
	ld   [hl], h                                     ; $6873: $74
	ld   d, d                                        ; $6874: $52
	ld   e, a                                        ; $6875: $5f
	sub  [hl]                                        ; $6876: $96
	ld   a, [$000d]                                  ; $6877: $fa $0d $00
	ld   a, [bc]                                     ; $687a: $0a
	nop                                              ; $687b: $00
	rrca                                             ; $687c: $0f
	nop                                              ; $687d: $00
	ld   bc, $7d01                                   ; $687e: $01 $01 $7d
	ld   [hl], c                                     ; $6881: $71
	ld   e, e                                        ; $6882: $5b
	sbc  b                                           ; $6883: $98
	ld   [bc], a                                     ; $6884: $02
	sbc  l                                           ; $6885: $9d
	ld   [hl], c                                     ; $6886: $71
	ld   [hl], h                                     ; $6887: $74
	sbc  [hl]                                        ; $6888: $9e
	adc  h                                           ; $6889: $8c
	ld   l, b                                        ; $688a: $68
	ld   d, d                                        ; $688b: $52
	ld   [hl], l                                     ; $688c: $75
	ld   h, a                                        ; $688d: $67
	sbc  a                                           ; $688e: $9f
	dec  c                                           ; $688f: $0d
	nop                                              ; $6890: $00
	ld   a, [bc]                                     ; $6891: $0a
	inc  e                                           ; $6892: $1c
	ld   b, $02                                      ; $6893: $06 $02
	ld   [bc], a                                     ; $6895: $02
	dec  e                                           ; $6896: $1d
	ld   b, b                                        ; $6897: $40
	ld   d, $03                                      ; $6898: $16 $03
	ld   d, $01                                      ; $689a: $16 $01
	inc  bc                                          ; $689c: $03
	add  hl, hl                                      ; $689d: $29
	nop                                              ; $689e: $00
	ld   bc, $7169                                   ; $689f: $01 $69 $71
	ld   e, c                                        ; $68a2: $59
	ld   e, l                                        ; $68a3: $5d
	inc  bc                                          ; $68a4: $03
	xor  h                                           ; $68a5: $ac
	ld   [hl], c                                     ; $68a6: $71
	ld   [hl], h                                     ; $68a7: $74
	sub  b                                           ; $68a8: $90
	sub  a                                           ; $68a9: $97
	ld   [hl], c                                     ; $68aa: $71
	ld   [hl], h                                     ; $68ab: $74
	sbc  c                                           ; $68ac: $99
	ld   a, h                                        ; $68ad: $7c
	ld   a, c                                        ; $68ae: $79
	dec  c                                           ; $68af: $0d
	ld   l, e                                        ; $68b0: $6b
	sbc  d                                           ; $68b1: $9a
	ld   a, l                                        ; $68b2: $7d
	ld   a, b                                        ; $68b3: $78
	ld   d, d                                        ; $68b4: $52
	ld   l, [hl]                                     ; $68b5: $6e
	sbc  e                                           ; $68b6: $9b
	sbc  a                                           ; $68b7: $9f
	dec  c                                           ; $68b8: $0d
	nop                                              ; $68b9: $00
	ld   a, [bc]                                     ; $68ba: $0a
	dec  b                                           ; $68bb: $05
	ld   b, b                                        ; $68bc: $40
	ld   c, l                                        ; $68bd: $4d
	ld   [bc], a                                     ; $68be: $02
	nop                                              ; $68bf: $00
	nop                                              ; $68c0: $00
	ld   bc, $e6a5                                   ; $68c1: $01 $a5 $e6
	ld   l, [hl]                                     ; $68c4: $6e
	ld   [hl], c                                     ; $68c5: $71
	ld   l, l                                        ; $68c6: $6d
	sub  a                                           ; $68c7: $97
	sbc  [hl]                                        ; $68c8: $9e
	inc  bc                                          ; $68c9: $03
	sub  h                                           ; $68ca: $94
	inc  b                                           ; $68cb: $04
	sbc  [hl]                                        ; $68cc: $9e
	ld   [hl], l                                     ; $68cd: $75
	inc  bc                                          ; $68ce: $03
	xor  h                                           ; $68cf: $ac
	sbc  d                                           ; $68d0: $9a
	sub  [hl]                                        ; $68d1: $96
	sbc  a                                           ; $68d2: $9f
	dec  c                                           ; $68d3: $0d
	nop                                              ; $68d4: $00
	dec  b                                           ; $68d5: $05
	ld   b, b                                        ; $68d6: $40
	ld   d, e                                        ; $68d7: $53
	ld   bc, $0002                                   ; $68d8: $01 $02 $00
	ld   bc, $718c                                   ; $68db: $01 $8c $71
	ld   l, l                                        ; $68de: $6d
	ld   e, l                                        ; $68df: $5d
	sub  b                                           ; $68e0: $90
	ei                                               ; $68e1: $fb
	sbc  [hl]                                        ; $68e2: $9e
	ld   h, c                                        ; $68e3: $61
	and  c                                           ; $68e4: $a1
	ld   a, b                                        ; $68e5: $78
	ld   a, c                                        ; $68e6: $79
	ld   d, h                                        ; $68e7: $54
	adc  h                                           ; $68e8: $8c
	ld   d, d                                        ; $68e9: $52
	dec  c                                           ; $68ea: $0d
	db   $e3                                         ; $68eb: $e3
	cp   b                                           ; $68ec: $b8
	ld   a, c                                        ; $68ed: $79
	or   d                                           ; $68ee: $b2
	jp   nz, Jump_058_5f72                           ; $68ef: $c2 $72 $5f

	sub  d                                           ; $68f2: $92
	ld   e, d                                        ; $68f3: $5a
	ld   [hl], c                                     ; $68f4: $71
	ld   [hl], h                                     ; $68f5: $74
	sub  [hl]                                        ; $68f6: $96
	sbc  a                                           ; $68f7: $9f
	dec  c                                           ; $68f8: $0d
	nop                                              ; $68f9: $00
	ld   a, [bc]                                     ; $68fa: $0a
	nop                                              ; $68fb: $00
	inc  e                                           ; $68fc: $1c
	ld   b, $02                                      ; $68fd: $06 $02
	ld   [bc], a                                     ; $68ff: $02
	dec  e                                           ; $6900: $1d
	ld   b, b                                        ; $6901: $40
	ld   d, $03                                      ; $6902: $16 $03
	ld   d, $01                                      ; $6904: $16 $01
	ld   bc, $0029                                   ; $6906: $01 $29 $00
	ld   bc, $a178                                   ; $6909: $01 $78 $a1
	ld   e, c                                        ; $690c: $59
	inc  b                                           ; $690d: $04
	and  b                                           ; $690e: $a0
	inc  b                                           ; $690f: $04
	ret  nz                                          ; $6910: $c0

	ld   l, e                                        ; $6911: $6b
	ld   d, h                                        ; $6912: $54
	ld   l, [hl]                                     ; $6913: $6e
	ld   a, b                                        ; $6914: $78
	rst  $38                                         ; $6915: $ff
	rst  $38                                         ; $6916: $ff
	dec  c                                           ; $6917: $0d
	nop                                              ; $6918: $00
	dec  b                                           ; $6919: $05
	ld   b, b                                        ; $691a: $40
	ld   c, l                                        ; $691b: $4d
	ld   [bc], a                                     ; $691c: $02
	nop                                              ; $691d: $00
	nop                                              ; $691e: $00
	ld   bc, $6d71                                   ; $691f: $01 $71 $6d
	ld   e, l                                        ; $6922: $5d
	rst  $38                                         ; $6923: $ff
	rst  $38                                         ; $6924: $ff
	ld   h, c                                        ; $6925: $61
	and  c                                           ; $6926: $a1
	ld   a, b                                        ; $6927: $78
	ld   a, c                                        ; $6928: $79
	ld   d, h                                        ; $6929: $54
	adc  h                                           ; $692a: $8c
	ld   d, d                                        ; $692b: $52
	dec  c                                           ; $692c: $0d
	nop                                              ; $692d: $00
	dec  b                                           ; $692e: $05
	ld   b, b                                        ; $692f: $40
	ld   d, e                                        ; $6930: $53
	ld   bc, $0002                                   ; $6931: $01 $02 $00
	ld   bc, $b8e3                                   ; $6934: $01 $e3 $b8
	ld   l, [hl]                                     ; $6937: $6e
	ld   [hl], c                                     ; $6938: $71
	ld   [hl], h                                     ; $6939: $74
	ld   a, h                                        ; $693a: $7c
	ld   a, c                                        ; $693b: $79
	sub  [hl]                                        ; $693c: $96
	rst  $38                                         ; $693d: $ff
	rst  $38                                         ; $693e: $ff
	dec  c                                           ; $693f: $0d
	nop                                              ; $6940: $00
	ld   a, [bc]                                     ; $6941: $0a
	nop                                              ; $6942: $00
	rrca                                             ; $6943: $0f
	nop                                              ; $6944: $00
	ld   bc, $ac01                                   ; $6945: $01 $01 $ac
	push af                                          ; $6948: $f5
	bit  4, e                                        ; $6949: $cb $63
	and  c                                           ; $694b: $a1
	sbc  a                                           ; $694c: $9f
	dec  c                                           ; $694d: $0d
	inc  b                                           ; $694e: $04
	ld   l, l                                        ; $694f: $6d
	ld   a, h                                        ; $6950: $7c
	inc  b                                           ; $6951: $04
	ld   a, [bc]                                     ; $6952: $0a
	ld   [bc], a                                     ; $6953: $02
	nop                                              ; $6954: $00
	halt                                             ; $6955: $76
	ld   h, l                                        ; $6956: $65
	ld   [hl], h                                     ; $6957: $74
	ld   a, h                                        ; $6958: $7c
	inc  b                                           ; $6959: $04
	ld   b, e                                        ; $695a: $43
	dec  b                                           ; $695b: $05
	ld   a, [bc]                                     ; $695c: $0a
	ld   a, l                                        ; $695d: $7d
	dec  c                                           ; $695e: $0d
	ld   [hl], a                                     ; $695f: $77
	and  c                                           ; $6960: $a1
	ld   a, b                                        ; $6961: $78
	sub  b                                           ; $6962: $90
	ld   a, h                                        ; $6963: $7c
	ld   [hl], l                                     ; $6964: $75
	ld   h, a                                        ; $6965: $67
	ld   e, c                                        ; $6966: $59
	ld   sp, hl                                      ; $6967: $f9
	dec  c                                           ; $6968: $0d
	nop                                              ; $6969: $00
	ld   a, [bc]                                     ; $696a: $0a
	rlca                                             ; $696b: $07
	and  $02                                         ; $696c: $e6 $02
	inc  bc                                          ; $696e: $03
	inc  hl                                          ; $696f: $23
	ld   bc, $2496                                   ; $6970: $01 $96 $24
	nop                                              ; $6973: $00
	inc  e                                           ; $6974: $1c
	ld   b, $05                                      ; $6975: $06 $05
	dec  b                                           ; $6977: $05
	ld   bc, $fc54                                   ; $6978: $01 $54 $fc
	and  c                                           ; $697b: $a1
	rst  $38                                         ; $697c: $ff
	rst  $38                                         ; $697d: $ff
	dec  c                                           ; $697e: $0d
	ret  nc                                          ; $697f: $d0

	call nz, $ecae                                   ; $6980: $c4 $ae $ec
	ld   [bc], a                                     ; $6983: $02
	sbc  l                                           ; $6984: $9d
	ld   [hl], c                                     ; $6985: $71
	ld   [hl], h                                     ; $6986: $74
	sbc  [hl]                                        ; $6987: $9e
	sub  b                                           ; $6988: $90
	ld   [hl], c                                     ; $6989: $71
	halt                                             ; $698a: $76
	dec  c                                           ; $698b: $0d
	ld   e, d                                        ; $698c: $5a
	and  c                                           ; $698d: $a1
	ld   a, [hl]                                     ; $698e: $7e
	sub  a                                           ; $698f: $97
	ld   a, b                                        ; $6990: $78
	ld   d, d                                        ; $6991: $52
	halt                                             ; $6992: $76
	pop  bc                                          ; $6993: $c1
	db   $e3                                         ; $6994: $e3
	ld   l, [hl]                                     ; $6995: $6e
	ld   a, b                                        ; $6996: $78
	sbc  a                                           ; $6997: $9f
	dec  c                                           ; $6998: $0d
	nop                                              ; $6999: $00
	ld   a, [bc]                                     ; $699a: $0a
	inc  e                                           ; $699b: $1c
	ld   b, $00                                      ; $699c: $06 $00
	nop                                              ; $699e: $00
	ld   bc, $0d04                                   ; $699f: $01 $04 $0d
	dec  b                                           ; $69a2: $05
	ld   a, [bc]                                     ; $69a3: $0a
	and  b                                           ; $69a4: $a0
	ld   [hl], d                                     ; $69a5: $72
	ld   e, a                                        ; $69a6: $5f
	ld   a, b                                        ; $69a7: $78
	ld   e, e                                        ; $69a8: $5b
	sub  c                                           ; $69a9: $91
	ld   a, b                                        ; $69aa: $78
	sbc  a                                           ; $69ab: $9f
	dec  c                                           ; $69ac: $0d
	ld   l, e                                        ; $69ad: $6b
	ld   a, h                                        ; $69ae: $7c
	ld   l, l                                        ; $69af: $6d
	adc  a                                           ; $69b0: $8f
	ld   a, c                                        ; $69b1: $79
	ld   a, l                                        ; $69b2: $7d
	sbc  [hl]                                        ; $69b3: $9e
	ld   [bc], a                                     ; $69b4: $02
	jr   nz, jr_058_6a30                             ; $69b5: $20 $79

	sub  b                                           ; $69b7: $90
	ld   b, $09                                      ; $69b8: $06 $09
	ld   a, c                                        ; $69ba: $79
	sub  b                                           ; $69bb: $90
	dec  c                                           ; $69bc: $0d
	inc  bc                                          ; $69bd: $03
	ld   l, l                                        ; $69be: $6d
	dec  b                                           ; $69bf: $05
	add  hl, de                                      ; $69c0: $19
	ld   d, b                                        ; $69c1: $50
	sbc  c                                           ; $69c2: $99
	ld   a, h                                        ; $69c3: $7c
	adc  l                                           ; $69c4: $8d
	ld   l, [hl]                                     ; $69c5: $6e
	sbc  a                                           ; $69c6: $9f
	dec  c                                           ; $69c7: $0d
	nop                                              ; $69c8: $00
	ld   a, [bc]                                     ; $69c9: $0a
	inc  e                                           ; $69ca: $1c
	ld   b, $01                                      ; $69cb: $06 $01
	ld   bc, $401d                                   ; $69cd: $01 $1d $40
	ld   d, $03                                      ; $69d0: $16 $03
	ld   d, $01                                      ; $69d2: $16 $01
	ld   bc, $0028                                   ; $69d4: $01 $28 $00
	ld   bc, $a15a                                   ; $69d7: $01 $5a $a1
	ld   a, [hl]                                     ; $69da: $7e
	sbc  d                                           ; $69db: $9a
	sub  [hl]                                        ; $69dc: $96
	sbc  a                                           ; $69dd: $9f
	ld   h, [hl]                                     ; $69de: $66
	sub  c                                           ; $69df: $91
	ld   d, b                                        ; $69e0: $50
	ld   a, b                                        ; $69e1: $78
	sbc  a                                           ; $69e2: $9f
	dec  c                                           ; $69e3: $0d
	nop                                              ; $69e4: $00
	ld   a, [bc]                                     ; $69e5: $0a
	dec  c                                           ; $69e6: $0d
	nop                                              ; $69e7: $00
	nop                                              ; $69e8: $00
	rrca                                             ; $69e9: $0f
	nop                                              ; $69ea: $00
	ld   bc, $1e09                                   ; $69eb: $01 $09 $1e
	nop                                              ; $69ee: $00
	inc  e                                           ; $69ef: $1c
	ld   b, $01                                      ; $69f0: $06 $01
	ld   bc, $401d                                   ; $69f2: $01 $1d $40
	ld   d, $03                                      ; $69f5: $16 $03
	ld   d, $01                                      ; $69f7: $16 $01
	ld   [bc], a                                     ; $69f9: $02
	jr   z, jr_058_69fc                              ; $69fa: $28 $00

jr_058_69fc:
	ld   bc, $5978                                   ; $69fc: $01 $78 $59
	ld   a, b                                        ; $69ff: $78
	ld   e, c                                        ; $6a00: $59
	ld   d, d                                        ; $6a01: $52
	ld   d, d                                        ; $6a02: $52
	ld   l, d                                        ; $6a03: $6a
	sbc  a                                           ; $6a04: $9f
	dec  c                                           ; $6a05: $0d
	adc  h                                           ; $6a06: $8c
	ld   h, [hl]                                     ; $6a07: $66
	adc  a                                           ; $6a08: $8f
	ld   a, c                                        ; $6a09: $79
	inc  bc                                          ; $6a0a: $03
	ld   l, l                                        ; $6a0b: $6d
	dec  b                                           ; $6a0c: $05
	add  hl, de                                      ; $6a0d: $19
	ld   h, l                                        ; $6a0e: $65
	ld   [hl], h                                     ; $6a0f: $74
	sbc  c                                           ; $6a10: $99
	and  c                                           ; $6a11: $a1
	ld   l, [hl]                                     ; $6a12: $6e
	ld   a, b                                        ; $6a13: $78
	sbc  a                                           ; $6a14: $9f
	dec  c                                           ; $6a15: $0d
	xor  c                                           ; $6a16: $a9
	db   $eb                                         ; $6a17: $eb
	and  l                                           ; $6a18: $a5
	ld   l, d                                        ; $6a19: $6a
	sbc  a                                           ; $6a1a: $9f
	dec  c                                           ; $6a1b: $0d
	nop                                              ; $6a1c: $00
	ld   a, [bc]                                     ; $6a1d: $0a
	ld   bc, $a502                                   ; $6a1e: $01 $02 $a5
	ld   a, h                                        ; $6a21: $7c
	inc  bc                                          ; $6a22: $03
	cp   $03                                         ; $6a23: $fe $03
	add  [hl]                                        ; $6a25: $86
	ld   [hl], l                                     ; $6a26: $75
	ld   d, d                                        ; $6a27: $52
	ld   e, a                                        ; $6a28: $5f
	ld   a, [hl]                                     ; $6a29: $7e
	ld   d, d                                        ; $6a2a: $52
	ld   d, d                                        ; $6a2b: $52
	ld   h, e                                        ; $6a2c: $63
	sbc  a                                           ; $6a2d: $9f
	dec  c                                           ; $6a2e: $0d
	ld   h, [hl]                                     ; $6a2f: $66

jr_058_6a30:
	sub  c                                           ; $6a30: $91
	ld   d, b                                        ; $6a31: $50
	sbc  [hl]                                        ; $6a32: $9e
	ld   [bc], a                                     ; $6a33: $02
	and  l                                           ; $6a34: $a5
	inc  b                                           ; $6a35: $04
	xor  d                                           ; $6a36: $aa
	sub  b                                           ; $6a37: $90
	inc  bc                                          ; $6a38: $03
	ld   l, l                                        ; $6a39: $6d
	dec  b                                           ; $6a3a: $05
	add  hl, de                                      ; $6a3b: $19
	dec  c                                           ; $6a3c: $0d
	ld   e, d                                        ; $6a3d: $5a
	and  c                                           ; $6a3e: $a1
	ld   a, [hl]                                     ; $6a3f: $7e
	sbc  d                                           ; $6a40: $9a
	sub  [hl]                                        ; $6a41: $96
	sbc  a                                           ; $6a42: $9f
	dec  c                                           ; $6a43: $0d
	nop                                              ; $6a44: $00
	ld   a, [bc]                                     ; $6a45: $0a
	dec  c                                           ; $6a46: $0d
	nop                                              ; $6a47: $00
	nop                                              ; $6a48: $00
	rrca                                             ; $6a49: $0f
	nop                                              ; $6a4a: $00
	ld   bc, $1e09                                   ; $6a4b: $01 $09 $1e
	nop                                              ; $6a4e: $00
	rrca                                             ; $6a4f: $0f
	nop                                              ; $6a50: $00
	ld   bc, $6301                                   ; $6a51: $01 $01 $63
	ld   e, l                                        ; $6a54: $5d
	sub  a                                           ; $6a55: $97
	ld   h, e                                        ; $6a56: $63
	and  c                                           ; $6a57: $a1
	ld   [hl], h                                     ; $6a58: $74
	sbc  [hl]                                        ; $6a59: $9e
	xor  h                                           ; $6a5a: $ac
	push af                                          ; $6a5b: $f5
	bit  4, e                                        ; $6a5c: $cb $63
	and  c                                           ; $6a5e: $a1
	ld   e, c                                        ; $6a5f: $59
	sub  a                                           ; $6a60: $97
	dec  c                                           ; $6a61: $0d
	ld   [bc], a                                     ; $6a62: $02
	sub  l                                           ; $6a63: $95
	ld   [hl], h                                     ; $6a64: $74
	sbc  [hl]                                        ; $6a65: $9e
	ld   [hl], a                                     ; $6a66: $77
	and  c                                           ; $6a67: $a1
	ld   a, b                                        ; $6a68: $78
	inc  b                                           ; $6a69: $04
	ld   a, b                                        ; $6a6a: $78
	ld   [hl], l                                     ; $6a6b: $75
	ld   h, a                                        ; $6a6c: $67
	ld   e, c                                        ; $6a6d: $59
	ld   sp, hl                                      ; $6a6e: $f9
	dec  c                                           ; $6a6f: $0d
	nop                                              ; $6a70: $00
	ld   a, [bc]                                     ; $6a71: $0a
	inc  e                                           ; $6a72: $1c
	ld   b, $00                                      ; $6a73: $06 $00
	nop                                              ; $6a75: $00
	ld   bc, $5d63                                   ; $6a76: $01 $63 $5d
	sub  a                                           ; $6a79: $97
	ld   e, c                                        ; $6a7a: $59
	ld   sp, hl                                      ; $6a7b: $f9
	dec  c                                           ; $6a7c: $0d
	ld   l, e                                        ; $6a7d: $6b
	ld   d, h                                        ; $6a7e: $54
	ld   l, [hl]                                     ; $6a7f: $6e
	ld   a, b                                        ; $6a80: $78
	rst  $38                                         ; $6a81: $ff
	rst  $38                                         ; $6a82: $ff
	dec  c                                           ; $6a83: $0d
	adc  h                                           ; $6a84: $8c
	sbc  [hl]                                        ; $6a85: $9e
	rst  JumpTable                                         ; $6a86: $df
	cp   c                                           ; $6a87: $b9
	db   $e3                                         ; $6a88: $e3
	ld   a, b                                        ; $6a89: $78
	sub  d                                           ; $6a8a: $92
	ld   [hl], d                                     ; $6a8b: $72
	ld   l, [hl]                                     ; $6a8c: $6e
	sub  [hl]                                        ; $6a8d: $96
	ld   a, b                                        ; $6a8e: $78
	sbc  a                                           ; $6a8f: $9f
	dec  c                                           ; $6a90: $0d
	nop                                              ; $6a91: $00
	ld   a, [bc]                                     ; $6a92: $0a
	inc  e                                           ; $6a93: $1c
	ld   b, $01                                      ; $6a94: $06 $01
	ld   bc, $7701                                   ; $6a96: $01 $01 $77
	and  c                                           ; $6a99: $a1
	ld   a, b                                        ; $6a9a: $78
	ld   h, c                                        ; $6a9b: $61
	halt                                             ; $6a9c: $76
	ld   a, c                                        ; $6a9d: $79
	sub  b                                           ; $6a9e: $90
	ld   [bc], a                                     ; $6a9f: $02
	jr   nz, jr_058_6aa5                             ; $6aa0: $20 $03

	ld   d, d                                        ; $6aa2: $52
	ld   [bc], a                                     ; $6aa3: $02
	cp   l                                           ; $6aa4: $bd

jr_058_6aa5:
	ld   b, $25                                      ; $6aa5: $06 $25
	ld   l, [hl]                                     ; $6aa7: $6e
	ld   h, l                                        ; $6aa8: $65
	sbc  [hl]                                        ; $6aa9: $9e
	dec  c                                           ; $6aaa: $0d
	ld   e, a                                        ; $6aab: $5f
	ld   [hl], c                                     ; $6aac: $71
	ld   h, c                                        ; $6aad: $61
	ld   d, h                                        ; $6aae: $54
	sbc  [hl]                                        ; $6aaf: $9e
	ld   e, d                                        ; $6ab0: $5a
	and  c                                           ; $6ab1: $a1
	ld   a, [hl]                                     ; $6ab2: $7e
	sbc  b                                           ; $6ab3: $98
	sub  d                                           ; $6ab4: $92
	ld   l, [hl]                                     ; $6ab5: $6e
	ld   e, c                                        ; $6ab6: $59
	sub  a                                           ; $6ab7: $97
	dec  c                                           ; $6ab8: $0d
	ld   [bc], a                                     ; $6ab9: $02
	sub  l                                           ; $6aba: $95
	ld   [hl], h                                     ; $6abb: $74
	ld   d, d                                        ; $6abc: $52
	ld   [hl], h                                     ; $6abd: $74
	ld   [bc], a                                     ; $6abe: $02
	and  c                                           ; $6abf: $a1
	inc  bc                                          ; $6ac0: $03
	and  b                                           ; $6ac1: $a0
	ld   l, a                                        ; $6ac2: $6f
	ld   e, d                                        ; $6ac3: $5a
	ld   d, d                                        ; $6ac4: $52
	ld   d, d                                        ; $6ac5: $52
	sub  [hl]                                        ; $6ac6: $96
	ld   a, b                                        ; $6ac7: $78
	sbc  a                                           ; $6ac8: $9f
	dec  c                                           ; $6ac9: $0d
	nop                                              ; $6aca: $00
	ld   a, [bc]                                     ; $6acb: $0a
	ld   bc, $9166                                   ; $6acc: $01 $66 $91
	sbc  [hl]                                        ; $6acf: $9e
	ld   [bc], a                                     ; $6ad0: $02
	and  l                                           ; $6ad1: $a5
	inc  b                                           ; $6ad2: $04
	xor  d                                           ; $6ad3: $aa
	sub  b                                           ; $6ad4: $90
	ld   [bc], a                                     ; $6ad5: $02
	jr   nz, jr_058_6adc                             ; $6ad6: $20 $04

	xor  d                                           ; $6ad8: $aa
	dec  c                                           ; $6ad9: $0d
	ld   e, d                                        ; $6ada: $5a
	and  c                                           ; $6adb: $a1

jr_058_6adc:
	ld   a, [hl]                                     ; $6adc: $7e
	sbc  d                                           ; $6add: $9a
	sub  [hl]                                        ; $6ade: $96
	sbc  a                                           ; $6adf: $9f
	dec  c                                           ; $6ae0: $0d
	nop                                              ; $6ae1: $00
	ld   a, [bc]                                     ; $6ae2: $0a
	dec  c                                           ; $6ae3: $0d
	nop                                              ; $6ae4: $00
	nop                                              ; $6ae5: $00
	rrca                                             ; $6ae6: $0f
	nop                                              ; $6ae7: $00
	ld   bc, $1e09                                   ; $6ae8: $01 $09 $1e
	nop                                              ; $6aeb: $00
	nop                                              ; $6aec: $00
	inc  e                                           ; $6aed: $1c
	rrca                                             ; $6aee: $0f
	ld   bc, $0201                                   ; $6aef: $01 $01 $02
	ld   bc, $5092                                   ; $6af2: $01 $92 $50
	sbc  [hl]                                        ; $6af5: $9e
	ld   [$5d00], sp                                 ; $6af6: $08 $00 $5d
	and  c                                           ; $6af9: $a1
	sbc  a                                           ; $6afa: $9f
	dec  c                                           ; $6afb: $0d
	nop                                              ; $6afc: $00
	ld   a, [bc]                                     ; $6afd: $0a
	dec  b                                           ; $6afe: $05
	add  b                                           ; $6aff: $80
	ld   hl, $0101                                   ; $6b00: $21 $01 $01
	nop                                              ; $6b03: $00
	rlca                                             ; $6b04: $07
	ld   d, a                                        ; $6b05: $57
	nop                                              ; $6b06: $00
	inc  b                                           ; $6b07: $04
	add  b                                           ; $6b08: $80
	rst  ToBoot                                         ; $6b09: $c7
	ld   bc, $20ff                                   ; $6b0a: $01 $ff $20
	nop                                              ; $6b0d: $00
	dec  b                                           ; $6b0e: $05
	add  b                                           ; $6b0f: $80
	rst  ToBoot                                         ; $6b10: $c7
	ld   bc, $0001                                   ; $6b11: $01 $01 $00
	ld   bc, $7305                                   ; $6b14: $01 $05 $73
	ld   a, l                                        ; $6b17: $7d
	ld   [bc], a                                     ; $6b18: $02
	ld   d, b                                        ; $6b19: $50
	inc  bc                                          ; $6b1a: $03
	ld   e, b                                        ; $6b1b: $58
	ld   b, $2d                                      ; $6b1c: $06 $2d
	ld   [bc], a                                     ; $6b1e: $02
	jr   nz, @+$01                                   ; $6b1f: $20 $ff

	rst  $38                                         ; $6b21: $ff
	dec  c                                           ; $6b22: $0d
	inc  b                                           ; $6b23: $04
	ld   c, $03                                      ; $6b24: $0e $03
	sub  b                                           ; $6b26: $90
	halt                                             ; $6b27: $76
	ld   a, l                                        ; $6b28: $7d
	inc  b                                           ; $6b29: $04
	ld   c, $7c                                      ; $6b2a: $0e $7c
	inc  bc                                          ; $6b2c: $03
	sub  d                                           ; $6b2d: $92
	inc  b                                           ; $6b2e: $04
	ld   [$9f6e], a                                  ; $6b2f: $ea $6e $9f
	dec  c                                           ; $6b32: $0d
	ld   [bc], a                                     ; $6b33: $02
	dec  bc                                          ; $6b34: $0b
	ld   [bc], a                                     ; $6b35: $02
	xor  d                                           ; $6b36: $aa
	sbc  [hl]                                        ; $6b37: $9e
	sub  [hl]                                        ; $6b38: $96
	sbc  e                                           ; $6b39: $9b
	ld   h, l                                        ; $6b3a: $65
	ld   e, l                                        ; $6b3b: $5d
	ld   a, b                                        ; $6b3c: $78
	sbc  a                                           ; $6b3d: $9f
	dec  c                                           ; $6b3e: $0d
	nop                                              ; $6b3f: $00
	ld   a, [bc]                                     ; $6b40: $0a
	ld   b, $81                                      ; $6b41: $06 $81
	nop                                              ; $6b43: $00
	ld   bc, $7305                                   ; $6b44: $01 $05 $73
	ld   a, l                                        ; $6b47: $7d
	ld   [bc], a                                     ; $6b48: $02
	ld   d, b                                        ; $6b49: $50
	inc  bc                                          ; $6b4a: $03
	ld   e, b                                        ; $6b4b: $58
	ld   b, $2d                                      ; $6b4c: $06 $2d
	ld   [bc], a                                     ; $6b4e: $02
	jr   nz, @+$01                                   ; $6b4f: $20 $ff

	rst  $38                                         ; $6b51: $ff
	dec  c                                           ; $6b52: $0d
	ld   e, b                                        ; $6b53: $58
	ld   [hl], c                                     ; $6b54: $71
	halt                                             ; $6b55: $76
	sbc  [hl]                                        ; $6b56: $9e
	inc  bc                                          ; $6b57: $03
	sub  h                                           ; $6b58: $94
	dec  b                                           ; $6b59: $05
	inc  sp                                          ; $6b5a: $33
	dec  b                                           ; $6b5b: $05
	ld   b, a                                        ; $6b5c: $47
	dec  b                                           ; $6b5d: $05
	ld   [hl-], a                                    ; $6b5e: $32
	ld   a, l                                        ; $6b5f: $7d
	dec  c                                           ; $6b60: $0d
	ld   h, c                                        ; $6b61: $61
	ld   a, h                                        ; $6b62: $7c
	inc  bc                                          ; $6b63: $03
	ld   c, a                                        ; $6b64: $4f
	sub  d                                           ; $6b65: $92
	ld   [hl], c                                     ; $6b66: $71
	ld   l, l                                        ; $6b67: $6d
	ld   a, b                                        ; $6b68: $78
	rst  $38                                         ; $6b69: $ff
	rst  $38                                         ; $6b6a: $ff
	dec  c                                           ; $6b6b: $0d
	nop                                              ; $6b6c: $00
	ld   a, [bc]                                     ; $6b6d: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $6b6e: $01 $02 $ca
	ld   e, d                                        ; $6b71: $5a
	inc  b                                           ; $6b72: $04
	ld   [$8f02], sp                                 ; $6b73: $08 $02 $8f
	ld   [bc], a                                     ; $6b76: $02
	sub  b                                           ; $6b77: $90
	ld   [bc], a                                     ; $6b78: $02
	sub  c                                           ; $6b79: $91
	inc  b                                           ; $6b7a: $04
	add  hl, bc                                      ; $6b7b: $09
	ld   a, h                                        ; $6b7c: $7c
	ld   h, c                                        ; $6b7d: $61
	halt                                             ; $6b7e: $76
	and  b                                           ; $6b7f: $a0
	dec  c                                           ; $6b80: $0d
	ld   [hl], a                                     ; $6b81: $77
	sbc  d                                           ; $6b82: $9a
	ld   l, [hl]                                     ; $6b83: $6e
	ld   e, a                                        ; $6b84: $5f
	inc  b                                           ; $6b85: $04
	dec  hl                                          ; $6b86: $2b
	ld   [hl], c                                     ; $6b87: $71
	ld   l, l                                        ; $6b88: $6d
	ld   e, c                                        ; $6b89: $59
	dec  c                                           ; $6b8a: $0d
	or   b                                           ; $6b8b: $b0
	and  l                                           ; $6b8c: $a5
	cp   e                                           ; $6b8d: $bb
	ld   [hl], l                                     ; $6b8e: $75
	ld   [bc], a                                     ; $6b8f: $02
	sbc  a                                           ; $6b90: $9f
	ld   e, c                                        ; $6b91: $59
	adc  a                                           ; $6b92: $8f
	ld   [hl], h                                     ; $6b93: $74
	ld   d, b                                        ; $6b94: $50
	ld   h, b                                        ; $6b95: $60
	sub  [hl]                                        ; $6b96: $96
	ld   d, h                                        ; $6b97: $54
	sbc  a                                           ; $6b98: $9f
	dec  c                                           ; $6b99: $0d
	nop                                              ; $6b9a: $00
	ld   a, [bc]                                     ; $6b9b: $0a
	dec  c                                           ; $6b9c: $0d
	rrca                                             ; $6b9d: $0f
	db   $10                                         ; $6b9e: $10
	rrca                                             ; $6b9f: $0f
	rrca                                             ; $6ba0: $0f
	ld   bc, $6501                                   ; $6ba1: $01 $01 $65
	ld   d, b                                        ; $6ba4: $50
	sbc  l                                           ; $6ba5: $9d
	ld   l, c                                        ; $6ba6: $69
	ld   l, [hl]                                     ; $6ba7: $6e
	ld   a, b                                        ; $6ba8: $78
	ld   c, a                                        ; $6ba9: $4f
	db   $fc                                         ; $6baa: $fc
	rst  $38                                         ; $6bab: $ff
	rst  $38                                         ; $6bac: $ff
	dec  c                                           ; $6bad: $0d
	ld   h, c                                        ; $6bae: $61
	and  c                                           ; $6baf: $a1
	ld   a, b                                        ; $6bb0: $78
	inc  b                                           ; $6bb1: $04
	db   $ec                                         ; $6bb2: $ec
	and  b                                           ; $6bb3: $a0
	sub  b                                           ; $6bb4: $90
	sub  a                                           ; $6bb5: $97
	ld   d, [hl]                                     ; $6bb6: $56
	sbc  c                                           ; $6bb7: $99
	ld   a, b                                        ; $6bb8: $78
	and  c                                           ; $6bb9: $a1
	ld   [hl], h                                     ; $6bba: $74
	sbc  a                                           ; $6bbb: $9f
	dec  c                                           ; $6bbc: $0d
	nop                                              ; $6bbd: $00
	ld   a, [bc]                                     ; $6bbe: $0a
	inc  e                                           ; $6bbf: $1c
	rrca                                             ; $6bc0: $0f
	ld   [bc], a                                     ; $6bc1: $02
	ld   [bc], a                                     ; $6bc2: $02
	ld   bc, $7463                                   ; $6bc3: $01 $63 $74
	inc  b                                           ; $6bc6: $04
	cp   a                                           ; $6bc7: $bf
	inc  b                                           ; $6bc8: $04
	dec  d                                           ; $6bc9: $15
	ld   l, [hl]                                     ; $6bca: $6e
	ld   a, [$000d]                                  ; $6bcb: $fa $0d $00
	ld   a, [bc]                                     ; $6bce: $0a
	ld   b, $27                                      ; $6bcf: $06 $27
	ld   bc, $0f1c                                   ; $6bd1: $01 $1c $0f
	ld   bc, $0101                                   ; $6bd4: $01 $01 $01
	ld   [bc], a                                     ; $6bd7: $02
	dec  bc                                          ; $6bd8: $0b
	inc  bc                                          ; $6bd9: $03
	ld   h, l                                        ; $6bda: $65
	ld   [hl], l                                     ; $6bdb: $75
	or   b                                           ; $6bdc: $b0
	and  l                                           ; $6bdd: $a5
	cp   e                                           ; $6bde: $bb
	ld   a, l                                        ; $6bdf: $7d
	inc  bc                                          ; $6be0: $03
	ld   a, [hl]                                     ; $6be1: $7e
	sbc  l                                           ; $6be2: $9d
	sbc  b                                           ; $6be3: $98
	ld   l, [hl]                                     ; $6be4: $6e
	sbc  a                                           ; $6be5: $9f
	dec  c                                           ; $6be6: $0d
	ld   [bc], a                                     ; $6be7: $02
	jp   z, EnqueueHDMATransfer                                    ; $6be8: $ca $7c $02

	and  c                                           ; $6beb: $a1
	inc  bc                                          ; $6bec: $03
	and  b                                           ; $6bed: $a0
	ld   l, a                                        ; $6bee: $6f
	ld   a, l                                        ; $6bef: $7d
	sbc  [hl]                                        ; $6bf0: $9e
	ld   h, a                                        ; $6bf1: $67
	adc  l                                           ; $6bf2: $8d
	sbc  d                                           ; $6bf3: $9a
	ld   h, e                                        ; $6bf4: $63
	and  c                                           ; $6bf5: $a1
	ld   a, c                                        ; $6bf6: $79
	dec  c                                           ; $6bf7: $0d
	inc  b                                           ; $6bf8: $04
	ld   [de], a                                     ; $6bf9: $12
	ld   d, [hl]                                     ; $6bfa: $56
	ld   [hl], h                                     ; $6bfb: $74
	ld   e, b                                        ; $6bfc: $58
	ld   e, l                                        ; $6bfd: $5d
	sub  [hl]                                        ; $6bfe: $96
	rst  $38                                         ; $6bff: $ff
	rst  $38                                         ; $6c00: $ff
	and  e                                           ; $6c01: $a3
	ret  z                                           ; $6c02: $c8

	and  h                                           ; $6c03: $a4
	xor  e                                           ; $6c04: $ab
	cp   d                                           ; $6c05: $ba
	ld   a, [$000d]                                  ; $6c06: $fa $0d $00
	ld   a, [bc]                                     ; $6c09: $0a
	dec  e                                           ; $6c0a: $1d
	ld   b, b                                        ; $6c0b: $40
	ld   [de], a                                     ; $6c0c: $12
	inc  bc                                          ; $6c0d: $03
	ld   [de], a                                     ; $6c0e: $12
	inc  bc                                          ; $6c0f: $03
	rst  $38                                         ; $6c10: $ff
	jr   z, jr_058_6c13                              ; $6c11: $28 $00

jr_058_6c13:
	nop                                              ; $6c13: $00
	dec  b                                           ; $6c14: $05
	ld   b, b                                        ; $6c15: $40
	cp   $01                                         ; $6c16: $fe $01
	nop                                              ; $6c18: $00
	nop                                              ; $6c19: $00
	dec  b                                           ; $6c1a: $05
	add  b                                           ; $6c1b: $80
	ld   c, a                                        ; $6c1c: $4f
	ld   bc, $0000                                   ; $6c1d: $01 $00 $00
	dec  b                                           ; $6c20: $05
	add  b                                           ; $6c21: $80
	ld   d, b                                        ; $6c22: $50
	ld   bc, $0000                                   ; $6c23: $01 $00 $00
	dec  b                                           ; $6c26: $05
	add  b                                           ; $6c27: $80
	ld   d, c                                        ; $6c28: $51
	ld   bc, $0000                                   ; $6c29: $01 $00 $00
	dec  b                                           ; $6c2c: $05
	add  b                                           ; $6c2d: $80
	ld   d, d                                        ; $6c2e: $52
	ld   bc, $0000                                   ; $6c2f: $01 $00 $00
	dec  b                                           ; $6c32: $05
	add  b                                           ; $6c33: $80
	ld   d, e                                        ; $6c34: $53
	ld   bc, $0000                                   ; $6c35: $01 $00 $00
	dec  b                                           ; $6c38: $05
	add  b                                           ; $6c39: $80
	ld   d, h                                        ; $6c3a: $54
	ld   bc, $0000                                   ; $6c3b: $01 $00 $00
	dec  b                                           ; $6c3e: $05
	add  b                                           ; $6c3f: $80
	ld   d, l                                        ; $6c40: $55
	ld   bc, $0000                                   ; $6c41: $01 $00 $00
	dec  b                                           ; $6c44: $05
	add  b                                           ; $6c45: $80
	ld   d, [hl]                                     ; $6c46: $56
	ld   bc, $0000                                   ; $6c47: $01 $00 $00
	dec  b                                           ; $6c4a: $05
	add  b                                           ; $6c4b: $80
	ld   d, a                                        ; $6c4c: $57
	ld   bc, $0000                                   ; $6c4d: $01 $00 $00
	rlca                                             ; $6c50: $07
	push hl                                          ; $6c51: $e5
	nop                                              ; $6c52: $00
	inc  bc                                          ; $6c53: $03
	cp   $01                                         ; $6c54: $fe $01
	inc  bc                                          ; $6c56: $03
	dec  h                                           ; $6c57: $25
	nop                                              ; $6c58: $00
	dec  b                                           ; $6c59: $05
	ld   b, b                                        ; $6c5a: $40
	cp   $03                                         ; $6c5b: $fe $03
	cp   $01                                         ; $6c5d: $fe $01
	ld   bc, $0028                                   ; $6c5f: $01 $28 $00
	jr   nz, jr_058_6c65                             ; $6c62: $20 $01

	ld   e, d                                        ; $6c64: $5a

jr_058_6c65:
	nop                                              ; $6c65: $00
	rlca                                             ; $6c66: $07
	call nz, $0201                                   ; $6c67: $c4 $01 $02
	dec  b                                           ; $6c6a: $05
	ld   bc, $220a                                   ; $6c6b: $01 $0a $22
	nop                                              ; $6c6e: $00
	rlca                                             ; $6c6f: $07
	ld   h, a                                        ; $6c70: $67
	ld   [bc], a                                     ; $6c71: $02
	ld   [bc], a                                     ; $6c72: $02
	dec  b                                           ; $6c73: $05
	ld   bc, $2214                                   ; $6c74: $01 $14 $22
	nop                                              ; $6c77: $00
	rlca                                             ; $6c78: $07
	dec  d                                           ; $6c79: $15
	inc  bc                                          ; $6c7a: $03
	ld   [bc], a                                     ; $6c7b: $02
	dec  b                                           ; $6c7c: $05
	ld   bc, $221e                                   ; $6c7d: $01 $1e $22
	nop                                              ; $6c80: $00
	rlca                                             ; $6c81: $07
	add  $03                                         ; $6c82: $c6 $03
	ld   [bc], a                                     ; $6c84: $02
	dec  b                                           ; $6c85: $05
	ld   bc, $2228                                   ; $6c86: $01 $28 $22
	nop                                              ; $6c89: $00
	rlca                                             ; $6c8a: $07
	ld   a, e                                        ; $6c8b: $7b
	inc  b                                           ; $6c8c: $04
	ld   [bc], a                                     ; $6c8d: $02
	dec  b                                           ; $6c8e: $05
	ld   bc, $2232                                   ; $6c8f: $01 $32 $22
	nop                                              ; $6c92: $00
	rlca                                             ; $6c93: $07
	dec  e                                           ; $6c94: $1d
	dec  b                                           ; $6c95: $05
	ld   [bc], a                                     ; $6c96: $02
	dec  b                                           ; $6c97: $05
	ld   bc, $223c                                   ; $6c98: $01 $3c $22
	nop                                              ; $6c9b: $00
	rlca                                             ; $6c9c: $07
	rst  $10                                         ; $6c9d: $d7
	dec  b                                           ; $6c9e: $05
	ld   [bc], a                                     ; $6c9f: $02
	dec  b                                           ; $6ca0: $05
	ld   bc, $2246                                   ; $6ca1: $01 $46 $22
	nop                                              ; $6ca4: $00
	rlca                                             ; $6ca5: $07
	and  h                                           ; $6ca6: $a4
	ld   b, $02                                      ; $6ca7: $06 $02
	dec  b                                           ; $6ca9: $05
	ld   bc, $2250                                   ; $6caa: $01 $50 $22
	nop                                              ; $6cad: $00
	ld   b, $40                                      ; $6cae: $06 $40
	rlca                                             ; $6cb0: $07
	rlca                                             ; $6cb1: $07
	ld   h, a                                        ; $6cb2: $67
	ld   [bc], a                                     ; $6cb3: $02
	inc  b                                           ; $6cb4: $04
	add  b                                           ; $6cb5: $80
	ld   c, a                                        ; $6cb6: $4f
	ld   bc, $20ff                                   ; $6cb7: $01 $ff $20
	nop                                              ; $6cba: $00
	dec  b                                           ; $6cbb: $05
	add  b                                           ; $6cbc: $80
	ld   c, a                                        ; $6cbd: $4f
	ld   bc, $0001                                   ; $6cbe: $01 $01 $00
	ld   bc, $8d67                                   ; $6cc1: $01 $67 $8d
	sbc  d                                           ; $6cc4: $9a
	ld   h, e                                        ; $6cc5: $63
	and  c                                           ; $6cc6: $a1
	ld   a, h                                        ; $6cc7: $7c
	inc  bc                                          ; $6cc8: $03
	ld   b, h                                        ; $6cc9: $44
	ld   [bc], a                                     ; $6cca: $02
	rra                                              ; $6ccb: $1f
	inc  bc                                          ; $6ccc: $03
	xor  h                                           ; $6ccd: $ac
	inc  b                                           ; $6cce: $04
	ld   h, c                                        ; $6ccf: $61
	ld   a, l                                        ; $6cd0: $7d
	ld   sp, hl                                      ; $6cd1: $f9
	dec  c                                           ; $6cd2: $0d
	nop                                              ; $6cd3: $00
	ld   a, [bc]                                     ; $6cd4: $0a
	add  hl, de                                      ; $6cd5: $19
	dec  b                                           ; $6cd6: $05
	inc  bc                                          ; $6cd7: $03
	ld   [bc], a                                     ; $6cd8: $02
	dec  hl                                          ; $6cd9: $2b
	ld   a, l                                        ; $6cda: $7d
	pop  bc                                          ; $6cdb: $c1
	and  l                                           ; $6cdc: $a5
	and  $00                                         ; $6cdd: $e6 $00
	nop                                              ; $6cdf: $00
	ld   [bc], a                                     ; $6ce0: $02
	dec  hl                                          ; $6ce1: $2b
	sub  h                                           ; $6ce2: $94
	ld   d, [hl]                                     ; $6ce3: $56
	ld   a, c                                        ; $6ce4: $79
	nop                                              ; $6ce5: $00
	ld   bc, $4b04                                   ; $6ce6: $01 $04 $4b
	inc  b                                           ; $6ce9: $04
	ldh  a, [c]                                      ; $6cea: $f2
	ld   [bc], a                                     ; $6ceb: $02
	sub  a                                           ; $6cec: $97
	nop                                              ; $6ced: $00
	ld   [bc], a                                     ; $6cee: $02
	rlca                                             ; $6cef: $07
	jr   nz, jr_058_6cf4                             ; $6cf0: $20 $02

	ld   [bc], a                                     ; $6cf2: $02
	inc  bc                                          ; $6cf3: $03

jr_058_6cf4:
	ld   bc, $2000                                   ; $6cf4: $01 $00 $20
	nop                                              ; $6cf7: $00
	rlca                                             ; $6cf8: $07
	dec  a                                           ; $6cf9: $3d
	ld   [bc], a                                     ; $6cfa: $02
	ld   [bc], a                                     ; $6cfb: $02
	inc  bc                                          ; $6cfc: $03
	ld   bc, $2001                                   ; $6cfd: $01 $01 $20
	nop                                              ; $6d00: $00
	rlca                                             ; $6d01: $07
	dec  a                                           ; $6d02: $3d
	ld   [bc], a                                     ; $6d03: $02
	ld   [bc], a                                     ; $6d04: $02
	inc  bc                                          ; $6d05: $03
	ld   bc, $2002                                   ; $6d06: $01 $02 $20
	nop                                              ; $6d09: $00
	ld   b, $3d                                      ; $6d0a: $06 $3d
	ld   [bc], a                                     ; $6d0c: $02
	inc  e                                           ; $6d0d: $1c
	rrca                                             ; $6d0e: $0f
	ld   bc, $1401                                   ; $6d0f: $01 $01 $14
	dec  de                                          ; $6d12: $1b
	ld   bc, $0301                                   ; $6d13: $01 $01 $03
	ld   c, d                                        ; $6d16: $4a
	ld   [bc], a                                     ; $6d17: $02
	or   h                                           ; $6d18: $b4
	ld   l, [hl]                                     ; $6d19: $6e
	sbc  a                                           ; $6d1a: $9f
	dec  c                                           ; $6d1b: $0d
	nop                                              ; $6d1c: $00
	ld   a, [bc]                                     ; $6d1d: $0a
	dec  b                                           ; $6d1e: $05
	ld   b, b                                        ; $6d1f: $40
	rst  $38                                         ; $6d20: $ff
	inc  bc                                          ; $6d21: $03
	rst  $38                                         ; $6d22: $ff
	ld   bc, $2801                                   ; $6d23: $01 $01 $28
	nop                                              ; $6d26: $00
	ld   b, $63                                      ; $6d27: $06 $63
	ld   bc, $0f1c                                   ; $6d29: $01 $1c $0f
	ld   [bc], a                                     ; $6d2c: $02
	ld   [bc], a                                     ; $6d2d: $02
	inc  d                                           ; $6d2e: $14
	inc  e                                           ; $6d2f: $1c
	ld   bc, $0301                                   ; $6d30: $01 $01 $03
	jr   z, jr_058_6d39                              ; $6d33: $28 $04

	ld   c, b                                        ; $6d35: $48
	ld   l, [hl]                                     ; $6d36: $6e
	ld   [hl], c                                     ; $6d37: $71
	ld   l, l                                        ; $6d38: $6d

jr_058_6d39:
	ld   a, b                                        ; $6d39: $78
	rst  $38                                         ; $6d3a: $ff
	rst  $38                                         ; $6d3b: $ff
	dec  c                                           ; $6d3c: $0d
	inc  bc                                          ; $6d3d: $03
	ld   c, d                                        ; $6d3e: $4a
	ld   [bc], a                                     ; $6d3f: $02
	or   h                                           ; $6d40: $b4
	ld   a, l                                        ; $6d41: $7d
	ld   bc, $0207                                   ; $6d42: $01 $07 $02
	dec  hl                                          ; $6d45: $2b
	ld   a, l                                        ; $6d46: $7d
	pop  bc                                          ; $6d47: $c1
	and  l                                           ; $6d48: $a5
	and  $01                                         ; $6d49: $e6 $01
	ld   [$9f6e], sp                                 ; $6d4b: $08 $6e $9f
	dec  c                                           ; $6d4e: $0d
	nop                                              ; $6d4f: $00
	ld   a, [bc]                                     ; $6d50: $0a
	ld   b, $63                                      ; $6d51: $06 $63
	ld   bc, $1507                                   ; $6d53: $01 $07 $15
	inc  bc                                          ; $6d56: $03
	inc  b                                           ; $6d57: $04
	add  b                                           ; $6d58: $80
	ld   d, b                                        ; $6d59: $50
	ld   bc, $20ff                                   ; $6d5a: $01 $ff $20
	nop                                              ; $6d5d: $00
	inc  e                                           ; $6d5e: $1c
	rrca                                             ; $6d5f: $0f
	ld   [bc], a                                     ; $6d60: $02
	ld   [bc], a                                     ; $6d61: $02
	ld   bc, $8d67                                   ; $6d62: $01 $67 $8d
	sbc  d                                           ; $6d65: $9a
	ld   h, e                                        ; $6d66: $63
	and  c                                           ; $6d67: $a1
	ld   a, h                                        ; $6d68: $7c
	inc  bc                                          ; $6d69: $03
	adc  e                                           ; $6d6a: $8b
	ld   [bc], a                                     ; $6d6b: $02
	and  [hl]                                        ; $6d6c: $a6
	ld   a, l                                        ; $6d6d: $7d
	ld   [hl], a                                     ; $6d6e: $77
	sbc  d                                           ; $6d6f: $9a
	ld   sp, hl                                      ; $6d70: $f9
	dec  c                                           ; $6d71: $0d
	nop                                              ; $6d72: $00
	ld   a, [bc]                                     ; $6d73: $0a
	dec  b                                           ; $6d74: $05
	add  b                                           ; $6d75: $80
	ld   d, b                                        ; $6d76: $50
	ld   bc, $0001                                   ; $6d77: $01 $01 $00
	add  hl, de                                      ; $6d7a: $19
	dec  b                                           ; $6d7b: $05
	inc  bc                                          ; $6d7c: $03
	inc  bc                                          ; $6d7d: $03
	sub  b                                           ; $6d7e: $90
	inc  bc                                          ; $6d7f: $03
	cp   e                                           ; $6d80: $bb
	inc  bc                                          ; $6d81: $03
	cp   d                                           ; $6d82: $ba
	inc  b                                           ; $6d83: $04
	xor  a                                           ; $6d84: $af
	nop                                              ; $6d85: $00
	nop                                              ; $6d86: $00
	inc  bc                                          ; $6d87: $03
	sub  b                                           ; $6d88: $90
	inc  bc                                          ; $6d89: $03
	cp   e                                           ; $6d8a: $bb
	ld   [bc], a                                     ; $6d8b: $02
	ld   c, a                                        ; $6d8c: $4f
	inc  b                                           ; $6d8d: $04
	db   $d3                                         ; $6d8e: $d3
	inc  bc                                          ; $6d8f: $03
	rst  $20                                         ; $6d90: $e7
	nop                                              ; $6d91: $00
	ld   bc, $9003                                   ; $6d92: $01 $03 $90
	inc  bc                                          ; $6d95: $03
	cp   e                                           ; $6d96: $bb
	ld   [bc], a                                     ; $6d97: $02
	ld   hl, $0200                                   ; $6d98: $21 $00 $02
	rlca                                             ; $6d9b: $07
	call z, $0202                                    ; $6d9c: $cc $02 $02
	inc  bc                                          ; $6d9f: $03
	ld   bc, $2000                                   ; $6da0: $01 $00 $20
	nop                                              ; $6da3: $00
	rlca                                             ; $6da4: $07
	jp   hl                                          ; $6da5: $e9


	ld   [bc], a                                     ; $6da6: $02
	ld   [bc], a                                     ; $6da7: $02
	inc  bc                                          ; $6da8: $03
	ld   bc, $2001                                   ; $6da9: $01 $01 $20
	nop                                              ; $6dac: $00
	rlca                                             ; $6dad: $07
	jp   hl                                          ; $6dae: $e9


	ld   [bc], a                                     ; $6daf: $02
	ld   [bc], a                                     ; $6db0: $02
	inc  bc                                          ; $6db1: $03
	ld   bc, $2002                                   ; $6db2: $01 $02 $20
	nop                                              ; $6db5: $00
	ld   b, $e9                                      ; $6db6: $06 $e9
	ld   [bc], a                                     ; $6db8: $02
	inc  e                                           ; $6db9: $1c
	rrca                                             ; $6dba: $0f
	ld   bc, $1401                                   ; $6dbb: $01 $01 $14
	dec  de                                          ; $6dbe: $1b
	ld   bc, $0301                                   ; $6dbf: $01 $01 $03
	ld   c, d                                        ; $6dc2: $4a
	ld   [bc], a                                     ; $6dc3: $02
	or   h                                           ; $6dc4: $b4
	ld   l, [hl]                                     ; $6dc5: $6e
	sbc  a                                           ; $6dc6: $9f
	dec  c                                           ; $6dc7: $0d
	nop                                              ; $6dc8: $00
	ld   a, [bc]                                     ; $6dc9: $0a
	dec  b                                           ; $6dca: $05
	ld   b, b                                        ; $6dcb: $40
	rst  $38                                         ; $6dcc: $ff
	inc  bc                                          ; $6dcd: $03
	rst  $38                                         ; $6dce: $ff
	ld   bc, $2801                                   ; $6dcf: $01 $01 $28
	nop                                              ; $6dd2: $00
	ld   b, $63                                      ; $6dd3: $06 $63
	ld   bc, $0f1c                                   ; $6dd5: $01 $1c $0f
	ld   [bc], a                                     ; $6dd8: $02
	ld   [bc], a                                     ; $6dd9: $02
	inc  d                                           ; $6dda: $14
	inc  e                                           ; $6ddb: $1c
	ld   bc, $0301                                   ; $6ddc: $01 $01 $03
	jr   z, jr_058_6de5                              ; $6ddf: $28 $04

	ld   c, b                                        ; $6de1: $48
	ld   l, [hl]                                     ; $6de2: $6e
	ld   [hl], c                                     ; $6de3: $71
	ld   l, l                                        ; $6de4: $6d

jr_058_6de5:
	ld   a, b                                        ; $6de5: $78
	rst  $38                                         ; $6de6: $ff
	rst  $38                                         ; $6de7: $ff
	dec  c                                           ; $6de8: $0d
	inc  bc                                          ; $6de9: $03
	ld   c, d                                        ; $6dea: $4a
	ld   [bc], a                                     ; $6deb: $02
	or   h                                           ; $6dec: $b4
	ld   a, l                                        ; $6ded: $7d
	ld   bc, $0307                                   ; $6dee: $01 $07 $03
	sub  b                                           ; $6df1: $90
	inc  bc                                          ; $6df2: $03
	cp   e                                           ; $6df3: $bb
	inc  bc                                          ; $6df4: $03
	cp   d                                           ; $6df5: $ba
	inc  b                                           ; $6df6: $04
	xor  a                                           ; $6df7: $af
	ld   bc, $6e08                                   ; $6df8: $01 $08 $6e
	sbc  a                                           ; $6dfb: $9f
	dec  c                                           ; $6dfc: $0d
	nop                                              ; $6dfd: $00
	ld   a, [bc]                                     ; $6dfe: $0a
	ld   b, $63                                      ; $6dff: $06 $63
	ld   bc, $c607                                   ; $6e01: $01 $07 $c6
	inc  bc                                          ; $6e04: $03
	inc  b                                           ; $6e05: $04
	add  b                                           ; $6e06: $80
	ld   d, c                                        ; $6e07: $51
	ld   bc, $20ff                                   ; $6e08: $01 $ff $20
	nop                                              ; $6e0b: $00
	inc  e                                           ; $6e0c: $1c
	rrca                                             ; $6e0d: $0f
	ld   [bc], a                                     ; $6e0e: $02
	ld   [bc], a                                     ; $6e0f: $02
	ld   bc, $8d67                                   ; $6e10: $01 $67 $8d
	sbc  d                                           ; $6e13: $9a
	ld   h, e                                        ; $6e14: $63
	and  c                                           ; $6e15: $a1
	ld   a, h                                        ; $6e16: $7c
	inc  b                                           ; $6e17: $04
	add  c                                           ; $6e18: $81
	inc  bc                                          ; $6e19: $03
	sub  d                                           ; $6e1a: $92
	ld   a, h                                        ; $6e1b: $7c
	dec  c                                           ; $6e1c: $0d
	nop                                              ; $6e1d: $00
	dec  b                                           ; $6e1e: $05
	add  b                                           ; $6e1f: $80
	ld   d, c                                        ; $6e20: $51
	ld   bc, $0001                                   ; $6e21: $01 $01 $00
	ld   bc, $4d02                                   ; $6e24: $01 $02 $4d
	inc  b                                           ; $6e27: $04
	rst  ToBoot                                         ; $6e28: $c7
	ld   a, l                                        ; $6e29: $7d
	inc  b                                           ; $6e2a: $04
	ld   c, c                                        ; $6e2b: $49
	ld   sp, hl                                      ; $6e2c: $f9
	dec  c                                           ; $6e2d: $0d
	nop                                              ; $6e2e: $00
	ld   a, [bc]                                     ; $6e2f: $0a
	add  hl, de                                      ; $6e30: $19
	dec  b                                           ; $6e31: $05
	inc  bc                                          ; $6e32: $03
	inc  bc                                          ; $6e33: $03
	call $d504                                       ; $6e34: $cd $04 $d5
	add  b                                           ; $6e37: $80
	ld   a, b                                        ; $6e38: $78
	nop                                              ; $6e39: $00
	nop                                              ; $6e3a: $00
	inc  bc                                          ; $6e3b: $03
	sub  b                                           ; $6e3c: $90
	inc  bc                                          ; $6e3d: $03
	cp   e                                           ; $6e3e: $bb
	add  b                                           ; $6e3f: $80
	ld   a, b                                        ; $6e40: $78
	ld   a, h                                        ; $6e41: $7c
	nop                                              ; $6e42: $00
	ld   bc, $cd03                                   ; $6e43: $01 $03 $cd
	inc  b                                           ; $6e46: $04
	push de                                          ; $6e47: $d5
	add  b                                           ; $6e48: $80
	ld   a, b                                        ; $6e49: $78
	inc  bc                                          ; $6e4a: $03
	add  [hl]                                        ; $6e4b: $86
	nop                                              ; $6e4c: $00
	ld   [bc], a                                     ; $6e4d: $02
	rlca                                             ; $6e4e: $07
	ld   a, a                                        ; $6e4f: $7f
	inc  bc                                          ; $6e50: $03
	ld   [bc], a                                     ; $6e51: $02
	inc  bc                                          ; $6e52: $03
	ld   bc, $2000                                   ; $6e53: $01 $00 $20
	nop                                              ; $6e56: $00
	rlca                                             ; $6e57: $07
	sbc  h                                           ; $6e58: $9c
	inc  bc                                          ; $6e59: $03
	ld   [bc], a                                     ; $6e5a: $02
	inc  bc                                          ; $6e5b: $03
	ld   bc, $2001                                   ; $6e5c: $01 $01 $20
	nop                                              ; $6e5f: $00
	rlca                                             ; $6e60: $07
	sbc  h                                           ; $6e61: $9c
	inc  bc                                          ; $6e62: $03
	ld   [bc], a                                     ; $6e63: $02
	inc  bc                                          ; $6e64: $03
	ld   bc, $2002                                   ; $6e65: $01 $02 $20
	nop                                              ; $6e68: $00
	ld   b, $9c                                      ; $6e69: $06 $9c
	inc  bc                                          ; $6e6b: $03
	inc  e                                           ; $6e6c: $1c
	rrca                                             ; $6e6d: $0f
	ld   bc, $1401                                   ; $6e6e: $01 $01 $14
	dec  de                                          ; $6e71: $1b
	ld   bc, $0301                                   ; $6e72: $01 $01 $03
	ld   c, d                                        ; $6e75: $4a
	ld   [bc], a                                     ; $6e76: $02
	or   h                                           ; $6e77: $b4
	ld   l, [hl]                                     ; $6e78: $6e
	sbc  a                                           ; $6e79: $9f
	dec  c                                           ; $6e7a: $0d
	nop                                              ; $6e7b: $00
	ld   a, [bc]                                     ; $6e7c: $0a
	dec  b                                           ; $6e7d: $05
	ld   b, b                                        ; $6e7e: $40
	rst  $38                                         ; $6e7f: $ff
	inc  bc                                          ; $6e80: $03
	rst  $38                                         ; $6e81: $ff
	ld   bc, $2801                                   ; $6e82: $01 $01 $28
	nop                                              ; $6e85: $00
	ld   b, $63                                      ; $6e86: $06 $63
	ld   bc, $0f1c                                   ; $6e88: $01 $1c $0f
	ld   [bc], a                                     ; $6e8b: $02
	ld   [bc], a                                     ; $6e8c: $02
	inc  d                                           ; $6e8d: $14
	inc  e                                           ; $6e8e: $1c
	ld   bc, $0301                                   ; $6e8f: $01 $01 $03
	jr   z, jr_058_6e98                              ; $6e92: $28 $04

	ld   c, b                                        ; $6e94: $48
	ld   l, [hl]                                     ; $6e95: $6e
	ld   [hl], c                                     ; $6e96: $71
	ld   l, l                                        ; $6e97: $6d

jr_058_6e98:
	ld   a, b                                        ; $6e98: $78
	rst  $38                                         ; $6e99: $ff
	rst  $38                                         ; $6e9a: $ff
	dec  c                                           ; $6e9b: $0d
	inc  bc                                          ; $6e9c: $03
	ld   c, d                                        ; $6e9d: $4a
	ld   [bc], a                                     ; $6e9e: $02
	or   h                                           ; $6e9f: $b4
	ld   a, l                                        ; $6ea0: $7d
	ld   bc, $0307                                   ; $6ea1: $01 $07 $03
	call $d504                                       ; $6ea4: $cd $04 $d5
	add  b                                           ; $6ea7: $80
	ld   a, b                                        ; $6ea8: $78
	ld   bc, $6e08                                   ; $6ea9: $01 $08 $6e
	sbc  a                                           ; $6eac: $9f
	dec  c                                           ; $6ead: $0d
	nop                                              ; $6eae: $00
	ld   a, [bc]                                     ; $6eaf: $0a
	ld   b, $63                                      ; $6eb0: $06 $63
	ld   bc, $7b07                                   ; $6eb2: $01 $07 $7b
	inc  b                                           ; $6eb5: $04
	inc  b                                           ; $6eb6: $04
	add  b                                           ; $6eb7: $80
	ld   d, d                                        ; $6eb8: $52
	ld   bc, $20ff                                   ; $6eb9: $01 $ff $20
	nop                                              ; $6ebc: $00
	inc  e                                           ; $6ebd: $1c
	rrca                                             ; $6ebe: $0f
	ld   [bc], a                                     ; $6ebf: $02
	ld   [bc], a                                     ; $6ec0: $02
	ld   bc, $4b04                                   ; $6ec1: $01 $04 $4b
	inc  b                                           ; $6ec4: $04
	ldh  a, [c]                                      ; $6ec5: $f2
	ld   [bc], a                                     ; $6ec6: $02
	sub  a                                           ; $6ec7: $97
	ld   [hl], l                                     ; $6ec8: $75
	ld   a, h                                        ; $6ec9: $7c
	ld   h, a                                        ; $6eca: $67
	adc  l                                           ; $6ecb: $8d
	sbc  d                                           ; $6ecc: $9a
	ld   h, e                                        ; $6ecd: $63
	and  c                                           ; $6ece: $a1
	ld   a, h                                        ; $6ecf: $7c
	dec  c                                           ; $6ed0: $0d
	nop                                              ; $6ed1: $00
	dec  b                                           ; $6ed2: $05
	add  b                                           ; $6ed3: $80
	ld   d, d                                        ; $6ed4: $52
	ld   bc, $0001                                   ; $6ed5: $01 $01 $00
	ld   bc, $ec04                                   ; $6ed8: $01 $04 $ec
	ld   a, l                                        ; $6edb: $7d
	inc  b                                           ; $6edc: $04
	ld   c, c                                        ; $6edd: $49
	ld   sp, hl                                      ; $6ede: $f9
	dec  c                                           ; $6edf: $0d
	nop                                              ; $6ee0: $00
	ld   a, [bc]                                     ; $6ee1: $0a
	add  hl, de                                      ; $6ee2: $19
	dec  b                                           ; $6ee3: $05
	inc  bc                                          ; $6ee4: $03
	inc  b                                           ; $6ee5: $04
	ld   hl, sp+$02                                  ; $6ee6: $f8 $02
	add  a                                           ; $6ee8: $87
	inc  b                                           ; $6ee9: $04
	or   a                                           ; $6eea: $b7
	inc  bc                                          ; $6eeb: $03
	add  d                                           ; $6eec: $82
	nop                                              ; $6eed: $00
	nop                                              ; $6eee: $00
	inc  bc                                          ; $6eef: $03
	inc  sp                                          ; $6ef0: $33
	dec  b                                           ; $6ef1: $05
	db   $ec                                         ; $6ef2: $ec
	inc  b                                           ; $6ef3: $04
	ld   h, h                                        ; $6ef4: $64
	inc  bc                                          ; $6ef5: $03
	ld   [hl-], a                                    ; $6ef6: $32
	nop                                              ; $6ef7: $00
	ld   bc, $5003                                   ; $6ef8: $01 $03 $50
	ld   [bc], a                                     ; $6efb: $02
	ld   a, h                                        ; $6efc: $7c
	ld   [bc], a                                     ; $6efd: $02
	or   [hl]                                        ; $6efe: $b6
	nop                                              ; $6eff: $00
	ld   [bc], a                                     ; $6f00: $02
	rlca                                             ; $6f01: $07
	ld   [hl-], a                                    ; $6f02: $32
	inc  b                                           ; $6f03: $04
	ld   [bc], a                                     ; $6f04: $02
	inc  bc                                          ; $6f05: $03
	ld   bc, $2000                                   ; $6f06: $01 $00 $20
	nop                                              ; $6f09: $00
	rlca                                             ; $6f0a: $07
	ld   c, a                                        ; $6f0b: $4f
	inc  b                                           ; $6f0c: $04
	ld   [bc], a                                     ; $6f0d: $02
	inc  bc                                          ; $6f0e: $03
	ld   bc, $2001                                   ; $6f0f: $01 $01 $20
	nop                                              ; $6f12: $00
	rlca                                             ; $6f13: $07
	ld   c, a                                        ; $6f14: $4f
	inc  b                                           ; $6f15: $04
	ld   [bc], a                                     ; $6f16: $02
	inc  bc                                          ; $6f17: $03
	ld   bc, $2002                                   ; $6f18: $01 $02 $20
	nop                                              ; $6f1b: $00
	ld   b, $4f                                      ; $6f1c: $06 $4f
	inc  b                                           ; $6f1e: $04
	inc  e                                           ; $6f1f: $1c
	rrca                                             ; $6f20: $0f
	ld   bc, $1401                                   ; $6f21: $01 $01 $14
	dec  de                                          ; $6f24: $1b
	ld   bc, $0301                                   ; $6f25: $01 $01 $03
	ld   c, d                                        ; $6f28: $4a
	ld   [bc], a                                     ; $6f29: $02
	or   h                                           ; $6f2a: $b4
	ld   l, [hl]                                     ; $6f2b: $6e
	sbc  a                                           ; $6f2c: $9f
	dec  c                                           ; $6f2d: $0d
	nop                                              ; $6f2e: $00
	ld   a, [bc]                                     ; $6f2f: $0a
	dec  b                                           ; $6f30: $05
	ld   b, b                                        ; $6f31: $40
	rst  $38                                         ; $6f32: $ff
	inc  bc                                          ; $6f33: $03
	rst  $38                                         ; $6f34: $ff
	ld   bc, $2801                                   ; $6f35: $01 $01 $28
	nop                                              ; $6f38: $00
	ld   b, $63                                      ; $6f39: $06 $63
	ld   bc, $0f1c                                   ; $6f3b: $01 $1c $0f
	ld   [bc], a                                     ; $6f3e: $02
	ld   [bc], a                                     ; $6f3f: $02
	inc  d                                           ; $6f40: $14
	inc  e                                           ; $6f41: $1c
	ld   bc, $0301                                   ; $6f42: $01 $01 $03
	jr   z, jr_058_6f4b                              ; $6f45: $28 $04

	ld   c, b                                        ; $6f47: $48
	ld   l, [hl]                                     ; $6f48: $6e
	ld   [hl], c                                     ; $6f49: $71
	ld   l, l                                        ; $6f4a: $6d

jr_058_6f4b:
	ld   a, b                                        ; $6f4b: $78
	rst  $38                                         ; $6f4c: $ff
	rst  $38                                         ; $6f4d: $ff
	dec  c                                           ; $6f4e: $0d
	inc  bc                                          ; $6f4f: $03
	ld   c, d                                        ; $6f50: $4a
	ld   [bc], a                                     ; $6f51: $02
	or   h                                           ; $6f52: $b4
	ld   a, l                                        ; $6f53: $7d
	ld   bc, $0407                                   ; $6f54: $01 $07 $04
	ld   hl, sp+$02                                  ; $6f57: $f8 $02
	add  a                                           ; $6f59: $87
	inc  b                                           ; $6f5a: $04
	or   a                                           ; $6f5b: $b7
	inc  bc                                          ; $6f5c: $03
	add  d                                           ; $6f5d: $82
	ld   bc, $6e08                                   ; $6f5e: $01 $08 $6e
	sbc  a                                           ; $6f61: $9f
	dec  c                                           ; $6f62: $0d
	nop                                              ; $6f63: $00
	ld   a, [bc]                                     ; $6f64: $0a
	ld   b, $63                                      ; $6f65: $06 $63
	ld   bc, $1d07                                   ; $6f67: $01 $07 $1d
	dec  b                                           ; $6f6a: $05
	inc  b                                           ; $6f6b: $04
	add  b                                           ; $6f6c: $80
	ld   d, e                                        ; $6f6d: $53
	ld   bc, $20ff                                   ; $6f6e: $01 $ff $20
	nop                                              ; $6f71: $00
	inc  e                                           ; $6f72: $1c
	rrca                                             ; $6f73: $0f
	ld   [bc], a                                     ; $6f74: $02
	ld   [bc], a                                     ; $6f75: $02
	ld   bc, $8d67                                   ; $6f76: $01 $67 $8d
	sbc  d                                           ; $6f79: $9a
	ld   h, e                                        ; $6f7a: $63
	and  c                                           ; $6f7b: $a1
	ld   a, h                                        ; $6f7c: $7c
	ld   h, l                                        ; $6f7d: $65
	sub  e                                           ; $6f7e: $93
	adc  l                                           ; $6f7f: $8d
	ld   a, l                                        ; $6f80: $7d
	inc  b                                           ; $6f81: $04
	ld   c, c                                        ; $6f82: $49
	ld   sp, hl                                      ; $6f83: $f9
	dec  c                                           ; $6f84: $0d
	nop                                              ; $6f85: $00
	ld   a, [bc]                                     ; $6f86: $0a
	dec  b                                           ; $6f87: $05
	add  b                                           ; $6f88: $80
	ld   d, e                                        ; $6f89: $53
	ld   bc, $0001                                   ; $6f8a: $01 $01 $00
	add  hl, de                                      ; $6f8d: $19
	dec  b                                           ; $6f8e: $05
	inc  bc                                          ; $6f8f: $03
	inc  bc                                          ; $6f90: $03
	ld   e, c                                        ; $6f91: $59
	ld   [bc], a                                     ; $6f92: $02
	ld   [hl-], a                                    ; $6f93: $32
	nop                                              ; $6f94: $00
	nop                                              ; $6f95: $00
	rst  $28                                         ; $6f96: $ef
	call nz, $b0b0                                   ; $6f97: $c4 $b0 $b0
	db   $eb                                         ; $6f9a: $eb
	and  l                                           ; $6f9b: $a5
	ldh  [$f5], a                                    ; $6f9c: $e0 $f5
	or   c                                           ; $6f9e: $b1
	nop                                              ; $6f9f: $00
	ld   bc, $b602                                   ; $6fa0: $01 $02 $b6
	inc  bc                                          ; $6fa3: $03
	ld   l, e                                        ; $6fa4: $6b
	nop                                              ; $6fa5: $00
	ld   [bc], a                                     ; $6fa6: $02
	rlca                                             ; $6fa7: $07
	ret  c                                           ; $6fa8: $d8

	inc  b                                           ; $6fa9: $04
	ld   [bc], a                                     ; $6faa: $02
	inc  bc                                          ; $6fab: $03
	ld   bc, $2000                                   ; $6fac: $01 $00 $20
	nop                                              ; $6faf: $00
	rlca                                             ; $6fb0: $07
	push af                                          ; $6fb1: $f5
	inc  b                                           ; $6fb2: $04
	ld   [bc], a                                     ; $6fb3: $02
	inc  bc                                          ; $6fb4: $03
	ld   bc, $2001                                   ; $6fb5: $01 $01 $20
	nop                                              ; $6fb8: $00
	rlca                                             ; $6fb9: $07
	push af                                          ; $6fba: $f5
	inc  b                                           ; $6fbb: $04
	ld   [bc], a                                     ; $6fbc: $02
	inc  bc                                          ; $6fbd: $03
	ld   bc, $2002                                   ; $6fbe: $01 $02 $20
	nop                                              ; $6fc1: $00
	ld   b, $f5                                      ; $6fc2: $06 $f5
	inc  b                                           ; $6fc4: $04
	inc  e                                           ; $6fc5: $1c
	rrca                                             ; $6fc6: $0f
	ld   bc, $1401                                   ; $6fc7: $01 $01 $14
	dec  de                                          ; $6fca: $1b
	ld   bc, $0301                                   ; $6fcb: $01 $01 $03
	ld   c, d                                        ; $6fce: $4a
	ld   [bc], a                                     ; $6fcf: $02
	or   h                                           ; $6fd0: $b4
	ld   l, [hl]                                     ; $6fd1: $6e
	sbc  a                                           ; $6fd2: $9f
	dec  c                                           ; $6fd3: $0d
	nop                                              ; $6fd4: $00
	ld   a, [bc]                                     ; $6fd5: $0a
	dec  b                                           ; $6fd6: $05
	ld   b, b                                        ; $6fd7: $40
	rst  $38                                         ; $6fd8: $ff
	inc  bc                                          ; $6fd9: $03
	rst  $38                                         ; $6fda: $ff
	ld   bc, $2801                                   ; $6fdb: $01 $01 $28
	nop                                              ; $6fde: $00
	ld   b, $63                                      ; $6fdf: $06 $63
	ld   bc, $0f1c                                   ; $6fe1: $01 $1c $0f
	ld   [bc], a                                     ; $6fe4: $02
	ld   [bc], a                                     ; $6fe5: $02
	inc  d                                           ; $6fe6: $14
	inc  e                                           ; $6fe7: $1c
	ld   bc, $0301                                   ; $6fe8: $01 $01 $03
	jr   z, jr_058_6ff1                              ; $6feb: $28 $04

	ld   c, b                                        ; $6fed: $48
	ld   l, [hl]                                     ; $6fee: $6e
	ld   [hl], c                                     ; $6fef: $71
	ld   l, l                                        ; $6ff0: $6d

jr_058_6ff1:
	ld   a, b                                        ; $6ff1: $78
	rst  $38                                         ; $6ff2: $ff
	rst  $38                                         ; $6ff3: $ff
	dec  c                                           ; $6ff4: $0d
	inc  bc                                          ; $6ff5: $03
	ld   c, d                                        ; $6ff6: $4a
	ld   [bc], a                                     ; $6ff7: $02
	or   h                                           ; $6ff8: $b4
	ld   a, l                                        ; $6ff9: $7d
	ld   bc, $0307                                   ; $6ffa: $01 $07 $03
	ld   e, c                                        ; $6ffd: $59
	ld   [bc], a                                     ; $6ffe: $02
	ld   [hl-], a                                    ; $6fff: $32
	ld   bc, $6e08                                   ; $7000: $01 $08 $6e
	sbc  a                                           ; $7003: $9f
	dec  c                                           ; $7004: $0d
	nop                                              ; $7005: $00
	ld   a, [bc]                                     ; $7006: $0a
	ld   b, $63                                      ; $7007: $06 $63
	ld   bc, $d707                                   ; $7009: $01 $07 $d7
	dec  b                                           ; $700c: $05
	inc  b                                           ; $700d: $04
	add  b                                           ; $700e: $80
	ld   d, h                                        ; $700f: $54
	ld   bc, $20ff                                   ; $7010: $01 $ff $20
	nop                                              ; $7013: $00
	inc  e                                           ; $7014: $1c
	rrca                                             ; $7015: $0f
	ld   [bc], a                                     ; $7016: $02
	ld   [bc], a                                     ; $7017: $02
	ld   bc, $8d67                                   ; $7018: $01 $67 $8d
	sbc  d                                           ; $701b: $9a
	ld   h, e                                        ; $701c: $63
	and  c                                           ; $701d: $a1
	ld   e, d                                        ; $701e: $5a
	inc  b                                           ; $701f: $04
	dec  de                                          ; $7020: $1b
	ld   e, c                                        ; $7021: $59
	ld   h, l                                        ; $7022: $65
	ld   l, l                                        ; $7023: $6d
	dec  c                                           ; $7024: $0d
	nop                                              ; $7025: $00
	dec  b                                           ; $7026: $05
	add  b                                           ; $7027: $80
	ld   d, h                                        ; $7028: $54
	ld   bc, $0001                                   ; $7029: $01 $01 $00
	ld   bc, $aa04                                   ; $702c: $01 $04 $aa
	inc  b                                           ; $702f: $04
	adc  a                                           ; $7030: $8f
	ld   [hl], l                                     ; $7031: $75
	inc  bc                                          ; $7032: $03
	inc  c                                           ; $7033: $0c
	adc  a                                           ; $7034: $8f
	ld   [hl], h                                     ; $7035: $74
	ld   a, h                                        ; $7036: $7c
	dec  b                                           ; $7037: $05
	add  hl, bc                                      ; $7038: $09
	inc  bc                                          ; $7039: $03
	add  [hl]                                        ; $703a: $86
	ld   [bc], a                                     ; $703b: $02
	and  $04                                         ; $703c: $e6 $04
	add  hl, sp                                      ; $703e: $39
	dec  c                                           ; $703f: $0d
	ld   a, h                                        ; $7040: $7c
	inc  b                                           ; $7041: $04
	rst  ToBoot                                         ; $7042: $c7
	inc  bc                                          ; $7043: $03
	ld   c, a                                        ; $7044: $4f
	ld   a, l                                        ; $7045: $7d
	inc  b                                           ; $7046: $04
	ld   c, c                                        ; $7047: $49
	ld   sp, hl                                      ; $7048: $f9
	dec  c                                           ; $7049: $0d
	nop                                              ; $704a: $00
	ld   a, [bc]                                     ; $704b: $0a
	add  hl, de                                      ; $704c: $19
	dec  b                                           ; $704d: $05
	inc  bc                                          ; $704e: $03
	inc  bc                                          ; $704f: $03
	adc  a                                           ; $7050: $8f
	inc  b                                           ; $7051: $04
	ld   d, d                                        ; $7052: $52
	nop                                              ; $7053: $00
	nop                                              ; $7054: $00
	ld   [bc], a                                     ; $7055: $02
	jr   c, @+$06                                    ; $7056: $38 $04

	ld   d, d                                        ; $7058: $52
	nop                                              ; $7059: $00
	ld   bc, $6705                                   ; $705a: $01 $05 $67
	dec  b                                           ; $705d: $05
	dec  a                                           ; $705e: $3d
	nop                                              ; $705f: $00
	ld   [bc], a                                     ; $7060: $02
	rlca                                             ; $7061: $07
	sub  d                                           ; $7062: $92
	dec  b                                           ; $7063: $05
	ld   [bc], a                                     ; $7064: $02
	inc  bc                                          ; $7065: $03
	ld   bc, $2000                                   ; $7066: $01 $00 $20
	nop                                              ; $7069: $00
	rlca                                             ; $706a: $07
	xor  a                                           ; $706b: $af
	dec  b                                           ; $706c: $05
	ld   [bc], a                                     ; $706d: $02
	inc  bc                                          ; $706e: $03
	ld   bc, $2001                                   ; $706f: $01 $01 $20
	nop                                              ; $7072: $00
	rlca                                             ; $7073: $07
	xor  a                                           ; $7074: $af
	dec  b                                           ; $7075: $05
	ld   [bc], a                                     ; $7076: $02
	inc  bc                                          ; $7077: $03
	ld   bc, $2002                                   ; $7078: $01 $02 $20
	nop                                              ; $707b: $00
	ld   b, $af                                      ; $707c: $06 $af
	dec  b                                           ; $707e: $05
	inc  e                                           ; $707f: $1c
	rrca                                             ; $7080: $0f
	ld   bc, $1401                                   ; $7081: $01 $01 $14
	dec  de                                          ; $7084: $1b
	ld   bc, $0301                                   ; $7085: $01 $01 $03
	ld   c, d                                        ; $7088: $4a
	ld   [bc], a                                     ; $7089: $02
	or   h                                           ; $708a: $b4
	ld   l, [hl]                                     ; $708b: $6e
	sbc  a                                           ; $708c: $9f
	dec  c                                           ; $708d: $0d
	nop                                              ; $708e: $00
	ld   a, [bc]                                     ; $708f: $0a
	dec  b                                           ; $7090: $05
	ld   b, b                                        ; $7091: $40
	rst  $38                                         ; $7092: $ff
	inc  bc                                          ; $7093: $03
	rst  $38                                         ; $7094: $ff
	ld   bc, $2801                                   ; $7095: $01 $01 $28
	nop                                              ; $7098: $00
	ld   b, $63                                      ; $7099: $06 $63
	ld   bc, $0f1c                                   ; $709b: $01 $1c $0f
	ld   [bc], a                                     ; $709e: $02
	ld   [bc], a                                     ; $709f: $02
	inc  d                                           ; $70a0: $14
	inc  e                                           ; $70a1: $1c
	ld   bc, $0301                                   ; $70a2: $01 $01 $03
	jr   z, jr_058_70ab                              ; $70a5: $28 $04

	ld   c, b                                        ; $70a7: $48
	ld   l, [hl]                                     ; $70a8: $6e
	ld   [hl], c                                     ; $70a9: $71
	ld   l, l                                        ; $70aa: $6d

jr_058_70ab:
	ld   a, b                                        ; $70ab: $78
	rst  $38                                         ; $70ac: $ff
	rst  $38                                         ; $70ad: $ff
	dec  c                                           ; $70ae: $0d
	inc  bc                                          ; $70af: $03
	ld   c, d                                        ; $70b0: $4a
	ld   [bc], a                                     ; $70b1: $02
	or   h                                           ; $70b2: $b4
	ld   a, l                                        ; $70b3: $7d
	ld   bc, $0307                                   ; $70b4: $01 $07 $03
	adc  a                                           ; $70b7: $8f
	inc  b                                           ; $70b8: $04
	ld   d, d                                        ; $70b9: $52
	ld   bc, $6e08                                   ; $70ba: $01 $08 $6e
	sbc  a                                           ; $70bd: $9f
	dec  c                                           ; $70be: $0d
	nop                                              ; $70bf: $00
	ld   a, [bc]                                     ; $70c0: $0a
	ld   b, $63                                      ; $70c1: $06 $63
	ld   bc, $a407                                   ; $70c3: $01 $07 $a4
	ld   b, $04                                      ; $70c6: $06 $04
	add  b                                           ; $70c8: $80
	ld   d, l                                        ; $70c9: $55
	ld   bc, $20ff                                   ; $70ca: $01 $ff $20
	nop                                              ; $70cd: $00
	inc  e                                           ; $70ce: $1c
	rrca                                             ; $70cf: $0f
	ld   [bc], a                                     ; $70d0: $02
	ld   [bc], a                                     ; $70d1: $02
	ld   bc, $cf02                                   ; $70d2: $01 $02 $cf
	inc  bc                                          ; $70d5: $03
	jp   $b57c                                       ; $70d6: $c3 $7c $b5


	ei                                               ; $70d9: $fb
	db   $ed                                         ; $70da: $ed
	ret  z                                           ; $70db: $c8

	push af                                          ; $70dc: $f5
	db   $ed                                         ; $70dd: $ed
	ei                                               ; $70de: $fb
	db   $ed                                         ; $70df: $ed
	dec  c                                           ; $70e0: $0d
	nop                                              ; $70e1: $00
	dec  b                                           ; $70e2: $05
	add  b                                           ; $70e3: $80
	ld   d, l                                        ; $70e4: $55
	ld   bc, $0001                                   ; $70e5: $01 $01 $00
	ld   bc, $057c                                   ; $70e8: $01 $7c $05
	xor  c                                           ; $70eb: $a9
	inc  b                                           ; $70ec: $04
	adc  a                                           ; $70ed: $8f
	halt                                             ; $70ee: $76
	ld   a, l                                        ; $70ef: $7d
	inc  b                                           ; $70f0: $04
	ld   c, c                                        ; $70f1: $49
	ld   sp, hl                                      ; $70f2: $f9
	dec  c                                           ; $70f3: $0d
	nop                                              ; $70f4: $00
	ld   a, [bc]                                     ; $70f5: $0a
	add  hl, de                                      ; $70f6: $19
	dec  b                                           ; $70f7: $05
	inc  bc                                          ; $70f8: $03
	ld   [de], a                                     ; $70f9: $12
	xor  h                                           ; $70fa: $ac
	call nz, $12d8                                   ; $70fb: $c4 $d8 $12
	rst  ToBoot                                         ; $70fe: $c7
	and  h                                           ; $70ff: $a4
	ei                                               ; $7100: $fb
	cp   d                                           ; $7101: $ba
	ret  c                                           ; $7102: $d8

	ei                                               ; $7103: $fb
	push af                                          ; $7104: $f5
	nop                                              ; $7105: $00
	nop                                              ; $7106: $00
	ld   [de], a                                     ; $7107: $12
	xor  h                                           ; $7108: $ac
	call nz, $13d8                                   ; $7109: $c4 $d8 $13
	rst  ToBoot                                         ; $710c: $c7
	and  h                                           ; $710d: $a4
	ei                                               ; $710e: $fb
	cp   d                                           ; $710f: $ba
	ret  c                                           ; $7110: $d8

	ei                                               ; $7111: $fb
	push af                                          ; $7112: $f5
	nop                                              ; $7113: $00
	ld   bc, $ac13                                   ; $7114: $01 $13 $ac
	call nz, $12d8                                   ; $7117: $c4 $d8 $12
	rst  ToBoot                                         ; $711a: $c7
	and  h                                           ; $711b: $a4
	ei                                               ; $711c: $fb
	cp   d                                           ; $711d: $ba
	ret  c                                           ; $711e: $d8

	ei                                               ; $711f: $fb
	push af                                          ; $7120: $f5
	nop                                              ; $7121: $00
	ld   [bc], a                                     ; $7122: $02
	rlca                                             ; $7123: $07
	ld   d, h                                        ; $7124: $54
	ld   b, $02                                      ; $7125: $06 $02
	inc  bc                                          ; $7127: $03
	ld   bc, $2000                                   ; $7128: $01 $00 $20
	nop                                              ; $712b: $00
	rlca                                             ; $712c: $07
	ld   [hl], c                                     ; $712d: $71
	ld   b, $02                                      ; $712e: $06 $02
	inc  bc                                          ; $7130: $03
	ld   bc, $2001                                   ; $7131: $01 $01 $20
	nop                                              ; $7134: $00
	rlca                                             ; $7135: $07
	ld   [hl], c                                     ; $7136: $71
	ld   b, $02                                      ; $7137: $06 $02
	inc  bc                                          ; $7139: $03
	ld   bc, $2002                                   ; $713a: $01 $02 $20
	nop                                              ; $713d: $00
	ld   b, $71                                      ; $713e: $06 $71
	ld   b, $1c                                      ; $7140: $06 $1c
	rrca                                             ; $7142: $0f
	ld   bc, $1401                                   ; $7143: $01 $01 $14
	dec  de                                          ; $7146: $1b
	ld   bc, $0301                                   ; $7147: $01 $01 $03
	ld   c, d                                        ; $714a: $4a
	ld   [bc], a                                     ; $714b: $02
	or   h                                           ; $714c: $b4
	ld   l, [hl]                                     ; $714d: $6e
	sbc  a                                           ; $714e: $9f
	dec  c                                           ; $714f: $0d
	nop                                              ; $7150: $00
	ld   a, [bc]                                     ; $7151: $0a

Call_058_7152:
	dec  b                                           ; $7152: $05
	ld   b, b                                        ; $7153: $40
	rst  $38                                         ; $7154: $ff
	inc  bc                                          ; $7155: $03
	rst  $38                                         ; $7156: $ff
	ld   bc, $2801                                   ; $7157: $01 $01 $28
	nop                                              ; $715a: $00
	ld   b, $63                                      ; $715b: $06 $63
	ld   bc, $0f1c                                   ; $715d: $01 $1c $0f
	ld   [bc], a                                     ; $7160: $02
	ld   [bc], a                                     ; $7161: $02
	inc  d                                           ; $7162: $14
	inc  e                                           ; $7163: $1c
	ld   bc, $0301                                   ; $7164: $01 $01 $03
	jr   z, jr_058_716d                              ; $7167: $28 $04

	ld   c, b                                        ; $7169: $48
	ld   l, [hl]                                     ; $716a: $6e
	ld   [hl], c                                     ; $716b: $71
	ld   l, l                                        ; $716c: $6d

jr_058_716d:
	ld   a, b                                        ; $716d: $78
	rst  $38                                         ; $716e: $ff
	rst  $38                                         ; $716f: $ff
	db   $10                                         ; $7170: $10
	inc  bc                                          ; $7171: $03
	ld   c, d                                        ; $7172: $4a
	ld   [bc], a                                     ; $7173: $02
	or   h                                           ; $7174: $b4
	ld   a, l                                        ; $7175: $7d
	sbc  [hl]                                        ; $7176: $9e
	dec  c                                           ; $7177: $0d
	ld   bc, $1207                                   ; $7178: $01 $07 $12
	xor  h                                           ; $717b: $ac
	call nz, $12d8                                   ; $717c: $c4 $d8 $12
	rst  ToBoot                                         ; $717f: $c7
	and  h                                           ; $7180: $a4
	ei                                               ; $7181: $fb
	cp   d                                           ; $7182: $ba
	ret  c                                           ; $7183: $d8

	ei                                               ; $7184: $fb
	push af                                          ; $7185: $f5
	ld   bc, $0d08                                   ; $7186: $01 $08 $0d
	ld   l, [hl]                                     ; $7189: $6e
	sbc  a                                           ; $718a: $9f
	dec  c                                           ; $718b: $0d
	nop                                              ; $718c: $00
	ld   a, [bc]                                     ; $718d: $0a
	ld   b, $63                                      ; $718e: $06 $63
	ld   bc, $4007                                   ; $7190: $01 $07 $40
	rlca                                             ; $7193: $07
	inc  b                                           ; $7194: $04
	add  b                                           ; $7195: $80
	ld   d, [hl]                                     ; $7196: $56
	ld   bc, $20ff                                   ; $7197: $01 $ff $20
	nop                                              ; $719a: $00
	inc  e                                           ; $719b: $1c
	rrca                                             ; $719c: $0f
	ld   [bc], a                                     ; $719d: $02
	ld   [bc], a                                     ; $719e: $02
	ld   bc, $8d67                                   ; $719f: $01 $67 $8d
	sbc  d                                           ; $71a2: $9a
	ld   h, e                                        ; $71a3: $63
	and  c                                           ; $71a4: $a1
	ld   e, d                                        ; $71a5: $5a
	ld   [bc], a                                     ; $71a6: $02
	sbc  d                                           ; $71a7: $9a
	ld   e, e                                        ; $71a8: $5b
	ld   a, b                                        ; $71a9: $78
	inc  bc                                          ; $71aa: $03
	dec  bc                                          ; $71ab: $0b
	ld   a, l                                        ; $71ac: $7d
	ld   sp, hl                                      ; $71ad: $f9
	dec  c                                           ; $71ae: $0d
	nop                                              ; $71af: $00
	ld   a, [bc]                                     ; $71b0: $0a
	dec  b                                           ; $71b1: $05
	add  b                                           ; $71b2: $80
	ld   d, [hl]                                     ; $71b3: $56
	ld   bc, $0001                                   ; $71b4: $01 $01 $00
	add  hl, de                                      ; $71b7: $19
	dec  b                                           ; $71b8: $05
	inc  bc                                          ; $71b9: $03
	adc  [hl]                                        ; $71ba: $8e
	sub  a                                           ; $71bb: $97
	ld   h, e                                        ; $71bc: $63
	ld   e, e                                        ; $71bd: $5b
	nop                                              ; $71be: $00
	nop                                              ; $71bf: $00
	push de                                          ; $71c0: $d5
	push af                                          ; $71c1: $f5
	or   b                                           ; $71c2: $b0
	nop                                              ; $71c3: $00
	ld   bc, $5950                                   ; $71c4: $01 $50 $59
	nop                                              ; $71c7: $00
	ld   [bc], a                                     ; $71c8: $02
	rlca                                             ; $71c9: $07
	ld   a, [$0206]                                  ; $71ca: $fa $06 $02
	inc  bc                                          ; $71cd: $03
	ld   bc, $2000                                   ; $71ce: $01 $00 $20
	nop                                              ; $71d1: $00
	rlca                                             ; $71d2: $07
	rla                                              ; $71d3: $17
	rlca                                             ; $71d4: $07
	ld   [bc], a                                     ; $71d5: $02
	inc  bc                                          ; $71d6: $03
	ld   bc, $2001                                   ; $71d7: $01 $01 $20
	nop                                              ; $71da: $00
	rlca                                             ; $71db: $07
	rla                                              ; $71dc: $17
	rlca                                             ; $71dd: $07
	ld   [bc], a                                     ; $71de: $02
	inc  bc                                          ; $71df: $03
	ld   bc, $2002                                   ; $71e0: $01 $02 $20
	nop                                              ; $71e3: $00
	ld   b, $17                                      ; $71e4: $06 $17
	rlca                                             ; $71e6: $07
	inc  e                                           ; $71e7: $1c
	rrca                                             ; $71e8: $0f
	ld   bc, $1401                                   ; $71e9: $01 $01 $14
	dec  de                                          ; $71ec: $1b
	ld   bc, $0301                                   ; $71ed: $01 $01 $03
	ld   c, d                                        ; $71f0: $4a
	ld   [bc], a                                     ; $71f1: $02
	or   h                                           ; $71f2: $b4
	ld   l, [hl]                                     ; $71f3: $6e
	sbc  a                                           ; $71f4: $9f
	dec  c                                           ; $71f5: $0d
	nop                                              ; $71f6: $00
	ld   a, [bc]                                     ; $71f7: $0a
	dec  b                                           ; $71f8: $05
	ld   b, b                                        ; $71f9: $40
	rst  $38                                         ; $71fa: $ff
	inc  bc                                          ; $71fb: $03
	rst  $38                                         ; $71fc: $ff
	ld   bc, $2801                                   ; $71fd: $01 $01 $28
	nop                                              ; $7200: $00
	ld   b, $63                                      ; $7201: $06 $63
	ld   bc, $0f1c                                   ; $7203: $01 $1c $0f
	ld   [bc], a                                     ; $7206: $02
	ld   [bc], a                                     ; $7207: $02
	inc  d                                           ; $7208: $14
	inc  e                                           ; $7209: $1c
	ld   bc, $0301                                   ; $720a: $01 $01 $03
	jr   z, jr_058_7213                              ; $720d: $28 $04

	ld   c, b                                        ; $720f: $48
	ld   l, [hl]                                     ; $7210: $6e
	ld   [hl], c                                     ; $7211: $71
	ld   l, l                                        ; $7212: $6d

jr_058_7213:
	ld   a, b                                        ; $7213: $78
	rst  $38                                         ; $7214: $ff
	rst  $38                                         ; $7215: $ff
	dec  c                                           ; $7216: $0d
	inc  bc                                          ; $7217: $03
	ld   c, d                                        ; $7218: $4a
	ld   [bc], a                                     ; $7219: $02
	or   h                                           ; $721a: $b4
	ld   a, l                                        ; $721b: $7d
	sbc  [hl]                                        ; $721c: $9e
	ld   bc, $8e07                                   ; $721d: $01 $07 $8e
	sub  a                                           ; $7220: $97
	ld   h, e                                        ; $7221: $63
	ld   e, e                                        ; $7222: $5b
	ld   bc, $6e08                                   ; $7223: $01 $08 $6e
	sbc  a                                           ; $7226: $9f
	dec  c                                           ; $7227: $0d
	nop                                              ; $7228: $00
	ld   a, [bc]                                     ; $7229: $0a
	ld   b, $63                                      ; $722a: $06 $63
	ld   bc, $c407                                   ; $722c: $01 $07 $c4
	ld   bc, $8004                                   ; $722f: $01 $04 $80
	ld   d, a                                        ; $7232: $57
	ld   bc, $20ff                                   ; $7233: $01 $ff $20
	nop                                              ; $7236: $00
	inc  e                                           ; $7237: $1c
	rrca                                             ; $7238: $0f
	ld   [bc], a                                     ; $7239: $02
	ld   [bc], a                                     ; $723a: $02
	ld   bc, $8d67                                   ; $723b: $01 $67 $8d
	sbc  d                                           ; $723e: $9a
	ld   h, e                                        ; $723f: $63
	and  c                                           ; $7240: $a1
	ld   e, d                                        ; $7241: $5a
	inc  b                                           ; $7242: $04
	ld   c, $02                                      ; $7243: $0e $02
	sbc  d                                           ; $7245: $9a
	ld   e, e                                        ; $7246: $5b
	ld   a, b                                        ; $7247: $78
	dec  c                                           ; $7248: $0d
	nop                                              ; $7249: $00
	dec  b                                           ; $724a: $05
	add  b                                           ; $724b: $80
	ld   d, a                                        ; $724c: $57
	ld   bc, $0001                                   ; $724d: $01 $01 $00
	ld   bc, $0702                                   ; $7250: $01 $02 $07
	adc  l                                           ; $7253: $8d
	inc  b                                           ; $7254: $04
	sub  d                                           ; $7255: $92
	ld   a, l                                        ; $7256: $7d
	inc  b                                           ; $7257: $04
	ld   c, c                                        ; $7258: $49
	ld   sp, hl                                      ; $7259: $f9
	dec  c                                           ; $725a: $0d
	nop                                              ; $725b: $00
	ld   a, [bc]                                     ; $725c: $0a
	add  hl, de                                      ; $725d: $19
	dec  b                                           ; $725e: $05
	inc  bc                                          ; $725f: $03
	ld   [bc], a                                     ; $7260: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7261: $cf
	inc  bc                                          ; $7262: $03
	jp   $0000                                      ; $7263: $c3 $00 $00


	ld   e, b                                        ; $7266: $58
	inc  bc                                          ; $7267: $03
	jp   Boot                                        ; $7268: $c3 $00 $01


	or   h                                           ; $726b: $b4
	ei                                               ; $726c: $fb
	db   $d3                                         ; $726d: $d3
	ei                                               ; $726e: $fb
	nop                                              ; $726f: $00
	ld   [bc], a                                     ; $7270: $02
	rlca                                             ; $7271: $07
	and  d                                           ; $7272: $a2
	rlca                                             ; $7273: $07
	ld   [bc], a                                     ; $7274: $02
	inc  bc                                          ; $7275: $03
	ld   bc, $2000                                   ; $7276: $01 $00 $20

Jump_058_7279:
	nop                                              ; $7279: $00
	rlca                                             ; $727a: $07
	cp   a                                           ; $727b: $bf
	rlca                                             ; $727c: $07
	ld   [bc], a                                     ; $727d: $02
	inc  bc                                          ; $727e: $03
	ld   bc, $2001                                   ; $727f: $01 $01 $20
	nop                                              ; $7282: $00
	rlca                                             ; $7283: $07
	cp   a                                           ; $7284: $bf
	rlca                                             ; $7285: $07
	ld   [bc], a                                     ; $7286: $02
	inc  bc                                          ; $7287: $03
	ld   bc, $2002                                   ; $7288: $01 $02 $20
	nop                                              ; $728b: $00
	ld   b, $bf                                      ; $728c: $06 $bf
	rlca                                             ; $728e: $07
	inc  e                                           ; $728f: $1c
	rrca                                             ; $7290: $0f
	ld   bc, $1401                                   ; $7291: $01 $01 $14
	dec  de                                          ; $7294: $1b
	ld   bc, $0301                                   ; $7295: $01 $01 $03
	ld   c, d                                        ; $7298: $4a
	ld   [bc], a                                     ; $7299: $02
	or   h                                           ; $729a: $b4
	ld   l, [hl]                                     ; $729b: $6e
	sbc  a                                           ; $729c: $9f
	dec  c                                           ; $729d: $0d
	nop                                              ; $729e: $00
	ld   a, [bc]                                     ; $729f: $0a
	dec  b                                           ; $72a0: $05
	ld   b, b                                        ; $72a1: $40
	rst  $38                                         ; $72a2: $ff
	inc  bc                                          ; $72a3: $03
	rst  $38                                         ; $72a4: $ff
	ld   bc, $2801                                   ; $72a5: $01 $01 $28
	nop                                              ; $72a8: $00
	ld   b, $63                                      ; $72a9: $06 $63
	ld   bc, $0f1c                                   ; $72ab: $01 $1c $0f
	ld   [bc], a                                     ; $72ae: $02
	ld   [bc], a                                     ; $72af: $02
	inc  d                                           ; $72b0: $14
	inc  e                                           ; $72b1: $1c
	ld   bc, $0301                                   ; $72b2: $01 $01 $03
	jr   z, jr_058_72bb                              ; $72b5: $28 $04

	ld   c, b                                        ; $72b7: $48
	ld   l, [hl]                                     ; $72b8: $6e
	ld   [hl], c                                     ; $72b9: $71
	ld   l, l                                        ; $72ba: $6d

jr_058_72bb:
	ld   a, b                                        ; $72bb: $78
	rst  $38                                         ; $72bc: $ff
	rst  $38                                         ; $72bd: $ff
	dec  c                                           ; $72be: $0d
	inc  bc                                          ; $72bf: $03
	ld   c, d                                        ; $72c0: $4a
	ld   [bc], a                                     ; $72c1: $02
	or   h                                           ; $72c2: $b4
	ld   a, l                                        ; $72c3: $7d
	sbc  [hl]                                        ; $72c4: $9e
	ld   bc, $0207                                   ; $72c5: $01 $07 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72c8: $cf
	inc  bc                                          ; $72c9: $03
	jp   $0801                                       ; $72ca: $c3 $01 $08


	ld   l, [hl]                                     ; $72cd: $6e
	sbc  a                                           ; $72ce: $9f
	dec  c                                           ; $72cf: $0d
	nop                                              ; $72d0: $00
	ld   a, [bc]                                     ; $72d1: $0a
	ld   b, $63                                      ; $72d2: $06 $63
	ld   bc, $1c00                                   ; $72d4: $01 $00 $1c
	inc  bc                                          ; $72d7: $03
	nop                                              ; $72d8: $00
	nop                                              ; $72d9: $00
	ld   [bc], a                                     ; $72da: $02
	ld   bc, $0008                                   ; $72db: $01 $08 $00
	ld   e, l                                        ; $72de: $5d
	and  c                                           ; $72df: $a1
	sbc  a                                           ; $72e0: $9f
	dec  c                                           ; $72e1: $0d
	ld   l, a                                        ; $72e2: $6f
	sub  l                                           ; $72e3: $95
	ld   d, h                                        ; $72e4: $54
	ld   [hl], a                                     ; $72e5: $77
	sub  [hl]                                        ; $72e6: $96
	ld   e, c                                        ; $72e7: $59
	ld   [hl], c                                     ; $72e8: $71
	ld   l, l                                        ; $72e9: $6d
	sbc  a                                           ; $72ea: $9f
	dec  c                                           ; $72eb: $0d
	nop                                              ; $72ec: $00
	ld   a, [bc]                                     ; $72ed: $0a
	inc  e                                           ; $72ee: $1c
	inc  bc                                          ; $72ef: $03
	nop                                              ; $72f0: $00
	nop                                              ; $72f1: $00
	ld   bc, $7850                                   ; $72f2: $01 $50 $78
	ld   l, l                                        ; $72f5: $6d
	ld   a, h                                        ; $72f6: $7c
	inc  b                                           ; $72f7: $04
	xor  d                                           ; $72f8: $aa
	ld   [bc], a                                     ; $72f9: $02
	ld   e, a                                        ; $72fa: $5f
	ld   a, h                                        ; $72fb: $7c
	inc  bc                                          ; $72fc: $03
	db   $ec                                         ; $72fd: $ec
	dec  b                                           ; $72fe: $05
	add  hl, de                                      ; $72ff: $19
	ld   a, h                                        ; $7300: $7c
	ld   l, c                                        ; $7301: $69
	ld   d, d                                        ; $7302: $52
	ld   e, c                                        ; $7303: $59
	and  b                                           ; $7304: $a0
	dec  c                                           ; $7305: $0d
	ld   [bc], a                                     ; $7306: $02
	sub  l                                           ; $7307: $95
	ld   [hl], h                                     ; $7308: $74
	adc  l                                           ; $7309: $8d
	ld   l, l                                        ; $730a: $6d
	ld   d, d                                        ; $730b: $52
	ld   e, c                                        ; $730c: $59
	sub  a                                           ; $730d: $97
	dec  c                                           ; $730e: $0d
	ld   d, d                                        ; $730f: $52
	ld   [hl], c                                     ; $7310: $71
	ld   h, l                                        ; $7311: $65
	sub  l                                           ; $7312: $95
	ld   a, c                                        ; $7313: $79
	ld   e, e                                        ; $7314: $5b
	ld   a, b                                        ; $7315: $78
	ld   h, e                                        ; $7316: $63
	ld   d, d                                        ; $7317: $52
	sbc  a                                           ; $7318: $9f
	dec  c                                           ; $7319: $0d
	nop                                              ; $731a: $00
	ld   a, [bc]                                     ; $731b: $0a
	dec  c                                           ; $731c: $0d
	nop                                              ; $731d: $00
	nop                                              ; $731e: $00
	rrca                                             ; $731f: $0f
	nop                                              ; $7320: $00
	ld   bc, $031a                                   ; $7321: $01 $1a $03
	rlca                                             ; $7324: $07
	ld   h, e                                        ; $7325: $63
	nop                                              ; $7326: $00
	ld   [bc], a                                     ; $7327: $02
	inc  b                                           ; $7328: $04
	ld   bc, $2002                                   ; $7329: $01 $02 $20
	nop                                              ; $732c: $00
	rlca                                             ; $732d: $07
	call c, $0200                                    ; $732e: $dc $00 $02
	inc  b                                           ; $7331: $04
	ld   bc, $2001                                   ; $7332: $01 $01 $20
	nop                                              ; $7335: $00
	ld   b, $42                                      ; $7336: $06 $42
	ld   bc, $031c                                   ; $7338: $01 $1c $03
	inc  bc                                          ; $733b: $03
	inc  bc                                          ; $733c: $03
	dec  e                                           ; $733d: $1d
	ld   b, b                                        ; $733e: $40
	inc  de                                          ; $733f: $13
	inc  bc                                          ; $7340: $03
	inc  de                                          ; $7341: $13
	ld   bc, $2803                                   ; $7342: $01 $03 $28
	nop                                              ; $7345: $00
	ld   bc, $0008                                   ; $7346: $01 $08 $00
	ld   e, l                                        ; $7349: $5d
	and  c                                           ; $734a: $a1
	sbc  [hl]                                        ; $734b: $9e
	dec  c                                           ; $734c: $0d
	sub  d                                           ; $734d: $92
	sbc  c                                           ; $734e: $99
	sbc  l                                           ; $734f: $9d
	ld   a, e                                        ; $7350: $7b
	sbc  a                                           ; $7351: $9f
	dec  c                                           ; $7352: $0d
	nop                                              ; $7353: $00
	ld   a, [bc]                                     ; $7354: $0a
	ld   bc, $a502                                   ; $7355: $01 $02 $a5
	ld   [bc], a                                     ; $7358: $02
	xor  d                                           ; $7359: $aa
	sub  b                                           ; $735a: $90
	sbc  [hl]                                        ; $735b: $9e
	ld   l, e                                        ; $735c: $6b
	ld   a, h                                        ; $735d: $7c
	inc  bc                                          ; $735e: $03
	cp   $03                                         ; $735f: $fe $03
	add  [hl]                                        ; $7361: $86
	ld   [hl], l                                     ; $7362: $75
	dec  c                                           ; $7363: $0d
	inc  bc                                          ; $7364: $03
	ld   [hl], l                                     ; $7365: $75
	halt                                             ; $7366: $76
	inc  b                                           ; $7367: $04
	dec  c                                           ; $7368: $0d
	sbc  [hl]                                        ; $7369: $9e
	ld   l, e                                        ; $736a: $6b
	ld   h, l                                        ; $736b: $65
	ld   [hl], h                                     ; $736c: $74
	ld   [bc], a                                     ; $736d: $02
	adc  h                                           ; $736e: $8c
	and  b                                           ; $736f: $a0
	dec  c                                           ; $7370: $0d
	adc  l                                           ; $7371: $8d
	ld   e, d                                        ; $7372: $5a
	ld   d, d                                        ; $7373: $52
	ld   [hl], h                                     ; $7374: $74
	ld   d, d                                        ; $7375: $52
	ld   e, e                                        ; $7376: $5b
	ld   a, b                                        ; $7377: $78
	ld   h, e                                        ; $7378: $63
	ld   d, d                                        ; $7379: $52
	sbc  a                                           ; $737a: $9f
	dec  c                                           ; $737b: $0d
	nop                                              ; $737c: $00
	ld   a, [bc]                                     ; $737d: $0a
	ld   bc, $5063                                   ; $737e: $01 $63 $50
	sbc  [hl]                                        ; $7381: $9e
	ld   h, a                                        ; $7382: $67
	ld   e, [hl]                                     ; $7383: $5e
	ld   a, c                                        ; $7384: $79
	inc  bc                                          ; $7385: $03
	ld   l, l                                        ; $7386: $6d
	dec  b                                           ; $7387: $05
	add  hl, de                                      ; $7388: $19
	ld   e, d                                        ; $7389: $5a
	dec  b                                           ; $738a: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $738b: $cf
	adc  h                                           ; $738c: $8c
	sbc  c                                           ; $738d: $99
	sbc  l                                           ; $738e: $9d
	sbc  a                                           ; $738f: $9f
	dec  c                                           ; $7390: $0d
	dec  b                                           ; $7391: $05
	jr   z, @+$54                                    ; $7392: $28 $52

	ld   [hl], l                                     ; $7394: $75
	ld   h, l                                        ; $7395: $65
	ld   l, l                                        ; $7396: $6d
	ld   e, l                                        ; $7397: $5d
	ld   h, l                                        ; $7398: $65
	ld   [hl], h                                     ; $7399: $74
	sbc  a                                           ; $739a: $9f
	dec  c                                           ; $739b: $0d
	ld   h, [hl]                                     ; $739c: $66
	sub  c                                           ; $739d: $91
	sbc  [hl]                                        ; $739e: $9e
	ld   e, d                                        ; $739f: $5a
	and  c                                           ; $73a0: $a1
	ld   a, [hl]                                     ; $73a1: $7e
	ld   [hl], c                                     ; $73a2: $71
	ld   [hl], h                                     ; $73a3: $74
	ld   a, e                                        ; $73a4: $7b
	sbc  a                                           ; $73a5: $9f
	dec  c                                           ; $73a6: $0d
	nop                                              ; $73a7: $00
	ld   a, [bc]                                     ; $73a8: $0a
	dec  c                                           ; $73a9: $0d
	nop                                              ; $73aa: $00
	nop                                              ; $73ab: $00
	rrca                                             ; $73ac: $0f
	nop                                              ; $73ad: $00
	ld   bc, $1e09                                   ; $73ae: $01 $09 $1e
	nop                                              ; $73b1: $00
	inc  e                                           ; $73b2: $1c
	inc  bc                                          ; $73b3: $03
	inc  bc                                          ; $73b4: $03
	inc  bc                                          ; $73b5: $03
	dec  e                                           ; $73b6: $1d
	ld   b, b                                        ; $73b7: $40
	inc  de                                          ; $73b8: $13
	inc  bc                                          ; $73b9: $03
	inc  de                                          ; $73ba: $13
	ld   bc, $2801                                   ; $73bb: $01 $01 $28
	nop                                              ; $73be: $00
	ld   bc, $0008                                   ; $73bf: $01 $08 $00
	ld   e, l                                        ; $73c2: $5d
	and  c                                           ; $73c3: $a1
	sbc  [hl]                                        ; $73c4: $9e
	dec  c                                           ; $73c5: $0d
	ld   d, d                                        ; $73c6: $52
	ld   d, d                                        ; $73c7: $52
	ld   e, c                                        ; $73c8: $59
	and  c                                           ; $73c9: $a1
	ld   h, [hl]                                     ; $73ca: $66
	ld   a, e                                        ; $73cb: $7b
	sbc  a                                           ; $73cc: $9f
	dec  c                                           ; $73cd: $0d
	nop                                              ; $73ce: $00
	ld   a, [bc]                                     ; $73cf: $0a
	ld   bc, $7c6b                                   ; $73d0: $01 $6b $7c
	inc  bc                                          ; $73d3: $03
	cp   $03                                         ; $73d4: $fe $03
	add  [hl]                                        ; $73d6: $86
	ld   [hl], l                                     ; $73d7: $75
	dec  c                                           ; $73d8: $0d
	ld   e, d                                        ; $73d9: $5a
	and  c                                           ; $73da: $a1
	ld   a, [hl]                                     ; $73db: $7e
	sbc  b                                           ; $73dc: $98
	ld   a, b                                        ; $73dd: $78
	ld   h, e                                        ; $73de: $63
	ld   d, d                                        ; $73df: $52
	sbc  a                                           ; $73e0: $9f
	dec  c                                           ; $73e1: $0d
	nop                                              ; $73e2: $00
	ld   a, [bc]                                     ; $73e3: $0a
	ld   bc, $5063                                   ; $73e4: $01 $63 $50
	sbc  [hl]                                        ; $73e7: $9e
	ld   h, a                                        ; $73e8: $67
	ld   e, [hl]                                     ; $73e9: $5e
	ld   a, c                                        ; $73ea: $79
	inc  bc                                          ; $73eb: $03
	ld   l, l                                        ; $73ec: $6d
	dec  b                                           ; $73ed: $05
	add  hl, de                                      ; $73ee: $19
	ld   e, d                                        ; $73ef: $5a
	dec  b                                           ; $73f0: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73f1: $cf
	adc  h                                           ; $73f2: $8c
	sbc  c                                           ; $73f3: $99
	sbc  l                                           ; $73f4: $9d
	sbc  a                                           ; $73f5: $9f
	dec  c                                           ; $73f6: $0d
	dec  b                                           ; $73f7: $05
	jr   z, jr_058_744c                              ; $73f8: $28 $52

	ld   [hl], l                                     ; $73fa: $75
	ld   h, l                                        ; $73fb: $65
	ld   l, l                                        ; $73fc: $6d
	ld   e, l                                        ; $73fd: $5d
	ld   h, l                                        ; $73fe: $65
	ld   [hl], h                                     ; $73ff: $74
	sbc  a                                           ; $7400: $9f
	dec  c                                           ; $7401: $0d
	ld   h, [hl]                                     ; $7402: $66
	sub  c                                           ; $7403: $91
	sbc  [hl]                                        ; $7404: $9e
	ld   e, d                                        ; $7405: $5a
	and  c                                           ; $7406: $a1
	ld   a, [hl]                                     ; $7407: $7e
	ld   [hl], c                                     ; $7408: $71
	ld   [hl], h                                     ; $7409: $74
	ld   a, e                                        ; $740a: $7b
	sbc  a                                           ; $740b: $9f
	dec  c                                           ; $740c: $0d
	nop                                              ; $740d: $00
	ld   a, [bc]                                     ; $740e: $0a
	dec  c                                           ; $740f: $0d
	nop                                              ; $7410: $00
	nop                                              ; $7411: $00
	rrca                                             ; $7412: $0f
	nop                                              ; $7413: $00
	ld   bc, $1e09                                   ; $7414: $01 $09 $1e
	nop                                              ; $7417: $00
	inc  e                                           ; $7418: $1c
	inc  bc                                          ; $7419: $03
	inc  b                                           ; $741a: $04
	inc  b                                           ; $741b: $04
	dec  e                                           ; $741c: $1d
	ld   b, b                                        ; $741d: $40
	inc  de                                          ; $741e: $13
	inc  bc                                          ; $741f: $03
	inc  de                                          ; $7420: $13
	ld   bc, $2902                                   ; $7421: $01 $02 $29
	nop                                              ; $7424: $00
	ld   bc, $fc54                                   ; $7425: $01 $54 $fc
	and  c                                           ; $7428: $a1
	rst  $38                                         ; $7429: $ff
	rst  $38                                         ; $742a: $ff
	dec  c                                           ; $742b: $0d
	ld   h, c                                        ; $742c: $61
	ld   a, h                                        ; $742d: $7c
	inc  bc                                          ; $742e: $03
	ld   [de], a                                     ; $742f: $12
	inc  bc                                          ; $7430: $03
	dec  sp                                          ; $7431: $3b
	ld   a, l                                        ; $7432: $7d
	ld   l, a                                        ; $7433: $6f
	sub  l                                           ; $7434: $95
	ld   [hl], c                                     ; $7435: $71
	halt                                             ; $7436: $76
	dec  c                                           ; $7437: $0d
	dec  b                                           ; $7438: $05
	sub  [hl]                                        ; $7439: $96
	ld   [hl], c                                     ; $743a: $71
	ld   l, l                                        ; $743b: $6d
	sbc  l                                           ; $743c: $9d
	ld   a, e                                        ; $743d: $7b
	rst  $38                                         ; $743e: $ff
	rst  $38                                         ; $743f: $ff
	sbc  a                                           ; $7440: $9f
	dec  c                                           ; $7441: $0d
	nop                                              ; $7442: $00
	ld   a, [bc]                                     ; $7443: $0a
	inc  e                                           ; $7444: $1c
	inc  bc                                          ; $7445: $03
	inc  bc                                          ; $7446: $03
	inc  bc                                          ; $7447: $03
	ld   bc, $5490                                   ; $7448: $01 $90 $54
	ld   l, a                                        ; $744b: $6f

jr_058_744c:
	sub  l                                           ; $744c: $95
	ld   [hl], c                                     ; $744d: $71
	halt                                             ; $744e: $76
	sbc  [hl]                                        ; $744f: $9e
	dec  c                                           ; $7450: $0d
	ld   e, d                                        ; $7451: $5a
	and  c                                           ; $7452: $a1
	ld   a, [hl]                                     ; $7453: $7e
	sub  a                                           ; $7454: $97
	ld   a, b                                        ; $7455: $78
	ld   d, d                                        ; $7456: $52
	halt                                             ; $7457: $76
	ld   l, [hl]                                     ; $7458: $6e
	adc  a                                           ; $7459: $8f
	sub  [hl]                                        ; $745a: $96
	sbc  a                                           ; $745b: $9f
	dec  c                                           ; $745c: $0d
	nop                                              ; $745d: $00
	ld   a, [bc]                                     ; $745e: $0a
	ld   bc, $5063                                   ; $745f: $01 $63 $50
	sbc  [hl]                                        ; $7462: $9e
	ld   h, a                                        ; $7463: $67
	ld   e, [hl]                                     ; $7464: $5e
	ld   a, c                                        ; $7465: $79
	inc  bc                                          ; $7466: $03
	ld   l, l                                        ; $7467: $6d
	dec  b                                           ; $7468: $05
	add  hl, de                                      ; $7469: $19

jr_058_746a:
	ld   e, d                                        ; $746a: $5a
	dec  b                                           ; $746b: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $746c: $cf
	adc  h                                           ; $746d: $8c
	sbc  c                                           ; $746e: $99
	sbc  l                                           ; $746f: $9d
	sbc  a                                           ; $7470: $9f
	dec  c                                           ; $7471: $0d
	dec  b                                           ; $7472: $05
	jr   z, jr_058_74c7                              ; $7473: $28 $52

	ld   [hl], l                                     ; $7475: $75
	ld   h, l                                        ; $7476: $65
	ld   l, l                                        ; $7477: $6d
	ld   e, l                                        ; $7478: $5d
	ld   h, l                                        ; $7479: $65
	ld   [hl], h                                     ; $747a: $74
	sbc  a                                           ; $747b: $9f
	dec  c                                           ; $747c: $0d
	ld   h, [hl]                                     ; $747d: $66
	sub  c                                           ; $747e: $91
	sbc  [hl]                                        ; $747f: $9e
	ld   e, d                                        ; $7480: $5a
	and  c                                           ; $7481: $a1
	ld   a, [hl]                                     ; $7482: $7e
	ld   [hl], c                                     ; $7483: $71
	ld   [hl], h                                     ; $7484: $74
	ld   a, e                                        ; $7485: $7b
	sbc  a                                           ; $7486: $9f
	dec  c                                           ; $7487: $0d
	nop                                              ; $7488: $00
	ld   a, [bc]                                     ; $7489: $0a
	dec  c                                           ; $748a: $0d
	nop                                              ; $748b: $00
	nop                                              ; $748c: $00
	rrca                                             ; $748d: $0f
	nop                                              ; $748e: $00
	ld   bc, $1e09                                   ; $748f: $01 $09 $1e
	nop                                              ; $7492: $00
	nop                                              ; $7493: $00
	rrca                                             ; $7494: $0f
	nop                                              ; $7495: $00
	ld   bc, $050d                                   ; $7496: $01 $0d $05
	nop                                              ; $7499: $00
	ld   [bc], a                                     ; $749a: $02
	ld   bc, $7d58                                   ; $749b: $01 $58 $7d
	sub  [hl]                                        ; $749e: $96
	ld   d, h                                        ; $749f: $54
	ld   h, d                                        ; $74a0: $62
	ld   h, h                                        ; $74a1: $64
	ld   d, d                                        ; $74a2: $52
	adc  h                                           ; $74a3: $8c
	ld   h, a                                        ; $74a4: $67
	sbc  a                                           ; $74a5: $9f
	dec  c                                           ; $74a6: $0d
	nop                                              ; $74a7: $00
	ld   a, [bc]                                     ; $74a8: $0a
	inc  e                                           ; $74a9: $1c
	dec  b                                           ; $74aa: $05
	ld   bc, $0101                                   ; $74ab: $01 $01 $01
	ld   e, b                                        ; $74ae: $58
	ld   a, l                                        ; $74af: $7d
	sub  [hl]                                        ; $74b0: $96
	ld   d, h                                        ; $74b1: $54
	ld   h, e                                        ; $74b2: $63
	and  c                                           ; $74b3: $a1
	sbc  a                                           ; $74b4: $9f
	dec  c                                           ; $74b5: $0d
	ld   [$7d00], sp                                 ; $74b6: $08 $00 $7d
	and  c                                           ; $74b9: $a1
	sbc  a                                           ; $74ba: $9f
	dec  c                                           ; $74bb: $0d
	nop                                              ; $74bc: $00
	ld   a, [bc]                                     ; $74bd: $0a
	rrca                                             ; $74be: $0f
	nop                                              ; $74bf: $00
	ld   bc, $0101                                   ; $74c0: $01 $01 $01
	inc  bc                                          ; $74c3: $03
	inc  b                                           ; $74c4: $04
	ld   c, c                                        ; $74c5: $49
	ld   a, h                                        ; $74c6: $7c

jr_058_74c7:
	dec  b                                           ; $74c7: $05
	jr   nz, jr_058_746a                             ; $74c8: $20 $a0

	ld   h, l                                        ; $74ca: $65
	sub  [hl]                                        ; $74cb: $96
	ld   d, h                                        ; $74cc: $54
	ld   e, c                                        ; $74cd: $59
	ld   a, b                                        ; $74ce: $78
	rst  $38                                         ; $74cf: $ff
	ld   bc, $0d04                                   ; $74d0: $01 $04 $0d
	nop                                              ; $74d3: $00
	ld   a, [bc]                                     ; $74d4: $0a
	add  hl, de                                      ; $74d5: $19
	dec  b                                           ; $74d6: $05
	inc  bc                                          ; $74d7: $03
	inc  bc                                          ; $74d8: $03
	ld   l, d                                        ; $74d9: $6a
	add  a                                           ; $74da: $87
	inc  b                                           ; $74db: $04
	sub  d                                           ; $74dc: $92
	ld   a, h                                        ; $74dd: $7c
	dec  b                                           ; $74de: $05
	jr   nz, jr_058_74e5                             ; $74df: $20 $04

	dec  d                                           ; $74e1: $15
	nop                                              ; $74e2: $00
	nop                                              ; $74e3: $00
	dec  b                                           ; $74e4: $05

jr_058_74e5:
	dec  bc                                          ; $74e5: $0b
	ld   [bc], a                                     ; $74e6: $02
	dec  hl                                          ; $74e7: $2b
	ld   a, h                                        ; $74e8: $7c
	dec  b                                           ; $74e9: $05
	jr   nz, @+$06                                   ; $74ea: $20 $04

	dec  d                                           ; $74ec: $15
	nop                                              ; $74ed: $00
	ld   bc, $8d67                                   ; $74ee: $01 $67 $8d
	sbc  d                                           ; $74f1: $9a
	ld   a, c                                        ; $74f2: $79
	ld   [hl], d                                     ; $74f3: $72
	ld   d, d                                        ; $74f4: $52
	ld   [hl], h                                     ; $74f5: $74
	ld   [bc], a                                     ; $74f6: $02
	jp   nz, $005d                                   ; $74f7: $c2 $5d $00

	ld   [bc], a                                     ; $74fa: $02
	rlca                                             ; $74fb: $07
	and  l                                           ; $74fc: $a5
	nop                                              ; $74fd: $00
	ld   [bc], a                                     ; $74fe: $02
	inc  bc                                          ; $74ff: $03
	ld   bc, $2000                                   ; $7500: $01 $00 $20
	nop                                              ; $7503: $00
	rlca                                             ; $7504: $07
	ld   l, a                                        ; $7505: $6f
	ld   [bc], a                                     ; $7506: $02
	ld   [bc], a                                     ; $7507: $02
	inc  bc                                          ; $7508: $03
	ld   bc, $2001                                   ; $7509: $01 $01 $20
	nop                                              ; $750c: $00
	rlca                                             ; $750d: $07
	ld   [hl], a                                     ; $750e: $77
	inc  b                                           ; $750f: $04
	ld   [bc], a                                     ; $7510: $02
	inc  bc                                          ; $7511: $03
	ld   bc, $2002                                   ; $7512: $01 $02 $20
	nop                                              ; $7515: $00
	ld   b, $85                                      ; $7516: $06 $85
	nop                                              ; $7518: $00
	rrca                                             ; $7519: $0f
	dec  b                                           ; $751a: $05
	ld   bc, $0201                                   ; $751b: $01 $01 $02
	and  l                                           ; $751e: $a5
	inc  b                                           ; $751f: $04
	xor  d                                           ; $7520: $aa
	sub  b                                           ; $7521: $90
	ld   [bc], a                                     ; $7522: $02
	jr   nz, jr_058_7529                             ; $7523: $20 $04

	xor  d                                           ; $7525: $aa
	sbc  [hl]                                        ; $7526: $9e
	ld   e, d                                        ; $7527: $5a
	and  c                                           ; $7528: $a1

jr_058_7529:
	ld   a, [hl]                                     ; $7529: $7e
	sbc  b                                           ; $752a: $98
	sub  d                                           ; $752b: $92
	sbc  a                                           ; $752c: $9f
	dec  c                                           ; $752d: $0d
	nop                                              ; $752e: $00
	ld   a, [bc]                                     ; $752f: $0a
	dec  c                                           ; $7530: $0d
	nop                                              ; $7531: $00
	nop                                              ; $7532: $00
	rrca                                             ; $7533: $0f
	nop                                              ; $7534: $00
	ld   bc, $1e09                                   ; $7535: $01 $09 $1e
	nop                                              ; $7538: $00
	rrca                                             ; $7539: $0f
	nop                                              ; $753a: $00
	ld   bc, $0201                                   ; $753b: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $753e: $cf
	dec  b                                           ; $753f: $05
	ld   a, [de]                                     ; $7540: $1a
	ld   h, e                                        ; $7541: $63
	and  c                                           ; $7542: $a1
	ld   a, h                                        ; $7543: $7c
	ld   [bc], a                                     ; $7544: $02
	sbc  d                                           ; $7545: $9a
	ld   e, e                                        ; $7546: $5b
	ld   a, b                                        ; $7547: $78
	inc  bc                                          ; $7548: $03
	ld   l, d                                        ; $7549: $6a
	add  a                                           ; $754a: $87
	inc  b                                           ; $754b: $04
	sub  d                                           ; $754c: $92
	ld   a, l                                        ; $754d: $7d
	dec  c                                           ; $754e: $0d
	ld   a, b                                        ; $754f: $78
	and  c                                           ; $7550: $a1
	ld   [hl], l                                     ; $7551: $75
	ld   h, a                                        ; $7552: $67
	ld   e, c                                        ; $7553: $59
	ld   sp, hl                                      ; $7554: $f9
	dec  c                                           ; $7555: $0d
	nop                                              ; $7556: $00
	ld   a, [bc]                                     ; $7557: $0a
	inc  e                                           ; $7558: $1c
	dec  b                                           ; $7559: $05
	nop                                              ; $755a: $00
	nop                                              ; $755b: $00
	ld   bc, $0008                                   ; $755c: $01 $08 $00
	ld   a, l                                        ; $755f: $7d
	and  c                                           ; $7560: $a1
	ld   a, l                                        ; $7561: $7d
	sbc  [hl]                                        ; $7562: $9e
	inc  b                                           ; $7563: $04
	ld   c, c                                        ; $7564: $49
	sub  d                                           ; $7565: $92
	ld   sp, hl                                      ; $7566: $f9
	dec  c                                           ; $7567: $0d
	nop                                              ; $7568: $00
	ld   a, [bc]                                     ; $7569: $0a
	add  hl, de                                      ; $756a: $19
	dec  b                                           ; $756b: $05
	inc  bc                                          ; $756c: $03
	inc  b                                           ; $756d: $04
	dec  a                                           ; $756e: $3d
	inc  bc                                          ; $756f: $03
	reti                                             ; $7570: $d9


	nop                                              ; $7571: $00
	nop                                              ; $7572: $00
	ld   l, l                                        ; $7573: $6d
	ld   h, c                                        ; $7574: $61
	inc  bc                                          ; $7575: $03
	ld   c, $5b                                      ; $7576: $0e $5b
	nop                                              ; $7578: $00
	ld   bc, $fbdf                                   ; $7579: $01 $df $fb
	db   $dd                                         ; $757c: $dd
	ei                                               ; $757d: $fb
	ld   [hl], a                                     ; $757e: $77
	ld   d, h                                        ; $757f: $54
	add  e                                           ; $7580: $83
	nop                                              ; $7581: $00
	ld   [bc], a                                     ; $7582: $02
	rlca                                             ; $7583: $07
	dec  c                                           ; $7584: $0d

jr_058_7585:
	ld   bc, $0302                                   ; $7585: $01 $02 $03
	ld   bc, $2000                                   ; $7588: $01 $00 $20
	nop                                              ; $758b: $00
	rlca                                             ; $758c: $07
	ld   h, a                                        ; $758d: $67
	ld   bc, $0302                                   ; $758e: $01 $02 $03
	ld   bc, $2001                                   ; $7591: $01 $01 $20
	nop                                              ; $7594: $00
	rlca                                             ; $7595: $07
	cp   d                                           ; $7596: $ba
	ld   bc, $0302                                   ; $7597: $01 $02 $03
	ld   bc, $2002                                   ; $759a: $01 $02 $20
	nop                                              ; $759d: $00
	ld   b, $16                                      ; $759e: $06 $16
	ld   [bc], a                                     ; $75a0: $02
	rrca                                             ; $75a1: $0f
	nop                                              ; $75a2: $00
	ld   bc, $6b01                                   ; $75a3: $01 $01 $6b
	ld   d, h                                        ; $75a6: $54
	ld   [hl], l                                     ; $75a7: $75
	ld   h, a                                        ; $75a8: $67
	ld   a, e                                        ; $75a9: $7b
	rst  $38                                         ; $75aa: $ff
	rst  $38                                         ; $75ab: $ff
	sbc  [hl]                                        ; $75ac: $9e
	ld   [bc], a                                     ; $75ad: $02
	inc  b                                           ; $75ae: $04
	inc  b                                           ; $75af: $04
	push af                                          ; $75b0: $f5
	adc  c                                           ; $75b1: $89
	ld   d, h                                        ; $75b2: $54
	add  e                                           ; $75b3: $83
	ld   a, b                                        ; $75b4: $78
	dec  c                                           ; $75b5: $0d
	inc  b                                           ; $75b6: $04
	dec  a                                           ; $75b7: $3d
	inc  bc                                          ; $75b8: $03
	reti                                             ; $75b9: $d9


	ld   [hl], l                                     ; $75ba: $75
	ld   h, a                                        ; $75bb: $67
	ld   a, e                                        ; $75bc: $7b
	sbc  a                                           ; $75bd: $9f
	dec  c                                           ; $75be: $0d
	nop                                              ; $75bf: $00
	ld   a, [bc]                                     ; $75c0: $0a
	inc  e                                           ; $75c1: $1c
	dec  b                                           ; $75c2: $05
	inc  bc                                          ; $75c3: $03
	inc  bc                                          ; $75c4: $03
	dec  e                                           ; $75c5: $1d
	ld   b, b                                        ; $75c6: $40
	dec  d                                           ; $75c7: $15
	inc  bc                                          ; $75c8: $03
	dec  d                                           ; $75c9: $15
	ld   bc, $2903                                   ; $75ca: $01 $03 $29
	nop                                              ; $75cd: $00
	ld   bc, $7160                                   ; $75ce: $01 $60 $71
	ld   a, [$0410]                                  ; $75d1: $fa $10 $04
	dec  a                                           ; $75d4: $3d
	inc  bc                                          ; $75d5: $03
	reti                                             ; $75d6: $d9


	ld   d, a                                        ; $75d7: $57
	db   $fc                                         ; $75d8: $fc
	sbc  a                                           ; $75d9: $9f
	dec  c                                           ; $75da: $0d
	ld   [bc], a                                     ; $75db: $02
	inc  b                                           ; $75dc: $04
	inc  b                                           ; $75dd: $04
	push af                                          ; $75de: $f5
	ld   a, l                                        ; $75df: $7d
	ld   [hl], a                                     ; $75e0: $77
	ld   d, h                                        ; $75e1: $54
	ld   e, c                                        ; $75e2: $59
	ld   h, l                                        ; $75e3: $65
	sub  a                                           ; $75e4: $97
	and  c                                           ; $75e5: $a1
	ld   e, a                                        ; $75e6: $5f
	ld   [hl], a                                     ; $75e7: $77
	dec  c                                           ; $75e8: $0d
	ld   d, b                                        ; $75e9: $50
	ld   a, h                                        ; $75ea: $7c
	ld   a, c                                        ; $75eb: $79
	ld   e, b                                        ; $75ec: $58
	ld   d, d                                        ; $75ed: $52
	inc  bc                                          ; $75ee: $03
	ld   l, c                                        ; $75ef: $69
	ld   [bc], a                                     ; $75f0: $02
	jr   z, jr_058_7585                              ; $75f1: $28 $92

	and  c                                           ; $75f3: $a1
	sbc  a                                           ; $75f4: $9f
	dec  c                                           ; $75f5: $0d
	nop                                              ; $75f6: $00
	ld   a, [bc]                                     ; $75f7: $0a
	ld   b, $40                                      ; $75f8: $06 $40
	ld   [bc], a                                     ; $75fa: $02
	rrca                                             ; $75fb: $0f
	nop                                              ; $75fc: $00
	ld   bc, $6d01                                   ; $75fd: $01 $01 $6d
	ld   h, c                                        ; $7600: $61
	inc  bc                                          ; $7601: $03
	ld   c, $5b                                      ; $7602: $0e $5b
	ld   [hl], l                                     ; $7604: $75
	ld   h, a                                        ; $7605: $67
	ld   a, e                                        ; $7606: $7b
	sbc  a                                           ; $7607: $9f
	dec  c                                           ; $7608: $0d
	ld   [bc], a                                     ; $7609: $02
	bit  3, d                                        ; $760a: $cb $5a
	xor  h                                           ; $760c: $ac
	db   $ec                                         ; $760d: $ec
	call nz, $9e76                                   ; $760e: $c4 $76 $9e
	inc  b                                           ; $7611: $04
	dec  bc                                          ; $7612: $0b
	ld   e, d                                        ; $7613: $5a
	sub  $f1                                         ; $7614: $d6 $f1
	db   $fc                                         ; $7616: $fc
	rst  $38                                         ; $7617: $ff
	dec  c                                           ; $7618: $0d
	sub  b                                           ; $7619: $90
	ld   d, h                                        ; $761a: $54
	inc  bc                                          ; $761b: $03
	ld   l, c                                        ; $761c: $69
	ld   [bc], a                                     ; $761d: $02
	cp   [hl]                                        ; $761e: $be
	ld   [hl], l                                     ; $761f: $75
	ld   h, a                                        ; $7620: $67
	ld   a, e                                        ; $7621: $7b
	sbc  a                                           ; $7622: $9f
	dec  c                                           ; $7623: $0d
	nop                                              ; $7624: $00
	ld   a, [bc]                                     ; $7625: $0a
	inc  e                                           ; $7626: $1c
	dec  b                                           ; $7627: $05
	ld   bc, $1d01                                   ; $7628: $01 $01 $1d
	ld   b, b                                        ; $762b: $40
	dec  d                                           ; $762c: $15
	inc  bc                                          ; $762d: $03
	dec  d                                           ; $762e: $15
	ld   bc, $2803                                   ; $762f: $01 $03 $28
	nop                                              ; $7632: $00
	ld   bc, $926b                                   ; $7633: $01 $6b $92
	sbc  e                                           ; $7636: $9b
	ld   a, [$080d]                                  ; $7637: $fa $0d $08
	nop                                              ; $763a: $00
	ld   a, l                                        ; $763b: $7d
	and  c                                           ; $763c: $a1
	sbc  [hl]                                        ; $763d: $9e
	dec  c                                           ; $763e: $0d
	inc  b                                           ; $763f: $04
	sbc  [hl]                                        ; $7640: $9e
	ld   e, c                                        ; $7641: $59
	ld   [hl], c                                     ; $7642: $71
	ld   [hl], h                                     ; $7643: $74
	sbc  c                                           ; $7644: $99
	sub  d                                           ; $7645: $92
	and  c                                           ; $7646: $a1
	sbc  a                                           ; $7647: $9f
	dec  c                                           ; $7648: $0d
	nop                                              ; $7649: $00
	ld   a, [bc]                                     ; $764a: $0a
	ld   b, $40                                      ; $764b: $06 $40
	ld   [bc], a                                     ; $764d: $02
	rrca                                             ; $764e: $0f
	nop                                              ; $764f: $00
	ld   bc, $df01                                   ; $7650: $01 $01 $df
	ei                                               ; $7653: $fb
	db   $dd                                         ; $7654: $dd
	ei                                               ; $7655: $fb
	ld   [hl], a                                     ; $7656: $77
	ld   d, h                                        ; $7657: $54
	add  e                                           ; $7658: $83
	sbc  [hl]                                        ; $7659: $9e
	ld   [bc], a                                     ; $765a: $02
	sbc  d                                           ; $765b: $9a
	ld   e, e                                        ; $765c: $5b
	ld   [hl], l                                     ; $765d: $75
	ld   h, a                                        ; $765e: $67
	ld   a, e                                        ; $765f: $7b
	sbc  a                                           ; $7660: $9f
	dec  c                                           ; $7661: $0d
	inc  b                                           ; $7662: $04
	dec  bc                                          ; $7663: $0b
	ld   [bc], a                                     ; $7664: $02
	adc  a                                           ; $7665: $8f
	dec  d                                           ; $7666: $15
	inc  bc                                          ; $7667: $03
	xor  d                                           ; $7668: $aa
	inc  b                                           ; $7669: $04
	ld   d, b                                        ; $766a: $50
	ld   a, h                                        ; $766b: $7c
	ld   e, b                                        ; $766c: $58
	ld   d, d                                        ; $766d: $52
	ld   h, l                                        ; $766e: $65
	ld   h, e                                        ; $766f: $63
	ld   e, d                                        ; $7670: $5a
	dec  c                                           ; $7671: $0d
	ld   [hl], d                                     ; $7672: $72
	adc  h                                           ; $7673: $8c
	ld   [hl], c                                     ; $7674: $71
	ld   [hl], h                                     ; $7675: $74
	sbc  c                                           ; $7676: $99
	ld   [hl], c                                     ; $7677: $71

Call_058_7678:
	ld   [hl], h                                     ; $7678: $74
	ld   [bc], a                                     ; $7679: $02
	scf                                              ; $767a: $37
	ld   h, [hl]                                     ; $767b: $66
	ld   [hl], l                                     ; $767c: $75
	sbc  a                                           ; $767d: $9f
	dec  c                                           ; $767e: $0d
	nop                                              ; $767f: $00
	ld   a, [bc]                                     ; $7680: $0a
	inc  e                                           ; $7681: $1c
	dec  b                                           ; $7682: $05
	ld   [bc], a                                     ; $7683: $02
	ld   [bc], a                                     ; $7684: $02
	ld   bc, $0b04                                   ; $7685: $01 $04 $0b
	ld   [bc], a                                     ; $7688: $02
	adc  a                                           ; $7689: $8f
	ld   e, c                                        ; $768a: $59
	rst  $38                                         ; $768b: $ff
	rst  $38                                         ; $768c: $ff
	sbc  a                                           ; $768d: $9f
	dec  c                                           ; $768e: $0d
	ld   d, b                                        ; $768f: $50
	and  c                                           ; $7690: $a1
	adc  h                                           ; $7691: $8c
	sbc  b                                           ; $7692: $98
	ld   d, d                                        ; $7693: $52
	ld   d, d                                        ; $7694: $52
	dec  b                                           ; $7695: $05
	pop  de                                          ; $7696: $d1
	ld   d, d                                        ; $7697: $52
	inc  bc                                          ; $7698: $03
	add  b                                           ; $7699: $80
	dec  c                                           ; $769a: $0d
	ld   a, b                                        ; $769b: $78
	ld   d, d                                        ; $769c: $52
	ld   e, c                                        ; $769d: $59
	sub  a                                           ; $769e: $97
	ld   a, b                                        ; $769f: $78
	db   $fc                                         ; $76a0: $fc
	rst  $38                                         ; $76a1: $ff
	rst  $38                                         ; $76a2: $ff
	sbc  a                                           ; $76a3: $9f
	dec  c                                           ; $76a4: $0d
	nop                                              ; $76a5: $00
	ld   a, [bc]                                     ; $76a6: $0a
	ld   b, $40                                      ; $76a7: $06 $40
	ld   [bc], a                                     ; $76a9: $02
	inc  e                                           ; $76aa: $1c
	dec  b                                           ; $76ab: $05
	nop                                              ; $76ac: $00
	nop                                              ; $76ad: $00
	dec  e                                           ; $76ae: $1d
	ld   b, b                                        ; $76af: $40
	dec  d                                           ; $76b0: $15
	inc  bc                                          ; $76b1: $03
	dec  d                                           ; $76b2: $15
	ld   bc, $2902                                   ; $76b3: $01 $02 $29
	nop                                              ; $76b6: $00
	ld   bc, $a178                                   ; $76b7: $01 $78 $a1
	sub  d                                           ; $76ba: $92
	sbc  [hl]                                        ; $76bb: $9e
	ld   [bc], a                                     ; $76bc: $02
	sbc  d                                           ; $76bd: $9a
	ld   e, e                                        ; $76be: $5b
	ld   a, b                                        ; $76bf: $78
	sub  b                                           ; $76c0: $90
	and  c                                           ; $76c1: $a1
	ld   e, [hl]                                     ; $76c2: $5e
	sub  a                                           ; $76c3: $97

Jump_058_76c4:
	ld   d, d                                        ; $76c4: $52
	dec  c                                           ; $76c5: $0d
	jp   nc, Jump_058_76c4                           ; $76c6: $d2 $c4 $76

	inc  bc                                          ; $76c9: $03
	call c, $a156                                    ; $76ca: $dc $56 $a1
	ld   e, c                                        ; $76cd: $59
	ld   d, d                                        ; $76ce: $52
	ld   a, b                                        ; $76cf: $78
	sbc  a                                           ; $76d0: $9f
	dec  c                                           ; $76d1: $0d
	nop                                              ; $76d2: $00
	ld   a, [bc]                                     ; $76d3: $0a
	inc  e                                           ; $76d4: $1c
	dec  b                                           ; $76d5: $05
	nop                                              ; $76d6: $00
	nop                                              ; $76d7: $00
	ld   bc, $7463                                   ; $76d8: $01 $63 $74
	sbc  [hl]                                        ; $76db: $9e
	sub  b                                           ; $76dc: $90
	ld   d, h                                        ; $76dd: $54
	ld   [bc], a                                     ; $76de: $02
	ld   a, a                                        ; $76df: $7f
	ld   e, c                                        ; $76e0: $59
	ld   a, b                                        ; $76e1: $78
	rst  $38                                         ; $76e2: $ff
	sbc  a                                           ; $76e3: $9f
	dec  c                                           ; $76e4: $0d
	adc  c                                           ; $76e5: $89
	ld   a, b                                        ; $76e6: $78
	sbc  [hl]                                        ; $76e7: $9e
	ld   [bc], a                                     ; $76e8: $02
	and  l                                           ; $76e9: $a5
	inc  b                                           ; $76ea: $04
	xor  d                                           ; $76eb: $aa
	sub  b                                           ; $76ec: $90
	ld   [bc], a                                     ; $76ed: $02
	jr   nz, jr_058_76f4                             ; $76ee: $20 $04

	xor  d                                           ; $76f0: $aa
	ld   e, d                                        ; $76f1: $5a
	and  c                                           ; $76f2: $a1
	ld   a, [hl]                                     ; $76f3: $7e

jr_058_76f4:
	sbc  b                                           ; $76f4: $98
	sub  d                                           ; $76f5: $92
	sbc  a                                           ; $76f6: $9f
	dec  c                                           ; $76f7: $0d
	nop                                              ; $76f8: $00
	ld   a, [bc]                                     ; $76f9: $0a
	dec  c                                           ; $76fa: $0d
	nop                                              ; $76fb: $00
	nop                                              ; $76fc: $00
	rrca                                             ; $76fd: $0f
	nop                                              ; $76fe: $00
	ld   bc, $1e09                                   ; $76ff: $01 $09 $1e
	nop                                              ; $7702: $00

jr_058_7703:
	rrca                                             ; $7703: $0f
	nop                                              ; $7704: $00
	ld   bc, $5001                                   ; $7705: $01 $01 $50
	ld   a, h                                        ; $7708: $7c
	rst  $38                                         ; $7709: $ff
	rst  $38                                         ; $770a: $ff
	sbc  [hl]                                        ; $770b: $9e
	ld   [bc], a                                     ; $770c: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $770d: $cf
	dec  b                                           ; $770e: $05
	ld   a, [de]                                     ; $770f: $1a
	ld   h, e                                        ; $7710: $63
	and  c                                           ; $7711: $a1
	ld   a, h                                        ; $7712: $7c
	dec  c                                           ; $7713: $0d
	ld   [bc], a                                     ; $7714: $02
	sbc  d                                           ; $7715: $9a
	ld   e, e                                        ; $7716: $5b
	ld   a, b                                        ; $7717: $78
	ret  nz                                          ; $7718: $c0

	and  l                                           ; $7719: $a5
	ret  c                                           ; $771a: $d8

	ld   [hl], c                                     ; $771b: $71
	ld   [hl], h                                     ; $771c: $74
	ld   [hl], a                                     ; $771d: $77
	and  c                                           ; $771e: $a1
	ld   a, b                                        ; $771f: $78
	inc  bc                                          ; $7720: $03
	add  d                                           ; $7721: $82
	dec  c                                           ; $7722: $0d
	ld   [hl], l                                     ; $7723: $75
	ld   h, a                                        ; $7724: $67
	ld   e, c                                        ; $7725: $59
	ld   sp, hl                                      ; $7726: $f9
	dec  c                                           ; $7727: $0d
	nop                                              ; $7728: $00
	ld   a, [bc]                                     ; $7729: $0a
	inc  e                                           ; $772a: $1c
	dec  b                                           ; $772b: $05
	nop                                              ; $772c: $00
	nop                                              ; $772d: $00
	ld   bc, $546b                                   ; $772e: $01 $6b $54
	sub  d                                           ; $7731: $92
	ld   a, b                                        ; $7732: $78
	rst  $38                                         ; $7733: $ff
	rst  $38                                         ; $7734: $ff
	dec  c                                           ; $7735: $0d
	inc  b                                           ; $7736: $04
	cp   [hl]                                        ; $7737: $be
	and  b                                           ; $7738: $a0
	inc  bc                                          ; $7739: $03
	and  b                                           ; $773a: $a0
	ld   [hl], c                                     ; $773b: $71
	ld   [hl], h                                     ; $773c: $74
	sbc  [hl]                                        ; $773d: $9e
	ld   l, e                                        ; $773e: $6b
	sbc  d                                           ; $773f: $9a
	ld   a, c                                        ; $7740: $79
	ld   [bc], a                                     ; $7741: $02
	jp   nc, $7159                                   ; $7742: $d2 $59 $71

	ld   [hl], h                                     ; $7745: $74
	dec  c                                           ; $7746: $0d
	inc  b                                           ; $7747: $04
	sbc  a                                           ; $7748: $9f
	ld   d, d                                        ; $7749: $52
	ld   [hl], h                                     ; $774a: $74
	sbc  c                                           ; $774b: $99
	inc  bc                                          ; $774c: $03
	add  d                                           ; $774d: $82
	ld   e, c                                        ; $774e: $59
	ld   a, b                                        ; $774f: $78
	rst  $38                                         ; $7750: $ff
	rst  $38                                         ; $7751: $ff
	dec  c                                           ; $7752: $0d
	nop                                              ; $7753: $00
	ld   a, [bc]                                     ; $7754: $0a
	add  hl, de                                      ; $7755: $19
	dec  b                                           ; $7756: $05
	inc  bc                                          ; $7757: $03
	dec  b                                           ; $7758: $05
	ld   b, l                                        ; $7759: $45
	inc  b                                           ; $775a: $04
	xor  d                                           ; $775b: $aa
	ld   a, h                                        ; $775c: $7c
	inc  b                                           ; $775d: $04
	cp   [hl]                                        ; $775e: $be
	ld   a, h                                        ; $775f: $7c
	dec  b                                           ; $7760: $05
	jr   nz, jr_058_7703                             ; $7761: $20 $a0

	ld   h, a                                        ; $7763: $67
	sbc  c                                           ; $7764: $99
	nop                                              ; $7765: $00
	nop                                              ; $7766: $00
	inc  bc                                          ; $7767: $03
	sub  h                                           ; $7768: $94
	inc  b                                           ; $7769: $04
	sbc  [hl]                                        ; $776a: $9e
	ld   a, h                                        ; $776b: $7c
	inc  b                                           ; $776c: $04
	cp   [hl]                                        ; $776d: $be
	and  b                                           ; $776e: $a0
	ld   [bc], a                                     ; $776f: $02
	sbc  l                                           ; $7770: $9d
	ld   d, h                                        ; $7771: $54
	nop                                              ; $7772: $00
	ld   bc, $9403                                   ; $7773: $01 $03 $94
	inc  b                                           ; $7776: $04
	sbc  [hl]                                        ; $7777: $9e
	ld   a, h                                        ; $7778: $7c
	inc  b                                           ; $7779: $04
	rst  $20                                         ; $777a: $e7
	inc  b                                           ; $777b: $04
	or   d                                           ; $777c: $b2
	and  b                                           ; $777d: $a0
	ld   [bc], a                                     ; $777e: $02
	sbc  l                                           ; $777f: $9d
	ld   d, h                                        ; $7780: $54
	nop                                              ; $7781: $00
	ld   [bc], a                                     ; $7782: $02
	rlca                                             ; $7783: $07
	dec  c                                           ; $7784: $0d
	inc  bc                                          ; $7785: $03
	ld   [bc], a                                     ; $7786: $02
	inc  bc                                          ; $7787: $03
	ld   bc, $2000                                   ; $7788: $01 $00 $20
	nop                                              ; $778b: $00
	rlca                                             ; $778c: $07
	adc  [hl]                                        ; $778d: $8e
	inc  bc                                          ; $778e: $03
	ld   [bc], a                                     ; $778f: $02
	inc  bc                                          ; $7790: $03
	ld   bc, $2001                                   ; $7791: $01 $01 $20
	nop                                              ; $7794: $00
	rlca                                             ; $7795: $07
	db   $e3                                         ; $7796: $e3
	inc  bc                                          ; $7797: $03
	ld   [bc], a                                     ; $7798: $02
	inc  bc                                          ; $7799: $03
	ld   bc, $2002                                   ; $779a: $01 $02 $20
	nop                                              ; $779d: $00
	ld   b, $43                                      ; $779e: $06 $43
	inc  b                                           ; $77a0: $04
	rrca                                             ; $77a1: $0f
	nop                                              ; $77a2: $00
	ld   bc, $5801                                   ; $77a3: $01 $01 $58
	ld   e, b                                        ; $77a6: $58
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $77a7: $fa $10 $0d
	ld   l, e                                        ; $77aa: $6b
	sbc  d                                           ; $77ab: $9a
	ld   a, l                                        ; $77ac: $7d
	inc  b                                           ; $77ad: $04
	ld   l, l                                        ; $77ae: $6d
	ld   a, h                                        ; $77af: $7c
	ld   [bc], a                                     ; $77b0: $02
	jp   $9166                                       ; $77b1: $c3 $66 $91


	ld   a, b                                        ; $77b4: $78
	ld   d, d                                        ; $77b5: $52
	ld   [hl], l                                     ; $77b6: $75
	ld   h, a                                        ; $77b7: $67
	ld   e, c                                        ; $77b8: $59
	ld   a, [$030d]                                  ; $77b9: $fa $0d $03
	adc  e                                           ; $77bc: $8b
	ld   a, l                                        ; $77bd: $7d
	sbc  [hl]                                        ; $77be: $9e
	dec  b                                           ; $77bf: $05
	ld   b, l                                        ; $77c0: $45
	inc  b                                           ; $77c1: $04
	xor  d                                           ; $77c2: $aa
	ld   [bc], a                                     ; $77c3: $02
	sub  l                                           ; $77c4: $95
	ld   l, l                                        ; $77c5: $6d
	and  c                                           ; $77c6: $a1
	ld   [hl], l                                     ; $77c7: $75
	ld   h, a                                        ; $77c8: $67
	sub  [hl]                                        ; $77c9: $96
	sbc  a                                           ; $77ca: $9f
	dec  c                                           ; $77cb: $0d
	nop                                              ; $77cc: $00
	ld   a, [bc]                                     ; $77cd: $0a
	ld   bc, $a178                                   ; $77ce: $01 $78 $a1
	halt                                             ; $77d1: $76
	sbc  [hl]                                        ; $77d2: $9e
	ld   e, b                                        ; $77d3: $58
	ld   [hl], a                                     ; $77d4: $77
	sbc  e                                           ; $77d5: $9b
	ld   d, d                                        ; $77d6: $52
	ld   l, l                                        ; $77d7: $6d
	ld   h, c                                        ; $77d8: $61
	halt                                             ; $77d9: $76
	ld   a, c                                        ; $77da: $79
	sbc  [hl]                                        ; $77db: $9e
	inc  b                                           ; $77dc: $04
	ld   l, l                                        ; $77dd: $6d
	dec  c                                           ; $77de: $0d
	inc  b                                           ; $77df: $04
	cp   [hl]                                        ; $77e0: $be
	ld   a, h                                        ; $77e1: $7c
	inc  b                                           ; $77e2: $04
	dec  bc                                          ; $77e3: $0b
	ld   [hl], l                                     ; $77e4: $75
	inc  b                                           ; $77e5: $04
	sbc  a                                           ; $77e6: $9f
	ld   d, d                                        ; $77e7: $52
	ld   [hl], h                                     ; $77e8: $74
	ld   l, l                                        ; $77e9: $6d
	and  c                                           ; $77ea: $a1
	ld   [hl], l                                     ; $77eb: $75
	ld   h, a                                        ; $77ec: $67
	sub  [hl]                                        ; $77ed: $96
	ld   a, [$000d]                                  ; $77ee: $fa $0d $00
	ld   a, [bc]                                     ; $77f1: $0a
	inc  e                                           ; $77f2: $1c
	dec  b                                           ; $77f3: $05
	ld   bc, $1d01                                   ; $77f4: $01 $01 $1d
	ld   b, b                                        ; $77f7: $40
	dec  d                                           ; $77f8: $15
	inc  bc                                          ; $77f9: $03
	dec  d                                           ; $77fa: $15
	ld   bc, $2802                                   ; $77fb: $01 $02 $28
	nop                                              ; $77fe: $00
	ld   bc, $d0d0                                   ; $77ff: $01 $d0 $d0
	ret  nc                                          ; $7802: $d0

	ret  nc                                          ; $7803: $d0

	ret  nc                                          ; $7804: $d0

	sbc  a                                           ; $7805: $9f
	dec  c                                           ; $7806: $0d
	ld   a, b                                        ; $7807: $78
	and  c                                           ; $7808: $a1
	ld   h, [hl]                                     ; $7809: $66
	sub  c                                           ; $780a: $91
	ld   l, e                                        ; $780b: $6b
	sbc  b                                           ; $780c: $98
	sub  c                                           ; $780d: $91
	sbc  a                                           ; $780e: $9f
	dec  c                                           ; $780f: $0d
	ld   a, b                                        ; $7810: $78
	ld   e, c                                        ; $7811: $59
	ld   a, b                                        ; $7812: $78
	ld   e, c                                        ; $7813: $59
	sbc  [hl]                                        ; $7814: $9e
	ld   e, b                                        ; $7815: $58
	sub  b                                           ; $7816: $90
	sbc  e                                           ; $7817: $9b
	ld   d, d                                        ; $7818: $52
	sub  d                                           ; $7819: $92
	and  c                                           ; $781a: $a1
	sbc  a                                           ; $781b: $9f
	dec  c                                           ; $781c: $0d
	nop                                              ; $781d: $00
	ld   a, [bc]                                     ; $781e: $0a
	ld   b, $43                                      ; $781f: $06 $43
	inc  b                                           ; $7821: $04
	rrca                                             ; $7822: $0f
	nop                                              ; $7823: $00
	ld   bc, $0401                                   ; $7824: $01 $01 $04
	ld   l, l                                        ; $7827: $6d
	ld   a, h                                        ; $7828: $7c
	inc  b                                           ; $7829: $04
	cp   [hl]                                        ; $782a: $be
	ld   a, l                                        ; $782b: $7d
	ld   [hl], l                                     ; $782c: $75
	ld   h, a                                        ; $782d: $67
	ld   a, e                                        ; $782e: $7b
	sbc  [hl]                                        ; $782f: $9e
	dec  c                                           ; $7830: $0d
	ld   [bc], a                                     ; $7831: $02
	sbc  b                                           ; $7832: $98
	inc  bc                                          ; $7833: $03
	nop                                              ; $7834: $00
	ld   a, h                                        ; $7835: $7c
	inc  b                                           ; $7836: $04
	ld   a, [bc]                                     ; $7837: $0a
	inc  bc                                          ; $7838: $03
	jp   nc, Jump_058_7879                           ; $7839: $d2 $79 $78

	sbc  c                                           ; $783c: $99
	ld   h, c                                        ; $783d: $61
	halt                                             ; $783e: $76
	ld   [hl], l                                     ; $783f: $75
	ld   h, a                                        ; $7840: $67
	sbc  a                                           ; $7841: $9f
	dec  c                                           ; $7842: $0d
	nop                                              ; $7843: $00
	ld   a, [bc]                                     ; $7844: $0a
	rrca                                             ; $7845: $0f
	dec  b                                           ; $7846: $05
	nop                                              ; $7847: $00
	dec  e                                           ; $7848: $1d
	ld   b, b                                        ; $7849: $40
	dec  d                                           ; $784a: $15
	inc  bc                                          ; $784b: $03
	dec  d                                           ; $784c: $15
	ld   bc, $2802                                   ; $784d: $01 $02 $28
	nop                                              ; $7850: $00
	ld   bc, $fb89                                   ; $7851: $01 $89 $fb
	ei                                               ; $7854: $fb
	ei                                               ; $7855: $fb
	sbc  a                                           ; $7856: $9f
	dec  c                                           ; $7857: $0d
	ld   l, e                                        ; $7858: $6b
	ld   h, l                                        ; $7859: $65
	ld   l, l                                        ; $785a: $6d
	sub  a                                           ; $785b: $97
	sbc  [hl]                                        ; $785c: $9e
	ld   e, d                                        ; $785d: $5a
	and  c                                           ; $785e: $a1
	ld   a, [hl]                                     ; $785f: $7e
	sub  a                                           ; $7860: $97
	and  c                                           ; $7861: $a1
	halt                                             ; $7862: $76
	ld   a, b                                        ; $7863: $78
	sbc  a                                           ; $7864: $9f
	dec  c                                           ; $7865: $0d
	inc  bc                                          ; $7866: $03
	db   $d3                                         ; $7867: $d3
	dec  b                                           ; $7868: $05
	ld   a, [bc]                                     ; $7869: $0a
	inc  bc                                          ; $786a: $03
	ld   l, b                                        ; $786b: $68
	inc  bc                                          ; $786c: $03
	pop  de                                          ; $786d: $d1
	sub  d                                           ; $786e: $92
	ld   [hl], l                                     ; $786f: $75
	sbc  a                                           ; $7870: $9f
	dec  c                                           ; $7871: $0d
	nop                                              ; $7872: $00
	ld   a, [bc]                                     ; $7873: $0a
	ld   b, $43                                      ; $7874: $06 $43
	inc  b                                           ; $7876: $04
	rrca                                             ; $7877: $0f
	nop                                              ; $7878: $00

Jump_058_7879:
	ld   bc, $bb01                                   ; $7879: $01 $01 $bb
	pop  de                                          ; $787c: $d1
	db   $ec                                         ; $787d: $ec
	sbc  [hl]                                        ; $787e: $9e
	inc  b                                           ; $787f: $04
	ld   l, l                                        ; $7880: $6d
	ld   a, h                                        ; $7881: $7c
	inc  b                                           ; $7882: $04
	cp   [hl]                                        ; $7883: $be
	ld   a, l                                        ; $7884: $7d
	ld   [hl], l                                     ; $7885: $75
	ld   h, a                                        ; $7886: $67
	ld   a, e                                        ; $7887: $7b
	sbc  [hl]                                        ; $7888: $9e
	dec  c                                           ; $7889: $0d
	inc  bc                                          ; $788a: $03
	add  hl, de                                      ; $788b: $19
	ld   [bc], a                                     ; $788c: $02
	ld   b, d                                        ; $788d: $42
	inc  bc                                          ; $788e: $03
	add  l                                           ; $788f: $85
	inc  b                                           ; $7890: $04
	xor  e                                           ; $7891: $ab
	ld   a, b                                        ; $7892: $78
	and  c                                           ; $7893: $a1
	ld   [hl], l                                     ; $7894: $75
	ld   h, a                                        ; $7895: $67
	sub  [hl]                                        ; $7896: $96
	sbc  a                                           ; $7897: $9f
	dec  c                                           ; $7898: $0d
	sub  $d6                                         ; $7899: $d6 $d6
	sub  $d6                                         ; $789b: $d6 $d6
	sub  $9f                                         ; $789d: $d6 $9f
	dec  c                                           ; $789f: $0d
	nop                                              ; $78a0: $00
	ld   a, [bc]                                     ; $78a1: $0a
	inc  e                                           ; $78a2: $1c
	dec  b                                           ; $78a3: $05
	rlca                                             ; $78a4: $07
	rlca                                             ; $78a5: $07
	ld   bc, $936f                                   ; $78a6: $01 $6f $93
	ei                                               ; $78a9: $fb
	ld   h, c                                        ; $78aa: $61
	halt                                             ; $78ab: $76
	ld   a, l                                        ; $78ac: $7d
	sbc  [hl]                                        ; $78ad: $9e
	and  a                                           ; $78ae: $a7
	jp   nz, Jump_058_7c97                           ; $78af: $c2 $97 $7c

	inc  bc                                          ; $78b2: $03
	db   $dd                                         ; $78b3: $dd
	sub  d                                           ; $78b4: $92
	sbc  a                                           ; $78b5: $9f
	dec  c                                           ; $78b6: $0d
	ld   e, c                                        ; $78b7: $59
	ld   e, l                                        ; $78b8: $5d
	ld   h, d                                        ; $78b9: $62
	ld   h, l                                        ; $78ba: $65
	halt                                             ; $78bb: $76
	ld   e, e                                        ; $78bc: $5b
	sub  d                                           ; $78bd: $92
	sbc  a                                           ; $78be: $9f
	dec  c                                           ; $78bf: $0d
	nop                                              ; $78c0: $00
	ld   a, [bc]                                     ; $78c1: $0a
	inc  e                                           ; $78c2: $1c
	dec  b                                           ; $78c3: $05
	ld   bc, $0101                                   ; $78c4: $01 $01 $01
	ld   a, b                                        ; $78c7: $78
	ei                                               ; $78c8: $fb
	and  c                                           ; $78c9: $a1
	ld   [hl], h                                     ; $78ca: $74
	ld   a, b                                        ; $78cb: $78
	sbc  a                                           ; $78cc: $9f
	ret  nc                                          ; $78cd: $d0

	ret  nc                                          ; $78ce: $d0

	ret  nc                                          ; $78cf: $d0

	sbc  a                                           ; $78d0: $9f
	dec  c                                           ; $78d1: $0d
	nop                                              ; $78d2: $00
	ld   a, [bc]                                     ; $78d3: $0a
	ld   b, $43                                      ; $78d4: $06 $43
	inc  b                                           ; $78d6: $04
	inc  e                                           ; $78d7: $1c
	dec  b                                           ; $78d8: $05
	nop                                              ; $78d9: $00
	nop                                              ; $78da: $00
	ld   bc, $936f                                   ; $78db: $01 $6f $93
	ei                                               ; $78de: $fb
	ld   h, c                                        ; $78df: $61
	halt                                             ; $78e0: $76
	ld   [hl], l                                     ; $78e1: $75
	sbc  a                                           ; $78e2: $9f
	dec  c                                           ; $78e3: $0d
	adc  c                                           ; $78e4: $89
	ld   a, b                                        ; $78e5: $78
	sbc  [hl]                                        ; $78e6: $9e
	and  a                                           ; $78e7: $a7
	jp   nz, $029e                                   ; $78e8: $c2 $9e $02

	ld   a, a                                        ; $78eb: $7f
	ld   e, l                                        ; $78ec: $5d
	sbc  l                                           ; $78ed: $9d
	sbc  a                                           ; $78ee: $9f
	dec  c                                           ; $78ef: $0d
	ld   [bc], a                                     ; $78f0: $02
	and  l                                           ; $78f1: $a5
	inc  b                                           ; $78f2: $04
	xor  d                                           ; $78f3: $aa
	sub  b                                           ; $78f4: $90
	ld   [bc], a                                     ; $78f5: $02
	jr   nz, jr_058_78fc                             ; $78f6: $20 $04

	xor  d                                           ; $78f8: $aa
	ld   e, d                                        ; $78f9: $5a
	and  c                                           ; $78fa: $a1
	ld   a, [hl]                                     ; $78fb: $7e

jr_058_78fc:
	sbc  b                                           ; $78fc: $98
	sub  d                                           ; $78fd: $92
	sbc  a                                           ; $78fe: $9f
	dec  c                                           ; $78ff: $0d
	nop                                              ; $7900: $00
	ld   a, [bc]                                     ; $7901: $0a
	dec  c                                           ; $7902: $0d
	nop                                              ; $7903: $00
	nop                                              ; $7904: $00
	rrca                                             ; $7905: $0f
	nop                                              ; $7906: $00
	ld   bc, $1e09                                   ; $7907: $01 $09 $1e
	nop                                              ; $790a: $00
	rrca                                             ; $790b: $0f
	nop                                              ; $790c: $00
	ld   bc, $6701                                   ; $790d: $01 $01 $67
	adc  l                                           ; $7910: $8d
	sbc  d                                           ; $7911: $9a
	ld   h, e                                        ; $7912: $63
	and  c                                           ; $7913: $a1
	ld   [hl], h                                     ; $7914: $74
	sbc  [hl]                                        ; $7915: $9e
	ld   [bc], a                                     ; $7916: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7917: $cf
	dec  b                                           ; $7918: $05
	ld   a, [de]                                     ; $7919: $1a
	ld   h, e                                        ; $791a: $63
	and  c                                           ; $791b: $a1
	ld   e, c                                        ; $791c: $59
	sub  a                                           ; $791d: $97
	dec  c                                           ; $791e: $0d
	ld   [bc], a                                     ; $791f: $02
	sub  l                                           ; $7920: $95
	ld   [hl], h                                     ; $7921: $74
	sbc  [hl]                                        ; $7922: $9e
	ld   [hl], a                                     ; $7923: $77
	and  c                                           ; $7924: $a1
	ld   a, b                                        ; $7925: $78
	inc  b                                           ; $7926: $04
	ld   a, b                                        ; $7927: $78
	ld   [hl], l                                     ; $7928: $75
	ld   h, a                                        ; $7929: $67
	ld   e, c                                        ; $792a: $59
	ld   sp, hl                                      ; $792b: $f9
	dec  c                                           ; $792c: $0d
	nop                                              ; $792d: $00
	ld   a, [bc]                                     ; $792e: $0a
	inc  e                                           ; $792f: $1c
	dec  b                                           ; $7930: $05
	nop                                              ; $7931: $00
	nop                                              ; $7932: $00
	ld   bc, $8d67                                   ; $7933: $01 $67 $8d
	sbc  d                                           ; $7936: $9a
	ld   a, l                                        ; $7937: $7d
	and  c                                           ; $7938: $a1
	ld   e, c                                        ; $7939: $59
	ld   d, d                                        ; $793a: $52
	ld   a, b                                        ; $793b: $78
	ld   sp, hl                                      ; $793c: $f9
	dec  c                                           ; $793d: $0d
	adc  h                                           ; $793e: $8c
	ld   [hl], c                                     ; $793f: $71
	ld   l, l                                        ; $7940: $6d
	ld   e, l                                        ; $7941: $5d
	sbc  [hl]                                        ; $7942: $9e
	ld   d, h                                        ; $7943: $54
	sub  a                                           ; $7944: $97
	sub  d                                           ; $7945: $92
	adc  h                                           ; $7946: $8c
	ld   h, l                                        ; $7947: $65
	ld   d, d                                        ; $7948: $52
	dec  c                                           ; $7949: $0d
	ld   e, c                                        ; $794a: $59
	ld   e, h                                        ; $794b: $5c
	sbc  b                                           ; $794c: $98
	sub  d                                           ; $794d: $92
	ld   [hl], l                                     ; $794e: $75
	sbc  a                                           ; $794f: $9f
	dec  c                                           ; $7950: $0d
	nop                                              ; $7951: $00
	ld   a, [bc]                                     ; $7952: $0a
	ld   bc, $a178                                   ; $7953: $01 $78 $a1
	ld   l, a                                        ; $7956: $6f
	sub  e                                           ; $7957: $93
	ei                                               ; $7958: $fb
	ld   [hl], h                                     ; $7959: $74
	sub  b                                           ; $795a: $90
	sbc  [hl]                                        ; $795b: $9e
	dec  c                                           ; $795c: $0d
	inc  bc                                          ; $795d: $03
	sub  b                                           ; $795e: $90
	inc  bc                                          ; $795f: $03
	cp   e                                           ; $7960: $bb
	inc  bc                                          ; $7961: $03
	ccf                                              ; $7962: $3f
	ld   [bc], a                                     ; $7963: $02
	ld   c, a                                        ; $7964: $4f
	ld   a, h                                        ; $7965: $7c
	ld   [bc], a                                     ; $7966: $02
	cp   b                                           ; $7967: $b8
	ld   h, e                                        ; $7968: $63
	and  c                                           ; $7969: $a1
	ld   l, a                                        ; $796a: $6f
	sub  e                                           ; $796b: $93
	ei                                               ; $796c: $fb
	ld   a, h                                        ; $796d: $7c
	ld   e, d                                        ; $796e: $5a
	dec  c                                           ; $796f: $0d
	adc  c                                           ; $7970: $89
	and  c                                           ; $7971: $a1
	adc  h                                           ; $7972: $8c
	sbc  [hl]                                        ; $7973: $9e
	xor  c                                           ; $7974: $a9
	xor  c                                           ; $7975: $a9
	ld   a, b                                        ; $7976: $78
	ld   c, a                                        ; $7977: $4f
	rst  $38                                         ; $7978: $ff
	rst  $38                                         ; $7979: $ff
	dec  c                                           ; $797a: $0d
	nop                                              ; $797b: $00
	ld   a, [bc]                                     ; $797c: $0a
	ld   bc, $8603                                   ; $797d: $01 $03 $86
	ld   [bc], a                                     ; $7980: $02
	xor  l                                           ; $7981: $ad
	ld   a, h                                        ; $7982: $7c
	ld   h, c                                        ; $7983: $61
	sbc  e                                           ; $7984: $9b
	ld   e, c                                        ; $7985: $59
	sub  a                                           ; $7986: $97
	sbc  [hl]                                        ; $7987: $9e
	dec  c                                           ; $7988: $0d
	ld   [bc], a                                     ; $7989: $02
	ld   e, b                                        ; $798a: $58
	ld   [bc], a                                     ; $798b: $02
	ld   d, [hl]                                     ; $798c: $56
	ld   a, c                                        ; $798d: $79
	ld   e, c                                        ; $798e: $59
	ld   h, c                                        ; $798f: $61
	adc  h                                           ; $7990: $8c
	sbc  d                                           ; $7991: $9a
	ld   [hl], h                                     ; $7992: $74
	ld   l, l                                        ; $7993: $6d
	and  c                                           ; $7994: $a1
	sub  d                                           ; $7995: $92
	sbc  e                                           ; $7996: $9b
	ld   a, b                                        ; $7997: $78
	sbc  a                                           ; $7998: $9f
	dec  c                                           ; $7999: $0d
	ld   d, b                                        ; $799a: $50
	ld   d, b                                        ; $799b: $50
	sbc  [hl]                                        ; $799c: $9e
	ld   d, h                                        ; $799d: $54
	sub  a                                           ; $799e: $97
	sub  d                                           ; $799f: $92
	adc  h                                           ; $79a0: $8c
	ld   h, l                                        ; $79a1: $65
	sbc  a                                           ; $79a2: $9f
	dec  c                                           ; $79a3: $0d
	nop                                              ; $79a4: $00
	ld   a, [bc]                                     ; $79a5: $0a
	inc  e                                           ; $79a6: $1c
	dec  b                                           ; $79a7: $05
	ld   bc, $0101                                   ; $79a8: $01 $01 $01
	ld   h, e                                        ; $79ab: $63
	ld   [hl], h                                     ; $79ac: $74
	sbc  [hl]                                        ; $79ad: $9e
	sub  b                                           ; $79ae: $90
	ld   d, h                                        ; $79af: $54
	ld   [bc], a                                     ; $79b0: $02
	ld   a, a                                        ; $79b1: $7f
	ld   e, c                                        ; $79b2: $59
	ld   a, b                                        ; $79b3: $78
	rst  $38                                         ; $79b4: $ff
	sbc  a                                           ; $79b5: $9f
	dec  c                                           ; $79b6: $0d
	adc  c                                           ; $79b7: $89
	ld   a, b                                        ; $79b8: $78
	sbc  [hl]                                        ; $79b9: $9e
	ld   [bc], a                                     ; $79ba: $02
	and  l                                           ; $79bb: $a5
	inc  b                                           ; $79bc: $04
	xor  d                                           ; $79bd: $aa
	sub  b                                           ; $79be: $90
	ld   [bc], a                                     ; $79bf: $02
	jr   nz, jr_058_79c6                             ; $79c0: $20 $04

	xor  d                                           ; $79c2: $aa
	ld   e, d                                        ; $79c3: $5a
	and  c                                           ; $79c4: $a1
	ld   a, [hl]                                     ; $79c5: $7e

jr_058_79c6:
	sbc  b                                           ; $79c6: $98
	sub  d                                           ; $79c7: $92
	sbc  a                                           ; $79c8: $9f
	dec  c                                           ; $79c9: $0d
	nop                                              ; $79ca: $00
	ld   a, [bc]                                     ; $79cb: $0a
	dec  c                                           ; $79cc: $0d
	nop                                              ; $79cd: $00
	nop                                              ; $79ce: $00
	rrca                                             ; $79cf: $0f
	nop                                              ; $79d0: $00
	ld   bc, $1e09                                   ; $79d1: $01 $09 $1e
	nop                                              ; $79d4: $00
	nop                                              ; $79d5: $00
	inc  bc                                          ; $79d6: $03
	ld   c, [hl]                                     ; $79d7: $4e
	ld   [bc], a                                     ; $79d8: $02
	nop                                              ; $79d9: $00
	inc  bc                                          ; $79da: $03
	ld   c, b                                        ; $79db: $48
	add  hl, hl                                      ; $79dc: $29
	add  hl, hl                                      ; $79dd: $29
	ld   bc, $2201                                   ; $79de: $01 $01 $22
	nop                                              ; $79e1: $00
	rrca                                             ; $79e2: $0f
	nop                                              ; $79e3: $00
	ld   bc, $010d                                   ; $79e4: $01 $0d $01
	nop                                              ; $79e7: $00
	ld   [bc], a                                     ; $79e8: $02
	ld   bc, $7d58                                   ; $79e9: $01 $58 $7d
	sub  [hl]                                        ; $79ec: $96
	ld   d, h                                        ; $79ed: $54
	ld   h, d                                        ; $79ee: $62
	ld   h, h                                        ; $79ef: $64
	ld   d, d                                        ; $79f0: $52
	adc  h                                           ; $79f1: $8c
	ld   h, a                                        ; $79f2: $67
	sbc  a                                           ; $79f3: $9f
	dec  c                                           ; $79f4: $0d
	nop                                              ; $79f5: $00
	ld   a, [bc]                                     ; $79f6: $0a
	inc  e                                           ; $79f7: $1c
	ld   bc, $0000                                   ; $79f8: $01 $00 $00
	ld   bc, $7d58                                   ; $79fb: $01 $58 $7d
	sub  [hl]                                        ; $79fe: $96
	ld   d, h                                        ; $79ff: $54
	ld   h, d                                        ; $7a00: $62
	ld   h, h                                        ; $7a01: $64
	ld   d, d                                        ; $7a02: $52
	adc  h                                           ; $7a03: $8c
	ld   h, a                                        ; $7a04: $67
	sbc  a                                           ; $7a05: $9f
	dec  c                                           ; $7a06: $0d
	nop                                              ; $7a07: $00
	ld   a, [bc]                                     ; $7a08: $0a
	rrca                                             ; $7a09: $0f
	nop                                              ; $7a0a: $00
	ld   bc, $0101                                   ; $7a0b: $01 $01 $01
	inc  bc                                          ; $7a0e: $03
	inc  b                                           ; $7a0f: $04
	ld   c, c                                        ; $7a10: $49
	and  b                                           ; $7a11: $a0
	ld   [bc], a                                     ; $7a12: $02
	jp   nz, Jump_058_5461                           ; $7a13: $c2 $61 $54

	ld   e, c                                        ; $7a16: $59
	ld   a, b                                        ; $7a17: $78
	rst  $38                                         ; $7a18: $ff
	rst  $38                                         ; $7a19: $ff
	ld   bc, $0d04                                   ; $7a1a: $01 $04 $0d
	nop                                              ; $7a1d: $00
	ld   a, [bc]                                     ; $7a1e: $0a
	add  hl, de                                      ; $7a1f: $19
	dec  b                                           ; $7a20: $05
	inc  bc                                          ; $7a21: $03
	ld   [bc], a                                     ; $7a22: $02
	add  d                                           ; $7a23: $82
	inc  bc                                          ; $7a24: $03
	ld   d, [hl]                                     ; $7a25: $56
	ld   a, h                                        ; $7a26: $7c
	dec  b                                           ; $7a27: $05
	jr   nz, jr_058_7a2e                             ; $7a28: $20 $04

	dec  d                                           ; $7a2a: $15
	nop                                              ; $7a2b: $00
	nop                                              ; $7a2c: $00
	inc  bc                                          ; $7a2d: $03

jr_058_7a2e:
	sub  h                                           ; $7a2e: $94
	inc  b                                           ; $7a2f: $04
	sbc  [hl]                                        ; $7a30: $9e
	ld   a, h                                        ; $7a31: $7c
	dec  b                                           ; $7a32: $05
	jr   nz, @+$06                                   ; $7a33: $20 $04

	dec  d                                           ; $7a35: $15
	nop                                              ; $7a36: $00
	ld   bc, $0b05                                   ; $7a37: $01 $05 $0b
	ld   [bc], a                                     ; $7a3a: $02
	dec  hl                                          ; $7a3b: $2b
	ld   a, h                                        ; $7a3c: $7c
	dec  b                                           ; $7a3d: $05
	jr   nz, jr_058_7a44                             ; $7a3e: $20 $04

	dec  d                                           ; $7a40: $15
	nop                                              ; $7a41: $00
	ld   [bc], a                                     ; $7a42: $02
	rlca                                             ; $7a43: $07

jr_058_7a44:
	and  l                                           ; $7a44: $a5
	nop                                              ; $7a45: $00
	ld   [bc], a                                     ; $7a46: $02
	inc  bc                                          ; $7a47: $03
	ld   bc, $2000                                   ; $7a48: $01 $00 $20
	nop                                              ; $7a4b: $00
	rlca                                             ; $7a4c: $07
	ld   a, [hl+]                                    ; $7a4d: $2a
	ld   [bc], a                                     ; $7a4e: $02
	ld   [bc], a                                     ; $7a4f: $02
	inc  bc                                          ; $7a50: $03
	ld   bc, $2001                                   ; $7a51: $01 $01 $20
	nop                                              ; $7a54: $00
	rlca                                             ; $7a55: $07
	adc  [hl]                                        ; $7a56: $8e
	inc  bc                                          ; $7a57: $03
	ld   [bc], a                                     ; $7a58: $02
	inc  bc                                          ; $7a59: $03
	ld   bc, $2002                                   ; $7a5a: $01 $02 $20
	nop                                              ; $7a5d: $00
	ld   b, $7f                                      ; $7a5e: $06 $7f
	nop                                              ; $7a60: $00
	inc  e                                           ; $7a61: $1c
	ld   bc, $0000                                   ; $7a62: $01 $00 $00
	ld   bc, $a502                                   ; $7a65: $01 $02 $a5
	inc  b                                           ; $7a68: $04
	xor  d                                           ; $7a69: $aa
	sub  b                                           ; $7a6a: $90
	ld   [bc], a                                     ; $7a6b: $02
	jr   nz, jr_058_7a72                             ; $7a6c: $20 $04

	xor  d                                           ; $7a6e: $aa
	sbc  [hl]                                        ; $7a6f: $9e
	dec  c                                           ; $7a70: $0d
	ld   e, d                                        ; $7a71: $5a

jr_058_7a72:
	and  c                                           ; $7a72: $a1
	ld   a, [hl]                                     ; $7a73: $7e
	sbc  b                                           ; $7a74: $98
	adc  h                                           ; $7a75: $8c
	ld   h, l                                        ; $7a76: $65
	sub  l                                           ; $7a77: $95
	ld   d, h                                        ; $7a78: $54
	ld   a, e                                        ; $7a79: $7b
	sbc  a                                           ; $7a7a: $9f
	dec  c                                           ; $7a7b: $0d
	nop                                              ; $7a7c: $00
	ld   a, [bc]                                     ; $7a7d: $0a
	dec  c                                           ; $7a7e: $0d
	nop                                              ; $7a7f: $00
	nop                                              ; $7a80: $00
	rrca                                             ; $7a81: $0f
	nop                                              ; $7a82: $00
	ld   bc, $1e09                                   ; $7a83: $01 $09 $1e
	nop                                              ; $7a86: $00
	rrca                                             ; $7a87: $0f
	nop                                              ; $7a88: $00
	ld   bc, $6b01                                   ; $7a89: $01 $01 $6b
	ld   d, h                                        ; $7a8c: $54
	ld   d, d                                        ; $7a8d: $52
	ld   d, [hl]                                     ; $7a8e: $56
	ld   a, [hl]                                     ; $7a8f: $7e
	sbc  [hl]                                        ; $7a90: $9e
	ld   h, e                                        ; $7a91: $63
	ld   e, l                                        ; $7a92: $5d
	sub  a                                           ; $7a93: $97
	ld   h, e                                        ; $7a94: $63
	and  c                                           ; $7a95: $a1
	ld   [hl], h                                     ; $7a96: $74
	dec  c                                           ; $7a97: $0d
	ld   [hl], a                                     ; $7a98: $77
	ld   a, h                                        ; $7a99: $7c
	ld   [bc], a                                     ; $7a9a: $02
	add  d                                           ; $7a9b: $82
	inc  bc                                          ; $7a9c: $03
	ld   d, [hl]                                     ; $7a9d: $56
	ld   e, d                                        ; $7a9e: $5a
	ld   [bc], a                                     ; $7a9f: $02
	sbc  d                                           ; $7aa0: $9a
	ld   e, e                                        ; $7aa1: $5b
	ld   [hl], l                                     ; $7aa2: $75
	ld   h, a                                        ; $7aa3: $67
	ld   e, c                                        ; $7aa4: $59
	ld   sp, hl                                      ; $7aa5: $f9
	dec  c                                           ; $7aa6: $0d
	nop                                              ; $7aa7: $00
	ld   a, [bc]                                     ; $7aa8: $0a
	inc  e                                           ; $7aa9: $1c
	ld   bc, $0000                                   ; $7aaa: $01 $00 $00
	ld   bc, $6d50                                   ; $7aad: $01 $50 $6d
	ld   h, l                                        ; $7ab0: $65
	ld   a, l                                        ; $7ab1: $7d
	inc  bc                                          ; $7ab2: $03
	ld   [hl], d                                     ; $7ab3: $72
	ld   e, d                                        ; $7ab4: $5a
	ld   [bc], a                                     ; $7ab5: $02
	sbc  d                                           ; $7ab6: $9a
	ld   e, e                                        ; $7ab7: $5b
	ld   [hl], l                                     ; $7ab8: $75
	ld   h, a                                        ; $7ab9: $67
	ld   a, e                                        ; $7aba: $7b
	sbc  a                                           ; $7abb: $9f
	dec  c                                           ; $7abc: $0d
	ld   [$6300], sp                                 ; $7abd: $08 $00 $63
	and  c                                           ; $7ac0: $a1
	ld   a, l                                        ; $7ac1: $7d
	ld   sp, hl                                      ; $7ac2: $f9
	dec  c                                           ; $7ac3: $0d
	nop                                              ; $7ac4: $00
	ld   a, [bc]                                     ; $7ac5: $0a
	add  hl, de                                      ; $7ac6: $19
	dec  b                                           ; $7ac7: $05
	inc  bc                                          ; $7ac8: $03
	inc  b                                           ; $7ac9: $04
	ld   c, h                                        ; $7aca: $4c
	nop                                              ; $7acb: $00
	nop                                              ; $7acc: $00
	inc  bc                                          ; $7acd: $03
	ld   [hl], d                                     ; $7ace: $72
	nop                                              ; $7acf: $00
	ld   bc, $2204                                   ; $7ad0: $01 $04 $22
	nop                                              ; $7ad3: $00
	ld   [bc], a                                     ; $7ad4: $02
	rlca                                             ; $7ad5: $07
	ld   de, $0201                                   ; $7ad6: $11 $01 $02
	inc  bc                                          ; $7ad9: $03
	ld   bc, $2000                                   ; $7ada: $01 $00 $20
	nop                                              ; $7add: $00
	rlca                                             ; $7ade: $07
	ld   c, c                                        ; $7adf: $49
	ld   bc, $0302                                   ; $7ae0: $01 $02 $03
	ld   bc, $2001                                   ; $7ae3: $01 $01 $20
	nop                                              ; $7ae6: $00
	rlca                                             ; $7ae7: $07
	add  d                                           ; $7ae8: $82
	ld   bc, $0302                                   ; $7ae9: $01 $02 $03
	ld   bc, $2002                                   ; $7aec: $01 $02 $20
	nop                                              ; $7aef: $00
	ld   b, $c0                                      ; $7af0: $06 $c0
	ld   bc, $000f                                   ; $7af2: $01 $0f $00
	ld   bc, $0401                                   ; $7af5: $01 $01 $04
	ld   c, h                                        ; $7af8: $4c
	ld   e, d                                        ; $7af9: $5a
	ld   [bc], a                                     ; $7afa: $02
	sbc  d                                           ; $7afb: $9a
	ld   e, e                                        ; $7afc: $5b
	ld   [hl], l                                     ; $7afd: $75
	ld   h, a                                        ; $7afe: $67
	sbc  a                                           ; $7aff: $9f
	dec  c                                           ; $7b00: $0d
	nop                                              ; $7b01: $00
	ld   a, [bc]                                     ; $7b02: $0a
	inc  e                                           ; $7b03: $1c
	ld   bc, $0000                                   ; $7b04: $01 $00 $00
	ld   bc, $4c04                                   ; $7b07: $01 $04 $4c
	ld   e, d                                        ; $7b0a: $5a
	ld   [bc], a                                     ; $7b0b: $02
	sbc  d                                           ; $7b0c: $9a
	ld   e, e                                        ; $7b0d: $5b
	ld   a, b                                        ; $7b0e: $78
	inc  bc                                          ; $7b0f: $03
	add  d                                           ; $7b10: $82
	ld   [hl], c                                     ; $7b11: $71
	ld   [hl], h                                     ; $7b12: $74
	dec  c                                           ; $7b13: $0d
	ld   b, $2b                                      ; $7b14: $06 $2b
	ld   [bc], a                                     ; $7b16: $02
	and  c                                           ; $7b17: $a1
	ld   a, b                                        ; $7b18: $78
	inc  bc                                          ; $7b19: $03
	add  d                                           ; $7b1a: $82
	ld   e, d                                        ; $7b1b: $5a
	inc  b                                           ; $7b1c: $04
	rrca                                             ; $7b1d: $0f
	ld   d, d                                        ; $7b1e: $52
	and  c                                           ; $7b1f: $a1
	ld   [hl], l                                     ; $7b20: $75
	ld   h, a                                        ; $7b21: $67
	sub  [hl]                                        ; $7b22: $96
	ld   a, e                                        ; $7b23: $7b
	sbc  a                                           ; $7b24: $9f
	dec  c                                           ; $7b25: $0d
	nop                                              ; $7b26: $00
	ld   a, [bc]                                     ; $7b27: $0a
	ld   b, $f8                                      ; $7b28: $06 $f8
	ld   bc, $000f                                   ; $7b2a: $01 $0f $00
	ld   bc, $0301                                   ; $7b2d: $01 $01 $03
	ld   [hl], d                                     ; $7b30: $72
	ld   e, d                                        ; $7b31: $5a
	ld   [bc], a                                     ; $7b32: $02
	sbc  d                                           ; $7b33: $9a
	ld   e, e                                        ; $7b34: $5b
	ld   [hl], l                                     ; $7b35: $75
	ld   h, a                                        ; $7b36: $67
	sbc  a                                           ; $7b37: $9f
	dec  c                                           ; $7b38: $0d
	nop                                              ; $7b39: $00
	ld   a, [bc]                                     ; $7b3a: $0a
	inc  e                                           ; $7b3b: $1c
	ld   bc, $0101                                   ; $7b3c: $01 $01 $01
	dec  e                                           ; $7b3f: $1d
	ld   b, b                                        ; $7b40: $40
	ld   de, $1103                                   ; $7b41: $11 $03 $11
	ld   bc, $2802                                   ; $7b44: $01 $02 $28
	nop                                              ; $7b47: $00
	ld   bc, $0008                                   ; $7b48: $01 $08 $00
	ld   h, e                                        ; $7b4b: $63
	and  c                                           ; $7b4c: $a1
	sub  b                                           ; $7b4d: $90
	ld   [hl], l                                     ; $7b4e: $75
	ld   h, a                                        ; $7b4f: $67
	ld   e, c                                        ; $7b50: $59
	ld   sp, hl                                      ; $7b51: $f9
	dec  c                                           ; $7b52: $0d
	sub  d                                           ; $7b53: $92
	ld   [hl], c                                     ; $7b54: $71
	ld   a, a                                        ; $7b55: $7f
	sbc  b                                           ; $7b56: $98
	inc  bc                                          ; $7b57: $03
	ld   [hl], d                                     ; $7b58: $72
	ld   [hl], l                                     ; $7b59: $75
	ld   h, a                                        ; $7b5a: $67
	sub  [hl]                                        ; $7b5b: $96
	ld   a, e                                        ; $7b5c: $7b
	ld   a, [$000d]                                  ; $7b5d: $fa $0d $00
	ld   a, [bc]                                     ; $7b60: $0a
	ld   b, $f8                                      ; $7b61: $06 $f8
	ld   bc, $000f                                   ; $7b63: $01 $0f $00
	ld   bc, $0401                                   ; $7b66: $01 $01 $04
	ld   [hl+], a                                    ; $7b69: $22
	ld   e, d                                        ; $7b6a: $5a
	ld   [bc], a                                     ; $7b6b: $02
	sbc  d                                           ; $7b6c: $9a
	ld   e, e                                        ; $7b6d: $5b
	ld   [hl], l                                     ; $7b6e: $75
	ld   h, a                                        ; $7b6f: $67
	sbc  a                                           ; $7b70: $9f
	dec  c                                           ; $7b71: $0d
	nop                                              ; $7b72: $00
	ld   a, [bc]                                     ; $7b73: $0a
	inc  e                                           ; $7b74: $1c
	ld   bc, $0000                                   ; $7b75: $01 $00 $00
	ld   bc, $2204                                   ; $7b78: $01 $04 $22
	ld   e, d                                        ; $7b7b: $5a
	ld   [bc], a                                     ; $7b7c: $02
	sbc  d                                           ; $7b7d: $9a
	ld   e, e                                        ; $7b7e: $5b
	ld   a, b                                        ; $7b7f: $78
	inc  bc                                          ; $7b80: $03
	add  d                                           ; $7b81: $82
	ld   [hl], c                                     ; $7b82: $71
	ld   [hl], h                                     ; $7b83: $74
	dec  c                                           ; $7b84: $0d
	inc  bc                                          ; $7b85: $03
	sub  h                                           ; $7b86: $94
	inc  b                                           ; $7b87: $04
	sbc  [hl]                                        ; $7b88: $9e
	ld   a, c                                        ; $7b89: $79
	ld   e, e                                        ; $7b8a: $5b
	add  c                                           ; $7b8b: $81
	ld   h, l                                        ; $7b8c: $65
	ld   d, d                                        ; $7b8d: $52
	inc  bc                                          ; $7b8e: $03
	add  d                                           ; $7b8f: $82
	ld   e, d                                        ; $7b90: $5a
	dec  c                                           ; $7b91: $0d
	inc  b                                           ; $7b92: $04
	rrca                                             ; $7b93: $0f
	ld   d, d                                        ; $7b94: $52
	adc  l                                           ; $7b95: $8d
	ld   l, l                                        ; $7b96: $6d
	ld   d, d                                        ; $7b97: $52
	ld   [hl], l                                     ; $7b98: $75
	ld   h, a                                        ; $7b99: $67
	ld   a, e                                        ; $7b9a: $7b
	sbc  a                                           ; $7b9b: $9f
	dec  c                                           ; $7b9c: $0d
	nop                                              ; $7b9d: $00
	ld   a, [bc]                                     ; $7b9e: $0a
	ld   b, $f8                                      ; $7b9f: $06 $f8
	ld   bc, $000f                                   ; $7ba1: $01 $0f $00
	ld   bc, $ff01                                   ; $7ba4: $01 $01 $ff
	rst  $38                                         ; $7ba7: $ff
	ld   [bc], a                                     ; $7ba8: $02
	ld   d, $75                                      ; $7ba9: $16 $75
	ld   h, a                                        ; $7bab: $67
	ld   e, c                                        ; $7bac: $59
	ld   a, e                                        ; $7bad: $7b
	sbc  a                                           ; $7bae: $9f
	dec  c                                           ; $7baf: $0d
	nop                                              ; $7bb0: $00
	ld   a, [bc]                                     ; $7bb1: $0a
	inc  e                                           ; $7bb2: $1c
	ld   bc, $0000                                   ; $7bb3: $01 $00 $00
	ld   bc, $1602                                   ; $7bb6: $01 $02 $16
	ld   e, d                                        ; $7bb9: $5a
	ld   [bc], a                                     ; $7bba: $02
	sbc  d                                           ; $7bbb: $9a
	ld   e, e                                        ; $7bbc: $5b
	ld   a, b                                        ; $7bbd: $78
	inc  bc                                          ; $7bbe: $03
	add  d                                           ; $7bbf: $82
	ld   [hl], c                                     ; $7bc0: $71
	ld   [hl], h                                     ; $7bc1: $74
	dec  c                                           ; $7bc2: $0d
	rst  $28                                         ; $7bc3: $ef
	rst  JumpTable                                         ; $7bc4: $df
	push af                                          ; $7bc5: $f5
	jp   nz, $c9ba                                   ; $7bc6: $c2 $ba $c9

	ld   e, d                                        ; $7bc9: $5a
	dec  c                                           ; $7bca: $0d
	inc  b                                           ; $7bcb: $04
	rrca                                             ; $7bcc: $0f
	ld   d, d                                        ; $7bcd: $52
	and  c                                           ; $7bce: $a1
	ld   [hl], l                                     ; $7bcf: $75
	ld   h, a                                        ; $7bd0: $67
	sub  [hl]                                        ; $7bd1: $96
	ld   a, e                                        ; $7bd2: $7b
	sbc  a                                           ; $7bd3: $9f
	dec  c                                           ; $7bd4: $0d
	nop                                              ; $7bd5: $00
	ld   a, [bc]                                     ; $7bd6: $0a
	ld   b, $f8                                      ; $7bd7: $06 $f8
	ld   bc, $6301                                   ; $7bd9: $01 $01 $63
	ld   [hl], h                                     ; $7bdc: $74
	halt                                             ; $7bdd: $76
	sbc  [hl]                                        ; $7bde: $9e
	sub  b                                           ; $7bdf: $90
	ld   d, h                                        ; $7be0: $54
	ld   [bc], a                                     ; $7be1: $02
	ld   a, a                                        ; $7be2: $7f
	ld   e, c                                        ; $7be3: $59
	ld   a, b                                        ; $7be4: $78
	ld   e, l                                        ; $7be5: $5d
	ld   l, a                                        ; $7be6: $6f
	sub  c                                           ; $7be7: $91
	rst  $38                                         ; $7be8: $ff
	rst  $38                                         ; $7be9: $ff
	dec  c                                           ; $7bea: $0d
	ld   [bc], a                                     ; $7beb: $02
	and  l                                           ; $7bec: $a5
	inc  b                                           ; $7bed: $04
	xor  d                                           ; $7bee: $aa
	sub  b                                           ; $7bef: $90
	ld   [bc], a                                     ; $7bf0: $02
	jr   nz, jr_058_7bf7                             ; $7bf1: $20 $04

	xor  d                                           ; $7bf3: $aa
	sbc  [hl]                                        ; $7bf4: $9e
	dec  c                                           ; $7bf5: $0d
	ld   e, d                                        ; $7bf6: $5a

jr_058_7bf7:
	and  c                                           ; $7bf7: $a1
	ld   a, [hl]                                     ; $7bf8: $7e
	sbc  b                                           ; $7bf9: $98
	adc  h                                           ; $7bfa: $8c
	ld   h, l                                        ; $7bfb: $65
	sub  l                                           ; $7bfc: $95
	ld   d, h                                        ; $7bfd: $54
	ld   a, e                                        ; $7bfe: $7b
	sbc  a                                           ; $7bff: $9f
	dec  c                                           ; $7c00: $0d
	nop                                              ; $7c01: $00
	ld   a, [bc]                                     ; $7c02: $0a
	dec  c                                           ; $7c03: $0d
	nop                                              ; $7c04: $00
	nop                                              ; $7c05: $00
	rrca                                             ; $7c06: $0f
	nop                                              ; $7c07: $00
	ld   bc, $1e09                                   ; $7c08: $01 $09 $1e
	nop                                              ; $7c0b: $00
	rrca                                             ; $7c0c: $0f
	nop                                              ; $7c0d: $00
	ld   bc, $5001                                   ; $7c0e: $01 $01 $50
	ld   a, h                                        ; $7c11: $7c
	rst  $38                                         ; $7c12: $ff
	rst  $38                                         ; $7c13: $ff
	inc  b                                           ; $7c14: $04
	ld   l, l                                        ; $7c15: $6d
	ld   [hl], c                                     ; $7c16: $71
	ld   [hl], h                                     ; $7c17: $74
	dec  c                                           ; $7c18: $0d
	ld   h, e                                        ; $7c19: $63
	ld   e, l                                        ; $7c1a: $5d
	sub  a                                           ; $7c1b: $97
	ld   h, e                                        ; $7c1c: $63
	and  c                                           ; $7c1d: $a1
	ld   e, c                                        ; $7c1e: $59
	sub  a                                           ; $7c1f: $97
	adc  l                                           ; $7c20: $8d
	ld   [hl], h                                     ; $7c21: $74
	dec  c                                           ; $7c22: $0d
	ld   [hl], a                                     ; $7c23: $77
	ld   d, h                                        ; $7c24: $54
	ld   [hl], l                                     ; $7c25: $75
	ld   h, a                                        ; $7c26: $67
	ld   e, c                                        ; $7c27: $59
	ld   a, e                                        ; $7c28: $7b
	rst  $38                                         ; $7c29: $ff
	rst  $38                                         ; $7c2a: $ff
	ld   sp, hl                                      ; $7c2b: $f9
	dec  c                                           ; $7c2c: $0d
	nop                                              ; $7c2d: $00
	ld   a, [bc]                                     ; $7c2e: $0a
	inc  e                                           ; $7c2f: $1c
	ld   bc, $0303                                   ; $7c30: $01 $03 $03
	ld   bc, $f956                                   ; $7c33: $01 $56 $f9
	dec  c                                           ; $7c36: $0d
	nop                                              ; $7c37: $00
	ld   a, [bc]                                     ; $7c38: $0a
	rrca                                             ; $7c39: $0f
	nop                                              ; $7c3a: $00
	ld   bc, $0401                                   ; $7c3b: $01 $01 $04
	cp   $56                                         ; $7c3e: $fe $56
	ld   a, [hl]                                     ; $7c40: $7e
	sbc  [hl]                                        ; $7c41: $9e
	ld   d, d                                        ; $7c42: $52
	and  c                                           ; $7c43: $a1
	ld   h, l                                        ; $7c44: $65
	sub  l                                           ; $7c45: $95
	ld   d, h                                        ; $7c46: $54
	halt                                             ; $7c47: $76
	ld   e, c                                        ; $7c48: $59
	rst  $38                                         ; $7c49: $ff
	rst  $38                                         ; $7c4a: $ff
	dec  c                                           ; $7c4b: $0d
	nop                                              ; $7c4c: $00
	ld   a, [bc]                                     ; $7c4d: $0a
	rlca                                             ; $7c4e: $07
	adc  l                                           ; $7c4f: $8d
	ld   [bc], a                                     ; $7c50: $02
	inc  bc                                          ; $7c51: $03
	ld   de, $b401                                   ; $7c52: $11 $01 $b4
	dec  h                                           ; $7c55: $25
	nop                                              ; $7c56: $00
	rlca                                             ; $7c57: $07
	cp   b                                           ; $7c58: $b8
	ld   [bc], a                                     ; $7c59: $02
	inc  bc                                          ; $7c5a: $03
	ld   de, $b401                                   ; $7c5b: $11 $01 $b4
	ld   [hl+], a                                    ; $7c5e: $22
	inc  bc                                          ; $7c5f: $03
	ld   de, $a001                                   ; $7c60: $11 $01 $a0
	dec  h                                           ; $7c63: $25
	inc  e                                           ; $7c64: $1c
	nop                                              ; $7c65: $00
	rlca                                             ; $7c66: $07
	db   $e4                                         ; $7c67: $e4
	ld   [bc], a                                     ; $7c68: $02
	inc  bc                                          ; $7c69: $03
	ld   de, $a001                                   ; $7c6a: $11 $01 $a0
	ld   [hl+], a                                    ; $7c6d: $22
	nop                                              ; $7c6e: $00
	inc  e                                           ; $7c6f: $1c
	ld   bc, $0505                                   ; $7c70: $01 $05 $05
	dec  e                                           ; $7c73: $1d
	ld   b, b                                        ; $7c74: $40
	ld   de, $1103                                   ; $7c75: $11 $03 $11
	ld   bc, $2802                                   ; $7c78: $01 $02 $28
	nop                                              ; $7c7b: $00
	ld   bc, $546b                                   ; $7c7c: $01 $6b $54
	ld   [hl], l                                     ; $7c7f: $75
	ld   h, a                                        ; $7c80: $67
	ld   a, e                                        ; $7c81: $7b
	rst  $38                                         ; $7c82: $ff
	rst  $38                                         ; $7c83: $ff
	dec  c                                           ; $7c84: $0d
	halt                                             ; $7c85: $76
	ld   [hl], h                                     ; $7c86: $74
	sub  b                                           ; $7c87: $90
	cp   d                                           ; $7c88: $ba
	rst  ToBoot                                         ; $7c89: $c7
	xor  [hl]                                        ; $7c8a: $ae
	ld   l, [hl]                                     ; $7c8b: $6e
	halt                                             ; $7c8c: $76
	dec  b                                           ; $7c8d: $05
	pop  de                                          ; $7c8e: $d1
	ld   d, d                                        ; $7c8f: $52
	adc  h                                           ; $7c90: $8c
	ld   h, a                                        ; $7c91: $67
	sub  [hl]                                        ; $7c92: $96
	sbc  a                                           ; $7c93: $9f
	dec  c                                           ; $7c94: $0d
	nop                                              ; $7c95: $00
	ld   a, [bc]                                     ; $7c96: $0a

Jump_058_7c97:
	ld   b, $03                                      ; $7c97: $06 $03
	inc  bc                                          ; $7c99: $03
	inc  e                                           ; $7c9a: $1c
	ld   bc, $0101                                   ; $7c9b: $01 $01 $01
	dec  e                                           ; $7c9e: $1d
	ld   b, b                                        ; $7c9f: $40
	ld   de, $1103                                   ; $7ca0: $11 $03 $11
	ld   bc, $2801                                   ; $7ca3: $01 $01 $28
	nop                                              ; $7ca6: $00
	ld   bc, $546b                                   ; $7ca7: $01 $6b $54
	ld   [hl], l                                     ; $7caa: $75
	ld   h, a                                        ; $7cab: $67
	ld   a, e                                        ; $7cac: $7b
	rst  $38                                         ; $7cad: $ff
	rst  $38                                         ; $7cae: $ff
	dec  c                                           ; $7caf: $0d
	halt                                             ; $7cb0: $76
	ld   [hl], h                                     ; $7cb1: $74
	sub  b                                           ; $7cb2: $90
	ld   d, d                                        ; $7cb3: $52
	ld   d, d                                        ; $7cb4: $52
	inc  bc                                          ; $7cb5: $03
	add  d                                           ; $7cb6: $82
	ld   l, [hl]                                     ; $7cb7: $6e
	halt                                             ; $7cb8: $76
	dec  b                                           ; $7cb9: $05
	pop  de                                          ; $7cba: $d1
	ld   d, d                                        ; $7cbb: $52
	adc  h                                           ; $7cbc: $8c
	ld   h, a                                        ; $7cbd: $67
	sub  [hl]                                        ; $7cbe: $96
	sbc  a                                           ; $7cbf: $9f
	dec  c                                           ; $7cc0: $0d
	nop                                              ; $7cc1: $00
	ld   a, [bc]                                     ; $7cc2: $0a
	ld   b, $03                                      ; $7cc3: $06 $03
	inc  bc                                          ; $7cc5: $03
	inc  e                                           ; $7cc6: $1c
	ld   bc, $0000                                   ; $7cc7: $01 $00 $00
	ld   bc, $546b                                   ; $7cca: $01 $6b $54
	ld   [hl], l                                     ; $7ccd: $75
	ld   h, a                                        ; $7cce: $67
	ld   a, e                                        ; $7ccf: $7b
	rst  $38                                         ; $7cd0: $ff
	rst  $38                                         ; $7cd1: $ff
	dec  c                                           ; $7cd2: $0d
	inc  bc                                          ; $7cd3: $03
	ld   l, $03                                      ; $7cd4: $2e $03
	pop  hl                                          ; $7cd6: $e1
	ld   l, [hl]                                     ; $7cd7: $6e
	halt                                             ; $7cd8: $76
	dec  b                                           ; $7cd9: $05
	pop  de                                          ; $7cda: $d1
	ld   d, d                                        ; $7cdb: $52
	adc  h                                           ; $7cdc: $8c
	ld   h, a                                        ; $7cdd: $67
	ld   e, a                                        ; $7cde: $5f
	ld   [hl], a                                     ; $7cdf: $77
	rst  $38                                         ; $7ce0: $ff
	rst  $38                                         ; $7ce1: $ff
	dec  c                                           ; $7ce2: $0d
	nop                                              ; $7ce3: $00
	ld   a, [bc]                                     ; $7ce4: $0a
	inc  e                                           ; $7ce5: $1c
	ld   bc, $0000                                   ; $7ce6: $01 $00 $00
	ld   bc, $9075                                   ; $7ce9: $01 $75 $90
	sbc  [hl]                                        ; $7cec: $9e
	ld   [$6300], sp                                 ; $7ced: $08 $00 $63
	and  c                                           ; $7cf0: $a1
	sbc  a                                           ; $7cf1: $9f
	dec  c                                           ; $7cf2: $0d
	inc  b                                           ; $7cf3: $04
	ld   e, $03                                      ; $7cf4: $1e $03
	add  d                                           ; $7cf6: $82
	ld   a, h                                        ; $7cf7: $7c
	inc  b                                           ; $7cf8: $04
	ld   d, a                                        ; $7cf9: $57
	dec  b                                           ; $7cfa: $05
	add  hl, hl                                      ; $7cfb: $29
	sub  d                                           ; $7cfc: $92
	inc  b                                           ; $7cfd: $04
	ld   d, a                                        ; $7cfe: $57
	inc  b                                           ; $7cff: $04
	ld   h, e                                        ; $7d00: $63
	ld   a, b                                        ; $7d01: $78
	and  c                                           ; $7d02: $a1
	ld   [hl], h                                     ; $7d03: $74
	dec  c                                           ; $7d04: $0d
	ld   [bc], a                                     ; $7d05: $02
	and  c                                           ; $7d06: $a1
	ld   a, c                                        ; $7d07: $79
	ld   h, a                                        ; $7d08: $67
	sbc  c                                           ; $7d09: $99
	inc  b                                           ; $7d0a: $04
	adc  d                                           ; $7d0b: $8a
	inc  b                                           ; $7d0c: $04
	rst  JumpTable                                         ; $7d0d: $df
	ld   a, b                                        ; $7d0e: $78
	ld   d, d                                        ; $7d0f: $52
	ld   [hl], l                                     ; $7d10: $75
	ld   h, a                                        ; $7d11: $67
	sub  [hl]                                        ; $7d12: $96
	sbc  a                                           ; $7d13: $9f
	dec  c                                           ; $7d14: $0d
	nop                                              ; $7d15: $00
	ld   a, [bc]                                     ; $7d16: $0a
	inc  e                                           ; $7d17: $1c
	ld   bc, $0101                                   ; $7d18: $01 $01 $01
	ld   bc, $df04                                   ; $7d1b: $01 $04 $df
	ld   a, l                                        ; $7d1e: $7d
	inc  bc                                          ; $7d1f: $03
	sub  h                                           ; $7d20: $94
	inc  b                                           ; $7d21: $04
	sbc  [hl]                                        ; $7d22: $9e
	ld   e, d                                        ; $7d23: $5a
	inc  bc                                          ; $7d24: $03
	sub  h                                           ; $7d25: $94
	inc  b                                           ; $7d26: $04
	sbc  [hl]                                        ; $7d27: $9e
	sub  a                                           ; $7d28: $97
	ld   h, l                                        ; $7d29: $65
	ld   e, l                                        ; $7d2a: $5d
	ld   d, b                                        ; $7d2b: $50
	sbc  d                                           ; $7d2c: $9a
	ld   a, [hl]                                     ; $7d2d: $7e
	dec  c                                           ; $7d2e: $0d
	ld   d, d                                        ; $7d2f: $52
	ld   d, d                                        ; $7d30: $52
	and  c                                           ; $7d31: $a1
	ld   [hl], l                                     ; $7d32: $75
	ld   h, a                                        ; $7d33: $67
	ld   e, c                                        ; $7d34: $59
	sub  a                                           ; $7d35: $97
	sbc  a                                           ; $7d36: $9f
	dec  c                                           ; $7d37: $0d
	nop                                              ; $7d38: $00
	ld   a, [bc]                                     ; $7d39: $0a
	inc  e                                           ; $7d3a: $1c
	ld   bc, $0000                                   ; $7d3b: $01 $00 $00
	ld   bc, $7463                                   ; $7d3e: $01 $63 $74
	halt                                             ; $7d41: $76
	sbc  [hl]                                        ; $7d42: $9e
	sub  b                                           ; $7d43: $90
	ld   d, h                                        ; $7d44: $54
	ld   [bc], a                                     ; $7d45: $02
	ld   a, a                                        ; $7d46: $7f
	ld   e, c                                        ; $7d47: $59
	ld   a, b                                        ; $7d48: $78
	ld   e, l                                        ; $7d49: $5d
	ld   l, a                                        ; $7d4a: $6f
	sub  c                                           ; $7d4b: $91
	rst  $38                                         ; $7d4c: $ff
	rst  $38                                         ; $7d4d: $ff
	dec  c                                           ; $7d4e: $0d
	ld   [bc], a                                     ; $7d4f: $02
	and  l                                           ; $7d50: $a5
	inc  b                                           ; $7d51: $04
	xor  d                                           ; $7d52: $aa
	sub  b                                           ; $7d53: $90
	ld   [bc], a                                     ; $7d54: $02
	jr   nz, jr_058_7d5b                             ; $7d55: $20 $04

	xor  d                                           ; $7d57: $aa
	sbc  [hl]                                        ; $7d58: $9e
	dec  c                                           ; $7d59: $0d
	ld   e, d                                        ; $7d5a: $5a

jr_058_7d5b:
	and  c                                           ; $7d5b: $a1
	ld   a, [hl]                                     ; $7d5c: $7e
	sbc  b                                           ; $7d5d: $98
	adc  h                                           ; $7d5e: $8c
	ld   h, l                                        ; $7d5f: $65
	sub  l                                           ; $7d60: $95
	ld   d, h                                        ; $7d61: $54
	ld   a, e                                        ; $7d62: $7b
	sbc  a                                           ; $7d63: $9f
	dec  c                                           ; $7d64: $0d
	nop                                              ; $7d65: $00
	ld   a, [bc]                                     ; $7d66: $0a
	dec  c                                           ; $7d67: $0d
	nop                                              ; $7d68: $00
	nop                                              ; $7d69: $00
	rrca                                             ; $7d6a: $0f
	nop                                              ; $7d6b: $00
	ld   bc, $1e09                                   ; $7d6c: $01 $09 $1e
	nop                                              ; $7d6f: $00
	rrca                                             ; $7d70: $0f
	nop                                              ; $7d71: $00
	ld   bc, $6b01                                   ; $7d72: $01 $01 $6b
	ld   d, h                                        ; $7d75: $54
	ld   d, d                                        ; $7d76: $52
	ld   d, [hl]                                     ; $7d77: $56
	ld   a, [hl]                                     ; $7d78: $7e
	sbc  [hl]                                        ; $7d79: $9e
	ld   h, e                                        ; $7d7a: $63
	ld   e, l                                        ; $7d7b: $5d
	sub  a                                           ; $7d7c: $97
	ld   h, e                                        ; $7d7d: $63
	and  c                                           ; $7d7e: $a1
	ld   [hl], c                                     ; $7d7f: $71
	ld   [hl], h                                     ; $7d80: $74
	dec  c                                           ; $7d81: $0d
	ld   [bc], a                                     ; $7d82: $02
	sbc  d                                           ; $7d83: $9a
	ld   e, e                                        ; $7d84: $5b
	ld   a, b                                        ; $7d85: $78
	inc  bc                                          ; $7d86: $03
	add  d                                           ; $7d87: $82
	ld   a, l                                        ; $7d88: $7d
	ld   d, d                                        ; $7d89: $52
	sbc  c                                           ; $7d8a: $99
	and  c                                           ; $7d8b: $a1
	ld   [hl], l                                     ; $7d8c: $75
	ld   h, a                                        ; $7d8d: $67
	ld   e, c                                        ; $7d8e: $59
	ld   sp, hl                                      ; $7d8f: $f9
	dec  c                                           ; $7d90: $0d
	nop                                              ; $7d91: $00
	ld   a, [bc]                                     ; $7d92: $0a
	inc  e                                           ; $7d93: $1c
	ld   bc, $0505                                   ; $7d94: $01 $05 $05
	ld   bc, $9e6b                                   ; $7d97: $01 $6b $9e
	ld   l, e                                        ; $7d9a: $6b
	sbc  d                                           ; $7d9b: $9a
	ld   a, l                                        ; $7d9c: $7d
	rst  $38                                         ; $7d9d: $ff
	rst  $38                                         ; $7d9e: $ff
	dec  c                                           ; $7d9f: $0d
	nop                                              ; $7da0: $00
	ld   a, [bc]                                     ; $7da1: $0a
	add  hl, de                                      ; $7da2: $19
	dec  b                                           ; $7da3: $05
	ld   [bc], a                                     ; $7da4: $02
	inc  b                                           ; $7da5: $04
	ld   c, $03                                      ; $7da6: $0e $03
	sub  b                                           ; $7da8: $90
	ld   h, e                                        ; $7da9: $63
	and  c                                           ; $7daa: $a1
	ld   [hl], l                                     ; $7dab: $75
	ld   h, a                                        ; $7dac: $67
	ld   e, c                                        ; $7dad: $59
	ld   sp, hl                                      ; $7dae: $f9
	nop                                              ; $7daf: $00
	nop                                              ; $7db0: $00
	sub  b                                           ; $7db1: $90
	ld   h, l                                        ; $7db2: $65
	ld   e, c                                        ; $7db3: $59
	ld   h, l                                        ; $7db4: $65
	ld   [hl], h                                     ; $7db5: $74
	inc  b                                           ; $7db6: $04
	ld   l, l                                        ; $7db7: $6d
	ld   [hl], l                                     ; $7db8: $75
	ld   h, a                                        ; $7db9: $67
	ld   e, c                                        ; $7dba: $59
	ld   sp, hl                                      ; $7dbb: $f9
	nop                                              ; $7dbc: $00
	ld   bc, $f107                                   ; $7dbd: $01 $07 $f1
	inc  bc                                          ; $7dc0: $03
	ld   [bc], a                                     ; $7dc1: $02
	inc  bc                                          ; $7dc2: $03
	ld   bc, $2000                                   ; $7dc3: $01 $00 $20
	nop                                              ; $7dc6: $00
	rlca                                             ; $7dc7: $07
	ld   [hl], $04                                   ; $7dc8: $36 $04
	ld   [bc], a                                     ; $7dca: $02
	inc  bc                                          ; $7dcb: $03
	ld   bc, $2001                                   ; $7dcc: $01 $01 $20
	nop                                              ; $7dcf: $00
	ld   b, $96                                      ; $7dd0: $06 $96
	inc  b                                           ; $7dd2: $04
	rrca                                             ; $7dd3: $0f
	nop                                              ; $7dd4: $00
	ld   bc, $0401                                   ; $7dd5: $01 $01 $04
	ld   c, $03                                      ; $7dd8: $0e $03
	sub  b                                           ; $7dda: $90
	ld   h, e                                        ; $7ddb: $63
	and  c                                           ; $7ddc: $a1
	ld   [hl], l                                     ; $7ddd: $75
	ld   h, a                                        ; $7dde: $67
	ld   e, c                                        ; $7ddf: $59
	ld   sp, hl                                      ; $7de0: $f9
	dec  c                                           ; $7de1: $0d
	nop                                              ; $7de2: $00
	ld   a, [bc]                                     ; $7de3: $0a
	inc  e                                           ; $7de4: $1c
	ld   bc, $0505                                   ; $7de5: $01 $05 $05
	ld   bc, $9e50                                   ; $7de8: $01 $50 $9e
	ld   d, b                                        ; $7deb: $50
	ld   a, h                                        ; $7dec: $7c
	rst  $38                                         ; $7ded: $ff
	rst  $38                                         ; $7dee: $ff
	ld   l, e                                        ; $7def: $6b
	ld   a, h                                        ; $7df0: $7c
	rst  $38                                         ; $7df1: $ff
	rst  $38                                         ; $7df2: $ff
	dec  c                                           ; $7df3: $0d
	ld   d, b                                        ; $7df4: $50
	ld   l, l                                        ; $7df5: $6d
	ld   h, l                                        ; $7df6: $65
	dec  b                                           ; $7df7: $05
	jr   z, jr_058_7dfe                              ; $7df8: $28 $04

	di                                               ; $7dfa: $f3
	and  b                                           ; $7dfb: $a0
	dec  b                                           ; $7dfc: $05
	pop  de                                          ; $7dfd: $d1

jr_058_7dfe:
	ld   d, d                                        ; $7dfe: $52
	inc  bc                                          ; $7dff: $03
	add  b                                           ; $7e00: $80
	ld   h, l                                        ; $7e01: $65
	ld   l, l                                        ; $7e02: $6d
	ld   a, h                                        ; $7e03: $7c
	ld   [hl], l                                     ; $7e04: $75
	dec  c                                           ; $7e05: $0d
	ld   h, a                                        ; $7e06: $67
	adc  l                                           ; $7e07: $8d
	adc  h                                           ; $7e08: $8c
	ld   l, c                                        ; $7e09: $69
	and  c                                           ; $7e0a: $a1
	ld   a, [$000d]                                  ; $7e0b: $fa $0d $00
	ld   a, [bc]                                     ; $7e0e: $0a
	dec  c                                           ; $7e0f: $0d
	nop                                              ; $7e10: $00
	nop                                              ; $7e11: $00
	rrca                                             ; $7e12: $0f
	nop                                              ; $7e13: $00
	ld   bc, $1e09                                   ; $7e14: $01 $09 $1e
	nop                                              ; $7e17: $00
	rrca                                             ; $7e18: $0f
	nop                                              ; $7e19: $00
	ld   bc, $9001                                   ; $7e1a: $01 $01 $90
	ld   h, l                                        ; $7e1d: $65
	ld   e, c                                        ; $7e1e: $59
	ld   h, l                                        ; $7e1f: $65
	ld   [hl], h                                     ; $7e20: $74
	inc  b                                           ; $7e21: $04
	ld   l, l                                        ; $7e22: $6d
	ld   [hl], l                                     ; $7e23: $75
	ld   h, a                                        ; $7e24: $67
	ld   e, c                                        ; $7e25: $59
	ld   sp, hl                                      ; $7e26: $f9
	dec  c                                           ; $7e27: $0d
	nop                                              ; $7e28: $00
	ld   a, [bc]                                     ; $7e29: $0a
	inc  e                                           ; $7e2a: $1c
	ld   bc, $0202                                   ; $7e2b: $01 $02 $02
	ld   bc, $5a6f                                   ; $7e2e: $01 $6f $5a
	ld   d, d                                        ; $7e31: $52
	adc  h                                           ; $7e32: $8c
	ld   h, a                                        ; $7e33: $67
	ld   a, [$000d]                                  ; $7e34: $fa $0d $00
	ld   a, [bc]                                     ; $7e37: $0a
	inc  e                                           ; $7e38: $1c
	ld   bc, $0404                                   ; $7e39: $01 $04 $04
	ld   bc, $ff50                                   ; $7e3c: $01 $50 $ff
	rst  $38                                         ; $7e3f: $ff
	ld   h, d                                        ; $7e40: $62
	adc  a                                           ; $7e41: $8f
	and  c                                           ; $7e42: $a1
	ld   a, b                                        ; $7e43: $78
	ld   h, e                                        ; $7e44: $63
	ld   d, d                                        ; $7e45: $52
	rst  $38                                         ; $7e46: $ff
	rst  $38                                         ; $7e47: $ff
	dec  c                                           ; $7e48: $0d
	ld   l, e                                        ; $7e49: $6b
	ld   d, h                                        ; $7e4a: $54
	ld   d, d                                        ; $7e4b: $52
	ld   d, h                                        ; $7e4c: $54
	ld   [bc], a                                     ; $7e4d: $02
	ld   b, $04                                      ; $7e4e: $06 $04
	jp   nc, $9166                                   ; $7e50: $d2 $66 $91

	ld   a, b                                        ; $7e53: $78
	ld   d, d                                        ; $7e54: $52
	and  c                                           ; $7e55: $a1
	ld   [hl], l                                     ; $7e56: $75
	ld   h, a                                        ; $7e57: $67
	sbc  a                                           ; $7e58: $9f
	dec  c                                           ; $7e59: $0d
	nop                                              ; $7e5a: $00
	ld   a, [bc]                                     ; $7e5b: $0a
	ld   bc, $8d67                                   ; $7e5c: $01 $67 $8d
	adc  h                                           ; $7e5f: $8c
	ld   l, c                                        ; $7e60: $69
	and  c                                           ; $7e61: $a1
	sbc  [hl]                                        ; $7e62: $9e
	inc  bc                                          ; $7e63: $03
	add  e                                           ; $7e64: $83
	dec  b                                           ; $7e65: $05
	dec  c                                           ; $7e66: $0d
	ld   h, l                                        ; $7e67: $65
	adc  h                                           ; $7e68: $8c
	ld   h, a                                        ; $7e69: $67
	rst  $38                                         ; $7e6a: $ff
	rst  $38                                         ; $7e6b: $ff
	dec  c                                           ; $7e6c: $0d
	nop                                              ; $7e6d: $00
	ld   a, [bc]                                     ; $7e6e: $0a
	dec  c                                           ; $7e6f: $0d
	nop                                              ; $7e70: $00
	nop                                              ; $7e71: $00
	rrca                                             ; $7e72: $0f
	nop                                              ; $7e73: $00
	ld   bc, $1e09                                   ; $7e74: $01 $09 $1e
	nop                                              ; $7e77: $00
	inc  e                                           ; $7e78: $1c
	ld   bc, $0303                                   ; $7e79: $01 $03 $03
	ld   bc, $9e50                                   ; $7e7c: $01 $50 $9e
	sub  b                                           ; $7e7f: $90
	ld   d, h                                        ; $7e80: $54
	ld   [bc], a                                     ; $7e81: $02
	ld   a, a                                        ; $7e82: $7f
	ld   e, c                                        ; $7e83: $59
	ld   a, b                                        ; $7e84: $78
	ld   e, l                                        ; $7e85: $5d
	ld   l, a                                        ; $7e86: $6f
	sub  c                                           ; $7e87: $91
	ld   a, [$080d]                                  ; $7e88: $fa $0d $08
	nop                                              ; $7e8b: $00
	ld   h, e                                        ; $7e8c: $63
	and  c                                           ; $7e8d: $a1
	sbc  [hl]                                        ; $7e8e: $9e
	adc  h                                           ; $7e8f: $8c
	ld   l, l                                        ; $7e90: $6d
	ld   [bc], a                                     ; $7e91: $02
	xor  d                                           ; $7e92: $aa
	ld   [hl], l                                     ; $7e93: $75
	sbc  a                                           ; $7e94: $9f
	dec  c                                           ; $7e95: $0d
	nop                                              ; $7e96: $00
	ld   a, [bc]                                     ; $7e97: $0a
	dec  c                                           ; $7e98: $0d
	nop                                              ; $7e99: $00
	nop                                              ; $7e9a: $00
	rrca                                             ; $7e9b: $0f
	nop                                              ; $7e9c: $00
	ld   bc, $1e09                                   ; $7e9d: $01 $09 $1e
	nop                                              ; $7ea0: $00
	nop                                              ; $7ea1: $00
	ld   [bc], a                                     ; $7ea2: $02
	rlca                                             ; $7ea3: $07
	ld   sp, $0300                                   ; $7ea4: $31 $00 $03
	ld   [de], a                                     ; $7ea7: $12
	ld   bc, $2265                                   ; $7ea8: $01 $65 $22
	nop                                              ; $7eab: $00
	rlca                                             ; $7eac: $07
	ld   l, c                                        ; $7ead: $69
	nop                                              ; $7eae: $00
	inc  bc                                          ; $7eaf: $03
	ld   [de], a                                     ; $7eb0: $12
	ld   bc, $2565                                   ; $7eb1: $01 $65 $25
	inc  bc                                          ; $7eb4: $03
	ld   [de], a                                     ; $7eb5: $12
	ld   bc, $228c                                   ; $7eb6: $01 $8c $22
	inc  e                                           ; $7eb9: $1c
	nop                                              ; $7eba: $00
	rlca                                             ; $7ebb: $07
	and  d                                           ; $7ebc: $a2
	nop                                              ; $7ebd: $00
	inc  bc                                          ; $7ebe: $03
	ld   [de], a                                     ; $7ebf: $12
	ld   bc, $258c                                   ; $7ec0: $01 $8c $25
	inc  bc                                          ; $7ec3: $03
	ld   [de], a                                     ; $7ec4: $12
	ld   bc, $22a0                                   ; $7ec5: $01 $a0 $22
	inc  e                                           ; $7ec8: $1c
	nop                                              ; $7ec9: $00
	rlca                                             ; $7eca: $07
	ldh  [c], a                                      ; $7ecb: $e2
	nop                                              ; $7ecc: $00
	inc  bc                                          ; $7ecd: $03
	ld   [de], a                                     ; $7ece: $12
	ld   bc, $25a0                                   ; $7ecf: $01 $a0 $25
	nop                                              ; $7ed2: $00
	rrca                                             ; $7ed3: $0f
	nop                                              ; $7ed4: $00
	ld   bc, $6701                                   ; $7ed5: $01 $01 $67
	adc  l                                           ; $7ed8: $8d
	sbc  d                                           ; $7ed9: $9a
	ld   h, e                                        ; $7eda: $63
	and  c                                           ; $7edb: $a1
	sbc  a                                           ; $7edc: $9f
	dec  c                                           ; $7edd: $0d
	nop                                              ; $7ede: $00
	ld   a, [bc]                                     ; $7edf: $0a
	inc  e                                           ; $7ee0: $1c
	ld   [bc], a                                     ; $7ee1: $02
	nop                                              ; $7ee2: $00
	nop                                              ; $7ee3: $00
	ld   bc, $8c52                                   ; $7ee4: $01 $52 $8c
	sbc  [hl]                                        ; $7ee7: $9e
	inc  bc                                          ; $7ee8: $03
	ld   l, e                                        ; $7ee9: $6b
	ld   e, d                                        ; $7eea: $5a
	inc  b                                           ; $7eeb: $04
	sbc  c                                           ; $7eec: $99
	ld   l, c                                        ; $7eed: $69
	adc  h                                           ; $7eee: $8c
	ld   l, c                                        ; $7eef: $69
	and  c                                           ; $7ef0: $a1
	ld   a, h                                        ; $7ef1: $7c
	sbc  a                                           ; $7ef2: $9f
	dec  c                                           ; $7ef3: $0d
	ld   d, b                                        ; $7ef4: $50
	halt                                             ; $7ef5: $76
	ld   a, c                                        ; $7ef6: $79
	ld   h, l                                        ; $7ef7: $65
	ld   [hl], h                                     ; $7ef8: $74
	ld   e, l                                        ; $7ef9: $5d
	ld   l, [hl]                                     ; $7efa: $6e
	ld   h, e                                        ; $7efb: $63
	ld   d, d                                        ; $7efc: $52
	ld   a, b                                        ; $7efd: $78
	sbc  a                                           ; $7efe: $9f
	dec  c                                           ; $7eff: $0d
	nop                                              ; $7f00: $00
	ld   a, [bc]                                     ; $7f01: $0a
	dec  c                                           ; $7f02: $0d
	nop                                              ; $7f03: $00
	nop                                              ; $7f04: $00
	rrca                                             ; $7f05: $0f
	nop                                              ; $7f06: $00
	ld   bc, $1e09                                   ; $7f07: $01 $09 $1e
	nop                                              ; $7f0a: $00
	dec  c                                           ; $7f0b: $0d
	ld   [bc], a                                     ; $7f0c: $02
	nop                                              ; $7f0d: $00
	rrca                                             ; $7f0e: $0f
	nop                                              ; $7f0f: $00
	ld   bc, $6701                                   ; $7f10: $01 $01 $67
	adc  l                                           ; $7f13: $8d
	sbc  d                                           ; $7f14: $9a
	ld   h, e                                        ; $7f15: $63
	and  c                                           ; $7f16: $a1
	sbc  a                                           ; $7f17: $9f
	dec  c                                           ; $7f18: $0d
	ld   e, b                                        ; $7f19: $58
	ld   a, l                                        ; $7f1a: $7d
	sub  [hl]                                        ; $7f1b: $96
	ld   d, h                                        ; $7f1c: $54
	ld   h, d                                        ; $7f1d: $62
	ld   h, h                                        ; $7f1e: $64
	ld   d, d                                        ; $7f1f: $52
	adc  h                                           ; $7f20: $8c
	ld   h, a                                        ; $7f21: $67
	sbc  a                                           ; $7f22: $9f
	dec  c                                           ; $7f23: $0d
	nop                                              ; $7f24: $00
	ld   a, [bc]                                     ; $7f25: $0a
	rrca                                             ; $7f26: $0f
	ld   [bc], a                                     ; $7f27: $02
	nop                                              ; $7f28: $00
	ld   bc, $7d58                                   ; $7f29: $01 $58 $7d
	sub  [hl]                                        ; $7f2c: $96
	ld   d, h                                        ; $7f2d: $54
	sbc  a                                           ; $7f2e: $9f
	dec  c                                           ; $7f2f: $0d
	ld   [hl], l                                     ; $7f30: $75
	ld   a, l                                        ; $7f31: $7d
	inc  bc                                          ; $7f32: $03
	add  e                                           ; $7f33: $83
	dec  b                                           ; $7f34: $05
	dec  c                                           ; $7f35: $0d
	rst  $38                                         ; $7f36: $ff
	rst  $38                                         ; $7f37: $ff
	dec  c                                           ; $7f38: $0d
	nop                                              ; $7f39: $00
	ld   a, [bc]                                     ; $7f3a: $0a
	dec  c                                           ; $7f3b: $0d
	nop                                              ; $7f3c: $00
	nop                                              ; $7f3d: $00
	rrca                                             ; $7f3e: $0f
	nop                                              ; $7f3f: $00
	ld   bc, $1e09                                   ; $7f40: $01 $09 $1e
	nop                                              ; $7f43: $00
	dec  c                                           ; $7f44: $0d
	ld   [bc], a                                     ; $7f45: $02
	nop                                              ; $7f46: $00
	rrca                                             ; $7f47: $0f
	nop                                              ; $7f48: $00
	ld   bc, $6701                                   ; $7f49: $01 $01 $67
	adc  l                                           ; $7f4c: $8d
	sbc  d                                           ; $7f4d: $9a
	ld   h, e                                        ; $7f4e: $63
	and  c                                           ; $7f4f: $a1
	sbc  a                                           ; $7f50: $9f
	dec  c                                           ; $7f51: $0d
	ld   e, b                                        ; $7f52: $58
	ld   a, l                                        ; $7f53: $7d
	sub  [hl]                                        ; $7f54: $96
	ld   d, h                                        ; $7f55: $54
	ld   h, d                                        ; $7f56: $62
	ld   h, h                                        ; $7f57: $64
	ld   d, d                                        ; $7f58: $52
	adc  h                                           ; $7f59: $8c
	ld   h, a                                        ; $7f5a: $67
	sbc  a                                           ; $7f5b: $9f
	dec  c                                           ; $7f5c: $0d
	nop                                              ; $7f5d: $00
	ld   a, [bc]                                     ; $7f5e: $0a
	inc  e                                           ; $7f5f: $1c
	ld   [bc], a                                     ; $7f60: $02
	ld   bc, $0101                                   ; $7f61: $01 $01 $01
	ld   e, b                                        ; $7f64: $58
	ld   a, l                                        ; $7f65: $7d
	sub  [hl]                                        ; $7f66: $96
	ld   d, h                                        ; $7f67: $54
	sbc  a                                           ; $7f68: $9f
	dec  c                                           ; $7f69: $0d
	ld   [$6300], sp                                 ; $7f6a: $08 $00 $63
	and  c                                           ; $7f6d: $a1
	sbc  a                                           ; $7f6e: $9f
	dec  c                                           ; $7f6f: $0d
	ld   [hl], l                                     ; $7f70: $75
	ld   a, l                                        ; $7f71: $7d
	inc  bc                                          ; $7f72: $03
	add  e                                           ; $7f73: $83
	dec  b                                           ; $7f74: $05
	dec  c                                           ; $7f75: $0d
	rst  $38                                         ; $7f76: $ff
	rst  $38                                         ; $7f77: $ff
	dec  c                                           ; $7f78: $0d
	nop                                              ; $7f79: $00
	ld   a, [bc]                                     ; $7f7a: $0a
	dec  c                                           ; $7f7b: $0d
	nop                                              ; $7f7c: $00
	nop                                              ; $7f7d: $00
	rrca                                             ; $7f7e: $0f
	nop                                              ; $7f7f: $00
	ld   bc, $1e09                                   ; $7f80: $01 $09 $1e
	nop                                              ; $7f83: $00
	inc  e                                           ; $7f84: $1c
	ld   [bc], a                                     ; $7f85: $02
	ld   bc, $0101                                   ; $7f86: $01 $01 $01
	ld   [$6300], sp                                 ; $7f89: $08 $00 $63
	and  c                                           ; $7f8c: $a1
	sbc  a                                           ; $7f8d: $9f
	dec  c                                           ; $7f8e: $0d
	ld   e, b                                        ; $7f8f: $58
	ld   a, l                                        ; $7f90: $7d
	sub  [hl]                                        ; $7f91: $96
	ld   d, h                                        ; $7f92: $54
	sbc  a                                           ; $7f93: $9f
	dec  c                                           ; $7f94: $0d
	nop                                              ; $7f95: $00
	ld   a, [bc]                                     ; $7f96: $0a
	rrca                                             ; $7f97: $0f
	nop                                              ; $7f98: $00
	ld   bc, $5801                                   ; $7f99: $01 $01 $58
	ld   a, l                                        ; $7f9c: $7d
	sub  [hl]                                        ; $7f9d: $96
	ld   d, h                                        ; $7f9e: $54
	ld   h, d                                        ; $7f9f: $62
	ld   h, h                                        ; $7fa0: $64
	ld   d, d                                        ; $7fa1: $52
	adc  h                                           ; $7fa2: $8c
	ld   h, a                                        ; $7fa3: $67
	sbc  a                                           ; $7fa4: $9f
	dec  c                                           ; $7fa5: $0d
	ld   h, a                                        ; $7fa6: $67
	adc  l                                           ; $7fa7: $8d
	sbc  d                                           ; $7fa8: $9a
	ld   h, e                                        ; $7fa9: $63
	and  c                                           ; $7faa: $a1
	sbc  a                                           ; $7fab: $9f
	dec  c                                           ; $7fac: $0d
	nop                                              ; $7fad: $00
	ld   a, [bc]                                     ; $7fae: $0a
	rrca                                             ; $7faf: $0f
	ld   [bc], a                                     ; $7fb0: $02
	ld   bc, $0201                                   ; $7fb1: $01 $01 $02
	and  l                                           ; $7fb4: $a5
	inc  b                                           ; $7fb5: $04
	xor  d                                           ; $7fb6: $aa
	sub  b                                           ; $7fb7: $90
	ld   [bc], a                                     ; $7fb8: $02
	jr   nz, jr_058_7fbf                             ; $7fb9: $20 $04

	xor  d                                           ; $7fbb: $aa
	sbc  [hl]                                        ; $7fbc: $9e
	dec  c                                           ; $7fbd: $0d
	ld   e, d                                        ; $7fbe: $5a

jr_058_7fbf:
	and  c                                           ; $7fbf: $a1
	ld   a, [hl]                                     ; $7fc0: $7e
	sbc  b                                           ; $7fc1: $98
	ld   a, b                                        ; $7fc2: $78
	ld   h, e                                        ; $7fc3: $63
	ld   d, d                                        ; $7fc4: $52
	sbc  a                                           ; $7fc5: $9f
	dec  c                                           ; $7fc6: $0d
	ld   [hl], l                                     ; $7fc7: $75
	ld   a, l                                        ; $7fc8: $7d
	inc  bc                                          ; $7fc9: $03
	add  e                                           ; $7fca: $83
	dec  b                                           ; $7fcb: $05
	dec  c                                           ; $7fcc: $0d
	rst  $38                                         ; $7fcd: $ff
	rst  $38                                         ; $7fce: $ff
	dec  c                                           ; $7fcf: $0d
	nop                                              ; $7fd0: $00
	ld   a, [bc]                                     ; $7fd1: $0a
	nop                                              ; $7fd2: $00
	nop                                              ; $7fd3: $00
	ld   [bc], a                                     ; $7fd4: $02
	rlca                                             ; $7fd5: $07
	ld   sp, $0300                                   ; $7fd6: $31 $00 $03
	ld   de, $6501                                   ; $7fd9: $11 $01 $65
	ld   [hl+], a                                    ; $7fdc: $22
	nop                                              ; $7fdd: $00
	rlca                                             ; $7fde: $07
	ld   h, d                                        ; $7fdf: $62
	nop                                              ; $7fe0: $00
	inc  bc                                          ; $7fe1: $03
	ld   de, $6501                                   ; $7fe2: $11 $01 $65
	dec  h                                           ; $7fe5: $25
	inc  bc                                          ; $7fe6: $03
	ld   de, $8c01                                   ; $7fe7: $11 $01 $8c
	ld   [hl+], a                                    ; $7fea: $22
	inc  e                                           ; $7feb: $1c
	nop                                              ; $7fec: $00
	rlca                                             ; $7fed: $07
	sbc  l                                           ; $7fee: $9d
	nop                                              ; $7fef: $00
	inc  bc                                          ; $7ff0: $03
	ld   de, $8c01                                   ; $7ff1: $11 $01 $8c
	dec  h                                           ; $7ff4: $25
	inc  bc                                          ; $7ff5: $03
	ld   de, $a001                                   ; $7ff6: $11 $01 $a0
	ld   [hl+], a                                    ; $7ff9: $22
	inc  e                                           ; $7ffa: $1c
	nop                                              ; $7ffb: $00
	rlca                                             ; $7ffc: $07
	rst  JumpTable                                         ; $7ffd: $df
	nop                                              ; $7ffe: $00
	inc  bc                                          ; $7fff: $03
