; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $04d", ROMX[$4000], BANK[$4d]

	ld   [bc], a                                     ; $4000: $02
	scf                                              ; $4001: $37
	ld   a, l                                        ; $4002: $7d
	ld   a, b                                        ; $4003: $78
	ld   d, d                                        ; $4004: $52
	ld   [hl], l                                     ; $4005: $75
	ld   h, l                                        ; $4006: $65
	sub  l                                           ; $4007: $95
	ld   d, h                                        ; $4008: $54
	dec  c                                           ; $4009: $0d
	ld   e, a                                        ; $400a: $5f
	ld   [hl], a                                     ; $400b: $77
	rst  $38                                         ; $400c: $ff
	rst  $38                                         ; $400d: $ff
	dec  c                                           ; $400e: $0d
	nop                                              ; $400f: $00
	ld   a, [bc]                                     ; $4010: $0a
	ld   b, $44                                      ; $4011: $06 $44
	ld   [$000f], sp                                 ; $4013: $08 $0f $00
	ld   bc, $5a01                                   ; $4016: $01 $01 $5a
	and  c                                           ; $4019: $a1
	ld   a, [hl]                                     ; $401a: $7e
	ld   [hl], c                                     ; $401b: $71
	ld   [hl], h                                     ; $401c: $74
	ld   [bc], a                                     ; $401d: $02
	inc  [hl]                                        ; $401e: $34
	ld   h, e                                        ; $401f: $63
	ld   d, d                                        ; $4020: $52
	ld   a, e                                        ; $4021: $7b
	sbc  a                                           ; $4022: $9f
	dec  c                                           ; $4023: $0d
	ld   [bc], a                                     ; $4024: $02
	add  hl, bc                                      ; $4025: $09
	ld   [bc], a                                     ; $4026: $02
	ld   [$7465], sp                                 ; $4027: $08 $65 $74
	adc  h                                           ; $402a: $8c
	ld   h, a                                        ; $402b: $67
	ld   e, c                                        ; $402c: $59
	sub  a                                           ; $402d: $97
	sbc  a                                           ; $402e: $9f
	dec  c                                           ; $402f: $0d
	nop                                              ; $4030: $00
	ld   a, [bc]                                     ; $4031: $0a
	inc  e                                           ; $4032: $1c
	inc  bc                                          ; $4033: $03
	inc  bc                                          ; $4034: $03
	inc  bc                                          ; $4035: $03
	dec  e                                           ; $4036: $1d
	ld   b, b                                        ; $4037: $40
	inc  de                                          ; $4038: $13
	inc  bc                                          ; $4039: $03
	inc  de                                          ; $403a: $13
	ld   bc, $2803                                   ; $403b: $01 $03 $28
	nop                                              ; $403e: $00
	ld   bc, $9850                                   ; $403f: $01 $50 $98
	ld   e, d                                        ; $4042: $5a
	halt                                             ; $4043: $76
	ld   d, h                                        ; $4044: $54
	sbc  a                                           ; $4045: $9f
	dec  c                                           ; $4046: $0d
	nop                                              ; $4047: $00
	ld   a, [bc]                                     ; $4048: $0a
	ld   b, $44                                      ; $4049: $06 $44
	ld   [$000f], sp                                 ; $404b: $08 $0f $00
	ld   bc, $0401                                   ; $404e: $01 $01 $04
	ld   c, l                                        ; $4051: $4d
	ld   [bc], a                                     ; $4052: $02
	ld   a, e                                        ; $4053: $7b
	ld   d, d                                        ; $4054: $52
	adc  h                                           ; $4055: $8c
	ld   l, c                                        ; $4056: $69
	and  c                                           ; $4057: $a1
	ld   a, e                                        ; $4058: $7b
	rst  $38                                         ; $4059: $ff
	rst  $38                                         ; $405a: $ff
	dec  c                                           ; $405b: $0d
	rst  JumpTable                                         ; $405c: $df
	db   $ec                                         ; $405d: $ec
	and  e                                           ; $405e: $a3
	ld   h, e                                        ; $405f: $63
	and  c                                           ; $4060: $a1
	ld   e, d                                        ; $4061: $5a
	db   $dd                                         ; $4062: $dd
	and  a                                           ; $4063: $a7
	cp   e                                           ; $4064: $bb
	ld   l, [hl]                                     ; $4065: $6e
	ld   a, b                                        ; $4066: $78
	and  c                                           ; $4067: $a1
	ld   [hl], h                                     ; $4068: $74
	sbc  a                                           ; $4069: $9f
	dec  c                                           ; $406a: $0d
	nop                                              ; $406b: $00
	ld   a, [bc]                                     ; $406c: $0a
	inc  e                                           ; $406d: $1c
	inc  bc                                          ; $406e: $03
	inc  bc                                          ; $406f: $03
	inc  bc                                          ; $4070: $03
	dec  e                                           ; $4071: $1d
	ld   b, b                                        ; $4072: $40
	inc  de                                          ; $4073: $13
	inc  bc                                          ; $4074: $03
	inc  de                                          ; $4075: $13
	ld   bc, $2802                                   ; $4076: $01 $02 $28
	nop                                              ; $4079: $00
	ld   bc, $d6d6                                   ; $407a: $01 $d6 $d6
	rst  $38                                         ; $407d: $ff
	rst  $38                                         ; $407e: $ff
	dec  c                                           ; $407f: $0d
	db   $dd                                         ; $4080: $dd
	and  a                                           ; $4081: $a7
	cp   e                                           ; $4082: $bb
	ld   a, b                                        ; $4083: $78
	sbc  l                                           ; $4084: $9d
	ld   e, a                                        ; $4085: $5f
	ld   h, [hl]                                     ; $4086: $66
	sub  c                                           ; $4087: $91
	ld   a, b                                        ; $4088: $78
	ld   d, d                                        ; $4089: $52
	ld   a, h                                        ; $408a: $7c
	sub  [hl]                                        ; $408b: $96
	sbc  a                                           ; $408c: $9f
	dec  c                                           ; $408d: $0d
	inc  b                                           ; $408e: $04
	ret  c                                           ; $408f: $d8

	inc  b                                           ; $4090: $04
	xor  h                                           ; $4091: $ac
	ld   d, d                                        ; $4092: $52
	ld   h, c                                        ; $4093: $61
	halt                                             ; $4094: $76
	ld   [bc], a                                     ; $4095: $02
	sbc  l                                           ; $4096: $9d
	ld   d, h                                        ; $4097: $54
	sbc  l                                           ; $4098: $9d
	ld   a, e                                        ; $4099: $7b
	rst  $38                                         ; $409a: $ff
	rst  $38                                         ; $409b: $ff
	dec  c                                           ; $409c: $0d
	nop                                              ; $409d: $00
	ld   a, [bc]                                     ; $409e: $0a
	ld   b, $44                                      ; $409f: $06 $44
	ld   [$031c], sp                                 ; $40a1: $08 $1c $03
	nop                                              ; $40a4: $00
	nop                                              ; $40a5: $00
	ld   bc, $9e63                                   ; $40a6: $01 $63 $9e
	ld   e, b                                        ; $40a9: $58
	ld   h, l                                        ; $40aa: $65
	sub  c                                           ; $40ab: $91
	add  a                                           ; $40ac: $87
	sbc  b                                           ; $40ad: $98
	ld   a, l                                        ; $40ae: $7d
	ld   e, b                                        ; $40af: $58
	ld   h, l                                        ; $40b0: $65
	adc  h                                           ; $40b1: $8c
	ld   d, d                                        ; $40b2: $52
	sub  [hl]                                        ; $40b3: $96
	sbc  a                                           ; $40b4: $9f
	dec  c                                           ; $40b5: $0d
	inc  bc                                          ; $40b6: $03
	ld   [hl], b                                     ; $40b7: $70
	ld   e, l                                        ; $40b8: $5d
	sbc  [hl]                                        ; $40b9: $9e
	inc  bc                                          ; $40ba: $03
	ld   l, l                                        ; $40bb: $6d
	dec  b                                           ; $40bc: $05
	add  hl, de                                      ; $40bd: $19
	ld   a, h                                        ; $40be: $7c
	ld   h, l                                        ; $40bf: $65
	ld   l, l                                        ; $40c0: $6d
	ld   e, l                                        ; $40c1: $5d
	and  b                                           ; $40c2: $a0
	dec  c                                           ; $40c3: $0d
	ld   h, l                                        ; $40c4: $65
	ld   [hl], h                                     ; $40c5: $74
	ld   e, e                                        ; $40c6: $5b
	ld   a, b                                        ; $40c7: $78
	ld   h, e                                        ; $40c8: $63
	ld   d, d                                        ; $40c9: $52
	sbc  a                                           ; $40ca: $9f
	dec  c                                           ; $40cb: $0d
	nop                                              ; $40cc: $00
	ld   a, [bc]                                     ; $40cd: $0a
	dec  c                                           ; $40ce: $0d
	nop                                              ; $40cf: $00
	nop                                              ; $40d0: $00
	rrca                                             ; $40d1: $0f
	nop                                              ; $40d2: $00
	ld   bc, $1e09                                   ; $40d3: $01 $09 $1e
	nop                                              ; $40d6: $00
	rrca                                             ; $40d7: $0f
	nop                                              ; $40d8: $00
	ld   bc, $df01                                   ; $40d9: $01 $01 $df
	db   $ec                                         ; $40dc: $ec
	and  e                                           ; $40dd: $a3
	ld   h, e                                        ; $40de: $63
	and  c                                           ; $40df: $a1
	ld   a, l                                        ; $40e0: $7d
	sbc  [hl]                                        ; $40e1: $9e
	dec  c                                           ; $40e2: $0d
	inc  b                                           ; $40e3: $04
	adc  [hl]                                        ; $40e4: $8e
	inc  b                                           ; $40e5: $04
	inc  c                                           ; $40e6: $0c
	ld   a, h                                        ; $40e7: $7c
	ld   h, c                                        ; $40e8: $61
	halt                                             ; $40e9: $76
	and  b                                           ; $40ea: $a0
	ld   [hl], a                                     ; $40eb: $77
	ld   d, h                                        ; $40ec: $54
	dec  b                                           ; $40ed: $05
	pop  de                                          ; $40ee: $d1
	ld   [hl], c                                     ; $40ef: $71
	ld   [hl], h                                     ; $40f0: $74
	ld   d, d                                        ; $40f1: $52
	sbc  c                                           ; $40f2: $99
	and  c                                           ; $40f3: $a1
	dec  c                                           ; $40f4: $0d
	ld   [hl], l                                     ; $40f5: $75
	ld   h, a                                        ; $40f6: $67
	ld   e, c                                        ; $40f7: $59
	ld   sp, hl                                      ; $40f8: $f9
	dec  c                                           ; $40f9: $0d
	nop                                              ; $40fa: $00
	ld   a, [bc]                                     ; $40fb: $0a
	inc  e                                           ; $40fc: $1c
	inc  bc                                          ; $40fd: $03
	nop                                              ; $40fe: $00
	nop                                              ; $40ff: $00
	ld   bc, $546b                                   ; $4100: $01 $6b $54
	ld   a, e                                        ; $4103: $7b
	rst  $38                                         ; $4104: $ff
	rst  $38                                         ; $4105: $ff
	dec  c                                           ; $4106: $0d
	ld   d, b                                        ; $4107: $50
	sbc  c                                           ; $4108: $99
	ld   [bc], a                                     ; $4109: $02
	ld   b, $04                                      ; $410a: $06 $04
	jp   nc, $039e                                   ; $410c: $d2 $9e $03

	ld   h, $7a                                      ; $410f: $26 $7a
	ld   e, e                                        ; $4111: $5b
	ld   a, c                                        ; $4112: $79
	ld   a, b                                        ; $4113: $78
	sbc  c                                           ; $4114: $99
	dec  c                                           ; $4115: $0d
	dec  b                                           ; $4116: $05
	inc  de                                          ; $4117: $13
	ld   h, l                                        ; $4118: $65
	ld   d, d                                        ; $4119: $52
	ld   h, c                                        ; $411a: $61
	halt                                             ; $411b: $76
	rst  $38                                         ; $411c: $ff
	rst  $38                                         ; $411d: $ff
	dec  c                                           ; $411e: $0d
	nop                                              ; $411f: $00
	ld   a, [bc]                                     ; $4120: $0a
	inc  e                                           ; $4121: $1c
	inc  bc                                          ; $4122: $03
	inc  bc                                          ; $4123: $03
	inc  bc                                          ; $4124: $03
	ld   bc, $9075                                   ; $4125: $01 $75 $90
	sbc  [hl]                                        ; $4128: $9e
	inc  b                                           ; $4129: $04
	db   $ec                                         ; $412a: $ec
	inc  bc                                          ; $412b: $03
	or   b                                           ; $412c: $b0
	halt                                             ; $412d: $76
	ld   h, l                                        ; $412e: $65
	ld   [hl], h                                     ; $412f: $74
	ld   a, h                                        ; $4130: $7c
	sub  d                                           ; $4131: $92
	sbc  b                                           ; $4132: $98
	ld   e, d                                        ; $4133: $5a
	ld   d, d                                        ; $4134: $52
	sub  b                                           ; $4135: $90
	dec  c                                           ; $4136: $0d
	ld   [bc], a                                     ; $4137: $02
	sub  l                                           ; $4138: $95
	ld   [hl], d                                     ; $4139: $72
	ld   e, a                                        ; $413a: $5f
	ld   l, l                                        ; $413b: $6d
	ld   h, l                                        ; $413c: $65
	sbc  [hl]                                        ; $413d: $9e
	ld   [bc], a                                     ; $413e: $02
	and  l                                           ; $413f: $a5
	ld   [hl], l                                     ; $4140: $75
	ld   a, l                                        ; $4141: $7d
	ld   h, a                                        ; $4142: $67
	ld   h, d                                        ; $4143: $62
	ld   e, l                                        ; $4144: $5d
	dec  c                                           ; $4145: $0d
	inc  b                                           ; $4146: $04
	ld   c, $03                                      ; $4147: $0e $03
	dec  de                                          ; $4149: $1b
	ld   a, b                                        ; $414a: $78
	ld   h, c                                        ; $414b: $61
	halt                                             ; $414c: $76
	ld   l, [hl]                                     ; $414d: $6e
	sbc  l                                           ; $414e: $9d
	rst  $38                                         ; $414f: $ff
	rst  $38                                         ; $4150: $ff
	dec  c                                           ; $4151: $0d
	nop                                              ; $4152: $00
	ld   a, [bc]                                     ; $4153: $0a
	inc  e                                           ; $4154: $1c
	inc  bc                                          ; $4155: $03
	nop                                              ; $4156: $00
	nop                                              ; $4157: $00
	ld   bc, $9e63                                   ; $4158: $01 $63 $9e
	ld   e, b                                        ; $415b: $58
	ld   h, l                                        ; $415c: $65
	sub  c                                           ; $415d: $91
	add  a                                           ; $415e: $87
	sbc  b                                           ; $415f: $98
	ld   a, l                                        ; $4160: $7d
	ld   e, b                                        ; $4161: $58
	ld   h, l                                        ; $4162: $65
	adc  h                                           ; $4163: $8c
	ld   d, d                                        ; $4164: $52
	sub  [hl]                                        ; $4165: $96
	sbc  a                                           ; $4166: $9f
	dec  c                                           ; $4167: $0d
	inc  bc                                          ; $4168: $03
	ld   [hl], b                                     ; $4169: $70
	ld   e, l                                        ; $416a: $5d
	sbc  [hl]                                        ; $416b: $9e
	inc  bc                                          ; $416c: $03
	ld   l, l                                        ; $416d: $6d
	dec  b                                           ; $416e: $05
	add  hl, de                                      ; $416f: $19
	ld   a, h                                        ; $4170: $7c
	ld   h, l                                        ; $4171: $65
	ld   l, l                                        ; $4172: $6d
	ld   e, l                                        ; $4173: $5d
	and  b                                           ; $4174: $a0
	dec  c                                           ; $4175: $0d
	ld   h, l                                        ; $4176: $65
	ld   [hl], h                                     ; $4177: $74
	ld   e, e                                        ; $4178: $5b
	ld   a, b                                        ; $4179: $78
	ld   h, e                                        ; $417a: $63
	ld   d, d                                        ; $417b: $52
	sbc  a                                           ; $417c: $9f
	dec  c                                           ; $417d: $0d
	nop                                              ; $417e: $00
	ld   a, [bc]                                     ; $417f: $0a
	dec  c                                           ; $4180: $0d
	nop                                              ; $4181: $00
	nop                                              ; $4182: $00
	rrca                                             ; $4183: $0f
	nop                                              ; $4184: $00
	ld   bc, $1e09                                   ; $4185: $01 $09 $1e
	nop                                              ; $4188: $00
	nop                                              ; $4189: $00
	rrca                                             ; $418a: $0f
	nop                                              ; $418b: $00
	ld   bc, $0102                                   ; $418c: $01 $02 $01
	ld   e, b                                        ; $418f: $58
	ld   a, l                                        ; $4190: $7d
	sub  [hl]                                        ; $4191: $96
	ld   d, h                                        ; $4192: $54
	sbc  [hl]                                        ; $4193: $9e
	and  e                                           ; $4194: $a3
	and  l                                           ; $4195: $a5
	db   $ec                                         ; $4196: $ec
	cp   d                                           ; $4197: $ba
	sbc  a                                           ; $4198: $9f
	dec  c                                           ; $4199: $0d
	nop                                              ; $419a: $00
	ld   a, [bc]                                     ; $419b: $0a
	inc  e                                           ; $419c: $1c
	inc  b                                           ; $419d: $04
	nop                                              ; $419e: $00
	nop                                              ; $419f: $00
	ld   bc, $9e50                                   ; $41a0: $01 $50 $9e
	ld   l, a                                        ; $41a3: $6f
	ld   d, d                                        ; $41a4: $52
	ld   [bc], a                                     ; $41a5: $02
	inc  de                                          ; $41a6: $13
	ld   l, a                                        ; $41a7: $6f
	sub  c                                           ; $41a8: $91
	and  c                                           ; $41a9: $a1
	dec  c                                           ; $41aa: $0d
	ld   e, b                                        ; $41ab: $58
	ld   a, l                                        ; $41ac: $7d
	sub  [hl]                                        ; $41ad: $96
	ld   d, h                                        ; $41ae: $54
	sbc  a                                           ; $41af: $9f
	dec  c                                           ; $41b0: $0d
	nop                                              ; $41b1: $00
	ld   a, [bc]                                     ; $41b2: $0a
	rrca                                             ; $41b3: $0f
	nop                                              ; $41b4: $00
	ld   bc, $0101                                   ; $41b5: $01 $01 $01
	inc  bc                                          ; $41b8: $03
	inc  b                                           ; $41b9: $04
	ld   c, c                                        ; $41ba: $49
	and  b                                           ; $41bb: $a0
	ld   [bc], a                                     ; $41bc: $02
	jp   nz, Jump_04d_5461                           ; $41bd: $c2 $61 $54

	ld   e, c                                        ; $41c0: $59
	rst  $38                                         ; $41c1: $ff
	rst  $38                                         ; $41c2: $ff
	ld   bc, $0d04                                   ; $41c3: $01 $04 $0d
	nop                                              ; $41c6: $00
	ld   a, [bc]                                     ; $41c7: $0a
	add  hl, de                                      ; $41c8: $19
	dec  b                                           ; $41c9: $05
	inc  bc                                          ; $41ca: $03
	and  e                                           ; $41cb: $a3
	and  l                                           ; $41cc: $a5
	db   $ec                                         ; $41cd: $ec
	cp   d                                           ; $41ce: $ba
	ld   a, c                                        ; $41cf: $79
	ld   [hl], d                                     ; $41d0: $72
	ld   d, d                                        ; $41d1: $52
	ld   [hl], h                                     ; $41d2: $74
	ld   [bc], a                                     ; $41d3: $02
	jp   nz, $005d                                   ; $41d4: $c2 $5d $00

	nop                                              ; $41d7: $00
	inc  b                                           ; $41d8: $04
	ld   [$8f02], sp                                 ; $41d9: $08 $02 $8f
	ld   [bc], a                                     ; $41dc: $02
	sub  b                                           ; $41dd: $90
	ld   [bc], a                                     ; $41de: $02
	sub  c                                           ; $41df: $91
	inc  b                                           ; $41e0: $04
	add  hl, bc                                      ; $41e1: $09
	ld   a, c                                        ; $41e2: $79
	ld   [hl], d                                     ; $41e3: $72
	ld   d, d                                        ; $41e4: $52
	ld   [hl], h                                     ; $41e5: $74
	ld   [bc], a                                     ; $41e6: $02
	jp   nz, $005d                                   ; $41e7: $c2 $5d $00

	ld   bc, $5d63                                   ; $41ea: $01 $63 $5d
	sub  a                                           ; $41ed: $97
	ld   a, c                                        ; $41ee: $79
	ld   [hl], d                                     ; $41ef: $72
	ld   d, d                                        ; $41f0: $52
	ld   [hl], h                                     ; $41f1: $74
	ld   [bc], a                                     ; $41f2: $02
	jp   nz, $005d                                   ; $41f3: $c2 $5d $00

	ld   [bc], a                                     ; $41f6: $02
	rlca                                             ; $41f7: $07
	and  l                                           ; $41f8: $a5
	nop                                              ; $41f9: $00
	ld   [bc], a                                     ; $41fa: $02
	inc  bc                                          ; $41fb: $03
	ld   bc, $2000                                   ; $41fc: $01 $00 $20
	nop                                              ; $41ff: $00
	rlca                                             ; $4200: $07
	db   $fd                                         ; $4201: $fd
	ld   bc, $0302                                   ; $4202: $01 $02 $03
	ld   bc, $2001                                   ; $4205: $01 $01 $20
	nop                                              ; $4208: $00
	rlca                                             ; $4209: $07
	ld   a, l                                        ; $420a: $7d
	ld   [bc], a                                     ; $420b: $02
	ld   [bc], a                                     ; $420c: $02
	inc  bc                                          ; $420d: $03
	ld   bc, $2002                                   ; $420e: $01 $02 $20
	nop                                              ; $4211: $00
	ld   b, $8b                                      ; $4212: $06 $8b
	nop                                              ; $4214: $00
	inc  e                                           ; $4215: $1c
	inc  b                                           ; $4216: $04
	ld   bc, $0101                                   ; $4217: $01 $01 $01
	ld   e, e                                        ; $421a: $5b
	sub  l                                           ; $421b: $95
	ld   d, h                                        ; $421c: $54
	sub  b                                           ; $421d: $90
	ld   d, d                                        ; $421e: $52
	ld   l, a                                        ; $421f: $6f
	ld   a, c                                        ; $4220: $79
	ld   l, a                                        ; $4221: $6f
	dec  c                                           ; $4222: $0d
	ld   e, d                                        ; $4223: $5a
	and  c                                           ; $4224: $a1
	ld   a, [hl]                                     ; $4225: $7e
	sbc  e                                           ; $4226: $9b
	ld   d, h                                        ; $4227: $54
	ld   a, e                                        ; $4228: $7b
	ei                                               ; $4229: $fb
	ld   a, [$000d]                                  ; $422a: $fa $0d $00
	ld   a, [bc]                                     ; $422d: $0a
	nop                                              ; $422e: $00
	rrca                                             ; $422f: $0f
	nop                                              ; $4230: $00
	ld   bc, $a301                                   ; $4231: $01 $01 $a3
	and  l                                           ; $4234: $a5
	db   $ec                                         ; $4235: $ec
	cp   d                                           ; $4236: $ba
	ld   [hl], c                                     ; $4237: $71
	ld   [hl], h                                     ; $4238: $74
	inc  bc                                          ; $4239: $03
	xor  a                                           ; $423a: $af
	ld   h, e                                        ; $423b: $63
	ld   d, d                                        ; $423c: $52
	sub  [hl]                                        ; $423d: $96
	ld   a, e                                        ; $423e: $7b
	sbc  a                                           ; $423f: $9f
	dec  c                                           ; $4240: $0d
	nop                                              ; $4241: $00
	ld   a, [bc]                                     ; $4242: $0a
	inc  e                                           ; $4243: $1c
	inc  b                                           ; $4244: $04
	ld   [bc], a                                     ; $4245: $02
	ld   [bc], a                                     ; $4246: $02
	ld   bc, $526f                                   ; $4247: $01 $6f $52
	ld   h, e                                        ; $424a: $63
	ld   e, l                                        ; $424b: $5d
	ld   a, b                                        ; $424c: $78
	and  c                                           ; $424d: $a1
	ld   e, c                                        ; $424e: $59
	ld   a, b                                        ; $424f: $78
	ld   d, d                                        ; $4250: $52
	sub  b                                           ; $4251: $90
	and  c                                           ; $4252: $a1
	sbc  a                                           ; $4253: $9f
	dec  c                                           ; $4254: $0d
	nop                                              ; $4255: $00
	ld   a, [bc]                                     ; $4256: $0a
	rrca                                             ; $4257: $0f
	nop                                              ; $4258: $00
	ld   bc, $0401                                   ; $4259: $01 $01 $04
	pop  de                                          ; $425c: $d1
	inc  bc                                          ; $425d: $03
	jp   nc, Jump_04d_7471                           ; $425e: $d2 $71 $74

	ld   [hl], a                                     ; $4261: $77
	sbc  d                                           ; $4262: $9a
	ld   e, l                                        ; $4263: $5d
	sub  a                                           ; $4264: $97
	ld   d, d                                        ; $4265: $52
	ld   a, b                                        ; $4266: $78
	ld   a, h                                        ; $4267: $7c
	ld   sp, hl                                      ; $4268: $f9
	dec  c                                           ; $4269: $0d
	nop                                              ; $426a: $00
	ld   a, [bc]                                     ; $426b: $0a
	inc  e                                           ; $426c: $1c
	inc  b                                           ; $426d: $04
	nop                                              ; $426e: $00
	nop                                              ; $426f: $00
	ld   bc, $6d50                                   ; $4270: $01 $50 $6d
	ld   [hl], c                                     ; $4273: $71
	ld   l, l                                        ; $4274: $6d
	sub  a                                           ; $4275: $97
	sbc  [hl]                                        ; $4276: $9e
	ld   e, b                                        ; $4277: $58
	ld   h, l                                        ; $4278: $65
	ld   d, [hl]                                     ; $4279: $56
	ld   [hl], h                                     ; $427a: $74
	ld   d, b                                        ; $427b: $50
	ld   h, b                                        ; $427c: $60
	sbc  c                                           ; $427d: $99
	sbc  a                                           ; $427e: $9f
	dec  c                                           ; $427f: $0d
	nop                                              ; $4280: $00
	ld   a, [bc]                                     ; $4281: $0a
	add  hl, de                                      ; $4282: $19
	dec  b                                           ; $4283: $05
	inc  bc                                          ; $4284: $03
	ld   [de], a                                     ; $4285: $12
	rla                                              ; $4286: $17
	rla                                              ; $4287: $17
	cp   h                                           ; $4288: $bc
	push af                                          ; $4289: $f5
	jp   nz, $0000                                  ; $428a: $c2 $00 $00

	ld   [de], a                                     ; $428d: $12
	ld   de, $bc17                                   ; $428e: $11 $17 $bc
	push af                                          ; $4291: $f5
	jp   nz, Boot                                    ; $4292: $c2 $00 $01

	ld   de, $1711                                   ; $4295: $11 $11 $17
	cp   h                                           ; $4298: $bc
	push af                                          ; $4299: $f5
	jp   nz, $0200                                   ; $429a: $c2 $00 $02

	rlca                                             ; $429d: $07
	ld   sp, $0201                                   ; $429e: $31 $01 $02
	inc  bc                                          ; $42a1: $03
	ld   bc, $2000                                   ; $42a2: $01 $00 $20
	nop                                              ; $42a5: $00
	rlca                                             ; $42a6: $07
	ld   e, [hl]                                     ; $42a7: $5e
	ld   bc, $0302                                   ; $42a8: $01 $02 $03
	ld   bc, $2001                                   ; $42ab: $01 $01 $20
	nop                                              ; $42ae: $00
	rlca                                             ; $42af: $07
	sub  e                                           ; $42b0: $93
	ld   bc, $0302                                   ; $42b1: $01 $02 $03
	ld   bc, $2002                                   ; $42b4: $01 $02 $20
	nop                                              ; $42b7: $00
	ld   b, $bf                                      ; $42b8: $06 $bf
	ld   bc, $000f                                   ; $42ba: $01 $0f $00
	ld   bc, $1201                                   ; $42bd: $01 $01 $12
	rla                                              ; $42c0: $17
	rla                                              ; $42c1: $17
	cp   h                                           ; $42c2: $bc
	push af                                          ; $42c3: $f5
	jp   nz, $0df9                                   ; $42c4: $c2 $f9 $0d

	nop                                              ; $42c7: $00
	ld   a, [bc]                                     ; $42c8: $0a
	inc  e                                           ; $42c9: $1c
	inc  b                                           ; $42ca: $04
	nop                                              ; $42cb: $00
	nop                                              ; $42cc: $00
	ld   bc, $a164                                   ; $42cd: $01 $64 $a1
	ld   a, e                                        ; $42d0: $7b
	and  c                                           ; $42d1: $a1
	ld   [hl], l                                     ; $42d2: $75
	ld   h, l                                        ; $42d3: $65
	ld   l, l                                        ; $42d4: $6d
	ei                                               ; $42d5: $fb
	sbc  a                                           ; $42d6: $9f
	dec  c                                           ; $42d7: $0d
	ld   e, b                                        ; $42d8: $58
	ld   h, l                                        ; $42d9: $65
	ld   d, [hl]                                     ; $42da: $56
	ld   [hl], h                                     ; $42db: $74
	ld   d, b                                        ; $42dc: $50
	ei                                               ; $42dd: $fb
	ld   h, b                                        ; $42de: $60
	ld   a, b                                        ; $42df: $78
	ld   d, d                                        ; $42e0: $52
	sbc  a                                           ; $42e1: $9f
	dec  c                                           ; $42e2: $0d
	nop                                              ; $42e3: $00
	ld   a, [bc]                                     ; $42e4: $0a
	ld   b, $e2                                      ; $42e5: $06 $e2
	ld   bc, $000f                                   ; $42e7: $01 $0f $00
	ld   bc, $1201                                   ; $42ea: $01 $01 $12
	ld   de, $bc17                                   ; $42ed: $11 $17 $bc
	push af                                          ; $42f0: $f5
	jp   nz, $0df9                                   ; $42f1: $c2 $f9 $0d

	nop                                              ; $42f4: $00
	ld   a, [bc]                                     ; $42f5: $0a
	inc  e                                           ; $42f6: $1c
	inc  b                                           ; $42f7: $04
	nop                                              ; $42f8: $00
	nop                                              ; $42f9: $00
	dec  e                                           ; $42fa: $1d
	ld   b, b                                        ; $42fb: $40
	inc  d                                           ; $42fc: $14
	inc  bc                                          ; $42fd: $03
	inc  d                                           ; $42fe: $14
	ld   bc, $2802                                   ; $42ff: $01 $02 $28
	nop                                              ; $4302: $00
	ld   bc, $f5d5                                   ; $4303: $01 $d5 $f5
	sbc  $fb                                         ; $4306: $de $fb
	push af                                          ; $4308: $f5
	ld   a, [$6f0d]                                  ; $4309: $fa $0d $6f
	ld   d, d                                        ; $430c: $52
	ld   [bc], a                                     ; $430d: $02
	inc  de                                          ; $430e: $13
	ld   l, a                                        ; $430f: $6f
	sub  c                                           ; $4310: $91
	and  c                                           ; $4311: $a1
	sbc  [hl]                                        ; $4312: $9e
	ld   h, a                                        ; $4313: $67
	ld   h, d                                        ; $4314: $62
	ld   d, d                                        ; $4315: $52
	ld   a, [$000d]                                  ; $4316: $fa $0d $00
	ld   a, [bc]                                     ; $4319: $0a
	ld   b, $e2                                      ; $431a: $06 $e2
	ld   bc, $000f                                   ; $431c: $01 $0f $00
	ld   bc, $1701                                   ; $431f: $01 $01 $17
	cp   h                                           ; $4322: $bc
	push af                                          ; $4323: $f5
	jp   nz, $0df9                                   ; $4324: $c2 $f9 $0d

	nop                                              ; $4327: $00
	ld   a, [bc]                                     ; $4328: $0a
	inc  e                                           ; $4329: $1c
	inc  b                                           ; $432a: $04
	rlca                                             ; $432b: $07
	rlca                                             ; $432c: $07
	dec  e                                           ; $432d: $1d
	ld   b, b                                        ; $432e: $40
	inc  d                                           ; $432f: $14
	inc  bc                                          ; $4330: $03
	inc  d                                           ; $4331: $14
	ld   bc, $2902                                   ; $4332: $01 $02 $29
	nop                                              ; $4335: $00
	ld   bc, $a16b                                   ; $4336: $01 $6b $a1
	ld   a, b                                        ; $4339: $78
	sbc  l                                           ; $433a: $9d
	ld   e, a                                        ; $433b: $5f
	ld   a, b                                        ; $433c: $78
	ld   d, d                                        ; $433d: $52
	ld   [hl], l                                     ; $433e: $75
	ld   h, l                                        ; $433f: $65
	sub  l                                           ; $4340: $95
	rst  $38                                         ; $4341: $ff
	rst  $38                                         ; $4342: $ff
	dec  c                                           ; $4343: $0d
	nop                                              ; $4344: $00
	ld   a, [bc]                                     ; $4345: $0a
	ld   b, $e2                                      ; $4346: $06 $e2
	ld   bc, $041c                                   ; $4348: $01 $1c $04
	nop                                              ; $434b: $00
	nop                                              ; $434c: $00
	ld   bc, $d7d7                                   ; $434d: $01 $d7 $d7
	ei                                               ; $4350: $fb
	ld   a, [$7d0d]                                  ; $4351: $fa $0d $7d
	ld   d, d                                        ; $4354: $52
	sbc  [hl]                                        ; $4355: $9e
	ld   h, [hl]                                     ; $4356: $66
	ld   e, c                                        ; $4357: $59
	and  c                                           ; $4358: $a1
	ld   e, h                                        ; $4359: $5c
	sbc  d                                           ; $435a: $9a
	ld   l, [hl]                                     ; $435b: $6e
	sub  [hl]                                        ; $435c: $96
	sbc  a                                           ; $435d: $9f
	dec  c                                           ; $435e: $0d
	ld   e, b                                        ; $435f: $58
	ld   h, l                                        ; $4360: $65
	ld   d, [hl]                                     ; $4361: $56
	ld   [hl], h                                     ; $4362: $74
	ld   d, b                                        ; $4363: $50
	ei                                               ; $4364: $fb
	ld   h, b                                        ; $4365: $60
	ld   a, b                                        ; $4366: $78
	ld   d, d                                        ; $4367: $52
	sbc  a                                           ; $4368: $9f
	dec  c                                           ; $4369: $0d
	nop                                              ; $436a: $00
	ld   a, [bc]                                     ; $436b: $0a
	inc  e                                           ; $436c: $1c
	inc  b                                           ; $436d: $04
	nop                                              ; $436e: $00
	nop                                              ; $436f: $00
	ld   bc, $6152                                   ; $4370: $01 $52 $61
	ld   d, h                                        ; $4373: $54
	cp   c                                           ; $4374: $b9
	push hl                                          ; $4375: $e5
	push af                                          ; $4376: $f5
	sbc  $fb                                         ; $4377: $de $fb
	db   $ed                                         ; $4379: $ed
	sbc  a                                           ; $437a: $9f
	dec  c                                           ; $437b: $0d
	nop                                              ; $437c: $00
	ld   a, [bc]                                     ; $437d: $0a
	dec  c                                           ; $437e: $0d
	nop                                              ; $437f: $00
	nop                                              ; $4380: $00
	rrca                                             ; $4381: $0f
	nop                                              ; $4382: $00
	ld   bc, $1e09                                   ; $4383: $01 $09 $1e
	nop                                              ; $4386: $00
	rrca                                             ; $4387: $0f
	nop                                              ; $4388: $00
	ld   bc, $a301                                   ; $4389: $01 $01 $a3
	and  l                                           ; $438c: $a5
	db   $ec                                         ; $438d: $ec
	cp   d                                           ; $438e: $ba
	ld   a, l                                        ; $438f: $7d
	dec  c                                           ; $4390: $0d
	inc  bc                                          ; $4391: $03
	ld   d, c                                        ; $4392: $51
	ld   [bc], a                                     ; $4393: $02
	ld   a, [hl]                                     ; $4394: $7e
	inc  b                                           ; $4395: $04
	ret  z                                           ; $4396: $c8

	ld   [hl], c                                     ; $4397: $71
	ld   [hl], h                                     ; $4398: $74
	inc  b                                           ; $4399: $04
	dec  hl                                          ; $439a: $2b
	ld   [hl], c                                     ; $439b: $71
	ld   [hl], h                                     ; $439c: $74
	sbc  c                                           ; $439d: $99
	ld   sp, hl                                      ; $439e: $f9
	dec  c                                           ; $439f: $0d
	nop                                              ; $43a0: $00
	ld   a, [bc]                                     ; $43a1: $0a
	inc  e                                           ; $43a2: $1c
	inc  b                                           ; $43a3: $04
	nop                                              ; $43a4: $00
	nop                                              ; $43a5: $00
	ld   bc, $a154                                   ; $43a6: $01 $54 $a1
	sbc  [hl]                                        ; $43a9: $9e
	ld   h, l                                        ; $43aa: $65
	ld   [hl], c                                     ; $43ab: $71
	ld   [hl], h                                     ; $43ac: $74
	sbc  c                                           ; $43ad: $99
	sub  [hl]                                        ; $43ae: $96
	ld   a, [$000d]                                  ; $43af: $fa $0d $00
	ld   a, [bc]                                     ; $43b2: $0a
	inc  e                                           ; $43b3: $1c
	inc  b                                           ; $43b4: $04
	ld   bc, $0101                                   ; $43b5: $01 $01 $01
	ld   h, l                                        ; $43b8: $65
	sub  l                                           ; $43b9: $95
	ei                                               ; $43ba: $fb
	ld   h, b                                        ; $43bb: $60
	ei                                               ; $43bc: $fb
	adc  h                                           ; $43bd: $8c
	sbc  c                                           ; $43be: $99
	ld   a, l                                        ; $43bf: $7d
	sbc  [hl]                                        ; $43c0: $9e
	dec  c                                           ; $43c1: $0d
	ld   e, b                                        ; $43c2: $58
	ld   l, e                                        ; $43c3: $6b
	sub  a                                           ; $43c4: $97
	and  b                                           ; $43c5: $a0
	halt                                             ; $43c6: $76
	and  c                                           ; $43c7: $a1
	ld   h, [hl]                                     ; $43c8: $66
	sub  c                                           ; $43c9: $91
	ld   d, h                                        ; $43ca: $54
	dec  c                                           ; $43cb: $0d
	ld   h, a                                        ; $43cc: $67
	ld   h, d                                        ; $43cd: $62
	ld   d, d                                        ; $43ce: $52
	ld   a, h                                        ; $43cf: $7c
	sbc  b                                           ; $43d0: $98
	sub  b                                           ; $43d1: $90
	ld   a, h                                        ; $43d2: $7c
	ld   a, b                                        ; $43d3: $78
	and  c                                           ; $43d4: $a1
	ld   l, [hl]                                     ; $43d5: $6e
	ei                                               ; $43d6: $fb
	sbc  a                                           ; $43d7: $9f
	dec  c                                           ; $43d8: $0d
	nop                                              ; $43d9: $00
	ld   a, [bc]                                     ; $43da: $0a
	rrca                                             ; $43db: $0f
	nop                                              ; $43dc: $00
	ld   bc, $6b01                                   ; $43dd: $01 $01 $6b
	ld   d, h                                        ; $43e0: $54
	ld   a, b                                        ; $43e1: $78
	and  c                                           ; $43e2: $a1
	ld   l, [hl]                                     ; $43e3: $6e
	rst  $38                                         ; $43e4: $ff
	rst  $38                                         ; $43e5: $ff
	dec  c                                           ; $43e6: $0d
	nop                                              ; $43e7: $00
	ld   a, [bc]                                     ; $43e8: $0a
	inc  e                                           ; $43e9: $1c
	inc  b                                           ; $43ea: $04
	ld   bc, $0101                                   ; $43eb: $01 $01 $01
	ld   l, a                                        ; $43ee: $6f
	ld   d, d                                        ; $43ef: $52
	ld   [bc], a                                     ; $43f0: $02
	inc  de                                          ; $43f1: $13
	ld   l, a                                        ; $43f2: $6f
	sub  c                                           ; $43f3: $91
	and  c                                           ; $43f4: $a1
	sub  b                                           ; $43f5: $90
	sbc  [hl]                                        ; $43f6: $9e
	dec  c                                           ; $43f7: $0d
	ld   d, d                                        ; $43f8: $52
	ld   [hl], d                                     ; $43f9: $72
	ld   e, c                                        ; $43fa: $59
	ld   a, h                                        ; $43fb: $7c
	sbc  d                                           ; $43fc: $9a
	sbc  c                                           ; $43fd: $99
	halt                                             ; $43fe: $76
	ld   d, d                                        ; $43ff: $52
	ld   d, d                                        ; $4400: $52
	ld   a, e                                        ; $4401: $7b
	sbc  a                                           ; $4402: $9f
	dec  c                                           ; $4403: $0d
	nop                                              ; $4404: $00
	ld   a, [bc]                                     ; $4405: $0a
	nop                                              ; $4406: $00
	rrca                                             ; $4407: $0f
	nop                                              ; $4408: $00
	ld   bc, $a301                                   ; $4409: $01 $01 $a3
	and  l                                           ; $440c: $a5
	db   $ec                                         ; $440d: $ec
	cp   d                                           ; $440e: $ba
	ld   e, c                                        ; $440f: $59
	sub  a                                           ; $4410: $97
	ld   [bc], a                                     ; $4411: $02
	sub  l                                           ; $4412: $95
	ld   [hl], h                                     ; $4413: $74
	sbc  [hl]                                        ; $4414: $9e
	dec  c                                           ; $4415: $0d
	ld   h, e                                        ; $4416: $63
	ld   e, l                                        ; $4417: $5d
	sub  a                                           ; $4418: $97
	ld   h, e                                        ; $4419: $63
	and  c                                           ; $441a: $a1
	ld   [hl], h                                     ; $441b: $74
	dec  c                                           ; $441c: $0d
	ld   [hl], a                                     ; $441d: $77
	and  c                                           ; $441e: $a1
	ld   a, b                                        ; $441f: $78
	inc  bc                                          ; $4420: $03
	add  d                                           ; $4421: $82
	ld   e, c                                        ; $4422: $59
	ld   a, b                                        ; $4423: $78
	ld   sp, hl                                      ; $4424: $f9
	dec  c                                           ; $4425: $0d
	nop                                              ; $4426: $00
	ld   a, [bc]                                     ; $4427: $0a
	inc  e                                           ; $4428: $1c
	inc  b                                           ; $4429: $04
	dec  b                                           ; $442a: $05
	dec  b                                           ; $442b: $05
	ld   bc, $5d63                                   ; $442c: $01 $63 $5d
	sub  a                                           ; $442f: $97
	ld   a, l                                        ; $4430: $7d
	sbc  [hl]                                        ; $4431: $9e
	ld   d, b                                        ; $4432: $50
	adc  h                                           ; $4433: $8c
	sbc  b                                           ; $4434: $98
	ld   e, b                                        ; $4435: $58
	ld   h, c                                        ; $4436: $61
	sub  a                                           ; $4437: $97
	ld   a, b                                        ; $4438: $78
	ld   d, d                                        ; $4439: $52
	ld   h, l                                        ; $443a: $65
	dec  c                                           ; $443b: $0d
	ld   d, b                                        ; $443c: $50
	ld   l, e                                        ; $443d: $6b
	and  c                                           ; $443e: $a1
	ld   [hl], l                                     ; $443f: $75
	ld   e, l                                        ; $4440: $5d
	sbc  d                                           ; $4441: $9a
	sbc  c                                           ; $4442: $99
	ld   e, c                                        ; $4443: $59
	sub  a                                           ; $4444: $97
	dec  c                                           ; $4445: $0d
	ld   l, [hl]                                     ; $4446: $6e
	ei                                               ; $4447: $fb
	ld   d, d                                        ; $4448: $52
	ld   h, a                                        ; $4449: $67
	ld   e, e                                        ; $444a: $5b
	ld   a, [$000d]                                  ; $444b: $fa $0d $00
	ld   a, [bc]                                     ; $444e: $0a
	inc  e                                           ; $444f: $1c
	inc  b                                           ; $4450: $04
	ld   bc, $0101                                   ; $4451: $01 $01 $01
	ld   [hl], l                                     ; $4454: $75
	sub  b                                           ; $4455: $90
	sbc  [hl]                                        ; $4456: $9e
	ld   l, a                                        ; $4457: $6f
	sub  l                                           ; $4458: $95
	ld   [hl], c                                     ; $4459: $71
	halt                                             ; $445a: $76
	jp   z, Jump_04d_59b9                            ; $445b: $ca $b9 $59

	sub  b                                           ; $445e: $90
	sbc  a                                           ; $445f: $9f
	dec  c                                           ; $4460: $0d
	nop                                              ; $4461: $00
	ld   a, [bc]                                     ; $4462: $0a
	ld   bc, $9166                                   ; $4463: $01 $66 $91
	sbc  [hl]                                        ; $4466: $9e
	ld   d, d                                        ; $4467: $52
	ld   h, c                                        ; $4468: $61
	ld   d, h                                        ; $4469: $54
	cp   c                                           ; $446a: $b9
	push hl                                          ; $446b: $e5
	push af                                          ; $446c: $f5
	sbc  $fb                                         ; $446d: $de $fb
	db   $ed                                         ; $446f: $ed
	sbc  a                                           ; $4470: $9f
	dec  c                                           ; $4471: $0d
	nop                                              ; $4472: $00
	ld   a, [bc]                                     ; $4473: $0a
	dec  c                                           ; $4474: $0d
	nop                                              ; $4475: $00
	nop                                              ; $4476: $00
	rrca                                             ; $4477: $0f
	nop                                              ; $4478: $00
	ld   bc, $1e09                                   ; $4479: $01 $09 $1e
	nop                                              ; $447c: $00
	nop                                              ; $447d: $00
	rrca                                             ; $447e: $0f
	nop                                              ; $447f: $00
	ld   bc, $050d                                   ; $4480: $01 $0d $05
	nop                                              ; $4483: $00
	ld   [bc], a                                     ; $4484: $02
	ld   bc, $7d58                                   ; $4485: $01 $58 $7d
	sub  [hl]                                        ; $4488: $96
	ld   d, h                                        ; $4489: $54
	ld   h, d                                        ; $448a: $62
	ld   h, h                                        ; $448b: $64
	ld   d, d                                        ; $448c: $52
	adc  h                                           ; $448d: $8c
	ld   h, a                                        ; $448e: $67
	sbc  a                                           ; $448f: $9f
	dec  c                                           ; $4490: $0d
	ld   [bc], a                                     ; $4491: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4492: $cf
	dec  b                                           ; $4493: $05
	ld   a, [de]                                     ; $4494: $1a
	ld   h, e                                        ; $4495: $63
	and  c                                           ; $4496: $a1
	sbc  a                                           ; $4497: $9f
	dec  c                                           ; $4498: $0d
	nop                                              ; $4499: $00
	ld   a, [bc]                                     ; $449a: $0a
	inc  e                                           ; $449b: $1c
	dec  b                                           ; $449c: $05
	ld   bc, $0101                                   ; $449d: $01 $01 $01
	ld   [$7d00], sp                                 ; $44a0: $08 $00 $7d
	and  c                                           ; $44a3: $a1
	sbc  a                                           ; $44a4: $9f
	dec  c                                           ; $44a5: $0d
	ld   e, b                                        ; $44a6: $58
	ld   a, l                                        ; $44a7: $7d
	sub  [hl]                                        ; $44a8: $96
	ld   d, h                                        ; $44a9: $54
	ld   h, e                                        ; $44aa: $63
	and  c                                           ; $44ab: $a1
	sbc  a                                           ; $44ac: $9f
	dec  c                                           ; $44ad: $0d
	nop                                              ; $44ae: $00
	ld   a, [bc]                                     ; $44af: $0a
	rrca                                             ; $44b0: $0f
	nop                                              ; $44b1: $00
	ld   bc, $0101                                   ; $44b2: $01 $01 $01
	inc  bc                                          ; $44b5: $03
	inc  b                                           ; $44b6: $04
	ld   c, c                                        ; $44b7: $49
	ld   a, h                                        ; $44b8: $7c
	dec  b                                           ; $44b9: $05
	jr   nz, @-$5e                                   ; $44ba: $20 $a0

	ld   h, l                                        ; $44bc: $65
	sub  [hl]                                        ; $44bd: $96
	ld   d, h                                        ; $44be: $54
	ld   e, c                                        ; $44bf: $59
	ld   a, b                                        ; $44c0: $78
	rst  $38                                         ; $44c1: $ff
	rst  $38                                         ; $44c2: $ff
	ld   bc, $0d04                                   ; $44c3: $01 $04 $0d
	nop                                              ; $44c6: $00
	ld   a, [bc]                                     ; $44c7: $0a
	add  hl, de                                      ; $44c8: $19
	dec  b                                           ; $44c9: $05
	inc  bc                                          ; $44ca: $03
	inc  b                                           ; $44cb: $04
	ld   e, [hl]                                     ; $44cc: $5e
	inc  b                                           ; $44cd: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44ce: $cf
	ld   a, c                                        ; $44cf: $79
	ld   [hl], d                                     ; $44d0: $72
	ld   d, d                                        ; $44d1: $52
	ld   [hl], h                                     ; $44d2: $74
	nop                                              ; $44d3: $00
	nop                                              ; $44d4: $00
	inc  b                                           ; $44d5: $04
	ld   [$8f02], sp                                 ; $44d6: $08 $02 $8f
	ld   [bc], a                                     ; $44d9: $02
	sub  b                                           ; $44da: $90
	ld   [bc], a                                     ; $44db: $02
	sub  c                                           ; $44dc: $91
	inc  b                                           ; $44dd: $04
	add  hl, bc                                      ; $44de: $09
	ld   a, c                                        ; $44df: $79
	ld   [hl], d                                     ; $44e0: $72
	ld   d, d                                        ; $44e1: $52
	ld   [hl], h                                     ; $44e2: $74
	nop                                              ; $44e3: $00
	ld   bc, $8a04                                   ; $44e4: $01 $04 $8a
	inc  bc                                          ; $44e7: $03
	ld   e, [hl]                                     ; $44e8: $5e
	ld   [bc], a                                     ; $44e9: $02
	adc  h                                           ; $44ea: $8c
	ld   a, c                                        ; $44eb: $79
	ld   [hl], d                                     ; $44ec: $72
	ld   d, d                                        ; $44ed: $52
	ld   [hl], h                                     ; $44ee: $74
	ld   [bc], a                                     ; $44ef: $02
	jp   nz, $005d                                   ; $44f0: $c2 $5d $00

	ld   [bc], a                                     ; $44f3: $02
	rlca                                             ; $44f4: $07
	or   l                                           ; $44f5: $b5
	nop                                              ; $44f6: $00
	ld   [bc], a                                     ; $44f7: $02
	inc  bc                                          ; $44f8: $03
	ld   bc, $2000                                   ; $44f9: $01 $00 $20
	nop                                              ; $44fc: $00
	rlca                                             ; $44fd: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44fe: $cf
	ld   [bc], a                                     ; $44ff: $02
	ld   [bc], a                                     ; $4500: $02
	inc  bc                                          ; $4501: $03
	ld   bc, $2001                                   ; $4502: $01 $01 $20
	nop                                              ; $4505: $00
	rlca                                             ; $4506: $07
	ld   b, d                                        ; $4507: $42
	inc  bc                                          ; $4508: $03
	ld   [bc], a                                     ; $4509: $02
	inc  bc                                          ; $450a: $03
	ld   bc, $2002                                   ; $450b: $01 $02 $20
	nop                                              ; $450e: $00
	ld   b, $94                                      ; $450f: $06 $94
	nop                                              ; $4511: $00
	inc  e                                           ; $4512: $1c
	dec  b                                           ; $4513: $05
	ld   bc, $0101                                   ; $4514: $01 $01 $01
	ld   [bc], a                                     ; $4517: $02
	and  l                                           ; $4518: $a5
	inc  b                                           ; $4519: $04
	xor  d                                           ; $451a: $aa
	sub  b                                           ; $451b: $90
	ld   [bc], a                                     ; $451c: $02
	jr   nz, jr_04d_4523                             ; $451d: $20 $04

	xor  d                                           ; $451f: $aa
	sbc  [hl]                                        ; $4520: $9e
	ld   e, d                                        ; $4521: $5a
	and  c                                           ; $4522: $a1

jr_04d_4523:
	ld   a, [hl]                                     ; $4523: $7e
	sbc  b                                           ; $4524: $98
	sub  d                                           ; $4525: $92
	sbc  a                                           ; $4526: $9f
	dec  c                                           ; $4527: $0d
	nop                                              ; $4528: $00
	ld   a, [bc]                                     ; $4529: $0a
	dec  c                                           ; $452a: $0d
	nop                                              ; $452b: $00
	nop                                              ; $452c: $00
	rrca                                             ; $452d: $0f
	nop                                              ; $452e: $00
	ld   bc, $1e09                                   ; $452f: $01 $09 $1e
	nop                                              ; $4532: $00
	rrca                                             ; $4533: $0f
	nop                                              ; $4534: $00
	ld   bc, $0201                                   ; $4535: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4538: $cf
	dec  b                                           ; $4539: $05
	ld   a, [de]                                     ; $453a: $1a
	ld   h, e                                        ; $453b: $63
	and  c                                           ; $453c: $a1
	ld   a, l                                        ; $453d: $7d
	sbc  [hl]                                        ; $453e: $9e
	ld   a, b                                        ; $453f: $78
	ld   l, d                                        ; $4540: $6a
	inc  b                                           ; $4541: $04
	ld   e, [hl]                                     ; $4542: $5e
	inc  b                                           ; $4543: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4544: $cf
	ld   [bc], a                                     ; $4545: $02
	sbc  d                                           ; $4546: $9a
	ld   e, e                                        ; $4547: $5b
	ld   a, c                                        ; $4548: $79
	dec  c                                           ; $4549: $0d
	ld   a, b                                        ; $454a: $78
	ld   [hl], c                                     ; $454b: $71
	ld   l, l                                        ; $454c: $6d
	and  c                                           ; $454d: $a1
	ld   [hl], l                                     ; $454e: $75
	ld   h, a                                        ; $454f: $67
	ld   e, c                                        ; $4550: $59
	ld   sp, hl                                      ; $4551: $f9
	dec  c                                           ; $4552: $0d
	nop                                              ; $4553: $00
	ld   a, [bc]                                     ; $4554: $0a
	inc  e                                           ; $4555: $1c
	dec  b                                           ; $4556: $05
	ld   [bc], a                                     ; $4557: $02
	ld   [bc], a                                     ; $4558: $02
	ld   de, $0100                                   ; $4559: $11 $00 $01
	ld   l, e                                        ; $455c: $6b
	sub  d                                           ; $455d: $92
	ld   a, b                                        ; $455e: $78
	db   $fc                                         ; $455f: $fc
	sbc  [hl]                                        ; $4560: $9e
	inc  b                                           ; $4561: $04
	ld   e, [hl]                                     ; $4562: $5e
	inc  b                                           ; $4563: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4564: $cf
	ld   [hl], c                                     ; $4565: $71
	ld   l, a                                        ; $4566: $6f
	sub  e                                           ; $4567: $93
	ei                                               ; $4568: $fb
	ld   e, c                                        ; $4569: $59
	dec  c                                           ; $456a: $0d
	ld   [bc], a                                     ; $456b: $02
	ld   e, b                                        ; $456c: $58
	ld   [bc], a                                     ; $456d: $02
	ld   d, [hl]                                     ; $456e: $56
	ld   d, d                                        ; $456f: $52
	ld   h, [hl]                                     ; $4570: $66
	sbc  b                                           ; $4571: $98
	ld   e, d                                        ; $4572: $5a
	ld   [bc], a                                     ; $4573: $02
	sbc  d                                           ; $4574: $9a
	ld   e, e                                        ; $4575: $5b
	ld   a, c                                        ; $4576: $79
	ld   a, b                                        ; $4577: $78
	ld   [hl], c                                     ; $4578: $71
	ld   l, l                                        ; $4579: $6d
	dec  c                                           ; $457a: $0d
	ld   e, e                                        ; $457b: $5b
	ld   [hl], c                                     ; $457c: $71
	ld   e, c                                        ; $457d: $59
	ld   e, a                                        ; $457e: $5f
	ld   a, l                                        ; $457f: $7d
	rst  $38                                         ; $4580: $ff
	rst  $38                                         ; $4581: $ff
	dec  c                                           ; $4582: $0d
	nop                                              ; $4583: $00
	ld   a, [bc]                                     ; $4584: $0a
	inc  e                                           ; $4585: $1c
	dec  b                                           ; $4586: $05
	nop                                              ; $4587: $00
	nop                                              ; $4588: $00
	ld   de, $01ff                                   ; $4589: $11 $ff $01
	inc  b                                           ; $458c: $04
	ld   l, $7c                                      ; $458d: $2e $7c
	ld   [bc], a                                     ; $458f: $02
	ld   a, $02                                      ; $4590: $3e $02
	sub  l                                           ; $4592: $95
	ld   a, h                                        ; $4593: $7c
	inc  bc                                          ; $4594: $03
	ld   l, a                                        ; $4595: $6f
	ld   [bc], a                                     ; $4596: $02
	ccf                                              ; $4597: $3f
	and  b                                           ; $4598: $a0
	dec  c                                           ; $4599: $0d
	inc  bc                                          ; $459a: $03
	ld   a, e                                        ; $459b: $7b
	dec  b                                           ; $459c: $05
	ld   de, $6d65                                   ; $459d: $11 $65 $6d
	ld   h, c                                        ; $45a0: $61
	halt                                             ; $45a1: $76
	sbc  [hl]                                        ; $45a2: $9e
	sub  d                                           ; $45a3: $92
	ld   a, b                                        ; $45a4: $78
	rst  $38                                         ; $45a5: $ff
	rst  $38                                         ; $45a6: $ff
	sbc  a                                           ; $45a7: $9f
	dec  c                                           ; $45a8: $0d
	nop                                              ; $45a9: $00
	ld   a, [bc]                                     ; $45aa: $0a
	add  hl, de                                      ; $45ab: $19
	dec  b                                           ; $45ac: $05
	ld   [bc], a                                     ; $45ad: $02
	ld   l, e                                        ; $45ae: $6b
	sbc  d                                           ; $45af: $9a
	ld   a, l                                        ; $45b0: $7d
	ld   h, a                                        ; $45b1: $67
	ld   h, d                                        ; $45b2: $62
	ld   d, d                                        ; $45b3: $52
	nop                                              ; $45b4: $00
	nop                                              ; $45b5: $00
	ld   b, $0d                                      ; $45b6: $06 $0d
	inc  b                                           ; $45b8: $04
	ld   e, [hl]                                     ; $45b9: $5e
	ld   h, l                                        ; $45ba: $65
	ld   l, l                                        ; $45bb: $6d
	ld   sp, hl                                      ; $45bc: $f9
	nop                                              ; $45bd: $00
	ld   bc, $5607                                   ; $45be: $01 $07 $56
	ld   bc, $0302                                   ; $45c1: $01 $02 $03
	ld   bc, $2000                                   ; $45c4: $01 $00 $20
	nop                                              ; $45c7: $00
	rlca                                             ; $45c8: $07
	inc  [hl]                                        ; $45c9: $34
	ld   [bc], a                                     ; $45ca: $02
	ld   [bc], a                                     ; $45cb: $02
	inc  bc                                          ; $45cc: $03
	ld   bc, $2001                                   ; $45cd: $01 $01 $20
	nop                                              ; $45d0: $00
	ld   b, $e5                                      ; $45d1: $06 $e5
	ld   bc, $000f                                   ; $45d3: $01 $0f $00
	ld   bc, $6b01                                   ; $45d6: $01 $01 $6b
	sbc  d                                           ; $45d9: $9a
	ld   a, l                                        ; $45da: $7d
	sbc  [hl]                                        ; $45db: $9e
	ld   h, a                                        ; $45dc: $67
	ld   h, d                                        ; $45dd: $62
	ld   d, d                                        ; $45de: $52
	ld   [hl], l                                     ; $45df: $75
	ld   h, a                                        ; $45e0: $67
	ld   a, e                                        ; $45e1: $7b
	db   $fc                                         ; $45e2: $fc
	sbc  a                                           ; $45e3: $9f
	dec  c                                           ; $45e4: $0d
	ld   h, [hl]                                     ; $45e5: $66
	sub  c                                           ; $45e6: $91
	ld   d, b                                        ; $45e7: $50
	sbc  [hl]                                        ; $45e8: $9e
	inc  bc                                          ; $45e9: $03
	xor  a                                           ; $45ea: $af
	ld   h, e                                        ; $45eb: $63
	ld   d, d                                        ; $45ec: $52
	halt                                             ; $45ed: $76
	ld   e, e                                        ; $45ee: $5b
	ld   e, c                                        ; $45ef: $59
	sub  a                                           ; $45f0: $97
	dec  c                                           ; $45f1: $0d
	inc  b                                           ; $45f2: $04
	inc  de                                          ; $45f3: $13
	inc  bc                                          ; $45f4: $03
	ld   b, $6e                                      ; $45f5: $06 $6e
	ld   [hl], c                                     ; $45f7: $71
	ld   l, l                                        ; $45f8: $6d
	and  c                                           ; $45f9: $a1
	ld   [hl], l                                     ; $45fa: $75
	ld   h, a                                        ; $45fb: $67
	ld   a, e                                        ; $45fc: $7b
	sbc  a                                           ; $45fd: $9f
	dec  c                                           ; $45fe: $0d
	nop                                              ; $45ff: $00
	ld   a, [bc]                                     ; $4600: $0a
	inc  e                                           ; $4601: $1c
	dec  b                                           ; $4602: $05
	inc  b                                           ; $4603: $04
	inc  b                                           ; $4604: $04
	dec  e                                           ; $4605: $1d
	ld   b, b                                        ; $4606: $40
	dec  d                                           ; $4607: $15
	inc  bc                                          ; $4608: $03
	dec  d                                           ; $4609: $15
	ld   bc, $2803                                   ; $460a: $01 $03 $28
	nop                                              ; $460d: $00
	ld   bc, $9252                                   ; $460e: $01 $52 $92
	db   $fc                                         ; $4611: $fc
	sbc  [hl]                                        ; $4612: $9e
	ld   l, e                                        ; $4613: $6b
	and  c                                           ; $4614: $a1
	ld   a, b                                        ; $4615: $78
	cp   d                                           ; $4616: $ba
	ret                                              ; $4617: $c9


	xor  $fb                                         ; $4618: $ee $fb
	ret                                              ; $461a: $c9


	ld   a, c                                        ; $461b: $79
	dec  c                                           ; $461c: $0d
	ld   [bc], a                                     ; $461d: $02
	sbc  l                                           ; $461e: $9d
	sbc  l                                           ; $461f: $9d
	sbc  d                                           ; $4620: $9a
	sbc  c                                           ; $4621: $99
	halt                                             ; $4622: $76
	sbc  [hl]                                        ; $4623: $9e
	rst  ToBoot                                         ; $4624: $c7
	xor  $99                                         ; $4625: $ee $99
	sub  d                                           ; $4627: $92
	and  c                                           ; $4628: $a1
	ld   e, c                                        ; $4629: $59
	sbc  a                                           ; $462a: $9f
	dec  c                                           ; $462b: $0d
	nop                                              ; $462c: $00
	ld   a, [bc]                                     ; $462d: $0a
	inc  e                                           ; $462e: $1c
	dec  b                                           ; $462f: $05
	ld   bc, $0101                                   ; $4630: $01 $01 $01
	ld   [hl], l                                     ; $4633: $75
	sub  b                                           ; $4634: $90
	ld   a, b                                        ; $4635: $78
	sbc  [hl]                                        ; $4636: $9e
	inc  b                                           ; $4637: $04
	dec  de                                          ; $4638: $1b
	ld   e, c                                        ; $4639: $59
	and  c                                           ; $463a: $a1
	ld   e, c                                        ; $463b: $59
	ld   [hl], c                                     ; $463c: $71
	ld   l, l                                        ; $463d: $6d
	inc  bc                                          ; $463e: $03
	ld   l, a                                        ; $463f: $6f
	ld   [bc], a                                     ; $4640: $02
	ccf                                              ; $4641: $3f
	ld   e, d                                        ; $4642: $5a
	dec  c                                           ; $4643: $0d
	inc  b                                           ; $4644: $04
	dec  de                                          ; $4645: $1b
	ld   d, d                                        ; $4646: $52
	ld   l, l                                        ; $4647: $6d
	halt                                             ; $4648: $76
	ld   e, e                                        ; $4649: $5b
	ld   a, l                                        ; $464a: $7d
	sbc  [hl]                                        ; $464b: $9e
	adc  c                                           ; $464c: $89
	and  c                                           ; $464d: $a1
	adc  h                                           ; $464e: $8c
	ld   a, c                                        ; $464f: $79
	dec  c                                           ; $4650: $0d
	adc  a                                           ; $4651: $8f
	ld   [hl], c                                     ; $4652: $71
	ld   l, a                                        ; $4653: $6f
	sub  c                                           ; $4654: $91
	ld   d, h                                        ; $4655: $54
	sbc  d                                           ; $4656: $9a
	ld   h, l                                        ; $4657: $65
	ld   e, c                                        ; $4658: $59
	ld   [hl], c                                     ; $4659: $71
	ld   l, l                                        ; $465a: $6d
	ld   [hl], l                                     ; $465b: $75
	sbc  a                                           ; $465c: $9f
	dec  c                                           ; $465d: $0d
	nop                                              ; $465e: $00
	ld   a, [bc]                                     ; $465f: $0a
	ld   b, $13                                      ; $4660: $06 $13
	ld   [bc], a                                     ; $4662: $02
	inc  e                                           ; $4663: $1c
	dec  b                                           ; $4664: $05
	ld   bc, $0101                                   ; $4665: $01 $01 $01
	inc  b                                           ; $4668: $04
	dec  de                                          ; $4669: $1b
	ld   e, c                                        ; $466a: $59
	and  c                                           ; $466b: $a1
	ld   e, c                                        ; $466c: $59
	ld   [hl], c                                     ; $466d: $71
	ld   l, l                                        ; $466e: $6d
	inc  bc                                          ; $466f: $03
	ld   l, a                                        ; $4670: $6f
	ld   [bc], a                                     ; $4671: $02
	ccf                                              ; $4672: $3f
	ld   e, d                                        ; $4673: $5a
	dec  c                                           ; $4674: $0d
	inc  b                                           ; $4675: $04
	dec  de                                          ; $4676: $1b
	ld   d, d                                        ; $4677: $52
	ld   l, l                                        ; $4678: $6d
	halt                                             ; $4679: $76
	ld   e, e                                        ; $467a: $5b
	ld   a, l                                        ; $467b: $7d
	sbc  [hl]                                        ; $467c: $9e
	adc  c                                           ; $467d: $89
	and  c                                           ; $467e: $a1
	adc  h                                           ; $467f: $8c
	ld   a, c                                        ; $4680: $79
	dec  c                                           ; $4681: $0d
	adc  a                                           ; $4682: $8f
	ld   [hl], c                                     ; $4683: $71
	ld   l, a                                        ; $4684: $6f
	sub  c                                           ; $4685: $91
	ld   d, h                                        ; $4686: $54
	sbc  d                                           ; $4687: $9a
	ld   h, l                                        ; $4688: $65
	ld   e, c                                        ; $4689: $59
	ld   [hl], c                                     ; $468a: $71
	ld   l, l                                        ; $468b: $6d
	ld   [hl], l                                     ; $468c: $75
	sbc  a                                           ; $468d: $9f
	dec  c                                           ; $468e: $0d
	nop                                              ; $468f: $00
	ld   a, [bc]                                     ; $4690: $0a
	ld   bc, $7889                                   ; $4691: $01 $89 $78
	sbc  [hl]                                        ; $4694: $9e
	and  a                                           ; $4695: $a7
	jp   nz, Jump_04d_7f02                           ; $4696: $c2 $02 $7f

	ld   e, l                                        ; $4699: $5d
	ld   e, c                                        ; $469a: $59
	sub  a                                           ; $469b: $97
	sbc  a                                           ; $469c: $9f
	dec  c                                           ; $469d: $0d
	adc  h                                           ; $469e: $8c
	ld   l, l                                        ; $469f: $6d
	sbc  [hl]                                        ; $46a0: $9e
	ld   [bc], a                                     ; $46a1: $02
	xor  d                                           ; $46a2: $aa
	ld   [hl], l                                     ; $46a3: $75
	ld   a, b                                        ; $46a4: $78
	sbc  a                                           ; $46a5: $9f
	dec  c                                           ; $46a6: $0d
	nop                                              ; $46a7: $00
	ld   a, [bc]                                     ; $46a8: $0a
	dec  c                                           ; $46a9: $0d
	nop                                              ; $46aa: $00
	nop                                              ; $46ab: $00
	rrca                                             ; $46ac: $0f
	nop                                              ; $46ad: $00
	ld   bc, $1e09                                   ; $46ae: $01 $09 $1e
	nop                                              ; $46b1: $00
	rrca                                             ; $46b2: $0f
	nop                                              ; $46b3: $00
	ld   bc, $0301                                   ; $46b4: $01 $01 $03
	ld   a, e                                        ; $46b7: $7b
	dec  b                                           ; $46b8: $05
	ld   de, $5276                                   ; $46b9: $11 $76 $52
	ld   d, h                                        ; $46bc: $54
	ld   e, c                                        ; $46bd: $59
	sbc  [hl]                                        ; $46be: $9e
	ld   [hl], a                                     ; $46bf: $77
	ld   d, h                                        ; $46c0: $54
	ld   l, c                                        ; $46c1: $69
	adc  h                                           ; $46c2: $8c
	ld   l, l                                        ; $46c3: $6d
	dec  c                                           ; $46c4: $0d
	ld   b, $0d                                      ; $46c5: $06 $0d
	inc  b                                           ; $46c7: $04
	ld   e, [hl]                                     ; $46c8: $5e
	ld   h, e                                        ; $46c9: $63
	ld   l, c                                        ; $46ca: $69
	ld   l, l                                        ; $46cb: $6d
	and  c                                           ; $46cc: $a1
	ld   h, [hl]                                     ; $46cd: $66
	sub  c                                           ; $46ce: $91
	dec  c                                           ; $46cf: $0d
	ld   a, b                                        ; $46d0: $78
	ld   d, d                                        ; $46d1: $52
	and  c                                           ; $46d2: $a1
	ld   [hl], l                                     ; $46d3: $75
	ld   h, a                                        ; $46d4: $67
	ld   e, c                                        ; $46d5: $59
	ld   sp, hl                                      ; $46d6: $f9
	dec  c                                           ; $46d7: $0d
	nop                                              ; $46d8: $00
	ld   a, [bc]                                     ; $46d9: $0a
	inc  e                                           ; $46da: $1c
	dec  b                                           ; $46db: $05
	rlca                                             ; $46dc: $07
	rlca                                             ; $46dd: $07
	dec  e                                           ; $46de: $1d
	ld   b, b                                        ; $46df: $40
	dec  d                                           ; $46e0: $15
	inc  bc                                          ; $46e1: $03
	dec  d                                           ; $46e2: $15
	ld   bc, $2902                                   ; $46e3: $01 $02 $29
	nop                                              ; $46e6: $00
	ld   bc, $a178                                   ; $46e7: $01 $78 $a1
	ld   [hl], l                                     ; $46ea: $75
	sbc  [hl]                                        ; $46eb: $9e
	inc  bc                                          ; $46ec: $03
	ld   l, a                                        ; $46ed: $6f
	ld   [bc], a                                     ; $46ee: $02
	ccf                                              ; $46ef: $3f
	and  b                                           ; $46f0: $a0
	ld   b, $0d                                      ; $46f1: $06 $0d
	inc  b                                           ; $46f3: $04
	ld   e, [hl]                                     ; $46f4: $5e
	ld   h, e                                        ; $46f5: $63
	ld   l, c                                        ; $46f6: $69
	ld   a, b                                        ; $46f7: $78
	dec  c                                           ; $46f8: $0d
	ld   d, b                                        ; $46f9: $50
	ld   e, c                                        ; $46fa: $59
	and  c                                           ; $46fb: $a1
	ld   a, e                                        ; $46fc: $7b
	and  c                                           ; $46fd: $a1
	sbc  a                                           ; $46fe: $9f
	ld   d, d                                        ; $46ff: $52
	ld   e, l                                        ; $4700: $5d
	sub  a                                           ; $4701: $97
	and  a                                           ; $4702: $a7
	jp   nz, $9075                                   ; $4703: $c2 $75 $90

	sbc  [hl]                                        ; $4706: $9e
	dec  c                                           ; $4707: $0d
	ld   l, e                                        ; $4708: $6b
	sbc  d                                           ; $4709: $9a
	ld   a, l                                        ; $470a: $7d
	ld   a, b                                        ; $470b: $78
	ld   d, d                                        ; $470c: $52
	ld   [hl], l                                     ; $470d: $75
	sbc  a                                           ; $470e: $9f
	dec  c                                           ; $470f: $0d
	nop                                              ; $4710: $00
	ld   a, [bc]                                     ; $4711: $0a
	dec  b                                           ; $4712: $05
	ld   b, b                                        ; $4713: $40
	ld   c, h                                        ; $4714: $4c
	ld   [bc], a                                     ; $4715: $02
	nop                                              ; $4716: $00
	nop                                              ; $4717: $00
	ld   bc, $fb90                                   ; $4718: $01 $90 $fb
	sbc  [hl]                                        ; $471b: $9e
	ld   [$7d00], sp                                 ; $471c: $08 $00 $7d
	and  c                                           ; $471f: $a1
	sbc  [hl]                                        ; $4720: $9e
	dec  c                                           ; $4721: $0d
	nop                                              ; $4722: $00
	dec  b                                           ; $4723: $05
	ld   b, b                                        ; $4724: $40
	ld   d, d                                        ; $4725: $52
	ld   bc, $0002                                   ; $4726: $01 $02 $00
	ld   bc, $526d                                   ; $4729: $01 $6d $52
	ld   e, d                                        ; $472c: $5a
	ld   d, d                                        ; $472d: $52
	ld   a, c                                        ; $472e: $79
	ld   h, l                                        ; $472f: $65
	halt                                             ; $4730: $76
	ld   e, e                                        ; $4731: $5b
	sub  d                                           ; $4732: $92
	db   $fc                                         ; $4733: $fc
	sbc  a                                           ; $4734: $9f
	dec  c                                           ; $4735: $0d
	adc  c                                           ; $4736: $89
	ld   a, b                                        ; $4737: $78
	sbc  [hl]                                        ; $4738: $9e
	and  a                                           ; $4739: $a7
	jp   nz, Jump_04d_7f02                           ; $473a: $c2 $02 $7f

	ld   e, l                                        ; $473d: $5d
	ld   e, c                                        ; $473e: $59
	sub  a                                           ; $473f: $97
	sbc  a                                           ; $4740: $9f
	dec  c                                           ; $4741: $0d
	nop                                              ; $4742: $00
	ld   a, [bc]                                     ; $4743: $0a
	dec  c                                           ; $4744: $0d
	nop                                              ; $4745: $00
	nop                                              ; $4746: $00
	rrca                                             ; $4747: $0f
	nop                                              ; $4748: $00
	ld   bc, $1e09                                   ; $4749: $01 $09 $1e
	nop                                              ; $474c: $00
	rrca                                             ; $474d: $0f
	nop                                              ; $474e: $00
	ld   bc, $0201                                   ; $474f: $01 $01 $02
	sbc  b                                           ; $4752: $98
	sub  d                                           ; $4753: $92
	ld   h, l                                        ; $4754: $65
	ld   e, e                                        ; $4755: $5b
	inc  bc                                          ; $4756: $03
	add  l                                           ; $4757: $85
	inc  b                                           ; $4758: $04
	sub  l                                           ; $4759: $95
	ld   [hl], c                                     ; $475a: $71
	ld   [hl], h                                     ; $475b: $74
	dec  c                                           ; $475c: $0d
	ld   [hl], a                                     ; $475d: $77
	and  c                                           ; $475e: $a1
	ld   a, b                                        ; $475f: $78
	halt                                             ; $4760: $76
	ld   h, c                                        ; $4761: $61
	sbc  e                                           ; $4762: $9b
	ld   a, b                                        ; $4763: $78
	and  c                                           ; $4764: $a1
	ld   [hl], l                                     ; $4765: $75
	ld   h, a                                        ; $4766: $67
	ld   e, c                                        ; $4767: $59
	ld   sp, hl                                      ; $4768: $f9
	dec  c                                           ; $4769: $0d
	nop                                              ; $476a: $00
	ld   a, [bc]                                     ; $476b: $0a
	inc  e                                           ; $476c: $1c
	dec  b                                           ; $476d: $05
	nop                                              ; $476e: $00
	nop                                              ; $476f: $00
	ld   bc, $5f04                                   ; $4770: $01 $04 $5f
	inc  b                                           ; $4773: $04
	pop  bc                                          ; $4774: $c1
	inc  b                                           ; $4775: $04
	ld   h, b                                        ; $4776: $60
	ld   [bc], a                                     ; $4777: $02
	ld   d, a                                        ; $4778: $57
	ld   a, h                                        ; $4779: $7c
	ld   [bc], a                                     ; $477a: $02
	adc  b                                           ; $477b: $88
	inc  b                                           ; $477c: $04
	ld   e, [hl]                                     ; $477d: $5e
	sub  d                                           ; $477e: $92
	sbc  [hl]                                        ; $477f: $9e
	dec  c                                           ; $4780: $0d
	ld   l, c                                        ; $4781: $69
	ld   d, d                                        ; $4782: $52
	add  c                                           ; $4783: $81
	and  b                                           ; $4784: $a0
	sub  d                                           ; $4785: $92
	ld   [hl], c                                     ; $4786: $71
	ld   [hl], h                                     ; $4787: $74
	sbc  c                                           ; $4788: $99
	halt                                             ; $4789: $76
	ld   h, c                                        ; $478a: $61
	sbc  e                                           ; $478b: $9b
	sub  d                                           ; $478c: $92
	sbc  a                                           ; $478d: $9f
	dec  c                                           ; $478e: $0d
	nop                                              ; $478f: $00
	ld   a, [bc]                                     ; $4790: $0a
	ld   bc, $5802                                   ; $4791: $01 $02 $58
	ld   [bc], a                                     ; $4794: $02
	add  [hl]                                        ; $4795: $86
	ld   e, d                                        ; $4796: $5a
	ld   d, b                                        ; $4797: $50
	ld   [hl], c                                     ; $4798: $71
	ld   l, l                                        ; $4799: $6d
	sub  a                                           ; $479a: $97
	dec  c                                           ; $479b: $0d
	inc  b                                           ; $479c: $04
	db   $fd                                         ; $479d: $fd
	sbc  d                                           ; $479e: $9a
	ld   [hl], h                                     ; $479f: $74
	ld   [hl], c                                     ; $47a0: $71
	ld   l, l                                        ; $47a1: $6d
	ld   h, b                                        ; $47a2: $60
	sbc  c                                           ; $47a3: $99
	sbc  l                                           ; $47a4: $9d
	sbc  a                                           ; $47a5: $9f
	dec  c                                           ; $47a6: $0d
	nop                                              ; $47a7: $00
	ld   a, [bc]                                     ; $47a8: $0a
	ld   bc, $7889                                   ; $47a9: $01 $89 $78
	sbc  [hl]                                        ; $47ac: $9e
	adc  h                                           ; $47ad: $8c
	ld   l, l                                        ; $47ae: $6d
	ld   [bc], a                                     ; $47af: $02
	xor  d                                           ; $47b0: $aa
	ld   [hl], l                                     ; $47b1: $75
	ld   a, b                                        ; $47b2: $78
	sbc  a                                           ; $47b3: $9f
	dec  c                                           ; $47b4: $0d
	nop                                              ; $47b5: $00
	ld   a, [bc]                                     ; $47b6: $0a
	dec  c                                           ; $47b7: $0d
	nop                                              ; $47b8: $00
	nop                                              ; $47b9: $00
	rrca                                             ; $47ba: $0f
	nop                                              ; $47bb: $00
	ld   bc, $1e09                                   ; $47bc: $01 $09 $1e
	nop                                              ; $47bf: $00
	rrca                                             ; $47c0: $0f
	nop                                              ; $47c1: $00
	ld   bc, $0201                                   ; $47c2: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47c5: $cf
	dec  b                                           ; $47c6: $05
	ld   a, [de]                                     ; $47c7: $1a
	ld   h, e                                        ; $47c8: $63
	and  c                                           ; $47c9: $a1
	ld   a, h                                        ; $47ca: $7c
	inc  b                                           ; $47cb: $04
	adc  d                                           ; $47cc: $8a
	inc  bc                                          ; $47cd: $03
	ld   e, [hl]                                     ; $47ce: $5e
	ld   [bc], a                                     ; $47cf: $02
	adc  h                                           ; $47d0: $8c
	ld   [hl], c                                     ; $47d1: $71
	ld   [hl], h                                     ; $47d2: $74
	dec  c                                           ; $47d3: $0d
	ld   a, b                                        ; $47d4: $78
	and  c                                           ; $47d5: $a1
	ld   [hl], l                                     ; $47d6: $75
	ld   h, a                                        ; $47d7: $67
	ld   e, c                                        ; $47d8: $59
	ld   sp, hl                                      ; $47d9: $f9
	dec  c                                           ; $47da: $0d
	nop                                              ; $47db: $00
	ld   a, [bc]                                     ; $47dc: $0a
	inc  e                                           ; $47dd: $1c
	dec  b                                           ; $47de: $05
	nop                                              ; $47df: $00
	nop                                              ; $47e0: $00
	ld   bc, wRandomNumStruct                                   ; $47e1: $01 $a7 $c2
	ld   a, h                                        ; $47e4: $7c
	inc  b                                           ; $47e5: $04
	adc  d                                           ; $47e6: $8a
	inc  bc                                          ; $47e7: $03
	ld   e, [hl]                                     ; $47e8: $5e
	ld   [bc], a                                     ; $47e9: $02
	adc  h                                           ; $47ea: $8c
	ld   e, c                                        ; $47eb: $59
	ld   sp, hl                                      ; $47ec: $f9
	dec  c                                           ; $47ed: $0d
	ld   bc, wSCX                                   ; $47ee: $01 $07 $c2
	call nc, $ddef                                   ; $47f1: $d4 $ef $dd
	ld   [bc], a                                     ; $47f4: $02
	ld   c, b                                        ; $47f5: $48
	ld   [bc], a                                     ; $47f6: $02
	sub  c                                           ; $47f7: $91
	ld   bc, $9208                                   ; $47f8: $01 $08 $92
	sbc  a                                           ; $47fb: $9f
	dec  c                                           ; $47fc: $0d
	nop                                              ; $47fd: $00
	ld   a, [bc]                                     ; $47fe: $0a
	add  hl, de                                      ; $47ff: $19
	dec  b                                           ; $4800: $05
	inc  bc                                          ; $4801: $03
	ld   l, e                                        ; $4802: $6b
	ld   a, h                                        ; $4803: $7c
	adc  h                                           ; $4804: $8c
	adc  h                                           ; $4805: $8c
	ld   [hl], l                                     ; $4806: $75
	ld   h, a                                        ; $4807: $67
	ld   a, e                                        ; $4808: $7b
	nop                                              ; $4809: $00
	nop                                              ; $480a: $00
	ld   e, c                                        ; $480b: $59
	ld   e, a                                        ; $480c: $5f
	inc  bc                                          ; $480d: $03
	and  l                                           ; $480e: $a5
	ld   a, l                                        ; $480f: $7d
	ld   sp, hl                                      ; $4810: $f9
	nop                                              ; $4811: $00
	ld   bc, $d4c2                                   ; $4812: $01 $c2 $d4
	db   $dd                                         ; $4815: $dd
	rst  $28                                         ; $4816: $ef
	ld   [bc], a                                     ; $4817: $02
	ld   c, b                                        ; $4818: $48
	ld   [bc], a                                     ; $4819: $02
	sub  c                                           ; $481a: $91
	ld   sp, hl                                      ; $481b: $f9
	nop                                              ; $481c: $00
	ld   [bc], a                                     ; $481d: $02
	rlca                                             ; $481e: $07
	cp   [hl]                                        ; $481f: $be
	inc  bc                                          ; $4820: $03
	ld   [bc], a                                     ; $4821: $02
	inc  bc                                          ; $4822: $03
	ld   bc, $2000                                   ; $4823: $01 $00 $20
	nop                                              ; $4826: $00
	rlca                                             ; $4827: $07
	dec  de                                          ; $4828: $1b
	inc  b                                           ; $4829: $04
	ld   [bc], a                                     ; $482a: $02
	inc  bc                                          ; $482b: $03
	ld   bc, $2001                                   ; $482c: $01 $01 $20
	nop                                              ; $482f: $00
	rlca                                             ; $4830: $07
	ld   e, e                                        ; $4831: $5b
	inc  b                                           ; $4832: $04
	ld   [bc], a                                     ; $4833: $02
	inc  bc                                          ; $4834: $03
	ld   bc, $2002                                   ; $4835: $01 $02 $20
	nop                                              ; $4838: $00
	ld   b, $ad                                      ; $4839: $06 $ad
	inc  b                                           ; $483b: $04
	rrca                                             ; $483c: $0f
	nop                                              ; $483d: $00
	ld   bc, wVisitedTitleScreen                                   ; $483e: $01 $01 $c2
	call nc, $ddef                                   ; $4841: $d4 $ef $dd
	ld   e, d                                        ; $4844: $5a
	ld   [bc], a                                     ; $4845: $02
	ld   c, b                                        ; $4846: $48
	ld   [bc], a                                     ; $4847: $02
	sub  c                                           ; $4848: $91
	and  b                                           ; $4849: $a0
	ld   h, l                                        ; $484a: $65
	ld   e, c                                        ; $484b: $59
	ld   e, a                                        ; $484c: $5f
	sbc  c                                           ; $484d: $99
	dec  c                                           ; $484e: $0d
	sbc  l                                           ; $484f: $9d
	ld   e, a                                        ; $4850: $5f
	ld   [hl], l                                     ; $4851: $75
	ld   h, a                                        ; $4852: $67
	ld   a, e                                        ; $4853: $7b
	rst  $38                                         ; $4854: $ff
	rst  $38                                         ; $4855: $ff
	rst  $38                                         ; $4856: $ff
	rst  $38                                         ; $4857: $ff
	sbc  a                                           ; $4858: $9f
	dec  c                                           ; $4859: $0d
	ld   l, e                                        ; $485a: $6b
	ld   a, h                                        ; $485b: $7c
	adc  h                                           ; $485c: $8c
	and  c                                           ; $485d: $a1
	adc  h                                           ; $485e: $8c
	ld   h, [hl]                                     ; $485f: $66
	sub  c                                           ; $4860: $91
	ld   a, b                                        ; $4861: $78
	ld   d, d                                        ; $4862: $52
	ld   [hl], l                                     ; $4863: $75
	ld   h, a                                        ; $4864: $67
	ld   e, c                                        ; $4865: $59
	sbc  a                                           ; $4866: $9f
	dec  c                                           ; $4867: $0d
	nop                                              ; $4868: $00
	ld   a, [bc]                                     ; $4869: $0a
	inc  e                                           ; $486a: $1c
	dec  b                                           ; $486b: $05
	rlca                                             ; $486c: $07
	rlca                                             ; $486d: $07
	dec  e                                           ; $486e: $1d
	ld   b, b                                        ; $486f: $40
	dec  d                                           ; $4870: $15
	inc  bc                                          ; $4871: $03
	dec  d                                           ; $4872: $15
	ld   bc, $2901                                   ; $4873: $01 $01 $29
	nop                                              ; $4876: $00
	ld   bc, $546b                                   ; $4877: $01 $6b $54
	sub  d                                           ; $487a: $92
	sbc  a                                           ; $487b: $9f
	dec  c                                           ; $487c: $0d
	sbc  l                                           ; $487d: $9d
	ld   e, c                                        ; $487e: $59
	sbc  b                                           ; $487f: $98
	sub  d                                           ; $4880: $92
	ld   h, a                                        ; $4881: $67
	ld   d, d                                        ; $4882: $52
	sub  d                                           ; $4883: $92
	sbc  e                                           ; $4884: $9b
	ld   sp, hl                                      ; $4885: $f9
	dec  c                                           ; $4886: $0d
	ld   a, b                                        ; $4887: $78
	and  c                                           ; $4888: $a1
	ld   e, c                                        ; $4889: $59
	inc  b                                           ; $488a: $04
	sub  b                                           ; $488b: $90
	ld   [bc], a                                     ; $488c: $02
	or   e                                           ; $488d: $b3
	ld   d, b                                        ; $488e: $50
	sbc  c                                           ; $488f: $99
	and  c                                           ; $4890: $a1
	ld   e, c                                        ; $4891: $59
	ld   sp, hl                                      ; $4892: $f9
	dec  c                                           ; $4893: $0d
	nop                                              ; $4894: $00
	ld   a, [bc]                                     ; $4895: $0a
	ld   b, $ad                                      ; $4896: $06 $ad
	inc  b                                           ; $4898: $04
	rrca                                             ; $4899: $0f
	nop                                              ; $489a: $00
	ld   bc, $0201                                   ; $489b: $01 $01 $02
	ld   c, b                                        ; $489e: $48
	ld   [bc], a                                     ; $489f: $02
	sub  c                                           ; $48a0: $91
	ld   h, a                                        ; $48a1: $67
	sbc  c                                           ; $48a2: $99
	halt                                             ; $48a3: $76
	ld   e, e                                        ; $48a4: $5b
	ld   a, h                                        ; $48a5: $7c
	ld   e, c                                        ; $48a6: $59
	ld   e, a                                        ; $48a7: $5f
	inc  bc                                          ; $48a8: $03
	and  l                                           ; $48a9: $a5
	ld   a, l                                        ; $48aa: $7d
	dec  c                                           ; $48ab: $0d
	ld   [hl], a                                     ; $48ac: $77
	and  c                                           ; $48ad: $a1
	ld   a, b                                        ; $48ae: $78
	ld   a, h                                        ; $48af: $7c
	ld   [hl], l                                     ; $48b0: $75
	ld   h, a                                        ; $48b1: $67
	ld   e, c                                        ; $48b2: $59
	ld   sp, hl                                      ; $48b3: $f9
	dec  c                                           ; $48b4: $0d
	nop                                              ; $48b5: $00
	ld   a, [bc]                                     ; $48b6: $0a
	inc  e                                           ; $48b7: $1c
	dec  b                                           ; $48b8: $05
	dec  b                                           ; $48b9: $05
	dec  b                                           ; $48ba: $05
	ld   bc, $0701                                   ; $48bb: $01 $01 $07
	ld   [bc], a                                     ; $48be: $02
	ld   a, a                                        ; $48bf: $7f
	ld   e, a                                        ; $48c0: $5f
	ld   a, [wInGameButtonsPressed]                                  ; $48c1: $fa $10 $c2
	call nc, $ddef                                   ; $48c4: $d4 $ef $dd
	ld   l, l                                        ; $48c7: $6d
	ld   l, a                                        ; $48c8: $6f
	ld   a, [$0801]                                  ; $48c9: $fa $01 $08
	dec  c                                           ; $48cc: $0d
	ld   l, a                                        ; $48cd: $6f
	sub  e                                           ; $48ce: $93
	ei                                               ; $48cf: $fb
	and  c                                           ; $48d0: $a1
	sub  d                                           ; $48d1: $92
	sbc  a                                           ; $48d2: $9f
	dec  c                                           ; $48d3: $0d
	nop                                              ; $48d4: $00
	ld   a, [bc]                                     ; $48d5: $0a
	ld   b, $ad                                      ; $48d6: $06 $ad
	inc  b                                           ; $48d8: $04
	rrca                                             ; $48d9: $0f
	nop                                              ; $48da: $00
	ld   bc, wVisitedTitleScreen                                   ; $48db: $01 $01 $c2
	call nc, $efdd                                   ; $48de: $d4 $dd $ef
	ld   [bc], a                                     ; $48e1: $02
	ld   c, b                                        ; $48e2: $48
	ld   [bc], a                                     ; $48e3: $02
	sub  c                                           ; $48e4: $91
	ld   sp, hl                                      ; $48e5: $f9
	dec  c                                           ; $48e6: $0d
	or   l                                           ; $48e7: $b5
	ldh  [$78], a                                    ; $48e8: $e0 $78
	ld   h, b                                        ; $48ea: $60
	sbc  c                                           ; $48eb: $99
	and  c                                           ; $48ec: $a1
	ld   [hl], l                                     ; $48ed: $75
	ld   h, a                                        ; $48ee: $67
	ld   e, c                                        ; $48ef: $59
	ld   sp, hl                                      ; $48f0: $f9
	dec  c                                           ; $48f1: $0d
	nop                                              ; $48f2: $00
	ld   a, [bc]                                     ; $48f3: $0a
	inc  e                                           ; $48f4: $1c
	dec  b                                           ; $48f5: $05
	inc  bc                                          ; $48f6: $03
	inc  bc                                          ; $48f7: $03
	dec  e                                           ; $48f8: $1d
	ld   b, b                                        ; $48f9: $40
	dec  d                                           ; $48fa: $15
	inc  bc                                          ; $48fb: $03
	dec  d                                           ; $48fc: $15
	ld   bc, $2902                                   ; $48fd: $01 $02 $29
	nop                                              ; $4900: $00
	ld   bc, $efdd                                   ; $4901: $01 $dd $ef
	sub  d                                           ; $4904: $92
	ld   a, b                                        ; $4905: $78
	ld   d, d                                        ; $4906: $52
	ld   [hl], c                                     ; $4907: $71
	ld   [hl], h                                     ; $4908: $74
	sbc  a                                           ; $4909: $9f
	dec  c                                           ; $490a: $0d
	rst  $28                                         ; $490b: $ef
	db   $dd                                         ; $490c: $dd
	sub  d                                           ; $490d: $92
	ld   [bc], a                                     ; $490e: $02
	sbc  l                                           ; $490f: $9d
	ld   d, h                                        ; $4910: $54
	ld   [hl], h                                     ; $4911: $74
	sbc  c                                           ; $4912: $99
	sub  d                                           ; $4913: $92
	and  c                                           ; $4914: $a1
	sbc  a                                           ; $4915: $9f
	dec  c                                           ; $4916: $0d
	inc  bc                                          ; $4917: $03
	ld   c, [hl]                                     ; $4918: $4e
	inc  bc                                          ; $4919: $03
	ld   l, e                                        ; $491a: $6b
	ld   a, c                                        ; $491b: $79
	or   l                                           ; $491c: $b5
	ldh  [$79], a                                    ; $491d: $e0 $79
	ld   l, c                                        ; $491f: $69
	and  c                                           ; $4920: $a1
	halt                                             ; $4921: $76
	ld   d, d                                        ; $4922: $52
	ld   [hl], h                                     ; $4923: $74
	ld   a, [$000d]                                  ; $4924: $fa $0d $00
	ld   a, [bc]                                     ; $4927: $0a
	ld   b, $ad                                      ; $4928: $06 $ad
	inc  b                                           ; $492a: $04
	inc  e                                           ; $492b: $1c
	dec  b                                           ; $492c: $05
	nop                                              ; $492d: $00
	nop                                              ; $492e: $00
	ld   bc, $a178                                   ; $492f: $01 $78 $a1
	sub  d                                           ; $4932: $92
	inc  bc                                          ; $4933: $03
	di                                               ; $4934: $f3
	inc  bc                                          ; $4935: $03
	sbc  c                                           ; $4936: $99
	sbc  a                                           ; $4937: $9f
	dec  c                                           ; $4938: $0d
	inc  b                                           ; $4939: $04
	adc  d                                           ; $493a: $8a
	inc  bc                                          ; $493b: $03
	ld   e, [hl]                                     ; $493c: $5e
	ld   [bc], a                                     ; $493d: $02
	adc  h                                           ; $493e: $8c
	ld   a, h                                        ; $493f: $7c
	ld   h, c                                        ; $4940: $61
	halt                                             ; $4941: $76
	sbc  [hl]                                        ; $4942: $9e
	ld   [bc], a                                     ; $4943: $02
	jp   nz, $785d                                   ; $4944: $c2 $5d $78

	and  c                                           ; $4947: $a1
	ld   [hl], h                                     ; $4948: $74
	sbc  a                                           ; $4949: $9f
	dec  c                                           ; $494a: $0d
	nop                                              ; $494b: $00
	ld   a, [bc]                                     ; $494c: $0a
	rrca                                             ; $494d: $0f
	nop                                              ; $494e: $00
	ld   bc, $0401                                   ; $494f: $01 $01 $04
	ld   l, l                                        ; $4952: $6d
	ld   e, d                                        ; $4953: $5a
	inc  b                                           ; $4954: $04
	adc  d                                           ; $4955: $8a
	inc  bc                                          ; $4956: $03
	ld   e, [hl]                                     ; $4957: $5e
	ld   [bc], a                                     ; $4958: $02
	adc  h                                           ; $4959: $8c
	and  b                                           ; $495a: $a0
	inc  bc                                          ; $495b: $03
	xor  h                                           ; $495c: $ac
	ld   [hl], c                                     ; $495d: $71
	ld   l, l                                        ; $495e: $6d
	halt                                             ; $495f: $76
	ld   e, e                                        ; $4960: $5b
	ld   a, h                                        ; $4961: $7c
	dec  c                                           ; $4962: $0d
	inc  b                                           ; $4963: $04
	rst  ToBoot                                         ; $4964: $c7
	inc  b                                           ; $4965: $04
	ld   [hl], c                                     ; $4966: $71
	ld   e, a                                        ; $4967: $5f
	ld   a, h                                        ; $4968: $7c
	inc  bc                                          ; $4969: $03
	inc  de                                          ; $496a: $13
	ld   [bc], a                                     ; $496b: $02
	ld   h, l                                        ; $496c: $65
	ld   a, c                                        ; $496d: $79
	ld   h, l                                        ; $496e: $65
	sub  [hl]                                        ; $496f: $96
	ld   d, h                                        ; $4970: $54
	halt                                             ; $4971: $76
	dec  c                                           ; $4972: $0d
	dec  b                                           ; $4973: $05
	pop  de                                          ; $4974: $d1
	ld   d, d                                        ; $4975: $52
	adc  h                                           ; $4976: $8c
	ld   h, l                                        ; $4977: $65
	ld   [hl], h                                     ; $4978: $74
	sbc  a                                           ; $4979: $9f
	dec  c                                           ; $497a: $0d
	nop                                              ; $497b: $00
	ld   a, [bc]                                     ; $497c: $0a
	rrca                                             ; $497d: $0f
	dec  b                                           ; $497e: $05
	nop                                              ; $497f: $00
	ld   bc, $546b                                   ; $4980: $01 $6b $54
	ld   e, c                                        ; $4983: $59
	sbc  a                                           ; $4984: $9f
	dec  c                                           ; $4985: $0d
	adc  h                                           ; $4986: $8c
	ld   d, b                                        ; $4987: $50
	sbc  [hl]                                        ; $4988: $9e
	ld   e, d                                        ; $4989: $5a
	and  c                                           ; $498a: $a1
	ld   a, [hl]                                     ; $498b: $7e
	sbc  b                                           ; $498c: $98
	sub  d                                           ; $498d: $92
	sbc  a                                           ; $498e: $9f
	dec  c                                           ; $498f: $0d
	nop                                              ; $4990: $00
	ld   a, [bc]                                     ; $4991: $0a
	dec  c                                           ; $4992: $0d
	nop                                              ; $4993: $00
	nop                                              ; $4994: $00
	rrca                                             ; $4995: $0f
	nop                                              ; $4996: $00
	ld   bc, $1e09                                   ; $4997: $01 $09 $1e
	nop                                              ; $499a: $00
	nop                                              ; $499b: $00
	rrca                                             ; $499c: $0f
	nop                                              ; $499d: $00
	ld   bc, $070e                                   ; $499e: $01 $0e $07
	ld   [bc], a                                     ; $49a1: $02
	ld   bc, $8d67                                   ; $49a2: $01 $67 $8d
	sbc  d                                           ; $49a5: $9a
	ld   h, e                                        ; $49a6: $63
	and  c                                           ; $49a7: $a1
	sbc  a                                           ; $49a8: $9f
	dec  c                                           ; $49a9: $0d
	ld   e, b                                        ; $49aa: $58
	ld   a, l                                        ; $49ab: $7d
	sub  [hl]                                        ; $49ac: $96
	ld   d, h                                        ; $49ad: $54
	ld   h, d                                        ; $49ae: $62
	ld   h, h                                        ; $49af: $64
	ld   d, d                                        ; $49b0: $52
	adc  h                                           ; $49b1: $8c
	ld   h, a                                        ; $49b2: $67
	sbc  a                                           ; $49b3: $9f
	dec  c                                           ; $49b4: $0d
	nop                                              ; $49b5: $00
	ld   a, [bc]                                     ; $49b6: $0a
	dec  c                                           ; $49b7: $0d
	ld   [bc], a                                     ; $49b8: $02
	nop                                              ; $49b9: $00
	ld   bc, $9258                                   ; $49ba: $01 $58 $92
	ld   sp, hl                                      ; $49bd: $f9
	dec  c                                           ; $49be: $0d
	ld   l, e                                        ; $49bf: $6b
	ld   a, h                                        ; $49c0: $7c
	inc  bc                                          ; $49c1: $03
	ld   l, e                                        ; $49c2: $6b
	ld   a, c                                        ; $49c3: $79
	inc  bc                                          ; $49c4: $03
	and  b                                           ; $49c5: $a0
	ld   [hl], c                                     ; $49c6: $71
	ld   [hl], h                                     ; $49c7: $74
	ld   d, d                                        ; $49c8: $52
	sub  a                                           ; $49c9: $97
	ld   [hl], c                                     ; $49ca: $71
	ld   h, l                                        ; $49cb: $65
	sub  c                                           ; $49cc: $91
	sbc  c                                           ; $49cd: $99
	dec  c                                           ; $49ce: $0d
	sub  b                                           ; $49cf: $90
	ld   a, h                                        ; $49d0: $7c
	ld   a, l                                        ; $49d1: $7d
	inc  b                                           ; $49d2: $04
	inc  c                                           ; $49d3: $0c
	inc  b                                           ; $49d4: $04
	adc  a                                           ; $49d5: $8f
	ld   [hl], l                                     ; $49d6: $75
	ld   h, a                                        ; $49d7: $67
	ld   a, e                                        ; $49d8: $7b
	sbc  a                                           ; $49d9: $9f
	dec  c                                           ; $49da: $0d
	nop                                              ; $49db: $00
	ld   a, [bc]                                     ; $49dc: $0a
	rrca                                             ; $49dd: $0f
	ld   [bc], a                                     ; $49de: $02
	nop                                              ; $49df: $00
	ld   bc, $546b                                   ; $49e0: $01 $6b $54
	ld   [hl], l                                     ; $49e3: $75
	ld   h, a                                        ; $49e4: $67
	sbc  l                                           ; $49e5: $9d
	sub  [hl]                                        ; $49e6: $96
	sbc  a                                           ; $49e7: $9f
	dec  c                                           ; $49e8: $0d
	nop                                              ; $49e9: $00
	ld   a, [bc]                                     ; $49ea: $0a
	rrca                                             ; $49eb: $0f
	nop                                              ; $49ec: $00
	ld   bc, $0101                                   ; $49ed: $01 $01 $01
	inc  bc                                          ; $49f0: $03
	ld   a, b                                        ; $49f1: $78
	ld   a, c                                        ; $49f2: $79
	and  b                                           ; $49f3: $a0
	ld   [bc], a                                     ; $49f4: $02
	jp   nz, Jump_04d_5461                           ; $49f5: $c2 $61 $54

	ld   e, c                                        ; $49f8: $59
	ld   a, b                                        ; $49f9: $78
	rst  $38                                         ; $49fa: $ff
	rst  $38                                         ; $49fb: $ff
	ld   bc, $0d04                                   ; $49fc: $01 $04 $0d
	nop                                              ; $49ff: $00
	ld   a, [bc]                                     ; $4a00: $0a
	add  hl, de                                      ; $4a01: $19
	dec  b                                           ; $4a02: $05
	inc  bc                                          ; $4a03: $03
	ld   [bc], a                                     ; $4a04: $02
	rra                                              ; $4a05: $1f
	inc  b                                           ; $4a06: $04
	call nc, Call_04d_7279                           ; $4a07: $d4 $79 $72
	ld   d, d                                        ; $4a0a: $52
	ld   [hl], h                                     ; $4a0b: $74
	ld   [bc], a                                     ; $4a0c: $02
	jp   nz, $005d                                   ; $4a0d: $c2 $5d $00

	nop                                              ; $4a10: $00
	inc  b                                           ; $4a11: $04
	db   $ec                                         ; $4a12: $ec
	ld   a, c                                        ; $4a13: $79
	ld   [hl], d                                     ; $4a14: $72
	ld   d, d                                        ; $4a15: $52
	ld   [hl], h                                     ; $4a16: $74
	ld   [bc], a                                     ; $4a17: $02
	jp   nz, $005d                                   ; $4a18: $c2 $5d $00

	ld   bc, $8e04                                   ; $4a1b: $01 $04 $8e
	inc  b                                           ; $4a1e: $04
	inc  c                                           ; $4a1f: $0c
	ld   a, c                                        ; $4a20: $79
	ld   [hl], d                                     ; $4a21: $72
	ld   d, d                                        ; $4a22: $52
	ld   [hl], h                                     ; $4a23: $74
	ld   [bc], a                                     ; $4a24: $02
	jp   nz, $005d                                   ; $4a25: $c2 $5d $00

	ld   [bc], a                                     ; $4a28: $02
	rlca                                             ; $4a29: $07
	rst  JumpTable                                         ; $4a2a: $df
	nop                                              ; $4a2b: $00
	ld   [bc], a                                     ; $4a2c: $02
	inc  bc                                          ; $4a2d: $03
	ld   bc, $2000                                   ; $4a2e: $01 $00 $20
	nop                                              ; $4a31: $00
	rlca                                             ; $4a32: $07
	jr   @+$05                                       ; $4a33: $18 $03

	ld   [bc], a                                     ; $4a35: $02
	inc  bc                                          ; $4a36: $03
	ld   bc, $2001                                   ; $4a37: $01 $01 $20
	nop                                              ; $4a3a: $00
	rlca                                             ; $4a3b: $07
	inc  b                                           ; $4a3c: $04
	dec  b                                           ; $4a3d: $05
	ld   [bc], a                                     ; $4a3e: $02
	inc  bc                                          ; $4a3f: $03
	ld   bc, $2002                                   ; $4a40: $01 $02 $20
	nop                                              ; $4a43: $00
	ld   b, $ab                                      ; $4a44: $06 $ab
	nop                                              ; $4a46: $00
	rrca                                             ; $4a47: $0f
	ld   [bc], a                                     ; $4a48: $02
	nop                                              ; $4a49: $00
	ld   bc, $7d75                                   ; $4a4a: $01 $75 $7d
	sbc  [hl]                                        ; $4a4d: $9e
	sbc  l                                           ; $4a4e: $9d
	ld   l, l                                        ; $4a4f: $6d
	ld   e, l                                        ; $4a50: $5d
	ld   h, l                                        ; $4a51: $65
	or   [hl]                                        ; $4a52: $b6
	rst  $28                                         ; $4a53: $ef
	push af                                          ; $4a54: $f5
	ld   [hl], l                                     ; $4a55: $75
	dec  c                                           ; $4a56: $0d
	ld   h, [hl]                                     ; $4a57: $66
	ld   [hl], c                                     ; $4a58: $71
	ld   e, l                                        ; $4a59: $5d
	sbc  b                                           ; $4a5a: $98
	inc  b                                           ; $4a5b: $04
	inc  c                                           ; $4a5c: $0c
	inc  b                                           ; $4a5d: $04
	adc  a                                           ; $4a5e: $8f
	and  b                                           ; $4a5f: $a0
	inc  b                                           ; $4a60: $04
	ld   de, $8c8d                                   ; $4a61: $11 $8d $8c
	ld   h, a                                        ; $4a64: $67
	ld   a, h                                        ; $4a65: $7c
	ld   [hl], l                                     ; $4a66: $75
	sbc  a                                           ; $4a67: $9f
	dec  c                                           ; $4a68: $0d
	inc  bc                                          ; $4a69: $03
	add  e                                           ; $4a6a: $83
	dec  b                                           ; $4a6b: $05
	dec  c                                           ; $4a6c: $0d
	rst  $38                                         ; $4a6d: $ff
	rst  $38                                         ; $4a6e: $ff
	dec  c                                           ; $4a6f: $0d
	nop                                              ; $4a70: $00
	ld   a, [bc]                                     ; $4a71: $0a
	dec  c                                           ; $4a72: $0d
	nop                                              ; $4a73: $00
	nop                                              ; $4a74: $00
	rrca                                             ; $4a75: $0f
	nop                                              ; $4a76: $00
	ld   bc, $1e09                                   ; $4a77: $01 $09 $1e
	nop                                              ; $4a7a: $00
	rrca                                             ; $4a7b: $0f
	nop                                              ; $4a7c: $00
	ld   bc, $0201                                   ; $4a7d: $01 $01 $02
	rra                                              ; $4a80: $1f
	inc  b                                           ; $4a81: $04
	call nc, $047d                                   ; $4a82: $d4 $7d $04
	ld   c, e                                        ; $4a85: $4b
	inc  b                                           ; $4a86: $04
	ldh  a, [c]                                      ; $4a87: $f2
	ld   [bc], a                                     ; $4a88: $02
	sub  a                                           ; $4a89: $97
	ld   a, b                                        ; $4a8a: $78
	and  c                                           ; $4a8b: $a1
	ld   [hl], l                                     ; $4a8c: $75
	ld   h, a                                        ; $4a8d: $67
	ld   [hl], c                                     ; $4a8e: $71
	ld   [hl], h                                     ; $4a8f: $74
	ld   a, e                                        ; $4a90: $7b
	sbc  a                                           ; $4a91: $9f
	dec  c                                           ; $4a92: $0d
	nop                                              ; $4a93: $00
	ld   a, [bc]                                     ; $4a94: $0a
	inc  e                                           ; $4a95: $1c
	ld   [bc], a                                     ; $4a96: $02
	dec  b                                           ; $4a97: $05
	dec  b                                           ; $4a98: $05
	ld   bc, $546b                                   ; $4a99: $01 $6b $54
	ld   a, b                                        ; $4a9c: $78
	and  c                                           ; $4a9d: $a1
	ld   [hl], l                                     ; $4a9e: $75
	ld   h, a                                        ; $4a9f: $67
	ld   a, h                                        ; $4aa0: $7c
	sub  [hl]                                        ; $4aa1: $96
	sbc  a                                           ; $4aa2: $9f
	ld   [hl], l                                     ; $4aa3: $75
	sub  b                                           ; $4aa4: $90
	rst  $38                                         ; $4aa5: $ff
	rst  $38                                         ; $4aa6: $ff
	dec  c                                           ; $4aa7: $0d
	sbc  l                                           ; $4aa8: $9d
	ld   l, l                                        ; $4aa9: $6d
	ld   e, l                                        ; $4aaa: $5d
	ld   h, l                                        ; $4aab: $65
	ld   a, l                                        ; $4aac: $7d
	sub  b                                           ; $4aad: $90
	ld   [hl], c                                     ; $4aae: $71
	halt                                             ; $4aaf: $76
	sbc  [hl]                                        ; $4ab0: $9e
	ld   e, c                                        ; $4ab1: $59
	sbc  d                                           ; $4ab2: $9a
	ld   d, d                                        ; $4ab3: $52
	ld   a, b                                        ; $4ab4: $78
	dec  c                                           ; $4ab5: $0d
	inc  b                                           ; $4ab6: $04
	adc  [hl]                                        ; $4ab7: $8e
	inc  b                                           ; $4ab8: $04
	inc  c                                           ; $4ab9: $0c
	ld   a, h                                        ; $4aba: $7c
	inc  b                                           ; $4abb: $04
	ld   a, b                                        ; $4abc: $78
	ld   e, d                                        ; $4abd: $5a
	sub  [hl]                                        ; $4abe: $96
	ld   e, c                                        ; $4abf: $59
	ld   [hl], c                                     ; $4ac0: $71
	ld   l, l                                        ; $4ac1: $6d
	ld   [hl], l                                     ; $4ac2: $75
	ld   h, a                                        ; $4ac3: $67
	sbc  l                                           ; $4ac4: $9d
	sbc  a                                           ; $4ac5: $9f
	dec  c                                           ; $4ac6: $0d
	nop                                              ; $4ac7: $00
	ld   a, [bc]                                     ; $4ac8: $0a
	add  hl, de                                      ; $4ac9: $19
	dec  b                                           ; $4aca: $05
	inc  bc                                          ; $4acb: $03
	inc  b                                           ; $4acc: $04
	dec  e                                           ; $4acd: $1d
	ld   [bc], a                                     ; $4ace: $02
	ld   b, $67                                      ; $4acf: $06 $67
	sbc  c                                           ; $4ad1: $99
	nop                                              ; $4ad2: $00
	nop                                              ; $4ad3: $00
	inc  b                                           ; $4ad4: $04
	ld   c, e                                        ; $4ad5: $4b
	inc  b                                           ; $4ad6: $04
	ldh  a, [c]                                      ; $4ad7: $f2
	ld   [bc], a                                     ; $4ad8: $02
	sub  a                                           ; $4ad9: $97
	sub  b                                           ; $4ada: $90
	inc  b                                           ; $4adb: $04
	ret  c                                           ; $4adc: $d8

	inc  b                                           ; $4add: $04
	xor  h                                           ; $4ade: $ac
	ld   d, d                                        ; $4adf: $52
	halt                                             ; $4ae0: $76
	dec  b                                           ; $4ae1: $05
	pop  de                                          ; $4ae2: $d1
	ld   d, h                                        ; $4ae3: $54
	nop                                              ; $4ae4: $00
	ld   bc, $6e58                                   ; $4ae5: $01 $58 $6e
	ld   [hl], h                                     ; $4ae8: $74
	sbc  c                                           ; $4ae9: $99
	nop                                              ; $4aea: $00
	ld   [bc], a                                     ; $4aeb: $02
	rlca                                             ; $4aec: $07
	ld   l, [hl]                                     ; $4aed: $6e
	ld   bc, $0302                                   ; $4aee: $01 $02 $03
	ld   bc, $2000                                   ; $4af1: $01 $00 $20
	nop                                              ; $4af4: $00
	rlca                                             ; $4af5: $07
	pop  bc                                          ; $4af6: $c1
	ld   bc, $0302                                   ; $4af7: $01 $02 $03
	ld   bc, $2001                                   ; $4afa: $01 $01 $20
	nop                                              ; $4afd: $00
	rlca                                             ; $4afe: $07
	ld   a, $02                                      ; $4aff: $3e $02
	ld   [bc], a                                     ; $4b01: $02
	inc  bc                                          ; $4b02: $03
	ld   bc, $2002                                   ; $4b03: $01 $02 $20
	nop                                              ; $4b06: $00
	ld   b, $dd                                      ; $4b07: $06 $dd
	ld   [bc], a                                     ; $4b09: $02
	rrca                                             ; $4b0a: $0f
	nop                                              ; $4b0b: $00
	ld   bc, $6b01                                   ; $4b0c: $01 $01 $6b
	ld   d, h                                        ; $4b0f: $54
	ld   [hl], l                                     ; $4b10: $75
	ld   h, a                                        ; $4b11: $67
	sub  [hl]                                        ; $4b12: $96
	ld   a, e                                        ; $4b13: $7b
	sbc  a                                           ; $4b14: $9f
	dec  c                                           ; $4b15: $0d
	ld   h, a                                        ; $4b16: $67
	adc  l                                           ; $4b17: $8d
	sbc  d                                           ; $4b18: $9a
	ld   h, e                                        ; $4b19: $63
	and  c                                           ; $4b1a: $a1
	ld   a, c                                        ; $4b1b: $79
	ld   a, l                                        ; $4b1c: $7d
	sbc  [hl]                                        ; $4b1d: $9e
	ld   a, l                                        ; $4b1e: $7d
	ld   a, b                                        ; $4b1f: $78
	sub  d                                           ; $4b20: $92
	ld   e, c                                        ; $4b21: $59
	ld   a, b                                        ; $4b22: $78
	dec  c                                           ; $4b23: $0d
	inc  b                                           ; $4b24: $04
	adc  [hl]                                        ; $4b25: $8e
	inc  b                                           ; $4b26: $04
	inc  c                                           ; $4b27: $0c
	ld   e, d                                        ; $4b28: $5a
	ld   e, b                                        ; $4b29: $58
	inc  b                                           ; $4b2a: $04
	ld   c, l                                        ; $4b2b: $4d
	ld   [bc], a                                     ; $4b2c: $02
	ld   a, e                                        ; $4b2d: $7b
	ld   d, d                                        ; $4b2e: $52
	ld   [hl], l                                     ; $4b2f: $75
	ld   h, a                                        ; $4b30: $67
	sub  [hl]                                        ; $4b31: $96
	ld   a, e                                        ; $4b32: $7b
	sbc  a                                           ; $4b33: $9f
	dec  c                                           ; $4b34: $0d
	nop                                              ; $4b35: $00
	ld   a, [bc]                                     ; $4b36: $0a
	inc  e                                           ; $4b37: $1c
	ld   [bc], a                                     ; $4b38: $02
	ld   bc, $1d01                                   ; $4b39: $01 $01 $1d
	ld   b, b                                        ; $4b3c: $40
	ld   [de], a                                     ; $4b3d: $12
	inc  bc                                          ; $4b3e: $03
	ld   [de], a                                     ; $4b3f: $12
	ld   bc, $2802                                   ; $4b40: $01 $02 $28
	nop                                              ; $4b43: $00
	ld   bc, $5d96                                   ; $4b44: $01 $96 $5d
	ld   e, b                                        ; $4b47: $58
	sbc  l                                           ; $4b48: $9d
	ld   e, c                                        ; $4b49: $59
	sbc  b                                           ; $4b4a: $98
	ld   a, e                                        ; $4b4b: $7b
	sbc  a                                           ; $4b4c: $9f
	dec  c                                           ; $4b4d: $0d
	ld   l, e                                        ; $4b4e: $6b
	ld   a, h                                        ; $4b4f: $7c
	inc  bc                                          ; $4b50: $03
	pop  hl                                          ; $4b51: $e1
	sbc  b                                           ; $4b52: $98
	ld   [hl], l                                     ; $4b53: $75
	ld   h, a                                        ; $4b54: $67
	sbc  l                                           ; $4b55: $9d
	sbc  a                                           ; $4b56: $9f
	dec  c                                           ; $4b57: $0d
	nop                                              ; $4b58: $00
	ld   a, [bc]                                     ; $4b59: $0a
	ld   b, $a2                                      ; $4b5a: $06 $a2
	ld   [bc], a                                     ; $4b5c: $02
	rrca                                             ; $4b5d: $0f
	nop                                              ; $4b5e: $00
	ld   bc, $0401                                   ; $4b5f: $01 $01 $04
	ld   c, e                                        ; $4b62: $4b
	inc  b                                           ; $4b63: $04
	ldh  a, [c]                                      ; $4b64: $f2
	ld   [bc], a                                     ; $4b65: $02
	sub  a                                           ; $4b66: $97
	sub  b                                           ; $4b67: $90
	inc  b                                           ; $4b68: $04
	ret  c                                           ; $4b69: $d8

	inc  b                                           ; $4b6a: $04
	xor  h                                           ; $4b6b: $ac
	ld   d, d                                        ; $4b6c: $52
	halt                                             ; $4b6d: $76
	dec  c                                           ; $4b6e: $0d
	dec  b                                           ; $4b6f: $05
	pop  de                                          ; $4b70: $d1
	ld   d, d                                        ; $4b71: $52
	adc  h                                           ; $4b72: $8c
	ld   h, a                                        ; $4b73: $67
	sub  [hl]                                        ; $4b74: $96
	sbc  a                                           ; $4b75: $9f
	dec  c                                           ; $4b76: $0d
	nop                                              ; $4b77: $00
	ld   a, [bc]                                     ; $4b78: $0a
	inc  e                                           ; $4b79: $1c
	ld   [bc], a                                     ; $4b7a: $02
	rlca                                             ; $4b7b: $07
	rlca                                             ; $4b7c: $07
	dec  e                                           ; $4b7d: $1d
	ld   b, b                                        ; $4b7e: $40
	ld   [de], a                                     ; $4b7f: $12
	inc  bc                                          ; $4b80: $03
	ld   [de], a                                     ; $4b81: $12
	ld   bc, $2902                                   ; $4b82: $01 $02 $29
	nop                                              ; $4b85: $00
	ld   bc, $4b04                                   ; $4b86: $01 $04 $4b
	inc  b                                           ; $4b89: $04
	ldh  a, [c]                                      ; $4b8a: $f2
	ld   [bc], a                                     ; $4b8b: $02
	sub  a                                           ; $4b8c: $97
	ld   [hl], l                                     ; $4b8d: $75
	ld   h, a                                        ; $4b8e: $67
	sbc  l                                           ; $4b8f: $9d
	sub  [hl]                                        ; $4b90: $96
	sbc  a                                           ; $4b91: $9f
	dec  c                                           ; $4b92: $0d
	inc  bc                                          ; $4b93: $03
	ld   b, h                                        ; $4b94: $44
	inc  b                                           ; $4b95: $04
	db   $ec                                         ; $4b96: $ec
	ld   a, h                                        ; $4b97: $7c
	ld   e, b                                        ; $4b98: $58
	or   [hl]                                        ; $4b99: $b6
	db   $ed                                         ; $4b9a: $ed
	ld   h, e                                        ; $4b9b: $63
	and  c                                           ; $4b9c: $a1
	ld   a, l                                        ; $4b9d: $7d
	sbc  [hl]                                        ; $4b9e: $9e
	dec  c                                           ; $4b9f: $0d
	ld   d, b                                        ; $4ba0: $50
	ld   a, h                                        ; $4ba1: $7c
	xor  h                                           ; $4ba2: $ac
	push af                                          ; $4ba3: $f5
	bit  4, e                                        ; $4ba4: $cb $63
	and  c                                           ; $4ba6: $a1
	ld   [hl], l                                     ; $4ba7: $75
	ld   h, a                                        ; $4ba8: $67
	sbc  l                                           ; $4ba9: $9d
	sub  [hl]                                        ; $4baa: $96
	sbc  a                                           ; $4bab: $9f
	dec  c                                           ; $4bac: $0d
	nop                                              ; $4bad: $00
	ld   a, [bc]                                     ; $4bae: $0a
	ld   bc, $a16b                                   ; $4baf: $01 $6b $a1
	ld   a, b                                        ; $4bb2: $78
	ld   a, h                                        ; $4bb3: $7c
	ld   [hl], l                                     ; $4bb4: $75
	adc  h                                           ; $4bb5: $8c
	halt                                             ; $4bb6: $76
	sub  b                                           ; $4bb7: $90
	ld   a, b                                        ; $4bb8: $78
	inc  b                                           ; $4bb9: $04
	adc  [hl]                                        ; $4bba: $8e
	inc  b                                           ; $4bbb: $04
	inc  c                                           ; $4bbc: $0c
	ld   a, c                                        ; $4bbd: $79
	dec  c                                           ; $4bbe: $0d
	ld   a, b                                        ; $4bbf: $78
	sbc  c                                           ; $4bc0: $99
	halt                                             ; $4bc1: $76
	ld   e, b                                        ; $4bc2: $58
	dec  b                                           ; $4bc3: $05
	pop  de                                          ; $4bc4: $d1
	ld   d, d                                        ; $4bc5: $52
	ld   sp, hl                                      ; $4bc6: $f9
	dec  c                                           ; $4bc7: $0d
	ld   h, c                                        ; $4bc8: $61
	sbc  d                                           ; $4bc9: $9a
	ld   l, [hl]                                     ; $4bca: $6e
	ld   e, c                                        ; $4bcb: $59
	sub  a                                           ; $4bcc: $97
	inc  bc                                          ; $4bcd: $03
	and  [hl]                                        ; $4bce: $a6
	inc  bc                                          ; $4bcf: $03
	add  d                                           ; $4bd0: $82
	ld   a, l                                        ; $4bd1: $7d
	rst  $38                                         ; $4bd2: $ff
	rst  $38                                         ; $4bd3: $ff
	dec  c                                           ; $4bd4: $0d
	nop                                              ; $4bd5: $00
	ld   a, [bc]                                     ; $4bd6: $0a
	ld   b, $a2                                      ; $4bd7: $06 $a2
	ld   [bc], a                                     ; $4bd9: $02
	rrca                                             ; $4bda: $0f
	nop                                              ; $4bdb: $00
	ld   bc, $7701                                   ; $4bdc: $01 $01 $77
	and  c                                           ; $4bdf: $a1
	ld   a, b                                        ; $4be0: $78
	ld   [bc], a                                     ; $4be1: $02
	rra                                              ; $4be2: $1f
	inc  b                                           ; $4be3: $04
	call nc, $9075                                   ; $4be4: $d4 $75 $90
	sbc  [hl]                                        ; $4be7: $9e
	ld   h, a                                        ; $4be8: $67
	adc  l                                           ; $4be9: $8d
	sbc  d                                           ; $4bea: $9a
	ld   h, e                                        ; $4beb: $63
	and  c                                           ; $4bec: $a1
	ld   e, d                                        ; $4bed: $5a
	dec  c                                           ; $4bee: $0d
	inc  bc                                          ; $4bef: $03
	add  b                                           ; $4bf0: $80
	ld   [hl], h                                     ; $4bf1: $74
	ld   d, d                                        ; $4bf2: $52
	sbc  d                                           ; $4bf3: $9a
	ld   a, [hl]                                     ; $4bf4: $7e
	sbc  [hl]                                        ; $4bf5: $9e
	ld   a, l                                        ; $4bf6: $7d
	ld   a, b                                        ; $4bf7: $78
	sub  d                                           ; $4bf8: $92
	ld   e, c                                        ; $4bf9: $59
	ld   a, c                                        ; $4bfa: $79
	ld   a, b                                        ; $4bfb: $78
	sbc  c                                           ; $4bfc: $99
	dec  c                                           ; $4bfd: $0d
	ld   h, [hl]                                     ; $4bfe: $66
	sub  c                                           ; $4bff: $91
	ld   a, b                                        ; $4c00: $78
	ld   d, d                                        ; $4c01: $52
	ld   [hl], l                                     ; $4c02: $75
	ld   h, a                                        ; $4c03: $67
	ld   e, c                                        ; $4c04: $59
	sbc  a                                           ; $4c05: $9f
	dec  c                                           ; $4c06: $0d
	nop                                              ; $4c07: $00
	ld   a, [bc]                                     ; $4c08: $0a
	inc  e                                           ; $4c09: $1c
	ld   [bc], a                                     ; $4c0a: $02
	ld   bc, $1d01                                   ; $4c0b: $01 $01 $1d
	ld   b, b                                        ; $4c0e: $40
	ld   [de], a                                     ; $4c0f: $12
	inc  bc                                          ; $4c10: $03
	ld   [de], a                                     ; $4c11: $12
	ld   bc, $2803                                   ; $4c12: $01 $03 $28
	nop                                              ; $4c15: $00
	ld   bc, $6f90                                   ; $4c16: $01 $90 $6f
	sbc  e                                           ; $4c19: $9b
	and  c                                           ; $4c1a: $a1
	ld   [hl], l                                     ; $4c1b: $75
	ld   h, a                                        ; $4c1c: $67
	sbc  l                                           ; $4c1d: $9d
	sbc  a                                           ; $4c1e: $9f
	dec  c                                           ; $4c1f: $0d
	ld   [$6300], sp                                 ; $4c20: $08 $00 $63
	and  c                                           ; $4c23: $a1
	sbc  [hl]                                        ; $4c24: $9e
	ld   a, b                                        ; $4c25: $78
	ld   e, c                                        ; $4c26: $59
	ld   a, b                                        ; $4c27: $78
	ld   e, c                                        ; $4c28: $59
	dec  c                                           ; $4c29: $0d
	inc  b                                           ; $4c2a: $04
	sbc  [hl]                                        ; $4c2b: $9e
	ld   e, c                                        ; $4c2c: $59
	ld   [hl], c                                     ; $4c2d: $71
	ld   [hl], h                                     ; $4c2e: $74
	sub  a                                           ; $4c2f: $97
	ld   [hl], c                                     ; $4c30: $71
	ld   h, l                                        ; $4c31: $65
	sub  c                                           ; $4c32: $91
	sbc  c                                           ; $4c33: $99
	sub  [hl]                                        ; $4c34: $96
	ld   d, h                                        ; $4c35: $54
	ld   a, e                                        ; $4c36: $7b
	sbc  a                                           ; $4c37: $9f
	dec  c                                           ; $4c38: $0d
	nop                                              ; $4c39: $00
	ld   a, [bc]                                     ; $4c3a: $0a
	ld   b, $a2                                      ; $4c3b: $06 $a2
	ld   [bc], a                                     ; $4c3d: $02
	inc  e                                           ; $4c3e: $1c
	ld   [bc], a                                     ; $4c3f: $02
	nop                                              ; $4c40: $00
	nop                                              ; $4c41: $00
	ld   bc, $7d75                                   ; $4c42: $01 $75 $7d
	sbc  [hl]                                        ; $4c45: $9e
	sbc  l                                           ; $4c46: $9d
	ld   l, l                                        ; $4c47: $6d
	ld   e, l                                        ; $4c48: $5d
	ld   h, l                                        ; $4c49: $65
	or   [hl]                                        ; $4c4a: $b6
	rst  $28                                         ; $4c4b: $ef
	push af                                          ; $4c4c: $f5
	ld   [hl], l                                     ; $4c4d: $75
	dec  c                                           ; $4c4e: $0d
	ld   h, [hl]                                     ; $4c4f: $66
	ld   [hl], c                                     ; $4c50: $71
	ld   e, l                                        ; $4c51: $5d
	sbc  b                                           ; $4c52: $98
	inc  b                                           ; $4c53: $04
	inc  c                                           ; $4c54: $0c
	inc  b                                           ; $4c55: $04
	adc  a                                           ; $4c56: $8f
	and  b                                           ; $4c57: $a0
	inc  b                                           ; $4c58: $04
	ld   de, $8c8d                                   ; $4c59: $11 $8d $8c
	ld   h, a                                        ; $4c5c: $67
	ld   a, h                                        ; $4c5d: $7c
	ld   [hl], l                                     ; $4c5e: $75
	sbc  a                                           ; $4c5f: $9f
	dec  c                                           ; $4c60: $0d
	ld   h, c                                        ; $4c61: $61
	sbc  d                                           ; $4c62: $9a
	ld   [hl], l                                     ; $4c63: $75
	inc  bc                                          ; $4c64: $03
	add  e                                           ; $4c65: $83
	dec  b                                           ; $4c66: $05
	dec  c                                           ; $4c67: $0d
	ld   h, l                                        ; $4c68: $65
	adc  h                                           ; $4c69: $8c
	ld   h, a                                        ; $4c6a: $67
	sbc  l                                           ; $4c6b: $9d
	sbc  a                                           ; $4c6c: $9f
	dec  c                                           ; $4c6d: $0d
	nop                                              ; $4c6e: $00
	ld   a, [bc]                                     ; $4c6f: $0a
	dec  c                                           ; $4c70: $0d
	nop                                              ; $4c71: $00
	nop                                              ; $4c72: $00
	rrca                                             ; $4c73: $0f
	nop                                              ; $4c74: $00
	ld   bc, $1e09                                   ; $4c75: $01 $09 $1e
	nop                                              ; $4c78: $00
	inc  e                                           ; $4c79: $1c
	ld   [bc], a                                     ; $4c7a: $02
	nop                                              ; $4c7b: $00
	nop                                              ; $4c7c: $00
	ld   bc, $7d75                                   ; $4c7d: $01 $75 $7d
	sbc  [hl]                                        ; $4c80: $9e
	sbc  l                                           ; $4c81: $9d
	ld   l, l                                        ; $4c82: $6d
	ld   e, l                                        ; $4c83: $5d
	ld   h, l                                        ; $4c84: $65
	or   [hl]                                        ; $4c85: $b6
	rst  $28                                         ; $4c86: $ef
	push af                                          ; $4c87: $f5
	ld   [hl], l                                     ; $4c88: $75
	dec  c                                           ; $4c89: $0d
	ld   h, [hl]                                     ; $4c8a: $66
	ld   [hl], c                                     ; $4c8b: $71
	ld   e, l                                        ; $4c8c: $5d
	sbc  b                                           ; $4c8d: $98
	inc  b                                           ; $4c8e: $04
	inc  c                                           ; $4c8f: $0c
	inc  b                                           ; $4c90: $04
	adc  a                                           ; $4c91: $8f
	and  b                                           ; $4c92: $a0
	inc  b                                           ; $4c93: $04
	ld   de, $8c8d                                   ; $4c94: $11 $8d $8c
	ld   h, a                                        ; $4c97: $67
	ld   a, h                                        ; $4c98: $7c
	ld   [hl], l                                     ; $4c99: $75
	sbc  a                                           ; $4c9a: $9f
	dec  c                                           ; $4c9b: $0d
	ld   h, c                                        ; $4c9c: $61
	sbc  d                                           ; $4c9d: $9a
	ld   [hl], l                                     ; $4c9e: $75
	inc  bc                                          ; $4c9f: $03
	add  e                                           ; $4ca0: $83
	dec  b                                           ; $4ca1: $05
	dec  c                                           ; $4ca2: $0d
	ld   h, l                                        ; $4ca3: $65
	adc  h                                           ; $4ca4: $8c
	ld   h, a                                        ; $4ca5: $67
	sbc  l                                           ; $4ca6: $9d
	sbc  a                                           ; $4ca7: $9f
	dec  c                                           ; $4ca8: $0d
	nop                                              ; $4ca9: $00
	ld   a, [bc]                                     ; $4caa: $0a
	dec  c                                           ; $4cab: $0d
	nop                                              ; $4cac: $00
	nop                                              ; $4cad: $00
	rrca                                             ; $4cae: $0f
	nop                                              ; $4caf: $00
	ld   bc, $1e09                                   ; $4cb0: $01 $09 $1e
	nop                                              ; $4cb3: $00
	rrca                                             ; $4cb4: $0f
	nop                                              ; $4cb5: $00
	ld   bc, $6701                                   ; $4cb6: $01 $01 $67
	adc  l                                           ; $4cb9: $8d
	sbc  d                                           ; $4cba: $9a
	ld   h, e                                        ; $4cbb: $63
	and  c                                           ; $4cbc: $a1
	ld   a, h                                        ; $4cbd: $7c
	inc  b                                           ; $4cbe: $04
	db   $ec                                         ; $4cbf: $ec
	ld   a, l                                        ; $4cc0: $7d
	ld   l, l                                        ; $4cc1: $6d
	ld   h, l                                        ; $4cc2: $65
	ld   e, c                                        ; $4cc3: $59
	rst  $38                                         ; $4cc4: $ff
	rst  $38                                         ; $4cc5: $ff
	dec  c                                           ; $4cc6: $0d
	nop                                              ; $4cc7: $00
	ld   a, [bc]                                     ; $4cc8: $0a
	inc  e                                           ; $4cc9: $1c
	ld   [bc], a                                     ; $4cca: $02
	dec  b                                           ; $4ccb: $05
	dec  b                                           ; $4ccc: $05
	ld   bc, $f804                                   ; $4ccd: $01 $04 $f8
	ld   [bc], a                                     ; $4cd0: $02
	add  a                                           ; $4cd1: $87
	inc  b                                           ; $4cd2: $04
	or   a                                           ; $4cd3: $b7
	inc  bc                                          ; $4cd4: $03
	add  d                                           ; $4cd5: $82
	halt                                             ; $4cd6: $76
	ld   d, d                                        ; $4cd7: $52
	ld   d, h                                        ; $4cd8: $54
	sbc  [hl]                                        ; $4cd9: $9e
	ld   [bc], a                                     ; $4cda: $02
	ld   a, h                                        ; $4cdb: $7c
	ld   [bc], a                                     ; $4cdc: $02
	or   [hl]                                        ; $4cdd: $b6
	ld   a, h                                        ; $4cde: $7c
	dec  c                                           ; $4cdf: $0d
	inc  bc                                          ; $4ce0: $03
	db   $dd                                         ; $4ce1: $dd
	inc  b                                           ; $4ce2: $04
	db   $ec                                         ; $4ce3: $ec
	ld   a, b                                        ; $4ce4: $78
	and  c                                           ; $4ce5: $a1
	ld   [hl], l                                     ; $4ce6: $75
	ld   h, a                                        ; $4ce7: $67
	ld   a, h                                        ; $4ce8: $7c
	sub  [hl]                                        ; $4ce9: $96
	sbc  [hl]                                        ; $4cea: $9e
	inc  bc                                          ; $4ceb: $03
	db   $dd                                         ; $4cec: $dd
	inc  b                                           ; $4ced: $04
	db   $ec                                         ; $4cee: $ec
	sbc  a                                           ; $4cef: $9f
	dec  c                                           ; $4cf0: $0d
	ld   h, c                                        ; $4cf1: $61
	ld   a, h                                        ; $4cf2: $7c
	sbc  [hl]                                        ; $4cf3: $9e
	sbc  l                                           ; $4cf4: $9d
	ld   l, l                                        ; $4cf5: $6d
	ld   e, l                                        ; $4cf6: $5d
	ld   h, l                                        ; $4cf7: $65
	ld   e, d                                        ; $4cf8: $5a
	rst  $38                                         ; $4cf9: $ff
	rst  $38                                         ; $4cfa: $ff
	dec  c                                           ; $4cfb: $0d
	nop                                              ; $4cfc: $00
	ld   a, [bc]                                     ; $4cfd: $0a
	add  hl, de                                      ; $4cfe: $19
	dec  b                                           ; $4cff: $05
	inc  bc                                          ; $4d00: $03
	cp   d                                           ; $4d01: $ba
	rst  ToBoot                                         ; $4d02: $c7
	xor  [hl]                                        ; $4d03: $ae
	ld   [hl], l                                     ; $4d04: $75
	ld   h, a                                        ; $4d05: $67
	ld   a, e                                        ; $4d06: $7b
	nop                                              ; $4d07: $00
	nop                                              ; $4d08: $00
	ld   e, b                                        ; $4d09: $58
	inc  b                                           ; $4d0a: $04
	ld   c, l                                        ; $4d0b: $4d
	ld   [bc], a                                     ; $4d0c: $02
	ld   a, e                                        ; $4d0d: $7b
	ld   d, d                                        ; $4d0e: $52
	ld   [hl], l                                     ; $4d0f: $75
	ld   h, a                                        ; $4d10: $67
	ld   a, e                                        ; $4d11: $7b
	nop                                              ; $4d12: $00
	ld   bc, $5458                                   ; $4d13: $01 $58 $54
	ld   d, [hl]                                     ; $4d16: $56
	and  c                                           ; $4d17: $a1
	ld   h, l                                        ; $4d18: $65
	adc  h                                           ; $4d19: $8c
	ld   h, a                                        ; $4d1a: $67
	nop                                              ; $4d1b: $00
	ld   [bc], a                                     ; $4d1c: $02
	rlca                                             ; $4d1d: $07
	sbc  a                                           ; $4d1e: $9f
	inc  bc                                          ; $4d1f: $03
	ld   [bc], a                                     ; $4d20: $02
	inc  bc                                          ; $4d21: $03
	ld   bc, $2000                                   ; $4d22: $01 $00 $20
	nop                                              ; $4d25: $00
	rlca                                             ; $4d26: $07
	dec  b                                           ; $4d27: $05
	inc  b                                           ; $4d28: $04
	ld   [bc], a                                     ; $4d29: $02
	inc  bc                                          ; $4d2a: $03
	ld   bc, $2001                                   ; $4d2b: $01 $01 $20
	nop                                              ; $4d2e: $00
	rlca                                             ; $4d2f: $07
	ld   e, b                                        ; $4d30: $58
	inc  b                                           ; $4d31: $04
	ld   [bc], a                                     ; $4d32: $02
	inc  bc                                          ; $4d33: $03
	ld   bc, $2002                                   ; $4d34: $01 $02 $20
	nop                                              ; $4d37: $00
	ld   b, $d6                                      ; $4d38: $06 $d6
	inc  b                                           ; $4d3a: $04
	rrca                                             ; $4d3b: $0f
	nop                                              ; $4d3c: $00
	ld   bc, $6701                                   ; $4d3d: $01 $01 $67
	adc  l                                           ; $4d40: $8d
	sbc  d                                           ; $4d41: $9a
	ld   h, e                                        ; $4d42: $63
	and  c                                           ; $4d43: $a1
	ld   e, d                                        ; $4d44: $5a
	ld   [bc], a                                     ; $4d45: $02
	rra                                              ; $4d46: $1f
	ld   h, [hl]                                     ; $4d47: $66
	sbc  c                                           ; $4d48: $99
	ld   a, h                                        ; $4d49: $7c
	ld   [hl], l                                     ; $4d4a: $75
	ld   h, a                                        ; $4d4b: $67
	ld   e, c                                        ; $4d4c: $59
	sub  a                                           ; $4d4d: $97
	dec  c                                           ; $4d4e: $0d
	ld   e, e                                        ; $4d4f: $5b
	ld   [hl], c                                     ; $4d50: $71
	halt                                             ; $4d51: $76
	inc  b                                           ; $4d52: $04
	ld   hl, sp+$65                                  ; $4d53: $f8 $65
	ld   d, d                                        ; $4d55: $52
	adc  c                                           ; $4d56: $89
	ld   [hl], a                                     ; $4d57: $77
	inc  b                                           ; $4d58: $04
	and  c                                           ; $4d59: $a1
	ld   h, l                                        ; $4d5a: $65
	ld   d, d                                        ; $4d5b: $52
	dec  c                                           ; $4d5c: $0d
	ld   [bc], a                                     ; $4d5d: $02
	jr   z, jr_04d_4d63                              ; $4d5e: $28 $03

	or   b                                           ; $4d60: $b0
	ld   a, b                                        ; $4d61: $78
	and  c                                           ; $4d62: $a1

jr_04d_4d63:
	ld   [hl], l                                     ; $4d63: $75
	ld   h, l                                        ; $4d64: $65
	sub  l                                           ; $4d65: $95
	ld   d, h                                        ; $4d66: $54
	ld   a, e                                        ; $4d67: $7b
	sbc  a                                           ; $4d68: $9f
	dec  c                                           ; $4d69: $0d
	nop                                              ; $4d6a: $00
	ld   a, [bc]                                     ; $4d6b: $0a
	inc  e                                           ; $4d6c: $1c
	ld   [bc], a                                     ; $4d6d: $02
	jr   nc, jr_04d_4d89                             ; $4d6e: $30 $19

	dec  e                                           ; $4d70: $1d
	ld   b, b                                        ; $4d71: $40
	ld   [de], a                                     ; $4d72: $12
	inc  bc                                          ; $4d73: $03
	ld   [de], a                                     ; $4d74: $12
	ld   bc, $2803                                   ; $4d75: $01 $03 $28
	nop                                              ; $4d78: $00
	ld   bc, $6f90                                   ; $4d79: $01 $90 $6f
	sbc  e                                           ; $4d7c: $9b
	and  c                                           ; $4d7d: $a1
	ld   [hl], l                                     ; $4d7e: $75
	ld   h, a                                        ; $4d7f: $67
	sbc  l                                           ; $4d80: $9d
	sbc  a                                           ; $4d81: $9f
	dec  c                                           ; $4d82: $0d
	cp   d                                           ; $4d83: $ba
	ret  nz                                          ; $4d84: $c0

	and  e                                           ; $4d85: $a3
	ld   [hl], l                                     ; $4d86: $75
	ld   d, b                                        ; $4d87: $50
	sbc  c                                           ; $4d88: $99

jr_04d_4d89:
	ld   h, c                                        ; $4d89: $61
	ld   a, h                                        ; $4d8a: $7c
	sbc  l                                           ; $4d8b: $9d
	ld   l, l                                        ; $4d8c: $6d
	ld   e, l                                        ; $4d8d: $5d
	ld   h, l                                        ; $4d8e: $65
	ld   e, d                                        ; $4d8f: $5a
	dec  c                                           ; $4d90: $0d
	ld   [bc], a                                     ; $4d91: $02
	rra                                              ; $4d92: $1f
	ld   h, [hl]                                     ; $4d93: $66
	sbc  c                                           ; $4d94: $99
	ld   a, h                                        ; $4d95: $7c
	ld   [hl], l                                     ; $4d96: $75
	ld   h, a                                        ; $4d97: $67
	ld   e, c                                        ; $4d98: $59
	sub  a                                           ; $4d99: $97
	sbc  a                                           ; $4d9a: $9f
	dec  c                                           ; $4d9b: $0d
	nop                                              ; $4d9c: $00
	ld   a, [bc]                                     ; $4d9d: $0a
	ld   b, $ac                                      ; $4d9e: $06 $ac
	inc  b                                           ; $4da0: $04
	rrca                                             ; $4da1: $0f
	nop                                              ; $4da2: $00
	ld   bc, $0401                                   ; $4da3: $01 $01 $04
	ld   hl, sp+$02                                  ; $4da6: $f8 $02
	ld   h, h                                        ; $4da8: $64
	ld   l, [hl]                                     ; $4da9: $6e
	ld   a, b                                        ; $4daa: $78
	and  c                                           ; $4dab: $a1
	ld   [hl], h                                     ; $4dac: $74
	sbc  [hl]                                        ; $4dad: $9e
	dec  c                                           ; $4dae: $0d
	ld   h, a                                        ; $4daf: $67
	adc  l                                           ; $4db0: $8d
	sbc  d                                           ; $4db1: $9a
	ld   h, e                                        ; $4db2: $63
	and  c                                           ; $4db3: $a1
	ld   a, c                                        ; $4db4: $79
	push de                                          ; $4db5: $d5
	call nz, $ecc0                                   ; $4db6: $c4 $c0 $ec
	ld   [hl], l                                     ; $4db9: $75
	ld   h, a                                        ; $4dba: $67
	ld   a, e                                        ; $4dbb: $7b
	sbc  a                                           ; $4dbc: $9f
	dec  c                                           ; $4dbd: $0d
	nop                                              ; $4dbe: $00
	ld   a, [bc]                                     ; $4dbf: $0a
	inc  e                                           ; $4dc0: $1c
	ld   [bc], a                                     ; $4dc1: $02
	ld   [bc], a                                     ; $4dc2: $02
	ld   [bc], a                                     ; $4dc3: $02
	dec  e                                           ; $4dc4: $1d
	ld   b, b                                        ; $4dc5: $40
	ld   [de], a                                     ; $4dc6: $12
	inc  bc                                          ; $4dc7: $03
	ld   [de], a                                     ; $4dc8: $12
	ld   bc, $2903                                   ; $4dc9: $01 $03 $29
	nop                                              ; $4dcc: $00
	ld   bc, $f9a1                                   ; $4dcd: $01 $a1 $f9
	db   $10                                         ; $4dd0: $10
	ld   [bc], a                                     ; $4dd1: $02
	and  l                                           ; $4dd2: $a5
	ld   a, h                                        ; $4dd3: $7c
	inc  b                                           ; $4dd4: $04
	ld   e, [hl]                                     ; $4dd5: $5e
	ld   [bc], a                                     ; $4dd6: $02
	sbc  l                                           ; $4dd7: $9d
	rst  $38                                         ; $4dd8: $ff
	rst  $38                                         ; $4dd9: $ff
	dec  c                                           ; $4dda: $0d
	ld   [hl], a                                     ; $4ddb: $77
	ld   d, h                                        ; $4ddc: $54
	ld   [bc], a                                     ; $4ddd: $02
	rst  $38                                         ; $4dde: $ff
	ld   e, a                                        ; $4ddf: $5f
	halt                                             ; $4de0: $76
	adc  a                                           ; $4de1: $8f
	sbc  d                                           ; $4de2: $9a
	ld   a, [hl]                                     ; $4de3: $7e
	dec  c                                           ; $4de4: $0d
	sub  [hl]                                        ; $4de5: $96
	sbc  e                                           ; $4de6: $9b
	ld   h, l                                        ; $4de7: $65
	ld   d, d                                        ; $4de8: $52
	ld   a, h                                        ; $4de9: $7c
	ld   e, c                                        ; $4dea: $59
	ld   h, l                                        ; $4deb: $65
	sub  a                                           ; $4dec: $97
	ld   sp, hl                                      ; $4ded: $f9
	dec  c                                           ; $4dee: $0d
	nop                                              ; $4def: $00
	ld   a, [bc]                                     ; $4df0: $0a
	ld   b, $ac                                      ; $4df1: $06 $ac
	inc  b                                           ; $4df3: $04
	rrca                                             ; $4df4: $0f
	nop                                              ; $4df5: $00
	ld   bc, $6701                                   ; $4df6: $01 $01 $67
	adc  l                                           ; $4df9: $8d
	sbc  d                                           ; $4dfa: $9a
	ld   h, e                                        ; $4dfb: $63
	and  c                                           ; $4dfc: $a1
	sbc  a                                           ; $4dfd: $9f
	dec  c                                           ; $4dfe: $0d
	ld   e, b                                        ; $4dff: $58
	ld   d, h                                        ; $4e00: $54
	ld   d, [hl]                                     ; $4e01: $56
	and  c                                           ; $4e02: $a1
	ld   h, l                                        ; $4e03: $65
	adc  h                                           ; $4e04: $8c
	ld   h, a                                        ; $4e05: $67
	sbc  a                                           ; $4e06: $9f
	dec  c                                           ; $4e07: $0d
	ld   e, d                                        ; $4e08: $5a
	and  c                                           ; $4e09: $a1
	ld   a, [hl]                                     ; $4e0a: $7e
	ld   [hl], c                                     ; $4e0b: $71
	ld   [hl], h                                     ; $4e0c: $74
	ld   e, l                                        ; $4e0d: $5d
	ld   l, [hl]                                     ; $4e0e: $6e
	ld   h, e                                        ; $4e0f: $63
	ld   d, d                                        ; $4e10: $52
	sbc  a                                           ; $4e11: $9f
	dec  c                                           ; $4e12: $0d
	nop                                              ; $4e13: $00
	ld   a, [bc]                                     ; $4e14: $0a
	inc  e                                           ; $4e15: $1c
	ld   [bc], a                                     ; $4e16: $02
	ld   [bc], a                                     ; $4e17: $02
	ld   [bc], a                                     ; $4e18: $02
	dec  e                                           ; $4e19: $1d
	ld   b, b                                        ; $4e1a: $40
	ld   [de], a                                     ; $4e1b: $12
	inc  bc                                          ; $4e1c: $03
	ld   [de], a                                     ; $4e1d: $12
	ld   bc, $2901                                   ; $4e1e: $01 $01 $29
	nop                                              ; $4e21: $00
	ld   bc, $7c61                                   ; $4e22: $01 $61 $7c
	sbc  l                                           ; $4e25: $9d
	ld   l, l                                        ; $4e26: $6d
	ld   e, l                                        ; $4e27: $5d
	ld   h, l                                        ; $4e28: $65
	ld   e, d                                        ; $4e29: $5a
	sbc  [hl]                                        ; $4e2a: $9e
	dec  c                                           ; $4e2b: $0d
	ld   e, d                                        ; $4e2c: $5a
	and  c                                           ; $4e2d: $a1
	ld   a, [hl]                                     ; $4e2e: $7e
	sbc  c                                           ; $4e2f: $99
	ld   h, c                                        ; $4e30: $61
	halt                                             ; $4e31: $76
	ld   e, d                                        ; $4e32: $5a
	ld   d, b                                        ; $4e33: $50
	sbc  c                                           ; $4e34: $99
	halt                                             ; $4e35: $76
	dec  b                                           ; $4e36: $05
	pop  de                                          ; $4e37: $d1
	ld   [hl], c                                     ; $4e38: $71
	ld   [hl], h                                     ; $4e39: $74
	dec  c                                           ; $4e3a: $0d
	sub  a                                           ; $4e3b: $97
	ld   [hl], c                                     ; $4e3c: $71
	ld   h, l                                        ; $4e3d: $65
	sub  c                                           ; $4e3e: $91
	sbc  c                                           ; $4e3f: $99
	ld   a, h                                        ; $4e40: $7c
	ld   sp, hl                                      ; $4e41: $f9
	dec  c                                           ; $4e42: $0d
	nop                                              ; $4e43: $00
	ld   a, [bc]                                     ; $4e44: $0a
	ld   b, $ac                                      ; $4e45: $06 $ac
	inc  b                                           ; $4e47: $04
	ld   bc, $7d75                                   ; $4e48: $01 $75 $7d
	sbc  [hl]                                        ; $4e4b: $9e
	sbc  l                                           ; $4e4c: $9d
	ld   l, l                                        ; $4e4d: $6d
	ld   e, l                                        ; $4e4e: $5d
	ld   h, l                                        ; $4e4f: $65
	or   [hl]                                        ; $4e50: $b6
	rst  $28                                         ; $4e51: $ef
	push af                                          ; $4e52: $f5
	ld   [hl], l                                     ; $4e53: $75
	dec  c                                           ; $4e54: $0d
	ld   h, [hl]                                     ; $4e55: $66
	ld   [hl], c                                     ; $4e56: $71
	ld   e, l                                        ; $4e57: $5d
	sbc  b                                           ; $4e58: $98
	inc  b                                           ; $4e59: $04
	inc  c                                           ; $4e5a: $0c
	inc  b                                           ; $4e5b: $04
	adc  a                                           ; $4e5c: $8f
	and  b                                           ; $4e5d: $a0
	inc  b                                           ; $4e5e: $04
	ld   de, $8c8d                                   ; $4e5f: $11 $8d $8c
	ld   h, a                                        ; $4e62: $67
	ld   a, h                                        ; $4e63: $7c
	ld   [hl], l                                     ; $4e64: $75
	sbc  a                                           ; $4e65: $9f
	dec  c                                           ; $4e66: $0d
	nop                                              ; $4e67: $00
	ld   a, [bc]                                     ; $4e68: $0a
	dec  c                                           ; $4e69: $0d
	nop                                              ; $4e6a: $00
	nop                                              ; $4e6b: $00
	rrca                                             ; $4e6c: $0f
	nop                                              ; $4e6d: $00
	ld   bc, $1e09                                   ; $4e6e: $01 $09 $1e
	nop                                              ; $4e71: $00
	inc  e                                           ; $4e72: $1c
	ld   [bc], a                                     ; $4e73: $02
	nop                                              ; $4e74: $00
	nop                                              ; $4e75: $00
	ld   bc, $7d75                                   ; $4e76: $01 $75 $7d
	sbc  [hl]                                        ; $4e79: $9e
	sbc  l                                           ; $4e7a: $9d
	ld   l, l                                        ; $4e7b: $6d
	ld   e, l                                        ; $4e7c: $5d
	ld   h, l                                        ; $4e7d: $65
	or   [hl]                                        ; $4e7e: $b6
	rst  $28                                         ; $4e7f: $ef
	push af                                          ; $4e80: $f5
	ld   [hl], l                                     ; $4e81: $75
	dec  c                                           ; $4e82: $0d
	ld   h, [hl]                                     ; $4e83: $66
	ld   [hl], c                                     ; $4e84: $71
	ld   e, l                                        ; $4e85: $5d
	sbc  b                                           ; $4e86: $98
	inc  b                                           ; $4e87: $04
	inc  c                                           ; $4e88: $0c
	inc  b                                           ; $4e89: $04
	adc  a                                           ; $4e8a: $8f
	and  b                                           ; $4e8b: $a0
	inc  b                                           ; $4e8c: $04
	ld   de, $8c8d                                   ; $4e8d: $11 $8d $8c
	ld   h, a                                        ; $4e90: $67
	ld   a, h                                        ; $4e91: $7c
	ld   [hl], l                                     ; $4e92: $75
	sbc  a                                           ; $4e93: $9f
	dec  c                                           ; $4e94: $0d
	nop                                              ; $4e95: $00
	ld   a, [bc]                                     ; $4e96: $0a
	dec  c                                           ; $4e97: $0d
	nop                                              ; $4e98: $00
	nop                                              ; $4e99: $00
	rrca                                             ; $4e9a: $0f
	nop                                              ; $4e9b: $00
	ld   bc, $1e09                                   ; $4e9c: $01 $09 $1e
	nop                                              ; $4e9f: $00
	rrca                                             ; $4ea0: $0f
	nop                                              ; $4ea1: $00
	ld   bc, $0401                                   ; $4ea2: $01 $01 $04
	adc  [hl]                                        ; $4ea5: $8e
	inc  b                                           ; $4ea6: $04
	inc  c                                           ; $4ea7: $0c
	ld   [hl], c                                     ; $4ea8: $71
	ld   [hl], h                                     ; $4ea9: $74
	dec  b                                           ; $4eaa: $05
	inc  de                                          ; $4eab: $13
	ld   h, l                                        ; $4eac: $65
	ld   d, d                                        ; $4ead: $52
	ld   [hl], l                                     ; $4eae: $75
	ld   h, a                                        ; $4eaf: $67
	ld   e, c                                        ; $4eb0: $59
	ld   sp, hl                                      ; $4eb1: $f9
	dec  c                                           ; $4eb2: $0d
	nop                                              ; $4eb3: $00
	ld   a, [bc]                                     ; $4eb4: $0a
	inc  e                                           ; $4eb5: $1c
	ld   [bc], a                                     ; $4eb6: $02
	inc  bc                                          ; $4eb7: $03
	inc  bc                                          ; $4eb8: $03
	ld   bc, $7c6b                                   ; $4eb9: $01 $6b $7c
	inc  bc                                          ; $4ebc: $03
	dec  d                                           ; $4ebd: $15
	inc  b                                           ; $4ebe: $04
	cp   a                                           ; $4ebf: $bf
	ld   a, l                                        ; $4ec0: $7d
	dec  c                                           ; $4ec1: $0d
	ret                                              ; $4ec2: $c9


	call nz, $bad8                                   ; $4ec3: $c4 $d8 $ba
	ret  nz                                          ; $4ec6: $c0

	and  e                                           ; $4ec7: $a3
	ld   a, h                                        ; $4ec8: $7c
	sbc  l                                           ; $4ec9: $9d
	ld   l, l                                        ; $4eca: $6d
	ld   e, l                                        ; $4ecb: $5d
	ld   h, l                                        ; $4ecc: $65
	ld   a, c                                        ; $4ecd: $79
	dec  c                                           ; $4ece: $0d
	inc  bc                                          ; $4ecf: $03
	add  e                                           ; $4ed0: $83
	dec  b                                           ; $4ed1: $05
	dec  c                                           ; $4ed2: $0d
	ld   h, [hl]                                     ; $4ed3: $66
	sub  c                                           ; $4ed4: $91
	ld   d, b                                        ; $4ed5: $50
	sbc  b                                           ; $4ed6: $98
	adc  h                                           ; $4ed7: $8c
	ld   l, c                                        ; $4ed8: $69
	and  c                                           ; $4ed9: $a1
	ld   h, c                                        ; $4eda: $61
	halt                                             ; $4edb: $76
	sbc  a                                           ; $4edc: $9f
	dec  c                                           ; $4edd: $0d
	nop                                              ; $4ede: $00
	ld   a, [bc]                                     ; $4edf: $0a
	inc  e                                           ; $4ee0: $1c
	ld   [bc], a                                     ; $4ee1: $02
	ld   [bc], a                                     ; $4ee2: $02
	ld   [bc], a                                     ; $4ee3: $02
	ld   bc, $8203                                   ; $4ee4: $01 $03 $82
	ld   bc, $7914                                   ; $4ee7: $01 $14 $79
	inc  b                                           ; $4eea: $04
	or   d                                           ; $4eeb: $b2
	adc  h                                           ; $4eec: $8c
	sbc  d                                           ; $4eed: $9a
	ld   [hl], h                                     ; $4eee: $74
	sbc  [hl]                                        ; $4eef: $9e
	dec  c                                           ; $4ef0: $0d
	sbc  l                                           ; $4ef1: $9d
	ld   l, l                                        ; $4ef2: $6d
	ld   e, l                                        ; $4ef3: $5d
	ld   h, l                                        ; $4ef4: $65
	ld   a, l                                        ; $4ef5: $7d
	inc  b                                           ; $4ef6: $04
	adc  [hl]                                        ; $4ef7: $8e
	inc  b                                           ; $4ef8: $04
	inc  c                                           ; $4ef9: $0c
	ld   a, c                                        ; $4efa: $79
	dec  c                                           ; $4efb: $0d
	dec  b                                           ; $4efc: $05
	ld   d, $71                                      ; $4efd: $16 $71
	ld   [hl], h                                     ; $4eff: $74
	ld   d, d                                        ; $4f00: $52
	sbc  c                                           ; $4f01: $99
	ld   a, h                                        ; $4f02: $7c
	ld   [hl], l                                     ; $4f03: $75
	ld   h, a                                        ; $4f04: $67
	ld   e, c                                        ; $4f05: $59
	sub  a                                           ; $4f06: $97
	sbc  a                                           ; $4f07: $9f
	dec  c                                           ; $4f08: $0d
	nop                                              ; $4f09: $00
	ld   a, [bc]                                     ; $4f0a: $0a
	add  hl, de                                      ; $4f0b: $19
	dec  b                                           ; $4f0c: $05
	ld   [bc], a                                     ; $4f0d: $02
	ld   e, b                                        ; $4f0e: $58
	ld   [hl], c                                     ; $4f0f: $71
	ld   h, l                                        ; $4f10: $65
	sub  c                                           ; $4f11: $91
	sbc  c                                           ; $4f12: $99
	halt                                             ; $4f13: $76
	ld   e, b                                        ; $4f14: $58
	sbc  b                                           ; $4f15: $98
	nop                                              ; $4f16: $00
	nop                                              ; $4f17: $00
	inc  bc                                          ; $4f18: $03
	sub  h                                           ; $4f19: $94
	ld   [bc], a                                     ; $4f1a: $02
	ld   hl, sp+$59                                  ; $4f1b: $f8 $59
	ld   h, [hl]                                     ; $4f1d: $66
	sub  l                                           ; $4f1e: $95
	ld   d, h                                        ; $4f1f: $54
	ld   h, [hl]                                     ; $4f20: $66
	sub  c                                           ; $4f21: $91
	ld   a, b                                        ; $4f22: $78
	ld   d, d                                        ; $4f23: $52
	ld   sp, hl                                      ; $4f24: $f9
	nop                                              ; $4f25: $00
	ld   bc, $a007                                   ; $4f26: $01 $07 $a0
	dec  b                                           ; $4f29: $05
	ld   [bc], a                                     ; $4f2a: $02
	inc  bc                                          ; $4f2b: $03
	ld   bc, $2000                                   ; $4f2c: $01 $00 $20
	nop                                              ; $4f2f: $00
	rlca                                             ; $4f30: $07
	jp   hl                                          ; $4f31: $e9


	dec  b                                           ; $4f32: $05
	ld   [bc], a                                     ; $4f33: $02
	inc  bc                                          ; $4f34: $03
	ld   bc, $2001                                   ; $4f35: $01 $01 $20
	nop                                              ; $4f38: $00
	ld   b, $a3                                      ; $4f39: $06 $a3
	ld   b, $0f                                      ; $4f3b: $06 $0f
	nop                                              ; $4f3d: $00
	ld   bc, $8c01                                   ; $4f3e: $01 $01 $8c
	ld   [hl], c                                     ; $4f41: $71
	ld   l, l                                        ; $4f42: $6d
	ld   e, l                                        ; $4f43: $5d
	sub  b                                           ; $4f44: $90
	ld   [hl], c                                     ; $4f45: $71
	ld   [hl], h                                     ; $4f46: $74
	dec  c                                           ; $4f47: $0d
	ld   e, b                                        ; $4f48: $58
	ld   [hl], c                                     ; $4f49: $71
	ld   h, l                                        ; $4f4a: $65
	sub  c                                           ; $4f4b: $91
	sbc  c                                           ; $4f4c: $99
	halt                                             ; $4f4d: $76
	ld   e, b                                        ; $4f4e: $58
	sbc  b                                           ; $4f4f: $98
	ld   [hl], l                                     ; $4f50: $75
	ld   h, a                                        ; $4f51: $67
	sbc  a                                           ; $4f52: $9f
	dec  c                                           ; $4f53: $0d
	nop                                              ; $4f54: $00
	ld   a, [bc]                                     ; $4f55: $0a
	inc  e                                           ; $4f56: $1c
	ld   [bc], a                                     ; $4f57: $02
	ld   bc, $1d01                                   ; $4f58: $01 $01 $1d
	ld   b, b                                        ; $4f5b: $40
	ld   [de], a                                     ; $4f5c: $12
	inc  bc                                          ; $4f5d: $03
	ld   [de], a                                     ; $4f5e: $12
	ld   bc, $2802                                   ; $4f5f: $01 $02 $28
	nop                                              ; $4f62: $00
	ld   bc, $546b                                   ; $4f63: $01 $6b $54
	rst  $38                                         ; $4f66: $ff
	rst  $38                                         ; $4f67: $ff
	dec  c                                           ; $4f68: $0d
	inc  b                                           ; $4f69: $04
	sbc  [hl]                                        ; $4f6a: $9e
	ld   e, c                                        ; $4f6b: $59
	ld   [hl], c                                     ; $4f6c: $71
	ld   [hl], h                                     ; $4f6d: $74
	sub  a                                           ; $4f6e: $97
	ld   [hl], c                                     ; $4f6f: $71
	ld   h, l                                        ; $4f70: $65
	sub  c                                           ; $4f71: $91
	sbc  c                                           ; $4f72: $99
	ld   a, h                                        ; $4f73: $7c
	ld   a, b                                        ; $4f74: $78
	sub  a                                           ; $4f75: $97
	dec  c                                           ; $4f76: $0d
	sub  [hl]                                        ; $4f77: $96
	sbc  e                                           ; $4f78: $9b
	ld   h, l                                        ; $4f79: $65
	ld   e, l                                        ; $4f7a: $5d
	ld   [hl], c                                     ; $4f7b: $71
	ld   [hl], h                                     ; $4f7c: $74
	sub  [hl]                                        ; $4f7d: $96
	sbc  a                                           ; $4f7e: $9f
	dec  c                                           ; $4f7f: $0d
	nop                                              ; $4f80: $00
	ld   a, [bc]                                     ; $4f81: $0a
	ld   b, $6b                                      ; $4f82: $06 $6b
	ld   b, $0f                                      ; $4f84: $06 $0f
	nop                                              ; $4f86: $00
	ld   bc, $6b01                                   ; $4f87: $01 $01 $6b
	ld   h, c                                        ; $4f8a: $61
	adc  h                                           ; $4f8b: $8c
	ld   [hl], l                                     ; $4f8c: $75
	ld   [bc], a                                     ; $4f8d: $02
	sbc  l                                           ; $4f8e: $9d
	ld   d, h                                        ; $4f8f: $54
	halt                                             ; $4f90: $76
	sbc  [hl]                                        ; $4f91: $9e
	ld   a, b                                        ; $4f92: $78
	and  c                                           ; $4f93: $a1
	ld   l, [hl]                                     ; $4f94: $6e
	ld   e, c                                        ; $4f95: $59
	dec  c                                           ; $4f96: $0d
	inc  bc                                          ; $4f97: $03
	sub  h                                           ; $4f98: $94
	ld   [bc], a                                     ; $4f99: $02
	ld   hl, sp+$59                                  ; $4f9a: $f8 $59
	ld   h, [hl]                                     ; $4f9c: $66
	sub  l                                           ; $4f9d: $95
	ld   d, h                                        ; $4f9e: $54
	ld   a, b                                        ; $4f9f: $78
	sub  [hl]                                        ; $4fa0: $96
	ld   d, h                                        ; $4fa1: $54
	ld   a, c                                        ; $4fa2: $79
	dec  c                                           ; $4fa3: $0d
	dec  b                                           ; $4fa4: $05
	pop  de                                          ; $4fa5: $d1
	ld   d, [hl]                                     ; $4fa6: $56
	sbc  c                                           ; $4fa7: $99
	and  c                                           ; $4fa8: $a1
	ld   [hl], l                                     ; $4fa9: $75
	ld   h, a                                        ; $4faa: $67
	ld   e, a                                        ; $4fab: $5f
	ld   [hl], a                                     ; $4fac: $77
	rst  $38                                         ; $4fad: $ff
	rst  $38                                         ; $4fae: $ff
	dec  c                                           ; $4faf: $0d
	nop                                              ; $4fb0: $00
	ld   a, [bc]                                     ; $4fb1: $0a
	inc  e                                           ; $4fb2: $1c
	ld   [bc], a                                     ; $4fb3: $02
	inc  bc                                          ; $4fb4: $03
	inc  bc                                          ; $4fb5: $03
	ld   bc, $9403                                   ; $4fb6: $01 $03 $94
	ld   [bc], a                                     ; $4fb9: $02
	ld   hl, sp+$59                                  ; $4fba: $f8 $59
	ld   h, [hl]                                     ; $4fbc: $66
	sub  l                                           ; $4fbd: $95
	ld   d, h                                        ; $4fbe: $54
	ld   sp, hl                                      ; $4fbf: $f9
	dec  c                                           ; $4fc0: $0d
	ld   h, c                                        ; $4fc1: $61
	sbc  d                                           ; $4fc2: $9a
	ld   l, [hl]                                     ; $4fc3: $6e
	ld   e, c                                        ; $4fc4: $59
	sub  a                                           ; $4fc5: $97
	inc  bc                                          ; $4fc6: $03
	and  [hl]                                        ; $4fc7: $a6
	inc  bc                                          ; $4fc8: $03
	add  d                                           ; $4fc9: $82
	ld   a, l                                        ; $4fca: $7d
	rst  $38                                         ; $4fcb: $ff
	rst  $38                                         ; $4fcc: $ff
	dec  c                                           ; $4fcd: $0d
	nop                                              ; $4fce: $00
	ld   a, [bc]                                     ; $4fcf: $0a
	inc  e                                           ; $4fd0: $1c
	ld   [bc], a                                     ; $4fd1: $02
	ld   [bc], a                                     ; $4fd2: $02
	ld   [bc], a                                     ; $4fd3: $02
	dec  e                                           ; $4fd4: $1d
	ld   b, b                                        ; $4fd5: $40
	ld   [de], a                                     ; $4fd6: $12
	inc  bc                                          ; $4fd7: $03
	ld   [de], a                                     ; $4fd8: $12
	ld   bc, $2903                                   ; $4fd9: $01 $03 $29
	nop                                              ; $4fdc: $00
	ld   bc, $546b                                   ; $4fdd: $01 $6b $54
	ld   d, d                                        ; $4fe0: $52
	ld   d, h                                        ; $4fe1: $54
	cp   h                                           ; $4fe2: $bc
	db   $ec                                         ; $4fe3: $ec
	sub  $7d                                         ; $4fe4: $d6 $7d
	dec  c                                           ; $4fe6: $0d
	ld   [bc], a                                     ; $4fe7: $02
	jr   nz, jr_04d_4fee                             ; $4fe8: $20 $04

	add  hl, hl                                      ; $4fea: $29
	sbc  l                                           ; $4feb: $9d
	ld   l, l                                        ; $4fec: $6d
	ld   e, l                                        ; $4fed: $5d

jr_04d_4fee:
	ld   h, l                                        ; $4fee: $65
	ld   a, h                                        ; $4fef: $7c
	inc  b                                           ; $4ff0: $04
	adc  [hl]                                        ; $4ff1: $8e
	inc  b                                           ; $4ff2: $04
	inc  c                                           ; $4ff3: $0c
	and  b                                           ; $4ff4: $a0
	dec  c                                           ; $4ff5: $0d
	ld   [bc], a                                     ; $4ff6: $02
	sub  l                                           ; $4ff7: $95
	ld   [hl], h                                     ; $4ff8: $74
	ld   e, c                                        ; $4ff9: $59
	sub  a                                           ; $4ffa: $97
	ld   a, c                                        ; $4ffb: $79
	ld   h, l                                        ; $4ffc: $65
	ld   a, b                                        ; $4ffd: $78
	ld   h, e                                        ; $4ffe: $63
	ld   d, d                                        ; $4fff: $52
	sbc  a                                           ; $5000: $9f
	dec  c                                           ; $5001: $0d
	nop                                              ; $5002: $00
	ld   a, [bc]                                     ; $5003: $0a
	ld   b, $6b                                      ; $5004: $06 $6b
	ld   b, $01                                      ; $5006: $06 $01
	ld   [hl], l                                     ; $5008: $75
	ld   a, l                                        ; $5009: $7d
	sbc  [hl]                                        ; $500a: $9e
	sbc  l                                           ; $500b: $9d
	ld   l, l                                        ; $500c: $6d
	ld   e, l                                        ; $500d: $5d
	ld   h, l                                        ; $500e: $65
	or   [hl]                                        ; $500f: $b6
	rst  $28                                         ; $5010: $ef
	push af                                          ; $5011: $f5
	ld   [hl], l                                     ; $5012: $75
	dec  c                                           ; $5013: $0d
	ld   h, [hl]                                     ; $5014: $66
	ld   [hl], c                                     ; $5015: $71
	ld   e, l                                        ; $5016: $5d
	sbc  b                                           ; $5017: $98
	inc  b                                           ; $5018: $04
	inc  c                                           ; $5019: $0c
	inc  b                                           ; $501a: $04
	adc  a                                           ; $501b: $8f
	and  b                                           ; $501c: $a0
	inc  b                                           ; $501d: $04
	ld   de, $8c8d                                   ; $501e: $11 $8d $8c
	ld   h, a                                        ; $5021: $67
	ld   a, h                                        ; $5022: $7c
	ld   [hl], l                                     ; $5023: $75
	sbc  a                                           ; $5024: $9f
	dec  c                                           ; $5025: $0d
	ld   h, c                                        ; $5026: $61
	sbc  d                                           ; $5027: $9a
	ld   [hl], l                                     ; $5028: $75
	sbc  [hl]                                        ; $5029: $9e
	inc  bc                                          ; $502a: $03
	add  e                                           ; $502b: $83
	dec  b                                           ; $502c: $05
	dec  c                                           ; $502d: $0d
	ld   h, l                                        ; $502e: $65
	adc  h                                           ; $502f: $8c
	ld   h, a                                        ; $5030: $67
	sbc  l                                           ; $5031: $9d
	sbc  a                                           ; $5032: $9f
	dec  c                                           ; $5033: $0d
	nop                                              ; $5034: $00
	ld   a, [bc]                                     ; $5035: $0a
	dec  c                                           ; $5036: $0d
	nop                                              ; $5037: $00
	nop                                              ; $5038: $00
	rrca                                             ; $5039: $0f
	nop                                              ; $503a: $00
	ld   bc, $1e09                                   ; $503b: $01 $09 $1e
	nop                                              ; $503e: $00
	inc  e                                           ; $503f: $1c
	ld   [bc], a                                     ; $5040: $02
	ld   [bc], a                                     ; $5041: $02
	ld   [bc], a                                     ; $5042: $02
	ld   bc, $7d75                                   ; $5043: $01 $75 $7d
	sbc  [hl]                                        ; $5046: $9e
	sbc  l                                           ; $5047: $9d
	ld   l, l                                        ; $5048: $6d
	ld   e, l                                        ; $5049: $5d
	ld   h, l                                        ; $504a: $65
	or   [hl]                                        ; $504b: $b6
	rst  $28                                         ; $504c: $ef
	push af                                          ; $504d: $f5
	ld   [hl], l                                     ; $504e: $75
	dec  c                                           ; $504f: $0d
	ld   h, [hl]                                     ; $5050: $66
	ld   [hl], c                                     ; $5051: $71
	ld   e, l                                        ; $5052: $5d
	sbc  b                                           ; $5053: $98
	inc  b                                           ; $5054: $04

jr_04d_5055:
	inc  c                                           ; $5055: $0c
	inc  b                                           ; $5056: $04
	adc  a                                           ; $5057: $8f
	and  b                                           ; $5058: $a0
	inc  b                                           ; $5059: $04
	ld   de, $8c8d                                   ; $505a: $11 $8d $8c
	ld   h, a                                        ; $505d: $67
	ld   a, h                                        ; $505e: $7c
	ld   [hl], l                                     ; $505f: $75
	sbc  a                                           ; $5060: $9f
	dec  c                                           ; $5061: $0d
	ld   h, c                                        ; $5062: $61
	sbc  d                                           ; $5063: $9a
	ld   [hl], l                                     ; $5064: $75
	sbc  [hl]                                        ; $5065: $9e
	inc  bc                                          ; $5066: $03
	add  e                                           ; $5067: $83
	dec  b                                           ; $5068: $05
	dec  c                                           ; $5069: $0d
	ld   h, l                                        ; $506a: $65
	adc  h                                           ; $506b: $8c
	ld   h, a                                        ; $506c: $67
	sbc  l                                           ; $506d: $9d
	sbc  a                                           ; $506e: $9f
	dec  c                                           ; $506f: $0d
	nop                                              ; $5070: $00
	ld   a, [bc]                                     ; $5071: $0a
	dec  c                                           ; $5072: $0d
	nop                                              ; $5073: $00
	nop                                              ; $5074: $00
	rrca                                             ; $5075: $0f
	nop                                              ; $5076: $00
	ld   bc, $1e09                                   ; $5077: $01 $09 $1e
	nop                                              ; $507a: $00
	nop                                              ; $507b: $00
	rrca                                             ; $507c: $0f

Jump_04d_507d:
	nop                                              ; $507d: $00
	ld   bc, $010d                                   ; $507e: $01 $0d $01
	nop                                              ; $5081: $00
	ld   [bc], a                                     ; $5082: $02
	ld   bc, $7d58                                   ; $5083: $01 $58 $7d
	sub  [hl]                                        ; $5086: $96
	ld   d, h                                        ; $5087: $54
	ld   h, d                                        ; $5088: $62
	ld   h, h                                        ; $5089: $64
	ld   d, d                                        ; $508a: $52
	adc  h                                           ; $508b: $8c
	ld   h, a                                        ; $508c: $67
	sbc  a                                           ; $508d: $9f
	dec  c                                           ; $508e: $0d
	nop                                              ; $508f: $00
	ld   a, [bc]                                     ; $5090: $0a
	inc  e                                           ; $5091: $1c
	ld   bc, $0101                                   ; $5092: $01 $01 $01
	ld   bc, $0008                                   ; $5095: $01 $08 $00
	ld   h, e                                        ; $5098: $63
	and  c                                           ; $5099: $a1
	sbc  a                                           ; $509a: $9f
	dec  c                                           ; $509b: $0d
	ld   e, b                                        ; $509c: $58
	ld   a, l                                        ; $509d: $7d
	sub  [hl]                                        ; $509e: $96
	ld   d, h                                        ; $509f: $54
	ld   h, d                                        ; $50a0: $62
	ld   h, h                                        ; $50a1: $64
	ld   d, d                                        ; $50a2: $52
	adc  h                                           ; $50a3: $8c
	ld   h, a                                        ; $50a4: $67
	sbc  a                                           ; $50a5: $9f
	dec  c                                           ; $50a6: $0d
	nop                                              ; $50a7: $00
	ld   a, [bc]                                     ; $50a8: $0a
	rrca                                             ; $50a9: $0f
	nop                                              ; $50aa: $00
	ld   bc, $0101                                   ; $50ab: $01 $01 $01
	inc  bc                                          ; $50ae: $03
	inc  b                                           ; $50af: $04
	ld   c, c                                        ; $50b0: $49
	ld   a, h                                        ; $50b1: $7c
	dec  b                                           ; $50b2: $05
	jr   nz, jr_04d_5055                             ; $50b3: $20 $a0

	ld   h, l                                        ; $50b5: $65
	sub  [hl]                                        ; $50b6: $96
	ld   d, h                                        ; $50b7: $54
	ld   e, c                                        ; $50b8: $59
	ld   a, b                                        ; $50b9: $78
	rst  $38                                         ; $50ba: $ff
	rst  $38                                         ; $50bb: $ff
	ld   bc, $0d04                                   ; $50bc: $01 $04 $0d
	nop                                              ; $50bf: $00
	ld   a, [bc]                                     ; $50c0: $0a
	add  hl, de                                      ; $50c1: $19
	dec  b                                           ; $50c2: $05
	inc  bc                                          ; $50c3: $03
	ld   [bc], a                                     ; $50c4: $02
	sbc  c                                           ; $50c5: $99
	ld   [bc], a                                     ; $50c6: $02
	rra                                              ; $50c7: $1f
	ld   a, c                                        ; $50c8: $79
	ld   [hl], d                                     ; $50c9: $72
	ld   d, d                                        ; $50ca: $52
	ld   [hl], h                                     ; $50cb: $74
	nop                                              ; $50cc: $00
	nop                                              ; $50cd: $00
	inc  b                                           ; $50ce: $04
	dec  de                                          ; $50cf: $1b
	inc  b                                           ; $50d0: $04
	sub  d                                           ; $50d1: $92
	ld   a, c                                        ; $50d2: $79
	ld   [hl], d                                     ; $50d3: $72
	ld   d, d                                        ; $50d4: $52
	ld   [hl], h                                     ; $50d5: $74
	nop                                              ; $50d6: $00
	ld   bc, $0804                                   ; $50d7: $01 $04 $08
	ld   [bc], a                                     ; $50da: $02
	adc  a                                           ; $50db: $8f
	ld   [bc], a                                     ; $50dc: $02
	sub  b                                           ; $50dd: $90
	ld   [bc], a                                     ; $50de: $02
	sub  c                                           ; $50df: $91
	inc  b                                           ; $50e0: $04
	add  hl, bc                                      ; $50e1: $09
	ld   a, c                                        ; $50e2: $79
	ld   [hl], d                                     ; $50e3: $72
	ld   d, d                                        ; $50e4: $52
	ld   [hl], h                                     ; $50e5: $74
	nop                                              ; $50e6: $00
	ld   [bc], a                                     ; $50e7: $02
	rlca                                             ; $50e8: $07
	or   b                                           ; $50e9: $b0
	nop                                              ; $50ea: $00
	ld   [bc], a                                     ; $50eb: $02
	inc  bc                                          ; $50ec: $03
	ld   bc, $2000                                   ; $50ed: $01 $00 $20
	nop                                              ; $50f0: $00
	rlca                                             ; $50f1: $07
	ld   [hl], $02                                   ; $50f2: $36 $02
	ld   [bc], a                                     ; $50f4: $02
	inc  bc                                          ; $50f5: $03
	ld   bc, $2001                                   ; $50f6: $01 $01 $20
	nop                                              ; $50f9: $00
	rlca                                             ; $50fa: $07
	jp   c, $0203                                    ; $50fb: $da $03 $02

	inc  bc                                          ; $50fe: $03
	ld   bc, $2002                                   ; $50ff: $01 $02 $20
	nop                                              ; $5102: $00
	ld   b, $8a                                      ; $5103: $06 $8a
	nop                                              ; $5105: $00
	inc  e                                           ; $5106: $1c
	ld   bc, $0101                                   ; $5107: $01 $01 $01
	ld   bc, $a502                                   ; $510a: $01 $02 $a5
	inc  b                                           ; $510d: $04
	xor  d                                           ; $510e: $aa
	sub  b                                           ; $510f: $90
	ld   [bc], a                                     ; $5110: $02
	jr   nz, jr_04d_5117                             ; $5111: $20 $04

	xor  d                                           ; $5113: $aa
	sbc  [hl]                                        ; $5114: $9e
	dec  c                                           ; $5115: $0d
	ld   e, d                                        ; $5116: $5a

jr_04d_5117:
	and  c                                           ; $5117: $a1
	ld   a, [hl]                                     ; $5118: $7e
	sbc  b                                           ; $5119: $98
	adc  h                                           ; $511a: $8c
	ld   h, l                                        ; $511b: $65
	sub  l                                           ; $511c: $95
	ld   d, h                                        ; $511d: $54
	ld   a, e                                        ; $511e: $7b
	sbc  a                                           ; $511f: $9f
	dec  c                                           ; $5120: $0d
	nop                                              ; $5121: $00
	ld   a, [bc]                                     ; $5122: $0a
	dec  c                                           ; $5123: $0d
	nop                                              ; $5124: $00
	nop                                              ; $5125: $00
	rrca                                             ; $5126: $0f
	nop                                              ; $5127: $00
	ld   bc, $1e09                                   ; $5128: $01 $09 $1e
	nop                                              ; $512b: $00
	rrca                                             ; $512c: $0f
	nop                                              ; $512d: $00
	ld   bc, $0201                                   ; $512e: $01 $01 $02
	sbc  c                                           ; $5131: $99
	ld   [bc], a                                     ; $5132: $02
	rra                                              ; $5133: $1f
	ld   a, h                                        ; $5134: $7c
	ld   h, c                                        ; $5135: $61
	halt                                             ; $5136: $76
	ld   a, b                                        ; $5137: $78
	and  c                                           ; $5138: $a1
	ld   [hl], l                                     ; $5139: $75
	ld   h, a                                        ; $513a: $67
	ld   e, a                                        ; $513b: $5f
	ld   [hl], a                                     ; $513c: $77
	rst  $38                                         ; $513d: $ff
	rst  $38                                         ; $513e: $ff
	dec  c                                           ; $513f: $0d
	ld   [bc], a                                     ; $5140: $02
	sbc  c                                           ; $5141: $99
	ld   [bc], a                                     ; $5142: $02
	rra                                              ; $5143: $1f
	inc  b                                           ; $5144: $04
	dec  bc                                          ; $5145: $0b
	ld   a, c                                        ; $5146: $79
	inc  bc                                          ; $5147: $03
	add  b                                           ; $5148: $80
	inc  b                                           ; $5149: $04
	dec  de                                          ; $514a: $1b
	ld   e, d                                        ; $514b: $5a
	ld   d, b                                        ; $514c: $50
	ld   [hl], c                                     ; $514d: $71
	ld   l, l                                        ; $514e: $6d
	sub  a                                           ; $514f: $97
	dec  c                                           ; $5150: $0d
	ld   [hl], a                                     ; $5151: $77
	ld   d, h                                        ; $5152: $54
	ld   h, a                                        ; $5153: $67
	sbc  c                                           ; $5154: $99
	and  c                                           ; $5155: $a1
	ld   [hl], l                                     ; $5156: $75
	ld   h, a                                        ; $5157: $67
	ld   e, c                                        ; $5158: $59
	ld   sp, hl                                      ; $5159: $f9
	dec  c                                           ; $515a: $0d
	nop                                              ; $515b: $00
	ld   a, [bc]                                     ; $515c: $0a
	inc  e                                           ; $515d: $1c
	ld   bc, $0000                                   ; $515e: $01 $00 $00
	ld   bc, $9902                                   ; $5161: $01 $02 $99
	ld   [bc], a                                     ; $5164: $02
	rra                                              ; $5165: $1f
	and  b                                           ; $5166: $a0
	inc  b                                           ; $5167: $04
	dec  bc                                          ; $5168: $0b
	inc  bc                                          ; $5169: $03
	ld   b, c                                        ; $516a: $41
	ld   h, l                                        ; $516b: $65
	ld   [hl], h                                     ; $516c: $74
	sbc  [hl]                                        ; $516d: $9e
	inc  bc                                          ; $516e: $03
	add  b                                           ; $516f: $80
	inc  b                                           ; $5170: $04
	dec  de                                          ; $5171: $1b
	ld   h, l                                        ; $5172: $65
	adc  h                                           ; $5173: $8c
	ld   h, a                                        ; $5174: $67
	sbc  a                                           ; $5175: $9f
	dec  c                                           ; $5176: $0d
	ld   [bc], a                                     ; $5177: $02
	sbc  b                                           ; $5178: $98
	inc  bc                                          ; $5179: $03
	nop                                              ; $517a: $00
	ld   a, h                                        ; $517b: $7c
	adc  l                                           ; $517c: $8d
	and  c                                           ; $517d: $a1
	ld   a, b                                        ; $517e: $78
	ld   [hl], l                                     ; $517f: $75
	ld   [bc], a                                     ; $5180: $02
	sbc  c                                           ; $5181: $99
	ld   [bc], a                                     ; $5182: $02
	rra                                              ; $5183: $1f
	inc  b                                           ; $5184: $04
	dec  bc                                          ; $5185: $0b
	inc  bc                                          ; $5186: $03
	ld   b, c                                        ; $5187: $41
	ld   a, h                                        ; $5188: $7c
	dec  c                                           ; $5189: $0d
	ld   e, b                                        ; $518a: $58
	sbc  l                                           ; $518b: $9d
	add  c                                           ; $518c: $81
	and  b                                           ; $518d: $a0
	ld   e, b                                        ; $518e: $58
	ld   [bc], a                                     ; $518f: $02
	add  c                                           ; $5190: $81
	ld   h, e                                        ; $5191: $63
	and  c                                           ; $5192: $a1
	ld   a, c                                        ; $5193: $79
	ld   h, l                                        ; $5194: $65
	ld   [hl], h                                     ; $5195: $74
	sbc  a                                           ; $5196: $9f
	dec  c                                           ; $5197: $0d
	nop                                              ; $5198: $00
	ld   a, [bc]                                     ; $5199: $0a
	rrca                                             ; $519a: $0f
	nop                                              ; $519b: $00
	ld   bc, $5801                                   ; $519c: $01 $01 $58
	ld   [bc], a                                     ; $519f: $02
	add  c                                           ; $51a0: $81
	ld   h, e                                        ; $51a1: $63
	and  c                                           ; $51a2: $a1
	ld   a, l                                        ; $51a3: $7d
	sbc  [hl]                                        ; $51a4: $9e
	adc  l                                           ; $51a5: $8d
	ld   a, b                                        ; $51a6: $78
	inc  bc                                          ; $51a7: $03
	and  [hl]                                        ; $51a8: $a6
	inc  bc                                          ; $51a9: $03
	jp   c, $0d79                                    ; $51aa: $da $79 $0d

	ld   [bc], a                                     ; $51ad: $02
	or   l                                           ; $51ae: $b5
	sbc  c                                           ; $51af: $99
	and  c                                           ; $51b0: $a1
	ld   [hl], l                                     ; $51b1: $75
	ld   h, a                                        ; $51b2: $67
	ld   e, c                                        ; $51b3: $59
	ld   sp, hl                                      ; $51b4: $f9
	dec  c                                           ; $51b5: $0d
	nop                                              ; $51b6: $00
	ld   a, [bc]                                     ; $51b7: $0a
	inc  e                                           ; $51b8: $1c
	ld   bc, $0101                                   ; $51b9: $01 $01 $01
	ld   bc, $9a6b                                   ; $51bc: $01 $6b $9a
	ld   e, d                                        ; $51bf: $5a
	ld   a, e                                        ; $51c0: $7b
	sbc  [hl]                                        ; $51c1: $9e
	ld   h, c                                        ; $51c2: $61
	ld   a, h                                        ; $51c3: $7c
	ld   [bc], a                                     ; $51c4: $02
	xor  c                                           ; $51c5: $a9
	ld   a, b                                        ; $51c6: $78
	and  c                                           ; $51c7: $a1
	ld   e, c                                        ; $51c8: $59
	dec  c                                           ; $51c9: $0d
	ld   d, b                                        ; $51ca: $50
	ld   l, l                                        ; $51cb: $6d
	ld   h, l                                        ; $51cc: $65
	ld   l, l                                        ; $51cd: $6d
	ld   l, a                                        ; $51ce: $6f
	ld   e, d                                        ; $51cf: $5a
	inc  bc                                          ; $51d0: $03
	add  b                                           ; $51d1: $80
	inc  b                                           ; $51d2: $04
	dec  de                                          ; $51d3: $1b
	ld   e, c                                        ; $51d4: $59
	sub  a                                           ; $51d5: $97
	inc  b                                           ; $51d6: $04
	jp   Jump_04d_7471                               ; $51d7: $c3 $71 $74


	dec  c                                           ; $51da: $0d
	ld   e, e                                        ; $51db: $5b
	ld   l, l                                        ; $51dc: $6d
	sub  a                                           ; $51dd: $97
	sbc  [hl]                                        ; $51de: $9e
	ld   e, b                                        ; $51df: $58
	ld   [hl], a                                     ; $51e0: $77
	sbc  e                                           ; $51e1: $9b
	ld   d, d                                        ; $51e2: $52
	ld   l, l                                        ; $51e3: $6d
	ld   h, c                                        ; $51e4: $61
	halt                                             ; $51e5: $76
	ld   a, c                                        ; $51e6: $79
	rst  $38                                         ; $51e7: $ff
	dec  c                                           ; $51e8: $0d
	nop                                              ; $51e9: $00
	ld   a, [bc]                                     ; $51ea: $0a
	ld   bc, $0258                                   ; $51eb: $01 $58 $02
	add  c                                           ; $51ee: $81
	ld   h, e                                        ; $51ef: $63
	and  c                                           ; $51f0: $a1
	adc  l                                           ; $51f1: $8d
	and  c                                           ; $51f2: $a1
	ld   a, b                                        ; $51f3: $78
	sbc  [hl]                                        ; $51f4: $9e
	inc  b                                           ; $51f5: $04
	rla                                              ; $51f6: $17
	ld   [hl], c                                     ; $51f7: $71
	ld   [hl], h                                     ; $51f8: $74
	ld   [hl], h                                     ; $51f9: $74
	ld   e, l                                        ; $51fa: $5d
	sbc  d                                           ; $51fb: $9a
	dec  c                                           ; $51fc: $0d
	ld   l, l                                        ; $51fd: $6d
	and  c                                           ; $51fe: $a1
	ld   [hl], l                                     ; $51ff: $75
	ld   h, a                                        ; $5200: $67
	sub  [hl]                                        ; $5201: $96
	sbc  a                                           ; $5202: $9f
	sub  b                                           ; $5203: $90
	ld   d, h                                        ; $5204: $54
	ld   [bc], a                                     ; $5205: $02
	sbc  b                                           ; $5206: $98
	inc  bc                                          ; $5207: $03
	nop                                              ; $5208: $00
	ld   a, h                                        ; $5209: $7c
	adc  l                                           ; $520a: $8d
	and  c                                           ; $520b: $a1
	ld   a, b                                        ; $520c: $78
	dec  c                                           ; $520d: $0d
	ld   [bc], a                                     ; $520e: $02
	scf                                              ; $520f: $37
	inc  b                                           ; $5210: $04
	dec  de                                          ; $5211: $1b
	ld   h, l                                        ; $5212: $65
	ld   l, a                                        ; $5213: $6f
	sub  c                                           ; $5214: $91
	ld   [hl], c                                     ; $5215: $71
	ld   [hl], h                                     ; $5216: $74
	rst  $38                                         ; $5217: $ff
	dec  c                                           ; $5218: $0d
	nop                                              ; $5219: $00
	ld   a, [bc]                                     ; $521a: $0a
	ld   bc, $a803                                   ; $521b: $01 $03 $a8
	ld   d, d                                        ; $521e: $52
	ld   a, h                                        ; $521f: $7c
	inc  b                                           ; $5220: $04
	ld   a, e                                        ; $5221: $7b
	sbc  d                                           ; $5222: $9a
	ld   a, b                                        ; $5223: $78
	and  c                                           ; $5224: $a1
	ld   e, c                                        ; $5225: $59
	dec  b                                           ; $5226: $05
	rst  JumpTable                                         ; $5227: $df
	ld   [hl], c                                     ; $5228: $71
	inc  b                                           ; $5229: $04
	ld   a, a                                        ; $522a: $7f
	and  c                                           ; $522b: $a1
	ld   h, [hl]                                     ; $522c: $66
	sub  c                                           ; $522d: $91
	dec  c                                           ; $522e: $0d
	ld   [hl], c                                     ; $522f: $71
	ld   [hl], h                                     ; $5230: $74
	sbc  [hl]                                        ; $5231: $9e
	ld   d, b                                        ; $5232: $50
	ld   l, l                                        ; $5233: $6d
	ld   h, l                                        ; $5234: $65
	ld   l, l                                        ; $5235: $6d
	ld   l, a                                        ; $5236: $6f
	ld   a, h                                        ; $5237: $7c
	dec  b                                           ; $5238: $05
	ld   a, [bc]                                     ; $5239: $0a
	ld   d, d                                        ; $523a: $52
	ld   [hl], c                                     ; $523b: $71
	ld   a, a                                        ; $523c: $7f
	ld   d, d                                        ; $523d: $52
	dec  c                                           ; $523e: $0d
	ld   a, h                                        ; $523f: $7c
	inc  b                                           ; $5240: $04
	adc  [hl]                                        ; $5241: $8e
	inc  b                                           ; $5242: $04
	inc  c                                           ; $5243: $0c
	and  b                                           ; $5244: $a0
	ld   [bc], a                                     ; $5245: $02
	sub  l                                           ; $5246: $95
	ld   [hl], h                                     ; $5247: $74
	sub  b                                           ; $5248: $90
	sub  a                                           ; $5249: $97
	ld   [hl], c                                     ; $524a: $71
	ld   l, l                                        ; $524b: $6d
	and  c                                           ; $524c: $a1
	ld   [hl], l                                     ; $524d: $75
	ld   h, a                                        ; $524e: $67
	sbc  a                                           ; $524f: $9f
	dec  c                                           ; $5250: $0d
	nop                                              ; $5251: $00
	ld   a, [bc]                                     ; $5252: $0a
	rrca                                             ; $5253: $0f
	nop                                              ; $5254: $00
	ld   bc, $6701                                   ; $5255: $01 $01 $67
	ld   h, d                                        ; $5258: $62
	ld   d, d                                        ; $5259: $52

Jump_04d_525a:
	ld   [hl], l                                     ; $525a: $75
	ld   h, a                                        ; $525b: $67
	ld   a, e                                        ; $525c: $7b
	sbc  a                                           ; $525d: $9f
	dec  c                                           ; $525e: $0d
	inc  b                                           ; $525f: $04
	ld   l, l                                        ; $5260: $6d
	sub  b                                           ; $5261: $90
	sbc  [hl]                                        ; $5262: $9e
	adc  l                                           ; $5263: $8d
	ld   a, b                                        ; $5264: $78
	ld   h, e                                        ; $5265: $63
	and  c                                           ; $5266: $a1
	ld   a, c                                        ; $5267: $79
	inc  b                                           ; $5268: $04
	ld   a, l                                        ; $5269: $7d
	ld   e, a                                        ; $526a: $5f
	ld   a, b                                        ; $526b: $78
	ld   d, d                                        ; $526c: $52
	sub  [hl]                                        ; $526d: $96
	ld   d, h                                        ; $526e: $54
	dec  c                                           ; $526f: $0d
	ld   e, d                                        ; $5270: $5a
	and  c                                           ; $5271: $a1
	ld   a, [hl]                                     ; $5272: $7e
	sbc  b                                           ; $5273: $98
	adc  h                                           ; $5274: $8c
	ld   h, a                                        ; $5275: $67

Jump_04d_5276:
	sbc  a                                           ; $5276: $9f
	dec  c                                           ; $5277: $0d
	nop                                              ; $5278: $00
	ld   a, [bc]                                     ; $5279: $0a
	inc  e                                           ; $527a: $1c
	ld   bc, $0101                                   ; $527b: $01 $01 $01
	dec  e                                           ; $527e: $1d
	ld   b, b                                        ; $527f: $40
	ld   de, $1103                                   ; $5280: $11 $03 $11
	ld   bc, $2802                                   ; $5283: $01 $02 $28
	nop                                              ; $5286: $00
	ld   bc, $546b                                   ; $5287: $01 $6b $54
	ld   [hl], l                                     ; $528a: $75
	ld   h, a                                        ; $528b: $67
	ld   a, e                                        ; $528c: $7b
	sbc  a                                           ; $528d: $9f
	dec  c                                           ; $528e: $0d
	ld   h, [hl]                                     ; $528f: $66
	sub  c                                           ; $5290: $91
	sbc  [hl]                                        ; $5291: $9e
	ld   [bc], a                                     ; $5292: $02
	and  l                                           ; $5293: $a5
	inc  b                                           ; $5294: $04
	xor  d                                           ; $5295: $aa
	sub  b                                           ; $5296: $90
	ld   [bc], a                                     ; $5297: $02
	jr   nz, jr_04d_529e                             ; $5298: $20 $04

	xor  d                                           ; $529a: $aa
	dec  c                                           ; $529b: $0d
	ld   e, d                                        ; $529c: $5a
	and  c                                           ; $529d: $a1

jr_04d_529e:
	ld   a, [hl]                                     ; $529e: $7e
	ld   [hl], c                                     ; $529f: $71
	ld   [hl], h                                     ; $52a0: $74
	ld   e, l                                        ; $52a1: $5d
	ld   l, [hl]                                     ; $52a2: $6e
	ld   h, e                                        ; $52a3: $63
	ld   d, d                                        ; $52a4: $52
	sbc  a                                           ; $52a5: $9f
	dec  c                                           ; $52a6: $0d
	nop                                              ; $52a7: $00
	ld   a, [bc]                                     ; $52a8: $0a
	dec  c                                           ; $52a9: $0d
	nop                                              ; $52aa: $00
	nop                                              ; $52ab: $00
	rrca                                             ; $52ac: $0f
	nop                                              ; $52ad: $00
	ld   bc, $1e09                                   ; $52ae: $01 $09 $1e
	nop                                              ; $52b1: $00
	rrca                                             ; $52b2: $0f
	nop                                              ; $52b3: $00
	ld   bc, $6301                                   ; $52b4: $01 $01 $63
	ld   e, l                                        ; $52b7: $5d
	sub  a                                           ; $52b8: $97
	ld   h, e                                        ; $52b9: $63
	and  c                                           ; $52ba: $a1
	ld   a, l                                        ; $52bb: $7d
	sbc  [hl]                                        ; $52bc: $9e
	dec  c                                           ; $52bd: $0d
	inc  b                                           ; $52be: $04
	dec  de                                          ; $52bf: $1b
	inc  b                                           ; $52c0: $04
	sub  d                                           ; $52c1: $92
	and  b                                           ; $52c2: $a0
	inc  bc                                          ; $52c3: $03
	sbc  e                                           ; $52c4: $9b
	ld   [hl], c                                     ; $52c5: $71
	ld   l, l                                        ; $52c6: $6d
	ld   [bc], a                                     ; $52c7: $02
	jp   Jump_04d_507d                               ; $52c8: $c3 $7d $50


	sbc  b                                           ; $52cb: $98
	adc  h                                           ; $52cc: $8c
	ld   h, a                                        ; $52cd: $67
	ld   e, c                                        ; $52ce: $59
	ld   sp, hl                                      ; $52cf: $f9
	dec  c                                           ; $52d0: $0d
	nop                                              ; $52d1: $00
	ld   a, [bc]                                     ; $52d2: $0a
	inc  e                                           ; $52d3: $1c
	ld   bc, $0101                                   ; $52d4: $01 $01 $01
	ld   bc, $9850                                   ; $52d7: $01 $50 $98
	adc  h                                           ; $52da: $8c
	ld   l, c                                        ; $52db: $69
	and  c                                           ; $52dc: $a1
	ld   e, a                                        ; $52dd: $5f
	ld   [hl], a                                     ; $52de: $77
	rst  $38                                         ; $52df: $ff
	rst  $38                                         ; $52e0: $ff
	dec  c                                           ; $52e1: $0d
	ld   [hl], l                                     ; $52e2: $75
	sub  b                                           ; $52e3: $90
	sbc  [hl]                                        ; $52e4: $9e
	ld   [bc], a                                     ; $52e5: $02
	sbc  h                                           ; $52e6: $9c
	halt                                             ; $52e7: $76
	ld   e, c                                        ; $52e8: $59
	ld   [bc], a                                     ; $52e9: $02
	sbc  d                                           ; $52ea: $9a
	ld   e, e                                        ; $52eb: $5b
	ld   [hl], l                                     ; $52ec: $75
	ld   h, a                                        ; $52ed: $67
	sub  [hl]                                        ; $52ee: $96
	sbc  a                                           ; $52ef: $9f
	dec  c                                           ; $52f0: $0d
	nop                                              ; $52f1: $00
	ld   a, [bc]                                     ; $52f2: $0a
	add  hl, de                                      ; $52f3: $19
	dec  b                                           ; $52f4: $05
	inc  bc                                          ; $52f5: $03
	ld   [bc], a                                     ; $52f6: $02
	sbc  h                                           ; $52f7: $9c
	ld   a, l                                        ; $52f8: $7d
	ld   d, d                                        ; $52f9: $52
	ld   d, d                                        ; $52fa: $52
	ld   [hl], l                                     ; $52fb: $75
	ld   h, a                                        ; $52fc: $67
	sub  [hl]                                        ; $52fd: $96
	ld   a, e                                        ; $52fe: $7b
	nop                                              ; $52ff: $00
	nop                                              ; $5300: $00
	ld   b, $1b                                      ; $5301: $06 $1b
	ld   a, h                                        ; $5303: $7c
	inc  b                                           ; $5304: $04
	ld   a, b                                        ; $5305: $78
	ld   e, d                                        ; $5306: $5a
	ld   d, d                                        ; $5307: $52
	ld   d, d                                        ; $5308: $52
	ld   [hl], l                                     ; $5309: $75
	ld   h, l                                        ; $530a: $65
	sub  l                                           ; $530b: $95
	ld   d, h                                        ; $530c: $54
	nop                                              ; $530d: $00
	ld   bc, $0103                                   ; $530e: $01 $03 $01
	ld   [bc], a                                     ; $5311: $02
	sbc  h                                           ; $5312: $9c
	ld   e, d                                        ; $5313: $5a
	ld   [bc], a                                     ; $5314: $02
	jr   nz, jr_04d_531b                             ; $5315: $20 $04

	ld   a, c                                        ; $5317: $79
	adc  l                                           ; $5318: $8d
	ld   l, l                                        ; $5319: $6d
	ld   d, d                                        ; $531a: $52

jr_04d_531b:
	ld   [hl], l                                     ; $531b: $75
	ld   h, a                                        ; $531c: $67
	ld   a, e                                        ; $531d: $7b
	nop                                              ; $531e: $00
	ld   [bc], a                                     ; $531f: $02
	rlca                                             ; $5320: $07
	jp   nz, $0202                                   ; $5321: $c2 $02 $02

	inc  bc                                          ; $5324: $03
	ld   bc, $2000                                   ; $5325: $01 $00 $20
	nop                                              ; $5328: $00
	rlca                                             ; $5329: $07
	rla                                              ; $532a: $17
	inc  bc                                          ; $532b: $03
	ld   [bc], a                                     ; $532c: $02
	inc  bc                                          ; $532d: $03
	ld   bc, $2001                                   ; $532e: $01 $01 $20
	nop                                              ; $5331: $00
	rlca                                             ; $5332: $07
	ld   e, a                                        ; $5333: $5f
	inc  bc                                          ; $5334: $03
	ld   [bc], a                                     ; $5335: $02
	inc  bc                                          ; $5336: $03
	ld   bc, $2002                                   ; $5337: $01 $02 $20
	nop                                              ; $533a: $00
	ld   b, $a5                                      ; $533b: $06 $a5
	inc  bc                                          ; $533d: $03
	rrca                                             ; $533e: $0f
	nop                                              ; $533f: $00
	ld   bc, $0201                                   ; $5340: $01 $01 $02
	sbc  h                                           ; $5343: $9c
	ld   a, l                                        ; $5344: $7d
	ld   d, d                                        ; $5345: $52
	ld   d, d                                        ; $5346: $52
	ld   [hl], l                                     ; $5347: $75
	ld   h, a                                        ; $5348: $67
	sub  [hl]                                        ; $5349: $96
	ld   a, e                                        ; $534a: $7b
	sbc  a                                           ; $534b: $9f
	dec  c                                           ; $534c: $0d
	nop                                              ; $534d: $00
	ld   a, [bc]                                     ; $534e: $0a
	inc  e                                           ; $534f: $1c
	ld   bc, $0101                                   ; $5350: $01 $01 $01
	dec  e                                           ; $5353: $1d
	ld   b, b                                        ; $5354: $40
	ld   de, $1103                                   ; $5355: $11 $03 $11
	ld   bc, $2802                                   ; $5358: $01 $02 $28
	nop                                              ; $535b: $00
	ld   bc, $5656                                   ; $535c: $01 $56 $56
	sbc  [hl]                                        ; $535f: $9e
	ld   h, c                                        ; $5360: $61
	ld   a, h                                        ; $5361: $7c
	ld   [bc], a                                     ; $5362: $02
	xor  c                                           ; $5363: $a9
	ld   [bc], a                                     ; $5364: $02
	sub  l                                           ; $5365: $95
	ld   e, c                                        ; $5366: $59
	ld   e, a                                        ; $5367: $5f
	ld   l, l                                        ; $5368: $6d
	inc  b                                           ; $5369: $04
	ld   c, $5b                                      ; $536a: $0e $5b
	ld   d, d                                        ; $536c: $52
	ld   [bc], a                                     ; $536d: $02
	sbc  h                                           ; $536e: $9c
	dec  c                                           ; $536f: $0d
	rst  $38                                         ; $5370: $ff
	rst  $38                                         ; $5371: $ff
	cp   b                                           ; $5372: $b8
	xor  b                                           ; $5373: $a8
	jp   nc, $cafb                                   ; $5374: $d2 $fb $ca

	ld   [hl], l                                     ; $5377: $75
	ld   h, l                                        ; $5378: $65
	ld   l, l                                        ; $5379: $6d
	ld   [hl], c                                     ; $537a: $71
	ld   e, a                                        ; $537b: $5f
	ld   sp, hl                                      ; $537c: $f9
	dec  c                                           ; $537d: $0d
	ld   d, b                                        ; $537e: $50
	and  c                                           ; $537f: $a1
	ld   a, b                                        ; $5380: $78
	ld   [bc], a                                     ; $5381: $02
	sbc  h                                           ; $5382: $9c
	and  b                                           ; $5383: $a0
	inc  bc                                          ; $5384: $03
	sbc  e                                           ; $5385: $9b
	ld   d, d                                        ; $5386: $52
	ld   l, l                                        ; $5387: $6d
	ld   d, d                                        ; $5388: $52
	ld   [hl], l                                     ; $5389: $75
	ld   h, a                                        ; $538a: $67
	ld   a, e                                        ; $538b: $7b
	sbc  a                                           ; $538c: $9f
	dec  c                                           ; $538d: $0d
	nop                                              ; $538e: $00
	ld   a, [bc]                                     ; $538f: $0a
	ld   b, $a5                                      ; $5390: $06 $a5
	inc  bc                                          ; $5392: $03
	rrca                                             ; $5393: $0f
	nop                                              ; $5394: $00
	ld   bc, $0601                                   ; $5395: $01 $01 $06
	dec  de                                          ; $5398: $1b
	ld   a, h                                        ; $5399: $7c
	inc  b                                           ; $539a: $04
	ld   a, b                                        ; $539b: $78
	ld   e, d                                        ; $539c: $5a
	ld   d, d                                        ; $539d: $52
	ld   d, d                                        ; $539e: $52
	ld   [hl], l                                     ; $539f: $75
	ld   h, l                                        ; $53a0: $65
	sub  l                                           ; $53a1: $95
	ld   d, h                                        ; $53a2: $54
	sbc  a                                           ; $53a3: $9f
	dec  c                                           ; $53a4: $0d
	nop                                              ; $53a5: $00
	ld   a, [bc]                                     ; $53a6: $0a
	inc  e                                           ; $53a7: $1c
	ld   bc, $0000                                   ; $53a8: $01 $00 $00
	dec  e                                           ; $53ab: $1d
	ld   b, b                                        ; $53ac: $40
	ld   de, $1103                                   ; $53ad: $11 $03 $11
	ld   bc, $2801                                   ; $53b0: $01 $01 $28
	nop                                              ; $53b3: $00
	ld   bc, $1b06                                   ; $53b4: $01 $06 $1b
	sub  b                                           ; $53b7: $90
	ld   [bc], a                                     ; $53b8: $02
	adc  e                                           ; $53b9: $8b
	ld   [bc], a                                     ; $53ba: $02
	dec  hl                                          ; $53bb: $2b
	ld   d, d                                        ; $53bc: $52
	ld   [hl], l                                     ; $53bd: $75
	ld   h, a                                        ; $53be: $67
	sub  [hl]                                        ; $53bf: $96
	ld   a, e                                        ; $53c0: $7b
	sbc  a                                           ; $53c1: $9f
	dec  c                                           ; $53c2: $0d
	cp   b                                           ; $53c3: $b8
	rst  $28                                         ; $53c4: $ef
	ld   b, $1b                                      ; $53c5: $06 $1b
	halt                                             ; $53c7: $76
	ld   e, c                                        ; $53c8: $59
	sbc  [hl]                                        ; $53c9: $9e
	inc  bc                                          ; $53ca: $03
	inc  sp                                          ; $53cb: $33
	inc  b                                           ; $53cc: $04
	ret  nc                                          ; $53cd: $d0

	ld   b, $1b                                      ; $53ce: $06 $1b
	halt                                             ; $53d0: $76
	ld   e, c                                        ; $53d1: $59
	ld   d, d                                        ; $53d2: $52
	ld   [hl], h                                     ; $53d3: $74
	sbc  a                                           ; $53d4: $9f
	dec  c                                           ; $53d5: $0d
	nop                                              ; $53d6: $00
	ld   a, [bc]                                     ; $53d7: $0a
	ld   b, $a5                                      ; $53d8: $06 $a5
	inc  bc                                          ; $53da: $03
	rrca                                             ; $53db: $0f
	nop                                              ; $53dc: $00
	ld   bc, $0301                                   ; $53dd: $01 $01 $03
	ld   bc, $9c02                                   ; $53e0: $01 $02 $9c
	ld   e, d                                        ; $53e3: $5a
	ld   [bc], a                                     ; $53e4: $02
	jr   nz, jr_04d_53eb                             ; $53e5: $20 $04

	ld   a, c                                        ; $53e7: $79
	adc  l                                           ; $53e8: $8d
	ld   l, l                                        ; $53e9: $6d
	ld   d, d                                        ; $53ea: $52

jr_04d_53eb:
	ld   [hl], l                                     ; $53eb: $75
	ld   h, a                                        ; $53ec: $67
	ld   a, e                                        ; $53ed: $7b
	sbc  a                                           ; $53ee: $9f
	dec  c                                           ; $53ef: $0d
	nop                                              ; $53f0: $00
	ld   a, [bc]                                     ; $53f1: $0a
	inc  e                                           ; $53f2: $1c
	ld   bc, $0303                                   ; $53f3: $01 $03 $03
	ld   bc, $f956                                   ; $53f6: $01 $56 $f9
	dec  c                                           ; $53f9: $0d
	inc  b                                           ; $53fa: $04
	ld   c, c                                        ; $53fb: $49
	ld   e, d                                        ; $53fc: $5a
	ld   [bc], a                                     ; $53fd: $02
	jr   nz, jr_04d_5404                             ; $53fe: $20 $04

	ld   a, c                                        ; $5400: $79
	ld   a, b                                        ; $5401: $78
	and  c                                           ; $5402: $a1
	ld   [hl], l                                     ; $5403: $75

jr_04d_5404:
	ld   h, a                                        ; $5404: $67
	ld   e, c                                        ; $5405: $59
	ld   sp, hl                                      ; $5406: $f9
	dec  c                                           ; $5407: $0d
	nop                                              ; $5408: $00
	ld   a, [bc]                                     ; $5409: $0a
	rrca                                             ; $540a: $0f
	nop                                              ; $540b: $00
	ld   bc, $5201                                   ; $540c: $01 $01 $52
	ld   d, [hl]                                     ; $540f: $56
	rst  $38                                         ; $5410: $ff
	rst  $38                                         ; $5411: $ff
	inc  b                                           ; $5412: $04
	and  e                                           ; $5413: $a3
	sbc  d                                           ; $5414: $9a
	ld   [hl], h                                     ; $5415: $74
	ld   [bc], a                                     ; $5416: $02
	inc  [hl]                                        ; $5417: $34
	ld   h, e                                        ; $5418: $63
	ld   d, d                                        ; $5419: $52
	sbc  a                                           ; $541a: $9f
	dec  c                                           ; $541b: $0d
	nop                                              ; $541c: $00
	ld   a, [bc]                                     ; $541d: $0a
	ld   b, $a5                                      ; $541e: $06 $a5
	inc  bc                                          ; $5420: $03
	inc  e                                           ; $5421: $1c
	ld   bc, $0000                                   ; $5422: $01 $00 $00
	ld   bc, $9166                                   ; $5425: $01 $66 $91
	sbc  [hl]                                        ; $5428: $9e
	ld   d, b                                        ; $5429: $50
	ld   l, l                                        ; $542a: $6d
	ld   h, l                                        ; $542b: $65
	ld   [bc], a                                     ; $542c: $02
	ld   a, a                                        ; $542d: $7f
	ld   e, e                                        ; $542e: $5b
	adc  h                                           ; $542f: $8c
	ld   h, a                                        ; $5430: $67
	ld   e, c                                        ; $5431: $59
	sub  a                                           ; $5432: $97
	sbc  a                                           ; $5433: $9f
	dec  c                                           ; $5434: $0d
	ld   [bc], a                                     ; $5435: $02
	and  l                                           ; $5436: $a5
	inc  b                                           ; $5437: $04
	xor  d                                           ; $5438: $aa
	sub  b                                           ; $5439: $90
	ld   [bc], a                                     ; $543a: $02
	jr   nz, jr_04d_5441                             ; $543b: $20 $04

	xor  d                                           ; $543d: $aa
	sbc  [hl]                                        ; $543e: $9e
	dec  c                                           ; $543f: $0d
	ld   e, d                                        ; $5440: $5a

jr_04d_5441:
	and  c                                           ; $5441: $a1
	ld   a, [hl]                                     ; $5442: $7e
	ld   [hl], c                                     ; $5443: $71
	ld   [hl], h                                     ; $5444: $74
	ld   e, l                                        ; $5445: $5d
	ld   l, [hl]                                     ; $5446: $6e
	ld   h, e                                        ; $5447: $63
	ld   d, d                                        ; $5448: $52
	sbc  a                                           ; $5449: $9f
	dec  c                                           ; $544a: $0d
	nop                                              ; $544b: $00
	ld   a, [bc]                                     ; $544c: $0a
	dec  c                                           ; $544d: $0d
	nop                                              ; $544e: $00
	nop                                              ; $544f: $00
	rrca                                             ; $5450: $0f
	nop                                              ; $5451: $00
	ld   bc, $1e09                                   ; $5452: $01 $09 $1e
	nop                                              ; $5455: $00
	rrca                                             ; $5456: $0f
	nop                                              ; $5457: $00
	ld   bc, $7601                                   ; $5458: $01 $01 $76
	ld   h, c                                        ; $545b: $61
	sbc  e                                           ; $545c: $9b
	ld   [hl], l                                     ; $545d: $75
	dec  c                                           ; $545e: $0d
	inc  b                                           ; $545f: $04
	inc  e                                           ; $5460: $1c

Jump_04d_5461:
	dec  b                                           ; $5461: $05
	rla                                              ; $5462: $17
	ld   [bc], a                                     ; $5463: $02
	add  $01                                         ; $5464: $c6 $01
	inc  bc                                          ; $5466: $03
	ld   h, d                                        ; $5467: $62
	ld   d, h                                        ; $5468: $54
	sub  a                                           ; $5469: $97
	ld   d, d                                        ; $546a: $52
	ld   h, d                                        ; $546b: $62
	ld   d, h                                        ; $546c: $54
	ld   bc, $0d04                                   ; $546d: $01 $04 $0d
	ld   [hl], c                                     ; $5470: $71
	ld   [hl], h                                     ; $5471: $74
	ld   a, b                                        ; $5472: $78
	and  c                                           ; $5473: $a1
	ld   [hl], l                                     ; $5474: $75
	ld   h, a                                        ; $5475: $67
	ld   e, c                                        ; $5476: $59
	ld   sp, hl                                      ; $5477: $f9
	dec  c                                           ; $5478: $0d
	nop                                              ; $5479: $00
	ld   a, [bc]                                     ; $547a: $0a
	inc  e                                           ; $547b: $1c
	ld   bc, $0000                                   ; $547c: $01 $00 $00
	ld   bc, $1c04                                   ; $547f: $01 $04 $1c
	dec  b                                           ; $5482: $05
	rla                                              ; $5483: $17
	ld   [bc], a                                     ; $5484: $02
	add  $7d                                         ; $5485: $c6 $7d
	ld   [bc], a                                     ; $5487: $02
	jr   c, jr_04d_548e                              ; $5488: $38 $04

	ld   d, d                                        ; $548a: $52
	and  b                                           ; $548b: $a0
	ld   b, $2c                                      ; $548c: $06 $2c

jr_04d_548e:
	inc  bc                                          ; $548e: $03
	sbc  a                                           ; $548f: $9f
	ld   h, a                                        ; $5490: $67
	sbc  c                                           ; $5491: $99
	dec  c                                           ; $5492: $0d
	inc  bc                                          ; $5493: $03
	adc  $02                                         ; $5494: $ce $02
	inc  [hl]                                        ; $5496: $34
	ld   b, $39                                      ; $5497: $06 $39
	inc  bc                                          ; $5499: $03
	sub  l                                           ; $549a: $95
	ld   a, h                                        ; $549b: $7c
	ld   h, c                                        ; $549c: $61
	halt                                             ; $549d: $76
	ld   [hl], l                                     ; $549e: $75
	ld   h, a                                        ; $549f: $67
	sub  [hl]                                        ; $54a0: $96
	sbc  a                                           ; $54a1: $9f
	dec  c                                           ; $54a2: $0d
	nop                                              ; $54a3: $00
	ld   a, [bc]                                     ; $54a4: $0a
	rrca                                             ; $54a5: $0f
	nop                                              ; $54a6: $00
	ld   bc, $0401                                   ; $54a7: $01 $01 $04
	ld   l, l                                        ; $54aa: $6d
	sub  b                                           ; $54ab: $90
	inc  bc                                          ; $54ac: $03
	cp   c                                           ; $54ad: $b9
	sbc  d                                           ; $54ae: $9a
	adc  h                                           ; $54af: $8c
	ld   h, a                                        ; $54b0: $67
	ld   e, c                                        ; $54b1: $59
	ld   a, e                                        ; $54b2: $7b
	rst  $38                                         ; $54b3: $ff
	rst  $38                                         ; $54b4: $ff
	dec  c                                           ; $54b5: $0d
	nop                                              ; $54b6: $00
	ld   a, [bc]                                     ; $54b7: $0a
	inc  e                                           ; $54b8: $1c
	ld   bc, $0404                                   ; $54b9: $01 $04 $04
	ld   bc, $0008                                   ; $54bc: $01 $08 $00
	ld   h, e                                        ; $54bf: $63
	and  c                                           ; $54c0: $a1
	ld   a, l                                        ; $54c1: $7d
	dec  c                                           ; $54c2: $0d
	inc  bc                                          ; $54c3: $03
	ld   c, d                                        ; $54c4: $4a
	dec  b                                           ; $54c5: $05
	and  d                                           ; $54c6: $a2
	ld   a, h                                        ; $54c7: $7c
	inc  b                                           ; $54c8: $04
	ld   a, [bc]                                     ; $54c9: $0a
	ld   [bc], a                                     ; $54ca: $02
	nop                                              ; $54cb: $00
	ld   h, [hl]                                     ; $54cc: $66
	sub  c                                           ; $54cd: $91
	ld   a, b                                        ; $54ce: $78
	ld   d, d                                        ; $54cf: $52
	ld   e, c                                        ; $54d0: $59
	sub  a                                           ; $54d1: $97
	dec  c                                           ; $54d2: $0d
	adc  [hl]                                        ; $54d3: $8e
	ld   l, b                                        ; $54d4: $68
	ld   e, c                                        ; $54d5: $59
	ld   h, l                                        ; $54d6: $65
	ld   d, d                                        ; $54d7: $52
	halt                                             ; $54d8: $76
	dec  b                                           ; $54d9: $05
	pop  de                                          ; $54da: $d1
	ld   d, d                                        ; $54db: $52
	adc  h                                           ; $54dc: $8c
	ld   h, a                                        ; $54dd: $67
	sub  [hl]                                        ; $54de: $96
	sbc  a                                           ; $54df: $9f
	dec  c                                           ; $54e0: $0d
	nop                                              ; $54e1: $00
	ld   a, [bc]                                     ; $54e2: $0a
	inc  e                                           ; $54e3: $1c
	ld   bc, $0606                                   ; $54e4: $01 $06 $06
	ld   bc, $9a6b                                   ; $54e7: $01 $6b $9a
	ld   a, c                                        ; $54ea: $79
	inc  bc                                          ; $54eb: $03
	add  b                                           ; $54ec: $80
	ld   [bc], a                                     ; $54ed: $02
	sub  c                                           ; $54ee: $91
	ld   a, b                                        ; $54ef: $78
	and  c                                           ; $54f0: $a1
	ld   e, c                                        ; $54f1: $59
	ld   a, b                                        ; $54f2: $78
	ld   d, d                                        ; $54f3: $52
	adc  c                                           ; $54f4: $89
	ld   d, h                                        ; $54f5: $54
	ld   e, d                                        ; $54f6: $5a
	dec  c                                           ; $54f7: $0d
	inc  b                                           ; $54f8: $04
	adc  a                                           ; $54f9: $8f
	inc  b                                           ; $54fa: $04
	jr   jr_04d_557a                                 ; $54fb: $18 $7d

	ld   d, d                                        ; $54fd: $52
	ld   d, d                                        ; $54fe: $52
	and  c                                           ; $54ff: $a1
	ld   [hl], l                                     ; $5500: $75
	ld   h, a                                        ; $5501: $67
	ld   e, c                                        ; $5502: $59
	sub  a                                           ; $5503: $97
	sbc  a                                           ; $5504: $9f
	dec  c                                           ; $5505: $0d
	nop                                              ; $5506: $00
	ld   a, [bc]                                     ; $5507: $0a
	inc  e                                           ; $5508: $1c
	ld   bc, $0000                                   ; $5509: $01 $00 $00
	ld   bc, $9166                                   ; $550c: $01 $66 $91
	sbc  [hl]                                        ; $550f: $9e
	ld   d, b                                        ; $5510: $50
	ld   l, l                                        ; $5511: $6d
	ld   h, l                                        ; $5512: $65
	ld   [bc], a                                     ; $5513: $02
	ld   a, a                                        ; $5514: $7f
	ld   e, e                                        ; $5515: $5b
	adc  h                                           ; $5516: $8c
	ld   h, a                                        ; $5517: $67
	ld   e, c                                        ; $5518: $59
	sub  a                                           ; $5519: $97
	sbc  a                                           ; $551a: $9f
	dec  c                                           ; $551b: $0d
	ld   [bc], a                                     ; $551c: $02
	and  l                                           ; $551d: $a5
	inc  b                                           ; $551e: $04
	xor  d                                           ; $551f: $aa
	sub  b                                           ; $5520: $90
	ld   [bc], a                                     ; $5521: $02
	jr   nz, jr_04d_5528                             ; $5522: $20 $04

	xor  d                                           ; $5524: $aa
	sbc  [hl]                                        ; $5525: $9e
	dec  c                                           ; $5526: $0d
	ld   e, d                                        ; $5527: $5a

jr_04d_5528:
	and  c                                           ; $5528: $a1
	ld   a, [hl]                                     ; $5529: $7e
	ld   [hl], c                                     ; $552a: $71
	ld   [hl], h                                     ; $552b: $74
	ld   e, l                                        ; $552c: $5d
	ld   l, [hl]                                     ; $552d: $6e
	ld   h, e                                        ; $552e: $63
	ld   d, d                                        ; $552f: $52
	sbc  a                                           ; $5530: $9f
	dec  c                                           ; $5531: $0d
	nop                                              ; $5532: $00
	ld   a, [bc]                                     ; $5533: $0a
	dec  c                                           ; $5534: $0d
	nop                                              ; $5535: $00
	nop                                              ; $5536: $00
	rrca                                             ; $5537: $0f
	nop                                              ; $5538: $00
	ld   bc, $1e09                                   ; $5539: $01 $09 $1e
	nop                                              ; $553c: $00
	nop                                              ; $553d: $00
	inc  b                                           ; $553e: $04
	add  b                                           ; $553f: $80
	ld   [hl], e                                     ; $5540: $73
	ld   bc, $2000                                   ; $5541: $01 $00 $20
	nop                                              ; $5544: $00
	ld   c, $2f                                      ; $5545: $0e $2f
	inc  e                                           ; $5547: $1c
	dec  c                                           ; $5548: $0d
	nop                                              ; $5549: $00
	nop                                              ; $554a: $00
	ld   [bc], a                                     ; $554b: $02
	ld   bc, $9750                                   ; $554c: $01 $50 $97
	sbc  [hl]                                        ; $554f: $9e
	ld   [$5d00], sp                                 ; $5550: $08 $00 $5d
	and  c                                           ; $5553: $a1
	sbc  a                                           ; $5554: $9f
	dec  c                                           ; $5555: $0d
	nop                                              ; $5556: $00
	ld   a, [bc]                                     ; $5557: $0a
	inc  e                                           ; $5558: $1c
	dec  c                                           ; $5559: $0d
	ld   bc, $0101                                   ; $555a: $01 $01 $01
	ld   a, e                                        ; $555d: $7b
	ld   d, [hl]                                     ; $555e: $56
	sbc  [hl]                                        ; $555f: $9e
	inc  b                                           ; $5560: $04
	dec  hl                                          ; $5561: $2b
	ld   [hl], c                                     ; $5562: $71
	ld   [hl], h                                     ; $5563: $74
	sbc  c                                           ; $5564: $99
	ld   sp, hl                                      ; $5565: $f9
	dec  c                                           ; $5566: $0d
	nop                                              ; $5567: $00
	ld   a, [bc]                                     ; $5568: $0a
	ld   bc, $ecdf                                   ; $5569: $01 $df $ec
	and  e                                           ; $556c: $a3
	ld   h, e                                        ; $556d: $63
	and  c                                           ; $556e: $a1
	ld   a, e                                        ; $556f: $7b
	dec  c                                           ; $5570: $0d
	db   $dd                                         ; $5571: $dd
	db   $ed                                         ; $5572: $ed
	cp   b                                           ; $5573: $b8
	jp   nz, $037c                                   ; $5574: $c2 $7c $03

	jr   nc, jr_04d_557e                             ; $5577: $30 $05

	ld   [bc], a                                     ; $5579: $02

jr_04d_557a:
	ld   a, h                                        ; $557a: $7c
	call z, $b9f5                                    ; $557b: $cc $f5 $b9

jr_04d_557e:
	push af                                          ; $557e: $f5
	and  b                                           ; $557f: $a0
	dec  c                                           ; $5580: $0d
	ld   h, e                                        ; $5581: $63
	ld   e, d                                        ; $5582: $5a
	ld   h, l                                        ; $5583: $65
	ld   [hl], h                                     ; $5584: $74
	ld   d, d                                        ; $5585: $52
	sbc  c                                           ; $5586: $99
	ld   l, e                                        ; $5587: $6b
	ld   d, h                                        ; $5588: $54
	sub  [hl]                                        ; $5589: $96
	sbc  a                                           ; $558a: $9f
	dec  c                                           ; $558b: $0d
	nop                                              ; $558c: $00
	ld   a, [bc]                                     ; $558d: $0a
	ld   bc, $6d50                                   ; $558e: $01 $50 $6d
	ld   h, l                                        ; $5591: $65
	ld   a, h                                        ; $5592: $7c
	ld   d, h                                        ; $5593: $54
	sbc  l                                           ; $5594: $9d
	ld   h, e                                        ; $5595: $63
	dec  b                                           ; $5596: $05
	jr   nz, jr_04d_5616                             ; $5597: $20 $7d

	sbc  [hl]                                        ; $5599: $9e
	dec  c                                           ; $559a: $0d
	ld   e, b                                        ; $559b: $58
	adc  d                                           ; $559c: $8a
	ld   d, [hl]                                     ; $559d: $56
	halt                                             ; $559e: $76
	ld   d, d                                        ; $559f: $52
	ld   [hl], h                                     ; $55a0: $74
	cp   [hl]                                        ; $55a1: $be
	push af                                          ; $55a2: $f5
	ld   a, l                                        ; $55a3: $7d
	ld   a, b                                        ; $55a4: $78
	ld   d, d                                        ; $55a5: $52
	ld   e, c                                        ; $55a6: $59
	sub  a                                           ; $55a7: $97
	sbc  a                                           ; $55a8: $9f
	dec  c                                           ; $55a9: $0d
	ld   h, [hl]                                     ; $55aa: $66
	sub  c                                           ; $55ab: $91
	ld   d, b                                        ; $55ac: $50
	ld   a, e                                        ; $55ad: $7b
	sbc  a                                           ; $55ae: $9f
	dec  c                                           ; $55af: $0d
	nop                                              ; $55b0: $00
	ld   a, [bc]                                     ; $55b1: $0a
	nop                                              ; $55b2: $00
	nop                                              ; $55b3: $00
	rrca                                             ; $55b4: $0f
	nop                                              ; $55b5: $00
	ld   bc, $040d                                   ; $55b6: $01 $0d $04
	nop                                              ; $55b9: $00
	ld   [bc], a                                     ; $55ba: $02
	ld   bc, $7d58                                   ; $55bb: $01 $58 $7d
	sub  [hl]                                        ; $55be: $96
	ld   d, h                                        ; $55bf: $54
	sbc  [hl]                                        ; $55c0: $9e
	and  e                                           ; $55c1: $a3
	and  l                                           ; $55c2: $a5
	db   $ec                                         ; $55c3: $ec
	cp   d                                           ; $55c4: $ba
	sbc  a                                           ; $55c5: $9f
	dec  c                                           ; $55c6: $0d
	nop                                              ; $55c7: $00
	ld   a, [bc]                                     ; $55c8: $0a
	rrca                                             ; $55c9: $0f
	inc  b                                           ; $55ca: $04
	nop                                              ; $55cb: $00
	ld   bc, $526f                                   ; $55cc: $01 $6f $52
	ld   [bc], a                                     ; $55cf: $02
	inc  de                                          ; $55d0: $13
	ld   l, a                                        ; $55d1: $6f
	sub  c                                           ; $55d2: $91
	and  c                                           ; $55d3: $a1
	dec  c                                           ; $55d4: $0d
	ld   e, b                                        ; $55d5: $58
	ld   a, l                                        ; $55d6: $7d
	sub  [hl]                                        ; $55d7: $96
	ld   d, h                                        ; $55d8: $54
	sbc  a                                           ; $55d9: $9f
	dec  c                                           ; $55da: $0d
	nop                                              ; $55db: $00
	ld   a, [bc]                                     ; $55dc: $0a
	rrca                                             ; $55dd: $0f
	nop                                              ; $55de: $00
	ld   bc, $0101                                   ; $55df: $01 $01 $01
	inc  bc                                          ; $55e2: $03
	inc  b                                           ; $55e3: $04
	ld   c, c                                        ; $55e4: $49
	and  b                                           ; $55e5: $a0
	ld   [bc], a                                     ; $55e6: $02
	jp   nz, Jump_04d_5461                           ; $55e7: $c2 $61 $54

	ld   e, c                                        ; $55ea: $59
	rst  $38                                         ; $55eb: $ff
	rst  $38                                         ; $55ec: $ff
	ld   bc, $0d04                                   ; $55ed: $01 $04 $0d
	nop                                              ; $55f0: $00
	ld   a, [bc]                                     ; $55f1: $0a
	add  hl, de                                      ; $55f2: $19
	dec  b                                           ; $55f3: $05
	inc  bc                                          ; $55f4: $03
	and  e                                           ; $55f5: $a3
	and  l                                           ; $55f6: $a5
	db   $ec                                         ; $55f7: $ec
	cp   d                                           ; $55f8: $ba
	ld   a, c                                        ; $55f9: $79
	ld   [hl], d                                     ; $55fa: $72
	ld   d, d                                        ; $55fb: $52
	ld   [hl], h                                     ; $55fc: $74
	ld   [bc], a                                     ; $55fd: $02
	jp   nz, $005d                                   ; $55fe: $c2 $5d $00

	nop                                              ; $5601: $00
	cp   c                                           ; $5602: $b9
	push hl                                          ; $5603: $e5
	push af                                          ; $5604: $f5
	sbc  $fb                                         ; $5605: $de $fb
	db   $ed                                         ; $5607: $ed
	ld   a, c                                        ; $5608: $79
	ld   [hl], d                                     ; $5609: $72
	ld   d, d                                        ; $560a: $52
	ld   [hl], h                                     ; $560b: $74
	ld   [bc], a                                     ; $560c: $02
	jp   nz, $005d                                   ; $560d: $c2 $5d $00

	ld   bc, $8a04                                   ; $5610: $01 $04 $8a
	inc  bc                                          ; $5613: $03
	ld   e, [hl]                                     ; $5614: $5e
	ld   [bc], a                                     ; $5615: $02

jr_04d_5616:
	adc  h                                           ; $5616: $8c
	ld   a, c                                        ; $5617: $79
	ld   [hl], d                                     ; $5618: $72
	ld   d, d                                        ; $5619: $52
	ld   [hl], h                                     ; $561a: $74
	ld   [bc], a                                     ; $561b: $02
	jp   nz, $005d                                   ; $561c: $c2 $5d $00

	ld   [bc], a                                     ; $561f: $02
	rlca                                             ; $5620: $07
	and  h                                           ; $5621: $a4
	nop                                              ; $5622: $00
	ld   [bc], a                                     ; $5623: $02
	inc  bc                                          ; $5624: $03
	ld   bc, $2000                                   ; $5625: $01 $00 $20
	nop                                              ; $5628: $00
	rlca                                             ; $5629: $07
	dec  c                                           ; $562a: $0d
	ld   [bc], a                                     ; $562b: $02
	ld   [bc], a                                     ; $562c: $02
	inc  bc                                          ; $562d: $03
	ld   bc, $2001                                   ; $562e: $01 $01 $20
	nop                                              ; $5631: $00
	rlca                                             ; $5632: $07
	ld   e, e                                        ; $5633: $5b
	ld   [bc], a                                     ; $5634: $02
	ld   [bc], a                                     ; $5635: $02
	inc  bc                                          ; $5636: $03
	ld   bc, $2002                                   ; $5637: $01 $02 $20
	nop                                              ; $563a: $00
	ld   b, $8a                                      ; $563b: $06 $8a
	nop                                              ; $563d: $00
	inc  e                                           ; $563e: $1c
	inc  b                                           ; $563f: $04
	ld   bc, $0101                                   ; $5640: $01 $01 $01
	ld   e, e                                        ; $5643: $5b
	sub  l                                           ; $5644: $95
	ld   d, h                                        ; $5645: $54
	sub  b                                           ; $5646: $90
	ld   d, d                                        ; $5647: $52
	ld   l, a                                        ; $5648: $6f
	ld   a, c                                        ; $5649: $79
	ld   l, a                                        ; $564a: $6f
	dec  c                                           ; $564b: $0d
	ld   e, d                                        ; $564c: $5a
	and  c                                           ; $564d: $a1
	ld   a, [hl]                                     ; $564e: $7e
	sbc  e                                           ; $564f: $9b
	ld   d, h                                        ; $5650: $54
	ld   a, e                                        ; $5651: $7b
	ei                                               ; $5652: $fb
	ld   a, [$000d]                                  ; $5653: $fa $0d $00
	ld   a, [bc]                                     ; $5656: $0a
	nop                                              ; $5657: $00
	rrca                                             ; $5658: $0f
	nop                                              ; $5659: $00
	ld   bc, $a301                                   ; $565a: $01 $01 $a3
	and  l                                           ; $565d: $a5
	db   $ec                                         ; $565e: $ec
	cp   d                                           ; $565f: $ba
	ld   a, h                                        ; $5660: $7c
	inc  bc                                          ; $5661: $03
	db   $fc                                         ; $5662: $fc
	inc  bc                                          ; $5663: $03
	ld   d, d                                        ; $5664: $52
	inc  b                                           ; $5665: $04
	xor  d                                           ; $5666: $aa
	ld   a, l                                        ; $5667: $7d
	dec  c                                           ; $5668: $0d
	ld   d, d                                        ; $5669: $52
	ld   [hl], d                                     ; $566a: $72
	ld   a, b                                        ; $566b: $78
	ld   a, h                                        ; $566c: $7c
	ld   sp, hl                                      ; $566d: $f9
	dec  c                                           ; $566e: $0d
	nop                                              ; $566f: $00
	ld   a, [bc]                                     ; $5670: $0a
	inc  e                                           ; $5671: $1c
	inc  b                                           ; $5672: $04
	nop                                              ; $5673: $00
	nop                                              ; $5674: $00
	ld   bc, $5a18                                   ; $5675: $01 $18 $5a
	ld   [hl], d                                     ; $5678: $72
	ld   d, $79                                      ; $5679: $16 $79
	ld   l, a                                        ; $567b: $6f
	ld   l, [hl]                                     ; $567c: $6e
	sub  [hl]                                        ; $567d: $96
	sbc  a                                           ; $567e: $9f
	dec  c                                           ; $567f: $0d
	nop                                              ; $5680: $00
	ld   a, [bc]                                     ; $5681: $0a
	add  hl, de                                      ; $5682: $19
	dec  b                                           ; $5683: $05
	inc  bc                                          ; $5684: $03
	ld   e, c                                        ; $5685: $59
	ld   a, c                                        ; $5686: $79
	inc  bc                                          ; $5687: $03
	ld   d, h                                        ; $5688: $54
	ld   l, [hl]                                     ; $5689: $6e
	ld   a, e                                        ; $568a: $7b
	nop                                              ; $568b: $00
	nop                                              ; $568c: $00
	ld   h, l                                        ; $568d: $65
	ld   h, l                                        ; $568e: $65
	inc  bc                                          ; $568f: $03
	ld   d, h                                        ; $5690: $54
	ld   l, [hl]                                     ; $5691: $6e
	ld   a, e                                        ; $5692: $7b
	nop                                              ; $5693: $00
	ld   bc, $955c                                   ; $5694: $01 $5c $95
	ld   d, h                                        ; $5697: $54
	inc  bc                                          ; $5698: $03
	ld   d, h                                        ; $5699: $54
	ld   l, [hl]                                     ; $569a: $6e
	ld   a, e                                        ; $569b: $7b
	nop                                              ; $569c: $00
	ld   [bc], a                                     ; $569d: $02
	rlca                                             ; $569e: $07
	ld   [$0201], sp                                 ; $569f: $08 $01 $02
	inc  bc                                          ; $56a2: $03
	ld   bc, $2000                                   ; $56a3: $01 $00 $20
	nop                                              ; $56a6: $00
	rlca                                             ; $56a7: $07
	ld   b, c                                        ; $56a8: $41
	ld   bc, $0302                                   ; $56a9: $01 $02 $03
	ld   bc, $2001                                   ; $56ac: $01 $01 $20
	nop                                              ; $56af: $00
	rlca                                             ; $56b0: $07
	ld   [hl], e                                     ; $56b1: $73
	ld   bc, $0302                                   ; $56b2: $01 $02 $03
	ld   bc, $2002                                   ; $56b5: $01 $02 $20
	nop                                              ; $56b8: $00
	ld   b, $ef                                      ; $56b9: $06 $ef
	ld   bc, $000f                                   ; $56bb: $01 $0f $00
	ld   bc, $5901                                   ; $56be: $01 $01 $59
	ld   a, c                                        ; $56c1: $79
	inc  bc                                          ; $56c2: $03
	ld   d, h                                        ; $56c3: $54
	ld   l, [hl]                                     ; $56c4: $6e
	ld   a, e                                        ; $56c5: $7b
	ld   sp, hl                                      ; $56c6: $f9
	dec  c                                           ; $56c7: $0d
	nop                                              ; $56c8: $00
	ld   a, [bc]                                     ; $56c9: $0a
	inc  e                                           ; $56ca: $1c
	inc  b                                           ; $56cb: $04
	ld   bc, $1d01                                   ; $56cc: $01 $01 $1d
	ld   b, b                                        ; $56cf: $40
	inc  d                                           ; $56d0: $14
	inc  bc                                          ; $56d1: $03
	inc  d                                           ; $56d2: $14
	ld   bc, $2802                                   ; $56d3: $01 $02 $28
	nop                                              ; $56d6: $00
	ld   bc, $a154                                   ; $56d7: $01 $54 $a1
	sbc  [hl]                                        ; $56da: $9e
	ld   l, e                                        ; $56db: $6b
	ld   d, h                                        ; $56dc: $54
	ld   l, [hl]                                     ; $56dd: $6e
	sub  [hl]                                        ; $56de: $96
	sbc  a                                           ; $56df: $9f
	dec  c                                           ; $56e0: $0d
	ld   l, a                                        ; $56e1: $6f
	ld   d, d                                        ; $56e2: $52
	ld   [bc], a                                     ; $56e3: $02
	inc  de                                          ; $56e4: $13
	ld   l, a                                        ; $56e5: $6f
	sub  c                                           ; $56e6: $91
	and  c                                           ; $56e7: $a1
	sbc  [hl]                                        ; $56e8: $9e
	sub  b                                           ; $56e9: $90
	ld   a, h                                        ; $56ea: $7c
	ld   h, l                                        ; $56eb: $65
	sbc  b                                           ; $56ec: $98
	ei                                               ; $56ed: $fb
	ld   a, [$000d]                                  ; $56ee: $fa $0d $00
	ld   a, [bc]                                     ; $56f1: $0a
	ld   b, $ef                                      ; $56f2: $06 $ef
	ld   bc, $000f                                   ; $56f4: $01 $0f $00
	ld   bc, $6501                                   ; $56f7: $01 $01 $65
	ld   h, l                                        ; $56fa: $65
	inc  bc                                          ; $56fb: $03
	ld   d, h                                        ; $56fc: $54
	ld   l, [hl]                                     ; $56fd: $6e
	ld   a, e                                        ; $56fe: $7b
	ld   sp, hl                                      ; $56ff: $f9
	dec  c                                           ; $5700: $0d
	nop                                              ; $5701: $00
	ld   a, [bc]                                     ; $5702: $0a
	inc  e                                           ; $5703: $1c
	inc  b                                           ; $5704: $04
	ld   b, $06                                      ; $5705: $06 $06
	dec  e                                           ; $5707: $1d
	ld   b, b                                        ; $5708: $40
	inc  d                                           ; $5709: $14
	inc  bc                                          ; $570a: $03
	inc  d                                           ; $570b: $14
	ld   bc, $2901                                   ; $570c: $01 $01 $29
	nop                                              ; $570f: $00
	ld   bc, $fb56                                   ; $5710: $01 $56 $fb
	sbc  [hl]                                        ; $5713: $9e
	ld   l, a                                        ; $5714: $6f
	ld   e, d                                        ; $5715: $5a
	ld   d, h                                        ; $5716: $54
	sub  [hl]                                        ; $5717: $96
	rst  $38                                         ; $5718: $ff
	rst  $38                                         ; $5719: $ff
	dec  c                                           ; $571a: $0d
	ld   e, c                                        ; $571b: $59
	ld   a, c                                        ; $571c: $79
	ld   h, h                                        ; $571d: $64
	ld   l, [hl]                                     ; $571e: $6e
	sub  [hl]                                        ; $571f: $96
	sbc  a                                           ; $5720: $9f
	dec  c                                           ; $5721: $0d
	nop                                              ; $5722: $00
	ld   a, [bc]                                     ; $5723: $0a
	ld   b, $ef                                      ; $5724: $06 $ef
	ld   bc, $000f                                   ; $5726: $01 $0f $00
	ld   bc, $5c01                                   ; $5729: $01 $01 $5c
	sub  l                                           ; $572c: $95
	ld   d, h                                        ; $572d: $54
	inc  bc                                          ; $572e: $03
	ld   d, h                                        ; $572f: $54
	ld   l, [hl]                                     ; $5730: $6e
	ld   a, e                                        ; $5731: $7b
	ld   sp, hl                                      ; $5732: $f9
	dec  c                                           ; $5733: $0d
	nop                                              ; $5734: $00
	ld   a, [bc]                                     ; $5735: $0a
	inc  e                                           ; $5736: $1c
	inc  b                                           ; $5737: $04
	rlca                                             ; $5738: $07
	rlca                                             ; $5739: $07
	ld   bc, $9a6b                                   ; $573a: $01 $6b $9a
	ld   a, l                                        ; $573d: $7d
	sbc  [hl]                                        ; $573e: $9e
	ld   bc, $5c07                                   ; $573f: $01 $07 $5c
	sub  l                                           ; $5742: $95
	ld   d, h                                        ; $5743: $54
	ld   h, h                                        ; $5744: $64
	ld   bc, $7508                                   ; $5745: $01 $08 $75
	ld   h, l                                        ; $5748: $65
	sub  l                                           ; $5749: $95
	sbc  a                                           ; $574a: $9f
	dec  c                                           ; $574b: $0d
	ld   e, h                                        ; $574c: $5c
	sub  l                                           ; $574d: $95
	ld   d, h                                        ; $574e: $54
	ld   h, h                                        ; $574f: $64
	ld   a, l                                        ; $5750: $7d
	sbc  [hl]                                        ; $5751: $9e
	ld   l, l                                        ; $5752: $6d
	add  a                                           ; $5753: $87
	sub  b                                           ; $5754: $90
	ld   a, h                                        ; $5755: $7c
	ld   l, [hl]                                     ; $5756: $6e
	sub  [hl]                                        ; $5757: $96
	sbc  a                                           ; $5758: $9f
	dec  c                                           ; $5759: $0d
	nop                                              ; $575a: $00
	ld   a, [bc]                                     ; $575b: $0a
	dec  e                                           ; $575c: $1d
	ld   b, b                                        ; $575d: $40
	inc  d                                           ; $575e: $14
	inc  bc                                          ; $575f: $03
	inc  d                                           ; $5760: $14
	ld   bc, $2903                                   ; $5761: $01 $03 $29
	nop                                              ; $5764: $00
	ld   bc, $526f                                   ; $5765: $01 $6f $52
	ld   [bc], a                                     ; $5768: $02
	inc  de                                          ; $5769: $13
	ld   l, a                                        ; $576a: $6f
	sub  c                                           ; $576b: $91
	and  c                                           ; $576c: $a1
	rst  $38                                         ; $576d: $ff
	rst  $38                                         ; $576e: $ff
	dec  c                                           ; $576f: $0d
	sub  b                                           ; $5770: $90
	ld   h, l                                        ; $5771: $65
	ld   e, c                                        ; $5772: $59
	ld   h, l                                        ; $5773: $65
	ld   [hl], h                                     ; $5774: $74
	and  e                                           ; $5775: $a3
	and  l                                           ; $5776: $a5
	db   $ec                                         ; $5777: $ec
	cp   d                                           ; $5778: $ba
	and  b                                           ; $5779: $a0
	dec  c                                           ; $577a: $0d
	pop  de                                          ; $577b: $d1
	xor  h                                           ; $577c: $ac
	ld   a, c                                        ; $577d: $79
	ld   h, l                                        ; $577e: $65
	ld   [hl], h                                     ; $577f: $74
	sbc  c                                           ; $5780: $99
	ld   [hl], l                                     ; $5781: $75
	ld   h, l                                        ; $5782: $65
	sub  l                                           ; $5783: $95
	rst  $38                                         ; $5784: $ff
	rst  $38                                         ; $5785: $ff
	ld   sp, hl                                      ; $5786: $f9
	dec  c                                           ; $5787: $0d
	nop                                              ; $5788: $00
	ld   a, [bc]                                     ; $5789: $0a
	inc  e                                           ; $578a: $1c
	inc  b                                           ; $578b: $04
	ld   [bc], a                                     ; $578c: $02
	ld   [bc], a                                     ; $578d: $02
	ld   bc, $5490                                   ; $578e: $01 $90 $54
	sbc  [hl]                                        ; $5791: $9e
	ld   h, l                                        ; $5792: $65
	sub  a                                           ; $5793: $97
	ld   a, b                                        ; $5794: $78
	ld   d, d                                        ; $5795: $52
	ld   a, [$000d]                                  ; $5796: $fa $0d $00
	ld   a, [bc]                                     ; $5799: $0a
	dec  c                                           ; $579a: $0d
	nop                                              ; $579b: $00
	nop                                              ; $579c: $00
	rrca                                             ; $579d: $0f
	nop                                              ; $579e: $00
	ld   bc, $1e09                                   ; $579f: $01 $09 $1e
	nop                                              ; $57a2: $00
	inc  e                                           ; $57a3: $1c
	inc  b                                           ; $57a4: $04
	nop                                              ; $57a5: $00
	nop                                              ; $57a6: $00
	ld   bc, $9166                                   ; $57a7: $01 $66 $91
	sbc  [hl]                                        ; $57aa: $9e
	ld   d, d                                        ; $57ab: $52
	ld   h, c                                        ; $57ac: $61
	ld   d, h                                        ; $57ad: $54
	cp   c                                           ; $57ae: $b9
	push hl                                          ; $57af: $e5
	push af                                          ; $57b0: $f5
	sbc  $fb                                         ; $57b1: $de $fb
	db   $ed                                         ; $57b3: $ed
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
	ld   bc, $b901                                   ; $57c3: $01 $01 $b9
	push hl                                          ; $57c6: $e5
	push af                                          ; $57c7: $f5
	sbc  $fb                                         ; $57c8: $de $fb
	db   $ed                                         ; $57ca: $ed
	ld   [hl], c                                     ; $57cb: $71
	ld   [hl], h                                     ; $57cc: $74
	dec  c                                           ; $57cd: $0d
	ld   [bc], a                                     ; $57ce: $02
	dec  d                                           ; $57cf: $15
	ld   a, h                                        ; $57d0: $7c
	inc  bc                                          ; $57d1: $03
	add  [hl]                                        ; $57d2: $86
	ld   sp, hl                                      ; $57d3: $f9
	db   $10                                         ; $57d4: $10
	inc  bc                                          ; $57d5: $03
	ld   l, [hl]                                     ; $57d6: $6e
	ld   a, h                                        ; $57d7: $7c
	inc  bc                                          ; $57d8: $03
	add  [hl]                                        ; $57d9: $86
	ld   sp, hl                                      ; $57da: $f9
	dec  c                                           ; $57db: $0d
	nop                                              ; $57dc: $00
	ld   a, [bc]                                     ; $57dd: $0a
	inc  e                                           ; $57de: $1c
	inc  b                                           ; $57df: $04
	ld   bc, $0101                                   ; $57e0: $01 $01 $01
	ld   e, b                                        ; $57e3: $58
	halt                                             ; $57e4: $76
	ld   h, c                                        ; $57e5: $61
	ld   a, h                                        ; $57e6: $7c
	ld   h, c                                        ; $57e7: $61
	ld   l, [hl]                                     ; $57e8: $6e
	sub  [hl]                                        ; $57e9: $96
	sbc  a                                           ; $57ea: $9f
	dec  c                                           ; $57eb: $0d
	ld   a, e                                        ; $57ec: $7b
	sbc  [hl]                                        ; $57ed: $9e
	cp   c                                           ; $57ee: $b9
	push hl                                          ; $57ef: $e5
	push af                                          ; $57f0: $f5
	sbc  $fb                                         ; $57f1: $de $fb
	db   $ed                                         ; $57f3: $ed
	sbc  a                                           ; $57f4: $9f
	dec  c                                           ; $57f5: $0d
	nop                                              ; $57f6: $00
	ld   a, [bc]                                     ; $57f7: $0a
	ld   bc, $9166                                   ; $57f8: $01 $66 $91
	sbc  [hl]                                        ; $57fb: $9e
	ld   l, a                                        ; $57fc: $6f
	ld   d, d                                        ; $57fd: $52
	ld   [bc], a                                     ; $57fe: $02
	inc  de                                          ; $57ff: $13
	ld   l, a                                        ; $5800: $6f
	sub  c                                           ; $5801: $91
	and  c                                           ; $5802: $a1
	dec  c                                           ; $5803: $0d
	adc  h                                           ; $5804: $8c
	ld   l, l                                        ; $5805: $6d
	ld   d, b                                        ; $5806: $50
	halt                                             ; $5807: $76
	ld   [hl], l                                     ; $5808: $75
	ld   a, e                                        ; $5809: $7b
	sbc  a                                           ; $580a: $9f
	dec  c                                           ; $580b: $0d
	nop                                              ; $580c: $00
	ld   a, [bc]                                     ; $580d: $0a
	nop                                              ; $580e: $00
	rrca                                             ; $580f: $0f
	nop                                              ; $5810: $00
	ld   bc, $a301                                   ; $5811: $01 $01 $a3
	and  l                                           ; $5814: $a5
	db   $ec                                         ; $5815: $ec
	cp   d                                           ; $5816: $ba
	ld   a, h                                        ; $5817: $7c
	inc  b                                           ; $5818: $04
	adc  d                                           ; $5819: $8a
	inc  bc                                          ; $581a: $03
	ld   e, [hl]                                     ; $581b: $5e
	ld   [bc], a                                     ; $581c: $02
	adc  h                                           ; $581d: $8c
	ld   [hl], c                                     ; $581e: $71
	ld   [hl], h                                     ; $581f: $74
	dec  c                                           ; $5820: $0d
	ld   [hl], a                                     ; $5821: $77
	and  c                                           ; $5822: $a1
	ld   a, b                                        ; $5823: $78
	inc  b                                           ; $5824: $04
	rst  ToBoot                                         ; $5825: $c7
	inc  bc                                          ; $5826: $03
	ld   c, a                                        ; $5827: $4f
	ld   a, b                                        ; $5828: $78
	ld   a, h                                        ; $5829: $7c
	ld   sp, hl                                      ; $582a: $f9
	dec  c                                           ; $582b: $0d
	nop                                              ; $582c: $00
	ld   a, [bc]                                     ; $582d: $0a
	inc  e                                           ; $582e: $1c
	inc  b                                           ; $582f: $04
	nop                                              ; $5830: $00
	nop                                              ; $5831: $00
	ld   bc, $eca5                                   ; $5832: $01 $a5 $ec
	cp   d                                           ; $5835: $ba
	di                                               ; $5836: $f3
	rst  JumpTable                                         ; $5837: $df
	db   $ec                                         ; $5838: $ec
	ld   [$c4ce], a                                  ; $5839: $ea $ce $c4
	ret                                              ; $583c: $c9


	ld   l, [hl]                                     ; $583d: $6e
	sub  [hl]                                        ; $583e: $96
	sbc  a                                           ; $583f: $9f
	dec  c                                           ; $5840: $0d
	nop                                              ; $5841: $00
	ld   a, [bc]                                     ; $5842: $0a
	add  hl, de                                      ; $5843: $19
	dec  b                                           ; $5844: $05
	inc  bc                                          ; $5845: $03
	and  l                                           ; $5846: $a5
	db   $ec                                         ; $5847: $ec
	cp   d                                           ; $5848: $ba
	di                                               ; $5849: $f3
	rst  JumpTable                                         ; $584a: $df
	db   $ec                                         ; $584b: $ec
	ld   [$c4ce], a                                  ; $584c: $ea $ce $c4
	ret                                              ; $584f: $c9


	ld   sp, hl                                      ; $5850: $f9
	nop                                              ; $5851: $00
	nop                                              ; $5852: $00
	and  l                                           ; $5853: $a5
	db   $ec                                         ; $5854: $ec
	cp   d                                           ; $5855: $ba
	di                                               ; $5856: $f3
	cp   b                                           ; $5857: $b8
	push hl                                          ; $5858: $e5
	ret                                              ; $5859: $c9


	ei                                               ; $585a: $fb
	rst  $10                                         ; $585b: $d7
	db   $ec                                         ; $585c: $ec
	and  e                                           ; $585d: $a3
	push af                                          ; $585e: $f5
	ld   sp, hl                                      ; $585f: $f9
	nop                                              ; $5860: $00
	ld   bc, $eca5                                   ; $5861: $01 $a5 $ec
	cp   d                                           ; $5864: $ba
	di                                               ; $5865: $f3
	rst  JumpTable                                         ; $5866: $df
	db   $ec                                         ; $5867: $ec
	ld   [$f5eb], a                                  ; $5868: $ea $eb $f5
	jp   z, $00f9                                    ; $586b: $ca $f9 $00

	ld   [bc], a                                     ; $586e: $02
	rlca                                             ; $586f: $07
	reti                                             ; $5870: $d9


	ld   [bc], a                                     ; $5871: $02
	ld   [bc], a                                     ; $5872: $02
	inc  bc                                          ; $5873: $03
	ld   bc, $2000                                   ; $5874: $01 $00 $20
	nop                                              ; $5877: $00
	rlca                                             ; $5878: $07
	ld   a, [bc]                                     ; $5879: $0a
	inc  bc                                          ; $587a: $03
	ld   [bc], a                                     ; $587b: $02
	inc  bc                                          ; $587c: $03
	ld   bc, $2001                                   ; $587d: $01 $01 $20
	nop                                              ; $5880: $00
	rlca                                             ; $5881: $07
	ld   d, e                                        ; $5882: $53
	inc  bc                                          ; $5883: $03
	ld   [bc], a                                     ; $5884: $02
	inc  bc                                          ; $5885: $03
	ld   bc, $2002                                   ; $5886: $01 $02 $20
	nop                                              ; $5889: $00
	ld   b, $78                                      ; $588a: $06 $78
	inc  bc                                          ; $588c: $03
	rrca                                             ; $588d: $0f
	nop                                              ; $588e: $00
	ld   bc, $a501                                   ; $588f: $01 $01 $a5
	db   $ec                                         ; $5892: $ec
	cp   d                                           ; $5893: $ba
	di                                               ; $5894: $f3
	rst  JumpTable                                         ; $5895: $df
	db   $ec                                         ; $5896: $ec
	ld   [$c4ce], a                                  ; $5897: $ea $ce $c4
	ret                                              ; $589a: $c9


	ld   sp, hl                                      ; $589b: $f9
	dec  c                                           ; $589c: $0d
	nop                                              ; $589d: $00
	ld   a, [bc]                                     ; $589e: $0a
	inc  e                                           ; $589f: $1c
	inc  b                                           ; $58a0: $04
	ld   bc, $1d01                                   ; $58a1: $01 $01 $1d
	ld   b, b                                        ; $58a4: $40
	inc  d                                           ; $58a5: $14
	inc  bc                                          ; $58a6: $03
	inc  d                                           ; $58a7: $14
	ld   bc, $2802                                   ; $58a8: $01 $02 $28
	nop                                              ; $58ab: $00
	ld   bc, $527d                                   ; $58ac: $01 $7d $52
	sbc  [hl]                                        ; $58af: $9e
	sub  [hl]                                        ; $58b0: $96
	ld   e, l                                        ; $58b1: $5d
	ld   [hl], l                                     ; $58b2: $75
	ld   e, e                                        ; $58b3: $5b
	adc  h                                           ; $58b4: $8c
	ld   h, l                                        ; $58b5: $65
	ld   l, l                                        ; $58b6: $6d
	sbc  a                                           ; $58b7: $9f
	dec  c                                           ; $58b8: $0d
	nop                                              ; $58b9: $00
	ld   a, [bc]                                     ; $58ba: $0a
	ld   b, $78                                      ; $58bb: $06 $78
	inc  bc                                          ; $58bd: $03
	inc  e                                           ; $58be: $1c
	inc  b                                           ; $58bf: $04
	inc  bc                                          ; $58c0: $03
	inc  bc                                          ; $58c1: $03
	dec  e                                           ; $58c2: $1d
	ld   b, b                                        ; $58c3: $40
	inc  d                                           ; $58c4: $14
	inc  bc                                          ; $58c5: $03
	inc  d                                           ; $58c6: $14
	ld   bc, $2901                                   ; $58c7: $01 $01 $29
	nop                                              ; $58ca: $00
	ld   bc, $9a6b                                   ; $58cb: $01 $6b $9a
	ld   a, l                                        ; $58ce: $7d
	sbc  [hl]                                        ; $58cf: $9e
	and  e                                           ; $58d0: $a3
	and  l                                           ; $58d1: $a5
	db   $ec                                         ; $58d2: $ec
	cp   d                                           ; $58d3: $ba
	ld   a, h                                        ; $58d4: $7c
	dec  c                                           ; $58d5: $0d
	ld   a, b                                        ; $58d6: $78
	adc  h                                           ; $58d7: $8c
	ld   d, [hl]                                     ; $58d8: $56
	ld   l, [hl]                                     ; $58d9: $6e
	ld   [hl], c                                     ; $58da: $71
	ld   [hl], h                                     ; $58db: $74
	ld   a, [hl]                                     ; $58dc: $7e
	rst  $38                                         ; $58dd: $ff
	rst  $38                                         ; $58de: $ff
	dec  c                                           ; $58df: $0d
	nop                                              ; $58e0: $00
	ld   a, [bc]                                     ; $58e1: $0a
	inc  e                                           ; $58e2: $1c
	inc  b                                           ; $58e3: $04
	nop                                              ; $58e4: $00
	nop                                              ; $58e5: $00
	ld   bc, $7180                                   ; $58e6: $01 $80 $71
	ld   h, e                                        ; $58e9: $63
	ld   [hl], d                                     ; $58ea: $72
	sbc  l                                           ; $58eb: $9d
	ld   h, h                                        ; $58ec: $64
	ld   a, h                                        ; $58ed: $7c
	ld   a, b                                        ; $58ee: $78
	adc  h                                           ; $58ef: $8c
	ld   d, [hl]                                     ; $58f0: $56
	ld   a, l                                        ; $58f1: $7d
	dec  c                                           ; $58f2: $0d
	and  l                                           ; $58f3: $a5
	db   $ec                                         ; $58f4: $ec
	cp   d                                           ; $58f5: $ba
	di                                               ; $58f6: $f3
	rst  JumpTable                                         ; $58f7: $df
	db   $ec                                         ; $58f8: $ec
	ld   [$c4ce], a                                  ; $58f9: $ea $ce $c4
	ret                                              ; $58fc: $c9


	dec  c                                           ; $58fd: $0d
	ld   l, [hl]                                     ; $58fe: $6e
	sub  [hl]                                        ; $58ff: $96
	sbc  a                                           ; $5900: $9f
	dec  c                                           ; $5901: $0d
	nop                                              ; $5902: $00
	ld   a, [bc]                                     ; $5903: $0a
	ld   b, $78                                      ; $5904: $06 $78
	inc  bc                                          ; $5906: $03
	inc  e                                           ; $5907: $1c
	inc  b                                           ; $5908: $04
	inc  bc                                          ; $5909: $03
	inc  bc                                          ; $590a: $03
	dec  e                                           ; $590b: $1d
	ld   b, b                                        ; $590c: $40
	inc  d                                           ; $590d: $14
	inc  bc                                          ; $590e: $03
	inc  d                                           ; $590f: $14
	ld   bc, $2902                                   ; $5910: $01 $02 $29
	nop                                              ; $5913: $00
	ld   bc, $5a6f                                   ; $5914: $01 $6f $5a
	ld   d, h                                        ; $5917: $54
	sub  [hl]                                        ; $5918: $96
	rst  $38                                         ; $5919: $ff
	rst  $38                                         ; $591a: $ff
	dec  c                                           ; $591b: $0d
	and  l                                           ; $591c: $a5
	db   $ec                                         ; $591d: $ec
	cp   d                                           ; $591e: $ba
	di                                               ; $591f: $f3
	rst  JumpTable                                         ; $5920: $df
	db   $ec                                         ; $5921: $ec
	ld   [$c4ce], a                                  ; $5922: $ea $ce $c4
	ret                                              ; $5925: $c9


	ld   l, [hl]                                     ; $5926: $6e
	sub  [hl]                                        ; $5927: $96
	sbc  a                                           ; $5928: $9f
	dec  c                                           ; $5929: $0d
	nop                                              ; $592a: $00
	ld   a, [bc]                                     ; $592b: $0a
	inc  e                                           ; $592c: $1c
	inc  b                                           ; $592d: $04
	nop                                              ; $592e: $00
	nop                                              ; $592f: $00
	ld   bc, $9166                                   ; $5930: $01 $66 $91
	sbc  [hl]                                        ; $5933: $9e
	ld   d, d                                        ; $5934: $52
	ld   h, c                                        ; $5935: $61
	ld   d, h                                        ; $5936: $54
	cp   c                                           ; $5937: $b9
	push hl                                          ; $5938: $e5
	push af                                          ; $5939: $f5
	sbc  $fb                                         ; $593a: $de $fb
	db   $ed                                         ; $593c: $ed
	sbc  a                                           ; $593d: $9f
	dec  c                                           ; $593e: $0d
	nop                                              ; $593f: $00
	ld   a, [bc]                                     ; $5940: $0a
	dec  c                                           ; $5941: $0d
	nop                                              ; $5942: $00
	nop                                              ; $5943: $00
	rrca                                             ; $5944: $0f
	nop                                              ; $5945: $00
	ld   bc, $1e09                                   ; $5946: $01 $09 $1e
	nop                                              ; $5949: $00
	nop                                              ; $594a: $00
	inc  e                                           ; $594b: $1c
	rrca                                             ; $594c: $0f
	ld   bc, $0201                                   ; $594d: $01 $01 $02
	ld   bc, $5092                                   ; $5950: $01 $92 $50
	sbc  [hl]                                        ; $5953: $9e
	ld   [$5d00], sp                                 ; $5954: $08 $00 $5d
	and  c                                           ; $5957: $a1
	sbc  a                                           ; $5958: $9f
	dec  c                                           ; $5959: $0d
	nop                                              ; $595a: $00
	ld   a, [bc]                                     ; $595b: $0a
	dec  b                                           ; $595c: $05
	add  b                                           ; $595d: $80
	ld   a, h                                        ; $595e: $7c
	ld   bc, $0001                                   ; $595f: $01 $01 $00
	rlca                                             ; $5962: $07
	ld   d, a                                        ; $5963: $57
	nop                                              ; $5964: $00
	inc  b                                           ; $5965: $04
	add  b                                           ; $5966: $80
	rst  ToBoot                                         ; $5967: $c7
	ld   bc, $20ff                                   ; $5968: $01 $ff $20
	nop                                              ; $596b: $00
	dec  b                                           ; $596c: $05
	add  b                                           ; $596d: $80
	rst  ToBoot                                         ; $596e: $c7
	ld   bc, $0001                                   ; $596f: $01 $01 $00
	ld   bc, $7305                                   ; $5972: $01 $05 $73
	ld   a, l                                        ; $5975: $7d
	ld   [bc], a                                     ; $5976: $02
	ld   d, b                                        ; $5977: $50
	inc  bc                                          ; $5978: $03
	ld   e, b                                        ; $5979: $58
	ld   b, $2d                                      ; $597a: $06 $2d
	ld   [bc], a                                     ; $597c: $02
	jr   nz, @+$01                                   ; $597d: $20 $ff

	rst  $38                                         ; $597f: $ff
	dec  c                                           ; $5980: $0d
	inc  b                                           ; $5981: $04
	ld   c, $03                                      ; $5982: $0e $03
	sub  b                                           ; $5984: $90
	halt                                             ; $5985: $76
	ld   a, l                                        ; $5986: $7d
	inc  b                                           ; $5987: $04
	ld   c, $7c                                      ; $5988: $0e $7c
	inc  bc                                          ; $598a: $03
	sub  d                                           ; $598b: $92
	inc  b                                           ; $598c: $04
	ld   [$9f6e], a                                  ; $598d: $ea $6e $9f
	dec  c                                           ; $5990: $0d
	ld   [bc], a                                     ; $5991: $02
	dec  bc                                          ; $5992: $0b
	ld   [bc], a                                     ; $5993: $02
	xor  d                                           ; $5994: $aa
	sbc  [hl]                                        ; $5995: $9e
	sub  [hl]                                        ; $5996: $96
	sbc  e                                           ; $5997: $9b
	ld   h, l                                        ; $5998: $65
	ld   e, l                                        ; $5999: $5d
	ld   a, b                                        ; $599a: $78
	sbc  a                                           ; $599b: $9f
	dec  c                                           ; $599c: $0d
	nop                                              ; $599d: $00
	ld   a, [bc]                                     ; $599e: $0a
	ld   b, $81                                      ; $599f: $06 $81
	nop                                              ; $59a1: $00
	ld   bc, $7305                                   ; $59a2: $01 $05 $73
	ld   a, l                                        ; $59a5: $7d
	ld   [bc], a                                     ; $59a6: $02
	ld   d, b                                        ; $59a7: $50
	inc  bc                                          ; $59a8: $03
	ld   e, b                                        ; $59a9: $58
	ld   b, $2d                                      ; $59aa: $06 $2d
	ld   [bc], a                                     ; $59ac: $02
	jr   nz, @+$01                                   ; $59ad: $20 $ff

	rst  $38                                         ; $59af: $ff
	dec  c                                           ; $59b0: $0d
	ld   e, b                                        ; $59b1: $58
	ld   [hl], c                                     ; $59b2: $71
	halt                                             ; $59b3: $76
	sbc  [hl]                                        ; $59b4: $9e
	inc  bc                                          ; $59b5: $03
	sub  h                                           ; $59b6: $94
	dec  b                                           ; $59b7: $05
	inc  sp                                          ; $59b8: $33

Jump_04d_59b9:
	dec  b                                           ; $59b9: $05
	ld   b, a                                        ; $59ba: $47
	dec  b                                           ; $59bb: $05
	ld   [hl-], a                                    ; $59bc: $32
	ld   a, l                                        ; $59bd: $7d
	dec  c                                           ; $59be: $0d
	ld   h, c                                        ; $59bf: $61
	ld   a, h                                        ; $59c0: $7c
	inc  bc                                          ; $59c1: $03
	ld   c, a                                        ; $59c2: $4f
	sub  d                                           ; $59c3: $92
	ld   [hl], c                                     ; $59c4: $71
	ld   l, l                                        ; $59c5: $6d
	ld   a, b                                        ; $59c6: $78
	rst  $38                                         ; $59c7: $ff
	rst  $38                                         ; $59c8: $ff
	dec  c                                           ; $59c9: $0d
	nop                                              ; $59ca: $00
	ld   a, [bc]                                     ; $59cb: $0a
	ld   bc, $ca02                                   ; $59cc: $01 $02 $ca
	ld   e, d                                        ; $59cf: $5a
	inc  b                                           ; $59d0: $04
	ld   [$8f02], sp                                 ; $59d1: $08 $02 $8f
	ld   [bc], a                                     ; $59d4: $02
	sub  b                                           ; $59d5: $90
	ld   [bc], a                                     ; $59d6: $02
	sub  c                                           ; $59d7: $91
	inc  b                                           ; $59d8: $04
	add  hl, bc                                      ; $59d9: $09
	ld   a, c                                        ; $59da: $79
	dec  c                                           ; $59db: $0d
	ld   a, b                                        ; $59dc: $78
	ld   h, [hl]                                     ; $59dd: $66
	adc  a                                           ; $59de: $8f
	ld   l, l                                        ; $59df: $6d
	ld   e, c                                        ; $59e0: $59
	ld   [hl], a                                     ; $59e1: $77
	ld   d, h                                        ; $59e2: $54
	ld   e, c                                        ; $59e3: $59
	sbc  [hl]                                        ; $59e4: $9e
	dec  c                                           ; $59e5: $0d
	or   b                                           ; $59e6: $b0
	and  l                                           ; $59e7: $a5
	cp   e                                           ; $59e8: $bb
	ld   [hl], l                                     ; $59e9: $75
	ld   [bc], a                                     ; $59ea: $02
	sbc  a                                           ; $59eb: $9f
	ld   e, c                                        ; $59ec: $59
	adc  a                                           ; $59ed: $8f
	ld   [hl], h                                     ; $59ee: $74
	ld   d, b                                        ; $59ef: $50
	ld   h, b                                        ; $59f0: $60
	sub  [hl]                                        ; $59f1: $96
	ld   d, h                                        ; $59f2: $54
	sbc  a                                           ; $59f3: $9f
	dec  c                                           ; $59f4: $0d
	nop                                              ; $59f5: $00
	ld   a, [bc]                                     ; $59f6: $0a
	dec  c                                           ; $59f7: $0d
	rrca                                             ; $59f8: $0f
	db   $10                                         ; $59f9: $10
	rrca                                             ; $59fa: $0f
	rrca                                             ; $59fb: $0f
	nop                                              ; $59fc: $00
	ld   bc, $5065                                   ; $59fd: $01 $65 $50
	sbc  l                                           ; $5a00: $9d
	ld   l, c                                        ; $5a01: $69
	ld   l, [hl]                                     ; $5a02: $6e
	ld   a, b                                        ; $5a03: $78
	ld   c, a                                        ; $5a04: $4f
	db   $fc                                         ; $5a05: $fc
	rst  $38                                         ; $5a06: $ff
	rst  $38                                         ; $5a07: $ff
	dec  c                                           ; $5a08: $0d
	ld   h, c                                        ; $5a09: $61
	and  c                                           ; $5a0a: $a1
	ld   a, b                                        ; $5a0b: $78
	inc  b                                           ; $5a0c: $04
	db   $ec                                         ; $5a0d: $ec
	and  b                                           ; $5a0e: $a0
	sub  b                                           ; $5a0f: $90
	sub  a                                           ; $5a10: $97
	ld   d, [hl]                                     ; $5a11: $56
	sbc  c                                           ; $5a12: $99
	ld   a, b                                        ; $5a13: $78
	and  c                                           ; $5a14: $a1
	ld   [hl], h                                     ; $5a15: $74
	sbc  a                                           ; $5a16: $9f
	dec  c                                           ; $5a17: $0d
	nop                                              ; $5a18: $00
	ld   a, [bc]                                     ; $5a19: $0a
	inc  e                                           ; $5a1a: $1c
	rrca                                             ; $5a1b: $0f
	ld   [bc], a                                     ; $5a1c: $02
	ld   [bc], a                                     ; $5a1d: $02
	ld   bc, $7463                                   ; $5a1e: $01 $63 $74
	inc  b                                           ; $5a21: $04
	cp   a                                           ; $5a22: $bf
	inc  b                                           ; $5a23: $04
	dec  d                                           ; $5a24: $15
	ld   l, [hl]                                     ; $5a25: $6e
	ld   a, [$000d]                                  ; $5a26: $fa $0d $00
	ld   a, [bc]                                     ; $5a29: $0a
	ld   b, $24                                      ; $5a2a: $06 $24
	ld   bc, $0f1c                                   ; $5a2c: $01 $1c $0f
	ld   bc, $0101                                   ; $5a2f: $01 $01 $01
	ld   [bc], a                                     ; $5a32: $02
	dec  bc                                          ; $5a33: $0b
	inc  bc                                          ; $5a34: $03
	ld   h, l                                        ; $5a35: $65
	ld   [hl], l                                     ; $5a36: $75
	or   b                                           ; $5a37: $b0
	and  l                                           ; $5a38: $a5
	cp   e                                           ; $5a39: $bb
	ld   a, l                                        ; $5a3a: $7d
	inc  bc                                          ; $5a3b: $03
	ld   a, [hl]                                     ; $5a3c: $7e
	sbc  l                                           ; $5a3d: $9d
	sbc  b                                           ; $5a3e: $98
	ld   l, [hl]                                     ; $5a3f: $6e
	sbc  a                                           ; $5a40: $9f
	dec  c                                           ; $5a41: $0d
	ld   [bc], a                                     ; $5a42: $02
	jp   z, EnqueueHDMATransfer                                    ; $5a43: $ca $7c $02

	and  c                                           ; $5a46: $a1
	inc  bc                                          ; $5a47: $03
	and  b                                           ; $5a48: $a0
	ld   l, a                                        ; $5a49: $6f
	ld   a, l                                        ; $5a4a: $7d
	sbc  [hl]                                        ; $5a4b: $9e
	xor  h                                           ; $5a4c: $ac
	push af                                          ; $5a4d: $f5
	bit  4, e                                        ; $5a4e: $cb $63
	and  c                                           ; $5a50: $a1
	ld   a, c                                        ; $5a51: $79
	dec  c                                           ; $5a52: $0d
	inc  b                                           ; $5a53: $04
	ld   [de], a                                     ; $5a54: $12
	ld   d, [hl]                                     ; $5a55: $56
	ld   [hl], h                                     ; $5a56: $74
	ld   e, b                                        ; $5a57: $58
	ld   e, l                                        ; $5a58: $5d
	sub  [hl]                                        ; $5a59: $96
	rst  $38                                         ; $5a5a: $ff
	rst  $38                                         ; $5a5b: $ff
	and  e                                           ; $5a5c: $a3
	ret  z                                           ; $5a5d: $c8

	and  h                                           ; $5a5e: $a4
	xor  e                                           ; $5a5f: $ab
	cp   d                                           ; $5a60: $ba
	ld   a, [$000d]                                  ; $5a61: $fa $0d $00
	ld   a, [bc]                                     ; $5a64: $0a
	dec  e                                           ; $5a65: $1d
	ld   b, b                                        ; $5a66: $40
	ld   d, $03                                      ; $5a67: $16 $03
	ld   d, $03                                      ; $5a69: $16 $03
	rst  $38                                         ; $5a6b: $ff
	jr   z, jr_04d_5a6e                              ; $5a6c: $28 $00

jr_04d_5a6e:
	nop                                              ; $5a6e: $00
	dec  b                                           ; $5a6f: $05
	ld   b, b                                        ; $5a70: $40
	cp   $01                                         ; $5a71: $fe $01
	nop                                              ; $5a73: $00
	nop                                              ; $5a74: $00
	dec  b                                           ; $5a75: $05
	add  b                                           ; $5a76: $80
	ld   c, a                                        ; $5a77: $4f
	ld   bc, $0000                                   ; $5a78: $01 $00 $00
	dec  b                                           ; $5a7b: $05
	add  b                                           ; $5a7c: $80
	ld   d, b                                        ; $5a7d: $50
	ld   bc, $0000                                   ; $5a7e: $01 $00 $00
	dec  b                                           ; $5a81: $05
	add  b                                           ; $5a82: $80
	ld   d, c                                        ; $5a83: $51
	ld   bc, $0000                                   ; $5a84: $01 $00 $00
	dec  b                                           ; $5a87: $05
	add  b                                           ; $5a88: $80
	ld   d, d                                        ; $5a89: $52
	ld   bc, $0000                                   ; $5a8a: $01 $00 $00
	dec  b                                           ; $5a8d: $05
	add  b                                           ; $5a8e: $80
	ld   d, e                                        ; $5a8f: $53
	ld   bc, $0000                                   ; $5a90: $01 $00 $00
	dec  b                                           ; $5a93: $05
	add  b                                           ; $5a94: $80
	ld   d, h                                        ; $5a95: $54
	ld   bc, $0000                                   ; $5a96: $01 $00 $00
	dec  b                                           ; $5a99: $05
	add  b                                           ; $5a9a: $80
	ld   d, l                                        ; $5a9b: $55
	ld   bc, $0000                                   ; $5a9c: $01 $00 $00
	dec  b                                           ; $5a9f: $05
	add  b                                           ; $5aa0: $80
	ld   d, [hl]                                     ; $5aa1: $56
	ld   bc, $0000                                   ; $5aa2: $01 $00 $00
	dec  b                                           ; $5aa5: $05
	add  b                                           ; $5aa6: $80
	ld   d, a                                        ; $5aa7: $57
	ld   bc, $0000                                   ; $5aa8: $01 $00 $00
	rlca                                             ; $5aab: $07
	ldh  [c], a                                      ; $5aac: $e2
	nop                                              ; $5aad: $00
	inc  bc                                          ; $5aae: $03
	cp   $01                                         ; $5aaf: $fe $01
	inc  bc                                          ; $5ab1: $03
	dec  h                                           ; $5ab2: $25
	nop                                              ; $5ab3: $00
	dec  b                                           ; $5ab4: $05
	ld   b, b                                        ; $5ab5: $40
	cp   $03                                         ; $5ab6: $fe $03
	cp   $01                                         ; $5ab8: $fe $01
	ld   bc, $0028                                   ; $5aba: $01 $28 $00
	jr   nz, jr_04d_5ac0                             ; $5abd: $20 $01

	ld   e, d                                        ; $5abf: $5a

jr_04d_5ac0:
	nop                                              ; $5ac0: $00
	rlca                                             ; $5ac1: $07
	pop  bc                                          ; $5ac2: $c1
	ld   bc, $0502                                   ; $5ac3: $01 $02 $05
	ld   bc, $220a                                   ; $5ac6: $01 $0a $22
	nop                                              ; $5ac9: $00
	rlca                                             ; $5aca: $07
	ld   e, a                                        ; $5acb: $5f
	ld   [bc], a                                     ; $5acc: $02
	ld   [bc], a                                     ; $5acd: $02
	dec  b                                           ; $5ace: $05
	ld   bc, $2214                                   ; $5acf: $01 $14 $22
	nop                                              ; $5ad2: $00
	rlca                                             ; $5ad3: $07
	inc  c                                           ; $5ad4: $0c
	inc  bc                                          ; $5ad5: $03
	ld   [bc], a                                     ; $5ad6: $02
	dec  b                                           ; $5ad7: $05
	ld   bc, $221e                                   ; $5ad8: $01 $1e $22
	nop                                              ; $5adb: $00
	rlca                                             ; $5adc: $07
	xor  [hl]                                        ; $5add: $ae
	inc  bc                                          ; $5ade: $03
	ld   [bc], a                                     ; $5adf: $02
	dec  b                                           ; $5ae0: $05
	ld   bc, $2228                                   ; $5ae1: $01 $28 $22
	nop                                              ; $5ae4: $00
	rlca                                             ; $5ae5: $07
	ld   c, b                                        ; $5ae6: $48
	inc  b                                           ; $5ae7: $04
	ld   [bc], a                                     ; $5ae8: $02
	dec  b                                           ; $5ae9: $05
	ld   bc, $2232                                   ; $5aea: $01 $32 $22
	nop                                              ; $5aed: $00
	rlca                                             ; $5aee: $07
	jp   hl                                          ; $5aef: $e9


	inc  b                                           ; $5af0: $04
	ld   [bc], a                                     ; $5af1: $02
	dec  b                                           ; $5af2: $05
	ld   bc, $223c                                   ; $5af3: $01 $3c $22
	nop                                              ; $5af6: $00
	rlca                                             ; $5af7: $07
	add  h                                           ; $5af8: $84
	dec  b                                           ; $5af9: $05
	ld   [bc], a                                     ; $5afa: $02
	dec  b                                           ; $5afb: $05
	ld   bc, $2246                                   ; $5afc: $01 $46 $22
	nop                                              ; $5aff: $00
	rlca                                             ; $5b00: $07
	ld   l, $06                                      ; $5b01: $2e $06
	ld   [bc], a                                     ; $5b03: $02
	dec  b                                           ; $5b04: $05
	ld   bc, $2250                                   ; $5b05: $01 $50 $22
	nop                                              ; $5b08: $00
	ld   b, $db                                      ; $5b09: $06 $db
	ld   b, $07                                      ; $5b0b: $06 $07
	ld   e, a                                        ; $5b0d: $5f
	ld   [bc], a                                     ; $5b0e: $02
	inc  b                                           ; $5b0f: $04
	add  b                                           ; $5b10: $80
	ld   c, a                                        ; $5b11: $4f
	ld   bc, $20ff                                   ; $5b12: $01 $ff $20
	nop                                              ; $5b15: $00
	dec  b                                           ; $5b16: $05
	add  b                                           ; $5b17: $80
	ld   c, a                                        ; $5b18: $4f
	ld   bc, $0001                                   ; $5b19: $01 $01 $00
	ld   bc, $f5ac                                   ; $5b1c: $01 $ac $f5
	bit  4, e                                        ; $5b1f: $cb $63
	and  c                                           ; $5b21: $a1
	ld   a, h                                        ; $5b22: $7c
	inc  bc                                          ; $5b23: $03
	ld   d, d                                        ; $5b24: $52
	adc  h                                           ; $5b25: $8c
	sbc  d                                           ; $5b26: $9a
	ld   [bc], a                                     ; $5b27: $02
	adc  $05                                         ; $5b28: $ce $05
	or   b                                           ; $5b2a: $b0
	ld   a, l                                        ; $5b2b: $7d
	ld   sp, hl                                      ; $5b2c: $f9
	dec  c                                           ; $5b2d: $0d
	nop                                              ; $5b2e: $00
	ld   a, [bc]                                     ; $5b2f: $0a
	add  hl, de                                      ; $5b30: $19
	dec  b                                           ; $5b31: $05
	inc  bc                                          ; $5b32: $03
	ld   [bc], a                                     ; $5b33: $02
	dec  c                                           ; $5b34: $0d
	inc  b                                           ; $5b35: $04
	halt                                             ; $5b36: $76
	nop                                              ; $5b37: $00
	nop                                              ; $5b38: $00
	ld   [bc], a                                     ; $5b39: $02
	db   $db                                         ; $5b3a: $db
	inc  bc                                          ; $5b3b: $03
	dec  b                                           ; $5b3c: $05
	inc  bc                                          ; $5b3d: $03
	ld   e, d                                        ; $5b3e: $5a
	nop                                              ; $5b3f: $00
	ld   bc, $ce05                                   ; $5b40: $01 $05 $ce
	dec  b                                           ; $5b43: $05
	add  a                                           ; $5b44: $87
	nop                                              ; $5b45: $00
	ld   [bc], a                                     ; $5b46: $02
	rlca                                             ; $5b47: $07
	ld   a, [de]                                     ; $5b48: $1a
	ld   [bc], a                                     ; $5b49: $02
	ld   [bc], a                                     ; $5b4a: $02
	inc  bc                                          ; $5b4b: $03
	ld   bc, $2000                                   ; $5b4c: $01 $00 $20
	nop                                              ; $5b4f: $00
	rlca                                             ; $5b50: $07
	scf                                              ; $5b51: $37
	ld   [bc], a                                     ; $5b52: $02
	ld   [bc], a                                     ; $5b53: $02
	inc  bc                                          ; $5b54: $03
	ld   bc, $2001                                   ; $5b55: $01 $01 $20
	nop                                              ; $5b58: $00
	rlca                                             ; $5b59: $07
	scf                                              ; $5b5a: $37
	ld   [bc], a                                     ; $5b5b: $02
	ld   [bc], a                                     ; $5b5c: $02
	inc  bc                                          ; $5b5d: $03
	ld   bc, $2002                                   ; $5b5e: $01 $02 $20
	nop                                              ; $5b61: $00
	ld   b, $37                                      ; $5b62: $06 $37
	ld   [bc], a                                     ; $5b64: $02
	inc  e                                           ; $5b65: $1c
	rrca                                             ; $5b66: $0f
	ld   bc, $1401                                   ; $5b67: $01 $01 $14
	dec  de                                          ; $5b6a: $1b
	ld   bc, $0301                                   ; $5b6b: $01 $01 $03
	ld   c, d                                        ; $5b6e: $4a
	ld   [bc], a                                     ; $5b6f: $02
	or   h                                           ; $5b70: $b4
	ld   l, [hl]                                     ; $5b71: $6e
	sbc  a                                           ; $5b72: $9f
	dec  c                                           ; $5b73: $0d
	nop                                              ; $5b74: $00
	ld   a, [bc]                                     ; $5b75: $0a
	dec  b                                           ; $5b76: $05
	ld   b, b                                        ; $5b77: $40
	rst  $38                                         ; $5b78: $ff
	inc  bc                                          ; $5b79: $03
	rst  $38                                         ; $5b7a: $ff
	ld   bc, $2801                                   ; $5b7b: $01 $01 $28
	nop                                              ; $5b7e: $00
	ld   b, $60                                      ; $5b7f: $06 $60
	ld   bc, $0f1c                                   ; $5b81: $01 $1c $0f
	ld   [bc], a                                     ; $5b84: $02
	ld   [bc], a                                     ; $5b85: $02
	inc  d                                           ; $5b86: $14
	inc  e                                           ; $5b87: $1c
	ld   bc, $0301                                   ; $5b88: $01 $01 $03
	jr   z, jr_04d_5b91                              ; $5b8b: $28 $04

	ld   c, b                                        ; $5b8d: $48
	ld   l, [hl]                                     ; $5b8e: $6e
	ld   [hl], c                                     ; $5b8f: $71
	ld   l, l                                        ; $5b90: $6d

jr_04d_5b91:
	ld   a, b                                        ; $5b91: $78
	rst  $38                                         ; $5b92: $ff
	rst  $38                                         ; $5b93: $ff
	dec  c                                           ; $5b94: $0d
	inc  bc                                          ; $5b95: $03
	ld   c, d                                        ; $5b96: $4a
	ld   [bc], a                                     ; $5b97: $02
	or   h                                           ; $5b98: $b4
	ld   a, l                                        ; $5b99: $7d
	ld   bc, $0207                                   ; $5b9a: $01 $07 $02
	dec  c                                           ; $5b9d: $0d
	inc  b                                           ; $5b9e: $04
	halt                                             ; $5b9f: $76
	ld   bc, $6e08                                   ; $5ba0: $01 $08 $6e
	sbc  a                                           ; $5ba3: $9f
	dec  c                                           ; $5ba4: $0d
	nop                                              ; $5ba5: $00
	ld   a, [bc]                                     ; $5ba6: $0a
	ld   b, $60                                      ; $5ba7: $06 $60
	ld   bc, $0c07                                   ; $5ba9: $01 $07 $0c
	inc  bc                                          ; $5bac: $03
	inc  b                                           ; $5bad: $04
	add  b                                           ; $5bae: $80
	ld   d, b                                        ; $5baf: $50
	ld   bc, $20ff                                   ; $5bb0: $01 $ff $20
	nop                                              ; $5bb3: $00
	dec  b                                           ; $5bb4: $05
	add  b                                           ; $5bb5: $80
	ld   d, b                                        ; $5bb6: $50
	ld   bc, $0001                                   ; $5bb7: $01 $01 $00
	ld   bc, $f5ac                                   ; $5bba: $01 $ac $f5
	bit  4, e                                        ; $5bbd: $cb $63
	and  c                                           ; $5bbf: $a1
	ld   e, d                                        ; $5bc0: $5a
	ld   [bc], a                                     ; $5bc1: $02
	sbc  d                                           ; $5bc2: $9a
	ld   e, e                                        ; $5bc3: $5b
	ld   a, b                                        ; $5bc4: $78
	dec  c                                           ; $5bc5: $0d
	ld   [bc], a                                     ; $5bc6: $02
	dec  c                                           ; $5bc7: $0d
	inc  b                                           ; $5bc8: $04
	halt                                             ; $5bc9: $76
	dec  b                                           ; $5bca: $05
	ld   [bc], a                                     ; $5bcb: $02
	dec  b                                           ; $5bcc: $05
	ld   de, $f97d                                   ; $5bcd: $11 $7d $f9
	dec  c                                           ; $5bd0: $0d
	nop                                              ; $5bd1: $00
	ld   a, [bc]                                     ; $5bd2: $0a
	add  hl, de                                      ; $5bd3: $19
	dec  b                                           ; $5bd4: $05
	inc  bc                                          ; $5bd5: $03
	or   l                                           ; $5bd6: $b5
	ei                                               ; $5bd7: $fb
	and  $c2                                         ; $5bd8: $e6 $c2
	push hl                                          ; $5bda: $e5
	push af                                          ; $5bdb: $f5
	ret  c                                           ; $5bdc: $d8

	db   $ed                                         ; $5bdd: $ed
	ei                                               ; $5bde: $fb
	nop                                              ; $5bdf: $00
	nop                                              ; $5be0: $00
	db   $dd                                         ; $5be1: $dd
	db   $ed                                         ; $5be2: $ed
	cp   b                                           ; $5be3: $b8
	jp   nz, Boot                                    ; $5be4: $c2 $00 $01

	xor  e                                           ; $5be7: $ab
	ldh  [c], a                                      ; $5be8: $e2
	db   $eb                                         ; $5be9: $eb
	and  l                                           ; $5bea: $a5
	cp   d                                           ; $5beb: $ba
	nop                                              ; $5bec: $00
	ld   [bc], a                                     ; $5bed: $02
	rlca                                             ; $5bee: $07
	pop  bc                                          ; $5bef: $c1
	ld   [bc], a                                     ; $5bf0: $02
	ld   [bc], a                                     ; $5bf1: $02
	inc  bc                                          ; $5bf2: $03
	ld   bc, $2000                                   ; $5bf3: $01 $00 $20
	nop                                              ; $5bf6: $00
	rlca                                             ; $5bf7: $07
	sbc  $02                                         ; $5bf8: $de $02
	ld   [bc], a                                     ; $5bfa: $02
	inc  bc                                          ; $5bfb: $03
	ld   bc, $2001                                   ; $5bfc: $01 $01 $20
	nop                                              ; $5bff: $00
	rlca                                             ; $5c00: $07
	sbc  $02                                         ; $5c01: $de $02
	ld   [bc], a                                     ; $5c03: $02
	inc  bc                                          ; $5c04: $03
	ld   bc, $2002                                   ; $5c05: $01 $02 $20
	nop                                              ; $5c08: $00
	ld   b, $de                                      ; $5c09: $06 $de
	ld   [bc], a                                     ; $5c0b: $02
	inc  e                                           ; $5c0c: $1c
	rrca                                             ; $5c0d: $0f
	ld   bc, $1401                                   ; $5c0e: $01 $01 $14
	dec  de                                          ; $5c11: $1b
	ld   bc, $0301                                   ; $5c12: $01 $01 $03
	ld   c, d                                        ; $5c15: $4a
	ld   [bc], a                                     ; $5c16: $02
	or   h                                           ; $5c17: $b4
	ld   l, [hl]                                     ; $5c18: $6e
	sbc  a                                           ; $5c19: $9f
	dec  c                                           ; $5c1a: $0d
	nop                                              ; $5c1b: $00
	ld   a, [bc]                                     ; $5c1c: $0a
	dec  b                                           ; $5c1d: $05
	ld   b, b                                        ; $5c1e: $40
	rst  $38                                         ; $5c1f: $ff
	inc  bc                                          ; $5c20: $03
	rst  $38                                         ; $5c21: $ff
	ld   bc, $2801                                   ; $5c22: $01 $01 $28
	nop                                              ; $5c25: $00
	ld   b, $60                                      ; $5c26: $06 $60
	ld   bc, $0f1c                                   ; $5c28: $01 $1c $0f
	ld   [bc], a                                     ; $5c2b: $02
	ld   [bc], a                                     ; $5c2c: $02
	inc  d                                           ; $5c2d: $14
	inc  e                                           ; $5c2e: $1c
	ld   bc, $0301                                   ; $5c2f: $01 $01 $03
	jr   z, jr_04d_5c38                              ; $5c32: $28 $04

	ld   c, b                                        ; $5c34: $48
	ld   l, [hl]                                     ; $5c35: $6e
	ld   [hl], c                                     ; $5c36: $71
	ld   l, l                                        ; $5c37: $6d

jr_04d_5c38:
	ld   a, b                                        ; $5c38: $78
	rst  $38                                         ; $5c39: $ff
	rst  $38                                         ; $5c3a: $ff
	dec  c                                           ; $5c3b: $0d
	inc  bc                                          ; $5c3c: $03
	ld   c, d                                        ; $5c3d: $4a
	ld   [bc], a                                     ; $5c3e: $02
	or   h                                           ; $5c3f: $b4
	ld   a, l                                        ; $5c40: $7d
	dec  c                                           ; $5c41: $0d
	ld   bc, $b507                                   ; $5c42: $01 $07 $b5
	ei                                               ; $5c45: $fb
	and  $c2                                         ; $5c46: $e6 $c2
	push hl                                          ; $5c48: $e5
	push af                                          ; $5c49: $f5
	ret  c                                           ; $5c4a: $d8

	db   $ed                                         ; $5c4b: $ed
	ei                                               ; $5c4c: $fb
	ld   bc, $6e08                                   ; $5c4d: $01 $08 $6e
	sbc  a                                           ; $5c50: $9f
	dec  c                                           ; $5c51: $0d
	nop                                              ; $5c52: $00
	ld   a, [bc]                                     ; $5c53: $0a
	ld   b, $60                                      ; $5c54: $06 $60
	ld   bc, $ae07                                   ; $5c56: $01 $07 $ae
	inc  bc                                          ; $5c59: $03
	inc  b                                           ; $5c5a: $04
	add  b                                           ; $5c5b: $80
	ld   d, c                                        ; $5c5c: $51
	ld   bc, $20ff                                   ; $5c5d: $01 $ff $20
	nop                                              ; $5c60: $00
	dec  b                                           ; $5c61: $05
	add  b                                           ; $5c62: $80
	ld   d, c                                        ; $5c63: $51
	ld   bc, $0001                                   ; $5c64: $01 $01 $00
	ld   bc, $f5ac                                   ; $5c67: $01 $ac $f5
	bit  4, e                                        ; $5c6a: $cb $63
	and  c                                           ; $5c6c: $a1
	ld   e, d                                        ; $5c6d: $5a
	ld   b, $02                                      ; $5c6e: $06 $02
	ld   [bc], a                                     ; $5c70: $02
	ld   b, $76                                      ; $5c71: $06 $76
	ld   h, a                                        ; $5c73: $67
	sbc  c                                           ; $5c74: $99
	dec  c                                           ; $5c75: $0d
	inc  b                                           ; $5c76: $04
	ld   d, d                                        ; $5c77: $52
	inc  bc                                          ; $5c78: $03
	db   $10                                         ; $5c79: $10
	ld   a, l                                        ; $5c7a: $7d
	ld   sp, hl                                      ; $5c7b: $f9
	dec  c                                           ; $5c7c: $0d
	nop                                              ; $5c7d: $00
	ld   a, [bc]                                     ; $5c7e: $0a
	add  hl, de                                      ; $5c7f: $19
	dec  b                                           ; $5c80: $05
	inc  bc                                          ; $5c81: $03
	ld   [bc], a                                     ; $5c82: $02
	or   [hl]                                        ; $5c83: $b6
	inc  bc                                          ; $5c84: $03
	ld   l, e                                        ; $5c85: $6b
	nop                                              ; $5c86: $00
	nop                                              ; $5c87: $00
	dec  b                                           ; $5c88: $05
	ld   [hl], $04                                   ; $5c89: $36 $04
	ld   h, h                                        ; $5c8b: $64
	nop                                              ; $5c8c: $00
	ld   bc, $7b02                                   ; $5c8d: $01 $02 $7b
	ld   [bc], a                                     ; $5c90: $02
	and  c                                           ; $5c91: $a1
	inc  b                                           ; $5c92: $04
	ld   d, $00                                      ; $5c93: $16 $00
	ld   [bc], a                                     ; $5c95: $02
	rlca                                             ; $5c96: $07
	ld   l, c                                        ; $5c97: $69
	inc  bc                                          ; $5c98: $03
	ld   [bc], a                                     ; $5c99: $02
	inc  bc                                          ; $5c9a: $03
	ld   bc, $2000                                   ; $5c9b: $01 $00 $20
	nop                                              ; $5c9e: $00
	rlca                                             ; $5c9f: $07
	add  [hl]                                        ; $5ca0: $86
	inc  bc                                          ; $5ca1: $03
	ld   [bc], a                                     ; $5ca2: $02
	inc  bc                                          ; $5ca3: $03
	ld   bc, $2001                                   ; $5ca4: $01 $01 $20
	nop                                              ; $5ca7: $00
	rlca                                             ; $5ca8: $07
	add  [hl]                                        ; $5ca9: $86
	inc  bc                                          ; $5caa: $03
	ld   [bc], a                                     ; $5cab: $02
	inc  bc                                          ; $5cac: $03
	ld   bc, $2002                                   ; $5cad: $01 $02 $20
	nop                                              ; $5cb0: $00
	ld   b, $86                                      ; $5cb1: $06 $86
	inc  bc                                          ; $5cb3: $03
	inc  e                                           ; $5cb4: $1c
	rrca                                             ; $5cb5: $0f
	ld   bc, $1401                                   ; $5cb6: $01 $01 $14
	dec  de                                          ; $5cb9: $1b
	ld   bc, $0301                                   ; $5cba: $01 $01 $03
	ld   c, d                                        ; $5cbd: $4a
	ld   [bc], a                                     ; $5cbe: $02
	or   h                                           ; $5cbf: $b4
	ld   l, [hl]                                     ; $5cc0: $6e
	sbc  a                                           ; $5cc1: $9f
	dec  c                                           ; $5cc2: $0d
	nop                                              ; $5cc3: $00
	ld   a, [bc]                                     ; $5cc4: $0a
	dec  b                                           ; $5cc5: $05
	ld   b, b                                        ; $5cc6: $40
	rst  $38                                         ; $5cc7: $ff
	inc  bc                                          ; $5cc8: $03
	rst  $38                                         ; $5cc9: $ff
	ld   bc, $2801                                   ; $5cca: $01 $01 $28
	nop                                              ; $5ccd: $00
	ld   b, $60                                      ; $5cce: $06 $60
	ld   bc, $0f1c                                   ; $5cd0: $01 $1c $0f
	ld   [bc], a                                     ; $5cd3: $02
	ld   [bc], a                                     ; $5cd4: $02
	inc  d                                           ; $5cd5: $14
	inc  e                                           ; $5cd6: $1c
	ld   bc, $0301                                   ; $5cd7: $01 $01 $03
	jr   z, jr_04d_5ce0                              ; $5cda: $28 $04

	ld   c, b                                        ; $5cdc: $48
	ld   l, [hl]                                     ; $5cdd: $6e
	ld   [hl], c                                     ; $5cde: $71
	ld   l, l                                        ; $5cdf: $6d

jr_04d_5ce0:
	ld   a, b                                        ; $5ce0: $78
	rst  $38                                         ; $5ce1: $ff
	rst  $38                                         ; $5ce2: $ff
	dec  c                                           ; $5ce3: $0d
	inc  bc                                          ; $5ce4: $03
	ld   c, d                                        ; $5ce5: $4a
	ld   [bc], a                                     ; $5ce6: $02
	or   h                                           ; $5ce7: $b4
	ld   a, l                                        ; $5ce8: $7d
	ld   bc, $0207                                   ; $5ce9: $01 $07 $02
	or   [hl]                                        ; $5cec: $b6
	inc  bc                                          ; $5ced: $03
	ld   l, e                                        ; $5cee: $6b
	ld   bc, $6e08                                   ; $5cef: $01 $08 $6e
	sbc  a                                           ; $5cf2: $9f
	dec  c                                           ; $5cf3: $0d
	nop                                              ; $5cf4: $00
	ld   a, [bc]                                     ; $5cf5: $0a
	ld   b, $60                                      ; $5cf6: $06 $60
	ld   bc, $4807                                   ; $5cf8: $01 $07 $48
	inc  b                                           ; $5cfb: $04
	inc  b                                           ; $5cfc: $04
	add  b                                           ; $5cfd: $80
	ld   d, d                                        ; $5cfe: $52
	ld   bc, $20ff                                   ; $5cff: $01 $ff $20
	nop                                              ; $5d02: $00
	dec  b                                           ; $5d03: $05
	add  b                                           ; $5d04: $80
	ld   d, d                                        ; $5d05: $52
	ld   bc, $0001                                   ; $5d06: $01 $01 $00
	ld   bc, $f5ac                                   ; $5d09: $01 $ac $f5
	bit  4, e                                        ; $5d0c: $cb $63
	and  c                                           ; $5d0e: $a1
	ld   e, d                                        ; $5d0f: $5a
	ld   [bc], a                                     ; $5d10: $02
	sub  h                                           ; $5d11: $94
	inc  bc                                          ; $5d12: $03
	ld   l, e                                        ; $5d13: $6b
	halt                                             ; $5d14: $76
	ld   h, l                                        ; $5d15: $65
	ld   [hl], h                                     ; $5d16: $74
	ld   d, d                                        ; $5d17: $52
	sbc  c                                           ; $5d18: $99
	dec  c                                           ; $5d19: $0d
	sub  b                                           ; $5d1a: $90
	ld   a, h                                        ; $5d1b: $7c
	ld   a, l                                        ; $5d1c: $7d
	ld   sp, hl                                      ; $5d1d: $f9
	dec  c                                           ; $5d1e: $0d
	nop                                              ; $5d1f: $00
	ld   a, [bc]                                     ; $5d20: $0a
	add  hl, de                                      ; $5d21: $19
	dec  b                                           ; $5d22: $05
	inc  bc                                          ; $5d23: $03
	reti                                             ; $5d24: $d9


	call nc, $0000                                  ; $5d25: $d4 $00 $00
	xor  h                                           ; $5d28: $ac
	ldh  [$cb], a                                    ; $5d29: $e0 $cb
	db   $ec                                         ; $5d2b: $ec
	nop                                              ; $5d2c: $00
	ld   bc, $e4b0                                   ; $5d2d: $01 $b0 $e4
	nop                                              ; $5d30: $00
	ld   [bc], a                                     ; $5d31: $02
	rlca                                             ; $5d32: $07
	dec  b                                           ; $5d33: $05
	inc  b                                           ; $5d34: $04
	ld   [bc], a                                     ; $5d35: $02
	inc  bc                                          ; $5d36: $03
	ld   bc, $2000                                   ; $5d37: $01 $00 $20
	nop                                              ; $5d3a: $00
	rlca                                             ; $5d3b: $07
	ld   [hl+], a                                    ; $5d3c: $22
	inc  b                                           ; $5d3d: $04
	ld   [bc], a                                     ; $5d3e: $02
	inc  bc                                          ; $5d3f: $03
	ld   bc, $2001                                   ; $5d40: $01 $01 $20
	nop                                              ; $5d43: $00
	rlca                                             ; $5d44: $07
	ld   [hl+], a                                    ; $5d45: $22
	inc  b                                           ; $5d46: $04
	ld   [bc], a                                     ; $5d47: $02
	inc  bc                                          ; $5d48: $03
	ld   bc, $2002                                   ; $5d49: $01 $02 $20
	nop                                              ; $5d4c: $00
	ld   b, $22                                      ; $5d4d: $06 $22
	inc  b                                           ; $5d4f: $04
	inc  e                                           ; $5d50: $1c
	rrca                                             ; $5d51: $0f
	ld   bc, $1401                                   ; $5d52: $01 $01 $14
	dec  de                                          ; $5d55: $1b
	ld   bc, $0301                                   ; $5d56: $01 $01 $03
	ld   c, d                                        ; $5d59: $4a
	ld   [bc], a                                     ; $5d5a: $02
	or   h                                           ; $5d5b: $b4
	ld   l, [hl]                                     ; $5d5c: $6e
	sbc  a                                           ; $5d5d: $9f
	dec  c                                           ; $5d5e: $0d
	nop                                              ; $5d5f: $00
	ld   a, [bc]                                     ; $5d60: $0a
	dec  b                                           ; $5d61: $05
	ld   b, b                                        ; $5d62: $40
	rst  $38                                         ; $5d63: $ff
	inc  bc                                          ; $5d64: $03
	rst  $38                                         ; $5d65: $ff
	ld   bc, $2801                                   ; $5d66: $01 $01 $28
	nop                                              ; $5d69: $00
	ld   b, $60                                      ; $5d6a: $06 $60
	ld   bc, $0f1c                                   ; $5d6c: $01 $1c $0f
	ld   [bc], a                                     ; $5d6f: $02
	ld   [bc], a                                     ; $5d70: $02
	inc  d                                           ; $5d71: $14
	inc  e                                           ; $5d72: $1c
	ld   bc, $0301                                   ; $5d73: $01 $01 $03
	jr   z, jr_04d_5d7c                              ; $5d76: $28 $04

	ld   c, b                                        ; $5d78: $48
	ld   l, [hl]                                     ; $5d79: $6e
	ld   [hl], c                                     ; $5d7a: $71
	ld   l, l                                        ; $5d7b: $6d

jr_04d_5d7c:
	ld   a, b                                        ; $5d7c: $78
	rst  $38                                         ; $5d7d: $ff
	rst  $38                                         ; $5d7e: $ff
	dec  c                                           ; $5d7f: $0d
	inc  bc                                          ; $5d80: $03
	ld   c, d                                        ; $5d81: $4a
	ld   [bc], a                                     ; $5d82: $02
	or   h                                           ; $5d83: $b4
	ld   a, l                                        ; $5d84: $7d
	ld   bc, $d907                                   ; $5d85: $01 $07 $d9
	call nc, $0801                                   ; $5d88: $d4 $01 $08
	ld   l, [hl]                                     ; $5d8b: $6e
	sbc  a                                           ; $5d8c: $9f
	dec  c                                           ; $5d8d: $0d
	nop                                              ; $5d8e: $00
	ld   a, [bc]                                     ; $5d8f: $0a
	ld   b, $60                                      ; $5d90: $06 $60
	ld   bc, $e907                                   ; $5d92: $01 $07 $e9
	inc  b                                           ; $5d95: $04
	inc  b                                           ; $5d96: $04
	add  b                                           ; $5d97: $80
	ld   d, e                                        ; $5d98: $53
	ld   bc, $20ff                                   ; $5d99: $01 $ff $20
	nop                                              ; $5d9c: $00
	dec  b                                           ; $5d9d: $05
	add  b                                           ; $5d9e: $80
	ld   d, e                                        ; $5d9f: $53
	ld   bc, $0001                                   ; $5da0: $01 $01 $00
	ld   bc, $f5ac                                   ; $5da3: $01 $ac $f5
	bit  4, e                                        ; $5da6: $cb $63
	and  c                                           ; $5da8: $a1
	ld   a, h                                        ; $5da9: $7c
	inc  b                                           ; $5daa: $04
	rst  ToBoot                                         ; $5dab: $c7
	inc  bc                                          ; $5dac: $03
	sbc  h                                           ; $5dad: $9c
	ld   a, l                                        ; $5dae: $7d
	ld   sp, hl                                      ; $5daf: $f9
	dec  c                                           ; $5db0: $0d
	nop                                              ; $5db1: $00
	ld   a, [bc]                                     ; $5db2: $0a
	add  hl, de                                      ; $5db3: $19
	dec  b                                           ; $5db4: $05
	inc  bc                                          ; $5db5: $03
	dec  b                                           ; $5db6: $05
	or   $03                                         ; $5db7: $f6 $03
	ld   e, d                                        ; $5db9: $5a
	nop                                              ; $5dba: $00
	nop                                              ; $5dbb: $00
	dec  b                                           ; $5dbc: $05
	or   $03                                         ; $5dbd: $f6 $03
	ld   e, b                                        ; $5dbf: $58
	nop                                              ; $5dc0: $00
	ld   bc, $f805                                   ; $5dc1: $01 $05 $f8
	inc  bc                                          ; $5dc4: $03
	ld   e, d                                        ; $5dc5: $5a
	nop                                              ; $5dc6: $00
	ld   [bc], a                                     ; $5dc7: $02
	rlca                                             ; $5dc8: $07
	sbc  e                                           ; $5dc9: $9b
	inc  b                                           ; $5dca: $04
	ld   [bc], a                                     ; $5dcb: $02
	inc  bc                                          ; $5dcc: $03
	ld   bc, $2000                                   ; $5dcd: $01 $00 $20
	nop                                              ; $5dd0: $00
	rlca                                             ; $5dd1: $07
	cp   b                                           ; $5dd2: $b8
	inc  b                                           ; $5dd3: $04
	ld   [bc], a                                     ; $5dd4: $02
	inc  bc                                          ; $5dd5: $03
	ld   bc, $2001                                   ; $5dd6: $01 $01 $20
	nop                                              ; $5dd9: $00
	rlca                                             ; $5dda: $07
	cp   b                                           ; $5ddb: $b8
	inc  b                                           ; $5ddc: $04
	ld   [bc], a                                     ; $5ddd: $02
	inc  bc                                          ; $5dde: $03
	ld   bc, $2002                                   ; $5ddf: $01 $02 $20
	nop                                              ; $5de2: $00
	ld   b, $b8                                      ; $5de3: $06 $b8
	inc  b                                           ; $5de5: $04
	inc  e                                           ; $5de6: $1c
	rrca                                             ; $5de7: $0f
	ld   bc, $1401                                   ; $5de8: $01 $01 $14
	dec  de                                          ; $5deb: $1b
	ld   bc, $0301                                   ; $5dec: $01 $01 $03
	ld   c, d                                        ; $5def: $4a
	ld   [bc], a                                     ; $5df0: $02
	or   h                                           ; $5df1: $b4
	ld   l, [hl]                                     ; $5df2: $6e
	sbc  a                                           ; $5df3: $9f
	dec  c                                           ; $5df4: $0d
	nop                                              ; $5df5: $00
	ld   a, [bc]                                     ; $5df6: $0a
	dec  b                                           ; $5df7: $05
	ld   b, b                                        ; $5df8: $40
	rst  $38                                         ; $5df9: $ff
	inc  bc                                          ; $5dfa: $03
	rst  $38                                         ; $5dfb: $ff
	ld   bc, $2801                                   ; $5dfc: $01 $01 $28
	nop                                              ; $5dff: $00
	ld   b, $60                                      ; $5e00: $06 $60
	ld   bc, $0f1c                                   ; $5e02: $01 $1c $0f
	ld   [bc], a                                     ; $5e05: $02
	ld   [bc], a                                     ; $5e06: $02
	inc  d                                           ; $5e07: $14
	inc  e                                           ; $5e08: $1c
	ld   bc, $0301                                   ; $5e09: $01 $01 $03
	jr   z, jr_04d_5e12                              ; $5e0c: $28 $04

	ld   c, b                                        ; $5e0e: $48
	ld   l, [hl]                                     ; $5e0f: $6e
	ld   [hl], c                                     ; $5e10: $71
	ld   l, l                                        ; $5e11: $6d

jr_04d_5e12:
	ld   a, b                                        ; $5e12: $78
	rst  $38                                         ; $5e13: $ff
	rst  $38                                         ; $5e14: $ff
	dec  c                                           ; $5e15: $0d
	inc  bc                                          ; $5e16: $03
	ld   c, d                                        ; $5e17: $4a
	ld   [bc], a                                     ; $5e18: $02
	or   h                                           ; $5e19: $b4
	ld   a, l                                        ; $5e1a: $7d
	ld   bc, $0507                                   ; $5e1b: $01 $07 $05
	or   $03                                         ; $5e1e: $f6 $03
	ld   e, d                                        ; $5e20: $5a
	ld   bc, $5b03                                   ; $5e21: $01 $03 $5b
	sbc  b                                           ; $5e24: $98
	ld   h, l                                        ; $5e25: $65
	adc  h                                           ; $5e26: $8c
	ld   bc, $0104                              ; $5e27: $01 $04 $01
	ld   [$6e0d], sp                                 ; $5e2a: $08 $0d $6e
	sbc  a                                           ; $5e2d: $9f
	dec  c                                           ; $5e2e: $0d
	nop                                              ; $5e2f: $00
	ld   a, [bc]                                     ; $5e30: $0a
	ld   b, $60                                      ; $5e31: $06 $60
	ld   bc, $8407                                   ; $5e33: $01 $07 $84
	dec  b                                           ; $5e36: $05
	inc  b                                           ; $5e37: $04
	add  b                                           ; $5e38: $80
	ld   d, h                                        ; $5e39: $54
	ld   bc, $20ff                                   ; $5e3a: $01 $ff $20
	nop                                              ; $5e3d: $00
	dec  b                                           ; $5e3e: $05
	add  b                                           ; $5e3f: $80
	ld   d, h                                        ; $5e40: $54
	ld   bc, $0001                                   ; $5e41: $01 $01 $00
	ld   bc, $f5ac                                   ; $5e44: $01 $ac $f5
	bit  4, e                                        ; $5e47: $cb $63
	and  c                                           ; $5e49: $a1
	ld   e, d                                        ; $5e4a: $5a
	inc  bc                                          ; $5e4b: $03
	cp   c                                           ; $5e4c: $b9
	sbc  c                                           ; $5e4d: $99
	ld   [bc], a                                     ; $5e4e: $02
	jr   c, jr_04d_5e55                              ; $5e4f: $38 $04

	ld   d, d                                        ; $5e51: $52
	ld   a, h                                        ; $5e52: $7c
	inc  bc                                          ; $5e53: $03
	dec  bc                                          ; $5e54: $0b

jr_04d_5e55:
	ld   a, l                                        ; $5e55: $7d
	ld   sp, hl                                      ; $5e56: $f9
	dec  c                                           ; $5e57: $0d
	nop                                              ; $5e58: $00
	ld   a, [bc]                                     ; $5e59: $0a
	add  hl, de                                      ; $5e5a: $19
	dec  b                                           ; $5e5b: $05
	inc  bc                                          ; $5e5c: $03
	xor  $c4                                         ; $5e5d: $ee $c4
	jp   z, $0000                                   ; $5e5f: $ca $00 $00

	push de                                          ; $5e62: $d5
	push af                                          ; $5e63: $f5
	or   b                                           ; $5e64: $b0
	nop                                              ; $5e65: $00
	ld   bc, $fbd2                                   ; $5e66: $01 $d2 $fb
	ret  c                                           ; $5e69: $d8

	db   $ed                                         ; $5e6a: $ed
	nop                                              ; $5e6b: $00
	ld   [bc], a                                     ; $5e6c: $02
	rlca                                             ; $5e6d: $07
	ld   b, b                                        ; $5e6e: $40
	dec  b                                           ; $5e6f: $05
	ld   [bc], a                                     ; $5e70: $02
	inc  bc                                          ; $5e71: $03
	ld   bc, $2000                                   ; $5e72: $01 $00 $20
	nop                                              ; $5e75: $00
	rlca                                             ; $5e76: $07
	ld   e, l                                        ; $5e77: $5d
	dec  b                                           ; $5e78: $05
	ld   [bc], a                                     ; $5e79: $02
	inc  bc                                          ; $5e7a: $03
	ld   bc, $2001                                   ; $5e7b: $01 $01 $20
	nop                                              ; $5e7e: $00
	rlca                                             ; $5e7f: $07
	ld   e, l                                        ; $5e80: $5d
	dec  b                                           ; $5e81: $05
	ld   [bc], a                                     ; $5e82: $02
	inc  bc                                          ; $5e83: $03
	ld   bc, $2002                                   ; $5e84: $01 $02 $20
	nop                                              ; $5e87: $00
	ld   b, $5d                                      ; $5e88: $06 $5d
	dec  b                                           ; $5e8a: $05
	inc  e                                           ; $5e8b: $1c
	rrca                                             ; $5e8c: $0f
	ld   bc, $1401                                   ; $5e8d: $01 $01 $14
	dec  de                                          ; $5e90: $1b
	ld   bc, $0301                                   ; $5e91: $01 $01 $03
	ld   c, d                                        ; $5e94: $4a
	ld   [bc], a                                     ; $5e95: $02
	or   h                                           ; $5e96: $b4
	ld   l, [hl]                                     ; $5e97: $6e
	sbc  a                                           ; $5e98: $9f
	dec  c                                           ; $5e99: $0d
	nop                                              ; $5e9a: $00
	ld   a, [bc]                                     ; $5e9b: $0a
	dec  b                                           ; $5e9c: $05
	ld   b, b                                        ; $5e9d: $40
	rst  $38                                         ; $5e9e: $ff
	inc  bc                                          ; $5e9f: $03
	rst  $38                                         ; $5ea0: $ff
	ld   bc, $2801                                   ; $5ea1: $01 $01 $28
	nop                                              ; $5ea4: $00
	ld   b, $60                                      ; $5ea5: $06 $60
	ld   bc, $0f1c                                   ; $5ea7: $01 $1c $0f
	ld   [bc], a                                     ; $5eaa: $02
	ld   [bc], a                                     ; $5eab: $02
	inc  d                                           ; $5eac: $14
	inc  e                                           ; $5ead: $1c
	ld   bc, $0301                                   ; $5eae: $01 $01 $03
	jr   z, jr_04d_5eb7                              ; $5eb1: $28 $04

	ld   c, b                                        ; $5eb3: $48
	ld   l, [hl]                                     ; $5eb4: $6e
	ld   [hl], c                                     ; $5eb5: $71
	ld   l, l                                        ; $5eb6: $6d

jr_04d_5eb7:
	ld   a, b                                        ; $5eb7: $78
	rst  $38                                         ; $5eb8: $ff
	rst  $38                                         ; $5eb9: $ff
	dec  c                                           ; $5eba: $0d
	inc  bc                                          ; $5ebb: $03
	ld   c, d                                        ; $5ebc: $4a
	ld   [bc], a                                     ; $5ebd: $02
	or   h                                           ; $5ebe: $b4
	ld   a, l                                        ; $5ebf: $7d
	ld   bc, $ee07                                   ; $5ec0: $01 $07 $ee
	call nz, $01ca                                   ; $5ec3: $c4 $ca $01
	ld   [$9f6e], sp                                 ; $5ec6: $08 $6e $9f
	dec  c                                           ; $5ec9: $0d
	nop                                              ; $5eca: $00
	ld   a, [bc]                                     ; $5ecb: $0a
	ld   b, $60                                      ; $5ecc: $06 $60
	ld   bc, $2e07                                   ; $5ece: $01 $07 $2e
	ld   b, $04                                      ; $5ed1: $06 $04
	add  b                                           ; $5ed3: $80
	ld   d, l                                        ; $5ed4: $55
	ld   bc, $20ff                                   ; $5ed5: $01 $ff $20
	nop                                              ; $5ed8: $00
	dec  b                                           ; $5ed9: $05
	add  b                                           ; $5eda: $80
	ld   d, l                                        ; $5edb: $55
	ld   bc, $0001                                   ; $5edc: $01 $01 $00
	ld   bc, $f5ac                                   ; $5edf: $01 $ac $f5
	bit  4, e                                        ; $5ee2: $cb $63
	and  c                                           ; $5ee4: $a1
	ld   a, h                                        ; $5ee5: $7c
	inc  b                                           ; $5ee6: $04
	adc  d                                           ; $5ee7: $8a
	inc  bc                                          ; $5ee8: $03
	ld   e, [hl]                                     ; $5ee9: $5e
	ld   [bc], a                                     ; $5eea: $02
	adc  h                                           ; $5eeb: $8c
	ld   a, l                                        ; $5eec: $7d
	ld   sp, hl                                      ; $5eed: $f9
	dec  c                                           ; $5eee: $0d
	nop                                              ; $5eef: $00
	ld   a, [bc]                                     ; $5ef0: $0a
	add  hl, de                                      ; $5ef1: $19
	dec  b                                           ; $5ef2: $05
	inc  bc                                          ; $5ef3: $03
	cp   d                                           ; $5ef4: $ba
	ei                                               ; $5ef5: $fb
	jp   nc, $ecfb                                   ; $5ef6: $d2 $fb $ec

	push af                                          ; $5ef9: $f5
	jp   nc, $00a5                                   ; $5efa: $d2 $a5 $00

	nop                                              ; $5efd: $00
	cp   d                                           ; $5efe: $ba
	ei                                               ; $5eff: $fb
	jp   nc, $c7fb                                   ; $5f00: $d2 $fb $c7

	push af                                          ; $5f03: $f5
	jp   nc, $00a5                                   ; $5f04: $d2 $a5 $00

	ld   bc, $fbba                                   ; $5f07: $01 $ba $fb
	jp   nc, $ecfb                                   ; $5f0a: $d2 $fb $ec

	ei                                               ; $5f0d: $fb
	jp   nz, $0200                                   ; $5f0e: $c2 $00 $02

	rlca                                             ; $5f11: $07
	db   $e4                                         ; $5f12: $e4
	dec  b                                           ; $5f13: $05
	ld   [bc], a                                     ; $5f14: $02
	inc  bc                                          ; $5f15: $03
	ld   bc, $2000                                   ; $5f16: $01 $00 $20
	nop                                              ; $5f19: $00
	rlca                                             ; $5f1a: $07
	ld   bc, $0206                                   ; $5f1b: $01 $06 $02
	inc  bc                                          ; $5f1e: $03
	ld   bc, $2001                                   ; $5f1f: $01 $01 $20
	nop                                              ; $5f22: $00
	rlca                                             ; $5f23: $07
	ld   bc, $0206                                   ; $5f24: $01 $06 $02
	inc  bc                                          ; $5f27: $03
	ld   bc, $2002                                   ; $5f28: $01 $02 $20
	nop                                              ; $5f2b: $00
	ld   b, $01                                      ; $5f2c: $06 $01
	ld   b, $1c                                      ; $5f2e: $06 $1c
	rrca                                             ; $5f30: $0f
	ld   bc, $1401                                   ; $5f31: $01 $01 $14
	dec  de                                          ; $5f34: $1b
	ld   bc, $0301                                   ; $5f35: $01 $01 $03
	ld   c, d                                        ; $5f38: $4a
	ld   [bc], a                                     ; $5f39: $02
	or   h                                           ; $5f3a: $b4
	ld   l, [hl]                                     ; $5f3b: $6e
	sbc  a                                           ; $5f3c: $9f
	dec  c                                           ; $5f3d: $0d
	nop                                              ; $5f3e: $00
	ld   a, [bc]                                     ; $5f3f: $0a
	dec  b                                           ; $5f40: $05
	ld   b, b                                        ; $5f41: $40
	rst  $38                                         ; $5f42: $ff
	inc  bc                                          ; $5f43: $03
	rst  $38                                         ; $5f44: $ff
	ld   bc, $2801                                   ; $5f45: $01 $01 $28
	nop                                              ; $5f48: $00
	ld   b, $60                                      ; $5f49: $06 $60
	ld   bc, $0f1c                                   ; $5f4b: $01 $1c $0f
	ld   [bc], a                                     ; $5f4e: $02
	ld   [bc], a                                     ; $5f4f: $02
	inc  d                                           ; $5f50: $14
	inc  e                                           ; $5f51: $1c
	ld   bc, $0301                                   ; $5f52: $01 $01 $03
	jr   z, jr_04d_5f5b                              ; $5f55: $28 $04

	ld   c, b                                        ; $5f57: $48
	ld   l, [hl]                                     ; $5f58: $6e
	ld   [hl], c                                     ; $5f59: $71
	ld   l, l                                        ; $5f5a: $6d

jr_04d_5f5b:
	ld   a, b                                        ; $5f5b: $78
	rst  $38                                         ; $5f5c: $ff
	rst  $38                                         ; $5f5d: $ff
	dec  c                                           ; $5f5e: $0d
	inc  bc                                          ; $5f5f: $03
	ld   c, d                                        ; $5f60: $4a
	ld   [bc], a                                     ; $5f61: $02
	or   h                                           ; $5f62: $b4
	ld   a, l                                        ; $5f63: $7d
	dec  c                                           ; $5f64: $0d
	ld   bc, $ba07                                   ; $5f65: $01 $07 $ba
	ei                                               ; $5f68: $fb
	jp   nc, $ecfb                                   ; $5f69: $d2 $fb $ec

	push af                                          ; $5f6c: $f5
	jp   nc, $01a5                                   ; $5f6d: $d2 $a5 $01

	ld   [$9f6e], sp                                 ; $5f70: $08 $6e $9f
	dec  c                                           ; $5f73: $0d
	nop                                              ; $5f74: $00
	ld   a, [bc]                                     ; $5f75: $0a
	ld   b, $60                                      ; $5f76: $06 $60
	ld   bc, $db07                                   ; $5f78: $01 $07 $db
	ld   b, $04                                      ; $5f7b: $06 $04
	add  b                                           ; $5f7d: $80
	ld   d, [hl]                                     ; $5f7e: $56
	ld   bc, $20ff                                   ; $5f7f: $01 $ff $20
	nop                                              ; $5f82: $00
	dec  b                                           ; $5f83: $05
	add  b                                           ; $5f84: $80
	ld   d, [hl]                                     ; $5f85: $56
	ld   bc, $0001                                   ; $5f86: $01 $01 $00
	ld   bc, $f5ac                                   ; $5f89: $01 $ac $f5
	bit  4, e                                        ; $5f8c: $cb $63
	and  c                                           ; $5f8e: $a1
	ld   e, d                                        ; $5f8f: $5a
	inc  b                                           ; $5f90: $04
	ld   c, e                                        ; $5f91: $4b
	inc  b                                           ; $5f92: $04
	ldh  a, [c]                                      ; $5f93: $f2
	ld   [bc], a                                     ; $5f94: $02
	sub  a                                           ; $5f95: $97
	ld   [hl], l                                     ; $5f96: $75
	dec  c                                           ; $5f97: $0d
	ld   [bc], a                                     ; $5f98: $02
	rra                                              ; $5f99: $1f
	ld   h, [hl]                                     ; $5f9a: $66
	sbc  c                                           ; $5f9b: $99
	inc  b                                           ; $5f9c: $04
	db   $ec                                         ; $5f9d: $ec
	ld   a, l                                        ; $5f9e: $7d
	ld   sp, hl                                      ; $5f9f: $f9
	dec  c                                           ; $5fa0: $0d
	nop                                              ; $5fa1: $00
	ld   a, [bc]                                     ; $5fa2: $0a
	add  hl, de                                      ; $5fa3: $19
	dec  b                                           ; $5fa4: $05
	inc  bc                                          ; $5fa5: $03
	inc  bc                                          ; $5fa6: $03
	ld   d, b                                        ; $5fa7: $50
	ld   [bc], a                                     ; $5fa8: $02
	ld   a, h                                        ; $5fa9: $7c
	ld   [bc], a                                     ; $5faa: $02
	or   [hl]                                        ; $5fab: $b6
	nop                                              ; $5fac: $00
	nop                                              ; $5fad: $00
	inc  bc                                          ; $5fae: $03
	ei                                               ; $5faf: $fb
	inc  b                                           ; $5fb0: $04
	ld   a, [hl]                                     ; $5fb1: $7e
	ld   [bc], a                                     ; $5fb2: $02
	ld   a, l                                        ; $5fb3: $7d
	nop                                              ; $5fb4: $00
	ld   bc, $f804                                   ; $5fb5: $01 $04 $f8
	ld   [bc], a                                     ; $5fb8: $02
	add  a                                           ; $5fb9: $87
	inc  b                                           ; $5fba: $04
	or   a                                           ; $5fbb: $b7
	inc  bc                                          ; $5fbc: $03
	add  d                                           ; $5fbd: $82
	nop                                              ; $5fbe: $00
	ld   [bc], a                                     ; $5fbf: $02
	rlca                                             ; $5fc0: $07
	sub  e                                           ; $5fc1: $93
	ld   b, $02                                      ; $5fc2: $06 $02
	inc  bc                                          ; $5fc4: $03
	ld   bc, $2000                                   ; $5fc5: $01 $00 $20
	nop                                              ; $5fc8: $00
	rlca                                             ; $5fc9: $07
	or   b                                           ; $5fca: $b0
	ld   b, $02                                      ; $5fcb: $06 $02
	inc  bc                                          ; $5fcd: $03
	ld   bc, $2001                                   ; $5fce: $01 $01 $20
	nop                                              ; $5fd1: $00
	rlca                                             ; $5fd2: $07
	or   b                                           ; $5fd3: $b0
	ld   b, $02                                      ; $5fd4: $06 $02
	inc  bc                                          ; $5fd6: $03
	ld   bc, $2002                                   ; $5fd7: $01 $02 $20
	nop                                              ; $5fda: $00
	ld   b, $b0                                      ; $5fdb: $06 $b0
	ld   b, $1c                                      ; $5fdd: $06 $1c
	rrca                                             ; $5fdf: $0f
	ld   bc, $1401                                   ; $5fe0: $01 $01 $14
	dec  de                                          ; $5fe3: $1b
	ld   bc, $0301                                   ; $5fe4: $01 $01 $03
	ld   c, d                                        ; $5fe7: $4a
	ld   [bc], a                                     ; $5fe8: $02
	or   h                                           ; $5fe9: $b4
	ld   l, [hl]                                     ; $5fea: $6e
	sbc  a                                           ; $5feb: $9f
	dec  c                                           ; $5fec: $0d
	nop                                              ; $5fed: $00
	ld   a, [bc]                                     ; $5fee: $0a
	dec  b                                           ; $5fef: $05
	ld   b, b                                        ; $5ff0: $40
	rst  $38                                         ; $5ff1: $ff
	inc  bc                                          ; $5ff2: $03
	rst  $38                                         ; $5ff3: $ff
	ld   bc, $2801                                   ; $5ff4: $01 $01 $28
	nop                                              ; $5ff7: $00
	ld   b, $60                                      ; $5ff8: $06 $60
	ld   bc, $0f1c                                   ; $5ffa: $01 $1c $0f
	ld   [bc], a                                     ; $5ffd: $02
	ld   [bc], a                                     ; $5ffe: $02
	inc  d                                           ; $5fff: $14
	inc  e                                           ; $6000: $1c
	ld   bc, $0301                                   ; $6001: $01 $01 $03
	jr   z, jr_04d_600a                              ; $6004: $28 $04

	ld   c, b                                        ; $6006: $48
	ld   l, [hl]                                     ; $6007: $6e
	ld   [hl], c                                     ; $6008: $71
	ld   l, l                                        ; $6009: $6d

jr_04d_600a:
	ld   a, b                                        ; $600a: $78
	rst  $38                                         ; $600b: $ff
	rst  $38                                         ; $600c: $ff
	dec  c                                           ; $600d: $0d
	inc  bc                                          ; $600e: $03
	ld   c, d                                        ; $600f: $4a
	ld   [bc], a                                     ; $6010: $02
	or   h                                           ; $6011: $b4
	ld   a, l                                        ; $6012: $7d
	sbc  [hl]                                        ; $6013: $9e
	ld   bc, $0307                                   ; $6014: $01 $07 $03
	ld   d, b                                        ; $6017: $50
	ld   [bc], a                                     ; $6018: $02
	ld   a, h                                        ; $6019: $7c
	ld   [bc], a                                     ; $601a: $02
	or   [hl]                                        ; $601b: $b6
	ld   bc, $6e08                                   ; $601c: $01 $08 $6e
	sbc  a                                           ; $601f: $9f
	dec  c                                           ; $6020: $0d
	nop                                              ; $6021: $00
	ld   a, [bc]                                     ; $6022: $0a
	ld   b, $60                                      ; $6023: $06 $60
	ld   bc, $c107                                   ; $6025: $01 $07 $c1
	ld   bc, $8004                                   ; $6028: $01 $04 $80
	ld   d, a                                        ; $602b: $57
	ld   bc, $20ff                                   ; $602c: $01 $ff $20
	nop                                              ; $602f: $00
	dec  b                                           ; $6030: $05
	add  b                                           ; $6031: $80
	ld   d, a                                        ; $6032: $57
	ld   bc, $0001                                   ; $6033: $01 $01 $00
	ld   bc, $f5ac                                   ; $6036: $01 $ac $f5
	bit  4, e                                        ; $6039: $cb $63
	and  c                                           ; $603b: $a1
	ld   e, d                                        ; $603c: $5a
	ld   [bc], a                                     ; $603d: $02
	sbc  d                                           ; $603e: $9a
	ld   e, e                                        ; $603f: $5b
	ld   a, b                                        ; $6040: $78
	or   l                                           ; $6041: $b5
	ei                                               ; $6042: $fb
	and  $76                                         ; $6043: $e6 $76
	ld   a, l                                        ; $6045: $7d
	dec  c                                           ; $6046: $0d
	inc  bc                                          ; $6047: $03
	ld   l, b                                        ; $6048: $68
	ld   a, h                                        ; $6049: $7c
	ld   d, h                                        ; $604a: $54
	ld   l, a                                        ; $604b: $6f
	ld   [hl], a                                     ; $604c: $77
	sbc  d                                           ; $604d: $9a
	ld   sp, hl                                      ; $604e: $f9
	dec  c                                           ; $604f: $0d
	nop                                              ; $6050: $00
	ld   a, [bc]                                     ; $6051: $0a
	add  hl, de                                      ; $6052: $19
	dec  b                                           ; $6053: $05
	inc  bc                                          ; $6054: $03
	ld   a, c                                        ; $6055: $79
	ld   e, d                                        ; $6056: $5a
	ld   d, h                                        ; $6057: $54
	sbc  b                                           ; $6058: $98
	nop                                              ; $6059: $00
	nop                                              ; $605a: $00
	ld   d, d                                        ; $605b: $52
	ld   e, d                                        ; $605c: $5a
	ld   d, h                                        ; $605d: $54
	sbc  b                                           ; $605e: $98
	nop                                              ; $605f: $00
	ld   bc, $5a78                                   ; $6060: $01 $78 $5a
	ld   d, h                                        ; $6063: $54
	sbc  b                                           ; $6064: $98
	nop                                              ; $6065: $00
	ld   [bc], a                                     ; $6066: $02
	rlca                                             ; $6067: $07
	ld   a, [hl-]                                    ; $6068: $3a
	rlca                                             ; $6069: $07
	ld   [bc], a                                     ; $606a: $02
	inc  bc                                          ; $606b: $03
	ld   bc, $2000                                   ; $606c: $01 $00 $20
	nop                                              ; $606f: $00
	rlca                                             ; $6070: $07
	ld   d, a                                        ; $6071: $57
	rlca                                             ; $6072: $07
	ld   [bc], a                                     ; $6073: $02
	inc  bc                                          ; $6074: $03
	ld   bc, $2001                                   ; $6075: $01 $01 $20
	nop                                              ; $6078: $00
	rlca                                             ; $6079: $07
	ld   d, a                                        ; $607a: $57
	rlca                                             ; $607b: $07
	ld   [bc], a                                     ; $607c: $02
	inc  bc                                          ; $607d: $03
	ld   bc, $2002                                   ; $607e: $01 $02 $20
	nop                                              ; $6081: $00
	ld   b, $57                                      ; $6082: $06 $57
	rlca                                             ; $6084: $07
	inc  e                                           ; $6085: $1c
	rrca                                             ; $6086: $0f
	ld   bc, $1401                                   ; $6087: $01 $01 $14
	dec  de                                          ; $608a: $1b
	ld   bc, $0301                                   ; $608b: $01 $01 $03
	ld   c, d                                        ; $608e: $4a
	ld   [bc], a                                     ; $608f: $02
	or   h                                           ; $6090: $b4
	ld   l, [hl]                                     ; $6091: $6e
	sbc  a                                           ; $6092: $9f
	dec  c                                           ; $6093: $0d
	nop                                              ; $6094: $00
	ld   a, [bc]                                     ; $6095: $0a
	dec  b                                           ; $6096: $05
	ld   b, b                                        ; $6097: $40
	rst  $38                                         ; $6098: $ff
	inc  bc                                          ; $6099: $03
	rst  $38                                         ; $609a: $ff
	ld   bc, $2801                                   ; $609b: $01 $01 $28
	nop                                              ; $609e: $00
	ld   b, $60                                      ; $609f: $06 $60
	ld   bc, $0f1c                                   ; $60a1: $01 $1c $0f
	ld   [bc], a                                     ; $60a4: $02
	ld   [bc], a                                     ; $60a5: $02
	inc  d                                           ; $60a6: $14
	inc  e                                           ; $60a7: $1c
	ld   bc, $0301                                   ; $60a8: $01 $01 $03
	jr   z, jr_04d_60b1                              ; $60ab: $28 $04

	ld   c, b                                        ; $60ad: $48
	ld   l, [hl]                                     ; $60ae: $6e
	ld   [hl], c                                     ; $60af: $71
	ld   l, l                                        ; $60b0: $6d

jr_04d_60b1:
	ld   a, b                                        ; $60b1: $78
	rst  $38                                         ; $60b2: $ff
	rst  $38                                         ; $60b3: $ff
	dec  c                                           ; $60b4: $0d
	inc  bc                                          ; $60b5: $03
	ld   c, d                                        ; $60b6: $4a
	ld   [bc], a                                     ; $60b7: $02
	or   h                                           ; $60b8: $b4
	ld   a, l                                        ; $60b9: $7d
	sbc  [hl]                                        ; $60ba: $9e
	ld   bc, $7907                                   ; $60bb: $01 $07 $79
	ld   e, d                                        ; $60be: $5a
	ld   d, h                                        ; $60bf: $54
	sbc  b                                           ; $60c0: $98
	ld   bc, $6e08                                   ; $60c1: $01 $08 $6e
	sbc  a                                           ; $60c4: $9f
	dec  c                                           ; $60c5: $0d
	nop                                              ; $60c6: $00
	ld   a, [bc]                                     ; $60c7: $0a
	ld   b, $60                                      ; $60c8: $06 $60
	ld   bc, $0d00                                   ; $60ca: $01 $00 $0d
	inc  bc                                          ; $60cd: $03
	nop                                              ; $60ce: $00
	rrca                                             ; $60cf: $0f
	nop                                              ; $60d0: $00
	ld   bc, $0102                                   ; $60d1: $01 $02 $01
	ld   e, b                                        ; $60d4: $58
	ld   a, l                                        ; $60d5: $7d
	sub  [hl]                                        ; $60d6: $96
	ld   d, h                                        ; $60d7: $54
	ld   h, d                                        ; $60d8: $62
	ld   h, h                                        ; $60d9: $64
	ld   d, d                                        ; $60da: $52
	adc  h                                           ; $60db: $8c
	ld   h, a                                        ; $60dc: $67
	sbc  a                                           ; $60dd: $9f
	dec  c                                           ; $60de: $0d
	nop                                              ; $60df: $00
	ld   a, [bc]                                     ; $60e0: $0a
	rrca                                             ; $60e1: $0f
	inc  bc                                          ; $60e2: $03
	nop                                              ; $60e3: $00
	ld   bc, $0008                                   ; $60e4: $01 $08 $00
	ld   e, l                                        ; $60e7: $5d
	and  c                                           ; $60e8: $a1
	sbc  a                                           ; $60e9: $9f
	dec  c                                           ; $60ea: $0d
	ld   e, b                                        ; $60eb: $58
	ld   a, l                                        ; $60ec: $7d
	sub  [hl]                                        ; $60ed: $96
	ld   d, h                                        ; $60ee: $54
	sbc  a                                           ; $60ef: $9f
	dec  c                                           ; $60f0: $0d
	nop                                              ; $60f1: $00
	ld   a, [bc]                                     ; $60f2: $0a
	rrca                                             ; $60f3: $0f
	nop                                              ; $60f4: $00
	ld   bc, $0101                                   ; $60f5: $01 $01 $01
	inc  bc                                          ; $60f8: $03
	inc  b                                           ; $60f9: $04
	ld   c, c                                        ; $60fa: $49
	and  b                                           ; $60fb: $a0
	ld   [bc], a                                     ; $60fc: $02
	jp   nz, Jump_04d_5461                           ; $60fd: $c2 $61 $54

	ld   e, c                                        ; $6100: $59
	ld   a, b                                        ; $6101: $78
	rst  $38                                         ; $6102: $ff
	rst  $38                                         ; $6103: $ff
	ld   bc, $0d04                                   ; $6104: $01 $04 $0d
	nop                                              ; $6107: $00
	ld   a, [bc]                                     ; $6108: $0a
	add  hl, de                                      ; $6109: $19
	dec  b                                           ; $610a: $05
	inc  bc                                          ; $610b: $03
	inc  b                                           ; $610c: $04
	adc  d                                           ; $610d: $8a
	inc  bc                                          ; $610e: $03
	ld   e, [hl]                                     ; $610f: $5e
	ld   [bc], a                                     ; $6110: $02
	adc  h                                           ; $6111: $8c
	ld   a, h                                        ; $6112: $7c
	dec  b                                           ; $6113: $05
	jr   nz, jr_04d_6116                             ; $6114: $20 $00

jr_04d_6116:
	nop                                              ; $6116: $00
	inc  bc                                          ; $6117: $03
	ld   l, d                                        ; $6118: $6a
	add  a                                           ; $6119: $87
	inc  b                                           ; $611a: $04
	sub  d                                           ; $611b: $92
	ld   a, c                                        ; $611c: $79
	ld   [hl], d                                     ; $611d: $72
	ld   d, d                                        ; $611e: $52
	ld   [hl], h                                     ; $611f: $74
	nop                                              ; $6120: $00
	ld   bc, $0804                                   ; $6121: $01 $04 $08
	ld   [bc], a                                     ; $6124: $02
	adc  a                                           ; $6125: $8f
	ld   [bc], a                                     ; $6126: $02
	sub  b                                           ; $6127: $90
	ld   [bc], a                                     ; $6128: $02
	sub  c                                           ; $6129: $91
	inc  b                                           ; $612a: $04
	add  hl, bc                                      ; $612b: $09
	ld   a, c                                        ; $612c: $79
	ld   [hl], d                                     ; $612d: $72
	ld   d, d                                        ; $612e: $52
	ld   [hl], h                                     ; $612f: $74
	nop                                              ; $6130: $00
	ld   [bc], a                                     ; $6131: $02
	rlca                                             ; $6132: $07
	xor  h                                           ; $6133: $ac
	nop                                              ; $6134: $00
	ld   [bc], a                                     ; $6135: $02
	inc  bc                                          ; $6136: $03
	ld   bc, $2000                                   ; $6137: $01 $00 $20
	nop                                              ; $613a: $00
	rlca                                             ; $613b: $07
	inc  bc                                          ; $613c: $03
	ld   [bc], a                                     ; $613d: $02
	ld   [bc], a                                     ; $613e: $02
	inc  bc                                          ; $613f: $03
	ld   bc, $2001                                   ; $6140: $01 $01 $20
	nop                                              ; $6143: $00
	rlca                                             ; $6144: $07
	ld   d, b                                        ; $6145: $50
	inc  bc                                          ; $6146: $03
	ld   [bc], a                                     ; $6147: $02
	inc  bc                                          ; $6148: $03
	ld   bc, $2002                                   ; $6149: $01 $02 $20
	nop                                              ; $614c: $00
	ld   b, $84                                      ; $614d: $06 $84
	nop                                              ; $614f: $00
	inc  e                                           ; $6150: $1c
	inc  bc                                          ; $6151: $03
	nop                                              ; $6152: $00
	nop                                              ; $6153: $00
	ld   bc, $f304                                   ; $6154: $01 $04 $f3
	ld   e, d                                        ; $6157: $5a
	ld   a, b                                        ; $6158: $78
	ld   d, d                                        ; $6159: $52
	ld   a, b                                        ; $615a: $78
	sub  a                                           ; $615b: $97
	sbc  [hl]                                        ; $615c: $9e
	inc  bc                                          ; $615d: $03
	ld   l, l                                        ; $615e: $6d
	dec  b                                           ; $615f: $05
	add  hl, de                                      ; $6160: $19
	ld   a, h                                        ; $6161: $7c
	ld   h, l                                        ; $6162: $65
	ld   l, l                                        ; $6163: $6d
	ld   e, l                                        ; $6164: $5d
	and  b                                           ; $6165: $a0
	dec  c                                           ; $6166: $0d
	ld   h, l                                        ; $6167: $65
	ld   a, b                                        ; $6168: $78
	ld   h, e                                        ; $6169: $63
	ld   d, d                                        ; $616a: $52
	sbc  a                                           ; $616b: $9f
	dec  c                                           ; $616c: $0d
	nop                                              ; $616d: $00
	ld   a, [bc]                                     ; $616e: $0a
	dec  c                                           ; $616f: $0d
	nop                                              ; $6170: $00
	nop                                              ; $6171: $00
	rrca                                             ; $6172: $0f
	nop                                              ; $6173: $00
	ld   bc, $1e09                                   ; $6174: $01 $09 $1e
	nop                                              ; $6177: $00
	rrca                                             ; $6178: $0f
	nop                                              ; $6179: $00
	ld   bc, $df01                                   ; $617a: $01 $01 $df
	db   $ec                                         ; $617d: $ec
	and  e                                           ; $617e: $a3
	ld   h, e                                        ; $617f: $63
	and  c                                           ; $6180: $a1
	ld   a, h                                        ; $6181: $7c
	inc  b                                           ; $6182: $04
	adc  d                                           ; $6183: $8a
	inc  bc                                          ; $6184: $03
	ld   e, [hl]                                     ; $6185: $5e
	ld   [bc], a                                     ; $6186: $02
	adc  h                                           ; $6187: $8c
	ld   [hl], c                                     ; $6188: $71
	ld   [hl], h                                     ; $6189: $74
	dec  c                                           ; $618a: $0d
	inc  b                                           ; $618b: $04
	ld   c, c                                        ; $618c: $49
	halt                                             ; $618d: $76
	ld   d, d                                        ; $618e: $52
	ld   d, h                                        ; $618f: $54
	inc  b                                           ; $6190: $04
	rst  ToBoot                                         ; $6191: $c7
	inc  bc                                          ; $6192: $03
	ld   c, a                                        ; $6193: $4f
	ld   a, b                                        ; $6194: $78
	and  c                                           ; $6195: $a1
	ld   [hl], l                                     ; $6196: $75
	ld   h, a                                        ; $6197: $67
	ld   e, c                                        ; $6198: $59
	ld   sp, hl                                      ; $6199: $f9
	dec  c                                           ; $619a: $0d
	nop                                              ; $619b: $00
	ld   a, [bc]                                     ; $619c: $0a
	inc  e                                           ; $619d: $1c
	inc  bc                                          ; $619e: $03
	nop                                              ; $619f: $00
	nop                                              ; $61a0: $00
	ld   bc, $ceba                                   ; $61a1: $01 $ba $ce
	or   c                                           ; $61a4: $b1
	ei                                               ; $61a5: $fb
	db   $eb                                         ; $61a6: $eb
	jp   nz, $96ac                                   ; $61a7: $c2 $ac $96

	sbc  a                                           ; $61aa: $9f
	dec  c                                           ; $61ab: $0d
	nop                                              ; $61ac: $00
	ld   a, [bc]                                     ; $61ad: $0a
	add  hl, de                                      ; $61ae: $19
	dec  b                                           ; $61af: $05
	inc  bc                                          ; $61b0: $03
	cp   d                                           ; $61b1: $ba
	adc  $b1                                         ; $61b2: $ce $b1
	ei                                               ; $61b4: $fb
	db   $eb                                         ; $61b5: $eb
	jp   nz, Jump_04d_75ac                           ; $61b6: $c2 $ac $75

	ld   h, a                                        ; $61b9: $67
	ld   e, c                                        ; $61ba: $59
	ld   sp, hl                                      ; $61bb: $f9
	nop                                              ; $61bc: $00
	nop                                              ; $61bd: $00
	cp   d                                           ; $61be: $ba
	adc  $fb                                         ; $61bf: $ce $fb
	or   b                                           ; $61c1: $b0
	db   $eb                                         ; $61c2: $eb
	jp   nz, Jump_04d_75ac                           ; $61c3: $c2 $ac $75

	ld   h, a                                        ; $61c6: $67
	ld   e, c                                        ; $61c7: $59
	ld   sp, hl                                      ; $61c8: $f9
	nop                                              ; $61c9: $00
	ld   bc, $b1ba                                   ; $61ca: $01 $ba $b1
	adc  $fb                                         ; $61cd: $ce $fb
	db   $eb                                         ; $61cf: $eb
	jp   nz, Jump_04d_75ac                           ; $61d0: $c2 $ac $75

	ld   h, a                                        ; $61d3: $67
	ld   e, c                                        ; $61d4: $59
	ld   sp, hl                                      ; $61d5: $f9
	nop                                              ; $61d6: $00
	ld   [bc], a                                     ; $61d7: $02
	rlca                                             ; $61d8: $07
	ld   a, [hl+]                                    ; $61d9: $2a
	ld   bc, $0302                                   ; $61da: $01 $02 $03
	ld   bc, $2000                                   ; $61dd: $01 $00 $20
	nop                                              ; $61e0: $00
	rlca                                             ; $61e1: $07
	ld   l, [hl]                                     ; $61e2: $6e
	ld   bc, $0302                                   ; $61e3: $01 $02 $03
	ld   bc, $2001                                   ; $61e6: $01 $01 $20
	nop                                              ; $61e9: $00
	rlca                                             ; $61ea: $07
	and  l                                           ; $61eb: $a5
	ld   bc, $0302                                   ; $61ec: $01 $02 $03
	ld   bc, $2002                                   ; $61ef: $01 $02 $20
	nop                                              ; $61f2: $00
	ld   b, $d9                                      ; $61f3: $06 $d9
	ld   bc, $000f                                   ; $61f5: $01 $0f $00
	ld   bc, $ba01                                   ; $61f8: $01 $01 $ba
	adc  $b1                                         ; $61fb: $ce $b1
	ei                                               ; $61fd: $fb
	db   $eb                                         ; $61fe: $eb
	jp   nz, Jump_04d_75ac                           ; $61ff: $c2 $ac $75

	ld   h, a                                        ; $6202: $67
	ld   e, c                                        ; $6203: $59
	ld   sp, hl                                      ; $6204: $f9
	dec  c                                           ; $6205: $0d
	nop                                              ; $6206: $00
	ld   a, [bc]                                     ; $6207: $0a
	inc  e                                           ; $6208: $1c
	inc  bc                                          ; $6209: $03
	inc  bc                                          ; $620a: $03
	inc  bc                                          ; $620b: $03
	dec  e                                           ; $620c: $1d
	ld   b, b                                        ; $620d: $40
	inc  de                                          ; $620e: $13
	inc  bc                                          ; $620f: $03
	inc  de                                          ; $6210: $13
	ld   bc, $2802                                   ; $6211: $01 $02 $28
	nop                                              ; $6214: $00
	ld   bc, $546b                                   ; $6215: $01 $6b $54
	sub  [hl]                                        ; $6218: $96
	sbc  a                                           ; $6219: $9f
	dec  c                                           ; $621a: $0d
	rst  $28                                         ; $621b: $ef
	cp   b                                           ; $621c: $b8
	and  e                                           ; $621d: $a3
	ld   [bc], a                                     ; $621e: $02
	and  h                                           ; $621f: $a4
	ld   [hl], l                                     ; $6220: $75
	ld   bc, $0307                                   ; $6221: $01 $07 $03
	inc  bc                                          ; $6224: $03
	ld   [bc], a                                     ; $6225: $02
	cp   b                                           ; $6226: $b8
	ld   bc, $0d08                                   ; $6227: $01 $08 $0d
	halt                                             ; $622a: $76
	ld   d, d                                        ; $622b: $52
	ld   d, h                                        ; $622c: $54
	ld   [bc], a                                     ; $622d: $02
	ld   b, $04                                      ; $622e: $06 $04
	jp   nc, Jump_04d_7c78                           ; $6230: $d2 $78 $7c

	sbc  a                                           ; $6233: $9f
	dec  c                                           ; $6234: $0d
	nop                                              ; $6235: $00
	ld   a, [bc]                                     ; $6236: $0a
	ld   b, $d9                                      ; $6237: $06 $d9
	ld   bc, $000f                                   ; $6239: $01 $0f $00
	ld   bc, $ba01                                   ; $623c: $01 $01 $ba
	adc  $fb                                         ; $623f: $ce $fb
	or   b                                           ; $6241: $b0
	db   $eb                                         ; $6242: $eb
	jp   nz, Jump_04d_75ac                           ; $6243: $c2 $ac $75

	ld   h, a                                        ; $6246: $67
	ld   e, c                                        ; $6247: $59
	ld   sp, hl                                      ; $6248: $f9
	dec  c                                           ; $6249: $0d
	nop                                              ; $624a: $00
	ld   a, [bc]                                     ; $624b: $0a
	inc  e                                           ; $624c: $1c
	inc  bc                                          ; $624d: $03
	inc  b                                           ; $624e: $04
	inc  b                                           ; $624f: $04
	dec  e                                           ; $6250: $1d
	ld   b, b                                        ; $6251: $40
	inc  de                                          ; $6252: $13
	inc  bc                                          ; $6253: $03
	inc  de                                          ; $6254: $13
	ld   bc, $2901                                   ; $6255: $01 $01 $29
	nop                                              ; $6258: $00
	ld   bc, $1402                                   ; $6259: $01 $02 $14
	ld   d, h                                        ; $625c: $54
	sbc  l                                           ; $625d: $9d
	sub  [hl]                                        ; $625e: $96
	rst  $38                                         ; $625f: $ff
	rst  $38                                         ; $6260: $ff
	dec  c                                           ; $6261: $0d
	cp   d                                           ; $6262: $ba
	adc  $b1                                         ; $6263: $ce $b1
	ei                                               ; $6265: $fb
	db   $eb                                         ; $6266: $eb
	jp   nz, $96ac                                   ; $6267: $c2 $ac $96

	sbc  a                                           ; $626a: $9f
	dec  c                                           ; $626b: $0d
	nop                                              ; $626c: $00
	ld   a, [bc]                                     ; $626d: $0a
	ld   b, $d9                                      ; $626e: $06 $d9
	ld   bc, $000f                                   ; $6270: $01 $0f $00
	ld   bc, $ba01                                   ; $6273: $01 $01 $ba
	or   c                                           ; $6276: $b1
	adc  $fb                                         ; $6277: $ce $fb
	db   $eb                                         ; $6279: $eb
	jp   nz, Jump_04d_75ac                           ; $627a: $c2 $ac $75

	ld   h, a                                        ; $627d: $67
	ld   e, c                                        ; $627e: $59
	ld   sp, hl                                      ; $627f: $f9
	dec  c                                           ; $6280: $0d
	nop                                              ; $6281: $00
	ld   a, [bc]                                     ; $6282: $0a
	inc  e                                           ; $6283: $1c
	inc  bc                                          ; $6284: $03
	inc  b                                           ; $6285: $04
	inc  b                                           ; $6286: $04
	dec  e                                           ; $6287: $1d
	ld   b, b                                        ; $6288: $40
	inc  de                                          ; $6289: $13
	inc  bc                                          ; $628a: $03
	inc  de                                          ; $628b: $13
	ld   bc, $2901                                   ; $628c: $01 $01 $29
	nop                                              ; $628f: $00
	ld   bc, $1402                                   ; $6290: $01 $02 $14
	ld   d, h                                        ; $6293: $54
	sbc  l                                           ; $6294: $9d
	sub  [hl]                                        ; $6295: $96
	rst  $38                                         ; $6296: $ff
	rst  $38                                         ; $6297: $ff
	dec  c                                           ; $6298: $0d
	cp   d                                           ; $6299: $ba
	adc  $b1                                         ; $629a: $ce $b1
	ei                                               ; $629c: $fb
	db   $eb                                         ; $629d: $eb
	jp   nz, $96ac                                   ; $629e: $c2 $ac $96

	sbc  a                                           ; $62a1: $9f
	dec  c                                           ; $62a2: $0d
	nop                                              ; $62a3: $00
	ld   a, [bc]                                     ; $62a4: $0a
	inc  e                                           ; $62a5: $1c
	inc  bc                                          ; $62a6: $03
	nop                                              ; $62a7: $00
	nop                                              ; $62a8: $00
	ld   bc, $9e63                                   ; $62a9: $01 $63 $9e
	ld   e, b                                        ; $62ac: $58
	ld   h, l                                        ; $62ad: $65
	sub  c                                           ; $62ae: $91
	add  a                                           ; $62af: $87
	sbc  b                                           ; $62b0: $98
	ld   a, l                                        ; $62b1: $7d
	inc  bc                                          ; $62b2: $03
	ld   a, [hl]                                     ; $62b3: $7e
	sbc  l                                           ; $62b4: $9d
	sbc  b                                           ; $62b5: $98
	sbc  a                                           ; $62b6: $9f
	dec  c                                           ; $62b7: $0d
	inc  bc                                          ; $62b8: $03
	ld   l, l                                        ; $62b9: $6d
	dec  b                                           ; $62ba: $05
	add  hl, de                                      ; $62bb: $19
	ld   a, h                                        ; $62bc: $7c
	inc  bc                                          ; $62bd: $03
	ld   l, a                                        ; $62be: $6f
	ld   [bc], a                                     ; $62bf: $02
	xor  c                                           ; $62c0: $a9
	sub  [hl]                                        ; $62c1: $96
	sbc  a                                           ; $62c2: $9f
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
	rrca                                             ; $62cf: $0f
	nop                                              ; $62d0: $00
	ld   bc, $df01                                   ; $62d1: $01 $01 $df
	db   $ec                                         ; $62d4: $ec
	and  e                                           ; $62d5: $a3
	ld   h, e                                        ; $62d6: $63
	and  c                                           ; $62d7: $a1
	ld   a, l                                        ; $62d8: $7d
	dec  b                                           ; $62d9: $05
	ld   hl, $6a03                                   ; $62da: $21 $03 $6a
	ld   a, c                                        ; $62dd: $79
	dec  c                                           ; $62de: $0d
	dec  b                                           ; $62df: $05
	ldh  a, [c]                                      ; $62e0: $f2
	dec  b                                           ; $62e1: $05
	add  b                                           ; $62e2: $80
	ld   a, l                                        ; $62e3: $7d
	ld   a, b                                        ; $62e4: $78
	ld   d, d                                        ; $62e5: $52
	and  c                                           ; $62e6: $a1
	ld   [hl], l                                     ; $62e7: $75
	ld   h, a                                        ; $62e8: $67
	ld   e, c                                        ; $62e9: $59
	ld   sp, hl                                      ; $62ea: $f9
	dec  c                                           ; $62eb: $0d
	nop                                              ; $62ec: $00
	ld   a, [bc]                                     ; $62ed: $0a
	inc  e                                           ; $62ee: $1c
	inc  bc                                          ; $62ef: $03
	nop                                              ; $62f0: $00
	nop                                              ; $62f1: $00
	ld   bc, $546b                                   ; $62f2: $01 $6b $54
	ld   a, e                                        ; $62f5: $7b
	rst  $38                                         ; $62f6: $ff
	rst  $38                                         ; $62f7: $ff
	inc  bc                                          ; $62f8: $03
	ld   c, a                                        ; $62f9: $4f
	ld   a, l                                        ; $62fa: $7d
	pop  bc                                          ; $62fb: $c1
	db   $e3                                         ; $62fc: $e3
	ld   l, [hl]                                     ; $62fd: $6e
	ld   [hl], c                                     ; $62fe: $71
	ld   l, l                                        ; $62ff: $6d
	ld   e, a                                        ; $6300: $5f
	ld   [hl], a                                     ; $6301: $77
	dec  c                                           ; $6302: $0d
	ld   [bc], a                                     ; $6303: $02
	and  l                                           ; $6304: $a5
	ld   a, l                                        ; $6305: $7d
	ld   e, a                                        ; $6306: $5f
	ld   [hl], c                                     ; $6307: $71
	ld   h, c                                        ; $6308: $61
	ld   d, h                                        ; $6309: $54
	ld   [bc], a                                     ; $630a: $02
	sbc  d                                           ; $630b: $9a
	ld   e, e                                        ; $630c: $5b
	sub  [hl]                                        ; $630d: $96
	sbc  a                                           ; $630e: $9f
	dec  c                                           ; $630f: $0d
	inc  bc                                          ; $6310: $03
	db   $fd                                         ; $6311: $fd
	ld   a, c                                        ; $6312: $79
	ld   e, b                                        ; $6313: $58
	inc  bc                                          ; $6314: $03
	jr   c, jr_04d_631b                              ; $6315: $38 $04

	pop  de                                          ; $6317: $d1
	halt                                             ; $6318: $76
	ld   e, c                                        ; $6319: $59
	rst  $38                                         ; $631a: $ff

jr_04d_631b:
	rst  $38                                         ; $631b: $ff
	dec  c                                           ; $631c: $0d
	nop                                              ; $631d: $00
	ld   a, [bc]                                     ; $631e: $0a
	add  hl, de                                      ; $631f: $19
	dec  b                                           ; $6320: $05
	ld   [bc], a                                     ; $6321: $02
	inc  bc                                          ; $6322: $03
	ld   d, d                                        ; $6323: $52
	ld   a, l                                        ; $6324: $7d
	ld   d, d                                        ; $6325: $52
	ld   d, d                                        ; $6326: $52
	ld   [hl], l                                     ; $6327: $75
	ld   h, a                                        ; $6328: $67
	sub  [hl]                                        ; $6329: $96
	ld   a, e                                        ; $632a: $7b
	nop                                              ; $632b: $00
	nop                                              ; $632c: $00
	inc  bc                                          ; $632d: $03
	ld   d, d                                        ; $632e: $52
	ld   a, l                                        ; $632f: $7d
	pop  bc                                          ; $6330: $c1
	db   $e3                                         ; $6331: $e3
	ld   a, b                                        ; $6332: $78
	and  c                                           ; $6333: $a1
	ld   [hl], l                                     ; $6334: $75
	ld   h, a                                        ; $6335: $67
	nop                                              ; $6336: $00
	ld   bc, $8107                                   ; $6337: $01 $07 $81
	ld   [bc], a                                     ; $633a: $02
	ld   [bc], a                                     ; $633b: $02
	inc  bc                                          ; $633c: $03
	ld   bc, $2000                                   ; $633d: $01 $00 $20
	nop                                              ; $6340: $00
	rlca                                             ; $6341: $07
	adc  $02                                         ; $6342: $ce $02
	ld   [bc], a                                     ; $6344: $02
	inc  bc                                          ; $6345: $03
	ld   bc, $2001                                   ; $6346: $01 $01 $20
	nop                                              ; $6349: $00
	ld   b, $1b                                      ; $634a: $06 $1b
	inc  bc                                          ; $634c: $03
	rrca                                             ; $634d: $0f
	nop                                              ; $634e: $00
	ld   bc, $0301                                   ; $634f: $01 $01 $03
	ld   d, d                                        ; $6352: $52
	ld   a, l                                        ; $6353: $7d
	ld   d, d                                        ; $6354: $52
	ld   d, d                                        ; $6355: $52
	ld   [hl], l                                     ; $6356: $75
	ld   h, a                                        ; $6357: $67
	sub  [hl]                                        ; $6358: $96
	ld   a, e                                        ; $6359: $7b
	sbc  a                                           ; $635a: $9f
	dec  c                                           ; $635b: $0d
	nop                                              ; $635c: $00
	ld   a, [bc]                                     ; $635d: $0a
	inc  e                                           ; $635e: $1c
	inc  bc                                          ; $635f: $03
	nop                                              ; $6360: $00
	nop                                              ; $6361: $00
	dec  e                                           ; $6362: $1d
	ld   b, b                                        ; $6363: $40
	inc  de                                          ; $6364: $13
	inc  bc                                          ; $6365: $03
	inc  de                                          ; $6366: $13
	ld   bc, $2801                                   ; $6367: $01 $01 $28
	nop                                              ; $636a: $00
	ld   bc, $546b                                   ; $636b: $01 $6b $54
	ld   l, [hl]                                     ; $636e: $6e
	ld   e, a                                        ; $636f: $5f
	ld   [hl], a                                     ; $6370: $77
	sbc  [hl]                                        ; $6371: $9e
	inc  b                                           ; $6372: $04
	ld   c, c                                        ; $6373: $49
	ld   [hl], l                                     ; $6374: $75
	sub  b                                           ; $6375: $90
	ld   e, c                                        ; $6376: $59
	and  c                                           ; $6377: $a1
	ld   [hl], l                                     ; $6378: $75
	sub  b                                           ; $6379: $90
	dec  c                                           ; $637a: $0d
	inc  bc                                          ; $637b: $03
	ld   d, d                                        ; $637c: $52
	ld   [hl], l                                     ; $637d: $75
	inc  bc                                          ; $637e: $03
	ld   l, d                                        ; $637f: $6a
	add  a                                           ; $6380: $87
	ld   l, l                                        ; $6381: $6d
	sub  a                                           ; $6382: $97
	pop  bc                                          ; $6383: $c1
	db   $e3                                         ; $6384: $e3
	sub  [hl]                                        ; $6385: $96
	sbc  a                                           ; $6386: $9f
	dec  c                                           ; $6387: $0d
	inc  b                                           ; $6388: $04
	pop  de                                          ; $6389: $d1
	inc  b                                           ; $638a: $04
	dec  c                                           ; $638b: $0d
	ld   a, c                                        ; $638c: $79
	ld   [bc], a                                     ; $638d: $02
	jr   z, jr_04d_63e2                              ; $638e: $28 $52

	ld   e, c                                        ; $6390: $59
	sub  a                                           ; $6391: $97
	rst  $38                                         ; $6392: $ff
	rst  $38                                         ; $6393: $ff
	dec  c                                           ; $6394: $0d
	nop                                              ; $6395: $00
	ld   a, [bc]                                     ; $6396: $0a
	ld   b, $1b                                      ; $6397: $06 $1b
	inc  bc                                          ; $6399: $03
	rrca                                             ; $639a: $0f
	nop                                              ; $639b: $00
	ld   bc, $0301                                   ; $639c: $01 $01 $03
	ld   d, d                                        ; $639f: $52
	ld   a, l                                        ; $63a0: $7d
	pop  bc                                          ; $63a1: $c1
	db   $e3                                         ; $63a2: $e3
	ld   a, b                                        ; $63a3: $78
	and  c                                           ; $63a4: $a1
	ld   [hl], l                                     ; $63a5: $75
	ld   h, a                                        ; $63a6: $67
	rst  $38                                         ; $63a7: $ff
	rst  $38                                         ; $63a8: $ff
	dec  c                                           ; $63a9: $0d
	nop                                              ; $63aa: $00
	ld   a, [bc]                                     ; $63ab: $0a
	inc  e                                           ; $63ac: $1c
	inc  bc                                          ; $63ad: $03
	inc  b                                           ; $63ae: $04
	inc  b                                           ; $63af: $04
	dec  e                                           ; $63b0: $1d
	ld   b, b                                        ; $63b1: $40
	inc  de                                          ; $63b2: $13
	inc  bc                                          ; $63b3: $03
	inc  de                                          ; $63b4: $13
	ld   bc, $2901                                   ; $63b5: $01 $01 $29
	nop                                              ; $63b8: $00
	ld   bc, $9402                                   ; $63b9: $01 $02 $94
	inc  bc                                          ; $63bc: $03
	ld   l, e                                        ; $63bd: $6b
	ld   a, b                                        ; $63be: $78
	inc  bc                                          ; $63bf: $03
	add  d                                           ; $63c0: $82
	sub  b                                           ; $63c1: $90
	inc  b                                           ; $63c2: $04
	rrca                                             ; $63c3: $0f
	ld   d, d                                        ; $63c4: $52
	ld   e, c                                        ; $63c5: $59
	sub  a                                           ; $63c6: $97
	dec  c                                           ; $63c7: $0d
	ld   h, l                                        ; $63c8: $65
	ld   e, c                                        ; $63c9: $59
	ld   l, l                                        ; $63ca: $6d
	ld   a, b                                        ; $63cb: $78
	ld   d, d                                        ; $63cc: $52
	sbc  l                                           ; $63cd: $9d
	rst  $38                                         ; $63ce: $ff
	rst  $38                                         ; $63cf: $ff
	ld   [hl], l                                     ; $63d0: $75
	sub  b                                           ; $63d1: $90
	ld   d, b                                        ; $63d2: $50
	adc  h                                           ; $63d3: $8c
	sbc  b                                           ; $63d4: $98
	dec  c                                           ; $63d5: $0d
	ld   [bc], a                                     ; $63d6: $02
	sbc  d                                           ; $63d7: $9a
	ld   e, e                                        ; $63d8: $5b
	ld   e, e                                        ; $63d9: $5b
	sub  a                                           ; $63da: $97
	ld   d, d                                        ; $63db: $52
	and  b                                           ; $63dc: $a0
	ld   h, l                                        ; $63dd: $65
	ld   [hl], h                                     ; $63de: $74
	ld   a, l                                        ; $63df: $7d
	pop  bc                                          ; $63e0: $c1
	db   $e3                                         ; $63e1: $e3

jr_04d_63e2:
	sub  [hl]                                        ; $63e2: $96
	sbc  a                                           ; $63e3: $9f
	dec  c                                           ; $63e4: $0d
	nop                                              ; $63e5: $00
	ld   a, [bc]                                     ; $63e6: $0a
	inc  e                                           ; $63e7: $1c
	inc  bc                                          ; $63e8: $03
	nop                                              ; $63e9: $00
	nop                                              ; $63ea: $00
	ld   bc, $9e63                                   ; $63eb: $01 $63 $9e
	ld   e, b                                        ; $63ee: $58
	ld   h, l                                        ; $63ef: $65
	sub  c                                           ; $63f0: $91
	add  a                                           ; $63f1: $87
	sbc  b                                           ; $63f2: $98
	ld   a, l                                        ; $63f3: $7d
	ld   e, b                                        ; $63f4: $58
	ld   h, l                                        ; $63f5: $65
	adc  h                                           ; $63f6: $8c
	ld   d, d                                        ; $63f7: $52
	sub  [hl]                                        ; $63f8: $96
	sbc  a                                           ; $63f9: $9f
	dec  c                                           ; $63fa: $0d
	inc  bc                                          ; $63fb: $03
	ld   l, l                                        ; $63fc: $6d
	dec  b                                           ; $63fd: $05
	add  hl, de                                      ; $63fe: $19
	ld   e, d                                        ; $63ff: $5a
	dec  b                                           ; $6400: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6401: $cf
	adc  h                                           ; $6402: $8c
	sbc  c                                           ; $6403: $99
	sbc  l                                           ; $6404: $9d
	sbc  a                                           ; $6405: $9f
	dec  c                                           ; $6406: $0d
	ld   h, [hl]                                     ; $6407: $66
	sub  e                                           ; $6408: $93
	and  c                                           ; $6409: $a1
	add  c                                           ; $640a: $81
	ld   h, l                                        ; $640b: $65
	ld   a, b                                        ; $640c: $78
	ld   h, e                                        ; $640d: $63
	ld   d, d                                        ; $640e: $52
	sbc  a                                           ; $640f: $9f
	dec  c                                           ; $6410: $0d
	nop                                              ; $6411: $00
	ld   a, [bc]                                     ; $6412: $0a
	dec  c                                           ; $6413: $0d
	nop                                              ; $6414: $00
	nop                                              ; $6415: $00
	rrca                                             ; $6416: $0f
	nop                                              ; $6417: $00
	ld   bc, $1e09                                   ; $6418: $01 $09 $1e
	nop                                              ; $641b: $00
	rrca                                             ; $641c: $0f
	nop                                              ; $641d: $00
	ld   bc, $0401                                   ; $641e: $01 $01 $04
	ld   [$8f02], sp                                 ; $6421: $08 $02 $8f
	ld   [bc], a                                     ; $6424: $02
	sub  b                                           ; $6425: $90
	ld   [bc], a                                     ; $6426: $02
	sub  c                                           ; $6427: $91
	inc  b                                           ; $6428: $04
	add  hl, bc                                      ; $6429: $09
	ld   a, l                                        ; $642a: $7d
	dec  c                                           ; $642b: $0d
	inc  b                                           ; $642c: $04
	ld   c, c                                        ; $642d: $49
	halt                                             ; $642e: $76
	inc  bc                                          ; $642f: $03
	xor  b                                           ; $6430: $a8
	ld   [hl], c                                     ; $6431: $71
	ld   [hl], h                                     ; $6432: $74
	ld   d, d                                        ; $6433: $52
	sbc  c                                           ; $6434: $99
	and  c                                           ; $6435: $a1
	ld   [hl], l                                     ; $6436: $75
	ld   h, a                                        ; $6437: $67
	ld   e, c                                        ; $6438: $59
	ld   sp, hl                                      ; $6439: $f9
	dec  c                                           ; $643a: $0d
	nop                                              ; $643b: $00
	ld   a, [bc]                                     ; $643c: $0a
	inc  e                                           ; $643d: $1c
	inc  bc                                          ; $643e: $03
	ld   [bc], a                                     ; $643f: $02
	ld   [bc], a                                     ; $6440: $02
	ld   bc, $9a6b                                   ; $6441: $01 $6b $9a
	ld   a, l                                        ; $6444: $7d
	inc  b                                           ; $6445: $04
	ld   [$2f04], sp                                 ; $6446: $08 $04 $2f
	ld   a, h                                        ; $6449: $7c
	inc  b                                           ; $644a: $04
	xor  b                                           ; $644b: $a8
	dec  b                                           ; $644c: $05
	ld   hl, $58a0                                   ; $644d: $21 $a0 $58
	add  c                                           ; $6450: $81
	sub  d                                           ; $6451: $92
	ld   e, c                                        ; $6452: $59
	ld   h, a                                        ; $6453: $67
	dec  c                                           ; $6454: $0d
	inc  b                                           ; $6455: $04
	call $037c                                       ; $6456: $cd $7c $03
	or   b                                           ; $6459: $b0
	halt                                             ; $645a: $76
	sub  [hl]                                        ; $645b: $96
	rst  $38                                         ; $645c: $ff
	rst  $38                                         ; $645d: $ff
	dec  c                                           ; $645e: $0d
	nop                                              ; $645f: $00
	ld   a, [bc]                                     ; $6460: $0a
	ld   bc, $0008                                   ; $6461: $01 $08 $00
	ld   e, l                                        ; $6464: $5d
	and  c                                           ; $6465: $a1
	rst  $38                                         ; $6466: $ff
	rst  $38                                         ; $6467: $ff
	dec  c                                           ; $6468: $0d
	inc  bc                                          ; $6469: $03
	ret  z                                           ; $646a: $c8

	ld   l, l                                        ; $646b: $6d
	ld   l, a                                        ; $646c: $6f
	ld   a, l                                        ; $646d: $7d
	sbc  [hl]                                        ; $646e: $9e
	ld   d, d                                        ; $646f: $52
	ld   [hl], d                                     ; $6470: $72
	ld   l, [hl]                                     ; $6471: $6e
	ld   [hl], c                                     ; $6472: $71
	ld   [hl], h                                     ; $6473: $74
	dec  c                                           ; $6474: $0d
	inc  b                                           ; $6475: $04
	ld   a, l                                        ; $6476: $7d
	ld   e, a                                        ; $6477: $5f
	sbc  c                                           ; $6478: $99
	sbc  l                                           ; $6479: $9d
	ld   e, a                                        ; $647a: $5f
	ld   a, c                                        ; $647b: $79
	ld   a, l                                        ; $647c: $7d
	ld   d, d                                        ; $647d: $52
	ld   e, c                                        ; $647e: $59
	ld   a, b                                        ; $647f: $78
	ld   d, d                                        ; $6480: $52
	ld   a, h                                        ; $6481: $7c
	rst  $38                                         ; $6482: $ff
	rst  $38                                         ; $6483: $ff
	dec  c                                           ; $6484: $0d
	nop                                              ; $6485: $00
	ld   a, [bc]                                     ; $6486: $0a
	inc  e                                           ; $6487: $1c
	inc  bc                                          ; $6488: $03
	nop                                              ; $6489: $00
	nop                                              ; $648a: $00
	ld   bc, $9e63                                   ; $648b: $01 $63 $9e
	ld   e, b                                        ; $648e: $58
	ld   h, l                                        ; $648f: $65
	sub  c                                           ; $6490: $91
	add  a                                           ; $6491: $87
	sbc  b                                           ; $6492: $98

jr_04d_6493:
	ld   a, l                                        ; $6493: $7d
	ld   e, b                                        ; $6494: $58
	ld   h, l                                        ; $6495: $65
	adc  h                                           ; $6496: $8c
	ld   d, d                                        ; $6497: $52
	sub  [hl]                                        ; $6498: $96
	sbc  a                                           ; $6499: $9f
	dec  c                                           ; $649a: $0d
	inc  bc                                          ; $649b: $03
	ld   l, l                                        ; $649c: $6d
	dec  b                                           ; $649d: $05
	add  hl, de                                      ; $649e: $19
	ld   e, d                                        ; $649f: $5a
	dec  b                                           ; $64a0: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64a1: $cf
	adc  h                                           ; $64a2: $8c
	sbc  c                                           ; $64a3: $99
	sbc  l                                           ; $64a4: $9d
	sbc  a                                           ; $64a5: $9f
	dec  c                                           ; $64a6: $0d
	ld   h, [hl]                                     ; $64a7: $66
	sub  e                                           ; $64a8: $93
	and  c                                           ; $64a9: $a1
	add  c                                           ; $64aa: $81
	ld   h, l                                        ; $64ab: $65
	ld   a, b                                        ; $64ac: $78
	ld   h, e                                        ; $64ad: $63
	ld   d, d                                        ; $64ae: $52
	sbc  a                                           ; $64af: $9f
	dec  c                                           ; $64b0: $0d
	nop                                              ; $64b1: $00
	ld   a, [bc]                                     ; $64b2: $0a
	dec  c                                           ; $64b3: $0d
	nop                                              ; $64b4: $00
	nop                                              ; $64b5: $00
	rrca                                             ; $64b6: $0f
	nop                                              ; $64b7: $00
	ld   bc, $1e09                                   ; $64b8: $01 $09 $1e
	nop                                              ; $64bb: $00
	nop                                              ; $64bc: $00
	rrca                                             ; $64bd: $0f
	nop                                              ; $64be: $00
	ld   bc, $050d                                   ; $64bf: $01 $0d $05
	nop                                              ; $64c2: $00
	ld   [bc], a                                     ; $64c3: $02
	ld   bc, $7d58                                   ; $64c4: $01 $58 $7d
	sub  [hl]                                        ; $64c7: $96
	ld   d, h                                        ; $64c8: $54
	ld   h, d                                        ; $64c9: $62
	ld   h, h                                        ; $64ca: $64
	ld   d, d                                        ; $64cb: $52
	adc  h                                           ; $64cc: $8c
	ld   h, a                                        ; $64cd: $67
	sbc  a                                           ; $64ce: $9f
	dec  c                                           ; $64cf: $0d
	nop                                              ; $64d0: $00
	ld   a, [bc]                                     ; $64d1: $0a
	inc  e                                           ; $64d2: $1c
	dec  b                                           ; $64d3: $05
	ld   bc, $0101                                   ; $64d4: $01 $01 $01
	ld   [$7d00], sp                                 ; $64d7: $08 $00 $7d
	and  c                                           ; $64da: $a1
	sbc  a                                           ; $64db: $9f
	dec  c                                           ; $64dc: $0d
	ld   e, b                                        ; $64dd: $58
	ld   a, l                                        ; $64de: $7d
	sub  [hl]                                        ; $64df: $96
	ld   d, h                                        ; $64e0: $54
	ld   h, e                                        ; $64e1: $63
	and  c                                           ; $64e2: $a1
	sbc  a                                           ; $64e3: $9f
	dec  c                                           ; $64e4: $0d
	nop                                              ; $64e5: $00
	ld   a, [bc]                                     ; $64e6: $0a
	rrca                                             ; $64e7: $0f
	nop                                              ; $64e8: $00
	ld   bc, $0101                                   ; $64e9: $01 $01 $01
	inc  bc                                          ; $64ec: $03
	inc  b                                           ; $64ed: $04
	ld   c, c                                        ; $64ee: $49
	ld   a, h                                        ; $64ef: $7c
	dec  b                                           ; $64f0: $05
	jr   nz, jr_04d_6493                             ; $64f1: $20 $a0

	ld   [bc], a                                     ; $64f3: $02
	jp   nz, Jump_04d_5461                           ; $64f4: $c2 $61 $54

	ld   e, c                                        ; $64f7: $59
	ld   a, b                                        ; $64f8: $78
	rst  $38                                         ; $64f9: $ff
	ld   bc, $0d04                                   ; $64fa: $01 $04 $0d
	nop                                              ; $64fd: $00
	ld   a, [bc]                                     ; $64fe: $0a
	add  hl, de                                      ; $64ff: $19
	dec  b                                           ; $6500: $05
	inc  bc                                          ; $6501: $03
	ld   [bc], a                                     ; $6502: $02
	ld   c, d                                        ; $6503: $4a
	inc  b                                           ; $6504: $04
	ld   c, e                                        ; $6505: $4b
	inc  b                                           ; $6506: $04
	adc  b                                           ; $6507: $88
	ld   a, c                                        ; $6508: $79
	ld   [hl], d                                     ; $6509: $72
	ld   d, d                                        ; $650a: $52
	ld   [hl], h                                     ; $650b: $74
	nop                                              ; $650c: $00
	nop                                              ; $650d: $00
	ld   [bc], a                                     ; $650e: $02
	ld   hl, sp+$04                                  ; $650f: $f8 $04
	ld   c, b                                        ; $6511: $48
	ld   a, c                                        ; $6512: $79
	ld   [hl], d                                     ; $6513: $72
	ld   d, d                                        ; $6514: $52
	ld   [hl], h                                     ; $6515: $74
	nop                                              ; $6516: $00
	ld   bc, $0804                                   ; $6517: $01 $04 $08
	ld   [bc], a                                     ; $651a: $02
	adc  a                                           ; $651b: $8f
	ld   [bc], a                                     ; $651c: $02
	sub  b                                           ; $651d: $90
	ld   [bc], a                                     ; $651e: $02
	sub  c                                           ; $651f: $91
	inc  b                                           ; $6520: $04
	add  hl, bc                                      ; $6521: $09
	ld   a, c                                        ; $6522: $79
	ld   [hl], d                                     ; $6523: $72
	ld   d, d                                        ; $6524: $52
	ld   [hl], h                                     ; $6525: $74
	nop                                              ; $6526: $00
	ld   [bc], a                                     ; $6527: $02
	rlca                                             ; $6528: $07
	xor  c                                           ; $6529: $a9
	nop                                              ; $652a: $00
	ld   [bc], a                                     ; $652b: $02
	inc  bc                                          ; $652c: $03
	ld   bc, $2000                                   ; $652d: $01 $00 $20
	nop                                              ; $6530: $00
	rlca                                             ; $6531: $07
	ld   b, h                                        ; $6532: $44
	ld   [bc], a                                     ; $6533: $02
	ld   [bc], a                                     ; $6534: $02
	inc  bc                                          ; $6535: $03
	ld   bc, $2001                                   ; $6536: $01 $01 $20
	nop                                              ; $6539: $00
	rlca                                             ; $653a: $07
	dec  hl                                          ; $653b: $2b
	inc  b                                           ; $653c: $04
	ld   [bc], a                                     ; $653d: $02
	inc  bc                                          ; $653e: $03
	ld   bc, $2002                                   ; $653f: $01 $02 $20
	nop                                              ; $6542: $00
	ld   b, $89                                      ; $6543: $06 $89
	nop                                              ; $6545: $00
	rrca                                             ; $6546: $0f
	dec  b                                           ; $6547: $05
	ld   bc, $0201                                   ; $6548: $01 $01 $02
	and  l                                           ; $654b: $a5
	inc  b                                           ; $654c: $04
	xor  d                                           ; $654d: $aa
	sub  b                                           ; $654e: $90
	ld   [bc], a                                     ; $654f: $02
	jr   nz, jr_04d_6556                             ; $6550: $20 $04

	xor  d                                           ; $6552: $aa
	sbc  [hl]                                        ; $6553: $9e
	ld   e, d                                        ; $6554: $5a
	and  c                                           ; $6555: $a1

jr_04d_6556:
	ld   a, [hl]                                     ; $6556: $7e
	sbc  b                                           ; $6557: $98
	sub  d                                           ; $6558: $92
	sbc  a                                           ; $6559: $9f
	dec  c                                           ; $655a: $0d
	nop                                              ; $655b: $00
	ld   a, [bc]                                     ; $655c: $0a
	dec  c                                           ; $655d: $0d
	nop                                              ; $655e: $00
	nop                                              ; $655f: $00
	rrca                                             ; $6560: $0f
	nop                                              ; $6561: $00
	ld   bc, $1e09                                   ; $6562: $01 $09 $1e
	nop                                              ; $6565: $00
	rrca                                             ; $6566: $0f
	nop                                              ; $6567: $00
	ld   bc, $7701                                   ; $6568: $01 $01 $77
	ld   d, h                                        ; $656b: $54
	ld   h, l                                        ; $656c: $65
	ld   [hl], h                                     ; $656d: $74
	sbc  [hl]                                        ; $656e: $9e
	ld   [bc], a                                     ; $656f: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6570: $cf
	dec  b                                           ; $6571: $05
	ld   a, [de]                                     ; $6572: $1a
	ld   h, e                                        ; $6573: $63
	and  c                                           ; $6574: $a1
	ld   a, l                                        ; $6575: $7d
	dec  c                                           ; $6576: $0d
	ld   [bc], a                                     ; $6577: $02
	ld   c, d                                        ; $6578: $4a
	inc  b                                           ; $6579: $04
	ld   c, e                                        ; $657a: $4b
	inc  b                                           ; $657b: $04
	adc  b                                           ; $657c: $88
	ld   a, b                                        ; $657d: $78
	and  c                                           ; $657e: $a1
	ld   [hl], l                                     ; $657f: $75
	ld   h, a                                        ; $6580: $67
	ld   e, c                                        ; $6581: $59
	ld   sp, hl                                      ; $6582: $f9
	dec  c                                           ; $6583: $0d
	nop                                              ; $6584: $00
	ld   a, [bc]                                     ; $6585: $0a
	inc  e                                           ; $6586: $1c
	dec  b                                           ; $6587: $05
	nop                                              ; $6588: $00
	nop                                              ; $6589: $00
	ld   bc, $aa04                                   ; $658a: $01 $04 $aa
	inc  b                                           ; $658d: $04
	adc  a                                           ; $658e: $8f
	ld   a, c                                        ; $658f: $79
	dec  b                                           ; $6590: $05
	db   $10                                         ; $6591: $10
	ld   l, l                                        ; $6592: $6d
	halt                                             ; $6593: $76
	ld   e, e                                        ; $6594: $5b
	dec  c                                           ; $6595: $0d
	inc  bc                                          ; $6596: $03
	sub  b                                           ; $6597: $90
	dec  b                                           ; $6598: $05
	push af                                          ; $6599: $f5
	ld   a, c                                        ; $659a: $79
	ld   d, d                                        ; $659b: $52
	ld   l, l                                        ; $659c: $6d
	ld   [bc], a                                     ; $659d: $02
	rlc  e                                           ; $659e: $cb $03
	add  d                                           ; $65a0: $82
	ld   h, e                                        ; $65a1: $63
	and  c                                           ; $65a2: $a1
	ld   a, c                                        ; $65a3: $79
	dec  c                                           ; $65a4: $0d
	ld   [bc], a                                     ; $65a5: $02
	ret  nc                                          ; $65a6: $d0

	ld   d, [hl]                                     ; $65a7: $56
	ld   [hl], h                                     ; $65a8: $74
	sub  b                                           ; $65a9: $90
	sub  a                                           ; $65aa: $97
	ld   [hl], c                                     ; $65ab: $71
	ld   l, l                                        ; $65ac: $6d
	and  c                                           ; $65ad: $a1
	sub  d                                           ; $65ae: $92
	sbc  a                                           ; $65af: $9f
	dec  c                                           ; $65b0: $0d
	nop                                              ; $65b1: $00
	ld   a, [bc]                                     ; $65b2: $0a
	ld   bc, $7c6b                                   ; $65b3: $01 $6b $7c
	ld   [bc], a                                     ; $65b6: $02
	rlc  e                                           ; $65b7: $cb $03
	add  d                                           ; $65b9: $82
	ld   h, e                                        ; $65ba: $63
	and  c                                           ; $65bb: $a1
	ld   a, h                                        ; $65bc: $7c
	inc  b                                           ; $65bd: $04
	rst  ToBoot                                         ; $65be: $c7
	inc  bc                                          ; $65bf: $03
	ld   c, a                                        ; $65c0: $4f
	ld   a, l                                        ; $65c1: $7d
	sbc  [hl]                                        ; $65c2: $9e
	dec  c                                           ; $65c3: $0d
	jp   nc, $b8fb                                   ; $65c4: $d2 $fb $b8

	ei                                               ; $65c7: $fb
	di                                               ; $65c8: $f3
	call c, $fbf1                                    ; $65c9: $dc $f1 $fb
	jp   z, Jump_04d_710d                            ; $65cc: $ca $0d $71

	ld   l, a                                        ; $65cf: $6f
	sub  e                                           ; $65d0: $93
	ei                                               ; $65d1: $fb
	and  c                                           ; $65d2: $a1
	sub  d                                           ; $65d3: $92
	ld   e, a                                        ; $65d4: $5f
	ld   [hl], a                                     ; $65d5: $77
	ld   a, b                                        ; $65d6: $78
	sbc  a                                           ; $65d7: $9f
	dec  c                                           ; $65d8: $0d
	nop                                              ; $65d9: $00
	ld   a, [bc]                                     ; $65da: $0a
	add  hl, de                                      ; $65db: $19
	dec  b                                           ; $65dc: $05
	ld   [bc], a                                     ; $65dd: $02
	ld   l, e                                        ; $65de: $6b
	sbc  d                                           ; $65df: $9a
	ld   [hl], l                                     ; $65e0: $75
	reti                                             ; $65e1: $d9


	push af                                          ; $65e2: $f5
	ld   a, b                                        ; $65e3: $78
	ld   [bc], a                                     ; $65e4: $02
	ld   c, d                                        ; $65e5: $4a
	inc  b                                           ; $65e6: $04
	ld   c, e                                        ; $65e7: $4b
	inc  b                                           ; $65e8: $04
	adc  b                                           ; $65e9: $88
	ld   a, b                                        ; $65ea: $78
	and  c                                           ; $65eb: $a1
	ld   l, [hl]                                     ; $65ec: $6e
	nop                                              ; $65ed: $00
	nop                                              ; $65ee: $00
	dec  b                                           ; $65ef: $05
	ld   a, [$c102]                                  ; $65f0: $fa $02 $c1
	ld   [bc], a                                     ; $65f3: $02
	xor  c                                           ; $65f4: $a9
	ld   [hl], l                                     ; $65f5: $75
	ld   e, b                                        ; $65f6: $58
	adc  d                                           ; $65f7: $8a
	ld   d, [hl]                                     ; $65f8: $56
	sbc  c                                           ; $65f9: $99
	ld   a, b                                        ; $65fa: $78
	and  c                                           ; $65fb: $a1
	ld   [hl], h                                     ; $65fc: $74
	ld   h, a                                        ; $65fd: $67
	ld   h, d                                        ; $65fe: $62
	ld   d, d                                        ; $65ff: $52
	nop                                              ; $6600: $00
	ld   bc, $5a07                                   ; $6601: $01 $07 $5a
	ld   bc, $0302                                   ; $6604: $01 $02 $03
	ld   bc, $2000                                   ; $6607: $01 $00 $20
	nop                                              ; $660a: $00
	rlca                                             ; $660b: $07
	xor  [hl]                                        ; $660c: $ae
	ld   bc, $0302                                   ; $660d: $01 $02 $03
	ld   bc, $2001                                   ; $6610: $01 $01 $20
	nop                                              ; $6613: $00
	ld   b, $1f                                      ; $6614: $06 $1f
	ld   [bc], a                                     ; $6616: $02
	rrca                                             ; $6617: $0f
	nop                                              ; $6618: $00
	ld   bc, $7801                                   ; $6619: $01 $01 $78
	sbc  c                                           ; $661c: $99
	adc  c                                           ; $661d: $89
	ld   [hl], a                                     ; $661e: $77
	sbc  [hl]                                        ; $661f: $9e
	ld   l, e                                        ; $6620: $6b
	sbc  d                                           ; $6621: $9a
	ld   [hl], l                                     ; $6622: $75
	reti                                             ; $6623: $d9


	push af                                          ; $6624: $f5
	ld   a, b                                        ; $6625: $78
	dec  c                                           ; $6626: $0d
	ld   [bc], a                                     ; $6627: $02
	ld   c, d                                        ; $6628: $4a
	inc  b                                           ; $6629: $04
	ld   c, e                                        ; $662a: $4b
	inc  b                                           ; $662b: $04
	adc  b                                           ; $662c: $88
	ld   a, b                                        ; $662d: $78
	and  c                                           ; $662e: $a1
	ld   [hl], l                                     ; $662f: $75
	ld   h, a                                        ; $6630: $67
	ld   a, e                                        ; $6631: $7b
	sbc  a                                           ; $6632: $9f
	dec  c                                           ; $6633: $0d
	nop                                              ; $6634: $00
	ld   a, [bc]                                     ; $6635: $0a
	inc  e                                           ; $6636: $1c
	dec  b                                           ; $6637: $05
	ld   [bc], a                                     ; $6638: $02
	ld   [bc], a                                     ; $6639: $02
	dec  e                                           ; $663a: $1d
	ld   b, b                                        ; $663b: $40
	dec  d                                           ; $663c: $15
	inc  bc                                          ; $663d: $03
	dec  d                                           ; $663e: $15
	ld   bc, $2902                                   ; $663f: $01 $02 $29
	nop                                              ; $6642: $00
	ld   bc, $f5d9                                   ; $6643: $01 $d9 $f5
	ld   [hl], l                                     ; $6646: $75
	ld   [bc], a                                     ; $6647: $02
	jr   z, jr_04d_66a3                              ; $6648: $28 $59

	ld   [hl], c                                     ; $664a: $71
	ld   l, l                                        ; $664b: $6d
	ld   a, b                                        ; $664c: $78
	db   $fc                                         ; $664d: $fc
	sbc  a                                           ; $664e: $9f
	dec  c                                           ; $664f: $0d
	ld   h, l                                        ; $6650: $65
	sub  c                                           ; $6651: $91
	ei                                               ; $6652: $fb
	ld   a, b                                        ; $6653: $78
	ld   d, d                                        ; $6654: $52
	sub  d                                           ; $6655: $92
	and  c                                           ; $6656: $a1
	sbc  [hl]                                        ; $6657: $9e
	dec  c                                           ; $6658: $0d
	inc  b                                           ; $6659: $04
	dec  bc                                          ; $665a: $0b
	ld   [bc], a                                     ; $665b: $02
	adc  a                                           ; $665c: $8f
	inc  bc                                          ; $665d: $03
	add  d                                           ; $665e: $82
	sub  d                                           ; $665f: $92
	ld   a, e                                        ; $6660: $7b
	and  c                                           ; $6661: $a1
	ld   e, c                                        ; $6662: $59
	sub  a                                           ; $6663: $97
	sbc  a                                           ; $6664: $9f
	dec  c                                           ; $6665: $0d
	nop                                              ; $6666: $00
	ld   a, [bc]                                     ; $6667: $0a
	ld   b, $23                                      ; $6668: $06 $23
	ld   [bc], a                                     ; $666a: $02
	rrca                                             ; $666b: $0f
	nop                                              ; $666c: $00
	ld   bc, $6b01                                   ; $666d: $01 $01 $6b
	ld   d, h                                        ; $6670: $54
	ld   a, b                                        ; $6671: $78
	and  c                                           ; $6672: $a1
	ld   l, [hl]                                     ; $6673: $6e
	sbc  a                                           ; $6674: $9f
	dec  c                                           ; $6675: $0d
	ld   h, [hl]                                     ; $6676: $66
	sub  c                                           ; $6677: $91
	ld   d, b                                        ; $6678: $50
	sbc  [hl]                                        ; $6679: $9e
	dec  b                                           ; $667a: $05
	ld   a, [$c102]                                  ; $667b: $fa $02 $c1
	ld   [bc], a                                     ; $667e: $02
	xor  c                                           ; $667f: $a9
	ld   a, c                                        ; $6680: $79
	inc  b                                           ; $6681: $04
	xor  d                                           ; $6682: $aa
	inc  b                                           ; $6683: $04
	adc  a                                           ; $6684: $8f
	ld   [bc], a                                     ; $6685: $02
	and  h                                           ; $6686: $a4
	and  b                                           ; $6687: $a0
	dec  c                                           ; $6688: $0d
	ld   e, b                                        ; $6689: $58
	adc  d                                           ; $668a: $8a
	ld   d, [hl]                                     ; $668b: $56
	ld   l, l                                        ; $668c: $6d
	and  c                                           ; $668d: $a1
	ld   [hl], l                                     ; $668e: $75
	ld   h, a                                        ; $668f: $67
	ld   a, e                                        ; $6690: $7b
	sbc  a                                           ; $6691: $9f
	dec  c                                           ; $6692: $0d
	nop                                              ; $6693: $00
	ld   a, [bc]                                     ; $6694: $0a
	ld   bc, $6267                                   ; $6695: $01 $67 $62
	ld   d, d                                        ; $6698: $52
	ld   a, b                                        ; $6699: $78
	db   $fc                                         ; $669a: $fc
	sbc  a                                           ; $669b: $9f
	dec  c                                           ; $669c: $0d
	ld   [bc], a                                     ; $669d: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $669e: $cf
	dec  b                                           ; $669f: $05
	ld   a, [de]                                     ; $66a0: $1a
	ld   h, e                                        ; $66a1: $63
	and  c                                           ; $66a2: $a1

jr_04d_66a3:
	ld   [hl], c                                     ; $66a3: $71
	ld   [hl], h                                     ; $66a4: $74
	sbc  a                                           ; $66a5: $9f
	dec  c                                           ; $66a6: $0d
	nop                                              ; $66a7: $00
	ld   a, [bc]                                     ; $66a8: $0a
	inc  e                                           ; $66a9: $1c
	dec  b                                           ; $66aa: $05
	inc  b                                           ; $66ab: $04
	inc  b                                           ; $66ac: $04
	dec  e                                           ; $66ad: $1d
	ld   b, b                                        ; $66ae: $40
	dec  d                                           ; $66af: $15
	inc  bc                                          ; $66b0: $03
	dec  d                                           ; $66b1: $15
	ld   bc, $2802                                   ; $66b2: $01 $02 $28
	nop                                              ; $66b5: $00
	ld   bc, $9e8c                                   ; $66b6: $01 $8c $9e
	adc  h                                           ; $66b9: $8c
	ld   d, b                                        ; $66ba: $50
	ld   a, b                                        ; $66bb: $78
	sbc  a                                           ; $66bc: $9f
	dec  c                                           ; $66bd: $0d
	ld   l, e                                        ; $66be: $6b
	and  c                                           ; $66bf: $a1
	ld   a, b                                        ; $66c0: $78
	ld   a, c                                        ; $66c1: $79
	cp   d                                           ; $66c2: $ba
	ret                                              ; $66c3: $c9


	xor  $fb                                         ; $66c4: $ee $fb
	ret                                              ; $66c6: $c9


	ld   a, c                                        ; $66c7: $79
	dec  c                                           ; $66c8: $0d
	adc  c                                           ; $66c9: $89
	adc  a                                           ; $66ca: $8f
	sub  a                                           ; $66cb: $97
	sbc  d                                           ; $66cc: $9a
	sbc  c                                           ; $66cd: $99
	halt                                             ; $66ce: $76
	sbc  [hl]                                        ; $66cf: $9e
	rst  ToBoot                                         ; $66d0: $c7
	xor  $99                                         ; $66d1: $ee $99
	sub  d                                           ; $66d3: $92
	and  c                                           ; $66d4: $a1
	sbc  a                                           ; $66d5: $9f
	dec  c                                           ; $66d6: $0d
	nop                                              ; $66d7: $00
	ld   a, [bc]                                     ; $66d8: $0a
	ld   b, $23                                      ; $66d9: $06 $23
	ld   [bc], a                                     ; $66db: $02
	inc  e                                           ; $66dc: $1c
	dec  b                                           ; $66dd: $05
	nop                                              ; $66de: $00
	nop                                              ; $66df: $00
	ld   bc, $7889                                   ; $66e0: $01 $89 $78
	sbc  [hl]                                        ; $66e3: $9e
	and  a                                           ; $66e4: $a7
	jp   nz, Jump_04d_7f02                           ; $66e5: $c2 $02 $7f

	ld   e, l                                        ; $66e8: $5d
	ld   e, c                                        ; $66e9: $59
	sub  a                                           ; $66ea: $97
	sbc  a                                           ; $66eb: $9f
	dec  c                                           ; $66ec: $0d
	adc  h                                           ; $66ed: $8c
	ld   l, l                                        ; $66ee: $6d
	sbc  [hl]                                        ; $66ef: $9e
	ld   [bc], a                                     ; $66f0: $02
	xor  d                                           ; $66f1: $aa
	ld   [hl], l                                     ; $66f2: $75
	ld   a, b                                        ; $66f3: $78
	sbc  a                                           ; $66f4: $9f
	dec  c                                           ; $66f5: $0d
	nop                                              ; $66f6: $00
	ld   a, [bc]                                     ; $66f7: $0a
	dec  c                                           ; $66f8: $0d
	nop                                              ; $66f9: $00
	nop                                              ; $66fa: $00
	rrca                                             ; $66fb: $0f
	nop                                              ; $66fc: $00
	ld   bc, $1e09                                   ; $66fd: $01 $09 $1e
	nop                                              ; $6700: $00
	rrca                                             ; $6701: $0f
	nop                                              ; $6702: $00
	ld   bc, $0201                                   ; $6703: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6706: $cf
	dec  b                                           ; $6707: $05
	ld   a, [de]                                     ; $6708: $1a
	ld   h, e                                        ; $6709: $63
	and  c                                           ; $670a: $a1
	ld   a, h                                        ; $670b: $7c
	ld   [bc], a                                     ; $670c: $02
	ld   hl, sp+$04                                  ; $670d: $f8 $04
	ld   c, b                                        ; $670f: $48
	ld   [hl], c                                     ; $6710: $71
	ld   [hl], h                                     ; $6711: $74
	dec  c                                           ; $6712: $0d
	inc  b                                           ; $6713: $04
	ld   c, c                                        ; $6714: $49
	ld   [hl], l                                     ; $6715: $75
	ld   h, a                                        ; $6716: $67
	ld   e, c                                        ; $6717: $59
	ld   sp, hl                                      ; $6718: $f9
	dec  c                                           ; $6719: $0d
	nop                                              ; $671a: $00
	ld   a, [bc]                                     ; $671b: $0a
	inc  e                                           ; $671c: $1c
	dec  b                                           ; $671d: $05
	nop                                              ; $671e: $00
	nop                                              ; $671f: $00
	ld   bc, $a9a9                                   ; $6720: $01 $a9 $a9
	ld   h, c                                        ; $6723: $61
	halt                                             ; $6724: $76
	ld   [bc], a                                     ; $6725: $02
	jp   nz, Jump_04d_7452                           ; $6726: $c2 $52 $74

	ld   e, l                                        ; $6729: $5d
	sbc  d                                           ; $672a: $9a
	ld   l, l                                        ; $672b: $6d
	sbc  a                                           ; $672c: $9f
	dec  c                                           ; $672d: $0d
	and  a                                           ; $672e: $a7
	jp   nz, EnqueueHDMATransfer                                   ; $672f: $c2 $7c $02

	ld   hl, sp+$04                                  ; $6732: $f8 $04
	ld   c, b                                        ; $6734: $48
	ld   a, l                                        ; $6735: $7d
	sub  d                                           ; $6736: $92
	ld   a, b                                        ; $6737: $78
	rst  $38                                         ; $6738: $ff
	dec  c                                           ; $6739: $0d
	ld   bc, $0407                                   ; $673a: $01 $07 $04
	ld   e, [hl]                                     ; $673d: $5e
	inc  b                                           ; $673e: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $673f: $cf
	ld   a, l                                        ; $6740: $7d
	pop  de                                          ; $6741: $d1
	or   b                                           ; $6742: $b0
	ret  nc                                          ; $6743: $d0

	push bc                                          ; $6744: $c5
	sub  d                                           ; $6745: $92
	ld   a, [$0801]                                  ; $6746: $fa $01 $08
	dec  c                                           ; $6749: $0d
	nop                                              ; $674a: $00
	ld   a, [bc]                                     ; $674b: $0a
	add  hl, de                                      ; $674c: $19
	dec  b                                           ; $674d: $05
	inc  bc                                          ; $674e: $03
	inc  bc                                          ; $674f: $03
	adc  e                                           ; $6750: $8b
	ld   [bc], a                                     ; $6751: $02
	ld   a, a                                        ; $6752: $7f
	ld   h, l                                        ; $6753: $65
	ld   a, b                                        ; $6754: $78
	ld   e, l                                        ; $6755: $5d
	ld   [hl], h                                     ; $6756: $74
	sub  b                                           ; $6757: $90
	ld   d, d                                        ; $6758: $52
	ld   d, d                                        ; $6759: $52
	ld   a, h                                        ; $675a: $7c
	ld   a, c                                        ; $675b: $79
	rst  $38                                         ; $675c: $ff
	rst  $38                                         ; $675d: $ff
	nop                                              ; $675e: $00
	nop                                              ; $675f: $00
	ld   l, e                                        ; $6760: $6b
	ld   d, h                                        ; $6761: $54
	ld   [hl], l                                     ; $6762: $75
	ld   h, a                                        ; $6763: $67
	sub  [hl]                                        ; $6764: $96
	ld   a, e                                        ; $6765: $7b
	nop                                              ; $6766: $00
	ld   bc, $9978                                   ; $6767: $01 $78 $99
	adc  c                                           ; $676a: $89
	ld   [hl], a                                     ; $676b: $77
	nop                                              ; $676c: $00
	ld   [bc], a                                     ; $676d: $02
	rlca                                             ; $676e: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $676f: $cf
	ld   [bc], a                                     ; $6770: $02
	ld   [bc], a                                     ; $6771: $02
	inc  bc                                          ; $6772: $03
	ld   bc, $2000                                   ; $6773: $01 $00 $20
	nop                                              ; $6776: $00
	rlca                                             ; $6777: $07
	ld   l, d                                        ; $6778: $6a
	inc  bc                                          ; $6779: $03
	ld   [bc], a                                     ; $677a: $02
	inc  bc                                          ; $677b: $03
	ld   bc, $2001                                   ; $677c: $01 $01 $20
	nop                                              ; $677f: $00
	rlca                                             ; $6780: $07
	or   a                                           ; $6781: $b7
	inc  bc                                          ; $6782: $03
	ld   [bc], a                                     ; $6783: $02
	inc  bc                                          ; $6784: $03
	ld   bc, $2002                                   ; $6785: $01 $02 $20
	nop                                              ; $6788: $00
	ld   b, $06                                      ; $6789: $06 $06
	inc  b                                           ; $678b: $04
	rrca                                             ; $678c: $0f
	nop                                              ; $678d: $00
	ld   bc, $7801                                   ; $678e: $01 $01 $78
	ld   a, c                                        ; $6791: $79
	sub  b                                           ; $6792: $90
	sbc  [hl]                                        ; $6793: $9e
	ld   [bc], a                                     ; $6794: $02
	ld   hl, sp+$04                                  ; $6795: $f8 $04
	ld   c, b                                        ; $6797: $48
	and  b                                           ; $6798: $a0
	inc  bc                                          ; $6799: $03
	adc  e                                           ; $679a: $8b
	ld   [bc], a                                     ; $679b: $02
	ld   a, a                                        ; $679c: $7f
	ld   h, l                                        ; $679d: $65
	ld   a, b                                        ; $679e: $78
	ld   e, l                                        ; $679f: $5d
	ld   [hl], h                                     ; $67a0: $74
	sub  b                                           ; $67a1: $90
	dec  c                                           ; $67a2: $0d
	ld   d, d                                        ; $67a3: $52
	ld   d, d                                        ; $67a4: $52
	ld   h, [hl]                                     ; $67a5: $66
	sub  c                                           ; $67a6: $91
	ld   a, b                                        ; $67a7: $78
	ld   d, d                                        ; $67a8: $52
	ld   [hl], l                                     ; $67a9: $75
	ld   h, a                                        ; $67aa: $67
	ld   e, c                                        ; $67ab: $59
	sbc  a                                           ; $67ac: $9f
	dec  c                                           ; $67ad: $0d
	nop                                              ; $67ae: $00
	ld   a, [bc]                                     ; $67af: $0a
	inc  e                                           ; $67b0: $1c
	dec  b                                           ; $67b1: $05
	ld   [bc], a                                     ; $67b2: $02
	ld   [bc], a                                     ; $67b3: $02
	dec  e                                           ; $67b4: $1d
	ld   b, b                                        ; $67b5: $40
	dec  d                                           ; $67b6: $15
	inc  bc                                          ; $67b7: $03
	dec  d                                           ; $67b8: $15
	ld   bc, $2902                                   ; $67b9: $01 $02 $29
	nop                                              ; $67bc: $00
	ld   bc, $a178                                   ; $67bd: $01 $78 $a1
	sub  d                                           ; $67c0: $92
	db   $fc                                         ; $67c1: $fc
	sbc  a                                           ; $67c2: $9f
	and  a                                           ; $67c3: $a7
	jp   nz, Jump_04d_525a                           ; $67c4: $c2 $5a $52

	ld   [hl], c                                     ; $67c7: $71
	ld   [hl], d                                     ; $67c8: $72
	sub  b                                           ; $67c9: $90
	dec  c                                           ; $67ca: $0d
	inc  bc                                          ; $67cb: $03
	adc  e                                           ; $67cc: $8b
	ld   [bc], a                                     ; $67cd: $02
	sub  [hl]                                        ; $67ce: $96
	inc  bc                                          ; $67cf: $03
	add  e                                           ; $67d0: $83
	inc  b                                           ; $67d1: $04
	sbc  b                                           ; $67d2: $98
	ld   h, l                                        ; $67d3: $65
	ld   [hl], h                                     ; $67d4: $74
	ld   b, $0d                                      ; $67d5: $06 $0d
	inc  b                                           ; $67d7: $04
	ld   e, [hl]                                     ; $67d8: $5e
	ld   a, [hl]                                     ; $67d9: $7e
	ld   [hl], c                                     ; $67da: $71
	ld   e, c                                        ; $67db: $59
	sbc  b                                           ; $67dc: $98
	dec  c                                           ; $67dd: $0d
	ld   h, l                                        ; $67de: $65
	ld   [hl], h                                     ; $67df: $74
	sbc  c                                           ; $67e0: $99
	halt                                             ; $67e1: $76
	ld   [hl], l                                     ; $67e2: $75
	sub  b                                           ; $67e3: $90
	ld   [bc], a                                     ; $67e4: $02
	sbc  l                                           ; $67e5: $9d
	ld   d, d                                        ; $67e6: $52
	ld   l, l                                        ; $67e7: $6d
	ld   d, d                                        ; $67e8: $52
	and  c                                           ; $67e9: $a1
	ld   e, c                                        ; $67ea: $59
	ld   sp, hl                                      ; $67eb: $f9
	dec  c                                           ; $67ec: $0d
	nop                                              ; $67ed: $00
	ld   a, [bc]                                     ; $67ee: $0a
	inc  e                                           ; $67ef: $1c
	dec  b                                           ; $67f0: $05
	rlca                                             ; $67f1: $07
	rlca                                             ; $67f2: $07
	ld   bc, $546b                                   ; $67f3: $01 $6b $54
	sub  d                                           ; $67f6: $92
	ld   a, b                                        ; $67f7: $78
	ld   e, l                                        ; $67f8: $5d
	ld   [hl], h                                     ; $67f9: $74
	db   $fd                                         ; $67fa: $fd
	inc  b                                           ; $67fb: $04
	ld   e, [hl]                                     ; $67fc: $5e
	inc  b                                           ; $67fd: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67fe: $cf
	ld   a, l                                        ; $67ff: $7d
	sbc  [hl]                                        ; $6800: $9e
	inc  bc                                          ; $6801: $03
	sub  h                                           ; $6802: $94
	inc  b                                           ; $6803: $04
	sbc  [hl]                                        ; $6804: $9e
	ld   e, d                                        ; $6805: $5a
	dec  c                                           ; $6806: $0d
	ld   a, l                                        ; $6807: $7d
	ld   h, [hl]                                     ; $6808: $66
	ld   e, a                                        ; $6809: $5f
	ld   [hl], h                                     ; $680a: $74
	add  [hl]                                        ; $680b: $86
	and  c                                           ; $680c: $a1
	halt                                             ; $680d: $76
	cp   d                                           ; $680e: $ba
	or   l                                           ; $680f: $b5
	and  l                                           ; $6810: $a5
	sub  b                                           ; $6811: $90
	and  c                                           ; $6812: $a1
	ld   a, l                                        ; $6813: $7d
	dec  c                                           ; $6814: $0d
	ld   [hl], l                                     ; $6815: $75
	ld   e, a                                        ; $6816: $5f
	and  c                                           ; $6817: $a1
	cp   $6f                                         ; $6818: $fe $6f
	sub  e                                           ; $681a: $93
	ei                                               ; $681b: $fb
	ld   h, c                                        ; $681c: $61
	ld   [hl], c                                     ; $681d: $71
	ld   l, a                                        ; $681e: $6f
	sub  c                                           ; $681f: $91
	sbc  a                                           ; $6820: $9f
	dec  c                                           ; $6821: $0d
	nop                                              ; $6822: $00
	ld   a, [bc]                                     ; $6823: $0a
	ld   b, $06                                      ; $6824: $06 $06
	inc  b                                           ; $6826: $04
	rrca                                             ; $6827: $0f
	nop                                              ; $6828: $00
	ld   bc, $6b01                                   ; $6829: $01 $01 $6b
	ld   d, h                                        ; $682c: $54
	ld   [hl], l                                     ; $682d: $75
	ld   h, a                                        ; $682e: $67
	sub  [hl]                                        ; $682f: $96
	ld   a, e                                        ; $6830: $7b
	sbc  a                                           ; $6831: $9f
	dec  c                                           ; $6832: $0d
	ld   a, l                                        ; $6833: $7d
	ld   h, [hl]                                     ; $6834: $66
	ld   e, a                                        ; $6835: $5f
	ld   l, l                                        ; $6836: $6d
	inc  b                                           ; $6837: $04
	ld   e, [hl]                                     ; $6838: $5e
	inc  b                                           ; $6839: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $683a: $cf
	adc  c                                           ; $683b: $89
	ld   [hl], a                                     ; $683c: $77
	dec  c                                           ; $683d: $0d
	ld   h, a                                        ; $683e: $67
	ld   a, [hl]                                     ; $683f: $7e
	sub  a                                           ; $6840: $97
	ld   h, l                                        ; $6841: $65
	ld   d, d                                        ; $6842: $52
	sub  b                                           ; $6843: $90
	ld   a, h                                        ; $6844: $7c
	ld   [hl], l                                     ; $6845: $75
	ld   h, a                                        ; $6846: $67
	ld   e, c                                        ; $6847: $59
	sub  a                                           ; $6848: $97
	ld   a, e                                        ; $6849: $7b
	sbc  a                                           ; $684a: $9f
	dec  c                                           ; $684b: $0d
	nop                                              ; $684c: $00
	ld   a, [bc]                                     ; $684d: $0a
	inc  e                                           ; $684e: $1c
	dec  b                                           ; $684f: $05
	ld   bc, $1d01                                   ; $6850: $01 $01 $1d
	ld   b, b                                        ; $6853: $40
	dec  d                                           ; $6854: $15
	inc  bc                                          ; $6855: $03
	dec  d                                           ; $6856: $15
	ld   bc, $2802                                   ; $6857: $01 $02 $28
	nop                                              ; $685a: $00
	ld   bc, $0008                                   ; $685b: $01 $08 $00
	ld   a, l                                        ; $685e: $7d
	and  c                                           ; $685f: $a1
	dec  c                                           ; $6860: $0d
	ld   a, b                                        ; $6861: $78
	ld   e, c                                        ; $6862: $59
	ld   a, b                                        ; $6863: $78
	ld   e, c                                        ; $6864: $59
	inc  b                                           ; $6865: $04
	sbc  [hl]                                        ; $6866: $9e
	ld   e, c                                        ; $6867: $59
	ld   [hl], c                                     ; $6868: $71
	ld   [hl], h                                     ; $6869: $74
	sbc  c                                           ; $686a: $99
	sub  d                                           ; $686b: $92
	and  c                                           ; $686c: $a1
	sbc  a                                           ; $686d: $9f
	dec  c                                           ; $686e: $0d
	nop                                              ; $686f: $00
	ld   a, [bc]                                     ; $6870: $0a
	ld   b, $06                                      ; $6871: $06 $06
	inc  b                                           ; $6873: $04
	rrca                                             ; $6874: $0f
	nop                                              ; $6875: $00
	ld   bc, $7801                                   ; $6876: $01 $01 $78
	sbc  c                                           ; $6879: $99
	adc  c                                           ; $687a: $89
	ld   [hl], a                                     ; $687b: $77
	sbc  a                                           ; $687c: $9f
	dec  c                                           ; $687d: $0d
	ld   l, e                                        ; $687e: $6b
	sbc  d                                           ; $687f: $9a
	ld   [hl], l                                     ; $6880: $75
	ld   d, d                                        ; $6881: $52
	ld   [hl], d                                     ; $6882: $72
	sub  b                                           ; $6883: $90
	inc  bc                                          ; $6884: $03
	add  e                                           ; $6885: $83
	inc  b                                           ; $6886: $04
	sbc  b                                           ; $6887: $98
	ld   a, [hl]                                     ; $6888: $7e
	ld   e, c                                        ; $6889: $59
	sbc  b                                           ; $688a: $98
	dec  c                                           ; $688b: $0d
	ld   a, b                                        ; $688c: $78
	and  c                                           ; $688d: $a1
	ld   [hl], l                                     ; $688e: $75
	ld   h, a                                        ; $688f: $67
	ld   a, e                                        ; $6890: $7b
	sbc  a                                           ; $6891: $9f
	dec  c                                           ; $6892: $0d
	nop                                              ; $6893: $00
	ld   a, [bc]                                     ; $6894: $0a
	inc  e                                           ; $6895: $1c
	dec  b                                           ; $6896: $05
	inc  bc                                          ; $6897: $03
	inc  bc                                          ; $6898: $03
	dec  e                                           ; $6899: $1d
	ld   b, b                                        ; $689a: $40
	dec  d                                           ; $689b: $15
	inc  bc                                          ; $689c: $03
	dec  d                                           ; $689d: $15
	ld   bc, $2901                                   ; $689e: $01 $01 $29
	nop                                              ; $68a1: $00
	ld   bc, $a178                                   ; $68a2: $01 $78 $a1
	ld   h, [hl]                                     ; $68a5: $66
	sub  c                                           ; $68a6: $91
	ld   l, e                                        ; $68a7: $6b
	sbc  b                                           ; $68a8: $98
	sub  c                                           ; $68a9: $91
	db   $fc                                         ; $68aa: $fc
	sbc  a                                           ; $68ab: $9f
	dec  c                                           ; $68ac: $0d
	ld   [$7d00], sp                                 ; $68ad: $08 $00 $7d
	and  c                                           ; $68b0: $a1
	sbc  [hl]                                        ; $68b1: $9e
	ld   l, e                                        ; $68b2: $6b
	sbc  d                                           ; $68b3: $9a
	ld   a, l                                        ; $68b4: $7d
	dec  c                                           ; $68b5: $0d
	ld   e, e                                        ; $68b6: $5b
	ld   [hl], c                                     ; $68b7: $71
	ld   [hl], d                                     ; $68b8: $72
	ld   d, d                                        ; $68b9: $52
	ld   [hl], l                                     ; $68ba: $75
	db   $fc                                         ; $68bb: $fc
	sbc  a                                           ; $68bc: $9f
	dec  c                                           ; $68bd: $0d
	nop                                              ; $68be: $00
	ld   a, [bc]                                     ; $68bf: $0a
	ld   b, $06                                      ; $68c0: $06 $06
	inc  b                                           ; $68c2: $04
	inc  e                                           ; $68c3: $1c
	dec  b                                           ; $68c4: $05
	nop                                              ; $68c5: $00
	nop                                              ; $68c6: $00
	ld   bc, $7889                                   ; $68c7: $01 $89 $78
	sbc  [hl]                                        ; $68ca: $9e
	and  a                                           ; $68cb: $a7
	jp   nz, Jump_04d_7f02                           ; $68cc: $c2 $02 $7f

	ld   e, l                                        ; $68cf: $5d
	ld   e, c                                        ; $68d0: $59
	sub  a                                           ; $68d1: $97
	sbc  a                                           ; $68d2: $9f
	dec  c                                           ; $68d3: $0d
	adc  h                                           ; $68d4: $8c
	ld   l, l                                        ; $68d5: $6d
	sbc  [hl]                                        ; $68d6: $9e
	ld   [bc], a                                     ; $68d7: $02
	xor  d                                           ; $68d8: $aa
	ld   [hl], l                                     ; $68d9: $75
	ld   a, b                                        ; $68da: $78
	sbc  a                                           ; $68db: $9f
	dec  c                                           ; $68dc: $0d
	nop                                              ; $68dd: $00
	ld   a, [bc]                                     ; $68de: $0a
	dec  c                                           ; $68df: $0d
	nop                                              ; $68e0: $00
	nop                                              ; $68e1: $00
	rrca                                             ; $68e2: $0f
	nop                                              ; $68e3: $00
	ld   bc, $1e09                                   ; $68e4: $01 $09 $1e
	nop                                              ; $68e7: $00
	rrca                                             ; $68e8: $0f
	nop                                              ; $68e9: $00
	ld   bc, $0401                                   ; $68ea: $01 $01 $04
	ld   [$8f02], sp                                 ; $68ed: $08 $02 $8f
	ld   [bc], a                                     ; $68f0: $02
	sub  b                                           ; $68f1: $90
	ld   [bc], a                                     ; $68f2: $02
	sub  c                                           ; $68f3: $91
	inc  b                                           ; $68f4: $04
	add  hl, bc                                      ; $68f5: $09
	ld   a, c                                        ; $68f6: $79
	ld   [hl], d                                     ; $68f7: $72
	ld   d, d                                        ; $68f8: $52
	ld   [hl], h                                     ; $68f9: $74
	dec  c                                           ; $68fa: $0d
	inc  b                                           ; $68fb: $04
	ld   c, c                                        ; $68fc: $49
	ld   e, c                                        ; $68fd: $59
	ld   [bc], a                                     ; $68fe: $02
	ret  nc                                          ; $68ff: $d0

	ld   d, [hl]                                     ; $6900: $56
	ld   [hl], h                                     ; $6901: $74
	ld   e, l                                        ; $6902: $5d
	ld   l, [hl]                                     ; $6903: $6e
	ld   h, e                                        ; $6904: $63
	ld   d, d                                        ; $6905: $52
	sbc  a                                           ; $6906: $9f
	dec  c                                           ; $6907: $0d
	nop                                              ; $6908: $00
	ld   a, [bc]                                     ; $6909: $0a
	inc  e                                           ; $690a: $1c
	dec  b                                           ; $690b: $05
	nop                                              ; $690c: $00
	nop                                              ; $690d: $00
	ld   bc, $926b                                   ; $690e: $01 $6b $92
	ld   a, b                                        ; $6911: $78
	db   $fc                                         ; $6912: $fc
	sbc  a                                           ; $6913: $9f
	inc  b                                           ; $6914: $04
	ld   a, [bc]                                     ; $6915: $0a
	ld   [bc], a                                     ; $6916: $02
	nop                                              ; $6917: $00
	ld   a, l                                        ; $6918: $7d
	jr   jr_04d_691e                                 ; $6919: $18 $03

	add  d                                           ; $691b: $82
	sub  d                                           ; $691c: $92
	dec  c                                           ; $691d: $0d

jr_04d_691e:
	ld   a, e                                        ; $691e: $7b
	and  c                                           ; $691f: $a1
	ld   e, a                                        ; $6920: $5f
	ld   [hl], a                                     ; $6921: $77
	sbc  [hl]                                        ; $6922: $9e
	ld   [bc], a                                     ; $6923: $02
	jr   c, jr_04d_692a                              ; $6924: $38 $04

	ld   d, d                                        ; $6926: $52
	ld   a, l                                        ; $6927: $7d
	add  hl, de                                      ; $6928: $19
	inc  b                                           ; $6929: $04

jr_04d_692a:
	ld   a, c                                        ; $692a: $79
	ld   [bc], a                                     ; $692b: $02
	ld   e, b                                        ; $692c: $58
	adc  h                                           ; $692d: $8c
	ld   [hl], l                                     ; $692e: $75
	dec  c                                           ; $692f: $0d
	ld   d, b                                        ; $6930: $50
	sbc  c                                           ; $6931: $99
	and  c                                           ; $6932: $a1
	sub  d                                           ; $6933: $92
	sbc  a                                           ; $6934: $9f
	dec  c                                           ; $6935: $0d
	nop                                              ; $6936: $00
	ld   a, [bc]                                     ; $6937: $0a
	rrca                                             ; $6938: $0f
	nop                                              ; $6939: $00
	ld   bc, $7701                                   ; $693a: $01 $01 $77
	ld   d, h                                        ; $693d: $54
	ld   h, l                                        ; $693e: $65
	ld   [hl], h                                     ; $693f: $74
	ld   [hl], l                                     ; $6940: $75
	ld   h, a                                        ; $6941: $67
	ld   e, c                                        ; $6942: $59
	ld   sp, hl                                      ; $6943: $f9
	dec  c                                           ; $6944: $0d
	nop                                              ; $6945: $00
	ld   a, [bc]                                     ; $6946: $0a
	rrca                                             ; $6947: $0f
	dec  b                                           ; $6948: $05
	nop                                              ; $6949: $00
	ld   bc, $a178                                   ; $694a: $01 $78 $a1
	ld   [hl], l                                     ; $694d: $75
	sub  d                                           ; $694e: $92
	halt                                             ; $694f: $76
	dec  b                                           ; $6950: $05
	pop  de                                          ; $6951: $d1
	ld   d, h                                        ; $6952: $54
	ld   sp, hl                                      ; $6953: $f9
	dec  c                                           ; $6954: $0d
	nop                                              ; $6955: $00
	ld   a, [bc]                                     ; $6956: $0a
	add  hl, de                                      ; $6957: $19
	dec  b                                           ; $6958: $05
	inc  bc                                          ; $6959: $03
	inc  b                                           ; $695a: $04
	ld   l, l                                        ; $695b: $6d
	ld   a, h                                        ; $695c: $7c
	ld   [hl], l                                     ; $695d: $75
	ld   h, a                                        ; $695e: $67
	ld   e, c                                        ; $695f: $59
	ld   sp, hl                                      ; $6960: $f9
	nop                                              ; $6961: $00
	nop                                              ; $6962: $00
	inc  b                                           ; $6963: $04
	ld   e, $79                                      ; $6964: $1e $79
	sub  b                                           ; $6966: $90
	inc  b                                           ; $6967: $04
	ld   a, [bc]                                     ; $6968: $0a
	ld   [bc], a                                     ; $6969: $02
	nop                                              ; $696a: $00
	ld   e, d                                        ; $696b: $5a
	ld   d, d                                        ; $696c: $52
	sbc  c                                           ; $696d: $99
	ld   a, h                                        ; $696e: $7c
	ld   sp, hl                                      ; $696f: $f9
	nop                                              ; $6970: $00
	ld   bc, $a156                                   ; $6971: $01 $56 $a1
	ld   e, h                                        ; $6974: $5c
	ld   e, d                                        ; $6975: $5a
	ld   d, d                                        ; $6976: $52
	ld   d, d                                        ; $6977: $52
	ld   e, c                                        ; $6978: $59
	sub  a                                           ; $6979: $97
	ld   sp, hl                                      ; $697a: $f9
	nop                                              ; $697b: $00
	ld   [bc], a                                     ; $697c: $02
	rlca                                             ; $697d: $07
	sbc  $04                                         ; $697e: $de $04
	ld   [bc], a                                     ; $6980: $02
	inc  bc                                          ; $6981: $03
	ld   bc, $2000                                   ; $6982: $01 $00 $20
	nop                                              ; $6985: $00
	rlca                                             ; $6986: $07
	ld   sp, $0205                                   ; $6987: $31 $05 $02
	inc  bc                                          ; $698a: $03
	ld   bc, $2001                                   ; $698b: $01 $01 $20
	nop                                              ; $698e: $00
	rlca                                             ; $698f: $07
	ld   e, d                                        ; $6990: $5a
	dec  b                                           ; $6991: $05
	ld   [bc], a                                     ; $6992: $02
	inc  bc                                          ; $6993: $03
	ld   bc, $2002                                   ; $6994: $01 $02 $20
	nop                                              ; $6997: $00
	ld   b, $97                                      ; $6998: $06 $97
	dec  b                                           ; $699a: $05
	rrca                                             ; $699b: $0f
	nop                                              ; $699c: $00
	ld   bc, $5001                                   ; $699d: $01 $01 $50
	sbc  b                                           ; $69a0: $98
	ld   e, d                                        ; $69a1: $5a
	halt                                             ; $69a2: $76
	ld   d, h                                        ; $69a3: $54
	ld   h, d                                        ; $69a4: $62
	ld   h, h                                        ; $69a5: $64
	ld   d, d                                        ; $69a6: $52
	adc  h                                           ; $69a7: $8c
	ld   h, a                                        ; $69a8: $67
	sbc  a                                           ; $69a9: $9f
	dec  c                                           ; $69aa: $0d
	inc  b                                           ; $69ab: $04
	ld   l, l                                        ; $69ac: $6d
	ld   a, h                                        ; $69ad: $7c
	ld   l, l                                        ; $69ae: $6d
	adc  a                                           ; $69af: $8f
	ld   a, c                                        ; $69b0: $79
	inc  b                                           ; $69b1: $04
	di                                               ; $69b2: $f3
	ld   [bc], a                                     ; $69b3: $02
	ld   b, $65                                      ; $69b4: $06 $65
	ld   [hl], h                                     ; $69b6: $74
	ld   d, d                                        ; $69b7: $52
	ld   [hl], h                                     ; $69b8: $74
	dec  c                                           ; $69b9: $0d
	ld   e, l                                        ; $69ba: $5d
	sbc  d                                           ; $69bb: $9a
	ld   l, l                                        ; $69bc: $6d
	ld   a, h                                        ; $69bd: $7c
	ld   [hl], l                                     ; $69be: $75
	ld   h, a                                        ; $69bf: $67
	ld   a, e                                        ; $69c0: $7b
	sbc  a                                           ; $69c1: $9f
	dec  c                                           ; $69c2: $0d
	nop                                              ; $69c3: $00
	ld   a, [bc]                                     ; $69c4: $0a
	inc  e                                           ; $69c5: $1c
	dec  b                                           ; $69c6: $05
	inc  bc                                          ; $69c7: $03
	inc  bc                                          ; $69c8: $03
	ld   bc, $4904                                   ; $69c9: $01 $04 $49
	ld   [bc], a                                     ; $69cc: $02
	sbc  l                                           ; $69cd: $9d
	ld   d, h                                        ; $69ce: $54
	ld   [hl], h                                     ; $69cf: $74
	and  c                                           ; $69d0: $a1
	ld   a, h                                        ; $69d1: $7c
	sbc  a                                           ; $69d2: $9f
	dec  c                                           ; $69d3: $0d
	and  e                                           ; $69d4: $a3
	call c, $9d02                                    ; $69d5: $dc $02 $9d
	ld   d, d                                        ; $69d8: $52
	ld   a, b                                        ; $69d9: $78
	sub  d                                           ; $69da: $92
	sbc  a                                           ; $69db: $9f
	dec  c                                           ; $69dc: $0d
	ld   l, e                                        ; $69dd: $6b
	and  c                                           ; $69de: $a1
	ld   a, b                                        ; $69df: $78
	sbc  l                                           ; $69e0: $9d
	ld   e, a                                        ; $69e1: $5f
	ld   d, b                                        ; $69e2: $50
	sbc  c                                           ; $69e3: $99
	ld   e, c                                        ; $69e4: $59
	ld   d, d                                        ; $69e5: $52
	ld   a, b                                        ; $69e6: $78
	sbc  a                                           ; $69e7: $9f
	dec  c                                           ; $69e8: $0d
	nop                                              ; $69e9: $00
	ld   a, [bc]                                     ; $69ea: $0a
	ld   b, $97                                      ; $69eb: $06 $97
	dec  b                                           ; $69ed: $05
	rrca                                             ; $69ee: $0f
	nop                                              ; $69ef: $00
	ld   bc, $0401                                   ; $69f0: $01 $01 $04
	ld   e, $79                                      ; $69f3: $1e $79
	sub  b                                           ; $69f5: $90
	inc  b                                           ; $69f6: $04
	ld   a, [bc]                                     ; $69f7: $0a
	ld   [bc], a                                     ; $69f8: $02
	nop                                              ; $69f9: $00
	ld   e, d                                        ; $69fa: $5a
	ld   d, d                                        ; $69fb: $52
	sbc  c                                           ; $69fc: $99
	ld   a, h                                        ; $69fd: $7c
	ld   [hl], l                                     ; $69fe: $75
	ld   h, a                                        ; $69ff: $67
	ld   e, c                                        ; $6a00: $59
	ld   sp, hl                                      ; $6a01: $f9
	dec  c                                           ; $6a02: $0d
	nop                                              ; $6a03: $00
	ld   a, [bc]                                     ; $6a04: $0a
	rrca                                             ; $6a05: $0f
	dec  b                                           ; $6a06: $05
	nop                                              ; $6a07: $00
	ld   bc, $5a6f                                   ; $6a08: $01 $6f $5a
	ld   d, h                                        ; $6a0b: $54
	ld   a, e                                        ; $6a0c: $7b
	and  c                                           ; $6a0d: $a1
	ld   a, b                                        ; $6a0e: $78
	db   $fc                                         ; $6a0f: $fc
	sbc  a                                           ; $6a10: $9f
	dec  c                                           ; $6a11: $0d
	nop                                              ; $6a12: $00
	ld   a, [bc]                                     ; $6a13: $0a
	ld   b, $97                                      ; $6a14: $06 $97
	dec  b                                           ; $6a16: $05
	rrca                                             ; $6a17: $0f
	nop                                              ; $6a18: $00
	ld   bc, $0401                                   ; $6a19: $01 $01 $04
	ld   a, [hl]                                     ; $6a1c: $7e
	ld   a, l                                        ; $6a1d: $7d
	inc  b                                           ; $6a1e: $04
	jp   nz, wTitleScreenAnimationStep                                   ; $6a1f: $c2 $02 $cc

	ld   e, d                                        ; $6a22: $5a
	sbc  b                                           ; $6a23: $98
	ld   [hl], l                                     ; $6a24: $75
	ld   d, [hl]                                     ; $6a25: $56
	and  c                                           ; $6a26: $a1
	ld   e, h                                        ; $6a27: $5c
	ld   e, d                                        ; $6a28: $5a
	ld   d, d                                        ; $6a29: $52
	ld   d, d                                        ; $6a2a: $52
	dec  c                                           ; $6a2b: $0d
	ld   e, c                                        ; $6a2c: $59
	sub  a                                           ; $6a2d: $97
	ld   [hl], l                                     ; $6a2e: $75
	ld   h, a                                        ; $6a2f: $67
	ld   e, c                                        ; $6a30: $59
	ld   sp, hl                                      ; $6a31: $f9
	dec  c                                           ; $6a32: $0d
	nop                                              ; $6a33: $00
	ld   a, [bc]                                     ; $6a34: $0a
	inc  e                                           ; $6a35: $1c
	dec  b                                           ; $6a36: $05
	ld   bc, $1d01                                   ; $6a37: $01 $01 $1d
	ld   b, b                                        ; $6a3a: $40
	dec  d                                           ; $6a3b: $15
	inc  bc                                          ; $6a3c: $03
	dec  d                                           ; $6a3d: $15
	ld   bc, $2801                                   ; $6a3e: $01 $01 $28
	nop                                              ; $6a41: $00
	ld   bc, $fb50                                   ; $6a42: $01 $50 $fb
	ld   [hl], c                                     ; $6a45: $71
	sbc  a                                           ; $6a46: $9f
	ld   e, b                                        ; $6a47: $58
	ld   [hl], c                                     ; $6a48: $71
	ld   h, l                                        ; $6a49: $65
	ld   d, d                                        ; $6a4a: $52
	ld   a, b                                        ; $6a4b: $78
	ei                                               ; $6a4c: $fb
	sbc  a                                           ; $6a4d: $9f
	dec  c                                           ; $6a4e: $0d
	nop                                              ; $6a4f: $00
	ld   a, [bc]                                     ; $6a50: $0a
	ld   b, $97                                      ; $6a51: $06 $97
	dec  b                                           ; $6a53: $05
	inc  e                                           ; $6a54: $1c
	dec  b                                           ; $6a55: $05
	nop                                              ; $6a56: $00
	nop                                              ; $6a57: $00
	ld   bc, $8b03                                   ; $6a58: $01 $03 $8b
	ld   a, l                                        ; $6a5b: $7d
	sbc  [hl]                                        ; $6a5c: $9e
	dec  d                                           ; $6a5d: $15
	inc  b                                           ; $6a5e: $04
	ld   a, c                                        ; $6a5f: $79
	ld   [bc], a                                     ; $6a60: $02
	ld   e, b                                        ; $6a61: $58
	ld   a, h                                        ; $6a62: $7c
	dec  d                                           ; $6a63: $15
	ld   a, l                                        ; $6a64: $7d
	dec  c                                           ; $6a65: $0d
	ld   d, [hl]                                     ; $6a66: $56
	and  c                                           ; $6a67: $a1
	ld   e, h                                        ; $6a68: $5c
	ld   e, d                                        ; $6a69: $5a
	ld   [bc], a                                     ; $6a6a: $02
	jr   z, jr_04d_6abf                              ; $6a6b: $28 $52

	ld   e, c                                        ; $6a6d: $59
	sub  a                                           ; $6a6e: $97
	dec  c                                           ; $6a6f: $0d
	ld   [bc], a                                     ; $6a70: $02
	ld   d, d                                        ; $6a71: $52
	inc  b                                           ; $6a72: $04
	ld   a, c                                        ; $6a73: $79
	ld   a, c                                        ; $6a74: $79
	ld   h, l                                        ; $6a75: $65
	ld   l, l                                        ; $6a76: $6d
	and  c                                           ; $6a77: $a1
	sub  d                                           ; $6a78: $92
	sbc  a                                           ; $6a79: $9f
	dec  c                                           ; $6a7a: $0d
	nop                                              ; $6a7b: $00
	ld   a, [bc]                                     ; $6a7c: $0a
	ld   bc, $7889                                   ; $6a7d: $01 $89 $78
	sbc  [hl]                                        ; $6a80: $9e
	ld   l, a                                        ; $6a81: $6f
	sub  e                                           ; $6a82: $93
	ei                                               ; $6a83: $fb
	ld   h, c                                        ; $6a84: $61
	halt                                             ; $6a85: $76
	ld   [hl], l                                     ; $6a86: $75
	sbc  a                                           ; $6a87: $9f
	dec  c                                           ; $6a88: $0d
	nop                                              ; $6a89: $00
	ld   a, [bc]                                     ; $6a8a: $0a
	dec  c                                           ; $6a8b: $0d
	nop                                              ; $6a8c: $00
	nop                                              ; $6a8d: $00
	rrca                                             ; $6a8e: $0f
	nop                                              ; $6a8f: $00
	ld   bc, $1e09                                   ; $6a90: $01 $09 $1e
	nop                                              ; $6a93: $00
	nop                                              ; $6a94: $00
	rrca                                             ; $6a95: $0f
	nop                                              ; $6a96: $00
	ld   bc, $020d                                   ; $6a97: $01 $0d $02
	nop                                              ; $6a9a: $00
	ld   [bc], a                                     ; $6a9b: $02
	ld   bc, $7d58                                   ; $6a9c: $01 $58 $7d
	sub  [hl]                                        ; $6a9f: $96
	ld   d, h                                        ; $6aa0: $54
	ld   h, d                                        ; $6aa1: $62
	ld   h, h                                        ; $6aa2: $64
	ld   d, d                                        ; $6aa3: $52
	adc  h                                           ; $6aa4: $8c
	ld   h, a                                        ; $6aa5: $67
	sbc  a                                           ; $6aa6: $9f
	dec  c                                           ; $6aa7: $0d
	ld   h, a                                        ; $6aa8: $67
	adc  l                                           ; $6aa9: $8d
	sbc  d                                           ; $6aaa: $9a
	ld   h, e                                        ; $6aab: $63
	and  c                                           ; $6aac: $a1
	sbc  a                                           ; $6aad: $9f
	dec  c                                           ; $6aae: $0d
	nop                                              ; $6aaf: $00
	ld   a, [bc]                                     ; $6ab0: $0a
	inc  e                                           ; $6ab1: $1c
	ld   [bc], a                                     ; $6ab2: $02
	nop                                              ; $6ab3: $00
	nop                                              ; $6ab4: $00
	ld   bc, $9750                                   ; $6ab5: $01 $50 $97
	sbc  [hl]                                        ; $6ab8: $9e
	ld   [$6300], sp                                 ; $6ab9: $08 $00 $63
	and  c                                           ; $6abc: $a1
	sbc  a                                           ; $6abd: $9f
	dec  c                                           ; $6abe: $0d

jr_04d_6abf:
	ld   e, b                                        ; $6abf: $58
	ld   a, l                                        ; $6ac0: $7d
	sub  [hl]                                        ; $6ac1: $96
	ld   d, h                                        ; $6ac2: $54
	sbc  a                                           ; $6ac3: $9f
	dec  c                                           ; $6ac4: $0d
	nop                                              ; $6ac5: $00
	ld   a, [bc]                                     ; $6ac6: $0a
	rrca                                             ; $6ac7: $0f
	nop                                              ; $6ac8: $00
	ld   bc, $0101                                   ; $6ac9: $01 $01 $01
	inc  bc                                          ; $6acc: $03
	inc  b                                           ; $6acd: $04
	ld   c, c                                        ; $6ace: $49
	and  b                                           ; $6acf: $a0
	ld   [bc], a                                     ; $6ad0: $02
	jp   nz, Jump_04d_5461                           ; $6ad1: $c2 $61 $54

	ld   e, c                                        ; $6ad4: $59
	ld   a, b                                        ; $6ad5: $78
	rst  $38                                         ; $6ad6: $ff
	rst  $38                                         ; $6ad7: $ff
	ld   bc, $0d04                                   ; $6ad8: $01 $04 $0d
	nop                                              ; $6adb: $00
	ld   a, [bc]                                     ; $6adc: $0a
	add  hl, de                                      ; $6add: $19
	dec  b                                           ; $6ade: $05
	inc  bc                                          ; $6adf: $03
	ld   h, l                                        ; $6ae0: $65
	sub  e                                           ; $6ae1: $93
	adc  l                                           ; $6ae2: $8d
	ld   a, c                                        ; $6ae3: $79
	ld   [hl], d                                     ; $6ae4: $72
	ld   d, d                                        ; $6ae5: $52
	ld   [hl], h                                     ; $6ae6: $74
	nop                                              ; $6ae7: $00
	nop                                              ; $6ae8: $00
	inc  b                                           ; $6ae9: $04
	ld   [$8f02], sp                                 ; $6aea: $08 $02 $8f
	ld   [bc], a                                     ; $6aed: $02
	sub  b                                           ; $6aee: $90
	ld   [bc], a                                     ; $6aef: $02
	sub  c                                           ; $6af0: $91
	inc  b                                           ; $6af1: $04
	add  hl, bc                                      ; $6af2: $09
	ld   a, c                                        ; $6af3: $79
	ld   [hl], d                                     ; $6af4: $72
	ld   d, d                                        ; $6af5: $52
	ld   [hl], h                                     ; $6af6: $74
	nop                                              ; $6af7: $00
	ld   bc, $8a04                                   ; $6af8: $01 $04 $8a
	inc  bc                                          ; $6afb: $03
	ld   e, [hl]                                     ; $6afc: $5e
	ld   [bc], a                                     ; $6afd: $02
	adc  h                                           ; $6afe: $8c
	ld   a, c                                        ; $6aff: $79
	ld   [hl], d                                     ; $6b00: $72
	ld   d, d                                        ; $6b01: $52
	ld   [hl], h                                     ; $6b02: $74
	nop                                              ; $6b03: $00
	ld   [bc], a                                     ; $6b04: $02
	rlca                                             ; $6b05: $07
	or   b                                           ; $6b06: $b0
	nop                                              ; $6b07: $00
	ld   [bc], a                                     ; $6b08: $02
	inc  bc                                          ; $6b09: $03
	ld   bc, $2000                                   ; $6b0a: $01 $00 $20
	nop                                              ; $6b0d: $00
	rlca                                             ; $6b0e: $07
	adc  l                                           ; $6b0f: $8d
	ld   [bc], a                                     ; $6b10: $02
	ld   [bc], a                                     ; $6b11: $02
	inc  bc                                          ; $6b12: $03
	ld   bc, $2001                                   ; $6b13: $01 $01 $20
	nop                                              ; $6b16: $00
	rlca                                             ; $6b17: $07
	ld   e, a                                        ; $6b18: $5f
	inc  bc                                          ; $6b19: $03
	ld   [bc], a                                     ; $6b1a: $02
	inc  bc                                          ; $6b1b: $03
	ld   bc, $2002                                   ; $6b1c: $01 $02 $20
	nop                                              ; $6b1f: $00
	ld   b, $8e                                      ; $6b20: $06 $8e
	nop                                              ; $6b22: $00
	rrca                                             ; $6b23: $0f
	ld   [bc], a                                     ; $6b24: $02
	nop                                              ; $6b25: $00
	ld   bc, $a502                                   ; $6b26: $01 $02 $a5
	inc  b                                           ; $6b29: $04
	xor  d                                           ; $6b2a: $aa
	sub  b                                           ; $6b2b: $90
	ld   [bc], a                                     ; $6b2c: $02
	jr   nz, jr_04d_6b33                             ; $6b2d: $20 $04

	xor  d                                           ; $6b2f: $aa
	sbc  [hl]                                        ; $6b30: $9e
	ld   e, d                                        ; $6b31: $5a
	and  c                                           ; $6b32: $a1

jr_04d_6b33:
	ld   a, [hl]                                     ; $6b33: $7e
	sbc  b                                           ; $6b34: $98
	ld   a, b                                        ; $6b35: $78
	ld   h, e                                        ; $6b36: $63
	ld   d, d                                        ; $6b37: $52
	sbc  a                                           ; $6b38: $9f
	dec  c                                           ; $6b39: $0d
	nop                                              ; $6b3a: $00
	ld   a, [bc]                                     ; $6b3b: $0a
	dec  c                                           ; $6b3c: $0d
	nop                                              ; $6b3d: $00
	nop                                              ; $6b3e: $00
	rrca                                             ; $6b3f: $0f
	nop                                              ; $6b40: $00
	ld   bc, $1e09                                   ; $6b41: $01 $09 $1e
	nop                                              ; $6b44: $00
	rrca                                             ; $6b45: $0f
	nop                                              ; $6b46: $00
	ld   bc, $6701                                   ; $6b47: $01 $01 $67
	adc  l                                           ; $6b4a: $8d
	sbc  d                                           ; $6b4b: $9a
	ld   h, e                                        ; $6b4c: $63
	and  c                                           ; $6b4d: $a1
	ld   a, h                                        ; $6b4e: $7c
	ld   h, l                                        ; $6b4f: $65
	sub  e                                           ; $6b50: $93
	adc  l                                           ; $6b51: $8d
	ld   [hl], c                                     ; $6b52: $71
	ld   [hl], h                                     ; $6b53: $74
	dec  c                                           ; $6b54: $0d
	ld   a, b                                        ; $6b55: $78
	and  c                                           ; $6b56: $a1
	ld   [hl], l                                     ; $6b57: $75
	ld   h, a                                        ; $6b58: $67
	ld   e, c                                        ; $6b59: $59
	ld   sp, hl                                      ; $6b5a: $f9
	dec  c                                           ; $6b5b: $0d
	nop                                              ; $6b5c: $00
	ld   a, [bc]                                     ; $6b5d: $0a
	rrca                                             ; $6b5e: $0f
	ld   [bc], a                                     ; $6b5f: $02
	nop                                              ; $6b60: $00
	ld   bc, $6d9d                                   ; $6b61: $01 $9d $6d
	ld   e, l                                        ; $6b64: $5d
	ld   h, l                                        ; $6b65: $65
	ld   a, h                                        ; $6b66: $7c
	ld   h, l                                        ; $6b67: $65
	sub  e                                           ; $6b68: $93
	adc  l                                           ; $6b69: $8d
	rst  $38                                         ; $6b6a: $ff
	rst  $38                                         ; $6b6b: $ff
	ld   sp, hl                                      ; $6b6c: $f9
	dec  c                                           ; $6b6d: $0d
	ld   l, e                                        ; $6b6e: $6b
	ld   d, h                                        ; $6b6f: $54
	ld   [hl], l                                     ; $6b70: $75
	ld   h, a                                        ; $6b71: $67
	sbc  l                                           ; $6b72: $9d
	ld   a, e                                        ; $6b73: $7b
	sbc  [hl]                                        ; $6b74: $9e
	inc  bc                                          ; $6b75: $03
	ld   l, c                                        ; $6b76: $69
	ld   [bc], a                                     ; $6b77: $02
	and  b                                           ; $6b78: $a0
	ld   a, l                                        ; $6b79: $7d
	dec  c                                           ; $6b7a: $0d
	inc  bc                                          ; $6b7b: $03
	ld   e, c                                        ; $6b7c: $59
	ld   [bc], a                                     ; $6b7d: $02
	ld   [hl-], a                                    ; $6b7e: $32
	ld   a, c                                        ; $6b7f: $79
	ld   h, c                                        ; $6b80: $61
	ld   [hl], c                                     ; $6b81: $71
	ld   [hl], h                                     ; $6b82: $74
	adc  h                                           ; $6b83: $8c
	ld   h, a                                        ; $6b84: $67
	sbc  l                                           ; $6b85: $9d
	sbc  a                                           ; $6b86: $9f
	dec  c                                           ; $6b87: $0d
	nop                                              ; $6b88: $00
	ld   a, [bc]                                     ; $6b89: $0a
	ld   bc, $786f                                   ; $6b8a: $01 $6f $78
	adc  l                                           ; $6b8d: $8d
	ld   a, c                                        ; $6b8e: $79
	sbc  [hl]                                        ; $6b8f: $9e
	ld   [$6300], sp                                 ; $6b90: $08 $00 $63
	and  c                                           ; $6b93: $a1
	ld   a, l                                        ; $6b94: $7d
	dec  c                                           ; $6b95: $0d
	ld   [bc], a                                     ; $6b96: $02
	ld   [hl-], a                                    ; $6b97: $32
	ld   h, b                                        ; $6b98: $60
	sbc  c                                           ; $6b99: $99
	ld   a, h                                        ; $6b9a: $7c
	ld   e, c                                        ; $6b9b: $59
	ld   h, l                                        ; $6b9c: $65
	sub  a                                           ; $6b9d: $97
	ld   sp, hl                                      ; $6b9e: $f9
	dec  c                                           ; $6b9f: $0d
	nop                                              ; $6ba0: $00
	ld   a, [bc]                                     ; $6ba1: $0a
	add  hl, de                                      ; $6ba2: $19
	dec  b                                           ; $6ba3: $05
	ld   [bc], a                                     ; $6ba4: $02
	ld   [bc], a                                     ; $6ba5: $02
	ld   [hl-], a                                    ; $6ba6: $32
	ld   h, b                                        ; $6ba7: $60
	sbc  c                                           ; $6ba8: $99
	nop                                              ; $6ba9: $00
	nop                                              ; $6baa: $00
	ld   [bc], a                                     ; $6bab: $02
	ld   [hl-], a                                    ; $6bac: $32
	ld   h, b                                        ; $6bad: $60
	ld   a, b                                        ; $6bae: $78
	ld   d, d                                        ; $6baf: $52
	nop                                              ; $6bb0: $00
	ld   bc, $3207                                   ; $6bb1: $01 $07 $32
	ld   bc, $0302                                   ; $6bb4: $01 $02 $03
	ld   bc, $2000                                   ; $6bb7: $01 $00 $20
	nop                                              ; $6bba: $00
	rlca                                             ; $6bbb: $07
	ld   l, c                                        ; $6bbc: $69
	ld   bc, $0302                                   ; $6bbd: $01 $02 $03
	ld   bc, $2001                                   ; $6bc0: $01 $01 $20
	nop                                              ; $6bc3: $00
	ld   b, $4a                                      ; $6bc4: $06 $4a
	ld   [bc], a                                     ; $6bc6: $02
	rrca                                             ; $6bc7: $0f
	nop                                              ; $6bc8: $00
	ld   bc, $0201                                   ; $6bc9: $01 $01 $02
	ld   [hl-], a                                    ; $6bcc: $32
	ld   h, b                                        ; $6bcd: $60
	adc  h                                           ; $6bce: $8c
	ld   h, a                                        ; $6bcf: $67
	sub  [hl]                                        ; $6bd0: $96
	sbc  a                                           ; $6bd1: $9f
	dec  c                                           ; $6bd2: $0d
	nop                                              ; $6bd3: $00
	ld   a, [bc]                                     ; $6bd4: $0a
	inc  e                                           ; $6bd5: $1c
	ld   [bc], a                                     ; $6bd6: $02
	ld   bc, $1d01                                   ; $6bd7: $01 $01 $1d
	ld   b, b                                        ; $6bda: $40
	ld   [de], a                                     ; $6bdb: $12
	inc  bc                                          ; $6bdc: $03
	ld   [de], a                                     ; $6bdd: $12
	ld   bc, $2802                                   ; $6bde: $01 $02 $28
	nop                                              ; $6be1: $00
	ld   bc, $9750                                   ; $6be2: $01 $50 $97
	sbc  [hl]                                        ; $6be5: $9e
	ld   l, e                                        ; $6be6: $6b
	ld   d, h                                        ; $6be7: $54
	ld   a, b                                        ; $6be8: $78
	ld   a, h                                        ; $6be9: $7c
	sbc  a                                           ; $6bea: $9f
	dec  c                                           ; $6beb: $0d
	ld   l, e                                        ; $6bec: $6b
	sbc  d                                           ; $6bed: $9a
	ld   a, l                                        ; $6bee: $7d
	sbc  [hl]                                        ; $6bef: $9e
	ld   d, d                                        ; $6bf0: $52
	ld   d, d                                        ; $6bf1: $52
	ld   h, c                                        ; $6bf2: $61
	halt                                             ; $6bf3: $76
	ld   [hl], l                                     ; $6bf4: $75
	ld   h, a                                        ; $6bf5: $67
	sbc  l                                           ; $6bf6: $9d
	sbc  a                                           ; $6bf7: $9f
	dec  c                                           ; $6bf8: $0d
	nop                                              ; $6bf9: $00
	ld   a, [bc]                                     ; $6bfa: $0a
	ld   b, $69                                      ; $6bfb: $06 $69
	ld   [bc], a                                     ; $6bfd: $02
	rrca                                             ; $6bfe: $0f
	nop                                              ; $6bff: $00
	ld   bc, $6b01                                   ; $6c00: $01 $01 $6b
	sbc  d                                           ; $6c03: $9a
	ld   e, d                                        ; $6c04: $5a
	rst  $38                                         ; $6c05: $ff
	rst  $38                                         ; $6c06: $ff
	dec  c                                           ; $6c07: $0d
	ld   [bc], a                                     ; $6c08: $02
	ld   [hl-], a                                    ; $6c09: $32
	ld   h, b                                        ; $6c0a: $60
	ld   a, b                                        ; $6c0b: $78
	ld   d, d                                        ; $6c0c: $52
	and  c                                           ; $6c0d: $a1
	ld   [hl], l                                     ; $6c0e: $75
	ld   h, a                                        ; $6c0f: $67
	sub  [hl]                                        ; $6c10: $96
	sbc  a                                           ; $6c11: $9f
	dec  c                                           ; $6c12: $0d
	nop                                              ; $6c13: $00
	ld   a, [bc]                                     ; $6c14: $0a
	inc  e                                           ; $6c15: $1c
	ld   [bc], a                                     ; $6c16: $02
	ld   bc, $0101                                   ; $6c17: $01 $01 $01
	ld   l, e                                        ; $6c1a: $6b
	ld   d, h                                        ; $6c1b: $54
	ld   a, b                                        ; $6c1c: $78
	ld   a, h                                        ; $6c1d: $7c
	ld   sp, hl                                      ; $6c1e: $f9
	dec  c                                           ; $6c1f: $0d
	ld   a, b                                        ; $6c20: $78
	sub  a                                           ; $6c21: $97
	sbc  [hl]                                        ; $6c22: $9e
	ld   [bc], a                                     ; $6c23: $02
	ld   [hl-], a                                    ; $6c24: $32
	ld   e, h                                        ; $6c25: $5c
	and  b                                           ; $6c26: $a0
	ld   [bc], a                                     ; $6c27: $02
	ret  nc                                          ; $6c28: $d0

	ld   d, [hl]                                     ; $6c29: $56
	ld   [hl], h                                     ; $6c2a: $74
	dec  c                                           ; $6c2b: $0d
	ld   d, b                                        ; $6c2c: $50
	ld   h, b                                        ; $6c2d: $60
	adc  h                                           ; $6c2e: $8c
	ld   h, l                                        ; $6c2f: $65
	sub  l                                           ; $6c30: $95
	ld   d, h                                        ; $6c31: $54
	ld   e, c                                        ; $6c32: $59
	ld   sp, hl                                      ; $6c33: $f9
	dec  c                                           ; $6c34: $0d
	nop                                              ; $6c35: $00
	ld   a, [bc]                                     ; $6c36: $0a
	add  hl, de                                      ; $6c37: $19
	dec  b                                           ; $6c38: $05
	ld   [bc], a                                     ; $6c39: $02
	ld   a, l                                        ; $6c3a: $7d
	ld   d, d                                        ; $6c3b: $52
	nop                                              ; $6c3c: $00
	nop                                              ; $6c3d: $00
	ld   d, d                                        ; $6c3e: $52
	ld   d, d                                        ; $6c3f: $52
	ld   d, [hl]                                     ; $6c40: $56
	nop                                              ; $6c41: $00
	ld   bc, $c307                                   ; $6c42: $01 $07 $c3
	ld   bc, $0302                                   ; $6c45: $01 $02 $03
	ld   bc, $2000                                   ; $6c48: $01 $00 $20
	nop                                              ; $6c4b: $00
	rlca                                             ; $6c4c: $07
	inc  b                                           ; $6c4d: $04
	ld   [bc], a                                     ; $6c4e: $02
	ld   [bc], a                                     ; $6c4f: $02
	inc  bc                                          ; $6c50: $03
	ld   bc, $2001                                   ; $6c51: $01 $01 $20
	nop                                              ; $6c54: $00
	ld   b, $4a                                      ; $6c55: $06 $4a
	ld   [bc], a                                     ; $6c57: $02
	rrca                                             ; $6c58: $0f
	nop                                              ; $6c59: $00
	ld   bc, $6a01                                   ; $6c5a: $01 $01 $6a
	add  b                                           ; $6c5d: $80
	sbc  [hl]                                        ; $6c5e: $9e
	ld   e, b                                        ; $6c5f: $58
	ld   [bc], a                                     ; $6c60: $02
	add  b                                           ; $6c61: $80
	ld   d, d                                        ; $6c62: $52
	ld   h, l                                        ; $6c63: $65
	adc  h                                           ; $6c64: $8c
	ld   h, a                                        ; $6c65: $67
	sbc  a                                           ; $6c66: $9f
	dec  c                                           ; $6c67: $0d
	nop                                              ; $6c68: $00
	ld   a, [bc]                                     ; $6c69: $0a
	inc  e                                           ; $6c6a: $1c
	ld   [bc], a                                     ; $6c6b: $02
	nop                                              ; $6c6c: $00
	nop                                              ; $6c6d: $00
	ld   bc, $7d75                                   ; $6c6e: $01 $75 $7d
	sbc  [hl]                                        ; $6c71: $9e
	ld   [bc], a                                     ; $6c72: $02
	and  l                                           ; $6c73: $a5
	inc  b                                           ; $6c74: $04
	rst  $28                                         ; $6c75: $ef
	sbc  a                                           ; $6c76: $9f
	dec  c                                           ; $6c77: $0d
	nop                                              ; $6c78: $00
	dec  b                                           ; $6c79: $05
	add  b                                           ; $6c7a: $80
	add  hl, de                                      ; $6c7b: $19
	ld   bc, $0001                                   ; $6c7c: $01 $01 $00
	dec  b                                           ; $6c7f: $05
	ld   b, b                                        ; $6c80: $40
	ld   l, d                                        ; $6c81: $6a
	ld   [bc], a                                     ; $6c82: $02
	nop                                              ; $6c83: $00
	nop                                              ; $6c84: $00
	ld   bc, $5903                                   ; $6c85: $01 $03 $59
	ld   [bc], a                                     ; $6c88: $02
	ld   [hl-], a                                    ; $6c89: $32
	inc  b                                           ; $6c8a: $04
	ld   a, d                                        ; $6c8b: $7a
	ld   a, c                                        ; $6c8c: $79
	dec  b                                           ; $6c8d: $05
	db   $10                                         ; $6c8e: $10
	ld   a, b                                        ; $6c8f: $78
	ld   h, e                                        ; $6c90: $63
	ld   d, d                                        ; $6c91: $52
	sbc  a                                           ; $6c92: $9f
	dec  c                                           ; $6c93: $0d
	nop                                              ; $6c94: $00
	ld   a, [bc]                                     ; $6c95: $0a
	ld   b, $69                                      ; $6c96: $06 $69
	ld   [bc], a                                     ; $6c98: $02
	rrca                                             ; $6c99: $0f
	nop                                              ; $6c9a: $00
	ld   bc, $6701                                   ; $6c9b: $01 $01 $67
	adc  l                                           ; $6c9e: $8d
	adc  h                                           ; $6c9f: $8c
	ld   l, c                                        ; $6ca0: $69
	and  c                                           ; $6ca1: $a1
	ld   e, d                                        ; $6ca2: $5a
	sbc  [hl]                                        ; $6ca3: $9e
	dec  c                                           ; $6ca4: $0d
	ld   d, [hl]                                     ; $6ca5: $56
	and  c                                           ; $6ca6: $a1
	sbc  b                                           ; $6ca7: $98
	sub  l                                           ; $6ca8: $95
	ld   h, l                                        ; $6ca9: $65
	adc  h                                           ; $6caa: $8c
	ld   h, a                                        ; $6cab: $67
	sbc  a                                           ; $6cac: $9f
	dec  c                                           ; $6cad: $0d
	nop                                              ; $6cae: $00
	ld   a, [bc]                                     ; $6caf: $0a
	inc  e                                           ; $6cb0: $1c
	ld   [bc], a                                     ; $6cb1: $02
	inc  bc                                          ; $6cb2: $03
	inc  bc                                          ; $6cb3: $03
	dec  e                                           ; $6cb4: $1d
	ld   b, b                                        ; $6cb5: $40
	ld   [de], a                                     ; $6cb6: $12
	inc  bc                                          ; $6cb7: $03
	ld   [de], a                                     ; $6cb8: $12
	ld   bc, $2901                                   ; $6cb9: $01 $01 $29
	nop                                              ; $6cbc: $00
	ld   bc, $9750                                   ; $6cbd: $01 $50 $97
	sbc  [hl]                                        ; $6cc0: $9e
	ld   l, e                                        ; $6cc1: $6b
	ld   d, h                                        ; $6cc2: $54
	ld   sp, hl                                      ; $6cc3: $f9
	dec  c                                           ; $6cc4: $0d
	ld   [bc], a                                     ; $6cc5: $02
	ld   [hl-], a                                    ; $6cc6: $32
	ld   h, b                                        ; $6cc7: $60
	ld   a, b                                        ; $6cc8: $78
	ld   d, d                                        ; $6cc9: $52
	ld   a, b                                        ; $6cca: $78
	and  c                                           ; $6ccb: $a1
	ld   [hl], h                                     ; $6ccc: $74
	dec  c                                           ; $6ccd: $0d
	adc  l                                           ; $6cce: $8d
	ld   [hl], c                                     ; $6ccf: $71
	halt                                             ; $6cd0: $76
	sub  b                                           ; $6cd1: $90
	ld   a, b                                        ; $6cd2: $78
	ld   d, d                                        ; $6cd3: $52
	ld   [hl], l                                     ; $6cd4: $75
	ld   h, a                                        ; $6cd5: $67
	sbc  l                                           ; $6cd6: $9d
	ld   a, e                                        ; $6cd7: $7b
	sbc  a                                           ; $6cd8: $9f
	dec  c                                           ; $6cd9: $0d
	nop                                              ; $6cda: $00
	ld   a, [bc]                                     ; $6cdb: $0a
	ld   b, $69                                      ; $6cdc: $06 $69
	ld   [bc], a                                     ; $6cde: $02
	inc  e                                           ; $6cdf: $1c
	ld   [bc], a                                     ; $6ce0: $02
	ld   [bc], a                                     ; $6ce1: $02
	ld   [bc], a                                     ; $6ce2: $02
	ld   bc, $bbb1                                   ; $6ce3: $01 $b1 $bb
	or   c                                           ; $6ce6: $b1
	cp   e                                           ; $6ce7: $bb
	ld   h, l                                        ; $6ce8: $65
	ld   [hl], h                                     ; $6ce9: $74
	ld   a, b                                        ; $6cea: $78
	ld   d, d                                        ; $6ceb: $52
	ld   [hl], l                                     ; $6cec: $75
	dec  c                                           ; $6ced: $0d
	inc  bc                                          ; $6cee: $03
	and  [hl]                                        ; $6cef: $a6
	inc  bc                                          ; $6cf0: $03
	ld   [hl], b                                     ; $6cf1: $70
	ld   e, l                                        ; $6cf2: $5d
	ld   [bc], a                                     ; $6cf3: $02
	add  e                                           ; $6cf4: $83
	inc  b                                           ; $6cf5: $04
	inc  h                                           ; $6cf6: $24
	ld   a, b                                        ; $6cf7: $78
	ld   h, e                                        ; $6cf8: $63
	ld   d, d                                        ; $6cf9: $52
	sbc  a                                           ; $6cfa: $9f
	dec  c                                           ; $6cfb: $0d
	nop                                              ; $6cfc: $00
	ld   a, [bc]                                     ; $6cfd: $0a
	ld   bc, $7d75                                   ; $6cfe: $01 $75 $7d
	sbc  [hl]                                        ; $6d01: $9e
	sbc  l                                           ; $6d02: $9d
	ld   l, l                                        ; $6d03: $6d
	ld   e, l                                        ; $6d04: $5d
	ld   h, l                                        ; $6d05: $65
	dec  c                                           ; $6d06: $0d
	inc  b                                           ; $6d07: $04
	di                                               ; $6d08: $f3
	ld   e, d                                        ; $6d09: $5a
	ld   d, b                                        ; $6d0a: $50
	sbc  b                                           ; $6d0b: $98
	adc  h                                           ; $6d0c: $8c
	ld   h, a                                        ; $6d0d: $67
	ld   e, c                                        ; $6d0e: $59
	sub  a                                           ; $6d0f: $97
	sbc  [hl]                                        ; $6d10: $9e
	ld   h, c                                        ; $6d11: $61
	sbc  d                                           ; $6d12: $9a
	ld   [hl], l                                     ; $6d13: $75
	rst  $38                                         ; $6d14: $ff
	rst  $38                                         ; $6d15: $ff
	dec  c                                           ; $6d16: $0d
	nop                                              ; $6d17: $00
	ld   a, [bc]                                     ; $6d18: $0a
	dec  c                                           ; $6d19: $0d
	nop                                              ; $6d1a: $00
	nop                                              ; $6d1b: $00
	rrca                                             ; $6d1c: $0f
	nop                                              ; $6d1d: $00
	ld   bc, $1e09                                   ; $6d1e: $01 $09 $1e
	nop                                              ; $6d21: $00
	rrca                                             ; $6d22: $0f
	nop                                              ; $6d23: $00
	ld   bc, $0201                                   ; $6d24: $01 $01 $02
	jr   c, jr_04d_6d2d                              ; $6d27: $38 $04

	ld   d, d                                        ; $6d29: $52
	ld   [hl], c                                     ; $6d2a: $71
	ld   [hl], h                                     ; $6d2b: $74
	ld   h, a                                        ; $6d2c: $67

jr_04d_6d2d:
	ld   h, d                                        ; $6d2d: $62
	ld   d, d                                        ; $6d2e: $52
	ld   [hl], l                                     ; $6d2f: $75
	ld   h, a                                        ; $6d30: $67
	ld   a, e                                        ; $6d31: $7b
	sbc  a                                           ; $6d32: $9f
	dec  c                                           ; $6d33: $0d
	nop                                              ; $6d34: $00
	ld   a, [bc]                                     ; $6d35: $0a
	rrca                                             ; $6d36: $0f
	ld   [bc], a                                     ; $6d37: $02
	nop                                              ; $6d38: $00
	ld   bc, $1804                                   ; $6d39: $01 $04 $18
	ld   l, l                                        ; $6d3c: $6d
	sbc  b                                           ; $6d3d: $98
	inc  bc                                          ; $6d3e: $03
	ld   c, a                                        ; $6d3f: $4f
	ld   [hl], l                                     ; $6d40: $75
	ld   h, a                                        ; $6d41: $67
	sbc  l                                           ; $6d42: $9d
	sbc  a                                           ; $6d43: $9f
	dec  c                                           ; $6d44: $0d
	ld   [bc], a                                     ; $6d45: $02
	and  l                                           ; $6d46: $a5
	ld   a, h                                        ; $6d47: $7c
	ld   [bc], a                                     ; $6d48: $02
	jr   c, jr_04d_6d4f                              ; $6d49: $38 $04

	ld   d, d                                        ; $6d4b: $52
	ld   e, d                                        ; $6d4c: $5a
	ld   d, b                                        ; $6d4d: $50
	sbc  c                                           ; $6d4e: $99

jr_04d_6d4f:
	ld   a, h                                        ; $6d4f: $7c
	ld   a, l                                        ; $6d50: $7d
	sbc  [hl]                                        ; $6d51: $9e

Jump_04d_6d52:
	ld   h, c                                        ; $6d52: $61
	ld   a, h                                        ; $6d53: $7c
	dec  c                                           ; $6d54: $0d
	sbc  l                                           ; $6d55: $9d
	ld   l, l                                        ; $6d56: $6d
	ld   e, l                                        ; $6d57: $5d
	ld   h, l                                        ; $6d58: $65
	ld   a, h                                        ; $6d59: $7c
	ld   e, b                                        ; $6d5a: $58
	ld   e, c                                        ; $6d5b: $59
	ld   h, b                                        ; $6d5c: $60
	ld   a, b                                        ; $6d5d: $78
	and  c                                           ; $6d5e: $a1
	ld   [hl], l                                     ; $6d5f: $75
	ld   h, a                                        ; $6d60: $67
	ld   a, h                                        ; $6d61: $7c
	sbc  a                                           ; $6d62: $9f
	dec  c                                           ; $6d63: $0d
	nop                                              ; $6d64: $00
	ld   a, [bc]                                     ; $6d65: $0a
	ld   bc, $6903                                   ; $6d66: $01 $03 $69
	inc  bc                                          ; $6d69: $03
	inc  c                                           ; $6d6a: $0c
	ld   a, h                                        ; $6d6b: $7c
	dec  b                                           ; $6d6c: $05
	add  hl, bc                                      ; $6d6d: $09
	inc  bc                                          ; $6d6e: $03
	add  [hl]                                        ; $6d6f: $86
	ld   [bc], a                                     ; $6d70: $02
	and  $04                                         ; $6d71: $e6 $04
	add  hl, sp                                      ; $6d73: $39
	ld   bc, $0307                                   ; $6d74: $01 $07 $03
	adc  a                                           ; $6d77: $8f
	inc  b                                           ; $6d78: $04
	ld   d, d                                        ; $6d79: $52
	ld   bc, $a008                                   ; $6d7a: $01 $08 $a0
	dec  c                                           ; $6d7d: $0d
	ld   h, c                                        ; $6d7e: $61
	ld   a, h                                        ; $6d7f: $7c
	sbc  l                                           ; $6d80: $9d
	ld   l, l                                        ; $6d81: $6d
	ld   e, l                                        ; $6d82: $5d
	ld   h, l                                        ; $6d83: $65
	ld   e, d                                        ; $6d84: $5a
	inc  b                                           ; $6d85: $04
	dec  de                                          ; $6d86: $1b
	ld   e, c                                        ; $6d87: $59
	ld   h, l                                        ; $6d88: $65
	ld   l, l                                        ; $6d89: $6d
	ld   e, c                                        ; $6d8a: $59
	sub  a                                           ; $6d8b: $97
	dec  c                                           ; $6d8c: $0d
	ld   [bc], a                                     ; $6d8d: $02
	jr   c, jr_04d_6d94                              ; $6d8e: $38 $04

	ld   d, d                                        ; $6d90: $52
	ld   e, d                                        ; $6d91: $5a
	ld   [bc], a                                     ; $6d92: $02
	adc  b                                           ; $6d93: $88

jr_04d_6d94:
	inc  b                                           ; $6d94: $04
	ld   e, [hl]                                     ; $6d95: $5e
	ld   [hl], l                                     ; $6d96: $75
	ld   e, e                                        ; $6d97: $5b
	ld   l, l                                        ; $6d98: $6d
	ld   a, h                                        ; $6d99: $7c
	ld   [hl], l                                     ; $6d9a: $75
	ld   h, a                                        ; $6d9b: $67
	sbc  l                                           ; $6d9c: $9d
	sbc  a                                           ; $6d9d: $9f
	dec  c                                           ; $6d9e: $0d
	nop                                              ; $6d9f: $00
	ld   a, [bc]                                     ; $6da0: $0a
	inc  e                                           ; $6da1: $1c
	ld   [bc], a                                     ; $6da2: $02
	ld   bc, $0101                                   ; $6da3: $01 $01 $01
	ld   l, e                                        ; $6da6: $6b
	ld   d, h                                        ; $6da7: $54
	sbc  [hl]                                        ; $6da8: $9e
	ld   [hl], d                                     ; $6da9: $72
	adc  h                                           ; $6daa: $8c
	sbc  b                                           ; $6dab: $98
	inc  b                                           ; $6dac: $04
	ld   [$2f04], sp                                 ; $6dad: $08 $04 $2f
	ld   a, h                                        ; $6db0: $7c
	inc  b                                           ; $6db1: $04
	xor  b                                           ; $6db2: $a8
	dec  b                                           ; $6db3: $05
	ld   hl, ConvertAintoBCD                                   ; $6db4: $21 $7d $0d
	sbc  l                                           ; $6db7: $9d
	ld   l, l                                        ; $6db8: $6d
	ld   e, l                                        ; $6db9: $5d
	ld   h, l                                        ; $6dba: $65
	ld   e, d                                        ; $6dbb: $5a
	inc  bc                                          ; $6dbc: $03
	sub  e                                           ; $6dbd: $93
	ld   [hl], c                                     ; $6dbe: $71
	ld   [hl], h                                     ; $6dbf: $74
	ld   d, d                                        ; $6dc0: $52
	sbc  c                                           ; $6dc1: $99
	dec  c                                           ; $6dc2: $0d
	halt                                             ; $6dc3: $76
	ld   d, d                                        ; $6dc4: $52
	ld   d, h                                        ; $6dc5: $54
	ld   h, c                                        ; $6dc6: $61
	halt                                             ; $6dc7: $76
	ld   [hl], l                                     ; $6dc8: $75
	ld   h, a                                        ; $6dc9: $67
	sbc  l                                           ; $6dca: $9d
	ld   a, e                                        ; $6dcb: $7b
	sbc  a                                           ; $6dcc: $9f
	dec  c                                           ; $6dcd: $0d
	nop                                              ; $6dce: $00
	ld   a, [bc]                                     ; $6dcf: $0a
	ld   bc, $7d75                                   ; $6dd0: $01 $75 $7d
	sbc  [hl]                                        ; $6dd3: $9e
	sbc  l                                           ; $6dd4: $9d
	ld   l, l                                        ; $6dd5: $6d
	ld   e, l                                        ; $6dd6: $5d
	ld   h, l                                        ; $6dd7: $65
	dec  c                                           ; $6dd8: $0d
	inc  b                                           ; $6dd9: $04
	di                                               ; $6dda: $f3
	ld   e, d                                        ; $6ddb: $5a
	ld   d, b                                        ; $6ddc: $50
	sbc  b                                           ; $6ddd: $98
	adc  h                                           ; $6dde: $8c
	ld   h, a                                        ; $6ddf: $67
	ld   e, c                                        ; $6de0: $59
	sub  a                                           ; $6de1: $97
	sbc  [hl]                                        ; $6de2: $9e
	ld   h, c                                        ; $6de3: $61
	sbc  d                                           ; $6de4: $9a
	ld   [hl], l                                     ; $6de5: $75
	rst  $38                                         ; $6de6: $ff
	rst  $38                                         ; $6de7: $ff
	dec  c                                           ; $6de8: $0d
	nop                                              ; $6de9: $00
	ld   a, [bc]                                     ; $6dea: $0a
	dec  c                                           ; $6deb: $0d
	nop                                              ; $6dec: $00
	nop                                              ; $6ded: $00
	rrca                                             ; $6dee: $0f
	nop                                              ; $6def: $00
	ld   bc, $1e09                                   ; $6df0: $01 $09 $1e
	nop                                              ; $6df3: $00
	rrca                                             ; $6df4: $0f
	nop                                              ; $6df5: $00
	ld   bc, $6701                                   ; $6df6: $01 $01 $67
	adc  l                                           ; $6df9: $8d
	sbc  d                                           ; $6dfa: $9a
	ld   h, e                                        ; $6dfb: $63
	and  c                                           ; $6dfc: $a1
	ld   a, h                                        ; $6dfd: $7c
	inc  b                                           ; $6dfe: $04
	adc  d                                           ; $6dff: $8a
	inc  bc                                          ; $6e00: $03
	ld   e, [hl]                                     ; $6e01: $5e
	ld   [bc], a                                     ; $6e02: $02
	adc  h                                           ; $6e03: $8c
	ld   [hl], c                                     ; $6e04: $71
	ld   [hl], h                                     ; $6e05: $74
	dec  c                                           ; $6e06: $0d
	ld   a, b                                        ; $6e07: $78
	and  c                                           ; $6e08: $a1
	ld   [hl], l                                     ; $6e09: $75
	ld   h, a                                        ; $6e0a: $67
	ld   e, c                                        ; $6e0b: $59
	ld   sp, hl                                      ; $6e0c: $f9
	dec  c                                           ; $6e0d: $0d
	nop                                              ; $6e0e: $00
	ld   a, [bc]                                     ; $6e0f: $0a
	rrca                                             ; $6e10: $0f
	ld   [bc], a                                     ; $6e11: $02
	nop                                              ; $6e12: $00
	ld   bc, $6d9d                                   ; $6e13: $01 $9d $6d
	ld   e, l                                        ; $6e16: $5d
	ld   h, l                                        ; $6e17: $65
	ld   a, h                                        ; $6e18: $7c
	inc  b                                           ; $6e19: $04
	adc  d                                           ; $6e1a: $8a
	inc  bc                                          ; $6e1b: $03
	ld   e, [hl]                                     ; $6e1c: $5e
	ld   [bc], a                                     ; $6e1d: $02
	adc  h                                           ; $6e1e: $8c
	ld   sp, hl                                      ; $6e1f: $f9
	dec  c                                           ; $6e20: $0d
	inc  bc                                          ; $6e21: $03
	sub  b                                           ; $6e22: $90
	inc  bc                                          ; $6e23: $03
	cp   e                                           ; $6e24: $bb
	inc  b                                           ; $6e25: $04
	ld   [hl], a                                     ; $6e26: $77
	inc  bc                                          ; $6e27: $03
	or   l                                           ; $6e28: $b5
	dec  b                                           ; $6e29: $05
	inc  d                                           ; $6e2a: $14
	di                                               ; $6e2b: $f3
	ld   [bc], a                                     ; $6e2c: $02
	ret  c                                           ; $6e2d: $d8

	inc  b                                           ; $6e2e: $04
	ld   sp, $047c                                   ; $6e2f: $31 $7c $04
	adc  [hl]                                        ; $6e32: $8e
	dec  c                                           ; $6e33: $0d
	ld   [hl], l                                     ; $6e34: $75
	ld   h, a                                        ; $6e35: $67
	ld   e, a                                        ; $6e36: $5f
	ld   [hl], a                                     ; $6e37: $77
	rst  $38                                         ; $6e38: $ff
	rst  $38                                         ; $6e39: $ff
	dec  c                                           ; $6e3a: $0d
	nop                                              ; $6e3b: $00
	ld   a, [bc]                                     ; $6e3c: $0a
	add  hl, de                                      ; $6e3d: $19
	dec  b                                           ; $6e3e: $05
	inc  bc                                          ; $6e3f: $03
	inc  bc                                          ; $6e40: $03
	sub  b                                           ; $6e41: $90
	inc  bc                                          ; $6e42: $03
	cp   e                                           ; $6e43: $bb
	inc  b                                           ; $6e44: $04
	ld   [hl], a                                     ; $6e45: $77
	inc  bc                                          ; $6e46: $03
	or   l                                           ; $6e47: $b5
	dec  b                                           ; $6e48: $05
	inc  d                                           ; $6e49: $14
	di                                               ; $6e4a: $f3
	ld   h, c                                        ; $6e4b: $61
	ld   l, a                                        ; $6e4c: $6f
	sub  l                                           ; $6e4d: $95
	ld   d, h                                        ; $6e4e: $54
	ld   a, h                                        ; $6e4f: $7c
	adc  h                                           ; $6e50: $8c
	ld   d, d                                        ; $6e51: $52
	nop                                              ; $6e52: $00
	nop                                              ; $6e53: $00
	inc  bc                                          ; $6e54: $03
	sub  b                                           ; $6e55: $90
	inc  bc                                          ; $6e56: $03
	cp   e                                           ; $6e57: $bb
	inc  b                                           ; $6e58: $04
	ld   [hl], a                                     ; $6e59: $77
	inc  bc                                          ; $6e5a: $03
	or   l                                           ; $6e5b: $b5
	dec  b                                           ; $6e5c: $05
	inc  d                                           ; $6e5d: $14
	di                                               ; $6e5e: $f3
	ld   e, b                                        ; $6e5f: $58
	ld   d, h                                        ; $6e60: $54
	ld   e, c                                        ; $6e61: $59
	adc  c                                           ; $6e62: $89
	ld   d, h                                        ; $6e63: $54
	ld   h, l                                        ; $6e64: $65
	and  c                                           ; $6e65: $a1
	nop                                              ; $6e66: $00
	ld   bc, $9003                                   ; $6e67: $01 $03 $90
	inc  bc                                          ; $6e6a: $03
	cp   e                                           ; $6e6b: $bb
	inc  b                                           ; $6e6c: $04
	ld   [hl], a                                     ; $6e6d: $77
	inc  bc                                          ; $6e6e: $03
	or   l                                           ; $6e6f: $b5
	dec  b                                           ; $6e70: $05
	inc  d                                           ; $6e71: $14
	di                                               ; $6e72: $f3
	ld   e, c                                        ; $6e73: $59
	ld   l, a                                        ; $6e74: $6f
	sub  l                                           ; $6e75: $95
	ld   d, h                                        ; $6e76: $54
	ld   a, h                                        ; $6e77: $7c
	adc  h                                           ; $6e78: $8c
	ld   d, d                                        ; $6e79: $52
	nop                                              ; $6e7a: $00
	ld   [bc], a                                     ; $6e7b: $02
	rlca                                             ; $6e7c: $07
	dec  b                                           ; $6e7d: $05
	inc  b                                           ; $6e7e: $04
	ld   [bc], a                                     ; $6e7f: $02
	inc  bc                                          ; $6e80: $03
	ld   bc, $2000                                   ; $6e81: $01 $00 $20
	nop                                              ; $6e84: $00
	rlca                                             ; $6e85: $07
	ld   [hl], e                                     ; $6e86: $73
	inc  b                                           ; $6e87: $04
	ld   [bc], a                                     ; $6e88: $02
	inc  bc                                          ; $6e89: $03
	ld   bc, $2001                                   ; $6e8a: $01 $01 $20
	nop                                              ; $6e8d: $00
	rlca                                             ; $6e8e: $07
	rst  $28                                         ; $6e8f: $ef
	inc  b                                           ; $6e90: $04
	ld   [bc], a                                     ; $6e91: $02
	inc  bc                                          ; $6e92: $03
	ld   bc, $2002                                   ; $6e93: $01 $02 $20
	nop                                              ; $6e96: $00
	ld   b, $6e                                      ; $6e97: $06 $6e
	dec  b                                           ; $6e99: $05
	rrca                                             ; $6e9a: $0f
	nop                                              ; $6e9b: $00
	ld   bc, $0301                                   ; $6e9c: $01 $01 $03
	sub  b                                           ; $6e9f: $90
	inc  bc                                          ; $6ea0: $03
	cp   e                                           ; $6ea1: $bb
	inc  b                                           ; $6ea2: $04
	ld   [hl], a                                     ; $6ea3: $77
	inc  bc                                          ; $6ea4: $03
	or   l                                           ; $6ea5: $b5
	dec  b                                           ; $6ea6: $05
	inc  d                                           ; $6ea7: $14
	di                                               ; $6ea8: $f3
	ld   h, c                                        ; $6ea9: $61
	ld   l, a                                        ; $6eaa: $6f
	sub  l                                           ; $6eab: $95
	ld   d, h                                        ; $6eac: $54
	ld   a, h                                        ; $6ead: $7c
	adc  h                                           ; $6eae: $8c
	ld   d, d                                        ; $6eaf: $52
	dec  c                                           ; $6eb0: $0d
	ld   [hl], l                                     ; $6eb1: $75
	ld   h, a                                        ; $6eb2: $67
	ld   e, c                                        ; $6eb3: $59
	sbc  a                                           ; $6eb4: $9f
	dec  c                                           ; $6eb5: $0d
	nop                                              ; $6eb6: $00
	ld   a, [bc]                                     ; $6eb7: $0a
	inc  e                                           ; $6eb8: $1c
	ld   [bc], a                                     ; $6eb9: $02
	ld   bc, $1d01                                   ; $6eba: $01 $01 $1d
	ld   b, b                                        ; $6ebd: $40
	ld   [de], a                                     ; $6ebe: $12
	inc  bc                                          ; $6ebf: $03
	ld   [de], a                                     ; $6ec0: $12
	ld   bc, $2802                                   ; $6ec1: $01 $02 $28
	nop                                              ; $6ec4: $00
	ld   bc, $546b                                   ; $6ec5: $01 $6b $54
	ld   [hl], l                                     ; $6ec8: $75
	ld   h, a                                        ; $6ec9: $67
	sbc  l                                           ; $6eca: $9d
	sbc  a                                           ; $6ecb: $9f
	dec  c                                           ; $6ecc: $0d
	sub  [hl]                                        ; $6ecd: $96
	ld   e, l                                        ; $6ece: $5d
	ld   [de], a                                     ; $6ecf: $12
	ld   [bc], a                                     ; $6ed0: $02
	sub  e                                           ; $6ed1: $93
	ld   [hl], l                                     ; $6ed2: $75
	ld   e, b                                        ; $6ed3: $58
	adc  d                                           ; $6ed4: $8a
	ld   d, [hl]                                     ; $6ed5: $56
	sub  a                                           ; $6ed6: $97
	sbc  d                                           ; $6ed7: $9a
	dec  c                                           ; $6ed8: $0d
	adc  h                                           ; $6ed9: $8c
	ld   h, l                                        ; $6eda: $65
	ld   l, l                                        ; $6edb: $6d
	ld   a, e                                        ; $6edc: $7b
	sbc  a                                           ; $6edd: $9f
	dec  c                                           ; $6ede: $0d
	nop                                              ; $6edf: $00
	ld   a, [bc]                                     ; $6ee0: $0a
	ld   bc, $d203                                   ; $6ee1: $01 $03 $d2
	inc  b                                           ; $6ee4: $04
	inc  l                                           ; $6ee5: $2c
	and  b                                           ; $6ee6: $a0
	inc  bc                                          ; $6ee7: $03
	xor  [hl]                                        ; $6ee8: $ae
	ld   [hl], c                                     ; $6ee9: $71
	ld   [hl], h                                     ; $6eea: $74
	dec  b                                           ; $6eeb: $05
	ld   [hl+], a                                    ; $6eec: $22
	and  b                                           ; $6eed: $a0
	ld   d, b                                        ; $6eee: $50
	sub  d                                           ; $6eef: $92
	ld   [hl], d                                     ; $6ef0: $72
	sbc  c                                           ; $6ef1: $99
	dec  c                                           ; $6ef2: $0d
	inc  b                                           ; $6ef3: $04
	and  c                                           ; $6ef4: $a1
	ld   h, l                                        ; $6ef5: $65
	ld   e, l                                        ; $6ef6: $5d
	ld   e, c                                        ; $6ef7: $59
	sbc  d                                           ; $6ef8: $9a
	ld   d, d                                        ; $6ef9: $52
	ld   a, b                                        ; $6efa: $78
	ld   [bc], a                                     ; $6efb: $02
	adc  h                                           ; $6efc: $8c
	ld   [hl], l                                     ; $6efd: $75
	ld   h, a                                        ; $6efe: $67
	ld   a, h                                        ; $6eff: $7c
	sub  [hl]                                        ; $6f00: $96
	sbc  a                                           ; $6f01: $9f
	dec  c                                           ; $6f02: $0d
	nop                                              ; $6f03: $00
	ld   a, [bc]                                     ; $6f04: $0a
	ld   b, $6e                                      ; $6f05: $06 $6e
	dec  b                                           ; $6f07: $05
	rrca                                             ; $6f08: $0f
	nop                                              ; $6f09: $00
	ld   bc, $0301                                   ; $6f0a: $01 $01 $03
	sub  b                                           ; $6f0d: $90
	inc  bc                                          ; $6f0e: $03
	cp   e                                           ; $6f0f: $bb
	inc  b                                           ; $6f10: $04
	ld   [hl], a                                     ; $6f11: $77
	inc  bc                                          ; $6f12: $03
	or   l                                           ; $6f13: $b5
	dec  b                                           ; $6f14: $05
	inc  d                                           ; $6f15: $14
	di                                               ; $6f16: $f3
	ld   e, b                                        ; $6f17: $58
	ld   d, h                                        ; $6f18: $54
	ld   e, c                                        ; $6f19: $59
	adc  c                                           ; $6f1a: $89
	ld   d, h                                        ; $6f1b: $54
	ld   h, l                                        ; $6f1c: $65
	and  c                                           ; $6f1d: $a1
	dec  c                                           ; $6f1e: $0d
	ld   [hl], l                                     ; $6f1f: $75
	ld   h, a                                        ; $6f20: $67
	ld   e, c                                        ; $6f21: $59
	ld   sp, hl                                      ; $6f22: $f9
	dec  c                                           ; $6f23: $0d
	nop                                              ; $6f24: $00
	ld   a, [bc]                                     ; $6f25: $0a
	inc  e                                           ; $6f26: $1c
	ld   [bc], a                                     ; $6f27: $02
	rlca                                             ; $6f28: $07
	rlca                                             ; $6f29: $07
	dec  e                                           ; $6f2a: $1d
	ld   b, b                                        ; $6f2b: $40
	ld   [de], a                                     ; $6f2c: $12
	inc  bc                                          ; $6f2d: $03
	ld   [de], a                                     ; $6f2e: $12
	ld   bc, $2902                                   ; $6f2f: $01 $02 $29
	nop                                              ; $6f32: $00
	ld   bc, $9252                                   ; $6f33: $01 $52 $92
	ld   [hl], l                                     ; $6f36: $75
	ld   h, a                                        ; $6f37: $67
	sbc  l                                           ; $6f38: $9d
	sbc  a                                           ; $6f39: $9f
	ld   a, b                                        ; $6f3a: $78
	and  c                                           ; $6f3b: $a1
	ld   e, c                                        ; $6f3c: $59
	inc  b                                           ; $6f3d: $04
	ld   hl, $bc03                                   ; $6f3e: $21 $03 $bc
	inc  bc                                          ; $6f41: $03
	cp   l                                           ; $6f42: $bd
	ld   d, d                                        ; $6f43: $52
	dec  c                                           ; $6f44: $0d
	sub  $ee                                         ; $6f45: $d6 $ee
	ei                                               ; $6f47: $fb
	cp   e                                           ; $6f48: $bb
	ld   e, d                                        ; $6f49: $5a
	adc  h                                           ; $6f4a: $8c
	ld   h, h                                        ; $6f4b: $64
	ld   [hl], c                                     ; $6f4c: $71
	ld   [hl], h                                     ; $6f4d: $74
	ld   d, d                                        ; $6f4e: $52
	adc  h                                           ; $6f4f: $8c
	ld   h, a                                        ; $6f50: $67
	sbc  l                                           ; $6f51: $9d
	sbc  a                                           ; $6f52: $9f
	dec  c                                           ; $6f53: $0d
	sub  b                                           ; $6f54: $90
	ld   [hl], c                                     ; $6f55: $71
	halt                                             ; $6f56: $76
	inc  b                                           ; $6f57: $04
	and  c                                           ; $6f58: $a1
	ld   h, l                                        ; $6f59: $65
	ld   d, d                                        ; $6f5a: $52
	inc  b                                           ; $6f5b: $04
	rst  ToBoot                                         ; $6f5c: $c7
	inc  bc                                          ; $6f5d: $03
	ld   c, a                                        ; $6f5e: $4f
	ld   [hl], l                                     ; $6f5f: $75
	ld   h, a                                        ; $6f60: $67
	sbc  a                                           ; $6f61: $9f
	dec  c                                           ; $6f62: $0d
	nop                                              ; $6f63: $00
	ld   a, [bc]                                     ; $6f64: $0a
	ld   bc, $9003                                   ; $6f65: $01 $03 $90
	inc  bc                                          ; $6f68: $03
	cp   e                                           ; $6f69: $bb
	inc  b                                           ; $6f6a: $04
	ld   [hl], a                                     ; $6f6b: $77
	inc  bc                                          ; $6f6c: $03
	or   l                                           ; $6f6d: $b5
	dec  b                                           ; $6f6e: $05
	inc  d                                           ; $6f6f: $14
	di                                               ; $6f70: $f3
	ld   h, c                                        ; $6f71: $61
	ld   l, a                                        ; $6f72: $6f
	sub  l                                           ; $6f73: $95
	ld   d, h                                        ; $6f74: $54
	ld   a, h                                        ; $6f75: $7c
	adc  h                                           ; $6f76: $8c
	ld   d, d                                        ; $6f77: $52
	dec  c                                           ; $6f78: $0d
	ld   [hl], l                                     ; $6f79: $75
	ld   h, a                                        ; $6f7a: $67
	sbc  l                                           ; $6f7b: $9d
	sub  [hl]                                        ; $6f7c: $96
	sbc  a                                           ; $6f7d: $9f
	dec  c                                           ; $6f7e: $0d
	nop                                              ; $6f7f: $00
	ld   a, [bc]                                     ; $6f80: $0a
	ld   b, $6e                                      ; $6f81: $06 $6e
	dec  b                                           ; $6f83: $05
	rrca                                             ; $6f84: $0f
	nop                                              ; $6f85: $00
	ld   bc, $0301                                   ; $6f86: $01 $01 $03
	sub  b                                           ; $6f89: $90
	inc  bc                                          ; $6f8a: $03
	cp   e                                           ; $6f8b: $bb
	inc  b                                           ; $6f8c: $04
	ld   [hl], a                                     ; $6f8d: $77
	inc  bc                                          ; $6f8e: $03
	or   l                                           ; $6f8f: $b5
	dec  b                                           ; $6f90: $05
	inc  d                                           ; $6f91: $14
	di                                               ; $6f92: $f3
	ld   e, c                                        ; $6f93: $59
	ld   l, a                                        ; $6f94: $6f
	sub  l                                           ; $6f95: $95
	ld   d, h                                        ; $6f96: $54
	ld   a, h                                        ; $6f97: $7c
	adc  h                                           ; $6f98: $8c
	ld   d, d                                        ; $6f99: $52
	dec  c                                           ; $6f9a: $0d
	ld   [hl], l                                     ; $6f9b: $75
	ld   h, a                                        ; $6f9c: $67
	ld   e, c                                        ; $6f9d: $59
	ld   sp, hl                                      ; $6f9e: $f9
	dec  c                                           ; $6f9f: $0d
	nop                                              ; $6fa0: $00
	ld   a, [bc]                                     ; $6fa1: $0a
	inc  e                                           ; $6fa2: $1c
	ld   [bc], a                                     ; $6fa3: $02
	inc  bc                                          ; $6fa4: $03
	inc  bc                                          ; $6fa5: $03
	dec  e                                           ; $6fa6: $1d
	ld   b, b                                        ; $6fa7: $40
	ld   [de], a                                     ; $6fa8: $12
	inc  bc                                          ; $6fa9: $03
	ld   [de], a                                     ; $6faa: $12
	ld   bc, $2901                                   ; $6fab: $01 $01 $29
	nop                                              ; $6fae: $00
	ld   bc, $9750                                   ; $6faf: $01 $50 $97
	adc  h                                           ; $6fb2: $8c
	sbc  [hl]                                        ; $6fb3: $9e
	ld   e, c                                        ; $6fb4: $59
	ld   l, a                                        ; $6fb5: $6f
	sub  l                                           ; $6fb6: $95
	ld   d, h                                        ; $6fb7: $54
	ld   l, [hl]                                     ; $6fb8: $6e
	ld   a, b                                        ; $6fb9: $78
	and  c                                           ; $6fba: $a1
	ld   [hl], h                                     ; $6fbb: $74
	sbc  a                                           ; $6fbc: $9f
	dec  c                                           ; $6fbd: $0d
	ld   l, c                                        ; $6fbe: $69
	adc  a                                           ; $6fbf: $8f
	ld   [hl], h                                     ; $6fc0: $74
	sbc  [hl]                                        ; $6fc1: $9e
	ld   h, l                                        ; $6fc2: $65
	sub  c                                           ; $6fc3: $91
	ld   l, a                                        ; $6fc4: $6f
	sub  l                                           ; $6fc5: $95
	ld   d, h                                        ; $6fc6: $54
	halt                                             ; $6fc7: $76
	dec  c                                           ; $6fc8: $0d
	ld   e, b                                        ; $6fc9: $58
	ld   [hl], c                                     ; $6fca: $71
	ld   h, l                                        ; $6fcb: $65
	sub  c                                           ; $6fcc: $91
	ld   [hl], c                                     ; $6fcd: $71
	ld   [hl], h                                     ; $6fce: $74
	ld   d, d                                        ; $6fcf: $52
	ld   l, l                                        ; $6fd0: $6d
	ld   l, [hl]                                     ; $6fd1: $6e
	ld   e, a                                        ; $6fd2: $5f
	adc  h                                           ; $6fd3: $8c
	ld   l, c                                        ; $6fd4: $69
	and  c                                           ; $6fd5: $a1
	ld   sp, hl                                      ; $6fd6: $f9
	dec  c                                           ; $6fd7: $0d
	nop                                              ; $6fd8: $00
	ld   a, [bc]                                     ; $6fd9: $0a
	inc  e                                           ; $6fda: $1c
	ld   [bc], a                                     ; $6fdb: $02
	rlca                                             ; $6fdc: $07
	rlca                                             ; $6fdd: $07
	ld   bc, $4a03                                   ; $6fde: $01 $03 $4a
	ld   h, l                                        ; $6fe1: $65
	ld   e, l                                        ; $6fe2: $5d
	ld   a, l                                        ; $6fe3: $7d
	sbc  [hl]                                        ; $6fe4: $9e
	dec  c                                           ; $6fe5: $0d
	inc  bc                                          ; $6fe6: $03
	sub  b                                           ; $6fe7: $90
	inc  bc                                          ; $6fe8: $03
	cp   e                                           ; $6fe9: $bb
	inc  b                                           ; $6fea: $04
	ld   [hl], a                                     ; $6feb: $77
	inc  bc                                          ; $6fec: $03
	or   l                                           ; $6fed: $b5
	dec  b                                           ; $6fee: $05
	inc  d                                           ; $6fef: $14
	di                                               ; $6ff0: $f3
	ld   h, c                                        ; $6ff1: $61
	ld   l, a                                        ; $6ff2: $6f
	sub  l                                           ; $6ff3: $95
	ld   d, h                                        ; $6ff4: $54
	ld   a, h                                        ; $6ff5: $7c
	adc  h                                           ; $6ff6: $8c
	ld   d, d                                        ; $6ff7: $52
	dec  c                                           ; $6ff8: $0d
	ld   [hl], l                                     ; $6ff9: $75
	ld   h, a                                        ; $6ffa: $67
	sbc  l                                           ; $6ffb: $9d
	sbc  a                                           ; $6ffc: $9f
	dec  c                                           ; $6ffd: $0d
	nop                                              ; $6ffe: $00
	ld   a, [bc]                                     ; $6fff: $0a
	ld   b, $6e                                      ; $7000: $06 $6e
	dec  b                                           ; $7002: $05
	inc  e                                           ; $7003: $1c
	ld   [bc], a                                     ; $7004: $02
	nop                                              ; $7005: $00
	nop                                              ; $7006: $00
	ld   bc, $9075                                   ; $7007: $01 $75 $90
	sbc  [hl]                                        ; $700a: $9e
	inc  bc                                          ; $700b: $03
	di                                               ; $700c: $f3
	inc  bc                                          ; $700d: $03
	sbc  c                                           ; $700e: $99
	ld   [hl], a                                     ; $700f: $77
	ld   d, h                                        ; $7010: $54
	ld   h, l                                        ; $7011: $65
	ld   l, l                                        ; $7012: $6d
	and  c                                           ; $7013: $a1
	ld   [hl], l                                     ; $7014: $75
	ld   h, a                                        ; $7015: $67
	ld   a, h                                        ; $7016: $7c
	ld   sp, hl                                      ; $7017: $f9
	dec  c                                           ; $7018: $0d
	inc  b                                           ; $7019: $04
	adc  d                                           ; $701a: $8a
	inc  bc                                          ; $701b: $03
	ld   e, [hl]                                     ; $701c: $5e
	ld   [bc], a                                     ; $701d: $02
	adc  h                                           ; $701e: $8c
	ld   l, [hl]                                     ; $701f: $6e
	ld   a, b                                        ; $7020: $78
	and  c                                           ; $7021: $a1
	ld   [hl], h                                     ; $7022: $74
	rst  $38                                         ; $7023: $ff
	rst  $38                                         ; $7024: $ff
	dec  c                                           ; $7025: $0d
	nop                                              ; $7026: $00
	ld   a, [bc]                                     ; $7027: $0a
	rrca                                             ; $7028: $0f
	nop                                              ; $7029: $00
	ld   bc, $0401                                   ; $702a: $01 $01 $04
	ld   l, l                                        ; $702d: $6d
	sub  b                                           ; $702e: $90
	ld   d, d                                        ; $702f: $52
	ld   [hl], d                                     ; $7030: $72
	ld   e, c                                        ; $7031: $59
	inc  bc                                          ; $7032: $03
	sub  h                                           ; $7033: $94
	inc  b                                           ; $7034: $04
	sbc  [hl]                                        ; $7035: $9e
	ld   a, h                                        ; $7036: $7c
	dec  c                                           ; $7037: $0d
	inc  b                                           ; $7038: $04
	adc  d                                           ; $7039: $8a
	inc  bc                                          ; $703a: $03
	ld   e, [hl]                                     ; $703b: $5e
	ld   [bc], a                                     ; $703c: $02
	adc  h                                           ; $703d: $8c
	and  b                                           ; $703e: $a0
	inc  bc                                          ; $703f: $03
	xor  h                                           ; $7040: $ac
	sbc  e                                           ; $7041: $9b
	ld   d, h                                        ; $7042: $54
	halt                                             ; $7043: $76
	dec  b                                           ; $7044: $05
	pop  de                                          ; $7045: $d1
	ld   [hl], c                                     ; $7046: $71
	ld   [hl], h                                     ; $7047: $74
	dec  c                                           ; $7048: $0d
	ld   d, d                                        ; $7049: $52
	adc  h                                           ; $704a: $8c
	ld   h, a                                        ; $704b: $67
	ld   a, h                                        ; $704c: $7c
	ld   [hl], l                                     ; $704d: $75
	sbc  [hl]                                        ; $704e: $9e
	inc  bc                                          ; $704f: $03
	inc  de                                          ; $7050: $13
	ld   [bc], a                                     ; $7051: $02
	ld   h, l                                        ; $7052: $65
	ld   a, c                                        ; $7053: $79
	halt                                             ; $7054: $76
	sbc  a                                           ; $7055: $9f
	dec  c                                           ; $7056: $0d
	nop                                              ; $7057: $00
	ld   a, [bc]                                     ; $7058: $0a
	rrca                                             ; $7059: $0f
	ld   [bc], a                                     ; $705a: $02
	nop                                              ; $705b: $00
	ld   bc, $546b                                   ; $705c: $01 $6b $54
	ld   [hl], l                                     ; $705f: $75
	ld   h, a                                        ; $7060: $67
	ld   e, c                                        ; $7061: $59
	sbc  a                                           ; $7062: $9f
	dec  c                                           ; $7063: $0d
	ld   a, b                                        ; $7064: $78
	sub  a                                           ; $7065: $97
	ld   a, [hl]                                     ; $7066: $7e
	sbc  [hl]                                        ; $7067: $9e
	inc  bc                                          ; $7068: $03
	db   $d3                                         ; $7069: $d3
	dec  b                                           ; $706a: $05
	ld   a, [bc]                                     ; $706b: $0a
	ld   a, b                                        ; $706c: $78
	ld   h, e                                        ; $706d: $63
	ld   d, d                                        ; $706e: $52
	sbc  a                                           ; $706f: $9f
	inc  bc                                          ; $7070: $03
	sub  h                                           ; $7071: $94
	inc  b                                           ; $7072: $04
	sbc  [hl]                                        ; $7073: $9e
	and  b                                           ; $7074: $a0

jr_04d_7075:
	dec  c                                           ; $7075: $0d
	ld   [bc], a                                     ; $7076: $02
	ld   hl, sp+$66                                  ; $7077: $f8 $66
	ld   [hl], h                                     ; $7079: $74
	ld   e, d                                        ; $707a: $5a
	and  c                                           ; $707b: $a1
	ld   a, [hl]                                     ; $707c: $7e
	sbc  c                                           ; $707d: $99
	ld   a, h                                        ; $707e: $7c
	ld   [hl], l                                     ; $707f: $75
	ld   h, a                                        ; $7080: $67
	sub  [hl]                                        ; $7081: $96
	sbc  a                                           ; $7082: $9f
	dec  c                                           ; $7083: $0d
	nop                                              ; $7084: $00
	ld   a, [bc]                                     ; $7085: $0a
	dec  c                                           ; $7086: $0d
	nop                                              ; $7087: $00
	nop                                              ; $7088: $00
	rrca                                             ; $7089: $0f
	nop                                              ; $708a: $00
	ld   bc, $1e09                                   ; $708b: $01 $09 $1e
	nop                                              ; $708e: $00
	nop                                              ; $708f: $00
	inc  bc                                          ; $7090: $03
	ld   c, [hl]                                     ; $7091: $4e
	ld   [bc], a                                     ; $7092: $02
	nop                                              ; $7093: $00
	inc  bc                                          ; $7094: $03
	ld   c, b                                        ; $7095: $48
	add  hl, hl                                      ; $7096: $29
	add  hl, hl                                      ; $7097: $29
	ld   bc, $2201                                   ; $7098: $01 $01 $22
	nop                                              ; $709b: $00
	rrca                                             ; $709c: $0f
	nop                                              ; $709d: $00
	ld   bc, $010d                                   ; $709e: $01 $0d $01
	nop                                              ; $70a1: $00
	ld   [bc], a                                     ; $70a2: $02
	ld   bc, $7d58                                   ; $70a3: $01 $58 $7d
	sub  [hl]                                        ; $70a6: $96
	ld   d, h                                        ; $70a7: $54
	ld   h, d                                        ; $70a8: $62
	ld   h, h                                        ; $70a9: $64
	ld   d, d                                        ; $70aa: $52
	adc  h                                           ; $70ab: $8c
	ld   h, a                                        ; $70ac: $67
	sbc  a                                           ; $70ad: $9f
	dec  c                                           ; $70ae: $0d
	nop                                              ; $70af: $00
	ld   a, [bc]                                     ; $70b0: $0a
	inc  e                                           ; $70b1: $1c
	ld   bc, $0101                                   ; $70b2: $01 $01 $01
	ld   bc, $0008                                   ; $70b5: $01 $08 $00
	ld   h, e                                        ; $70b8: $63
	and  c                                           ; $70b9: $a1
	sbc  a                                           ; $70ba: $9f
	dec  c                                           ; $70bb: $0d
	ld   e, b                                        ; $70bc: $58
	ld   a, l                                        ; $70bd: $7d
	sub  [hl]                                        ; $70be: $96
	ld   d, h                                        ; $70bf: $54
	ld   h, d                                        ; $70c0: $62
	ld   h, h                                        ; $70c1: $64
	ld   d, d                                        ; $70c2: $52
	adc  h                                           ; $70c3: $8c
	ld   h, a                                        ; $70c4: $67
	sbc  a                                           ; $70c5: $9f
	dec  c                                           ; $70c6: $0d
	nop                                              ; $70c7: $00
	ld   a, [bc]                                     ; $70c8: $0a
	rrca                                             ; $70c9: $0f
	nop                                              ; $70ca: $00
	ld   bc, $0101                                   ; $70cb: $01 $01 $01
	inc  bc                                          ; $70ce: $03
	inc  b                                           ; $70cf: $04
	ld   c, c                                        ; $70d0: $49
	ld   a, h                                        ; $70d1: $7c
	dec  b                                           ; $70d2: $05
	jr   nz, jr_04d_7075                             ; $70d3: $20 $a0

	ld   h, l                                        ; $70d5: $65
	sub  [hl]                                        ; $70d6: $96
	ld   d, h                                        ; $70d7: $54
	ld   e, c                                        ; $70d8: $59
	ld   a, b                                        ; $70d9: $78
	rst  $38                                         ; $70da: $ff
	rst  $38                                         ; $70db: $ff
	ld   bc, $0d04                                   ; $70dc: $01 $04 $0d
	nop                                              ; $70df: $00
	ld   a, [bc]                                     ; $70e0: $0a
	add  hl, de                                      ; $70e1: $19
	dec  b                                           ; $70e2: $05
	inc  bc                                          ; $70e3: $03
	inc  b                                           ; $70e4: $04
	adc  d                                           ; $70e5: $8a
	inc  bc                                          ; $70e6: $03
	ld   e, [hl]                                     ; $70e7: $5e
	ld   [bc], a                                     ; $70e8: $02
	adc  h                                           ; $70e9: $8c
	ld   a, c                                        ; $70ea: $79
	ld   [hl], d                                     ; $70eb: $72
	ld   d, d                                        ; $70ec: $52
	ld   [hl], h                                     ; $70ed: $74
	nop                                              ; $70ee: $00
	nop                                              ; $70ef: $00
	inc  bc                                          ; $70f0: $03
	ld   l, d                                        ; $70f1: $6a
	add  a                                           ; $70f2: $87
	inc  b                                           ; $70f3: $04
	sub  d                                           ; $70f4: $92
	ld   a, c                                        ; $70f5: $79
	ld   [hl], d                                     ; $70f6: $72
	ld   d, d                                        ; $70f7: $52
	ld   [hl], h                                     ; $70f8: $74
	nop                                              ; $70f9: $00
	ld   bc, $ecdf                                   ; $70fa: $01 $df $ec
	and  e                                           ; $70fd: $a3
	ld   a, c                                        ; $70fe: $79
	ld   [hl], d                                     ; $70ff: $72
	ld   d, d                                        ; $7100: $52
	ld   [hl], h                                     ; $7101: $74
	nop                                              ; $7102: $00
	ld   [bc], a                                     ; $7103: $02
	rlca                                             ; $7104: $07
	xor  h                                           ; $7105: $ac
	nop                                              ; $7106: $00
	ld   [bc], a                                     ; $7107: $02
	inc  bc                                          ; $7108: $03
	ld   bc, $2000                                   ; $7109: $01 $00 $20
	nop                                              ; $710c: $00

Jump_04d_710d:
	rlca                                             ; $710d: $07
	inc  de                                          ; $710e: $13
	inc  bc                                          ; $710f: $03
	ld   [bc], a                                     ; $7110: $02
	inc  bc                                          ; $7111: $03
	ld   bc, $2001                                   ; $7112: $01 $01 $20
	nop                                              ; $7115: $00
	rlca                                             ; $7116: $07
	sbc  $03                                         ; $7117: $de $03
	ld   [bc], a                                     ; $7119: $02
	inc  bc                                          ; $711a: $03
	ld   bc, $2002                                   ; $711b: $01 $02 $20
	nop                                              ; $711e: $00
	ld   b, $86                                      ; $711f: $06 $86
	nop                                              ; $7121: $00
	inc  e                                           ; $7122: $1c
	ld   bc, $0101                                   ; $7123: $01 $01 $01
	ld   bc, $a502                                   ; $7126: $01 $02 $a5
	inc  b                                           ; $7129: $04
	xor  d                                           ; $712a: $aa
	sub  b                                           ; $712b: $90
	ld   [bc], a                                     ; $712c: $02
	jr   nz, jr_04d_7133                             ; $712d: $20 $04

	xor  d                                           ; $712f: $aa
	sbc  [hl]                                        ; $7130: $9e
	dec  c                                           ; $7131: $0d
	ld   e, d                                        ; $7132: $5a

jr_04d_7133:
	and  c                                           ; $7133: $a1
	ld   a, [hl]                                     ; $7134: $7e
	sbc  b                                           ; $7135: $98
	adc  h                                           ; $7136: $8c
	ld   h, l                                        ; $7137: $65
	sub  l                                           ; $7138: $95
	ld   d, h                                        ; $7139: $54
	ld   a, e                                        ; $713a: $7b
	sbc  a                                           ; $713b: $9f
	dec  c                                           ; $713c: $0d
	nop                                              ; $713d: $00
	ld   a, [bc]                                     ; $713e: $0a
	dec  c                                           ; $713f: $0d
	nop                                              ; $7140: $00
	nop                                              ; $7141: $00
	rrca                                             ; $7142: $0f
	nop                                              ; $7143: $00
	ld   bc, $1e09                                   ; $7144: $01 $09 $1e
	nop                                              ; $7147: $00
	rrca                                             ; $7148: $0f
	nop                                              ; $7149: $00
	ld   bc, $6301                                   ; $714a: $01 $01 $63
	ld   e, l                                        ; $714d: $5d
	sub  a                                           ; $714e: $97
	ld   h, e                                        ; $714f: $63
	and  c                                           ; $7150: $a1
	ld   a, h                                        ; $7151: $7c
	inc  b                                           ; $7152: $04
	adc  d                                           ; $7153: $8a
	inc  bc                                          ; $7154: $03
	ld   e, [hl]                                     ; $7155: $5e
	ld   [bc], a                                     ; $7156: $02
	adc  h                                           ; $7157: $8c
	ld   [hl], c                                     ; $7158: $71
	ld   [hl], h                                     ; $7159: $74
	rst  $38                                         ; $715a: $ff
	rst  $38                                         ; $715b: $ff
	dec  c                                           ; $715c: $0d
	nop                                              ; $715d: $00
	ld   a, [bc]                                     ; $715e: $0a
	add  hl, de                                      ; $715f: $19
	dec  b                                           ; $7160: $05
	inc  bc                                          ; $7161: $03
	ld   a, l                                        ; $7162: $7d
	ld   h, [hl]                                     ; $7163: $66
	sub  c                                           ; $7164: $91
	ld   e, a                                        ; $7165: $5f
	and  c                                           ; $7166: $a1
	ld   l, c                                        ; $7167: $69
	ld   d, d                                        ; $7168: $52
	ld   e, b                                        ; $7169: $58
	ld   d, h                                        ; $716a: $54
	ld   e, c                                        ; $716b: $59
	adc  c                                           ; $716c: $89
	ld   d, h                                        ; $716d: $54
	ld   h, l                                        ; $716e: $65
	and  c                                           ; $716f: $a1
	nop                                              ; $7170: $00
	nop                                              ; $7171: $00
	ld   a, l                                        ; $7172: $7d
	ld   h, [hl]                                     ; $7173: $66
	sub  c                                           ; $7174: $91
	ld   e, a                                        ; $7175: $5f
	and  c                                           ; $7176: $a1
	ld   l, c                                        ; $7177: $69
	ld   d, d                                        ; $7178: $52
	ld   e, c                                        ; $7179: $59
	ld   d, d                                        ; $717a: $52
	halt                                             ; $717b: $76
	ld   d, h                                        ; $717c: $54
	sub  a                                           ; $717d: $97
	and  c                                           ; $717e: $a1
	adc  h                                           ; $717f: $8c
	nop                                              ; $7180: $00
	ld   bc, $6690                                   ; $7181: $01 $90 $66
	sub  c                                           ; $7184: $91
	ld   d, h                                        ; $7185: $54
	and  c                                           ; $7186: $a1
	ld   l, l                                        ; $7187: $6d
	sub  a                                           ; $7188: $97
	ld   e, c                                        ; $7189: $59
	and  c                                           ; $718a: $a1
	ld   l, l                                        ; $718b: $6d
	sub  a                                           ; $718c: $97
	rst  $38                                         ; $718d: $ff
	rst  $38                                         ; $718e: $ff
	nop                                              ; $718f: $00
	ld   [bc], a                                     ; $7190: $02
	rlca                                             ; $7191: $07
	inc  de                                          ; $7192: $13
	ld   bc, $0302                                   ; $7193: $01 $02 $03
	ld   bc, $2000                                   ; $7196: $01 $00 $20
	nop                                              ; $7199: $00
	rlca                                             ; $719a: $07
	ld   [hl], d                                     ; $719b: $72
	ld   bc, $0302                                   ; $719c: $01 $02 $03
	ld   bc, $2001                                   ; $719f: $01 $01 $20
	nop                                              ; $71a2: $00
	rlca                                             ; $71a3: $07
	ret  nc                                          ; $71a4: $d0

	ld   bc, $0302                                   ; $71a5: $01 $02 $03
	ld   bc, $2002                                   ; $71a8: $01 $02 $20
	nop                                              ; $71ab: $00
	ld   b, $55                                      ; $71ac: $06 $55
	ld   [bc], a                                     ; $71ae: $02
	rrca                                             ; $71af: $0f
	nop                                              ; $71b0: $00
	ld   bc, $7d01                                   ; $71b1: $01 $01 $7d
	ld   h, [hl]                                     ; $71b4: $66
	sub  c                                           ; $71b5: $91
	ld   e, a                                        ; $71b6: $5f
	and  c                                           ; $71b7: $a1
	ld   l, c                                        ; $71b8: $69
	ld   d, d                                        ; $71b9: $52
	ld   e, b                                        ; $71ba: $58
	ld   d, h                                        ; $71bb: $54
	ld   e, c                                        ; $71bc: $59
	adc  c                                           ; $71bd: $89
	ld   d, h                                        ; $71be: $54
	ld   h, l                                        ; $71bf: $65
	and  c                                           ; $71c0: $a1
	dec  c                                           ; $71c1: $0d
	rst  $38                                         ; $71c2: $ff
	rst  $38                                         ; $71c3: $ff
	halt                                             ; $71c4: $76
	ld   e, c                                        ; $71c5: $59
	ld   d, d                                        ; $71c6: $52
	ld   d, h                                        ; $71c7: $54
	inc  b                                           ; $71c8: $04
	rst  ToBoot                                         ; $71c9: $c7
	inc  bc                                          ; $71ca: $03
	ld   c, a                                        ; $71cb: $4f
	ld   [hl], l                                     ; $71cc: $75
	ld   h, a                                        ; $71cd: $67
	sub  [hl]                                        ; $71ce: $96
	ld   a, e                                        ; $71cf: $7b
	ld   sp, hl                                      ; $71d0: $f9
	dec  c                                           ; $71d1: $0d
	nop                                              ; $71d2: $00
	ld   a, [bc]                                     ; $71d3: $0a
	inc  e                                           ; $71d4: $1c
	ld   bc, $0101                                   ; $71d5: $01 $01 $01
	dec  e                                           ; $71d8: $1d
	ld   b, b                                        ; $71d9: $40
	ld   de, $1103                                   ; $71da: $11 $03 $11
	ld   bc, $2802                                   ; $71dd: $01 $02 $28
	nop                                              ; $71e0: $00
	ld   bc, $5d96                                   ; $71e1: $01 $96 $5d
	ld   h, d                                        ; $71e4: $62
	inc  bc                                          ; $71e5: $03
	push bc                                          ; $71e6: $c5
	ld   h, [hl]                                     ; $71e7: $66
	ld   [hl], l                                     ; $71e8: $75
	ld   h, a                                        ; $71e9: $67
	ld   a, e                                        ; $71ea: $7b
	sbc  a                                           ; $71eb: $9f
	dec  c                                           ; $71ec: $0d
	inc  b                                           ; $71ed: $04
	sub  [hl]                                        ; $71ee: $96
	inc  bc                                          ; $71ef: $03
	ld   h, c                                        ; $71f0: $61
	ld   [bc], a                                     ; $71f1: $02
	cp   h                                           ; $71f2: $bc
	dec  b                                           ; $71f3: $05
	db   $db                                         ; $71f4: $db
	inc  bc                                          ; $71f5: $03
	adc  a                                           ; $71f6: $8f
	ld   [bc], a                                     ; $71f7: $02
	sbc  b                                           ; $71f8: $98
	inc  b                                           ; $71f9: $04
	sbc  c                                           ; $71fa: $99
	inc  bc                                          ; $71fb: $03
	sub  b                                           ; $71fc: $90
	ld   [hl], c                                     ; $71fd: $71
	ld   [hl], h                                     ; $71fe: $74
	dec  c                                           ; $71ff: $0d
	inc  bc                                          ; $7200: $03
	ld   d, l                                        ; $7201: $55
	ld   e, l                                        ; $7202: $5d
	and  c                                           ; $7203: $a1
	ld   [hl], l                                     ; $7204: $75
	ld   h, a                                        ; $7205: $67
	sub  [hl]                                        ; $7206: $96
	sbc  a                                           ; $7207: $9f
	dec  c                                           ; $7208: $0d
	nop                                              ; $7209: $00
	ld   a, [bc]                                     ; $720a: $0a
	ld   b, $71                                      ; $720b: $06 $71
	ld   [bc], a                                     ; $720d: $02
	rrca                                             ; $720e: $0f
	nop                                              ; $720f: $00
	ld   bc, $7d01                                   ; $7210: $01 $01 $7d
	ld   h, [hl]                                     ; $7213: $66
	sub  c                                           ; $7214: $91
	ld   e, a                                        ; $7215: $5f
	and  c                                           ; $7216: $a1
	ld   l, c                                        ; $7217: $69
	ld   d, d                                        ; $7218: $52
	ld   e, c                                        ; $7219: $59
	ld   d, d                                        ; $721a: $52
	halt                                             ; $721b: $76
	ld   d, h                                        ; $721c: $54
	sub  a                                           ; $721d: $97
	and  c                                           ; $721e: $a1
	adc  h                                           ; $721f: $8c
	dec  c                                           ; $7220: $0d
	rst  $38                                         ; $7221: $ff
	rst  $38                                         ; $7222: $ff
	halt                                             ; $7223: $76
	ld   e, c                                        ; $7224: $59
	ld   d, d                                        ; $7225: $52
	ld   d, h                                        ; $7226: $54
	inc  b                                           ; $7227: $04
	rst  ToBoot                                         ; $7228: $c7
	inc  bc                                          ; $7229: $03
	ld   c, a                                        ; $722a: $4f
	ld   [hl], l                                     ; $722b: $75
	ld   h, a                                        ; $722c: $67
	sub  [hl]                                        ; $722d: $96
	ld   a, e                                        ; $722e: $7b
	ld   sp, hl                                      ; $722f: $f9
	dec  c                                           ; $7230: $0d
	nop                                              ; $7231: $00
	ld   a, [bc]                                     ; $7232: $0a
	inc  e                                           ; $7233: $1c
	ld   bc, $0101                                   ; $7234: $01 $01 $01
	ld   bc, $9252                                   ; $7237: $01 $52 $92
	ld   l, [hl]                                     ; $723a: $6e
	rst  $38                                         ; $723b: $ff
	rst  $38                                         ; $723c: $ff
	dec  c                                           ; $723d: $0d
	ld   l, e                                        ; $723e: $6b
	sbc  d                                           ; $723f: $9a
	inc  bc                                          ; $7240: $03
	xor  c                                           ; $7241: $a9
	ld   e, c                                        ; $7242: $59
	ld   a, h                                        ; $7243: $7c
	halt                                             ; $7244: $76
	adc  h                                           ; $7245: $8c
	ld   h, h                                        ; $7246: $64
	ld   [hl], c                                     ; $7247: $71
	ld   [hl], h                                     ; $7248: $74
	adc  h                                           ; $7249: $8c
	ld   h, a                                        ; $724a: $67
	sub  [hl]                                        ; $724b: $96
	sbc  a                                           ; $724c: $9f
	dec  c                                           ; $724d: $0d
	inc  b                                           ; $724e: $04
	sub  [hl]                                        ; $724f: $96
	inc  bc                                          ; $7250: $03
	ld   h, c                                        ; $7251: $61
	ld   [bc], a                                     ; $7252: $02
	cp   h                                           ; $7253: $bc
	dec  b                                           ; $7254: $05
	db   $db                                         ; $7255: $db
	inc  bc                                          ; $7256: $03
	adc  a                                           ; $7257: $8f
	ld   [bc], a                                     ; $7258: $02
	sbc  b                                           ; $7259: $98
	inc  b                                           ; $725a: $04
	sbc  c                                           ; $725b: $99
	inc  bc                                          ; $725c: $03
	sub  b                                           ; $725d: $90
	ld   e, d                                        ; $725e: $5a
	inc  bc                                          ; $725f: $03
	ld   c, d                                        ; $7260: $4a
	ld   [bc], a                                     ; $7261: $02
	or   h                                           ; $7262: $b4
	ld   [hl], l                                     ; $7263: $75
	ld   h, a                                        ; $7264: $67
	sbc  a                                           ; $7265: $9f
	dec  c                                           ; $7266: $0d
	nop                                              ; $7267: $00
	ld   a, [bc]                                     ; $7268: $0a
	ld   b, $71                                      ; $7269: $06 $71
	ld   [bc], a                                     ; $726b: $02
	rrca                                             ; $726c: $0f
	nop                                              ; $726d: $00
	ld   bc, $9001                                   ; $726e: $01 $01 $90
	ld   h, [hl]                                     ; $7271: $66
	sub  c                                           ; $7272: $91
	ld   d, h                                        ; $7273: $54
	and  c                                           ; $7274: $a1
	ld   l, l                                        ; $7275: $6d
	sub  a                                           ; $7276: $97
	ld   e, c                                        ; $7277: $59
	and  c                                           ; $7278: $a1

Call_04d_7279:
	ld   l, l                                        ; $7279: $6d
	sub  a                                           ; $727a: $97
	rst  $38                                         ; $727b: $ff
	rst  $38                                         ; $727c: $ff
	dec  c                                           ; $727d: $0d
	ld   [hl], c                                     ; $727e: $71
	ld   [hl], h                                     ; $727f: $74
	inc  b                                           ; $7280: $04
	rst  ToBoot                                         ; $7281: $c7
	inc  bc                                          ; $7282: $03
	ld   c, a                                        ; $7283: $4f
	ld   [hl], l                                     ; $7284: $75
	ld   h, a                                        ; $7285: $67
	sub  [hl]                                        ; $7286: $96
	ld   a, e                                        ; $7287: $7b
	ld   sp, hl                                      ; $7288: $f9
	dec  c                                           ; $7289: $0d
	nop                                              ; $728a: $00
	ld   a, [bc]                                     ; $728b: $0a
	inc  e                                           ; $728c: $1c
	ld   bc, $0707                                   ; $728d: $01 $07 $07
	dec  e                                           ; $7290: $1d
	ld   b, b                                        ; $7291: $40
	ld   de, $1103                                   ; $7292: $11 $03 $11
	ld   bc, $2902                                   ; $7295: $01 $02 $29
	nop                                              ; $7298: $00
	ld   bc, $6690                                   ; $7299: $01 $90 $66
	sub  c                                           ; $729c: $91
	ld   a, b                                        ; $729d: $78
	and  c                                           ; $729e: $a1
	ld   [hl], h                                     ; $729f: $74
	ld   [bc], a                                     ; $72a0: $02
	sbc  l                                           ; $72a1: $9d
	ld   [hl], c                                     ; $72a2: $71
	ld   [hl], h                                     ; $72a3: $74
	adc  h                                           ; $72a4: $8c
	ld   l, c                                        ; $72a5: $69
	and  c                                           ; $72a6: $a1
	sub  [hl]                                        ; $72a7: $96
	sbc  a                                           ; $72a8: $9f
	dec  c                                           ; $72a9: $0d
	ld   l, e                                        ; $72aa: $6b
	sbc  d                                           ; $72ab: $9a
	ld   a, c                                        ; $72ac: $79
	ld   l, d                                        ; $72ad: $6a
	and  c                                           ; $72ae: $a1
	ld   l, d                                        ; $72af: $6a
	and  c                                           ; $72b0: $a1
	inc  b                                           ; $72b1: $04
	rst  ToBoot                                         ; $72b2: $c7
	inc  bc                                          ; $72b3: $03
	ld   c, a                                        ; $72b4: $4f
	ld   a, c                                        ; $72b5: $79
	ld   a, b                                        ; $72b6: $78
	ld   [hl], c                                     ; $72b7: $71
	ld   [hl], h                                     ; $72b8: $74
	dec  c                                           ; $72b9: $0d
	ld   a, b                                        ; $72ba: $78
	ld   d, d                                        ; $72bb: $52
	ld   h, [hl]                                     ; $72bc: $66
	sub  c                                           ; $72bd: $91
	ld   a, b                                        ; $72be: $78
	ld   d, d                                        ; $72bf: $52
	ld   [hl], l                                     ; $72c0: $75
	ld   h, a                                        ; $72c1: $67
	ld   e, c                                        ; $72c2: $59
	rst  $38                                         ; $72c3: $ff
	rst  $38                                         ; $72c4: $ff
	dec  c                                           ; $72c5: $0d
	nop                                              ; $72c6: $00
	ld   a, [bc]                                     ; $72c7: $0a
	inc  e                                           ; $72c8: $1c
	ld   bc, $0202                                   ; $72c9: $01 $02 $02
	ld   bc, $9604                                   ; $72cc: $01 $04 $96
	inc  bc                                          ; $72cf: $03
	ld   h, c                                        ; $72d0: $61
	ld   [bc], a                                     ; $72d1: $02
	cp   h                                           ; $72d2: $bc
	dec  b                                           ; $72d3: $05
	db   $db                                         ; $72d4: $db
	inc  bc                                          ; $72d5: $03
	adc  a                                           ; $72d6: $8f
	ld   [bc], a                                     ; $72d7: $02
	sbc  b                                           ; $72d8: $98
	inc  b                                           ; $72d9: $04
	sbc  c                                           ; $72da: $99
	inc  bc                                          ; $72db: $03
	sub  b                                           ; $72dc: $90
	ld   e, d                                        ; $72dd: $5a
	sbc  [hl]                                        ; $72de: $9e
	dec  c                                           ; $72df: $0d
	inc  bc                                          ; $72e0: $03
	ld   c, d                                        ; $72e1: $4a
	ld   h, l                                        ; $72e2: $65
	ld   d, d                                        ; $72e3: $52
	inc  b                                           ; $72e4: $04
	rst  ToBoot                                         ; $72e5: $c7
	inc  bc                                          ; $72e6: $03
	ld   c, a                                        ; $72e7: $4f
	ld   [hl], l                                     ; $72e8: $75
	ld   h, a                                        ; $72e9: $67
	sbc  a                                           ; $72ea: $9f
	dec  c                                           ; $72eb: $0d
	nop                                              ; $72ec: $00
	ld   a, [bc]                                     ; $72ed: $0a
	ld   b, $71                                      ; $72ee: $06 $71
	ld   [bc], a                                     ; $72f0: $02
	inc  e                                           ; $72f1: $1c
	ld   bc, $0000                                   ; $72f2: $01 $00 $00
	ld   bc, $9604                                   ; $72f5: $01 $04 $96
	inc  bc                                          ; $72f8: $03
	ld   h, c                                        ; $72f9: $61
	ld   [bc], a                                     ; $72fa: $02
	cp   h                                           ; $72fb: $bc
	dec  b                                           ; $72fc: $05
	db   $db                                         ; $72fd: $db
	inc  bc                                          ; $72fe: $03
	adc  a                                           ; $72ff: $8f
	ld   [bc], a                                     ; $7300: $02
	sbc  b                                           ; $7301: $98
	inc  b                                           ; $7302: $04
	sbc  c                                           ; $7303: $99
	inc  bc                                          ; $7304: $03
	sub  b                                           ; $7305: $90
	ld   [hl], l                                     ; $7306: $75
	ld   h, a                                        ; $7307: $67
	sub  [hl]                                        ; $7308: $96
	sbc  a                                           ; $7309: $9f
	dec  c                                           ; $730a: $0d
	nop                                              ; $730b: $00
	ld   a, [bc]                                     ; $730c: $0a
	inc  e                                           ; $730d: $1c
	ld   bc, $0000                                   ; $730e: $01 $00 $00
	ld   bc, $7276                                   ; $7311: $01 $76 $72
	ld   l, d                                        ; $7314: $6a
	and  c                                           ; $7315: $a1
	ld   [hl], a                                     ; $7316: $77
	ld   d, h                                        ; $7317: $54
	ld   h, l                                        ; $7318: $65
	ld   l, l                                        ; $7319: $6d
	and  c                                           ; $731a: $a1
	ld   [hl], l                                     ; $731b: $75
	ld   h, a                                        ; $731c: $67
	ld   e, c                                        ; $731d: $59
	ld   sp, hl                                      ; $731e: $f9
	dec  c                                           ; $731f: $0d
	inc  b                                           ; $7320: $04
	adc  d                                           ; $7321: $8a
	inc  bc                                          ; $7322: $03
	ld   e, [hl]                                     ; $7323: $5e
	ld   [bc], a                                     ; $7324: $02
	adc  h                                           ; $7325: $8c
	ld   l, [hl]                                     ; $7326: $6e
	ld   a, b                                        ; $7327: $78
	and  c                                           ; $7328: $a1
	ld   [hl], h                                     ; $7329: $74
	rst  $38                                         ; $732a: $ff
	rst  $38                                         ; $732b: $ff
	dec  c                                           ; $732c: $0d
	nop                                              ; $732d: $00
	ld   a, [bc]                                     ; $732e: $0a
	rrca                                             ; $732f: $0f
	nop                                              ; $7330: $00
	ld   bc, $0401                                   ; $7331: $01 $01 $04
	ld   l, l                                        ; $7334: $6d
	ld   a, c                                        ; $7335: $79
	sub  b                                           ; $7336: $90
	ld   d, d                                        ; $7337: $52
	ld   [hl], d                                     ; $7338: $72
	ld   e, c                                        ; $7339: $59
	inc  bc                                          ; $733a: $03
	add  b                                           ; $733b: $80
	dec  b                                           ; $733c: $05
	db   $10                                         ; $733d: $10
	sbc  c                                           ; $733e: $99
	sub  [hl]                                        ; $733f: $96
	ld   d, h                                        ; $7340: $54
	ld   a, c                                        ; $7341: $79
	dec  c                                           ; $7342: $0d
	ld   a, b                                        ; $7343: $78
	sbc  c                                           ; $7344: $99
	ld   e, c                                        ; $7345: $59
	ld   a, b                                        ; $7346: $78
	halt                                             ; $7347: $76
	dec  b                                           ; $7348: $05
	pop  de                                          ; $7349: $d1
	ld   d, d                                        ; $734a: $52
	adc  h                                           ; $734b: $8c
	ld   h, l                                        ; $734c: $65
	ld   [hl], h                                     ; $734d: $74
	rst  $38                                         ; $734e: $ff
	rst  $38                                         ; $734f: $ff
	dec  c                                           ; $7350: $0d
	nop                                              ; $7351: $00
	ld   a, [bc]                                     ; $7352: $0a
	inc  e                                           ; $7353: $1c
	ld   bc, $0101                                   ; $7354: $01 $01 $01
	ld   bc, $9a6b                                   ; $7357: $01 $6b $9a
	ld   a, b                                        ; $735a: $78
	sub  a                                           ; $735b: $97
	inc  b                                           ; $735c: $04
	ld   c, $03                                      ; $735d: $0e $03
	sbc  l                                           ; $735f: $9d
	inc  b                                           ; $7360: $04
	and  [hl]                                        ; $7361: $a6
	ld   [hl], l                                     ; $7362: $75
	ld   h, a                                        ; $7363: $67
	sub  [hl]                                        ; $7364: $96
	sbc  a                                           ; $7365: $9f
	dec  c                                           ; $7366: $0d
	inc  bc                                          ; $7367: $03
	db   $d3                                         ; $7368: $d3
	dec  b                                           ; $7369: $05
	ld   a, [bc]                                     ; $736a: $0a
	ld   h, a                                        ; $736b: $67
	sbc  d                                           ; $736c: $9a
	ld   a, [hl]                                     ; $736d: $7e
	inc  b                                           ; $736e: $04
	ld   c, c                                        ; $736f: $49
	halt                                             ; $7370: $76
	ld   e, c                                        ; $7371: $59
	ld   a, b                                        ; $7372: $78
	sbc  b                                           ; $7373: $98
	adc  h                                           ; $7374: $8c
	ld   h, a                                        ; $7375: $67
	rst  $38                                         ; $7376: $ff
	rst  $38                                         ; $7377: $ff
	dec  c                                           ; $7378: $0d
	nop                                              ; $7379: $00
	ld   a, [bc]                                     ; $737a: $0a
	inc  e                                           ; $737b: $1c
	ld   bc, $0000                                   ; $737c: $01 $00 $00
	ld   bc, $846d                                   ; $737f: $01 $6d $84
	and  c                                           ; $7382: $a1
	ld   [hl], l                                     ; $7383: $75
	ld   h, a                                        ; $7384: $67
	ld   e, a                                        ; $7385: $5f
	ld   [hl], a                                     ; $7386: $77
	rst  $38                                         ; $7387: $ff
	rst  $38                                         ; $7388: $ff
	dec  c                                           ; $7389: $0d
	ld   h, [hl]                                     ; $738a: $66
	sub  c                                           ; $738b: $91
	sbc  [hl]                                        ; $738c: $9e
	ld   [bc], a                                     ; $738d: $02
	and  l                                           ; $738e: $a5
	inc  b                                           ; $738f: $04
	xor  d                                           ; $7390: $aa
	sub  b                                           ; $7391: $90
	ld   [bc], a                                     ; $7392: $02
	jr   nz, jr_04d_7399                             ; $7393: $20 $04

	xor  d                                           ; $7395: $aa
	dec  c                                           ; $7396: $0d
	ld   e, d                                        ; $7397: $5a
	and  c                                           ; $7398: $a1

jr_04d_7399:
	ld   a, [hl]                                     ; $7399: $7e
	ld   [hl], c                                     ; $739a: $71
	ld   [hl], h                                     ; $739b: $74
	ld   d, d                                        ; $739c: $52
	ld   e, e                                        ; $739d: $5b
	adc  h                                           ; $739e: $8c
	ld   h, l                                        ; $739f: $65
	sub  l                                           ; $73a0: $95
	ld   d, h                                        ; $73a1: $54
	sbc  a                                           ; $73a2: $9f
	dec  c                                           ; $73a3: $0d
	nop                                              ; $73a4: $00
	ld   a, [bc]                                     ; $73a5: $0a
	dec  c                                           ; $73a6: $0d
	nop                                              ; $73a7: $00
	nop                                              ; $73a8: $00
	rrca                                             ; $73a9: $0f
	nop                                              ; $73aa: $00
	ld   bc, $1e09                                   ; $73ab: $01 $09 $1e
	nop                                              ; $73ae: $00
	rrca                                             ; $73af: $0f
	nop                                              ; $73b0: $00
	ld   bc, $6301                                   ; $73b1: $01 $01 $63
	ld   e, l                                        ; $73b4: $5d
	sub  a                                           ; $73b5: $97
	ld   h, e                                        ; $73b6: $63
	and  c                                           ; $73b7: $a1
	ld   a, h                                        ; $73b8: $7c
	sbc  [hl]                                        ; $73b9: $9e
	ld   [bc], a                                     ; $73ba: $02
	sbc  d                                           ; $73bb: $9a
	ld   e, e                                        ; $73bc: $5b
	ld   a, b                                        ; $73bd: $78
	dec  c                                           ; $73be: $0d
	inc  bc                                          ; $73bf: $03
	ld   l, d                                        ; $73c0: $6a
	add  a                                           ; $73c1: $87
	inc  b                                           ; $73c2: $04
	sub  d                                           ; $73c3: $92
	ld   [hl], c                                     ; $73c4: $71
	ld   [hl], h                                     ; $73c5: $74
	ld   a, b                                        ; $73c6: $78
	and  c                                           ; $73c7: $a1
	ld   [hl], l                                     ; $73c8: $75
	ld   h, a                                        ; $73c9: $67
	ld   e, c                                        ; $73ca: $59
	ld   sp, hl                                      ; $73cb: $f9
	dec  c                                           ; $73cc: $0d
	nop                                              ; $73cd: $00
	ld   a, [bc]                                     ; $73ce: $0a
	inc  e                                           ; $73cf: $1c
	ld   bc, $0000                                   ; $73d0: $01 $00 $00
	ld   bc, $fd03                                   ; $73d3: $01 $03 $fd
	ld   a, c                                        ; $73d6: $79
	halt                                             ; $73d7: $76
	ld   [bc], a                                     ; $73d8: $02
	sbc  l                                           ; $73d9: $9d
	sbc  l                                           ; $73da: $9d
	sbc  d                                           ; $73db: $9a
	sbc  c                                           ; $73dc: $99
	halt                                             ; $73dd: $76
	inc  b                                           ; $73de: $04
	ld   c, c                                        ; $73df: $49
	ld   [hl], l                                     ; $73e0: $75
	ld   h, a                                        ; $73e1: $67
	ld   e, a                                        ; $73e2: $5f
	ld   [hl], a                                     ; $73e3: $77
	sbc  [hl]                                        ; $73e4: $9e
	dec  c                                           ; $73e5: $0d
	inc  bc                                          ; $73e6: $03
	ld   l, c                                        ; $73e7: $69
	ld   [bc], a                                     ; $73e8: $02
	and  b                                           ; $73e9: $a0
	inc  bc                                          ; $73ea: $03
	ld   l, d                                        ; $73eb: $6a
	add  a                                           ; $73ec: $87
	ld   l, l                                        ; $73ed: $6d
	inc  b                                           ; $73ee: $04
	dec  bc                                          ; $73ef: $0b
	ld   [hl], l                                     ; $73f0: $75
	ld   a, l                                        ; $73f1: $7d
	ld   b, $38                                      ; $73f2: $06 $38
	ld   [bc], a                                     ; $73f4: $02
	ld   [hl], a                                     ; $73f5: $77
	inc  b                                           ; $73f6: $04
	db   $10                                         ; $73f7: $10
	ld   a, h                                        ; $73f8: $7c
	dec  c                                           ; $73f9: $0d
	xor  e                                           ; $73fa: $ab
	ldh  [c], a                                      ; $73fb: $e2
	db   $eb                                         ; $73fc: $eb
	and  l                                           ; $73fd: $a5
	cp   d                                           ; $73fe: $ba
	ld   e, d                                        ; $73ff: $5a
	ld   [bc], a                                     ; $7400: $02
	sbc  d                                           ; $7401: $9a
	ld   e, e                                        ; $7402: $5b
	ld   [hl], l                                     ; $7403: $75
	ld   h, a                                        ; $7404: $67
	ld   a, e                                        ; $7405: $7b
	sbc  a                                           ; $7406: $9f
	dec  c                                           ; $7407: $0d
	nop                                              ; $7408: $00
	ld   a, [bc]                                     ; $7409: $0a
	rrca                                             ; $740a: $0f
	nop                                              ; $740b: $00
	ld   bc, $5801                                   ; $740c: $01 $01 $58
	ld   d, d                                        ; $740f: $52
	ld   h, l                                        ; $7410: $65
	ld   l, e                                        ; $7411: $6b
	ld   d, h                                        ; $7412: $54
	ld   [hl], l                                     ; $7413: $75
	ld   h, a                                        ; $7414: $67
	ld   a, e                                        ; $7415: $7b
	sbc  a                                           ; $7416: $9f
	dec  c                                           ; $7417: $0d
	nop                                              ; $7418: $00
	ld   a, [bc]                                     ; $7419: $0a
	inc  e                                           ; $741a: $1c
	ld   bc, $0101                                   ; $741b: $01 $01 $01
	dec  e                                           ; $741e: $1d
	ld   b, b                                        ; $741f: $40
	ld   de, $1103                                   ; $7420: $11 $03 $11
	ld   bc, $2801                                   ; $7423: $01 $01 $28
	nop                                              ; $7426: $00
	ld   bc, $6267                                   ; $7427: $01 $67 $62
	ld   e, l                                        ; $742a: $5d
	ld   e, b                                        ; $742b: $58
	ld   d, d                                        ; $742c: $52
	ld   h, l                                        ; $742d: $65
	ld   d, d                                        ; $742e: $52
	ld   [hl], l                                     ; $742f: $75
	ld   h, a                                        ; $7430: $67
	sub  [hl]                                        ; $7431: $96
	sbc  a                                           ; $7432: $9f
	dec  c                                           ; $7433: $0d
	ld   [bc], a                                     ; $7434: $02
	and  l                                           ; $7435: $a5
	inc  b                                           ; $7436: $04
	add  hl, hl                                      ; $7437: $29
	inc  bc                                          ; $7438: $03
	ld   l, d                                        ; $7439: $6a
	add  a                                           ; $743a: $87
	ld   [hl], h                                     ; $743b: $74
	adc  l                                           ; $743c: $8d
	sbc  c                                           ; $743d: $99
	halt                                             ; $743e: $76
	ld   d, d                                        ; $743f: $52
	ld   d, d                                        ; $7440: $52
	ld   [hl], l                                     ; $7441: $75
	ld   h, a                                        ; $7442: $67
	sub  [hl]                                        ; $7443: $96
	sbc  a                                           ; $7444: $9f
	dec  c                                           ; $7445: $0d
	nop                                              ; $7446: $00
	ld   a, [bc]                                     ; $7447: $0a
	ld   bc, $9166                                   ; $7448: $01 $66 $91
	sbc  [hl]                                        ; $744b: $9e
	ld   d, b                                        ; $744c: $50
	ld   l, l                                        ; $744d: $6d
	ld   h, l                                        ; $744e: $65
	ld   [bc], a                                     ; $744f: $02
	ld   a, a                                        ; $7450: $7f
	ld   e, e                                        ; $7451: $5b

Jump_04d_7452:
	adc  h                                           ; $7452: $8c
	ld   h, a                                        ; $7453: $67
	ld   e, c                                        ; $7454: $59
	sub  a                                           ; $7455: $97
	sbc  a                                           ; $7456: $9f
	dec  c                                           ; $7457: $0d
	ld   [bc], a                                     ; $7458: $02
	and  l                                           ; $7459: $a5
	inc  b                                           ; $745a: $04
	xor  d                                           ; $745b: $aa
	sub  b                                           ; $745c: $90

Call_04d_745d:
	ld   [bc], a                                     ; $745d: $02
	jr   nz, jr_04d_7464                             ; $745e: $20 $04

	xor  d                                           ; $7460: $aa
	sbc  [hl]                                        ; $7461: $9e
	dec  c                                           ; $7462: $0d
	ld   e, d                                        ; $7463: $5a

jr_04d_7464:
	and  c                                           ; $7464: $a1
	ld   a, [hl]                                     ; $7465: $7e
	ld   [hl], c                                     ; $7466: $71
	ld   [hl], h                                     ; $7467: $74
	ld   e, l                                        ; $7468: $5d
	ld   l, [hl]                                     ; $7469: $6e
	ld   h, e                                        ; $746a: $63
	ld   d, d                                        ; $746b: $52
	ld   a, e                                        ; $746c: $7b
	sbc  a                                           ; $746d: $9f
	dec  c                                           ; $746e: $0d
	nop                                              ; $746f: $00
	ld   a, [bc]                                     ; $7470: $0a

Jump_04d_7471:
	dec  c                                           ; $7471: $0d
	nop                                              ; $7472: $00
	nop                                              ; $7473: $00
	rrca                                             ; $7474: $0f
	nop                                              ; $7475: $00
	ld   bc, $1e09                                   ; $7476: $01 $09 $1e
	nop                                              ; $7479: $00
	rrca                                             ; $747a: $0f
	nop                                              ; $747b: $00
	ld   bc, $df01                                   ; $747c: $01 $01 $df
	db   $ec                                         ; $747f: $ec
	and  e                                           ; $7480: $a3
	ld   h, e                                        ; $7481: $63
	and  c                                           ; $7482: $a1
	ld   [hl], h                                     ; $7483: $74
	sbc  [hl]                                        ; $7484: $9e
	ld   h, e                                        ; $7485: $63
	ld   e, l                                        ; $7486: $5d
	sub  a                                           ; $7487: $97
	ld   h, e                                        ; $7488: $63
	and  c                                           ; $7489: $a1
	ld   e, c                                        ; $748a: $59
	sub  a                                           ; $748b: $97
	dec  c                                           ; $748c: $0d
	ld   [bc], a                                     ; $748d: $02
	sub  l                                           ; $748e: $95
	ld   [hl], h                                     ; $748f: $74
	sbc  [hl]                                        ; $7490: $9e
	ld   [hl], a                                     ; $7491: $77
	and  c                                           ; $7492: $a1
	ld   a, b                                        ; $7493: $78
	inc  b                                           ; $7494: $04
	ld   a, b                                        ; $7495: $78
	ld   [hl], l                                     ; $7496: $75
	ld   h, a                                        ; $7497: $67
	ld   e, c                                        ; $7498: $59
	ld   sp, hl                                      ; $7499: $f9
	dec  c                                           ; $749a: $0d
	nop                                              ; $749b: $00
	ld   a, [bc]                                     ; $749c: $0a
	inc  e                                           ; $749d: $1c
	ld   bc, $0000                                   ; $749e: $01 $00 $00
	ld   bc, $546b                                   ; $74a1: $01 $6b $54
	ld   [hl], l                                     ; $74a4: $75
	ld   h, a                                        ; $74a5: $67
	ld   a, e                                        ; $74a6: $7b
	rst  $38                                         ; $74a7: $ff
	rst  $38                                         ; $74a8: $ff
	dec  c                                           ; $74a9: $0d
	ld   [bc], a                                     ; $74aa: $02
	call nc, Call_04d_745d                           ; $74ab: $d4 $5d $74
	inc  b                                           ; $74ae: $04
	rst  $30                                         ; $74af: $f7
	ld   h, l                                        ; $74b0: $65
	ld   e, l                                        ; $74b1: $5d
	ld   [hl], h                                     ; $74b2: $74
	sbc  [hl]                                        ; $74b3: $9e
	ld   l, e                                        ; $74b4: $6b
	ld   h, l                                        ; $74b5: $65
	ld   [hl], h                                     ; $74b6: $74
	inc  bc                                          ; $74b7: $03
	sub  h                                           ; $74b8: $94
	inc  b                                           ; $74b9: $04
	sbc  [hl]                                        ; $74ba: $9e
	ld   a, c                                        ; $74bb: $79
	dec  c                                           ; $74bc: $0d
	ld   e, e                                        ; $74bd: $5b
	add  c                                           ; $74be: $81
	ld   h, l                                        ; $74bf: $65
	ld   d, d                                        ; $74c0: $52
	inc  b                                           ; $74c1: $04
	ld   a, b                                        ; $74c2: $78
	ld   l, [hl]                                     ; $74c3: $6e
	halt                                             ; $74c4: $76
	dec  b                                           ; $74c5: $05
	pop  de                                          ; $74c6: $d1
	ld   d, d                                        ; $74c7: $52
	adc  h                                           ; $74c8: $8c
	ld   h, a                                        ; $74c9: $67
	sbc  a                                           ; $74ca: $9f
	dec  c                                           ; $74cb: $0d
	nop                                              ; $74cc: $00
	ld   a, [bc]                                     ; $74cd: $0a
	inc  e                                           ; $74ce: $1c
	ld   bc, $0101                                   ; $74cf: $01 $01 $01
	ld   bc, $6e03                                   ; $74d2: $01 $03 $6e
	ld   a, h                                        ; $74d5: $7c
	ld   d, b                                        ; $74d6: $50
	ld   l, l                                        ; $74d7: $6d
	ld   h, l                                        ; $74d8: $65
	ld   e, c                                        ; $74d9: $59
	sub  a                                           ; $74da: $97
	ld   [bc], a                                     ; $74db: $02
	sub  l                                           ; $74dc: $95
	ld   [hl], h                                     ; $74dd: $74
	sub  b                                           ; $74de: $90
	dec  c                                           ; $74df: $0d
	halt                                             ; $74e0: $76
	ld   [hl], h                                     ; $74e1: $74
	sub  b                                           ; $74e2: $90
	cp   d                                           ; $74e3: $ba
	rst  ToBoot                                         ; $74e4: $c7
	xor  [hl]                                        ; $74e5: $ae
	ld   a, b                                        ; $74e6: $78
	inc  bc                                          ; $74e7: $03
	ld   l, [hl]                                     ; $74e8: $6e
	ld   [bc], a                                     ; $74e9: $02
	db   $fc                                         ; $74ea: $fc
	ld   l, [hl]                                     ; $74eb: $6e
	halt                                             ; $74ec: $76
	dec  c                                           ; $74ed: $0d
	dec  b                                           ; $74ee: $05
	pop  de                                          ; $74ef: $d1
	ld   d, d                                        ; $74f0: $52
	adc  h                                           ; $74f1: $8c
	ld   h, a                                        ; $74f2: $67
	sub  [hl]                                        ; $74f3: $96
	sbc  a                                           ; $74f4: $9f
	dec  c                                           ; $74f5: $0d
	nop                                              ; $74f6: $00
	ld   a, [bc]                                     ; $74f7: $0a
	ld   bc, $9166                                   ; $74f8: $01 $66 $91
	sbc  [hl]                                        ; $74fb: $9e
	ld   d, b                                        ; $74fc: $50
	ld   l, l                                        ; $74fd: $6d
	ld   h, l                                        ; $74fe: $65
	ld   [bc], a                                     ; $74ff: $02
	ld   a, a                                        ; $7500: $7f
	ld   e, e                                        ; $7501: $5b
	adc  h                                           ; $7502: $8c
	ld   h, a                                        ; $7503: $67
	ld   e, c                                        ; $7504: $59
	sub  a                                           ; $7505: $97
	sbc  a                                           ; $7506: $9f
	dec  c                                           ; $7507: $0d
	ld   [bc], a                                     ; $7508: $02
	and  l                                           ; $7509: $a5
	inc  b                                           ; $750a: $04
	xor  d                                           ; $750b: $aa
	sub  b                                           ; $750c: $90
	ld   [bc], a                                     ; $750d: $02
	jr   nz, jr_04d_7514                             ; $750e: $20 $04

	xor  d                                           ; $7510: $aa
	sbc  [hl]                                        ; $7511: $9e
	dec  c                                           ; $7512: $0d
	ld   e, d                                        ; $7513: $5a

jr_04d_7514:
	and  c                                           ; $7514: $a1
	ld   a, [hl]                                     ; $7515: $7e
	ld   [hl], c                                     ; $7516: $71
	ld   [hl], h                                     ; $7517: $74
	ld   e, l                                        ; $7518: $5d
	ld   l, [hl]                                     ; $7519: $6e
	ld   h, e                                        ; $751a: $63
	ld   d, d                                        ; $751b: $52
	sbc  a                                           ; $751c: $9f
	dec  c                                           ; $751d: $0d
	nop                                              ; $751e: $00
	ld   a, [bc]                                     ; $751f: $0a
	dec  c                                           ; $7520: $0d
	nop                                              ; $7521: $00
	nop                                              ; $7522: $00
	rrca                                             ; $7523: $0f
	nop                                              ; $7524: $00
	ld   bc, $1e09                                   ; $7525: $01 $09 $1e
	nop                                              ; $7528: $00
	nop                                              ; $7529: $00
	ld   [bc], a                                     ; $752a: $02
	rlca                                             ; $752b: $07
	ld   sp, $0300                                   ; $752c: $31 $00 $03
	ld   [de], a                                     ; $752f: $12
	ld   bc, $2265                                   ; $7530: $01 $65 $22
	nop                                              ; $7533: $00
	rlca                                             ; $7534: $07
	ld   l, c                                        ; $7535: $69
	nop                                              ; $7536: $00
	inc  bc                                          ; $7537: $03
	ld   [de], a                                     ; $7538: $12
	ld   bc, $2565                                   ; $7539: $01 $65 $25
	inc  bc                                          ; $753c: $03
	ld   [de], a                                     ; $753d: $12
	ld   bc, $2278                                   ; $753e: $01 $78 $22
	inc  e                                           ; $7541: $1c
	nop                                              ; $7542: $00
	rlca                                             ; $7543: $07
	and  d                                           ; $7544: $a2
	nop                                              ; $7545: $00
	inc  bc                                          ; $7546: $03
	ld   [de], a                                     ; $7547: $12
	ld   bc, $2578                                   ; $7548: $01 $78 $25
	inc  bc                                          ; $754b: $03
	ld   [de], a                                     ; $754c: $12
	ld   bc, $2291                                   ; $754d: $01 $91 $22
	inc  e                                           ; $7550: $1c
	nop                                              ; $7551: $00
	rlca                                             ; $7552: $07
	ldh  [c], a                                      ; $7553: $e2
	nop                                              ; $7554: $00
	inc  bc                                          ; $7555: $03
	ld   [de], a                                     ; $7556: $12
	ld   bc, $2591                                   ; $7557: $01 $91 $25
	nop                                              ; $755a: $00
	rrca                                             ; $755b: $0f
	nop                                              ; $755c: $00
	ld   bc, $6701                                   ; $755d: $01 $01 $67
	adc  l                                           ; $7560: $8d
	sbc  d                                           ; $7561: $9a
	ld   h, e                                        ; $7562: $63
	and  c                                           ; $7563: $a1
	sbc  a                                           ; $7564: $9f
	dec  c                                           ; $7565: $0d
	nop                                              ; $7566: $00
	ld   a, [bc]                                     ; $7567: $0a
	inc  e                                           ; $7568: $1c
	ld   [bc], a                                     ; $7569: $02
	nop                                              ; $756a: $00
	nop                                              ; $756b: $00
	ld   bc, $8c52                                   ; $756c: $01 $52 $8c
	sbc  [hl]                                        ; $756f: $9e
	inc  bc                                          ; $7570: $03
	ld   l, e                                        ; $7571: $6b
	ld   e, d                                        ; $7572: $5a
	inc  b                                           ; $7573: $04
	sbc  c                                           ; $7574: $99
	ld   l, c                                        ; $7575: $69
	adc  h                                           ; $7576: $8c
	ld   l, c                                        ; $7577: $69
	and  c                                           ; $7578: $a1
	ld   a, h                                        ; $7579: $7c
	sbc  a                                           ; $757a: $9f
	dec  c                                           ; $757b: $0d
	ld   d, b                                        ; $757c: $50
	halt                                             ; $757d: $76
	ld   a, c                                        ; $757e: $79
	ld   h, l                                        ; $757f: $65
	ld   [hl], h                                     ; $7580: $74
	ld   e, l                                        ; $7581: $5d
	ld   l, [hl]                                     ; $7582: $6e
	ld   h, e                                        ; $7583: $63
	ld   d, d                                        ; $7584: $52
	ld   a, b                                        ; $7585: $78
	sbc  a                                           ; $7586: $9f
	dec  c                                           ; $7587: $0d
	nop                                              ; $7588: $00
	ld   a, [bc]                                     ; $7589: $0a
	dec  c                                           ; $758a: $0d
	nop                                              ; $758b: $00
	nop                                              ; $758c: $00
	rrca                                             ; $758d: $0f
	nop                                              ; $758e: $00
	ld   bc, $1e09                                   ; $758f: $01 $09 $1e
	nop                                              ; $7592: $00
	dec  c                                           ; $7593: $0d
	ld   [bc], a                                     ; $7594: $02
	nop                                              ; $7595: $00
	rrca                                             ; $7596: $0f
	nop                                              ; $7597: $00
	ld   bc, $6701                                   ; $7598: $01 $01 $67
	adc  l                                           ; $759b: $8d
	sbc  d                                           ; $759c: $9a
	ld   h, e                                        ; $759d: $63
	and  c                                           ; $759e: $a1
	sbc  a                                           ; $759f: $9f
	dec  c                                           ; $75a0: $0d
	ld   e, b                                        ; $75a1: $58
	ld   a, l                                        ; $75a2: $7d
	sub  [hl]                                        ; $75a3: $96
	ld   d, h                                        ; $75a4: $54
	ld   h, d                                        ; $75a5: $62
	ld   h, h                                        ; $75a6: $64
	ld   d, d                                        ; $75a7: $52
	adc  h                                           ; $75a8: $8c
	ld   h, a                                        ; $75a9: $67
	sbc  a                                           ; $75aa: $9f
	dec  c                                           ; $75ab: $0d

Jump_04d_75ac:
	nop                                              ; $75ac: $00
	ld   a, [bc]                                     ; $75ad: $0a
	rrca                                             ; $75ae: $0f
	ld   [bc], a                                     ; $75af: $02
	nop                                              ; $75b0: $00
	ld   bc, $7d58                                   ; $75b1: $01 $58 $7d
	sub  [hl]                                        ; $75b4: $96
	ld   d, h                                        ; $75b5: $54
	sbc  a                                           ; $75b6: $9f
	dec  c                                           ; $75b7: $0d
	ld   [hl], l                                     ; $75b8: $75
	ld   a, l                                        ; $75b9: $7d
	inc  bc                                          ; $75ba: $03
	add  e                                           ; $75bb: $83
	dec  b                                           ; $75bc: $05
	dec  c                                           ; $75bd: $0d
	rst  $38                                         ; $75be: $ff
	rst  $38                                         ; $75bf: $ff
	dec  c                                           ; $75c0: $0d
	nop                                              ; $75c1: $00
	ld   a, [bc]                                     ; $75c2: $0a
	dec  c                                           ; $75c3: $0d
	nop                                              ; $75c4: $00
	nop                                              ; $75c5: $00
	rrca                                             ; $75c6: $0f
	nop                                              ; $75c7: $00
	ld   bc, $1e09                                   ; $75c8: $01 $09 $1e
	nop                                              ; $75cb: $00
	dec  c                                           ; $75cc: $0d
	ld   [bc], a                                     ; $75cd: $02
	nop                                              ; $75ce: $00
	rrca                                             ; $75cf: $0f
	nop                                              ; $75d0: $00
	ld   bc, $6701                                   ; $75d1: $01 $01 $67
	adc  l                                           ; $75d4: $8d
	sbc  d                                           ; $75d5: $9a
	ld   h, e                                        ; $75d6: $63
	and  c                                           ; $75d7: $a1
	sbc  a                                           ; $75d8: $9f
	dec  c                                           ; $75d9: $0d
	ld   e, b                                        ; $75da: $58
	ld   a, l                                        ; $75db: $7d
	sub  [hl]                                        ; $75dc: $96
	ld   d, h                                        ; $75dd: $54
	ld   h, d                                        ; $75de: $62
	ld   h, h                                        ; $75df: $64
	ld   d, d                                        ; $75e0: $52
	adc  h                                           ; $75e1: $8c
	ld   h, a                                        ; $75e2: $67
	sbc  a                                           ; $75e3: $9f
	dec  c                                           ; $75e4: $0d
	nop                                              ; $75e5: $00
	ld   a, [bc]                                     ; $75e6: $0a
	inc  e                                           ; $75e7: $1c
	ld   [bc], a                                     ; $75e8: $02
	ld   bc, $0101                                   ; $75e9: $01 $01 $01
	ld   e, b                                        ; $75ec: $58
	ld   a, l                                        ; $75ed: $7d
	sub  [hl]                                        ; $75ee: $96
	ld   d, h                                        ; $75ef: $54
	sbc  a                                           ; $75f0: $9f
	dec  c                                           ; $75f1: $0d
	ld   [$6300], sp                                 ; $75f2: $08 $00 $63
	and  c                                           ; $75f5: $a1
	sbc  a                                           ; $75f6: $9f
	dec  c                                           ; $75f7: $0d
	ld   [hl], l                                     ; $75f8: $75
	ld   a, l                                        ; $75f9: $7d
	inc  bc                                          ; $75fa: $03
	add  e                                           ; $75fb: $83
	dec  b                                           ; $75fc: $05
	dec  c                                           ; $75fd: $0d
	rst  $38                                         ; $75fe: $ff
	rst  $38                                         ; $75ff: $ff
	dec  c                                           ; $7600: $0d
	nop                                              ; $7601: $00
	ld   a, [bc]                                     ; $7602: $0a
	dec  c                                           ; $7603: $0d
	nop                                              ; $7604: $00
	nop                                              ; $7605: $00
	rrca                                             ; $7606: $0f
	nop                                              ; $7607: $00
	ld   bc, $1e09                                   ; $7608: $01 $09 $1e
	nop                                              ; $760b: $00
	inc  e                                           ; $760c: $1c
	ld   [bc], a                                     ; $760d: $02
	ld   bc, $0101                                   ; $760e: $01 $01 $01
	ld   [$6300], sp                                 ; $7611: $08 $00 $63
	and  c                                           ; $7614: $a1
	sbc  a                                           ; $7615: $9f
	dec  c                                           ; $7616: $0d
	ld   e, b                                        ; $7617: $58
	ld   a, l                                        ; $7618: $7d
	sub  [hl]                                        ; $7619: $96
	ld   d, h                                        ; $761a: $54
	sbc  a                                           ; $761b: $9f
	dec  c                                           ; $761c: $0d
	nop                                              ; $761d: $00
	ld   a, [bc]                                     ; $761e: $0a
	rrca                                             ; $761f: $0f
	nop                                              ; $7620: $00
	ld   bc, $5801                                   ; $7621: $01 $01 $58
	ld   a, l                                        ; $7624: $7d
	sub  [hl]                                        ; $7625: $96
	ld   d, h                                        ; $7626: $54
	ld   h, d                                        ; $7627: $62
	ld   h, h                                        ; $7628: $64
	ld   d, d                                        ; $7629: $52
	adc  h                                           ; $762a: $8c
	ld   h, a                                        ; $762b: $67
	sbc  a                                           ; $762c: $9f
	dec  c                                           ; $762d: $0d
	ld   h, a                                        ; $762e: $67
	adc  l                                           ; $762f: $8d
	sbc  d                                           ; $7630: $9a
	ld   h, e                                        ; $7631: $63
	and  c                                           ; $7632: $a1
	sbc  a                                           ; $7633: $9f
	dec  c                                           ; $7634: $0d
	nop                                              ; $7635: $00
	ld   a, [bc]                                     ; $7636: $0a
	rrca                                             ; $7637: $0f
	ld   [bc], a                                     ; $7638: $02
	ld   bc, $0201                                   ; $7639: $01 $01 $02
	and  l                                           ; $763c: $a5
	inc  b                                           ; $763d: $04
	xor  d                                           ; $763e: $aa
	sub  b                                           ; $763f: $90
	ld   [bc], a                                     ; $7640: $02
	jr   nz, jr_04d_7647                             ; $7641: $20 $04

	xor  d                                           ; $7643: $aa
	sbc  [hl]                                        ; $7644: $9e
	dec  c                                           ; $7645: $0d
	ld   e, d                                        ; $7646: $5a

jr_04d_7647:
	and  c                                           ; $7647: $a1
	ld   a, [hl]                                     ; $7648: $7e
	sbc  b                                           ; $7649: $98
	ld   a, b                                        ; $764a: $78
	ld   h, e                                        ; $764b: $63
	ld   d, d                                        ; $764c: $52
	sbc  a                                           ; $764d: $9f
	dec  c                                           ; $764e: $0d
	ld   [hl], l                                     ; $764f: $75
	ld   a, l                                        ; $7650: $7d
	inc  bc                                          ; $7651: $03
	add  e                                           ; $7652: $83
	dec  b                                           ; $7653: $05
	dec  c                                           ; $7654: $0d
	rst  $38                                         ; $7655: $ff
	rst  $38                                         ; $7656: $ff
	dec  c                                           ; $7657: $0d
	nop                                              ; $7658: $00
	ld   a, [bc]                                     ; $7659: $0a
	dec  c                                           ; $765a: $0d
	nop                                              ; $765b: $00
	nop                                              ; $765c: $00
	rrca                                             ; $765d: $0f
	nop                                              ; $765e: $00
	ld   bc, $1e09                                   ; $765f: $01 $09 $1e
	nop                                              ; $7662: $00
	nop                                              ; $7663: $00
	ld   [bc], a                                     ; $7664: $02
	rlca                                             ; $7665: $07
	ld   sp, $0300                                   ; $7666: $31 $00 $03
	ld   de, $6501                                   ; $7669: $11 $01 $65
	ld   [hl+], a                                    ; $766c: $22
	nop                                              ; $766d: $00
	rlca                                             ; $766e: $07
	ld   l, b                                        ; $766f: $68
	nop                                              ; $7670: $00
	inc  bc                                          ; $7671: $03
	ld   de, $6501                                   ; $7672: $11 $01 $65
	dec  h                                           ; $7675: $25
	inc  bc                                          ; $7676: $03
	ld   de, $7801                                   ; $7677: $11 $01 $78
	ld   [hl+], a                                    ; $767a: $22
	inc  e                                           ; $767b: $1c
	nop                                              ; $767c: $00
	rlca                                             ; $767d: $07
	and  e                                           ; $767e: $a3
	nop                                              ; $767f: $00
	inc  bc                                          ; $7680: $03
	ld   de, $7801                                   ; $7681: $11 $01 $78
	dec  h                                           ; $7684: $25
	inc  bc                                          ; $7685: $03
	ld   de, $9101                                   ; $7686: $11 $01 $91
	ld   [hl+], a                                    ; $7689: $22
	inc  e                                           ; $768a: $1c
	nop                                              ; $768b: $00
	rlca                                             ; $768c: $07
	push hl                                          ; $768d: $e5
	nop                                              ; $768e: $00
	inc  bc                                          ; $768f: $03
	ld   de, $9101                                   ; $7690: $11 $01 $91
	dec  h                                           ; $7693: $25
	nop                                              ; $7694: $00
	rrca                                             ; $7695: $0f
	nop                                              ; $7696: $00
	ld   bc, $6301                                   ; $7697: $01 $01 $63
	ld   e, l                                        ; $769a: $5d
	sub  a                                           ; $769b: $97
	ld   h, e                                        ; $769c: $63
	and  c                                           ; $769d: $a1
	sbc  a                                           ; $769e: $9f
	dec  c                                           ; $769f: $0d
	nop                                              ; $76a0: $00
	ld   a, [bc]                                     ; $76a1: $0a
	inc  e                                           ; $76a2: $1c
	ld   bc, $0000                                   ; $76a3: $01 $00 $00
	ld   bc, $8f62                                   ; $76a6: $01 $62 $8f
	and  c                                           ; $76a9: $a1
	ld   a, b                                        ; $76aa: $78
	ld   h, e                                        ; $76ab: $63
	ld   d, d                                        ; $76ac: $52
	sbc  a                                           ; $76ad: $9f
	dec  c                                           ; $76ae: $0d
	ld   d, d                                        ; $76af: $52
	adc  h                                           ; $76b0: $8c
	dec  b                                           ; $76b1: $05
	jr   z, jr_04d_7706                              ; $76b2: $28 $52

	ld   [hl], l                                     ; $76b4: $75
	sbc  c                                           ; $76b5: $99
	and  c                                           ; $76b6: $a1
	ld   [hl], l                                     ; $76b7: $75
	ld   h, a                                        ; $76b8: $67
	sbc  a                                           ; $76b9: $9f
	dec  c                                           ; $76ba: $0d
	ld   l, e                                        ; $76bb: $6b
	sbc  d                                           ; $76bc: $9a
	ld   [hl], l                                     ; $76bd: $75
	ld   a, l                                        ; $76be: $7d
	sbc  a                                           ; $76bf: $9f
	dec  c                                           ; $76c0: $0d
	nop                                              ; $76c1: $00
	ld   a, [bc]                                     ; $76c2: $0a
	dec  c                                           ; $76c3: $0d
	nop                                              ; $76c4: $00
	nop                                              ; $76c5: $00
	rrca                                             ; $76c6: $0f
	nop                                              ; $76c7: $00
	ld   bc, $1e09                                   ; $76c8: $01 $09 $1e
	nop                                              ; $76cb: $00
	rrca                                             ; $76cc: $0f
	nop                                              ; $76cd: $00
	ld   bc, $010d                                   ; $76ce: $01 $0d $01
	nop                                              ; $76d1: $00
	ld   bc, $5d63                                   ; $76d2: $01 $63 $5d
	sub  a                                           ; $76d5: $97
	ld   h, e                                        ; $76d6: $63
	and  c                                           ; $76d7: $a1
	sbc  a                                           ; $76d8: $9f
	dec  c                                           ; $76d9: $0d
	ld   e, b                                        ; $76da: $58
	ld   a, l                                        ; $76db: $7d
	sub  [hl]                                        ; $76dc: $96
	ld   d, h                                        ; $76dd: $54
	ld   h, d                                        ; $76de: $62
	ld   h, h                                        ; $76df: $64
	ld   d, d                                        ; $76e0: $52
	adc  h                                           ; $76e1: $8c
	ld   h, a                                        ; $76e2: $67
	sbc  a                                           ; $76e3: $9f
	dec  c                                           ; $76e4: $0d
	nop                                              ; $76e5: $00
	ld   a, [bc]                                     ; $76e6: $0a
	rrca                                             ; $76e7: $0f
	ld   bc, $0100                                   ; $76e8: $01 $00 $01
	ld   e, b                                        ; $76eb: $58
	ld   a, l                                        ; $76ec: $7d
	sub  [hl]                                        ; $76ed: $96
	ld   d, h                                        ; $76ee: $54
	ld   h, d                                        ; $76ef: $62
	ld   h, h                                        ; $76f0: $64
	ld   d, d                                        ; $76f1: $52
	adc  h                                           ; $76f2: $8c
	ld   h, a                                        ; $76f3: $67
	sbc  a                                           ; $76f4: $9f
	dec  c                                           ; $76f5: $0d
	ld   l, e                                        ; $76f6: $6b
	sbc  d                                           ; $76f7: $9a
	ld   [hl], l                                     ; $76f8: $75
	ld   a, l                                        ; $76f9: $7d
	sbc  a                                           ; $76fa: $9f
	dec  c                                           ; $76fb: $0d
	nop                                              ; $76fc: $00
	ld   a, [bc]                                     ; $76fd: $0a
	dec  c                                           ; $76fe: $0d
	nop                                              ; $76ff: $00
	nop                                              ; $7700: $00
	rrca                                             ; $7701: $0f
	nop                                              ; $7702: $00
	ld   bc, $1e09                                   ; $7703: $01 $09 $1e

jr_04d_7706:
	nop                                              ; $7706: $00
	rrca                                             ; $7707: $0f
	nop                                              ; $7708: $00
	ld   bc, $010d                                   ; $7709: $01 $0d $01
	nop                                              ; $770c: $00
	ld   bc, $5d63                                   ; $770d: $01 $63 $5d
	sub  a                                           ; $7710: $97
	ld   h, e                                        ; $7711: $63
	and  c                                           ; $7712: $a1
	sbc  a                                           ; $7713: $9f
	dec  c                                           ; $7714: $0d
	ld   e, b                                        ; $7715: $58
	ld   a, l                                        ; $7716: $7d
	sub  [hl]                                        ; $7717: $96
	ld   d, h                                        ; $7718: $54
	ld   h, d                                        ; $7719: $62
	ld   h, h                                        ; $771a: $64
	ld   d, d                                        ; $771b: $52
	adc  h                                           ; $771c: $8c
	ld   h, a                                        ; $771d: $67
	sbc  a                                           ; $771e: $9f
	dec  c                                           ; $771f: $0d
	nop                                              ; $7720: $00
	ld   a, [bc]                                     ; $7721: $0a
	inc  e                                           ; $7722: $1c
	ld   bc, $0101                                   ; $7723: $01 $01 $01
	ld   bc, $7d58                                   ; $7726: $01 $58 $7d
	sub  [hl]                                        ; $7729: $96
	ld   d, h                                        ; $772a: $54
	ld   h, d                                        ; $772b: $62
	ld   h, h                                        ; $772c: $64
	ld   d, d                                        ; $772d: $52
	adc  h                                           ; $772e: $8c
	ld   h, a                                        ; $772f: $67
	sbc  a                                           ; $7730: $9f
	dec  c                                           ; $7731: $0d
	ld   [$6300], sp                                 ; $7732: $08 $00 $63
	and  c                                           ; $7735: $a1
	sbc  a                                           ; $7736: $9f
	dec  c                                           ; $7737: $0d
	ld   l, e                                        ; $7738: $6b
	sbc  d                                           ; $7739: $9a
	ld   [hl], l                                     ; $773a: $75
	ld   a, l                                        ; $773b: $7d
	sbc  a                                           ; $773c: $9f
	dec  c                                           ; $773d: $0d
	nop                                              ; $773e: $00
	ld   a, [bc]                                     ; $773f: $0a
	dec  c                                           ; $7740: $0d
	nop                                              ; $7741: $00
	nop                                              ; $7742: $00
	rrca                                             ; $7743: $0f
	nop                                              ; $7744: $00
	ld   bc, $1e09                                   ; $7745: $01 $09 $1e
	nop                                              ; $7748: $00
	inc  e                                           ; $7749: $1c
	ld   bc, $0101                                   ; $774a: $01 $01 $01
	ld   bc, $0008                                   ; $774d: $01 $08 $00
	ld   h, e                                        ; $7750: $63
	and  c                                           ; $7751: $a1
	sbc  a                                           ; $7752: $9f
	dec  c                                           ; $7753: $0d
	ld   e, b                                        ; $7754: $58
	ld   a, l                                        ; $7755: $7d
	sub  [hl]                                        ; $7756: $96
	ld   d, h                                        ; $7757: $54
	ld   h, d                                        ; $7758: $62
	ld   h, h                                        ; $7759: $64
	ld   d, d                                        ; $775a: $52
	adc  h                                           ; $775b: $8c
	ld   h, a                                        ; $775c: $67
	sbc  a                                           ; $775d: $9f
	dec  c                                           ; $775e: $0d
	nop                                              ; $775f: $00
	ld   a, [bc]                                     ; $7760: $0a
	rrca                                             ; $7761: $0f
	nop                                              ; $7762: $00
	ld   bc, $5801                                   ; $7763: $01 $01 $58
	ld   a, l                                        ; $7766: $7d
	sub  [hl]                                        ; $7767: $96
	ld   d, h                                        ; $7768: $54
	ld   h, d                                        ; $7769: $62
	ld   h, h                                        ; $776a: $64
	ld   d, d                                        ; $776b: $52
	adc  h                                           ; $776c: $8c
	ld   h, a                                        ; $776d: $67
	sbc  a                                           ; $776e: $9f
	dec  c                                           ; $776f: $0d
	ld   h, e                                        ; $7770: $63
	ld   e, l                                        ; $7771: $5d
	sub  a                                           ; $7772: $97
	ld   h, e                                        ; $7773: $63
	and  c                                           ; $7774: $a1
	sbc  a                                           ; $7775: $9f
	dec  c                                           ; $7776: $0d
	nop                                              ; $7777: $00
	ld   a, [bc]                                     ; $7778: $0a
	rrca                                             ; $7779: $0f
	ld   bc, $0101                                   ; $777a: $01 $01 $01
	ld   [bc], a                                     ; $777d: $02
	and  l                                           ; $777e: $a5
	inc  b                                           ; $777f: $04
	xor  d                                           ; $7780: $aa
	sub  b                                           ; $7781: $90
	ld   [bc], a                                     ; $7782: $02
	jr   nz, jr_04d_7789                             ; $7783: $20 $04

	xor  d                                           ; $7785: $aa
	sbc  [hl]                                        ; $7786: $9e
	dec  c                                           ; $7787: $0d
	ld   e, d                                        ; $7788: $5a

jr_04d_7789:
	and  c                                           ; $7789: $a1
	ld   a, [hl]                                     ; $778a: $7e
	sbc  b                                           ; $778b: $98
	adc  h                                           ; $778c: $8c
	ld   h, l                                        ; $778d: $65
	sub  l                                           ; $778e: $95
	ld   d, h                                        ; $778f: $54
	ld   a, e                                        ; $7790: $7b
	sbc  a                                           ; $7791: $9f
	dec  c                                           ; $7792: $0d
	ld   l, e                                        ; $7793: $6b
	sbc  d                                           ; $7794: $9a
	ld   [hl], l                                     ; $7795: $75
	ld   a, l                                        ; $7796: $7d
	adc  h                                           ; $7797: $8c
	ld   l, l                                        ; $7798: $6d
	sbc  a                                           ; $7799: $9f
	dec  c                                           ; $779a: $0d
	nop                                              ; $779b: $00
	ld   a, [bc]                                     ; $779c: $0a
	dec  c                                           ; $779d: $0d
	nop                                              ; $779e: $00
	nop                                              ; $779f: $00
	rrca                                             ; $77a0: $0f
	nop                                              ; $77a1: $00
	ld   bc, $1e09                                   ; $77a2: $01 $09 $1e
	nop                                              ; $77a5: $00
	nop                                              ; $77a6: $00
	ld   [bc], a                                     ; $77a7: $02
	rlca                                             ; $77a8: $07
	ld   sp, $0300                                   ; $77a9: $31 $00 $03
	inc  de                                          ; $77ac: $13
	ld   bc, $2265                                   ; $77ad: $01 $65 $22
	nop                                              ; $77b0: $00
	rlca                                             ; $77b1: $07
	ld   h, c                                        ; $77b2: $61
	nop                                              ; $77b3: $00
	inc  bc                                          ; $77b4: $03
	inc  de                                          ; $77b5: $13
	ld   bc, $2566                                   ; $77b6: $01 $66 $25
	inc  bc                                          ; $77b9: $03
	inc  de                                          ; $77ba: $13
	ld   bc, $2278                                   ; $77bb: $01 $78 $22
	inc  e                                           ; $77be: $1c
	nop                                              ; $77bf: $00
	rlca                                             ; $77c0: $07
	sub  a                                           ; $77c1: $97
	nop                                              ; $77c2: $00
	inc  bc                                          ; $77c3: $03
	inc  de                                          ; $77c4: $13
	ld   bc, $2578                                   ; $77c5: $01 $78 $25
	inc  bc                                          ; $77c8: $03
	inc  de                                          ; $77c9: $13
	ld   bc, $2291                                   ; $77ca: $01 $91 $22
	inc  e                                           ; $77cd: $1c
	nop                                              ; $77ce: $00
	rlca                                             ; $77cf: $07
	push de                                          ; $77d0: $d5
	nop                                              ; $77d1: $00
	inc  bc                                          ; $77d2: $03
	inc  de                                          ; $77d3: $13
	ld   bc, $2591                                   ; $77d4: $01 $91 $25
	nop                                              ; $77d7: $00
	rrca                                             ; $77d8: $0f
	nop                                              ; $77d9: $00
	ld   bc, $df01                                   ; $77da: $01 $01 $df
	db   $ec                                         ; $77dd: $ec
	and  e                                           ; $77de: $a3
	ld   h, e                                        ; $77df: $63
	and  c                                           ; $77e0: $a1
	sbc  a                                           ; $77e1: $9f
	dec  c                                           ; $77e2: $0d
	nop                                              ; $77e3: $00
	ld   a, [bc]                                     ; $77e4: $0a
	inc  e                                           ; $77e5: $1c
	inc  bc                                          ; $77e6: $03
	nop                                              ; $77e7: $00
	nop                                              ; $77e8: $00
	ld   bc, $8c52                                   ; $77e9: $01 $52 $8c
	dec  b                                           ; $77ec: $05
	jr   z, @+$54                                    ; $77ed: $28 $52

	ld   [hl], l                                     ; $77ef: $75
	sbc  c                                           ; $77f0: $99
	ld   a, h                                        ; $77f1: $7c
	sbc  a                                           ; $77f2: $9f
	dec  c                                           ; $77f3: $0d
	adc  h                                           ; $77f4: $8c
	ld   l, l                                        ; $77f5: $6d
	sbc  [hl]                                        ; $77f6: $9e
	ld   [bc], a                                     ; $77f7: $02
	xor  d                                           ; $77f8: $aa
	ld   [hl], l                                     ; $77f9: $75
	ld   a, e                                        ; $77fa: $7b
	sbc  a                                           ; $77fb: $9f
	dec  c                                           ; $77fc: $0d
	nop                                              ; $77fd: $00
	ld   a, [bc]                                     ; $77fe: $0a
	dec  c                                           ; $77ff: $0d
	nop                                              ; $7800: $00
	nop                                              ; $7801: $00
	rrca                                             ; $7802: $0f
	nop                                              ; $7803: $00
	ld   bc, $1e09                                   ; $7804: $01 $09 $1e
	nop                                              ; $7807: $00
	dec  c                                           ; $7808: $0d
	inc  bc                                          ; $7809: $03
	nop                                              ; $780a: $00
	rrca                                             ; $780b: $0f
	nop                                              ; $780c: $00
	ld   bc, $df01                                   ; $780d: $01 $01 $df
	db   $ec                                         ; $7810: $ec
	and  e                                           ; $7811: $a3
	ld   h, e                                        ; $7812: $63
	and  c                                           ; $7813: $a1
	sbc  [hl]                                        ; $7814: $9e
	dec  c                                           ; $7815: $0d
	ld   e, b                                        ; $7816: $58
	ld   a, l                                        ; $7817: $7d
	sub  [hl]                                        ; $7818: $96
	ld   d, h                                        ; $7819: $54
	ld   h, d                                        ; $781a: $62
	ld   h, h                                        ; $781b: $64
	ld   d, d                                        ; $781c: $52
	adc  h                                           ; $781d: $8c
	ld   h, a                                        ; $781e: $67
	sbc  a                                           ; $781f: $9f
	dec  c                                           ; $7820: $0d
	nop                                              ; $7821: $00
	ld   a, [bc]                                     ; $7822: $0a
	rrca                                             ; $7823: $0f
	inc  bc                                          ; $7824: $03
	nop                                              ; $7825: $00
	ld   bc, $7d58                                   ; $7826: $01 $58 $7d
	sub  [hl]                                        ; $7829: $96
	ld   d, h                                        ; $782a: $54
	sbc  a                                           ; $782b: $9f
	dec  c                                           ; $782c: $0d
	ld   h, [hl]                                     ; $782d: $66
	sub  c                                           ; $782e: $91
	ld   d, b                                        ; $782f: $50
	ld   a, e                                        ; $7830: $7b
	sbc  a                                           ; $7831: $9f
	dec  c                                           ; $7832: $0d
	nop                                              ; $7833: $00
	ld   a, [bc]                                     ; $7834: $0a
	dec  c                                           ; $7835: $0d
	nop                                              ; $7836: $00
	nop                                              ; $7837: $00
	rrca                                             ; $7838: $0f
	nop                                              ; $7839: $00
	ld   bc, $1e09                                   ; $783a: $01 $09 $1e
	nop                                              ; $783d: $00
	rrca                                             ; $783e: $0f
	nop                                              ; $783f: $00
	ld   bc, $030d                                   ; $7840: $01 $0d $03
	nop                                              ; $7843: $00
	ld   bc, $ecdf                                   ; $7844: $01 $df $ec
	and  e                                           ; $7847: $a3
	ld   h, e                                        ; $7848: $63
	and  c                                           ; $7849: $a1
	sbc  [hl]                                        ; $784a: $9e
	dec  c                                           ; $784b: $0d
	ld   e, b                                        ; $784c: $58
	ld   a, l                                        ; $784d: $7d
	sub  [hl]                                        ; $784e: $96
	ld   d, h                                        ; $784f: $54
	ld   h, d                                        ; $7850: $62
	ld   h, h                                        ; $7851: $64
	ld   d, d                                        ; $7852: $52
	adc  h                                           ; $7853: $8c
	ld   h, a                                        ; $7854: $67
	sbc  a                                           ; $7855: $9f
	dec  c                                           ; $7856: $0d
	nop                                              ; $7857: $00
	ld   a, [bc]                                     ; $7858: $0a
	rrca                                             ; $7859: $0f
	inc  bc                                          ; $785a: $03
	nop                                              ; $785b: $00
	ld   bc, $7d58                                   ; $785c: $01 $58 $7d
	sub  [hl]                                        ; $785f: $96
	ld   d, h                                        ; $7860: $54
	sbc  a                                           ; $7861: $9f
	dec  c                                           ; $7862: $0d
	ld   [$5d00], sp                                 ; $7863: $08 $00 $5d
	and  c                                           ; $7866: $a1
	sbc  a                                           ; $7867: $9f
	dec  c                                           ; $7868: $0d
	ld   l, e                                        ; $7869: $6b
	sbc  d                                           ; $786a: $9a
	ld   h, [hl]                                     ; $786b: $66
	sub  c                                           ; $786c: $91
	ld   d, b                                        ; $786d: $50
	ld   a, e                                        ; $786e: $7b
	sbc  a                                           ; $786f: $9f
	dec  c                                           ; $7870: $0d
	nop                                              ; $7871: $00
	ld   a, [bc]                                     ; $7872: $0a
	dec  c                                           ; $7873: $0d
	nop                                              ; $7874: $00
	nop                                              ; $7875: $00
	rrca                                             ; $7876: $0f
	nop                                              ; $7877: $00
	ld   bc, $1e09                                   ; $7878: $01 $09 $1e
	nop                                              ; $787b: $00
	inc  e                                           ; $787c: $1c
	inc  bc                                          ; $787d: $03
	inc  bc                                          ; $787e: $03
	inc  bc                                          ; $787f: $03
	ld   bc, $0008                                   ; $7880: $01 $08 $00
	ld   e, l                                        ; $7883: $5d
	and  c                                           ; $7884: $a1
	sbc  [hl]                                        ; $7885: $9e
	dec  c                                           ; $7886: $0d
	ld   e, b                                        ; $7887: $58
	ld   a, l                                        ; $7888: $7d
	sub  [hl]                                        ; $7889: $96
	ld   d, h                                        ; $788a: $54
	sbc  a                                           ; $788b: $9f
	dec  c                                           ; $788c: $0d
	nop                                              ; $788d: $00
	ld   a, [bc]                                     ; $788e: $0a
	rrca                                             ; $788f: $0f
	nop                                              ; $7890: $00
	ld   bc, $5801                                   ; $7891: $01 $01 $58
	ld   a, l                                        ; $7894: $7d
	sub  [hl]                                        ; $7895: $96
	ld   d, h                                        ; $7896: $54
	ld   h, d                                        ; $7897: $62
	ld   h, h                                        ; $7898: $64
	ld   d, d                                        ; $7899: $52
	adc  h                                           ; $789a: $8c
	ld   h, a                                        ; $789b: $67
	sbc  a                                           ; $789c: $9f
	dec  c                                           ; $789d: $0d
	rst  JumpTable                                         ; $789e: $df
	db   $ec                                         ; $789f: $ec
	and  e                                           ; $78a0: $a3
	ld   h, e                                        ; $78a1: $63
	and  c                                           ; $78a2: $a1
	sbc  a                                           ; $78a3: $9f
	dec  c                                           ; $78a4: $0d
	nop                                              ; $78a5: $00
	ld   a, [bc]                                     ; $78a6: $0a
	rrca                                             ; $78a7: $0f
	inc  bc                                          ; $78a8: $03
	inc  bc                                          ; $78a9: $03
	ld   bc, $a502                                   ; $78aa: $01 $02 $a5
	inc  b                                           ; $78ad: $04
	xor  d                                           ; $78ae: $aa
	sub  b                                           ; $78af: $90
	ld   [bc], a                                     ; $78b0: $02
	jr   nz, jr_04d_78b7                             ; $78b1: $20 $04

	xor  d                                           ; $78b3: $aa
	sbc  [hl]                                        ; $78b4: $9e
	dec  c                                           ; $78b5: $0d
	ld   e, d                                        ; $78b6: $5a

jr_04d_78b7:
	and  c                                           ; $78b7: $a1
	ld   a, [hl]                                     ; $78b8: $7e
	sbc  b                                           ; $78b9: $98
	adc  h                                           ; $78ba: $8c
	ld   h, l                                        ; $78bb: $65
	sub  l                                           ; $78bc: $95
	ld   d, h                                        ; $78bd: $54
	sbc  a                                           ; $78be: $9f
	dec  c                                           ; $78bf: $0d
	ld   l, e                                        ; $78c0: $6b
	sbc  d                                           ; $78c1: $9a
	ld   h, [hl]                                     ; $78c2: $66
	sub  c                                           ; $78c3: $91
	ld   d, b                                        ; $78c4: $50
	ld   a, e                                        ; $78c5: $7b
	sbc  a                                           ; $78c6: $9f
	dec  c                                           ; $78c7: $0d
	nop                                              ; $78c8: $00
	ld   a, [bc]                                     ; $78c9: $0a
	dec  c                                           ; $78ca: $0d
	nop                                              ; $78cb: $00
	nop                                              ; $78cc: $00
	rrca                                             ; $78cd: $0f
	nop                                              ; $78ce: $00
	ld   bc, $1e09                                   ; $78cf: $01 $09 $1e
	nop                                              ; $78d2: $00
	nop                                              ; $78d3: $00
	ld   [bc], a                                     ; $78d4: $02
	rlca                                             ; $78d5: $07
	ld   sp, $0300                                   ; $78d6: $31 $00 $03
	inc  d                                           ; $78d9: $14
	ld   bc, $2265                                   ; $78da: $01 $65 $22
	nop                                              ; $78dd: $00
	rlca                                             ; $78de: $07
	ld   h, h                                        ; $78df: $64
	nop                                              ; $78e0: $00
	inc  bc                                          ; $78e1: $03
	inc  d                                           ; $78e2: $14
	ld   bc, $2566                                   ; $78e3: $01 $66 $25
	inc  bc                                          ; $78e6: $03
	inc  d                                           ; $78e7: $14
	ld   bc, $2278                                   ; $78e8: $01 $78 $22
	inc  e                                           ; $78eb: $1c
	nop                                              ; $78ec: $00
	rlca                                             ; $78ed: $07
	sub  d                                           ; $78ee: $92
	nop                                              ; $78ef: $00
	inc  bc                                          ; $78f0: $03
	inc  d                                           ; $78f1: $14
	ld   bc, $2578                                   ; $78f2: $01 $78 $25
	inc  bc                                          ; $78f5: $03
	inc  d                                           ; $78f6: $14
	ld   bc, $2291                                   ; $78f7: $01 $91 $22
	inc  e                                           ; $78fa: $1c
	nop                                              ; $78fb: $00
	rlca                                             ; $78fc: $07
	jp   z, $0300                                    ; $78fd: $ca $00 $03

	inc  d                                           ; $7900: $14
	ld   bc, $2591                                   ; $7901: $01 $91 $25
	nop                                              ; $7904: $00
	rrca                                             ; $7905: $0f
	nop                                              ; $7906: $00
	ld   bc, $5801                                   ; $7907: $01 $01 $58
	ld   a, l                                        ; $790a: $7d
	sub  [hl]                                        ; $790b: $96
	ld   d, h                                        ; $790c: $54
	sbc  [hl]                                        ; $790d: $9e
	and  e                                           ; $790e: $a3
	and  l                                           ; $790f: $a5
	db   $ec                                         ; $7910: $ec
	cp   d                                           ; $7911: $ba
	sbc  a                                           ; $7912: $9f
	dec  c                                           ; $7913: $0d
	nop                                              ; $7914: $00
	ld   a, [bc]                                     ; $7915: $0a
	inc  e                                           ; $7916: $1c
	inc  b                                           ; $7917: $04
	nop                                              ; $7918: $00
	nop                                              ; $7919: $00
	ld   bc, $a5a3                                   ; $791a: $01 $a3 $a5
	db   $ec                                         ; $791d: $ec
	cp   d                                           ; $791e: $ba
	sbc  [hl]                                        ; $791f: $9e
	ld   d, d                                        ; $7920: $52
	ld   l, e                                        ; $7921: $6b
	ld   e, d                                        ; $7922: $5a
	ld   h, l                                        ; $7923: $65
	ld   d, d                                        ; $7924: $52
	ld   a, h                                        ; $7925: $7c
	sbc  a                                           ; $7926: $9f
	dec  c                                           ; $7927: $0d
	adc  h                                           ; $7928: $8c
	ld   l, l                                        ; $7929: $6d
	ld   a, e                                        ; $792a: $7b
	sbc  a                                           ; $792b: $9f
	dec  c                                           ; $792c: $0d
	nop                                              ; $792d: $00
	ld   a, [bc]                                     ; $792e: $0a
	dec  c                                           ; $792f: $0d
	nop                                              ; $7930: $00
	nop                                              ; $7931: $00
	rrca                                             ; $7932: $0f
	nop                                              ; $7933: $00
	ld   bc, $1e09                                   ; $7934: $01 $09 $1e
	nop                                              ; $7937: $00
	rrca                                             ; $7938: $0f
	nop                                              ; $7939: $00
	ld   bc, $040d                                   ; $793a: $01 $0d $04
	nop                                              ; $793d: $00
	ld   bc, $7d58                                   ; $793e: $01 $58 $7d
	sub  [hl]                                        ; $7941: $96
	ld   d, h                                        ; $7942: $54
	sbc  [hl]                                        ; $7943: $9e
	and  e                                           ; $7944: $a3
	and  l                                           ; $7945: $a5
	db   $ec                                         ; $7946: $ec
	cp   d                                           ; $7947: $ba
	sbc  a                                           ; $7948: $9f
	dec  c                                           ; $7949: $0d
	nop                                              ; $794a: $00
	ld   a, [bc]                                     ; $794b: $0a
	rrca                                             ; $794c: $0f
	inc  b                                           ; $794d: $04
	nop                                              ; $794e: $00
	ld   bc, $7d58                                   ; $794f: $01 $58 $7d
	sub  [hl]                                        ; $7952: $96
	ld   d, h                                        ; $7953: $54
	sbc  a                                           ; $7954: $9f
	dec  c                                           ; $7955: $0d
	adc  h                                           ; $7956: $8c
	ld   l, l                                        ; $7957: $6d
	ld   a, e                                        ; $7958: $7b
	sbc  a                                           ; $7959: $9f
	dec  c                                           ; $795a: $0d
	nop                                              ; $795b: $00
	ld   a, [bc]                                     ; $795c: $0a
	dec  c                                           ; $795d: $0d
	nop                                              ; $795e: $00
	nop                                              ; $795f: $00
	rrca                                             ; $7960: $0f
	nop                                              ; $7961: $00
	ld   bc, $1e09                                   ; $7962: $01 $09 $1e
	nop                                              ; $7965: $00
	rrca                                             ; $7966: $0f
	nop                                              ; $7967: $00
	ld   bc, $040d                                   ; $7968: $01 $0d $04
	nop                                              ; $796b: $00
	ld   bc, $7d58                                   ; $796c: $01 $58 $7d
	sub  [hl]                                        ; $796f: $96
	ld   d, h                                        ; $7970: $54
	sbc  [hl]                                        ; $7971: $9e
	and  e                                           ; $7972: $a3
	and  l                                           ; $7973: $a5
	db   $ec                                         ; $7974: $ec
	cp   d                                           ; $7975: $ba
	sbc  a                                           ; $7976: $9f
	dec  c                                           ; $7977: $0d
	nop                                              ; $7978: $00
	ld   a, [bc]                                     ; $7979: $0a
	inc  e                                           ; $797a: $1c
	inc  b                                           ; $797b: $04
	ld   bc, $0101                                   ; $797c: $01 $01 $01
	ld   e, b                                        ; $797f: $58
	ld   a, l                                        ; $7980: $7d
	sub  [hl]                                        ; $7981: $96
	ld   d, h                                        ; $7982: $54
	sbc  a                                           ; $7983: $9f
	dec  c                                           ; $7984: $0d
	ld   l, a                                        ; $7985: $6f
	ld   d, d                                        ; $7986: $52
	ld   [bc], a                                     ; $7987: $02
	inc  de                                          ; $7988: $13
	ld   l, a                                        ; $7989: $6f
	sub  c                                           ; $798a: $91
	and  c                                           ; $798b: $a1
	sbc  a                                           ; $798c: $9f
	dec  c                                           ; $798d: $0d
	adc  h                                           ; $798e: $8c
	ld   l, l                                        ; $798f: $6d
	ld   a, e                                        ; $7990: $7b
	sbc  a                                           ; $7991: $9f
	dec  c                                           ; $7992: $0d
	nop                                              ; $7993: $00
	ld   a, [bc]                                     ; $7994: $0a
	dec  c                                           ; $7995: $0d
	nop                                              ; $7996: $00
	nop                                              ; $7997: $00
	rrca                                             ; $7998: $0f
	nop                                              ; $7999: $00
	ld   bc, $1e09                                   ; $799a: $01 $09 $1e
	nop                                              ; $799d: $00
	inc  e                                           ; $799e: $1c
	inc  b                                           ; $799f: $04
	ld   bc, $0101                                   ; $79a0: $01 $01 $01
	ld   l, a                                        ; $79a3: $6f
	ld   d, d                                        ; $79a4: $52
	ld   [bc], a                                     ; $79a5: $02
	inc  de                                          ; $79a6: $13
	ld   l, a                                        ; $79a7: $6f
	sub  c                                           ; $79a8: $91
	and  c                                           ; $79a9: $a1
	sbc  [hl]                                        ; $79aa: $9e
	ld   e, b                                        ; $79ab: $58
	ld   a, l                                        ; $79ac: $7d
	sub  [hl]                                        ; $79ad: $96
	ld   d, h                                        ; $79ae: $54
	sbc  a                                           ; $79af: $9f
	dec  c                                           ; $79b0: $0d
	nop                                              ; $79b1: $00
	ld   a, [bc]                                     ; $79b2: $0a
	rrca                                             ; $79b3: $0f
	nop                                              ; $79b4: $00
	ld   bc, $5801                                   ; $79b5: $01 $01 $58
	ld   a, l                                        ; $79b8: $7d
	sub  [hl]                                        ; $79b9: $96
	ld   d, h                                        ; $79ba: $54
	sbc  [hl]                                        ; $79bb: $9e
	and  e                                           ; $79bc: $a3
	and  l                                           ; $79bd: $a5
	db   $ec                                         ; $79be: $ec
	cp   d                                           ; $79bf: $ba
	sbc  a                                           ; $79c0: $9f
	dec  c                                           ; $79c1: $0d
	nop                                              ; $79c2: $00
	ld   a, [bc]                                     ; $79c3: $0a
	rrca                                             ; $79c4: $0f
	inc  b                                           ; $79c5: $04
	ld   bc, $5b01                                   ; $79c6: $01 $01 $5b
	sub  l                                           ; $79c9: $95
	ld   d, h                                        ; $79ca: $54
	sub  b                                           ; $79cb: $90
	sbc  [hl]                                        ; $79cc: $9e
	ld   d, b                                        ; $79cd: $50
	ld   l, e                                        ; $79ce: $6b
	adc  d                                           ; $79cf: $8a
	ld   d, h                                        ; $79d0: $54
	ld   a, e                                        ; $79d1: $7b
	ei                                               ; $79d2: $fb
	sbc  a                                           ; $79d3: $9f
	dec  c                                           ; $79d4: $0d
	ld   h, [hl]                                     ; $79d5: $66
	sub  c                                           ; $79d6: $91
	sbc  [hl]                                        ; $79d7: $9e
	adc  h                                           ; $79d8: $8c
	ld   l, l                                        ; $79d9: $6d
	ld   a, e                                        ; $79da: $7b
	sbc  [hl]                                        ; $79db: $9e
	ld   l, a                                        ; $79dc: $6f
	ld   d, d                                        ; $79dd: $52
	ld   [bc], a                                     ; $79de: $02
	inc  de                                          ; $79df: $13
	ld   l, a                                        ; $79e0: $6f
	sub  c                                           ; $79e1: $91
	and  c                                           ; $79e2: $a1
	sbc  a                                           ; $79e3: $9f
	dec  c                                           ; $79e4: $0d
	nop                                              ; $79e5: $00
	ld   a, [bc]                                     ; $79e6: $0a
	dec  c                                           ; $79e7: $0d
	nop                                              ; $79e8: $00
	nop                                              ; $79e9: $00
	rrca                                             ; $79ea: $0f
	nop                                              ; $79eb: $00
	ld   bc, $1e09                                   ; $79ec: $01 $09 $1e
	nop                                              ; $79ef: $00
	nop                                              ; $79f0: $00
	ld   [bc], a                                     ; $79f1: $02
	rlca                                             ; $79f2: $07
	ld   sp, $0300                                   ; $79f3: $31 $00 $03
	ld   d, $01                                      ; $79f6: $16 $01
	ld   h, l                                        ; $79f8: $65
	ld   [hl+], a                                    ; $79f9: $22
	nop                                              ; $79fa: $00
	rlca                                             ; $79fb: $07
	ld   l, c                                        ; $79fc: $69
	nop                                              ; $79fd: $00
	inc  bc                                          ; $79fe: $03
	ld   d, $01                                      ; $79ff: $16 $01
	ld   h, [hl]                                     ; $7a01: $66
	dec  h                                           ; $7a02: $25
	inc  bc                                          ; $7a03: $03
	ld   d, $01                                      ; $7a04: $16 $01
	ld   a, b                                        ; $7a06: $78
	ld   [hl+], a                                    ; $7a07: $22
	inc  e                                           ; $7a08: $1c
	nop                                              ; $7a09: $00
	rlca                                             ; $7a0a: $07
	sbc  a                                           ; $7a0b: $9f
	nop                                              ; $7a0c: $00
	inc  bc                                          ; $7a0d: $03
	ld   d, $01                                      ; $7a0e: $16 $01
	ld   a, b                                        ; $7a10: $78
	dec  h                                           ; $7a11: $25
	inc  bc                                          ; $7a12: $03
	ld   d, $01                                      ; $7a13: $16 $01
	sub  c                                           ; $7a15: $91
	ld   [hl+], a                                    ; $7a16: $22
	inc  e                                           ; $7a17: $1c
	nop                                              ; $7a18: $00
	rlca                                             ; $7a19: $07
	reti                                             ; $7a1a: $d9


	nop                                              ; $7a1b: $00
	inc  bc                                          ; $7a1c: $03
	ld   d, $01                                      ; $7a1d: $16 $01
	sub  c                                           ; $7a1f: $91
	dec  h                                           ; $7a20: $25
	nop                                              ; $7a21: $00
	rrca                                             ; $7a22: $0f
	nop                                              ; $7a23: $00
	ld   bc, $ac01                                   ; $7a24: $01 $01 $ac
	push af                                          ; $7a27: $f5
	bit  4, e                                        ; $7a28: $cb $63
	and  c                                           ; $7a2a: $a1
	sbc  a                                           ; $7a2b: $9f
	dec  c                                           ; $7a2c: $0d
	nop                                              ; $7a2d: $00
	ld   a, [bc]                                     ; $7a2e: $0a
	inc  e                                           ; $7a2f: $1c
	ld   b, $00                                      ; $7a30: $06 $00
	nop                                              ; $7a32: $00
	ld   bc, $999d                                   ; $7a33: $01 $9d $99
	ld   d, d                                        ; $7a36: $52
	sbc  a                                           ; $7a37: $9f
	ld   l, a                                        ; $7a38: $6f
	sub  l                                           ; $7a39: $95
	ld   d, d                                        ; $7a3a: $52
	halt                                             ; $7a3b: $76
	dec  b                                           ; $7a3c: $05
	jr   z, jr_04d_7a9b                              ; $7a3d: $28 $5c

	ld   a, h                                        ; $7a3f: $7c
	dec  c                                           ; $7a40: $0d
	inc  b                                           ; $7a41: $04
	di                                               ; $7a42: $f3
	ld   e, d                                        ; $7a43: $5a
	ld   d, b                                        ; $7a44: $50
	sbc  c                                           ; $7a45: $99
	and  c                                           ; $7a46: $a1
	ld   l, [hl]                                     ; $7a47: $6e
	sbc  a                                           ; $7a48: $9f
	dec  c                                           ; $7a49: $0d
	adc  h                                           ; $7a4a: $8c
	ld   l, l                                        ; $7a4b: $6d
	ld   a, b                                        ; $7a4c: $78
	sbc  a                                           ; $7a4d: $9f
	dec  c                                           ; $7a4e: $0d
	nop                                              ; $7a4f: $00
	ld   a, [bc]                                     ; $7a50: $0a
	dec  c                                           ; $7a51: $0d
	nop                                              ; $7a52: $00
	nop                                              ; $7a53: $00
	rrca                                             ; $7a54: $0f
	nop                                              ; $7a55: $00
	ld   bc, $1e09                                   ; $7a56: $01 $09 $1e
	nop                                              ; $7a59: $00
	rrca                                             ; $7a5a: $0f
	nop                                              ; $7a5b: $00
	ld   bc, $060d                                   ; $7a5c: $01 $0d $06
	nop                                              ; $7a5f: $00
	ld   bc, $f5ac                                   ; $7a60: $01 $ac $f5
	bit  4, e                                        ; $7a63: $cb $63
	and  c                                           ; $7a65: $a1
	sbc  a                                           ; $7a66: $9f
	dec  c                                           ; $7a67: $0d
	ld   e, b                                        ; $7a68: $58
	ld   a, l                                        ; $7a69: $7d
	sub  [hl]                                        ; $7a6a: $96
	ld   d, h                                        ; $7a6b: $54
	ld   h, d                                        ; $7a6c: $62
	ld   h, h                                        ; $7a6d: $64
	ld   d, d                                        ; $7a6e: $52
	adc  h                                           ; $7a6f: $8c
	ld   h, a                                        ; $7a70: $67
	sbc  a                                           ; $7a71: $9f
	dec  c                                           ; $7a72: $0d
	nop                                              ; $7a73: $00
	ld   a, [bc]                                     ; $7a74: $0a
	rrca                                             ; $7a75: $0f
	ld   b, $00                                      ; $7a76: $06 $00
	ld   bc, $7d58                                   ; $7a78: $01 $58 $7d
	sub  [hl]                                        ; $7a7b: $96
	ld   d, h                                        ; $7a7c: $54
	sbc  a                                           ; $7a7d: $9f
	dec  c                                           ; $7a7e: $0d
	ld   h, [hl]                                     ; $7a7f: $66
	sub  c                                           ; $7a80: $91
	ld   d, b                                        ; $7a81: $50
	ld   a, b                                        ; $7a82: $78
	sbc  a                                           ; $7a83: $9f
	dec  c                                           ; $7a84: $0d
	nop                                              ; $7a85: $00
	ld   a, [bc]                                     ; $7a86: $0a
	dec  c                                           ; $7a87: $0d
	nop                                              ; $7a88: $00
	nop                                              ; $7a89: $00
	rrca                                             ; $7a8a: $0f
	nop                                              ; $7a8b: $00
	ld   bc, $1e09                                   ; $7a8c: $01 $09 $1e
	nop                                              ; $7a8f: $00
	rrca                                             ; $7a90: $0f
	nop                                              ; $7a91: $00
	ld   bc, $060d                                   ; $7a92: $01 $0d $06
	nop                                              ; $7a95: $00
	ld   bc, $f5ac                                   ; $7a96: $01 $ac $f5
	bit  4, e                                        ; $7a99: $cb $63

jr_04d_7a9b:
	and  c                                           ; $7a9b: $a1
	sbc  a                                           ; $7a9c: $9f
	dec  c                                           ; $7a9d: $0d
	ld   e, b                                        ; $7a9e: $58
	ld   a, l                                        ; $7a9f: $7d
	sub  [hl]                                        ; $7aa0: $96
	ld   d, h                                        ; $7aa1: $54
	ld   h, d                                        ; $7aa2: $62
	ld   h, h                                        ; $7aa3: $64
	ld   d, d                                        ; $7aa4: $52
	adc  h                                           ; $7aa5: $8c
	ld   h, a                                        ; $7aa6: $67
	sbc  a                                           ; $7aa7: $9f
	dec  c                                           ; $7aa8: $0d
	nop                                              ; $7aa9: $00
	ld   a, [bc]                                     ; $7aaa: $0a
	inc  e                                           ; $7aab: $1c
	ld   b, $01                                      ; $7aac: $06 $01
	ld   bc, $5801                                   ; $7aae: $01 $01 $58
	ld   a, l                                        ; $7ab1: $7d
	sub  [hl]                                        ; $7ab2: $96
	ld   d, h                                        ; $7ab3: $54
	sbc  a                                           ; $7ab4: $9f
	ld   [$9f00], sp                                 ; $7ab5: $08 $00 $9f
	dec  c                                           ; $7ab8: $0d
	ld   h, [hl]                                     ; $7ab9: $66
	sub  c                                           ; $7aba: $91
	ld   d, b                                        ; $7abb: $50
	ld   a, b                                        ; $7abc: $78
	sbc  a                                           ; $7abd: $9f
	dec  c                                           ; $7abe: $0d
	nop                                              ; $7abf: $00
	ld   a, [bc]                                     ; $7ac0: $0a
	dec  c                                           ; $7ac1: $0d
	nop                                              ; $7ac2: $00
	nop                                              ; $7ac3: $00
	rrca                                             ; $7ac4: $0f
	nop                                              ; $7ac5: $00
	ld   bc, $1e09                                   ; $7ac6: $01 $09 $1e
	nop                                              ; $7ac9: $00
	inc  e                                           ; $7aca: $1c
	ld   b, $01                                      ; $7acb: $06 $01
	ld   bc, $0801                                   ; $7acd: $01 $01 $08
	nop                                              ; $7ad0: $00
	sbc  a                                           ; $7ad1: $9f
	ld   e, b                                        ; $7ad2: $58
	ld   a, l                                        ; $7ad3: $7d
	sub  [hl]                                        ; $7ad4: $96
	ld   d, h                                        ; $7ad5: $54
	sbc  a                                           ; $7ad6: $9f
	dec  c                                           ; $7ad7: $0d
	nop                                              ; $7ad8: $00
	ld   a, [bc]                                     ; $7ad9: $0a
	rrca                                             ; $7ada: $0f
	nop                                              ; $7adb: $00
	ld   bc, $5801                                   ; $7adc: $01 $01 $58
	ld   a, l                                        ; $7adf: $7d
	sub  [hl]                                        ; $7ae0: $96
	ld   d, h                                        ; $7ae1: $54
	ld   h, d                                        ; $7ae2: $62
	ld   h, h                                        ; $7ae3: $64
	ld   d, d                                        ; $7ae4: $52
	adc  h                                           ; $7ae5: $8c
	ld   h, a                                        ; $7ae6: $67
	sbc  a                                           ; $7ae7: $9f
	dec  c                                           ; $7ae8: $0d
	xor  h                                           ; $7ae9: $ac
	push af                                          ; $7aea: $f5
	bit  4, e                                        ; $7aeb: $cb $63
	and  c                                           ; $7aed: $a1
	sbc  a                                           ; $7aee: $9f
	dec  c                                           ; $7aef: $0d
	nop                                              ; $7af0: $00
	ld   a, [bc]                                     ; $7af1: $0a
	rrca                                             ; $7af2: $0f
	ld   b, $01                                      ; $7af3: $06 $01
	ld   bc, $a502                                   ; $7af5: $01 $02 $a5
	inc  b                                           ; $7af8: $04
	xor  d                                           ; $7af9: $aa
	sub  b                                           ; $7afa: $90
	ld   [bc], a                                     ; $7afb: $02
	jr   nz, jr_04d_7b02                             ; $7afc: $20 $04

	xor  d                                           ; $7afe: $aa
	sbc  [hl]                                        ; $7aff: $9e
	dec  c                                           ; $7b00: $0d
	ld   e, d                                        ; $7b01: $5a

jr_04d_7b02:
	and  c                                           ; $7b02: $a1
	ld   a, [hl]                                     ; $7b03: $7e
	sbc  e                                           ; $7b04: $9b
	ld   d, h                                        ; $7b05: $54
	ld   l, d                                        ; $7b06: $6a
	sbc  a                                           ; $7b07: $9f
	dec  c                                           ; $7b08: $0d
	ld   h, [hl]                                     ; $7b09: $66
	sub  c                                           ; $7b0a: $91
	ld   d, b                                        ; $7b0b: $50
	ld   a, b                                        ; $7b0c: $78
	sbc  a                                           ; $7b0d: $9f
	dec  c                                           ; $7b0e: $0d
	nop                                              ; $7b0f: $00
	ld   a, [bc]                                     ; $7b10: $0a
	dec  c                                           ; $7b11: $0d
	nop                                              ; $7b12: $00
	nop                                              ; $7b13: $00
	rrca                                             ; $7b14: $0f
	nop                                              ; $7b15: $00
	ld   bc, $1e09                                   ; $7b16: $01 $09 $1e
	nop                                              ; $7b19: $00
	nop                                              ; $7b1a: $00
	ld   [bc], a                                     ; $7b1b: $02
	rlca                                             ; $7b1c: $07
	ld   sp, $0300                                   ; $7b1d: $31 $00 $03
	dec  d                                           ; $7b20: $15
	ld   bc, $2265                                   ; $7b21: $01 $65 $22
	nop                                              ; $7b24: $00
	rlca                                             ; $7b25: $07
	ld   l, c                                        ; $7b26: $69
	nop                                              ; $7b27: $00
	inc  bc                                          ; $7b28: $03
	dec  d                                           ; $7b29: $15
	ld   bc, $2566                                   ; $7b2a: $01 $66 $25
	inc  bc                                          ; $7b2d: $03
	dec  d                                           ; $7b2e: $15
	ld   bc, $2278                                   ; $7b2f: $01 $78 $22
	inc  e                                           ; $7b32: $1c
	nop                                              ; $7b33: $00
	rlca                                             ; $7b34: $07
	and  b                                           ; $7b35: $a0
	nop                                              ; $7b36: $00
	inc  bc                                          ; $7b37: $03
	dec  d                                           ; $7b38: $15
	ld   bc, $2578                                   ; $7b39: $01 $78 $25
	inc  bc                                          ; $7b3c: $03
	dec  d                                           ; $7b3d: $15
	ld   bc, $2291                                   ; $7b3e: $01 $91 $22
	inc  e                                           ; $7b41: $1c
	nop                                              ; $7b42: $00
	rlca                                             ; $7b43: $07
	sbc  $00                                         ; $7b44: $de $00
	inc  bc                                          ; $7b46: $03
	dec  d                                           ; $7b47: $15
	ld   bc, $2591                                   ; $7b48: $01 $91 $25
	nop                                              ; $7b4b: $00
	rrca                                             ; $7b4c: $0f
	nop                                              ; $7b4d: $00
	ld   bc, $0201                                   ; $7b4e: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b51: $cf
	dec  b                                           ; $7b52: $05
	ld   a, [de]                                     ; $7b53: $1a
	ld   h, e                                        ; $7b54: $63
	and  c                                           ; $7b55: $a1
	sbc  a                                           ; $7b56: $9f
	dec  c                                           ; $7b57: $0d
	nop                                              ; $7b58: $00
	ld   a, [bc]                                     ; $7b59: $0a
	inc  e                                           ; $7b5a: $1c
	dec  b                                           ; $7b5b: $05
	nop                                              ; $7b5c: $00
	nop                                              ; $7b5d: $00
	ld   bc, $a502                                   ; $7b5e: $01 $02 $a5
	ld   l, a                                        ; $7b61: $6f
	sub  l                                           ; $7b62: $95
	ld   [hl], c                                     ; $7b63: $71
	halt                                             ; $7b64: $76
	sbc  [hl]                                        ; $7b65: $9e
	inc  b                                           ; $7b66: $04
	ld   c, $04                                      ; $7b67: $0e $04
	adc  h                                           ; $7b69: $8c
	ld   a, b                                        ; $7b6a: $78
	and  c                                           ; $7b6b: $a1
	sub  d                                           ; $7b6c: $92
	sbc  a                                           ; $7b6d: $9f
	dec  c                                           ; $7b6e: $0d
	ld   h, a                                        ; $7b6f: $67
	adc  h                                           ; $7b70: $8c
	and  c                                           ; $7b71: $a1
	ld   a, b                                        ; $7b72: $78
	db   $fc                                         ; $7b73: $fc
	sbc  a                                           ; $7b74: $9f
	adc  c                                           ; $7b75: $89
	ld   a, b                                        ; $7b76: $78
	sbc  a                                           ; $7b77: $9f
	dec  c                                           ; $7b78: $0d
	nop                                              ; $7b79: $00
	ld   a, [bc]                                     ; $7b7a: $0a
	dec  c                                           ; $7b7b: $0d
	nop                                              ; $7b7c: $00
	nop                                              ; $7b7d: $00
	rrca                                             ; $7b7e: $0f
	nop                                              ; $7b7f: $00
	ld   bc, $1e09                                   ; $7b80: $01 $09 $1e
	nop                                              ; $7b83: $00
	rrca                                             ; $7b84: $0f
	nop                                              ; $7b85: $00
	ld   bc, $050d                                   ; $7b86: $01 $0d $05
	nop                                              ; $7b89: $00
	ld   bc, $cf02                                   ; $7b8a: $01 $02 $cf
	dec  b                                           ; $7b8d: $05
	ld   a, [de]                                     ; $7b8e: $1a
	ld   h, e                                        ; $7b8f: $63
	and  c                                           ; $7b90: $a1
	sbc  a                                           ; $7b91: $9f
	dec  c                                           ; $7b92: $0d
	ld   e, b                                        ; $7b93: $58
	ld   a, l                                        ; $7b94: $7d
	sub  [hl]                                        ; $7b95: $96
	ld   d, h                                        ; $7b96: $54
	ld   h, d                                        ; $7b97: $62
	ld   h, h                                        ; $7b98: $64
	ld   d, d                                        ; $7b99: $52
	adc  h                                           ; $7b9a: $8c
	ld   h, a                                        ; $7b9b: $67
	sbc  a                                           ; $7b9c: $9f
	dec  c                                           ; $7b9d: $0d
	nop                                              ; $7b9e: $00
	ld   a, [bc]                                     ; $7b9f: $0a
	rrca                                             ; $7ba0: $0f
	dec  b                                           ; $7ba1: $05
	nop                                              ; $7ba2: $00
	ld   bc, $7d58                                   ; $7ba3: $01 $58 $7d
	sub  [hl]                                        ; $7ba6: $96
	ld   d, h                                        ; $7ba7: $54
	ld   h, e                                        ; $7ba8: $63
	and  c                                           ; $7ba9: $a1
	sbc  a                                           ; $7baa: $9f
	dec  c                                           ; $7bab: $0d
	adc  c                                           ; $7bac: $89
	ld   a, b                                        ; $7bad: $78
	sbc  a                                           ; $7bae: $9f
	dec  c                                           ; $7baf: $0d
	nop                                              ; $7bb0: $00
	ld   a, [bc]                                     ; $7bb1: $0a
	dec  c                                           ; $7bb2: $0d
	nop                                              ; $7bb3: $00
	nop                                              ; $7bb4: $00
	rrca                                             ; $7bb5: $0f
	nop                                              ; $7bb6: $00
	ld   bc, $1e09                                   ; $7bb7: $01 $09 $1e
	nop                                              ; $7bba: $00
	rrca                                             ; $7bbb: $0f
	nop                                              ; $7bbc: $00
	ld   bc, $050d                                   ; $7bbd: $01 $0d $05
	nop                                              ; $7bc0: $00
	ld   bc, $cf02                                   ; $7bc1: $01 $02 $cf
	dec  b                                           ; $7bc4: $05
	ld   a, [de]                                     ; $7bc5: $1a
	ld   h, e                                        ; $7bc6: $63
	and  c                                           ; $7bc7: $a1
	sbc  a                                           ; $7bc8: $9f
	dec  c                                           ; $7bc9: $0d
	ld   e, b                                        ; $7bca: $58
	ld   a, l                                        ; $7bcb: $7d
	sub  [hl]                                        ; $7bcc: $96
	ld   d, h                                        ; $7bcd: $54
	ld   h, d                                        ; $7bce: $62
	ld   h, h                                        ; $7bcf: $64
	ld   d, d                                        ; $7bd0: $52
	adc  h                                           ; $7bd1: $8c
	ld   h, a                                        ; $7bd2: $67
	sbc  a                                           ; $7bd3: $9f
	dec  c                                           ; $7bd4: $0d
	nop                                              ; $7bd5: $00
	ld   a, [bc]                                     ; $7bd6: $0a
	inc  e                                           ; $7bd7: $1c
	dec  b                                           ; $7bd8: $05
	ld   bc, $0101                                   ; $7bd9: $01 $01 $01
	ld   [$7d00], sp                                 ; $7bdc: $08 $00 $7d
	and  c                                           ; $7bdf: $a1
	sbc  a                                           ; $7be0: $9f
	dec  c                                           ; $7be1: $0d
	ld   e, b                                        ; $7be2: $58
	ld   a, l                                        ; $7be3: $7d
	sub  [hl]                                        ; $7be4: $96
	ld   d, h                                        ; $7be5: $54
	ld   h, e                                        ; $7be6: $63
	and  c                                           ; $7be7: $a1
	sbc  a                                           ; $7be8: $9f
	dec  c                                           ; $7be9: $0d
	adc  c                                           ; $7bea: $89
	ld   a, b                                        ; $7beb: $78
	sbc  a                                           ; $7bec: $9f
	dec  c                                           ; $7bed: $0d
	nop                                              ; $7bee: $00
	ld   a, [bc]                                     ; $7bef: $0a
	dec  c                                           ; $7bf0: $0d
	nop                                              ; $7bf1: $00
	nop                                              ; $7bf2: $00
	rrca                                             ; $7bf3: $0f
	nop                                              ; $7bf4: $00
	ld   bc, $1e09                                   ; $7bf5: $01 $09 $1e
	nop                                              ; $7bf8: $00
	inc  e                                           ; $7bf9: $1c
	dec  b                                           ; $7bfa: $05
	ld   bc, $0101                                   ; $7bfb: $01 $01 $01
	ld   e, b                                        ; $7bfe: $58
	ld   a, l                                        ; $7bff: $7d
	sub  [hl]                                        ; $7c00: $96
	ld   d, h                                        ; $7c01: $54
	ld   h, e                                        ; $7c02: $63
	and  c                                           ; $7c03: $a1
	sbc  a                                           ; $7c04: $9f
	dec  c                                           ; $7c05: $0d
	ld   [$7d00], sp                                 ; $7c06: $08 $00 $7d
	and  c                                           ; $7c09: $a1
	sbc  a                                           ; $7c0a: $9f
	dec  c                                           ; $7c0b: $0d
	nop                                              ; $7c0c: $00
	ld   a, [bc]                                     ; $7c0d: $0a
	rrca                                             ; $7c0e: $0f
	nop                                              ; $7c0f: $00
	ld   bc, $5801                                   ; $7c10: $01 $01 $58
	ld   a, l                                        ; $7c13: $7d
	sub  [hl]                                        ; $7c14: $96
	ld   d, h                                        ; $7c15: $54
	ld   h, d                                        ; $7c16: $62
	ld   h, h                                        ; $7c17: $64
	ld   d, d                                        ; $7c18: $52
	adc  h                                           ; $7c19: $8c
	ld   h, a                                        ; $7c1a: $67
	sbc  a                                           ; $7c1b: $9f
	dec  c                                           ; $7c1c: $0d
	ld   [bc], a                                     ; $7c1d: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c1e: $cf
	dec  b                                           ; $7c1f: $05
	ld   a, [de]                                     ; $7c20: $1a
	ld   h, e                                        ; $7c21: $63
	and  c                                           ; $7c22: $a1
	sbc  a                                           ; $7c23: $9f
	dec  c                                           ; $7c24: $0d
	nop                                              ; $7c25: $00
	ld   a, [bc]                                     ; $7c26: $0a
	rrca                                             ; $7c27: $0f
	dec  b                                           ; $7c28: $05
	ld   bc, $0201                                   ; $7c29: $01 $01 $02
	and  l                                           ; $7c2c: $a5
	inc  b                                           ; $7c2d: $04
	xor  d                                           ; $7c2e: $aa
	sub  b                                           ; $7c2f: $90
	ret  nc                                          ; $7c30: $d0

	db   $ec                                         ; $7c31: $ec
	ld   e, e                                        ; $7c32: $5b
	ld   [hl], c                                     ; $7c33: $71
	ld   [hl], h                                     ; $7c34: $74
	ld   [bc], a                                     ; $7c35: $02
	ld   a, a                                        ; $7c36: $7f
	ld   h, c                                        ; $7c37: $61
	ld   a, b                                        ; $7c38: $78
	sbc  a                                           ; $7c39: $9f
	dec  c                                           ; $7c3a: $0d
	adc  c                                           ; $7c3b: $89
	ld   a, b                                        ; $7c3c: $78
	sbc  a                                           ; $7c3d: $9f
	dec  c                                           ; $7c3e: $0d
	nop                                              ; $7c3f: $00
	ld   a, [bc]                                     ; $7c40: $0a
	dec  c                                           ; $7c41: $0d
	nop                                              ; $7c42: $00
	nop                                              ; $7c43: $00
	rrca                                             ; $7c44: $0f
	nop                                              ; $7c45: $00
	ld   bc, $1e09                                   ; $7c46: $01 $09 $1e
	nop                                              ; $7c49: $00
	nop                                              ; $7c4a: $00
	inc  b                                           ; $7c4b: $04
	add  b                                           ; $7c4c: $80
	jr   jr_04d_7c50                                 ; $7c4d: $18 $01

	rst  $38                                         ; $7c4f: $ff

jr_04d_7c50:
	jr   nz, jr_04d_7c55                             ; $7c50: $20 $03

	ld   e, [hl]                                     ; $7c52: $5e
	ld   [bc], a                                     ; $7c53: $02
	nop                                              ; $7c54: $00

jr_04d_7c55:
	jr   nz, jr_04d_7c73                             ; $7c55: $20 $1c

	nop                                              ; $7c57: $00
	rrca                                             ; $7c58: $0f
	nop                                              ; $7c59: $00
	ld   bc, $0706                                   ; $7c5a: $01 $06 $07
	nop                                              ; $7c5d: $00
	ld   [bc], a                                     ; $7c5e: $02
	rlca                                             ; $7c5f: $07
	ret  nz                                          ; $7c60: $c0

	ld   [bc], a                                     ; $7c61: $02
	inc  bc                                          ; $7c62: $03
	ld   c, a                                        ; $7c63: $4f
	ld   [bc], a                                     ; $7c64: $02
	nop                                              ; $7c65: $00
	inc  bc                                          ; $7c66: $03
	ld   c, c                                        ; $7c67: $49
	add  hl, hl                                      ; $7c68: $29
	add  hl, hl                                      ; $7c69: $29
	ld   bc, $2501                                   ; $7c6a: $01 $01 $25
	nop                                              ; $7c6d: $00
	ld   c, $04                                      ; $7c6e: $0e $04
	inc  e                                           ; $7c70: $1c
	ld   [bc], a                                     ; $7c71: $02
	nop                                              ; $7c72: $00

jr_04d_7c73:
	nop                                              ; $7c73: $00
	ld   [bc], a                                     ; $7c74: $02
	ld   bc, $9750                                   ; $7c75: $01 $50 $97

Jump_04d_7c78:
	sbc  [hl]                                        ; $7c78: $9e
	ld   [$6300], sp                                 ; $7c79: $08 $00 $63
	and  c                                           ; $7c7c: $a1
	sbc  a                                           ; $7c7d: $9f
	dec  c                                           ; $7c7e: $0d
	ld   d, d                                        ; $7c7f: $52
	ld   d, d                                        ; $7c80: $52
	halt                                             ; $7c81: $76
	ld   h, c                                        ; $7c82: $61
	sbc  e                                           ; $7c83: $9b
	ld   a, c                                        ; $7c84: $79
	sbc  a                                           ; $7c85: $9f
	dec  c                                           ; $7c86: $0d
	nop                                              ; $7c87: $00
	ld   a, [bc]                                     ; $7c88: $0a
	ld   bc, $9a61                                   ; $7c89: $01 $61 $9a
	ld   e, c                                        ; $7c8c: $59
	sub  a                                           ; $7c8d: $97
	sbc  [hl]                                        ; $7c8e: $9e
	ld   l, a                                        ; $7c8f: $6f
	sub  l                                           ; $7c90: $95
	ld   [hl], c                                     ; $7c91: $71
	halt                                             ; $7c92: $76
	dec  c                                           ; $7c93: $0d
	ld   e, b                                        ; $7c94: $58
	inc  b                                           ; $7c95: $04
	adc  l                                           ; $7c96: $8d
	ld   d, d                                        ; $7c97: $52
	inc  b                                           ; $7c98: $04
	sub  d                                           ; $7c99: $92
	ld   a, c                                        ; $7c9a: $79
	ld   [bc], a                                     ; $7c9b: $02
	ld   a, a                                        ; $7c9c: $7f
	ld   e, l                                        ; $7c9d: $5d
	ld   a, h                                        ; $7c9e: $7c
	ld   [hl], l                                     ; $7c9f: $75
	ld   h, a                                        ; $7ca0: $67
	ld   e, d                                        ; $7ca1: $5a
	dec  c                                           ; $7ca2: $0d
	inc  b                                           ; $7ca3: $04
	ld   [hl], c                                     ; $7ca4: $71
	ld   e, e                                        ; $7ca5: $5b
	ld   [bc], a                                     ; $7ca6: $02
	ld   a, e                                        ; $7ca7: $7b
	ld   [hl], c                                     ; $7ca8: $71
	ld   [hl], h                                     ; $7ca9: $74
	ld   e, l                                        ; $7caa: $5d
	ld   l, [hl]                                     ; $7cab: $6e
	ld   h, e                                        ; $7cac: $63
	sub  a                                           ; $7cad: $97
	ld   a, b                                        ; $7cae: $78
	ld   d, d                                        ; $7caf: $52
	sbc  a                                           ; $7cb0: $9f
	dec  c                                           ; $7cb1: $0d
	nop                                              ; $7cb2: $00
	ld   a, [bc]                                     ; $7cb3: $0a
	add  hl, de                                      ; $7cb4: $19
	dec  b                                           ; $7cb5: $05
	inc  bc                                          ; $7cb6: $03
	ld   a, l                                        ; $7cb7: $7d
	ld   d, d                                        ; $7cb8: $52
	nop                                              ; $7cb9: $00
	nop                                              ; $7cba: $00
	ld   d, d                                        ; $7cbb: $52
	ld   d, d                                        ; $7cbc: $52
	ld   d, [hl]                                     ; $7cbd: $56
	nop                                              ; $7cbe: $00
	ld   bc, $a205                                   ; $7cbf: $01 $05 $a2
	dec  b                                           ; $7cc2: $05
	ld   b, b                                        ; $7cc3: $40
	ld   e, d                                        ; $7cc4: $5a
	rst  $38                                         ; $7cc5: $ff
	rst  $38                                         ; $7cc6: $ff
	nop                                              ; $7cc7: $00
	ld   [bc], a                                     ; $7cc8: $02
	rlca                                             ; $7cc9: $07
	adc  a                                           ; $7cca: $8f
	nop                                              ; $7ccb: $00
	ld   [bc], a                                     ; $7ccc: $02
	inc  bc                                          ; $7ccd: $03
	ld   bc, $2000                                   ; $7cce: $01 $00 $20
	nop                                              ; $7cd1: $00
	rlca                                             ; $7cd2: $07
	ld   d, h                                        ; $7cd3: $54
	ld   bc, $0302                                   ; $7cd4: $01 $02 $03
	ld   bc, $2001                                   ; $7cd7: $01 $01 $20
	nop                                              ; $7cda: $00
	rlca                                             ; $7cdb: $07
	sub  $01                                         ; $7cdc: $d6 $01
	ld   [bc], a                                     ; $7cde: $02
	inc  bc                                          ; $7cdf: $03
	ld   bc, $2002                                   ; $7ce0: $01 $02 $20
	nop                                              ; $7ce3: $00
	ld   b, $68                                      ; $7ce4: $06 $68
	ld   [bc], a                                     ; $7ce6: $02
	rrca                                             ; $7ce7: $0f
	nop                                              ; $7ce8: $00
	ld   bc, $7d01                                   ; $7ce9: $01 $01 $7d
	ld   d, d                                        ; $7cec: $52
	sbc  [hl]                                        ; $7ced: $9e
	sub  [hl]                                        ; $7cee: $96
	sbc  e                                           ; $7cef: $9b
	ld   h, c                                        ; $7cf0: $61
	and  c                                           ; $7cf1: $a1
	ld   [hl], l                                     ; $7cf2: $75
	sbc  a                                           ; $7cf3: $9f
	dec  c                                           ; $7cf4: $0d
	nop                                              ; $7cf5: $00
	ld   a, [bc]                                     ; $7cf6: $0a
	inc  e                                           ; $7cf7: $1c
	ld   [bc], a                                     ; $7cf8: $02
	ld   bc, $1d01                                   ; $7cf9: $01 $01 $1d
	ld   b, b                                        ; $7cfc: $40
	ld   [de], a                                     ; $7cfd: $12
	inc  bc                                          ; $7cfe: $03
	ld   [de], a                                     ; $7cff: $12
	ld   bc, $2802                                   ; $7d00: $01 $02 $28
	nop                                              ; $7d03: $00
	ld   bc, $7d75                                   ; $7d04: $01 $75 $7d
	sbc  [hl]                                        ; $7d07: $9e
	adc  h                                           ; $7d08: $8c
	ld   d, d                                        ; $7d09: $52
	sbc  b                                           ; $7d0a: $98
	adc  h                                           ; $7d0b: $8c
	ld   h, l                                        ; $7d0c: $65
	sub  l                                           ; $7d0d: $95
	ld   d, h                                        ; $7d0e: $54
	sbc  a                                           ; $7d0f: $9f
	dec  c                                           ; $7d10: $0d
	nop                                              ; $7d11: $00
	ld   a, [bc]                                     ; $7d12: $0a
	inc  e                                           ; $7d13: $1c
	inc  bc                                          ; $7d14: $03
	ld   [bc], a                                     ; $7d15: $02
	ld   [bc], a                                     ; $7d16: $02
	ld   bc, $6177                                   ; $7d17: $01 $77 $61
	add  [hl]                                        ; $7d1a: $86
	db   $fd                                         ; $7d1b: $fd
	adc  h                                           ; $7d1c: $8c
	ld   d, d                                        ; $7d1d: $52
	sbc  c                                           ; $7d1e: $99
	cp   $7c                                         ; $7d1f: $fe $7c
	ld   [hl], l                                     ; $7d21: $75
	ld   h, a                                        ; $7d22: $67
	ld   e, c                                        ; $7d23: $59
	ld   sp, hl                                      ; $7d24: $f9
	dec  c                                           ; $7d25: $0d
	nop                                              ; $7d26: $00
	ld   a, [bc]                                     ; $7d27: $0a
	dec  e                                           ; $7d28: $1d
	ld   b, b                                        ; $7d29: $40
	inc  de                                          ; $7d2a: $13
	inc  bc                                          ; $7d2b: $03
	inc  de                                          ; $7d2c: $13
	ld   bc, $2902                                   ; $7d2d: $01 $02 $29
	nop                                              ; $7d30: $00
	ld   bc, $0008                                   ; $7d31: $01 $08 $00
	ld   e, l                                        ; $7d34: $5d
	and  c                                           ; $7d35: $a1
	sbc  a                                           ; $7d36: $9f
	dec  c                                           ; $7d37: $0d
	inc  b                                           ; $7d38: $04
	dec  c                                           ; $7d39: $0d
	ld   [bc], a                                     ; $7d3a: $02
	sub  [hl]                                        ; $7d3b: $96
	inc  b                                           ; $7d3c: $04
	ld   b, l                                        ; $7d3d: $45
	inc  b                                           ; $7d3e: $04
	ld   a, [bc]                                     ; $7d3f: $0a
	inc  b                                           ; $7d40: $04
	dec  bc                                          ; $7d41: $0b
	ld   [hl], l                                     ; $7d42: $75
	ld   d, b                                        ; $7d43: $50
	sbc  c                                           ; $7d44: $99
	ld   d, b                                        ; $7d45: $50
	ld   a, b                                        ; $7d46: $78
	ld   l, l                                        ; $7d47: $6d
	ld   a, l                                        ; $7d48: $7d
	dec  c                                           ; $7d49: $0d
	inc  b                                           ; $7d4a: $04
	xor  b                                           ; $7d4b: $a8
	inc  b                                           ; $7d4c: $04
	xor  d                                           ; $7d4d: $aa
	ld   a, h                                        ; $7d4e: $7c
	ld   [bc], a                                     ; $7d4f: $02
	rlc  e                                           ; $7d50: $cb $03
	add  b                                           ; $7d52: $80
	ld   a, l                                        ; $7d53: $7d
	ld   [bc], a                                     ; $7d54: $02
	db   $e3                                         ; $7d55: $e3
	inc  bc                                          ; $7d56: $03
	ld   b, c                                        ; $7d57: $41
	ld   a, b                                        ; $7d58: $78
	ld   a, h                                        ; $7d59: $7c
	sub  [hl]                                        ; $7d5a: $96
	sbc  a                                           ; $7d5b: $9f
	dec  c                                           ; $7d5c: $0d
	nop                                              ; $7d5d: $00
	ld   a, [bc]                                     ; $7d5e: $0a
	inc  e                                           ; $7d5f: $1c
	ld   [bc], a                                     ; $7d60: $02
	ld   bc, $0101                                   ; $7d61: $01 $01 $01
	ld   d, b                                        ; $7d64: $50
	sub  a                                           ; $7d65: $97
	sbc  [hl]                                        ; $7d66: $9e
	ld   l, e                                        ; $7d67: $6b
	ld   d, h                                        ; $7d68: $54
	ld   [hl], l                                     ; $7d69: $75
	ld   h, a                                        ; $7d6a: $67
	ld   a, h                                        ; $7d6b: $7c
	sbc  a                                           ; $7d6c: $9f
	dec  c                                           ; $7d6d: $0d
	ld   [hl], l                                     ; $7d6e: $75
	ld   h, l                                        ; $7d6f: $65
	ld   l, l                                        ; $7d70: $6d
	sub  a                                           ; $7d71: $97
	sbc  [hl]                                        ; $7d72: $9e
	sbc  l                                           ; $7d73: $9d
	ld   l, l                                        ; $7d74: $6d
	ld   e, l                                        ; $7d75: $5d
	ld   h, l                                        ; $7d76: $65
	dec  c                                           ; $7d77: $0d
	add  b                                           ; $7d78: $80
	halt                                             ; $7d79: $76
	sbc  b                                           ; $7d7a: $98
	ld   [hl], l                                     ; $7d7b: $75
	ld   [bc], a                                     ; $7d7c: $02
	ld   a, a                                        ; $7d7d: $7f
	ld   [hl], c                                     ; $7d7e: $71
	ld   [hl], h                                     ; $7d7f: $74
	ld   e, e                                        ; $7d80: $5b
	adc  h                                           ; $7d81: $8c
	ld   h, a                                        ; $7d82: $67
	sbc  l                                           ; $7d83: $9d
	sbc  a                                           ; $7d84: $9f
	dec  c                                           ; $7d85: $0d
	nop                                              ; $7d86: $00
	ld   a, [bc]                                     ; $7d87: $0a
	inc  e                                           ; $7d88: $1c
	ld   [bc], a                                     ; $7d89: $02
	jr   nc, jr_04d_7da5                             ; $7d8a: $30 $19

	ld   bc, $8f62                                   ; $7d8c: $01 $62 $8f
	and  c                                           ; $7d8f: $a1
	ld   d, b                                        ; $7d90: $50
	ld   l, e                                        ; $7d91: $6b
	ld   a, [hl]                                     ; $7d92: $7e
	ld   l, c                                        ; $7d93: $69
	sbc  a                                           ; $7d94: $9f
	dec  c                                           ; $7d95: $0d
	ld   e, b                                        ; $7d96: $58
	adc  c                                           ; $7d97: $89
	adc  c                                           ; $7d98: $89
	adc  c                                           ; $7d99: $89
	adc  c                                           ; $7d9a: $89
	adc  c                                           ; $7d9b: $89
	adc  c                                           ; $7d9c: $89
	adc  c                                           ; $7d9d: $89
	adc  c                                           ; $7d9e: $89
	sbc  a                                           ; $7d9f: $9f
	dec  c                                           ; $7da0: $0d
	nop                                              ; $7da1: $00
	ld   a, [bc]                                     ; $7da2: $0a
	dec  c                                           ; $7da3: $0d
	nop                                              ; $7da4: $00

jr_04d_7da5:
	nop                                              ; $7da5: $00
	rrca                                             ; $7da6: $0f
	nop                                              ; $7da7: $00
	ld   bc, $1e09                                   ; $7da8: $01 $09 $1e
	nop                                              ; $7dab: $00
	rrca                                             ; $7dac: $0f
	nop                                              ; $7dad: $00
	ld   bc, $a501                                   ; $7dae: $01 $01 $a5
	and  $75                                         ; $7db1: $e6 $75
	ld   h, a                                        ; $7db3: $67
	sub  [hl]                                        ; $7db4: $96
	sbc  a                                           ; $7db5: $9f
	dec  c                                           ; $7db6: $0d
	ld   [hl], a                                     ; $7db7: $77
	ld   d, h                                        ; $7db8: $54
	ld   l, c                                        ; $7db9: $69
	ld   [bc], a                                     ; $7dba: $02
	rst  JumpTable                                         ; $7dbb: $df
	inc  b                                           ; $7dbc: $04
	sub  d                                           ; $7dbd: $92
	inc  bc                                          ; $7dbe: $03
	and  b                                           ; $7dbf: $a0
	ld   l, a                                        ; $7dc0: $6f
	ld   a, b                                        ; $7dc1: $78
	and  c                                           ; $7dc2: $a1
	ld   [hl], l                                     ; $7dc3: $75
	ld   h, l                                        ; $7dc4: $65
	sub  l                                           ; $7dc5: $95
	sbc  a                                           ; $7dc6: $9f
	dec  c                                           ; $7dc7: $0d
	nop                                              ; $7dc8: $00
	ld   a, [bc]                                     ; $7dc9: $0a
	inc  e                                           ; $7dca: $1c
	ld   [bc], a                                     ; $7dcb: $02
	ld   [bc], a                                     ; $7dcc: $02
	ld   [bc], a                                     ; $7dcd: $02
	ld   bc, $546b                                   ; $7dce: $01 $6b $54
	ld   [hl], l                                     ; $7dd1: $75
	ld   h, a                                        ; $7dd2: $67
	ld   e, c                                        ; $7dd3: $59
	ld   sp, hl                                      ; $7dd4: $f9
	dec  c                                           ; $7dd5: $0d
	sbc  l                                           ; $7dd6: $9d
	ld   l, l                                        ; $7dd7: $6d
	ld   e, l                                        ; $7dd8: $5d
	ld   h, l                                        ; $7dd9: $65
	ld   a, h                                        ; $7dda: $7c
	ld   [bc], a                                     ; $7ddb: $02
	rst  JumpTable                                         ; $7ddc: $df
	inc  b                                           ; $7ddd: $04
	sub  d                                           ; $7dde: $92
	ld   a, l                                        ; $7ddf: $7d
	inc  bc                                          ; $7de0: $03
	and  b                                           ; $7de1: $a0
	ld   [hl], h                                     ; $7de2: $74
	ld   a, b                                        ; $7de3: $78
	ld   d, d                                        ; $7de4: $52
	halt                                             ; $7de5: $76
	dec  c                                           ; $7de6: $0d
	ld   h, c                                        ; $7de7: $61
	ld   d, h                                        ; $7de8: $54
	ld   e, b                                        ; $7de9: $58
	ld   [hl], c                                     ; $7dea: $71
	ld   h, l                                        ; $7deb: $65
	sub  c                                           ; $7dec: $91
	sbc  c                                           ; $7ded: $99
	ld   a, h                                        ; $7dee: $7c
	ld   [hl], l                                     ; $7def: $75
	ld   h, a                                        ; $7df0: $67
	ld   a, e                                        ; $7df1: $7b
	sbc  a                                           ; $7df2: $9f
	dec  c                                           ; $7df3: $0d
	nop                                              ; $7df4: $00
	ld   a, [bc]                                     ; $7df5: $0a
	inc  e                                           ; $7df6: $1c
	ld   [bc], a                                     ; $7df7: $02
	rlca                                             ; $7df8: $07
	rlca                                             ; $7df9: $07
	dec  e                                           ; $7dfa: $1d
	ld   b, b                                        ; $7dfb: $40
	ld   [de], a                                     ; $7dfc: $12
	inc  bc                                          ; $7dfd: $03
	ld   [de], a                                     ; $7dfe: $12
	ld   bc, $2903                                   ; $7dff: $01 $03 $29
	nop                                              ; $7e02: $00
	ld   bc, $599d                                   ; $7e03: $01 $9d $59
	sbc  b                                           ; $7e06: $98
	adc  h                                           ; $7e07: $8c
	ld   h, l                                        ; $7e08: $65
	ld   l, l                                        ; $7e09: $6d
	sbc  a                                           ; $7e0a: $9f
	dec  c                                           ; $7e0b: $0d
	sub  b                                           ; $7e0c: $90
	ld   d, h                                        ; $7e0d: $54
	ld   l, l                                        ; $7e0e: $6d
	ld   a, h                                        ; $7e0f: $7c
	adc  l                                           ; $7e10: $8d
	adc  h                                           ; $7e11: $8c
	ld   l, c                                        ; $7e12: $69
	and  c                                           ; $7e13: $a1
	sbc  a                                           ; $7e14: $9f
	dec  c                                           ; $7e15: $0d
	add  b                                           ; $7e16: $80
	halt                                             ; $7e17: $76
	sbc  b                                           ; $7e18: $98
	ld   [hl], l                                     ; $7e19: $75
	ld   [bc], a                                     ; $7e1a: $02
	ld   a, a                                        ; $7e1b: $7f
	ld   [hl], c                                     ; $7e1c: $71
	ld   [hl], h                                     ; $7e1d: $74
	ld   e, e                                        ; $7e1e: $5b
	adc  h                                           ; $7e1f: $8c
	ld   h, a                                        ; $7e20: $67
	sbc  a                                           ; $7e21: $9f
	dec  c                                           ; $7e22: $0d
	nop                                              ; $7e23: $00
	ld   a, [bc]                                     ; $7e24: $0a
	dec  c                                           ; $7e25: $0d
	nop                                              ; $7e26: $00
	nop                                              ; $7e27: $00
	rrca                                             ; $7e28: $0f
	nop                                              ; $7e29: $00
	ld   bc, $1e09                                   ; $7e2a: $01 $09 $1e
	nop                                              ; $7e2d: $00
	rrca                                             ; $7e2e: $0f
	nop                                              ; $7e2f: $00
	ld   bc, $0401                                   ; $7e30: $01 $01 $04
	dec  c                                           ; $7e33: $0d
	ld   [bc], a                                     ; $7e34: $02
	sub  [hl]                                        ; $7e35: $96
	inc  b                                           ; $7e36: $04
	ld   b, l                                        ; $7e37: $45
	inc  b                                           ; $7e38: $04
	ld   a, [bc]                                     ; $7e39: $0a
	inc  b                                           ; $7e3a: $04
	dec  bc                                          ; $7e3b: $0b
	ld   a, h                                        ; $7e3c: $7c
	inc  b                                           ; $7e3d: $04
	ld   l, l                                        ; $7e3e: $6d
	ld   a, l                                        ; $7e3f: $7d
	dec  b                                           ; $7e40: $05
	and  d                                           ; $7e41: $a2
	dec  b                                           ; $7e42: $05
	ld   b, b                                        ; $7e43: $40
	ld   [hl], l                                     ; $7e44: $75
	dec  c                                           ; $7e45: $0d
	inc  b                                           ; $7e46: $04
	xor  b                                           ; $7e47: $a8
	inc  b                                           ; $7e48: $04
	xor  d                                           ; $7e49: $aa
	ld   [bc], a                                     ; $7e4a: $02
	rlc  e                                           ; $7e4b: $cb $03
	add  b                                           ; $7e4d: $80
	ld   [hl], l                                     ; $7e4e: $75
	ld   e, e                                        ; $7e4f: $5b
	ld   a, b                                        ; $7e50: $78
	ld   d, d                                        ; $7e51: $52
	and  c                                           ; $7e52: $a1
	ld   [hl], l                                     ; $7e53: $75
	ld   h, a                                        ; $7e54: $67
	sbc  a                                           ; $7e55: $9f
	dec  c                                           ; $7e56: $0d
	nop                                              ; $7e57: $00
	ld   a, [bc]                                     ; $7e58: $0a
	inc  e                                           ; $7e59: $1c
	ld   [bc], a                                     ; $7e5a: $02
	ld   [bc], a                                     ; $7e5b: $02
	ld   [bc], a                                     ; $7e5c: $02
	ld   bc, $7c61                                   ; $7e5d: $01 $61 $7c
	inc  bc                                          ; $7e60: $03
	sub  b                                           ; $7e61: $90
	inc  bc                                          ; $7e62: $03
	cp   e                                           ; $7e63: $bb
	ld   h, a                                        ; $7e64: $67
	adc  l                                           ; $7e65: $8d
	sbc  d                                           ; $7e66: $9a
	ld   a, h                                        ; $7e67: $7c
	ld   h, e                                        ; $7e68: $63
	ld   l, e                                        ; $7e69: $6b
	ld   d, d                                        ; $7e6a: $52
	sub  [hl]                                        ; $7e6b: $96
	sbc  b                                           ; $7e6c: $98
	dec  c                                           ; $7e6d: $0d
	dec  b                                           ; $7e6e: $05
	and  d                                           ; $7e6f: $a2
	dec  b                                           ; $7e70: $05
	ld   b, b                                        ; $7e71: $40
	ld   a, h                                        ; $7e72: $7c
	inc  b                                           ; $7e73: $04
	ld   a, b                                        ; $7e74: $78
	ld   e, d                                        ; $7e75: $5a
	inc  b                                           ; $7e76: $04
	ld   c, $03                                      ; $7e77: $0e $03
	dec  de                                          ; $7e79: $1b
	ld   l, [hl]                                     ; $7e7a: $6e
	halt                                             ; $7e7b: $76
	dec  c                                           ; $7e7c: $0d
	ld   e, b                                        ; $7e7d: $58
	ld   [hl], c                                     ; $7e7e: $71
	ld   h, l                                        ; $7e7f: $65
	sub  c                                           ; $7e80: $91
	sbc  c                                           ; $7e81: $99
	ld   a, h                                        ; $7e82: $7c
	ld   a, e                                        ; $7e83: $7b
	sbc  a                                           ; $7e84: $9f
	dec  c                                           ; $7e85: $0d
	nop                                              ; $7e86: $00
	ld   a, [bc]                                     ; $7e87: $0a
	inc  e                                           ; $7e88: $1c
	ld   [bc], a                                     ; $7e89: $02
	nop                                              ; $7e8a: $00
	nop                                              ; $7e8b: $00
	dec  e                                           ; $7e8c: $1d
	ld   b, b                                        ; $7e8d: $40
	ld   [de], a                                     ; $7e8e: $12
	inc  bc                                          ; $7e8f: $03
	ld   [de], a                                     ; $7e90: $12
	ld   bc, $2901                                   ; $7e91: $01 $01 $29
	nop                                              ; $7e94: $00
	ld   bc, $599d                                   ; $7e95: $01 $9d $59
	sbc  b                                           ; $7e98: $98
	adc  h                                           ; $7e99: $8c
	ld   h, l                                        ; $7e9a: $65
	ld   l, l                                        ; $7e9b: $6d
	sbc  a                                           ; $7e9c: $9f
	dec  c                                           ; $7e9d: $0d
	ld   [hl], l                                     ; $7e9e: $75
	ld   a, l                                        ; $7e9f: $7d
	sbc  [hl]                                        ; $7ea0: $9e
	sbc  l                                           ; $7ea1: $9d
	ld   l, l                                        ; $7ea2: $6d
	ld   e, l                                        ; $7ea3: $5d
	ld   h, l                                        ; $7ea4: $65
	add  b                                           ; $7ea5: $80
	halt                                             ; $7ea6: $76
	sbc  b                                           ; $7ea7: $98
	ld   [hl], l                                     ; $7ea8: $75
	dec  c                                           ; $7ea9: $0d
	ld   [bc], a                                     ; $7eaa: $02
	ld   a, a                                        ; $7eab: $7f
	ld   [hl], c                                     ; $7eac: $71
	ld   [hl], h                                     ; $7ead: $74
	adc  h                                           ; $7eae: $8c
	ld   d, d                                        ; $7eaf: $52
	sbc  b                                           ; $7eb0: $98
	adc  h                                           ; $7eb1: $8c
	ld   h, a                                        ; $7eb2: $67
	sbc  a                                           ; $7eb3: $9f
	dec  c                                           ; $7eb4: $0d
	nop                                              ; $7eb5: $00
	ld   a, [bc]                                     ; $7eb6: $0a
	dec  c                                           ; $7eb7: $0d
	nop                                              ; $7eb8: $00
	nop                                              ; $7eb9: $00
	rrca                                             ; $7eba: $0f
	nop                                              ; $7ebb: $00
	ld   bc, $1e09                                   ; $7ebc: $01 $09 $1e
	nop                                              ; $7ebf: $00
	inc  e                                           ; $7ec0: $1c
	ld   [bc], a                                     ; $7ec1: $02
	ld   [bc], a                                     ; $7ec2: $02
	ld   [bc], a                                     ; $7ec3: $02
	ld   bc, $7177                                   ; $7ec4: $01 $77 $71
	ld   l, a                                        ; $7ec7: $6f
	ld   a, b                                        ; $7ec8: $78
	and  c                                           ; $7ec9: $a1
	ld   [hl], l                                     ; $7eca: $75
	ld   h, a                                        ; $7ecb: $67
	ld   a, h                                        ; $7ecc: $7c
	ld   sp, hl                                      ; $7ecd: $f9
	dec  c                                           ; $7ece: $0d
	sub  b                                           ; $7ecf: $90
	ld   d, h                                        ; $7ed0: $54
	sbc  [hl]                                        ; $7ed1: $9e
	ret  nc                                          ; $7ed2: $d0

	call nz, $ecae                                   ; $7ed3: $c4 $ae $ec
	ld   h, l                                        ; $7ed6: $65
	ld   a, b                                        ; $7ed7: $78
	ld   d, d                                        ; $7ed8: $52
	dec  c                                           ; $7ed9: $0d
	inc  bc                                          ; $7eda: $03
	add  d                                           ; $7edb: $82
	ld   [hl], l                                     ; $7edc: $75
	ld   h, a                                        ; $7edd: $67
	sbc  l                                           ; $7ede: $9d
	ld   a, e                                        ; $7edf: $7b
	ld   a, [$000d]                                  ; $7ee0: $fa $0d $00
	ld   a, [bc]                                     ; $7ee3: $0a
	inc  e                                           ; $7ee4: $1c
	ld   [bc], a                                     ; $7ee5: $02
	rlca                                             ; $7ee6: $07
	rlca                                             ; $7ee7: $07
	dec  e                                           ; $7ee8: $1d
	ld   b, b                                        ; $7ee9: $40
	ld   [de], a                                     ; $7eea: $12
	inc  bc                                          ; $7eeb: $03
	ld   [de], a                                     ; $7eec: $12
	ld   bc, $2902                                   ; $7eed: $01 $02 $29
	nop                                              ; $7ef0: $00
	ld   bc, $5252                                   ; $7ef1: $01 $52 $52
	ld   [hl], l                                     ; $7ef4: $75
	ld   h, a                                        ; $7ef5: $67
	sbc  l                                           ; $7ef6: $9d
	sbc  a                                           ; $7ef7: $9f
	dec  c                                           ; $7ef8: $0d
	sbc  l                                           ; $7ef9: $9d
	ld   l, l                                        ; $7efa: $6d
	ld   e, l                                        ; $7efb: $5d
	ld   h, l                                        ; $7efc: $65
	add  b                                           ; $7efd: $80
	halt                                             ; $7efe: $76
	sbc  b                                           ; $7eff: $98
	ld   [hl], l                                     ; $7f00: $75
	ld   [bc], a                                     ; $7f01: $02

Jump_04d_7f02:
	ld   a, a                                        ; $7f02: $7f
	ld   [hl], c                                     ; $7f03: $71
	ld   [hl], h                                     ; $7f04: $74
	dec  c                                           ; $7f05: $0d
	ld   e, e                                        ; $7f06: $5b
	adc  h                                           ; $7f07: $8c
	ld   h, a                                        ; $7f08: $67
	ld   e, c                                        ; $7f09: $59
	sub  a                                           ; $7f0a: $97
	sbc  a                                           ; $7f0b: $9f
	dec  c                                           ; $7f0c: $0d
	nop                                              ; $7f0d: $00
	ld   a, [bc]                                     ; $7f0e: $0a
	dec  c                                           ; $7f0f: $0d
	nop                                              ; $7f10: $00
	nop                                              ; $7f11: $00
	rrca                                             ; $7f12: $0f
	nop                                              ; $7f13: $00
	ld   bc, $1e09                                   ; $7f14: $01 $09 $1e
	nop                                              ; $7f17: $00
	ld   c, $04                                      ; $7f18: $0e $04
	dec  c                                           ; $7f1a: $0d
	ld   [bc], a                                     ; $7f1b: $02
	nop                                              ; $7f1c: $00
	rrca                                             ; $7f1d: $0f
	nop                                              ; $7f1e: $00
	ld   bc, $0102                                   ; $7f1f: $01 $02 $01
	ld   d, b                                        ; $7f22: $50
	sbc  [hl]                                        ; $7f23: $9e
	ld   h, a                                        ; $7f24: $67
	adc  l                                           ; $7f25: $8d
	sbc  d                                           ; $7f26: $9a
	ld   h, e                                        ; $7f27: $63
	and  c                                           ; $7f28: $a1
	sbc  a                                           ; $7f29: $9f
	dec  c                                           ; $7f2a: $0d
	nop                                              ; $7f2b: $00
	ld   a, [bc]                                     ; $7f2c: $0a
	dec  c                                           ; $7f2d: $0d
	ld   [bc], a                                     ; $7f2e: $02
	rlca                                             ; $7f2f: $07
	ld   bc, $8d04                                   ; $7f30: $01 $04 $8d
	ld   d, d                                        ; $7f33: $52
	inc  b                                           ; $7f34: $04
	sub  d                                           ; $7f35: $92
	ld   a, c                                        ; $7f36: $79
	ld   [bc], a                                     ; $7f37: $02
	ld   a, a                                        ; $7f38: $7f
	ld   e, c                                        ; $7f39: $59
	sbc  d                                           ; $7f3a: $9a
	sbc  c                                           ; $7f3b: $99
	halt                                             ; $7f3c: $76
	dec  c                                           ; $7f3d: $0d
	ld   [bc], a                                     ; $7f3e: $02
	jp   nz, Jump_04d_6d52                           ; $7f3f: $c2 $52 $6d

	ld   a, h                                        ; $7f42: $7c
	ld   [hl], l                                     ; $7f43: $75
	ld   h, a                                        ; $7f44: $67
	ld   e, d                                        ; $7f45: $5a
	rst  $38                                         ; $7f46: $ff
	rst  $38                                         ; $7f47: $ff
	dec  c                                           ; $7f48: $0d
	nop                                              ; $7f49: $00
	ld   a, [bc]                                     ; $7f4a: $0a
	rrca                                             ; $7f4b: $0f
	ld   [bc], a                                     ; $7f4c: $02
	rlca                                             ; $7f4d: $07
	ld   bc, $0008                                   ; $7f4e: $01 $08 $00
	ld   h, e                                        ; $7f51: $63
	and  c                                           ; $7f52: $a1
	ld   a, c                                        ; $7f53: $79
	ld   a, l                                        ; $7f54: $7d
	dec  c                                           ; $7f55: $0d
	ld   [bc], a                                     ; $7f56: $02
	ld   c, d                                        ; $7f57: $4a
	ld   [bc], a                                     ; $7f58: $02
	ld   c, e                                        ; $7f59: $4b
	ld   a, h                                        ; $7f5a: $7c
	ld   a, b                                        ; $7f5b: $78
	ld   d, d                                        ; $7f5c: $52
	ld   h, c                                        ; $7f5d: $61
	halt                                             ; $7f5e: $76
	ld   [hl], l                                     ; $7f5f: $75
	ld   h, a                                        ; $7f60: $67
	sbc  l                                           ; $7f61: $9d
	sbc  a                                           ; $7f62: $9f
	dec  c                                           ; $7f63: $0d
	nop                                              ; $7f64: $00
	ld   a, [bc]                                     ; $7f65: $0a
	dec  b                                           ; $7f66: $05
	ld   b, b                                        ; $7f67: $40
	ld   c, a                                        ; $7f68: $4f
	ld   bc, $0000                                   ; $7f69: $01 $00 $00
	ld   bc, $8303                                   ; $7f6c: $01 $03 $83
	dec  b                                           ; $7f6f: $05
	dec  c                                           ; $7f70: $0d
	sbc  a                                           ; $7f71: $9f
	dec  c                                           ; $7f72: $0d
	nop                                              ; $7f73: $00
	ld   a, [bc]                                     ; $7f74: $0a
	dec  c                                           ; $7f75: $0d
	nop                                              ; $7f76: $00
	nop                                              ; $7f77: $00
	rrca                                             ; $7f78: $0f
	nop                                              ; $7f79: $00
	ld   bc, $5001                                   ; $7f7a: $01 $01 $50
	rst  $38                                         ; $7f7d: $ff
	rst  $38                                         ; $7f7e: $ff
	ld   [bc], a                                     ; $7f7f: $02
	ld   a, a                                        ; $7f80: $7f
	ld   [hl], c                                     ; $7f81: $71
	ld   l, a                                        ; $7f82: $6f
	sub  c                                           ; $7f83: $91
	ld   [hl], c                                     ; $7f84: $71
	ld   l, l                                        ; $7f85: $6d
	rst  $38                                         ; $7f86: $ff
	rst  $38                                         ; $7f87: $ff
	dec  c                                           ; $7f88: $0d
	nop                                              ; $7f89: $00
	ld   a, [bc]                                     ; $7f8a: $0a
	nop                                              ; $7f8b: $00
	nop                                              ; $7f8c: $00
	ld   c, $41                                      ; $7f8d: $0e $41
	rrca                                             ; $7f8f: $0f
	nop                                              ; $7f90: $00
	ld   bc, $1c02                                   ; $7f91: $01 $02 $1c
	add  hl, bc                                      ; $7f94: $09
	nop                                              ; $7f95: $00
	nop                                              ; $7f96: $00
	ld   bc, $0008                                   ; $7f97: $01 $08 $00
	ld   e, l                                        ; $7f9a: $5d
	and  c                                           ; $7f9b: $a1
	ld   h, [hl]                                     ; $7f9c: $66
	sub  c                                           ; $7f9d: $91
	ld   a, b                                        ; $7f9e: $78
	ld   d, d                                        ; $7f9f: $52
	ld   e, c                                        ; $7fa0: $59
	sbc  a                                           ; $7fa1: $9f
	dec  c                                           ; $7fa2: $0d
	ld   a, b                                        ; $7fa3: $78
	ld   a, c                                        ; $7fa4: $79
	ld   e, c                                        ; $7fa5: $59
	inc  b                                           ; $7fa6: $04
	di                                               ; $7fa7: $f3
	ld   e, c                                        ; $7fa8: $59
	ld   d, d                                        ; $7fa9: $52
	ld   sp, hl                                      ; $7faa: $f9
	dec  c                                           ; $7fab: $0d
	nop                                              ; $7fac: $00
	ld   a, [bc]                                     ; $7fad: $0a
	add  hl, de                                      ; $7fae: $19
	dec  b                                           ; $7faf: $05
	ld   [bc], a                                     ; $7fb0: $02
	inc  b                                           ; $7fb1: $04
	ld   a, [bc]                                     ; $7fb2: $0a
	ld   [bc], a                                     ; $7fb3: $02
	nop                                              ; $7fb4: $00
	ld   e, c                                        ; $7fb5: $59
	sub  a                                           ; $7fb6: $97
	ld   a, h                                        ; $7fb7: $7c
	inc  b                                           ; $7fb8: $04
	ld   d, a                                        ; $7fb9: $57
	inc  b                                           ; $7fba: $04
	ld   h, e                                        ; $7fbb: $63
	and  b                                           ; $7fbc: $a0
	ld   [bc], a                                     ; $7fbd: $02
	jp   nz, $005d                                   ; $7fbe: $c2 $5d $00

	nop                                              ; $7fc1: $00
	inc  bc                                          ; $7fc2: $03
	ld   l, l                                        ; $7fc3: $6d
	dec  b                                           ; $7fc4: $05
	add  hl, de                                      ; $7fc5: $19
	ld   a, h                                        ; $7fc6: $7c
	and  e                                           ; $7fc7: $a3
	jp   z, $a5d1                                    ; $7fc8: $ca $d1 $a5

	cp   d                                           ; $7fcb: $ba
	and  b                                           ; $7fcc: $a0
	ld   [bc], a                                     ; $7fcd: $02
	jp   nz, $005d                                   ; $7fce: $c2 $5d $00

	ld   bc, $8707                                   ; $7fd1: $01 $07 $87
	ld   bc, $0302                                   ; $7fd4: $01 $02 $03
	ld   bc, $2000                                   ; $7fd7: $01 $00 $20
	nop                                              ; $7fda: $00
	rlca                                             ; $7fdb: $07
	ld   b, l                                        ; $7fdc: $45
	ld   a, [bc]                                     ; $7fdd: $0a
	ld   [bc], a                                     ; $7fde: $02
	inc  bc                                          ; $7fdf: $03
	ld   bc, $2001                                   ; $7fe0: $01 $01 $20
	nop                                              ; $7fe3: $00
	ld   b, $5a                                      ; $7fe4: $06 $5a
	nop                                              ; $7fe6: $00
	rrca                                             ; $7fe7: $0f
	nop                                              ; $7fe8: $00
	ld   bc, $5201                                   ; $7fe9: $01 $01 $52
	ld   d, [hl]                                     ; $7fec: $56
	rst  $38                                         ; $7fed: $ff
	rst  $38                                         ; $7fee: $ff
	sbc  a                                           ; $7fef: $9f
	dec  c                                           ; $7ff0: $0d
	halt                                             ; $7ff1: $76
	ld   e, l                                        ; $7ff2: $5d
	ld   a, c                                        ; $7ff3: $79
	inc  b                                           ; $7ff4: $04
	di                                               ; $7ff5: $f3
	ld   [bc], a                                     ; $7ff6: $02
	jp   Jump_04d_5276                               ; $7ff7: $c3 $76 $52


	ld   d, h                                        ; $7ffa: $54
	sbc  l                                           ; $7ffb: $9d
	ld   e, a                                        ; $7ffc: $5f
	ld   [hl], l                                     ; $7ffd: $75
	ld   a, l                                        ; $7ffe: $7d
	rst  $38                                         ; $7fff: $ff
