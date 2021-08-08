; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $049", ROMX[$4000], BANK[$49]

	sbc  a                                           ; $4000: $9f
	dec  c                                           ; $4001: $0d
	nop                                              ; $4002: $00
	ld   a, [bc]                                     ; $4003: $0a
	ld   bc, $9a61                                   ; $4004: $01 $61 $9a
	ld   a, b                                        ; $4007: $78
	sub  a                                           ; $4008: $97
	ld   [bc], a                                     ; $4009: $02
	ld   h, $03                                      ; $400a: $26 $03
	ld   [hl], l                                     ; $400c: $75
	ld   h, l                                        ; $400d: $65
	ld   [hl], h                                     ; $400e: $74
	dec  c                                           ; $400f: $0d
	inc  bc                                          ; $4010: $03
	ret  z                                           ; $4011: $c8

	ld   a, h                                        ; $4012: $7c
	dec  b                                           ; $4013: $05
	ld   d, e                                        ; $4014: $53
	inc  b                                           ; $4015: $04
	dec  bc                                          ; $4016: $0b
	and  b                                           ; $4017: $a0
	adc  h                                           ; $4018: $8c
	ld   e, c                                        ; $4019: $59
	ld   l, c                                        ; $401a: $69
	sub  a                                           ; $401b: $97
	sbc  d                                           ; $401c: $9a
	sbc  c                                           ; $401d: $99
	sub  [hl]                                        ; $401e: $96
	ld   d, h                                        ; $401f: $54
	ld   a, c                                        ; $4020: $79
	dec  c                                           ; $4021: $0d
	ld   a, b                                        ; $4022: $78
	sbc  c                                           ; $4023: $99
	ld   e, c                                        ; $4024: $59
	sub  b                                           ; $4025: $90
	ld   h, l                                        ; $4026: $65
	sbc  d                                           ; $4027: $9a
	ld   a, b                                        ; $4028: $78
	ld   d, d                                        ; $4029: $52
	sbc  l                                           ; $402a: $9d
	sbc  a                                           ; $402b: $9f
	sub  $d6                                         ; $402c: $d6 $d6
	sbc  a                                           ; $402e: $9f
	dec  c                                           ; $402f: $0d
	nop                                              ; $4030: $00
	ld   a, [bc]                                     ; $4031: $0a
	dec  b                                           ; $4032: $05
	ld   b, b                                        ; $4033: $40
	ld   b, h                                        ; $4034: $44
	inc  bc                                          ; $4035: $03
	ld   b, h                                        ; $4036: $44
	ld   bc, $2801                                   ; $4037: $01 $01 $28
	nop                                              ; $403a: $00
	inc  e                                           ; $403b: $1c
	inc  bc                                          ; $403c: $03
	nop                                              ; $403d: $00
	nop                                              ; $403e: $00
	ld   bc, $9a6b                                   ; $403f: $01 $6b $9a
	ld   [hl], l                                     ; $4042: $75
	ld   a, l                                        ; $4043: $7d
	sbc  [hl]                                        ; $4044: $9e
	inc  b                                           ; $4045: $04
	adc  a                                           ; $4046: $8f
	inc  b                                           ; $4047: $04
	xor  d                                           ; $4048: $aa
	ld   a, h                                        ; $4049: $7c
	ld   [bc], a                                     ; $404a: $02
	or   d                                           ; $404b: $b2
	ld   [bc], a                                     ; $404c: $02
	xor  d                                           ; $404d: $aa
	ld   a, h                                        ; $404e: $7c
	inc  bc                                          ; $404f: $03
	ld   l, l                                        ; $4050: $6d
	dec  b                                           ; $4051: $05
	add  hl, de                                      ; $4052: $19
	and  b                                           ; $4053: $a0
	dec  c                                           ; $4054: $0d
	inc  bc                                          ; $4055: $03
	ld   a, [hl]                                     ; $4056: $7e
	sbc  l                                           ; $4057: $9d
	sbc  b                                           ; $4058: $98
	adc  h                                           ; $4059: $8c
	ld   h, a                                        ; $405a: $67
	sbc  a                                           ; $405b: $9f
	dec  c                                           ; $405c: $0d
	nop                                              ; $405d: $00
	ld   a, [bc]                                     ; $405e: $0a
	dec  c                                           ; $405f: $0d
	nop                                              ; $4060: $00
	nop                                              ; $4061: $00
	rrca                                             ; $4062: $0f
	nop                                              ; $4063: $00
	ld   bc, $0f00                                   ; $4064: $01 $00 $0f
	inc  bc                                          ; $4067: $03
	nop                                              ; $4068: $00
	ld   bc, $5252                                   ; $4069: $01 $52 $52
	sbc  l                                           ; $406c: $9d
	sub  [hl]                                        ; $406d: $96
	sbc  a                                           ; $406e: $9f
	dec  c                                           ; $406f: $0d
	ld   l, e                                        ; $4070: $6b
	sbc  d                                           ; $4071: $9a
	ld   h, [hl]                                     ; $4072: $66
	sub  c                                           ; $4073: $91
	sbc  [hl]                                        ; $4074: $9e
	ld   h, e                                        ; $4075: $63
	ld   [hl], c                                     ; $4076: $71
	ld   l, e                                        ; $4077: $6b
	ld   e, l                                        ; $4078: $5d
	dec  c                                           ; $4079: $0d
	dec  b                                           ; $407a: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $407b: $cf
	adc  a                                           ; $407c: $8f
	adc  h                                           ; $407d: $8c
	ld   h, l                                        ; $407e: $65
	sub  l                                           ; $407f: $95
	ld   d, h                                        ; $4080: $54
	sbc  a                                           ; $4081: $9f
	dec  c                                           ; $4082: $0d
	nop                                              ; $4083: $00
	ld   a, [bc]                                     ; $4084: $0a
	dec  h                                           ; $4085: $25
	inc  bc                                          ; $4086: $03
	rlca                                             ; $4087: $07
	ld   e, b                                        ; $4088: $58
	inc  b                                           ; $4089: $04
	inc  bc                                          ; $408a: $03
	jr   nz, jr_049_408e                             ; $408b: $20 $01

	nop                                              ; $408d: $00

jr_049_408e:
	jr   nz, jr_049_4090                             ; $408e: $20 $00

jr_049_4090:
	inc  e                                           ; $4090: $1c
	inc  bc                                          ; $4091: $03
	inc  bc                                          ; $4092: $03
	inc  bc                                          ; $4093: $03
	ld   bc, $0458                                   ; $4094: $01 $58 $04
	ld   a, e                                        ; $4097: $7b
	sbc  d                                           ; $4098: $9a
	ld   h, e                                        ; $4099: $63
	adc  h                                           ; $409a: $8c
	sbc  a                                           ; $409b: $9f
	dec  c                                           ; $409c: $0d
	ld   d, d                                        ; $409d: $52
	ld   d, d                                        ; $409e: $52
	ld   [bc], a                                     ; $409f: $02
	scf                                              ; $40a0: $37
	ld   h, [hl]                                     ; $40a1: $66
	sub  [hl]                                        ; $40a2: $96
	sbc  [hl]                                        ; $40a3: $9e
	ld   [$5d00], sp                                 ; $40a4: $08 $00 $5d
	and  c                                           ; $40a7: $a1
	sbc  a                                           ; $40a8: $9f
	dec  c                                           ; $40a9: $0d
	nop                                              ; $40aa: $00
	ld   a, [bc]                                     ; $40ab: $0a
	dec  b                                           ; $40ac: $05
	ld   b, b                                        ; $40ad: $40
	ld   b, h                                        ; $40ae: $44
	inc  bc                                          ; $40af: $03
	ld   b, h                                        ; $40b0: $44
	ld   bc, $2801                                   ; $40b1: $01 $01 $28
	nop                                              ; $40b4: $00
	inc  e                                           ; $40b5: $1c
	inc  bc                                          ; $40b6: $03
	nop                                              ; $40b7: $00
	nop                                              ; $40b8: $00
	ld   bc, $9a6b                                   ; $40b9: $01 $6b $9a
	ld   [hl], l                                     ; $40bc: $75
	ld   a, l                                        ; $40bd: $7d
	sbc  [hl]                                        ; $40be: $9e
	inc  b                                           ; $40bf: $04
	adc  a                                           ; $40c0: $8f
	inc  b                                           ; $40c1: $04
	xor  d                                           ; $40c2: $aa
	ld   a, h                                        ; $40c3: $7c
	ld   [bc], a                                     ; $40c4: $02
	or   d                                           ; $40c5: $b2
	ld   [bc], a                                     ; $40c6: $02
	xor  d                                           ; $40c7: $aa
	ld   a, h                                        ; $40c8: $7c
	inc  bc                                          ; $40c9: $03
	ld   l, l                                        ; $40ca: $6d
	dec  b                                           ; $40cb: $05
	add  hl, de                                      ; $40cc: $19
	and  b                                           ; $40cd: $a0
	dec  c                                           ; $40ce: $0d
	inc  bc                                          ; $40cf: $03
	ld   a, [hl]                                     ; $40d0: $7e
	sbc  l                                           ; $40d1: $9d
	sbc  b                                           ; $40d2: $98
	adc  h                                           ; $40d3: $8c
	ld   h, a                                        ; $40d4: $67
	sbc  a                                           ; $40d5: $9f
	dec  c                                           ; $40d6: $0d
	nop                                              ; $40d7: $00
	ld   a, [bc]                                     ; $40d8: $0a
	dec  c                                           ; $40d9: $0d
	nop                                              ; $40da: $00
	nop                                              ; $40db: $00
	rrca                                             ; $40dc: $0f
	nop                                              ; $40dd: $00
	ld   bc, $0e00                                   ; $40de: $01 $00 $0e
	ld   bc, $0702                                   ; $40e1: $01 $02 $07
	ld   a, [$0308]                                  ; $40e4: $fa $08 $03
	jr   nz, jr_049_40ea                             ; $40e7: $20 $01

	ld   b, b                                        ; $40e9: $40

jr_049_40ea:
	dec  h                                           ; $40ea: $25
	nop                                              ; $40eb: $00
	dec  b                                           ; $40ec: $05
	ld   b, b                                        ; $40ed: $40
	ld   d, b                                        ; $40ee: $50
	inc  bc                                          ; $40ef: $03
	ld   d, b                                        ; $40f0: $50
	ld   [bc], a                                     ; $40f1: $02
	nop                                              ; $40f2: $00
	inc  bc                                          ; $40f3: $03
	ld   c, d                                        ; $40f4: $4a
	add  hl, hl                                      ; $40f5: $29
	add  hl, hl                                      ; $40f6: $29
	nop                                              ; $40f7: $00
	ld   bc, $ffff                                   ; $40f8: $01 $ff $ff
	ld   d, h                                        ; $40fb: $54
	db   $fc                                         ; $40fc: $fc
	and  c                                           ; $40fd: $a1
	rst  $38                                         ; $40fe: $ff
	rst  $38                                         ; $40ff: $ff
	dec  c                                           ; $4100: $0d
	ld   a, b                                        ; $4101: $78
	and  c                                           ; $4102: $a1
	ld   l, [hl]                                     ; $4103: $6e
	ld   e, c                                        ; $4104: $59
	inc  b                                           ; $4105: $04
	dec  c                                           ; $4106: $0d
	inc  bc                                          ; $4107: $03
	cp   $5a                                         ; $4108: $fe $5a
	ld   [bc], a                                     ; $410a: $02
	jr   z, jr_049_415f                              ; $410b: $28 $52

	ld   a, b                                        ; $410d: $78
	rst  $38                                         ; $410e: $ff
	rst  $38                                         ; $410f: $ff
	dec  c                                           ; $4110: $0d
	ld   [bc], a                                     ; $4111: $02
	and  l                                           ; $4112: $a5
	inc  b                                           ; $4113: $04
	xor  d                                           ; $4114: $aa
	ld   a, h                                        ; $4115: $7c
	inc  bc                                          ; $4116: $03
	ld   l, l                                        ; $4117: $6d
	dec  b                                           ; $4118: $05
	add  hl, de                                      ; $4119: $19
	ld   a, l                                        ; $411a: $7d
	inc  bc                                          ; $411b: $03
	and  a                                           ; $411c: $a7
	adc  [hl]                                        ; $411d: $8e
	ld   e, c                                        ; $411e: $59
	ld   a, b                                        ; $411f: $78
	sbc  a                                           ; $4120: $9f
	dec  c                                           ; $4121: $0d
	nop                                              ; $4122: $00
	ld   a, [bc]                                     ; $4123: $0a
	ld   b, $25                                      ; $4124: $06 $25
	add  hl, bc                                      ; $4126: $09
	ld   bc, $a502                                   ; $4127: $01 $02 $a5
	inc  b                                           ; $412a: $04
	xor  d                                           ; $412b: $aa
	ld   a, l                                        ; $412c: $7d
	ld   a, b                                        ; $412d: $78
	and  c                                           ; $412e: $a1
	ld   l, [hl]                                     ; $412f: $6e
	ld   e, c                                        ; $4130: $59
	inc  bc                                          ; $4131: $03
	ld   l, l                                        ; $4132: $6d
	dec  b                                           ; $4133: $05
	add  hl, de                                      ; $4134: $19
	ld   a, c                                        ; $4135: $79
	dec  c                                           ; $4136: $0d
	ld   [bc], a                                     ; $4137: $02
	ld   a, a                                        ; $4138: $7f
	ld   e, e                                        ; $4139: $5b
	ld   l, l                                        ; $413a: $6d
	ld   e, l                                        ; $413b: $5d
	ld   a, b                                        ; $413c: $78
	ld   d, d                                        ; $413d: $52
	ld   a, b                                        ; $413e: $78
	ld   d, b                                        ; $413f: $50
	rst  $38                                         ; $4140: $ff
	rst  $38                                         ; $4141: $ff
	dec  c                                           ; $4142: $0d
	inc  bc                                          ; $4143: $03
	ld   l, l                                        ; $4144: $6d
	dec  b                                           ; $4145: $05
	add  hl, de                                      ; $4146: $19
	rst  $38                                         ; $4147: $ff
	rst  $38                                         ; $4148: $ff
	inc  bc                                          ; $4149: $03
	and  a                                           ; $414a: $a7
	adc  [hl]                                        ; $414b: $8e
	ld   e, c                                        ; $414c: $59
	ld   a, b                                        ; $414d: $78
	sbc  a                                           ; $414e: $9f
	dec  c                                           ; $414f: $0d
	nop                                              ; $4150: $00
	ld   a, [bc]                                     ; $4151: $0a
	inc  hl                                          ; $4152: $23
	ld   b, [hl]                                     ; $4153: $46
	inc  d                                           ; $4154: $14
	ld   b, $01                                      ; $4155: $06 $01
	add  hl, bc                                      ; $4157: $09
	ld   e, $01                                      ; $4158: $1e $01
	rst  JumpTable                                         ; $415a: $df
	db   $ec                                         ; $415b: $ec
	and  e                                           ; $415c: $a3
	ld   h, e                                        ; $415d: $63
	and  c                                           ; $415e: $a1

jr_049_415f:
	sbc  [hl]                                        ; $415f: $9e
	dec  c                                           ; $4160: $0d
	ld   d, d                                        ; $4161: $52
	sub  a                                           ; $4162: $97
	ld   [hl], c                                     ; $4163: $71
	ld   h, l                                        ; $4164: $65
	sub  c                                           ; $4165: $91
	ld   d, d                                        ; $4166: $52
	adc  h                                           ; $4167: $8c
	ld   h, a                                        ; $4168: $67
	ld   e, c                                        ; $4169: $59
	ld   sp, hl                                      ; $416a: $f9
	dec  c                                           ; $416b: $0d
	nop                                              ; $416c: $00
	ld   a, [bc]                                     ; $416d: $0a
	rrca                                             ; $416e: $0f
	inc  bc                                          ; $416f: $03
	nop                                              ; $4170: $00
	ld   bc, $0008                                   ; $4171: $01 $08 $00
	ld   e, l                                        ; $4174: $5d
	and  c                                           ; $4175: $a1
	ld   sp, hl                                      ; $4176: $f9
	dec  c                                           ; $4177: $0d
	ld   d, d                                        ; $4178: $52
	adc  h                                           ; $4179: $8c
	ld   [bc], a                                     ; $417a: $02
	adc  b                                           ; $417b: $88
	ld   e, a                                        ; $417c: $5f
	sbc  c                                           ; $417d: $99
	sbc  l                                           ; $417e: $9d
	sbc  a                                           ; $417f: $9f
	dec  c                                           ; $4180: $0d
	nop                                              ; $4181: $00
	ld   a, [bc]                                     ; $4182: $0a
	inc  d                                           ; $4183: $14
	ld   a, [bc]                                     ; $4184: $0a
	ld   bc, $470e                                   ; $4185: $01 $0e $47
	dec  c                                           ; $4188: $0d
	inc  bc                                          ; $4189: $03
	nop                                              ; $418a: $00
	ld   bc, $a161                                   ; $418b: $01 $61 $a1
	ld   a, c                                        ; $418e: $79
	ld   l, a                                        ; $418f: $6f
	ld   a, l                                        ; $4190: $7d
	sbc  [hl]                                        ; $4191: $9e
	ld   [$5d00], sp                                 ; $4192: $08 $00 $5d
	and  c                                           ; $4195: $a1
	sbc  a                                           ; $4196: $9f
	dec  c                                           ; $4197: $0d
	nop                                              ; $4198: $00
	ld   a, [bc]                                     ; $4199: $0a
	rlca                                             ; $419a: $07
	ld   [de], a                                     ; $419b: $12
	ld   a, [bc]                                     ; $419c: $0a
	inc  bc                                          ; $419d: $03
	jr   nz, jr_049_41a1                             ; $419e: $20 $01

	ld   b, b                                        ; $41a0: $40

jr_049_41a1:
	dec  h                                           ; $41a1: $25
	nop                                              ; $41a2: $00
	ld   bc, $ffff                                   ; $41a3: $01 $ff $ff
	ld   d, b                                        ; $41a6: $50
	sub  a                                           ; $41a7: $97
	ld   sp, hl                                      ; $41a8: $f9
	dec  c                                           ; $41a9: $0d
	nop                                              ; $41aa: $00
	inc  e                                           ; $41ab: $1c
	inc  bc                                          ; $41ac: $03
	inc  b                                           ; $41ad: $04
	inc  b                                           ; $41ae: $04
	ld   bc, $5477                                   ; $41af: $01 $77 $54
	ld   e, c                                        ; $41b2: $59
	ld   h, l                                        ; $41b3: $65
	ld   l, l                                        ; $41b4: $6d
	ld   a, h                                        ; $41b5: $7c
	ld   sp, hl                                      ; $41b6: $f9
	dec  c                                           ; $41b7: $0d
	ld   [bc], a                                     ; $41b8: $02
	ld   [hl], d                                     ; $41b9: $72
	inc  bc                                          ; $41ba: $03
	dec  bc                                          ; $41bb: $0b
	ld   e, d                                        ; $41bc: $5a
	sbc  l                                           ; $41bd: $9d
	sbc  c                                           ; $41be: $99
	ld   d, d                                        ; $41bf: $52
	sbc  l                                           ; $41c0: $9d
	sub  [hl]                                        ; $41c1: $96
	sbc  a                                           ; $41c2: $9f
	dec  c                                           ; $41c3: $0d
	nop                                              ; $41c4: $00
	ld   a, [bc]                                     ; $41c5: $0a
	rrca                                             ; $41c6: $0f
	nop                                              ; $41c7: $00
	ld   bc, $7d01                                   ; $41c8: $01 $01 $7d
	ld   d, d                                        ; $41cb: $52
	sbc  [hl]                                        ; $41cc: $9e
	ld   l, a                                        ; $41cd: $6f
	sub  l                                           ; $41ce: $95
	ld   [hl], c                                     ; $41cf: $71
	halt                                             ; $41d0: $76
	inc  b                                           ; $41d1: $04
	dec  c                                           ; $41d2: $0d
	inc  bc                                          ; $41d3: $03
	cp   $5a                                         ; $41d4: $fe $5a
	dec  c                                           ; $41d6: $0d
	sbc  l                                           ; $41d7: $9d
	sbc  c                                           ; $41d8: $99
	ld   e, l                                        ; $41d9: $5d
	ld   [hl], h                                     ; $41da: $74
	rst  $38                                         ; $41db: $ff
	rst  $38                                         ; $41dc: $ff
	ld   [bc], a                                     ; $41dd: $02
	and  l                                           ; $41de: $a5
	inc  b                                           ; $41df: $04
	xor  d                                           ; $41e0: $aa
	ld   a, h                                        ; $41e1: $7c
	inc  bc                                          ; $41e2: $03
	ld   l, l                                        ; $41e3: $6d
	dec  b                                           ; $41e4: $05
	add  hl, de                                      ; $41e5: $19
	ld   a, l                                        ; $41e6: $7d
	dec  c                                           ; $41e7: $0d
	inc  bc                                          ; $41e8: $03
	and  a                                           ; $41e9: $a7
	adc  h                                           ; $41ea: $8c
	ld   l, c                                        ; $41eb: $69
	ld   [hl], h                                     ; $41ec: $74
	adc  c                                           ; $41ed: $89
	ld   h, l                                        ; $41ee: $65
	ld   d, d                                        ; $41ef: $52
	ld   a, h                                        ; $41f0: $7c
	ld   [hl], l                                     ; $41f1: $75
	ld   h, a                                        ; $41f2: $67
	ld   e, d                                        ; $41f3: $5a
	rst  $38                                         ; $41f4: $ff
	rst  $38                                         ; $41f5: $ff
	dec  c                                           ; $41f6: $0d
	nop                                              ; $41f7: $00
	ld   a, [bc]                                     ; $41f8: $0a
	inc  e                                           ; $41f9: $1c
	inc  bc                                          ; $41fa: $03
	nop                                              ; $41fb: $00
	nop                                              ; $41fc: $00
	ld   bc, $5965                                   ; $41fd: $01 $65 $59
	ld   l, l                                        ; $4200: $6d
	ld   a, b                                        ; $4201: $78
	ld   d, d                                        ; $4202: $52
	sbc  l                                           ; $4203: $9d
	ld   a, e                                        ; $4204: $7b
	rst  $38                                         ; $4205: $ff
	rst  $38                                         ; $4206: $ff
	dec  c                                           ; $4207: $0d
	ld   [hl], l                                     ; $4208: $75
	ld   a, l                                        ; $4209: $7d
	sbc  [hl]                                        ; $420a: $9e
	ld   [bc], a                                     ; $420b: $02
	and  l                                           ; $420c: $a5
	inc  b                                           ; $420d: $04
	xor  d                                           ; $420e: $aa
	ld   a, h                                        ; $420f: $7c
	inc  bc                                          ; $4210: $03
	ld   l, l                                        ; $4211: $6d
	dec  b                                           ; $4212: $05
	add  hl, de                                      ; $4213: $19
	ld   a, l                                        ; $4214: $7d
	dec  c                                           ; $4215: $0d
	ld   e, b                                        ; $4216: $58
	inc  bc                                          ; $4217: $03
	and  a                                           ; $4218: $a7
	adc  l                                           ; $4219: $8d
	ld   a, c                                        ; $421a: $79
	ld   h, l                                        ; $421b: $65
	adc  h                                           ; $421c: $8c
	ld   h, l                                        ; $421d: $65
	sub  l                                           ; $421e: $95
	ld   d, h                                        ; $421f: $54
	sbc  a                                           ; $4220: $9f
	dec  c                                           ; $4221: $0d
	nop                                              ; $4222: $00
	ld   a, [bc]                                     ; $4223: $0a
	ld   bc, $9a6b                                   ; $4224: $01 $6b $9a
	ld   [hl], l                                     ; $4227: $75
	ld   a, l                                        ; $4228: $7d
	sbc  [hl]                                        ; $4229: $9e
	ld   e, b                                        ; $422a: $58
	inc  b                                           ; $422b: $04
	ld   c, $02                                      ; $422c: $0e $02
	jp   $9f79                                       ; $422e: $c3 $79 $9f


	dec  c                                           ; $4231: $0d
	nop                                              ; $4232: $00
	ld   a, [bc]                                     ; $4233: $0a
	dec  c                                           ; $4234: $0d
	nop                                              ; $4235: $00
	nop                                              ; $4236: $00
	rrca                                             ; $4237: $0f
	nop                                              ; $4238: $00
	ld   bc, $1e09                                   ; $4239: $01 $09 $1e
	ld   b, $40                                      ; $423c: $06 $40
	inc  bc                                          ; $423e: $03
	ld   bc, $7978                                   ; $423f: $01 $78 $79
	ld   e, c                                        ; $4242: $59
	inc  b                                           ; $4243: $04
	di                                               ; $4244: $f3
	ld   [bc], a                                     ; $4245: $02
	jp   $9075                                       ; $4246: $c3 $75 $90


	ld   sp, hl                                      ; $4249: $f9
	dec  c                                           ; $424a: $0d
	sub  b                                           ; $424b: $90
	ld   d, h                                        ; $424c: $54
	ld   h, a                                        ; $424d: $67
	ld   e, [hl]                                     ; $424e: $5e
	inc  bc                                          ; $424f: $03
	ld   l, l                                        ; $4250: $6d
	dec  b                                           ; $4251: $05
	add  hl, de                                      ; $4252: $19
	ld   a, h                                        ; $4253: $7c
	inc  bc                                          ; $4254: $03
	ld   l, a                                        ; $4255: $6f
	ld   [bc], a                                     ; $4256: $02
	xor  c                                           ; $4257: $a9
	sub  [hl]                                        ; $4258: $96
	sbc  a                                           ; $4259: $9f
	dec  c                                           ; $425a: $0d
	nop                                              ; $425b: $00
	ld   a, [bc]                                     ; $425c: $0a
	rrca                                             ; $425d: $0f
	nop                                              ; $425e: $00
	ld   bc, $7d01                                   ; $425f: $01 $01 $7d
	ld   d, d                                        ; $4262: $52
	rst  $38                                         ; $4263: $ff
	rst  $38                                         ; $4264: $ff
	ld   d, b                                        ; $4265: $50
	ld   a, h                                        ; $4266: $7c
	rst  $38                                         ; $4267: $ff
	rst  $38                                         ; $4268: $ff
	dec  c                                           ; $4269: $0d
	ld   [bc], a                                     ; $426a: $02
	and  l                                           ; $426b: $a5
	inc  b                                           ; $426c: $04
	xor  d                                           ; $426d: $aa
	ld   a, h                                        ; $426e: $7c
	inc  bc                                          ; $426f: $03
	ld   l, l                                        ; $4270: $6d
	dec  b                                           ; $4271: $05
	add  hl, de                                      ; $4272: $19
	and  b                                           ; $4273: $a0
	inc  bc                                          ; $4274: $03
	and  a                                           ; $4275: $a7
	adc  h                                           ; $4276: $8c
	ld   l, c                                        ; $4277: $69
	ld   [hl], h                                     ; $4278: $74
	dec  c                                           ; $4279: $0d
	inc  b                                           ; $427a: $04
	db   $e3                                         ; $427b: $e3
	ld   h, l                                        ; $427c: $65
	ld   d, d                                        ; $427d: $52
	ld   a, h                                        ; $427e: $7c
	ld   [hl], l                                     ; $427f: $75
	ld   h, a                                        ; $4280: $67
	ld   e, d                                        ; $4281: $5a
	rst  $38                                         ; $4282: $ff
	rst  $38                                         ; $4283: $ff
	dec  c                                           ; $4284: $0d
	nop                                              ; $4285: $00
	ld   a, [bc]                                     ; $4286: $0a
	inc  e                                           ; $4287: $1c
	inc  bc                                          ; $4288: $03
	inc  b                                           ; $4289: $04
	inc  b                                           ; $428a: $04
	ld   bc, $ffff                                   ; $428b: $01 $ff $ff
	rst  $38                                         ; $428e: $ff
	rst  $38                                         ; $428f: $ff
	dec  c                                           ; $4290: $0d
	ld   a, b                                        ; $4291: $78
	ld   a, c                                        ; $4292: $79
	ld   e, c                                        ; $4293: $59
	inc  b                                           ; $4294: $04
	di                                               ; $4295: $f3
	ld   [bc], a                                     ; $4296: $02
	jp   $9075                                       ; $4297: $c3 $75 $90


	ld   sp, hl                                      ; $429a: $f9
	dec  c                                           ; $429b: $0d
	nop                                              ; $429c: $00
	ld   a, [bc]                                     ; $429d: $0a
	rrca                                             ; $429e: $0f
	nop                                              ; $429f: $00
	ld   bc, $5201                                   ; $42a0: $01 $01 $52
	ld   d, [hl]                                     ; $42a3: $56
	sbc  [hl]                                        ; $42a4: $9e
	halt                                             ; $42a5: $76
	ld   e, l                                        ; $42a6: $5d
	ld   a, c                                        ; $42a7: $79
	inc  b                                           ; $42a8: $04
	di                                               ; $42a9: $f3
	ld   [bc], a                                     ; $42aa: $02
	jp   Jump_049_5276                               ; $42ab: $c3 $76 $52


	ld   d, h                                        ; $42ae: $54
	dec  c                                           ; $42af: $0d
	sbc  l                                           ; $42b0: $9d
	ld   e, a                                        ; $42b1: $5f
	ld   [hl], l                                     ; $42b2: $75
	sub  b                                           ; $42b3: $90
	ld   a, b                                        ; $42b4: $78
	ld   d, d                                        ; $42b5: $52
	and  c                                           ; $42b6: $a1
	ld   [hl], l                                     ; $42b7: $75
	ld   h, a                                        ; $42b8: $67
	ld   e, d                                        ; $42b9: $5a
	rst  $38                                         ; $42ba: $ff
	rst  $38                                         ; $42bb: $ff
	dec  c                                           ; $42bc: $0d
	nop                                              ; $42bd: $00
	ld   a, [bc]                                     ; $42be: $0a
	rrca                                             ; $42bf: $0f
	inc  bc                                          ; $42c0: $03
	inc  b                                           ; $42c1: $04
	dec  e                                           ; $42c2: $1d
	ld   b, b                                        ; $42c3: $40
	inc  de                                          ; $42c4: $13
	inc  bc                                          ; $42c5: $03
	inc  de                                          ; $42c6: $13
	ld   bc, $2902                                   ; $42c7: $01 $02 $29
	nop                                              ; $42ca: $00
	ld   bc, $ffff                                   ; $42cb: $01 $ff $ff
	rst  $38                                         ; $42ce: $ff
	rst  $38                                         ; $42cf: $ff
	ld   l, e                                        ; $42d0: $6b
	ld   d, h                                        ; $42d1: $54
	rst  $38                                         ; $42d2: $ff
	rst  $38                                         ; $42d3: $ff
	rst  $38                                         ; $42d4: $ff
	dec  c                                           ; $42d5: $0d
	ld   [hl], l                                     ; $42d6: $75
	ld   a, l                                        ; $42d7: $7d
	sbc  [hl]                                        ; $42d8: $9e
	ld   [bc], a                                     ; $42d9: $02
	and  l                                           ; $42da: $a5
	inc  b                                           ; $42db: $04
	xor  d                                           ; $42dc: $aa
	ld   a, h                                        ; $42dd: $7c
	inc  bc                                          ; $42de: $03
	ld   l, l                                        ; $42df: $6d
	dec  b                                           ; $42e0: $05
	add  hl, de                                      ; $42e1: $19
	ld   a, l                                        ; $42e2: $7d
	ld   e, b                                        ; $42e3: $58
	inc  bc                                          ; $42e4: $03
	and  a                                           ; $42e5: $a7
	adc  l                                           ; $42e6: $8d
	dec  c                                           ; $42e7: $0d
	halt                                             ; $42e8: $76
	ld   d, d                                        ; $42e9: $52
	ld   d, h                                        ; $42ea: $54
	ld   h, c                                        ; $42eb: $61
	halt                                             ; $42ec: $76
	ld   a, c                                        ; $42ed: $79
	ld   h, l                                        ; $42ee: $65
	ld   [hl], h                                     ; $42ef: $74
	ld   e, b                                        ; $42f0: $58
	ld   e, e                                        ; $42f1: $5b
	adc  h                                           ; $42f2: $8c
	ld   h, a                                        ; $42f3: $67
	sbc  a                                           ; $42f4: $9f
	dec  c                                           ; $42f5: $0d
	nop                                              ; $42f6: $00
	ld   a, [bc]                                     ; $42f7: $0a
	ld   bc, $9a6b                                   ; $42f8: $01 $6b $9a
	ld   [hl], l                                     ; $42fb: $75
	ld   a, l                                        ; $42fc: $7d
	rst  $38                                         ; $42fd: $ff
	rst  $38                                         ; $42fe: $ff
	sbc  a                                           ; $42ff: $9f
	dec  c                                           ; $4300: $0d
	nop                                              ; $4301: $00
	ld   a, [bc]                                     ; $4302: $0a
	dec  c                                           ; $4303: $0d
	nop                                              ; $4304: $00
	nop                                              ; $4305: $00
	rrca                                             ; $4306: $0f
	nop                                              ; $4307: $00
	ld   bc, $1e09                                   ; $4308: $01 $09 $1e
	ld   b, $40                                      ; $430b: $06 $40
	inc  bc                                          ; $430d: $03
	nop                                              ; $430e: $00
	ld   [bc], a                                     ; $430f: $02
	ld   b, $01                                      ; $4310: $06 $01
	ld   [bc], a                                     ; $4312: $02
	jr   nz, jr_049_4315                             ; $4313: $20 $00

jr_049_4315:
	rrca                                             ; $4315: $0f
	nop                                              ; $4316: $00
	ld   bc, $0706                                   ; $4317: $01 $06 $07
	nop                                              ; $431a: $00
	ld   [bc], a                                     ; $431b: $02
	rlca                                             ; $431c: $07
	ld   a, h                                        ; $431d: $7c
	ld   a, [bc]                                     ; $431e: $0a
	inc  b                                           ; $431f: $04
	add  b                                           ; $4320: $80
	add  $00                                         ; $4321: $c6 $00
	ld   c, $9d                                      ; $4323: $0e $9d
	rlca                                             ; $4325: $07
	ld   e, b                                        ; $4326: $58
	ld   [bc], a                                     ; $4327: $02
	inc  bc                                          ; $4328: $03
	jr   nz, @+$03                                   ; $4329: $20 $01

	jr   nz, jr_049_4350                             ; $432b: $20 $23

	nop                                              ; $432d: $00
	rlca                                             ; $432e: $07
	or   e                                           ; $432f: $b3
	ld   bc, $4f03                                   ; $4330: $01 $03 $4f
	ld   [bc], a                                     ; $4333: $02
	nop                                              ; $4334: $00
	inc  bc                                          ; $4335: $03
	ld   c, c                                        ; $4336: $49
	add  hl, hl                                      ; $4337: $29
	add  hl, hl                                      ; $4338: $29
	ld   bc, $2501                                   ; $4339: $01 $01 $25
	nop                                              ; $433c: $00
	rlca                                             ; $433d: $07
	ld   e, b                                        ; $433e: $58
	nop                                              ; $433f: $00
	inc  bc                                          ; $4340: $03
	ld   b, e                                        ; $4341: $43
	ld   bc, $2000                                   ; $4342: $01 $00 $20
	nop                                              ; $4345: $00
	rlca                                             ; $4346: $07
	jr   c, jr_049_434f                              ; $4347: $38 $06

	inc  bc                                          ; $4349: $03
	ld   b, e                                        ; $434a: $43
	ld   bc, $2501                                   ; $434b: $01 $01 $25
	inc  bc                                          ; $434e: $03

jr_049_434f:
	ld   b, e                                        ; $434f: $43

jr_049_4350:
	ld   bc, $2302                                   ; $4350: $01 $02 $23
	inc  e                                           ; $4353: $1c
	nop                                              ; $4354: $00
	rlca                                             ; $4355: $07
	db   $e3                                         ; $4356: $e3
	ld   b, $03                                      ; $4357: $06 $03
	ld   b, e                                        ; $4359: $43
	ld   bc, $2503                                   ; $435a: $01 $03 $25
	inc  bc                                          ; $435d: $03
	ld   b, e                                        ; $435e: $43
	ld   bc, $2305                                   ; $435f: $01 $05 $23
	inc  e                                           ; $4362: $1c
	nop                                              ; $4363: $00
	rlca                                             ; $4364: $07
	ld   l, h                                        ; $4365: $6c
	ld   [$4303], sp                                 ; $4366: $08 $03 $43
	ld   bc, $2506                                   ; $4369: $01 $06 $25
	nop                                              ; $436c: $00
	dec  c                                           ; $436d: $0d
	ld   [bc], a                                     ; $436e: $02
	nop                                              ; $436f: $00
	rrca                                             ; $4370: $0f
	nop                                              ; $4371: $00
	ld   bc, $0102                                   ; $4372: $01 $02 $01
	ld   h, c                                        ; $4375: $61
	and  c                                           ; $4376: $a1
	ld   a, c                                        ; $4377: $79
	ld   l, a                                        ; $4378: $6f
	ld   a, l                                        ; $4379: $7d
	sbc  [hl]                                        ; $437a: $9e
	ld   h, a                                        ; $437b: $67
	adc  l                                           ; $437c: $8d
	sbc  d                                           ; $437d: $9a
	ld   h, e                                        ; $437e: $63
	and  c                                           ; $437f: $a1
	sbc  a                                           ; $4380: $9f
	dec  c                                           ; $4381: $0d
	ld   d, b                                        ; $4382: $50
	ld   a, h                                        ; $4383: $7c
	rst  $38                                         ; $4384: $ff
	rst  $38                                         ; $4385: $ff
	ld   e, a                                        ; $4386: $5f
	ld   d, d                                        ; $4387: $52
	ld   h, c                                        ; $4388: $61
	and  b                                           ; $4389: $a0
	ld   [hl], d                                     ; $438a: $72
	ld   e, a                                        ; $438b: $5f
	ld   [hl], h                                     ; $438c: $74
	dec  c                                           ; $438d: $0d
	ld   d, d                                        ; $438e: $52
	ld   l, l                                        ; $438f: $6d
	ld   l, [hl]                                     ; $4390: $6e
	ld   e, e                                        ; $4391: $5b
	ld   l, l                                        ; $4392: $6d
	ld   d, d                                        ; $4393: $52
	ld   a, h                                        ; $4394: $7c
	ld   [hl], l                                     ; $4395: $75
	ld   h, a                                        ; $4396: $67
	ld   e, d                                        ; $4397: $5a
	rst  $38                                         ; $4398: $ff
	rst  $38                                         ; $4399: $ff
	dec  c                                           ; $439a: $0d
	nop                                              ; $439b: $00
	ld   a, [bc]                                     ; $439c: $0a
	rlca                                             ; $439d: $07
	xor  h                                           ; $439e: $ac
	nop                                              ; $439f: $00
	ld   [bc], a                                     ; $43a0: $02
	nop                                              ; $43a1: $00
	ld   bc, $2208                                   ; $43a2: $01 $08 $22
	nop                                              ; $43a5: $00
	rrca                                             ; $43a6: $0f
	ld   [bc], a                                     ; $43a7: $02
	nop                                              ; $43a8: $00
	inc  e                                           ; $43a9: $1c
	ld   [bc], a                                     ; $43aa: $02
	nop                                              ; $43ab: $00
	nop                                              ; $43ac: $00
	ld   bc, $9b96                                   ; $43ad: $01 $96 $9b
	ld   h, l                                        ; $43b0: $65
	ld   e, l                                        ; $43b1: $5d
	ld   [hl], h                                     ; $43b2: $74
	sub  [hl]                                        ; $43b3: $96
	sbc  a                                           ; $43b4: $9f
	dec  c                                           ; $43b5: $0d
	ld   [$6300], sp                                 ; $43b6: $08 $00 $63
	and  c                                           ; $43b9: $a1
	sbc  a                                           ; $43ba: $9f
	dec  c                                           ; $43bb: $0d
	nop                                              ; $43bc: $00
	ld   a, [bc]                                     ; $43bd: $0a
	ld   b, $fc                                      ; $43be: $06 $fc
	nop                                              ; $43c0: $00
	rrca                                             ; $43c1: $0f
	ld   [bc], a                                     ; $43c2: $02
	nop                                              ; $43c3: $00
	ld   bc, $9b96                                   ; $43c4: $01 $96 $9b
	ld   h, l                                        ; $43c7: $65
	ld   e, l                                        ; $43c8: $5d
	ld   [hl], h                                     ; $43c9: $74
	sub  [hl]                                        ; $43ca: $96
	sbc  a                                           ; $43cb: $9f
	dec  c                                           ; $43cc: $0d
	ld   [$6308], sp                                 ; $43cd: $08 $08 $63
	and  c                                           ; $43d0: $a1
	sbc  a                                           ; $43d1: $9f
	dec  c                                           ; $43d2: $0d
	nop                                              ; $43d3: $00
	ld   a, [bc]                                     ; $43d4: $0a
	rrca                                             ; $43d5: $0f
	nop                                              ; $43d6: $00
	ld   bc, $6f01                                   ; $43d7: $01 $01 $6f
	ld   e, d                                        ; $43da: $5a
	ld   d, d                                        ; $43db: $52
	adc  h                                           ; $43dc: $8c
	ld   h, a                                        ; $43dd: $67
	sub  [hl]                                        ; $43de: $96
	sbc  a                                           ; $43df: $9f
	dec  c                                           ; $43e0: $0d
	inc  b                                           ; $43e1: $04
	ld   l, l                                        ; $43e2: $6d
	ld   a, h                                        ; $43e3: $7c
	inc  b                                           ; $43e4: $04
	rst  ToBoot                                         ; $43e5: $c7
	inc  bc                                          ; $43e6: $03
	ld   c, a                                        ; $43e7: $4f
	ld   a, l                                        ; $43e8: $7d
	sbc  [hl]                                        ; $43e9: $9e
	ld   [$0d00], sp                                 ; $43ea: $08 $00 $0d
	ld   [hl], l                                     ; $43ed: $75
	ld   h, a                                        ; $43ee: $67
	sub  [hl]                                        ; $43ef: $96
	sbc  a                                           ; $43f0: $9f
	dec  c                                           ; $43f1: $0d
	nop                                              ; $43f2: $00
	ld   a, [bc]                                     ; $43f3: $0a
	rrca                                             ; $43f4: $0f
	ld   [bc], a                                     ; $43f5: $02
	nop                                              ; $43f6: $00
	ld   bc, $a16b                                   ; $43f7: $01 $6b $a1
	ld   a, b                                        ; $43fa: $78
	ld   h, c                                        ; $43fb: $61
	halt                                             ; $43fc: $76
	sbc  [hl]                                        ; $43fd: $9e
	ld   [hl], a                                     ; $43fe: $77
	ld   d, h                                        ; $43ff: $54
	ld   [hl], l                                     ; $4400: $75
	sub  b                                           ; $4401: $90
	ld   d, d                                        ; $4402: $52
	ld   d, d                                        ; $4403: $52
	ld   h, [hl]                                     ; $4404: $66
	sub  c                                           ; $4405: $91
	dec  c                                           ; $4406: $0d
	ld   d, b                                        ; $4407: $50
	sbc  b                                           ; $4408: $98
	adc  h                                           ; $4409: $8c
	ld   l, c                                        ; $440a: $69
	and  c                                           ; $440b: $a1
	ld   a, h                                        ; $440c: $7c
	sbc  a                                           ; $440d: $9f
	dec  c                                           ; $440e: $0d
	nop                                              ; $440f: $00
	ld   a, [bc]                                     ; $4410: $0a
	ld   bc, $6d9d                                   ; $4411: $01 $9d $6d
	ld   e, l                                        ; $4414: $5d
	ld   h, l                                        ; $4415: $65
	ld   a, h                                        ; $4416: $7c
	inc  bc                                          ; $4417: $03
	ld   l, l                                        ; $4418: $6d
	dec  b                                           ; $4419: $05
	add  hl, de                                      ; $441a: $19
	ld   a, l                                        ; $441b: $7d
	sbc  [hl]                                        ; $441c: $9e
	dec  c                                           ; $441d: $0d
	inc  bc                                          ; $441e: $03
	jp   nc, $2c04                                   ; $441f: $d2 $04 $2c

	ld   [hl], l                                     ; $4422: $75
	ld   h, a                                        ; $4423: $67
	sbc  l                                           ; $4424: $9d
	sub  [hl]                                        ; $4425: $96
	sbc  a                                           ; $4426: $9f
	dec  c                                           ; $4427: $0d
	nop                                              ; $4428: $00
	ld   a, [bc]                                     ; $4429: $0a
	ld   bc, $9003                                   ; $442a: $01 $03 $90
	inc  bc                                          ; $442d: $03
	cp   e                                           ; $442e: $bb
	inc  b                                           ; $442f: $04
	ld   [hl], a                                     ; $4430: $77
	inc  bc                                          ; $4431: $03
	or   l                                           ; $4432: $b5
	dec  b                                           ; $4433: $05
	inc  d                                           ; $4434: $14
	ld   a, h                                        ; $4435: $7c
	inc  bc                                          ; $4436: $03
	jp   nc, $2c04                                   ; $4437: $d2 $04 $2c

	inc  bc                                          ; $443a: $03
	db   $10                                         ; $443b: $10
	and  b                                           ; $443c: $a0
	ld   [bc], a                                     ; $443d: $02
	and  d                                           ; $443e: $a2
	add  h                                           ; $443f: $84
	dec  c                                           ; $4440: $0d
	ld   h, c                                        ; $4441: $61
	halt                                             ; $4442: $76
	ld   [hl], l                                     ; $4443: $75
	sbc  [hl]                                        ; $4444: $9e
	inc  bc                                          ; $4445: $03
	and  [hl]                                        ; $4446: $a6
	inc  bc                                          ; $4447: $03
	ld   [hl], b                                     ; $4448: $70
	ld   h, e                                        ; $4449: $63
	and  b                                           ; $444a: $a0
	inc  b                                           ; $444b: $04
	pop  de                                          ; $444c: $d1
	ld   a, c                                        ; $444d: $79
	ld   [hl], d                                     ; $444e: $72
	ld   e, a                                        ; $444f: $5f
	ld   [hl], h                                     ; $4450: $74
	dec  c                                           ; $4451: $0d
	ld   d, d                                        ; $4452: $52
	ld   l, l                                        ; $4453: $6d
	ld   l, [hl]                                     ; $4454: $6e
	ld   e, e                                        ; $4455: $5b
	adc  h                                           ; $4456: $8c
	ld   h, a                                        ; $4457: $67
	sbc  l                                           ; $4458: $9d
	sbc  a                                           ; $4459: $9f
	dec  c                                           ; $445a: $0d
	nop                                              ; $445b: $00
	ld   a, [bc]                                     ; $445c: $0a
	inc  e                                           ; $445d: $1c
	ld   [bc], a                                     ; $445e: $02
	ld   [bc], a                                     ; $445f: $02
	ld   [bc], a                                     ; $4460: $02
	ld   bc, $7d75                                   ; $4461: $01 $75 $7d
	sbc  [hl]                                        ; $4464: $9e
	adc  h                                           ; $4465: $8c
	ld   d, d                                        ; $4466: $52
	sbc  b                                           ; $4467: $98
	adc  h                                           ; $4468: $8c
	ld   h, a                                        ; $4469: $67
	sbc  l                                           ; $446a: $9d
	sub  [hl]                                        ; $446b: $96
	ld   a, [$000d]                                  ; $446c: $fa $0d $00
	ld   a, [bc]                                     ; $446f: $0a
	dec  h                                           ; $4470: $25
	ld   [bc], a                                     ; $4471: $02
	rlca                                             ; $4472: $07
	ld   sp, $0305                                   ; $4473: $31 $05 $03
	jr   nz, jr_049_4479                             ; $4476: $20 $01

	nop                                              ; $4478: $00

jr_049_4479:
	jr   nz, jr_049_447b                             ; $4479: $20 $00

jr_049_447b:
	inc  e                                           ; $447b: $1c
	ld   [bc], a                                     ; $447c: $02
	nop                                              ; $447d: $00
	nop                                              ; $447e: $00
	ld   bc, $508c                                   ; $447f: $01 $8c $50
	sbc  [hl]                                        ; $4482: $9e
	inc  bc                                          ; $4483: $03
	ld   l, c                                        ; $4484: $69
	inc  bc                                          ; $4485: $03
	inc  c                                           ; $4486: $0c
	ld   a, l                                        ; $4487: $7d
	ld   h, c                                        ; $4488: $61
	and  c                                           ; $4489: $a1
	ld   a, b                                        ; $448a: $78
	sub  b                                           ; $448b: $90
	ld   a, h                                        ; $448c: $7c
	dec  c                                           ; $448d: $0d
	ld   [hl], l                                     ; $448e: $75
	ld   h, a                                        ; $448f: $67
	sbc  l                                           ; $4490: $9d
	ld   a, e                                        ; $4491: $7b
	sbc  a                                           ; $4492: $9f
	dec  c                                           ; $4493: $0d
	nop                                              ; $4494: $00
	ld   a, [bc]                                     ; $4495: $0a
	ld   bc, $9a6b                                   ; $4496: $01 $6b $9a
	ld   [hl], l                                     ; $4499: $75
	ld   a, l                                        ; $449a: $7d
	sbc  [hl]                                        ; $449b: $9e
	inc  b                                           ; $449c: $04
	adc  a                                           ; $449d: $8f
	inc  b                                           ; $449e: $04
	xor  d                                           ; $449f: $aa
	ld   a, h                                        ; $44a0: $7c
	ld   [bc], a                                     ; $44a1: $02
	or   d                                           ; $44a2: $b2
	ld   [bc], a                                     ; $44a3: $02
	xor  d                                           ; $44a4: $aa
	ld   a, h                                        ; $44a5: $7c
	inc  bc                                          ; $44a6: $03
	ld   l, l                                        ; $44a7: $6d
	dec  b                                           ; $44a8: $05
	add  hl, de                                      ; $44a9: $19
	and  b                                           ; $44aa: $a0
	dec  c                                           ; $44ab: $0d
	nop                                              ; $44ac: $00
	dec  b                                           ; $44ad: $05
	ld   b, b                                        ; $44ae: $40
	ld   b, e                                        ; $44af: $43
	inc  bc                                          ; $44b0: $03
	ld   b, e                                        ; $44b1: $43
	ld   bc, $2801                                   ; $44b2: $01 $01 $28
	nop                                              ; $44b5: $00
	ld   bc, $7e03                                   ; $44b6: $01 $03 $7e
	sbc  l                                           ; $44b9: $9d
	sbc  b                                           ; $44ba: $98
	adc  h                                           ; $44bb: $8c
	ld   h, a                                        ; $44bc: $67
	sbc  a                                           ; $44bd: $9f
	dec  c                                           ; $44be: $0d
	nop                                              ; $44bf: $00
	ld   a, [bc]                                     ; $44c0: $0a
	dec  c                                           ; $44c1: $0d
	nop                                              ; $44c2: $00
	nop                                              ; $44c3: $00
	rrca                                             ; $44c4: $0f
	nop                                              ; $44c5: $00
	ld   bc, $0d00                                   ; $44c6: $01 $00 $0d
	ld   [bc], a                                     ; $44c9: $02
	rlca                                             ; $44ca: $07
	rrca                                             ; $44cb: $0f
	nop                                              ; $44cc: $00
	ld   bc, $0102                                   ; $44cd: $01 $02 $01
	ld   h, c                                        ; $44d0: $61
	and  c                                           ; $44d1: $a1
	ld   a, c                                        ; $44d2: $79
	ld   l, a                                        ; $44d3: $6f
	ld   a, l                                        ; $44d4: $7d
	sbc  [hl]                                        ; $44d5: $9e
	ld   h, a                                        ; $44d6: $67
	adc  l                                           ; $44d7: $8d
	sbc  d                                           ; $44d8: $9a
	ld   h, e                                        ; $44d9: $63
	and  c                                           ; $44da: $a1
	sbc  a                                           ; $44db: $9f
	dec  c                                           ; $44dc: $0d
	ld   d, b                                        ; $44dd: $50
	ld   a, h                                        ; $44de: $7c
	rst  $38                                         ; $44df: $ff
	rst  $38                                         ; $44e0: $ff
	ld   e, a                                        ; $44e1: $5f
	ld   d, d                                        ; $44e2: $52
	ld   h, c                                        ; $44e3: $61
	and  b                                           ; $44e4: $a0
	ld   [hl], d                                     ; $44e5: $72
	ld   e, a                                        ; $44e6: $5f
	ld   [hl], h                                     ; $44e7: $74
	dec  c                                           ; $44e8: $0d
	nop                                              ; $44e9: $00
	dec  b                                           ; $44ea: $05
	ld   b, b                                        ; $44eb: $40
	ld   c, a                                        ; $44ec: $4f
	ld   bc, $0000                                   ; $44ed: $01 $00 $00
	ld   bc, $6d52                                   ; $44f0: $01 $52 $6d
	ld   l, [hl]                                     ; $44f3: $6e
	ld   e, e                                        ; $44f4: $5b
	ld   l, l                                        ; $44f5: $6d
	ld   d, d                                        ; $44f6: $52
	ld   a, h                                        ; $44f7: $7c
	ld   [hl], l                                     ; $44f8: $75
	ld   h, a                                        ; $44f9: $67
	ld   e, d                                        ; $44fa: $5a
	rst  $38                                         ; $44fb: $ff
	rst  $38                                         ; $44fc: $ff
	dec  c                                           ; $44fd: $0d
	nop                                              ; $44fe: $00
	ld   a, [bc]                                     ; $44ff: $0a
	rrca                                             ; $4500: $0f
	ld   [bc], a                                     ; $4501: $02
	rlca                                             ; $4502: $07
	ld   bc, $ffff                                   ; $4503: $01 $ff $ff
	ld   e, c                                        ; $4506: $59
	adc  h                                           ; $4507: $8c
	ld   d, d                                        ; $4508: $52
	adc  h                                           ; $4509: $8c
	ld   l, c                                        ; $450a: $69
	and  c                                           ; $450b: $a1
	sbc  l                                           ; $450c: $9d
	sub  [hl]                                        ; $450d: $96
	rst  $38                                         ; $450e: $ff
	rst  $38                                         ; $450f: $ff
	dec  c                                           ; $4510: $0d
	ld   l, e                                        ; $4511: $6b
	sbc  d                                           ; $4512: $9a
	ld   [hl], l                                     ; $4513: $75
	ld   a, l                                        ; $4514: $7d
	sbc  [hl]                                        ; $4515: $9e
	ld   a, l                                        ; $4516: $7d
	ld   h, [hl]                                     ; $4517: $66
	adc  a                                           ; $4518: $8f
	adc  h                                           ; $4519: $8c
	ld   h, l                                        ; $451a: $65
	sub  l                                           ; $451b: $95
	ld   d, h                                        ; $451c: $54
	rst  $38                                         ; $451d: $ff
	rst  $38                                         ; $451e: $ff
	dec  c                                           ; $451f: $0d
	nop                                              ; $4520: $00
	ld   a, [bc]                                     ; $4521: $0a
	dec  h                                           ; $4522: $25
	ld   [bc], a                                     ; $4523: $02
	rlca                                             ; $4524: $07
	ld   sp, $0305                                   ; $4525: $31 $05 $03
	jr   nz, jr_049_452b                             ; $4528: $20 $01

	nop                                              ; $452a: $00

jr_049_452b:
	jr   nz, jr_049_452d                             ; $452b: $20 $00

jr_049_452d:
	inc  e                                           ; $452d: $1c
	ld   [bc], a                                     ; $452e: $02
	rlca                                             ; $452f: $07
	rlca                                             ; $4530: $07
	ld   bc, $0458                                   ; $4531: $01 $58 $04
	ld   a, e                                        ; $4534: $7b
	sbc  d                                           ; $4535: $9a
	ld   h, e                                        ; $4536: $63
	adc  h                                           ; $4537: $8c
	rst  $38                                         ; $4538: $ff
	rst  $38                                         ; $4539: $ff
	dec  c                                           ; $453a: $0d
	nop                                              ; $453b: $00
	ld   a, [bc]                                     ; $453c: $0a
	dec  c                                           ; $453d: $0d
	nop                                              ; $453e: $00
	nop                                              ; $453f: $00
	rrca                                             ; $4540: $0f
	nop                                              ; $4541: $00
	ld   bc, $4005                                   ; $4542: $01 $05 $40
	ld   b, e                                        ; $4545: $43
	inc  bc                                          ; $4546: $03
	ld   b, e                                        ; $4547: $43
	ld   bc, $2801                                   ; $4548: $01 $01 $28
	nop                                              ; $454b: $00
	ld   bc, $ffff                                   ; $454c: $01 $ff $ff
	rst  $38                                         ; $454f: $ff
	rst  $38                                         ; $4550: $ff
	ld   h, a                                        ; $4551: $67
	adc  l                                           ; $4552: $8d
	sbc  d                                           ; $4553: $9a
	ld   h, e                                        ; $4554: $63
	and  c                                           ; $4555: $a1
	sbc  [hl]                                        ; $4556: $9e
	dec  c                                           ; $4557: $0d
	ld   e, e                                        ; $4558: $5b
	ld   h, b                                        ; $4559: $60
	and  c                                           ; $455a: $a1
	ld   [bc], a                                     ; $455b: $02
	jr   z, jr_049_45b0                              ; $455c: $28 $52

	ld   l, h                                        ; $455e: $6c
	rst  $38                                         ; $455f: $ff
	rst  $38                                         ; $4560: $ff
	rst  $38                                         ; $4561: $ff
	rst  $38                                         ; $4562: $ff
	dec  c                                           ; $4563: $0d
	nop                                              ; $4564: $00
	ld   a, [bc]                                     ; $4565: $0a
	dec  b                                           ; $4566: $05
	ld   b, b                                        ; $4567: $40
	ld   c, a                                        ; $4568: $4f
	ld   bc, $0000                                   ; $4569: $01 $00 $00
	nop                                              ; $456c: $00
	inc  e                                           ; $456d: $1c
	ld   [bc], a                                     ; $456e: $02
	nop                                              ; $456f: $00
	nop                                              ; $4570: $00
	ld   [bc], a                                     ; $4571: $02
	dec  b                                           ; $4572: $05
	ld   b, b                                        ; $4573: $40
	ld   c, a                                        ; $4574: $4f
	ld   bc, $0000                                   ; $4575: $01 $00 $00
	ld   bc, $a161                                   ; $4578: $01 $61 $a1
	ld   a, c                                        ; $457b: $79
	ld   l, a                                        ; $457c: $6f
	ld   a, l                                        ; $457d: $7d
	rst  $38                                         ; $457e: $ff
	rst  $38                                         ; $457f: $ff
	ld   d, b                                        ; $4580: $50
	sub  a                                           ; $4581: $97
	sbc  [hl]                                        ; $4582: $9e
	dec  c                                           ; $4583: $0d
	nop                                              ; $4584: $00
	inc  e                                           ; $4585: $1c
	ld   [bc], a                                     ; $4586: $02
	inc  bc                                          ; $4587: $03
	inc  bc                                          ; $4588: $03
	ld   bc, $5477                                   ; $4589: $01 $77 $54
	ld   a, b                                        ; $458c: $78
	ld   h, e                                        ; $458d: $63
	ld   d, d                                        ; $458e: $52
	adc  h                                           ; $458f: $8c
	ld   h, l                                        ; $4590: $65
	ld   l, l                                        ; $4591: $6d
	ld   a, h                                        ; $4592: $7c
	ld   sp, hl                                      ; $4593: $f9
	dec  c                                           ; $4594: $0d
	ld   [bc], a                                     ; $4595: $02
	ld   [hl], d                                     ; $4596: $72
	inc  bc                                          ; $4597: $03
	dec  bc                                          ; $4598: $0b
	ld   e, d                                        ; $4599: $5a
	sbc  l                                           ; $459a: $9d
	sbc  c                                           ; $459b: $99
	ld   d, d                                        ; $459c: $52
	ld   [hl], l                                     ; $459d: $75
	ld   h, a                                        ; $459e: $67
	sbc  l                                           ; $459f: $9d
	sub  [hl]                                        ; $45a0: $96
	sbc  a                                           ; $45a1: $9f
	dec  c                                           ; $45a2: $0d
	nop                                              ; $45a3: $00
	ld   a, [bc]                                     ; $45a4: $0a
	inc  e                                           ; $45a5: $1c
	ld   [bc], a                                     ; $45a6: $02
	dec  b                                           ; $45a7: $05
	dec  b                                           ; $45a8: $05
	ld   bc, $a502                                   ; $45a9: $01 $02 $a5
	ld   [bc], a                                     ; $45ac: $02
	sub  e                                           ; $45ad: $93
	ld   a, h                                        ; $45ae: $7c
	inc  bc                                          ; $45af: $03

jr_049_45b0:
	ld   l, l                                        ; $45b0: $6d
	dec  b                                           ; $45b1: $05
	add  hl, de                                      ; $45b2: $19
	ld   a, l                                        ; $45b3: $7d
	inc  bc                                          ; $45b4: $03
	and  a                                           ; $45b5: $a7
	and  c                                           ; $45b6: $a1
	ld   l, [hl]                                     ; $45b7: $6e
	inc  b                                           ; $45b8: $04
	ld   a, b                                        ; $45b9: $78
	ld   e, d                                        ; $45ba: $5a
	dec  c                                           ; $45bb: $0d
	sub  [hl]                                        ; $45bc: $96
	sbc  e                                           ; $45bd: $9b
	ld   h, l                                        ; $45be: $65
	ld   d, d                                        ; $45bf: $52
	and  c                                           ; $45c0: $a1
	ld   h, [hl]                                     ; $45c1: $66
	sub  c                                           ; $45c2: $91
	ld   d, b                                        ; $45c3: $50
	sbc  b                                           ; $45c4: $98
	adc  h                                           ; $45c5: $8c
	ld   l, c                                        ; $45c6: $69
	and  c                                           ; $45c7: $a1
	dec  c                                           ; $45c8: $0d
	ld   h, c                                        ; $45c9: $61
	halt                                             ; $45ca: $76
	ld   sp, hl                                      ; $45cb: $f9
	dec  c                                           ; $45cc: $0d
	nop                                              ; $45cd: $00
	ld   a, [bc]                                     ; $45ce: $0a
	jr   jr_049_45d3                                 ; $45cf: $18 $02

	nop                                              ; $45d1: $00
	inc  bc                                          ; $45d2: $03

jr_049_45d3:
	and  a                                           ; $45d3: $a7
	adc  [hl]                                        ; $45d4: $8e
	nop                                              ; $45d5: $00
	nop                                              ; $45d6: $00
	ld   e, d                                        ; $45d7: $5a
	and  c                                           ; $45d8: $a1
	ld   a, [hl]                                     ; $45d9: $7e
	sbc  c                                           ; $45da: $99
	nop                                              ; $45db: $00
	ld   bc, $da07                                   ; $45dc: $01 $07 $da
	ld   [bc], a                                     ; $45df: $02
	ld   [bc], a                                     ; $45e0: $02
	ld   [bc], a                                     ; $45e1: $02
	ld   bc, $2000                                   ; $45e2: $01 $00 $20
	nop                                              ; $45e5: $00
	rlca                                             ; $45e6: $07
	adc  c                                           ; $45e7: $89
	inc  bc                                          ; $45e8: $03
	ld   [bc], a                                     ; $45e9: $02
	ld   [bc], a                                     ; $45ea: $02
	ld   bc, $2001                                   ; $45eb: $01 $01 $20
	nop                                              ; $45ee: $00
	rrca                                             ; $45ef: $0f
	nop                                              ; $45f0: $00
	ld   bc, $6701                                   ; $45f1: $01 $01 $67
	adc  l                                           ; $45f4: $8d
	adc  h                                           ; $45f5: $8c
	ld   l, c                                        ; $45f6: $69
	and  c                                           ; $45f7: $a1
	rst  $38                                         ; $45f8: $ff
	rst  $38                                         ; $45f9: $ff
	dec  c                                           ; $45fa: $0d
	ld   l, e                                        ; $45fb: $6b
	sbc  d                                           ; $45fc: $9a
	ld   [hl], l                                     ; $45fd: $75
	ld   a, l                                        ; $45fe: $7d
	sbc  [hl]                                        ; $45ff: $9e
	ld   [bc], a                                     ; $4600: $02
	and  l                                           ; $4601: $a5
	inc  b                                           ; $4602: $04
	xor  d                                           ; $4603: $aa
	ld   a, h                                        ; $4604: $7c
	inc  bc                                          ; $4605: $03
	ld   l, l                                        ; $4606: $6d
	dec  b                                           ; $4607: $05
	add  hl, de                                      ; $4608: $19
	ld   a, l                                        ; $4609: $7d
	dec  c                                           ; $460a: $0d
	inc  bc                                          ; $460b: $03
	and  a                                           ; $460c: $a7
	adc  h                                           ; $460d: $8c
	ld   l, c                                        ; $460e: $69
	ld   [hl], h                                     ; $460f: $74
	ld   d, d                                        ; $4610: $52
	ld   l, l                                        ; $4611: $6d
	ld   l, [hl]                                     ; $4612: $6e
	ld   e, e                                        ; $4613: $5b
	adc  h                                           ; $4614: $8c
	ld   h, a                                        ; $4615: $67
	sbc  a                                           ; $4616: $9f
	dec  c                                           ; $4617: $0d
	nop                                              ; $4618: $00
	ld   a, [bc]                                     ; $4619: $0a
	inc  e                                           ; $461a: $1c
	ld   [bc], a                                     ; $461b: $02
	nop                                              ; $461c: $00
	nop                                              ; $461d: $00
	ld   bc, $599d                                   ; $461e: $01 $9d $59
	sbc  b                                           ; $4621: $98
	adc  h                                           ; $4622: $8c
	ld   h, l                                        ; $4623: $65
	ld   l, l                                        ; $4624: $6d
	sbc  a                                           ; $4625: $9f
	dec  c                                           ; $4626: $0d
	ld   l, e                                        ; $4627: $6b
	sbc  d                                           ; $4628: $9a
	ld   [hl], l                                     ; $4629: $75
	ld   a, l                                        ; $462a: $7d
	sbc  [hl]                                        ; $462b: $9e
	ld   [bc], a                                     ; $462c: $02
	and  l                                           ; $462d: $a5
	inc  b                                           ; $462e: $04
	xor  d                                           ; $462f: $aa
	ld   a, l                                        ; $4630: $7d
	ld   e, b                                        ; $4631: $58
	inc  bc                                          ; $4632: $03
	and  a                                           ; $4633: $a7
	adc  l                                           ; $4634: $8d
	halt                                             ; $4635: $76
	ld   d, d                                        ; $4636: $52
	ld   d, h                                        ; $4637: $54
	dec  c                                           ; $4638: $0d
	ld   h, c                                        ; $4639: $61
	halt                                             ; $463a: $76
	ld   a, c                                        ; $463b: $79
	ld   h, l                                        ; $463c: $65
	ld   [hl], h                                     ; $463d: $74
	ld   e, b                                        ; $463e: $58
	ld   e, e                                        ; $463f: $5b
	adc  h                                           ; $4640: $8c
	ld   h, a                                        ; $4641: $67
	sbc  l                                           ; $4642: $9d
	sbc  a                                           ; $4643: $9f
	dec  c                                           ; $4644: $0d
	nop                                              ; $4645: $00
	ld   a, [bc]                                     ; $4646: $0a
	ld   bc, $9a6b                                   ; $4647: $01 $6b $9a
	ld   [hl], l                                     ; $464a: $75
	ld   a, l                                        ; $464b: $7d
	sbc  [hl]                                        ; $464c: $9e
	ld   h, d                                        ; $464d: $62
	ld   e, e                                        ; $464e: $5b
	ld   h, b                                        ; $464f: $60
	and  c                                           ; $4650: $a1
	sub  [hl]                                        ; $4651: $96
	ld   d, h                                        ; $4652: $54
	sbc  a                                           ; $4653: $9f
	dec  c                                           ; $4654: $0d
	nop                                              ; $4655: $00
	ld   a, [bc]                                     ; $4656: $0a
	rrca                                             ; $4657: $0f
	nop                                              ; $4658: $00
	ld   bc, $000d                                   ; $4659: $01 $0d $00
	nop                                              ; $465c: $00
	add  hl, bc                                      ; $465d: $09
	ld   e, $23                                      ; $465e: $1e $23
	ld   bc, $6b01                                   ; $4660: $01 $01 $6b
	sbc  d                                           ; $4663: $9a
	ld   h, [hl]                                     ; $4664: $66
	sub  c                                           ; $4665: $91
	sbc  [hl]                                        ; $4666: $9e
	inc  bc                                          ; $4667: $03
	ld   l, h                                        ; $4668: $6c
	ld   h, l                                        ; $4669: $65
	inc  bc                                          ; $466a: $03
	and  a                                           ; $466b: $a7
	adc  [hl]                                        ; $466c: $8e
	halt                                             ; $466d: $76
	ld   h, a                                        ; $466e: $67
	sbc  c                                           ; $466f: $99
	ld   e, c                                        ; $4670: $59
	sbc  a                                           ; $4671: $9f
	dec  c                                           ; $4672: $0d
	nop                                              ; $4673: $00
	ld   a, [bc]                                     ; $4674: $0a
	inc  c                                           ; $4675: $0c
	ld   [bc], a                                     ; $4676: $02
	dec  h                                           ; $4677: $25
	nop                                              ; $4678: $00
	ld   c, $02                                      ; $4679: $0e $02
	rrca                                             ; $467b: $0f
	nop                                              ; $467c: $00
	ld   bc, $5401                                   ; $467d: $01 $01 $54
	db   $fc                                         ; $4680: $fc
	and  c                                           ; $4681: $a1
	sub  [hl]                                        ; $4682: $96
	ld   e, l                                        ; $4683: $5d
	inc  b                                           ; $4684: $04
	ld   b, d                                        ; $4685: $42
	ld   l, l                                        ; $4686: $6d
	rst  $38                                         ; $4687: $ff
	rst  $38                                         ; $4688: $ff
	dec  c                                           ; $4689: $0d
	ld   e, c                                        ; $468a: $59
	ld   a, b                                        ; $468b: $78
	sbc  b                                           ; $468c: $98
	inc  b                                           ; $468d: $04
	dec  c                                           ; $468e: $0d
	ld   e, d                                        ; $468f: $5a
	dec  b                                           ; $4690: $05
	inc  de                                          ; $4691: $13
	ld   a, c                                        ; $4692: $79
	ld   a, b                                        ; $4693: $78
	ld   [hl], c                                     ; $4694: $71
	ld   l, l                                        ; $4695: $6d
	ld   l, h                                        ; $4696: $6c
	sbc  a                                           ; $4697: $9f
	dec  c                                           ; $4698: $0d
	nop                                              ; $4699: $00
	ld   a, [bc]                                     ; $469a: $0a
	add  hl, hl                                      ; $469b: $29
	ld   b, $00                                      ; $469c: $06 $00
	rrca                                             ; $469e: $0f
	nop                                              ; $469f: $00
	ld   bc, $5201                                   ; $46a0: $01 $01 $52
	ld   d, [hl]                                     ; $46a3: $56
	sbc  [hl]                                        ; $46a4: $9e
	inc  b                                           ; $46a5: $04
	ld   c, $03                                      ; $46a6: $0e $03
	sbc  l                                           ; $46a8: $9d
	inc  b                                           ; $46a9: $04
	and  [hl]                                        ; $46aa: $a6
	ld   [hl], l                                     ; $46ab: $75
	ld   h, a                                        ; $46ac: $67
	sbc  a                                           ; $46ad: $9f
	dec  c                                           ; $46ae: $0d
	ld   e, d                                        ; $46af: $5a
	and  c                                           ; $46b0: $a1
	ld   a, [hl]                                     ; $46b1: $7e
	sbc  b                                           ; $46b2: $98
	adc  h                                           ; $46b3: $8c
	ld   h, a                                        ; $46b4: $67
	ld   a, [$000d]                                  ; $46b5: $fa $0d $00
	ld   a, [bc]                                     ; $46b8: $0a
	rlca                                             ; $46b9: $07
	cp   e                                           ; $46ba: $bb
	dec  b                                           ; $46bb: $05
	inc  bc                                          ; $46bc: $03
	ld   b, e                                        ; $46bd: $43
	ld   bc, $2000                                   ; $46be: $01 $00 $20
	nop                                              ; $46c1: $00
	rrca                                             ; $46c2: $0f
	ld   [bc], a                                     ; $46c3: $02
	dec  b                                           ; $46c4: $05
	ld   bc, $546b                                   ; $46c5: $01 $6b $54
	ld   [hl], l                                     ; $46c8: $75
	ld   h, a                                        ; $46c9: $67
	ld   e, c                                        ; $46ca: $59
	rst  $38                                         ; $46cb: $ff
	rst  $38                                         ; $46cc: $ff
	ld   l, e                                        ; $46cd: $6b
	sbc  d                                           ; $46ce: $9a
	ld   [hl], l                                     ; $46cf: $75
	ld   a, l                                        ; $46d0: $7d
	sbc  [hl]                                        ; $46d1: $9e
	dec  c                                           ; $46d2: $0d
	inc  bc                                          ; $46d3: $03
	ld   l, l                                        ; $46d4: $6d
	dec  b                                           ; $46d5: $05
	add  hl, de                                      ; $46d6: $19
	and  b                                           ; $46d7: $a0
	dec  b                                           ; $46d8: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46d9: $cf
	adc  a                                           ; $46da: $8f
	adc  h                                           ; $46db: $8c
	ld   h, a                                        ; $46dc: $67
	sbc  l                                           ; $46dd: $9d
	sub  [hl]                                        ; $46de: $96
	sbc  a                                           ; $46df: $9f
	dec  c                                           ; $46e0: $0d
	nop                                              ; $46e1: $00
	ld   a, [bc]                                     ; $46e2: $0a
	dec  h                                           ; $46e3: $25
	ld   [bc], a                                     ; $46e4: $02
	dec  b                                           ; $46e5: $05
	ld   b, b                                        ; $46e6: $40
	ld   b, e                                        ; $46e7: $43
	inc  bc                                          ; $46e8: $03
	ld   b, e                                        ; $46e9: $43
	ld   bc, $2801                                   ; $46ea: $01 $01 $28
	nop                                              ; $46ed: $00
	rlca                                             ; $46ee: $07
	add  c                                           ; $46ef: $81
	inc  b                                           ; $46f0: $04
	ld   [bc], a                                     ; $46f1: $02
	nop                                              ; $46f2: $00
	ld   bc, $2208                                   ; $46f3: $01 $08 $22
	nop                                              ; $46f6: $00
	inc  e                                           ; $46f7: $1c
	ld   [bc], a                                     ; $46f8: $02
	dec  b                                           ; $46f9: $05
	dec  b                                           ; $46fa: $05
	ld   bc, $0458                                   ; $46fb: $01 $58 $04
	ld   a, e                                        ; $46fe: $7b
	sbc  d                                           ; $46ff: $9a
	ld   h, e                                        ; $4700: $63
	adc  h                                           ; $4701: $8c
	ld   [hl], l                                     ; $4702: $75
	ld   h, l                                        ; $4703: $65
	ld   l, l                                        ; $4704: $6d
	rst  $38                                         ; $4705: $ff
	rst  $38                                         ; $4706: $ff
	dec  c                                           ; $4707: $0d
	ld   [$6300], sp                                 ; $4708: $08 $00 $63
	and  c                                           ; $470b: $a1
	sbc  [hl]                                        ; $470c: $9e
	call c, $c9f5                                    ; $470d: $dc $f5 $c9
	ld   a, c                                        ; $4710: $79
	dec  c                                           ; $4711: $0d
	ld   [bc], a                                     ; $4712: $02
	ld   [hl], d                                     ; $4713: $72
	inc  bc                                          ; $4714: $03
	dec  bc                                          ; $4715: $0b
	ld   e, d                                        ; $4716: $5a
	sbc  l                                           ; $4717: $9d
	sbc  c                                           ; $4718: $99
	ld   d, d                                        ; $4719: $52
	ld   [hl], l                                     ; $471a: $75
	ld   h, a                                        ; $471b: $67
	sbc  l                                           ; $471c: $9d
	sbc  a                                           ; $471d: $9f
	dec  c                                           ; $471e: $0d
	nop                                              ; $471f: $00
	ld   a, [bc]                                     ; $4720: $0a
	ld   bc, $7003                                   ; $4721: $01 $03 $70
	ld   e, l                                        ; $4724: $5d
	inc  b                                           ; $4725: $04
	sub  l                                           ; $4726: $95
	ld   [bc], a                                     ; $4727: $02
	ld   hl, $9079                                   ; $4728: $21 $79 $90
	ld   [hl], a                                     ; $472b: $77
	ld   [hl], c                                     ; $472c: $71
	ld   [hl], h                                     ; $472d: $74
	dec  c                                           ; $472e: $0d
	inc  bc                                          ; $472f: $03
	and  a                                           ; $4730: $a7
	adc  [hl]                                        ; $4731: $8e
	ld   h, c                                        ; $4732: $61
	halt                                             ; $4733: $76
	and  b                                           ; $4734: $a0
	ld   e, b                                        ; $4735: $58
	ld   h, a                                        ; $4736: $67
	ld   h, a                                        ; $4737: $67
	adc  a                                           ; $4738: $8f
	dec  c                                           ; $4739: $0d
	ld   h, l                                        ; $473a: $65
	adc  h                                           ; $473b: $8c
	ld   h, a                                        ; $473c: $67
	sbc  l                                           ; $473d: $9d
	sbc  a                                           ; $473e: $9f
	dec  c                                           ; $473f: $0d
	nop                                              ; $4740: $00
	ld   a, [bc]                                     ; $4741: $0a
	rlca                                             ; $4742: $07
	ld   c, a                                        ; $4743: $4f
	inc  b                                           ; $4744: $04
	inc  bc                                          ; $4745: $03
	jr   nz, jr_049_4749                             ; $4746: $20 $01

	nop                                              ; $4748: $00

jr_049_4749:
	jr   nz, jr_049_474b                             ; $4749: $20 $00

jr_049_474b:
	ld   bc, $9a6b                                   ; $474b: $01 $6b $9a
	ld   [hl], l                                     ; $474e: $75
	ld   a, l                                        ; $474f: $7d
	sbc  [hl]                                        ; $4750: $9e
	ld   h, d                                        ; $4751: $62
	ld   e, e                                        ; $4752: $5b
	ld   h, b                                        ; $4753: $60
	and  c                                           ; $4754: $a1
	sub  [hl]                                        ; $4755: $96
	ld   d, h                                        ; $4756: $54
	sbc  a                                           ; $4757: $9f
	dec  c                                           ; $4758: $0d
	nop                                              ; $4759: $00
	ld   a, [bc]                                     ; $475a: $0a
	rrca                                             ; $475b: $0f
	nop                                              ; $475c: $00
	ld   bc, $000d                                   ; $475d: $01 $0d $00
	nop                                              ; $4760: $00
	add  hl, bc                                      ; $4761: $09
	ld   e, $00                                      ; $4762: $1e $00
	rrca                                             ; $4764: $0f
	nop                                              ; $4765: $00
	ld   bc, $7d01                                   ; $4766: $01 $01 $7d
	ld   d, d                                        ; $4769: $52
	sbc  [hl]                                        ; $476a: $9e
	sbc  l                                           ; $476b: $9d
	ld   e, c                                        ; $476c: $59
	rst  $38                                         ; $476d: $ff
	sbc  b                                           ; $476e: $98
	rst  $38                                         ; $476f: $ff
	rst  $38                                         ; $4770: $ff
	adc  h                                           ; $4771: $8c
	rst  $38                                         ; $4772: $ff
	rst  $38                                         ; $4773: $ff
	dec  c                                           ; $4774: $0d
	nop                                              ; $4775: $00
	dec  c                                           ; $4776: $0d
	nop                                              ; $4777: $00
	nop                                              ; $4778: $00
	inc  c                                           ; $4779: $0c
	ld   [bc], a                                     ; $477a: $02
	ld   c, $03                                      ; $477b: $0e $03
	ld   bc, $9a50                                   ; $477d: $01 $50 $9a
	rst  $38                                         ; $4780: $ff
	rst  $38                                         ; $4781: $ff
	rst  $38                                         ; $4782: $ff
	ld   sp, hl                                      ; $4783: $f9
	dec  c                                           ; $4784: $0d
	ld   e, c                                        ; $4785: $59
	sub  a                                           ; $4786: $97
	rst  $38                                         ; $4787: $ff
	rst  $38                                         ; $4788: $ff
	ld   l, [hl]                                     ; $4789: $6e
	rst  $38                                         ; $478a: $ff
	rst  $38                                         ; $478b: $ff
	ld   e, d                                        ; $478c: $5a
	rst  $38                                         ; $478d: $ff
	rst  $38                                         ; $478e: $ff
	dec  c                                           ; $478f: $0d
	nop                                              ; $4790: $00
	ld   a, [bc]                                     ; $4791: $0a
	ld   l, $01                                      ; $4792: $2e $01
	nop                                              ; $4794: $00
	nop                                              ; $4795: $00
	dec  b                                           ; $4796: $05
	ld   b, b                                        ; $4797: $40
	ld   b, e                                        ; $4798: $43
	inc  bc                                          ; $4799: $03
	ld   b, e                                        ; $479a: $43
	ld   bc, $2801                                   ; $479b: $01 $01 $28
	nop                                              ; $479e: $00
	inc  e                                           ; $479f: $1c
	ld   [bc], a                                     ; $47a0: $02
	dec  b                                           ; $47a1: $05
	dec  b                                           ; $47a2: $05
	ld   bc, $0458                                   ; $47a3: $01 $58 $04
	ld   a, e                                        ; $47a6: $7b
	sbc  d                                           ; $47a7: $9a
	ld   h, e                                        ; $47a8: $63
	adc  h                                           ; $47a9: $8c
	ld   [hl], l                                     ; $47aa: $75
	ld   h, l                                        ; $47ab: $65
	ld   l, l                                        ; $47ac: $6d
	rst  $38                                         ; $47ad: $ff
	rst  $38                                         ; $47ae: $ff
	dec  c                                           ; $47af: $0d
	ld   [$6308], sp                                 ; $47b0: $08 $08 $63
	and  c                                           ; $47b3: $a1
	sbc  [hl]                                        ; $47b4: $9e
	call c, $c9f5                                    ; $47b5: $dc $f5 $c9
	ld   a, c                                        ; $47b8: $79
	dec  c                                           ; $47b9: $0d
	ld   [bc], a                                     ; $47ba: $02
	ld   [hl], d                                     ; $47bb: $72
	inc  bc                                          ; $47bc: $03
	dec  bc                                          ; $47bd: $0b
	ld   e, d                                        ; $47be: $5a
	sbc  l                                           ; $47bf: $9d
	sbc  c                                           ; $47c0: $99
	ld   d, d                                        ; $47c1: $52
	ld   [hl], l                                     ; $47c2: $75
	ld   h, a                                        ; $47c3: $67
	sbc  l                                           ; $47c4: $9d
	sbc  a                                           ; $47c5: $9f
	dec  c                                           ; $47c6: $0d
	nop                                              ; $47c7: $00
	ld   a, [bc]                                     ; $47c8: $0a
	ld   bc, $7003                                   ; $47c9: $01 $03 $70
	ld   e, l                                        ; $47cc: $5d
	inc  b                                           ; $47cd: $04
	sub  l                                           ; $47ce: $95
	ld   [bc], a                                     ; $47cf: $02
	ld   hl, $9079                                   ; $47d0: $21 $79 $90
	ld   [hl], a                                     ; $47d3: $77
	ld   [hl], c                                     ; $47d4: $71
	ld   [hl], h                                     ; $47d5: $74
	dec  c                                           ; $47d6: $0d
	inc  bc                                          ; $47d7: $03
	and  a                                           ; $47d8: $a7
	adc  [hl]                                        ; $47d9: $8e
	ld   h, c                                        ; $47da: $61
	halt                                             ; $47db: $76
	and  b                                           ; $47dc: $a0
	ld   e, b                                        ; $47dd: $58
	ld   h, a                                        ; $47de: $67
	ld   h, a                                        ; $47df: $67
	adc  a                                           ; $47e0: $8f
	dec  c                                           ; $47e1: $0d
	ld   h, l                                        ; $47e2: $65
	adc  h                                           ; $47e3: $8c
	ld   h, a                                        ; $47e4: $67
	sbc  l                                           ; $47e5: $9d
	sbc  a                                           ; $47e6: $9f
	dec  c                                           ; $47e7: $0d
	nop                                              ; $47e8: $00
	ld   a, [bc]                                     ; $47e9: $0a
	rlca                                             ; $47ea: $07
	ld   [hl], $04                                   ; $47eb: $36 $04
	inc  bc                                          ; $47ed: $03
	jr   nz, @+$03                                   ; $47ee: $20 $01

	ld   bc, $0025                                   ; $47f0: $01 $25 $00
	rrca                                             ; $47f3: $0f
	nop                                              ; $47f4: $00
	ld   bc, $7d01                                   ; $47f5: $01 $01 $7d
	ld   d, d                                        ; $47f8: $52
	sbc  [hl]                                        ; $47f9: $9e
	sbc  l                                           ; $47fa: $9d
	ld   e, c                                        ; $47fb: $59
	sbc  b                                           ; $47fc: $98
	adc  h                                           ; $47fd: $8c
	ld   h, l                                        ; $47fe: $65
	ld   l, l                                        ; $47ff: $6d
	sbc  a                                           ; $4800: $9f
	dec  c                                           ; $4801: $0d
	ld   l, e                                        ; $4802: $6b
	ld   d, h                                        ; $4803: $54
	ld   h, l                                        ; $4804: $65
	adc  h                                           ; $4805: $8c
	ld   h, a                                        ; $4806: $67
	sbc  a                                           ; $4807: $9f
	dec  c                                           ; $4808: $0d
	nop                                              ; $4809: $00
	ld   a, [bc]                                     ; $480a: $0a
	rrca                                             ; $480b: $0f
	nop                                              ; $480c: $00
	ld   bc, $7601                                   ; $480d: $01 $01 $76
	ld   h, c                                        ; $4810: $61
	sbc  e                                           ; $4811: $9b
	ld   [hl], l                                     ; $4812: $75
	ld   h, a                                        ; $4813: $67
	adc  l                                           ; $4814: $8d
	sbc  d                                           ; $4815: $9a
	ld   h, e                                        ; $4816: $63
	and  c                                           ; $4817: $a1
	sbc  a                                           ; $4818: $9f
	dec  c                                           ; $4819: $0d
	inc  b                                           ; $481a: $04
	ld   l, l                                        ; $481b: $6d
	ld   a, h                                        ; $481c: $7c
	ld   a, b                                        ; $481d: $78
	adc  h                                           ; $481e: $8c
	rst  $38                                         ; $481f: $ff
	ld   d, [hl]                                     ; $4820: $56
	rst  $38                                         ; $4821: $ff
	rst  $38                                         ; $4822: $ff
	ld   a, l                                        ; $4823: $7d
	rst  $38                                         ; $4824: $ff
	rst  $38                                         ; $4825: $ff
	rst  $38                                         ; $4826: $ff
	dec  c                                           ; $4827: $0d
	nop                                              ; $4828: $00
	dec  c                                           ; $4829: $0d
	nop                                              ; $482a: $00
	nop                                              ; $482b: $00
	inc  c                                           ; $482c: $0c
	ld   [bc], a                                     ; $482d: $02
	ld   c, $03                                      ; $482e: $0e $03
	ld   bc, $9a50                                   ; $4830: $01 $50 $9a
	rst  $38                                         ; $4833: $ff
	rst  $38                                         ; $4834: $ff
	ld   sp, hl                                      ; $4835: $f9
	db   $10                                         ; $4836: $10
	ld   e, c                                        ; $4837: $59
	sub  a                                           ; $4838: $97
	rst  $38                                         ; $4839: $ff
	ld   l, [hl]                                     ; $483a: $6e
	rst  $38                                         ; $483b: $ff
	ld   e, d                                        ; $483c: $5a
	rst  $38                                         ; $483d: $ff
	rst  $38                                         ; $483e: $ff
	dec  c                                           ; $483f: $0d
	nop                                              ; $4840: $00
	ld   a, [bc]                                     ; $4841: $0a
	ld   l, $01                                      ; $4842: $2e $01
	nop                                              ; $4844: $00
	nop                                              ; $4845: $00
	dec  b                                           ; $4846: $05
	ld   b, b                                        ; $4847: $40
	ld   b, e                                        ; $4848: $43
	inc  bc                                          ; $4849: $03
	ld   b, e                                        ; $484a: $43
	ld   bc, $2801                                   ; $484b: $01 $01 $28
	nop                                              ; $484e: $00
	inc  e                                           ; $484f: $1c
	ld   [bc], a                                     ; $4850: $02
	nop                                              ; $4851: $00
	nop                                              ; $4852: $00
	ld   bc, $0458                                   ; $4853: $01 $58 $04
	ld   a, e                                        ; $4856: $7b
	sbc  d                                           ; $4857: $9a
	ld   h, e                                        ; $4858: $63
	adc  h                                           ; $4859: $8c
	ld   [hl], l                                     ; $485a: $75
	ld   h, l                                        ; $485b: $65
	ld   l, l                                        ; $485c: $6d
	rst  $38                                         ; $485d: $ff
	rst  $38                                         ; $485e: $ff
	dec  c                                           ; $485f: $0d
	nop                                              ; $4860: $00
	inc  e                                           ; $4861: $1c
	ld   [bc], a                                     ; $4862: $02
	inc  bc                                          ; $4863: $03
	inc  bc                                          ; $4864: $03
	ld   bc, $9750                                   ; $4865: $01 $50 $97
	ld   sp, hl                                      ; $4868: $f9
	db   $10                                         ; $4869: $10
	ld   [hl], a                                     ; $486a: $77
	ld   d, h                                        ; $486b: $54
	ld   h, l                                        ; $486c: $65
	ld   l, l                                        ; $486d: $6d
	and  c                                           ; $486e: $a1
	ld   [hl], l                                     ; $486f: $75
	ld   h, a                                        ; $4870: $67
	ld   a, h                                        ; $4871: $7c
	ld   sp, hl                                      ; $4872: $f9
	dec  c                                           ; $4873: $0d
	ld   [bc], a                                     ; $4874: $02
	ld   [hl], d                                     ; $4875: $72
	ld   e, d                                        ; $4876: $5a
	inc  bc                                          ; $4877: $03
	xor  l                                           ; $4878: $ad
	ld   [hl], c                                     ; $4879: $71
	inc  bc                                          ; $487a: $03
	ld   a, [bc]                                     ; $487b: $0a
	ld   [hl], l                                     ; $487c: $75
	ld   h, a                                        ; $487d: $67
	sbc  l                                           ; $487e: $9d
	sub  [hl]                                        ; $487f: $96
	sbc  a                                           ; $4880: $9f
	dec  c                                           ; $4881: $0d
	nop                                              ; $4882: $00
	ld   a, [bc]                                     ; $4883: $0a
	rrca                                             ; $4884: $0f
	nop                                              ; $4885: $00
	ld   bc, $5601                                   ; $4886: $01 $01 $56
	ld   d, [hl]                                     ; $4889: $56
	rst  $38                                         ; $488a: $ff
	rst  $38                                         ; $488b: $ff
	ld   a, b                                        ; $488c: $78
	and  c                                           ; $488d: $a1
	ld   l, [hl]                                     ; $488e: $6e
	ld   e, c                                        ; $488f: $59
	ld   h, e                                        ; $4890: $63
	ld   [hl], c                                     ; $4891: $71
	ld   e, e                                        ; $4892: $5b
	ld   e, c                                        ; $4893: $59
	sub  a                                           ; $4894: $97
	dec  c                                           ; $4895: $0d
	inc  b                                           ; $4896: $04
	dec  c                                           ; $4897: $0d
	ld   e, d                                        ; $4898: $5a
	ld   l, [hl]                                     ; $4899: $6e
	sbc  c                                           ; $489a: $99
	ld   e, l                                        ; $489b: $5d
	ld   [hl], h                                     ; $489c: $74
	rst  $38                                         ; $489d: $ff
	rst  $38                                         ; $489e: $ff
	dec  c                                           ; $489f: $0d
	nop                                              ; $48a0: $00
	ld   a, [bc]                                     ; $48a1: $0a
	ld   bc, $6254                                   ; $48a2: $01 $54 $62
	rst  $38                                         ; $48a5: $ff
	rst  $38                                         ; $48a6: $ff
	ld   e, c                                        ; $48a7: $59
	rst  $38                                         ; $48a8: $ff
	rst  $38                                         ; $48a9: $ff
	ld   a, b                                        ; $48aa: $78
	rst  $38                                         ; $48ab: $ff
	rst  $38                                         ; $48ac: $ff
	dec  c                                           ; $48ad: $0d
	nop                                              ; $48ae: $00
	dec  c                                           ; $48af: $0d
	nop                                              ; $48b0: $00
	nop                                              ; $48b1: $00
	inc  c                                           ; $48b2: $0c
	ld   [bc], a                                     ; $48b3: $02
	ld   c, $03                                      ; $48b4: $0e $03
	ld   bc, $9a50                                   ; $48b6: $01 $50 $9a
	rst  $38                                         ; $48b9: $ff
	rst  $38                                         ; $48ba: $ff
	rst  $38                                         ; $48bb: $ff
	ld   sp, hl                                      ; $48bc: $f9
	dec  c                                           ; $48bd: $0d
	ld   [hl], a                                     ; $48be: $77
	ld   d, h                                        ; $48bf: $54
	ld   h, l                                        ; $48c0: $65
	rst  $38                                         ; $48c1: $ff
	rst  $38                                         ; $48c2: $ff
	ld   l, l                                        ; $48c3: $6d
	rst  $38                                         ; $48c4: $ff
	rst  $38                                         ; $48c5: $ff
	and  c                                           ; $48c6: $a1
	rst  $38                                         ; $48c7: $ff
	rst  $38                                         ; $48c8: $ff
	dec  c                                           ; $48c9: $0d
	nop                                              ; $48ca: $00
	ld   a, [bc]                                     ; $48cb: $0a
	ld   l, $01                                      ; $48cc: $2e $01
	nop                                              ; $48ce: $00
	nop                                              ; $48cf: $00
	rrca                                             ; $48d0: $0f
	ld   [bc], a                                     ; $48d1: $02
	dec  b                                           ; $48d2: $05
	ld   bc, $546b                                   ; $48d3: $01 $6b $54
	ld   [hl], l                                     ; $48d6: $75
	ld   h, a                                        ; $48d7: $67
	ld   e, c                                        ; $48d8: $59
	rst  $38                                         ; $48d9: $ff
	rst  $38                                         ; $48da: $ff
	dec  c                                           ; $48db: $0d
	sbc  l                                           ; $48dc: $9d
	ld   e, c                                        ; $48dd: $59
	sbc  b                                           ; $48de: $98
	adc  h                                           ; $48df: $8c
	ld   h, l                                        ; $48e0: $65
	ld   l, l                                        ; $48e1: $6d
	sbc  l                                           ; $48e2: $9d
	sbc  a                                           ; $48e3: $9f
	dec  c                                           ; $48e4: $0d
	nop                                              ; $48e5: $00
	ld   a, [bc]                                     ; $48e6: $0a
	inc  e                                           ; $48e7: $1c
	ld   [bc], a                                     ; $48e8: $02
	nop                                              ; $48e9: $00
	nop                                              ; $48ea: $00
	ld   bc, $6d9d                                   ; $48eb: $01 $9d $6d
	ld   e, l                                        ; $48ee: $5d
	ld   h, l                                        ; $48ef: $65
	ld   a, h                                        ; $48f0: $7c
	inc  bc                                          ; $48f1: $03
	ld   l, l                                        ; $48f2: $6d
	dec  b                                           ; $48f3: $05
	add  hl, de                                      ; $48f4: $19
	ld   a, l                                        ; $48f5: $7d
	sbc  [hl]                                        ; $48f6: $9e
	dec  c                                           ; $48f7: $0d
	inc  bc                                          ; $48f8: $03
	jp   nc, $2c04                                   ; $48f9: $d2 $04 $2c

	ld   [hl], l                                     ; $48fc: $75
	ld   h, a                                        ; $48fd: $67
	sbc  l                                           ; $48fe: $9d
	sub  [hl]                                        ; $48ff: $96
	sbc  a                                           ; $4900: $9f
	dec  c                                           ; $4901: $0d
	nop                                              ; $4902: $00
	ld   a, [bc]                                     ; $4903: $0a
	ld   bc, $9003                                   ; $4904: $01 $03 $90
	inc  bc                                          ; $4907: $03
	cp   e                                           ; $4908: $bb
	inc  b                                           ; $4909: $04
	ld   [hl], a                                     ; $490a: $77
	inc  bc                                          ; $490b: $03
	or   l                                           ; $490c: $b5
	dec  b                                           ; $490d: $05
	inc  d                                           ; $490e: $14
	ld   a, h                                        ; $490f: $7c
	inc  bc                                          ; $4910: $03
	jp   nc, $2c04                                   ; $4911: $d2 $04 $2c

	inc  bc                                          ; $4914: $03
	db   $10                                         ; $4915: $10
	and  b                                           ; $4916: $a0
	ld   [bc], a                                     ; $4917: $02
	and  d                                           ; $4918: $a2
	add  h                                           ; $4919: $84
	dec  c                                           ; $491a: $0d
	ld   h, c                                        ; $491b: $61
	halt                                             ; $491c: $76
	ld   [hl], l                                     ; $491d: $75
	sbc  [hl]                                        ; $491e: $9e
	inc  bc                                          ; $491f: $03
	and  [hl]                                        ; $4920: $a6
	inc  bc                                          ; $4921: $03
	ld   [hl], b                                     ; $4922: $70
	ld   h, e                                        ; $4923: $63
	and  b                                           ; $4924: $a0
	inc  b                                           ; $4925: $04
	pop  de                                          ; $4926: $d1
	ld   a, c                                        ; $4927: $79
	ld   [hl], d                                     ; $4928: $72
	ld   e, a                                        ; $4929: $5f
	ld   [hl], h                                     ; $492a: $74
	dec  c                                           ; $492b: $0d
	ld   d, d                                        ; $492c: $52
	ld   l, l                                        ; $492d: $6d
	ld   l, [hl]                                     ; $492e: $6e
	ld   e, e                                        ; $492f: $5b
	adc  h                                           ; $4930: $8c
	ld   h, a                                        ; $4931: $67
	sbc  l                                           ; $4932: $9d
	sbc  a                                           ; $4933: $9f
	dec  c                                           ; $4934: $0d
	nop                                              ; $4935: $00
	ld   a, [bc]                                     ; $4936: $0a
	inc  e                                           ; $4937: $1c
	ld   [bc], a                                     ; $4938: $02
	ld   [bc], a                                     ; $4939: $02
	ld   [bc], a                                     ; $493a: $02
	ld   bc, $7d75                                   ; $493b: $01 $75 $7d
	sbc  [hl]                                        ; $493e: $9e
	adc  h                                           ; $493f: $8c
	ld   d, d                                        ; $4940: $52
	sbc  b                                           ; $4941: $98
	adc  h                                           ; $4942: $8c
	ld   h, a                                        ; $4943: $67
	sbc  l                                           ; $4944: $9d
	sub  [hl]                                        ; $4945: $96
	ld   a, [$000d]                                  ; $4946: $fa $0d $00
	ld   a, [bc]                                     ; $4949: $0a
	ld   b, $ce                                      ; $494a: $06 $ce
	inc  bc                                          ; $494c: $03
	dec  c                                           ; $494d: $0d
	ld   [bc], a                                     ; $494e: $02
	nop                                              ; $494f: $00
	rrca                                             ; $4950: $0f
	nop                                              ; $4951: $00
	ld   bc, $0102                                   ; $4952: $01 $02 $01
	ld   h, c                                        ; $4955: $61
	and  c                                           ; $4956: $a1
	ld   a, c                                        ; $4957: $79
	ld   l, a                                        ; $4958: $6f
	ld   a, l                                        ; $4959: $7d
	sbc  [hl]                                        ; $495a: $9e
	ld   h, a                                        ; $495b: $67
	adc  l                                           ; $495c: $8d
	sbc  d                                           ; $495d: $9a
	ld   h, e                                        ; $495e: $63
	and  c                                           ; $495f: $a1
	sbc  a                                           ; $4960: $9f
	dec  c                                           ; $4961: $0d
	ld   e, a                                        ; $4962: $5f
	ld   d, d                                        ; $4963: $52
	ld   h, c                                        ; $4964: $61
	and  b                                           ; $4965: $a0
	ld   [hl], d                                     ; $4966: $72
	ld   e, a                                        ; $4967: $5f
	ld   [hl], h                                     ; $4968: $74
	ld   d, d                                        ; $4969: $52
	ld   l, l                                        ; $496a: $6d
	ld   l, [hl]                                     ; $496b: $6e
	ld   e, a                                        ; $496c: $5f
	dec  c                                           ; $496d: $0d
	adc  h                                           ; $496e: $8c
	ld   h, a                                        ; $496f: $67
	ld   e, c                                        ; $4970: $59
	ld   sp, hl                                      ; $4971: $f9
	dec  c                                           ; $4972: $0d
	nop                                              ; $4973: $00
	ld   a, [bc]                                     ; $4974: $0a
	inc  e                                           ; $4975: $1c
	ld   [bc], a                                     ; $4976: $02
	nop                                              ; $4977: $00
	nop                                              ; $4978: $00
	ld   bc, $9b96                                   ; $4979: $01 $96 $9b
	ld   h, l                                        ; $497c: $65
	ld   e, l                                        ; $497d: $5d
	ld   [hl], h                                     ; $497e: $74
	sub  [hl]                                        ; $497f: $96
	sbc  a                                           ; $4980: $9f
	dec  c                                           ; $4981: $0d
	ld   l, e                                        ; $4982: $6b
	sbc  d                                           ; $4983: $9a
	ld   [hl], l                                     ; $4984: $75
	ld   a, l                                        ; $4985: $7d
	sbc  [hl]                                        ; $4986: $9e
	ld   h, e                                        ; $4987: $63
	ld   [hl], c                                     ; $4988: $71
	ld   l, e                                        ; $4989: $6b
	ld   e, l                                        ; $498a: $5d
	dec  c                                           ; $498b: $0d
	dec  b                                           ; $498c: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $498d: $cf
	adc  a                                           ; $498e: $8f
	adc  h                                           ; $498f: $8c
	ld   h, l                                        ; $4990: $65
	sub  l                                           ; $4991: $95
	ld   d, h                                        ; $4992: $54
	sbc  a                                           ; $4993: $9f
	dec  c                                           ; $4994: $0d
	nop                                              ; $4995: $00
	ld   a, [bc]                                     ; $4996: $0a
	dec  h                                           ; $4997: $25
	ld   [bc], a                                     ; $4998: $02
	rlca                                             ; $4999: $07
	ld   sp, $0305                                   ; $499a: $31 $05 $03
	jr   nz, jr_049_49a0                             ; $499d: $20 $01

	nop                                              ; $499f: $00

jr_049_49a0:
	jr   nz, jr_049_49a2                             ; $49a0: $20 $00

jr_049_49a2:
	inc  e                                           ; $49a2: $1c
	ld   [bc], a                                     ; $49a3: $02
	nop                                              ; $49a4: $00
	nop                                              ; $49a5: $00
	ld   bc, $0458                                   ; $49a6: $01 $58 $04
	ld   a, e                                        ; $49a9: $7b
	sbc  d                                           ; $49aa: $9a
	ld   h, e                                        ; $49ab: $63
	adc  h                                           ; $49ac: $8c
	sbc  a                                           ; $49ad: $9f
	dec  c                                           ; $49ae: $0d
	nop                                              ; $49af: $00
	dec  b                                           ; $49b0: $05
	ld   b, b                                        ; $49b1: $40
	ld   b, e                                        ; $49b2: $43
	inc  bc                                          ; $49b3: $03
	ld   b, e                                        ; $49b4: $43
	ld   bc, $2801                                   ; $49b5: $01 $01 $28
	nop                                              ; $49b8: $00
	ld   bc, $a502                                   ; $49b9: $01 $02 $a5
	inc  b                                           ; $49bc: $04
	xor  d                                           ; $49bd: $aa
	ld   a, l                                        ; $49be: $7d
	ld   h, c                                        ; $49bf: $61
	sbc  d                                           ; $49c0: $9a
	ld   e, l                                        ; $49c1: $5d
	sub  a                                           ; $49c2: $97
	ld   d, d                                        ; $49c3: $52
	ld   a, c                                        ; $49c4: $79
	dec  c                                           ; $49c5: $0d
	ld   h, l                                        ; $49c6: $65
	ld   [hl], h                                     ; $49c7: $74
	ld   e, b                                        ; $49c8: $58
	ld   e, e                                        ; $49c9: $5b
	adc  h                                           ; $49ca: $8c
	ld   h, a                                        ; $49cb: $67
	sbc  l                                           ; $49cc: $9d
	sbc  a                                           ; $49cd: $9f
	dec  c                                           ; $49ce: $0d
	nop                                              ; $49cf: $00
	ld   a, [bc]                                     ; $49d0: $0a
	ld   bc, $9a6b                                   ; $49d1: $01 $6b $9a
	ld   [hl], l                                     ; $49d4: $75
	ld   a, l                                        ; $49d5: $7d
	sbc  [hl]                                        ; $49d6: $9e
	inc  b                                           ; $49d7: $04
	adc  a                                           ; $49d8: $8f
	inc  b                                           ; $49d9: $04
	xor  d                                           ; $49da: $aa
	ld   a, h                                        ; $49db: $7c
	ld   [bc], a                                     ; $49dc: $02
	or   d                                           ; $49dd: $b2
	ld   [bc], a                                     ; $49de: $02
	xor  d                                           ; $49df: $aa
	ld   a, h                                        ; $49e0: $7c
	inc  bc                                          ; $49e1: $03
	ld   l, l                                        ; $49e2: $6d
	dec  b                                           ; $49e3: $05
	add  hl, de                                      ; $49e4: $19
	and  b                                           ; $49e5: $a0
	dec  c                                           ; $49e6: $0d
	inc  bc                                          ; $49e7: $03
	ld   a, [hl]                                     ; $49e8: $7e
	sbc  l                                           ; $49e9: $9d
	sbc  b                                           ; $49ea: $98
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
	ld   bc, $0d00                                   ; $49f6: $01 $00 $0d
	ld   [bc], a                                     ; $49f9: $02
	nop                                              ; $49fa: $00
	rrca                                             ; $49fb: $0f
	nop                                              ; $49fc: $00
	ld   bc, $0102                                   ; $49fd: $01 $02 $01
	ld   h, c                                        ; $4a00: $61
	and  c                                           ; $4a01: $a1
	ld   a, c                                        ; $4a02: $79
	ld   l, a                                        ; $4a03: $6f
	ld   a, l                                        ; $4a04: $7d
	sbc  [hl]                                        ; $4a05: $9e
	ld   h, a                                        ; $4a06: $67
	adc  l                                           ; $4a07: $8d
	sbc  d                                           ; $4a08: $9a
	ld   h, e                                        ; $4a09: $63
	and  c                                           ; $4a0a: $a1
	sbc  a                                           ; $4a0b: $9f
	dec  c                                           ; $4a0c: $0d
	ld   e, a                                        ; $4a0d: $5f
	ld   d, d                                        ; $4a0e: $52
	ld   h, c                                        ; $4a0f: $61
	and  b                                           ; $4a10: $a0
	ld   [hl], d                                     ; $4a11: $72
	ld   e, a                                        ; $4a12: $5f
	ld   [hl], h                                     ; $4a13: $74
	ld   d, d                                        ; $4a14: $52
	ld   l, l                                        ; $4a15: $6d
	ld   l, [hl]                                     ; $4a16: $6e
	ld   e, a                                        ; $4a17: $5f
	dec  c                                           ; $4a18: $0d
	adc  h                                           ; $4a19: $8c
	ld   h, a                                        ; $4a1a: $67
	ld   e, c                                        ; $4a1b: $59
	ld   sp, hl                                      ; $4a1c: $f9
	dec  c                                           ; $4a1d: $0d
	nop                                              ; $4a1e: $00
	ld   a, [bc]                                     ; $4a1f: $0a
	rlca                                             ; $4a20: $07
	ld   [$0307], a                                  ; $4a21: $ea $07 $03
	ld   b, e                                        ; $4a24: $43
	ld   bc, $2504                                   ; $4a25: $01 $04 $25
	nop                                              ; $4a28: $00
	rrca                                             ; $4a29: $0f
	ld   [bc], a                                     ; $4a2a: $02
	nop                                              ; $4a2b: $00
	ld   bc, $9b96                                   ; $4a2c: $01 $96 $9b
	ld   h, l                                        ; $4a2f: $65
	ld   e, l                                        ; $4a30: $5d
	ld   [hl], h                                     ; $4a31: $74
	sub  [hl]                                        ; $4a32: $96
	sbc  a                                           ; $4a33: $9f
	dec  c                                           ; $4a34: $0d
	ld   l, e                                        ; $4a35: $6b
	sbc  d                                           ; $4a36: $9a
	ld   [hl], l                                     ; $4a37: $75
	ld   a, l                                        ; $4a38: $7d
	sbc  [hl]                                        ; $4a39: $9e
	ld   h, e                                        ; $4a3a: $63
	ld   [hl], c                                     ; $4a3b: $71
	ld   l, e                                        ; $4a3c: $6b
	ld   e, l                                        ; $4a3d: $5d
	dec  c                                           ; $4a3e: $0d
	dec  b                                           ; $4a3f: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a40: $cf
	adc  a                                           ; $4a41: $8f
	adc  h                                           ; $4a42: $8c
	ld   h, l                                        ; $4a43: $65
	sub  l                                           ; $4a44: $95
	ld   d, h                                        ; $4a45: $54
	sbc  a                                           ; $4a46: $9f
	dec  c                                           ; $4a47: $0d
	nop                                              ; $4a48: $00
	ld   a, [bc]                                     ; $4a49: $0a
	dec  h                                           ; $4a4a: $25
	ld   [bc], a                                     ; $4a4b: $02
	rlca                                             ; $4a4c: $07
	ld   sp, $0305                                   ; $4a4d: $31 $05 $03
	jr   nz, jr_049_4a53                             ; $4a50: $20 $01

	nop                                              ; $4a52: $00

jr_049_4a53:
	jr   nz, jr_049_4a55                             ; $4a53: $20 $00

jr_049_4a55:
	inc  e                                           ; $4a55: $1c
	ld   [bc], a                                     ; $4a56: $02
	nop                                              ; $4a57: $00
	nop                                              ; $4a58: $00
	ld   bc, $5978                                   ; $4a59: $01 $78 $59
	ld   a, b                                        ; $4a5c: $78
	ld   e, c                                        ; $4a5d: $59
	or   [hl]                                        ; $4a5e: $b6
	rst  JumpTable                                         ; $4a5f: $df
	ld   a, c                                        ; $4a60: $79
	ld   a, b                                        ; $4a61: $78
	ld   [hl], c                                     ; $4a62: $71
	ld   [hl], h                                     ; $4a63: $74
	dec  c                                           ; $4a64: $0d
	ld   e, e                                        ; $4a65: $5b
	ld   l, l                                        ; $4a66: $6d
	and  c                                           ; $4a67: $a1
	ld   h, [hl]                                     ; $4a68: $66
	sub  c                                           ; $4a69: $91
	ld   d, b                                        ; $4a6a: $50
	sbc  b                                           ; $4a6b: $98
	adc  h                                           ; $4a6c: $8c
	ld   l, c                                        ; $4a6d: $69
	and  c                                           ; $4a6e: $a1
	ld   h, c                                        ; $4a6f: $61
	halt                                             ; $4a70: $76
	ld   sp, hl                                      ; $4a71: $f9
	dec  c                                           ; $4a72: $0d
	nop                                              ; $4a73: $00
	ld   a, [bc]                                     ; $4a74: $0a
	ld   bc, $508c                                   ; $4a75: $01 $8c $50
	sbc  [hl]                                        ; $4a78: $9e
	ld   h, c                                        ; $4a79: $61
	ld   a, h                                        ; $4a7a: $7c
	sbc  l                                           ; $4a7b: $9d
	ld   l, l                                        ; $4a7c: $6d
	ld   e, l                                        ; $4a7d: $5d
	ld   h, l                                        ; $4a7e: $65
	ld   e, d                                        ; $4a7f: $5a
	ld   [bc], a                                     ; $4a80: $02
	ret  nc                                          ; $4a81: $d0

	ld   d, [hl]                                     ; $4a82: $56
	ld   [hl], h                                     ; $4a83: $74
	ld   d, d                                        ; $4a84: $52
	dec  c                                           ; $4a85: $0d
	sbc  c                                           ; $4a86: $99
	ld   a, h                                        ; $4a87: $7c
	ld   [hl], l                                     ; $4a88: $75
	ld   h, a                                        ; $4a89: $67
	ld   e, c                                        ; $4a8a: $59
	sub  a                                           ; $4a8b: $97
	sbc  [hl]                                        ; $4a8c: $9e
	inc  b                                           ; $4a8d: $04
	jr   jr_049_4a93                                 ; $4a8e: $18 $03

	sbc  c                                           ; $4a90: $99
	ld   [hl], l                                     ; $4a91: $75
	ld   h, a                                        ; $4a92: $67

jr_049_4a93:
	sbc  l                                           ; $4a93: $9d
	ld   a, e                                        ; $4a94: $7b
	sbc  a                                           ; $4a95: $9f
	dec  c                                           ; $4a96: $0d
	nop                                              ; $4a97: $00
	inc  e                                           ; $4a98: $1c
	ld   [bc], a                                     ; $4a99: $02
	jr   nc, jr_049_4ab5                             ; $4a9a: $30 $19

	ld   bc, $fb58                                   ; $4a9c: $01 $58 $fb
	adc  c                                           ; $4a9f: $89
	adc  c                                           ; $4aa0: $89
	adc  c                                           ; $4aa1: $89
	adc  c                                           ; $4aa2: $89
	adc  c                                           ; $4aa3: $89
	adc  c                                           ; $4aa4: $89
	sbc  a                                           ; $4aa5: $9f
	dec  c                                           ; $4aa6: $0d
	nop                                              ; $4aa7: $00
	ld   a, [bc]                                     ; $4aa8: $0a
	inc  e                                           ; $4aa9: $1c
	ld   [bc], a                                     ; $4aaa: $02
	ld   bc, $0101                                   ; $4aab: $01 $01 $01
	ld   h, c                                        ; $4aae: $61
	sbc  d                                           ; $4aaf: $9a
	ld   e, c                                        ; $4ab0: $59
	sub  a                                           ; $4ab1: $97
	sub  b                                           ; $4ab2: $90
	sbc  [hl]                                        ; $4ab3: $9e
	ld   h, c                                        ; $4ab4: $61

jr_049_4ab5:
	ld   a, h                                        ; $4ab5: $7c
	inc  bc                                          ; $4ab6: $03
	cp   $03                                         ; $4ab7: $fe $03
	add  [hl]                                        ; $4ab9: $86
	ld   [hl], l                                     ; $4aba: $75
	dec  c                                           ; $4abb: $0d
	ld   e, d                                        ; $4abc: $5a
	and  c                                           ; $4abd: $a1
	ld   a, [hl]                                     ; $4abe: $7e
	sbc  c                                           ; $4abf: $99
	ld   a, h                                        ; $4ac0: $7c
	ld   [hl], l                                     ; $4ac1: $75
	ld   h, a                                        ; $4ac2: $67
	sbc  l                                           ; $4ac3: $9d
	sub  [hl]                                        ; $4ac4: $96
	sbc  a                                           ; $4ac5: $9f
	dec  c                                           ; $4ac6: $0d
	nop                                              ; $4ac7: $00
	ld   a, [bc]                                     ; $4ac8: $0a
	inc  e                                           ; $4ac9: $1c
	ld   [bc], a                                     ; $4aca: $02
	nop                                              ; $4acb: $00
	nop                                              ; $4acc: $00
	ld   bc, $9a6b                                   ; $4acd: $01 $6b $9a
	ld   [hl], l                                     ; $4ad0: $75
	ld   a, l                                        ; $4ad1: $7d
	sbc  [hl]                                        ; $4ad2: $9e
	inc  b                                           ; $4ad3: $04
	adc  a                                           ; $4ad4: $8f
	inc  b                                           ; $4ad5: $04
	xor  d                                           ; $4ad6: $aa
	ld   a, h                                        ; $4ad7: $7c
	ld   [bc], a                                     ; $4ad8: $02
	or   d                                           ; $4ad9: $b2
	ld   [bc], a                                     ; $4ada: $02
	xor  d                                           ; $4adb: $aa
	ld   a, h                                        ; $4adc: $7c
	inc  bc                                          ; $4add: $03
	ld   l, l                                        ; $4ade: $6d
	dec  b                                           ; $4adf: $05
	add  hl, de                                      ; $4ae0: $19
	and  b                                           ; $4ae1: $a0
	dec  c                                           ; $4ae2: $0d
	nop                                              ; $4ae3: $00
	dec  b                                           ; $4ae4: $05
	ld   b, b                                        ; $4ae5: $40
	ld   b, e                                        ; $4ae6: $43
	inc  bc                                          ; $4ae7: $03
	ld   b, e                                        ; $4ae8: $43
	ld   bc, $2801                                   ; $4ae9: $01 $01 $28
	nop                                              ; $4aec: $00
	ld   bc, $7e03                                   ; $4aed: $01 $03 $7e
	sbc  l                                           ; $4af0: $9d
	sbc  b                                           ; $4af1: $98
	adc  h                                           ; $4af2: $8c
	ld   h, a                                        ; $4af3: $67
	sbc  a                                           ; $4af4: $9f
	dec  c                                           ; $4af5: $0d
	nop                                              ; $4af6: $00
	ld   a, [bc]                                     ; $4af7: $0a
	dec  c                                           ; $4af8: $0d
	nop                                              ; $4af9: $00
	nop                                              ; $4afa: $00
	rrca                                             ; $4afb: $0f
	nop                                              ; $4afc: $00
	ld   bc, $0f00                                   ; $4afd: $01 $00 $0f
	ld   [bc], a                                     ; $4b00: $02
	nop                                              ; $4b01: $00
	ld   bc, $9b96                                   ; $4b02: $01 $96 $9b
	ld   h, l                                        ; $4b05: $65
	ld   e, l                                        ; $4b06: $5d
	ld   [hl], h                                     ; $4b07: $74
	sub  [hl]                                        ; $4b08: $96
	sbc  a                                           ; $4b09: $9f
	dec  c                                           ; $4b0a: $0d
	ld   l, e                                        ; $4b0b: $6b
	sbc  d                                           ; $4b0c: $9a
	ld   [hl], l                                     ; $4b0d: $75
	ld   a, l                                        ; $4b0e: $7d
	sbc  [hl]                                        ; $4b0f: $9e
	ld   h, e                                        ; $4b10: $63
	ld   [hl], c                                     ; $4b11: $71
	ld   l, e                                        ; $4b12: $6b
	ld   e, l                                        ; $4b13: $5d
	dec  c                                           ; $4b14: $0d
	dec  b                                           ; $4b15: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b16: $cf
	adc  a                                           ; $4b17: $8f
	adc  h                                           ; $4b18: $8c
	ld   h, l                                        ; $4b19: $65
	sub  l                                           ; $4b1a: $95
	ld   d, h                                        ; $4b1b: $54
	sbc  a                                           ; $4b1c: $9f
	dec  c                                           ; $4b1d: $0d
	nop                                              ; $4b1e: $00
	ld   a, [bc]                                     ; $4b1f: $0a
	dec  h                                           ; $4b20: $25
	ld   [bc], a                                     ; $4b21: $02
	rlca                                             ; $4b22: $07
	ld   sp, $0305                                   ; $4b23: $31 $05 $03
	jr   nz, jr_049_4b29                             ; $4b26: $20 $01

	nop                                              ; $4b28: $00

jr_049_4b29:
	jr   nz, jr_049_4b2b                             ; $4b29: $20 $00

jr_049_4b2b:
	inc  e                                           ; $4b2b: $1c
	ld   [bc], a                                     ; $4b2c: $02
	ld   bc, $0101                                   ; $4b2d: $01 $01 $01
	ld   a, b                                        ; $4b30: $78
	ld   e, c                                        ; $4b31: $59
	ld   a, b                                        ; $4b32: $78
	ld   e, c                                        ; $4b33: $59
	ld   [hl], l                                     ; $4b34: $75
	ld   h, a                                        ; $4b35: $67
	sbc  l                                           ; $4b36: $9d
	sbc  a                                           ; $4b37: $9f
	dec  c                                           ; $4b38: $0d
	ld   h, c                                        ; $4b39: $61
	ld   a, h                                        ; $4b3a: $7c
	inc  bc                                          ; $4b3b: $03
	cp   $03                                         ; $4b3c: $fe $03
	add  [hl]                                        ; $4b3e: $86
	ld   [hl], l                                     ; $4b3f: $75
	ld   e, d                                        ; $4b40: $5a
	and  c                                           ; $4b41: $a1
	ld   a, [hl]                                     ; $4b42: $7e
	sbc  b                                           ; $4b43: $98
	ld   a, b                                        ; $4b44: $78
	ld   h, e                                        ; $4b45: $63
	ld   d, d                                        ; $4b46: $52
	sbc  a                                           ; $4b47: $9f
	dec  c                                           ; $4b48: $0d
	nop                                              ; $4b49: $00
	ld   a, [bc]                                     ; $4b4a: $0a
	inc  e                                           ; $4b4b: $1c
	ld   [bc], a                                     ; $4b4c: $02
	nop                                              ; $4b4d: $00
	nop                                              ; $4b4e: $00
	ld   bc, $9a6b                                   ; $4b4f: $01 $6b $9a
	ld   [hl], l                                     ; $4b52: $75
	ld   a, l                                        ; $4b53: $7d
	sbc  [hl]                                        ; $4b54: $9e
	inc  b                                           ; $4b55: $04
	adc  a                                           ; $4b56: $8f
	inc  b                                           ; $4b57: $04
	xor  d                                           ; $4b58: $aa
	ld   a, h                                        ; $4b59: $7c
	ld   [bc], a                                     ; $4b5a: $02
	or   d                                           ; $4b5b: $b2
	ld   [bc], a                                     ; $4b5c: $02
	xor  d                                           ; $4b5d: $aa
	ld   a, h                                        ; $4b5e: $7c
	inc  bc                                          ; $4b5f: $03
	ld   l, l                                        ; $4b60: $6d
	dec  b                                           ; $4b61: $05
	add  hl, de                                      ; $4b62: $19
	and  b                                           ; $4b63: $a0
	dec  c                                           ; $4b64: $0d
	nop                                              ; $4b65: $00
	dec  b                                           ; $4b66: $05
	ld   b, b                                        ; $4b67: $40
	ld   b, e                                        ; $4b68: $43
	inc  bc                                          ; $4b69: $03
	ld   b, e                                        ; $4b6a: $43
	ld   bc, $2801                                   ; $4b6b: $01 $01 $28
	nop                                              ; $4b6e: $00
	ld   bc, $7e03                                   ; $4b6f: $01 $03 $7e
	sbc  l                                           ; $4b72: $9d
	sbc  b                                           ; $4b73: $98
	adc  h                                           ; $4b74: $8c
	ld   h, a                                        ; $4b75: $67
	sbc  a                                           ; $4b76: $9f
	dec  c                                           ; $4b77: $0d
	nop                                              ; $4b78: $00
	ld   a, [bc]                                     ; $4b79: $0a
	dec  c                                           ; $4b7a: $0d
	nop                                              ; $4b7b: $00
	nop                                              ; $4b7c: $00
	rrca                                             ; $4b7d: $0f
	nop                                              ; $4b7e: $00
	ld   bc, $0d00                                   ; $4b7f: $01 $00 $0d
	ld   [bc], a                                     ; $4b82: $02
	nop                                              ; $4b83: $00
	rrca                                             ; $4b84: $0f
	nop                                              ; $4b85: $00
	ld   bc, $0102                                   ; $4b86: $01 $02 $01
	ld   h, c                                        ; $4b89: $61
	and  c                                           ; $4b8a: $a1
	ld   a, c                                        ; $4b8b: $79
	ld   l, a                                        ; $4b8c: $6f
	ld   a, l                                        ; $4b8d: $7d
	sbc  [hl]                                        ; $4b8e: $9e
	ld   h, a                                        ; $4b8f: $67
	adc  l                                           ; $4b90: $8d
	sbc  d                                           ; $4b91: $9a
	ld   h, e                                        ; $4b92: $63
	and  c                                           ; $4b93: $a1
	sbc  a                                           ; $4b94: $9f
	dec  c                                           ; $4b95: $0d
	ld   e, a                                        ; $4b96: $5f
	ld   d, d                                        ; $4b97: $52
	ld   h, c                                        ; $4b98: $61
	and  b                                           ; $4b99: $a0
	ld   [hl], d                                     ; $4b9a: $72
	ld   e, a                                        ; $4b9b: $5f
	ld   [hl], h                                     ; $4b9c: $74
	ld   d, d                                        ; $4b9d: $52
	ld   l, l                                        ; $4b9e: $6d
	ld   l, [hl]                                     ; $4b9f: $6e
	ld   e, a                                        ; $4ba0: $5f
	dec  c                                           ; $4ba1: $0d
	adc  h                                           ; $4ba2: $8c
	ld   h, a                                        ; $4ba3: $67
	ld   e, c                                        ; $4ba4: $59
	ld   sp, hl                                      ; $4ba5: $f9
	dec  c                                           ; $4ba6: $0d
	nop                                              ; $4ba7: $00
	ld   a, [bc]                                     ; $4ba8: $0a
	rlca                                             ; $4ba9: $07
	ld   a, b                                        ; $4baa: $78
	add  hl, bc                                      ; $4bab: $09
	inc  bc                                          ; $4bac: $03
	ld   b, e                                        ; $4bad: $43
	ld   bc, $2507                                   ; $4bae: $01 $07 $25
	nop                                              ; $4bb1: $00
	rlca                                             ; $4bb2: $07
	ld   bc, $030a                                   ; $4bb3: $01 $0a $03
	ld   b, e                                        ; $4bb6: $43
	ld   bc, $250d                                   ; $4bb7: $01 $0d $25
	nop                                              ; $4bba: $00
	rrca                                             ; $4bbb: $0f
	ld   [bc], a                                     ; $4bbc: $02
	nop                                              ; $4bbd: $00
	ld   bc, $9b96                                   ; $4bbe: $01 $96 $9b
	ld   h, l                                        ; $4bc1: $65
	ld   e, l                                        ; $4bc2: $5d
	ld   [hl], h                                     ; $4bc3: $74
	sub  [hl]                                        ; $4bc4: $96
	sbc  a                                           ; $4bc5: $9f
	dec  c                                           ; $4bc6: $0d
	ld   l, e                                        ; $4bc7: $6b
	sbc  d                                           ; $4bc8: $9a
	ld   [hl], l                                     ; $4bc9: $75
	ld   a, l                                        ; $4bca: $7d
	sbc  [hl]                                        ; $4bcb: $9e
	ld   h, e                                        ; $4bcc: $63
	ld   [hl], c                                     ; $4bcd: $71
	ld   l, e                                        ; $4bce: $6b
	ld   e, l                                        ; $4bcf: $5d
	dec  c                                           ; $4bd0: $0d
	dec  b                                           ; $4bd1: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4bd2: $cf
	adc  a                                           ; $4bd3: $8f
	adc  h                                           ; $4bd4: $8c
	ld   h, l                                        ; $4bd5: $65
	sub  l                                           ; $4bd6: $95
	ld   d, h                                        ; $4bd7: $54
	sbc  a                                           ; $4bd8: $9f
	dec  c                                           ; $4bd9: $0d
	nop                                              ; $4bda: $00
	ld   a, [bc]                                     ; $4bdb: $0a
	dec  h                                           ; $4bdc: $25
	ld   [bc], a                                     ; $4bdd: $02
	rlca                                             ; $4bde: $07
	ld   sp, $0305                                   ; $4bdf: $31 $05 $03
	jr   nz, jr_049_4be5                             ; $4be2: $20 $01

	nop                                              ; $4be4: $00

jr_049_4be5:
	jr   nz, jr_049_4be7                             ; $4be5: $20 $00

jr_049_4be7:
	inc  e                                           ; $4be7: $1c
	ld   [bc], a                                     ; $4be8: $02
	ld   bc, $0101                                   ; $4be9: $01 $01 $01
	inc  bc                                          ; $4bec: $03
	and  [hl]                                        ; $4bed: $a6
	dec  b                                           ; $4bee: $05
	call nc, Call_049_6597                           ; $4bef: $d4 $97 $65
	ld   d, d                                        ; $4bf2: $52
	inc  bc                                          ; $4bf3: $03
	ld   h, l                                        ; $4bf4: $65
	inc  bc                                          ; $4bf5: $03
	rst  $30                                         ; $4bf6: $f7
	add  h                                           ; $4bf7: $84
	sbc  b                                           ; $4bf8: $98
	ld   [hl], l                                     ; $4bf9: $75
	ld   h, a                                        ; $4bfa: $67
	sbc  l                                           ; $4bfb: $9d
	dec  c                                           ; $4bfc: $0d
	ld   [$6300], sp                                 ; $4bfd: $08 $00 $63
	and  c                                           ; $4c00: $a1
	sbc  a                                           ; $4c01: $9f
	dec  c                                           ; $4c02: $0d
	nop                                              ; $4c03: $00
	ld   a, [bc]                                     ; $4c04: $0a
	inc  e                                           ; $4c05: $1c
	ld   [bc], a                                     ; $4c06: $02
	nop                                              ; $4c07: $00
	nop                                              ; $4c08: $00
	ld   bc, $7c61                                   ; $4c09: $01 $61 $7c
	adc  h                                           ; $4c0c: $8c
	adc  h                                           ; $4c0d: $8c
	ld   e, d                                        ; $4c0e: $5a
	and  c                                           ; $4c0f: $a1
	ld   a, [hl]                                     ; $4c10: $7e
	sbc  d                                           ; $4c11: $9a
	ld   a, [hl]                                     ; $4c12: $7e
	sbc  [hl]                                        ; $4c13: $9e
	dec  c                                           ; $4c14: $0d
	inc  bc                                          ; $4c15: $03
	sub  b                                           ; $4c16: $90
	inc  bc                                          ; $4c17: $03
	cp   e                                           ; $4c18: $bb
	inc  b                                           ; $4c19: $04
	ld   [hl], a                                     ; $4c1a: $77
	inc  bc                                          ; $4c1b: $03
	or   l                                           ; $4c1c: $b5
	dec  b                                           ; $4c1d: $05
	inc  d                                           ; $4c1e: $14
	ld   a, h                                        ; $4c1f: $7c
	inc  b                                           ; $4c20: $04
	call c, $8a02                                    ; $4c21: $dc $02 $8a
	ld   [bc], a                                     ; $4c24: $02
	sbc  $04                                         ; $4c25: $de $04
	ld   [de], a                                     ; $4c27: $12
	sub  b                                           ; $4c28: $90
	dec  c                                           ; $4c29: $0d
	inc  b                                           ; $4c2a: $04
	cp   [hl]                                        ; $4c2b: $be
	ld   [hl], l                                     ; $4c2c: $75
	ld   a, l                                        ; $4c2d: $7d
	ld   d, b                                        ; $4c2e: $50
	sbc  b                                           ; $4c2f: $98
	adc  h                                           ; $4c30: $8c
	ld   l, c                                        ; $4c31: $69
	and  c                                           ; $4c32: $a1
	sbc  l                                           ; $4c33: $9d
	sub  [hl]                                        ; $4c34: $96
	sbc  a                                           ; $4c35: $9f
	dec  c                                           ; $4c36: $0d
	nop                                              ; $4c37: $00
	ld   a, [bc]                                     ; $4c38: $0a
	inc  e                                           ; $4c39: $1c
	ld   [bc], a                                     ; $4c3a: $02
	jr   nc, jr_049_4c56                             ; $4c3b: $30 $19

	ld   bc, $8958                                   ; $4c3d: $01 $58 $89
	adc  c                                           ; $4c40: $89
	adc  c                                           ; $4c41: $89
	adc  c                                           ; $4c42: $89
	rst  $38                                         ; $4c43: $ff
	rst  $38                                         ; $4c44: $ff
	dec  c                                           ; $4c45: $0d
	nop                                              ; $4c46: $00
	ld   a, [bc]                                     ; $4c47: $0a
	inc  e                                           ; $4c48: $1c
	ld   [bc], a                                     ; $4c49: $02
	nop                                              ; $4c4a: $00
	nop                                              ; $4c4b: $00
	ld   bc, $9a6b                                   ; $4c4c: $01 $6b $9a
	ld   [hl], l                                     ; $4c4f: $75
	ld   a, l                                        ; $4c50: $7d
	sbc  [hl]                                        ; $4c51: $9e
	inc  b                                           ; $4c52: $04
	adc  a                                           ; $4c53: $8f
	inc  b                                           ; $4c54: $04
	xor  d                                           ; $4c55: $aa

jr_049_4c56:
	ld   a, h                                        ; $4c56: $7c
	ld   [bc], a                                     ; $4c57: $02
	or   d                                           ; $4c58: $b2
	ld   [bc], a                                     ; $4c59: $02
	xor  d                                           ; $4c5a: $aa
	ld   a, h                                        ; $4c5b: $7c
	inc  bc                                          ; $4c5c: $03
	ld   l, l                                        ; $4c5d: $6d
	dec  b                                           ; $4c5e: $05
	add  hl, de                                      ; $4c5f: $19
	and  b                                           ; $4c60: $a0
	dec  c                                           ; $4c61: $0d
	nop                                              ; $4c62: $00
	dec  b                                           ; $4c63: $05
	ld   b, b                                        ; $4c64: $40
	ld   b, e                                        ; $4c65: $43
	inc  bc                                          ; $4c66: $03
	ld   b, e                                        ; $4c67: $43
	ld   bc, $2801                                   ; $4c68: $01 $01 $28
	nop                                              ; $4c6b: $00
	ld   bc, $7e03                                   ; $4c6c: $01 $03 $7e
	sbc  l                                           ; $4c6f: $9d
	sbc  b                                           ; $4c70: $98
	adc  h                                           ; $4c71: $8c
	ld   h, a                                        ; $4c72: $67
	sbc  l                                           ; $4c73: $9d
	sbc  a                                           ; $4c74: $9f
	dec  c                                           ; $4c75: $0d
	ld   h, c                                        ; $4c76: $61
	sbc  d                                           ; $4c77: $9a
	ld   e, c                                        ; $4c78: $59
	sub  a                                           ; $4c79: $97
	sub  b                                           ; $4c7a: $90
	dec  b                                           ; $4c7b: $05
	ldh  [rTIMA], a                                  ; $4c7c: $e0 $05
	db   $dd                                         ; $4c7e: $dd
	ld   a, b                                        ; $4c7f: $78
	ld   h, e                                        ; $4c80: $63
	ld   d, d                                        ; $4c81: $52
	sbc  a                                           ; $4c82: $9f
	dec  c                                           ; $4c83: $0d
	nop                                              ; $4c84: $00
	ld   a, [bc]                                     ; $4c85: $0a
	dec  c                                           ; $4c86: $0d
	nop                                              ; $4c87: $00
	nop                                              ; $4c88: $00
	rrca                                             ; $4c89: $0f
	nop                                              ; $4c8a: $00
	ld   bc, $0f00                                   ; $4c8b: $01 $00 $0f
	ld   [bc], a                                     ; $4c8e: $02
	nop                                              ; $4c8f: $00
	ld   bc, $9b96                                   ; $4c90: $01 $96 $9b
	ld   h, l                                        ; $4c93: $65
	ld   e, l                                        ; $4c94: $5d
	ld   [hl], h                                     ; $4c95: $74
	sub  [hl]                                        ; $4c96: $96
	sbc  a                                           ; $4c97: $9f
	dec  c                                           ; $4c98: $0d
	ld   l, e                                        ; $4c99: $6b
	sbc  d                                           ; $4c9a: $9a
	ld   [hl], l                                     ; $4c9b: $75
	ld   a, l                                        ; $4c9c: $7d
	sbc  [hl]                                        ; $4c9d: $9e
	ld   h, e                                        ; $4c9e: $63
	ld   [hl], c                                     ; $4c9f: $71
	ld   l, e                                        ; $4ca0: $6b
	ld   e, l                                        ; $4ca1: $5d
	dec  c                                           ; $4ca2: $0d
	dec  b                                           ; $4ca3: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ca4: $cf
	adc  a                                           ; $4ca5: $8f
	adc  h                                           ; $4ca6: $8c
	ld   h, l                                        ; $4ca7: $65
	sub  l                                           ; $4ca8: $95
	ld   d, h                                        ; $4ca9: $54
	sbc  a                                           ; $4caa: $9f
	dec  c                                           ; $4cab: $0d
	nop                                              ; $4cac: $00
	ld   a, [bc]                                     ; $4cad: $0a
	dec  h                                           ; $4cae: $25
	ld   [bc], a                                     ; $4caf: $02
	rlca                                             ; $4cb0: $07
	ld   sp, $0305                                   ; $4cb1: $31 $05 $03
	jr   nz, jr_049_4cb7                             ; $4cb4: $20 $01

	nop                                              ; $4cb6: $00

jr_049_4cb7:
	jr   nz, jr_049_4cb9                             ; $4cb7: $20 $00

jr_049_4cb9:
	inc  e                                           ; $4cb9: $1c
	ld   [bc], a                                     ; $4cba: $02
	ld   bc, $0101                                   ; $4cbb: $01 $01 $01
	inc  bc                                          ; $4cbe: $03
	and  [hl]                                        ; $4cbf: $a6
	dec  b                                           ; $4cc0: $05
	call nc, Call_049_6597                           ; $4cc1: $d4 $97 $65
	ld   d, d                                        ; $4cc4: $52
	ld   [hl], l                                     ; $4cc5: $75
	ld   h, a                                        ; $4cc6: $67
	sbc  l                                           ; $4cc7: $9d
	dec  c                                           ; $4cc8: $0d
	ld   [$6300], sp                                 ; $4cc9: $08 $00 $63
	and  c                                           ; $4ccc: $a1
	sbc  a                                           ; $4ccd: $9f
	dec  c                                           ; $4cce: $0d
	nop                                              ; $4ccf: $00
	ld   a, [bc]                                     ; $4cd0: $0a
	inc  e                                           ; $4cd1: $1c
	ld   [bc], a                                     ; $4cd2: $02
	nop                                              ; $4cd3: $00
	nop                                              ; $4cd4: $00
	ld   bc, $9a6b                                   ; $4cd5: $01 $6b $9a
	ld   [hl], l                                     ; $4cd8: $75
	ld   a, l                                        ; $4cd9: $7d
	sbc  [hl]                                        ; $4cda: $9e
	inc  b                                           ; $4cdb: $04
	adc  a                                           ; $4cdc: $8f
	inc  b                                           ; $4cdd: $04
	xor  d                                           ; $4cde: $aa
	ld   a, h                                        ; $4cdf: $7c
	ld   [bc], a                                     ; $4ce0: $02
	or   d                                           ; $4ce1: $b2
	ld   [bc], a                                     ; $4ce2: $02
	xor  d                                           ; $4ce3: $aa
	ld   a, h                                        ; $4ce4: $7c
	inc  bc                                          ; $4ce5: $03
	ld   l, l                                        ; $4ce6: $6d
	dec  b                                           ; $4ce7: $05
	add  hl, de                                      ; $4ce8: $19
	and  b                                           ; $4ce9: $a0
	dec  c                                           ; $4cea: $0d
	nop                                              ; $4ceb: $00
	dec  b                                           ; $4cec: $05
	ld   b, b                                        ; $4ced: $40
	ld   b, e                                        ; $4cee: $43
	inc  bc                                          ; $4cef: $03
	ld   b, e                                        ; $4cf0: $43
	ld   bc, $2801                                   ; $4cf1: $01 $01 $28
	nop                                              ; $4cf4: $00
	ld   bc, $7e03                                   ; $4cf5: $01 $03 $7e
	sbc  l                                           ; $4cf8: $9d
	sbc  b                                           ; $4cf9: $98
	adc  h                                           ; $4cfa: $8c
	ld   h, a                                        ; $4cfb: $67
	sbc  l                                           ; $4cfc: $9d
	sbc  a                                           ; $4cfd: $9f
	dec  c                                           ; $4cfe: $0d
	ld   h, c                                        ; $4cff: $61
	sbc  d                                           ; $4d00: $9a
	ld   e, c                                        ; $4d01: $59
	sub  a                                           ; $4d02: $97
	sub  b                                           ; $4d03: $90
	dec  b                                           ; $4d04: $05
	ldh  [rTIMA], a                                  ; $4d05: $e0 $05
	db   $dd                                         ; $4d07: $dd
	ld   a, b                                        ; $4d08: $78
	ld   h, e                                        ; $4d09: $63
	ld   d, d                                        ; $4d0a: $52
	sbc  a                                           ; $4d0b: $9f
	dec  c                                           ; $4d0c: $0d
	nop                                              ; $4d0d: $00
	ld   a, [bc]                                     ; $4d0e: $0a
	dec  c                                           ; $4d0f: $0d
	nop                                              ; $4d10: $00
	nop                                              ; $4d11: $00
	rrca                                             ; $4d12: $0f
	nop                                              ; $4d13: $00
	ld   bc, $0f00                                   ; $4d14: $01 $00 $0f
	ld   [bc], a                                     ; $4d17: $02
	nop                                              ; $4d18: $00
	ld   bc, $9b96                                   ; $4d19: $01 $96 $9b
	ld   h, l                                        ; $4d1c: $65
	ld   e, l                                        ; $4d1d: $5d
	ld   [hl], h                                     ; $4d1e: $74
	sub  [hl]                                        ; $4d1f: $96
	sbc  a                                           ; $4d20: $9f
	dec  c                                           ; $4d21: $0d
	ld   l, e                                        ; $4d22: $6b
	sbc  d                                           ; $4d23: $9a
	ld   [hl], l                                     ; $4d24: $75
	ld   a, l                                        ; $4d25: $7d
	sbc  [hl]                                        ; $4d26: $9e
	ld   h, e                                        ; $4d27: $63
	ld   [hl], c                                     ; $4d28: $71
	ld   l, e                                        ; $4d29: $6b
	ld   e, l                                        ; $4d2a: $5d
	dec  c                                           ; $4d2b: $0d
	dec  b                                           ; $4d2c: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d2d: $cf
	adc  a                                           ; $4d2e: $8f
	adc  h                                           ; $4d2f: $8c
	ld   h, l                                        ; $4d30: $65
	sub  l                                           ; $4d31: $95
	ld   d, h                                        ; $4d32: $54
	sbc  a                                           ; $4d33: $9f
	dec  c                                           ; $4d34: $0d
	nop                                              ; $4d35: $00
	ld   a, [bc]                                     ; $4d36: $0a
	dec  h                                           ; $4d37: $25
	ld   [bc], a                                     ; $4d38: $02
	rlca                                             ; $4d39: $07
	ld   sp, $0305                                   ; $4d3a: $31 $05 $03
	jr   nz, jr_049_4d40                             ; $4d3d: $20 $01

	nop                                              ; $4d3f: $00

jr_049_4d40:
	jr   nz, jr_049_4d42                             ; $4d40: $20 $00

jr_049_4d42:
	inc  e                                           ; $4d42: $1c
	ld   [bc], a                                     ; $4d43: $02
	ld   bc, $0101                                   ; $4d44: $01 $01 $01
	inc  bc                                          ; $4d47: $03
	and  [hl]                                        ; $4d48: $a6
	dec  b                                           ; $4d49: $05
	call nc, Call_049_6597                           ; $4d4a: $d4 $97 $65
	ld   d, d                                        ; $4d4d: $52
	ld   [hl], l                                     ; $4d4e: $75
	ld   h, a                                        ; $4d4f: $67
	sbc  l                                           ; $4d50: $9d
	dec  c                                           ; $4d51: $0d
	ld   [$6300], sp                                 ; $4d52: $08 $00 $63
	and  c                                           ; $4d55: $a1
	sbc  a                                           ; $4d56: $9f
	dec  c                                           ; $4d57: $0d
	nop                                              ; $4d58: $00
	ld   a, [bc]                                     ; $4d59: $0a
	inc  e                                           ; $4d5a: $1c
	ld   [bc], a                                     ; $4d5b: $02
	nop                                              ; $4d5c: $00
	nop                                              ; $4d5d: $00
	ld   bc, $9a6b                                   ; $4d5e: $01 $6b $9a
	ld   [hl], l                                     ; $4d61: $75
	ld   a, l                                        ; $4d62: $7d
	sbc  [hl]                                        ; $4d63: $9e
	inc  b                                           ; $4d64: $04
	adc  a                                           ; $4d65: $8f
	inc  b                                           ; $4d66: $04
	xor  d                                           ; $4d67: $aa
	ld   a, h                                        ; $4d68: $7c
	ld   [bc], a                                     ; $4d69: $02
	or   d                                           ; $4d6a: $b2
	ld   [bc], a                                     ; $4d6b: $02
	xor  d                                           ; $4d6c: $aa
	ld   a, h                                        ; $4d6d: $7c
	inc  bc                                          ; $4d6e: $03
	ld   l, l                                        ; $4d6f: $6d
	dec  b                                           ; $4d70: $05
	add  hl, de                                      ; $4d71: $19
	and  b                                           ; $4d72: $a0
	dec  c                                           ; $4d73: $0d
	nop                                              ; $4d74: $00
	dec  b                                           ; $4d75: $05
	ld   b, b                                        ; $4d76: $40
	ld   b, e                                        ; $4d77: $43
	inc  bc                                          ; $4d78: $03
	ld   b, e                                        ; $4d79: $43
	ld   bc, $2801                                   ; $4d7a: $01 $01 $28
	nop                                              ; $4d7d: $00
	ld   bc, $7e03                                   ; $4d7e: $01 $03 $7e
	sbc  l                                           ; $4d81: $9d
	sbc  b                                           ; $4d82: $98
	adc  h                                           ; $4d83: $8c
	ld   h, a                                        ; $4d84: $67
	sbc  l                                           ; $4d85: $9d
	sbc  a                                           ; $4d86: $9f
	dec  c                                           ; $4d87: $0d
	nop                                              ; $4d88: $00
	ld   a, [bc]                                     ; $4d89: $0a
	dec  c                                           ; $4d8a: $0d
	nop                                              ; $4d8b: $00
	nop                                              ; $4d8c: $00
	rrca                                             ; $4d8d: $0f
	nop                                              ; $4d8e: $00
	ld   bc, $0e00                                   ; $4d8f: $01 $00 $0e
	ld   bc, $0702                                   ; $4d92: $01 $02 $07
	jp   $030a                                       ; $4d95: $c3 $0a $03


	jr   nz, jr_049_4d9b                             ; $4d98: $20 $01

	ld   b, b                                        ; $4d9a: $40

jr_049_4d9b:
	dec  h                                           ; $4d9b: $25
	nop                                              ; $4d9c: $00
	dec  b                                           ; $4d9d: $05
	ld   b, b                                        ; $4d9e: $40
	ld   c, a                                        ; $4d9f: $4f
	inc  bc                                          ; $4da0: $03
	ld   c, a                                        ; $4da1: $4f
	ld   [bc], a                                     ; $4da2: $02
	nop                                              ; $4da3: $00
	inc  bc                                          ; $4da4: $03
	ld   c, c                                        ; $4da5: $49
	add  hl, hl                                      ; $4da6: $29
	add  hl, hl                                      ; $4da7: $29
	nop                                              ; $4da8: $00
	ld   bc, $ffff                                   ; $4da9: $01 $ff $ff
	ld   d, h                                        ; $4dac: $54
	db   $fc                                         ; $4dad: $fc
	and  c                                           ; $4dae: $a1
	rst  $38                                         ; $4daf: $ff
	rst  $38                                         ; $4db0: $ff
	dec  c                                           ; $4db1: $0d
	ld   a, b                                        ; $4db2: $78
	and  c                                           ; $4db3: $a1
	ld   l, [hl]                                     ; $4db4: $6e
	ld   e, c                                        ; $4db5: $59
	inc  b                                           ; $4db6: $04
	dec  c                                           ; $4db7: $0d
	inc  bc                                          ; $4db8: $03
	cp   $5a                                         ; $4db9: $fe $5a
	ld   [bc], a                                     ; $4dbb: $02
	jr   z, jr_049_4e10                              ; $4dbc: $28 $52

	ld   a, b                                        ; $4dbe: $78
	rst  $38                                         ; $4dbf: $ff
	rst  $38                                         ; $4dc0: $ff
	dec  c                                           ; $4dc1: $0d
	ld   [bc], a                                     ; $4dc2: $02
	and  l                                           ; $4dc3: $a5
	inc  b                                           ; $4dc4: $04
	xor  d                                           ; $4dc5: $aa
	ld   a, h                                        ; $4dc6: $7c
	inc  bc                                          ; $4dc7: $03
	ld   l, l                                        ; $4dc8: $6d
	dec  b                                           ; $4dc9: $05
	add  hl, de                                      ; $4dca: $19
	ld   a, l                                        ; $4dcb: $7d
	inc  bc                                          ; $4dcc: $03
	and  a                                           ; $4dcd: $a7
	adc  [hl]                                        ; $4dce: $8e
	ld   e, c                                        ; $4dcf: $59
	ld   a, b                                        ; $4dd0: $78
	sbc  a                                           ; $4dd1: $9f
	dec  c                                           ; $4dd2: $0d
	nop                                              ; $4dd3: $00
	ld   a, [bc]                                     ; $4dd4: $0a
	ld   b, $ee                                      ; $4dd5: $06 $ee
	ld   a, [bc]                                     ; $4dd7: $0a
	ld   bc, $a502                                   ; $4dd8: $01 $02 $a5
	inc  b                                           ; $4ddb: $04
	xor  d                                           ; $4ddc: $aa
	ld   a, l                                        ; $4ddd: $7d
	ld   a, b                                        ; $4dde: $78
	and  c                                           ; $4ddf: $a1
	ld   l, [hl]                                     ; $4de0: $6e
	ld   e, c                                        ; $4de1: $59
	inc  bc                                          ; $4de2: $03
	ld   l, l                                        ; $4de3: $6d
	dec  b                                           ; $4de4: $05
	add  hl, de                                      ; $4de5: $19
	ld   a, c                                        ; $4de6: $79
	dec  c                                           ; $4de7: $0d
	ld   [bc], a                                     ; $4de8: $02
	ld   a, a                                        ; $4de9: $7f
	ld   e, e                                        ; $4dea: $5b
	ld   l, l                                        ; $4deb: $6d
	ld   e, l                                        ; $4dec: $5d
	ld   a, b                                        ; $4ded: $78
	ld   d, d                                        ; $4dee: $52
	ld   a, b                                        ; $4def: $78
	ld   d, b                                        ; $4df0: $50
	rst  $38                                         ; $4df1: $ff
	rst  $38                                         ; $4df2: $ff
	dec  c                                           ; $4df3: $0d
	inc  bc                                          ; $4df4: $03
	ld   l, l                                        ; $4df5: $6d
	dec  b                                           ; $4df6: $05
	add  hl, de                                      ; $4df7: $19
	rst  $38                                         ; $4df8: $ff
	rst  $38                                         ; $4df9: $ff
	inc  bc                                          ; $4dfa: $03
	and  a                                           ; $4dfb: $a7
	adc  [hl]                                        ; $4dfc: $8e
	ld   e, c                                        ; $4dfd: $59
	ld   a, b                                        ; $4dfe: $78
	sbc  a                                           ; $4dff: $9f
	dec  c                                           ; $4e00: $0d
	nop                                              ; $4e01: $00
	ld   a, [bc]                                     ; $4e02: $0a
	inc  hl                                          ; $4e03: $23
	ld   b, h                                        ; $4e04: $44
	inc  d                                           ; $4e05: $14
	ld   b, $01                                      ; $4e06: $06 $01
	add  hl, bc                                      ; $4e08: $09
	ld   e, $01                                      ; $4e09: $1e $01
	ld   h, a                                        ; $4e0b: $67
	adc  l                                           ; $4e0c: $8d
	sbc  d                                           ; $4e0d: $9a
	ld   h, e                                        ; $4e0e: $63
	and  c                                           ; $4e0f: $a1

jr_049_4e10:
	sbc  [hl]                                        ; $4e10: $9e
	dec  c                                           ; $4e11: $0d
	ld   d, d                                        ; $4e12: $52
	sub  a                                           ; $4e13: $97
	ld   [hl], c                                     ; $4e14: $71
	ld   h, l                                        ; $4e15: $65
	sub  c                                           ; $4e16: $91
	ld   d, d                                        ; $4e17: $52
	adc  h                                           ; $4e18: $8c
	ld   h, a                                        ; $4e19: $67
	ld   e, c                                        ; $4e1a: $59
	ld   sp, hl                                      ; $4e1b: $f9
	dec  c                                           ; $4e1c: $0d
	nop                                              ; $4e1d: $00
	ld   a, [bc]                                     ; $4e1e: $0a
	rrca                                             ; $4e1f: $0f
	ld   [bc], a                                     ; $4e20: $02
	nop                                              ; $4e21: $00
	ld   bc, $527d                                   ; $4e22: $01 $7d $52
	sbc  a                                           ; $4e25: $9f
	dec  c                                           ; $4e26: $0d
	ld   d, d                                        ; $4e27: $52
	adc  h                                           ; $4e28: $8c
	ld   d, b                                        ; $4e29: $50
	ld   e, a                                        ; $4e2a: $5f
	adc  h                                           ; $4e2b: $8c
	ld   h, a                                        ; $4e2c: $67
	sbc  l                                           ; $4e2d: $9d
	sbc  a                                           ; $4e2e: $9f
	dec  c                                           ; $4e2f: $0d
	nop                                              ; $4e30: $00
	ld   a, [bc]                                     ; $4e31: $0a
	inc  d                                           ; $4e32: $14
	ld   a, [bc]                                     ; $4e33: $0a
	ld   bc, $450e                                   ; $4e34: $01 $0e $45
	rlca                                             ; $4e37: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e38: $cf
	dec  bc                                          ; $4e39: $0b
	inc  bc                                          ; $4e3a: $03
	jr   nz, jr_049_4e3e                             ; $4e3b: $20 $01

	ld   b, b                                        ; $4e3d: $40

jr_049_4e3e:
	dec  h                                           ; $4e3e: $25
	nop                                              ; $4e3f: $00
	dec  c                                           ; $4e40: $0d
	ld   [bc], a                                     ; $4e41: $02
	nop                                              ; $4e42: $00
	ld   bc, $ffff                                   ; $4e43: $01 $ff $ff
	rst  $38                                         ; $4e46: $ff
	rst  $38                                         ; $4e47: $ff
	ld   d, b                                        ; $4e48: $50
	sub  a                                           ; $4e49: $97
	sbc  [hl]                                        ; $4e4a: $9e
	dec  c                                           ; $4e4b: $0d
	nop                                              ; $4e4c: $00
	inc  e                                           ; $4e4d: $1c
	ld   [bc], a                                     ; $4e4e: $02
	dec  b                                           ; $4e4f: $05
	dec  b                                           ; $4e50: $05
	ld   bc, $5477                                   ; $4e51: $01 $77 $54
	ld   a, b                                        ; $4e54: $78
	ld   h, e                                        ; $4e55: $63
	ld   d, d                                        ; $4e56: $52
	adc  h                                           ; $4e57: $8c
	ld   h, l                                        ; $4e58: $65
	ld   l, l                                        ; $4e59: $6d
	ld   a, h                                        ; $4e5a: $7c
	ld   sp, hl                                      ; $4e5b: $f9
	dec  c                                           ; $4e5c: $0d
	ld   [bc], a                                     ; $4e5d: $02
	ld   [hl], d                                     ; $4e5e: $72
	inc  bc                                          ; $4e5f: $03
	dec  bc                                          ; $4e60: $0b
	ld   e, d                                        ; $4e61: $5a
	sbc  l                                           ; $4e62: $9d
	sbc  c                                           ; $4e63: $99
	ld   d, d                                        ; $4e64: $52
	ld   [hl], l                                     ; $4e65: $75
	ld   h, a                                        ; $4e66: $67
	sbc  l                                           ; $4e67: $9d
	sub  [hl]                                        ; $4e68: $96
	sbc  a                                           ; $4e69: $9f
	dec  c                                           ; $4e6a: $0d
	nop                                              ; $4e6b: $00
	ld   a, [bc]                                     ; $4e6c: $0a
	rrca                                             ; $4e6d: $0f
	nop                                              ; $4e6e: $00
	ld   bc, $7d01                                   ; $4e6f: $01 $01 $7d
	ld   d, d                                        ; $4e72: $52
	sbc  [hl]                                        ; $4e73: $9e
	ld   l, a                                        ; $4e74: $6f
	sub  l                                           ; $4e75: $95
	ld   [hl], c                                     ; $4e76: $71
	halt                                             ; $4e77: $76
	inc  b                                           ; $4e78: $04
	dec  c                                           ; $4e79: $0d
	inc  bc                                          ; $4e7a: $03
	cp   $5a                                         ; $4e7b: $fe $5a
	dec  c                                           ; $4e7d: $0d
	sbc  l                                           ; $4e7e: $9d
	sbc  c                                           ; $4e7f: $99
	ld   e, l                                        ; $4e80: $5d
	ld   [hl], h                                     ; $4e81: $74
	rst  $38                                         ; $4e82: $ff
	rst  $38                                         ; $4e83: $ff
	ld   [bc], a                                     ; $4e84: $02
	and  l                                           ; $4e85: $a5
	inc  b                                           ; $4e86: $04
	xor  d                                           ; $4e87: $aa
	ld   a, h                                        ; $4e88: $7c
	inc  bc                                          ; $4e89: $03
	ld   l, l                                        ; $4e8a: $6d
	dec  b                                           ; $4e8b: $05
	add  hl, de                                      ; $4e8c: $19
	ld   a, l                                        ; $4e8d: $7d
	dec  c                                           ; $4e8e: $0d
	inc  bc                                          ; $4e8f: $03
	and  a                                           ; $4e90: $a7
	adc  h                                           ; $4e91: $8c
	ld   l, c                                        ; $4e92: $69
	ld   [hl], h                                     ; $4e93: $74
	adc  c                                           ; $4e94: $89
	ld   h, l                                        ; $4e95: $65
	ld   d, d                                        ; $4e96: $52
	ld   a, h                                        ; $4e97: $7c
	ld   [hl], l                                     ; $4e98: $75
	ld   h, a                                        ; $4e99: $67
	ld   e, d                                        ; $4e9a: $5a
	rst  $38                                         ; $4e9b: $ff
	rst  $38                                         ; $4e9c: $ff
	dec  c                                           ; $4e9d: $0d
	nop                                              ; $4e9e: $00
	ld   a, [bc]                                     ; $4e9f: $0a
	inc  e                                           ; $4ea0: $1c
	ld   [bc], a                                     ; $4ea1: $02
	nop                                              ; $4ea2: $00
	nop                                              ; $4ea3: $00
	ld   bc, $599d                                   ; $4ea4: $01 $9d $59
	sbc  b                                           ; $4ea7: $98
	adc  h                                           ; $4ea8: $8c
	ld   h, l                                        ; $4ea9: $65
	ld   l, l                                        ; $4eaa: $6d
	sbc  a                                           ; $4eab: $9f
	dec  c                                           ; $4eac: $0d
	ld   [hl], l                                     ; $4ead: $75
	ld   a, l                                        ; $4eae: $7d
	sbc  [hl]                                        ; $4eaf: $9e
	ld   [bc], a                                     ; $4eb0: $02
	and  l                                           ; $4eb1: $a5
	inc  b                                           ; $4eb2: $04
	xor  d                                           ; $4eb3: $aa
	ld   a, h                                        ; $4eb4: $7c
	inc  bc                                          ; $4eb5: $03
	ld   l, l                                        ; $4eb6: $6d
	dec  b                                           ; $4eb7: $05
	add  hl, de                                      ; $4eb8: $19
	ld   a, l                                        ; $4eb9: $7d
	dec  c                                           ; $4eba: $0d
	ld   e, b                                        ; $4ebb: $58
	inc  bc                                          ; $4ebc: $03
	and  a                                           ; $4ebd: $a7
	adc  l                                           ; $4ebe: $8d
	ld   a, c                                        ; $4ebf: $79
	ld   h, l                                        ; $4ec0: $65
	adc  h                                           ; $4ec1: $8c
	ld   h, l                                        ; $4ec2: $65
	sub  l                                           ; $4ec3: $95
	ld   d, h                                        ; $4ec4: $54
	sbc  a                                           ; $4ec5: $9f
	dec  c                                           ; $4ec6: $0d
	nop                                              ; $4ec7: $00
	ld   a, [bc]                                     ; $4ec8: $0a
	ld   bc, $9a6b                                   ; $4ec9: $01 $6b $9a
	ld   [hl], l                                     ; $4ecc: $75
	ld   a, l                                        ; $4ecd: $7d
	sbc  [hl]                                        ; $4ece: $9e
	ld   e, b                                        ; $4ecf: $58
	inc  b                                           ; $4ed0: $04
	ld   c, $02                                      ; $4ed1: $0e $02
	jp   $9f79                                       ; $4ed3: $c3 $79 $9f


	dec  c                                           ; $4ed6: $0d
	nop                                              ; $4ed7: $00
	ld   a, [bc]                                     ; $4ed8: $0a
	dec  c                                           ; $4ed9: $0d
	nop                                              ; $4eda: $00
	nop                                              ; $4edb: $00
	rrca                                             ; $4edc: $0f
	nop                                              ; $4edd: $00
	ld   bc, $1e09                                   ; $4ede: $01 $09 $1e
	ld   b, $4a                                      ; $4ee1: $06 $4a
	inc  bc                                          ; $4ee3: $03
	dec  c                                           ; $4ee4: $0d
	ld   [bc], a                                     ; $4ee5: $02
	nop                                              ; $4ee6: $00
	ld   bc, $7978                                   ; $4ee7: $01 $78 $79
	ld   e, c                                        ; $4eea: $59
	ld   h, d                                        ; $4eeb: $62
	inc  b                                           ; $4eec: $04
	di                                               ; $4eed: $f3
	ld   [hl], l                                     ; $4eee: $75
	ld   h, a                                        ; $4eef: $67
	ld   a, h                                        ; $4ef0: $7c
	ld   sp, hl                                      ; $4ef1: $f9
	dec  c                                           ; $4ef2: $0d
	sub  b                                           ; $4ef3: $90
	ld   d, h                                        ; $4ef4: $54
	ld   h, a                                        ; $4ef5: $67
	ld   e, [hl]                                     ; $4ef6: $5e
	inc  bc                                          ; $4ef7: $03
	ld   l, l                                        ; $4ef8: $6d
	dec  b                                           ; $4ef9: $05
	add  hl, de                                      ; $4efa: $19
	ld   a, h                                        ; $4efb: $7c
	inc  bc                                          ; $4efc: $03
	ld   l, a                                        ; $4efd: $6f
	ld   [bc], a                                     ; $4efe: $02
	xor  c                                           ; $4eff: $a9
	ld   [hl], l                                     ; $4f00: $75
	ld   h, a                                        ; $4f01: $67
	sbc  l                                           ; $4f02: $9d
	sub  [hl]                                        ; $4f03: $96
	sbc  a                                           ; $4f04: $9f
	dec  c                                           ; $4f05: $0d
	nop                                              ; $4f06: $00
	ld   a, [bc]                                     ; $4f07: $0a
	rrca                                             ; $4f08: $0f
	nop                                              ; $4f09: $00
	ld   bc, $7d01                                   ; $4f0a: $01 $01 $7d
	ld   d, d                                        ; $4f0d: $52
	rst  $38                                         ; $4f0e: $ff
	rst  $38                                         ; $4f0f: $ff
	ld   d, b                                        ; $4f10: $50
	ld   a, h                                        ; $4f11: $7c
	rst  $38                                         ; $4f12: $ff
	rst  $38                                         ; $4f13: $ff
	dec  c                                           ; $4f14: $0d
	ld   [bc], a                                     ; $4f15: $02
	and  l                                           ; $4f16: $a5
	inc  b                                           ; $4f17: $04
	xor  d                                           ; $4f18: $aa
	ld   a, h                                        ; $4f19: $7c
	inc  bc                                          ; $4f1a: $03
	ld   l, l                                        ; $4f1b: $6d
	dec  b                                           ; $4f1c: $05
	add  hl, de                                      ; $4f1d: $19
	and  b                                           ; $4f1e: $a0
	inc  bc                                          ; $4f1f: $03
	and  a                                           ; $4f20: $a7
	adc  h                                           ; $4f21: $8c
	ld   l, c                                        ; $4f22: $69
	ld   [hl], h                                     ; $4f23: $74
	dec  c                                           ; $4f24: $0d
	inc  b                                           ; $4f25: $04
	db   $e3                                         ; $4f26: $e3
	ld   h, l                                        ; $4f27: $65
	ld   d, d                                        ; $4f28: $52
	ld   a, h                                        ; $4f29: $7c
	ld   [hl], l                                     ; $4f2a: $75
	ld   h, a                                        ; $4f2b: $67
	ld   e, d                                        ; $4f2c: $5a
	rst  $38                                         ; $4f2d: $ff
	rst  $38                                         ; $4f2e: $ff
	dec  c                                           ; $4f2f: $0d
	nop                                              ; $4f30: $00
	ld   a, [bc]                                     ; $4f31: $0a
	inc  e                                           ; $4f32: $1c
	ld   [bc], a                                     ; $4f33: $02
	dec  b                                           ; $4f34: $05
	dec  b                                           ; $4f35: $05
	ld   bc, $9a6b                                   ; $4f36: $01 $6b $9a
	ld   a, l                                        ; $4f39: $7d
	dec  b                                           ; $4f3a: $05
	adc  a                                           ; $4f3b: $8f
	ld   d, d                                        ; $4f3c: $52
	adc  h                                           ; $4f3d: $8c
	ld   l, c                                        ; $4f3e: $69
	and  c                                           ; $4f3f: $a1
	ld   e, d                                        ; $4f40: $5a
	rst  $38                                         ; $4f41: $ff
	rst  $38                                         ; $4f42: $ff
	dec  c                                           ; $4f43: $0d
	ld   a, b                                        ; $4f44: $78
	ld   a, c                                        ; $4f45: $79
	ld   e, c                                        ; $4f46: $59
	inc  b                                           ; $4f47: $04
	di                                               ; $4f48: $f3
	ld   [bc], a                                     ; $4f49: $02
	jp   $9075                                       ; $4f4a: $c3 $75 $90


	ld   d, b                                        ; $4f4d: $50
	sbc  b                                           ; $4f4e: $98
	adc  h                                           ; $4f4f: $8c
	ld   h, a                                        ; $4f50: $67
	ld   a, h                                        ; $4f51: $7c
	ld   sp, hl                                      ; $4f52: $f9
	dec  c                                           ; $4f53: $0d
	nop                                              ; $4f54: $00
	ld   a, [bc]                                     ; $4f55: $0a
	rrca                                             ; $4f56: $0f
	nop                                              ; $4f57: $00
	ld   bc, $5201                                   ; $4f58: $01 $01 $52
	ld   d, [hl]                                     ; $4f5b: $56
	sbc  [hl]                                        ; $4f5c: $9e
	halt                                             ; $4f5d: $76
	ld   e, l                                        ; $4f5e: $5d
	ld   a, c                                        ; $4f5f: $79
	inc  b                                           ; $4f60: $04
	di                                               ; $4f61: $f3
	ld   [bc], a                                     ; $4f62: $02
	jp   Jump_049_5276                               ; $4f63: $c3 $76 $52


	ld   d, h                                        ; $4f66: $54
	dec  c                                           ; $4f67: $0d
	sbc  l                                           ; $4f68: $9d
	ld   e, a                                        ; $4f69: $5f
	ld   [hl], l                                     ; $4f6a: $75
	sub  b                                           ; $4f6b: $90
	ld   a, b                                        ; $4f6c: $78
	ld   d, d                                        ; $4f6d: $52
	and  c                                           ; $4f6e: $a1
	ld   [hl], l                                     ; $4f6f: $75
	ld   h, a                                        ; $4f70: $67
	ld   e, d                                        ; $4f71: $5a
	rst  $38                                         ; $4f72: $ff
	rst  $38                                         ; $4f73: $ff
	dec  c                                           ; $4f74: $0d
	nop                                              ; $4f75: $00
	ld   a, [bc]                                     ; $4f76: $0a
	rrca                                             ; $4f77: $0f
	ld   [bc], a                                     ; $4f78: $02
	dec  b                                           ; $4f79: $05
	dec  e                                           ; $4f7a: $1d
	ld   b, b                                        ; $4f7b: $40
	ld   [de], a                                     ; $4f7c: $12
	inc  bc                                          ; $4f7d: $03
	ld   [de], a                                     ; $4f7e: $12
	ld   bc, $2902                                   ; $4f7f: $01 $02 $29
	nop                                              ; $4f82: $00
	ld   bc, $ffff                                   ; $4f83: $01 $ff $ff
	rst  $38                                         ; $4f86: $ff
	rst  $38                                         ; $4f87: $ff
	adc  h                                           ; $4f88: $8c
	ld   d, b                                        ; $4f89: $50
	ld   d, d                                        ; $4f8a: $52
	ld   d, d                                        ; $4f8b: $52
	ld   [hl], l                                     ; $4f8c: $75
	ld   h, l                                        ; $4f8d: $65
	sub  l                                           ; $4f8e: $95
	ld   d, h                                        ; $4f8f: $54
	sbc  a                                           ; $4f90: $9f
	dec  c                                           ; $4f91: $0d
	ld   [hl], l                                     ; $4f92: $75
	ld   a, l                                        ; $4f93: $7d
	sbc  [hl]                                        ; $4f94: $9e
	ld   [bc], a                                     ; $4f95: $02
	and  l                                           ; $4f96: $a5
	inc  b                                           ; $4f97: $04
	xor  d                                           ; $4f98: $aa
	ld   a, h                                        ; $4f99: $7c
	inc  bc                                          ; $4f9a: $03
	ld   l, l                                        ; $4f9b: $6d
	dec  b                                           ; $4f9c: $05
	add  hl, de                                      ; $4f9d: $19
	ld   a, l                                        ; $4f9e: $7d
	ld   e, b                                        ; $4f9f: $58
	inc  bc                                          ; $4fa0: $03
	and  a                                           ; $4fa1: $a7
	adc  l                                           ; $4fa2: $8d
	dec  c                                           ; $4fa3: $0d
	halt                                             ; $4fa4: $76
	ld   d, d                                        ; $4fa5: $52
	ld   d, h                                        ; $4fa6: $54
	ld   h, c                                        ; $4fa7: $61
	halt                                             ; $4fa8: $76
	ld   a, c                                        ; $4fa9: $79
	ld   h, l                                        ; $4faa: $65
	ld   [hl], h                                     ; $4fab: $74
	ld   e, b                                        ; $4fac: $58
	ld   e, e                                        ; $4fad: $5b
	adc  h                                           ; $4fae: $8c
	ld   h, a                                        ; $4faf: $67
	sbc  l                                           ; $4fb0: $9d
	sbc  a                                           ; $4fb1: $9f
	dec  c                                           ; $4fb2: $0d
	nop                                              ; $4fb3: $00
	ld   a, [bc]                                     ; $4fb4: $0a
	ld   bc, $9a6b                                   ; $4fb5: $01 $6b $9a
	ld   [hl], l                                     ; $4fb8: $75
	ld   a, l                                        ; $4fb9: $7d
	rst  $38                                         ; $4fba: $ff
	rst  $38                                         ; $4fbb: $ff
	sbc  a                                           ; $4fbc: $9f
	dec  c                                           ; $4fbd: $0d
	nop                                              ; $4fbe: $00
	ld   a, [bc]                                     ; $4fbf: $0a
	dec  c                                           ; $4fc0: $0d
	nop                                              ; $4fc1: $00
	nop                                              ; $4fc2: $00
	rrca                                             ; $4fc3: $0f
	nop                                              ; $4fc4: $00
	ld   bc, $1e09                                   ; $4fc5: $01 $09 $1e
	ld   b, $4a                                      ; $4fc8: $06 $4a
	inc  bc                                          ; $4fca: $03
	nop                                              ; $4fcb: $00
	ld   [bc], a                                     ; $4fcc: $02
	ld   b, $01                                      ; $4fcd: $06 $01
	ld   bc, $0020                                   ; $4fcf: $01 $20 $00
	rrca                                             ; $4fd2: $0f
	nop                                              ; $4fd3: $00
	ld   bc, $0706                                   ; $4fd4: $01 $06 $07
	nop                                              ; $4fd7: $00
	ld   [bc], a                                     ; $4fd8: $02
	rlca                                             ; $4fd9: $07
	ld   a, [de]                                     ; $4fda: $1a
	ld   [$8004], sp                                 ; $4fdb: $08 $04 $80
	add  $00                                         ; $4fde: $c6 $00
	ld   c, $9d                                      ; $4fe0: $0e $9d
	rlca                                             ; $4fe2: $07
	add  sp, $01                                     ; $4fe3: $e8 $01
	inc  bc                                          ; $4fe5: $03
	jr   nz, @+$03                                   ; $4fe6: $20 $01

	jr   nz, jr_049_500d                             ; $4fe8: $20 $23

	nop                                              ; $4fea: $00
	rlca                                             ; $4feb: $07
	ld   d, d                                        ; $4fec: $52
	ld   bc, $4e03                                   ; $4fed: $01 $03 $4e
	ld   [bc], a                                     ; $4ff0: $02
	nop                                              ; $4ff1: $00
	inc  bc                                          ; $4ff2: $03
	ld   c, b                                        ; $4ff3: $48
	add  hl, hl                                      ; $4ff4: $29
	add  hl, hl                                      ; $4ff5: $29
	ld   bc, $2501                                   ; $4ff6: $01 $01 $25
	nop                                              ; $4ff9: $00
	rlca                                             ; $4ffa: $07
	ld   d, d                                        ; $4ffb: $52
	ld   bc, $8004                                   ; $4ffc: $01 $04 $80
	ld   [$ff01], sp                                 ; $4fff: $08 $01 $ff
	jr   nz, @+$06                                   ; $5002: $20 $04

	add  b                                           ; $5004: $80
	add  hl, bc                                      ; $5005: $09
	ld   bc, $2000                                   ; $5006: $01 $00 $20
	inc  e                                           ; $5009: $1c
	inc  bc                                          ; $500a: $03
	ld   e, b                                        ; $500b: $58
	ld   [bc], a                                     ; $500c: $02

jr_049_500d:
	nop                                              ; $500d: $00
	jr   nz, jr_049_502c                             ; $500e: $20 $1c

	nop                                              ; $5010: $00
	rlca                                             ; $5011: $07
	ld   l, a                                        ; $5012: $6f
	nop                                              ; $5013: $00
	inc  bc                                          ; $5014: $03
	ld   b, d                                        ; $5015: $42
	ld   bc, $2000                                   ; $5016: $01 $00 $20
	nop                                              ; $5019: $00
	rlca                                             ; $501a: $07
	add  h                                           ; $501b: $84
	inc  b                                           ; $501c: $04
	inc  bc                                          ; $501d: $03
	ld   b, d                                        ; $501e: $42
	ld   bc, $2501                                   ; $501f: $01 $01 $25
	inc  bc                                          ; $5022: $03
	ld   b, d                                        ; $5023: $42
	ld   bc, $2302                                   ; $5024: $01 $02 $23
	inc  e                                           ; $5027: $1c
	nop                                              ; $5028: $00
	rlca                                             ; $5029: $07
	ld   [hl-], a                                    ; $502a: $32
	dec  b                                           ; $502b: $05

jr_049_502c:
	inc  bc                                          ; $502c: $03
	ld   b, d                                        ; $502d: $42
	ld   bc, $2503                                   ; $502e: $01 $03 $25
	inc  bc                                          ; $5031: $03
	ld   b, d                                        ; $5032: $42
	ld   bc, $2305                                   ; $5033: $01 $05 $23
	inc  e                                           ; $5036: $1c
	nop                                              ; $5037: $00
	rlca                                             ; $5038: $07
	add  [hl]                                        ; $5039: $86
	ld   b, $03                                      ; $503a: $06 $03
	ld   b, d                                        ; $503c: $42
	ld   bc, $2506                                   ; $503d: $01 $06 $25
	nop                                              ; $5040: $00
	inc  e                                           ; $5041: $1c
	ld   bc, $0000                                   ; $5042: $01 $00 $00
	ld   [bc], a                                     ; $5045: $02
	ld   bc, $9750                                   ; $5046: $01 $50 $97
	sbc  [hl]                                        ; $5049: $9e
	ld   [$6300], sp                                 ; $504a: $08 $00 $63
	and  c                                           ; $504d: $a1
	sbc  a                                           ; $504e: $9f
	dec  c                                           ; $504f: $0d
	ld   h, c                                        ; $5050: $61
	and  c                                           ; $5051: $a1
	ld   a, c                                        ; $5052: $79
	ld   l, a                                        ; $5053: $6f
	ld   a, l                                        ; $5054: $7d
	sbc  a                                           ; $5055: $9f
	dec  c                                           ; $5056: $0d
	nop                                              ; $5057: $00
	ld   a, [bc]                                     ; $5058: $0a
	rrca                                             ; $5059: $0f

Jump_049_505a:
	nop                                              ; $505a: $00
	ld   bc, $6101                                   ; $505b: $01 $01 $61
	and  c                                           ; $505e: $a1
	ld   a, c                                        ; $505f: $79
	ld   l, a                                        ; $5060: $6f
	ld   a, l                                        ; $5061: $7d
	sbc  [hl]                                        ; $5062: $9e
	ld   h, e                                        ; $5063: $63
	ld   e, l                                        ; $5064: $5d
	sub  a                                           ; $5065: $97
	ld   h, e                                        ; $5066: $63
	and  c                                           ; $5067: $a1
	sbc  a                                           ; $5068: $9f
	dec  c                                           ; $5069: $0d
	ld   e, a                                        ; $506a: $5f
	ld   d, d                                        ; $506b: $52
	ld   h, c                                        ; $506c: $61
	and  b                                           ; $506d: $a0
	ld   [hl], d                                     ; $506e: $72
	ld   e, a                                        ; $506f: $5f
	ld   [hl], h                                     ; $5070: $74
	ld   d, d                                        ; $5071: $52
	ld   l, l                                        ; $5072: $6d
	ld   l, [hl]                                     ; $5073: $6e
	ld   e, a                                        ; $5074: $5f
	dec  c                                           ; $5075: $0d
	adc  h                                           ; $5076: $8c
	ld   h, a                                        ; $5077: $67
	ld   e, c                                        ; $5078: $59
	ld   sp, hl                                      ; $5079: $f9
	dec  c                                           ; $507a: $0d
	nop                                              ; $507b: $00
	ld   a, [bc]                                     ; $507c: $0a
	rrca                                             ; $507d: $0f
	ld   bc, $0100                                   ; $507e: $01 $00 $01
	ld   d, [hl]                                     ; $5081: $56
	ld   d, [hl]                                     ; $5082: $56
	sbc  [hl]                                        ; $5083: $9e
	ld   d, d                                        ; $5084: $52
	ld   d, d                                        ; $5085: $52
	ld   [hl], l                                     ; $5086: $75
	ld   h, a                                        ; $5087: $67
	sub  [hl]                                        ; $5088: $96
	sbc  a                                           ; $5089: $9f
	dec  c                                           ; $508a: $0d
	ld   l, e                                        ; $508b: $6b
	sbc  d                                           ; $508c: $9a
	ld   [hl], l                                     ; $508d: $75
	ld   a, l                                        ; $508e: $7d
	sbc  [hl]                                        ; $508f: $9e
	dec  b                                           ; $5090: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5091: $cf
	adc  a                                           ; $5092: $8f
	adc  h                                           ; $5093: $8c
	ld   h, l                                        ; $5094: $65
	sub  l                                           ; $5095: $95
	ld   d, h                                        ; $5096: $54
	ld   e, c                                        ; $5097: $59
	sbc  a                                           ; $5098: $9f
	dec  c                                           ; $5099: $0d
	nop                                              ; $509a: $00
	ld   a, [bc]                                     ; $509b: $0a
	dec  h                                           ; $509c: $25
	ld   bc, $fb07                                   ; $509d: $01 $07 $fb
	inc  bc                                          ; $50a0: $03
	inc  bc                                          ; $50a1: $03
	jr   nz, jr_049_50a5                             ; $50a2: $20 $01

	nop                                              ; $50a4: $00

jr_049_50a5:
	jr   nz, jr_049_50a7                             ; $50a5: $20 $00

jr_049_50a7:
	inc  e                                           ; $50a7: $1c
	ld   bc, $0101                                   ; $50a8: $01 $01 $01
	ld   bc, $0458                                   ; $50ab: $01 $58 $04
	ld   a, e                                        ; $50ae: $7b
	sbc  d                                           ; $50af: $9a
	ld   h, e                                        ; $50b0: $63
	adc  h                                           ; $50b1: $8c
	ld   [hl], l                                     ; $50b2: $75
	ld   h, l                                        ; $50b3: $65
	ld   l, l                                        ; $50b4: $6d
	sbc  a                                           ; $50b5: $9f
	dec  c                                           ; $50b6: $0d
	nop                                              ; $50b7: $00
	ld   a, [bc]                                     ; $50b8: $0a
	inc  e                                           ; $50b9: $1c
	ld   bc, $0000                                   ; $50ba: $01 $00 $00
	ld   bc, $6d03                                   ; $50bd: $01 $03 $6d
	dec  b                                           ; $50c0: $05
	add  hl, de                                      ; $50c1: $19
	ld   a, l                                        ; $50c2: $7d
	sbc  [hl]                                        ; $50c3: $9e
	dec  b                                           ; $50c4: $05
	ret  nz                                          ; $50c5: $c0

	adc  a                                           ; $50c6: $8f
	ld   a, [hl]                                     ; $50c7: $7e
	dec  b                                           ; $50c8: $05
	ret  nz                                          ; $50c9: $c0

	adc  [hl]                                        ; $50ca: $8e
	adc  c                                           ; $50cb: $89
	ld   [hl], a                                     ; $50cc: $77
	dec  c                                           ; $50cd: $0d
	inc  bc                                          ; $50ce: $03
	ld   h, l                                        ; $50cf: $65
	inc  bc                                          ; $50d0: $03
	rst  $30                                         ; $50d1: $f7
	ld   h, l                                        ; $50d2: $65
	ld   [hl], h                                     ; $50d3: $74
	ld   d, d                                        ; $50d4: $52
	ld   e, e                                        ; $50d5: $5b
	adc  h                                           ; $50d6: $8c
	ld   h, a                                        ; $50d7: $67
	sbc  a                                           ; $50d8: $9f
	ld   h, e                                        ; $50d9: $63
	adc  d                                           ; $50da: $8a
	sub  a                                           ; $50db: $97
	ld   l, b                                        ; $50dc: $68
	sbc  [hl]                                        ; $50dd: $9e
	dec  c                                           ; $50de: $0d
	ld   a, b                                        ; $50df: $78
	adc  h                                           ; $50e0: $8c
	ld   e, a                                        ; $50e1: $5f
	ld   l, b                                        ; $50e2: $68
	sbc  [hl]                                        ; $50e3: $9e
	dec  b                                           ; $50e4: $05
	ldh  [rTIMA], a                                  ; $50e5: $e0 $05
	db   $dd                                         ; $50e7: $dd
	ld   h, l                                        ; $50e8: $65
	ld   [hl], h                                     ; $50e9: $74
	ld   [bc], a                                     ; $50ea: $02
	inc  [hl]                                        ; $50eb: $34
	ld   h, e                                        ; $50ec: $63
	ld   d, d                                        ; $50ed: $52
	sbc  a                                           ; $50ee: $9f
	dec  c                                           ; $50ef: $0d
	nop                                              ; $50f0: $00
	ld   a, [bc]                                     ; $50f1: $0a
	ld   bc, $9a6b                                   ; $50f2: $01 $6b $9a
	ld   [hl], l                                     ; $50f5: $75
	ld   a, l                                        ; $50f6: $7d
	sbc  [hl]                                        ; $50f7: $9e
	inc  b                                           ; $50f8: $04
	adc  a                                           ; $50f9: $8f
	inc  b                                           ; $50fa: $04
	xor  d                                           ; $50fb: $aa
	ld   a, h                                        ; $50fc: $7c
	ld   [bc], a                                     ; $50fd: $02
	or   d                                           ; $50fe: $b2
	ld   [bc], a                                     ; $50ff: $02
	xor  d                                           ; $5100: $aa
	ld   a, h                                        ; $5101: $7c
	inc  bc                                          ; $5102: $03
	ld   l, l                                        ; $5103: $6d
	dec  b                                           ; $5104: $05
	add  hl, de                                      ; $5105: $19
	and  b                                           ; $5106: $a0
	dec  c                                           ; $5107: $0d
	nop                                              ; $5108: $00
	dec  b                                           ; $5109: $05
	ld   b, b                                        ; $510a: $40
	ld   b, d                                        ; $510b: $42
	inc  bc                                          ; $510c: $03
	ld   b, d                                        ; $510d: $42
	ld   bc, $2801                                   ; $510e: $01 $01 $28
	nop                                              ; $5111: $00
	ld   bc, $7e03                                   ; $5112: $01 $03 $7e
	sbc  l                                           ; $5115: $9d
	sbc  b                                           ; $5116: $98
	adc  h                                           ; $5117: $8c
	ld   h, a                                        ; $5118: $67
	sbc  a                                           ; $5119: $9f
	dec  c                                           ; $511a: $0d
	nop                                              ; $511b: $00
	ld   a, [bc]                                     ; $511c: $0a
	dec  c                                           ; $511d: $0d
	nop                                              ; $511e: $00
	nop                                              ; $511f: $00
	rrca                                             ; $5120: $0f
	nop                                              ; $5121: $00
	ld   bc, $0d00                                   ; $5122: $01 $00 $0d
	ld   bc, $0f07                                   ; $5125: $01 $07 $0f
	nop                                              ; $5128: $00
	ld   bc, $0102                                   ; $5129: $01 $02 $01
	ld   h, c                                        ; $512c: $61
	and  c                                           ; $512d: $a1
	ld   a, c                                        ; $512e: $79
	ld   l, a                                        ; $512f: $6f
	ld   a, l                                        ; $5130: $7d
	sbc  [hl]                                        ; $5131: $9e
	ld   h, e                                        ; $5132: $63
	ld   e, l                                        ; $5133: $5d
	sub  a                                           ; $5134: $97
	ld   h, e                                        ; $5135: $63
	and  c                                           ; $5136: $a1
	sbc  a                                           ; $5137: $9f
	dec  c                                           ; $5138: $0d
	ld   d, b                                        ; $5139: $50
	ld   a, h                                        ; $513a: $7c
	sbc  [hl]                                        ; $513b: $9e
	inc  bc                                          ; $513c: $03
	ld   l, l                                        ; $513d: $6d
	dec  b                                           ; $513e: $05
	add  hl, de                                      ; $513f: $19
	and  b                                           ; $5140: $a0
	ld   e, b                                        ; $5141: $58
	ld   [bc], a                                     ; $5142: $02
	add  b                                           ; $5143: $80
	ld   d, d                                        ; $5144: $52
	ld   h, l                                        ; $5145: $65
	ld   l, l                                        ; $5146: $6d
	ld   d, d                                        ; $5147: $52
	ld   a, h                                        ; $5148: $7c
	dec  c                                           ; $5149: $0d
	nop                                              ; $514a: $00
	dec  b                                           ; $514b: $05
	ld   b, b                                        ; $514c: $40
	ld   c, [hl]                                     ; $514d: $4e
	ld   bc, $0000                                   ; $514e: $01 $00 $00
	ld   bc, $6775                                   ; $5151: $01 $75 $67
	ld   e, d                                        ; $5154: $5a
	rst  $38                                         ; $5155: $ff
	rst  $38                                         ; $5156: $ff
	dec  c                                           ; $5157: $0d
	nop                                              ; $5158: $00
	ld   a, [bc]                                     ; $5159: $0a
	rrca                                             ; $515a: $0f
	ld   bc, $0107                                   ; $515b: $01 $07 $01
	rst  $38                                         ; $515e: $ff
	rst  $38                                         ; $515f: $ff
	ld   a, l                                        ; $5160: $7d
	ld   d, d                                        ; $5161: $52
	rst  $38                                         ; $5162: $ff
	rst  $38                                         ; $5163: $ff
	dec  c                                           ; $5164: $0d
	ld   l, e                                        ; $5165: $6b
	sbc  d                                           ; $5166: $9a
	ld   [hl], l                                     ; $5167: $75
	ld   a, l                                        ; $5168: $7d
	sbc  [hl]                                        ; $5169: $9e
	ld   a, l                                        ; $516a: $7d
	ld   h, [hl]                                     ; $516b: $66
	adc  a                                           ; $516c: $8f
	adc  h                                           ; $516d: $8c
	ld   h, a                                        ; $516e: $67
	rst  $38                                         ; $516f: $ff
	rst  $38                                         ; $5170: $ff
	dec  c                                           ; $5171: $0d
	nop                                              ; $5172: $00
	ld   a, [bc]                                     ; $5173: $0a
	dec  h                                           ; $5174: $25
	ld   bc, $fb07                                   ; $5175: $01 $07 $fb
	inc  bc                                          ; $5178: $03
	inc  bc                                          ; $5179: $03
	jr   nz, jr_049_517d                             ; $517a: $20 $01

	nop                                              ; $517c: $00

jr_049_517d:
	jr   nz, jr_049_517f                             ; $517d: $20 $00

jr_049_517f:
	inc  e                                           ; $517f: $1c
	ld   bc, $0707                                   ; $5180: $01 $07 $07
	ld   bc, $0458                                   ; $5183: $01 $58 $04
	ld   a, e                                        ; $5186: $7b
	sbc  d                                           ; $5187: $9a
	ld   h, e                                        ; $5188: $63
	adc  h                                           ; $5189: $8c
	ld   [hl], l                                     ; $518a: $75
	ld   h, l                                        ; $518b: $65
	ld   l, l                                        ; $518c: $6d
	rst  $38                                         ; $518d: $ff
	rst  $38                                         ; $518e: $ff
	dec  c                                           ; $518f: $0d
	nop                                              ; $5190: $00
	ld   a, [bc]                                     ; $5191: $0a
	dec  c                                           ; $5192: $0d
	nop                                              ; $5193: $00
	nop                                              ; $5194: $00
	rrca                                             ; $5195: $0f
	nop                                              ; $5196: $00
	ld   bc, $4005                                   ; $5197: $01 $05 $40
	ld   b, d                                        ; $519a: $42
	inc  bc                                          ; $519b: $03
	ld   b, d                                        ; $519c: $42
	ld   bc, $2801                                   ; $519d: $01 $01 $28
	nop                                              ; $51a0: $00
	ld   bc, $ffff                                   ; $51a1: $01 $ff $ff
	rst  $38                                         ; $51a4: $ff
	rst  $38                                         ; $51a5: $ff
	ld   h, e                                        ; $51a6: $63
	ld   e, l                                        ; $51a7: $5d
	sub  a                                           ; $51a8: $97
	ld   h, e                                        ; $51a9: $63
	and  c                                           ; $51aa: $a1
	sbc  [hl]                                        ; $51ab: $9e
	dec  c                                           ; $51ac: $0d
	ld   e, e                                        ; $51ad: $5b
	ld   h, b                                        ; $51ae: $60
	and  c                                           ; $51af: $a1
	ld   [bc], a                                     ; $51b0: $02
	jr   z, jr_049_5205                              ; $51b1: $28 $52

	ld   l, h                                        ; $51b3: $6c
	rst  $38                                         ; $51b4: $ff
	rst  $38                                         ; $51b5: $ff
	dec  c                                           ; $51b6: $0d
	nop                                              ; $51b7: $00
	ld   a, [bc]                                     ; $51b8: $0a
	nop                                              ; $51b9: $00
	inc  e                                           ; $51ba: $1c
	ld   bc, $0000                                   ; $51bb: $01 $00 $00
	ld   [bc], a                                     ; $51be: $02
	dec  b                                           ; $51bf: $05
	ld   b, b                                        ; $51c0: $40
	ld   c, [hl]                                     ; $51c1: $4e
	ld   bc, $0000                                   ; $51c2: $01 $00 $00
	ld   bc, $a161                                   ; $51c5: $01 $61 $a1
	ld   a, c                                        ; $51c8: $79
	ld   l, a                                        ; $51c9: $6f
	ld   a, l                                        ; $51ca: $7d
	rst  $38                                         ; $51cb: $ff
	rst  $38                                         ; $51cc: $ff
	ld   d, b                                        ; $51cd: $50
	sub  a                                           ; $51ce: $97
	ld   sp, hl                                      ; $51cf: $f9
	dec  c                                           ; $51d0: $0d
	nop                                              ; $51d1: $00
	inc  e                                           ; $51d2: $1c
	ld   bc, $0303                                   ; $51d3: $01 $03 $03
	ld   bc, $5477                                   ; $51d6: $01 $77 $54
	ld   h, l                                        ; $51d9: $65
	ld   l, l                                        ; $51da: $6d
	and  c                                           ; $51db: $a1
	ld   [hl], l                                     ; $51dc: $75
	ld   h, a                                        ; $51dd: $67
	ld   e, c                                        ; $51de: $59
	sbc  [hl]                                        ; $51df: $9e
	dec  c                                           ; $51e0: $0d
	ld   [bc], a                                     ; $51e1: $02
	ld   [hl], d                                     ; $51e2: $72
	inc  bc                                          ; $51e3: $03
	dec  bc                                          ; $51e4: $0b
	ld   e, d                                        ; $51e5: $5a
	sbc  l                                           ; $51e6: $9d
	sbc  c                                           ; $51e7: $99
	ld   d, d                                        ; $51e8: $52
	ld   [hl], l                                     ; $51e9: $75
	ld   h, a                                        ; $51ea: $67
	sub  [hl]                                        ; $51eb: $96
	sbc  a                                           ; $51ec: $9f
	dec  c                                           ; $51ed: $0d
	nop                                              ; $51ee: $00
	ld   a, [bc]                                     ; $51ef: $0a
	inc  e                                           ; $51f0: $1c
	ld   bc, $0404                                   ; $51f1: $01 $04 $04
	ld   bc, $a502                                   ; $51f4: $01 $02 $a5
	ld   [bc], a                                     ; $51f7: $02
	sub  e                                           ; $51f8: $93
	ld   a, h                                        ; $51f9: $7c
	inc  bc                                          ; $51fa: $03
	ld   l, l                                        ; $51fb: $6d
	dec  b                                           ; $51fc: $05
	add  hl, de                                      ; $51fd: $19
	ld   a, l                                        ; $51fe: $7d
	inc  bc                                          ; $51ff: $03
	and  a                                           ; $5200: $a7
	and  c                                           ; $5201: $a1
	ld   l, [hl]                                     ; $5202: $6e
	inc  b                                           ; $5203: $04
	ld   a, b                                        ; $5204: $78

jr_049_5205:
	ld   e, d                                        ; $5205: $5a
	dec  c                                           ; $5206: $0d
	ld   d, d                                        ; $5207: $52
	ld   d, d                                        ; $5208: $52
	and  c                                           ; $5209: $a1
	ld   h, [hl]                                     ; $520a: $66
	sub  c                                           ; $520b: $91
	ld   a, b                                        ; $520c: $78
	ld   d, d                                        ; $520d: $52
	ld   [hl], l                                     ; $520e: $75
	ld   h, a                                        ; $520f: $67
	ld   e, c                                        ; $5210: $59
	ld   sp, hl                                      ; $5211: $f9
	dec  c                                           ; $5212: $0d
	nop                                              ; $5213: $00
	ld   a, [bc]                                     ; $5214: $0a
	jr   jr_049_5219                                 ; $5215: $18 $02

	nop                                              ; $5217: $00
	inc  bc                                          ; $5218: $03

jr_049_5219:
	and  a                                           ; $5219: $a7
	adc  [hl]                                        ; $521a: $8e
	nop                                              ; $521b: $00
	nop                                              ; $521c: $00
	ld   e, d                                        ; $521d: $5a
	and  c                                           ; $521e: $a1
	ld   a, [hl]                                     ; $521f: $7e
	sbc  c                                           ; $5220: $99
	nop                                              ; $5221: $00
	ld   bc, $6307                                   ; $5222: $01 $07 $63
	ld   [bc], a                                     ; $5225: $02
	ld   [bc], a                                     ; $5226: $02
	ld   [bc], a                                     ; $5227: $02
	ld   bc, $2000                                   ; $5228: $01 $00 $20
	nop                                              ; $522b: $00
	rlca                                             ; $522c: $07
	ld   a, [hl-]                                    ; $522d: $3a
	inc  bc                                          ; $522e: $03
	ld   [bc], a                                     ; $522f: $02
	ld   [bc], a                                     ; $5230: $02
	ld   bc, $2001                                   ; $5231: $01 $01 $20
	nop                                              ; $5234: $00
	rrca                                             ; $5235: $0f
	nop                                              ; $5236: $00
	ld   bc, $6701                                   ; $5237: $01 $01 $67
	adc  l                                           ; $523a: $8d
	adc  h                                           ; $523b: $8c
	ld   l, c                                        ; $523c: $69
	and  c                                           ; $523d: $a1
	rst  $38                                         ; $523e: $ff
	rst  $38                                         ; $523f: $ff
	dec  c                                           ; $5240: $0d
	ld   l, e                                        ; $5241: $6b
	sbc  d                                           ; $5242: $9a
	ld   [hl], l                                     ; $5243: $75
	ld   a, l                                        ; $5244: $7d
	sbc  [hl]                                        ; $5245: $9e
	ld   [bc], a                                     ; $5246: $02
	and  l                                           ; $5247: $a5
	inc  b                                           ; $5248: $04
	xor  d                                           ; $5249: $aa
	ld   a, h                                        ; $524a: $7c
	inc  bc                                          ; $524b: $03
	ld   l, l                                        ; $524c: $6d
	dec  b                                           ; $524d: $05
	add  hl, de                                      ; $524e: $19
	ld   a, l                                        ; $524f: $7d
	dec  c                                           ; $5250: $0d
	inc  bc                                          ; $5251: $03
	and  a                                           ; $5252: $a7
	adc  h                                           ; $5253: $8c
	ld   l, c                                        ; $5254: $69
	ld   [hl], h                                     ; $5255: $74
	ld   d, d                                        ; $5256: $52
	ld   l, l                                        ; $5257: $6d
	ld   l, [hl]                                     ; $5258: $6e
	ld   e, e                                        ; $5259: $5b
	adc  h                                           ; $525a: $8c
	ld   h, a                                        ; $525b: $67
	sbc  a                                           ; $525c: $9f
	dec  c                                           ; $525d: $0d
	nop                                              ; $525e: $00
	ld   a, [bc]                                     ; $525f: $0a
	inc  e                                           ; $5260: $1c
	ld   bc, $0000                                   ; $5261: $01 $00 $00
	ld   bc, $599d                                   ; $5264: $01 $9d $59
	sbc  b                                           ; $5267: $98
	adc  h                                           ; $5268: $8c
	ld   h, l                                        ; $5269: $65
	ld   l, l                                        ; $526a: $6d
	sbc  a                                           ; $526b: $9f
	dec  c                                           ; $526c: $0d
	ld   l, e                                        ; $526d: $6b
	sbc  d                                           ; $526e: $9a
	ld   [hl], l                                     ; $526f: $75
	ld   a, l                                        ; $5270: $7d
	sbc  [hl]                                        ; $5271: $9e
	ld   [bc], a                                     ; $5272: $02
	and  l                                           ; $5273: $a5
	inc  b                                           ; $5274: $04
	xor  d                                           ; $5275: $aa

Jump_049_5276:
	ld   a, l                                        ; $5276: $7d
	ld   e, b                                        ; $5277: $58
	inc  bc                                          ; $5278: $03
	and  a                                           ; $5279: $a7
	adc  l                                           ; $527a: $8d
	halt                                             ; $527b: $76
	ld   d, d                                        ; $527c: $52
	ld   d, h                                        ; $527d: $54
	dec  c                                           ; $527e: $0d
	ld   h, c                                        ; $527f: $61
	halt                                             ; $5280: $76
	ld   [hl], l                                     ; $5281: $75
	sbc  a                                           ; $5282: $9f
	dec  c                                           ; $5283: $0d
	nop                                              ; $5284: $00
	ld   a, [bc]                                     ; $5285: $0a
	ld   bc, $a15a                                   ; $5286: $01 $5a $a1
	ld   a, [hl]                                     ; $5289: $7e
	sbc  c                                           ; $528a: $99
	ld   a, h                                        ; $528b: $7c
	sub  b                                           ; $528c: $90
	ld   d, d                                        ; $528d: $52
	ld   d, d                                        ; $528e: $52
	ld   [hl], l                                     ; $528f: $75
	ld   h, a                                        ; $5290: $67
	ld   e, d                                        ; $5291: $5a
	sbc  [hl]                                        ; $5292: $9e
	dec  c                                           ; $5293: $0d
	inc  bc                                          ; $5294: $03
	sub  h                                           ; $5295: $94
	dec  b                                           ; $5296: $05
	inc  sp                                          ; $5297: $33
	ld   [bc], a                                     ; $5298: $02
	ld   l, b                                        ; $5299: $68
	dec  b                                           ; $529a: $05
	ld   de, $6f7d                                   ; $529b: $11 $7d $6f
	sub  c                                           ; $529e: $91
	and  c                                           ; $529f: $a1
	halt                                             ; $52a0: $76
	dec  c                                           ; $52a1: $0d
	ld   h, l                                        ; $52a2: $65
	adc  h                                           ; $52a3: $8c
	ld   h, l                                        ; $52a4: $65
	sub  l                                           ; $52a5: $95
	ld   d, h                                        ; $52a6: $54
	ld   a, e                                        ; $52a7: $7b
	sbc  a                                           ; $52a8: $9f
	dec  c                                           ; $52a9: $0d
	nop                                              ; $52aa: $00
	ld   a, [bc]                                     ; $52ab: $0a
	rrca                                             ; $52ac: $0f
	nop                                              ; $52ad: $00
	ld   bc, $7d01                                   ; $52ae: $01 $01 $7d
	ld   d, d                                        ; $52b1: $52
	sbc  [hl]                                        ; $52b2: $9e
	sbc  l                                           ; $52b3: $9d
	ld   e, c                                        ; $52b4: $59
	sbc  b                                           ; $52b5: $98
	adc  h                                           ; $52b6: $8c
	ld   h, l                                        ; $52b7: $65
	ld   l, l                                        ; $52b8: $6d
	sbc  a                                           ; $52b9: $9f
	dec  c                                           ; $52ba: $0d
	ld   l, e                                        ; $52bb: $6b
	sbc  d                                           ; $52bc: $9a
	ld   [hl], l                                     ; $52bd: $75
	ld   a, l                                        ; $52be: $7d
	inc  bc                                          ; $52bf: $03
	add  e                                           ; $52c0: $83
	dec  b                                           ; $52c1: $05
	dec  c                                           ; $52c2: $0d
	ld   h, l                                        ; $52c3: $65
	adc  h                                           ; $52c4: $8c
	ld   h, a                                        ; $52c5: $67
	sbc  a                                           ; $52c6: $9f
	dec  c                                           ; $52c7: $0d
	nop                                              ; $52c8: $00
	ld   a, [bc]                                     ; $52c9: $0a
	dec  c                                           ; $52ca: $0d
	nop                                              ; $52cb: $00
	nop                                              ; $52cc: $00
	inc  hl                                          ; $52cd: $23
	ld   bc, $6b01                                   ; $52ce: $01 $01 $6b
	sbc  d                                           ; $52d1: $9a
	ld   h, [hl]                                     ; $52d2: $66
	sub  c                                           ; $52d3: $91
	sbc  [hl]                                        ; $52d4: $9e
	inc  bc                                          ; $52d5: $03
	ld   l, h                                        ; $52d6: $6c
	ld   h, l                                        ; $52d7: $65
	inc  bc                                          ; $52d8: $03
	and  a                                           ; $52d9: $a7
	adc  [hl]                                        ; $52da: $8e
	halt                                             ; $52db: $76
	ld   h, a                                        ; $52dc: $67
	sbc  c                                           ; $52dd: $99
	ld   e, c                                        ; $52de: $59
	sbc  a                                           ; $52df: $9f
	dec  c                                           ; $52e0: $0d
	nop                                              ; $52e1: $00
	ld   a, [bc]                                     ; $52e2: $0a
	inc  c                                           ; $52e3: $0c
	ld   [bc], a                                     ; $52e4: $02
	dec  h                                           ; $52e5: $25
	nop                                              ; $52e6: $00
	ld   c, $02                                      ; $52e7: $0e $02
	rrca                                             ; $52e9: $0f
	nop                                              ; $52ea: $00
	ld   bc, $5401                                   ; $52eb: $01 $01 $54
	db   $fc                                         ; $52ee: $fc
	and  c                                           ; $52ef: $a1
	sub  [hl]                                        ; $52f0: $96
	ld   e, l                                        ; $52f1: $5d
	inc  b                                           ; $52f2: $04
	ld   b, d                                        ; $52f3: $42
	ld   l, l                                        ; $52f4: $6d
	rst  $38                                         ; $52f5: $ff
	rst  $38                                         ; $52f6: $ff
	dec  c                                           ; $52f7: $0d
	ld   e, c                                        ; $52f8: $59
	ld   a, b                                        ; $52f9: $78
	sbc  b                                           ; $52fa: $98
	inc  b                                           ; $52fb: $04
	dec  c                                           ; $52fc: $0d
	ld   e, d                                        ; $52fd: $5a
	dec  b                                           ; $52fe: $05
	inc  de                                          ; $52ff: $13
	ld   a, c                                        ; $5300: $79
	ld   a, b                                        ; $5301: $78
	ld   [hl], c                                     ; $5302: $71
	ld   l, l                                        ; $5303: $6d
	ld   l, h                                        ; $5304: $6c
	sbc  a                                           ; $5305: $9f
	dec  c                                           ; $5306: $0d
	nop                                              ; $5307: $00
	ld   a, [bc]                                     ; $5308: $0a
	add  hl, hl                                      ; $5309: $29
	ld   b, $00                                      ; $530a: $06 $00
	rrca                                             ; $530c: $0f
	nop                                              ; $530d: $00
	ld   bc, $5201                                   ; $530e: $01 $01 $52
	ld   d, [hl]                                     ; $5311: $56
	sbc  [hl]                                        ; $5312: $9e
	inc  b                                           ; $5313: $04
	ld   c, $03                                      ; $5314: $0e $03
	sbc  l                                           ; $5316: $9d
	inc  b                                           ; $5317: $04
	and  [hl]                                        ; $5318: $a6
	ld   [hl], l                                     ; $5319: $75
	ld   h, a                                        ; $531a: $67
	sbc  a                                           ; $531b: $9f
	dec  c                                           ; $531c: $0d
	ld   e, d                                        ; $531d: $5a
	and  c                                           ; $531e: $a1
	ld   a, [hl]                                     ; $531f: $7e
	sbc  b                                           ; $5320: $98
	adc  h                                           ; $5321: $8c
	ld   h, a                                        ; $5322: $67
	ld   a, [$000d]                                  ; $5323: $fa $0d $00
	ld   a, [bc]                                     ; $5326: $0a
	rrca                                             ; $5327: $0f
	ld   bc, $0104                              ; $5328: $01 $04 $01
	ld   l, e                                        ; $532b: $6b
	ld   d, h                                        ; $532c: $54
	ld   [hl], l                                     ; $532d: $75
	ld   h, a                                        ; $532e: $67
	ld   e, c                                        ; $532f: $59
	rst  $38                                         ; $5330: $ff
	rst  $38                                         ; $5331: $ff
	dec  c                                           ; $5332: $0d
	ld   l, e                                        ; $5333: $6b
	sbc  d                                           ; $5334: $9a
	ld   h, [hl]                                     ; $5335: $66
	sub  c                                           ; $5336: $91
	sbc  [hl]                                        ; $5337: $9e
	inc  bc                                          ; $5338: $03
	ld   l, l                                        ; $5339: $6d
	dec  b                                           ; $533a: $05
	add  hl, de                                      ; $533b: $19
	and  b                                           ; $533c: $a0
	dec  b                                           ; $533d: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $533e: $cf
	adc  a                                           ; $533f: $8f
	adc  h                                           ; $5340: $8c
	ld   h, a                                        ; $5341: $67
	sbc  a                                           ; $5342: $9f
	dec  c                                           ; $5343: $0d
	nop                                              ; $5344: $00
	ld   a, [bc]                                     ; $5345: $0a
	dec  h                                           ; $5346: $25
	ld   bc, $4005                                   ; $5347: $01 $05 $40
	ld   b, d                                        ; $534a: $42
	inc  bc                                          ; $534b: $03
	ld   b, d                                        ; $534c: $42
	ld   bc, $2801                                   ; $534d: $01 $01 $28
	nop                                              ; $5350: $00
	inc  e                                           ; $5351: $1c
	ld   bc, $0404                                   ; $5352: $01 $04 $04
	ld   bc, $0458                                   ; $5355: $01 $58 $04
	ld   a, e                                        ; $5358: $7b
	sbc  d                                           ; $5359: $9a
	ld   h, e                                        ; $535a: $63
	adc  h                                           ; $535b: $8c
	ld   [hl], l                                     ; $535c: $75
	ld   h, l                                        ; $535d: $65
	ld   l, l                                        ; $535e: $6d
	rst  $38                                         ; $535f: $ff
	rst  $38                                         ; $5360: $ff
	dec  c                                           ; $5361: $0d
	ld   d, b                                        ; $5362: $50
	ld   a, h                                        ; $5363: $7c
	rst  $38                                         ; $5364: $ff
	rst  $38                                         ; $5365: $ff
	call c, $c9f5                                    ; $5366: $dc $f5 $c9
	ld   a, c                                        ; $5369: $79
	inc  bc                                          ; $536a: $03
	and  a                                           ; $536b: $a7
	and  c                                           ; $536c: $a1
	ld   l, [hl]                                     ; $536d: $6e
	adc  c                                           ; $536e: $89
	ld   d, h                                        ; $536f: $54
	ld   e, d                                        ; $5370: $5a
	dec  c                                           ; $5371: $0d
	ld   d, d                                        ; $5372: $52
	ld   d, d                                        ; $5373: $52
	halt                                             ; $5374: $76
	dec  b                                           ; $5375: $05
	pop  de                                          ; $5376: $d1
	ld   d, d                                        ; $5377: $52
	adc  h                                           ; $5378: $8c
	ld   h, a                                        ; $5379: $67
	sub  [hl]                                        ; $537a: $96
	rst  $38                                         ; $537b: $ff
	rst  $38                                         ; $537c: $ff
	dec  c                                           ; $537d: $0d
	nop                                              ; $537e: $00
	ld   a, [bc]                                     ; $537f: $0a
	rlca                                             ; $5380: $07
	ret                                              ; $5381: $c9


	inc  bc                                          ; $5382: $03
	inc  bc                                          ; $5383: $03
	jr   nz, jr_049_5387                             ; $5384: $20 $01

	nop                                              ; $5386: $00

jr_049_5387:
	jr   nz, jr_049_5389                             ; $5387: $20 $00

jr_049_5389:
	ld   bc, $9a6b                                   ; $5389: $01 $6b $9a
	ld   [hl], l                                     ; $538c: $75
	ld   a, l                                        ; $538d: $7d
	sbc  a                                           ; $538e: $9f
	dec  c                                           ; $538f: $0d
	nop                                              ; $5390: $00
	ld   a, [bc]                                     ; $5391: $0a
	rrca                                             ; $5392: $0f
	nop                                              ; $5393: $00
	ld   bc, $000d                                   ; $5394: $01 $0d $00
	nop                                              ; $5397: $00
	add  hl, bc                                      ; $5398: $09
	ld   e, $00                                      ; $5399: $1e $00
	rrca                                             ; $539b: $0f
	nop                                              ; $539c: $00
	ld   bc, $7d01                                   ; $539d: $01 $01 $7d
	ld   d, d                                        ; $53a0: $52
	sbc  [hl]                                        ; $53a1: $9e
	sbc  l                                           ; $53a2: $9d
	ld   e, c                                        ; $53a3: $59
	rst  $38                                         ; $53a4: $ff
	sbc  b                                           ; $53a5: $98
	rst  $38                                         ; $53a6: $ff
	rst  $38                                         ; $53a7: $ff
	adc  h                                           ; $53a8: $8c
	rst  $38                                         ; $53a9: $ff
	rst  $38                                         ; $53aa: $ff
	dec  c                                           ; $53ab: $0d
	nop                                              ; $53ac: $00
	dec  c                                           ; $53ad: $0d
	nop                                              ; $53ae: $00
	nop                                              ; $53af: $00
	inc  c                                           ; $53b0: $0c
	ld   [bc], a                                     ; $53b1: $02
	ld   c, $03                                      ; $53b2: $0e $03
	ld   bc, $9a50                                   ; $53b4: $01 $50 $9a
	rst  $38                                         ; $53b7: $ff
	rst  $38                                         ; $53b8: $ff
	rst  $38                                         ; $53b9: $ff
	ld   sp, hl                                      ; $53ba: $f9
	dec  c                                           ; $53bb: $0d
	ld   e, c                                        ; $53bc: $59
	sub  a                                           ; $53bd: $97
	rst  $38                                         ; $53be: $ff
	rst  $38                                         ; $53bf: $ff
	ld   l, [hl]                                     ; $53c0: $6e
	rst  $38                                         ; $53c1: $ff
	rst  $38                                         ; $53c2: $ff
	ld   e, d                                        ; $53c3: $5a
	rst  $38                                         ; $53c4: $ff
	rst  $38                                         ; $53c5: $ff
	dec  c                                           ; $53c6: $0d
	nop                                              ; $53c7: $00
	ld   a, [bc]                                     ; $53c8: $0a
	ld   l, $01                                      ; $53c9: $2e $01
	nop                                              ; $53cb: $00
	nop                                              ; $53cc: $00
	dec  b                                           ; $53cd: $05
	ld   b, b                                        ; $53ce: $40
	ld   b, d                                        ; $53cf: $42
	inc  bc                                          ; $53d0: $03
	ld   b, d                                        ; $53d1: $42
	ld   bc, $2801                                   ; $53d2: $01 $01 $28
	nop                                              ; $53d5: $00
	inc  e                                           ; $53d6: $1c
	ld   bc, $0000                                   ; $53d7: $01 $00 $00
	ld   bc, $0458                                   ; $53da: $01 $58 $04
	ld   a, e                                        ; $53dd: $7b
	sbc  d                                           ; $53de: $9a
	ld   h, e                                        ; $53df: $63
	adc  h                                           ; $53e0: $8c
	ld   [hl], l                                     ; $53e1: $75
	ld   h, l                                        ; $53e2: $65
	ld   l, l                                        ; $53e3: $6d
	rst  $38                                         ; $53e4: $ff
	rst  $38                                         ; $53e5: $ff
	dec  c                                           ; $53e6: $0d
	nop                                              ; $53e7: $00
	inc  e                                           ; $53e8: $1c
	ld   bc, $0303                                   ; $53e9: $01 $03 $03
	ld   bc, $9750                                   ; $53ec: $01 $50 $97
	ld   sp, hl                                      ; $53ef: $f9
	db   $10                                         ; $53f0: $10
	ld   [hl], a                                     ; $53f1: $77
	ld   d, h                                        ; $53f2: $54
	ld   h, l                                        ; $53f3: $65
	ld   l, l                                        ; $53f4: $6d
	and  c                                           ; $53f5: $a1
	ld   [hl], l                                     ; $53f6: $75
	ld   h, a                                        ; $53f7: $67
	ld   e, c                                        ; $53f8: $59
	ld   sp, hl                                      ; $53f9: $f9
	dec  c                                           ; $53fa: $0d
	ld   [bc], a                                     ; $53fb: $02
	ld   [hl], d                                     ; $53fc: $72
	ld   e, d                                        ; $53fd: $5a
	inc  bc                                          ; $53fe: $03
	xor  l                                           ; $53ff: $ad
	ld   [hl], c                                     ; $5400: $71
	inc  bc                                          ; $5401: $03
	ld   a, [bc]                                     ; $5402: $0a
	ld   [hl], l                                     ; $5403: $75
	ld   h, a                                        ; $5404: $67
	sub  [hl]                                        ; $5405: $96
	sbc  a                                           ; $5406: $9f
	dec  c                                           ; $5407: $0d
	nop                                              ; $5408: $00
	ld   a, [bc]                                     ; $5409: $0a
	rrca                                             ; $540a: $0f
	nop                                              ; $540b: $00
	ld   bc, $5601                                   ; $540c: $01 $01 $56
	ld   d, [hl]                                     ; $540f: $56
	rst  $38                                         ; $5410: $ff
	rst  $38                                         ; $5411: $ff
	ld   a, b                                        ; $5412: $78
	and  c                                           ; $5413: $a1
	ld   l, [hl]                                     ; $5414: $6e
	ld   e, c                                        ; $5415: $59
	ld   h, e                                        ; $5416: $63
	ld   [hl], c                                     ; $5417: $71
	ld   e, e                                        ; $5418: $5b
	ld   e, c                                        ; $5419: $59
	sub  a                                           ; $541a: $97
	dec  c                                           ; $541b: $0d
	inc  b                                           ; $541c: $04
	dec  c                                           ; $541d: $0d
	ld   e, d                                        ; $541e: $5a
	ld   l, [hl]                                     ; $541f: $6e
	sbc  c                                           ; $5420: $99
	ld   e, l                                        ; $5421: $5d
	ld   [hl], h                                     ; $5422: $74
	rst  $38                                         ; $5423: $ff
	rst  $38                                         ; $5424: $ff
	dec  c                                           ; $5425: $0d
	nop                                              ; $5426: $00
	ld   a, [bc]                                     ; $5427: $0a
	ld   bc, $6254                                   ; $5428: $01 $54 $62
	rst  $38                                         ; $542b: $ff
	rst  $38                                         ; $542c: $ff
	ld   e, c                                        ; $542d: $59
	rst  $38                                         ; $542e: $ff
	rst  $38                                         ; $542f: $ff
	ld   a, b                                        ; $5430: $78
	rst  $38                                         ; $5431: $ff
	rst  $38                                         ; $5432: $ff
	dec  c                                           ; $5433: $0d
	nop                                              ; $5434: $00
	dec  c                                           ; $5435: $0d
	nop                                              ; $5436: $00
	nop                                              ; $5437: $00
	inc  c                                           ; $5438: $0c
	ld   [bc], a                                     ; $5439: $02
	ld   c, $03                                      ; $543a: $0e $03
	ld   bc, $9a50                                   ; $543c: $01 $50 $9a
	rst  $38                                         ; $543f: $ff
	rst  $38                                         ; $5440: $ff
	rst  $38                                         ; $5441: $ff
	ld   sp, hl                                      ; $5442: $f9
	dec  c                                           ; $5443: $0d
	ld   [hl], a                                     ; $5444: $77
	ld   d, h                                        ; $5445: $54
	ld   h, l                                        ; $5446: $65
	rst  $38                                         ; $5447: $ff
	rst  $38                                         ; $5448: $ff
	ld   l, l                                        ; $5449: $6d
	rst  $38                                         ; $544a: $ff
	rst  $38                                         ; $544b: $ff
	and  c                                           ; $544c: $a1
	rst  $38                                         ; $544d: $ff
	rst  $38                                         ; $544e: $ff
	dec  c                                           ; $544f: $0d
	nop                                              ; $5450: $00
	ld   a, [bc]                                     ; $5451: $0a
	ld   l, $01                                      ; $5452: $2e $01
	nop                                              ; $5454: $00
	nop                                              ; $5455: $00
	dec  c                                           ; $5456: $0d
	ld   bc, $0f00                                   ; $5457: $01 $00 $0f
	nop                                              ; $545a: $00
	ld   bc, $0102                                   ; $545b: $01 $02 $01
	ld   h, c                                        ; $545e: $61
	and  c                                           ; $545f: $a1
	ld   a, c                                        ; $5460: $79
	ld   l, a                                        ; $5461: $6f
	ld   a, l                                        ; $5462: $7d
	sbc  [hl]                                        ; $5463: $9e
	ld   h, e                                        ; $5464: $63
	ld   e, l                                        ; $5465: $5d
	sub  a                                           ; $5466: $97
	ld   h, e                                        ; $5467: $63
	and  c                                           ; $5468: $a1
	sbc  a                                           ; $5469: $9f
	dec  c                                           ; $546a: $0d
	ld   e, a                                        ; $546b: $5f
	ld   d, d                                        ; $546c: $52
	ld   h, c                                        ; $546d: $61
	and  b                                           ; $546e: $a0
	ld   [hl], d                                     ; $546f: $72
	ld   e, a                                        ; $5470: $5f
	ld   [hl], h                                     ; $5471: $74
	ld   d, d                                        ; $5472: $52
	ld   l, l                                        ; $5473: $6d
	ld   l, [hl]                                     ; $5474: $6e
	ld   e, a                                        ; $5475: $5f
	dec  c                                           ; $5476: $0d
	adc  h                                           ; $5477: $8c
	ld   h, a                                        ; $5478: $67
	ld   e, c                                        ; $5479: $59
	ld   sp, hl                                      ; $547a: $f9
	dec  c                                           ; $547b: $0d

Jump_049_547c:
	nop                                              ; $547c: $00
	ld   a, [bc]                                     ; $547d: $0a
	rrca                                             ; $547e: $0f
	ld   bc, $0100                                   ; $547f: $01 $00 $01
	ld   d, d                                        ; $5482: $52
	ld   d, d                                        ; $5483: $52
	ld   [hl], l                                     ; $5484: $75
	ld   h, a                                        ; $5485: $67
	sub  [hl]                                        ; $5486: $96
	sbc  a                                           ; $5487: $9f
	dec  c                                           ; $5488: $0d
	ld   l, e                                        ; $5489: $6b
	sbc  d                                           ; $548a: $9a
	ld   [hl], l                                     ; $548b: $75
	ld   a, l                                        ; $548c: $7d
	sbc  [hl]                                        ; $548d: $9e
	ld   h, e                                        ; $548e: $63
	ld   [hl], c                                     ; $548f: $71
	ld   l, e                                        ; $5490: $6b
	ld   e, l                                        ; $5491: $5d
	dec  c                                           ; $5492: $0d
	dec  b                                           ; $5493: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5494: $cf
	adc  a                                           ; $5495: $8f
	adc  h                                           ; $5496: $8c
	ld   h, l                                        ; $5497: $65
	sub  l                                           ; $5498: $95
	ld   d, h                                        ; $5499: $54
	ld   e, c                                        ; $549a: $59
	sbc  a                                           ; $549b: $9f
	dec  c                                           ; $549c: $0d
	nop                                              ; $549d: $00
	ld   a, [bc]                                     ; $549e: $0a
	dec  h                                           ; $549f: $25
	ld   bc, $fb07                                   ; $54a0: $01 $07 $fb
	inc  bc                                          ; $54a3: $03
	inc  bc                                          ; $54a4: $03
	jr   nz, jr_049_54a8                             ; $54a5: $20 $01

	nop                                              ; $54a7: $00

jr_049_54a8:
	jr   nz, jr_049_54aa                             ; $54a8: $20 $00

jr_049_54aa:
	inc  e                                           ; $54aa: $1c
	ld   bc, $0000                                   ; $54ab: $01 $00 $00
	ld   bc, $0458                                   ; $54ae: $01 $58 $04
	ld   a, e                                        ; $54b1: $7b
	sbc  d                                           ; $54b2: $9a
	ld   h, e                                        ; $54b3: $63
	adc  h                                           ; $54b4: $8c
	ld   [hl], l                                     ; $54b5: $75
	ld   h, l                                        ; $54b6: $65
	ld   l, l                                        ; $54b7: $6d
	sbc  a                                           ; $54b8: $9f
	dec  c                                           ; $54b9: $0d
	nop                                              ; $54ba: $00
	dec  b                                           ; $54bb: $05
	ld   b, b                                        ; $54bc: $40
	ld   b, d                                        ; $54bd: $42
	inc  bc                                          ; $54be: $03
	ld   b, d                                        ; $54bf: $42
	ld   bc, $2801                                   ; $54c0: $01 $01 $28
	nop                                              ; $54c3: $00
	ld   bc, $a502                                   ; $54c4: $01 $02 $a5
	inc  b                                           ; $54c7: $04
	xor  d                                           ; $54c8: $aa
	ld   a, l                                        ; $54c9: $7d
	ld   h, c                                        ; $54ca: $61
	sbc  d                                           ; $54cb: $9a
	ld   e, l                                        ; $54cc: $5d
	sub  a                                           ; $54cd: $97
	ld   d, d                                        ; $54ce: $52
	ld   a, c                                        ; $54cf: $79
	dec  c                                           ; $54d0: $0d
	ld   h, l                                        ; $54d1: $65
	ld   [hl], h                                     ; $54d2: $74
	ld   e, b                                        ; $54d3: $58
	ld   e, e                                        ; $54d4: $5b
	adc  h                                           ; $54d5: $8c
	ld   h, l                                        ; $54d6: $65
	sub  l                                           ; $54d7: $95
	ld   d, h                                        ; $54d8: $54
	sbc  a                                           ; $54d9: $9f
	dec  c                                           ; $54da: $0d
	nop                                              ; $54db: $00
	ld   a, [bc]                                     ; $54dc: $0a
	ld   bc, $9a6b                                   ; $54dd: $01 $6b $9a
	ld   [hl], l                                     ; $54e0: $75
	ld   a, l                                        ; $54e1: $7d
	sbc  [hl]                                        ; $54e2: $9e
	inc  b                                           ; $54e3: $04
	adc  a                                           ; $54e4: $8f
	inc  b                                           ; $54e5: $04
	xor  d                                           ; $54e6: $aa
	ld   a, h                                        ; $54e7: $7c
	ld   [bc], a                                     ; $54e8: $02
	or   d                                           ; $54e9: $b2
	ld   [bc], a                                     ; $54ea: $02
	xor  d                                           ; $54eb: $aa
	ld   a, h                                        ; $54ec: $7c
	inc  bc                                          ; $54ed: $03
	ld   l, l                                        ; $54ee: $6d
	dec  b                                           ; $54ef: $05
	add  hl, de                                      ; $54f0: $19
	and  b                                           ; $54f1: $a0
	dec  c                                           ; $54f2: $0d
	inc  bc                                          ; $54f3: $03
	ld   a, [hl]                                     ; $54f4: $7e
	sbc  l                                           ; $54f5: $9d
	sbc  b                                           ; $54f6: $98
	adc  h                                           ; $54f7: $8c
	ld   h, a                                        ; $54f8: $67
	sbc  a                                           ; $54f9: $9f
	dec  c                                           ; $54fa: $0d
	nop                                              ; $54fb: $00
	ld   a, [bc]                                     ; $54fc: $0a
	dec  c                                           ; $54fd: $0d
	nop                                              ; $54fe: $00
	nop                                              ; $54ff: $00
	rrca                                             ; $5500: $0f
	nop                                              ; $5501: $00
	ld   bc, $0d00                                   ; $5502: $01 $00 $0d
	ld   bc, $0f00                                   ; $5505: $01 $00 $0f
	nop                                              ; $5508: $00
	ld   bc, $0102                                   ; $5509: $01 $02 $01
	ld   h, c                                        ; $550c: $61
	and  c                                           ; $550d: $a1
	ld   a, c                                        ; $550e: $79
	ld   l, a                                        ; $550f: $6f
	ld   a, l                                        ; $5510: $7d
	sbc  [hl]                                        ; $5511: $9e
	ld   h, e                                        ; $5512: $63
	ld   e, l                                        ; $5513: $5d
	sub  a                                           ; $5514: $97
	ld   h, e                                        ; $5515: $63
	and  c                                           ; $5516: $a1
	sbc  a                                           ; $5517: $9f
	dec  c                                           ; $5518: $0d
	ld   e, a                                        ; $5519: $5f
	ld   d, d                                        ; $551a: $52
	ld   h, c                                        ; $551b: $61
	and  b                                           ; $551c: $a0
	ld   [hl], d                                     ; $551d: $72
	ld   e, a                                        ; $551e: $5f
	ld   [hl], h                                     ; $551f: $74
	ld   d, d                                        ; $5520: $52
	ld   l, l                                        ; $5521: $6d
	ld   l, [hl]                                     ; $5522: $6e
	ld   e, a                                        ; $5523: $5f
	dec  c                                           ; $5524: $0d
	adc  h                                           ; $5525: $8c
	ld   h, a                                        ; $5526: $67
	ld   e, c                                        ; $5527: $59
	ld   sp, hl                                      ; $5528: $f9
	dec  c                                           ; $5529: $0d
	nop                                              ; $552a: $00
	ld   a, [bc]                                     ; $552b: $0a
	rlca                                             ; $552c: $07
	inc  b                                           ; $552d: $04
	ld   b, $03                                      ; $552e: $06 $03
	ld   b, d                                        ; $5530: $42
	ld   bc, $2504                                   ; $5531: $01 $04 $25
	nop                                              ; $5534: $00
	rrca                                             ; $5535: $0f
	ld   bc, $0100                                   ; $5536: $01 $00 $01
	ld   d, d                                        ; $5539: $52
	ld   d, d                                        ; $553a: $52
	ld   [hl], l                                     ; $553b: $75
	ld   h, a                                        ; $553c: $67
	sub  [hl]                                        ; $553d: $96
	sbc  a                                           ; $553e: $9f
	dec  c                                           ; $553f: $0d
	ld   l, e                                        ; $5540: $6b
	sbc  d                                           ; $5541: $9a
	ld   [hl], l                                     ; $5542: $75
	ld   a, l                                        ; $5543: $7d
	sbc  [hl]                                        ; $5544: $9e
	ld   h, e                                        ; $5545: $63
	ld   [hl], c                                     ; $5546: $71
	ld   l, e                                        ; $5547: $6b
	ld   e, l                                        ; $5548: $5d
	dec  c                                           ; $5549: $0d
	dec  b                                           ; $554a: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $554b: $cf
	adc  a                                           ; $554c: $8f
	adc  h                                           ; $554d: $8c
	ld   h, l                                        ; $554e: $65
	sub  l                                           ; $554f: $95
	ld   d, h                                        ; $5550: $54
	ld   e, c                                        ; $5551: $59
	sbc  a                                           ; $5552: $9f
	dec  c                                           ; $5553: $0d
	nop                                              ; $5554: $00
	ld   a, [bc]                                     ; $5555: $0a
	dec  h                                           ; $5556: $25
	ld   bc, $fb07                                   ; $5557: $01 $07 $fb
	inc  bc                                          ; $555a: $03
	inc  bc                                          ; $555b: $03
	jr   nz, jr_049_555f                             ; $555c: $20 $01

	nop                                              ; $555e: $00

jr_049_555f:
	jr   nz, jr_049_5561                             ; $555f: $20 $00

jr_049_5561:
	inc  e                                           ; $5561: $1c
	ld   bc, $0000                                   ; $5562: $01 $00 $00
	ld   bc, $0458                                   ; $5565: $01 $58 $04
	ld   a, e                                        ; $5568: $7b
	sbc  d                                           ; $5569: $9a
	ld   h, e                                        ; $556a: $63
	adc  h                                           ; $556b: $8c
	ld   [hl], l                                     ; $556c: $75
	ld   h, l                                        ; $556d: $65
	ld   l, l                                        ; $556e: $6d
	sbc  a                                           ; $556f: $9f
	dec  c                                           ; $5570: $0d
	ld   l, b                                        ; $5571: $68
	ld   d, d                                        ; $5572: $52
	add  h                                           ; $5573: $84
	and  c                                           ; $5574: $a1
	inc  bc                                          ; $5575: $03
	ld   h, l                                        ; $5576: $65
	inc  bc                                          ; $5577: $03
	rst  $30                                         ; $5578: $f7
	ld   h, l                                        ; $5579: $65
	adc  h                                           ; $557a: $8c
	ld   h, l                                        ; $557b: $65
	ld   l, l                                        ; $557c: $6d
	ld   a, e                                        ; $557d: $7b
	sbc  a                                           ; $557e: $9f
	dec  c                                           ; $557f: $0d
	nop                                              ; $5580: $00
	ld   a, [bc]                                     ; $5581: $0a
	inc  e                                           ; $5582: $1c
	ld   bc, $0101                                   ; $5583: $01 $01 $01
	ld   bc, $9a61                                   ; $5586: $01 $61 $9a
	ld   e, c                                        ; $5589: $59
	sub  a                                           ; $558a: $97
	sub  b                                           ; $558b: $90
	sbc  [hl]                                        ; $558c: $9e
	ld   h, c                                        ; $558d: $61
	ld   a, h                                        ; $558e: $7c
	inc  bc                                          ; $558f: $03
	cp   $03                                         ; $5590: $fe $03
	add  [hl]                                        ; $5592: $86
	ld   [hl], l                                     ; $5593: $75
	dec  c                                           ; $5594: $0d
	ld   e, d                                        ; $5595: $5a
	and  c                                           ; $5596: $a1
	ld   a, [hl]                                     ; $5597: $7e
	sbc  b                                           ; $5598: $98
	adc  h                                           ; $5599: $8c
	ld   h, l                                        ; $559a: $65
	sub  l                                           ; $559b: $95
	ld   d, h                                        ; $559c: $54
	ld   a, e                                        ; $559d: $7b
	sbc  a                                           ; $559e: $9f
	dec  c                                           ; $559f: $0d
	nop                                              ; $55a0: $00
	ld   a, [bc]                                     ; $55a1: $0a
	dec  b                                           ; $55a2: $05
	ld   b, b                                        ; $55a3: $40
	ld   b, d                                        ; $55a4: $42
	inc  bc                                          ; $55a5: $03
	ld   b, d                                        ; $55a6: $42
	ld   bc, $2801                                   ; $55a7: $01 $01 $28
	nop                                              ; $55aa: $00
	inc  e                                           ; $55ab: $1c
	ld   bc, $0000                                   ; $55ac: $01 $00 $00
	ld   bc, $9a6b                                   ; $55af: $01 $6b $9a
	ld   [hl], l                                     ; $55b2: $75
	ld   a, l                                        ; $55b3: $7d
	sbc  [hl]                                        ; $55b4: $9e
	inc  b                                           ; $55b5: $04
	adc  a                                           ; $55b6: $8f
	inc  b                                           ; $55b7: $04
	xor  d                                           ; $55b8: $aa
	ld   a, h                                        ; $55b9: $7c
	ld   [bc], a                                     ; $55ba: $02
	or   d                                           ; $55bb: $b2
	ld   [bc], a                                     ; $55bc: $02
	xor  d                                           ; $55bd: $aa
	ld   a, h                                        ; $55be: $7c
	inc  bc                                          ; $55bf: $03
	ld   l, l                                        ; $55c0: $6d
	dec  b                                           ; $55c1: $05
	add  hl, de                                      ; $55c2: $19
	and  b                                           ; $55c3: $a0
	dec  c                                           ; $55c4: $0d
	inc  bc                                          ; $55c5: $03
	ld   a, [hl]                                     ; $55c6: $7e
	sbc  l                                           ; $55c7: $9d
	sbc  b                                           ; $55c8: $98
	adc  h                                           ; $55c9: $8c
	ld   h, a                                        ; $55ca: $67
	sbc  a                                           ; $55cb: $9f
	dec  c                                           ; $55cc: $0d
	nop                                              ; $55cd: $00
	ld   a, [bc]                                     ; $55ce: $0a
	dec  c                                           ; $55cf: $0d
	nop                                              ; $55d0: $00
	nop                                              ; $55d1: $00
	rrca                                             ; $55d2: $0f
	nop                                              ; $55d3: $00
	ld   bc, $0f00                                   ; $55d4: $01 $00 $0f
	ld   bc, $0100                                   ; $55d7: $01 $00 $01
	ld   d, d                                        ; $55da: $52
	ld   d, d                                        ; $55db: $52
	ld   [hl], l                                     ; $55dc: $75
	ld   h, a                                        ; $55dd: $67
	sub  [hl]                                        ; $55de: $96
	sbc  a                                           ; $55df: $9f
	dec  c                                           ; $55e0: $0d
	ld   l, e                                        ; $55e1: $6b
	sbc  d                                           ; $55e2: $9a
	ld   [hl], l                                     ; $55e3: $75
	ld   a, l                                        ; $55e4: $7d
	sbc  [hl]                                        ; $55e5: $9e
	ld   h, e                                        ; $55e6: $63
	ld   [hl], c                                     ; $55e7: $71
	ld   l, e                                        ; $55e8: $6b
	ld   e, l                                        ; $55e9: $5d
	dec  c                                           ; $55ea: $0d
	dec  b                                           ; $55eb: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55ec: $cf
	adc  a                                           ; $55ed: $8f
	adc  h                                           ; $55ee: $8c
	ld   h, l                                        ; $55ef: $65
	sub  l                                           ; $55f0: $95
	ld   d, h                                        ; $55f1: $54
	ld   e, c                                        ; $55f2: $59
	sbc  a                                           ; $55f3: $9f
	dec  c                                           ; $55f4: $0d
	nop                                              ; $55f5: $00
	ld   a, [bc]                                     ; $55f6: $0a
	dec  h                                           ; $55f7: $25
	ld   bc, $fb07                                   ; $55f8: $01 $07 $fb
	inc  bc                                          ; $55fb: $03
	inc  bc                                          ; $55fc: $03
	jr   nz, jr_049_5600                             ; $55fd: $20 $01

	nop                                              ; $55ff: $00

jr_049_5600:
	jr   nz, jr_049_5602                             ; $5600: $20 $00

jr_049_5602:
	inc  e                                           ; $5602: $1c
	ld   bc, $0101                                   ; $5603: $01 $01 $01
	ld   bc, $0458                                   ; $5606: $01 $58 $04
	ld   a, e                                        ; $5609: $7b
	sbc  d                                           ; $560a: $9a
	ld   h, e                                        ; $560b: $63
	adc  h                                           ; $560c: $8c
	ld   [hl], l                                     ; $560d: $75
	ld   h, l                                        ; $560e: $65
	ld   l, l                                        ; $560f: $6d
	sbc  a                                           ; $5610: $9f
	dec  c                                           ; $5611: $0d
	ld   l, b                                        ; $5612: $68
	ld   d, d                                        ; $5613: $52
	add  h                                           ; $5614: $84
	and  c                                           ; $5615: $a1
	sbc  [hl]                                        ; $5616: $9e
	ld   d, d                                        ; $5617: $52
	ld   d, d                                        ; $5618: $52
	ld   [bc], a                                     ; $5619: $02
	scf                                              ; $561a: $37
	ld   h, [hl]                                     ; $561b: $66
	ld   [hl], l                                     ; $561c: $75
	ld   h, l                                        ; $561d: $65
	ld   l, l                                        ; $561e: $6d
	sub  [hl]                                        ; $561f: $96
	sbc  a                                           ; $5620: $9f
	dec  c                                           ; $5621: $0d
	nop                                              ; $5622: $00
	ld   a, [bc]                                     ; $5623: $0a
	dec  b                                           ; $5624: $05
	ld   b, b                                        ; $5625: $40
	ld   b, d                                        ; $5626: $42
	inc  bc                                          ; $5627: $03
	ld   b, d                                        ; $5628: $42
	ld   bc, $2801                                   ; $5629: $01 $01 $28
	nop                                              ; $562c: $00
	inc  e                                           ; $562d: $1c
	ld   bc, $0000                                   ; $562e: $01 $00 $00
	ld   bc, $9a6b                                   ; $5631: $01 $6b $9a
	ld   [hl], l                                     ; $5634: $75
	ld   a, l                                        ; $5635: $7d
	sbc  [hl]                                        ; $5636: $9e
	inc  b                                           ; $5637: $04
	adc  a                                           ; $5638: $8f
	inc  b                                           ; $5639: $04
	xor  d                                           ; $563a: $aa
	ld   a, h                                        ; $563b: $7c
	ld   [bc], a                                     ; $563c: $02
	or   d                                           ; $563d: $b2
	ld   [bc], a                                     ; $563e: $02
	xor  d                                           ; $563f: $aa
	ld   a, h                                        ; $5640: $7c
	inc  bc                                          ; $5641: $03
	ld   l, l                                        ; $5642: $6d
	dec  b                                           ; $5643: $05
	add  hl, de                                      ; $5644: $19
	and  b                                           ; $5645: $a0
	dec  c                                           ; $5646: $0d
	inc  bc                                          ; $5647: $03
	ld   a, [hl]                                     ; $5648: $7e
	sbc  l                                           ; $5649: $9d
	sbc  b                                           ; $564a: $98
	adc  h                                           ; $564b: $8c
	ld   h, a                                        ; $564c: $67
	sbc  a                                           ; $564d: $9f
	dec  c                                           ; $564e: $0d
	nop                                              ; $564f: $00
	ld   a, [bc]                                     ; $5650: $0a
	dec  c                                           ; $5651: $0d
	nop                                              ; $5652: $00
	nop                                              ; $5653: $00
	rrca                                             ; $5654: $0f
	nop                                              ; $5655: $00
	ld   bc, $0d00                                   ; $5656: $01 $00 $0d
	ld   bc, $0f00                                   ; $5659: $01 $00 $0f
	nop                                              ; $565c: $00
	ld   bc, $0102                                   ; $565d: $01 $02 $01
	ld   h, c                                        ; $5660: $61
	and  c                                           ; $5661: $a1
	ld   a, c                                        ; $5662: $79
	ld   l, a                                        ; $5663: $6f
	ld   a, l                                        ; $5664: $7d
	sbc  [hl]                                        ; $5665: $9e
	ld   h, e                                        ; $5666: $63
	ld   e, l                                        ; $5667: $5d
	sub  a                                           ; $5668: $97
	ld   h, e                                        ; $5669: $63
	and  c                                           ; $566a: $a1
	sbc  a                                           ; $566b: $9f
	dec  c                                           ; $566c: $0d
	ld   e, a                                        ; $566d: $5f
	ld   d, d                                        ; $566e: $52
	ld   h, c                                        ; $566f: $61
	and  b                                           ; $5670: $a0
	ld   [hl], d                                     ; $5671: $72
	ld   e, a                                        ; $5672: $5f
	ld   [hl], h                                     ; $5673: $74
	ld   d, d                                        ; $5674: $52
	ld   l, l                                        ; $5675: $6d
	ld   l, [hl]                                     ; $5676: $6e
	ld   e, a                                        ; $5677: $5f
	dec  c                                           ; $5678: $0d
	adc  h                                           ; $5679: $8c
	ld   h, a                                        ; $567a: $67
	ld   e, c                                        ; $567b: $59
	ld   sp, hl                                      ; $567c: $f9
	dec  c                                           ; $567d: $0d
	nop                                              ; $567e: $00
	ld   a, [bc]                                     ; $567f: $0a
	rlca                                             ; $5680: $07
	sub  h                                           ; $5681: $94
	rlca                                             ; $5682: $07
	inc  bc                                          ; $5683: $03
	ld   b, d                                        ; $5684: $42
	ld   bc, $2507                                   ; $5685: $01 $07 $25
	nop                                              ; $5688: $00
	rlca                                             ; $5689: $07
	sub  h                                           ; $568a: $94
	rlca                                             ; $568b: $07
	inc  bc                                          ; $568c: $03
	ld   b, d                                        ; $568d: $42
	ld   bc, $2507                                   ; $568e: $01 $07 $25
	nop                                              ; $5691: $00
	rrca                                             ; $5692: $0f
	ld   bc, $0100                                   ; $5693: $01 $00 $01
	ld   d, d                                        ; $5696: $52
	ld   d, d                                        ; $5697: $52
	ld   [hl], l                                     ; $5698: $75
	ld   h, a                                        ; $5699: $67
	sub  [hl]                                        ; $569a: $96
	sbc  a                                           ; $569b: $9f
	dec  c                                           ; $569c: $0d
	ld   l, e                                        ; $569d: $6b
	sbc  d                                           ; $569e: $9a
	ld   [hl], l                                     ; $569f: $75
	ld   a, l                                        ; $56a0: $7d
	sbc  [hl]                                        ; $56a1: $9e
	ld   h, e                                        ; $56a2: $63
	ld   [hl], c                                     ; $56a3: $71
	ld   l, e                                        ; $56a4: $6b
	ld   e, l                                        ; $56a5: $5d
	dec  c                                           ; $56a6: $0d
	dec  b                                           ; $56a7: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56a8: $cf
	adc  a                                           ; $56a9: $8f
	adc  h                                           ; $56aa: $8c
	ld   h, l                                        ; $56ab: $65
	sub  l                                           ; $56ac: $95
	ld   d, h                                        ; $56ad: $54
	ld   e, c                                        ; $56ae: $59
	sbc  a                                           ; $56af: $9f
	dec  c                                           ; $56b0: $0d
	nop                                              ; $56b1: $00
	ld   a, [bc]                                     ; $56b2: $0a
	dec  h                                           ; $56b3: $25
	ld   bc, $fb07                                   ; $56b4: $01 $07 $fb
	inc  bc                                          ; $56b7: $03
	inc  bc                                          ; $56b8: $03
	jr   nz, jr_049_56bc                             ; $56b9: $20 $01

	nop                                              ; $56bb: $00

jr_049_56bc:
	jr   nz, jr_049_56be                             ; $56bc: $20 $00

jr_049_56be:
	inc  e                                           ; $56be: $1c
	ld   bc, $0101                                   ; $56bf: $01 $01 $01
	ld   bc, $0458                                   ; $56c2: $01 $58 $04
	ld   a, e                                        ; $56c5: $7b
	sbc  d                                           ; $56c6: $9a
	ld   h, e                                        ; $56c7: $63
	adc  h                                           ; $56c8: $8c
	ld   [hl], l                                     ; $56c9: $75
	ld   h, l                                        ; $56ca: $65
	ld   l, l                                        ; $56cb: $6d
	sbc  a                                           ; $56cc: $9f
	dec  c                                           ; $56cd: $0d
	inc  bc                                          ; $56ce: $03
	and  [hl]                                        ; $56cf: $a6
	dec  b                                           ; $56d0: $05
	call nc, Call_049_6597                           ; $56d1: $d4 $97 $65
	ld   d, d                                        ; $56d4: $52
	inc  bc                                          ; $56d5: $03
	ld   h, l                                        ; $56d6: $65
	inc  bc                                          ; $56d7: $03
	rst  $30                                         ; $56d8: $f7
	add  h                                           ; $56d9: $84
	sbc  b                                           ; $56da: $98
	ld   [hl], l                                     ; $56db: $75
	ld   h, a                                        ; $56dc: $67
	ld   a, e                                        ; $56dd: $7b
	ld   a, [$630d]                                  ; $56de: $fa $0d $63
	ld   h, a                                        ; $56e1: $67
	ld   e, d                                        ; $56e2: $5a
	ld   [$6300], sp                                 ; $56e3: $08 $00 $63
	and  c                                           ; $56e6: $a1
	sbc  a                                           ; $56e7: $9f
	dec  c                                           ; $56e8: $0d
	nop                                              ; $56e9: $00
	ld   a, [bc]                                     ; $56ea: $0a
	ld   bc, $668c                                   ; $56eb: $01 $8c $66
	adc  a                                           ; $56ee: $8f
	ld   a, c                                        ; $56ef: $79
	inc  bc                                          ; $56f0: $03
	ld   l, l                                        ; $56f1: $6d
	dec  b                                           ; $56f2: $05
	add  hl, de                                      ; $56f3: $19
	ld   h, l                                        ; $56f4: $65
	ld   [hl], h                                     ; $56f5: $74
	ld   e, e                                        ; $56f6: $5b
	ld   l, l                                        ; $56f7: $6d
	halt                                             ; $56f8: $76
	ld   a, l                                        ; $56f9: $7d
	ld   d, d                                        ; $56fa: $52
	ld   d, [hl]                                     ; $56fb: $56
	dec  c                                           ; $56fc: $0d
	ld   h, c                                        ; $56fd: $61
	ld   h, c                                        ; $56fe: $61
	adc  h                                           ; $56ff: $8c
	ld   [hl], l                                     ; $5700: $75
	inc  bc                                          ; $5701: $03
	ld   h, l                                        ; $5702: $65
	inc  bc                                          ; $5703: $03
	rst  $30                                         ; $5704: $f7
	ld   h, a                                        ; $5705: $67
	sbc  c                                           ; $5706: $99
	ld   a, b                                        ; $5707: $78
	and  c                                           ; $5708: $a1
	ld   [hl], h                                     ; $5709: $74
	rst  $38                                         ; $570a: $ff
	rst  $38                                         ; $570b: $ff
	dec  c                                           ; $570c: $0d
	ld   d, b                                        ; $570d: $50
	ld   l, l                                        ; $570e: $6d
	ld   h, l                                        ; $570f: $65
	ld   [bc], a                                     ; $5710: $02
	scf                                              ; $5711: $37
	inc  bc                                          ; $5712: $03
	ld   [hl], l                                     ; $5713: $75
	ld   h, l                                        ; $5714: $65
	adc  h                                           ; $5715: $8c
	ld   h, l                                        ; $5716: $65
	ld   l, l                                        ; $5717: $6d
	sbc  a                                           ; $5718: $9f
	dec  c                                           ; $5719: $0d
	nop                                              ; $571a: $00
	ld   a, [bc]                                     ; $571b: $0a
	dec  b                                           ; $571c: $05
	ld   b, b                                        ; $571d: $40
	ld   b, d                                        ; $571e: $42
	inc  bc                                          ; $571f: $03
	ld   b, d                                        ; $5720: $42
	ld   bc, $2801                                   ; $5721: $01 $01 $28
	nop                                              ; $5724: $00
	ld   bc, $9a61                                   ; $5725: $01 $61 $9a
	ld   e, c                                        ; $5728: $59
	sub  a                                           ; $5729: $97
	sub  b                                           ; $572a: $90
	sbc  [hl]                                        ; $572b: $9e
	ld   e, d                                        ; $572c: $5a
	and  c                                           ; $572d: $a1
	ld   a, [hl]                                     ; $572e: $7e
	ld   [hl], c                                     ; $572f: $71
	ld   [hl], h                                     ; $5730: $74
	dec  c                                           ; $5731: $0d
	ld   e, l                                        ; $5732: $5d
	ld   l, [hl]                                     ; $5733: $6e
	ld   h, e                                        ; $5734: $63
	ld   d, d                                        ; $5735: $52
	ld   a, e                                        ; $5736: $7b
	sbc  a                                           ; $5737: $9f
	dec  c                                           ; $5738: $0d
	nop                                              ; $5739: $00
	ld   a, [bc]                                     ; $573a: $0a
	inc  e                                           ; $573b: $1c
	ld   bc, $0000                                   ; $573c: $01 $00 $00
	ld   bc, $9a6b                                   ; $573f: $01 $6b $9a
	ld   [hl], l                                     ; $5742: $75
	ld   a, l                                        ; $5743: $7d
	sbc  [hl]                                        ; $5744: $9e
	inc  b                                           ; $5745: $04
	adc  a                                           ; $5746: $8f
	inc  b                                           ; $5747: $04
	xor  d                                           ; $5748: $aa
	ld   a, h                                        ; $5749: $7c
	ld   [bc], a                                     ; $574a: $02
	or   d                                           ; $574b: $b2
	ld   [bc], a                                     ; $574c: $02
	xor  d                                           ; $574d: $aa
	ld   a, h                                        ; $574e: $7c
	inc  bc                                          ; $574f: $03
	ld   l, l                                        ; $5750: $6d
	dec  b                                           ; $5751: $05
	add  hl, de                                      ; $5752: $19
	and  b                                           ; $5753: $a0
	dec  c                                           ; $5754: $0d
	inc  bc                                          ; $5755: $03
	ld   a, [hl]                                     ; $5756: $7e
	sbc  l                                           ; $5757: $9d
	sbc  b                                           ; $5758: $98
	adc  h                                           ; $5759: $8c
	ld   h, a                                        ; $575a: $67
	sbc  a                                           ; $575b: $9f
	dec  c                                           ; $575c: $0d
	nop                                              ; $575d: $00
	ld   a, [bc]                                     ; $575e: $0a
	dec  c                                           ; $575f: $0d
	nop                                              ; $5760: $00
	nop                                              ; $5761: $00
	rrca                                             ; $5762: $0f
	nop                                              ; $5763: $00
	ld   bc, $0f00                                   ; $5764: $01 $00 $0f
	ld   bc, $0100                                   ; $5767: $01 $00 $01
	ld   d, d                                        ; $576a: $52
	ld   d, d                                        ; $576b: $52
	ld   [hl], l                                     ; $576c: $75
	ld   h, a                                        ; $576d: $67
	sub  [hl]                                        ; $576e: $96
	sbc  a                                           ; $576f: $9f
	dec  c                                           ; $5770: $0d
	ld   l, e                                        ; $5771: $6b
	sbc  d                                           ; $5772: $9a
	ld   [hl], l                                     ; $5773: $75
	ld   a, l                                        ; $5774: $7d
	sbc  [hl]                                        ; $5775: $9e
	ld   h, e                                        ; $5776: $63
	ld   [hl], c                                     ; $5777: $71
	ld   l, e                                        ; $5778: $6b
	ld   e, l                                        ; $5779: $5d
	dec  c                                           ; $577a: $0d
	dec  b                                           ; $577b: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $577c: $cf
	adc  a                                           ; $577d: $8f
	adc  h                                           ; $577e: $8c
	ld   h, l                                        ; $577f: $65
	sub  l                                           ; $5780: $95
	ld   d, h                                        ; $5781: $54
	ld   e, c                                        ; $5782: $59
	sbc  a                                           ; $5783: $9f
	dec  c                                           ; $5784: $0d
	nop                                              ; $5785: $00
	ld   a, [bc]                                     ; $5786: $0a
	dec  h                                           ; $5787: $25
	ld   bc, $fb07                                   ; $5788: $01 $07 $fb
	inc  bc                                          ; $578b: $03
	inc  bc                                          ; $578c: $03
	jr   nz, jr_049_5790                             ; $578d: $20 $01

	nop                                              ; $578f: $00

jr_049_5790:
	jr   nz, jr_049_5792                             ; $5790: $20 $00

jr_049_5792:
	inc  e                                           ; $5792: $1c
	ld   bc, $0101                                   ; $5793: $01 $01 $01
	ld   bc, $0458                                   ; $5796: $01 $58 $04
	ld   a, e                                        ; $5799: $7b
	sbc  d                                           ; $579a: $9a
	ld   h, e                                        ; $579b: $63
	adc  h                                           ; $579c: $8c
	ld   [hl], l                                     ; $579d: $75
	ld   h, l                                        ; $579e: $65
	ld   l, l                                        ; $579f: $6d
	sbc  a                                           ; $57a0: $9f
	dec  c                                           ; $57a1: $0d
	ld   d, d                                        ; $57a2: $52
	ld   d, d                                        ; $57a3: $52
	inc  bc                                          ; $57a4: $03
	cp   $03                                         ; $57a5: $fe $03
	add  [hl]                                        ; $57a7: $86
	ld   [hl], l                                     ; $57a8: $75
	ld   h, l                                        ; $57a9: $65
	ld   l, l                                        ; $57aa: $6d
	sub  [hl]                                        ; $57ab: $96
	sbc  a                                           ; $57ac: $9f
	dec  c                                           ; $57ad: $0d
	nop                                              ; $57ae: $00
	dec  b                                           ; $57af: $05
	ld   b, b                                        ; $57b0: $40
	ld   b, d                                        ; $57b1: $42
	inc  bc                                          ; $57b2: $03
	ld   b, d                                        ; $57b3: $42
	ld   bc, $2801                                   ; $57b4: $01 $01 $28
	nop                                              ; $57b7: $00
	ld   bc, $d6d6                                   ; $57b8: $01 $d6 $d6
	sub  $ff                                         ; $57bb: $d6 $ff
	rst  $38                                         ; $57bd: $ff
	dec  c                                           ; $57be: $0d
	nop                                              ; $57bf: $00
	ld   a, [bc]                                     ; $57c0: $0a
	inc  e                                           ; $57c1: $1c
	ld   bc, $0000                                   ; $57c2: $01 $00 $00
	ld   bc, $9a6b                                   ; $57c5: $01 $6b $9a
	ld   [hl], l                                     ; $57c8: $75
	ld   a, l                                        ; $57c9: $7d
	sbc  [hl]                                        ; $57ca: $9e
	inc  b                                           ; $57cb: $04
	adc  a                                           ; $57cc: $8f
	inc  b                                           ; $57cd: $04
	xor  d                                           ; $57ce: $aa
	ld   a, h                                        ; $57cf: $7c
	ld   [bc], a                                     ; $57d0: $02
	or   d                                           ; $57d1: $b2
	ld   [bc], a                                     ; $57d2: $02
	xor  d                                           ; $57d3: $aa
	ld   a, h                                        ; $57d4: $7c
	inc  bc                                          ; $57d5: $03
	ld   l, l                                        ; $57d6: $6d
	dec  b                                           ; $57d7: $05
	add  hl, de                                      ; $57d8: $19
	and  b                                           ; $57d9: $a0
	dec  c                                           ; $57da: $0d
	inc  bc                                          ; $57db: $03
	ld   a, [hl]                                     ; $57dc: $7e
	sbc  l                                           ; $57dd: $9d
	sbc  b                                           ; $57de: $98
	adc  h                                           ; $57df: $8c
	ld   h, a                                        ; $57e0: $67
	sbc  a                                           ; $57e1: $9f
	dec  c                                           ; $57e2: $0d
	nop                                              ; $57e3: $00
	ld   a, [bc]                                     ; $57e4: $0a
	dec  c                                           ; $57e5: $0d
	nop                                              ; $57e6: $00
	nop                                              ; $57e7: $00
	rrca                                             ; $57e8: $0f
	nop                                              ; $57e9: $00
	ld   bc, $0e00                                   ; $57ea: $01 $00 $0e
	ld   bc, $0702                                   ; $57ed: $01 $02 $07
	ld   h, c                                        ; $57f0: $61
	ld   [$2003], sp                                 ; $57f1: $08 $03 $20
	ld   bc, $2540                                   ; $57f4: $01 $40 $25
	nop                                              ; $57f7: $00
	dec  b                                           ; $57f8: $05
	ld   b, b                                        ; $57f9: $40
	ld   c, [hl]                                     ; $57fa: $4e
	inc  bc                                          ; $57fb: $03
	ld   c, [hl]                                     ; $57fc: $4e
	ld   [bc], a                                     ; $57fd: $02
	nop                                              ; $57fe: $00
	inc  bc                                          ; $57ff: $03
	ld   c, b                                        ; $5800: $48
	add  hl, hl                                      ; $5801: $29
	add  hl, hl                                      ; $5802: $29
	nop                                              ; $5803: $00
	ld   bc, $ffff                                   ; $5804: $01 $ff $ff
	ld   d, h                                        ; $5807: $54
	db   $fc                                         ; $5808: $fc
	and  c                                           ; $5809: $a1
	rst  $38                                         ; $580a: $ff
	rst  $38                                         ; $580b: $ff
	dec  c                                           ; $580c: $0d
	ld   a, b                                        ; $580d: $78
	and  c                                           ; $580e: $a1
	ld   l, [hl]                                     ; $580f: $6e
	ld   e, c                                        ; $5810: $59
	inc  b                                           ; $5811: $04
	dec  c                                           ; $5812: $0d
	inc  bc                                          ; $5813: $03
	cp   $5a                                         ; $5814: $fe $5a
	ld   [bc], a                                     ; $5816: $02
	jr   z, jr_049_586b                              ; $5817: $28 $52

	ld   a, b                                        ; $5819: $78
	rst  $38                                         ; $581a: $ff
	rst  $38                                         ; $581b: $ff
	dec  c                                           ; $581c: $0d
	ld   [bc], a                                     ; $581d: $02
	and  l                                           ; $581e: $a5
	inc  b                                           ; $581f: $04
	xor  d                                           ; $5820: $aa
	ld   a, h                                        ; $5821: $7c
	inc  bc                                          ; $5822: $03
	ld   l, l                                        ; $5823: $6d
	dec  b                                           ; $5824: $05
	add  hl, de                                      ; $5825: $19
	ld   a, l                                        ; $5826: $7d
	inc  bc                                          ; $5827: $03
	and  a                                           ; $5828: $a7
	adc  [hl]                                        ; $5829: $8e
	ld   e, c                                        ; $582a: $59
	ld   a, b                                        ; $582b: $78
	sbc  a                                           ; $582c: $9f
	dec  c                                           ; $582d: $0d
	nop                                              ; $582e: $00
	ld   a, [bc]                                     ; $582f: $0a
	ld   b, $8c                                      ; $5830: $06 $8c
	ld   [$0201], sp                                 ; $5832: $08 $01 $02
	and  l                                           ; $5835: $a5
	inc  b                                           ; $5836: $04
	xor  d                                           ; $5837: $aa
	ld   a, l                                        ; $5838: $7d
	ld   a, b                                        ; $5839: $78
	and  c                                           ; $583a: $a1
	ld   l, [hl]                                     ; $583b: $6e
	ld   e, c                                        ; $583c: $59
	inc  bc                                          ; $583d: $03
	ld   l, l                                        ; $583e: $6d
	dec  b                                           ; $583f: $05
	add  hl, de                                      ; $5840: $19
	ld   a, c                                        ; $5841: $79
	dec  c                                           ; $5842: $0d
	ld   [bc], a                                     ; $5843: $02
	ld   a, a                                        ; $5844: $7f
	ld   e, e                                        ; $5845: $5b
	ld   l, l                                        ; $5846: $6d
	ld   e, l                                        ; $5847: $5d
	ld   a, b                                        ; $5848: $78
	ld   d, d                                        ; $5849: $52
	ld   a, b                                        ; $584a: $78
	ld   d, b                                        ; $584b: $50
	rst  $38                                         ; $584c: $ff
	rst  $38                                         ; $584d: $ff
	dec  c                                           ; $584e: $0d
	inc  bc                                          ; $584f: $03
	ld   l, l                                        ; $5850: $6d
	dec  b                                           ; $5851: $05
	add  hl, de                                      ; $5852: $19
	rst  $38                                         ; $5853: $ff
	rst  $38                                         ; $5854: $ff
	inc  bc                                          ; $5855: $03
	and  a                                           ; $5856: $a7
	adc  [hl]                                        ; $5857: $8e
	ld   e, c                                        ; $5858: $59
	ld   a, b                                        ; $5859: $78
	sbc  a                                           ; $585a: $9f
	dec  c                                           ; $585b: $0d
	nop                                              ; $585c: $00
	ld   a, [bc]                                     ; $585d: $0a
	inc  hl                                          ; $585e: $23
	ld   b, d                                        ; $585f: $42
	inc  d                                           ; $5860: $14
	ld   b, $01                                      ; $5861: $06 $01
	add  hl, bc                                      ; $5863: $09
	ld   e, $01                                      ; $5864: $1e $01
	ld   h, e                                        ; $5866: $63
	ld   e, l                                        ; $5867: $5d
	sub  a                                           ; $5868: $97
	ld   h, e                                        ; $5869: $63
	and  c                                           ; $586a: $a1

jr_049_586b:
	sbc  [hl]                                        ; $586b: $9e
	dec  c                                           ; $586c: $0d
	ld   d, d                                        ; $586d: $52
	sub  a                                           ; $586e: $97
	ld   [hl], c                                     ; $586f: $71
	ld   h, l                                        ; $5870: $65
	sub  c                                           ; $5871: $91
	ld   d, d                                        ; $5872: $52
	adc  h                                           ; $5873: $8c
	ld   h, a                                        ; $5874: $67
	ld   e, c                                        ; $5875: $59
	ld   sp, hl                                      ; $5876: $f9
	dec  c                                           ; $5877: $0d
	nop                                              ; $5878: $00
	ld   a, [bc]                                     ; $5879: $0a
	rrca                                             ; $587a: $0f
	ld   bc, $0100                                   ; $587b: $01 $00 $01
	ld   a, l                                        ; $587e: $7d
	ei                                               ; $587f: $fb
	ld   d, d                                        ; $5880: $52
	sbc  a                                           ; $5881: $9f
	dec  c                                           ; $5882: $0d
	ld   d, d                                        ; $5883: $52
	adc  h                                           ; $5884: $8c
	ld   d, b                                        ; $5885: $50
	ld   e, a                                        ; $5886: $5f
	adc  h                                           ; $5887: $8c
	ld   h, a                                        ; $5888: $67
	sbc  a                                           ; $5889: $9f
	dec  c                                           ; $588a: $0d
	nop                                              ; $588b: $00
	ld   a, [bc]                                     ; $588c: $0a
	inc  d                                           ; $588d: $14
	ld   a, [bc]                                     ; $588e: $0a
	ld   bc, $430e                                   ; $588f: $01 $0e $43
	inc  e                                           ; $5892: $1c
	ld   bc, $0101                                   ; $5893: $01 $01 $01
	ld   bc, $a161                                   ; $5896: $01 $61 $a1
	ld   a, c                                        ; $5899: $79
	ld   l, a                                        ; $589a: $6f
	ld   a, l                                        ; $589b: $7d
	sbc  [hl]                                        ; $589c: $9e
	ld   [$6300], sp                                 ; $589d: $08 $00 $63
	and  c                                           ; $58a0: $a1
	sbc  a                                           ; $58a1: $9f
	dec  c                                           ; $58a2: $0d
	nop                                              ; $58a3: $00
	ld   a, [bc]                                     ; $58a4: $0a
	rlca                                             ; $58a5: $07
	ld   a, c                                        ; $58a6: $79
	add  hl, bc                                      ; $58a7: $09
	inc  bc                                          ; $58a8: $03
	jr   nz, jr_049_58ac                             ; $58a9: $20 $01

	ld   b, b                                        ; $58ab: $40

jr_049_58ac:
	dec  h                                           ; $58ac: $25
	nop                                              ; $58ad: $00
	ld   bc, $ffff                                   ; $58ae: $01 $ff $ff
	ld   d, b                                        ; $58b1: $50
	sub  a                                           ; $58b2: $97
	ld   sp, hl                                      ; $58b3: $f9
	dec  c                                           ; $58b4: $0d
	nop                                              ; $58b5: $00
	inc  e                                           ; $58b6: $1c
	ld   bc, $0404                                   ; $58b7: $01 $04 $04
	ld   bc, $5477                                   ; $58ba: $01 $77 $54
	ld   h, l                                        ; $58bd: $65
	ld   l, l                                        ; $58be: $6d
	and  c                                           ; $58bf: $a1
	ld   [hl], l                                     ; $58c0: $75
	ld   h, a                                        ; $58c1: $67
	ld   e, c                                        ; $58c2: $59
	sbc  [hl]                                        ; $58c3: $9e
	dec  c                                           ; $58c4: $0d
	ld   [bc], a                                     ; $58c5: $02
	ld   [hl], d                                     ; $58c6: $72
	inc  bc                                          ; $58c7: $03
	dec  bc                                          ; $58c8: $0b
	ld   e, d                                        ; $58c9: $5a
	sbc  l                                           ; $58ca: $9d
	sbc  c                                           ; $58cb: $99
	ld   d, d                                        ; $58cc: $52
	ld   [hl], l                                     ; $58cd: $75
	ld   h, a                                        ; $58ce: $67
	sub  [hl]                                        ; $58cf: $96
	ld   sp, hl                                      ; $58d0: $f9
	dec  c                                           ; $58d1: $0d
	nop                                              ; $58d2: $00
	ld   a, [bc]                                     ; $58d3: $0a
	rrca                                             ; $58d4: $0f
	nop                                              ; $58d5: $00
	ld   bc, $7d01                                   ; $58d6: $01 $01 $7d
	ld   d, d                                        ; $58d9: $52
	sbc  [hl]                                        ; $58da: $9e
	ld   l, a                                        ; $58db: $6f
	sub  l                                           ; $58dc: $95
	ld   [hl], c                                     ; $58dd: $71
	halt                                             ; $58de: $76
	inc  b                                           ; $58df: $04
	dec  c                                           ; $58e0: $0d
	inc  bc                                          ; $58e1: $03
	cp   $5a                                         ; $58e2: $fe $5a
	dec  c                                           ; $58e4: $0d
	sbc  l                                           ; $58e5: $9d
	sbc  c                                           ; $58e6: $99
	ld   e, l                                        ; $58e7: $5d
	ld   [hl], h                                     ; $58e8: $74
	rst  $38                                         ; $58e9: $ff
	rst  $38                                         ; $58ea: $ff
	ld   [bc], a                                     ; $58eb: $02
	and  l                                           ; $58ec: $a5
	inc  b                                           ; $58ed: $04
	xor  d                                           ; $58ee: $aa
	ld   a, h                                        ; $58ef: $7c
	inc  bc                                          ; $58f0: $03
	ld   l, l                                        ; $58f1: $6d
	dec  b                                           ; $58f2: $05
	add  hl, de                                      ; $58f3: $19
	ld   a, l                                        ; $58f4: $7d
	dec  c                                           ; $58f5: $0d
	inc  bc                                          ; $58f6: $03
	and  a                                           ; $58f7: $a7
	adc  h                                           ; $58f8: $8c
	ld   l, c                                        ; $58f9: $69
	ld   [hl], h                                     ; $58fa: $74
	adc  c                                           ; $58fb: $89
	ld   h, l                                        ; $58fc: $65
	ld   d, d                                        ; $58fd: $52
	ld   a, h                                        ; $58fe: $7c
	ld   [hl], l                                     ; $58ff: $75
	ld   h, a                                        ; $5900: $67
	ld   e, d                                        ; $5901: $5a
	rst  $38                                         ; $5902: $ff
	rst  $38                                         ; $5903: $ff
	dec  c                                           ; $5904: $0d
	nop                                              ; $5905: $00
	ld   a, [bc]                                     ; $5906: $0a
	inc  e                                           ; $5907: $1c
	ld   bc, $0000                                   ; $5908: $01 $00 $00
	ld   bc, $599d                                   ; $590b: $01 $9d $59
	sbc  b                                           ; $590e: $98
	adc  h                                           ; $590f: $8c
	ld   h, l                                        ; $5910: $65
	ld   l, l                                        ; $5911: $6d
	sbc  a                                           ; $5912: $9f
	dec  c                                           ; $5913: $0d
	ld   [hl], l                                     ; $5914: $75
	ld   a, l                                        ; $5915: $7d
	sbc  [hl]                                        ; $5916: $9e
	ld   [bc], a                                     ; $5917: $02
	and  l                                           ; $5918: $a5
	inc  b                                           ; $5919: $04
	xor  d                                           ; $591a: $aa
	ld   a, h                                        ; $591b: $7c
	inc  bc                                          ; $591c: $03
	ld   l, l                                        ; $591d: $6d
	dec  b                                           ; $591e: $05
	add  hl, de                                      ; $591f: $19
	ld   a, l                                        ; $5920: $7d
	dec  c                                           ; $5921: $0d
	ld   e, b                                        ; $5922: $58
	inc  bc                                          ; $5923: $03
	and  a                                           ; $5924: $a7
	adc  l                                           ; $5925: $8d
	ld   a, c                                        ; $5926: $79
	ld   h, l                                        ; $5927: $65
	adc  h                                           ; $5928: $8c
	ld   h, l                                        ; $5929: $65
	sub  l                                           ; $592a: $95
	ld   d, h                                        ; $592b: $54
	sbc  a                                           ; $592c: $9f
	dec  c                                           ; $592d: $0d
	nop                                              ; $592e: $00
	ld   a, [bc]                                     ; $592f: $0a
	ld   bc, $9a6b                                   ; $5930: $01 $6b $9a
	ld   [hl], l                                     ; $5933: $75
	ld   a, l                                        ; $5934: $7d
	sbc  [hl]                                        ; $5935: $9e
	ld   e, b                                        ; $5936: $58
	inc  b                                           ; $5937: $04
	ld   c, $02                                      ; $5938: $0e $02
	jp   $9f79                                       ; $593a: $c3 $79 $9f


	dec  c                                           ; $593d: $0d
	nop                                              ; $593e: $00
	ld   a, [bc]                                     ; $593f: $0a
	dec  c                                           ; $5940: $0d
	nop                                              ; $5941: $00
	nop                                              ; $5942: $00
	rrca                                             ; $5943: $0f
	nop                                              ; $5944: $00
	ld   bc, $1e09                                   ; $5945: $01 $09 $1e
	ld   b, $fb                                      ; $5948: $06 $fb
	ld   [bc], a                                     ; $594a: $02
	inc  e                                           ; $594b: $1c
	ld   bc, $0000                                   ; $594c: $01 $00 $00
	ld   bc, $7978                                   ; $594f: $01 $78 $79
	ld   e, c                                        ; $5952: $59
	ld   h, d                                        ; $5953: $62
	inc  b                                           ; $5954: $04
	di                                               ; $5955: $f3
	ld   [hl], l                                     ; $5956: $75
	ld   h, a                                        ; $5957: $67
	ld   e, c                                        ; $5958: $59
	ld   sp, hl                                      ; $5959: $f9
	dec  c                                           ; $595a: $0d
	sub  b                                           ; $595b: $90
	ld   d, h                                        ; $595c: $54
	ld   h, a                                        ; $595d: $67
	ld   e, [hl]                                     ; $595e: $5e
	inc  bc                                          ; $595f: $03
	ld   l, l                                        ; $5960: $6d
	dec  b                                           ; $5961: $05
	add  hl, de                                      ; $5962: $19
	ld   a, h                                        ; $5963: $7c
	inc  bc                                          ; $5964: $03
	ld   l, a                                        ; $5965: $6f
	ld   [bc], a                                     ; $5966: $02
	xor  c                                           ; $5967: $a9
	ld   [hl], l                                     ; $5968: $75
	ld   h, a                                        ; $5969: $67
	sub  [hl]                                        ; $596a: $96
	sbc  a                                           ; $596b: $9f
	dec  c                                           ; $596c: $0d
	nop                                              ; $596d: $00
	ld   a, [bc]                                     ; $596e: $0a
	rrca                                             ; $596f: $0f
	nop                                              ; $5970: $00
	ld   bc, $7d01                                   ; $5971: $01 $01 $7d
	ld   d, d                                        ; $5974: $52
	rst  $38                                         ; $5975: $ff
	rst  $38                                         ; $5976: $ff
	ld   d, b                                        ; $5977: $50
	ld   a, h                                        ; $5978: $7c
	rst  $38                                         ; $5979: $ff
	rst  $38                                         ; $597a: $ff
	dec  c                                           ; $597b: $0d
	ld   [bc], a                                     ; $597c: $02
	and  l                                           ; $597d: $a5
	inc  b                                           ; $597e: $04
	xor  d                                           ; $597f: $aa
	ld   a, h                                        ; $5980: $7c
	inc  bc                                          ; $5981: $03
	ld   l, l                                        ; $5982: $6d
	dec  b                                           ; $5983: $05
	add  hl, de                                      ; $5984: $19
	and  b                                           ; $5985: $a0
	inc  bc                                          ; $5986: $03
	and  a                                           ; $5987: $a7
	adc  h                                           ; $5988: $8c
	ld   l, c                                        ; $5989: $69
	ld   [hl], h                                     ; $598a: $74
	dec  c                                           ; $598b: $0d
	inc  b                                           ; $598c: $04
	db   $e3                                         ; $598d: $e3
	ld   h, l                                        ; $598e: $65
	ld   d, d                                        ; $598f: $52
	ld   a, h                                        ; $5990: $7c
	ld   [hl], l                                     ; $5991: $75
	ld   h, a                                        ; $5992: $67
	ld   e, d                                        ; $5993: $5a
	rst  $38                                         ; $5994: $ff
	rst  $38                                         ; $5995: $ff
	dec  c                                           ; $5996: $0d
	nop                                              ; $5997: $00
	ld   a, [bc]                                     ; $5998: $0a
	inc  e                                           ; $5999: $1c
	ld   bc, $0404                                   ; $599a: $01 $04 $04
	ld   bc, $5252                                   ; $599d: $01 $52 $52
	ld   [hl], l                                     ; $59a0: $75
	ld   h, a                                        ; $59a1: $67
	ld   e, a                                        ; $59a2: $5f
	ld   [hl], a                                     ; $59a3: $77
	rst  $38                                         ; $59a4: $ff
	rst  $38                                         ; $59a5: $ff
	dec  c                                           ; $59a6: $0d
	ld   a, b                                        ; $59a7: $78
	ld   a, c                                        ; $59a8: $79
	ld   e, c                                        ; $59a9: $59
	inc  b                                           ; $59aa: $04
	di                                               ; $59ab: $f3
	ld   [bc], a                                     ; $59ac: $02
	jp   $9075                                       ; $59ad: $c3 $75 $90


	ld   sp, hl                                      ; $59b0: $f9
	dec  c                                           ; $59b1: $0d
	nop                                              ; $59b2: $00
	ld   a, [bc]                                     ; $59b3: $0a
	rrca                                             ; $59b4: $0f
	nop                                              ; $59b5: $00
	ld   bc, $5201                                   ; $59b6: $01 $01 $52
	ld   d, [hl]                                     ; $59b9: $56
	sbc  [hl]                                        ; $59ba: $9e
	halt                                             ; $59bb: $76
	ld   e, l                                        ; $59bc: $5d
	ld   a, c                                        ; $59bd: $79
	inc  b                                           ; $59be: $04
	di                                               ; $59bf: $f3
	ld   [bc], a                                     ; $59c0: $02
	jp   Jump_049_5276                               ; $59c1: $c3 $76 $52


	ld   d, h                                        ; $59c4: $54
	dec  c                                           ; $59c5: $0d
	sbc  l                                           ; $59c6: $9d
	ld   e, a                                        ; $59c7: $5f
	ld   [hl], l                                     ; $59c8: $75
	sub  b                                           ; $59c9: $90
	ld   a, b                                        ; $59ca: $78
	ld   d, d                                        ; $59cb: $52
	and  c                                           ; $59cc: $a1
	ld   [hl], l                                     ; $59cd: $75
	ld   h, a                                        ; $59ce: $67
	ld   e, d                                        ; $59cf: $5a
	rst  $38                                         ; $59d0: $ff
	rst  $38                                         ; $59d1: $ff
	dec  c                                           ; $59d2: $0d
	nop                                              ; $59d3: $00
	ld   a, [bc]                                     ; $59d4: $0a
	rrca                                             ; $59d5: $0f
	ld   bc, $1d04                                   ; $59d6: $01 $04 $1d
	ld   b, b                                        ; $59d9: $40
	ld   de, $1103                                   ; $59da: $11 $03 $11
	ld   bc, $2902                                   ; $59dd: $01 $02 $29
	nop                                              ; $59e0: $00
	ld   bc, $ffff                                   ; $59e1: $01 $ff $ff
	rst  $38                                         ; $59e4: $ff
	rst  $38                                         ; $59e5: $ff
	sbc  l                                           ; $59e6: $9d
	ld   e, c                                        ; $59e7: $59
	sbc  b                                           ; $59e8: $98
	adc  h                                           ; $59e9: $8c
	ld   h, l                                        ; $59ea: $65
	ld   l, l                                        ; $59eb: $6d
	sbc  a                                           ; $59ec: $9f
	dec  c                                           ; $59ed: $0d
	ld   [hl], l                                     ; $59ee: $75
	ld   a, l                                        ; $59ef: $7d
	sbc  [hl]                                        ; $59f0: $9e
	ld   [bc], a                                     ; $59f1: $02
	and  l                                           ; $59f2: $a5
	inc  b                                           ; $59f3: $04
	xor  d                                           ; $59f4: $aa
	ld   a, h                                        ; $59f5: $7c
	inc  bc                                          ; $59f6: $03
	ld   l, l                                        ; $59f7: $6d
	dec  b                                           ; $59f8: $05
	add  hl, de                                      ; $59f9: $19
	ld   a, l                                        ; $59fa: $7d
	ld   e, b                                        ; $59fb: $58
	inc  bc                                          ; $59fc: $03
	and  a                                           ; $59fd: $a7
	adc  l                                           ; $59fe: $8d
	dec  c                                           ; $59ff: $0d
	halt                                             ; $5a00: $76
	ld   d, d                                        ; $5a01: $52
	ld   d, h                                        ; $5a02: $54
	ld   h, c                                        ; $5a03: $61
	halt                                             ; $5a04: $76
	ld   a, c                                        ; $5a05: $79
	ld   h, l                                        ; $5a06: $65
	adc  h                                           ; $5a07: $8c
	ld   h, l                                        ; $5a08: $65
	sub  l                                           ; $5a09: $95
	ld   d, h                                        ; $5a0a: $54
	sbc  a                                           ; $5a0b: $9f
	dec  c                                           ; $5a0c: $0d
	nop                                              ; $5a0d: $00
	ld   a, [bc]                                     ; $5a0e: $0a
	ld   bc, $9a6b                                   ; $5a0f: $01 $6b $9a
	ld   [hl], l                                     ; $5a12: $75
	ld   a, l                                        ; $5a13: $7d
	rst  $38                                         ; $5a14: $ff
	rst  $38                                         ; $5a15: $ff
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
	ld   b, $fb                                      ; $5a22: $06 $fb
	ld   [bc], a                                     ; $5a24: $02
	nop                                              ; $5a25: $00
	ld   c, $02                                      ; $5a26: $0e $02
	rrca                                             ; $5a28: $0f
	nop                                              ; $5a29: $00
	ld   bc, $0702                                   ; $5a2a: $01 $02 $07
	ld   b, [hl]                                     ; $5a2d: $46
	nop                                              ; $5a2e: $00
	inc  b                                           ; $5a2f: $04
	add  b                                           ; $5a30: $80
	add  $01                                         ; $5a31: $c6 $01
	rst  $38                                         ; $5a33: $ff
	jr   nz, jr_049_5a36                             ; $5a34: $20 $00

jr_049_5a36:
	ld   bc, $5483                                   ; $5a36: $01 $83 $54
	rst  $38                                         ; $5a39: $ff
	rst  $38                                         ; $5a3a: $ff
	ld   h, c                                        ; $5a3b: $61
	sbc  d                                           ; $5a3c: $9a
	ld   [hl], l                                     ; $5a3d: $75
	ld   [bc], a                                     ; $5a3e: $02
	and  l                                           ; $5a3f: $a5
	inc  b                                           ; $5a40: $04
	xor  d                                           ; $5a41: $aa
	ld   a, h                                        ; $5a42: $7c
	inc  bc                                          ; $5a43: $03
	ld   l, l                                        ; $5a44: $6d
	dec  b                                           ; $5a45: $05
	add  hl, de                                      ; $5a46: $19
	ld   a, l                                        ; $5a47: $7d
	dec  c                                           ; $5a48: $0d
	ld   e, b                                        ; $5a49: $58
	sbc  l                                           ; $5a4a: $9d
	sbc  b                                           ; $5a4b: $98
	ld   l, [hl]                                     ; $5a4c: $6e
	ld   a, b                                        ; $5a4d: $78
	rst  $38                                         ; $5a4e: $ff
	rst  $38                                         ; $5a4f: $ff
	dec  c                                           ; $5a50: $0d
	nop                                              ; $5a51: $00
	ld   a, [bc]                                     ; $5a52: $0a
	ld   bc, $7650                                   ; $5a53: $01 $50 $76
	ld   a, l                                        ; $5a56: $7d
	sbc  [hl]                                        ; $5a57: $9e
	ld   [bc], a                                     ; $5a58: $02
	sub  l                                           ; $5a59: $95
	ld   [bc], a                                     ; $5a5a: $02
	sub  e                                           ; $5a5b: $93
	sbc  b                                           ; $5a5c: $98
	and  b                                           ; $5a5d: $a0
	ld   h, l                                        ; $5a5e: $65
	ld   [hl], h                                     ; $5a5f: $74
	inc  b                                           ; $5a60: $04
	ld   b, d                                        ; $5a61: $42
	sbc  c                                           ; $5a62: $99
	dec  c                                           ; $5a63: $0d
	ld   l, [hl]                                     ; $5a64: $6e
	ld   e, a                                        ; $5a65: $5f
	ld   e, c                                        ; $5a66: $59
	sbc  a                                           ; $5a67: $9f
	dec  c                                           ; $5a68: $0d
	nop                                              ; $5a69: $00
	ld   a, [bc]                                     ; $5a6a: $0a
	nop                                              ; $5a6b: $00
	ld   bc, $6803                                   ; $5a6c: $01 $03 $68
	ld   a, l                                        ; $5a6f: $7d
	rst  $38                                         ; $5a70: $ff
	rst  $38                                         ; $5a71: $ff
	halt                                             ; $5a72: $76
	sbc  [hl]                                        ; $5a73: $9e
	ld   [bc], a                                     ; $5a74: $02
	sub  l                                           ; $5a75: $95
	ld   [bc], a                                     ; $5a76: $02
	sub  e                                           ; $5a77: $93
	sbc  b                                           ; $5a78: $98
	ld   l, [hl]                                     ; $5a79: $6e
	ld   a, b                                        ; $5a7a: $78
	sbc  a                                           ; $5a7b: $9f
	dec  c                                           ; $5a7c: $0d
	nop                                              ; $5a7d: $00
	ld   a, [bc]                                     ; $5a7e: $0a
	nop                                              ; $5a7f: $00
	nop                                              ; $5a80: $00
	inc  bc                                          ; $5a81: $03
	dec  d                                           ; $5a82: $15
	ld   bc, $2576                                   ; $5a83: $01 $76 $25
	inc  bc                                          ; $5a86: $03
	ld   h, e                                        ; $5a87: $63
	ld   [bc], a                                     ; $5a88: $02
	nop                                              ; $5a89: $00
	ld   hl, $001c                                   ; $5a8a: $21 $1c $00
	ld   c, $02                                      ; $5a8d: $0e $02
	rrca                                             ; $5a8f: $0f
	nop                                              ; $5a90: $00
	ld   bc, $0102                                   ; $5a91: $01 $02 $01
	ld   l, e                                        ; $5a94: $6b
	sbc  e                                           ; $5a95: $9b
	ld   l, e                                        ; $5a96: $6b
	sbc  e                                           ; $5a97: $9b
	sbc  [hl]                                        ; $5a98: $9e
	ld   [bc], a                                     ; $5a99: $02
	sub  l                                           ; $5a9a: $95
	ld   [bc], a                                     ; $5a9b: $02
	sub  e                                           ; $5a9c: $93
	sbc  b                                           ; $5a9d: $98
	ld   a, c                                        ; $5a9e: $79
	ld   [bc], a                                     ; $5a9f: $02
	ld   a, a                                        ; $5aa0: $7f
	ld   e, l                                        ; $5aa1: $5d
	dec  c                                           ; $5aa2: $0d
	inc  bc                                          ; $5aa3: $03
	ld   l, a                                        ; $5aa4: $6f
	ld   [bc], a                                     ; $5aa5: $02
	xor  c                                           ; $5aa6: $a9
	ld   l, [hl]                                     ; $5aa7: $6e
	ld   a, b                                        ; $5aa8: $78
	rst  $38                                         ; $5aa9: $ff
	rst  $38                                         ; $5aaa: $ff
	dec  c                                           ; $5aab: $0d
	nop                                              ; $5aac: $00
	ld   a, [bc]                                     ; $5aad: $0a
	inc  d                                           ; $5aae: $14
	ld   b, $01                                      ; $5aaf: $06 $01
	rrca                                             ; $5ab1: $0f
	dec  b                                           ; $5ab2: $05
	ld   bc, $0801                                   ; $5ab3: $01 $01 $08
	nop                                              ; $5ab6: $00
	ld   a, l                                        ; $5ab7: $7d
	and  c                                           ; $5ab8: $a1
	dec  c                                           ; $5ab9: $0d
	ld   l, a                                        ; $5aba: $6f
	sub  l                                           ; $5abb: $95
	ld   [hl], c                                     ; $5abc: $71
	halt                                             ; $5abd: $76
	xor  c                                           ; $5abe: $a9
	xor  c                                           ; $5abf: $a9
	ld   e, c                                        ; $5ac0: $59
	ld   sp, hl                                      ; $5ac1: $f9
	dec  c                                           ; $5ac2: $0d
	nop                                              ; $5ac3: $00
	ld   a, [bc]                                     ; $5ac4: $0a
	rrca                                             ; $5ac5: $0f
	nop                                              ; $5ac6: $00
	ld   bc, $7d01                                   ; $5ac7: $01 $01 $7d
	ld   d, d                                        ; $5aca: $52
	sbc  [hl]                                        ; $5acb: $9e
	ld   [hl], a                                     ; $5acc: $77
	ld   d, h                                        ; $5acd: $54
	ld   l, h                                        ; $5ace: $6c
	sbc  a                                           ; $5acf: $9f
	dec  c                                           ; $5ad0: $0d
	nop                                              ; $5ad1: $00
	ld   a, [bc]                                     ; $5ad2: $0a
	inc  d                                           ; $5ad3: $14
	ld   a, [bc]                                     ; $5ad4: $0a
	ld   bc, $051c                                   ; $5ad5: $01 $1c $05
	nop                                              ; $5ad8: $00
	nop                                              ; $5ad9: $00
	ld   bc, $956f                                   ; $5ada: $01 $6f $95
	ld   [hl], c                                     ; $5add: $71
	halt                                             ; $5ade: $76
	inc  bc                                          ; $5adf: $03
	ld   l, e                                        ; $5ae0: $6b
	inc  b                                           ; $5ae1: $04
	ld   [de], a                                     ; $5ae2: $12
	ld   [hl], c                                     ; $5ae3: $71
	ld   [hl], h                                     ; $5ae4: $74
	inc  b                                           ; $5ae5: $04
	db   $e3                                         ; $5ae6: $e3
	ld   h, l                                        ; $5ae7: $65
	ld   d, d                                        ; $5ae8: $52
	ld   h, c                                        ; $5ae9: $61
	halt                                             ; $5aea: $76
	dec  c                                           ; $5aeb: $0d
	ld   d, b                                        ; $5aec: $50
	and  c                                           ; $5aed: $a1
	ld   a, e                                        ; $5aee: $7b
	and  c                                           ; $5aef: $a1
	ld   e, a                                        ; $5af0: $5f
	ld   [hl], a                                     ; $5af1: $77
	rst  $38                                         ; $5af2: $ff
	rst  $38                                         ; $5af3: $ff
	sbc  a                                           ; $5af4: $9f
	dec  c                                           ; $5af5: $0d
	nop                                              ; $5af6: $00
	ld   a, [bc]                                     ; $5af7: $0a
	add  hl, de                                      ; $5af8: $19
	dec  b                                           ; $5af9: $05
	ld   [bc], a                                     ; $5afa: $02
	ld   d, d                                        ; $5afb: $52
	ld   d, d                                        ; $5afc: $52
	ld   [hl], l                                     ; $5afd: $75
	ld   h, a                                        ; $5afe: $67
	sub  [hl]                                        ; $5aff: $96
	nop                                              ; $5b00: $00
	nop                                              ; $5b01: $00
	ld   [bc], a                                     ; $5b02: $02
	and  l                                           ; $5b03: $a5
	ld   a, l                                        ; $5b04: $7d
	ld   l, a                                        ; $5b05: $6f
	sub  l                                           ; $5b06: $95
	ld   [hl], c                                     ; $5b07: $71
	halt                                             ; $5b08: $76
	rst  $38                                         ; $5b09: $ff
	nop                                              ; $5b0a: $00
	ld   bc, $9407                                   ; $5b0b: $01 $07 $94
	nop                                              ; $5b0e: $00
	ld   [bc], a                                     ; $5b0f: $02
	inc  bc                                          ; $5b10: $03
	ld   bc, $2000                                   ; $5b11: $01 $00 $20
	nop                                              ; $5b14: $00
	rlca                                             ; $5b15: $07
	db   $db                                         ; $5b16: $db
	nop                                              ; $5b17: $00
	ld   [bc], a                                     ; $5b18: $02
	inc  bc                                          ; $5b19: $03
	ld   bc, $2001                                   ; $5b1a: $01 $01 $20
	nop                                              ; $5b1d: $00
	ld   b, $3e                                      ; $5b1e: $06 $3e
	ld   bc, $000f                                   ; $5b20: $01 $0f $00
	ld   bc, $5201                                   ; $5b23: $01 $01 $52
	ld   d, d                                        ; $5b26: $52
	ld   [hl], l                                     ; $5b27: $75
	ld   h, a                                        ; $5b28: $67
	sub  [hl]                                        ; $5b29: $96
	sbc  a                                           ; $5b2a: $9f
	dec  c                                           ; $5b2b: $0d
	inc  b                                           ; $5b2c: $04
	ld   l, l                                        ; $5b2d: $6d
	ld   [hl], l                                     ; $5b2e: $75
	ld   e, b                                        ; $5b2f: $58
	inc  b                                           ; $5b30: $04
	db   $ec                                         ; $5b31: $ec
	ld   a, c                                        ; $5b32: $79
	dec  b                                           ; $5b33: $05
	ld   d, $74                                      ; $5b34: $16 $74
	sbc  c                                           ; $5b36: $99
	ld   a, b                                        ; $5b37: $78
	sub  a                                           ; $5b38: $97
	dec  c                                           ; $5b39: $0d
	ld   e, b                                        ; $5b3a: $58
	sub  d                                           ; $5b3b: $92
	ld   h, a                                        ; $5b3c: $67
	ld   d, d                                        ; $5b3d: $52
	ld   h, d                                        ; $5b3e: $62
	inc  b                                           ; $5b3f: $04
	di                                               ; $5b40: $f3
	ld   [hl], l                                     ; $5b41: $75
	ld   h, a                                        ; $5b42: $67
	sub  [hl]                                        ; $5b43: $96
	sbc  a                                           ; $5b44: $9f
	dec  c                                           ; $5b45: $0d
	nop                                              ; $5b46: $00
	ld   a, [bc]                                     ; $5b47: $0a
	inc  e                                           ; $5b48: $1c
	dec  b                                           ; $5b49: $05
	ld   bc, $1d01                                   ; $5b4a: $01 $01 $1d
	ld   b, b                                        ; $5b4d: $40
	dec  d                                           ; $5b4e: $15
	inc  bc                                          ; $5b4f: $03
	dec  d                                           ; $5b50: $15
	ld   bc, $2801                                   ; $5b51: $01 $01 $28
	nop                                              ; $5b54: $00
	ld   bc, $546b                                   ; $5b55: $01 $6b $54
	ld   e, c                                        ; $5b58: $59
	ld   a, [$500d]                                  ; $5b59: $fa $0d $50
	sbc  b                                           ; $5b5c: $98
	ld   e, d                                        ; $5b5d: $5a
	halt                                             ; $5b5e: $76
	ld   d, h                                        ; $5b5f: $54
	ld   a, b                                        ; $5b60: $78
	sbc  a                                           ; $5b61: $9f
	dec  c                                           ; $5b62: $0d
	nop                                              ; $5b63: $00
	ld   a, [bc]                                     ; $5b64: $0a
	ld   b, $ad                                      ; $5b65: $06 $ad
	ld   bc, $000f                                   ; $5b67: $01 $0f $00
	ld   bc, $6701                                   ; $5b6a: $01 $01 $67
	adc  l                                           ; $5b6d: $8d
	adc  h                                           ; $5b6e: $8c
	ld   l, c                                        ; $5b6f: $69
	and  c                                           ; $5b70: $a1
	sbc  [hl]                                        ; $5b71: $9e
	ld   l, a                                        ; $5b72: $6f
	sub  l                                           ; $5b73: $95
	ld   [hl], c                                     ; $5b74: $71
	halt                                             ; $5b75: $76
	dec  b                                           ; $5b76: $05
	jr   z, jr_049_5bd5                              ; $5b77: $28 $5c

	ld   a, h                                        ; $5b79: $7c
	dec  c                                           ; $5b7a: $0d
	inc  b                                           ; $5b7b: $04
	di                                               ; $5b7c: $f3
	ld   e, d                                        ; $5b7d: $5a
	ld   a, l                                        ; $5b7e: $7d
	ld   d, d                                        ; $5b7f: $52
	ld   [hl], c                                     ; $5b80: $71
	ld   l, a                                        ; $5b81: $6f
	sub  c                                           ; $5b82: $91
	ld   [hl], c                                     ; $5b83: $71
	ld   [hl], h                                     ; $5b84: $74
	rst  $38                                         ; $5b85: $ff
	rst  $38                                         ; $5b86: $ff
	dec  c                                           ; $5b87: $0d
	nop                                              ; $5b88: $00
	ld   a, [bc]                                     ; $5b89: $0a
	inc  e                                           ; $5b8a: $1c
	dec  b                                           ; $5b8b: $05
	ld   [bc], a                                     ; $5b8c: $02
	ld   [bc], a                                     ; $5b8d: $02
	dec  e                                           ; $5b8e: $1d
	ld   b, b                                        ; $5b8f: $40
	dec  d                                           ; $5b90: $15
	inc  bc                                          ; $5b91: $03
	dec  d                                           ; $5b92: $15
	ld   bc, $2901                                   ; $5b93: $01 $01 $29
	nop                                              ; $5b96: $00
	ld   bc, $5489                                   ; $5b97: $01 $89 $54
	ld   e, c                                        ; $5b9a: $59
	rst  $38                                         ; $5b9b: $ff
	rst  $38                                         ; $5b9c: $ff
	sbc  a                                           ; $5b9d: $9f
	dec  c                                           ; $5b9e: $0d
	ld   l, e                                        ; $5b9f: $6b
	sbc  d                                           ; $5ba0: $9a
	sub  d                                           ; $5ba1: $92
	ld   [hl], c                                     ; $5ba2: $71
	ld   l, l                                        ; $5ba3: $6d
	sub  a                                           ; $5ba4: $97
	sbc  [hl]                                        ; $5ba5: $9e
	dec  c                                           ; $5ba6: $0d
	adc  h                                           ; $5ba7: $8c
	ld   d, b                                        ; $5ba8: $50
	sbc  [hl]                                        ; $5ba9: $9e
	ld   h, l                                        ; $5baa: $65
	sub  c                                           ; $5bab: $91
	ei                                               ; $5bac: $fb
	ld   a, b                                        ; $5bad: $78
	ld   d, d                                        ; $5bae: $52
	ld   e, c                                        ; $5baf: $59
	rst  $38                                         ; $5bb0: $ff
	sbc  a                                           ; $5bb1: $9f
	dec  c                                           ; $5bb2: $0d
	nop                                              ; $5bb3: $00
	ld   a, [bc]                                     ; $5bb4: $0a
	ld   bc, $7889                                   ; $5bb5: $01 $89 $78
	sbc  [hl]                                        ; $5bb8: $9e
	adc  h                                           ; $5bb9: $8c
	ld   l, l                                        ; $5bba: $6d
	ld   a, b                                        ; $5bbb: $78
	sbc  a                                           ; $5bbc: $9f
	dec  c                                           ; $5bbd: $0d
	nop                                              ; $5bbe: $00
	ld   a, [bc]                                     ; $5bbf: $0a
	dec  c                                           ; $5bc0: $0d
	nop                                              ; $5bc1: $00
	nop                                              ; $5bc2: $00
	rrca                                             ; $5bc3: $0f
	nop                                              ; $5bc4: $00
	ld   bc, $1e09                                   ; $5bc5: $01 $09 $1e
	add  hl, hl                                      ; $5bc8: $29
	nop                                              ; $5bc9: $00
	nop                                              ; $5bca: $00
	inc  e                                           ; $5bcb: $1c
	dec  b                                           ; $5bcc: $05
	ld   [bc], a                                     ; $5bcd: $02
	ld   [bc], a                                     ; $5bce: $02
	ld   bc, $7877                                   ; $5bcf: $01 $77 $78
	ld   d, d                                        ; $5bd2: $52
	ld   h, l                                        ; $5bd3: $65
	ld   l, l                                        ; $5bd4: $6d

jr_049_5bd5:
	and  c                                           ; $5bd5: $a1
	sub  d                                           ; $5bd6: $92
	ld   sp, hl                                      ; $5bd7: $f9
	dec  c                                           ; $5bd8: $0d
	ld   l, e                                        ; $5bd9: $6b
	ld   d, h                                        ; $5bda: $54
	ld   e, c                                        ; $5bdb: $59
	rst  $38                                         ; $5bdc: $ff
	sbc  [hl]                                        ; $5bdd: $9e
	inc  b                                           ; $5bde: $04
	xor  l                                           ; $5bdf: $ad
	ld   [bc], a                                     ; $5be0: $02
	xor  c                                           ; $5be1: $a9
	ld   a, h                                        ; $5be2: $7c
	inc  bc                                          ; $5be3: $03
	ld   l, l                                        ; $5be4: $6d
	dec  b                                           ; $5be5: $05
	add  hl, de                                      ; $5be6: $19
	ld   [hl], l                                     ; $5be7: $75
	dec  c                                           ; $5be8: $0d
	inc  b                                           ; $5be9: $04
	ld   a, e                                        ; $5bea: $7b
	sbc  d                                           ; $5beb: $9a
	halt                                             ; $5bec: $76
	and  c                                           ; $5bed: $a1
	ld   a, e                                        ; $5bee: $7b
	and  c                                           ; $5bef: $a1
	ld   a, b                                        ; $5bf0: $78
	sbc  a                                           ; $5bf1: $9f
	dec  c                                           ; $5bf2: $0d
	nop                                              ; $5bf3: $00
	ld   a, [bc]                                     ; $5bf4: $0a
	dec  e                                           ; $5bf5: $1d
	ld   b, b                                        ; $5bf6: $40
	dec  d                                           ; $5bf7: $15
	inc  bc                                          ; $5bf8: $03
	dec  d                                           ; $5bf9: $15
	ld   bc, $2902                                   ; $5bfa: $01 $02 $29
	nop                                              ; $5bfd: $00
	ld   bc, $a178                                   ; $5bfe: $01 $78 $a1
	sub  d                                           ; $5c01: $92
	sbc  [hl]                                        ; $5c02: $9e
	ld   l, [hl]                                     ; $5c03: $6e
	sub  a                                           ; $5c04: $97
	ld   h, l                                        ; $5c05: $65
	ld   a, b                                        ; $5c06: $78
	ld   d, d                                        ; $5c07: $52
	ld   a, b                                        ; $5c08: $78
	db   $fc                                         ; $5c09: $fc
	sbc  a                                           ; $5c0a: $9f
	dec  c                                           ; $5c0b: $0d
	and  c                                           ; $5c0c: $a1
	ld   [hl], l                                     ; $5c0d: $75
	sub  b                                           ; $5c0e: $90
	adc  h                                           ; $5c0f: $8c
	ld   d, b                                        ; $5c10: $50
	sbc  [hl]                                        ; $5c11: $9e
	ld   h, l                                        ; $5c12: $65
	sub  c                                           ; $5c13: $91
	ei                                               ; $5c14: $fb
	ld   a, b                                        ; $5c15: $78
	ld   d, d                                        ; $5c16: $52
	ld   e, c                                        ; $5c17: $59
	rst  $38                                         ; $5c18: $ff
	sbc  a                                           ; $5c19: $9f
	dec  c                                           ; $5c1a: $0d
	adc  c                                           ; $5c1b: $89
	ld   a, b                                        ; $5c1c: $78
	sbc  [hl]                                        ; $5c1d: $9e
	adc  h                                           ; $5c1e: $8c
	ld   l, l                                        ; $5c1f: $6d
	ld   [bc], a                                     ; $5c20: $02
	and  l                                           ; $5c21: $a5
	inc  b                                           ; $5c22: $04
	add  hl, hl                                      ; $5c23: $29
	inc  bc                                          ; $5c24: $03
	ld   l, e                                        ; $5c25: $6b
	inc  b                                           ; $5c26: $04
	ld   [de], a                                     ; $5c27: $12
	ld   [hl], c                                     ; $5c28: $71
	ld   [hl], h                                     ; $5c29: $74
	ld   a, b                                        ; $5c2a: $78
	sbc  a                                           ; $5c2b: $9f
	dec  c                                           ; $5c2c: $0d
	nop                                              ; $5c2d: $00
	ld   a, [bc]                                     ; $5c2e: $0a
	dec  c                                           ; $5c2f: $0d
	nop                                              ; $5c30: $00
	nop                                              ; $5c31: $00
	rrca                                             ; $5c32: $0f
	nop                                              ; $5c33: $00
	ld   bc, $1e09                                   ; $5c34: $01 $09 $1e
	add  hl, hl                                      ; $5c37: $29
	nop                                              ; $5c38: $00
	nop                                              ; $5c39: $00
	inc  e                                           ; $5c3a: $1c
	dec  b                                           ; $5c3b: $05
	nop                                              ; $5c3c: $00
	nop                                              ; $5c3d: $00
	ld   bc, $8b03                                   ; $5c3e: $01 $03 $8b
	ld   a, l                                        ; $5c41: $7d
	ld   a, b                                        ; $5c42: $78
	sbc  [hl]                                        ; $5c43: $9e
	ld   [$7d00], sp                                 ; $5c44: $08 $00 $7d
	and  c                                           ; $5c47: $a1
	rst  $38                                         ; $5c48: $ff
	dec  c                                           ; $5c49: $0d
	nop                                              ; $5c4a: $00
	ld   a, [bc]                                     ; $5c4b: $0a
	inc  d                                           ; $5c4c: $14
	ld   b, $01                                      ; $5c4d: $06 $01
	rrca                                             ; $5c4f: $0f
	ld   bc, $0100                                   ; $5c50: $01 $00 $01
	ld   h, a                                        ; $5c53: $67
	adc  l                                           ; $5c54: $8d
	adc  h                                           ; $5c55: $8c
	ld   l, c                                        ; $5c56: $69
	and  c                                           ; $5c57: $a1
	sbc  a                                           ; $5c58: $9f
	ld   [$6300], sp                                 ; $5c59: $08 $00 $63
	and  c                                           ; $5c5c: $a1
	sbc  a                                           ; $5c5d: $9f
	dec  c                                           ; $5c5e: $0d
	ld   h, e                                        ; $5c5f: $63
	ld   e, l                                        ; $5c60: $5d
	sub  a                                           ; $5c61: $97
	ld   [hl], l                                     ; $5c62: $75
	ld   h, a                                        ; $5c63: $67
	sbc  a                                           ; $5c64: $9f
	ld   l, a                                        ; $5c65: $6f
	sub  l                                           ; $5c66: $95
	ld   [hl], c                                     ; $5c67: $71
	halt                                             ; $5c68: $76
	ld   e, b                                        ; $5c69: $58
	ld   l, l                                        ; $5c6a: $6d
	ld   l, b                                        ; $5c6b: $68
	ld   a, e                                        ; $5c6c: $7b
	dec  c                                           ; $5c6d: $0d
	ld   h, l                                        ; $5c6e: $65
	ld   l, l                                        ; $5c6f: $6d
	ld   d, d                                        ; $5c70: $52
	ld   h, c                                        ; $5c71: $61
	halt                                             ; $5c72: $76
	ld   e, d                                        ; $5c73: $5a
	ld   d, b                                        ; $5c74: $50
	sbc  c                                           ; $5c75: $99
	and  c                                           ; $5c76: $a1
	ld   [hl], l                                     ; $5c77: $75
	ld   h, a                                        ; $5c78: $67
	ld   e, a                                        ; $5c79: $5f
	ld   [hl], a                                     ; $5c7a: $77
	sbc  a                                           ; $5c7b: $9f
	dec  c                                           ; $5c7c: $0d
	nop                                              ; $5c7d: $00
	ld   a, [bc]                                     ; $5c7e: $0a
	inc  e                                           ; $5c7f: $1c
	dec  b                                           ; $5c80: $05
	inc  bc                                          ; $5c81: $03
	inc  bc                                          ; $5c82: $03
	ld   bc, $5950                                   ; $5c83: $01 $50 $59
	and  c                                           ; $5c86: $a1
	ld   a, [$0810]                                  ; $5c87: $fa $10 $08
	nop                                              ; $5c8a: $00
	ld   a, l                                        ; $5c8b: $7d
	and  c                                           ; $5c8c: $a1
	sbc  a                                           ; $5c8d: $9f
	dec  c                                           ; $5c8e: $0d
	and  a                                           ; $5c8f: $a7
	jp   nz, Jump_049_615a                           ; $5c90: $c2 $5a $61

	ld   h, c                                        ; $5c93: $61
	ld   a, c                                        ; $5c94: $79
	ld   d, d                                        ; $5c95: $52
	sbc  c                                           ; $5c96: $99
	ld   h, c                                        ; $5c97: $61
	halt                                             ; $5c98: $76
	ld   a, l                                        ; $5c99: $7d
	sbc  [hl]                                        ; $5c9a: $9e
	dec  c                                           ; $5c9b: $0d
	ld   a, b                                        ; $5c9c: $78
	ld   d, d                                        ; $5c9d: $52
	ld   h, l                                        ; $5c9e: $65
	sub  l                                           ; $5c9f: $95
	ld   a, c                                        ; $5ca0: $79
	ld   h, l                                        ; $5ca1: $65
	ld   [hl], h                                     ; $5ca2: $74
	sub  d                                           ; $5ca3: $92
	sbc  a                                           ; $5ca4: $9f
	dec  c                                           ; $5ca5: $0d
	nop                                              ; $5ca6: $00
	ld   a, [bc]                                     ; $5ca7: $0a
	dec  c                                           ; $5ca8: $0d
	nop                                              ; $5ca9: $00
	nop                                              ; $5caa: $00
	rrca                                             ; $5cab: $0f
	nop                                              ; $5cac: $00
	ld   bc, $ff01                                   ; $5cad: $01 $01 $ff
	rst  $38                                         ; $5cb0: $ff
	rst  $38                                         ; $5cb1: $ff
	rst  $38                                         ; $5cb2: $ff
	rst  $38                                         ; $5cb3: $ff
	dec  c                                           ; $5cb4: $0d
	ld   e, b                                        ; $5cb5: $58
	inc  b                                           ; $5cb6: $04
	rla                                              ; $5cb7: $17
	ld   l, l                                        ; $5cb8: $6d
	ld   l, c                                        ; $5cb9: $69
	ld   h, l                                        ; $5cba: $65
	adc  h                                           ; $5cbb: $8c
	ld   h, l                                        ; $5cbc: $65
	ld   l, l                                        ; $5cbd: $6d
	sbc  [hl]                                        ; $5cbe: $9e
	dec  c                                           ; $5cbf: $0d
	nop                                              ; $5cc0: $00
	inc  d                                           ; $5cc1: $14
	ld   a, [bc]                                     ; $5cc2: $0a
	ld   bc, $6301                                   ; $5cc3: $01 $01 $63
	ld   e, l                                        ; $5cc6: $5d
	sub  a                                           ; $5cc7: $97
	ld   h, e                                        ; $5cc8: $63
	and  c                                           ; $5cc9: $a1
	sbc  a                                           ; $5cca: $9f
	ld   [hl], a                                     ; $5ccb: $77
	ld   d, h                                        ; $5ccc: $54
	ld   h, l                                        ; $5ccd: $65
	adc  h                                           ; $5cce: $8c
	ld   h, l                                        ; $5ccf: $65
	ld   l, l                                        ; $5cd0: $6d
	ld   sp, hl                                      ; $5cd1: $f9
	dec  c                                           ; $5cd2: $0d
	nop                                              ; $5cd3: $00
	ld   a, [bc]                                     ; $5cd4: $0a
	inc  e                                           ; $5cd5: $1c
	ld   bc, $0000                                   ; $5cd6: $01 $00 $00
	ld   bc, $ef04                                   ; $5cd9: $01 $04 $ef
	ld   e, b                                        ; $5cdc: $58
	ld   l, e                                        ; $5cdd: $6b
	ld   e, l                                        ; $5cde: $5d
	ld   a, c                                        ; $5cdf: $79
	ld   h, a                                        ; $5ce0: $67
	adc  l                                           ; $5ce1: $8d
	adc  h                                           ; $5ce2: $8c
	ld   l, c                                        ; $5ce3: $69
	and  c                                           ; $5ce4: $a1
	sbc  a                                           ; $5ce5: $9f
	dec  c                                           ; $5ce6: $0d
	ld   d, b                                        ; $5ce7: $50
	ld   a, h                                        ; $5ce8: $7c
	rst  $38                                         ; $5ce9: $ff
	rst  $38                                         ; $5cea: $ff
	dec  c                                           ; $5ceb: $0d
	ld   [bc], a                                     ; $5cec: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ced: $cf
	dec  b                                           ; $5cee: $05
	ld   a, [de]                                     ; $5cef: $1a
	sbc  [hl]                                        ; $5cf0: $9e
	ld   [bc], a                                     ; $5cf1: $02
	sub  l                                           ; $5cf2: $95
	ld   e, c                                        ; $5cf3: $59
	ld   e, a                                        ; $5cf4: $5f
	adc  h                                           ; $5cf5: $8c
	ld   l, c                                        ; $5cf6: $69
	and  c                                           ; $5cf7: $a1
	ld   [hl], l                                     ; $5cf8: $75
	ld   h, l                                        ; $5cf9: $65
	ld   l, l                                        ; $5cfa: $6d
	ld   e, c                                        ; $5cfb: $59
	ld   sp, hl                                      ; $5cfc: $f9
	dec  c                                           ; $5cfd: $0d
	nop                                              ; $5cfe: $00
	ld   a, [bc]                                     ; $5cff: $0a
	add  hl, de                                      ; $5d00: $19
	dec  b                                           ; $5d01: $05
	ld   [bc], a                                     ; $5d02: $02
	ld   a, l                                        ; $5d03: $7d
	ld   d, d                                        ; $5d04: $52
	ld   a, l                                        ; $5d05: $7d
	ld   d, d                                        ; $5d06: $52
	nop                                              ; $5d07: $00
	nop                                              ; $5d08: $00
	ld   d, d                                        ; $5d09: $52
	ld   d, d                                        ; $5d0a: $52
	ld   d, [hl]                                     ; $5d0b: $56
	nop                                              ; $5d0c: $00
	ld   bc, $9607                                   ; $5d0d: $01 $07 $96
	ld   [bc], a                                     ; $5d10: $02
	ld   [bc], a                                     ; $5d11: $02
	inc  bc                                          ; $5d12: $03
	ld   bc, $2000                                   ; $5d13: $01 $00 $20
	nop                                              ; $5d16: $00
	rlca                                             ; $5d17: $07
	add  d                                           ; $5d18: $82
	inc  bc                                          ; $5d19: $03
	ld   [bc], a                                     ; $5d1a: $02
	inc  bc                                          ; $5d1b: $03
	ld   bc, $2001                                   ; $5d1c: $01 $01 $20
	nop                                              ; $5d1f: $00
	ld   b, $5b                                      ; $5d20: $06 $5b
	inc  b                                           ; $5d22: $04
	rrca                                             ; $5d23: $0f
	nop                                              ; $5d24: $00
	ld   bc, $7d01                                   ; $5d25: $01 $01 $7d
	ld   d, d                                        ; $5d28: $52
	ld   a, l                                        ; $5d29: $7d
	ld   d, d                                        ; $5d2a: $52
	sbc  [hl]                                        ; $5d2b: $9e
	ld   h, e                                        ; $5d2c: $63
	ld   e, l                                        ; $5d2d: $5d
	sub  a                                           ; $5d2e: $97
	ld   h, e                                        ; $5d2f: $63
	and  c                                           ; $5d30: $a1
	sbc  a                                           ; $5d31: $9f
	dec  c                                           ; $5d32: $0d
	ld   d, d                                        ; $5d33: $52
	adc  h                                           ; $5d34: $8c
	ld   h, a                                        ; $5d35: $67
	sub  [hl]                                        ; $5d36: $96
	sbc  [hl]                                        ; $5d37: $9e
	ld   [bc], a                                     ; $5d38: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d39: $cf
	dec  b                                           ; $5d3a: $05
	ld   a, [de]                                     ; $5d3b: $1a
	ld   h, e                                        ; $5d3c: $63
	and  c                                           ; $5d3d: $a1
	sbc  a                                           ; $5d3e: $9f
	dec  c                                           ; $5d3f: $0d
	nop                                              ; $5d40: $00
	ld   a, [bc]                                     ; $5d41: $0a
	inc  e                                           ; $5d42: $1c
	ld   bc, $0202                                   ; $5d43: $01 $02 $02
	ld   bc, $cf02                                   ; $5d46: $01 $02 $cf
	dec  b                                           ; $5d49: $05
	ld   a, [de]                                     ; $5d4a: $1a
	ld   a, [$020d]                                  ; $5d4b: $fa $0d $02
	sub  l                                           ; $5d4e: $95
	ld   [hl], d                                     ; $5d4f: $72
	ld   e, a                                        ; $5d50: $5f
	ld   l, l                                        ; $5d51: $6d
	sbc  l                                           ; $5d52: $9d
	sub  [hl]                                        ; $5d53: $96
	sbc  a                                           ; $5d54: $9f
	dec  c                                           ; $5d55: $0d
	nop                                              ; $5d56: $00
	ld   a, [bc]                                     ; $5d57: $0a
	rrca                                             ; $5d58: $0f
	dec  b                                           ; $5d59: $05
	ld   [bc], a                                     ; $5d5a: $02
	dec  e                                           ; $5d5b: $1d
	ld   b, b                                        ; $5d5c: $40
	dec  d                                           ; $5d5d: $15
	inc  bc                                          ; $5d5e: $03
	dec  d                                           ; $5d5f: $15
	ld   bc, $2902                                   ; $5d60: $01 $02 $29
	nop                                              ; $5d63: $00
	ld   bc, $fc50                                   ; $5d64: $01 $50 $fc
	ld   d, b                                        ; $5d67: $50
	sbc  [hl]                                        ; $5d68: $9e
	sub  b                                           ; $5d69: $90
	db   $fc                                         ; $5d6a: $fc
	db   $fc                                         ; $5d6b: $fc
	db   $fc                                         ; $5d6c: $fc
	sbc  a                                           ; $5d6d: $9f
	dec  c                                           ; $5d6e: $0d
	ld   d, h                                        ; $5d6f: $54
	sub  a                                           ; $5d70: $97
	adc  [hl]                                        ; $5d71: $8e
	ld   [hl], l                                     ; $5d72: $75
	sbc  [hl]                                        ; $5d73: $9e
	ld   [$7d00], sp                                 ; $5d74: $08 $00 $7d
	and  c                                           ; $5d77: $a1
	sbc  a                                           ; $5d78: $9f
	dec  c                                           ; $5d79: $0d
	nop                                              ; $5d7a: $00
	ld   a, [bc]                                     ; $5d7b: $0a
	inc  e                                           ; $5d7c: $1c
	ld   bc, $0101                                   ; $5d7d: $01 $01 $01
	dec  e                                           ; $5d80: $1d
	ld   b, b                                        ; $5d81: $40
	ld   de, $1103                                   ; $5d82: $11 $03 $11
	ld   bc, $2802                                   ; $5d85: $01 $02 $28
	nop                                              ; $5d88: $00
	ld   bc, $0008                                   ; $5d89: $01 $08 $00
	ld   h, e                                        ; $5d8c: $63
	and  c                                           ; $5d8d: $a1
	sbc  a                                           ; $5d8e: $9f
	dec  c                                           ; $5d8f: $0d
	ld   d, b                                        ; $5d90: $50
	sbc  b                                           ; $5d91: $98
	ld   e, d                                        ; $5d92: $5a
	halt                                             ; $5d93: $76
	ld   d, h                                        ; $5d94: $54
	ld   h, d                                        ; $5d95: $62
	ld   h, h                                        ; $5d96: $64
	ld   d, d                                        ; $5d97: $52
	adc  h                                           ; $5d98: $8c
	ld   h, l                                        ; $5d99: $65
	ld   l, l                                        ; $5d9a: $6d
	sbc  a                                           ; $5d9b: $9f
	dec  c                                           ; $5d9c: $0d
	nop                                              ; $5d9d: $00
	ld   a, [bc]                                     ; $5d9e: $0a
	inc  e                                           ; $5d9f: $1c
	ld   bc, $0202                                   ; $5da0: $01 $02 $02
	ld   bc, $5063                                   ; $5da3: $01 $63 $50
	sbc  [hl]                                        ; $5da6: $9e
	ld   [bc], a                                     ; $5da7: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5da8: $cf
	dec  b                                           ; $5da9: $05
	ld   a, [de]                                     ; $5daa: $1a
	sbc  a                                           ; $5dab: $9f
	dec  c                                           ; $5dac: $0d
	inc  bc                                          ; $5dad: $03
	adc  e                                           ; $5dae: $8b
	ld   [bc], a                                     ; $5daf: $02
	sub  [hl]                                        ; $5db0: $96
	inc  bc                                          ; $5db1: $03
	add  e                                           ; $5db2: $83
	inc  b                                           ; $5db3: $04
	sbc  b                                           ; $5db4: $98
	ld   a, h                                        ; $5db5: $7c
	ld   d, b                                        ; $5db6: $50
	halt                                             ; $5db7: $76
	dec  b                                           ; $5db8: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5db9: $cf
	inc  b                                           ; $5dba: $04
	jp   nz, $0d9e                                   ; $5dbb: $c2 $9e $0d

	ld   l, a                                        ; $5dbe: $6f
	sub  c                                           ; $5dbf: $91
	and  c                                           ; $5dc0: $a1
	halt                                             ; $5dc1: $76
	ld   h, l                                        ; $5dc2: $65
	ld   [hl], h                                     ; $5dc3: $74
	sub  b                                           ; $5dc4: $90
	sub  a                                           ; $5dc5: $97
	ld   d, h                                        ; $5dc6: $54
	sbc  l                                           ; $5dc7: $9d
	sub  [hl]                                        ; $5dc8: $96
	sbc  a                                           ; $5dc9: $9f
	dec  c                                           ; $5dca: $0d
	nop                                              ; $5dcb: $00
	ld   a, [bc]                                     ; $5dcc: $0a
	dec  c                                           ; $5dcd: $0d
	nop                                              ; $5dce: $00
	nop                                              ; $5dcf: $00
	rrca                                             ; $5dd0: $0f
	nop                                              ; $5dd1: $00
	ld   bc, $4005                                   ; $5dd2: $01 $05 $40
	ld   c, h                                        ; $5dd5: $4c
	ld   [bc], a                                     ; $5dd6: $02
	nop                                              ; $5dd7: $00
	nop                                              ; $5dd8: $00
	ld   bc, $0301                                   ; $5dd9: $01 $01 $03
	adc  h                                           ; $5ddc: $8c
	ld   l, b                                        ; $5ddd: $68
	ld   e, c                                        ; $5dde: $59
	ld   [hl], c                                     ; $5ddf: $71
	ld   l, l                                        ; $5de0: $6d
	ld   e, c                                        ; $5de1: $59
	ld   a, b                                        ; $5de2: $78
	ld   sp, hl                                      ; $5de3: $f9
	dec  c                                           ; $5de4: $0d
	nop                                              ; $5de5: $00
	dec  b                                           ; $5de6: $05
	ld   b, b                                        ; $5de7: $40
	ld   d, d                                        ; $5de8: $52
	ld   bc, $0002                                   ; $5de9: $01 $02 $00
	ld   bc, $0210                                   ; $5dec: $01 $10 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5def: $cf
	dec  b                                           ; $5df0: $05
	ld   a, [de]                                     ; $5df1: $1a
	ld   h, e                                        ; $5df2: $63
	and  c                                           ; $5df3: $a1
	sbc  [hl]                                        ; $5df4: $9e
	inc  bc                                          ; $5df5: $03
	ld   hl, sp+$71                                  ; $5df6: $f8 $71
	ld   [hl], h                                     ; $5df8: $74
	ld   l, l                                        ; $5df9: $6d
	sub  [hl]                                        ; $5dfa: $96
	ld   d, h                                        ; $5dfb: $54
	ld   a, b                                        ; $5dfc: $78
	dec  c                                           ; $5dfd: $0d
	db   $10                                         ; $5dfe: $10
	ld   [bc], a                                     ; $5dff: $02
	and  c                                           ; $5e00: $a1
	ld   e, d                                        ; $5e01: $5a
	ld   h, a                                        ; $5e02: $67
	sbc  c                                           ; $5e03: $99
	ld   l, h                                        ; $5e04: $6c
	rst  $38                                         ; $5e05: $ff
	rst  $38                                         ; $5e06: $ff
	ld   bc, $0d04                                   ; $5e07: $01 $04 $0d
	nop                                              ; $5e0a: $00
	ld   a, [bc]                                     ; $5e0b: $0a
	add  hl, hl                                      ; $5e0c: $29
	nop                                              ; $5e0d: $00
	nop                                              ; $5e0e: $00
	rrca                                             ; $5e0f: $0f
	nop                                              ; $5e10: $00
	ld   bc, $5201                                   ; $5e11: $01 $01 $52
	ld   d, d                                        ; $5e14: $52
	ld   d, [hl]                                     ; $5e15: $56
	sbc  a                                           ; $5e16: $9f
	dec  c                                           ; $5e17: $0d
	ld   [bc], a                                     ; $5e18: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e19: $cf
	dec  b                                           ; $5e1a: $05
	ld   a, [de]                                     ; $5e1b: $1a
	ld   h, e                                        ; $5e1c: $63
	and  c                                           ; $5e1d: $a1
	sbc  [hl]                                        ; $5e1e: $9e
	ld   h, c                                        ; $5e1f: $61
	ld   h, c                                        ; $5e20: $61
	ld   a, c                                        ; $5e21: $79
	ld   a, l                                        ; $5e22: $7d
	dec  c                                           ; $5e23: $0d
	ld   d, d                                        ; $5e24: $52
	adc  h                                           ; $5e25: $8c
	ld   l, c                                        ; $5e26: $69
	and  c                                           ; $5e27: $a1
	ld   e, a                                        ; $5e28: $5f
	ld   [hl], a                                     ; $5e29: $77
	rst  $38                                         ; $5e2a: $ff
	sbc  a                                           ; $5e2b: $9f
	dec  c                                           ; $5e2c: $0d
	nop                                              ; $5e2d: $00
	ld   a, [bc]                                     ; $5e2e: $0a
	inc  e                                           ; $5e2f: $1c
	ld   bc, $0404                                   ; $5e30: $01 $04 $04
	ld   bc, $546b                                   ; $5e33: $01 $6b $54
	ld   [hl], l                                     ; $5e36: $75
	ld   h, a                                        ; $5e37: $67
	ld   e, c                                        ; $5e38: $59
	rst  $38                                         ; $5e39: $ff
	sbc  a                                           ; $5e3a: $9f
	dec  c                                           ; $5e3b: $0d
	ld   [hl], l                                     ; $5e3c: $75
	ld   a, l                                        ; $5e3d: $7d
	sbc  [hl]                                        ; $5e3e: $9e
	inc  b                                           ; $5e3f: $04
	ld   e, $a0                                      ; $5e40: $1e $a0
	inc  b                                           ; $5e42: $04
	inc  d                                           ; $5e43: $14
	ld   h, l                                        ; $5e44: $65
	ld   [hl], h                                     ; $5e45: $74
	adc  l                                           ; $5e46: $8d
	adc  h                                           ; $5e47: $8c
	ld   h, a                                        ; $5e48: $67
	sbc  a                                           ; $5e49: $9f
	dec  c                                           ; $5e4a: $0d
	inc  b                                           ; $5e4b: $04
	rst  $28                                         ; $5e4c: $ef
	ld   e, b                                        ; $5e4d: $58
	ld   l, e                                        ; $5e4e: $6b
	ld   e, l                                        ; $5e4f: $5d
	ld   a, c                                        ; $5e50: $79
	ld   h, a                                        ; $5e51: $67
	adc  l                                           ; $5e52: $8d
	adc  h                                           ; $5e53: $8c
	ld   l, c                                        ; $5e54: $69
	and  c                                           ; $5e55: $a1
	ld   [hl], l                                     ; $5e56: $75
	ld   h, l                                        ; $5e57: $65
	ld   l, l                                        ; $5e58: $6d
	sbc  a                                           ; $5e59: $9f
	dec  c                                           ; $5e5a: $0d
	nop                                              ; $5e5b: $00
	ld   a, [bc]                                     ; $5e5c: $0a
	dec  c                                           ; $5e5d: $0d
	nop                                              ; $5e5e: $00
	nop                                              ; $5e5f: $00
	rrca                                             ; $5e60: $0f
	nop                                              ; $5e61: $00
	ld   bc, $1e09                                   ; $5e62: $01 $09 $1e
	inc  e                                           ; $5e65: $1c
	dec  b                                           ; $5e66: $05
	ld   bc, $1d01                                   ; $5e67: $01 $01 $1d
	ld   b, b                                        ; $5e6a: $40
	dec  d                                           ; $5e6b: $15
	inc  bc                                          ; $5e6c: $03
	dec  d                                           ; $5e6d: $15
	ld   bc, $2803                                   ; $5e6e: $01 $03 $28
	nop                                              ; $5e71: $00
	ld   bc, $5b03                                   ; $5e72: $01 $03 $5b
	ld   e, c                                        ; $5e75: $59
	ld   [hl], c                                     ; $5e76: $71
	ld   l, l                                        ; $5e77: $6d
	db   $fc                                         ; $5e78: $fc
	sbc  a                                           ; $5e79: $9f
	dec  c                                           ; $5e7a: $0d
	ld   e, b                                        ; $5e7b: $58
	ld   e, b                                        ; $5e7c: $58
	ld   e, e                                        ; $5e7d: $5b
	ld   a, c                                        ; $5e7e: $79
	sbc  [hl]                                        ; $5e7f: $9e
	ld   [$7d00], sp                                 ; $5e80: $08 $00 $7d
	and  c                                           ; $5e83: $a1
	sbc  a                                           ; $5e84: $9f
	dec  c                                           ; $5e85: $0d
	nop                                              ; $5e86: $00
	ld   a, [bc]                                     ; $5e87: $0a
	inc  e                                           ; $5e88: $1c
	dec  b                                           ; $5e89: $05
	inc  b                                           ; $5e8a: $04
	inc  b                                           ; $5e8b: $04
	ld   bc, $9252                                   ; $5e8c: $01 $52 $92
	db   $fc                                         ; $5e8f: $fc
	sbc  [hl]                                        ; $5e90: $9e
	ld   l, a                                        ; $5e91: $6f
	sub  l                                           ; $5e92: $95
	ld   d, d                                        ; $5e93: $52
	halt                                             ; $5e94: $76
	inc  bc                                          ; $5e95: $03
	adc  e                                           ; $5e96: $8b
	ld   [bc], a                                     ; $5e97: $02
	sub  [hl]                                        ; $5e98: $96
	ld   a, c                                        ; $5e99: $79
	dec  c                                           ; $5e9a: $0d
	inc  bc                                          ; $5e9b: $03
	add  e                                           ; $5e9c: $83
	inc  b                                           ; $5e9d: $04
	sbc  b                                           ; $5e9e: $98
	ld   h, l                                        ; $5e9f: $65
	ld   [hl], h                                     ; $5ea0: $74
	ld   a, b                                        ; $5ea1: $78
	sbc  a                                           ; $5ea2: $9f
	ld   h, e                                        ; $5ea3: $63
	ld   e, l                                        ; $5ea4: $5d
	sub  a                                           ; $5ea5: $97
	ld   a, l                                        ; $5ea6: $7d
	and  c                                           ; $5ea7: $a1
	ld   a, c                                        ; $5ea8: $79
	sub  b                                           ; $5ea9: $90
	dec  c                                           ; $5eaa: $0d
	inc  bc                                          ; $5eab: $03
	ld   l, e                                        ; $5eac: $6b
	inc  b                                           ; $5ead: $04
	ld   [de], a                                     ; $5eae: $12
	ld   [hl], c                                     ; $5eaf: $71
	ld   [hl], h                                     ; $5eb0: $74
	sub  b                                           ; $5eb1: $90
	sbc  e                                           ; $5eb2: $9b
	ld   [hl], h                                     ; $5eb3: $74
	ld   l, l                                        ; $5eb4: $6d
	ld   e, c                                        ; $5eb5: $59
	sub  a                                           ; $5eb6: $97
	rst  $38                                         ; $5eb7: $ff
	rst  $38                                         ; $5eb8: $ff
	sbc  a                                           ; $5eb9: $9f
	dec  c                                           ; $5eba: $0d
	nop                                              ; $5ebb: $00
	ld   a, [bc]                                     ; $5ebc: $0a
	inc  e                                           ; $5ebd: $1c
	dec  b                                           ; $5ebe: $05
	ld   bc, $0101                                   ; $5ebf: $01 $01 $01
	ret  nc                                          ; $5ec2: $d0

	ret  nc                                          ; $5ec3: $d0

	ret  nc                                          ; $5ec4: $d0

	ret  nc                                          ; $5ec5: $d0

	sbc  a                                           ; $5ec6: $9f
	dec  c                                           ; $5ec7: $0d
	call c, $dff5                                    ; $5ec8: $dc $f5 $df
	sbc  [hl]                                        ; $5ecb: $9e
	inc  bc                                          ; $5ecc: $03
	ld   e, e                                        ; $5ecd: $5b
	ld   e, c                                        ; $5ece: $59
	ld   [hl], c                                     ; $5ecf: $71
	ld   l, l                                        ; $5ed0: $6d
	sbc  l                                           ; $5ed1: $9d
	sbc  a                                           ; $5ed2: $9f
	dec  c                                           ; $5ed3: $0d
	ld   e, b                                        ; $5ed4: $58
	ld   e, b                                        ; $5ed5: $58
	ld   e, e                                        ; $5ed6: $5b
	ld   a, c                                        ; $5ed7: $79
	ld   a, b                                        ; $5ed8: $78
	sbc  a                                           ; $5ed9: $9f
	dec  c                                           ; $5eda: $0d
	nop                                              ; $5edb: $00
	ld   a, [bc]                                     ; $5edc: $0a
	dec  c                                           ; $5edd: $0d
	nop                                              ; $5ede: $00
	nop                                              ; $5edf: $00
	rrca                                             ; $5ee0: $0f
	nop                                              ; $5ee1: $00
	ld   bc, $1e09                                   ; $5ee2: $01 $09 $1e
	add  hl, hl                                      ; $5ee5: $29
	nop                                              ; $5ee6: $00
	nop                                              ; $5ee7: $00
	rrca                                             ; $5ee8: $0f
	nop                                              ; $5ee9: $00
	ld   bc, $5201                                   ; $5eea: $01 $01 $52
	sub  d                                           ; $5eed: $92
	rst  $38                                         ; $5eee: $ff
	rst  $38                                         ; $5eef: $ff
	dec  c                                           ; $5ef0: $0d
	ld   l, e                                        ; $5ef1: $6b
	ld   a, h                                        ; $5ef2: $7c
	rst  $38                                         ; $5ef3: $ff
	rst  $38                                         ; $5ef4: $ff
	dec  c                                           ; $5ef5: $0d
	nop                                              ; $5ef6: $00
	ld   a, [bc]                                     ; $5ef7: $0a
	inc  e                                           ; $5ef8: $1c
	ld   bc, $0707                                   ; $5ef9: $01 $07 $07
	dec  e                                           ; $5efc: $1d
	ld   b, b                                        ; $5efd: $40
	ld   de, $1103                                   ; $5efe: $11 $03 $11
	ld   bc, $2901                                   ; $5f01: $01 $01 $29
	nop                                              ; $5f04: $00
	ld   bc, $7177                                   ; $5f05: $01 $77 $71
	ld   l, a                                        ; $5f08: $6f
	ld   a, b                                        ; $5f09: $78
	and  c                                           ; $5f0a: $a1
	ld   [hl], l                                     ; $5f0b: $75
	ld   h, a                                        ; $5f0c: $67
	ld   e, c                                        ; $5f0d: $59
	ld   a, [$900d]                                  ; $5f0e: $fa $0d $90
	ei                                               ; $5f11: $fb
	ld   a, l                                        ; $5f12: $7d
	ld   [hl], c                                     ; $5f13: $71
	ld   e, e                                        ; $5f14: $5b
	sbc  b                                           ; $5f15: $98
	ld   h, l                                        ; $5f16: $65
	ld   a, b                                        ; $5f17: $78
	ld   d, d                                        ; $5f18: $52
	and  c                                           ; $5f19: $a1
	ld   [hl], l                                     ; $5f1a: $75
	ld   h, a                                        ; $5f1b: $67
	ld   a, e                                        ; $5f1c: $7b
	sbc  a                                           ; $5f1d: $9f
	dec  c                                           ; $5f1e: $0d
	ld   d, d                                        ; $5f1f: $52
	ld   d, d                                        ; $5f20: $52
	ld   [hl], l                                     ; $5f21: $75
	ld   h, a                                        ; $5f22: $67
	ld   a, [$1e04]                                  ; $5f23: $fa $04 $1e
	and  b                                           ; $5f26: $a0
	inc  b                                           ; $5f27: $04
	inc  d                                           ; $5f28: $14
	ld   h, l                                        ; $5f29: $65
	adc  h                                           ; $5f2a: $8c
	ld   h, a                                        ; $5f2b: $67
	ld   e, c                                        ; $5f2c: $59
	sub  a                                           ; $5f2d: $97
	sbc  a                                           ; $5f2e: $9f
	dec  c                                           ; $5f2f: $0d
	nop                                              ; $5f30: $00
	ld   a, [bc]                                     ; $5f31: $0a
	dec  c                                           ; $5f32: $0d
	nop                                              ; $5f33: $00
	nop                                              ; $5f34: $00
	rrca                                             ; $5f35: $0f
	nop                                              ; $5f36: $00
	ld   bc, $1e09                                   ; $5f37: $01 $09 $1e
	inc  e                                           ; $5f3a: $1c
	dec  b                                           ; $5f3b: $05
	ld   [bc], a                                     ; $5f3c: $02
	ld   [bc], a                                     ; $5f3d: $02
	ld   bc, $fc50                                   ; $5f3e: $01 $50 $fc
	sbc  [hl]                                        ; $5f41: $9e
	ld   d, b                                        ; $5f42: $50
	add  h                                           ; $5f43: $84
	ld   a, b                                        ; $5f44: $78
	ld   e, c                                        ; $5f45: $59
	ld   [hl], c                                     ; $5f46: $71
	ld   l, l                                        ; $5f47: $6d
	rst  $38                                         ; $5f48: $ff
	rst  $38                                         ; $5f49: $ff
	dec  c                                           ; $5f4a: $0d
	ld   d, b                                        ; $5f4b: $50
	ld   e, c                                        ; $5f4c: $59
	and  c                                           ; $5f4d: $a1
	ld   e, d                                        ; $5f4e: $5a
	ld   a, b                                        ; $5f4f: $78
	sbc  a                                           ; $5f50: $9f
	dec  c                                           ; $5f51: $0d
	sub  b                                           ; $5f52: $90
	ld   [hl], c                                     ; $5f53: $71
	halt                                             ; $5f54: $76
	ld   h, l                                        ; $5f55: $65
	ld   [hl], c                                     ; $5f56: $71
	ld   e, c                                        ; $5f57: $59
	sbc  b                                           ; $5f58: $98
	ld   h, l                                        ; $5f59: $65
	ld   [hl], h                                     ; $5f5a: $74
	ld   e, l                                        ; $5f5b: $5d
	sbc  d                                           ; $5f5c: $9a
	ld   a, b                                        ; $5f5d: $78
	sbc  a                                           ; $5f5e: $9f
	dec  c                                           ; $5f5f: $0d
	nop                                              ; $5f60: $00
	ld   a, [bc]                                     ; $5f61: $0a
	inc  e                                           ; $5f62: $1c
	dec  b                                           ; $5f63: $05
	nop                                              ; $5f64: $00
	nop                                              ; $5f65: $00
	dec  e                                           ; $5f66: $1d
	ld   b, b                                        ; $5f67: $40
	dec  d                                           ; $5f68: $15
	inc  bc                                          ; $5f69: $03
	dec  d                                           ; $5f6a: $15
	ld   bc, $2801                                   ; $5f6b: $01 $01 $28
	nop                                              ; $5f6e: $00
	ld   bc, $508c                                   ; $5f6f: $01 $8c $50
	sbc  [hl]                                        ; $5f72: $9e
	xor  c                                           ; $5f73: $a9
	xor  c                                           ; $5f74: $a9
	sbc  l                                           ; $5f75: $9d
	sbc  a                                           ; $5f76: $9f
	dec  c                                           ; $5f77: $0d
	adc  c                                           ; $5f78: $89
	ld   a, b                                        ; $5f79: $78
	sbc  [hl]                                        ; $5f7a: $9e
	ld   e, b                                        ; $5f7b: $58
	ld   e, b                                        ; $5f7c: $58
	ld   e, e                                        ; $5f7d: $5b
	ld   a, c                                        ; $5f7e: $79
	sbc  a                                           ; $5f7f: $9f
	dec  c                                           ; $5f80: $0d
	nop                                              ; $5f81: $00
	ld   a, [bc]                                     ; $5f82: $0a
	dec  c                                           ; $5f83: $0d
	nop                                              ; $5f84: $00
	nop                                              ; $5f85: $00
	rrca                                             ; $5f86: $0f
	nop                                              ; $5f87: $00
	ld   bc, $1e09                                   ; $5f88: $01 $09 $1e
	add  hl, hl                                      ; $5f8b: $29
	nop                                              ; $5f8c: $00
	nop                                              ; $5f8d: $00
	nop                                              ; $5f8e: $00
	inc  b                                           ; $5f8f: $04
	add  b                                           ; $5f90: $80
	inc  hl                                          ; $5f91: $23
	ld   bc, $20ff                                   ; $5f92: $01 $ff $20
	inc  bc                                          ; $5f95: $03
	ld   [hl], b                                     ; $5f96: $70
	ld   [bc], a                                     ; $5f97: $02
	nop                                              ; $5f98: $00
	jr   nz, jr_049_5fb7                             ; $5f99: $20 $1c

	nop                                              ; $5f9b: $00
	ld   c, $02                                      ; $5f9c: $0e $02
	rrca                                             ; $5f9e: $0f
	nop                                              ; $5f9f: $00
	ld   bc, $0102                                   ; $5fa0: $01 $02 $01
	ld   l, e                                        ; $5fa3: $6b
	sbc  e                                           ; $5fa4: $9b
	ld   l, e                                        ; $5fa5: $6b
	sbc  e                                           ; $5fa6: $9b
	sbc  [hl]                                        ; $5fa7: $9e
	ld   [bc], a                                     ; $5fa8: $02
	sub  l                                           ; $5fa9: $95
	ld   [bc], a                                     ; $5faa: $02
	sub  e                                           ; $5fab: $93
	sbc  b                                           ; $5fac: $98
	ld   a, c                                        ; $5fad: $79
	ld   [bc], a                                     ; $5fae: $02
	ld   a, a                                        ; $5faf: $7f
	ld   e, l                                        ; $5fb0: $5d
	dec  c                                           ; $5fb1: $0d
	inc  bc                                          ; $5fb2: $03
	ld   l, a                                        ; $5fb3: $6f
	ld   [bc], a                                     ; $5fb4: $02
	xor  c                                           ; $5fb5: $a9
	ld   l, [hl]                                     ; $5fb6: $6e

jr_049_5fb7:
	ld   a, b                                        ; $5fb7: $78
	rst  $38                                         ; $5fb8: $ff
	rst  $38                                         ; $5fb9: $ff
	dec  c                                           ; $5fba: $0d
	nop                                              ; $5fbb: $00
	ld   a, [bc]                                     ; $5fbc: $0a
	inc  d                                           ; $5fbd: $14
	ld   b, $01                                      ; $5fbe: $06 $01
	rrca                                             ; $5fc0: $0f
	dec  b                                           ; $5fc1: $05
	ld   bc, $0801                                   ; $5fc2: $01 $01 $08
	nop                                              ; $5fc5: $00
	ld   a, l                                        ; $5fc6: $7d
	and  c                                           ; $5fc7: $a1
	dec  c                                           ; $5fc8: $0d
	ld   l, a                                        ; $5fc9: $6f
	sub  l                                           ; $5fca: $95
	ld   [hl], c                                     ; $5fcb: $71
	halt                                             ; $5fcc: $76
	xor  c                                           ; $5fcd: $a9
	xor  c                                           ; $5fce: $a9
	ld   e, c                                        ; $5fcf: $59
	ld   sp, hl                                      ; $5fd0: $f9
	dec  c                                           ; $5fd1: $0d
	nop                                              ; $5fd2: $00
	ld   a, [bc]                                     ; $5fd3: $0a
	rrca                                             ; $5fd4: $0f
	nop                                              ; $5fd5: $00
	ld   bc, $7d01                                   ; $5fd6: $01 $01 $7d
	ld   d, d                                        ; $5fd9: $52
	sbc  [hl]                                        ; $5fda: $9e
	ld   [hl], a                                     ; $5fdb: $77
	ld   d, h                                        ; $5fdc: $54
	ld   l, h                                        ; $5fdd: $6c
	sbc  a                                           ; $5fde: $9f
	dec  c                                           ; $5fdf: $0d
	nop                                              ; $5fe0: $00
	ld   a, [bc]                                     ; $5fe1: $0a
	inc  d                                           ; $5fe2: $14
	ld   a, [bc]                                     ; $5fe3: $0a
	ld   bc, $051c                                   ; $5fe4: $01 $1c $05
	ld   bc, $0101                                   ; $5fe7: $01 $01 $01
	inc  b                                           ; $5fea: $04
	xor  l                                           ; $5feb: $ad
	ld   [bc], a                                     ; $5fec: $02
	xor  c                                           ; $5fed: $a9
	ld   d, d                                        ; $5fee: $52
	ld   [hl], c                                     ; $5fef: $71
	ld   [hl], h                                     ; $5ff0: $74
	ld   l, l                                        ; $5ff1: $6d
	sbc  [hl]                                        ; $5ff2: $9e
	inc  bc                                          ; $5ff3: $03
	adc  e                                           ; $5ff4: $8b
	ld   [bc], a                                     ; $5ff5: $02
	sub  [hl]                                        ; $5ff6: $96
	ld   a, h                                        ; $5ff7: $7c
	inc  bc                                          ; $5ff8: $03
	ld   l, e                                        ; $5ff9: $6b
	inc  b                                           ; $5ffa: $04
	ld   [de], a                                     ; $5ffb: $12
	ld   d, d                                        ; $5ffc: $52
	and  b                                           ; $5ffd: $a0
	dec  c                                           ; $5ffe: $0d
	ld   l, l                                        ; $5fff: $6d
	ld   a, h                                        ; $6000: $7c
	adc  l                                           ; $6001: $8d
	ld   l, l                                        ; $6002: $6d
	ld   d, d                                        ; $6003: $52
	ld   a, e                                        ; $6004: $7b
	and  c                                           ; $6005: $a1
	ld   e, a                                        ; $6006: $5f
	ld   [hl], a                                     ; $6007: $77
	rst  $38                                         ; $6008: $ff
	rst  $38                                         ; $6009: $ff
	dec  c                                           ; $600a: $0d
	xor  c                                           ; $600b: $a9
	xor  c                                           ; $600c: $a9
	ld   e, c                                        ; $600d: $59
	ld   a, b                                        ; $600e: $78
	db   $fc                                         ; $600f: $fc
	ld   sp, hl                                      ; $6010: $f9
	dec  c                                           ; $6011: $0d
	nop                                              ; $6012: $00
	ld   a, [bc]                                     ; $6013: $0a
	add  hl, de                                      ; $6014: $19
	dec  b                                           ; $6015: $05
	ld   [bc], a                                     ; $6016: $02
	ld   d, d                                        ; $6017: $52
	ld   d, d                                        ; $6018: $52
	ld   [hl], l                                     ; $6019: $75
	ld   h, a                                        ; $601a: $67
	sub  [hl]                                        ; $601b: $96
	nop                                              ; $601c: $00
	nop                                              ; $601d: $00
	ld   [bc], a                                     ; $601e: $02
	and  l                                           ; $601f: $a5
	ld   a, l                                        ; $6020: $7d
	ld   l, a                                        ; $6021: $6f
	sub  l                                           ; $6022: $95
	ld   [hl], c                                     ; $6023: $71
	halt                                             ; $6024: $76
	rst  $38                                         ; $6025: $ff
	nop                                              ; $6026: $00
	ld   bc, $a107                                   ; $6027: $01 $07 $a1
	nop                                              ; $602a: $00
	ld   [bc], a                                     ; $602b: $02
	inc  bc                                          ; $602c: $03
	ld   bc, $2000                                   ; $602d: $01 $00 $20
	nop                                              ; $6030: $00
	rlca                                             ; $6031: $07
	ld   sp, hl                                      ; $6032: $f9
	nop                                              ; $6033: $00
	ld   [bc], a                                     ; $6034: $02
	inc  bc                                          ; $6035: $03
	ld   bc, $2001                                   ; $6036: $01 $01 $20
	nop                                              ; $6039: $00
	ld   b, $6d                                      ; $603a: $06 $6d
	ld   bc, $000f                                   ; $603c: $01 $0f $00
	ld   bc, $5201                                   ; $603f: $01 $01 $52
	ld   d, d                                        ; $6042: $52
	ld   [hl], l                                     ; $6043: $75
	ld   h, a                                        ; $6044: $67
	sub  [hl]                                        ; $6045: $96
	sbc  a                                           ; $6046: $9f
	dec  c                                           ; $6047: $0d
	inc  b                                           ; $6048: $04
	ld   l, l                                        ; $6049: $6d
	ld   [hl], l                                     ; $604a: $75
	ld   e, b                                        ; $604b: $58
	inc  b                                           ; $604c: $04
	db   $ec                                         ; $604d: $ec
	ld   a, c                                        ; $604e: $79
	dec  b                                           ; $604f: $05
	ld   d, $74                                      ; $6050: $16 $74
	sbc  c                                           ; $6052: $99
	ld   a, b                                        ; $6053: $78
	sub  a                                           ; $6054: $97
	dec  c                                           ; $6055: $0d
	ld   e, b                                        ; $6056: $58
	sub  d                                           ; $6057: $92
	ld   h, a                                        ; $6058: $67
	ld   d, d                                        ; $6059: $52
	ld   h, d                                        ; $605a: $62
	inc  b                                           ; $605b: $04
	di                                               ; $605c: $f3
	ld   [hl], l                                     ; $605d: $75
	ld   h, a                                        ; $605e: $67
	sub  [hl]                                        ; $605f: $96
	sbc  a                                           ; $6060: $9f
	dec  c                                           ; $6061: $0d
	nop                                              ; $6062: $00
	ld   a, [bc]                                     ; $6063: $0a
	inc  e                                           ; $6064: $1c
	dec  b                                           ; $6065: $05
	ld   bc, $1d01                                   ; $6066: $01 $01 $1d
	ld   b, b                                        ; $6069: $40
	dec  d                                           ; $606a: $15
	inc  bc                                          ; $606b: $03
	dec  d                                           ; $606c: $15
	ld   bc, $2801                                   ; $606d: $01 $01 $28
	nop                                              ; $6070: $00
	ld   bc, $546b                                   ; $6071: $01 $6b $54
	ld   e, c                                        ; $6074: $59
	ld   a, [$890d]                                  ; $6075: $fa $0d $89
	ld   a, b                                        ; $6078: $78
	sbc  [hl]                                        ; $6079: $9e
	and  a                                           ; $607a: $a7
	jp   nz, $047c                                   ; $607b: $c2 $7c $04

	sub  l                                           ; $607e: $95
	ld   [bc], a                                     ; $607f: $02
	ld   hl, $758c                                   ; $6080: $21 $8c $75
	ld   [bc], a                                     ; $6083: $02
	ld   a, a                                        ; $6084: $7f
	ld   h, c                                        ; $6085: $61
	sbc  a                                           ; $6086: $9f
	dec  c                                           ; $6087: $0d
	nop                                              ; $6088: $00
	ld   a, [bc]                                     ; $6089: $0a
	dec  c                                           ; $608a: $0d
	nop                                              ; $608b: $00
	nop                                              ; $608c: $00
	rrca                                             ; $608d: $0f
	nop                                              ; $608e: $00
	ld   bc, $5523                                   ; $608f: $01 $23 $55
	ld   b, $d9                                      ; $6092: $06 $d9
	ld   bc, $000f                                   ; $6094: $01 $0f $00
	ld   bc, $6701                                   ; $6097: $01 $01 $67
	adc  l                                           ; $609a: $8d
	adc  h                                           ; $609b: $8c
	ld   l, c                                        ; $609c: $69
	and  c                                           ; $609d: $a1
	sbc  [hl]                                        ; $609e: $9e
	ld   l, a                                        ; $609f: $6f
	sub  l                                           ; $60a0: $95
	ld   [hl], c                                     ; $60a1: $71
	halt                                             ; $60a2: $76
	dec  b                                           ; $60a3: $05
	jr   z, jr_049_6102                              ; $60a4: $28 $5c

	ld   a, h                                        ; $60a6: $7c
	dec  c                                           ; $60a7: $0d
	inc  b                                           ; $60a8: $04
	di                                               ; $60a9: $f3
	ld   e, d                                        ; $60aa: $5a
	ld   a, l                                        ; $60ab: $7d
	ld   d, d                                        ; $60ac: $52
	ld   [hl], c                                     ; $60ad: $71
	ld   l, a                                        ; $60ae: $6f
	sub  c                                           ; $60af: $91
	ld   [hl], c                                     ; $60b0: $71
	ld   [hl], h                                     ; $60b1: $74
	rst  $38                                         ; $60b2: $ff
	rst  $38                                         ; $60b3: $ff
	dec  c                                           ; $60b4: $0d
	nop                                              ; $60b5: $00
	ld   a, [bc]                                     ; $60b6: $0a
	inc  e                                           ; $60b7: $1c
	dec  b                                           ; $60b8: $05
	ld   [bc], a                                     ; $60b9: $02
	ld   [bc], a                                     ; $60ba: $02
	dec  e                                           ; $60bb: $1d
	ld   b, b                                        ; $60bc: $40
	dec  d                                           ; $60bd: $15
	inc  bc                                          ; $60be: $03
	dec  d                                           ; $60bf: $15
	ld   bc, $2901                                   ; $60c0: $01 $01 $29
	nop                                              ; $60c3: $00
	ld   bc, $a178                                   ; $60c4: $01 $78 $a1
	sub  d                                           ; $60c7: $92
	sbc  [hl]                                        ; $60c8: $9e
	ld   l, e                                        ; $60c9: $6b
	ld   d, h                                        ; $60ca: $54
	ld   e, c                                        ; $60cb: $59
	rst  $38                                         ; $60cc: $ff
	rst  $38                                         ; $60cd: $ff
	dec  c                                           ; $60ce: $0d
	ld   l, e                                        ; $60cf: $6b
	sbc  d                                           ; $60d0: $9a
	sub  d                                           ; $60d1: $92
	ld   [hl], c                                     ; $60d2: $71
	ld   l, l                                        ; $60d3: $6d
	sub  a                                           ; $60d4: $97
	sbc  [hl]                                        ; $60d5: $9e
	dec  c                                           ; $60d6: $0d
	adc  h                                           ; $60d7: $8c
	ld   d, b                                        ; $60d8: $50
	sbc  [hl]                                        ; $60d9: $9e
	ld   h, l                                        ; $60da: $65
	sub  c                                           ; $60db: $91
	ei                                               ; $60dc: $fb
	ld   a, b                                        ; $60dd: $78
	ld   d, d                                        ; $60de: $52
	ld   e, c                                        ; $60df: $59
	rst  $38                                         ; $60e0: $ff
	rst  $38                                         ; $60e1: $ff
	dec  c                                           ; $60e2: $0d
	nop                                              ; $60e3: $00
	ld   a, [bc]                                     ; $60e4: $0a
	inc  e                                           ; $60e5: $1c
	dec  b                                           ; $60e6: $05
	nop                                              ; $60e7: $00
	nop                                              ; $60e8: $00
	ld   bc, $7889                                   ; $60e9: $01 $89 $78
	sbc  [hl]                                        ; $60ec: $9e
	adc  h                                           ; $60ed: $8c
	ld   l, l                                        ; $60ee: $6d
	ld   [bc], a                                     ; $60ef: $02
	and  l                                           ; $60f0: $a5
	inc  b                                           ; $60f1: $04
	add  hl, hl                                      ; $60f2: $29
	inc  bc                                          ; $60f3: $03
	ld   l, e                                        ; $60f4: $6b
	inc  b                                           ; $60f5: $04
	ld   [de], a                                     ; $60f6: $12
	ld   [hl], c                                     ; $60f7: $71
	ld   [hl], h                                     ; $60f8: $74
	ld   a, b                                        ; $60f9: $78
	sbc  a                                           ; $60fa: $9f
	dec  c                                           ; $60fb: $0d
	nop                                              ; $60fc: $00
	ld   a, [bc]                                     ; $60fd: $0a
	dec  c                                           ; $60fe: $0d
	nop                                              ; $60ff: $00
	nop                                              ; $6100: $00
	rrca                                             ; $6101: $0f

jr_049_6102:
	nop                                              ; $6102: $00
	ld   bc, $1e09                                   ; $6103: $01 $09 $1e
	add  hl, hl                                      ; $6106: $29
	nop                                              ; $6107: $00
	nop                                              ; $6108: $00
	inc  e                                           ; $6109: $1c
	dec  b                                           ; $610a: $05
	ld   [bc], a                                     ; $610b: $02
	ld   [bc], a                                     ; $610c: $02
	ld   bc, $7877                                   ; $610d: $01 $77 $78
	ld   d, d                                        ; $6110: $52
	ld   h, l                                        ; $6111: $65
	ld   l, l                                        ; $6112: $6d
	and  c                                           ; $6113: $a1
	sub  d                                           ; $6114: $92
	ld   sp, hl                                      ; $6115: $f9
	dec  c                                           ; $6116: $0d
	ld   l, e                                        ; $6117: $6b
	ld   d, h                                        ; $6118: $54
	ld   e, c                                        ; $6119: $59
	rst  $38                                         ; $611a: $ff
	rst  $38                                         ; $611b: $ff
	sbc  [hl]                                        ; $611c: $9e
	inc  b                                           ; $611d: $04
	xor  l                                           ; $611e: $ad
	ld   [bc], a                                     ; $611f: $02
	xor  c                                           ; $6120: $a9
	ld   a, h                                        ; $6121: $7c
	inc  bc                                          ; $6122: $03
	ld   l, l                                        ; $6123: $6d
	dec  b                                           ; $6124: $05
	add  hl, de                                      ; $6125: $19
	ld   [hl], l                                     ; $6126: $75
	dec  c                                           ; $6127: $0d
	inc  b                                           ; $6128: $04
	ld   a, e                                        ; $6129: $7b
	sbc  d                                           ; $612a: $9a
	ld   [hl], h                                     ; $612b: $74
	and  c                                           ; $612c: $a1
	ld   a, b                                        ; $612d: $78
	sbc  a                                           ; $612e: $9f
	dec  c                                           ; $612f: $0d
	nop                                              ; $6130: $00
	ld   a, [bc]                                     ; $6131: $0a
	dec  e                                           ; $6132: $1d
	ld   b, b                                        ; $6133: $40
	dec  d                                           ; $6134: $15
	inc  bc                                          ; $6135: $03
	dec  d                                           ; $6136: $15
	ld   bc, $2902                                   ; $6137: $01 $02 $29
	nop                                              ; $613a: $00
	ld   bc, $a178                                   ; $613b: $01 $78 $a1
	sub  d                                           ; $613e: $92
	sbc  [hl]                                        ; $613f: $9e
	ld   l, [hl]                                     ; $6140: $6e
	sub  a                                           ; $6141: $97
	ld   h, l                                        ; $6142: $65
	ld   a, b                                        ; $6143: $78
	ld   d, d                                        ; $6144: $52
	ld   a, b                                        ; $6145: $78
	db   $fc                                         ; $6146: $fc
	sbc  a                                           ; $6147: $9f
	dec  c                                           ; $6148: $0d
	rst  $38                                         ; $6149: $ff
	rst  $38                                         ; $614a: $ff
	adc  h                                           ; $614b: $8c
	ld   c, a                                        ; $614c: $4f
	sbc  [hl]                                        ; $614d: $9e
	ld   h, l                                        ; $614e: $65
	sub  c                                           ; $614f: $91
	ei                                               ; $6150: $fb
	ld   a, b                                        ; $6151: $78
	ld   d, d                                        ; $6152: $52
	ld   e, c                                        ; $6153: $59
	sbc  a                                           ; $6154: $9f
	dec  c                                           ; $6155: $0d
	adc  c                                           ; $6156: $89
	ld   a, b                                        ; $6157: $78
	sbc  [hl]                                        ; $6158: $9e
	adc  h                                           ; $6159: $8c

Jump_049_615a:
	ld   l, l                                        ; $615a: $6d
	ld   [bc], a                                     ; $615b: $02
	and  l                                           ; $615c: $a5
	inc  b                                           ; $615d: $04
	add  hl, hl                                      ; $615e: $29
	inc  bc                                          ; $615f: $03
	ld   l, e                                        ; $6160: $6b
	inc  b                                           ; $6161: $04
	ld   [de], a                                     ; $6162: $12
	ld   [hl], c                                     ; $6163: $71
	ld   [hl], h                                     ; $6164: $74
	ld   a, b                                        ; $6165: $78
	sbc  a                                           ; $6166: $9f
	dec  c                                           ; $6167: $0d
	nop                                              ; $6168: $00
	ld   a, [bc]                                     ; $6169: $0a
	dec  c                                           ; $616a: $0d
	nop                                              ; $616b: $00
	nop                                              ; $616c: $00
	rrca                                             ; $616d: $0f
	nop                                              ; $616e: $00
	ld   bc, $1e09                                   ; $616f: $01 $09 $1e
	add  hl, hl                                      ; $6172: $29
	nop                                              ; $6173: $00
	nop                                              ; $6174: $00
	inc  e                                           ; $6175: $1c
	dec  b                                           ; $6176: $05
	nop                                              ; $6177: $00
	nop                                              ; $6178: $00
	ld   bc, $6596                                   ; $6179: $01 $96 $65
	sbc  [hl]                                        ; $617c: $9e
	adc  c                                           ; $617d: $89
	ld   a, b                                        ; $617e: $78
	ld   h, e                                        ; $617f: $63
	ld   [hl], c                                     ; $6180: $71
	ld   l, e                                        ; $6181: $6b
	ld   e, l                                        ; $6182: $5d
	dec  c                                           ; $6183: $0d
	inc  bc                                          ; $6184: $03
	ld   l, e                                        ; $6185: $6b
	inc  b                                           ; $6186: $04
	ld   [de], a                                     ; $6187: $12
	ld   [hl], c                                     ; $6188: $71
	ld   [hl], h                                     ; $6189: $74
	sub  b                                           ; $618a: $90
	sub  a                                           ; $618b: $97
	ld   e, b                                        ; $618c: $58
	ld   e, c                                        ; $618d: $59
	db   $fc                                         ; $618e: $fc
	sbc  a                                           ; $618f: $9f
	dec  c                                           ; $6190: $0d
	nop                                              ; $6191: $00
	ld   a, [bc]                                     ; $6192: $0a
	ld   bc, $9a61                                   ; $6193: $01 $61 $9a
	ld   a, l                                        ; $6196: $7d
	sbc  [hl]                                        ; $6197: $9e
	ld   [bc], a                                     ; $6198: $02
	and  l                                           ; $6199: $a5
	inc  bc                                          ; $619a: $03
	adc  [hl]                                        ; $619b: $8e
	inc  bc                                          ; $619c: $03
	xor  h                                           ; $619d: $ac
	inc  b                                           ; $619e: $04
	dec  bc                                          ; $619f: $0b
	ld   a, h                                        ; $61a0: $7c
	sbc  [hl]                                        ; $61a1: $9e
	inc  bc                                          ; $61a2: $03
	add  c                                           ; $61a3: $81
	ld   [bc], a                                     ; $61a4: $02
	ld   d, l                                        ; $61a5: $55
	db   $e3                                         ; $61a6: $e3
	xor  h                                           ; $61a7: $ac
	dec  c                                           ; $61a8: $0d
	sub  d                                           ; $61a9: $92
	ld   a, e                                        ; $61aa: $7b
	and  c                                           ; $61ab: $a1
	ld   e, a                                        ; $61ac: $5f
	ld   [hl], a                                     ; $61ad: $77
	rst  $38                                         ; $61ae: $ff
	rst  $38                                         ; $61af: $ff
	dec  c                                           ; $61b0: $0d
	inc  bc                                          ; $61b1: $03
	ret  c                                           ; $61b2: $d8

	ld   a, c                                        ; $61b3: $79
	ld   e, c                                        ; $61b4: $59
	add  h                                           ; $61b5: $84
	ld   [hl], c                                     ; $61b6: $71
	ld   [hl], h                                     ; $61b7: $74
	ld   e, l                                        ; $61b8: $5d
	sbc  d                                           ; $61b9: $9a
	add  [hl]                                        ; $61ba: $86
	and  c                                           ; $61bb: $a1
	ld   e, c                                        ; $61bc: $59
	sbc  a                                           ; $61bd: $9f
	dec  c                                           ; $61be: $0d
	nop                                              ; $61bf: $00
	ld   a, [bc]                                     ; $61c0: $0a
	add  hl, de                                      ; $61c1: $19
	dec  b                                           ; $61c2: $05
	ld   [bc], a                                     ; $61c3: $02
	db   $ed                                         ; $61c4: $ed
	ei                                               ; $61c5: $fb
	cp   e                                           ; $61c6: $bb
	ld   a, c                                        ; $61c7: $79
	ld   e, c                                        ; $61c8: $59
	add  h                                           ; $61c9: $84
	sbc  c                                           ; $61ca: $99
	nop                                              ; $61cb: $00
	nop                                              ; $61cc: $00
	ld   e, e                                        ; $61cd: $5b
	ld   l, a                                        ; $61ce: $6f
	and  c                                           ; $61cf: $a1
	halt                                             ; $61d0: $76
	ld   e, c                                        ; $61d1: $59
	add  h                                           ; $61d2: $84
	sbc  c                                           ; $61d3: $99
	nop                                              ; $61d4: $00
	ld   bc, $8607                                   ; $61d5: $01 $07 $86
	ld   [bc], a                                     ; $61d8: $02
	ld   [bc], a                                     ; $61d9: $02
	inc  bc                                          ; $61da: $03
	ld   bc, $2000                                   ; $61db: $01 $00 $20
	nop                                              ; $61de: $00
	rlca                                             ; $61df: $07
	db   $db                                         ; $61e0: $db
	inc  bc                                          ; $61e1: $03
	ld   [bc], a                                     ; $61e2: $02
	inc  bc                                          ; $61e3: $03
	ld   bc, $2001                                   ; $61e4: $01 $01 $20
	nop                                              ; $61e7: $00
	ld   b, $4f                                      ; $61e8: $06 $4f
	ld   [bc], a                                     ; $61ea: $02
	inc  e                                           ; $61eb: $1c
	dec  b                                           ; $61ec: $05
	rlca                                             ; $61ed: $07
	rlca                                             ; $61ee: $07
	ld   bc, $5289                                   ; $61ef: $01 $89 $52
	adc  c                                           ; $61f2: $89
	ld   d, d                                        ; $61f3: $52
	sbc  [hl]                                        ; $61f4: $9e
	or   c                                           ; $61f5: $b1
	cp   e                                           ; $61f6: $bb
	or   c                                           ; $61f7: $b1
	cp   e                                           ; $61f8: $bb
	ld   l, c                                        ; $61f9: $69
	and  c                                           ; $61fa: $a1
	halt                                             ; $61fb: $76
	dec  c                                           ; $61fc: $0d
	ld   l, a                                        ; $61fd: $6f
	sub  c                                           ; $61fe: $91
	ld   [hl], c                                     ; $61ff: $71
	ld   l, a                                        ; $6200: $6f
	sub  c                                           ; $6201: $91
	halt                                             ; $6202: $76
	sbc  [hl]                                        ; $6203: $9e
	ld   e, c                                        ; $6204: $59
	add  h                                           ; $6205: $84
	sbc  c                                           ; $6206: $99
	ld   a, [$000d]                                  ; $6207: $fa $0d $00
	ld   a, [bc]                                     ; $620a: $0a
	inc  e                                           ; $620b: $1c
	dec  b                                           ; $620c: $05
	ld   bc, $0101                                   ; $620d: $01 $01 $01
	sub  [hl]                                        ; $6210: $96
	ld   h, l                                        ; $6211: $65
	sbc  [hl]                                        ; $6212: $9e
	cp   h                                           ; $6213: $bc
	call nz, $abc9                                   ; $6214: $c4 $c9 $ab
	call nz, $fbb2                                   ; $6217: $c4 $b2 $fb
	sub  d                                           ; $621a: $92
	sbc  a                                           ; $621b: $9f
	dec  c                                           ; $621c: $0d
	nop                                              ; $621d: $00
	ld   a, [bc]                                     ; $621e: $0a
	ld   b, $db                                      ; $621f: $06 $db
	inc  bc                                          ; $6221: $03
	inc  e                                           ; $6222: $1c
	dec  b                                           ; $6223: $05
	nop                                              ; $6224: $00
	nop                                              ; $6225: $00
	ld   bc, $5656                                   ; $6226: $01 $56 $56
	ld   e, c                                        ; $6229: $59
	sbc  [hl]                                        ; $622a: $9e
	adc  c                                           ; $622b: $89
	ld   a, b                                        ; $622c: $78
	ld   [bc], a                                     ; $622d: $02
	ld   a, a                                        ; $622e: $7f
	ld   e, l                                        ; $622f: $5d
	ld   [hl], l                                     ; $6230: $75
	sbc  a                                           ; $6231: $9f
	dec  c                                           ; $6232: $0d
	cp   d                                           ; $6233: $ba
	and  l                                           ; $6234: $a5
	call nz, $abc2                                   ; $6235: $c4 $c2 $ab
	push af                                          ; $6238: $f5
	ld   a, [$000d]                                  ; $6239: $fa $0d $00
	ld   a, [bc]                                     ; $623c: $0a
	dec  c                                           ; $623d: $0d
	nop                                              ; $623e: $00
	nop                                              ; $623f: $00
	rrca                                             ; $6240: $0f
	nop                                              ; $6241: $00
	ld   bc, $080c                                   ; $6242: $01 $0c $08
	ld   sp, $2040                                   ; $6245: $31 $40 $20
	inc  bc                                          ; $6248: $03
	jr   nz, jr_049_624c                             ; $6249: $20 $01

	ld   a, [bc]                                     ; $624b: $0a

jr_049_624c:
	add  hl, hl                                      ; $624c: $29
	nop                                              ; $624d: $00
	inc  e                                           ; $624e: $1c
	dec  b                                           ; $624f: $05
	jr   nz, jr_049_625a                             ; $6250: $20 $08

	ld   bc, $8c67                                   ; $6252: $01 $67 $8c
	and  c                                           ; $6255: $a1
	sbc  [hl]                                        ; $6256: $9e
	ld   h, a                                        ; $6257: $67
	adc  h                                           ; $6258: $8c
	and  c                                           ; $6259: $a1

jr_049_625a:
	sbc  a                                           ; $625a: $9f
	dec  c                                           ; $625b: $0d
	nop                                              ; $625c: $00
	dec  b                                           ; $625d: $05
	add  b                                           ; $625e: $80
	jr   nc, @+$03                                   ; $625f: $30 $01

	ld   bc, $0100                                   ; $6261: $01 $00 $01
	inc  bc                                          ; $6264: $03
	add  e                                           ; $6265: $83
	inc  b                                           ; $6266: $04
	sbc  b                                           ; $6267: $98
	ld   h, l                                        ; $6268: $65
	ld   [hl], h                                     ; $6269: $74
	ld   h, l                                        ; $626a: $65
	sub  b                                           ; $626b: $90
	ld   l, l                                        ; $626c: $6d
	sbc  l                                           ; $626d: $9d
	sbc  a                                           ; $626e: $9f
	dec  c                                           ; $626f: $0d
	nop                                              ; $6270: $00
	dec  b                                           ; $6271: $05
	ld   b, b                                        ; $6272: $40
	ld   b, b                                        ; $6273: $40
	ld   [bc], a                                     ; $6274: $02
	nop                                              ; $6275: $00
	nop                                              ; $6276: $00
	ld   bc, $d0d0                                   ; $6277: $01 $d0 $d0
	ret  nc                                          ; $627a: $d0

	ret  nc                                          ; $627b: $d0

	sbc  a                                           ; $627c: $9f
	dec  c                                           ; $627d: $0d
	nop                                              ; $627e: $00
	ld   a, [bc]                                     ; $627f: $0a
	dec  b                                           ; $6280: $05
	add  b                                           ; $6281: $80
	reti                                             ; $6282: $d9


	ld   bc, $0001                                   ; $6283: $01 $01 $00
	rrca                                             ; $6286: $0f
	nop                                              ; $6287: $00
	ld   bc, $ff01                                   ; $6288: $01 $01 $ff
	rst  $38                                         ; $628b: $ff
	rst  $38                                         ; $628c: $ff
	rst  $38                                         ; $628d: $ff
	rst  $38                                         ; $628e: $ff
	rst  $38                                         ; $628f: $ff
	dec  c                                           ; $6290: $0d
	ld   d, b                                        ; $6291: $50
	ei                                               ; $6292: $fb
	add  c                                           ; $6293: $81
	ld   [hl], c                                     ; $6294: $71
	ld   e, l                                        ; $6295: $5d
	sbc  b                                           ; $6296: $98
	ld   h, l                                        ; $6297: $65
	ld   l, l                                        ; $6298: $6d
	rst  $38                                         ; $6299: $ff
	rst  $38                                         ; $629a: $ff
	dec  c                                           ; $629b: $0d
	nop                                              ; $629c: $00
	ld   a, [bc]                                     ; $629d: $0a
	rrca                                             ; $629e: $0f
	dec  b                                           ; $629f: $05
	ld   [$5801], sp                                 ; $62a0: $08 $01 $58
	ld   [hl], c                                     ; $62a3: $71
	rst  $38                                         ; $62a4: $ff
	rst  $38                                         ; $62a5: $ff
	ld   [$7d00], sp                                 ; $62a6: $08 $00 $7d
	and  c                                           ; $62a9: $a1
	dec  c                                           ; $62aa: $0d
	inc  b                                           ; $62ab: $04
	sub  $02                                         ; $62ac: $d6 $02
	jp   Jump_049_7192                               ; $62ae: $c3 $92 $71


	ld   l, l                                        ; $62b1: $6d
	ld   e, c                                        ; $62b2: $59
	ld   a, [$000d]                                  ; $62b3: $fa $0d $00
	ld   a, [bc]                                     ; $62b6: $0a
	rrca                                             ; $62b7: $0f
	nop                                              ; $62b8: $00
	ld   bc, $5601                                   ; $62b9: $01 $01 $56
	ld   d, [hl]                                     ; $62bc: $56
	sbc  a                                           ; $62bd: $9f
	ld   a, b                                        ; $62be: $78
	and  c                                           ; $62bf: $a1
	halt                                             ; $62c0: $76
	ld   a, b                                        ; $62c1: $78
	ld   e, l                                        ; $62c2: $5d
	and  l                                           ; $62c3: $a5
	and  $78                                         ; $62c4: $e6 $78
	dec  b                                           ; $62c6: $05
	ld   e, a                                        ; $62c7: $5f
	ld   [bc], a                                     ; $62c8: $02
	scf                                              ; $62c9: $37
	ld   e, d                                        ; $62ca: $5a
	dec  c                                           ; $62cb: $0d
	ld   h, l                                        ; $62cc: $65
	ld   l, l                                        ; $62cd: $6d
	and  c                                           ; $62ce: $a1
	ld   [hl], l                                     ; $62cf: $75
	sbc  [hl]                                        ; $62d0: $9e
	ld   e, e                                        ; $62d1: $5b
	ld   l, a                                        ; $62d2: $6f
	and  c                                           ; $62d3: $a1
	halt                                             ; $62d4: $76
	dec  c                                           ; $62d5: $0d
	ld   [hl], d                                     ; $62d6: $72
	ld   e, a                                        ; $62d7: $5f
	ld   a, b                                        ; $62d8: $78
	ld   e, c                                        ; $62d9: $59
	ld   [hl], c                                     ; $62da: $71
	ld   l, l                                        ; $62db: $6d
	and  c                                           ; $62dc: $a1
	ld   [hl], l                                     ; $62dd: $75
	ld   h, a                                        ; $62de: $67
	sub  [hl]                                        ; $62df: $96
	sbc  a                                           ; $62e0: $9f
	dec  c                                           ; $62e1: $0d
	nop                                              ; $62e2: $00
	ld   a, [bc]                                     ; $62e3: $0a
	ld   bc, $7c6b                                   ; $62e4: $01 $6b $7c
	ld   e, b                                        ; $62e7: $58
	ld   e, c                                        ; $62e8: $59
	ld   h, b                                        ; $62e9: $60
	ld   [hl], l                                     ; $62ea: $75
	sbc  [hl]                                        ; $62eb: $9e
	ld   [bc], a                                     ; $62ec: $02
	ld   e, b                                        ; $62ed: $58
	ld   [bc], a                                     ; $62ee: $02
	ld   d, [hl]                                     ; $62ef: $56
	ld   e, d                                        ; $62f0: $5a
	dec  c                                           ; $62f1: $0d
	dec  b                                           ; $62f2: $05
	rst  JumpTable                                         ; $62f3: $df
	ld   [hl], c                                     ; $62f4: $71
	inc  b                                           ; $62f5: $04
	ld   a, a                                        ; $62f6: $7f
	and  c                                           ; $62f7: $a1
	ld   [hl], l                                     ; $62f8: $75
	ld   d, d                                        ; $62f9: $52
	ld   [hl], c                                     ; $62fa: $71
	ld   [hl], h                                     ; $62fb: $74
	sbc  [hl]                                        ; $62fc: $9e
	adc  h                                           ; $62fd: $8c
	ld   e, e                                        ; $62fe: $5b
	ld   l, h                                        ; $62ff: $6c
	ld   d, [hl]                                     ; $6300: $56
	and  b                                           ; $6301: $a0
	dec  c                                           ; $6302: $0d
	ld   e, l                                        ; $6303: $5d
	sbc  l                                           ; $6304: $9d
	ld   l, b                                        ; $6305: $68
	ld   a, c                                        ; $6306: $79
	ld   h, a                                        ; $6307: $67
	adc  l                                           ; $6308: $8d
	adc  h                                           ; $6309: $8c
	ld   h, l                                        ; $630a: $65
	ld   l, l                                        ; $630b: $6d
	sbc  a                                           ; $630c: $9f
	dec  c                                           ; $630d: $0d
	nop                                              ; $630e: $00
	ld   a, [bc]                                     ; $630f: $0a
	inc  e                                           ; $6310: $1c
	dec  b                                           ; $6311: $05
	jr   nz, jr_049_631c                             ; $6312: $20 $08

	dec  e                                           ; $6314: $1d
	ld   b, b                                        ; $6315: $40
	dec  d                                           ; $6316: $15
	inc  bc                                          ; $6317: $03
	dec  d                                           ; $6318: $15
	ld   bc, $2902                                   ; $6319: $01 $02 $29

jr_049_631c:
	nop                                              ; $631c: $00
	ld   bc, $fca1                                   ; $631d: $01 $a1 $fc
	sbc  [hl]                                        ; $6320: $9e
	ld   b, $54                                      ; $6321: $06 $54
	dec  b                                           ; $6323: $05
	ret                                              ; $6324: $c9


	ld   a, b                                        ; $6325: $78
	ld   [bc], a                                     ; $6326: $02
	and  c                                           ; $6327: $a1
	inc  b                                           ; $6328: $04
	sbc  [hl]                                        ; $6329: $9e
	sub  d                                           ; $632a: $92
	ld   a, b                                        ; $632b: $78
	db   $fc                                         ; $632c: $fc
	sbc  a                                           ; $632d: $9f
	dec  c                                           ; $632e: $0d
	db   $fd                                         ; $632f: $fd
	and  l                                           ; $6330: $a5
	and  $78                                         ; $6331: $e6 $78
	dec  b                                           ; $6333: $05
	ld   e, a                                        ; $6334: $5f
	ld   [bc], a                                     ; $6335: $02
	scf                                              ; $6336: $37
	cp   $6f                                         ; $6337: $fe $6f
	sub  e                                           ; $6339: $93
	ei                                               ; $633a: $fb
	ld   a, h                                        ; $633b: $7c
	ld   a, l                                        ; $633c: $7d
	dec  c                                           ; $633d: $0d
	inc  b                                           ; $633e: $04
	ld   l, h                                        ; $633f: $6c
	ld   h, l                                        ; $6340: $65
	ld   d, d                                        ; $6341: $52
	ld   a, b                                        ; $6342: $78
	db   $fc                                         ; $6343: $fc
	sbc  a                                           ; $6344: $9f
	dec  c                                           ; $6345: $0d
	nop                                              ; $6346: $00
	ld   a, [bc]                                     ; $6347: $0a
	inc  e                                           ; $6348: $1c
	dec  b                                           ; $6349: $05
	jr   nz, jr_049_6354                             ; $634a: $20 $08

	ld   bc, $ffff                                   ; $634c: $01 $ff $ff
	adc  h                                           ; $634f: $8c
	ld   d, b                                        ; $6350: $50
	sbc  [hl]                                        ; $6351: $9e
	xor  c                                           ; $6352: $a9
	xor  c                                           ; $6353: $a9

jr_049_6354:
	sbc  l                                           ; $6354: $9d
	rst  $38                                         ; $6355: $ff
	rst  $38                                         ; $6356: $ff
	sbc  a                                           ; $6357: $9f
	dec  c                                           ; $6358: $0d
	inc  b                                           ; $6359: $04
	sub  $02                                         ; $635a: $d6 $02
	jp   Jump_049_7192                               ; $635c: $c3 $92 $71


	ld   [hl], h                                     ; $635f: $74
	and  c                                           ; $6360: $a1
	ld   h, l                                        ; $6361: $65
	sbc  a                                           ; $6362: $9f
	dec  c                                           ; $6363: $0d
	adc  c                                           ; $6364: $89
	ld   a, b                                        ; $6365: $78
	sbc  [hl]                                        ; $6366: $9e
	ld   e, b                                        ; $6367: $58
	inc  b                                           ; $6368: $04
	ld   a, e                                        ; $6369: $7b
	sbc  d                                           ; $636a: $9a
	ld   h, e                                        ; $636b: $63
	and  c                                           ; $636c: $a1
	ld   [hl], l                                     ; $636d: $75
	ld   h, l                                        ; $636e: $65
	ld   l, l                                        ; $636f: $6d
	sbc  a                                           ; $6370: $9f
	dec  c                                           ; $6371: $0d
	nop                                              ; $6372: $00
	ld   a, [bc]                                     ; $6373: $0a
	add  hl, hl                                      ; $6374: $29
	nop                                              ; $6375: $00
	nop                                              ; $6376: $00
	inc  e                                           ; $6377: $1c
	dec  b                                           ; $6378: $05
	nop                                              ; $6379: $00
	nop                                              ; $637a: $00
	ld   bc, $5656                                   ; $637b: $01 $56 $56
	ld   e, c                                        ; $637e: $59
	sbc  [hl]                                        ; $637f: $9e
	adc  c                                           ; $6380: $89
	ld   a, b                                        ; $6381: $78
	ld   [bc], a                                     ; $6382: $02
	ld   a, a                                        ; $6383: $7f
	ld   e, l                                        ; $6384: $5d
	ld   [hl], l                                     ; $6385: $75
	sbc  a                                           ; $6386: $9f
	dec  c                                           ; $6387: $0d
	cp   d                                           ; $6388: $ba
	and  l                                           ; $6389: $a5
	call nz, $abc2                                   ; $638a: $c4 $c2 $ab
	push af                                          ; $638d: $f5
	ld   a, [$000d]                                  ; $638e: $fa $0d $00
	ld   a, [bc]                                     ; $6391: $0a
	dec  c                                           ; $6392: $0d
	nop                                              ; $6393: $00
	nop                                              ; $6394: $00
	rrca                                             ; $6395: $0f
	nop                                              ; $6396: $00
	ld   bc, $080c                                   ; $6397: $01 $0c $08
	inc  de                                          ; $639a: $13
	nop                                              ; $639b: $00
	inc  e                                           ; $639c: $1c
	dec  b                                           ; $639d: $05
	jr   nz, jr_049_63a8                             ; $639e: $20 $08

	ld   bc, $8c67                                   ; $63a0: $01 $67 $8c
	and  c                                           ; $63a3: $a1
	sbc  [hl]                                        ; $63a4: $9e
	ld   h, a                                        ; $63a5: $67
	adc  h                                           ; $63a6: $8c
	and  c                                           ; $63a7: $a1

jr_049_63a8:
	sbc  a                                           ; $63a8: $9f
	dec  c                                           ; $63a9: $0d
	inc  bc                                          ; $63aa: $03
	add  e                                           ; $63ab: $83
	inc  b                                           ; $63ac: $04
	sbc  b                                           ; $63ad: $98
	ld   h, l                                        ; $63ae: $65
	ld   [hl], h                                     ; $63af: $74
	ld   h, l                                        ; $63b0: $65
	sub  b                                           ; $63b1: $90
	ld   l, l                                        ; $63b2: $6d
	sbc  l                                           ; $63b3: $9d
	sbc  a                                           ; $63b4: $9f
	dec  c                                           ; $63b5: $0d
	ret  nc                                          ; $63b6: $d0

	ret  nc                                          ; $63b7: $d0

	ret  nc                                          ; $63b8: $d0

	ret  nc                                          ; $63b9: $d0

	rst  $38                                         ; $63ba: $ff
	rst  $38                                         ; $63bb: $ff
	ld   sp, hl                                      ; $63bc: $f9
	ld   sp, hl                                      ; $63bd: $f9
	ld   sp, hl                                      ; $63be: $f9
	dec  c                                           ; $63bf: $0d
	nop                                              ; $63c0: $00
	ld   a, [bc]                                     ; $63c1: $0a
	ld   bc, hScriptOpcodeParams+1                                   ; $63c2: $01 $a1 $ff
	rst  $38                                         ; $63c5: $ff
	ld   sp, hl                                      ; $63c6: $f9
	dec  c                                           ; $63c7: $0d
	ld   [$7d00], sp                                 ; $63c8: $08 $00 $7d
	and  c                                           ; $63cb: $a1
	ld   sp, hl                                      ; $63cc: $f9
	dec  c                                           ; $63cd: $0d
	inc  b                                           ; $63ce: $04
	ld   c, $03                                      ; $63cf: $0e $03
	sbc  l                                           ; $63d1: $9d
	inc  b                                           ; $63d2: $04
	and  [hl]                                        ; $63d3: $a6
	ld   e, c                                        ; $63d4: $59
	ld   sp, hl                                      ; $63d5: $f9
	dec  c                                           ; $63d6: $0d
	nop                                              ; $63d7: $00
	ld   a, [bc]                                     ; $63d8: $0a
	rlca                                             ; $63d9: $07
	ld   [hl], e                                     ; $63da: $73
	dec  b                                           ; $63db: $05
	inc  bc                                          ; $63dc: $03
	inc  d                                           ; $63dd: $14
	ld   bc, $2365                                   ; $63de: $01 $65 $23
	nop                                              ; $63e1: $00
	inc  e                                           ; $63e2: $1c
	inc  b                                           ; $63e3: $04
	ld   b, $06                                      ; $63e4: $06 $06
	ld   bc, $fb50                                   ; $63e6: $01 $50 $fb
	ld   [hl], c                                     ; $63e9: $71
	sbc  [hl]                                        ; $63ea: $9e
	ld   h, c                                        ; $63eb: $61
	ld   d, h                                        ; $63ec: $54
	sub  a                                           ; $63ed: $97
	and  c                                           ; $63ee: $a1
	ld   a, [$000d]                                  ; $63ef: $fa $0d $00
	ld   a, [bc]                                     ; $63f2: $0a
	dec  b                                           ; $63f3: $05
	add  b                                           ; $63f4: $80
	jr   nc, @+$03                                   ; $63f5: $30 $01

	ld   bc, $0500                                   ; $63f7: $01 $00 $05
	ld   b, b                                        ; $63fa: $40
	ld   b, b                                        ; $63fb: $40
	ld   [bc], a                                     ; $63fc: $02
	nop                                              ; $63fd: $00
	nop                                              ; $63fe: $00
	inc  e                                           ; $63ff: $1c
	inc  b                                           ; $6400: $04
	rlca                                             ; $6401: $07
	rlca                                             ; $6402: $07
	ld   bc, $6d8c                                   ; $6403: $01 $8c $6d
	ld   h, l                                        ; $6406: $65
	ld   [hl], c                                     ; $6407: $71
	ld   a, a                                        ; $6408: $7f
	ld   d, d                                        ; $6409: $52
	ld   h, l                                        ; $640a: $65
	ld   l, l                                        ; $640b: $6d
	and  c                                           ; $640c: $a1
	ld   [hl], l                                     ; $640d: $75
	ld   h, l                                        ; $640e: $65
	sub  l                                           ; $640f: $95
	ei                                               ; $6410: $fb
	sbc  a                                           ; $6411: $9f
	dec  c                                           ; $6412: $0d
	ld   d, b                                        ; $6413: $50
	ei                                               ; $6414: $fb
	ld   d, b                                        ; $6415: $50
	sbc  [hl]                                        ; $6416: $9e
	ld   l, a                                        ; $6417: $6f
	ld   d, d                                        ; $6418: $52
	ld   [bc], a                                     ; $6419: $02
	inc  de                                          ; $641a: $13
	ld   l, a                                        ; $641b: $6f
	sub  c                                           ; $641c: $91
	and  c                                           ; $641d: $a1
	adc  h                                           ; $641e: $8c
	ld   [hl], l                                     ; $641f: $75
	dec  c                                           ; $6420: $0d
	adc  h                                           ; $6421: $8c
	ld   e, e                                        ; $6422: $5b
	ld   h, c                                        ; $6423: $61
	and  c                                           ; $6424: $a1
	ld   h, [hl]                                     ; $6425: $66
	sub  c                                           ; $6426: $91
	ld   [hl], c                                     ; $6427: $71
	ld   [hl], h                                     ; $6428: $74
	sbc  a                                           ; $6429: $9f
	dec  c                                           ; $642a: $0d
	nop                                              ; $642b: $00
	ld   a, [bc]                                     ; $642c: $0a
	inc  e                                           ; $642d: $1c
	inc  b                                           ; $642e: $04
	ld   bc, $0101                                   ; $642f: $01 $01 $01
	ld   l, a                                        ; $6432: $6f
	ld   d, d                                        ; $6433: $52
	ld   [bc], a                                     ; $6434: $02
	inc  de                                          ; $6435: $13
	ld   l, a                                        ; $6436: $6f
	sub  c                                           ; $6437: $91
	and  c                                           ; $6438: $a1
	sbc  [hl]                                        ; $6439: $9e
	ld   l, [hl]                                     ; $643a: $6e
	ld   d, d                                        ; $643b: $52
	ld   h, [hl]                                     ; $643c: $66
	sub  l                                           ; $643d: $95
	ld   d, h                                        ; $643e: $54
	add  h                                           ; $643f: $84
	ld   sp, hl                                      ; $6440: $f9
	dec  c                                           ; $6441: $0d
	and  e                                           ; $6442: $a3
	and  l                                           ; $6443: $a5
	db   $ec                                         ; $6444: $ec
	cp   d                                           ; $6445: $ba
	ld   e, d                                        ; $6446: $5a
	ld   d, d                                        ; $6447: $52
	adc  h                                           ; $6448: $8c
	sbc  [hl]                                        ; $6449: $9e
	dec  c                                           ; $644a: $0d
	ld   a, b                                        ; $644b: $78
	ld   e, b                                        ; $644c: $58
	ld   h, l                                        ; $644d: $65
	ld   [hl], h                                     ; $644e: $74
	ld   d, b                                        ; $644f: $50
	ld   h, b                                        ; $6450: $60
	sbc  c                                           ; $6451: $99
	ld   e, c                                        ; $6452: $59
	sub  a                                           ; $6453: $97
	ld   a, e                                        ; $6454: $7b
	sbc  a                                           ; $6455: $9f
	dec  c                                           ; $6456: $0d
	nop                                              ; $6457: $00
	ld   a, [bc]                                     ; $6458: $0a
	ld   bc, $eca5                                   ; $6459: $01 $a5 $ec
	cp   d                                           ; $645c: $ba
	di                                               ; $645d: $f3
	rst  JumpTable                                         ; $645e: $df
	db   $ec                                         ; $645f: $ec
	ld   [$fbce], a                                  ; $6460: $ea $ce $fb
	call nz, $fac9                                   ; $6463: $c4 $c9 $fa
	dec  c                                           ; $6466: $0d
	nop                                              ; $6467: $00
	ld   a, [bc]                                     ; $6468: $0a
	inc  c                                           ; $6469: $0c
	ld   a, [bc]                                     ; $646a: $0a
	add  hl, bc                                      ; $646b: $09
	ld   d, b                                        ; $646c: $50
	dec  c                                           ; $646d: $0d
	nop                                              ; $646e: $00
	nop                                              ; $646f: $00
	rrca                                             ; $6470: $0f
	nop                                              ; $6471: $00
	ld   bc, $020c                                   ; $6472: $01 $0c $02
	ld   sp, $2040                                   ; $6475: $31 $40 $20
	ld   bc, $00ff                                   ; $6478: $01 $ff $00
	ld   c, $03                                      ; $647b: $0e $03
	add  hl, bc                                      ; $647d: $09
	ld   d, b                                        ; $647e: $50
	inc  de                                          ; $647f: $13
	ld   [bc], a                                     ; $6480: $02
	ld   bc, $ff54                                   ; $6481: $01 $54 $ff
	rst  $38                                         ; $6484: $ff
	sbc  [hl]                                        ; $6485: $9e
	ld   d, h                                        ; $6486: $54
	db   $fc                                         ; $6487: $fc
	and  c                                           ; $6488: $a1
	rst  $38                                         ; $6489: $ff
	rst  $38                                         ; $648a: $ff
	dec  c                                           ; $648b: $0d
	nop                                              ; $648c: $00
	ld   a, [bc]                                     ; $648d: $0a
	inc  c                                           ; $648e: $0c
	inc  c                                           ; $648f: $0c
	ld   c, $55                                      ; $6490: $0e $55
	rrca                                             ; $6492: $0f
	nop                                              ; $6493: $00
	ld   bc, $040d                                   ; $6494: $01 $0d $04
	ld   bc, $040f                                   ; $6497: $01 $0f $04
	ld   bc, $9001                                   ; $649a: $01 $01 $90
	ld   d, h                                        ; $649d: $54
	ld   l, [hl]                                     ; $649e: $6e
	ld   d, d                                        ; $649f: $52
	ld   h, [hl]                                     ; $64a0: $66
	sub  l                                           ; $64a1: $95
	ld   d, h                                        ; $64a2: $54
	add  h                                           ; $64a3: $84
	ld   l, [hl]                                     ; $64a4: $6e
	sub  [hl]                                        ; $64a5: $96
	sbc  a                                           ; $64a6: $9f
	dec  c                                           ; $64a7: $0d
	ld   l, a                                        ; $64a8: $6f
	ld   d, d                                        ; $64a9: $52
	ld   [bc], a                                     ; $64aa: $02
	inc  de                                          ; $64ab: $13
	ld   l, a                                        ; $64ac: $6f
	sub  c                                           ; $64ad: $91
	and  c                                           ; $64ae: $a1
	sbc  a                                           ; $64af: $9f
	dec  c                                           ; $64b0: $0d
	nop                                              ; $64b1: $00
	ld   a, [bc]                                     ; $64b2: $0a
	rrca                                             ; $64b3: $0f
	nop                                              ; $64b4: $00
	ld   bc, $0301                                   ; $64b5: $01 $01 $03
	ld   e, e                                        ; $64b8: $5b
	ld   e, c                                        ; $64b9: $59
	ld   [hl], c                                     ; $64ba: $71
	ld   l, l                                        ; $64bb: $6d
	ld   a, h                                        ; $64bc: $7c
	ld   e, c                                        ; $64bd: $59
	rst  $38                                         ; $64be: $ff
	rst  $38                                         ; $64bf: $ff
	dec  c                                           ; $64c0: $0d
	nop                                              ; $64c1: $00
	ld   a, [bc]                                     ; $64c2: $0a
	inc  e                                           ; $64c3: $1c
	dec  b                                           ; $64c4: $05
	inc  b                                           ; $64c5: $04
	inc  b                                           ; $64c6: $04
	dec  e                                           ; $64c7: $1d
	ld   b, b                                        ; $64c8: $40
	dec  d                                           ; $64c9: $15
	inc  bc                                          ; $64ca: $03
	dec  d                                           ; $64cb: $15
	ld   bc, $2802                                   ; $64cc: $01 $02 $28
	nop                                              ; $64cf: $00
	ld   bc, $9756                                   ; $64d0: $01 $56 $97
	ld   d, d                                        ; $64d3: $52
	ld   h, a                                        ; $64d4: $67
	adc  h                                           ; $64d5: $8c
	and  c                                           ; $64d6: $a1
	ld   e, c                                        ; $64d7: $59
	ld   [hl], c                                     ; $64d8: $71
	ld   l, l                                        ; $64d9: $6d
	ld   a, b                                        ; $64da: $78
	db   $fc                                         ; $64db: $fc
	sbc  a                                           ; $64dc: $9f
	dec  c                                           ; $64dd: $0d
	ld   [bc], a                                     ; $64de: $02
	and  l                                           ; $64df: $a5
	inc  b                                           ; $64e0: $04
	xor  d                                           ; $64e1: $aa
	ld   a, l                                        ; $64e2: $7d
	sub  b                                           ; $64e3: $90
	ld   d, h                                        ; $64e4: $54
	sbc  [hl]                                        ; $64e5: $9e
	inc  b                                           ; $64e6: $04
	sub  l                                           ; $64e7: $95
	ld   [bc], a                                     ; $64e8: $02
	ld   hl, $0279                                   ; $64e9: $21 $79 $02
	or   l                                           ; $64ec: $b5
	ld   [hl], c                                     ; $64ed: $71
	ld   [hl], h                                     ; $64ee: $74
	dec  c                                           ; $64ef: $0d
	sub  h                                           ; $64f0: $94
	ld   [hl], c                                     ; $64f1: $71
	ld   e, l                                        ; $64f2: $5d
	sbc  b                                           ; $64f3: $98
	inc  bc                                          ; $64f4: $03
	and  a                                           ; $64f5: $a7
	and  c                                           ; $64f6: $a1
	ld   [hl], l                                     ; $64f7: $75
	ld   a, b                                        ; $64f8: $78
	db   $fc                                         ; $64f9: $fc
	sbc  a                                           ; $64fa: $9f
	dec  c                                           ; $64fb: $0d
	nop                                              ; $64fc: $00
	ld   a, [bc]                                     ; $64fd: $0a
	ld   bc, $9258                                   ; $64fe: $01 $58 $92
	ld   h, a                                        ; $6501: $67
	adc  l                                           ; $6502: $8d
	sbc  [hl]                                        ; $6503: $9e
	ld   [$7d00], sp                                 ; $6504: $08 $00 $7d
	and  c                                           ; $6507: $a1
	sbc  a                                           ; $6508: $9f
	dec  c                                           ; $6509: $0d
	nop                                              ; $650a: $00
	ld   a, [bc]                                     ; $650b: $0a
	add  hl, hl                                      ; $650c: $29
	nop                                              ; $650d: $00
	nop                                              ; $650e: $00
	inc  e                                           ; $650f: $1c
	dec  b                                           ; $6510: $05
	inc  bc                                          ; $6511: $03
	inc  bc                                          ; $6512: $03
	ld   bc, $0008                                   ; $6513: $01 $08 $00
	ld   a, l                                        ; $6516: $7d
	and  c                                           ; $6517: $a1
	ld   a, [$080d]                                  ; $6518: $fa $0d $08
	nop                                              ; $651b: $00
	ld   a, l                                        ; $651c: $7d
	and  c                                           ; $651d: $a1
	ld   a, [$650d]                                  ; $651e: $fa $0d $65
	ld   [hl], c                                     ; $6521: $71
	ld   e, c                                        ; $6522: $59
	sbc  b                                           ; $6523: $98
	ld   h, l                                        ; $6524: $65
	ei                                               ; $6525: $fb
	sub  d                                           ; $6526: $92
	ld   a, [$0dfa]                                  ; $6527: $fa $fa $0d
	nop                                              ; $652a: $00
	ld   a, [bc]                                     ; $652b: $0a
	dec  c                                           ; $652c: $0d
	nop                                              ; $652d: $00
	nop                                              ; $652e: $00
	rrca                                             ; $652f: $0f
	nop                                              ; $6530: $00
	ld   bc, $020c                                   ; $6531: $01 $0c $02
	ld   c, $03                                      ; $6534: $0e $03
	add  hl, bc                                      ; $6536: $09
	ld   e, $0c                                      ; $6537: $1e $0c
	inc  c                                           ; $6539: $0c
	ld   c, $73                                      ; $653a: $0e $73
	inc  e                                           ; $653c: $1c
	ld   a, [bc]                                     ; $653d: $0a
	nop                                              ; $653e: $00
	nop                                              ; $653f: $00
	ld   bc, $fc96                                   ; $6540: $01 $96 $fc
	sbc  [hl]                                        ; $6543: $9e
	ld   [$9f00], sp                                 ; $6544: $08 $00 $9f
	dec  c                                           ; $6547: $0d
	ld   h, e                                        ; $6548: $63
	ld   d, d                                        ; $6549: $52
	ld   a, b                                        ; $654a: $78
	and  c                                           ; $654b: $a1
	ld   l, [hl]                                     ; $654c: $6e
	ld   [hl], c                                     ; $654d: $71
	ld   l, l                                        ; $654e: $6d
	ld   a, b                                        ; $654f: $78
	sbc  a                                           ; $6550: $9f
	dec  c                                           ; $6551: $0d
	nop                                              ; $6552: $00
	ld   a, [bc]                                     ; $6553: $0a
	inc  e                                           ; $6554: $1c
	ld   a, [bc]                                     ; $6555: $0a

Call_049_6556:
	inc  b                                           ; $6556: $04
	inc  b                                           ; $6557: $04
	ld   bc, hScriptOpcodeParams+1                                   ; $6558: $01 $a1 $ff

Jump_049_655b:
	rst  $38                                         ; $655b: $ff
	sbc  [hl]                                        ; $655c: $9e
	ld   [hl], l                                     ; $655d: $75
	sub  b                                           ; $655e: $90
	ld   h, c                                        ; $655f: $61
	ld   a, h                                        ; $6560: $7c
	or   d                                           ; $6561: $b2
	xor  l                                           ; $6562: $ad
	ld   h, [hl]                                     ; $6563: $66
	sub  c                                           ; $6564: $91
	db   $fc                                         ; $6565: $fc
	dec  c                                           ; $6566: $0d
	inc  bc                                          ; $6567: $03
	ld   l, l                                        ; $6568: $6d
	dec  b                                           ; $6569: $05
	add  hl, de                                      ; $656a: $19
	ld   a, l                                        ; $656b: $7d
	ld   [bc], a                                     ; $656c: $02
	ei                                               ; $656d: $fb
	ld   e, a                                        ; $656e: $5f
	sub  a                                           ; $656f: $97
	sbc  d                                           ; $6570: $9a
	ld   l, e                                        ; $6571: $6b
	ld   d, h                                        ; $6572: $54
	ld   a, c                                        ; $6573: $79
	ld   a, e                                        ; $6574: $7b
	ei                                               ; $6575: $fb
	ld   a, b                                        ; $6576: $78
	sbc  a                                           ; $6577: $9f
	dec  c                                           ; $6578: $0d
	nop                                              ; $6579: $00
	ld   a, [bc]                                     ; $657a: $0a
	ld   bc, $9d59                                   ; $657b: $01 $59 $9d
	ld   d, d                                        ; $657e: $52
	ld   l, e                                        ; $657f: $6b
	ld   d, h                                        ; $6580: $54
	ld   l, [hl]                                     ; $6581: $6e
	ld   e, d                                        ; $6582: $5a
	rst  $38                                         ; $6583: $ff
	rst  $38                                         ; $6584: $ff
	dec  c                                           ; $6585: $0d
	ld   [bc], a                                     ; $6586: $02
	and  l                                           ; $6587: $a5
	ld   [bc], a                                     ; $6588: $02
	sub  e                                           ; $6589: $93
	ld   a, h                                        ; $658a: $7c
	inc  b                                           ; $658b: $04
	dec  c                                           ; $658c: $0d
	ld   [bc], a                                     ; $658d: $02
	sub  [hl]                                        ; $658e: $96
	inc  b                                           ; $658f: $04
	ld   b, l                                        ; $6590: $45
	inc  b                                           ; $6591: $04
	ld   a, [bc]                                     ; $6592: $0a
	ld   a, l                                        ; $6593: $7d
	sbc  [hl]                                        ; $6594: $9e
	dec  c                                           ; $6595: $0d
	ld   h, c                                        ; $6596: $61

Call_049_6597:
	ld   h, c                                        ; $6597: $61
	adc  h                                           ; $6598: $8c
	ld   [hl], l                                     ; $6599: $75
	ld   l, [hl]                                     ; $659a: $6e
	ld   a, b                                        ; $659b: $78
	sbc  a                                           ; $659c: $9f
	dec  c                                           ; $659d: $0d
	nop                                              ; $659e: $00
	ld   a, [bc]                                     ; $659f: $0a
	inc  e                                           ; $65a0: $1c
	ld   a, [bc]                                     ; $65a1: $0a
	ld   [bc], a                                     ; $65a2: $02
	ld   [bc], a                                     ; $65a3: $02
	ld   bc, $0d04                                   ; $65a4: $01 $04 $0d
	inc  bc                                          ; $65a7: $03
	ld   sp, hl                                      ; $65a8: $f9
	ld   h, l                                        ; $65a9: $65
	ld   [hl], h                                     ; $65aa: $74
	inc  bc                                          ; $65ab: $03
	add  b                                           ; $65ac: $80
	inc  bc                                          ; $65ad: $03
	jp   c, Jump_049_7465                            ; $65ae: $da $65 $74

	ld   h, c                                        ; $65b1: $61
	ld   d, d                                        ; $65b2: $52
	sbc  a                                           ; $65b3: $9f
	dec  c                                           ; $65b4: $0d
	inc  b                                           ; $65b5: $04
	rla                                              ; $65b6: $17
	ld   [hl], c                                     ; $65b7: $71
	ld   [hl], h                                     ; $65b8: $74
	sbc  c                                           ; $65b9: $99
	ld   l, d                                        ; $65ba: $6a
	sbc  a                                           ; $65bb: $9f
	dec  c                                           ; $65bc: $0d
	ld   h, [hl]                                     ; $65bd: $66
	sub  c                                           ; $65be: $91
	ld   d, b                                        ; $65bf: $50
	ld   a, b                                        ; $65c0: $78
	sbc  a                                           ; $65c1: $9f
	dec  c                                           ; $65c2: $0d
	nop                                              ; $65c3: $00
	ld   a, [bc]                                     ; $65c4: $0a
	ld   h, $00                                      ; $65c5: $26 $00
	inc  b                                           ; $65c7: $04
	add  b                                           ; $65c8: $80
	dec  sp                                          ; $65c9: $3b
	ld   bc, $20ff                                   ; $65ca: $01 $ff $20
	inc  bc                                          ; $65cd: $03
	ld   h, [hl]                                     ; $65ce: $66
	ld   [bc], a                                     ; $65cf: $02
	nop                                              ; $65d0: $00
	jr   nz, jr_049_65ef                             ; $65d1: $20 $1c

	nop                                              ; $65d3: $00
	ld   c, $4a                                      ; $65d4: $0e $4a
	rrca                                             ; $65d6: $0f
	nop                                              ; $65d7: $00
	ld   bc, $0502                                   ; $65d8: $01 $02 $05
	add  b                                           ; $65db: $80
	inc  a                                           ; $65dc: $3c
	ld   bc, $0001                                   ; $65dd: $01 $01 $00
	inc  d                                           ; $65e0: $14
	ld   b, $01                                      ; $65e1: $06 $01
	ld   bc, $a5a3                                   ; $65e3: $01 $a3 $a5
	db   $ec                                         ; $65e6: $ec
	cp   d                                           ; $65e7: $ba
	sbc  [hl]                                        ; $65e8: $9e
	ld   e, c                                        ; $65e9: $59
	ld   h, a                                        ; $65ea: $67
	adc  l                                           ; $65eb: $8d
	ld   h, e                                        ; $65ec: $63
	and  c                                           ; $65ed: $a1
	ld   e, c                                        ; $65ee: $59

jr_049_65ef:
	sub  a                                           ; $65ef: $97
	dec  c                                           ; $65f0: $0d
	ld   d, b                                        ; $65f1: $50
	ld   l, b                                        ; $65f2: $68
	ld   e, c                                        ; $65f3: $59
	ld   [hl], c                                     ; $65f4: $71
	ld   l, l                                        ; $65f5: $6d
	sub  $a2                                         ; $65f6: $d6 $a2
	push af                                          ; $65f8: $f5
	xor  $c0                                         ; $65f9: $ee $c0
	ei                                               ; $65fb: $fb
	halt                                             ; $65fc: $76
	dec  c                                           ; $65fd: $0d
	nop                                              ; $65fe: $00
	dec  b                                           ; $65ff: $05
	add  b                                           ; $6600: $80
	sub  $01                                         ; $6601: $d6 $01
	ld   bc, $0100                                   ; $6603: $01 $00 $01
	dec  b                                           ; $6606: $05
	cp   a                                           ; $6607: $bf
	sbc  b                                           ; $6608: $98
	inc  b                                           ; $6609: $04
	sub  d                                           ; $660a: $92
	and  b                                           ; $660b: $a0
	sub  b                                           ; $660c: $90
	ld   [hl], c                                     ; $660d: $71
	ld   [hl], h                                     ; $660e: $74
	ld   e, e                                        ; $660f: $5b
	ld   l, l                                        ; $6610: $6d
	sub  [hl]                                        ; $6611: $96
	sbc  a                                           ; $6612: $9f
	dec  c                                           ; $6613: $0d
	nop                                              ; $6614: $00
	ld   a, [bc]                                     ; $6615: $0a
	rlca                                             ; $6616: $07
	and  e                                           ; $6617: $a3
	nop                                              ; $6618: $00
	inc  bc                                          ; $6619: $03
	inc  d                                           ; $661a: $14
	ld   bc, $2266                                   ; $661b: $01 $66 $22
	nop                                              ; $661e: $00
	rrca                                             ; $661f: $0f
	inc  b                                           ; $6620: $04
	ld   b, $01                                      ; $6621: $06 $01
	ld   d, b                                        ; $6623: $50
	sbc  [hl]                                        ; $6624: $9e
	ld   d, d                                        ; $6625: $52
	adc  h                                           ; $6626: $8c
	ld   d, b                                        ; $6627: $50
	ld   e, a                                        ; $6628: $5f
	sbc  c                                           ; $6629: $99
	ld   a, e                                        ; $662a: $7b
	sbc  a                                           ; $662b: $9f
	dec  c                                           ; $662c: $0d
	nop                                              ; $662d: $00
	ld   a, [bc]                                     ; $662e: $0a
	rrca                                             ; $662f: $0f
	nop                                              ; $6630: $00
	ld   bc, $5723                                   ; $6631: $01 $23 $57
	dec  c                                           ; $6634: $0d
	inc  b                                           ; $6635: $04
	nop                                              ; $6636: $00
	rrca                                             ; $6637: $0f
	nop                                              ; $6638: $00
	ld   bc, $7d01                                   ; $6639: $01 $01 $7d
	ld   d, d                                        ; $663c: $52
	sbc  [hl]                                        ; $663d: $9e
	and  e                                           ; $663e: $a3
	and  l                                           ; $663f: $a5
	db   $ec                                         ; $6640: $ec
	cp   d                                           ; $6641: $ba
	sbc  a                                           ; $6642: $9f
	dec  c                                           ; $6643: $0d
	nop                                              ; $6644: $00
	ld   a, [bc]                                     ; $6645: $0a
	db   $10                                         ; $6646: $10
	jr   nz, jr_049_6649                             ; $6647: $20 $00

jr_049_6649:
	inc  e                                           ; $6649: $1c
	inc  b                                           ; $664a: $04
	ld   bc, $1d01                                   ; $664b: $01 $01 $1d
	ld   b, b                                        ; $664e: $40
	inc  d                                           ; $664f: $14
	inc  bc                                          ; $6650: $03
	inc  d                                           ; $6651: $14
	ld   bc, $2802                                   ; $6652: $01 $02 $28
	nop                                              ; $6655: $00
	ld   bc, $9850                                   ; $6656: $01 $50 $98
	ld   e, d                                        ; $6659: $5a
	halt                                             ; $665a: $76
	ld   d, h                                        ; $665b: $54
	sbc  [hl]                                        ; $665c: $9e
	ld   l, a                                        ; $665d: $6f
	ld   d, d                                        ; $665e: $52
	ld   [bc], a                                     ; $665f: $02
	inc  de                                          ; $6660: $13
	ld   l, a                                        ; $6661: $6f
	sub  c                                           ; $6662: $91
	and  c                                           ; $6663: $a1
	sbc  a                                           ; $6664: $9f
	dec  c                                           ; $6665: $0d
	ld   l, e                                        ; $6666: $6b
	sbc  d                                           ; $6667: $9a
	ld   h, [hl]                                     ; $6668: $66
	sub  c                                           ; $6669: $91
	sbc  [hl]                                        ; $666a: $9e
	ld   e, b                                        ; $666b: $58
	sub  d                                           ; $666c: $92
	ld   h, a                                        ; $666d: $67
	adc  l                                           ; $666e: $8d
	ld   a, b                                        ; $666f: $78
	ld   h, e                                        ; $6670: $63
	ld   d, d                                        ; $6671: $52
	sbc  a                                           ; $6672: $9f
	dec  c                                           ; $6673: $0d
	nop                                              ; $6674: $00
	ld   a, [bc]                                     ; $6675: $0a
	nop                                              ; $6676: $00
	rrca                                             ; $6677: $0f
	inc  b                                           ; $6678: $04
	ld   hl, $ff01                                   ; $6679: $21 $01 $ff
	rst  $38                                         ; $667c: $ff
	rst  $38                                         ; $667d: $ff
	rst  $38                                         ; $667e: $ff
	dec  c                                           ; $667f: $0d
	nop                                              ; $6680: $00
	ld   a, [bc]                                     ; $6681: $0a
	rrca                                             ; $6682: $0f
	nop                                              ; $6683: $00
	ld   bc, $0101                                   ; $6684: $01 $01 $01
	inc  bc                                          ; $6687: $03
	inc  b                                           ; $6688: $04
	ld   b, d                                        ; $6689: $42
	ld   [hl], h                                     ; $668a: $74
	sbc  c                                           ; $668b: $99
	ld   a, h                                        ; $668c: $7c
	ld   e, c                                        ; $668d: $59
	rst  $38                                         ; $668e: $ff
	rst  $38                                         ; $668f: $ff
	dec  c                                           ; $6690: $0d
	db   $10                                         ; $6691: $10
	inc  b                                           ; $6692: $04
	sub  l                                           ; $6693: $95
	ld   [bc], a                                     ; $6694: $02
	ld   hl, $037c                                   ; $6695: $21 $7c $03
	ld   c, a                                        ; $6698: $4f
	ld   a, c                                        ; $6699: $79
	inc  b                                           ; $669a: $04
	jr   z, jr_049_66ef                              ; $669b: $28 $52

	ld   [hl], h                                     ; $669d: $74
	ld   e, b                                        ; $669e: $58
	ld   h, c                                        ; $669f: $61
	ld   d, h                                        ; $66a0: $54
	ld   bc, $0d04                                   ; $66a1: $01 $04 $0d
	nop                                              ; $66a4: $00
	ld   a, [bc]                                     ; $66a5: $0a
	db   $10                                         ; $66a6: $10
	jr   nz, jr_049_66a9                             ; $66a7: $20 $00

jr_049_66a9:
	add  hl, bc                                      ; $66a9: $09
	ld   [hl-], a                                    ; $66aa: $32
	nop                                              ; $66ab: $00
	nop                                              ; $66ac: $00
	inc  b                                           ; $66ad: $04
	add  b                                           ; $66ae: $80
	inc  d                                           ; $66af: $14
	ld   bc, $20ff                                   ; $66b0: $01 $ff $20
	inc  bc                                          ; $66b3: $03
	ld   h, c                                        ; $66b4: $61
	ld   [bc], a                                     ; $66b5: $02
	nop                                              ; $66b6: $00
	jr   nz, jr_049_66d5                             ; $66b7: $20 $1c

	nop                                              ; $66b9: $00
	ld   c, $6e                                      ; $66ba: $0e $6e
	rrca                                             ; $66bc: $0f
	nop                                              ; $66bd: $00
	ld   bc, $020d                                   ; $66be: $01 $0d $02
	ld   [bc], a                                     ; $66c1: $02
	ld   [bc], a                                     ; $66c2: $02
	dec  b                                           ; $66c3: $05
	add  b                                           ; $66c4: $80
	dec  d                                           ; $66c5: $15
	ld   bc, $0001                                   ; $66c6: $01 $01 $00
	ld   bc, $8d67                                   ; $66c9: $01 $67 $8d
	sbc  d                                           ; $66cc: $9a
	ld   h, e                                        ; $66cd: $63
	and  c                                           ; $66ce: $a1
	dec  c                                           ; $66cf: $0d
	inc  b                                           ; $66d0: $04
	ldh  [$03], a                                    ; $66d1: $e0 $03
	dec  hl                                          ; $66d3: $2b
	inc  bc                                          ; $66d4: $03

jr_049_66d5:
	pop  hl                                          ; $66d5: $e1
	sbc  b                                           ; $66d6: $98
	dec  b                                           ; $66d7: $05
	db   $10                                         ; $66d8: $10
	adc  h                                           ; $66d9: $8c
	ld   h, l                                        ; $66da: $65
	ld   l, l                                        ; $66db: $6d
	sbc  a                                           ; $66dc: $9f
	dec  c                                           ; $66dd: $0d
	nop                                              ; $66de: $00
	ld   a, [bc]                                     ; $66df: $0a
	rrca                                             ; $66e0: $0f
	ld   [bc], a                                     ; $66e1: $02
	ld   [bc], a                                     ; $66e2: $02
	ld   bc, $9750                                   ; $66e3: $01 $50 $97
	sbc  [hl]                                        ; $66e6: $9e
	ld   [$6308], sp                                 ; $66e7: $08 $08 $63
	and  c                                           ; $66ea: $a1
	dec  c                                           ; $66eb: $0d
	inc  bc                                          ; $66ec: $03
	push de                                          ; $66ed: $d5
	ld   h, b                                        ; $66ee: $60

jr_049_66ef:
	ld   a, b                                        ; $66ef: $78
	ld   d, d                                        ; $66f0: $52
	ld   [hl], l                                     ; $66f1: $75
	sub  [hl]                                        ; $66f2: $96
	ld   e, l                                        ; $66f3: $5d
	dec  b                                           ; $66f4: $05
	db   $10                                         ; $66f5: $10
	adc  h                                           ; $66f6: $8c
	ld   h, l                                        ; $66f7: $65
	ld   l, l                                        ; $66f8: $6d
	ld   a, e                                        ; $66f9: $7b
	sbc  a                                           ; $66fa: $9f
	dec  c                                           ; $66fb: $0d
	adc  c                                           ; $66fc: $89
	adc  a                                           ; $66fd: $8f
	ld   [hl], h                                     ; $66fe: $74
	ld   h, e                                        ; $66ff: $63
	ld   h, l                                        ; $6700: $65
	ld   d, b                                        ; $6701: $50
	ld   h, b                                        ; $6702: $60
	adc  h                                           ; $6703: $8c
	ld   h, a                                        ; $6704: $67
	sbc  l                                           ; $6705: $9d
	sbc  a                                           ; $6706: $9f
	dec  c                                           ; $6707: $0d
	nop                                              ; $6708: $00
	ld   a, [bc]                                     ; $6709: $0a
	ld   bc, $7d75                                   ; $670a: $01 $75 $7d
	sbc  [hl]                                        ; $670d: $9e
	inc  b                                           ; $670e: $04
	xor  l                                           ; $670f: $ad
	ld   [bc], a                                     ; $6710: $02
	xor  c                                           ; $6711: $a9
	sbc  [hl]                                        ; $6712: $9e
	sbc  l                                           ; $6713: $9d
	ld   l, l                                        ; $6714: $6d
	ld   e, l                                        ; $6715: $5d
	ld   h, l                                        ; $6716: $65
	ld   a, c                                        ; $6717: $79
	dec  c                                           ; $6718: $0d
	ld   [bc], a                                     ; $6719: $02
	xor  [hl]                                        ; $671a: $ae
	inc  bc                                          ; $671b: $03
	call c, Call_049_6556                            ; $671c: $dc $56 $65
	ld   l, l                                        ; $671f: $6d
	pop  de                                          ; $6720: $d1
	push bc                                          ; $6721: $c5
	halt                                             ; $6722: $76
	ld   h, l                                        ; $6723: $65
	ld   [hl], h                                     ; $6724: $74
	dec  c                                           ; $6725: $0d
	ld   d, b                                        ; $6726: $50
	ld   a, b                                        ; $6727: $78
	ld   l, l                                        ; $6728: $6d
	and  b                                           ; $6729: $a0
	inc  bc                                          ; $672a: $03
	db   $fd                                         ; $672b: $fd
	inc  bc                                          ; $672c: $03
	ld   l, l                                        ; $672d: $6d
	ld   d, d                                        ; $672e: $52
	ld   l, l                                        ; $672f: $6d
	ld   h, l                                        ; $6730: $65
	adc  h                                           ; $6731: $8c
	ld   h, a                                        ; $6732: $67
	sbc  l                                           ; $6733: $9d
	sbc  a                                           ; $6734: $9f
	dec  c                                           ; $6735: $0d
	nop                                              ; $6736: $00
	ld   a, [bc]                                     ; $6737: $0a
	dec  c                                           ; $6738: $0d
	nop                                              ; $6739: $00
	nop                                              ; $673a: $00
	rrca                                             ; $673b: $0f
	nop                                              ; $673c: $00
	ld   bc, $021a                                   ; $673d: $01 $1a $02
	rlca                                             ; $6740: $07
	and  c                                           ; $6741: $a1
	nop                                              ; $6742: $00
	ld   [bc], a                                     ; $6743: $02
	inc  b                                           ; $6744: $04
	ld   bc, $2002                                   ; $6745: $01 $02 $20
	nop                                              ; $6748: $00
	rlca                                             ; $6749: $07
	call z, $0200                                    ; $674a: $cc $00 $02
	inc  b                                           ; $674d: $04
	ld   bc, $2001                                   ; $674e: $01 $01 $20
	nop                                              ; $6751: $00
	rlca                                             ; $6752: $07
	nop                                              ; $6753: $00
	ld   bc, $0402                                   ; $6754: $01 $02 $04
	ld   bc, $2000                                   ; $6757: $01 $00 $20
	nop                                              ; $675a: $00
	inc  e                                           ; $675b: $1c
	ld   [bc], a                                     ; $675c: $02
	ld   b, $06                                      ; $675d: $06 $06
	ld   bc, $9e9d                                   ; $675f: $01 $9d $9e
	sbc  l                                           ; $6762: $9d
	ld   h, h                                        ; $6763: $64
	halt                                             ; $6764: $76
	inc  b                                           ; $6765: $04
	ld   a, l                                        ; $6766: $7d
	ld   e, a                                        ; $6767: $5f
	ld   [hl], h                                     ; $6768: $74
	ld   h, e                                        ; $6769: $63
	ld   h, l                                        ; $676a: $65
	ld   d, b                                        ; $676b: $50
	ld   h, b                                        ; $676c: $60
	ld   l, l                                        ; $676d: $6d
	dec  c                                           ; $676e: $0d
	ld   a, h                                        ; $676f: $7c
	ld   [hl], l                                     ; $6770: $75
	ld   h, a                                        ; $6771: $67
	sbc  l                                           ; $6772: $9d
	sub  [hl]                                        ; $6773: $96
	rst  $38                                         ; $6774: $ff
	rst  $38                                         ; $6775: $ff
	dec  c                                           ; $6776: $0d
	ld   e, b                                        ; $6777: $58
	ei                                               ; $6778: $fb
	adc  c                                           ; $6779: $89
	adc  c                                           ; $677a: $89
	adc  c                                           ; $677b: $89
	adc  c                                           ; $677c: $89
	adc  c                                           ; $677d: $89
	rst  $38                                         ; $677e: $ff
	rst  $38                                         ; $677f: $ff
	dec  c                                           ; $6780: $0d
	nop                                              ; $6781: $00
	ld   a, [bc]                                     ; $6782: $0a
	ld   b, $24                                      ; $6783: $06 $24
	ld   bc, $021c                                   ; $6785: $01 $1c $02
	ld   bc, $0101                                   ; $6788: $01 $01 $01
	ld   a, b                                        ; $678b: $78
	ld   e, c                                        ; $678c: $59
	ld   a, b                                        ; $678d: $78
	ld   e, c                                        ; $678e: $59
	sbc  [hl]                                        ; $678f: $9e
	ld   e, d                                        ; $6790: $5a
	and  c                                           ; $6791: $a1
	ld   a, [hl]                                     ; $6792: $7e
	sbc  b                                           ; $6793: $98
	adc  h                                           ; $6794: $8c
	ld   h, l                                        ; $6795: $65
	ld   l, l                                        ; $6796: $6d
	ld   e, a                                        ; $6797: $5f
	ld   [hl], a                                     ; $6798: $77
	dec  c                                           ; $6799: $0d
	sub  d                                           ; $679a: $92
	ld   a, l                                        ; $679b: $7d
	sbc  b                                           ; $679c: $98
	sbc  l                                           ; $679d: $9d
	ld   l, l                                        ; $679e: $6d
	ld   e, l                                        ; $679f: $5d
	ld   h, l                                        ; $67a0: $65
	ld   a, h                                        ; $67a1: $7c
	ld   [bc], a                                     ; $67a2: $02
	ld   a, [de]                                     ; $67a3: $1a
	inc  bc                                          ; $67a4: $03
	ld   l, e                                        ; $67a5: $6b
	ld   [hl], l                                     ; $67a6: $75
	ld   a, l                                        ; $67a7: $7d
	dec  c                                           ; $67a8: $0d
	ld   d, b                                        ; $67a9: $50
	sbc  b                                           ; $67aa: $98
	adc  h                                           ; $67ab: $8c
	ld   l, c                                        ; $67ac: $69
	and  c                                           ; $67ad: $a1
	ld   [hl], l                                     ; $67ae: $75
	ld   h, l                                        ; $67af: $65
	ld   l, l                                        ; $67b0: $6d
	sbc  l                                           ; $67b1: $9d
	ld   a, e                                        ; $67b2: $7b
	sbc  a                                           ; $67b3: $9f
	dec  c                                           ; $67b4: $0d
	nop                                              ; $67b5: $00
	ld   a, [bc]                                     ; $67b6: $0a
	ld   b, $24                                      ; $67b7: $06 $24
	ld   bc, $021c                                   ; $67b9: $01 $1c $02
	jr   nc, jr_049_67d7                             ; $67bc: $30 $19

	ld   bc, $998c                                   ; $67be: $01 $8c $99
	ld   [hl], l                                     ; $67c1: $75
	ld   [bc], a                                     ; $67c2: $02
	ld   a, [de]                                     ; $67c3: $1a
	inc  bc                                          ; $67c4: $03
	ld   l, e                                        ; $67c5: $6b
	ld   a, c                                        ; $67c6: $79
	ld   a, b                                        ; $67c7: $78
	sbc  b                                           ; $67c8: $98
	adc  h                                           ; $67c9: $8c
	ld   l, c                                        ; $67ca: $69
	and  c                                           ; $67cb: $a1
	sbc  l                                           ; $67cc: $9d
	ld   a, e                                        ; $67cd: $7b
	sbc  a                                           ; $67ce: $9f
	dec  c                                           ; $67cf: $0d
	ld   e, b                                        ; $67d0: $58
	ei                                               ; $67d1: $fb
	adc  c                                           ; $67d2: $89
	adc  c                                           ; $67d3: $89
	adc  c                                           ; $67d4: $89
	adc  c                                           ; $67d5: $89
	adc  c                                           ; $67d6: $89

jr_049_67d7:
	sbc  a                                           ; $67d7: $9f
	dec  c                                           ; $67d8: $0d
	nop                                              ; $67d9: $00
	ld   a, [bc]                                     ; $67da: $0a
	ld   b, $24                                      ; $67db: $06 $24
	ld   bc, $021c                                   ; $67dd: $01 $1c $02
	nop                                              ; $67e0: $00
	nop                                              ; $67e1: $00
	ld   bc, $9750                                   ; $67e2: $01 $50 $97
	sbc  [hl]                                        ; $67e5: $9e
	sub  b                                           ; $67e6: $90
	ld   d, h                                        ; $67e7: $54
	ld   h, c                                        ; $67e8: $61
	and  c                                           ; $67e9: $a1
	ld   a, b                                        ; $67ea: $78
	inc  bc                                          ; $67eb: $03
	ld   l, a                                        ; $67ec: $6f
	ld   [bc], a                                     ; $67ed: $02
	xor  c                                           ; $67ee: $a9
	sbc  a                                           ; $67ef: $9f
	dec  c                                           ; $67f0: $0d
	inc  bc                                          ; $67f1: $03
	ld   [hl], b                                     ; $67f2: $70
	ld   e, l                                        ; $67f3: $5d
	inc  b                                           ; $67f4: $04
	ld   b, d                                        ; $67f5: $42
	ld   a, b                                        ; $67f6: $78
	ld   e, e                                        ; $67f7: $5b
	sub  c                                           ; $67f8: $91
	sbc  [hl]                                        ; $67f9: $9e
	ld   e, b                                        ; $67fa: $58
	inc  b                                           ; $67fb: $04
	cp   d                                           ; $67fc: $ba
	ld   a, c                                        ; $67fd: $79
	sbc  l                                           ; $67fe: $9d
	sbc  c                                           ; $67ff: $99
	ld   d, d                                        ; $6800: $52
	dec  c                                           ; $6801: $0d
	ld   [hl], l                                     ; $6802: $75
	ld   h, a                                        ; $6803: $67
	sbc  l                                           ; $6804: $9d
	sbc  a                                           ; $6805: $9f
	dec  c                                           ; $6806: $0d
	nop                                              ; $6807: $00
	ld   a, [bc]                                     ; $6808: $0a
	ld   bc, $9166                                   ; $6809: $01 $66 $91
	ld   d, b                                        ; $680c: $50
	sbc  [hl]                                        ; $680d: $9e
	ld   [$6308], sp                                 ; $680e: $08 $08 $63
	and  c                                           ; $6811: $a1
	sbc  [hl]                                        ; $6812: $9e
	dec  c                                           ; $6813: $0d
	ld   e, b                                        ; $6814: $58
	sub  d                                           ; $6815: $92
	ld   h, a                                        ; $6816: $67
	adc  l                                           ; $6817: $8d
	sbc  a                                           ; $6818: $9f
	dec  c                                           ; $6819: $0d
	nop                                              ; $681a: $00
	ld   a, [bc]                                     ; $681b: $0a
	dec  c                                           ; $681c: $0d
	nop                                              ; $681d: $00
	nop                                              ; $681e: $00
	rrca                                             ; $681f: $0f
	nop                                              ; $6820: $00
	ld   bc, $1e09                                   ; $6821: $01 $09 $1e
	nop                                              ; $6824: $00
	nop                                              ; $6825: $00
	inc  b                                           ; $6826: $04
	add  b                                           ; $6827: $80
	ld   a, d                                        ; $6828: $7a
	ld   bc, $20ff                                   ; $6829: $01 $ff $20
	inc  bc                                          ; $682c: $03
	ld   l, b                                        ; $682d: $68
	ld   [bc], a                                     ; $682e: $02
	nop                                              ; $682f: $00
	jr   nz, @+$1e                                   ; $6830: $20 $1c

	nop                                              ; $6832: $00
	ld   d, $05                                      ; $6833: $16 $05
	rrca                                             ; $6835: $0f
	ld   b, $12                                      ; $6836: $06 $12
	ld   [bc], a                                     ; $6838: $02
	dec  b                                           ; $6839: $05
	add  b                                           ; $683a: $80
	ld   a, e                                        ; $683b: $7b
	ld   bc, $0001                                   ; $683c: $01 $01 $00
	ld   bc, $fb50                                   ; $683f: $01 $50 $fb
	ld   [hl], d                                     ; $6842: $72
	ld   e, c                                        ; $6843: $59
	sbc  d                                           ; $6844: $9a
	ld   l, l                                        ; $6845: $6d
	rst  $38                                         ; $6846: $ff
	rst  $38                                         ; $6847: $ff
	dec  c                                           ; $6848: $0d
	nop                                              ; $6849: $00
	ld   a, [bc]                                     ; $684a: $0a
	rrca                                             ; $684b: $0f
	nop                                              ; $684c: $00
	ld   bc, $0101                                   ; $684d: $01 $01 $01
	inc  bc                                          ; $6850: $03
	xor  h                                           ; $6851: $ac
	push af                                          ; $6852: $f5
	bit  4, e                                        ; $6853: $cb $63
	and  c                                           ; $6855: $a1
	ld   l, [hl]                                     ; $6856: $6e
	rst  $38                                         ; $6857: $ff
	rst  $38                                         ; $6858: $ff
	ld   bc, $0d04                                   ; $6859: $01 $04 $0d
	nop                                              ; $685c: $00
	ld   a, [bc]                                     ; $685d: $0a
	add  hl, de                                      ; $685e: $19
	dec  b                                           ; $685f: $05
	ld   [bc], a                                     ; $6860: $02
	ld   [bc], a                                     ; $6861: $02
	and  b                                           ; $6862: $a0
	ld   [hl], e                                     ; $6863: $73
	ld   e, l                                        ; $6864: $5d
	nop                                              ; $6865: $00
	nop                                              ; $6866: $00
	dec  b                                           ; $6867: $05
	ld   d, $6f                                      ; $6868: $16 $6f
	ld   [bc], a                                     ; $686a: $02
	ld   d, e                                        ; $686b: $53
	sbc  c                                           ; $686c: $99
	nop                                              ; $686d: $00
	ld   bc, $a107                                   ; $686e: $01 $07 $a1
	nop                                              ; $6871: $00
	ld   [bc], a                                     ; $6872: $02
	inc  bc                                          ; $6873: $03
	ld   bc, $2000                                   ; $6874: $01 $00 $20
	nop                                              ; $6877: $00
	rlca                                             ; $6878: $07
	ld   d, c                                        ; $6879: $51
	nop                                              ; $687a: $00
	ld   [bc], a                                     ; $687b: $02
	inc  bc                                          ; $687c: $03
	ld   bc, $2001                                   ; $687d: $01 $01 $20
	nop                                              ; $6880: $00
	ld   b, $78                                      ; $6881: $06 $78
	nop                                              ; $6883: $00
	rrca                                             ; $6884: $0f
	nop                                              ; $6885: $00
	ld   bc, $0101                                   ; $6886: $01 $01 $01
	inc  bc                                          ; $6889: $03
	sub  d                                           ; $688a: $92
	ld   [hl], c                                     ; $688b: $71
	ld   a, a                                        ; $688c: $7f
	sbc  b                                           ; $688d: $98
	sbc  [hl]                                        ; $688e: $9e
	ld   a, h                                        ; $688f: $7c
	ld   l, h                                        ; $6890: $6c
	ld   e, e                                        ; $6891: $5b
	ld   a, l                                        ; $6892: $7d
	pop  bc                                          ; $6893: $c1
	db   $e3                                         ; $6894: $e3
	ld   l, [hl]                                     ; $6895: $6e
	sub  [hl]                                        ; $6896: $96
	dec  c                                           ; $6897: $0d
	db   $10                                         ; $6898: $10
	ld   h, c                                        ; $6899: $61
	ld   h, c                                        ; $689a: $61
	ld   a, l                                        ; $689b: $7d
	ld   d, d                                        ; $689c: $52
	ld   h, e                                        ; $689d: $63
	ld   e, h                                        ; $689e: $5c
	sub  [hl]                                        ; $689f: $96
	ld   e, l                                        ; $68a0: $5d
	ld   [bc], a                                     ; $68a1: $02
	ld   d, e                                        ; $68a2: $53
	sbc  e                                           ; $68a3: $9b
	ld   d, h                                        ; $68a4: $54
	ld   bc, $0d04                                   ; $68a5: $01 $04 $0d
	nop                                              ; $68a8: $00
	ld   a, [bc]                                     ; $68a9: $0a
	nop                                              ; $68aa: $00
	rrca                                             ; $68ab: $0f
	ld   b, $14                                      ; $68ac: $06 $14
	ld   bc, $a903                                   ; $68ae: $01 $03 $a9
	ld   e, c                                        ; $68b1: $59
	ld   l, e                                        ; $68b2: $6b
	ld   h, c                                        ; $68b3: $61
	ld   a, c                                        ; $68b4: $79
	ld   d, d                                        ; $68b5: $52
	sbc  c                                           ; $68b6: $99
	ld   a, h                                        ; $68b7: $7c
	ld   e, c                                        ; $68b8: $59
	ld   sp, hl                                      ; $68b9: $f9
	dec  c                                           ; $68ba: $0d
	nop                                              ; $68bb: $00
	ld   a, [bc]                                     ; $68bc: $0a
	rrca                                             ; $68bd: $0f
	nop                                              ; $68be: $00
	ld   bc, $0101                                   ; $68bf: $01 $01 $01
	inc  bc                                          ; $68c2: $03
	adc  h                                           ; $68c3: $8c
	ld   l, b                                        ; $68c4: $68
	ld   d, d                                        ; $68c5: $52
	rst  $38                                         ; $68c6: $ff
	rst  $38                                         ; $68c7: $ff
	inc  bc                                          ; $68c8: $03
	push de                                          ; $68c9: $d5
	ld   h, b                                        ; $68ca: $60
	sub  [hl]                                        ; $68cb: $96
	ld   d, h                                        ; $68cc: $54
	ld   a, [$0401]                                  ; $68cd: $fa $01 $04
	dec  c                                           ; $68d0: $0d
	nop                                              ; $68d1: $00
	ld   a, [bc]                                     ; $68d2: $0a
	nop                                              ; $68d3: $00
	rrca                                             ; $68d4: $0f
	nop                                              ; $68d5: $00
	ld   bc, $0101                                   ; $68d6: $01 $01 $01
	inc  bc                                          ; $68d9: $03
	sub  b                                           ; $68da: $90
	ld   d, h                                        ; $68db: $54
	inc  bc                                          ; $68dc: $03
	ld   l, h                                        ; $68dd: $6c
	ld   h, l                                        ; $68de: $65
	ld   [bc], a                                     ; $68df: $02
	and  b                                           ; $68e0: $a0
	ld   [hl], e                                     ; $68e1: $73
	ld   d, d                                        ; $68e2: $52
	ld   [hl], h                                     ; $68e3: $74
	adc  l                                           ; $68e4: $8d
	sub  [hl]                                        ; $68e5: $96
	ld   d, h                                        ; $68e6: $54
	ld   bc, $0d04                                   ; $68e7: $01 $04 $0d
	nop                                              ; $68ea: $00
	ld   a, [bc]                                     ; $68eb: $0a
	rlca                                             ; $68ec: $07
	dec  d                                           ; $68ed: $15
	ld   bc, $1603                                   ; $68ee: $01 $03 $16
	ld   bc, $2278                                   ; $68f1: $01 $78 $22
	nop                                              ; $68f4: $00
	rrca                                             ; $68f5: $0f
	ld   b, $16                                      ; $68f6: $06 $16
	ld   bc, $7192                                   ; $68f8: $01 $92 $71
	ld   a, a                                        ; $68fb: $7f
	cp   b                                           ; $68fc: $b8
	push hl                                          ; $68fd: $e5
	pop  af                                          ; $68fe: $f1
	ei                                               ; $68ff: $fb
	sub  [hl]                                        ; $6900: $96
	sbc  b                                           ; $6901: $98
	dec  c                                           ; $6902: $0d
	ld   d, b                                        ; $6903: $50
	ld   [hl], d                                     ; $6904: $72
	ld   d, d                                        ; $6905: $52
	sub  $ef                                         ; $6906: $d6 $ef
	ld   a, c                                        ; $6908: $79
	inc  b                                           ; $6909: $04
	ld   b, l                                        ; $690a: $45
	sbc  b                                           ; $690b: $98
	ld   l, l                                        ; $690c: $6d
	ld   d, d                                        ; $690d: $52
	sub  [hl]                                        ; $690e: $96
	ld   a, b                                        ; $690f: $78
	rst  $38                                         ; $6910: $ff
	rst  $38                                         ; $6911: $ff
	dec  c                                           ; $6912: $0d
	nop                                              ; $6913: $00
	ld   a, [bc]                                     ; $6914: $0a
	add  hl, de                                      ; $6915: $19
	dec  b                                           ; $6916: $05
	ld   bc, $c004                                   ; $6917: $01 $04 $c0
	inc  bc                                          ; $691a: $03
	ld   a, l                                        ; $691b: $7d
	ld   h, l                                        ; $691c: $65
	ld   l, l                                        ; $691d: $6d
	nop                                              ; $691e: $00
	nop                                              ; $691f: $00
	rlca                                             ; $6920: $07
	ld   sp, hl                                      ; $6921: $f9
	nop                                              ; $6922: $00
	ld   [bc], a                                     ; $6923: $02
	inc  bc                                          ; $6924: $03
	ld   bc, $2000                                   ; $6925: $01 $00 $20
	nop                                              ; $6928: $00
	ld   b, $15                                      ; $6929: $06 $15
	ld   bc, $000f                                   ; $692b: $01 $0f $00
	ld   bc, $0101                                   ; $692e: $01 $01 $01
	inc  bc                                          ; $6931: $03
	ld   l, e                                        ; $6932: $6b
	sbc  e                                           ; $6933: $9b
	ld   l, e                                        ; $6934: $6b
	sbc  e                                           ; $6935: $9b
	ld   [bc], a                                     ; $6936: $02
	inc  l                                           ; $6937: $2c
	ld   e, e                                        ; $6938: $5b
	inc  bc                                          ; $6939: $03
	ld   h, l                                        ; $693a: $65
	ld   h, b                                        ; $693b: $60
	sub  [hl]                                        ; $693c: $96
	ld   d, h                                        ; $693d: $54
	rst  $38                                         ; $693e: $ff
	rst  $38                                         ; $693f: $ff
	ld   bc, $0d04                                   ; $6940: $01 $04 $0d
	db   $10                                         ; $6943: $10
	dec  c                                           ; $6944: $0d
	nop                                              ; $6945: $00
	ld   a, [bc]                                     ; $6946: $0a
	nop                                              ; $6947: $00
	rrca                                             ; $6948: $0f
	ld   b, $14                                      ; $6949: $06 $14
	ld   bc, $ffff                                   ; $694b: $01 $ff $ff
	ld   a, [$6b0d]                                  ; $694e: $fa $0d $6b
	ld   h, c                                        ; $6951: $61
	ld   a, c                                        ; $6952: $79
	inc  bc                                          ; $6953: $03
	xor  c                                           ; $6954: $a9
	ld   e, c                                        ; $6955: $59
	ld   d, d                                        ; $6956: $52
	sbc  c                                           ; $6957: $99
	ld   a, h                                        ; $6958: $7c
	ld   e, c                                        ; $6959: $59
	ld   sp, hl                                      ; $695a: $f9
	dec  c                                           ; $695b: $0d
	nop                                              ; $695c: $00
	ld   a, [bc]                                     ; $695d: $0a
	rrca                                             ; $695e: $0f
	nop                                              ; $695f: $00
	ld   bc, $0101                                   ; $6960: $01 $01 $01
	inc  bc                                          ; $6963: $03
	ld   [bc], a                                     ; $6964: $02
	and  c                                           ; $6965: $a1
	ld   [hl], e                                     ; $6966: $73
	ld   e, c                                        ; $6967: $59
	sbc  d                                           ; $6968: $9a
	ld   l, l                                        ; $6969: $6d
	ld   a, [$0401]                                  ; $696a: $fa $01 $04
	dec  c                                           ; $696d: $0d
	nop                                              ; $696e: $00
	ld   a, [bc]                                     ; $696f: $0a
	add  hl, de                                      ; $6970: $19
	dec  b                                           ; $6971: $05
	inc  bc                                          ; $6972: $03
	inc  bc                                          ; $6973: $03
	db   $db                                         ; $6974: $db
	ld   bc, $7614                                   ; $6975: $01 $14 $76
	ld   h, a                                        ; $6978: $67
	sbc  c                                           ; $6979: $99
	nop                                              ; $697a: $00
	nop                                              ; $697b: $00
	sub  b                                           ; $697c: $90
	ld   a, h                                        ; $697d: $7c
	adc  h                                           ; $697e: $8c
	ld   a, e                                        ; $697f: $7b
	and  b                                           ; $6980: $a0
	ld   h, a                                        ; $6981: $67
	sbc  c                                           ; $6982: $99
	nop                                              ; $6983: $00
	ld   bc, $d503                                   ; $6984: $01 $03 $d5
	ld   h, b                                        ; $6987: $60
	inc  bc                                          ; $6988: $03
	add  b                                           ; $6989: $80
	ld   h, a                                        ; $698a: $67
	nop                                              ; $698b: $00
	ld   [bc], a                                     ; $698c: $02
	rlca                                             ; $698d: $07
	ld   a, b                                        ; $698e: $78
	ld   bc, $0302                                   ; $698f: $01 $02 $03
	ld   bc, $2000                                   ; $6992: $01 $00 $20
	nop                                              ; $6995: $00
	rlca                                             ; $6996: $07
	dec  a                                           ; $6997: $3d
	ld   [bc], a                                     ; $6998: $02
	ld   [bc], a                                     ; $6999: $02
	inc  bc                                          ; $699a: $03
	ld   bc, $2001                                   ; $699b: $01 $01 $20
	nop                                              ; $699e: $00
	rlca                                             ; $699f: $07
	or   b                                           ; $69a0: $b0
	ld   [bc], a                                     ; $69a1: $02
	ld   [bc], a                                     ; $69a2: $02
	inc  bc                                          ; $69a3: $03
	ld   bc, $2002                                   ; $69a4: $01 $02 $20
	nop                                              ; $69a7: $00
	ld   b, $fa                                      ; $69a8: $06 $fa
	ld   [bc], a                                     ; $69aa: $02
	rrca                                             ; $69ab: $0f
	nop                                              ; $69ac: $00
	ld   bc, $0101                                   ; $69ad: $01 $01 $01
	inc  bc                                          ; $69b0: $03
	ld   h, c                                        ; $69b1: $61
	ld   h, c                                        ; $69b2: $61
	ld   a, l                                        ; $69b3: $7d
	inc  bc                                          ; $69b4: $03
	db   $db                                         ; $69b5: $db
	ld   bc, $7614                                   ; $69b6: $01 $14 $76
	rst  $38                                         ; $69b9: $ff
	rst  $38                                         ; $69ba: $ff
	ld   bc, $0d04                                   ; $69bb: $01 $04 $0d
	nop                                              ; $69be: $00
	ld   a, [bc]                                     ; $69bf: $0a
	ld   bc, $9e50                                   ; $69c0: $01 $50 $9e
	ld   h, a                                        ; $69c3: $67
	adc  l                                           ; $69c4: $8d
	adc  h                                           ; $69c5: $8c
	ld   l, c                                        ; $69c6: $69
	and  c                                           ; $69c7: $a1
	rst  $38                                         ; $69c8: $ff
	rst  $38                                         ; $69c9: $ff
	dec  c                                           ; $69ca: $0d
	ld   [hl], a                                     ; $69cb: $77
	ld   a, b                                        ; $69cc: $78
	ld   l, l                                        ; $69cd: $6d
	ld   e, c                                        ; $69ce: $59
	inc  b                                           ; $69cf: $04
	ld   b, l                                        ; $69d0: $45
	ld   [hl], c                                     ; $69d1: $71
	ld   [hl], h                                     ; $69d2: $74
	sub  a                                           ; $69d3: $97
	ld   [hl], c                                     ; $69d4: $71
	ld   h, l                                        ; $69d5: $65
	sub  c                                           ; $69d6: $91
	sbc  c                                           ; $69d7: $99
	and  c                                           ; $69d8: $a1
	dec  c                                           ; $69d9: $0d
	ld   [hl], l                                     ; $69da: $75
	ld   h, a                                        ; $69db: $67
	ld   a, e                                        ; $69dc: $7b
	ld   sp, hl                                      ; $69dd: $f9
	dec  c                                           ; $69de: $0d
	nop                                              ; $69df: $00
	ld   a, [bc]                                     ; $69e0: $0a
	rrca                                             ; $69e1: $0f
	ld   b, $14                                      ; $69e2: $06 $14
	ld   bc, $f9a1                                   ; $69e4: $01 $a1 $f9
	db   $10                                         ; $69e7: $10
	ld   [$5900], sp                                 ; $69e8: $08 $00 $59
	ld   sp, hl                                      ; $69eb: $f9
	dec  c                                           ; $69ec: $0d
	ld   d, b                                        ; $69ed: $50
	ld   l, l                                        ; $69ee: $6d
	ld   d, d                                        ; $69ef: $52
	ld   l, [hl]                                     ; $69f0: $6e
	sub  [hl]                                        ; $69f1: $96
	sbc  [hl]                                        ; $69f2: $9e
	xor  h                                           ; $69f3: $ac
	push af                                          ; $69f4: $f5
	bit  5, [hl]                                     ; $69f5: $cb $6e
	sub  [hl]                                        ; $69f7: $96
	sbc  a                                           ; $69f8: $9f
	dec  c                                           ; $69f9: $0d
	ld   l, e                                        ; $69fa: $6b
	ld   h, c                                        ; $69fb: $61
	ld   [hl], l                                     ; $69fc: $75
	inc  b                                           ; $69fd: $04
	ld   c, c                                        ; $69fe: $49
	sub  d                                           ; $69ff: $92
	ld   [hl], c                                     ; $6a00: $71
	ld   [hl], h                                     ; $6a01: $74
	and  c                                           ; $6a02: $a1
	ld   l, [hl]                                     ; $6a03: $6e
	ld   sp, hl                                      ; $6a04: $f9
	dec  c                                           ; $6a05: $0d
	nop                                              ; $6a06: $00
	ld   a, [bc]                                     ; $6a07: $0a
	rrca                                             ; $6a08: $0f
	nop                                              ; $6a09: $00
	ld   bc, $ac01                                   ; $6a0a: $01 $01 $ac
	push af                                          ; $6a0d: $f5
	bit  4, e                                        ; $6a0e: $cb $63
	and  c                                           ; $6a10: $a1
	ld   [hl], l                                     ; $6a11: $75
	ld   h, l                                        ; $6a12: $65
	ld   l, l                                        ; $6a13: $6d
	ld   e, c                                        ; $6a14: $59
	rst  $38                                         ; $6a15: $ff
	rst  $38                                         ; $6a16: $ff
	dec  c                                           ; $6a17: $0d
	ld   h, a                                        ; $6a18: $67
	adc  l                                           ; $6a19: $8d
	adc  h                                           ; $6a1a: $8c
	ld   l, c                                        ; $6a1b: $69
	and  c                                           ; $6a1c: $a1
	sbc  [hl]                                        ; $6a1d: $9e
	inc  bc                                          ; $6a1e: $03
	sub  h                                           ; $6a1f: $94
	inc  b                                           ; $6a20: $04
	sbc  [hl]                                        ; $6a21: $9e
	sub  b                                           ; $6a22: $90
	cp   b                                           ; $6a23: $b8
	push hl                                          ; $6a24: $e5
	pop  af                                          ; $6a25: $f1
	ei                                               ; $6a26: $fb
	and  b                                           ; $6a27: $a0
	dec  c                                           ; $6a28: $0d
	ld   d, b                                        ; $6a29: $50
	add  c                                           ; $6a2a: $81
	sub  [hl]                                        ; $6a2b: $96
	ld   d, h                                        ; $6a2c: $54
	halt                                             ; $6a2d: $76
	dec  b                                           ; $6a2e: $05
	pop  de                                          ; $6a2f: $d1
	ld   [hl], c                                     ; $6a30: $71
	ld   [hl], h                                     ; $6a31: $74
	rst  $38                                         ; $6a32: $ff
	rst  $38                                         ; $6a33: $ff
	dec  c                                           ; $6a34: $0d
	nop                                              ; $6a35: $00
	ld   a, [bc]                                     ; $6a36: $0a
	rrca                                             ; $6a37: $0f
	ld   b, $11                                      ; $6a38: $06 $11
	ld   bc, $5483                                   ; $6a3a: $01 $83 $54
	and  c                                           ; $6a3d: $a1
	rst  $38                                         ; $6a3e: $ff
	rst  $38                                         ; $6a3f: $ff
	dec  c                                           ; $6a40: $0d
	ld   [bc], a                                     ; $6a41: $02
	jr   z, @+$54                                    ; $6a42: $28 $52

	ld   e, a                                        ; $6a44: $5f
	ld   [hl], a                                     ; $6a45: $77
	sbc  [hl]                                        ; $6a46: $9e
	ld   d, b                                        ; $6a47: $50
	ld   l, l                                        ; $6a48: $6d
	ld   d, d                                        ; $6a49: $52
	ld   e, d                                        ; $6a4a: $5a
	dec  c                                           ; $6a4b: $0d
	inc  bc                                          ; $6a4c: $03
	ld   a, [hl]                                     ; $6a4d: $7e
	sbc  l                                           ; $6a4e: $9d
	ld   [hl], c                                     ; $6a4f: $71
	ld   [hl], h                                     ; $6a50: $74
	ld   e, c                                        ; $6a51: $59
	sub  a                                           ; $6a52: $97
	ld   a, c                                        ; $6a53: $79
	ld   h, l                                        ; $6a54: $65
	ld   [hl], h                                     ; $6a55: $74
	ld   e, l                                        ; $6a56: $5d
	sbc  d                                           ; $6a57: $9a
	sub  [hl]                                        ; $6a58: $96
	sbc  a                                           ; $6a59: $9f
	dec  c                                           ; $6a5a: $0d
	nop                                              ; $6a5b: $00
	ld   a, [bc]                                     ; $6a5c: $0a
	rrca                                             ; $6a5d: $0f
	nop                                              ; $6a5e: $00
	ld   bc, $0101                                   ; $6a5f: $01 $01 $01
	inc  bc                                          ; $6a62: $03
	inc  bc                                          ; $6a63: $03
	ld   e, e                                        ; $6a64: $5b
	ld   e, c                                        ; $6a65: $59
	ld   [hl], c                                     ; $6a66: $71
	ld   l, l                                        ; $6a67: $6d
	rst  $38                                         ; $6a68: $ff
	rst  $38                                         ; $6a69: $ff
	ld   bc, $0d04                                   ; $6a6a: $01 $04 $0d
	nop                                              ; $6a6d: $00
	ld   a, [bc]                                     ; $6a6e: $0a
	nop                                              ; $6a6f: $00
	rrca                                             ; $6a70: $0f
	nop                                              ; $6a71: $00
	ld   bc, $0101                                   ; $6a72: $01 $01 $01
	inc  bc                                          ; $6a75: $03
	ld   h, c                                        ; $6a76: $61
	ld   d, h                                        ; $6a77: $54
	ld   a, b                                        ; $6a78: $78
	ld   [hl], c                                     ; $6a79: $71
	ld   l, l                                        ; $6a7a: $6d
	sub  a                                           ; $6a7b: $97
	rst  $38                                         ; $6a7c: $ff
	rst  $38                                         ; $6a7d: $ff
	ld   bc, $0d04                                   ; $6a7e: $01 $04 $0d
	nop                                              ; $6a81: $00
	ld   a, [bc]                                     ; $6a82: $0a
	ld   bc, $e5b8                                   ; $6a83: $01 $b8 $e5
	db   $fc                                         ; $6a86: $fc
	rst  $38                                         ; $6a87: $ff
	rst  $38                                         ; $6a88: $ff
	cp   b                                           ; $6a89: $b8
	push hl                                          ; $6a8a: $e5
	and  e                                           ; $6a8b: $a3
	db   $fc                                         ; $6a8c: $fc
	ld   a, [$000d]                                  ; $6a8d: $fa $0d $00
	ld   a, [bc]                                     ; $6a90: $0a
	rrca                                             ; $6a91: $0f
	ld   b, $14                                      ; $6a92: $06 $14
	ld   bc, $ffb3                                   ; $6a94: $01 $b3 $ff
	rst  $38                                         ; $6a97: $ff
	reti                                             ; $6a98: $d9


	call nc, $0df9                                   ; $6a99: $d4 $f9 $0d
	nop                                              ; $6a9c: $00
	ld   a, [bc]                                     ; $6a9d: $0a
	rrca                                             ; $6a9e: $0f
	nop                                              ; $6a9f: $00
	ld   bc, $0101                                   ; $6aa0: $01 $01 $01
	inc  bc                                          ; $6aa3: $03
	inc  bc                                          ; $6aa4: $03
	ld   e, e                                        ; $6aa5: $5b
	ld   e, c                                        ; $6aa6: $59
	ld   [hl], c                                     ; $6aa7: $71
	ld   l, l                                        ; $6aa8: $6d
	rst  $38                                         ; $6aa9: $ff
	rst  $38                                         ; $6aaa: $ff
	ld   bc, $0d04                                   ; $6aab: $01 $04 $0d
	nop                                              ; $6aae: $00
	ld   a, [bc]                                     ; $6aaf: $0a
	rrca                                             ; $6ab0: $0f
	ld   b, $13                                      ; $6ab1: $06 $13
	ld   bc, $ffff                                   ; $6ab3: $01 $ff $ff
	ld   a, b                                        ; $6ab6: $78
	and  c                                           ; $6ab7: $a1
	ld   [hl], h                                     ; $6ab8: $74
	sbc  [hl]                                        ; $6ab9: $9e
	inc  bc                                          ; $6aba: $03
	xor  a                                           ; $6abb: $af
	ld   [bc], a                                     ; $6abc: $02
	and  d                                           ; $6abd: $a2
	inc  bc                                          ; $6abe: $03
	ld   d, d                                        ; $6abf: $52
	ld   l, [hl]                                     ; $6ac0: $6e
	ld   [hl], c                                     ; $6ac1: $71
	ld   [hl], h                                     ; $6ac2: $74
	dec  c                                           ; $6ac3: $0d
	ld   l, [hl]                                     ; $6ac4: $6e
	adc  h                                           ; $6ac5: $8c
	ld   h, e                                        ; $6ac6: $63
	sbc  d                                           ; $6ac7: $9a
	ld   a, e                                        ; $6ac8: $7b
	ld   d, [hl]                                     ; $6ac9: $56
	sub  [hl]                                        ; $6aca: $96
	ld   a, [$030d]                                  ; $6acb: $fa $0d $03
	push de                                          ; $6ace: $d5
	ld   h, b                                        ; $6acf: $60
	sbc  c                                           ; $6ad0: $99
	ld   a, b                                        ; $6ad1: $78
	sub  [hl]                                        ; $6ad2: $96
	ld   a, [$0dfa]                                  ; $6ad3: $fa $fa $0d
	nop                                              ; $6ad6: $00
	ld   a, [bc]                                     ; $6ad7: $0a
	dec  c                                           ; $6ad8: $0d
	nop                                              ; $6ad9: $00
	nop                                              ; $6ada: $00
	rrca                                             ; $6adb: $0f
	nop                                              ; $6adc: $00
	ld   bc, $020c                                   ; $6add: $01 $0c $02
	ld   b, $02                                      ; $6ae0: $06 $02
	inc  bc                                          ; $6ae2: $03
	rrca                                             ; $6ae3: $0f
	nop                                              ; $6ae4: $00
	ld   bc, $0101                                   ; $6ae5: $01 $01 $01
	inc  bc                                          ; $6ae8: $03
	ld   h, c                                        ; $6ae9: $61
	ld   h, c                                        ; $6aea: $61
	ld   a, l                                        ; $6aeb: $7d
	inc  bc                                          ; $6aec: $03
	push de                                          ; $6aed: $d5
	ld   h, b                                        ; $6aee: $60
	sub  [hl]                                        ; $6aef: $96
	ld   d, h                                        ; $6af0: $54
	rst  $38                                         ; $6af1: $ff
	rst  $38                                         ; $6af2: $ff
	ld   bc, $0d04                                   ; $6af3: $01 $04 $0d
	nop                                              ; $6af6: $00
	ld   a, [bc]                                     ; $6af7: $0a
	ld   bc, $fa50                                   ; $6af8: $01 $50 $fa
	dec  c                                           ; $6afb: $0d
	ld   a, b                                        ; $6afc: $78
	ld   l, d                                        ; $6afd: $6a
	ld   h, c                                        ; $6afe: $61
	and  c                                           ; $6aff: $a1
	ld   a, b                                        ; $6b00: $78
	inc  bc                                          ; $6b01: $03
	ld   c, e                                        ; $6b02: $4b
	ld   a, c                                        ; $6b03: $79
	inc  bc                                          ; $6b04: $03
	cp   a                                           ; $6b05: $bf
	ld   e, d                                        ; $6b06: $5a
	ld   sp, hl                                      ; $6b07: $f9
	dec  c                                           ; $6b08: $0d
	nop                                              ; $6b09: $00
	ld   a, [bc]                                     ; $6b0a: $0a
	ld   bc, $9d54                                   ; $6b0b: $01 $54 $9d
	ld   [hl], c                                     ; $6b0e: $71
	ld   a, [$000d]                                  ; $6b0f: $fa $0d $00
	ld   a, [bc]                                     ; $6b12: $0a
	inc  c                                           ; $6b13: $0c
	rlca                                             ; $6b14: $07
	ld   bc, $6d50                                   ; $6b15: $01 $50 $6d
	ld   l, l                                        ; $6b18: $6d
	ld   l, l                                        ; $6b19: $6d
	ld   l, l                                        ; $6b1a: $6d
	ld   l, l                                        ; $6b1b: $6d
	ld   l, l                                        ; $6b1c: $6d
	rst  $38                                         ; $6b1d: $ff
	rst  $38                                         ; $6b1e: $ff
	dec  c                                           ; $6b1f: $0d
	nop                                              ; $6b20: $00
	ld   a, [bc]                                     ; $6b21: $0a
	dec  c                                           ; $6b22: $0d
	nop                                              ; $6b23: $00
	nop                                              ; $6b24: $00
	rrca                                             ; $6b25: $0f
	nop                                              ; $6b26: $00
	ld   bc, $020c                                   ; $6b27: $01 $0c $02
	ld   b, $02                                      ; $6b2a: $06 $02
	inc  bc                                          ; $6b2c: $03
	dec  c                                           ; $6b2d: $0d
	nop                                              ; $6b2e: $00
	nop                                              ; $6b2f: $00
	rrca                                             ; $6b30: $0f
	nop                                              ; $6b31: $00
	ld   bc, $020c                                   ; $6b32: $01 $0c $02
	ld   c, $66                                      ; $6b35: $0e $66
	inc  e                                           ; $6b37: $1c
	ld   b, $02                                      ; $6b38: $06 $02
	ld   [bc], a                                     ; $6b3a: $02
	dec  e                                           ; $6b3b: $1d
	ld   b, b                                        ; $6b3c: $40
	ld   d, $03                                      ; $6b3d: $16 $03
	ld   d, $01                                      ; $6b3f: $16 $01
	inc  bc                                          ; $6b41: $03
	add  hl, hl                                      ; $6b42: $29
	nop                                              ; $6b43: $00
	ld   bc, $8f74                                   ; $6b44: $01 $74 $8f
	ld   d, [hl]                                     ; $6b47: $56
	rst  $38                                         ; $6b48: $ff
	rst  $38                                         ; $6b49: $ff
	dec  c                                           ; $6b4a: $0d
	ld   a, h                                        ; $6b4b: $7c
	ld   l, h                                        ; $6b4c: $6c
	ld   d, d                                        ; $6b4d: $52
	ld   [hl], h                                     ; $6b4e: $74
	sub  d                                           ; $6b4f: $92
	ld   e, d                                        ; $6b50: $5a
	ld   [hl], c                                     ; $6b51: $71
	ld   l, l                                        ; $6b52: $6d
	ld   a, b                                        ; $6b53: $78
	rst  $38                                         ; $6b54: $ff
	rst  $38                                         ; $6b55: $ff
	ld   sp, hl                                      ; $6b56: $f9
	dec  c                                           ; $6b57: $0d
	nop                                              ; $6b58: $00
	ld   a, [bc]                                     ; $6b59: $0a
	ld   bc, $5261                                   ; $6b5a: $01 $61 $52
	ld   [hl], d                                     ; $6b5d: $72
	ld   a, l                                        ; $6b5e: $7d
	ld   l, a                                        ; $6b5f: $6f
	sub  l                                           ; $6b60: $95
	ld   [hl], c                                     ; $6b61: $71
	halt                                             ; $6b62: $76
	dec  c                                           ; $6b63: $0d
	ld   e, b                                        ; $6b64: $58
	ld   h, l                                        ; $6b65: $65
	ld   e, b                                        ; $6b66: $58
	ld   e, e                                        ; $6b67: $5b
	ld   h, l                                        ; $6b68: $65
	ld   a, e                                        ; $6b69: $7b
	ld   d, [hl]                                     ; $6b6a: $56
	halt                                             ; $6b6b: $76
	dec  c                                           ; $6b6c: $0d
	ld   d, d                                        ; $6b6d: $52
	ld   e, a                                        ; $6b6e: $5f
	ld   a, e                                        ; $6b6f: $7b
	ei                                               ; $6b70: $fb
	ld   a, b                                        ; $6b71: $78
	sbc  a                                           ; $6b72: $9f
	dec  c                                           ; $6b73: $0d
	nop                                              ; $6b74: $00
	ld   a, [bc]                                     ; $6b75: $0a
	inc  c                                           ; $6b76: $0c
	inc  bc                                          ; $6b77: $03
	inc  d                                           ; $6b78: $14
	rlca                                             ; $6b79: $07
	ld   bc, $030e                                   ; $6b7a: $01 $0e $03
	rrca                                             ; $6b7d: $0f
	nop                                              ; $6b7e: $00
	ld   bc, $040c                                   ; $6b7f: $01 $0c $04
	ld   bc, $6d50                                   ; $6b82: $01 $50 $6d
	db   $fc                                         ; $6b85: $fc
	rst  $38                                         ; $6b86: $ff
	rst  $38                                         ; $6b87: $ff
	rst  $38                                         ; $6b88: $ff
	rst  $38                                         ; $6b89: $ff
	dec  c                                           ; $6b8a: $0d
	nop                                              ; $6b8b: $00
	ld   a, [bc]                                     ; $6b8c: $0a
	ld   sp, $2040                                   ; $6b8d: $31 $40 $20
	inc  bc                                          ; $6b90: $03
	jr   nz, jr_049_6b94                             ; $6b91: $20 $01

	inc  d                                           ; $6b93: $14

jr_049_6b94:
	add  hl, hl                                      ; $6b94: $29
	nop                                              ; $6b95: $00
	ld   b, $66                                      ; $6b96: $06 $66
	inc  bc                                          ; $6b98: $03
	ld   c, $66                                      ; $6b99: $0e $66
	inc  e                                           ; $6b9b: $1c
	ld   b, $02                                      ; $6b9c: $06 $02
	ld   [bc], a                                     ; $6b9e: $02
	ld   bc, $5461                                   ; $6b9f: $01 $61 $54
	ld   d, d                                        ; $6ba2: $52
	ld   d, h                                        ; $6ba3: $54
	ld   [bc], a                                     ; $6ba4: $02
	ld   a, a                                        ; $6ba5: $7f
	inc  b                                           ; $6ba6: $04
	dec  de                                          ; $6ba7: $1b
	ld   a, l                                        ; $6ba8: $7d
	sbc  [hl]                                        ; $6ba9: $9e
	dec  c                                           ; $6baa: $0d
	nop                                              ; $6bab: $00
	dec  b                                           ; $6bac: $05
	ld   b, b                                        ; $6bad: $40
	ld   c, l                                        ; $6bae: $4d
	ld   [bc], a                                     ; $6baf: $02
	nop                                              ; $6bb0: $00
	nop                                              ; $6bb1: $00
	ld   bc, $0b02                                   ; $6bb2: $01 $02 $0b
	ld   [bc], a                                     ; $6bb5: $02
	xor  d                                           ; $6bb6: $aa
	sbc  [hl]                                        ; $6bb7: $9e
	ld   [hl], d                                     ; $6bb8: $72
	ld   [hl], d                                     ; $6bb9: $72
	ld   h, l                                        ; $6bba: $65
	adc  [hl]                                        ; $6bbb: $8e
	sub  [hl]                                        ; $6bbc: $96
	ld   d, h                                        ; $6bbd: $54
	ld   a, c                                        ; $6bbe: $79
	ld   a, [$000d]                                  ; $6bbf: $fa $0d $00
	ld   a, [bc]                                     ; $6bc2: $0a
	dec  b                                           ; $6bc3: $05
	ld   b, b                                        ; $6bc4: $40
	ld   d, e                                        ; $6bc5: $53
	ld   bc, $0002                                   ; $6bc6: $01 $02 $00
	dec  c                                           ; $6bc9: $0d
	nop                                              ; $6bca: $00
	nop                                              ; $6bcb: $00
	rrca                                             ; $6bcc: $0f
	nop                                              ; $6bcd: $00
	ld   bc, $1e09                                   ; $6bce: $01 $09 $1e
	rlca                                             ; $6bd1: $07
	xor  a                                           ; $6bd2: $af
	inc  bc                                          ; $6bd3: $03
	inc  b                                           ; $6bd4: $04
	add  b                                           ; $6bd5: $80
	ld   b, $01                                      ; $6bd6: $06 $01
	rst  $38                                         ; $6bd8: $ff
	jr   nz, jr_049_6bdb                             ; $6bd9: $20 $00

jr_049_6bdb:
	dec  b                                           ; $6bdb: $05
	add  b                                           ; $6bdc: $80
	ld   b, $01                                      ; $6bdd: $06 $01
	ld   bc, $0000                                   ; $6bdf: $01 $00 $00
	inc  c                                           ; $6be2: $0c
	ld   [bc], a                                     ; $6be3: $02
	ld   c, $02                                      ; $6be4: $0e $02
	rrca                                             ; $6be6: $0f
	nop                                              ; $6be7: $00
	ld   bc, $5001                                   ; $6be8: $01 $01 $50
	rst  $38                                         ; $6beb: $ff
	rst  $38                                         ; $6bec: $ff
	sbc  [hl]                                        ; $6bed: $9e
	sub  d                                           ; $6bee: $92
	ld   a, [hl]                                     ; $6bef: $7e
	ld   d, d                                        ; $6bf0: $52
	sub  [hl]                                        ; $6bf1: $96
	ld   a, b                                        ; $6bf2: $78
	db   $fc                                         ; $6bf3: $fc
	rst  $38                                         ; $6bf4: $ff
	rst  $38                                         ; $6bf5: $ff
	dec  c                                           ; $6bf6: $0d
	inc  bc                                          ; $6bf7: $03
	add  b                                           ; $6bf8: $80
	dec  b                                           ; $6bf9: $05
	db   $10                                         ; $6bfa: $10
	inc  bc                                          ; $6bfb: $03
	ld   [hl], l                                     ; $6bfc: $75
	halt                                             ; $6bfd: $76
	ld   a, l                                        ; $6bfe: $7d
	ld   d, d                                        ; $6bff: $52
	ld   d, [hl]                                     ; $6c00: $56
	rst  $38                                         ; $6c01: $ff
	rst  $38                                         ; $6c02: $ff
	rst  $38                                         ; $6c03: $ff
	rst  $38                                         ; $6c04: $ff
	dec  c                                           ; $6c05: $0d
	rst  $38                                         ; $6c06: $ff
	rst  $38                                         ; $6c07: $ff
	rst  $38                                         ; $6c08: $ff
	rst  $38                                         ; $6c09: $ff
	rst  $38                                         ; $6c0a: $ff
	rst  $38                                         ; $6c0b: $ff
	rst  $38                                         ; $6c0c: $ff
	rst  $38                                         ; $6c0d: $ff
	rst  $38                                         ; $6c0e: $ff
	rst  $38                                         ; $6c0f: $ff
	dec  c                                           ; $6c10: $0d
	nop                                              ; $6c11: $00
	ld   a, [bc]                                     ; $6c12: $0a
	inc  d                                           ; $6c13: $14
	ld   b, $01                                      ; $6c14: $06 $01
	rrca                                             ; $6c16: $0f
	dec  bc                                          ; $6c17: $0b
	ld   [bc], a                                     ; $6c18: $02
	ld   bc, $0008                                   ; $6c19: $01 $08 $00
	ld   e, l                                        ; $6c1c: $5d
	and  c                                           ; $6c1d: $a1
	sbc  a                                           ; $6c1e: $9f
	dec  c                                           ; $6c1f: $0d
	ld   [bc], a                                     ; $6c20: $02
	and  l                                           ; $6c21: $a5
	ld   h, a                                        ; $6c22: $67
	ld   e, [hl]                                     ; $6c23: $5e
	sbc  [hl]                                        ; $6c24: $9e
	inc  bc                                          ; $6c25: $03
	add  l                                           ; $6c26: $85
	inc  b                                           ; $6c27: $04
	xor  e                                           ; $6c28: $ab
	inc  bc                                          ; $6c29: $03
	add  d                                           ; $6c2a: $82
	inc  bc                                          ; $6c2b: $03
	ld   c, l                                        ; $6c2c: $4d
	ld   a, c                                        ; $6c2d: $79
	dec  b                                           ; $6c2e: $05
	db   $10                                         ; $6c2f: $10
	ld   a, b                                        ; $6c30: $78
	ld   h, e                                        ; $6c31: $63
	ld   d, d                                        ; $6c32: $52
	sbc  a                                           ; $6c33: $9f
	dec  c                                           ; $6c34: $0d
	nop                                              ; $6c35: $00
	ld   a, [bc]                                     ; $6c36: $0a
	rrca                                             ; $6c37: $0f
	nop                                              ; $6c38: $00
	ld   bc, $020c                                   ; $6c39: $01 $0c $02
	add  hl, bc                                      ; $6c3c: $09
	ld   e, $01                                      ; $6c3d: $1e $01
	adc  h                                           ; $6c3f: $8c
	sbc  [hl]                                        ; $6c40: $9e
	adc  h                                           ; $6c41: $8c
	ld   h, e                                        ; $6c42: $63
	ld   e, c                                        ; $6c43: $59
	rst  $38                                         ; $6c44: $ff
	rst  $38                                         ; $6c45: $ff
	dec  c                                           ; $6c46: $0d
	nop                                              ; $6c47: $00
	ld   a, [bc]                                     ; $6c48: $0a
	ld   c, $0e                                      ; $6c49: $0e $0e
	inc  e                                           ; $6c4b: $1c
	ld   a, [bc]                                     ; $6c4c: $0a
	inc  b                                           ; $6c4d: $04
	inc  b                                           ; $6c4e: $04
	ld   bc, $5258                                   ; $6c4f: $01 $58 $52
	sbc  [hl]                                        ; $6c52: $9e
	ld   [$9f00], sp                                 ; $6c53: $08 $00 $9f
	dec  c                                           ; $6c56: $0d
	ld   e, b                                        ; $6c57: $58
	adc  a                                           ; $6c58: $8f
	ei                                               ; $6c59: $fb
	cp   b                                           ; $6c5a: $b8
	push hl                                          ; $6c5b: $e5
	pop  af                                          ; $6c5c: $f1
	ei                                               ; $6c5d: $fb
	ld   a, h                                        ; $6c5e: $7c
	ld   l, h                                        ; $6c5f: $6c
	ld   d, d                                        ; $6c60: $52
	ld   [hl], h                                     ; $6c61: $74
	ld   l, l                                        ; $6c62: $6d
	dec  c                                           ; $6c63: $0d
	and  c                                           ; $6c64: $a1
	ld   l, [hl]                                     ; $6c65: $6e
	ld   [hl], c                                     ; $6c66: $71
	ld   [hl], h                                     ; $6c67: $74
	ld   a, b                                        ; $6c68: $78
	sbc  a                                           ; $6c69: $9f
	dec  c                                           ; $6c6a: $0d
	nop                                              ; $6c6b: $00
	ld   a, [bc]                                     ; $6c6c: $0a
	ld   bc, $a102                                   ; $6c6d: $01 $02 $a1
	inc  bc                                          ; $6c70: $03
	and  b                                           ; $6c71: $a0
	ld   l, a                                        ; $6c72: $6f
	ld   a, l                                        ; $6c73: $7d
	sbc  [hl]                                        ; $6c74: $9e
	sbc  l                                           ; $6c75: $9d
	ld   e, c                                        ; $6c76: $59
	sub  a                                           ; $6c77: $97
	and  c                                           ; $6c78: $a1
	ld   [hl], l                                     ; $6c79: $75
	sub  b                                           ; $6c7a: $90
	ld   a, b                                        ; $6c7b: $78
	ld   d, d                                        ; $6c7c: $52
	dec  c                                           ; $6c7d: $0d
	ld   e, d                                        ; $6c7e: $5a
	sbc  [hl]                                        ; $6c7f: $9e
	inc  de                                          ; $6c80: $13
	ld   [bc], a                                     ; $6c81: $02
	sub  e                                           ; $6c82: $93
	sub  b                                           ; $6c83: $90
	sub  d                                           ; $6c84: $92
	ld   [hl], c                                     ; $6c85: $71
	ld   l, a                                        ; $6c86: $6f
	sub  c                                           ; $6c87: $91
	ei                                               ; $6c88: $fb
	dec  c                                           ; $6c89: $0d
	adc  h                                           ; $6c8a: $8c
	ld   l, b                                        ; $6c8b: $68
	ld   d, d                                        ; $6c8c: $52
	ld   l, [hl]                                     ; $6c8d: $6e
	sbc  e                                           ; $6c8e: $9b
	sbc  a                                           ; $6c8f: $9f
	dec  c                                           ; $6c90: $0d
	nop                                              ; $6c91: $00
	ld   a, [bc]                                     ; $6c92: $0a
	ld   bc, $7e59                                   ; $6c93: $01 $59 $7e
	ld   [hl], c                                     ; $6c96: $71
	ld   [hl], h                                     ; $6c97: $74
	sub  d                                           ; $6c98: $92
	sbc  b                                           ; $6c99: $98
	ld   l, l                                        ; $6c9a: $6d
	ld   d, d                                        ; $6c9b: $52
	ld   e, d                                        ; $6c9c: $5a
	dec  c                                           ; $6c9d: $0d
	ld   [bc], a                                     ; $6c9e: $02
	sbc  b                                           ; $6c9f: $98
	inc  bc                                          ; $6ca0: $03
	nop                                              ; $6ca1: $00
	ld   a, h                                        ; $6ca2: $7c
	inc  bc                                          ; $6ca3: $03
	ld   l, e                                        ; $6ca4: $6b
	inc  bc                                          ; $6ca5: $03
	ld   c, a                                        ; $6ca6: $4f
	sbc  [hl]                                        ; $6ca7: $9e
	ld   l, a                                        ; $6ca8: $6f
	sub  l                                           ; $6ca9: $95
	ld   [hl], c                                     ; $6caa: $71
	halt                                             ; $6cab: $76
	ldh  [c], a                                      ; $6cac: $e2
	db   $ec                                         ; $6cad: $ec
	dec  c                                           ; $6cae: $0d
	ld   a, b                                        ; $6caf: $78
	and  c                                           ; $6cb0: $a1
	ld   [hl], l                                     ; $6cb1: $75
	ld   a, b                                        ; $6cb2: $78
	sbc  a                                           ; $6cb3: $9f
	dec  c                                           ; $6cb4: $0d
	nop                                              ; $6cb5: $00
	ld   a, [bc]                                     ; $6cb6: $0a
	inc  e                                           ; $6cb7: $1c
	ld   a, [bc]                                     ; $6cb8: $0a
	ld   [bc], a                                     ; $6cb9: $02
	ld   [bc], a                                     ; $6cba: $02
	ld   bc, $9d59                                   ; $6cbb: $01 $59 $9d
	ld   d, d                                        ; $6cbe: $52
	ld   l, e                                        ; $6cbf: $6b
	ld   d, h                                        ; $6cc0: $54
	ld   l, [hl]                                     ; $6cc1: $6e
	ld   e, d                                        ; $6cc2: $5a
	sbc  [hl]                                        ; $6cc3: $9e
	dec  c                                           ; $6cc4: $0d
	inc  b                                           ; $6cc5: $04
	dec  c                                           ; $6cc6: $0d
	ld   [bc], a                                     ; $6cc7: $02
	sub  [hl]                                        ; $6cc8: $96
	inc  b                                           ; $6cc9: $04
	ld   b, l                                        ; $6cca: $45
	inc  b                                           ; $6ccb: $04
	ld   a, [bc]                                     ; $6ccc: $0a
	ld   a, l                                        ; $6ccd: $7d
	ld   h, c                                        ; $6cce: $61
	ld   h, c                                        ; $6ccf: $61
	ld   [hl], l                                     ; $6cd0: $75
	inc  bc                                          ; $6cd1: $03
	ld   a, [hl]                                     ; $6cd2: $7e
	dec  b                                           ; $6cd3: $05
	nop                                              ; $6cd4: $00
	ld   l, [hl]                                     ; $6cd5: $6e
	ld   a, [$000d]                                  ; $6cd6: $fa $0d $00
	ld   a, [bc]                                     ; $6cd9: $0a
	ld   bc, $a102                                   ; $6cda: $01 $02 $a1
	inc  bc                                          ; $6cdd: $03
	and  b                                           ; $6cde: $a0
	ld   l, a                                        ; $6cdf: $6f
	and  b                                           ; $6ce0: $a0
	inc  b                                           ; $6ce1: $04
	ld   b, l                                        ; $6ce2: $45
	sbc  d                                           ; $6ce3: $9a
	dec  b                                           ; $6ce4: $05
	scf                                              ; $6ce5: $37
	ld   d, [hl]                                     ; $6ce6: $56
	ld   [hl], h                                     ; $6ce7: $74
	dec  c                                           ; $6ce8: $0d
	inc  bc                                          ; $6ce9: $03
	add  b                                           ; $6cea: $80
	inc  bc                                          ; $6ceb: $03
	jp   c, Jump_049_7465                            ; $6cec: $da $65 $74

	ld   e, e                                        ; $6cef: $5b
	ld   a, b                                        ; $6cf0: $78
	ld   a, [$000d]                                  ; $6cf1: $fa $0d $00
	ld   a, [bc]                                     ; $6cf4: $0a
	ld   h, $00                                      ; $6cf5: $26 $00
	inc  b                                           ; $6cf7: $04
	add  b                                           ; $6cf8: $80
	ld   h, d                                        ; $6cf9: $62
	ld   bc, $20ff                                   ; $6cfa: $01 $ff $20
	inc  bc                                          ; $6cfd: $03
	halt                                             ; $6cfe: $76
	ld   [bc], a                                     ; $6cff: $02
	nop                                              ; $6d00: $00
	jr   nz, @+$1e                                   ; $6d01: $20 $1c

	nop                                              ; $6d03: $00
	ld   d, $04                                      ; $6d04: $16 $04
	rrca                                             ; $6d06: $0f
	nop                                              ; $6d07: $00
	ld   bc, $0102                                   ; $6d08: $01 $02 $01
	ld   bc, $ff03                                   ; $6d0b: $01 $03 $ff
	rst  $38                                         ; $6d0e: $ff
	rst  $38                                         ; $6d0f: $ff
	rst  $38                                         ; $6d10: $ff
	rst  $38                                         ; $6d11: $ff
	rst  $38                                         ; $6d12: $ff
	rst  $38                                         ; $6d13: $ff
	rst  $38                                         ; $6d14: $ff
	ld   bc, $0d04                                   ; $6d15: $01 $04 $0d
	nop                                              ; $6d18: $00
	ld   a, [bc]                                     ; $6d19: $0a
	rrca                                             ; $6d1a: $0f
	inc  bc                                          ; $6d1b: $03
	db   $10                                         ; $6d1c: $10
	ld   bc, $0008                                   ; $6d1d: $01 $08 $00
	ld   e, l                                        ; $6d20: $5d
	and  c                                           ; $6d21: $a1
	sbc  [hl]                                        ; $6d22: $9e
	dec  c                                           ; $6d23: $0d
	ld   l, a                                        ; $6d24: $6f
	sub  c                                           ; $6d25: $91
	and  c                                           ; $6d26: $a1
	halt                                             ; $6d27: $76
	inc  bc                                          ; $6d28: $03
	jp   c, Jump_049_7465                            ; $6d29: $da $65 $74

	ld   e, l                                        ; $6d2c: $5d
	sbc  d                                           ; $6d2d: $9a
	ld   l, l                                        ; $6d2e: $6d
	ld   e, c                                        ; $6d2f: $59
	ld   h, l                                        ; $6d30: $65
	sub  a                                           ; $6d31: $97
	ld   sp, hl                                      ; $6d32: $f9
	dec  c                                           ; $6d33: $0d
	nop                                              ; $6d34: $00
	ld   a, [bc]                                     ; $6d35: $0a
	rrca                                             ; $6d36: $0f
	nop                                              ; $6d37: $00
	ld   bc, $0101                                   ; $6d38: $01 $01 $01
	inc  bc                                          ; $6d3b: $03
	rst  $38                                         ; $6d3c: $ff
	rst  $38                                         ; $6d3d: $ff
	rst  $38                                         ; $6d3e: $ff
	rst  $38                                         ; $6d3f: $ff
	rst  $38                                         ; $6d40: $ff
	rst  $38                                         ; $6d41: $ff
	rst  $38                                         ; $6d42: $ff
	rst  $38                                         ; $6d43: $ff
	ld   bc, $0d04                                   ; $6d44: $01 $04 $0d
	nop                                              ; $6d47: $00
	ld   a, [bc]                                     ; $6d48: $0a
	rrca                                             ; $6d49: $0f
	inc  bc                                          ; $6d4a: $03
	rla                                              ; $6d4b: $17
	ld   bc, $915b                                   ; $6d4c: $01 $5b $91
	ld   [hl], c                                     ; $6d4f: $71
	ld   a, [$780d]                                  ; $6d50: $fa $0d $78
	sbc  [hl]                                        ; $6d53: $9e
	inc  b                                           ; $6d54: $04
	ld   c, c                                        ; $6d55: $49
	sub  [hl]                                        ; $6d56: $96
	ld   h, c                                        ; $6d57: $61
	sbc  d                                           ; $6d58: $9a
	rst  $38                                         ; $6d59: $ff
	rst  $38                                         ; $6d5a: $ff

Jump_049_6d5b:
	dec  c                                           ; $6d5b: $0d
	inc  bc                                          ; $6d5c: $03
	ld   d, a                                        ; $6d5d: $57
	inc  bc                                          ; $6d5e: $03
	sbc  c                                           ; $6d5f: $99
	inc  bc                                          ; $6d60: $03
	jp   c, Jump_049_7471                            ; $6d61: $da $71 $74

	ld   a, b                                        ; $6d64: $78
	ld   d, d                                        ; $6d65: $52
	ld   h, [hl]                                     ; $6d66: $66
	sub  c                                           ; $6d67: $91
	ld   a, b                                        ; $6d68: $78
	ld   d, d                                        ; $6d69: $52
	ld   a, [$000d]                                  ; $6d6a: $fa $0d $00
	ld   a, [bc]                                     ; $6d6d: $0a
	rrca                                             ; $6d6e: $0f
	nop                                              ; $6d6f: $00
	ld   bc, $0101                                   ; $6d70: $01 $01 $01
	inc  bc                                          ; $6d73: $03
	ld   h, l                                        ; $6d74: $65
	sbc  [hl]                                        ; $6d75: $9e
	ld   h, l                                        ; $6d76: $65
	adc  h                                           ; $6d77: $8c
	ld   [hl], c                                     ; $6d78: $71
	ld   l, l                                        ; $6d79: $6d
	rst  $38                                         ; $6d7a: $ff
	rst  $38                                         ; $6d7b: $ff
	ld   bc, $0d04                                   ; $6d7c: $01 $04 $0d
	nop                                              ; $6d7f: $00
	ld   a, [bc]                                     ; $6d80: $0a
	rrca                                             ; $6d81: $0f
	inc  bc                                          ; $6d82: $03
	ld   d, $01                                      ; $6d83: $16 $01
	sub  b                                           ; $6d85: $90
	ld   d, h                                        ; $6d86: $54
	sbc  [hl]                                        ; $6d87: $9e
	ld   d, b                                        ; $6d88: $50
	ld   a, h                                        ; $6d89: $7c
	inc  bc                                          ; $6d8a: $03
	add  [hl]                                        ; $6d8b: $86
	ld   a, l                                        ; $6d8c: $7d
	ld   h, c                                        ; $6d8d: $61
	and  c                                           ; $6d8e: $a1
	ld   a, b                                        ; $6d8f: $78
	ld   [bc], a                                     ; $6d90: $02
	jp   $0d90                                       ; $6d91: $c3 $90 $0d


	inc  b                                           ; $6d94: $04
	ret  nz                                          ; $6d95: $c0

	inc  bc                                          ; $6d96: $03
	ld   a, l                                        ; $6d97: $7d
	ld   a, c                                        ; $6d98: $79
	inc  bc                                          ; $6d99: $03
	add  b                                           ; $6d9a: $80
	dec  b                                           ; $6d9b: $05
	db   $10                                         ; $6d9c: $10
	ld   a, b                                        ; $6d9d: $78
	ld   d, d                                        ; $6d9e: $52
	ld   a, h                                        ; $6d9f: $7c
	ld   sp, hl                                      ; $6da0: $f9
	dec  c                                           ; $6da1: $0d
	nop                                              ; $6da2: $00
	ld   a, [bc]                                     ; $6da3: $0a
	dec  e                                           ; $6da4: $1d
	ld   b, b                                        ; $6da5: $40
	inc  de                                          ; $6da6: $13
	inc  bc                                          ; $6da7: $03
	inc  de                                          ; $6da8: $13
	ld   bc, $2903                                   ; $6da9: $01 $03 $29
	nop                                              ; $6dac: $00
	ld   bc, $718c                                   ; $6dad: $01 $8c $71
	ld   l, l                                        ; $6db0: $6d
	ld   e, l                                        ; $6db1: $5d
	ld   a, [$000d]                                  ; $6db2: $fa $0d $00
	ld   a, [bc]                                     ; $6db5: $0a
	rrca                                             ; $6db6: $0f
	nop                                              ; $6db7: $00
	ld   bc, $0101                                   ; $6db8: $01 $01 $01
	inc  bc                                          ; $6dbb: $03
	ld   a, c                                        ; $6dbc: $79
	sbc  [hl]                                        ; $6dbd: $9e
	inc  bc                                          ; $6dbe: $03
	push de                                          ; $6dbf: $d5
	ld   h, b                                        ; $6dc0: $60
	ld   a, b                                        ; $6dc1: $78
	ld   e, e                                        ; $6dc2: $5b
	sub  c                                           ; $6dc3: $91
	ld   a, [$0401]                                  ; $6dc4: $fa $01 $04
	dec  c                                           ; $6dc7: $0d
	nop                                              ; $6dc8: $00
	ld   a, [bc]                                     ; $6dc9: $0a
	nop                                              ; $6dca: $00
	nop                                              ; $6dcb: $00
	inc  b                                           ; $6dcc: $04
	add  b                                           ; $6dcd: $80
	add  hl, sp                                      ; $6dce: $39
	ld   bc, $20ff                                   ; $6dcf: $01 $ff $20
	inc  bc                                          ; $6dd2: $03
	ld   h, e                                        ; $6dd3: $63
	ld   [bc], a                                     ; $6dd4: $02
	nop                                              ; $6dd5: $00
	jr   nz, @+$1e                                   ; $6dd6: $20 $1c

	nop                                              ; $6dd8: $00
	ld   c, $57                                      ; $6dd9: $0e $57
	inc  e                                           ; $6ddb: $1c
	inc  b                                           ; $6ddc: $04
	ld   bc, $0201                                   ; $6ddd: $01 $01 $02
	dec  b                                           ; $6de0: $05
	add  b                                           ; $6de1: $80
	ld   a, [hl-]                                    ; $6de2: $3a
	ld   bc, $0001                                   ; $6de3: $01 $01 $00
	ld   bc, $9752                                   ; $6de6: $01 $52 $97
	ld   [hl], c                                     ; $6de9: $71
	ld   h, l                                        ; $6dea: $65
	sub  c                                           ; $6deb: $91
	ei                                               ; $6dec: $fb
	ld   d, d                                        ; $6ded: $52
	sbc  a                                           ; $6dee: $9f
	dec  c                                           ; $6def: $0d
	nop                                              ; $6df0: $00
	ld   a, [bc]                                     ; $6df1: $0a
	ld   bc, $748d                                   ; $6df2: $01 $8d $74
	sbc  [hl]                                        ; $6df5: $9e
	adc  l                                           ; $6df6: $8d
	ld   [hl], h                                     ; $6df7: $74
	sbc  [hl]                                        ; $6df8: $9e
	adc  l                                           ; $6df9: $8d
	ld   [hl], h                                     ; $6dfa: $74
	sbc  [hl]                                        ; $6dfb: $9e
	adc  l                                           ; $6dfc: $8d
	ld   [hl], h                                     ; $6dfd: $74
	ld   a, [$610d]                                  ; $6dfe: $fa $0d $61
	sbc  d                                           ; $6e01: $9a
	ld   l, d                                        ; $6e02: $6a
	ei                                               ; $6e03: $fb
	and  c                                           ; $6e04: $a1
	add  h                                           ; $6e05: $84
	sbc  [hl]                                        ; $6e06: $9e
	dec  c                                           ; $6e07: $0d
	ld   e, b                                        ; $6e08: $58
	halt                                             ; $6e09: $76
	sub  b                                           ; $6e0a: $90
	ld   l, [hl]                                     ; $6e0b: $6e
	ld   l, a                                        ; $6e0c: $6f
	ld   a, b                                        ; $6e0d: $78
	ld   a, h                                        ; $6e0e: $7c
	sbc  a                                           ; $6e0f: $9f
	dec  c                                           ; $6e10: $0d
	nop                                              ; $6e11: $00
	ld   a, [bc]                                     ; $6e12: $0a
	db   $10                                         ; $6e13: $10
	jr   z, jr_049_6e16                              ; $6e14: $28 $00

jr_049_6e16:
	rrca                                             ; $6e16: $0f
	nop                                              ; $6e17: $00
	ld   bc, $0101                                   ; $6e18: $01 $01 $01
	inc  bc                                          ; $6e1b: $03
	ld   a, b                                        ; $6e1c: $78
	sbc  [hl]                                        ; $6e1d: $9e
	inc  b                                           ; $6e1e: $04
	ld   c, c                                        ; $6e1f: $49
	inc  b                                           ; $6e20: $04
	dec  c                                           ; $6e21: $0d
	ld   d, d                                        ; $6e22: $52
	sbc  c                                           ; $6e23: $99
	and  c                                           ; $6e24: $a1
	ld   l, [hl]                                     ; $6e25: $6e
	rst  $38                                         ; $6e26: $ff
	rst  $38                                         ; $6e27: $ff
	ld   sp, hl                                      ; $6e28: $f9
	ld   bc, $0d04                                   ; $6e29: $01 $04 $0d
	nop                                              ; $6e2c: $00
	ld   a, [bc]                                     ; $6e2d: $0a
	inc  e                                           ; $6e2e: $1c
	inc  b                                           ; $6e2f: $04
	ld   bc, $0101                                   ; $6e30: $01 $01 $01
	ld   h, e                                        ; $6e33: $63
	sbc  [hl]                                        ; $6e34: $9e
	adc  l                                           ; $6e35: $8d
	and  c                                           ; $6e36: $a1
	ld   a, b                                        ; $6e37: $78
	rst  $38                                         ; $6e38: $ff
	rst  $38                                         ; $6e39: $ff
	dec  c                                           ; $6e3a: $0d
	ld   l, a                                        ; $6e3b: $6f
	ld   d, d                                        ; $6e3c: $52
	ld   [bc], a                                     ; $6e3d: $02
	inc  de                                          ; $6e3e: $13
	ld   l, a                                        ; $6e3f: $6f
	sub  c                                           ; $6e40: $91
	and  c                                           ; $6e41: $a1
	ld   a, c                                        ; $6e42: $79
	sbc  [hl]                                        ; $6e43: $9e
	dec  c                                           ; $6e44: $0d
	ld   h, d                                        ; $6e45: $62
	ld   d, b                                        ; $6e46: $50
	ld   d, d                                        ; $6e47: $52
	ld   h, e                                        ; $6e48: $63
	ld   [hl], d                                     ; $6e49: $72
	ld   h, l                                        ; $6e4a: $65
	ld   [hl], h                                     ; $6e4b: $74
	sbc  a                                           ; $6e4c: $9f
	dec  c                                           ; $6e4d: $0d
	nop                                              ; $6e4e: $00
	ld   a, [bc]                                     ; $6e4f: $0a
	rrca                                             ; $6e50: $0f
	nop                                              ; $6e51: $00
	ld   bc, $0101                                   ; $6e52: $01 $01 $01
	inc  bc                                          ; $6e55: $03
	ld   a, d                                        ; $6e56: $7a
	ld   d, d                                        ; $6e57: $52
	ld   e, [hl]                                     ; $6e58: $5e
	sbc  c                                           ; $6e59: $99
	adc  l                                           ; $6e5a: $8d
	ld   a, c                                        ; $6e5b: $79
	sbc  [hl]                                        ; $6e5c: $9e
	ld   d, b                                        ; $6e5d: $50
	ld   d, d                                        ; $6e5e: $52
	ld   h, e                                        ; $6e5f: $63
	ld   [hl], d                                     ; $6e60: $72
	ld   sp, hl                                      ; $6e61: $f9
	dec  c                                           ; $6e62: $0d
	db   $10                                         ; $6e63: $10
	rst  $38                                         ; $6e64: $ff
	rst  $38                                         ; $6e65: $ff
	ld   [hl], a                                     ; $6e66: $77
	ld   d, h                                        ; $6e67: $54
	ld   h, l                                        ; $6e68: $65
	sub  [hl]                                        ; $6e69: $96
	ld   d, h                                        ; $6e6a: $54
	ld   e, c                                        ; $6e6b: $59
	ld   a, b                                        ; $6e6c: $78
	rst  $38                                         ; $6e6d: $ff
	rst  $38                                         ; $6e6e: $ff
	ld   bc, $0d04                                   ; $6e6f: $01 $04 $0d
	nop                                              ; $6e72: $00
	ld   a, [bc]                                     ; $6e73: $0a
	add  hl, de                                      ; $6e74: $19
	dec  b                                           ; $6e75: $05
	inc  bc                                          ; $6e76: $03
	ld   d, b                                        ; $6e77: $50
	ld   d, d                                        ; $6e78: $52
	ld   h, e                                        ; $6e79: $63
	ld   [hl], d                                     ; $6e7a: $72
	ld   h, a                                        ; $6e7b: $67
	sbc  c                                           ; $6e7c: $99
	nop                                              ; $6e7d: $00
	nop                                              ; $6e7e: $00
	ld   [bc], a                                     ; $6e7f: $02
	scf                                              ; $6e80: $37
	inc  b                                           ; $6e81: $04
	dec  de                                          ; $6e82: $1b
	ld   h, a                                        ; $6e83: $67
	sbc  c                                           ; $6e84: $99
	nop                                              ; $6e85: $00
	ld   bc, $8158                                   ; $6e86: $01 $58 $81
	ld   d, [hl]                                     ; $6e89: $56
	sbc  c                                           ; $6e8a: $99
	nop                                              ; $6e8b: $00
	ld   [bc], a                                     ; $6e8c: $02
	rlca                                             ; $6e8d: $07
	jp   nc, $0200                                   ; $6e8e: $d2 $00 $02

	inc  bc                                          ; $6e91: $03
	ld   bc, $2000                                   ; $6e92: $01 $00 $20
	nop                                              ; $6e95: $00
	rlca                                             ; $6e96: $07
	add  [hl]                                        ; $6e97: $86
	ld   bc, $0302                                   ; $6e98: $01 $02 $03
	ld   bc, $2001                                   ; $6e9b: $01 $01 $20
	nop                                              ; $6e9e: $00
	rlca                                             ; $6e9f: $07
	ld   c, $02                                      ; $6ea0: $0e $02
	ld   [bc], a                                     ; $6ea2: $02
	inc  bc                                          ; $6ea3: $03
	ld   bc, $2002                                   ; $6ea4: $01 $02 $20
	nop                                              ; $6ea7: $00
	ld   b, $67                                      ; $6ea8: $06 $67
	ld   [bc], a                                     ; $6eaa: $02
	rrca                                             ; $6eab: $0f
	nop                                              ; $6eac: $00
	ld   bc, $6101                                   ; $6ead: $01 $01 $61
	and  c                                           ; $6eb0: $a1
	ld   a, [hl]                                     ; $6eb1: $7e
	and  c                                           ; $6eb2: $a1
	ld   a, l                                        ; $6eb3: $7d
	sbc  [hl]                                        ; $6eb4: $9e
	adc  l                                           ; $6eb5: $8d
	and  c                                           ; $6eb6: $a1
	ld   a, b                                        ; $6eb7: $78
	sbc  a                                           ; $6eb8: $9f
	dec  c                                           ; $6eb9: $0d
	nop                                              ; $6eba: $00
	ld   a, [bc]                                     ; $6ebb: $0a
	inc  e                                           ; $6ebc: $1c
	inc  b                                           ; $6ebd: $04
	dec  b                                           ; $6ebe: $05
	dec  b                                           ; $6ebf: $05
	dec  e                                           ; $6ec0: $1d
	ld   b, b                                        ; $6ec1: $40
	inc  d                                           ; $6ec2: $14
	inc  bc                                          ; $6ec3: $03
	inc  d                                           ; $6ec4: $14
	ld   bc, $2803                                   ; $6ec5: $01 $03 $28
	nop                                              ; $6ec8: $00
	ld   bc, $9a54                                   ; $6ec9: $01 $54 $9a
	ld   h, l                                        ; $6ecc: $65
	ld   d, d                                        ; $6ecd: $52
	sbc  [hl]                                        ; $6ece: $9e
	ld   l, a                                        ; $6ecf: $6f
	ld   d, d                                        ; $6ed0: $52
	ld   [bc], a                                     ; $6ed1: $02
	inc  de                                          ; $6ed2: $13
	ld   l, a                                        ; $6ed3: $6f
	sub  c                                           ; $6ed4: $91
	and  c                                           ; $6ed5: $a1
	ld   a, [$6f0d]                                  ; $6ed6: $fa $0d $6f
	sub  c                                           ; $6ed9: $91
	and  c                                           ; $6eda: $a1
	halt                                             ; $6edb: $76
	sbc  [hl]                                        ; $6edc: $9e
	ld   d, b                                        ; $6edd: $50
	ld   d, d                                        ; $6ede: $52
	ld   h, e                                        ; $6edf: $63
	ld   [hl], d                                     ; $6ee0: $72
	ld   h, l                                        ; $6ee1: $65
	ld   [hl], h                                     ; $6ee2: $74
	dec  c                                           ; $6ee3: $0d
	ld   e, l                                        ; $6ee4: $5d
	sbc  d                                           ; $6ee5: $9a
	sbc  c                                           ; $6ee6: $99
	ld   a, b                                        ; $6ee7: $78
	and  c                                           ; $6ee8: $a1
	ld   [hl], h                                     ; $6ee9: $74
	sbc  a                                           ; $6eea: $9f
	dec  c                                           ; $6eeb: $0d
	nop                                              ; $6eec: $00
	ld   a, [bc]                                     ; $6eed: $0a
	ld   bc, $526f                                   ; $6eee: $01 $6f $52
	ld   [bc], a                                     ; $6ef1: $02
	inc  de                                          ; $6ef2: $13
	ld   l, a                                        ; $6ef3: $6f
	sub  c                                           ; $6ef4: $91
	and  c                                           ; $6ef5: $a1
	sbc  [hl]                                        ; $6ef6: $9e
	ld   l, [hl]                                     ; $6ef7: $6e
	ei                                               ; $6ef8: $fb
	ld   d, d                                        ; $6ef9: $52
	ld   h, a                                        ; $6efa: $67
	ld   e, e                                        ; $6efb: $5b
	ld   a, [$ff0d]                                  ; $6efc: $fa $0d $ff
	rst  $38                                         ; $6eff: $ff
	ld   e, b                                        ; $6f00: $58
	ld   [bc], a                                     ; $6f01: $02
	inc  de                                          ; $6f02: $13
	ld   l, a                                        ; $6f03: $6f
	sub  c                                           ; $6f04: $91
	and  c                                           ; $6f05: $a1
	ld   a, h                                        ; $6f06: $7c
	ld   [hl], d                                     ; $6f07: $72
	ld   e, h                                        ; $6f08: $5c
	ld   l, [hl]                                     ; $6f09: $6e
	ld   e, a                                        ; $6f0a: $5f
	ld   [hl], a                                     ; $6f0b: $77
	sbc  a                                           ; $6f0c: $9f
	dec  c                                           ; $6f0d: $0d
	nop                                              ; $6f0e: $00
	ld   a, [bc]                                     ; $6f0f: $0a
	inc  e                                           ; $6f10: $1c
	inc  b                                           ; $6f11: $04
	ld   bc, $0101                                   ; $6f12: $01 $01 $01
	ld   h, c                                        ; $6f15: $61
	ld   a, h                                        ; $6f16: $7c
	ld   h, c                                        ; $6f17: $61
	ld   l, l                                        ; $6f18: $6d
	ld   l, a                                        ; $6f19: $6f
	sbc  [hl]                                        ; $6f1a: $9e
	adc  l                                           ; $6f1b: $8d
	ei                                               ; $6f1c: $fb
	and  c                                           ; $6f1d: $a1
	ld   a, b                                        ; $6f1e: $78
	dec  c                                           ; $6f1f: $0d
	jp   nc, Jump_049_76d2                           ; $6f20: $d2 $d2 $76

	rst  JumpTable                                         ; $6f23: $df
	rst  JumpTable                                         ; $6f24: $df
	ld   e, d                                        ; $6f25: $5a
	and  e                                           ; $6f26: $a3
	and  l                                           ; $6f27: $a5
	db   $ec                                         ; $6f28: $ec
	cp   d                                           ; $6f29: $ba
	ld   a, c                                        ; $6f2a: $79
	dec  c                                           ; $6f2b: $0d
	ld   e, c                                        ; $6f2c: $59
	ld   [hl], c                                     ; $6f2d: $71
	ld   [hl], h                                     ; $6f2e: $74
	ld   e, l                                        ; $6f2f: $5d
	sbc  d                                           ; $6f30: $9a
	ld   l, l                                        ; $6f31: $6d
	and  c                                           ; $6f32: $a1
	ld   l, [hl]                                     ; $6f33: $6e
	sub  [hl]                                        ; $6f34: $96
	sbc  a                                           ; $6f35: $9f
	dec  c                                           ; $6f36: $0d
	nop                                              ; $6f37: $00
	ld   a, [bc]                                     ; $6f38: $0a
	ld   bc, $9166                                   ; $6f39: $01 $66 $91
	ld   d, b                                        ; $6f3c: $50
	and  e                                           ; $6f3d: $a3
	and  l                                           ; $6f3e: $a5
	db   $ec                                         ; $6f3f: $ec
	cp   d                                           ; $6f40: $ba
	sub  b                                           ; $6f41: $90
	ld   d, h                                        ; $6f42: $54
	ld   a, e                                        ; $6f43: $7b
	sbc  c                                           ; $6f44: $99
	ld   e, c                                        ; $6f45: $59
	sub  a                                           ; $6f46: $97
	sbc  a                                           ; $6f47: $9f
	dec  c                                           ; $6f48: $0d
	ld   l, a                                        ; $6f49: $6f
	ld   d, d                                        ; $6f4a: $52
	ld   [bc], a                                     ; $6f4b: $02
	inc  de                                          ; $6f4c: $13
	ld   l, a                                        ; $6f4d: $6f
	sub  c                                           ; $6f4e: $91
	and  c                                           ; $6f4f: $a1
	sbc  [hl]                                        ; $6f50: $9e
	dec  c                                           ; $6f51: $0d
	ld   e, b                                        ; $6f52: $58
	sub  d                                           ; $6f53: $92
	ld   h, a                                        ; $6f54: $67
	adc  l                                           ; $6f55: $8d
	ld   a, b                                        ; $6f56: $78
	ld   h, e                                        ; $6f57: $63
	ei                                               ; $6f58: $fb
	ld   d, d                                        ; $6f59: $52
	sbc  a                                           ; $6f5a: $9f
	dec  c                                           ; $6f5b: $0d
	nop                                              ; $6f5c: $00
	ld   a, [bc]                                     ; $6f5d: $0a
	nop                                              ; $6f5e: $00
	rrca                                             ; $6f5f: $0f
	nop                                              ; $6f60: $00
	ld   bc, $6701                                   ; $6f61: $01 $01 $67
	ld   h, d                                        ; $6f64: $62
	ld   d, d                                        ; $6f65: $52
	rst  $38                                         ; $6f66: $ff
	rst  $38                                         ; $6f67: $ff
	dec  c                                           ; $6f68: $0d
	ld   h, c                                        ; $6f69: $61
	and  c                                           ; $6f6a: $a1
	ld   a, b                                        ; $6f6b: $78
	ld   a, c                                        ; $6f6c: $79
	inc  bc                                          ; $6f6d: $03
	and  b                                           ; $6f6e: $a0
	ld   [hl], c                                     ; $6f6f: $71
	ld   [hl], h                                     ; $6f70: $74
	sbc  c                                           ; $6f71: $99
	and  c                                           ; $6f72: $a1
	ld   l, [hl]                                     ; $6f73: $6e
	rst  $38                                         ; $6f74: $ff
	rst  $38                                         ; $6f75: $ff
	dec  c                                           ; $6f76: $0d
	nop                                              ; $6f77: $00
	ld   a, [bc]                                     ; $6f78: $0a
	inc  e                                           ; $6f79: $1c
	inc  b                                           ; $6f7a: $04
	dec  b                                           ; $6f7b: $05
	dec  b                                           ; $6f7c: $05
	dec  e                                           ; $6f7d: $1d
	ld   b, b                                        ; $6f7e: $40
	inc  d                                           ; $6f7f: $14
	inc  bc                                          ; $6f80: $03
	inc  d                                           ; $6f81: $14
	ld   bc, $2802                                   ; $6f82: $01 $02 $28
	nop                                              ; $6f85: $00
	ld   bc, $d9a9                                   ; $6f86: $01 $a9 $d9
	reti                                             ; $6f89: $d9


	reti                                             ; $6f8a: $d9


	rst  $38                                         ; $6f8b: $ff
	rst  $38                                         ; $6f8c: $ff
	dec  c                                           ; $6f8d: $0d
	jp   nc, Jump_049_76d2                           ; $6f8e: $d2 $d2 $76

	rst  JumpTable                                         ; $6f91: $df
	rst  JumpTable                                         ; $6f92: $df
	ld   e, d                                        ; $6f93: $5a
	and  e                                           ; $6f94: $a3
	and  l                                           ; $6f95: $a5
	db   $ec                                         ; $6f96: $ec
	cp   d                                           ; $6f97: $ba
	ld   a, c                                        ; $6f98: $79
	dec  c                                           ; $6f99: $0d
	ld   e, c                                        ; $6f9a: $59
	ld   [hl], c                                     ; $6f9b: $71
	ld   [hl], h                                     ; $6f9c: $74
	ld   e, l                                        ; $6f9d: $5d
	sbc  d                                           ; $6f9e: $9a
	ld   l, l                                        ; $6f9f: $6d
	and  c                                           ; $6fa0: $a1
	ld   l, [hl]                                     ; $6fa1: $6e
	sbc  a                                           ; $6fa2: $9f
	dec  c                                           ; $6fa3: $0d
	nop                                              ; $6fa4: $00
	ld   a, [bc]                                     ; $6fa5: $0a
	inc  e                                           ; $6fa6: $1c
	inc  b                                           ; $6fa7: $04
	ld   bc, $0101                                   ; $6fa8: $01 $01 $01
	adc  l                                           ; $6fab: $8d
	and  c                                           ; $6fac: $a1
	ld   a, b                                        ; $6fad: $78
	and  b                                           ; $6fae: $a0
	sub  [hl]                                        ; $6faf: $96
	sbc  e                                           ; $6fb0: $9b
	ld   h, l                                        ; $6fb1: $65
	ld   e, l                                        ; $6fb2: $5d
	ld   a, e                                        ; $6fb3: $7b
	sbc  [hl]                                        ; $6fb4: $9e
	dec  c                                           ; $6fb5: $0d
	ld   l, a                                        ; $6fb6: $6f
	ld   d, d                                        ; $6fb7: $52
	ld   [bc], a                                     ; $6fb8: $02
	inc  de                                          ; $6fb9: $13
	ld   l, a                                        ; $6fba: $6f
	sub  c                                           ; $6fbb: $91
	and  c                                           ; $6fbc: $a1
	sbc  a                                           ; $6fbd: $9f
	dec  c                                           ; $6fbe: $0d
	nop                                              ; $6fbf: $00
	ld   a, [bc]                                     ; $6fc0: $0a
	ld   bc, $9166                                   ; $6fc1: $01 $66 $91
	ld   d, b                                        ; $6fc4: $50
	and  e                                           ; $6fc5: $a3
	and  l                                           ; $6fc6: $a5
	db   $ec                                         ; $6fc7: $ec
	cp   d                                           ; $6fc8: $ba
	sub  b                                           ; $6fc9: $90
	ld   d, h                                        ; $6fca: $54
	ld   a, e                                        ; $6fcb: $7b
	sbc  c                                           ; $6fcc: $99
	ld   e, c                                        ; $6fcd: $59
	sub  a                                           ; $6fce: $97
	sbc  a                                           ; $6fcf: $9f
	dec  c                                           ; $6fd0: $0d
	ld   l, a                                        ; $6fd1: $6f
	ld   d, d                                        ; $6fd2: $52
	ld   [bc], a                                     ; $6fd3: $02
	inc  de                                          ; $6fd4: $13
	ld   l, a                                        ; $6fd5: $6f
	sub  c                                           ; $6fd6: $91
	and  c                                           ; $6fd7: $a1
	sbc  [hl]                                        ; $6fd8: $9e
	dec  c                                           ; $6fd9: $0d
	ld   e, b                                        ; $6fda: $58
	sub  d                                           ; $6fdb: $92
	ld   h, a                                        ; $6fdc: $67
	adc  l                                           ; $6fdd: $8d
	ld   a, b                                        ; $6fde: $78
	ld   h, e                                        ; $6fdf: $63
	ei                                               ; $6fe0: $fb
	ld   d, d                                        ; $6fe1: $52
	sbc  a                                           ; $6fe2: $9f
	dec  c                                           ; $6fe3: $0d
	nop                                              ; $6fe4: $00
	ld   a, [bc]                                     ; $6fe5: $0a
	nop                                              ; $6fe6: $00
	rrca                                             ; $6fe7: $0f
	nop                                              ; $6fe8: $00
	ld   bc, $6101                                   ; $6fe9: $01 $01 $61
	sbc  [hl]                                        ; $6fec: $9e
	ld   h, c                                        ; $6fed: $61
	sbc  d                                           ; $6fee: $9a
	ld   l, [hl]                                     ; $6fef: $6e
	ld   e, a                                        ; $6ff0: $5f
	ld   d, d                                        ; $6ff1: $52
	ld   [hl], c                                     ; $6ff2: $71
	ld   a, a                                        ; $6ff3: $7f
	ld   d, d                                        ; $6ff4: $52
	ld   d, b                                        ; $6ff5: $50
	sbc  c                                           ; $6ff6: $99
	halt                                             ; $6ff7: $76
	dec  c                                           ; $6ff8: $0d
	ld   e, c                                        ; $6ff9: $59
	ld   d, [hl]                                     ; $6ffa: $56
	ld   [hl], c                                     ; $6ffb: $71
	ld   [hl], h                                     ; $6ffc: $74
	rst  $10                                         ; $6ffd: $d7
	xor  [hl]                                        ; $6ffe: $ae
	ldh  [$6e], a                                    ; $6fff: $e0 $6e
	ld   a, b                                        ; $7001: $78
	ld   c, a                                        ; $7002: $4f
	rst  $38                                         ; $7003: $ff
	rst  $38                                         ; $7004: $ff
	dec  c                                           ; $7005: $0d
	nop                                              ; $7006: $00
	ld   a, [bc]                                     ; $7007: $0a
	inc  e                                           ; $7008: $1c
	inc  b                                           ; $7009: $04
	rlca                                             ; $700a: $07
	rlca                                             ; $700b: $07
	dec  e                                           ; $700c: $1d
	ld   b, b                                        ; $700d: $40
	inc  d                                           ; $700e: $14
	inc  bc                                          ; $700f: $03
	inc  d                                           ; $7010: $14
	ld   bc, $2903                                   ; $7011: $01 $03 $29
	nop                                              ; $7014: $00
	ld   bc, $aed7                                   ; $7015: $01 $d7 $ae
	ldh  [$66], a                                    ; $7018: $e0 $66
	sub  c                                           ; $701a: $91
	ld   a, b                                        ; $701b: $78
	ld   d, d                                        ; $701c: $52
	sub  b                                           ; $701d: $90
	and  c                                           ; $701e: $a1
	ld   a, [$6f0d]                                  ; $701f: $fa $0d $6f
	ld   d, d                                        ; $7022: $52
	ld   [bc], a                                     ; $7023: $02
	inc  de                                          ; $7024: $13
	ld   l, a                                        ; $7025: $6f
	sub  c                                           ; $7026: $91
	and  c                                           ; $7027: $a1
	db   $d3                                         ; $7028: $d3
	jp   z, $faa5                                    ; $7029: $ca $a5 $fa

	dec  c                                           ; $702c: $0d
	nop                                              ; $702d: $00
	ld   a, [bc]                                     ; $702e: $0a
	inc  e                                           ; $702f: $1c
	inc  b                                           ; $7030: $04
	ld   [bc], a                                     ; $7031: $02
	ld   [bc], a                                     ; $7032: $02
	ld   bc, $5490                                   ; $7033: $01 $90 $54
	sbc  [hl]                                        ; $7036: $9e
	ld   e, c                                        ; $7037: $59
	ld   d, [hl]                                     ; $7038: $56
	ld   [hl], c                                     ; $7039: $71
	ld   [hl], h                                     ; $703a: $74
	ld   a, [$000d]                                  ; $703b: $fa $0d $00
	ld   a, [bc]                                     ; $703e: $0a
	nop                                              ; $703f: $00
	inc  e                                           ; $7040: $1c
	inc  b                                           ; $7041: $04
	inc  bc                                          ; $7042: $03
	inc  bc                                          ; $7043: $03
	dec  e                                           ; $7044: $1d
	ld   b, b                                        ; $7045: $40
	inc  d                                           ; $7046: $14
	inc  bc                                          ; $7047: $03
	inc  d                                           ; $7048: $14
	ld   bc, $2901                                   ; $7049: $01 $01 $29
	nop                                              ; $704c: $00
	ld   bc, $526f                                   ; $704d: $01 $6f $52
	ld   [bc], a                                     ; $7050: $02
	inc  de                                          ; $7051: $13
	ld   l, a                                        ; $7052: $6f
	sub  c                                           ; $7053: $91
	and  c                                           ; $7054: $a1
	sub  b                                           ; $7055: $90
	sbc  [hl]                                        ; $7056: $9e
	dec  c                                           ; $7057: $0d
	adc  l                                           ; $7058: $8d
	and  c                                           ; $7059: $a1
	ld   a, b                                        ; $705a: $78
	ld   a, c                                        ; $705b: $79
	ld   d, b                                        ; $705c: $50
	ld   d, d                                        ; $705d: $52
	ld   h, e                                        ; $705e: $63
	ld   [hl], d                                     ; $705f: $72
	ld   h, l                                        ; $7060: $65
	ld   [hl], h                                     ; $7061: $74
	sub  [hl]                                        ; $7062: $96
	db   $fc                                         ; $7063: $fc
	sbc  a                                           ; $7064: $9f
	dec  c                                           ; $7065: $0d
	nop                                              ; $7066: $00
	ld   a, [bc]                                     ; $7067: $0a
	rrca                                             ; $7068: $0f
	nop                                              ; $7069: $00
	ld   bc, $ff01                                   ; $706a: $01 $01 $ff
	rst  $38                                         ; $706d: $ff
	sub  [hl]                                        ; $706e: $96
	sbc  [hl]                                        ; $706f: $9e
	sub  [hl]                                        ; $7070: $96
	sbc  e                                           ; $7071: $9b
	ld   h, l                                        ; $7072: $65
	ld   e, l                                        ; $7073: $5d
	sbc  a                                           ; $7074: $9f
	dec  c                                           ; $7075: $0d
	nop                                              ; $7076: $00
	ld   a, [bc]                                     ; $7077: $0a
	inc  e                                           ; $7078: $1c
	inc  b                                           ; $7079: $04
	ld   bc, $0101                                   ; $707a: $01 $01 $01
	ld   h, c                                        ; $707d: $61
	sbc  d                                           ; $707e: $9a
	ld   e, c                                        ; $707f: $59
	sub  a                                           ; $7080: $97
	sbc  [hl]                                        ; $7081: $9e
	adc  l                                           ; $7082: $8d
	and  c                                           ; $7083: $a1
	ld   a, b                                        ; $7084: $78
	ld   a, h                                        ; $7085: $7c
	ld   h, c                                        ; $7086: $61
	halt                                             ; $7087: $76
	dec  c                                           ; $7088: $0d
	sub  [hl]                                        ; $7089: $96
	sbc  e                                           ; $708a: $9b
	ld   h, l                                        ; $708b: $65
	ld   e, l                                        ; $708c: $5d
	ld   a, e                                        ; $708d: $7b
	rst  $38                                         ; $708e: $ff
	rst  $38                                         ; $708f: $ff
	dec  c                                           ; $7090: $0d
	ld   l, a                                        ; $7091: $6f
	ld   d, d                                        ; $7092: $52
	ld   [bc], a                                     ; $7093: $02
	inc  de                                          ; $7094: $13
	ld   l, a                                        ; $7095: $6f
	sub  c                                           ; $7096: $91
	and  c                                           ; $7097: $a1
	sbc  a                                           ; $7098: $9f
	dec  c                                           ; $7099: $0d
	nop                                              ; $709a: $00
	ld   a, [bc]                                     ; $709b: $0a
	ld   bc, $9166                                   ; $709c: $01 $66 $91
	ld   d, b                                        ; $709f: $50
	and  e                                           ; $70a0: $a3
	and  l                                           ; $70a1: $a5
	db   $ec                                         ; $70a2: $ec
	cp   d                                           ; $70a3: $ba
	sub  b                                           ; $70a4: $90
	ld   d, h                                        ; $70a5: $54
	ld   a, e                                        ; $70a6: $7b
	sbc  c                                           ; $70a7: $99
	ld   e, c                                        ; $70a8: $59
	sub  a                                           ; $70a9: $97
	sbc  a                                           ; $70aa: $9f
	dec  c                                           ; $70ab: $0d
	ld   l, a                                        ; $70ac: $6f
	ld   d, d                                        ; $70ad: $52
	ld   [bc], a                                     ; $70ae: $02
	inc  de                                          ; $70af: $13
	ld   l, a                                        ; $70b0: $6f
	sub  c                                           ; $70b1: $91
	and  c                                           ; $70b2: $a1
	sbc  [hl]                                        ; $70b3: $9e
	dec  c                                           ; $70b4: $0d
	ld   e, b                                        ; $70b5: $58
	sub  d                                           ; $70b6: $92
	ld   h, a                                        ; $70b7: $67
	adc  l                                           ; $70b8: $8d
	ld   a, b                                        ; $70b9: $78
	ld   h, e                                        ; $70ba: $63
	ei                                               ; $70bb: $fb
	ld   d, d                                        ; $70bc: $52
	sbc  a                                           ; $70bd: $9f
	dec  c                                           ; $70be: $0d
	nop                                              ; $70bf: $00
	ld   a, [bc]                                     ; $70c0: $0a
	nop                                              ; $70c1: $00
	nop                                              ; $70c2: $00
	inc  b                                           ; $70c3: $04
	add  b                                           ; $70c4: $80
	ld   d, $01                                      ; $70c5: $16 $01
	rst  $38                                         ; $70c7: $ff
	jr   nz, jr_049_70cd                             ; $70c8: $20 $03

	ld   e, c                                        ; $70ca: $59
	ld   [bc], a                                     ; $70cb: $02
	nop                                              ; $70cc: $00

jr_049_70cd:
	jr   nz, jr_049_70eb                             ; $70cd: $20 $1c

	nop                                              ; $70cf: $00
	ld   c, $6e                                      ; $70d0: $0e $6e
	rrca                                             ; $70d2: $0f
	nop                                              ; $70d3: $00
	ld   bc, $020d                                   ; $70d4: $01 $0d $02
	ld   [bc], a                                     ; $70d7: $02
	ld   [bc], a                                     ; $70d8: $02
	dec  b                                           ; $70d9: $05
	add  b                                           ; $70da: $80
	rla                                              ; $70db: $17
	ld   bc, $0001                                   ; $70dc: $01 $01 $00
	ld   bc, $8d67                                   ; $70df: $01 $67 $8d
	sbc  d                                           ; $70e2: $9a
	ld   h, e                                        ; $70e3: $63
	and  c                                           ; $70e4: $a1
	dec  c                                           ; $70e5: $0d
	inc  b                                           ; $70e6: $04
	ldh  [$03], a                                    ; $70e7: $e0 $03
	dec  hl                                          ; $70e9: $2b
	inc  bc                                          ; $70ea: $03

jr_049_70eb:
	pop  hl                                          ; $70eb: $e1
	sbc  b                                           ; $70ec: $98
	dec  b                                           ; $70ed: $05
	db   $10                                         ; $70ee: $10
	adc  h                                           ; $70ef: $8c
	ld   h, l                                        ; $70f0: $65
	ld   l, l                                        ; $70f1: $6d
	sbc  a                                           ; $70f2: $9f
	dec  c                                           ; $70f3: $0d
	nop                                              ; $70f4: $00
	ld   a, [bc]                                     ; $70f5: $0a
	rrca                                             ; $70f6: $0f
	ld   [bc], a                                     ; $70f7: $02
	ld   [bc], a                                     ; $70f8: $02
	ld   bc, $9750                                   ; $70f9: $01 $50 $97
	sbc  [hl]                                        ; $70fc: $9e
	ld   [$6308], sp                                 ; $70fd: $08 $08 $63
	and  c                                           ; $7100: $a1
	dec  c                                           ; $7101: $0d
	inc  bc                                          ; $7102: $03
	push de                                          ; $7103: $d5
	ld   h, b                                        ; $7104: $60
	ld   a, b                                        ; $7105: $78
	ld   d, d                                        ; $7106: $52
	ld   [hl], l                                     ; $7107: $75
	sub  [hl]                                        ; $7108: $96
	ld   e, l                                        ; $7109: $5d
	dec  b                                           ; $710a: $05
	db   $10                                         ; $710b: $10
	adc  h                                           ; $710c: $8c
	ld   h, l                                        ; $710d: $65
	ld   l, l                                        ; $710e: $6d
	ld   a, e                                        ; $710f: $7b
	sbc  a                                           ; $7110: $9f
	dec  c                                           ; $7111: $0d
	adc  c                                           ; $7112: $89
	adc  a                                           ; $7113: $8f
	ld   [hl], h                                     ; $7114: $74
	ld   h, e                                        ; $7115: $63
	ld   h, l                                        ; $7116: $65
	ld   d, b                                        ; $7117: $50
	ld   h, b                                        ; $7118: $60
	adc  h                                           ; $7119: $8c
	ld   h, a                                        ; $711a: $67
	sbc  l                                           ; $711b: $9d
	sbc  a                                           ; $711c: $9f
	dec  c                                           ; $711d: $0d
	nop                                              ; $711e: $00
	ld   a, [bc]                                     ; $711f: $0a
	ld   bc, $7d75                                   ; $7120: $01 $75 $7d
	sbc  [hl]                                        ; $7123: $9e
	inc  b                                           ; $7124: $04
	xor  l                                           ; $7125: $ad
	ld   [bc], a                                     ; $7126: $02
	xor  c                                           ; $7127: $a9
	sbc  [hl]                                        ; $7128: $9e
	sbc  l                                           ; $7129: $9d
	ld   l, l                                        ; $712a: $6d
	ld   e, l                                        ; $712b: $5d
	ld   h, l                                        ; $712c: $65
	ld   a, c                                        ; $712d: $79
	dec  c                                           ; $712e: $0d
	ld   [bc], a                                     ; $712f: $02
	xor  [hl]                                        ; $7130: $ae
	inc  bc                                          ; $7131: $03
	call c, Call_049_6556                            ; $7132: $dc $56 $65
	ld   l, l                                        ; $7135: $6d
	pop  de                                          ; $7136: $d1
	push bc                                          ; $7137: $c5
	halt                                             ; $7138: $76
	ld   h, l                                        ; $7139: $65
	ld   [hl], h                                     ; $713a: $74
	dec  c                                           ; $713b: $0d
	ld   d, b                                        ; $713c: $50
	ld   a, b                                        ; $713d: $78
	ld   l, l                                        ; $713e: $6d
	and  b                                           ; $713f: $a0
	inc  bc                                          ; $7140: $03
	db   $fd                                         ; $7141: $fd
	inc  bc                                          ; $7142: $03
	ld   l, l                                        ; $7143: $6d
	ld   d, d                                        ; $7144: $52
	ld   l, l                                        ; $7145: $6d
	ld   h, l                                        ; $7146: $65
	adc  h                                           ; $7147: $8c
	ld   h, a                                        ; $7148: $67
	sbc  l                                           ; $7149: $9d
	sbc  a                                           ; $714a: $9f
	dec  c                                           ; $714b: $0d
	nop                                              ; $714c: $00
	ld   a, [bc]                                     ; $714d: $0a
	dec  c                                           ; $714e: $0d
	nop                                              ; $714f: $00
	nop                                              ; $7150: $00
	rrca                                             ; $7151: $0f
	nop                                              ; $7152: $00
	ld   bc, $021a                                   ; $7153: $01 $1a $02
	rlca                                             ; $7156: $07
	and  c                                           ; $7157: $a1
	nop                                              ; $7158: $00
	ld   [bc], a                                     ; $7159: $02
	inc  b                                           ; $715a: $04
	ld   bc, $2002                                   ; $715b: $01 $02 $20
	nop                                              ; $715e: $00
	rlca                                             ; $715f: $07
	call z, $0200                                    ; $7160: $cc $00 $02
	inc  b                                           ; $7163: $04
	ld   bc, $2001                                   ; $7164: $01 $01 $20
	nop                                              ; $7167: $00
	rlca                                             ; $7168: $07
	nop                                              ; $7169: $00
	ld   bc, $0402                                   ; $716a: $01 $02 $04
	ld   bc, $2000                                   ; $716d: $01 $00 $20
	nop                                              ; $7170: $00
	inc  e                                           ; $7171: $1c
	ld   [bc], a                                     ; $7172: $02
	ld   b, $06                                      ; $7173: $06 $06
	ld   bc, $9e9d                                   ; $7175: $01 $9d $9e
	sbc  l                                           ; $7178: $9d
	ld   h, h                                        ; $7179: $64
	halt                                             ; $717a: $76
	inc  b                                           ; $717b: $04
	ld   a, l                                        ; $717c: $7d
	ld   e, a                                        ; $717d: $5f
	ld   [hl], h                                     ; $717e: $74
	ld   h, e                                        ; $717f: $63
	ld   h, l                                        ; $7180: $65
	ld   d, b                                        ; $7181: $50
	ld   h, b                                        ; $7182: $60
	ld   l, l                                        ; $7183: $6d
	dec  c                                           ; $7184: $0d
	ld   a, h                                        ; $7185: $7c
	ld   [hl], l                                     ; $7186: $75
	ld   h, a                                        ; $7187: $67
	sbc  l                                           ; $7188: $9d
	sub  [hl]                                        ; $7189: $96
	rst  $38                                         ; $718a: $ff
	rst  $38                                         ; $718b: $ff
	dec  c                                           ; $718c: $0d
	ld   e, b                                        ; $718d: $58
	ei                                               ; $718e: $fb
	adc  c                                           ; $718f: $89
	adc  c                                           ; $7190: $89
	adc  c                                           ; $7191: $89

Jump_049_7192:
	adc  c                                           ; $7192: $89
	adc  c                                           ; $7193: $89
	rst  $38                                         ; $7194: $ff
	rst  $38                                         ; $7195: $ff
	dec  c                                           ; $7196: $0d
	nop                                              ; $7197: $00
	ld   a, [bc]                                     ; $7198: $0a
	ld   b, $24                                      ; $7199: $06 $24
	ld   bc, $021c                                   ; $719b: $01 $1c $02
	ld   bc, $0101                                   ; $719e: $01 $01 $01
	ld   a, b                                        ; $71a1: $78
	ld   e, c                                        ; $71a2: $59
	ld   a, b                                        ; $71a3: $78
	ld   e, c                                        ; $71a4: $59
	sbc  [hl]                                        ; $71a5: $9e
	ld   e, d                                        ; $71a6: $5a
	and  c                                           ; $71a7: $a1
	ld   a, [hl]                                     ; $71a8: $7e
	sbc  b                                           ; $71a9: $98
	adc  h                                           ; $71aa: $8c
	ld   h, l                                        ; $71ab: $65
	ld   l, l                                        ; $71ac: $6d
	ld   e, a                                        ; $71ad: $5f
	ld   [hl], a                                     ; $71ae: $77
	dec  c                                           ; $71af: $0d
	sub  d                                           ; $71b0: $92
	ld   a, l                                        ; $71b1: $7d
	sbc  b                                           ; $71b2: $98
	sbc  l                                           ; $71b3: $9d
	ld   l, l                                        ; $71b4: $6d
	ld   e, l                                        ; $71b5: $5d
	ld   h, l                                        ; $71b6: $65
	ld   a, h                                        ; $71b7: $7c
	ld   [bc], a                                     ; $71b8: $02
	ld   a, [de]                                     ; $71b9: $1a
	inc  bc                                          ; $71ba: $03
	ld   l, e                                        ; $71bb: $6b
	ld   [hl], l                                     ; $71bc: $75
	ld   a, l                                        ; $71bd: $7d
	dec  c                                           ; $71be: $0d
	ld   d, b                                        ; $71bf: $50
	sbc  b                                           ; $71c0: $98
	adc  h                                           ; $71c1: $8c
	ld   l, c                                        ; $71c2: $69
	and  c                                           ; $71c3: $a1
	ld   [hl], l                                     ; $71c4: $75
	ld   h, l                                        ; $71c5: $65
	ld   l, l                                        ; $71c6: $6d
	sbc  l                                           ; $71c7: $9d
	ld   a, e                                        ; $71c8: $7b
	sbc  a                                           ; $71c9: $9f
	dec  c                                           ; $71ca: $0d
	nop                                              ; $71cb: $00
	ld   a, [bc]                                     ; $71cc: $0a
	ld   b, $24                                      ; $71cd: $06 $24
	ld   bc, $021c                                   ; $71cf: $01 $1c $02
	jr   nc, jr_049_71ed                             ; $71d2: $30 $19

	ld   bc, $998c                                   ; $71d4: $01 $8c $99
	ld   [hl], l                                     ; $71d7: $75
	ld   [bc], a                                     ; $71d8: $02
	ld   a, [de]                                     ; $71d9: $1a
	inc  bc                                          ; $71da: $03
	ld   l, e                                        ; $71db: $6b
	ld   a, c                                        ; $71dc: $79
	ld   a, b                                        ; $71dd: $78
	sbc  b                                           ; $71de: $98
	adc  h                                           ; $71df: $8c
	ld   l, c                                        ; $71e0: $69
	and  c                                           ; $71e1: $a1
	sbc  l                                           ; $71e2: $9d
	ld   a, e                                        ; $71e3: $7b
	sbc  a                                           ; $71e4: $9f
	dec  c                                           ; $71e5: $0d
	ld   e, b                                        ; $71e6: $58
	ei                                               ; $71e7: $fb
	adc  c                                           ; $71e8: $89
	adc  c                                           ; $71e9: $89
	adc  c                                           ; $71ea: $89
	adc  c                                           ; $71eb: $89
	adc  c                                           ; $71ec: $89

jr_049_71ed:
	sbc  a                                           ; $71ed: $9f
	dec  c                                           ; $71ee: $0d
	nop                                              ; $71ef: $00
	ld   a, [bc]                                     ; $71f0: $0a
	ld   b, $24                                      ; $71f1: $06 $24
	ld   bc, $021c                                   ; $71f3: $01 $1c $02
	nop                                              ; $71f6: $00
	nop                                              ; $71f7: $00
	ld   bc, $9750                                   ; $71f8: $01 $50 $97
	sbc  [hl]                                        ; $71fb: $9e
	sub  b                                           ; $71fc: $90
	ld   d, h                                        ; $71fd: $54
	ld   h, c                                        ; $71fe: $61
	and  c                                           ; $71ff: $a1
	ld   a, b                                        ; $7200: $78
	inc  bc                                          ; $7201: $03
	ld   l, a                                        ; $7202: $6f
	ld   [bc], a                                     ; $7203: $02
	xor  c                                           ; $7204: $a9
	sbc  a                                           ; $7205: $9f
	dec  c                                           ; $7206: $0d
	inc  bc                                          ; $7207: $03
	ld   [hl], b                                     ; $7208: $70
	ld   e, l                                        ; $7209: $5d
	inc  b                                           ; $720a: $04
	ld   b, d                                        ; $720b: $42
	ld   a, b                                        ; $720c: $78
	ld   e, e                                        ; $720d: $5b
	sub  c                                           ; $720e: $91
	sbc  [hl]                                        ; $720f: $9e
	ld   e, b                                        ; $7210: $58
	inc  b                                           ; $7211: $04
	cp   d                                           ; $7212: $ba
	ld   a, c                                        ; $7213: $79
	sbc  l                                           ; $7214: $9d
	sbc  c                                           ; $7215: $99
	ld   d, d                                        ; $7216: $52
	dec  c                                           ; $7217: $0d
	ld   [hl], l                                     ; $7218: $75
	ld   h, a                                        ; $7219: $67
	sbc  l                                           ; $721a: $9d
	sbc  a                                           ; $721b: $9f
	dec  c                                           ; $721c: $0d
	nop                                              ; $721d: $00
	ld   a, [bc]                                     ; $721e: $0a
	ld   bc, $9166                                   ; $721f: $01 $66 $91
	ld   d, b                                        ; $7222: $50
	sbc  [hl]                                        ; $7223: $9e
	ld   [$6308], sp                                 ; $7224: $08 $08 $63
	and  c                                           ; $7227: $a1
	sbc  [hl]                                        ; $7228: $9e
	dec  c                                           ; $7229: $0d
	ld   e, b                                        ; $722a: $58
	sub  d                                           ; $722b: $92
	ld   h, a                                        ; $722c: $67
	adc  l                                           ; $722d: $8d
	sbc  a                                           ; $722e: $9f
	dec  c                                           ; $722f: $0d
	nop                                              ; $7230: $00
	ld   a, [bc]                                     ; $7231: $0a
	dec  c                                           ; $7232: $0d
	nop                                              ; $7233: $00
	nop                                              ; $7234: $00
	rrca                                             ; $7235: $0f
	nop                                              ; $7236: $00
	ld   bc, $1e09                                   ; $7237: $01 $09 $1e
	nop                                              ; $723a: $00
	nop                                              ; $723b: $00
	inc  b                                           ; $723c: $04
	add  b                                           ; $723d: $80
	ld   [bc], a                                     ; $723e: $02
	ld   bc, $20ff                                   ; $723f: $01 $ff $20
	nop                                              ; $7242: $00
	ld   c, $21                                      ; $7243: $0e $21
	rrca                                             ; $7245: $0f
	nop                                              ; $7246: $00
	ld   bc, $0102                                   ; $7247: $01 $02 $01
	ld   d, b                                        ; $724a: $50
	sbc  d                                           ; $724b: $9a
	ld   sp, hl                                      ; $724c: $f9
	dec  c                                           ; $724d: $0d
	rst  $38                                         ; $724e: $ff
	rst  $38                                         ; $724f: $ff
	inc  bc                                          ; $7250: $03
	xor  c                                           ; $7251: $a9
	sub  b                                           ; $7252: $90
	ld   d, d                                        ; $7253: $52
	ld   a, b                                        ; $7254: $78
	ld   d, d                                        ; $7255: $52
	ld   a, b                                        ; $7256: $78
	sbc  a                                           ; $7257: $9f
	dec  c                                           ; $7258: $0d
	nop                                              ; $7259: $00
	ld   a, [bc]                                     ; $725a: $0a
	ld   bc, $9258                                   ; $725b: $01 $58 $92
	ld   sp, hl                                      ; $725e: $f9
	dec  c                                           ; $725f: $0d
	nop                                              ; $7260: $00
	ld   a, [bc]                                     ; $7261: $0a
	db   $10                                         ; $7262: $10
	rlca                                             ; $7263: $07
	nop                                              ; $7264: $00
	ld   bc, $a178                                   ; $7265: $01 $78 $a1
	ld   l, [hl]                                     ; $7268: $6e
	sbc  e                                           ; $7269: $9b
	ld   d, h                                        ; $726a: $54
	rst  $38                                         ; $726b: $ff
	rst  $38                                         ; $726c: $ff
	ld   sp, hl                                      ; $726d: $f9
	dec  c                                           ; $726e: $0d
	ld   h, c                                        ; $726f: $61
	ld   a, h                                        ; $7270: $7c
	ld   bc, $8107                                   ; $7271: $01 $07 $81
	ld   [hl], c                                     ; $7274: $71
	ld   e, l                                        ; $7275: $5d
	sbc  b                                           ; $7276: $98
	inc  bc                                          ; $7277: $03
	ld   [hl], e                                     ; $7278: $73
	inc  bc                                          ; $7279: $03
	ld   [hl], h                                     ; $727a: $74
	ld   bc, $7108                                   ; $727b: $01 $08 $71
	ld   [hl], h                                     ; $727e: $74
	sbc  a                                           ; $727f: $9f
	dec  c                                           ; $7280: $0d
	nop                                              ; $7281: $00
	ld   a, [bc]                                     ; $7282: $0a
	dec  b                                           ; $7283: $05
	add  b                                           ; $7284: $80
	inc  bc                                          ; $7285: $03
	ld   bc, $0001                                   ; $7286: $01 $01 $00
	ld   bc, $9876                                   ; $7289: $01 $76 $98
	ld   d, b                                        ; $728c: $50
	ld   d, [hl]                                     ; $728d: $56
	ld   l, b                                        ; $728e: $68
	sbc  [hl]                                        ; $728f: $9e
	ld   d, b                                        ; $7290: $50
	ld   l, b                                        ; $7291: $68
	ld   e, c                                        ; $7292: $59
	ld   [hl], c                                     ; $7293: $71
	ld   [hl], h                                     ; $7294: $74
	dec  c                                           ; $7295: $0d
	ld   e, b                                        ; $7296: $58
	ld   h, c                                        ; $7297: $61
	ld   d, h                                        ; $7298: $54
	sbc  a                                           ; $7299: $9f
	dec  c                                           ; $729a: $0d
	nop                                              ; $729b: $00
	ld   a, [bc]                                     ; $729c: $0a
	nop                                              ; $729d: $00
	nop                                              ; $729e: $00
	inc  bc                                          ; $729f: $03
	ld   c, a                                        ; $72a0: $4f
	ld   [bc], a                                     ; $72a1: $02
	nop                                              ; $72a2: $00
	inc  bc                                          ; $72a3: $03
	ld   c, c                                        ; $72a4: $49
	add  hl, hl                                      ; $72a5: $29
	add  hl, hl                                      ; $72a6: $29
	ld   bc, $2501                                   ; $72a7: $01 $01 $25
	nop                                              ; $72aa: $00
	rrca                                             ; $72ab: $0f
	nop                                              ; $72ac: $00
	ld   bc, $0702                                   ; $72ad: $01 $02 $07
	ld   [hl+], a                                    ; $72b0: $22
	nop                                              ; $72b1: $00
	inc  bc                                          ; $72b2: $03
	ld   c, a                                        ; $72b3: $4f
	ld   [bc], a                                     ; $72b4: $02
	nop                                              ; $72b5: $00
	inc  bc                                          ; $72b6: $03
	ld   c, c                                        ; $72b7: $49
	add  hl, hl                                      ; $72b8: $29
	add  hl, hl                                      ; $72b9: $29
	ld   bc, $2002                                   ; $72ba: $01 $02 $20
	nop                                              ; $72bd: $00
	rlca                                             ; $72be: $07
	ld   l, d                                        ; $72bf: $6a
	nop                                              ; $72c0: $00
	inc  bc                                          ; $72c1: $03
	ld   c, a                                        ; $72c2: $4f
	ld   [bc], a                                     ; $72c3: $02
	nop                                              ; $72c4: $00
	inc  bc                                          ; $72c5: $03
	ld   c, c                                        ; $72c6: $49
	add  hl, hl                                      ; $72c7: $29
	add  hl, hl                                      ; $72c8: $29
	ld   bc, $2001                                   ; $72c9: $01 $01 $20
	nop                                              ; $72cc: $00
	dec  c                                           ; $72cd: $0d
	ld   [bc], a                                     ; $72ce: $02
	ld   [bc], a                                     ; $72cf: $02
	add  hl, bc                                      ; $72d0: $09
	ld   e, $01                                      ; $72d1: $1e $01
	ld   d, b                                        ; $72d3: $50
	ld   [hl], c                                     ; $72d4: $71
	sbc  [hl]                                        ; $72d5: $9e
	ld   h, a                                        ; $72d6: $67
	adc  l                                           ; $72d7: $8d
	sbc  d                                           ; $72d8: $9a
	ld   h, e                                        ; $72d9: $63
	and  c                                           ; $72da: $a1
	rst  $38                                         ; $72db: $ff
	rst  $38                                         ; $72dc: $ff
	dec  c                                           ; $72dd: $0d
	nop                                              ; $72de: $00
	ld   a, [bc]                                     ; $72df: $0a
	dec  c                                           ; $72e0: $0d
	nop                                              ; $72e1: $00
	nop                                              ; $72e2: $00
	dec  b                                           ; $72e3: $05
	ld   b, b                                        ; $72e4: $40
	ld   c, a                                        ; $72e5: $4f
	ld   bc, $0000                                   ; $72e6: $01 $00 $00
	ld   bc, $ffff                                   ; $72e9: $01 $ff $ff
	ld   d, d                                        ; $72ec: $52
	sbc  [hl]                                        ; $72ed: $9e
	ld   [bc], a                                     ; $72ee: $02
	ld   a, a                                        ; $72ef: $7f
	ld   [hl], c                                     ; $72f0: $71
	ld   [hl], h                                     ; $72f1: $74
	ld   h, l                                        ; $72f2: $65
	adc  h                                           ; $72f3: $8c
	ld   [hl], c                                     ; $72f4: $71
	ld   l, l                                        ; $72f5: $6d
	rst  $38                                         ; $72f6: $ff
	rst  $38                                         ; $72f7: $ff
	dec  c                                           ; $72f8: $0d
	ld   a, b                                        ; $72f9: $78
	and  c                                           ; $72fa: $a1
	ld   l, [hl]                                     ; $72fb: $6e
	ld   e, c                                        ; $72fc: $59
	rst  $38                                         ; $72fd: $ff
	rst  $38                                         ; $72fe: $ff
	sub  b                                           ; $72ff: $90
	ld   a, h                                        ; $7300: $7c
	ld   h, a                                        ; $7301: $67
	ld   h, d                                        ; $7302: $62
	ld   e, l                                        ; $7303: $5d
	dec  c                                           ; $7304: $0d
	inc  bc                                          ; $7305: $03
	ld   hl, sp+$71                                  ; $7306: $f8 $71
	ld   [hl], h                                     ; $7308: $74
	sbc  c                                           ; $7309: $99
	adc  l                                           ; $730a: $8d
	ld   l, l                                        ; $730b: $6d
	ld   d, d                                        ; $730c: $52
	rst  $38                                         ; $730d: $ff
	rst  $38                                         ; $730e: $ff
	rst  $38                                         ; $730f: $ff
	rst  $38                                         ; $7310: $ff
	dec  c                                           ; $7311: $0d
	nop                                              ; $7312: $00
	ld   a, [bc]                                     ; $7313: $0a
	nop                                              ; $7314: $00
	dec  c                                           ; $7315: $0d
	ld   [bc], a                                     ; $7316: $02
	rlca                                             ; $7317: $07
	ld   bc, $7150                                   ; $7318: $01 $50 $71
	sbc  [hl]                                        ; $731b: $9e
	ld   h, a                                        ; $731c: $67
	adc  l                                           ; $731d: $8d
	sbc  d                                           ; $731e: $9a
	ld   h, e                                        ; $731f: $63
	and  c                                           ; $7320: $a1
	rst  $38                                         ; $7321: $ff
	rst  $38                                         ; $7322: $ff
	dec  c                                           ; $7323: $0d
	nop                                              ; $7324: $00
	ld   a, [bc]                                     ; $7325: $0a
	rrca                                             ; $7326: $0f
	ld   [bc], a                                     ; $7327: $02
	rlca                                             ; $7328: $07
	ld   bc, $ffff                                   ; $7329: $01 $ff $ff
	rst  $38                                         ; $732c: $ff
	rst  $38                                         ; $732d: $ff
	rst  $38                                         ; $732e: $ff
	rst  $38                                         ; $732f: $ff
	rst  $38                                         ; $7330: $ff
	rst  $38                                         ; $7331: $ff
	rst  $38                                         ; $7332: $ff
	rst  $38                                         ; $7333: $ff
	rst  $38                                         ; $7334: $ff
	rst  $38                                         ; $7335: $ff
	rst  $38                                         ; $7336: $ff
	rst  $38                                         ; $7337: $ff
	dec  c                                           ; $7338: $0d
	rst  $38                                         ; $7339: $ff
	rst  $38                                         ; $733a: $ff
	rst  $38                                         ; $733b: $ff
	rst  $38                                         ; $733c: $ff
	rst  $38                                         ; $733d: $ff
	dec  c                                           ; $733e: $0d
	nop                                              ; $733f: $00
	ld   a, [bc]                                     ; $7340: $0a
	dec  c                                           ; $7341: $0d
	nop                                              ; $7342: $00
	nop                                              ; $7343: $00
	rrca                                             ; $7344: $0f
	nop                                              ; $7345: $00
	ld   bc, $4005                                   ; $7346: $01 $05 $40
	ld   c, a                                        ; $7349: $4f
	ld   bc, $0000                                   ; $734a: $01 $00 $00
	ld   bc, $ffff                                   ; $734d: $01 $ff $ff
	ld   e, b                                        ; $7350: $58
	sbc  [hl]                                        ; $7351: $9e
	inc  bc                                          ; $7352: $03
	ld   hl, sp+$71                                  ; $7353: $f8 $71
	ld   [hl], h                                     ; $7355: $74
	sbc  c                                           ; $7356: $99
	rst  $38                                         ; $7357: $ff
	rst  $38                                         ; $7358: $ff
	rst  $38                                         ; $7359: $ff
	rst  $38                                         ; $735a: $ff
	dec  c                                           ; $735b: $0d
	nop                                              ; $735c: $00
	ld   a, [bc]                                     ; $735d: $0a
	nop                                              ; $735e: $00
	nop                                              ; $735f: $00
	inc  bc                                          ; $7360: $03
	ld   c, [hl]                                     ; $7361: $4e
	ld   [bc], a                                     ; $7362: $02
	nop                                              ; $7363: $00
	inc  bc                                          ; $7364: $03
	ld   c, b                                        ; $7365: $48
	add  hl, hl                                      ; $7366: $29
	add  hl, hl                                      ; $7367: $29
	ld   bc, $2501                                   ; $7368: $01 $01 $25
	nop                                              ; $736b: $00
	rrca                                             ; $736c: $0f
	nop                                              ; $736d: $00
	ld   bc, $0702                                   ; $736e: $01 $02 $07
	ld   [hl+], a                                    ; $7371: $22
	nop                                              ; $7372: $00
	inc  bc                                          ; $7373: $03
	ld   c, [hl]                                     ; $7374: $4e
	ld   [bc], a                                     ; $7375: $02
	nop                                              ; $7376: $00
	inc  bc                                          ; $7377: $03
	ld   c, b                                        ; $7378: $48
	add  hl, hl                                      ; $7379: $29
	add  hl, hl                                      ; $737a: $29
	ld   bc, $2002                                   ; $737b: $01 $02 $20
	nop                                              ; $737e: $00
	rlca                                             ; $737f: $07
	ld   l, b                                        ; $7380: $68
	nop                                              ; $7381: $00
	inc  bc                                          ; $7382: $03
	ld   c, [hl]                                     ; $7383: $4e
	ld   [bc], a                                     ; $7384: $02
	nop                                              ; $7385: $00
	inc  bc                                          ; $7386: $03
	ld   c, b                                        ; $7387: $48
	add  hl, hl                                      ; $7388: $29
	add  hl, hl                                      ; $7389: $29
	ld   bc, $2001                                   ; $738a: $01 $01 $20
	nop                                              ; $738d: $00
	dec  c                                           ; $738e: $0d
	ld   bc, $0102                                   ; $738f: $01 $02 $01
	ld   d, b                                        ; $7392: $50
	ld   [hl], c                                     ; $7393: $71
	sbc  [hl]                                        ; $7394: $9e
	ld   h, e                                        ; $7395: $63
	ld   e, l                                        ; $7396: $5d
	sub  a                                           ; $7397: $97
	ld   h, e                                        ; $7398: $63
	and  c                                           ; $7399: $a1
	rst  $38                                         ; $739a: $ff
	rst  $38                                         ; $739b: $ff
	dec  c                                           ; $739c: $0d
	nop                                              ; $739d: $00
	ld   a, [bc]                                     ; $739e: $0a
	dec  c                                           ; $739f: $0d
	nop                                              ; $73a0: $00
	nop                                              ; $73a1: $00
	dec  b                                           ; $73a2: $05
	ld   b, b                                        ; $73a3: $40
	ld   c, [hl]                                     ; $73a4: $4e
	ld   bc, $0000                                   ; $73a5: $01 $00 $00
	ld   bc, $ffff                                   ; $73a8: $01 $ff $ff
	ld   d, d                                        ; $73ab: $52
	sbc  [hl]                                        ; $73ac: $9e
	ld   [bc], a                                     ; $73ad: $02
	ld   a, a                                        ; $73ae: $7f
	ld   [hl], c                                     ; $73af: $71
	ld   [hl], h                                     ; $73b0: $74
	ld   h, l                                        ; $73b1: $65
	adc  h                                           ; $73b2: $8c
	ld   [hl], c                                     ; $73b3: $71
	ld   l, l                                        ; $73b4: $6d
	rst  $38                                         ; $73b5: $ff
	rst  $38                                         ; $73b6: $ff
	dec  c                                           ; $73b7: $0d
	ld   a, b                                        ; $73b8: $78
	and  c                                           ; $73b9: $a1
	ld   l, [hl]                                     ; $73ba: $6e
	ld   e, c                                        ; $73bb: $59
	rst  $38                                         ; $73bc: $ff
	rst  $38                                         ; $73bd: $ff
	sub  b                                           ; $73be: $90
	ld   a, h                                        ; $73bf: $7c
	ld   h, a                                        ; $73c0: $67
	ld   h, d                                        ; $73c1: $62
	ld   e, l                                        ; $73c2: $5d
	dec  c                                           ; $73c3: $0d
	inc  bc                                          ; $73c4: $03
	ld   hl, sp+$71                                  ; $73c5: $f8 $71
	ld   [hl], h                                     ; $73c7: $74
	sbc  c                                           ; $73c8: $99
	adc  l                                           ; $73c9: $8d
	ld   l, l                                        ; $73ca: $6d
	ld   d, d                                        ; $73cb: $52
	rst  $38                                         ; $73cc: $ff
	rst  $38                                         ; $73cd: $ff
	rst  $38                                         ; $73ce: $ff
	rst  $38                                         ; $73cf: $ff
	dec  c                                           ; $73d0: $0d
	nop                                              ; $73d1: $00
	ld   a, [bc]                                     ; $73d2: $0a
	nop                                              ; $73d3: $00
	dec  c                                           ; $73d4: $0d
	ld   bc, $0106                                   ; $73d5: $01 $06 $01
	ld   d, b                                        ; $73d8: $50
	ld   [hl], c                                     ; $73d9: $71
	sbc  [hl]                                        ; $73da: $9e
	ld   h, e                                        ; $73db: $63
	ld   e, l                                        ; $73dc: $5d
	sub  a                                           ; $73dd: $97
	ld   h, e                                        ; $73de: $63
	and  c                                           ; $73df: $a1
	rst  $38                                         ; $73e0: $ff
	rst  $38                                         ; $73e1: $ff
	dec  c                                           ; $73e2: $0d
	nop                                              ; $73e3: $00
	ld   a, [bc]                                     ; $73e4: $0a
	inc  e                                           ; $73e5: $1c
	ld   bc, $0707                                   ; $73e6: $01 $07 $07
	ld   bc, $ff50                                   ; $73e9: $01 $50 $ff
	rst  $38                                         ; $73ec: $ff
	ld   [$6300], sp                                 ; $73ed: $08 $00 $63
	and  c                                           ; $73f0: $a1
	rst  $38                                         ; $73f1: $ff
	rst  $38                                         ; $73f2: $ff
	dec  c                                           ; $73f3: $0d
	rst  $38                                         ; $73f4: $ff
	rst  $38                                         ; $73f5: $ff
	rst  $38                                         ; $73f6: $ff
	rst  $38                                         ; $73f7: $ff
	rst  $38                                         ; $73f8: $ff
	dec  c                                           ; $73f9: $0d
	nop                                              ; $73fa: $00
	ld   a, [bc]                                     ; $73fb: $0a
	dec  c                                           ; $73fc: $0d
	nop                                              ; $73fd: $00
	nop                                              ; $73fe: $00
	rrca                                             ; $73ff: $0f
	nop                                              ; $7400: $00
	ld   bc, $4005                                   ; $7401: $01 $05 $40
	ld   c, [hl]                                     ; $7404: $4e
	ld   bc, $0000                                   ; $7405: $01 $00 $00
	ld   bc, $ffff                                   ; $7408: $01 $ff $ff
	ld   h, e                                        ; $740b: $63
	ld   e, l                                        ; $740c: $5d
	sub  a                                           ; $740d: $97
	ld   h, e                                        ; $740e: $63
	and  c                                           ; $740f: $a1
	rst  $38                                         ; $7410: $ff
	rst  $38                                         ; $7411: $ff
	dec  c                                           ; $7412: $0d
	inc  bc                                          ; $7413: $03
	ld   hl, sp+$71                                  ; $7414: $f8 $71
	ld   [hl], h                                     ; $7416: $74
	sbc  c                                           ; $7417: $99
	ld   l, h                                        ; $7418: $6c
	rst  $38                                         ; $7419: $ff
	rst  $38                                         ; $741a: $ff
	rst  $38                                         ; $741b: $ff
	rst  $38                                         ; $741c: $ff
	dec  c                                           ; $741d: $0d
	nop                                              ; $741e: $00
	ld   a, [bc]                                     ; $741f: $0a
	nop                                              ; $7420: $00
	nop                                              ; $7421: $00
	inc  bc                                          ; $7422: $03
	ld   d, b                                        ; $7423: $50
	ld   [bc], a                                     ; $7424: $02
	nop                                              ; $7425: $00
	inc  bc                                          ; $7426: $03
	ld   c, d                                        ; $7427: $4a
	add  hl, hl                                      ; $7428: $29
	add  hl, hl                                      ; $7429: $29
	ld   bc, $2501                                   ; $742a: $01 $01 $25
	nop                                              ; $742d: $00
	rrca                                             ; $742e: $0f
	nop                                              ; $742f: $00
	ld   bc, $0702                                   ; $7430: $01 $02 $07
	ld   [hl+], a                                    ; $7433: $22
	nop                                              ; $7434: $00
	inc  bc                                          ; $7435: $03
	ld   d, b                                        ; $7436: $50
	ld   [bc], a                                     ; $7437: $02
	nop                                              ; $7438: $00
	inc  bc                                          ; $7439: $03
	ld   c, d                                        ; $743a: $4a
	add  hl, hl                                      ; $743b: $29
	add  hl, hl                                      ; $743c: $29
	ld   bc, $2002                                   ; $743d: $01 $02 $20
	nop                                              ; $7440: $00
	rlca                                             ; $7441: $07
	ld   l, b                                        ; $7442: $68
	nop                                              ; $7443: $00
	inc  bc                                          ; $7444: $03
	ld   d, b                                        ; $7445: $50
	ld   [bc], a                                     ; $7446: $02
	nop                                              ; $7447: $00
	inc  bc                                          ; $7448: $03
	ld   c, d                                        ; $7449: $4a
	add  hl, hl                                      ; $744a: $29
	add  hl, hl                                      ; $744b: $29
	ld   bc, $2001                                   ; $744c: $01 $01 $20
	nop                                              ; $744f: $00
	dec  c                                           ; $7450: $0d
	inc  bc                                          ; $7451: $03
	ld   b, $01                                      ; $7452: $06 $01
	ld   d, b                                        ; $7454: $50
	ld   [hl], c                                     ; $7455: $71
	sbc  [hl]                                        ; $7456: $9e
	rst  JumpTable                                         ; $7457: $df
	db   $ec                                         ; $7458: $ec
	and  e                                           ; $7459: $a3
	ld   h, e                                        ; $745a: $63
	and  c                                           ; $745b: $a1
	rst  $38                                         ; $745c: $ff
	rst  $38                                         ; $745d: $ff
	dec  c                                           ; $745e: $0d
	nop                                              ; $745f: $00
	ld   a, [bc]                                     ; $7460: $0a
	dec  c                                           ; $7461: $0d
	nop                                              ; $7462: $00
	nop                                              ; $7463: $00
	dec  b                                           ; $7464: $05

Jump_049_7465:
	ld   b, b                                        ; $7465: $40
	ld   d, b                                        ; $7466: $50
	ld   bc, $0000                                   ; $7467: $01 $00 $00
	ld   bc, $ffff                                   ; $746a: $01 $ff $ff
	ld   d, d                                        ; $746d: $52
	sbc  [hl]                                        ; $746e: $9e
	ld   [bc], a                                     ; $746f: $02
	ld   a, a                                        ; $7470: $7f

Jump_049_7471:
	ld   [hl], c                                     ; $7471: $71
	ld   [hl], h                                     ; $7472: $74
	ld   h, l                                        ; $7473: $65
	adc  h                                           ; $7474: $8c
	ld   [hl], c                                     ; $7475: $71
	ld   l, l                                        ; $7476: $6d
	rst  $38                                         ; $7477: $ff
	rst  $38                                         ; $7478: $ff
	dec  c                                           ; $7479: $0d
	ld   a, b                                        ; $747a: $78
	and  c                                           ; $747b: $a1
	ld   l, [hl]                                     ; $747c: $6e
	ld   e, c                                        ; $747d: $59
	rst  $38                                         ; $747e: $ff
	rst  $38                                         ; $747f: $ff
	sub  b                                           ; $7480: $90
	ld   a, h                                        ; $7481: $7c
	ld   h, a                                        ; $7482: $67
	ld   h, d                                        ; $7483: $62
	ld   e, l                                        ; $7484: $5d
	dec  c                                           ; $7485: $0d
	inc  bc                                          ; $7486: $03
	ld   hl, sp+$71                                  ; $7487: $f8 $71
	ld   [hl], h                                     ; $7489: $74
	sbc  c                                           ; $748a: $99
	adc  l                                           ; $748b: $8d
	ld   l, l                                        ; $748c: $6d
	ld   d, d                                        ; $748d: $52
	rst  $38                                         ; $748e: $ff
	rst  $38                                         ; $748f: $ff
	rst  $38                                         ; $7490: $ff
	rst  $38                                         ; $7491: $ff
	dec  c                                           ; $7492: $0d
	nop                                              ; $7493: $00
	ld   a, [bc]                                     ; $7494: $0a
	nop                                              ; $7495: $00
	dec  c                                           ; $7496: $0d
	inc  bc                                          ; $7497: $03
	dec  b                                           ; $7498: $05
	ld   bc, $7150                                   ; $7499: $01 $50 $71
	sbc  [hl]                                        ; $749c: $9e
	rst  JumpTable                                         ; $749d: $df
	db   $ec                                         ; $749e: $ec
	and  e                                           ; $749f: $a3
	ld   h, e                                        ; $74a0: $63
	and  c                                           ; $74a1: $a1
	rst  $38                                         ; $74a2: $ff
	rst  $38                                         ; $74a3: $ff
	dec  c                                           ; $74a4: $0d
	nop                                              ; $74a5: $00
	ld   a, [bc]                                     ; $74a6: $0a
	inc  e                                           ; $74a7: $1c
	inc  bc                                          ; $74a8: $03
	inc  b                                           ; $74a9: $04
	inc  b                                           ; $74aa: $04
	ld   bc, $f9a1                                   ; $74ab: $01 $a1 $f9
	db   $10                                         ; $74ae: $10
	rst  $38                                         ; $74af: $ff
	rst  $38                                         ; $74b0: $ff
	rst  $38                                         ; $74b1: $ff
	rst  $38                                         ; $74b2: $ff
	dec  c                                           ; $74b3: $0d
	rst  $38                                         ; $74b4: $ff
	rst  $38                                         ; $74b5: $ff
	rst  $38                                         ; $74b6: $ff
	rst  $38                                         ; $74b7: $ff
	rst  $38                                         ; $74b8: $ff
	dec  c                                           ; $74b9: $0d
	nop                                              ; $74ba: $00
	ld   a, [bc]                                     ; $74bb: $0a
	dec  c                                           ; $74bc: $0d
	nop                                              ; $74bd: $00
	nop                                              ; $74be: $00
	rrca                                             ; $74bf: $0f
	nop                                              ; $74c0: $00
	ld   bc, $4005                                   ; $74c1: $01 $05 $40
	ld   d, b                                        ; $74c4: $50
	ld   bc, $0000                                   ; $74c5: $01 $00 $00
	ld   bc, $ffff                                   ; $74c8: $01 $ff $ff
	rst  JumpTable                                         ; $74cb: $df
	db   $ec                                         ; $74cc: $ec
	and  e                                           ; $74cd: $a3
	ld   h, e                                        ; $74ce: $63
	and  c                                           ; $74cf: $a1
	rst  $38                                         ; $74d0: $ff
	rst  $38                                         ; $74d1: $ff
	dec  c                                           ; $74d2: $0d
	inc  bc                                          ; $74d3: $03
	ld   hl, sp+$71                                  ; $74d4: $f8 $71
	ld   [hl], h                                     ; $74d6: $74
	sbc  c                                           ; $74d7: $99
	ld   l, h                                        ; $74d8: $6c
	rst  $38                                         ; $74d9: $ff
	rst  $38                                         ; $74da: $ff
	rst  $38                                         ; $74db: $ff
	rst  $38                                         ; $74dc: $ff
	dec  c                                           ; $74dd: $0d
	nop                                              ; $74de: $00
	ld   a, [bc]                                     ; $74df: $0a
	nop                                              ; $74e0: $00
	nop                                              ; $74e1: $00
	inc  bc                                          ; $74e2: $03
	ld   d, d                                        ; $74e3: $52
	ld   [bc], a                                     ; $74e4: $02
	nop                                              ; $74e5: $00
	inc  bc                                          ; $74e6: $03
	ld   c, h                                        ; $74e7: $4c
	add  hl, hl                                      ; $74e8: $29
	add  hl, hl                                      ; $74e9: $29
	ld   bc, $2501                                   ; $74ea: $01 $01 $25
	nop                                              ; $74ed: $00
	rrca                                             ; $74ee: $0f
	nop                                              ; $74ef: $00
	ld   bc, $0702                                   ; $74f0: $01 $02 $07
	ld   [hl+], a                                    ; $74f3: $22
	nop                                              ; $74f4: $00
	inc  bc                                          ; $74f5: $03
	ld   d, d                                        ; $74f6: $52
	ld   [bc], a                                     ; $74f7: $02
	nop                                              ; $74f8: $00
	inc  bc                                          ; $74f9: $03
	ld   c, h                                        ; $74fa: $4c
	add  hl, hl                                      ; $74fb: $29
	add  hl, hl                                      ; $74fc: $29
	ld   bc, $2002                                   ; $74fd: $01 $02 $20
	nop                                              ; $7500: $00
	rlca                                             ; $7501: $07
	ld   l, c                                        ; $7502: $69
	nop                                              ; $7503: $00
	inc  bc                                          ; $7504: $03
	ld   d, d                                        ; $7505: $52
	ld   [bc], a                                     ; $7506: $02
	nop                                              ; $7507: $00
	inc  bc                                          ; $7508: $03
	ld   c, h                                        ; $7509: $4c
	add  hl, hl                                      ; $750a: $29
	add  hl, hl                                      ; $750b: $29
	ld   bc, $2001                                   ; $750c: $01 $01 $20
	nop                                              ; $750f: $00
	dec  c                                           ; $7510: $0d
	dec  b                                           ; $7511: $05
	rlca                                             ; $7512: $07
	ld   bc, $7150                                   ; $7513: $01 $50 $71
	sbc  [hl]                                        ; $7516: $9e
	ld   [bc], a                                     ; $7517: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7518: $cf
	dec  b                                           ; $7519: $05
	ld   a, [de]                                     ; $751a: $1a
	ld   h, e                                        ; $751b: $63
	and  c                                           ; $751c: $a1
	rst  $38                                         ; $751d: $ff
	rst  $38                                         ; $751e: $ff
	dec  c                                           ; $751f: $0d
	nop                                              ; $7520: $00
	ld   a, [bc]                                     ; $7521: $0a
	dec  c                                           ; $7522: $0d
	nop                                              ; $7523: $00
	nop                                              ; $7524: $00
	dec  b                                           ; $7525: $05
	ld   b, b                                        ; $7526: $40
	ld   d, d                                        ; $7527: $52
	ld   bc, $0000                                   ; $7528: $01 $00 $00
	ld   bc, $ffff                                   ; $752b: $01 $ff $ff
	ld   d, d                                        ; $752e: $52
	sbc  [hl]                                        ; $752f: $9e
	ld   [bc], a                                     ; $7530: $02
	ld   a, a                                        ; $7531: $7f
	ld   [hl], c                                     ; $7532: $71
	ld   [hl], h                                     ; $7533: $74
	ld   h, l                                        ; $7534: $65
	adc  h                                           ; $7535: $8c
	ld   [hl], c                                     ; $7536: $71
	ld   l, l                                        ; $7537: $6d
	rst  $38                                         ; $7538: $ff
	rst  $38                                         ; $7539: $ff
	dec  c                                           ; $753a: $0d
	ld   a, b                                        ; $753b: $78
	and  c                                           ; $753c: $a1
	ld   l, [hl]                                     ; $753d: $6e
	ld   e, c                                        ; $753e: $59
	rst  $38                                         ; $753f: $ff
	rst  $38                                         ; $7540: $ff
	sub  b                                           ; $7541: $90
	ld   a, h                                        ; $7542: $7c
	ld   h, a                                        ; $7543: $67
	ld   h, d                                        ; $7544: $62
	ld   e, l                                        ; $7545: $5d
	dec  c                                           ; $7546: $0d
	inc  bc                                          ; $7547: $03
	ld   hl, sp+$71                                  ; $7548: $f8 $71
	ld   [hl], h                                     ; $754a: $74
	sbc  c                                           ; $754b: $99
	adc  l                                           ; $754c: $8d
	ld   l, l                                        ; $754d: $6d
	ld   d, d                                        ; $754e: $52
	rst  $38                                         ; $754f: $ff
	rst  $38                                         ; $7550: $ff
	rst  $38                                         ; $7551: $ff
	rst  $38                                         ; $7552: $ff
	dec  c                                           ; $7553: $0d
	nop                                              ; $7554: $00
	ld   a, [bc]                                     ; $7555: $0a
	nop                                              ; $7556: $00
	dec  c                                           ; $7557: $0d
	dec  b                                           ; $7558: $05
	ld   b, $01                                      ; $7559: $06 $01
	ld   d, b                                        ; $755b: $50
	ld   [hl], c                                     ; $755c: $71
	sbc  [hl]                                        ; $755d: $9e
	ld   [bc], a                                     ; $755e: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $755f: $cf
	dec  b                                           ; $7560: $05
	ld   a, [de]                                     ; $7561: $1a
	ld   h, e                                        ; $7562: $63
	and  c                                           ; $7563: $a1
	rst  $38                                         ; $7564: $ff
	rst  $38                                         ; $7565: $ff
	dec  c                                           ; $7566: $0d
	nop                                              ; $7567: $00
	ld   a, [bc]                                     ; $7568: $0a
	inc  e                                           ; $7569: $1c
	dec  b                                           ; $756a: $05
	ld   [bc], a                                     ; $756b: $02
	ld   [bc], a                                     ; $756c: $02
	ld   bc, $ff50                                   ; $756d: $01 $50 $ff
	rst  $38                                         ; $7570: $ff
	ld   [$7d00], sp                                 ; $7571: $08 $00 $7d
	and  c                                           ; $7574: $a1
	rst  $38                                         ; $7575: $ff
	rst  $38                                         ; $7576: $ff
	dec  c                                           ; $7577: $0d
	rst  $38                                         ; $7578: $ff
	rst  $38                                         ; $7579: $ff
	rst  $38                                         ; $757a: $ff
	rst  $38                                         ; $757b: $ff
	rst  $38                                         ; $757c: $ff
	dec  c                                           ; $757d: $0d
	nop                                              ; $757e: $00
	ld   a, [bc]                                     ; $757f: $0a
	dec  c                                           ; $7580: $0d
	nop                                              ; $7581: $00
	nop                                              ; $7582: $00
	rrca                                             ; $7583: $0f
	nop                                              ; $7584: $00
	ld   bc, $4005                                   ; $7585: $01 $05 $40
	ld   d, d                                        ; $7588: $52
	ld   bc, $0000                                   ; $7589: $01 $00 $00
	ld   bc, $ffff                                   ; $758c: $01 $ff $ff
	ld   [bc], a                                     ; $758f: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7590: $cf
	dec  b                                           ; $7591: $05
	ld   a, [de]                                     ; $7592: $1a
	ld   h, e                                        ; $7593: $63
	and  c                                           ; $7594: $a1
	rst  $38                                         ; $7595: $ff
	rst  $38                                         ; $7596: $ff
	dec  c                                           ; $7597: $0d
	inc  bc                                          ; $7598: $03
	ld   hl, sp+$71                                  ; $7599: $f8 $71
	ld   [hl], h                                     ; $759b: $74
	sbc  c                                           ; $759c: $99
	ld   l, h                                        ; $759d: $6c
	rst  $38                                         ; $759e: $ff
	rst  $38                                         ; $759f: $ff
	rst  $38                                         ; $75a0: $ff
	rst  $38                                         ; $75a1: $ff
	dec  c                                           ; $75a2: $0d
	nop                                              ; $75a3: $00
	ld   a, [bc]                                     ; $75a4: $0a
	nop                                              ; $75a5: $00
	nop                                              ; $75a6: $00
	inc  bc                                          ; $75a7: $03
	ld   d, e                                        ; $75a8: $53
	ld   [bc], a                                     ; $75a9: $02
	nop                                              ; $75aa: $00
	inc  bc                                          ; $75ab: $03
	ld   c, l                                        ; $75ac: $4d
	add  hl, hl                                      ; $75ad: $29
	add  hl, hl                                      ; $75ae: $29
	ld   bc, $2501                                   ; $75af: $01 $01 $25
	nop                                              ; $75b2: $00
	rrca                                             ; $75b3: $0f
	nop                                              ; $75b4: $00
	ld   bc, $0702                                   ; $75b5: $01 $02 $07
	ld   [hl+], a                                    ; $75b8: $22
	nop                                              ; $75b9: $00
	inc  bc                                          ; $75ba: $03
	ld   d, e                                        ; $75bb: $53
	ld   [bc], a                                     ; $75bc: $02
	nop                                              ; $75bd: $00
	inc  bc                                          ; $75be: $03
	ld   c, l                                        ; $75bf: $4d
	add  hl, hl                                      ; $75c0: $29
	add  hl, hl                                      ; $75c1: $29
	ld   bc, $2002                                   ; $75c2: $01 $02 $20
	nop                                              ; $75c5: $00
	rlca                                             ; $75c6: $07
	ld   l, b                                        ; $75c7: $68
	nop                                              ; $75c8: $00
	inc  bc                                          ; $75c9: $03
	ld   d, e                                        ; $75ca: $53
	ld   [bc], a                                     ; $75cb: $02
	nop                                              ; $75cc: $00
	inc  bc                                          ; $75cd: $03
	ld   c, l                                        ; $75ce: $4d
	add  hl, hl                                      ; $75cf: $29
	add  hl, hl                                      ; $75d0: $29
	ld   bc, $2001                                   ; $75d1: $01 $01 $20
	nop                                              ; $75d4: $00
	dec  c                                           ; $75d5: $0d
	ld   b, $02                                      ; $75d6: $06 $02
	ld   bc, $7150                                   ; $75d8: $01 $50 $71
	sbc  [hl]                                        ; $75db: $9e
	xor  h                                           ; $75dc: $ac
	push af                                          ; $75dd: $f5
	bit  4, e                                        ; $75de: $cb $63
	and  c                                           ; $75e0: $a1
	rst  $38                                         ; $75e1: $ff
	rst  $38                                         ; $75e2: $ff
	dec  c                                           ; $75e3: $0d
	nop                                              ; $75e4: $00
	ld   a, [bc]                                     ; $75e5: $0a
	dec  c                                           ; $75e6: $0d
	nop                                              ; $75e7: $00
	nop                                              ; $75e8: $00
	dec  b                                           ; $75e9: $05
	ld   b, b                                        ; $75ea: $40
	ld   d, e                                        ; $75eb: $53
	ld   bc, $0000                                   ; $75ec: $01 $00 $00
	ld   bc, $ffff                                   ; $75ef: $01 $ff $ff
	ld   d, d                                        ; $75f2: $52
	sbc  [hl]                                        ; $75f3: $9e
	ld   [bc], a                                     ; $75f4: $02
	ld   a, a                                        ; $75f5: $7f
	ld   [hl], c                                     ; $75f6: $71
	ld   [hl], h                                     ; $75f7: $74
	ld   h, l                                        ; $75f8: $65
	adc  h                                           ; $75f9: $8c
	ld   [hl], c                                     ; $75fa: $71
	ld   l, l                                        ; $75fb: $6d
	rst  $38                                         ; $75fc: $ff
	rst  $38                                         ; $75fd: $ff
	dec  c                                           ; $75fe: $0d
	ld   a, b                                        ; $75ff: $78
	and  c                                           ; $7600: $a1
	ld   l, [hl]                                     ; $7601: $6e
	ld   e, c                                        ; $7602: $59
	rst  $38                                         ; $7603: $ff
	rst  $38                                         ; $7604: $ff
	sub  b                                           ; $7605: $90
	ld   a, h                                        ; $7606: $7c
	ld   h, a                                        ; $7607: $67
	ld   h, d                                        ; $7608: $62
	ld   e, l                                        ; $7609: $5d
	dec  c                                           ; $760a: $0d
	inc  bc                                          ; $760b: $03
	ld   hl, sp+$71                                  ; $760c: $f8 $71
	ld   [hl], h                                     ; $760e: $74
	sbc  c                                           ; $760f: $99
	adc  l                                           ; $7610: $8d
	ld   l, l                                        ; $7611: $6d
	ld   d, d                                        ; $7612: $52
	rst  $38                                         ; $7613: $ff
	rst  $38                                         ; $7614: $ff
	rst  $38                                         ; $7615: $ff
	rst  $38                                         ; $7616: $ff
	dec  c                                           ; $7617: $0d
	nop                                              ; $7618: $00
	ld   a, [bc]                                     ; $7619: $0a
	nop                                              ; $761a: $00
	dec  c                                           ; $761b: $0d
	ld   b, $06                                      ; $761c: $06 $06
	ld   bc, $7150                                   ; $761e: $01 $50 $71
	sbc  [hl]                                        ; $7621: $9e
	xor  h                                           ; $7622: $ac
	push af                                          ; $7623: $f5
	bit  4, e                                        ; $7624: $cb $63
	and  c                                           ; $7626: $a1
	rst  $38                                         ; $7627: $ff
	rst  $38                                         ; $7628: $ff
	dec  c                                           ; $7629: $0d
	nop                                              ; $762a: $00
	ld   a, [bc]                                     ; $762b: $0a
	inc  e                                           ; $762c: $1c
	ld   b, $05                                      ; $762d: $06 $05
	dec  b                                           ; $762f: $05
	ld   bc, $f9a1                                   ; $7630: $01 $a1 $f9
	db   $10                                         ; $7633: $10
	rst  $38                                         ; $7634: $ff
	rst  $38                                         ; $7635: $ff
	ld   [$ff00], sp                                 ; $7636: $08 $00 $ff
	rst  $38                                         ; $7639: $ff
	dec  c                                           ; $763a: $0d
	rst  $38                                         ; $763b: $ff
	rst  $38                                         ; $763c: $ff
	rst  $38                                         ; $763d: $ff
	rst  $38                                         ; $763e: $ff
	rst  $38                                         ; $763f: $ff
	dec  c                                           ; $7640: $0d
	nop                                              ; $7641: $00
	ld   a, [bc]                                     ; $7642: $0a
	dec  c                                           ; $7643: $0d
	nop                                              ; $7644: $00
	nop                                              ; $7645: $00
	rrca                                             ; $7646: $0f
	nop                                              ; $7647: $00
	ld   bc, $4005                                   ; $7648: $01 $05 $40
	ld   d, e                                        ; $764b: $53
	ld   bc, $0000                                   ; $764c: $01 $00 $00
	ld   bc, $ffff                                   ; $764f: $01 $ff $ff
	xor  h                                           ; $7652: $ac
	push af                                          ; $7653: $f5
	bit  4, e                                        ; $7654: $cb $63
	and  c                                           ; $7656: $a1
	rst  $38                                         ; $7657: $ff
	rst  $38                                         ; $7658: $ff
	dec  c                                           ; $7659: $0d
	inc  bc                                          ; $765a: $03
	ld   hl, sp+$71                                  ; $765b: $f8 $71
	ld   [hl], h                                     ; $765d: $74
	sbc  c                                           ; $765e: $99
	ld   l, h                                        ; $765f: $6c
	rst  $38                                         ; $7660: $ff
	rst  $38                                         ; $7661: $ff
	rst  $38                                         ; $7662: $ff
	rst  $38                                         ; $7663: $ff
	dec  c                                           ; $7664: $0d
	nop                                              ; $7665: $00
	ld   a, [bc]                                     ; $7666: $0a
	nop                                              ; $7667: $00
	nop                                              ; $7668: $00
	inc  bc                                          ; $7669: $03
	ld   d, c                                        ; $766a: $51
	ld   [bc], a                                     ; $766b: $02
	nop                                              ; $766c: $00
	inc  bc                                          ; $766d: $03
	ld   c, e                                        ; $766e: $4b
	add  hl, hl                                      ; $766f: $29
	add  hl, hl                                      ; $7670: $29
	ld   bc, $2501                                   ; $7671: $01 $01 $25
	nop                                              ; $7674: $00
	rrca                                             ; $7675: $0f
	nop                                              ; $7676: $00
	ld   bc, $0702                                   ; $7677: $01 $02 $07
	ld   [hl+], a                                    ; $767a: $22
	nop                                              ; $767b: $00
	inc  bc                                          ; $767c: $03
	ld   d, c                                        ; $767d: $51
	ld   [bc], a                                     ; $767e: $02
	nop                                              ; $767f: $00
	inc  bc                                          ; $7680: $03
	ld   c, e                                        ; $7681: $4b
	add  hl, hl                                      ; $7682: $29
	add  hl, hl                                      ; $7683: $29
	ld   bc, $2002                                   ; $7684: $01 $02 $20
	nop                                              ; $7687: $00
	rlca                                             ; $7688: $07
	ld   h, a                                        ; $7689: $67
	nop                                              ; $768a: $00
	inc  bc                                          ; $768b: $03
	ld   d, c                                        ; $768c: $51
	ld   [bc], a                                     ; $768d: $02
	nop                                              ; $768e: $00
	inc  bc                                          ; $768f: $03
	ld   c, e                                        ; $7690: $4b
	add  hl, hl                                      ; $7691: $29
	add  hl, hl                                      ; $7692: $29
	ld   bc, $2001                                   ; $7693: $01 $01 $20
	nop                                              ; $7696: $00
	dec  c                                           ; $7697: $0d
	inc  b                                           ; $7698: $04
	ld   [bc], a                                     ; $7699: $02
	ld   bc, $7150                                   ; $769a: $01 $50 $71
	sbc  [hl]                                        ; $769d: $9e
	and  e                                           ; $769e: $a3
	and  l                                           ; $769f: $a5
	db   $ec                                         ; $76a0: $ec
	cp   d                                           ; $76a1: $ba
	rst  $38                                         ; $76a2: $ff
	rst  $38                                         ; $76a3: $ff
	dec  c                                           ; $76a4: $0d
	nop                                              ; $76a5: $00
	ld   a, [bc]                                     ; $76a6: $0a
	dec  c                                           ; $76a7: $0d
	nop                                              ; $76a8: $00
	nop                                              ; $76a9: $00
	dec  b                                           ; $76aa: $05
	ld   b, b                                        ; $76ab: $40
	ld   d, c                                        ; $76ac: $51
	ld   bc, $0000                                   ; $76ad: $01 $00 $00
	ld   bc, $ffff                                   ; $76b0: $01 $ff $ff
	ld   d, d                                        ; $76b3: $52
	sbc  [hl]                                        ; $76b4: $9e
	ld   [bc], a                                     ; $76b5: $02
	ld   a, a                                        ; $76b6: $7f
	ld   [hl], c                                     ; $76b7: $71
	ld   [hl], h                                     ; $76b8: $74
	ld   h, l                                        ; $76b9: $65
	adc  h                                           ; $76ba: $8c
	ld   [hl], c                                     ; $76bb: $71
	ld   l, l                                        ; $76bc: $6d
	rst  $38                                         ; $76bd: $ff
	rst  $38                                         ; $76be: $ff
	dec  c                                           ; $76bf: $0d
	ld   a, b                                        ; $76c0: $78
	and  c                                           ; $76c1: $a1
	ld   l, [hl]                                     ; $76c2: $6e
	ld   e, c                                        ; $76c3: $59
	rst  $38                                         ; $76c4: $ff
	rst  $38                                         ; $76c5: $ff
	sub  b                                           ; $76c6: $90
	ld   a, h                                        ; $76c7: $7c
	ld   h, a                                        ; $76c8: $67
	ld   h, d                                        ; $76c9: $62
	ld   e, l                                        ; $76ca: $5d
	dec  c                                           ; $76cb: $0d
	inc  bc                                          ; $76cc: $03
	ld   hl, sp+$71                                  ; $76cd: $f8 $71
	ld   [hl], h                                     ; $76cf: $74
	sbc  c                                           ; $76d0: $99
	adc  l                                           ; $76d1: $8d

Jump_049_76d2:
	ld   l, l                                        ; $76d2: $6d
	ld   d, d                                        ; $76d3: $52
	rst  $38                                         ; $76d4: $ff
	rst  $38                                         ; $76d5: $ff
	rst  $38                                         ; $76d6: $ff
	rst  $38                                         ; $76d7: $ff
	dec  c                                           ; $76d8: $0d
	nop                                              ; $76d9: $00
	ld   a, [bc]                                     ; $76da: $0a
	nop                                              ; $76db: $00
	dec  c                                           ; $76dc: $0d
	inc  b                                           ; $76dd: $04
	rlca                                             ; $76de: $07
	ld   bc, $7150                                   ; $76df: $01 $50 $71
	sbc  [hl]                                        ; $76e2: $9e
	and  e                                           ; $76e3: $a3
	and  l                                           ; $76e4: $a5
	db   $ec                                         ; $76e5: $ec
	cp   d                                           ; $76e6: $ba
	rst  $38                                         ; $76e7: $ff
	rst  $38                                         ; $76e8: $ff
	dec  c                                           ; $76e9: $0d
	nop                                              ; $76ea: $00
	ld   a, [bc]                                     ; $76eb: $0a
	rrca                                             ; $76ec: $0f
	inc  b                                           ; $76ed: $04
	rlca                                             ; $76ee: $07
	ld   bc, $ff50                                   ; $76ef: $01 $50 $ff
	rst  $38                                         ; $76f2: $ff
	rst  $38                                         ; $76f3: $ff
	rst  $38                                         ; $76f4: $ff
	dec  c                                           ; $76f5: $0d
	rst  $38                                         ; $76f6: $ff
	rst  $38                                         ; $76f7: $ff
	rst  $38                                         ; $76f8: $ff
	rst  $38                                         ; $76f9: $ff
	rst  $38                                         ; $76fa: $ff
	dec  c                                           ; $76fb: $0d
	nop                                              ; $76fc: $00
	ld   a, [bc]                                     ; $76fd: $0a
	dec  c                                           ; $76fe: $0d
	nop                                              ; $76ff: $00
	nop                                              ; $7700: $00
	rrca                                             ; $7701: $0f
	nop                                              ; $7702: $00
	ld   bc, $4005                                   ; $7703: $01 $05 $40
	ld   d, c                                        ; $7706: $51
	ld   bc, $0000                                   ; $7707: $01 $00 $00
	ld   bc, $ffff                                   ; $770a: $01 $ff $ff
	and  e                                           ; $770d: $a3
	and  l                                           ; $770e: $a5
	db   $ec                                         ; $770f: $ec
	cp   d                                           ; $7710: $ba
	rst  $38                                         ; $7711: $ff
	rst  $38                                         ; $7712: $ff
	dec  c                                           ; $7713: $0d
	inc  bc                                          ; $7714: $03
	ld   hl, sp+$71                                  ; $7715: $f8 $71
	ld   [hl], h                                     ; $7717: $74
	sbc  c                                           ; $7718: $99
	ld   l, h                                        ; $7719: $6c
	rst  $38                                         ; $771a: $ff
	rst  $38                                         ; $771b: $ff
	rst  $38                                         ; $771c: $ff
	rst  $38                                         ; $771d: $ff
	dec  c                                           ; $771e: $0d
	nop                                              ; $771f: $00
	ld   a, [bc]                                     ; $7720: $0a
	nop                                              ; $7721: $00
	nop                                              ; $7722: $00
	ld   c, $41                                      ; $7723: $0e $41
	rrca                                             ; $7725: $0f
	nop                                              ; $7726: $00
	ld   bc, $1c02                                   ; $7727: $01 $02 $1c
	add  hl, bc                                      ; $772a: $09
	nop                                              ; $772b: $00
	nop                                              ; $772c: $00
	ld   bc, $0008                                   ; $772d: $01 $08 $00
	ld   e, l                                        ; $7730: $5d
	and  c                                           ; $7731: $a1
	ld   h, [hl]                                     ; $7732: $66
	sub  c                                           ; $7733: $91
	ld   a, b                                        ; $7734: $78
	ld   d, d                                        ; $7735: $52
	ld   e, c                                        ; $7736: $59
	sbc  a                                           ; $7737: $9f
	dec  c                                           ; $7738: $0d
	ld   a, b                                        ; $7739: $78
	ld   a, c                                        ; $773a: $79
	ld   e, c                                        ; $773b: $59
	inc  b                                           ; $773c: $04
	di                                               ; $773d: $f3
	ld   e, c                                        ; $773e: $59
	ld   d, d                                        ; $773f: $52
	ld   sp, hl                                      ; $7740: $f9
	dec  c                                           ; $7741: $0d
	nop                                              ; $7742: $00
	ld   a, [bc]                                     ; $7743: $0a
	add  hl, de                                      ; $7744: $19
	dec  b                                           ; $7745: $05
	ld   [bc], a                                     ; $7746: $02
	inc  b                                           ; $7747: $04
	ld   a, [bc]                                     ; $7748: $0a
	ld   [bc], a                                     ; $7749: $02
	nop                                              ; $774a: $00
	ld   e, c                                        ; $774b: $59
	sub  a                                           ; $774c: $97
	ld   a, h                                        ; $774d: $7c
	inc  b                                           ; $774e: $04
	ld   d, a                                        ; $774f: $57
	inc  b                                           ; $7750: $04
	ld   h, e                                        ; $7751: $63
	and  b                                           ; $7752: $a0
	ld   [bc], a                                     ; $7753: $02
	jp   nz, $005d                                   ; $7754: $c2 $5d $00

	nop                                              ; $7757: $00
	inc  bc                                          ; $7758: $03
	ld   l, l                                        ; $7759: $6d
	dec  b                                           ; $775a: $05
	add  hl, de                                      ; $775b: $19
	ld   a, h                                        ; $775c: $7c
	and  e                                           ; $775d: $a3
	jp   z, $a5d1                                    ; $775e: $ca $d1 $a5

	cp   d                                           ; $7761: $ba
	and  b                                           ; $7762: $a0
	ld   [bc], a                                     ; $7763: $02
	jp   nz, $005d                                   ; $7764: $c2 $5d $00

	ld   bc, $8b07                                   ; $7767: $01 $07 $8b
	ld   bc, $0302                                   ; $776a: $01 $02 $03
	ld   bc, $2000                                   ; $776d: $01 $00 $20
	nop                                              ; $7770: $00
	rlca                                             ; $7771: $07
	ld   c, c                                        ; $7772: $49
	ld   a, [bc]                                     ; $7773: $0a
	ld   [bc], a                                     ; $7774: $02
	inc  bc                                          ; $7775: $03
	ld   bc, $2001                                   ; $7776: $01 $01 $20
	nop                                              ; $7779: $00
	ld   b, $5a                                      ; $777a: $06 $5a
	nop                                              ; $777c: $00
	rrca                                             ; $777d: $0f
	nop                                              ; $777e: $00
	ld   bc, $5201                                   ; $777f: $01 $01 $52
	ld   d, [hl]                                     ; $7782: $56
	rst  $38                                         ; $7783: $ff
	rst  $38                                         ; $7784: $ff
	sbc  a                                           ; $7785: $9f
	dec  c                                           ; $7786: $0d
	halt                                             ; $7787: $76
	ld   e, l                                        ; $7788: $5d
	ld   a, c                                        ; $7789: $79
	inc  b                                           ; $778a: $04
	di                                               ; $778b: $f3
	ld   [bc], a                                     ; $778c: $02
	jp   Jump_049_5276                               ; $778d: $c3 $76 $52


	ld   d, h                                        ; $7790: $54
	sbc  l                                           ; $7791: $9d
	ld   e, a                                        ; $7792: $5f
	ld   [hl], l                                     ; $7793: $75
	ld   a, l                                        ; $7794: $7d
	rst  $38                                         ; $7795: $ff
	sbc  a                                           ; $7796: $9f
	dec  c                                           ; $7797: $0d
	nop                                              ; $7798: $00
	ld   a, [bc]                                     ; $7799: $0a
	rlca                                             ; $779a: $07
	rst  JumpTable                                         ; $779b: $df
	nop                                              ; $779c: $00
	inc  bc                                          ; $779d: $03
	jr   nz, jr_049_77a1                             ; $779e: $20 $01

	ld   h, h                                        ; $77a0: $64

jr_049_77a1:
	inc  hl                                          ; $77a1: $23
	nop                                              ; $77a2: $00
	rrca                                             ; $77a3: $0f
	add  hl, bc                                      ; $77a4: $09
	nop                                              ; $77a5: $00
	ld   bc, $546b                                   ; $77a6: $01 $6b $54
	ld   e, c                                        ; $77a9: $59
	rst  $38                                         ; $77aa: $ff
	rst  $38                                         ; $77ab: $ff
	adc  h                                           ; $77ac: $8c
	ld   d, b                                        ; $77ad: $50
	sbc  [hl]                                        ; $77ae: $9e
	dec  c                                           ; $77af: $0d
	ld   a, b                                        ; $77b0: $78
	ld   a, c                                        ; $77b1: $79
	ld   e, c                                        ; $77b2: $59
	ld   [bc], a                                     ; $77b3: $02
	ld   a, [de]                                     ; $77b4: $1a
	dec  b                                           ; $77b5: $05
	ldh  a, [$5a]                                    ; $77b6: $f0 $5a
	ld   d, b                                        ; $77b8: $50
	sbc  c                                           ; $77b9: $99
	ld   a, b                                        ; $77ba: $78
	sub  a                                           ; $77bb: $97
	dec  c                                           ; $77bc: $0d
	ld   d, d                                        ; $77bd: $52
	ld   [hl], d                                     ; $77be: $72
	ld   [hl], l                                     ; $77bf: $75
	sub  b                                           ; $77c0: $90
	dec  b                                           ; $77c1: $05
	db   $10                                         ; $77c2: $10
	sbc  c                                           ; $77c3: $99
	halt                                             ; $77c4: $76
	ld   d, d                                        ; $77c5: $52
	ld   d, d                                        ; $77c6: $52
	sbc  a                                           ; $77c7: $9f
	dec  c                                           ; $77c8: $0d
	nop                                              ; $77c9: $00
	ld   a, [bc]                                     ; $77ca: $0a
	rrca                                             ; $77cb: $0f
	nop                                              ; $77cc: $00
	ld   bc, $7d01                                   ; $77cd: $01 $01 $7d
	rst  $38                                         ; $77d0: $ff
	rst  $38                                         ; $77d1: $ff
	ld   a, l                                        ; $77d2: $7d
	ld   d, d                                        ; $77d3: $52
	sbc  a                                           ; $77d4: $9f
	dec  c                                           ; $77d5: $0d
	ld   d, b                                        ; $77d6: $50
	sbc  b                                           ; $77d7: $98
	ld   e, d                                        ; $77d8: $5a
	halt                                             ; $77d9: $76
	ld   d, h                                        ; $77da: $54
	ld   h, d                                        ; $77db: $62
	ld   h, h                                        ; $77dc: $64
	ld   d, d                                        ; $77dd: $52
	adc  h                                           ; $77de: $8c
	ld   h, a                                        ; $77df: $67
	sbc  a                                           ; $77e0: $9f
	dec  c                                           ; $77e1: $0d
	nop                                              ; $77e2: $00
	ld   a, [bc]                                     ; $77e3: $0a
	rrca                                             ; $77e4: $0f
	add  hl, bc                                      ; $77e5: $09
	nop                                              ; $77e6: $00
	ld   bc, $9a6b                                   ; $77e7: $01 $6b $9a
	ld   h, [hl]                                     ; $77ea: $66
	sub  c                                           ; $77eb: $91
	sbc  [hl]                                        ; $77ec: $9e
	dec  b                                           ; $77ed: $05
	ld   [hl], e                                     ; $77ee: $73
	sub  b                                           ; $77ef: $90
	inc  bc                                          ; $77f0: $03
	dec  c                                           ; $77f1: $0d
	ld   [bc], a                                     ; $77f2: $02
	jp   Jump_049_505a                               ; $77f3: $c3 $5a $50


	sbc  c                                           ; $77f6: $99
	ld   e, c                                        ; $77f7: $59
	sub  a                                           ; $77f8: $97
	dec  c                                           ; $77f9: $0d
	ld   h, c                                        ; $77fa: $61
	sbc  d                                           ; $77fb: $9a
	ld   [hl], l                                     ; $77fc: $75
	sbc  a                                           ; $77fd: $9f
	dec  c                                           ; $77fe: $0d
	nop                                              ; $77ff: $00
	ld   a, [bc]                                     ; $7800: $0a
	nop                                              ; $7801: $00
	inc  e                                           ; $7802: $1c
	add  hl, bc                                      ; $7803: $09
	dec  b                                           ; $7804: $05
	ld   a, [bc]                                     ; $7805: $0a
	ld   bc, $0008                                   ; $7806: $01 $08 $00
	ld   e, l                                        ; $7809: $5d
	and  c                                           ; $780a: $a1
	sbc  a                                           ; $780b: $9f
	dec  c                                           ; $780c: $0d
	ld   a, b                                        ; $780d: $78
	and  c                                           ; $780e: $a1
	ld   l, [hl]                                     ; $780f: $6e
	ld   e, c                                        ; $7810: $59
	ld   [bc], a                                     ; $7811: $02
	ld   [hl], d                                     ; $7812: $72
	inc  bc                                          ; $7813: $03
	dec  bc                                          ; $7814: $0b
	ld   e, d                                        ; $7815: $5a
	ld   [bc], a                                     ; $7816: $02
	jr   z, jr_049_786b                              ; $7817: $28 $52

	ld   l, h                                        ; $7819: $6c
	sbc  a                                           ; $781a: $9f
	dec  c                                           ; $781b: $0d
	nop                                              ; $781c: $00
	ld   a, [bc]                                     ; $781d: $0a
	inc  e                                           ; $781e: $1c
	add  hl, bc                                      ; $781f: $09
	nop                                              ; $7820: $00
	nop                                              ; $7821: $00
	ld   bc, $a15a                                   ; $7822: $01 $5a $a1
	ld   a, [hl]                                     ; $7825: $7e
	sbc  c                                           ; $7826: $99
	ld   a, h                                        ; $7827: $7c
	sub  b                                           ; $7828: $90
	ld   d, d                                        ; $7829: $52
	ld   d, d                                        ; $782a: $52
	ld   e, d                                        ; $782b: $5a
	sbc  [hl]                                        ; $782c: $9e
	dec  c                                           ; $782d: $0d
	ld   l, l                                        ; $782e: $6d
	adc  h                                           ; $782f: $8c
	ld   a, c                                        ; $7830: $79
	ld   a, l                                        ; $7831: $7d
	inc  bc                                          ; $7832: $03
	and  a                                           ; $7833: $a7
	adc  l                                           ; $7834: $8d
	and  b                                           ; $7835: $a0
	halt                                             ; $7836: $76
	sub  a                                           ; $7837: $97
	ld   a, b                                        ; $7838: $78
	ld   d, d                                        ; $7839: $52
	halt                                             ; $783a: $76
	dec  c                                           ; $783b: $0d
	inc  b                                           ; $783c: $04
	dec  c                                           ; $783d: $0d
	ld   e, d                                        ; $783e: $5a
	sub  b                                           ; $783f: $90
	ld   l, l                                        ; $7840: $6d
	ld   a, b                                        ; $7841: $78
	ld   d, d                                        ; $7842: $52
	ld   l, h                                        ; $7843: $6c
	sbc  a                                           ; $7844: $9f
	dec  c                                           ; $7845: $0d
	nop                                              ; $7846: $00
	ld   a, [bc]                                     ; $7847: $0a
	ld   bc, $0a04                                   ; $7848: $01 $04 $0a
	ld   [bc], a                                     ; $784b: $02
	nop                                              ; $784c: $00
	ld   a, c                                        ; $784d: $79
	halt                                             ; $784e: $76
	ld   [hl], c                                     ; $784f: $71
	ld   [hl], h                                     ; $7850: $74
	ld   a, l                                        ; $7851: $7d
	inc  bc                                          ; $7852: $03
	sub  h                                           ; $7853: $94
	dec  b                                           ; $7854: $05
	inc  sp                                          ; $7855: $33
	ld   [bc], a                                     ; $7856: $02
	ld   l, b                                        ; $7857: $68
	dec  b                                           ; $7858: $05

Jump_049_7859:
	ld   de, $0d90                                   ; $7859: $11 $90 $0d
	inc  b                                           ; $785c: $04
	ld   c, $02                                      ; $785d: $0e $02
	jp   $0378                                       ; $785f: $c3 $78 $03


	dec  c                                           ; $7862: $0d
	ld   [bc], a                                     ; $7863: $02
	jp   Jump_049_547c                               ; $7864: $c3 $7c $54


	ld   l, a                                        ; $7867: $6f
	ld   l, [hl]                                     ; $7868: $6e
	ld   e, c                                        ; $7869: $59
	sub  a                                           ; $786a: $97

jr_049_786b:
	ld   a, b                                        ; $786b: $78
	sbc  a                                           ; $786c: $9f
	dec  c                                           ; $786d: $0d
	nop                                              ; $786e: $00
	ld   a, [bc]                                     ; $786f: $0a
	rrca                                             ; $7870: $0f
	nop                                              ; $7871: $00
	ld   bc, $7d01                                   ; $7872: $01 $01 $7d
	rst  $38                                         ; $7875: $ff
	rst  $38                                         ; $7876: $ff
	ld   a, l                                        ; $7877: $7d
	ld   d, d                                        ; $7878: $52
	sbc  a                                           ; $7879: $9f
	dec  c                                           ; $787a: $0d
	ld   [bc], a                                     ; $787b: $02
	and  c                                           ; $787c: $a1
	and  b                                           ; $787d: $a0
	ld   [hl], d                                     ; $787e: $72
	ld   e, a                                        ; $787f: $5f
	adc  h                                           ; $7880: $8c
	ld   h, a                                        ; $7881: $67
	sbc  a                                           ; $7882: $9f
	dec  c                                           ; $7883: $0d
	nop                                              ; $7884: $00
	ld   a, [bc]                                     ; $7885: $0a
	inc  e                                           ; $7886: $1c
	add  hl, bc                                      ; $7887: $09
	ld   bc, $0101                                   ; $7888: $01 $01 $01
	ld   d, h                                        ; $788b: $54
	and  c                                           ; $788c: $a1
	sbc  a                                           ; $788d: $9f
	dec  c                                           ; $788e: $0d
	ld   l, e                                        ; $788f: $6b
	sbc  d                                           ; $7890: $9a
	ld   h, [hl]                                     ; $7891: $66
	sub  c                                           ; $7892: $91
	sbc  [hl]                                        ; $7893: $9e
	dec  b                                           ; $7894: $05
	ld   [hl], e                                     ; $7895: $73
	sub  b                                           ; $7896: $90
	ld   l, e                                        ; $7897: $6b
	sbc  e                                           ; $7898: $9b
	ld   l, e                                        ; $7899: $6b
	sbc  e                                           ; $789a: $9b
	inc  bc                                          ; $789b: $03
	dec  c                                           ; $789c: $0d
	ld   [bc], a                                     ; $789d: $02
	jp   $0d79                                       ; $789e: $c3 $79 $0d


	sub  b                                           ; $78a1: $90
	ld   [hl], a                                     ; $78a2: $77
	sbc  c                                           ; $78a3: $99
	ld   e, c                                        ; $78a4: $59
	sub  a                                           ; $78a5: $97
	ld   h, c                                        ; $78a6: $61
	sbc  d                                           ; $78a7: $9a
	ld   [hl], l                                     ; $78a8: $75
	sbc  a                                           ; $78a9: $9f
	dec  c                                           ; $78aa: $0d
	nop                                              ; $78ab: $00
	ld   a, [bc]                                     ; $78ac: $0a
	nop                                              ; $78ad: $00
	rrca                                             ; $78ae: $0f
	nop                                              ; $78af: $00
	ld   bc, $5001                                   ; $78b0: $01 $01 $50
	ld   a, h                                        ; $78b3: $7c
	rst  $38                                         ; $78b4: $ff
	rst  $38                                         ; $78b5: $ff
	ld   l, a                                        ; $78b6: $6f
	sub  l                                           ; $78b7: $95
	ld   [hl], c                                     ; $78b8: $71
	halt                                             ; $78b9: $76
	dec  c                                           ; $78ba: $0d
	ld   e, b                                        ; $78bb: $58
	ld   [bc], a                                     ; $78bc: $02
	jp   nz, Jump_049_655b                           ; $78bd: $c2 $5b $65

	ld   l, l                                        ; $78c0: $6d
	ld   d, d                                        ; $78c1: $52
	ld   h, c                                        ; $78c2: $61
	halt                                             ; $78c3: $76
	ld   e, d                                        ; $78c4: $5a
	dec  c                                           ; $78c5: $0d
	ld   d, b                                        ; $78c6: $50
	sbc  c                                           ; $78c7: $99
	and  c                                           ; $78c8: $a1
	ld   [hl], l                                     ; $78c9: $75
	ld   h, a                                        ; $78ca: $67
	ld   e, a                                        ; $78cb: $5f
	ld   [hl], a                                     ; $78cc: $77
	rst  $38                                         ; $78cd: $ff
	dec  c                                           ; $78ce: $0d
	nop                                              ; $78cf: $00
	ld   a, [bc]                                     ; $78d0: $0a
	rrca                                             ; $78d1: $0f
	add  hl, bc                                      ; $78d2: $09
	nop                                              ; $78d3: $00
	ld   bc, $ffff                                   ; $78d4: $01 $ff $ff
	ld   [bc], a                                     ; $78d7: $02
	jp   nz, Jump_049_6d5b                           ; $78d8: $c2 $5b $6d

	ld   d, d                                        ; $78db: $52
	ld   h, c                                        ; $78dc: $61
	halt                                             ; $78dd: $76
	ld   sp, hl                                      ; $78de: $f9
	dec  c                                           ; $78df: $0d
	nop                                              ; $78e0: $00
	ld   a, [bc]                                     ; $78e1: $0a
	jr   jr_049_78e7                                 ; $78e2: $18 $03

	ld   bc, $5d63                                   ; $78e4: $01 $63 $5d

jr_049_78e7:
	sub  a                                           ; $78e7: $97
	ld   e, c                                        ; $78e8: $59
	sub  a                                           ; $78e9: $97
	ld   a, h                                        ; $78ea: $7c
	inc  b                                           ; $78eb: $04
	ld   d, a                                        ; $78ec: $57
	inc  b                                           ; $78ed: $04
	ld   h, e                                        ; $78ee: $63
	and  b                                           ; $78ef: $a0
	ld   e, e                                        ; $78f0: $5b
	ld   e, l                                        ; $78f1: $5d
	nop                                              ; $78f2: $00
	nop                                              ; $78f3: $00
	ld   h, a                                        ; $78f4: $67
	adc  l                                           ; $78f5: $8d
	sbc  d                                           ; $78f6: $9a
	ld   e, c                                        ; $78f7: $59
	sub  a                                           ; $78f8: $97
	ld   a, h                                        ; $78f9: $7c
	inc  b                                           ; $78fa: $04
	ld   d, a                                        ; $78fb: $57
	inc  b                                           ; $78fc: $04
	ld   h, e                                        ; $78fd: $63
	and  b                                           ; $78fe: $a0
	ld   e, e                                        ; $78ff: $5b
	ld   e, l                                        ; $7900: $5d
	nop                                              ; $7901: $00
	ld   bc, $7c6b                                   ; $7902: $01 $6b $7c
	inc  b                                           ; $7905: $04
	ld   e, $7c                                      ; $7906: $1e $7c
	inc  bc                                          ; $7908: $03
	add  d                                           ; $7909: $82
	ld   a, h                                        ; $790a: $7c
	inc  b                                           ; $790b: $04
	ld   d, a                                        ; $790c: $57
	inc  b                                           ; $790d: $04
	ld   h, e                                        ; $790e: $63
	and  b                                           ; $790f: $a0
	ld   e, e                                        ; $7910: $5b
	ld   e, l                                        ; $7911: $5d
	nop                                              ; $7912: $00
	ld   [bc], a                                     ; $7913: $02
	rlca                                             ; $7914: $07
	ld   h, $03                                      ; $7915: $26 $03
	ld   [bc], a                                     ; $7917: $02
	ld   [bc], a                                     ; $7918: $02
	ld   bc, $2000                                   ; $7919: $01 $00 $20
	nop                                              ; $791c: $00
	rlca                                             ; $791d: $07
	ld   d, d                                        ; $791e: $52
	inc  b                                           ; $791f: $04
	ld   [bc], a                                     ; $7920: $02
	ld   [bc], a                                     ; $7921: $02
	ld   bc, $2001                                   ; $7922: $01 $01 $20
	nop                                              ; $7925: $00
	rlca                                             ; $7926: $07
	inc  c                                           ; $7927: $0c
	ld   [bc], a                                     ; $7928: $02
	ld   [bc], a                                     ; $7929: $02
	ld   [bc], a                                     ; $792a: $02
	ld   bc, $2002                                   ; $792b: $01 $02 $20
	nop                                              ; $792e: $00
	jr   jr_049_7934                                 ; $792f: $18 $03

	ld   bc, $ecdf                                   ; $7931: $01 $df $ec

jr_049_7934:
	and  e                                           ; $7934: $a3
	ld   e, c                                        ; $7935: $59
	sub  a                                           ; $7936: $97
	ld   a, h                                        ; $7937: $7c
	inc  b                                           ; $7938: $04
	ld   d, a                                        ; $7939: $57
	inc  b                                           ; $793a: $04
	ld   h, e                                        ; $793b: $63
	and  b                                           ; $793c: $a0
	ld   e, e                                        ; $793d: $5b
	ld   e, l                                        ; $793e: $5d
	nop                                              ; $793f: $00
	nop                                              ; $7940: $00
	xor  h                                           ; $7941: $ac
	push af                                          ; $7942: $f5
	bit  3, c                                        ; $7943: $cb $59
	sub  a                                           ; $7945: $97
	ld   a, h                                        ; $7946: $7c
	inc  b                                           ; $7947: $04
	ld   d, a                                        ; $7948: $57
	inc  b                                           ; $7949: $04
	ld   h, e                                        ; $794a: $63
	and  b                                           ; $794b: $a0
	ld   e, e                                        ; $794c: $5b
	ld   e, l                                        ; $794d: $5d
	nop                                              ; $794e: $00
	ld   bc, $7c6b                                   ; $794f: $01 $6b $7c
	inc  b                                           ; $7952: $04
	ld   e, $7c                                      ; $7953: $1e $7c
	inc  bc                                          ; $7955: $03
	add  d                                           ; $7956: $82
	ld   a, h                                        ; $7957: $7c
	inc  b                                           ; $7958: $04
	ld   d, a                                        ; $7959: $57
	inc  b                                           ; $795a: $04
	ld   h, e                                        ; $795b: $63
	and  b                                           ; $795c: $a0
	ld   e, e                                        ; $795d: $5b
	ld   e, l                                        ; $795e: $5d
	nop                                              ; $795f: $00
	ld   [bc], a                                     ; $7960: $02
	rlca                                             ; $7961: $07
	ld   a, [hl]                                     ; $7962: $7e
	dec  b                                           ; $7963: $05
	ld   [bc], a                                     ; $7964: $02
	ld   [bc], a                                     ; $7965: $02
	ld   bc, $2000                                   ; $7966: $01 $00 $20
	nop                                              ; $7969: $00
	rlca                                             ; $796a: $07
	or   $08                                         ; $796b: $f6 $08
	ld   [bc], a                                     ; $796d: $02
	ld   [bc], a                                     ; $796e: $02
	ld   bc, $2001                                   ; $796f: $01 $01 $20
	nop                                              ; $7972: $00
	rlca                                             ; $7973: $07
	ld   e, c                                        ; $7974: $59
	ld   [bc], a                                     ; $7975: $02
	ld   [bc], a                                     ; $7976: $02
	ld   [bc], a                                     ; $7977: $02
	ld   bc, $2002                                   ; $7978: $01 $02 $20
	nop                                              ; $797b: $00
	jr   jr_049_7981                                 ; $797c: $18 $03

	ld   bc, $cf02                                   ; $797e: $01 $02 $cf

jr_049_7981:
	dec  b                                           ; $7981: $05
	ld   a, [de]                                     ; $7982: $1a
	ld   e, c                                        ; $7983: $59
	sub  a                                           ; $7984: $97
	ld   a, h                                        ; $7985: $7c
	inc  b                                           ; $7986: $04
	ld   d, a                                        ; $7987: $57
	inc  b                                           ; $7988: $04
	ld   h, e                                        ; $7989: $63
	and  b                                           ; $798a: $a0
	ld   e, e                                        ; $798b: $5b
	ld   e, l                                        ; $798c: $5d
	nop                                              ; $798d: $00
	nop                                              ; $798e: $00
	and  e                                           ; $798f: $a3
	and  l                                           ; $7990: $a5
	db   $ec                                         ; $7991: $ec
	cp   d                                           ; $7992: $ba
	ld   e, c                                        ; $7993: $59
	sub  a                                           ; $7994: $97
	ld   a, h                                        ; $7995: $7c
	inc  b                                           ; $7996: $04
	ld   d, a                                        ; $7997: $57
	inc  b                                           ; $7998: $04
	ld   h, e                                        ; $7999: $63
	and  b                                           ; $799a: $a0
	ld   e, e                                        ; $799b: $5b
	ld   e, l                                        ; $799c: $5d
	nop                                              ; $799d: $00
	ld   bc, $7c6b                                   ; $799e: $01 $6b $7c
	inc  b                                           ; $79a1: $04
	ld   e, $7c                                      ; $79a2: $1e $7c
	inc  bc                                          ; $79a4: $03
	add  d                                           ; $79a5: $82
	ld   a, h                                        ; $79a6: $7c
	inc  b                                           ; $79a7: $04
	ld   d, a                                        ; $79a8: $57
	inc  b                                           ; $79a9: $04
	ld   h, e                                        ; $79aa: $63
	and  b                                           ; $79ab: $a0
	ld   e, e                                        ; $79ac: $5b
	ld   e, l                                        ; $79ad: $5d
	nop                                              ; $79ae: $00
	ld   [bc], a                                     ; $79af: $02
	rlca                                             ; $79b0: $07
	call z, $0207                                    ; $79b1: $cc $07 $02
	ld   [bc], a                                     ; $79b4: $02
	ld   bc, $2000                                   ; $79b5: $01 $00 $20
	nop                                              ; $79b8: $00
	rlca                                             ; $79b9: $07
	and  h                                           ; $79ba: $a4
	ld   b, $02                                      ; $79bb: $06 $02
	ld   [bc], a                                     ; $79bd: $02
	ld   bc, $2001                                   ; $79be: $01 $01 $20
	nop                                              ; $79c1: $00
	rlca                                             ; $79c2: $07
	xor  b                                           ; $79c3: $a8
	ld   [bc], a                                     ; $79c4: $02
	ld   [bc], a                                     ; $79c5: $02
	ld   [bc], a                                     ; $79c6: $02
	ld   bc, $2002                                   ; $79c7: $01 $02 $20
	nop                                              ; $79ca: $00
	jr   @+$04                                       ; $79cb: $18 $02

	ld   bc, $7192                                   ; $79cd: $01 $92 $71
	ld   a, a                                        ; $79d0: $7f
	sbc  b                                           ; $79d1: $98
	sub  d                                           ; $79d2: $92
	adc  a                                           ; $79d3: $8f
	sbc  c                                           ; $79d4: $99
	nop                                              ; $79d5: $00
	nop                                              ; $79d6: $00
	ld   l, e                                        ; $79d7: $6b
	ld   a, h                                        ; $79d8: $7c
	inc  b                                           ; $79d9: $04
	ld   e, $7c                                      ; $79da: $1e $7c
	inc  bc                                          ; $79dc: $03
	add  d                                           ; $79dd: $82
	ld   a, h                                        ; $79de: $7c
	inc  b                                           ; $79df: $04
	ld   d, a                                        ; $79e0: $57
	inc  b                                           ; $79e1: $04
	ld   h, e                                        ; $79e2: $63
	and  b                                           ; $79e3: $a0
	ld   e, e                                        ; $79e4: $5b
	ld   e, l                                        ; $79e5: $5d
	nop                                              ; $79e6: $00
	ld   bc, $d707                                   ; $79e7: $01 $07 $d7
	ld   [bc], a                                     ; $79ea: $02
	ld   [bc], a                                     ; $79eb: $02
	ld   [bc], a                                     ; $79ec: $02
	ld   bc, $2000                                   ; $79ed: $01 $00 $20
	nop                                              ; $79f0: $00
	rlca                                             ; $79f1: $07
	cp   a                                           ; $79f2: $bf
	ld   bc, $0202                                   ; $79f3: $01 $02 $02
	ld   bc, $2001                                   ; $79f6: $01 $01 $20
	nop                                              ; $79f9: $00
	rrca                                             ; $79fa: $0f
	nop                                              ; $79fb: $00
	ld   bc, $5001                                   ; $79fc: $01 $01 $50
	sbc  [hl]                                        ; $79ff: $9e
	sub  d                                           ; $7a00: $92
	ld   [hl], c                                     ; $7a01: $71
	ld   a, a                                        ; $7a02: $7f
	sbc  b                                           ; $7a03: $98
	ld   d, d                                        ; $7a04: $52
	ld   d, d                                        ; $7a05: $52
	ld   [hl], l                                     ; $7a06: $75
	ld   h, a                                        ; $7a07: $67
	sbc  a                                           ; $7a08: $9f
	dec  c                                           ; $7a09: $0d
	ld   [hl], l                                     ; $7a0a: $75
	ld   a, l                                        ; $7a0b: $7d
	sbc  [hl]                                        ; $7a0c: $9e
	inc  bc                                          ; $7a0d: $03
	add  e                                           ; $7a0e: $83
	dec  b                                           ; $7a0f: $05
	dec  c                                           ; $7a10: $0d
	ld   h, l                                        ; $7a11: $65
	adc  h                                           ; $7a12: $8c
	ld   h, a                                        ; $7a13: $67
	sbc  a                                           ; $7a14: $9f
	dec  c                                           ; $7a15: $0d
	nop                                              ; $7a16: $00
	ld   a, [bc]                                     ; $7a17: $0a
	rrca                                             ; $7a18: $0f
	add  hl, bc                                      ; $7a19: $09
	nop                                              ; $7a1a: $00
	ld   bc, $546b                                   ; $7a1b: $01 $6b $54
	ld   e, c                                        ; $7a1e: $59
	ld   d, d                                        ; $7a1f: $52
	sbc  a                                           ; $7a20: $9f
	dec  c                                           ; $7a21: $0d
	ld   [hl], l                                     ; $7a22: $75
	sub  b                                           ; $7a23: $90
	sbc  [hl]                                        ; $7a24: $9e
	inc  b                                           ; $7a25: $04
	di                                               ; $7a26: $f3
	ld   e, d                                        ; $7a27: $5a
	ld   d, b                                        ; $7a28: $50
	ld   [hl], c                                     ; $7a29: $71
	ld   l, l                                        ; $7a2a: $6d
	sub  a                                           ; $7a2b: $97
	dec  c                                           ; $7a2c: $0d
	ld   d, d                                        ; $7a2d: $52
	ld   [hl], d                                     ; $7a2e: $72
	ld   [hl], l                                     ; $7a2f: $75
	sub  b                                           ; $7a30: $90
	dec  b                                           ; $7a31: $05
	db   $10                                         ; $7a32: $10
	sbc  c                                           ; $7a33: $99
	halt                                             ; $7a34: $76
	ld   d, d                                        ; $7a35: $52
	ld   d, d                                        ; $7a36: $52
	sbc  a                                           ; $7a37: $9f
	dec  c                                           ; $7a38: $0d
	nop                                              ; $7a39: $00
	ld   a, [bc]                                     ; $7a3a: $0a
	ld   bc, $9166                                   ; $7a3b: $01 $66 $91
	sbc  [hl]                                        ; $7a3e: $9e
	ld   e, d                                        ; $7a3f: $5a
	and  c                                           ; $7a40: $a1
	ld   a, [hl]                                     ; $7a41: $7e
	sbc  d                                           ; $7a42: $9a
	sub  [hl]                                        ; $7a43: $96
	sbc  a                                           ; $7a44: $9f
	dec  c                                           ; $7a45: $0d
	nop                                              ; $7a46: $00
	ld   a, [bc]                                     ; $7a47: $0a
	nop                                              ; $7a48: $00
	rrca                                             ; $7a49: $0f
	nop                                              ; $7a4a: $00
	ld   bc, $6301                                   ; $7a4b: $01 $01 $63

jr_049_7a4e:
	ld   e, l                                        ; $7a4e: $5d
	sub  a                                           ; $7a4f: $97
	ld   h, e                                        ; $7a50: $63
	and  c                                           ; $7a51: $a1
	ld   a, h                                        ; $7a52: $7c
	inc  b                                           ; $7a53: $04
	ld   l, l                                        ; $7a54: $6d
	add  [hl]                                        ; $7a55: $86
	ld   a, h                                        ; $7a56: $7c
	inc  b                                           ; $7a57: $04
	ld   d, a                                        ; $7a58: $57
	inc  b                                           ; $7a59: $04
	ld   h, e                                        ; $7a5a: $63
	ld   [hl], c                                     ; $7a5b: $71
	ld   [hl], h                                     ; $7a5c: $74
	dec  c                                           ; $7a5d: $0d
	ld   [hl], a                                     ; $7a5e: $77
	ld   d, h                                        ; $7a5f: $54
	ld   a, b                                        ; $7a60: $78
	and  c                                           ; $7a61: $a1
	ld   [hl], l                                     ; $7a62: $75
	ld   h, l                                        ; $7a63: $65
	sub  l                                           ; $7a64: $95

jr_049_7a65:
	ld   d, h                                        ; $7a65: $54
	ld   e, c                                        ; $7a66: $59
	ld   sp, hl                                      ; $7a67: $f9
	dec  c                                           ; $7a68: $0d
	nop                                              ; $7a69: $00
	ld   a, [bc]                                     ; $7a6a: $0a
	rrca                                             ; $7a6b: $0f
	add  hl, bc                                      ; $7a6c: $09
	nop                                              ; $7a6d: $00
	ld   bc, $8e83                                   ; $7a6e: $01 $83 $8e
	sbc  [hl]                                        ; $7a71: $9e
	ld   l, e                                        ; $7a72: $6b
	ld   d, h                                        ; $7a73: $54
	ld   l, [hl]                                     ; $7a74: $6e
	ld   a, b                                        ; $7a75: $78
	rst  $38                                         ; $7a76: $ff
	rst  $38                                         ; $7a77: $ff
	dec  c                                           ; $7a78: $0d
	nop                                              ; $7a79: $00
	ld   a, [bc]                                     ; $7a7a: $0a
	rlca                                             ; $7a7b: $07
	ret  nz                                          ; $7a7c: $c0

	inc  bc                                          ; $7a7d: $03
	inc  bc                                          ; $7a7e: $03
	ld   de, $6401                                   ; $7a7f: $11 $01 $64
	inc  hl                                          ; $7a82: $23
	nop                                              ; $7a83: $00
	rlca                                             ; $7a84: $07
	rrca                                             ; $7a85: $0f
	inc  b                                           ; $7a86: $04
	inc  bc                                          ; $7a87: $03
	ld   de, $7c01                                   ; $7a88: $11 $01 $7c
	dec  h                                           ; $7a8b: $25
	nop                                              ; $7a8c: $00
	ld   bc, $5d63                                   ; $7a8d: $01 $63 $5d
	sub  a                                           ; $7a90: $97
	ld   e, l                                        ; $7a91: $5d
	and  c                                           ; $7a92: $a1
	ld   a, h                                        ; $7a93: $7c
	sbc  [hl]                                        ; $7a94: $9e
	ld   [$5d00], sp                                 ; $7a95: $08 $00 $5d
	and  c                                           ; $7a98: $a1
	dec  c                                           ; $7a99: $0d
	add  [hl]                                        ; $7a9a: $86
	ld   a, h                                        ; $7a9b: $7c
	inc  b                                           ; $7a9c: $04
	ld   d, a                                        ; $7a9d: $57
	inc  b                                           ; $7a9e: $04
	ld   h, e                                        ; $7a9f: $63
	ld   a, l                                        ; $7aa0: $7d
	sbc  [hl]                                        ; $7aa1: $9e
	adc  h                                           ; $7aa2: $8c
	ld   d, b                                        ; $7aa3: $50
	adc  h                                           ; $7aa4: $8c
	ld   d, b                                        ; $7aa5: $50
	dec  c                                           ; $7aa6: $0d
	halt                                             ; $7aa7: $76
	ld   d, d                                        ; $7aa8: $52
	ld   [hl], c                                     ; $7aa9: $71
	ld   l, l                                        ; $7aaa: $6d
	halt                                             ; $7aab: $76
	ld   h, c                                        ; $7aac: $61
	sbc  e                                           ; $7aad: $9b
	ld   e, c                                        ; $7aae: $59
	ld   a, b                                        ; $7aaf: $78
	sbc  a                                           ; $7ab0: $9f
	dec  c                                           ; $7ab1: $0d
	nop                                              ; $7ab2: $00
	ld   a, [bc]                                     ; $7ab3: $0a
	ld   bc, $5d76                                   ; $7ab4: $01 $76 $5d
	ld   a, c                                        ; $7ab7: $79
	ld   [bc], a                                     ; $7ab8: $02
	jr   z, jr_049_7b0d                              ; $7ab9: $28 $52

	dec  b                                           ; $7abb: $05
	jr   nz, jr_049_7a4e                             ; $7abc: $20 $90

	ld   [bc], a                                     ; $7abe: $02
	jp   nz, Jump_049_7859                           ; $7abf: $c2 $59 $78

	ld   d, d                                        ; $7ac2: $52
	ld   h, l                                        ; $7ac3: $65
	rst  $38                                         ; $7ac4: $ff
	rst  $38                                         ; $7ac5: $ff
	dec  c                                           ; $7ac6: $0d
	ld   e, c                                        ; $7ac7: $59
	halt                                             ; $7ac8: $76
	ld   d, d                                        ; $7ac9: $52
	ld   [hl], c                                     ; $7aca: $71
	ld   [hl], h                                     ; $7acb: $74
	sbc  [hl]                                        ; $7acc: $9e
	ld   d, d                                        ; $7acd: $52
	ld   d, d                                        ; $7ace: $52
	halt                                             ; $7acf: $76
	ld   d, d                                        ; $7ad0: $52
	ld   d, h                                        ; $7ad1: $54
	dec  b                                           ; $7ad2: $05
	jr   nz, jr_049_7a65                             ; $7ad3: $20 $90

	dec  c                                           ; $7ad5: $0d
	ld   [bc], a                                     ; $7ad6: $02
	jp   nz, Jump_049_7859                           ; $7ad7: $c2 $59 $78

	ld   d, d                                        ; $7ada: $52
	ld   a, b                                        ; $7adb: $78
	sbc  a                                           ; $7adc: $9f
	dec  c                                           ; $7add: $0d
	nop                                              ; $7ade: $00
	ld   a, [bc]                                     ; $7adf: $0a
	ld   b, $1c                                      ; $7ae0: $06 $1c
	ld   a, [bc]                                     ; $7ae2: $0a
	ld   bc, $5d63                                   ; $7ae3: $01 $63 $5d
	sub  a                                           ; $7ae6: $97
	ld   e, l                                        ; $7ae7: $5d
	and  c                                           ; $7ae8: $a1
	ld   a, h                                        ; $7ae9: $7c
	sbc  [hl]                                        ; $7aea: $9e
	ld   [$5d00], sp                                 ; $7aeb: $08 $00 $5d
	and  c                                           ; $7aee: $a1
	dec  c                                           ; $7aef: $0d
	add  [hl]                                        ; $7af0: $86
	ld   a, h                                        ; $7af1: $7c
	inc  b                                           ; $7af2: $04
	ld   d, a                                        ; $7af3: $57
	inc  b                                           ; $7af4: $04
	ld   h, e                                        ; $7af5: $63
	ld   a, l                                        ; $7af6: $7d
	rst  $38                                         ; $7af7: $ff
	rst  $38                                         ; $7af8: $ff
	dec  c                                           ; $7af9: $0d
	ld   d, b                                        ; $7afa: $50
	adc  h                                           ; $7afb: $8c
	sbc  b                                           ; $7afc: $98
	sub  [hl]                                        ; $7afd: $96
	ld   e, l                                        ; $7afe: $5d
	ld   a, b                                        ; $7aff: $78
	ld   d, d                                        ; $7b00: $52
	ld   a, b                                        ; $7b01: $78
	sbc  a                                           ; $7b02: $9f
	dec  c                                           ; $7b03: $0d
	nop                                              ; $7b04: $00
	ld   a, [bc]                                     ; $7b05: $0a
	ld   bc, $7190                                   ; $7b06: $01 $90 $71
	halt                                             ; $7b09: $76
	ld   [bc], a                                     ; $7b0a: $02
	ld   a, [de]                                     ; $7b0b: $1a
	inc  bc                                          ; $7b0c: $03

jr_049_7b0d:
	ld   l, e                                        ; $7b0d: $6b
	ld   a, h                                        ; $7b0e: $7c
	ld   [bc], a                                     ; $7b0f: $02
	and  c                                           ; $7b10: $a1
	inc  bc                                          ; $7b11: $03
	and  b                                           ; $7b12: $a0
	ld   l, a                                        ; $7b13: $6f
	and  b                                           ; $7b14: $a0
	dec  c                                           ; $7b15: $0d
	ld   [bc], a                                     ; $7b16: $02
	ld   h, l                                        ; $7b17: $65
	ld   d, [hl]                                     ; $7b18: $56
	ld   [hl], h                                     ; $7b19: $74
	ld   [bc], a                                     ; $7b1a: $02
	ld   a, a                                        ; $7b1b: $7f
	inc  b                                           ; $7b1c: $04
	dec  de                                          ; $7b1d: $1b
	ld   h, l                                        ; $7b1e: $65
	ld   l, l                                        ; $7b1f: $6d
	adc  c                                           ; $7b20: $89
	ld   d, h                                        ; $7b21: $54
	ld   e, d                                        ; $7b22: $5a
	ld   d, d                                        ; $7b23: $52
	ld   d, d                                        ; $7b24: $52
	halt                                             ; $7b25: $76
	dec  c                                           ; $7b26: $0d
	dec  b                                           ; $7b27: $05
	pop  de                                          ; $7b28: $d1
	ld   d, h                                        ; $7b29: $54
	ld   l, h                                        ; $7b2a: $6c
	sbc  a                                           ; $7b2b: $9f
	dec  c                                           ; $7b2c: $0d
	nop                                              ; $7b2d: $00
	ld   a, [bc]                                     ; $7b2e: $0a
	ld   b, $1c                                      ; $7b2f: $06 $1c
	ld   a, [bc]                                     ; $7b31: $0a
	ld   bc, $5d63                                   ; $7b32: $01 $63 $5d
	sub  a                                           ; $7b35: $97
	ld   e, l                                        ; $7b36: $5d
	and  c                                           ; $7b37: $a1
	ld   a, h                                        ; $7b38: $7c
	sbc  [hl]                                        ; $7b39: $9e
	ld   [$5d00], sp                                 ; $7b3a: $08 $00 $5d
	and  c                                           ; $7b3d: $a1
	dec  c                                           ; $7b3e: $0d
	add  [hl]                                        ; $7b3f: $86
	ld   a, h                                        ; $7b40: $7c
	inc  b                                           ; $7b41: $04
	ld   d, a                                        ; $7b42: $57
	inc  b                                           ; $7b43: $04
	ld   h, e                                        ; $7b44: $63
	ld   a, l                                        ; $7b45: $7d
	sbc  [hl]                                        ; $7b46: $9e
	ld   e, c                                        ; $7b47: $59
	ld   a, b                                        ; $7b48: $78
	sbc  b                                           ; $7b49: $98
	ld   d, d                                        ; $7b4a: $52
	ld   d, d                                        ; $7b4b: $52
	dec  c                                           ; $7b4c: $0d
	halt                                             ; $7b4d: $76
	dec  b                                           ; $7b4e: $05
	pop  de                                          ; $7b4f: $d1
	ld   d, h                                        ; $7b50: $54
	ld   l, h                                        ; $7b51: $6c
	sbc  a                                           ; $7b52: $9f
	dec  c                                           ; $7b53: $0d
	nop                                              ; $7b54: $00
	ld   a, [bc]                                     ; $7b55: $0a
	ld   bc, $ca02                                   ; $7b56: $01 $02 $ca
	sub  b                                           ; $7b59: $90
	ld   l, e                                        ; $7b5a: $6b
	sbc  d                                           ; $7b5b: $9a
	ld   a, c                                        ; $7b5c: $79
	ld   [bc], a                                     ; $7b5d: $02
	add  hl, bc                                      ; $7b5e: $09
	ld   d, [hl]                                     ; $7b5f: $56
	sub  a                                           ; $7b60: $97
	sbc  d                                           ; $7b61: $9a
	sbc  c                                           ; $7b62: $99
	sub  [hl]                                        ; $7b63: $96
	ld   d, h                                        ; $7b64: $54
	ld   a, c                                        ; $7b65: $79
	dec  c                                           ; $7b66: $0d
	ld   e, d                                        ; $7b67: $5a
	and  c                                           ; $7b68: $a1
	ld   a, [hl]                                     ; $7b69: $7e
	sbc  c                                           ; $7b6a: $99
	and  c                                           ; $7b6b: $a1
	ld   l, [hl]                                     ; $7b6c: $6e
	ld   l, h                                        ; $7b6d: $6c
	sbc  a                                           ; $7b6e: $9f
	dec  c                                           ; $7b6f: $0d
	nop                                              ; $7b70: $00
	ld   a, [bc]                                     ; $7b71: $0a
	ld   b, $1c                                      ; $7b72: $06 $1c
	ld   a, [bc]                                     ; $7b74: $0a
	rrca                                             ; $7b75: $0f
	nop                                              ; $7b76: $00
	ld   bc, $6701                                   ; $7b77: $01 $01 $67

jr_049_7b7a:
	adc  l                                           ; $7b7a: $8d
	sbc  d                                           ; $7b7b: $9a
	ld   h, e                                        ; $7b7c: $63
	and  c                                           ; $7b7d: $a1
	ld   a, h                                        ; $7b7e: $7c
	inc  b                                           ; $7b7f: $04
	ld   l, l                                        ; $7b80: $6d
	add  [hl]                                        ; $7b81: $86
	ld   a, h                                        ; $7b82: $7c
	inc  b                                           ; $7b83: $04
	ld   d, a                                        ; $7b84: $57
	inc  b                                           ; $7b85: $04
	ld   h, e                                        ; $7b86: $63
	ld   [hl], c                                     ; $7b87: $71
	ld   [hl], h                                     ; $7b88: $74
	dec  c                                           ; $7b89: $0d
	ld   [hl], a                                     ; $7b8a: $77
	ld   d, h                                        ; $7b8b: $54
	ld   a, b                                        ; $7b8c: $78
	and  c                                           ; $7b8d: $a1
	ld   [hl], l                                     ; $7b8e: $75
	ld   h, l                                        ; $7b8f: $65
	sub  l                                           ; $7b90: $95

jr_049_7b91:
	ld   d, h                                        ; $7b91: $54
	ld   e, c                                        ; $7b92: $59
	ld   sp, hl                                      ; $7b93: $f9
	dec  c                                           ; $7b94: $0d
	nop                                              ; $7b95: $00
	ld   a, [bc]                                     ; $7b96: $0a
	rrca                                             ; $7b97: $0f
	add  hl, bc                                      ; $7b98: $09
	nop                                              ; $7b99: $00
	ld   bc, $8e83                                   ; $7b9a: $01 $83 $8e
	sbc  [hl]                                        ; $7b9d: $9e
	ld   l, e                                        ; $7b9e: $6b
	ld   d, h                                        ; $7b9f: $54
	ld   l, [hl]                                     ; $7ba0: $6e
	ld   a, b                                        ; $7ba1: $78
	rst  $38                                         ; $7ba2: $ff
	rst  $38                                         ; $7ba3: $ff
	dec  c                                           ; $7ba4: $0d
	nop                                              ; $7ba5: $00
	ld   a, [bc]                                     ; $7ba6: $0a
	rlca                                             ; $7ba7: $07
	db   $ec                                         ; $7ba8: $ec
	inc  b                                           ; $7ba9: $04
	inc  bc                                          ; $7baa: $03
	ld   [de], a                                     ; $7bab: $12
	ld   bc, $2364                                   ; $7bac: $01 $64 $23
	nop                                              ; $7baf: $00
	rlca                                             ; $7bb0: $07
	dec  sp                                          ; $7bb1: $3b
	dec  b                                           ; $7bb2: $05
	inc  bc                                          ; $7bb3: $03
	ld   [de], a                                     ; $7bb4: $12
	ld   bc, $257c                                   ; $7bb5: $01 $7c $25
	nop                                              ; $7bb8: $00
	ld   bc, $8d67                                   ; $7bb9: $01 $67 $8d
	sbc  d                                           ; $7bbc: $9a
	ld   e, l                                        ; $7bbd: $5d
	and  c                                           ; $7bbe: $a1
	ld   a, h                                        ; $7bbf: $7c
	sbc  [hl]                                        ; $7bc0: $9e
	ld   [$5d00], sp                                 ; $7bc1: $08 $00 $5d
	and  c                                           ; $7bc4: $a1
	dec  c                                           ; $7bc5: $0d
	add  [hl]                                        ; $7bc6: $86
	ld   a, h                                        ; $7bc7: $7c
	inc  b                                           ; $7bc8: $04
	ld   d, a                                        ; $7bc9: $57
	inc  b                                           ; $7bca: $04
	ld   h, e                                        ; $7bcb: $63
	ld   a, l                                        ; $7bcc: $7d
	sbc  [hl]                                        ; $7bcd: $9e
	adc  h                                           ; $7bce: $8c
	ld   d, b                                        ; $7bcf: $50
	adc  h                                           ; $7bd0: $8c
	ld   d, b                                        ; $7bd1: $50
	dec  c                                           ; $7bd2: $0d
	halt                                             ; $7bd3: $76
	ld   d, d                                        ; $7bd4: $52
	ld   [hl], c                                     ; $7bd5: $71
	ld   l, l                                        ; $7bd6: $6d
	halt                                             ; $7bd7: $76
	ld   h, c                                        ; $7bd8: $61
	sbc  e                                           ; $7bd9: $9b
	ld   e, c                                        ; $7bda: $59
	ld   a, b                                        ; $7bdb: $78
	sbc  a                                           ; $7bdc: $9f
	dec  c                                           ; $7bdd: $0d
	nop                                              ; $7bde: $00
	ld   a, [bc]                                     ; $7bdf: $0a
	ld   bc, $5d76                                   ; $7be0: $01 $76 $5d
	ld   a, c                                        ; $7be3: $79
	ld   [bc], a                                     ; $7be4: $02
	jr   z, jr_049_7c39                              ; $7be5: $28 $52

	dec  b                                           ; $7be7: $05
	jr   nz, jr_049_7b7a                             ; $7be8: $20 $90

	ld   [bc], a                                     ; $7bea: $02
	jp   nz, Jump_049_7859                           ; $7beb: $c2 $59 $78

	ld   d, d                                        ; $7bee: $52
	ld   h, l                                        ; $7bef: $65
	rst  $38                                         ; $7bf0: $ff
	rst  $38                                         ; $7bf1: $ff
	dec  c                                           ; $7bf2: $0d
	ld   e, c                                        ; $7bf3: $59
	halt                                             ; $7bf4: $76
	ld   d, d                                        ; $7bf5: $52
	ld   [hl], c                                     ; $7bf6: $71
	ld   [hl], h                                     ; $7bf7: $74
	sbc  [hl]                                        ; $7bf8: $9e
	ld   d, d                                        ; $7bf9: $52
	ld   d, d                                        ; $7bfa: $52
	halt                                             ; $7bfb: $76
	ld   d, d                                        ; $7bfc: $52
	ld   d, h                                        ; $7bfd: $54
	dec  b                                           ; $7bfe: $05
	jr   nz, jr_049_7b91                             ; $7bff: $20 $90

	dec  c                                           ; $7c01: $0d
	ld   [bc], a                                     ; $7c02: $02
	jp   nz, Jump_049_7859                           ; $7c03: $c2 $59 $78

	ld   d, d                                        ; $7c06: $52
	ld   a, b                                        ; $7c07: $78
	sbc  a                                           ; $7c08: $9f
	dec  c                                           ; $7c09: $0d
	nop                                              ; $7c0a: $00
	ld   a, [bc]                                     ; $7c0b: $0a
	ld   b, $1c                                      ; $7c0c: $06 $1c
	ld   a, [bc]                                     ; $7c0e: $0a
	ld   bc, $8d67                                   ; $7c0f: $01 $67 $8d
	sbc  d                                           ; $7c12: $9a
	ld   e, l                                        ; $7c13: $5d
	and  c                                           ; $7c14: $a1
	ld   a, h                                        ; $7c15: $7c
	sbc  [hl]                                        ; $7c16: $9e
	ld   [$5d00], sp                                 ; $7c17: $08 $00 $5d
	and  c                                           ; $7c1a: $a1
	dec  c                                           ; $7c1b: $0d
	add  [hl]                                        ; $7c1c: $86
	ld   a, h                                        ; $7c1d: $7c
	inc  b                                           ; $7c1e: $04
	ld   d, a                                        ; $7c1f: $57
	inc  b                                           ; $7c20: $04
	ld   h, e                                        ; $7c21: $63
	ld   a, l                                        ; $7c22: $7d
	rst  $38                                         ; $7c23: $ff
	rst  $38                                         ; $7c24: $ff
	dec  c                                           ; $7c25: $0d
	ld   d, b                                        ; $7c26: $50
	adc  h                                           ; $7c27: $8c
	sbc  b                                           ; $7c28: $98
	sub  [hl]                                        ; $7c29: $96
	ld   e, l                                        ; $7c2a: $5d
	ld   a, b                                        ; $7c2b: $78
	ld   d, d                                        ; $7c2c: $52
	ld   a, b                                        ; $7c2d: $78
	sbc  a                                           ; $7c2e: $9f
	dec  c                                           ; $7c2f: $0d
	nop                                              ; $7c30: $00
	ld   a, [bc]                                     ; $7c31: $0a
	ld   bc, $7190                                   ; $7c32: $01 $90 $71
	halt                                             ; $7c35: $76
	ld   [bc], a                                     ; $7c36: $02
	ld   a, [de]                                     ; $7c37: $1a
	inc  bc                                          ; $7c38: $03

jr_049_7c39:
	ld   l, e                                        ; $7c39: $6b
	ld   a, h                                        ; $7c3a: $7c
	ld   [bc], a                                     ; $7c3b: $02
	and  c                                           ; $7c3c: $a1
	inc  bc                                          ; $7c3d: $03
	and  b                                           ; $7c3e: $a0
	ld   l, a                                        ; $7c3f: $6f
	and  b                                           ; $7c40: $a0
	dec  c                                           ; $7c41: $0d
	ld   [bc], a                                     ; $7c42: $02
	ld   h, l                                        ; $7c43: $65
	ld   d, [hl]                                     ; $7c44: $56
	ld   [hl], h                                     ; $7c45: $74
	ld   [bc], a                                     ; $7c46: $02
	ld   a, a                                        ; $7c47: $7f
	inc  b                                           ; $7c48: $04
	dec  de                                          ; $7c49: $1b
	ld   h, l                                        ; $7c4a: $65
	ld   l, l                                        ; $7c4b: $6d
	adc  c                                           ; $7c4c: $89
	ld   d, h                                        ; $7c4d: $54
	ld   e, d                                        ; $7c4e: $5a
	ld   d, d                                        ; $7c4f: $52
	ld   d, d                                        ; $7c50: $52
	halt                                             ; $7c51: $76
	dec  c                                           ; $7c52: $0d
	dec  b                                           ; $7c53: $05
	pop  de                                          ; $7c54: $d1
	ld   d, h                                        ; $7c55: $54
	ld   l, h                                        ; $7c56: $6c
	sbc  a                                           ; $7c57: $9f
	dec  c                                           ; $7c58: $0d
	nop                                              ; $7c59: $00
	ld   a, [bc]                                     ; $7c5a: $0a
	ld   b, $1c                                      ; $7c5b: $06 $1c
	ld   a, [bc]                                     ; $7c5d: $0a
	ld   bc, $8d67                                   ; $7c5e: $01 $67 $8d
	sbc  d                                           ; $7c61: $9a
	ld   e, l                                        ; $7c62: $5d
	and  c                                           ; $7c63: $a1
	ld   a, h                                        ; $7c64: $7c
	sbc  [hl]                                        ; $7c65: $9e
	ld   [$5d00], sp                                 ; $7c66: $08 $00 $5d
	and  c                                           ; $7c69: $a1
	dec  c                                           ; $7c6a: $0d
	add  [hl]                                        ; $7c6b: $86
	ld   a, h                                        ; $7c6c: $7c
	inc  b                                           ; $7c6d: $04
	ld   d, a                                        ; $7c6e: $57
	inc  b                                           ; $7c6f: $04
	ld   h, e                                        ; $7c70: $63
	ld   a, l                                        ; $7c71: $7d
	sbc  [hl]                                        ; $7c72: $9e
	ld   e, c                                        ; $7c73: $59
	ld   a, b                                        ; $7c74: $78
	sbc  b                                           ; $7c75: $98
	ld   d, d                                        ; $7c76: $52
	ld   d, d                                        ; $7c77: $52
	dec  c                                           ; $7c78: $0d
	halt                                             ; $7c79: $76
	dec  b                                           ; $7c7a: $05
	pop  de                                          ; $7c7b: $d1
	ld   d, h                                        ; $7c7c: $54
	ld   l, h                                        ; $7c7d: $6c
	sbc  a                                           ; $7c7e: $9f
	dec  c                                           ; $7c7f: $0d
	nop                                              ; $7c80: $00
	ld   a, [bc]                                     ; $7c81: $0a
	ld   bc, $ca02                                   ; $7c82: $01 $02 $ca
	sub  b                                           ; $7c85: $90
	ld   l, e                                        ; $7c86: $6b
	sbc  d                                           ; $7c87: $9a
	ld   a, c                                        ; $7c88: $79
	ld   [bc], a                                     ; $7c89: $02
	add  hl, bc                                      ; $7c8a: $09
	ld   d, [hl]                                     ; $7c8b: $56
	sub  a                                           ; $7c8c: $97
	sbc  d                                           ; $7c8d: $9a
	sbc  c                                           ; $7c8e: $99
	sub  [hl]                                        ; $7c8f: $96
	ld   d, h                                        ; $7c90: $54
	ld   a, c                                        ; $7c91: $79
	dec  c                                           ; $7c92: $0d
	ld   e, d                                        ; $7c93: $5a
	and  c                                           ; $7c94: $a1
	ld   a, [hl]                                     ; $7c95: $7e
	sbc  c                                           ; $7c96: $99
	and  c                                           ; $7c97: $a1
	ld   l, [hl]                                     ; $7c98: $6e
	ld   l, h                                        ; $7c99: $6c
	sbc  a                                           ; $7c9a: $9f
	dec  c                                           ; $7c9b: $0d
	nop                                              ; $7c9c: $00
	ld   a, [bc]                                     ; $7c9d: $0a
	ld   b, $1c                                      ; $7c9e: $06 $1c
	ld   a, [bc]                                     ; $7ca0: $0a
	rrca                                             ; $7ca1: $0f
	nop                                              ; $7ca2: $00
	ld   bc, $df01                                   ; $7ca3: $01 $01 $df
	db   $ec                                         ; $7ca6: $ec
	and  e                                           ; $7ca7: $a3
	ld   h, e                                        ; $7ca8: $63
	and  c                                           ; $7ca9: $a1
	ld   a, h                                        ; $7caa: $7c
	inc  b                                           ; $7cab: $04
	ld   l, l                                        ; $7cac: $6d
	add  [hl]                                        ; $7cad: $86
	ld   a, h                                        ; $7cae: $7c
	inc  b                                           ; $7caf: $04
	ld   d, a                                        ; $7cb0: $57
	inc  b                                           ; $7cb1: $04
	ld   h, e                                        ; $7cb2: $63
	ld   [hl], c                                     ; $7cb3: $71
	ld   [hl], h                                     ; $7cb4: $74
	dec  c                                           ; $7cb5: $0d
	ld   [hl], a                                     ; $7cb6: $77
	ld   d, h                                        ; $7cb7: $54
	ld   a, b                                        ; $7cb8: $78
	and  c                                           ; $7cb9: $a1
	ld   [hl], l                                     ; $7cba: $75

jr_049_7cbb:
	ld   h, l                                        ; $7cbb: $65
	sub  l                                           ; $7cbc: $95
	ld   d, h                                        ; $7cbd: $54
	ld   e, c                                        ; $7cbe: $59
	ld   sp, hl                                      ; $7cbf: $f9
	dec  c                                           ; $7cc0: $0d
	nop                                              ; $7cc1: $00
	ld   a, [bc]                                     ; $7cc2: $0a
	rrca                                             ; $7cc3: $0f
	add  hl, bc                                      ; $7cc4: $09
	nop                                              ; $7cc5: $00
	ld   bc, $8e83                                   ; $7cc6: $01 $83 $8e
	sbc  [hl]                                        ; $7cc9: $9e
	ld   l, e                                        ; $7cca: $6b
	ld   d, h                                        ; $7ccb: $54
	ld   l, [hl]                                     ; $7ccc: $6e
	ld   a, b                                        ; $7ccd: $78
	rst  $38                                         ; $7cce: $ff
	rst  $38                                         ; $7ccf: $ff
	dec  c                                           ; $7cd0: $0d
	nop                                              ; $7cd1: $00
	ld   a, [bc]                                     ; $7cd2: $0a
	rlca                                             ; $7cd3: $07
	ld   d, $06                                      ; $7cd4: $16 $06
	inc  bc                                          ; $7cd6: $03
	inc  de                                          ; $7cd7: $13
	ld   bc, $2364                                   ; $7cd8: $01 $64 $23
	nop                                              ; $7cdb: $00
	rlca                                             ; $7cdc: $07
	ld   h, e                                        ; $7cdd: $63
	ld   b, $03                                      ; $7cde: $06 $03
	inc  de                                          ; $7ce0: $13
	ld   bc, $257c                                   ; $7ce1: $01 $7c $25
	nop                                              ; $7ce4: $00
	ld   bc, $ecdf                                   ; $7ce5: $01 $df $ec
	and  e                                           ; $7ce8: $a3
	ld   a, h                                        ; $7ce9: $7c
	sbc  [hl]                                        ; $7cea: $9e
	ld   [$5d00], sp                                 ; $7ceb: $08 $00 $5d
	and  c                                           ; $7cee: $a1
	dec  c                                           ; $7cef: $0d
	add  [hl]                                        ; $7cf0: $86
	ld   a, h                                        ; $7cf1: $7c
	inc  b                                           ; $7cf2: $04
	ld   d, a                                        ; $7cf3: $57
	inc  b                                           ; $7cf4: $04
	ld   h, e                                        ; $7cf5: $63
	ld   a, l                                        ; $7cf6: $7d
	sbc  [hl]                                        ; $7cf7: $9e
	adc  h                                           ; $7cf8: $8c
	ld   d, b                                        ; $7cf9: $50
	adc  h                                           ; $7cfa: $8c
	ld   d, b                                        ; $7cfb: $50
	dec  c                                           ; $7cfc: $0d
	halt                                             ; $7cfd: $76
	ld   d, d                                        ; $7cfe: $52
	ld   [hl], c                                     ; $7cff: $71
	ld   l, l                                        ; $7d00: $6d
	halt                                             ; $7d01: $76
	ld   h, c                                        ; $7d02: $61
	sbc  e                                           ; $7d03: $9b
	ld   e, c                                        ; $7d04: $59
	ld   a, b                                        ; $7d05: $78
	sbc  a                                           ; $7d06: $9f
	dec  c                                           ; $7d07: $0d
	nop                                              ; $7d08: $00
	ld   a, [bc]                                     ; $7d09: $0a
	ld   bc, $5d76                                   ; $7d0a: $01 $76 $5d
	ld   a, c                                        ; $7d0d: $79
	ld   [bc], a                                     ; $7d0e: $02
	jr   z, jr_049_7d63                              ; $7d0f: $28 $52

	dec  b                                           ; $7d11: $05
	jr   nz, @-$6e                                   ; $7d12: $20 $90

	ld   [bc], a                                     ; $7d14: $02
	jp   nz, Jump_049_7859                           ; $7d15: $c2 $59 $78

	ld   d, d                                        ; $7d18: $52
	ld   h, l                                        ; $7d19: $65
	rst  $38                                         ; $7d1a: $ff
	rst  $38                                         ; $7d1b: $ff
	dec  c                                           ; $7d1c: $0d
	ld   e, c                                        ; $7d1d: $59
	halt                                             ; $7d1e: $76
	ld   d, d                                        ; $7d1f: $52
	ld   [hl], c                                     ; $7d20: $71
	ld   [hl], h                                     ; $7d21: $74
	sbc  [hl]                                        ; $7d22: $9e
	ld   d, d                                        ; $7d23: $52
	ld   d, d                                        ; $7d24: $52
	halt                                             ; $7d25: $76
	ld   d, d                                        ; $7d26: $52
	ld   d, h                                        ; $7d27: $54
	dec  b                                           ; $7d28: $05
	jr   nz, jr_049_7cbb                             ; $7d29: $20 $90

	dec  c                                           ; $7d2b: $0d
	ld   [bc], a                                     ; $7d2c: $02
	jp   nz, Jump_049_7859                           ; $7d2d: $c2 $59 $78

	ld   d, d                                        ; $7d30: $52
	ld   a, b                                        ; $7d31: $78
	sbc  a                                           ; $7d32: $9f
	dec  c                                           ; $7d33: $0d
	nop                                              ; $7d34: $00
	ld   a, [bc]                                     ; $7d35: $0a
	ld   b, $1c                                      ; $7d36: $06 $1c
	ld   a, [bc]                                     ; $7d38: $0a
	ld   bc, $ecdf                                   ; $7d39: $01 $df $ec
	and  e                                           ; $7d3c: $a3
	ld   a, h                                        ; $7d3d: $7c
	sbc  [hl]                                        ; $7d3e: $9e
	ld   [$5d00], sp                                 ; $7d3f: $08 $00 $5d
	and  c                                           ; $7d42: $a1
	dec  c                                           ; $7d43: $0d
	add  [hl]                                        ; $7d44: $86
	ld   a, h                                        ; $7d45: $7c
	inc  b                                           ; $7d46: $04
	ld   d, a                                        ; $7d47: $57
	inc  b                                           ; $7d48: $04
	ld   h, e                                        ; $7d49: $63
	ld   a, l                                        ; $7d4a: $7d
	rst  $38                                         ; $7d4b: $ff
	rst  $38                                         ; $7d4c: $ff
	dec  c                                           ; $7d4d: $0d
	ld   d, b                                        ; $7d4e: $50
	adc  h                                           ; $7d4f: $8c
	sbc  b                                           ; $7d50: $98
	sub  [hl]                                        ; $7d51: $96
	ld   e, l                                        ; $7d52: $5d
	ld   a, b                                        ; $7d53: $78
	ld   d, d                                        ; $7d54: $52
	ld   a, b                                        ; $7d55: $78
	sbc  a                                           ; $7d56: $9f
	dec  c                                           ; $7d57: $0d
	nop                                              ; $7d58: $00
	ld   a, [bc]                                     ; $7d59: $0a
	ld   bc, $7190                                   ; $7d5a: $01 $90 $71
	halt                                             ; $7d5d: $76
	ld   [bc], a                                     ; $7d5e: $02
	ld   a, [de]                                     ; $7d5f: $1a
	inc  bc                                          ; $7d60: $03
	ld   l, e                                        ; $7d61: $6b
	ld   a, h                                        ; $7d62: $7c

jr_049_7d63:
	ld   [bc], a                                     ; $7d63: $02
	and  c                                           ; $7d64: $a1
	inc  bc                                          ; $7d65: $03
	and  b                                           ; $7d66: $a0
	ld   l, a                                        ; $7d67: $6f
	and  b                                           ; $7d68: $a0
	dec  c                                           ; $7d69: $0d
	ld   [bc], a                                     ; $7d6a: $02
	ld   h, l                                        ; $7d6b: $65
	ld   d, [hl]                                     ; $7d6c: $56
	ld   [hl], h                                     ; $7d6d: $74
	ld   [bc], a                                     ; $7d6e: $02
	ld   a, a                                        ; $7d6f: $7f
	inc  b                                           ; $7d70: $04
	dec  de                                          ; $7d71: $1b
	ld   h, l                                        ; $7d72: $65
	ld   l, l                                        ; $7d73: $6d
	adc  c                                           ; $7d74: $89
	ld   d, h                                        ; $7d75: $54
	ld   e, d                                        ; $7d76: $5a
	ld   d, d                                        ; $7d77: $52
	ld   d, d                                        ; $7d78: $52
	halt                                             ; $7d79: $76
	dec  c                                           ; $7d7a: $0d
	dec  b                                           ; $7d7b: $05
	pop  de                                          ; $7d7c: $d1
	ld   d, h                                        ; $7d7d: $54
	ld   l, h                                        ; $7d7e: $6c
	sbc  a                                           ; $7d7f: $9f
	dec  c                                           ; $7d80: $0d
	nop                                              ; $7d81: $00
	ld   a, [bc]                                     ; $7d82: $0a
	ld   b, $1c                                      ; $7d83: $06 $1c
	ld   a, [bc]                                     ; $7d85: $0a
	ld   bc, $ecdf                                   ; $7d86: $01 $df $ec
	and  e                                           ; $7d89: $a3
	ld   a, h                                        ; $7d8a: $7c
	sbc  [hl]                                        ; $7d8b: $9e
	ld   [$5d00], sp                                 ; $7d8c: $08 $00 $5d
	and  c                                           ; $7d8f: $a1
	dec  c                                           ; $7d90: $0d
	add  [hl]                                        ; $7d91: $86
	ld   a, h                                        ; $7d92: $7c
	inc  b                                           ; $7d93: $04
	ld   d, a                                        ; $7d94: $57
	inc  b                                           ; $7d95: $04
	ld   h, e                                        ; $7d96: $63
	ld   a, l                                        ; $7d97: $7d
	sbc  [hl]                                        ; $7d98: $9e
	ld   e, c                                        ; $7d99: $59
	ld   a, b                                        ; $7d9a: $78
	sbc  b                                           ; $7d9b: $98
	ld   d, d                                        ; $7d9c: $52
	ld   d, d                                        ; $7d9d: $52
	dec  c                                           ; $7d9e: $0d
	halt                                             ; $7d9f: $76
	dec  b                                           ; $7da0: $05
	pop  de                                          ; $7da1: $d1
	ld   d, h                                        ; $7da2: $54
	ld   l, h                                        ; $7da3: $6c
	sbc  a                                           ; $7da4: $9f
	dec  c                                           ; $7da5: $0d
	nop                                              ; $7da6: $00
	ld   a, [bc]                                     ; $7da7: $0a
	ld   bc, $ca02                                   ; $7da8: $01 $02 $ca
	sub  b                                           ; $7dab: $90
	ld   l, e                                        ; $7dac: $6b
	sbc  d                                           ; $7dad: $9a
	ld   a, c                                        ; $7dae: $79
	ld   [bc], a                                     ; $7daf: $02
	add  hl, bc                                      ; $7db0: $09
	ld   d, [hl]                                     ; $7db1: $56
	sub  a                                           ; $7db2: $97
	sbc  d                                           ; $7db3: $9a
	sbc  c                                           ; $7db4: $99
	sub  [hl]                                        ; $7db5: $96
	ld   d, h                                        ; $7db6: $54
	ld   a, c                                        ; $7db7: $79
	dec  c                                           ; $7db8: $0d
	ld   e, d                                        ; $7db9: $5a
	and  c                                           ; $7dba: $a1
	ld   a, [hl]                                     ; $7dbb: $7e
	sbc  c                                           ; $7dbc: $99
	and  c                                           ; $7dbd: $a1
	ld   l, [hl]                                     ; $7dbe: $6e
	ld   l, h                                        ; $7dbf: $6c
	sbc  a                                           ; $7dc0: $9f
	dec  c                                           ; $7dc1: $0d
	nop                                              ; $7dc2: $00
	ld   a, [bc]                                     ; $7dc3: $0a
	ld   b, $1c                                      ; $7dc4: $06 $1c
	ld   a, [bc]                                     ; $7dc6: $0a
	rrca                                             ; $7dc7: $0f
	nop                                              ; $7dc8: $00
	ld   bc, $a301                                   ; $7dc9: $01 $01 $a3
	and  l                                           ; $7dcc: $a5
	db   $ec                                         ; $7dcd: $ec
	cp   d                                           ; $7dce: $ba
	ld   a, h                                        ; $7dcf: $7c
	inc  b                                           ; $7dd0: $04
	ld   l, l                                        ; $7dd1: $6d
	add  [hl]                                        ; $7dd2: $86
	ld   a, h                                        ; $7dd3: $7c
	inc  b                                           ; $7dd4: $04
	ld   d, a                                        ; $7dd5: $57
	inc  b                                           ; $7dd6: $04
	ld   h, e                                        ; $7dd7: $63
	ld   [hl], c                                     ; $7dd8: $71
	ld   [hl], h                                     ; $7dd9: $74
	dec  c                                           ; $7dda: $0d
	ld   [hl], a                                     ; $7ddb: $77
	ld   d, h                                        ; $7ddc: $54
	ld   a, b                                        ; $7ddd: $78
	and  c                                           ; $7dde: $a1
	ld   [hl], l                                     ; $7ddf: $75
	ld   h, l                                        ; $7de0: $65

jr_049_7de1:
	sub  l                                           ; $7de1: $95
	ld   d, h                                        ; $7de2: $54
	ld   e, c                                        ; $7de3: $59
	ld   sp, hl                                      ; $7de4: $f9
	dec  c                                           ; $7de5: $0d
	nop                                              ; $7de6: $00
	ld   a, [bc]                                     ; $7de7: $0a
	rrca                                             ; $7de8: $0f
	add  hl, bc                                      ; $7de9: $09
	nop                                              ; $7dea: $00
	ld   bc, $8e83                                   ; $7deb: $01 $83 $8e
	sbc  [hl]                                        ; $7dee: $9e
	ld   l, e                                        ; $7def: $6b
	ld   d, h                                        ; $7df0: $54
	ld   l, [hl]                                     ; $7df1: $6e
	ld   a, b                                        ; $7df2: $78
	rst  $38                                         ; $7df3: $ff
	rst  $38                                         ; $7df4: $ff
	dec  c                                           ; $7df5: $0d
	nop                                              ; $7df6: $00
	ld   a, [bc]                                     ; $7df7: $0a
	rlca                                             ; $7df8: $07
	inc  a                                           ; $7df9: $3c
	rlca                                             ; $7dfa: $07
	inc  bc                                          ; $7dfb: $03
	inc  d                                           ; $7dfc: $14
	ld   bc, $2364                                   ; $7dfd: $01 $64 $23
	nop                                              ; $7e00: $00
	rlca                                             ; $7e01: $07
	adc  d                                           ; $7e02: $8a
	rlca                                             ; $7e03: $07
	inc  bc                                          ; $7e04: $03
	inc  d                                           ; $7e05: $14
	ld   bc, $257c                                   ; $7e06: $01 $7c $25
	nop                                              ; $7e09: $00
	ld   bc, $a5a3                                   ; $7e0a: $01 $a3 $a5
	db   $ec                                         ; $7e0d: $ec
	cp   d                                           ; $7e0e: $ba
	ld   a, h                                        ; $7e0f: $7c
	sbc  [hl]                                        ; $7e10: $9e
	ld   [$5d00], sp                                 ; $7e11: $08 $00 $5d
	and  c                                           ; $7e14: $a1
	dec  c                                           ; $7e15: $0d
	add  [hl]                                        ; $7e16: $86
	ld   a, h                                        ; $7e17: $7c
	inc  b                                           ; $7e18: $04
	ld   d, a                                        ; $7e19: $57
	inc  b                                           ; $7e1a: $04
	ld   h, e                                        ; $7e1b: $63
	ld   a, l                                        ; $7e1c: $7d
	sbc  [hl]                                        ; $7e1d: $9e
	adc  h                                           ; $7e1e: $8c
	ld   d, b                                        ; $7e1f: $50
	adc  h                                           ; $7e20: $8c
	ld   d, b                                        ; $7e21: $50
	dec  c                                           ; $7e22: $0d
	halt                                             ; $7e23: $76
	ld   d, d                                        ; $7e24: $52
	ld   [hl], c                                     ; $7e25: $71
	ld   l, l                                        ; $7e26: $6d
	halt                                             ; $7e27: $76
	ld   h, c                                        ; $7e28: $61
	sbc  e                                           ; $7e29: $9b
	ld   e, c                                        ; $7e2a: $59
	ld   a, b                                        ; $7e2b: $78
	sbc  a                                           ; $7e2c: $9f
	dec  c                                           ; $7e2d: $0d
	nop                                              ; $7e2e: $00
	ld   a, [bc]                                     ; $7e2f: $0a
	ld   bc, $5d76                                   ; $7e30: $01 $76 $5d
	ld   a, c                                        ; $7e33: $79
	ld   [bc], a                                     ; $7e34: $02
	jr   z, jr_049_7e89                              ; $7e35: $28 $52

	dec  b                                           ; $7e37: $05
	jr   nz, @-$6e                                   ; $7e38: $20 $90

	ld   [bc], a                                     ; $7e3a: $02
	jp   nz, Jump_049_7859                           ; $7e3b: $c2 $59 $78

	ld   d, d                                        ; $7e3e: $52
	ld   h, l                                        ; $7e3f: $65
	rst  $38                                         ; $7e40: $ff
	rst  $38                                         ; $7e41: $ff
	dec  c                                           ; $7e42: $0d
	ld   e, c                                        ; $7e43: $59
	halt                                             ; $7e44: $76
	ld   d, d                                        ; $7e45: $52
	ld   [hl], c                                     ; $7e46: $71
	ld   [hl], h                                     ; $7e47: $74
	sbc  [hl]                                        ; $7e48: $9e
	ld   d, d                                        ; $7e49: $52
	ld   d, d                                        ; $7e4a: $52
	halt                                             ; $7e4b: $76
	ld   d, d                                        ; $7e4c: $52
	ld   d, h                                        ; $7e4d: $54
	dec  b                                           ; $7e4e: $05
	jr   nz, jr_049_7de1                             ; $7e4f: $20 $90

	dec  c                                           ; $7e51: $0d
	ld   [bc], a                                     ; $7e52: $02
	jp   nz, Jump_049_7859                           ; $7e53: $c2 $59 $78

	ld   d, d                                        ; $7e56: $52
	ld   a, b                                        ; $7e57: $78
	sbc  a                                           ; $7e58: $9f
	dec  c                                           ; $7e59: $0d
	nop                                              ; $7e5a: $00
	ld   a, [bc]                                     ; $7e5b: $0a
	ld   b, $1c                                      ; $7e5c: $06 $1c
	ld   a, [bc]                                     ; $7e5e: $0a
	ld   bc, $a5a3                                   ; $7e5f: $01 $a3 $a5
	db   $ec                                         ; $7e62: $ec
	cp   d                                           ; $7e63: $ba
	ld   a, h                                        ; $7e64: $7c
	sbc  [hl]                                        ; $7e65: $9e
	ld   [$5d00], sp                                 ; $7e66: $08 $00 $5d
	and  c                                           ; $7e69: $a1
	dec  c                                           ; $7e6a: $0d
	add  [hl]                                        ; $7e6b: $86
	ld   a, h                                        ; $7e6c: $7c
	inc  b                                           ; $7e6d: $04
	ld   d, a                                        ; $7e6e: $57
	inc  b                                           ; $7e6f: $04
	ld   h, e                                        ; $7e70: $63
	ld   a, l                                        ; $7e71: $7d
	rst  $38                                         ; $7e72: $ff
	rst  $38                                         ; $7e73: $ff
	dec  c                                           ; $7e74: $0d
	ld   d, b                                        ; $7e75: $50
	adc  h                                           ; $7e76: $8c
	sbc  b                                           ; $7e77: $98
	sub  [hl]                                        ; $7e78: $96
	ld   e, l                                        ; $7e79: $5d
	ld   a, b                                        ; $7e7a: $78
	ld   d, d                                        ; $7e7b: $52
	ld   a, b                                        ; $7e7c: $78
	sbc  a                                           ; $7e7d: $9f
	dec  c                                           ; $7e7e: $0d
	nop                                              ; $7e7f: $00
	ld   a, [bc]                                     ; $7e80: $0a
	ld   bc, $7190                                   ; $7e81: $01 $90 $71
	halt                                             ; $7e84: $76
	ld   [bc], a                                     ; $7e85: $02
	ld   a, [de]                                     ; $7e86: $1a
	inc  bc                                          ; $7e87: $03
	ld   l, e                                        ; $7e88: $6b

jr_049_7e89:
	ld   a, h                                        ; $7e89: $7c
	ld   [bc], a                                     ; $7e8a: $02
	and  c                                           ; $7e8b: $a1
	inc  bc                                          ; $7e8c: $03
	and  b                                           ; $7e8d: $a0
	ld   l, a                                        ; $7e8e: $6f
	and  b                                           ; $7e8f: $a0
	dec  c                                           ; $7e90: $0d
	ld   [bc], a                                     ; $7e91: $02
	ld   h, l                                        ; $7e92: $65
	ld   d, [hl]                                     ; $7e93: $56
	ld   [hl], h                                     ; $7e94: $74
	ld   [bc], a                                     ; $7e95: $02
	ld   a, a                                        ; $7e96: $7f
	inc  b                                           ; $7e97: $04
	dec  de                                          ; $7e98: $1b
	ld   h, l                                        ; $7e99: $65
	ld   l, l                                        ; $7e9a: $6d
	adc  c                                           ; $7e9b: $89
	ld   d, h                                        ; $7e9c: $54
	ld   e, d                                        ; $7e9d: $5a
	ld   d, d                                        ; $7e9e: $52
	ld   d, d                                        ; $7e9f: $52
	halt                                             ; $7ea0: $76
	dec  c                                           ; $7ea1: $0d
	dec  b                                           ; $7ea2: $05
	pop  de                                          ; $7ea3: $d1
	ld   d, h                                        ; $7ea4: $54
	ld   l, h                                        ; $7ea5: $6c
	sbc  a                                           ; $7ea6: $9f
	dec  c                                           ; $7ea7: $0d
	nop                                              ; $7ea8: $00
	ld   a, [bc]                                     ; $7ea9: $0a
	ld   b, $1c                                      ; $7eaa: $06 $1c
	ld   a, [bc]                                     ; $7eac: $0a
	ld   bc, $a5a3                                   ; $7ead: $01 $a3 $a5
	db   $ec                                         ; $7eb0: $ec
	cp   d                                           ; $7eb1: $ba
	ld   a, h                                        ; $7eb2: $7c
	sbc  [hl]                                        ; $7eb3: $9e
	ld   [$5d00], sp                                 ; $7eb4: $08 $00 $5d
	and  c                                           ; $7eb7: $a1
	dec  c                                           ; $7eb8: $0d
	add  [hl]                                        ; $7eb9: $86
	ld   a, h                                        ; $7eba: $7c
	inc  b                                           ; $7ebb: $04
	ld   d, a                                        ; $7ebc: $57
	inc  b                                           ; $7ebd: $04
	ld   h, e                                        ; $7ebe: $63
	ld   a, l                                        ; $7ebf: $7d
	sbc  [hl]                                        ; $7ec0: $9e
	ld   e, c                                        ; $7ec1: $59
	ld   a, b                                        ; $7ec2: $78
	sbc  b                                           ; $7ec3: $98
	ld   d, d                                        ; $7ec4: $52
	ld   d, d                                        ; $7ec5: $52
	dec  c                                           ; $7ec6: $0d
	halt                                             ; $7ec7: $76
	dec  b                                           ; $7ec8: $05
	pop  de                                          ; $7ec9: $d1
	ld   d, h                                        ; $7eca: $54
	ld   l, h                                        ; $7ecb: $6c
	sbc  a                                           ; $7ecc: $9f
	dec  c                                           ; $7ecd: $0d
	nop                                              ; $7ece: $00
	ld   a, [bc]                                     ; $7ecf: $0a
	ld   bc, $ca02                                   ; $7ed0: $01 $02 $ca
	sub  b                                           ; $7ed3: $90
	ld   l, e                                        ; $7ed4: $6b
	sbc  d                                           ; $7ed5: $9a
	ld   a, c                                        ; $7ed6: $79
	ld   [bc], a                                     ; $7ed7: $02
	add  hl, bc                                      ; $7ed8: $09
	ld   d, [hl]                                     ; $7ed9: $56
	sub  a                                           ; $7eda: $97
	sbc  d                                           ; $7edb: $9a
	sbc  c                                           ; $7edc: $99
	sub  [hl]                                        ; $7edd: $96
	ld   d, h                                        ; $7ede: $54
	ld   a, c                                        ; $7edf: $79
	dec  c                                           ; $7ee0: $0d
	ld   e, d                                        ; $7ee1: $5a
	and  c                                           ; $7ee2: $a1
	ld   a, [hl]                                     ; $7ee3: $7e
	sbc  c                                           ; $7ee4: $99
	and  c                                           ; $7ee5: $a1
	ld   l, [hl]                                     ; $7ee6: $6e
	ld   l, h                                        ; $7ee7: $6c
	sbc  a                                           ; $7ee8: $9f
	dec  c                                           ; $7ee9: $0d
	nop                                              ; $7eea: $00
	ld   a, [bc]                                     ; $7eeb: $0a
	ld   b, $1c                                      ; $7eec: $06 $1c
	ld   a, [bc]                                     ; $7eee: $0a
	rrca                                             ; $7eef: $0f
	nop                                              ; $7ef0: $00
	ld   bc, $0201                                   ; $7ef1: $01 $01 $02

jr_049_7ef4:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ef4: $cf
	dec  b                                           ; $7ef5: $05
	ld   a, [de]                                     ; $7ef6: $1a
	ld   h, e                                        ; $7ef7: $63
	and  c                                           ; $7ef8: $a1
	ld   a, h                                        ; $7ef9: $7c
	inc  b                                           ; $7efa: $04
	ld   l, l                                        ; $7efb: $6d
	add  [hl]                                        ; $7efc: $86
	ld   a, h                                        ; $7efd: $7c
	inc  b                                           ; $7efe: $04
	ld   d, a                                        ; $7eff: $57
	inc  b                                           ; $7f00: $04
	ld   h, e                                        ; $7f01: $63
	ld   [hl], c                                     ; $7f02: $71
	ld   [hl], h                                     ; $7f03: $74
	dec  c                                           ; $7f04: $0d
	ld   [hl], a                                     ; $7f05: $77
	ld   d, h                                        ; $7f06: $54
	ld   a, b                                        ; $7f07: $78
	and  c                                           ; $7f08: $a1
	ld   [hl], l                                     ; $7f09: $75
	ld   h, l                                        ; $7f0a: $65

jr_049_7f0b:
	sub  l                                           ; $7f0b: $95
	ld   d, h                                        ; $7f0c: $54
	ld   e, c                                        ; $7f0d: $59
	ld   sp, hl                                      ; $7f0e: $f9
	dec  c                                           ; $7f0f: $0d
	nop                                              ; $7f10: $00
	ld   a, [bc]                                     ; $7f11: $0a
	rrca                                             ; $7f12: $0f
	add  hl, bc                                      ; $7f13: $09
	nop                                              ; $7f14: $00
	ld   bc, $8e83                                   ; $7f15: $01 $83 $8e
	sbc  [hl]                                        ; $7f18: $9e
	ld   l, e                                        ; $7f19: $6b
	ld   d, h                                        ; $7f1a: $54
	ld   l, [hl]                                     ; $7f1b: $6e
	ld   a, b                                        ; $7f1c: $78
	rst  $38                                         ; $7f1d: $ff
	rst  $38                                         ; $7f1e: $ff
	dec  c                                           ; $7f1f: $0d
	nop                                              ; $7f20: $00
	ld   a, [bc]                                     ; $7f21: $0a
	rlca                                             ; $7f22: $07
	ld   h, [hl]                                     ; $7f23: $66
	ld   [$1503], sp                                 ; $7f24: $08 $03 $15
	ld   bc, $2364                                   ; $7f27: $01 $64 $23
	nop                                              ; $7f2a: $00
	rlca                                             ; $7f2b: $07
	or   h                                           ; $7f2c: $b4
	ld   [$1503], sp                                 ; $7f2d: $08 $03 $15
	ld   bc, $257c                                   ; $7f30: $01 $7c $25
	nop                                              ; $7f33: $00
	ld   bc, $cf02                                   ; $7f34: $01 $02 $cf
	dec  b                                           ; $7f37: $05
	ld   a, [de]                                     ; $7f38: $1a
	ld   a, h                                        ; $7f39: $7c
	sbc  [hl]                                        ; $7f3a: $9e
	ld   [$5d00], sp                                 ; $7f3b: $08 $00 $5d
	and  c                                           ; $7f3e: $a1
	dec  c                                           ; $7f3f: $0d
	add  [hl]                                        ; $7f40: $86
	ld   a, h                                        ; $7f41: $7c
	inc  b                                           ; $7f42: $04
	ld   d, a                                        ; $7f43: $57
	inc  b                                           ; $7f44: $04
	ld   h, e                                        ; $7f45: $63
	ld   a, l                                        ; $7f46: $7d
	sbc  [hl]                                        ; $7f47: $9e
	adc  h                                           ; $7f48: $8c
	ld   d, b                                        ; $7f49: $50
	adc  h                                           ; $7f4a: $8c
	ld   d, b                                        ; $7f4b: $50
	dec  c                                           ; $7f4c: $0d
	halt                                             ; $7f4d: $76
	ld   d, d                                        ; $7f4e: $52
	ld   [hl], c                                     ; $7f4f: $71
	ld   l, l                                        ; $7f50: $6d
	halt                                             ; $7f51: $76
	ld   h, c                                        ; $7f52: $61
	sbc  e                                           ; $7f53: $9b
	ld   e, c                                        ; $7f54: $59
	ld   a, b                                        ; $7f55: $78
	sbc  a                                           ; $7f56: $9f
	dec  c                                           ; $7f57: $0d
	nop                                              ; $7f58: $00
	ld   a, [bc]                                     ; $7f59: $0a
	ld   bc, $5d76                                   ; $7f5a: $01 $76 $5d
	ld   a, c                                        ; $7f5d: $79
	ld   [bc], a                                     ; $7f5e: $02
	jr   z, jr_049_7fb3                              ; $7f5f: $28 $52

	dec  b                                           ; $7f61: $05
	jr   nz, jr_049_7ef4                             ; $7f62: $20 $90

	ld   [bc], a                                     ; $7f64: $02
	jp   nz, Jump_049_7859                           ; $7f65: $c2 $59 $78

	ld   d, d                                        ; $7f68: $52
	ld   h, l                                        ; $7f69: $65
	rst  $38                                         ; $7f6a: $ff
	rst  $38                                         ; $7f6b: $ff
	dec  c                                           ; $7f6c: $0d
	ld   e, c                                        ; $7f6d: $59
	halt                                             ; $7f6e: $76
	ld   d, d                                        ; $7f6f: $52
	ld   [hl], c                                     ; $7f70: $71
	ld   [hl], h                                     ; $7f71: $74
	sbc  [hl]                                        ; $7f72: $9e
	ld   d, d                                        ; $7f73: $52
	ld   d, d                                        ; $7f74: $52
	halt                                             ; $7f75: $76
	ld   d, d                                        ; $7f76: $52
	ld   d, h                                        ; $7f77: $54
	dec  b                                           ; $7f78: $05
	jr   nz, jr_049_7f0b                             ; $7f79: $20 $90

	dec  c                                           ; $7f7b: $0d
	ld   [bc], a                                     ; $7f7c: $02
	jp   nz, Jump_049_7859                           ; $7f7d: $c2 $59 $78

	ld   d, d                                        ; $7f80: $52
	ld   a, b                                        ; $7f81: $78
	sbc  a                                           ; $7f82: $9f
	dec  c                                           ; $7f83: $0d
	nop                                              ; $7f84: $00
	ld   a, [bc]                                     ; $7f85: $0a
	ld   b, $1c                                      ; $7f86: $06 $1c
	ld   a, [bc]                                     ; $7f88: $0a
	ld   bc, $cf02                                   ; $7f89: $01 $02 $cf
	dec  b                                           ; $7f8c: $05
	ld   a, [de]                                     ; $7f8d: $1a
	ld   a, h                                        ; $7f8e: $7c
	sbc  [hl]                                        ; $7f8f: $9e
	ld   [$5d00], sp                                 ; $7f90: $08 $00 $5d
	and  c                                           ; $7f93: $a1
	dec  c                                           ; $7f94: $0d
	add  [hl]                                        ; $7f95: $86
	ld   a, h                                        ; $7f96: $7c
	inc  b                                           ; $7f97: $04
	ld   d, a                                        ; $7f98: $57
	inc  b                                           ; $7f99: $04
	ld   h, e                                        ; $7f9a: $63
	ld   a, l                                        ; $7f9b: $7d
	rst  $38                                         ; $7f9c: $ff
	rst  $38                                         ; $7f9d: $ff
	dec  c                                           ; $7f9e: $0d
	ld   d, b                                        ; $7f9f: $50
	adc  h                                           ; $7fa0: $8c
	sbc  b                                           ; $7fa1: $98
	sub  [hl]                                        ; $7fa2: $96
	ld   e, l                                        ; $7fa3: $5d
	ld   a, b                                        ; $7fa4: $78
	ld   d, d                                        ; $7fa5: $52
	ld   a, b                                        ; $7fa6: $78
	sbc  a                                           ; $7fa7: $9f
	dec  c                                           ; $7fa8: $0d
	nop                                              ; $7fa9: $00
	ld   a, [bc]                                     ; $7faa: $0a
	ld   bc, $7190                                   ; $7fab: $01 $90 $71
	halt                                             ; $7fae: $76
	ld   [bc], a                                     ; $7faf: $02
	ld   a, [de]                                     ; $7fb0: $1a
	inc  bc                                          ; $7fb1: $03
	ld   l, e                                        ; $7fb2: $6b

jr_049_7fb3:
	ld   a, h                                        ; $7fb3: $7c
	ld   [bc], a                                     ; $7fb4: $02
	and  c                                           ; $7fb5: $a1
	inc  bc                                          ; $7fb6: $03
	and  b                                           ; $7fb7: $a0
	ld   l, a                                        ; $7fb8: $6f
	and  b                                           ; $7fb9: $a0
	dec  c                                           ; $7fba: $0d
	ld   [bc], a                                     ; $7fbb: $02
	ld   h, l                                        ; $7fbc: $65
	ld   d, [hl]                                     ; $7fbd: $56
	ld   [hl], h                                     ; $7fbe: $74
	ld   [bc], a                                     ; $7fbf: $02
	ld   a, a                                        ; $7fc0: $7f
	inc  b                                           ; $7fc1: $04
	dec  de                                          ; $7fc2: $1b
	ld   h, l                                        ; $7fc3: $65
	ld   l, l                                        ; $7fc4: $6d
	adc  c                                           ; $7fc5: $89
	ld   d, h                                        ; $7fc6: $54
	ld   e, d                                        ; $7fc7: $5a
	ld   d, d                                        ; $7fc8: $52
	ld   d, d                                        ; $7fc9: $52
	halt                                             ; $7fca: $76
	dec  c                                           ; $7fcb: $0d
	dec  b                                           ; $7fcc: $05
	pop  de                                          ; $7fcd: $d1
	ld   d, h                                        ; $7fce: $54
	ld   l, h                                        ; $7fcf: $6c
	sbc  a                                           ; $7fd0: $9f
	dec  c                                           ; $7fd1: $0d
	nop                                              ; $7fd2: $00
	ld   a, [bc]                                     ; $7fd3: $0a
	ld   b, $1c                                      ; $7fd4: $06 $1c
	ld   a, [bc]                                     ; $7fd6: $0a
	ld   bc, $cf02                                   ; $7fd7: $01 $02 $cf
	dec  b                                           ; $7fda: $05
	ld   a, [de]                                     ; $7fdb: $1a
	ld   a, h                                        ; $7fdc: $7c
	sbc  [hl]                                        ; $7fdd: $9e
	ld   [$5d00], sp                                 ; $7fde: $08 $00 $5d
	and  c                                           ; $7fe1: $a1
	dec  c                                           ; $7fe2: $0d
	add  [hl]                                        ; $7fe3: $86
	ld   a, h                                        ; $7fe4: $7c
	inc  b                                           ; $7fe5: $04
	ld   d, a                                        ; $7fe6: $57
	inc  b                                           ; $7fe7: $04
	ld   h, e                                        ; $7fe8: $63
	ld   a, l                                        ; $7fe9: $7d
	sbc  [hl]                                        ; $7fea: $9e
	ld   e, c                                        ; $7feb: $59
	ld   a, b                                        ; $7fec: $78
	sbc  b                                           ; $7fed: $98
	ld   d, d                                        ; $7fee: $52
	ld   d, d                                        ; $7fef: $52
	dec  c                                           ; $7ff0: $0d
	halt                                             ; $7ff1: $76
	dec  b                                           ; $7ff2: $05
	pop  de                                          ; $7ff3: $d1
	ld   d, h                                        ; $7ff4: $54
	ld   l, h                                        ; $7ff5: $6c
	sbc  a                                           ; $7ff6: $9f
	dec  c                                           ; $7ff7: $0d
	nop                                              ; $7ff8: $00
	ld   a, [bc]                                     ; $7ff9: $0a
	ld   bc, $ca02                                   ; $7ffa: $01 $02 $ca
	sub  b                                           ; $7ffd: $90
	ld   l, e                                        ; $7ffe: $6b
	sbc  d                                           ; $7fff: $9a
