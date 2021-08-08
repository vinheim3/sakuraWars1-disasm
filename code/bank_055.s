; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $055", ROMX[$4000], BANK[$55]

	ld   a, [bc]                                     ; $4000: $0a
	ld   b, $e0                                      ; $4001: $06 $e0
	db   $10                                         ; $4003: $10
	rrca                                             ; $4004: $0f
	nop                                              ; $4005: $00
	ld   bc, $0401                                   ; $4006: $01 $01 $04
	inc  hl                                          ; $4009: $23
	inc  b                                           ; $400a: $04
	inc  l                                           ; $400b: $2c
	ld   l, [hl]                                     ; $400c: $6e
	ld   e, c                                        ; $400d: $59
	sub  a                                           ; $400e: $97
	sbc  [hl]                                        ; $400f: $9e
	ld   l, l                                        ; $4010: $6d
	ld   a, b                                        ; $4011: $78
	add  [hl]                                        ; $4012: $86
	inc  b                                           ; $4013: $04
	jr   z, jr_055_4073                              ; $4014: $28 $5d

	ld   sp, hl                                      ; $4016: $f9
	dec  c                                           ; $4017: $0d
	nop                                              ; $4018: $00
	ld   a, [bc]                                     ; $4019: $0a
	inc  e                                           ; $401a: $1c
	ld   bc, $0202                                   ; $401b: $01 $02 $02
	ld   bc, $5a6f                                   ; $401e: $01 $6f $5a
	ld   d, d                                        ; $4021: $52
	adc  h                                           ; $4022: $8c
	ld   h, a                                        ; $4023: $67
	sub  [hl]                                        ; $4024: $96
	sbc  a                                           ; $4025: $9f
	dec  c                                           ; $4026: $0d
	dec  d                                           ; $4027: $15
	xor  [hl]                                        ; $4028: $ae
	rst  $28                                         ; $4029: $ef
	sub  b                                           ; $402a: $90
	ld   d, b                                        ; $402b: $50
	sbc  c                                           ; $402c: $99
	and  c                                           ; $402d: $a1
	ld   [hl], l                                     ; $402e: $75
	ld   h, a                                        ; $402f: $67
	ld   e, c                                        ; $4030: $59
	sub  a                                           ; $4031: $97
	dec  c                                           ; $4032: $0d
	ld   [bc], a                                     ; $4033: $02
	inc  [hl]                                        ; $4034: $34
	ld   a, c                                        ; $4035: $79
	inc  b                                           ; $4036: $04
	jr   z, jr_055_408b                              ; $4037: $28 $52

	ld   [hl], h                                     ; $4039: $74
	ld   [bc], a                                     ; $403a: $02
	inc  [hl]                                        ; $403b: $34
	ld   h, e                                        ; $403c: $63
	ld   d, d                                        ; $403d: $52
	sbc  a                                           ; $403e: $9f
	dec  c                                           ; $403f: $0d
	nop                                              ; $4040: $00
	ld   a, [bc]                                     ; $4041: $0a
	ld   b, $e0                                      ; $4042: $06 $e0
	db   $10                                         ; $4044: $10
	rrca                                             ; $4045: $0f
	nop                                              ; $4046: $00
	ld   bc, $0401                                   ; $4047: $01 $01 $04
	inc  hl                                          ; $404a: $23
	inc  b                                           ; $404b: $04
	inc  l                                           ; $404c: $2c
	ld   a, l                                        ; $404d: $7d
	rst  $38                                         ; $404e: $ff
	rst  $38                                         ; $404f: $ff
	sbc  [hl]                                        ; $4050: $9e
	inc  b                                           ; $4051: $04
	push de                                          ; $4052: $d5
	inc  b                                           ; $4053: $04
	add  a                                           ; $4054: $87
	ld   [hl], l                                     ; $4055: $75
	ld   d, d                                        ; $4056: $52
	ld   d, d                                        ; $4057: $52
	sub  d                                           ; $4058: $92
	sbc  a                                           ; $4059: $9f
	dec  c                                           ; $405a: $0d
	nop                                              ; $405b: $00
	ld   a, [bc]                                     ; $405c: $0a
	inc  e                                           ; $405d: $1c
	ld   bc, $0202                                   ; $405e: $01 $02 $02
	ld   bc, $9d61                                   ; $4061: $01 $61 $9d
	sbc  d                                           ; $4064: $9a
	ld   [hl], h                                     ; $4065: $74
	adc  h                                           ; $4066: $8c
	ld   l, c                                        ; $4067: $69
	and  c                                           ; $4068: $a1
	sub  [hl]                                        ; $4069: $96
	sbc  [hl]                                        ; $406a: $9e
	ld   l, e                                        ; $406b: $6b
	ld   a, h                                        ; $406c: $7c
	inc  b                                           ; $406d: $04
	inc  hl                                          ; $406e: $23
	inc  b                                           ; $406f: $04
	inc  l                                           ; $4070: $2c
	sbc  a                                           ; $4071: $9f
	dec  c                                           ; $4072: $0d

jr_055_4073:
	inc  bc                                          ; $4073: $03
	ccf                                              ; $4074: $3f
	ld   d, d                                        ; $4075: $52
	db   $e4                                         ; $4076: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4077: $cf
	ld   a, l                                        ; $4078: $7d
	ld   [bc], a                                     ; $4079: $02
	inc  [hl]                                        ; $407a: $34
	ld   a, c                                        ; $407b: $79
	inc  b                                           ; $407c: $04
	jr   z, jr_055_40d1                              ; $407d: $28 $52

	ld   [hl], h                                     ; $407f: $74
	ld   [bc], a                                     ; $4080: $02
	inc  [hl]                                        ; $4081: $34
	ld   h, e                                        ; $4082: $63
	ld   d, d                                        ; $4083: $52
	sbc  a                                           ; $4084: $9f
	dec  c                                           ; $4085: $0d
	dec  b                                           ; $4086: $05
	sbc  b                                           ; $4087: $98
	ld   a, b                                        ; $4088: $78
	ld   d, d                                        ; $4089: $52
	ld   [hl], l                                     ; $408a: $75

jr_055_408b:
	ld   h, a                                        ; $408b: $67
	ld   e, c                                        ; $408c: $59
	sub  a                                           ; $408d: $97
	sbc  a                                           ; $408e: $9f
	dec  c                                           ; $408f: $0d
	nop                                              ; $4090: $00
	ld   a, [bc]                                     ; $4091: $0a
	ld   b, $e0                                      ; $4092: $06 $e0
	db   $10                                         ; $4094: $10
	inc  e                                           ; $4095: $1c
	ld   bc, $0707                                   ; $4096: $01 $07 $07
	ld   bc, $ae15                                   ; $4099: $01 $15 $ae
	rst  $28                                         ; $409c: $ef
	sub  b                                           ; $409d: $90
	ld   d, b                                        ; $409e: $50
	sbc  c                                           ; $409f: $99
	and  c                                           ; $40a0: $a1
	ld   [hl], l                                     ; $40a1: $75
	ld   h, a                                        ; $40a2: $67
	ld   e, c                                        ; $40a3: $59
	sub  a                                           ; $40a4: $97
	dec  c                                           ; $40a5: $0d
	ld   [bc], a                                     ; $40a6: $02
	inc  [hl]                                        ; $40a7: $34
	ld   a, c                                        ; $40a8: $79
	inc  b                                           ; $40a9: $04
	jr   z, jr_055_40fe                              ; $40aa: $28 $52

	ld   [hl], h                                     ; $40ac: $74
	ld   [bc], a                                     ; $40ad: $02
	inc  [hl]                                        ; $40ae: $34
	ld   h, e                                        ; $40af: $63
	ld   d, d                                        ; $40b0: $52
	sbc  a                                           ; $40b1: $9f
	dec  c                                           ; $40b2: $0d
	nop                                              ; $40b3: $00
	ld   a, [bc]                                     ; $40b4: $0a
	ld   b, $e0                                      ; $40b5: $06 $e0
	db   $10                                         ; $40b7: $10
	inc  e                                           ; $40b8: $1c
	ld   bc, $0000                                   ; $40b9: $01 $00 $00
	ld   bc, $6803                                   ; $40bc: $01 $03 $68
	ld   a, l                                        ; $40bf: $7d
	sbc  [hl]                                        ; $40c0: $9e
	ld   h, c                                        ; $40c1: $61
	sbc  l                                           ; $40c2: $9d
	sbc  d                                           ; $40c3: $9a
	ld   l, l                                        ; $40c4: $6d
	db   $e3                                         ; $40c5: $e3
	xor  l                                           ; $40c6: $ad
	adc  $75                                         ; $40c7: $ce $75
	ld   h, a                                        ; $40c9: $67
	sbc  a                                           ; $40ca: $9f
	dec  c                                           ; $40cb: $0d
	nop                                              ; $40cc: $00
	ld   a, [bc]                                     ; $40cd: $0a
	add  hl, de                                      ; $40ce: $19
	dec  b                                           ; $40cf: $05
	inc  bc                                          ; $40d0: $03

jr_055_40d1:
	ld   [bc], a                                     ; $40d1: $02
	inc  [hl]                                        ; $40d2: $34
	ld   a, c                                        ; $40d3: $79
	inc  b                                           ; $40d4: $04
	jr   z, jr_055_4134                              ; $40d5: $28 $5d

	nop                                              ; $40d7: $00
	nop                                              ; $40d8: $00
	ld   l, l                                        ; $40d9: $6d
	ld   a, b                                        ; $40da: $78
	ld   a, c                                        ; $40db: $79
	inc  b                                           ; $40dc: $04
	jr   z, jr_055_413c                              ; $40dd: $28 $5d

	nop                                              ; $40df: $00
	ld   bc, $d504                                   ; $40e0: $01 $04 $d5
	inc  b                                           ; $40e3: $04
	add  a                                           ; $40e4: $87
	add  [hl]                                        ; $40e5: $86
	inc  b                                           ; $40e6: $04
	ld   b, l                                        ; $40e7: $45
	sbc  d                                           ; $40e8: $9a
	sbc  c                                           ; $40e9: $99
	nop                                              ; $40ea: $00
	ld   [bc], a                                     ; $40eb: $02
	rlca                                             ; $40ec: $07
	cp   d                                           ; $40ed: $ba
	ld   de, $0302                                   ; $40ee: $11 $02 $03
	ld   bc, $2000                                   ; $40f1: $01 $00 $20
	nop                                              ; $40f4: $00
	rlca                                             ; $40f5: $07
	add  d                                           ; $40f6: $82
	ld   de, $0302                                   ; $40f7: $11 $02 $03
	ld   bc, $2001                                   ; $40fa: $01 $01 $20
	nop                                              ; $40fd: $00

jr_055_40fe:
	rlca                                             ; $40fe: $07
	ld   [hl-], a                                    ; $40ff: $32
	ld   de, $0302                                   ; $4100: $11 $02 $03
	ld   bc, $2002                                   ; $4103: $01 $02 $20
	nop                                              ; $4106: $00
	ld   b, $fb                                      ; $4107: $06 $fb
	ld   de, $000f                                   ; $4109: $11 $0f $00
	ld   bc, $6101                                   ; $410c: $01 $01 $61
	sbc  l                                           ; $410f: $9d
	sbc  d                                           ; $4110: $9a
	ld   l, l                                        ; $4111: $6d
	inc  b                                           ; $4112: $04
	sub  d                                           ; $4113: $92
	ld   a, l                                        ; $4114: $7d
	sbc  [hl]                                        ; $4115: $9e
	inc  b                                           ; $4116: $04
	push de                                          ; $4117: $d5
	inc  b                                           ; $4118: $04
	add  a                                           ; $4119: $87
	add  [hl]                                        ; $411a: $86
	sbc  a                                           ; $411b: $9f
	dec  c                                           ; $411c: $0d
	nop                                              ; $411d: $00
	ld   a, [bc]                                     ; $411e: $0a
	inc  e                                           ; $411f: $1c
	ld   bc, $0101                                   ; $4120: $01 $01 $01
	ld   bc, $546b                                   ; $4123: $01 $6b $54
	ld   l, e                                        ; $4126: $6b
	ld   d, h                                        ; $4127: $54
	sbc  [hl]                                        ; $4128: $9e
	ld   h, c                                        ; $4129: $61
	sbc  l                                           ; $412a: $9d
	sbc  d                                           ; $412b: $9a
	ld   l, l                                        ; $412c: $6d
	inc  b                                           ; $412d: $04
	sub  d                                           ; $412e: $92
	ld   a, l                                        ; $412f: $7d
	dec  c                                           ; $4130: $0d
	inc  b                                           ; $4131: $04
	push de                                          ; $4132: $d5
	inc  b                                           ; $4133: $04

jr_055_4134:
	add  a                                           ; $4134: $87
	ld   [hl], l                                     ; $4135: $75
	ld   h, a                                        ; $4136: $67
	sbc  a                                           ; $4137: $9f
	dec  c                                           ; $4138: $0d
	nop                                              ; $4139: $00
	dec  b                                           ; $413a: $05
	ld   b, b                                        ; $413b: $40

jr_055_413c:
	rst  $38                                         ; $413c: $ff
	inc  bc                                          ; $413d: $03
	rst  $38                                         ; $413e: $ff
	ld   bc, $2801                                   ; $413f: $01 $01 $28
	nop                                              ; $4142: $00
	ld   bc, $7c6b                                   ; $4143: $01 $6b $7c
	inc  bc                                          ; $4146: $03
	cp   $03                                         ; $4147: $fe $03
	add  [hl]                                        ; $4149: $86
	ld   [hl], l                                     ; $414a: $75
	ld   h, a                                        ; $414b: $67
	sub  [hl]                                        ; $414c: $96
	sbc  a                                           ; $414d: $9f
	dec  c                                           ; $414e: $0d
	nop                                              ; $414f: $00
	ld   a, [bc]                                     ; $4150: $0a
	dec  c                                           ; $4151: $0d
	nop                                              ; $4152: $00
	nop                                              ; $4153: $00
	rrca                                             ; $4154: $0f
	nop                                              ; $4155: $00
	ld   bc, $3706                                   ; $4156: $01 $06 $37
	ld   [de], a                                     ; $4159: $12
	rrca                                             ; $415a: $0f
	nop                                              ; $415b: $00
	ld   bc, $e301                                   ; $415c: $01 $01 $e3
	xor  l                                           ; $415f: $ad
	adc  $7d                                         ; $4160: $ce $7d
	ld   l, l                                        ; $4162: $6d
	ld   a, b                                        ; $4163: $78
	add  [hl]                                        ; $4164: $86
	sbc  a                                           ; $4165: $9f
	dec  c                                           ; $4166: $0d
	nop                                              ; $4167: $00
	ld   a, [bc]                                     ; $4168: $0a
	inc  e                                           ; $4169: $1c
	ld   bc, $0202                                   ; $416a: $01 $02 $02
	ld   bc, $5a6f                                   ; $416d: $01 $6f $5a
	ld   d, d                                        ; $4170: $52
	adc  h                                           ; $4171: $8c
	ld   h, a                                        ; $4172: $67
	sub  [hl]                                        ; $4173: $96
	sbc  a                                           ; $4174: $9f
	dec  c                                           ; $4175: $0d
	ld   h, c                                        ; $4176: $61
	sbc  l                                           ; $4177: $9d
	sbc  d                                           ; $4178: $9a
	ld   [hl], h                                     ; $4179: $74
	adc  h                                           ; $417a: $8c
	ld   h, a                                        ; $417b: $67
	ld   e, c                                        ; $417c: $59
	sub  a                                           ; $417d: $97
	sbc  [hl]                                        ; $417e: $9e
	inc  b                                           ; $417f: $04
	push de                                          ; $4180: $d5
	inc  b                                           ; $4181: $04
	add  a                                           ; $4182: $87
	ld   [hl], l                                     ; $4183: $75
	ld   h, a                                        ; $4184: $67
	sbc  a                                           ; $4185: $9f
	dec  c                                           ; $4186: $0d
	nop                                              ; $4187: $00
	ld   a, [bc]                                     ; $4188: $0a
	dec  c                                           ; $4189: $0d
	nop                                              ; $418a: $00
	nop                                              ; $418b: $00
	rrca                                             ; $418c: $0f
	nop                                              ; $418d: $00
	ld   bc, $3706                                   ; $418e: $01 $06 $37
	ld   [de], a                                     ; $4191: $12
	rrca                                             ; $4192: $0f
	nop                                              ; $4193: $00
	ld   bc, $6101                                   ; $4194: $01 $01 $61
	sbc  l                                           ; $4197: $9d
	sbc  d                                           ; $4198: $9a
	ld   l, l                                        ; $4199: $6d
	db   $e3                                         ; $419a: $e3
	xor  l                                           ; $419b: $ad
	adc  $f9                                         ; $419c: $ce $f9
	dec  c                                           ; $419e: $0d
	ld   [bc], a                                     ; $419f: $02
	inc  [hl]                                        ; $41a0: $34
	ld   [hl], l                                     ; $41a1: $75
	ld   d, d                                        ; $41a2: $52
	ld   d, d                                        ; $41a3: $52
	ld   e, c                                        ; $41a4: $59
	rst  $38                                         ; $41a5: $ff
	rst  $38                                         ; $41a6: $ff
	dec  c                                           ; $41a7: $0d
	nop                                              ; $41a8: $00
	ld   a, [bc]                                     ; $41a9: $0a
	inc  e                                           ; $41aa: $1c
	ld   bc, $0202                                   ; $41ab: $01 $02 $02
	ld   bc, $5a6f                                   ; $41ae: $01 $6f $5a
	ld   d, d                                        ; $41b1: $52
	adc  h                                           ; $41b2: $8c
	ld   h, a                                        ; $41b3: $67
	sub  [hl]                                        ; $41b4: $96
	sbc  a                                           ; $41b5: $9f
	dec  c                                           ; $41b6: $0d
	ld   h, c                                        ; $41b7: $61
	sbc  l                                           ; $41b8: $9d
	sbc  d                                           ; $41b9: $9a
	ld   [hl], h                                     ; $41ba: $74
	adc  h                                           ; $41bb: $8c
	ld   h, a                                        ; $41bc: $67
	ld   e, c                                        ; $41bd: $59
	sub  a                                           ; $41be: $97
	sbc  [hl]                                        ; $41bf: $9e
	inc  b                                           ; $41c0: $04
	push de                                          ; $41c1: $d5
	inc  b                                           ; $41c2: $04
	add  a                                           ; $41c3: $87
	ld   [hl], l                                     ; $41c4: $75
	ld   h, a                                        ; $41c5: $67
	sbc  a                                           ; $41c6: $9f
	dec  c                                           ; $41c7: $0d
	nop                                              ; $41c8: $00
	ld   a, [bc]                                     ; $41c9: $0a
	dec  c                                           ; $41ca: $0d
	nop                                              ; $41cb: $00
	nop                                              ; $41cc: $00
	rrca                                             ; $41cd: $0f
	nop                                              ; $41ce: $00
	ld   bc, $3706                                   ; $41cf: $01 $06 $37
	ld   [de], a                                     ; $41d2: $12
	inc  e                                           ; $41d3: $1c
	ld   bc, $0707                                   ; $41d4: $01 $07 $07
	ld   bc, $9d61                                   ; $41d7: $01 $61 $9d
	sbc  d                                           ; $41da: $9a
	ld   l, l                                        ; $41db: $6d
	inc  b                                           ; $41dc: $04
	sub  d                                           ; $41dd: $92
	ld   a, l                                        ; $41de: $7d
	inc  b                                           ; $41df: $04
	push de                                          ; $41e0: $d5
	inc  b                                           ; $41e1: $04
	add  a                                           ; $41e2: $87
	ld   [hl], l                                     ; $41e3: $75
	ld   h, a                                        ; $41e4: $67
	sbc  a                                           ; $41e5: $9f
	dec  c                                           ; $41e6: $0d
	inc  bc                                          ; $41e7: $03
	ld   [hl], b                                     ; $41e8: $70
	ld   e, l                                        ; $41e9: $5d
	sub  d                                           ; $41ea: $92
	sub  a                                           ; $41eb: $97
	ld   a, b                                        ; $41ec: $78
	ld   d, d                                        ; $41ed: $52
	halt                                             ; $41ee: $76
	sbc  [hl]                                        ; $41ef: $9e
	inc  b                                           ; $41f0: $04
	ld   b, d                                        ; $41f1: $42
	sbc  c                                           ; $41f2: $99
	inc  bc                                          ; $41f3: $03
	ld   l, a                                        ; $41f4: $6f
	ld   [bc], a                                     ; $41f5: $02
	xor  c                                           ; $41f6: $a9
	ld   a, c                                        ; $41f7: $79
	dec  c                                           ; $41f8: $0d
	ld   a, b                                        ; $41f9: $78
	ld   [hl], c                                     ; $41fa: $71
	ld   [hl], h                                     ; $41fb: $74
	ld   h, l                                        ; $41fc: $65
	adc  h                                           ; $41fd: $8c
	ld   d, d                                        ; $41fe: $52
	adc  h                                           ; $41ff: $8c
	ld   h, a                                        ; $4200: $67
	sub  [hl]                                        ; $4201: $96
	sbc  a                                           ; $4202: $9f
	dec  c                                           ; $4203: $0d
	nop                                              ; $4204: $00
	ld   a, [bc]                                     ; $4205: $0a
	dec  c                                           ; $4206: $0d
	nop                                              ; $4207: $00
	nop                                              ; $4208: $00
	rrca                                             ; $4209: $0f
	nop                                              ; $420a: $00
	ld   bc, $3706                                   ; $420b: $01 $06 $37
	ld   [de], a                                     ; $420e: $12
	rlca                                             ; $420f: $07
	ld   h, e                                        ; $4210: $63
	ld   [de], a                                     ; $4211: $12
	inc  bc                                          ; $4212: $03
	rst  $38                                         ; $4213: $ff
	ld   bc, $2301                                   ; $4214: $01 $01 $23
	nop                                              ; $4217: $00
	inc  c                                           ; $4218: $0c
	dec  bc                                          ; $4219: $0b
	inc  e                                           ; $421a: $1c
	ld   bc, $0101                                   ; $421b: $01 $01 $01
	ld   bc, $5483                                   ; $421e: $01 $83 $54
	sbc  [hl]                                        ; $4221: $9e
	inc  b                                           ; $4222: $04
	ld   d, $02                                      ; $4223: $16 $02
	xor  b                                           ; $4225: $a8
	inc  b                                           ; $4226: $04
	sub  l                                           ; $4227: $95
	ld   [bc], a                                     ; $4228: $02
	ld   hl, $0d90                                   ; $4229: $21 $90 $0d
	ld   b, $19                                      ; $422c: $06 $19
	ld   [hl], e                                     ; $422e: $73
	ld   e, e                                        ; $422f: $5b
	adc  h                                           ; $4230: $8c
	ld   h, l                                        ; $4231: $65
	ld   l, l                                        ; $4232: $6d
	ld   a, e                                        ; $4233: $7b
	sbc  a                                           ; $4234: $9f
	dec  c                                           ; $4235: $0d
	nop                                              ; $4236: $00
	ld   a, [bc]                                     ; $4237: $0a
	ld   b, $8a                                      ; $4238: $06 $8a
	ld   [de], a                                     ; $423a: $12
	inc  c                                           ; $423b: $0c
	dec  bc                                          ; $423c: $0b
	inc  e                                           ; $423d: $1c
	ld   bc, $0404                                   ; $423e: $01 $04 $04
	ld   bc, $5483                                   ; $4241: $01 $83 $54
	rst  $38                                         ; $4244: $ff
	rst  $38                                         ; $4245: $ff
	sub  d                                           ; $4246: $92
	ld   [hl], c                                     ; $4247: $71
	halt                                             ; $4248: $76
	inc  b                                           ; $4249: $04
	ld   d, $02                                      ; $424a: $16 $02
	xor  b                                           ; $424c: $a8
	inc  b                                           ; $424d: $04
	sub  l                                           ; $424e: $95
	ld   [bc], a                                     ; $424f: $02
	ld   hl, $0d90                                   ; $4250: $21 $90 $0d
	ld   b, $19                                      ; $4253: $06 $19
	ld   [hl], e                                     ; $4255: $73
	ld   e, e                                        ; $4256: $5b
	adc  h                                           ; $4257: $8c
	ld   h, l                                        ; $4258: $65
	ld   l, l                                        ; $4259: $6d
	ld   a, e                                        ; $425a: $7b
	sbc  a                                           ; $425b: $9f
	dec  c                                           ; $425c: $0d
	nop                                              ; $425d: $00
	ld   a, [bc]                                     ; $425e: $0a
	ld   b, $e8                                      ; $425f: $06 $e8
	inc  de                                          ; $4261: $13
	rlca                                             ; $4262: $07
	or   c                                           ; $4263: $b1
	ld   [de], a                                     ; $4264: $12
	inc  bc                                          ; $4265: $03
	rst  $38                                         ; $4266: $ff
	ld   bc, $200a                                   ; $4267: $01 $0a $20
	nop                                              ; $426a: $00
	rlca                                             ; $426b: $07
	dec  l                                           ; $426c: $2d
	inc  de                                          ; $426d: $13
	inc  bc                                          ; $426e: $03
	rst  $38                                         ; $426f: $ff
	ld   bc, $2506                                   ; $4270: $01 $06 $25
	inc  bc                                          ; $4273: $03
	rst  $38                                         ; $4274: $ff
	ld   bc, $2309                                   ; $4275: $01 $09 $23
	inc  e                                           ; $4278: $1c
	nop                                              ; $4279: $00
	rlca                                             ; $427a: $07
	sub  l                                           ; $427b: $95
	inc  de                                          ; $427c: $13
	inc  bc                                          ; $427d: $03
	rst  $38                                         ; $427e: $ff
	ld   bc, $2502                                   ; $427f: $01 $02 $25
	inc  bc                                          ; $4282: $03
	rst  $38                                         ; $4283: $ff
	ld   bc, $2305                                   ; $4284: $01 $05 $23
	inc  e                                           ; $4287: $1c
	nop                                              ; $4288: $00
	dec  e                                           ; $4289: $1d
	ld   b, b                                        ; $428a: $40
	ld   de, $1103                                   ; $428b: $11 $03 $11
	ld   bc, $2803                                   ; $428e: $01 $03 $28
	nop                                              ; $4291: $00
	ld   bc, $0008                                   ; $4292: $01 $08 $00
	ld   h, e                                        ; $4295: $63
	and  c                                           ; $4296: $a1
	ld   a, h                                        ; $4297: $7c
	ld   e, b                                        ; $4298: $58
	ld   e, c                                        ; $4299: $59
	ld   h, b                                        ; $429a: $60
	ld   [hl], l                                     ; $429b: $75
	dec  c                                           ; $429c: $0d
	ld   e, e                                        ; $429d: $5b
	sbc  d                                           ; $429e: $9a
	ld   d, d                                        ; $429f: $52
	ld   a, c                                        ; $42a0: $79
	ld   b, $19                                      ; $42a1: $06 $19
	ld   [hl], e                                     ; $42a3: $73
	ld   e, e                                        ; $42a4: $5b
	adc  h                                           ; $42a5: $8c
	ld   h, l                                        ; $42a6: $65
	ld   l, l                                        ; $42a7: $6d
	sbc  a                                           ; $42a8: $9f
	dec  c                                           ; $42a9: $0d
	ld   d, b                                        ; $42aa: $50
	sbc  b                                           ; $42ab: $98
	ld   e, d                                        ; $42ac: $5a
	halt                                             ; $42ad: $76
	ld   d, h                                        ; $42ae: $54
	ld   h, d                                        ; $42af: $62
	ld   h, h                                        ; $42b0: $64
	ld   d, d                                        ; $42b1: $52
	adc  h                                           ; $42b2: $8c
	ld   h, l                                        ; $42b3: $65
	ld   l, l                                        ; $42b4: $6d
	sbc  a                                           ; $42b5: $9f
	dec  c                                           ; $42b6: $0d
	nop                                              ; $42b7: $00
	ld   a, [bc]                                     ; $42b8: $0a
	ld   d, $19                                      ; $42b9: $16 $19
	dec  e                                           ; $42bb: $1d
	ld   b, b                                        ; $42bc: $40
	ld   de, $1103                                   ; $42bd: $11 $03 $11
	ld   bc, $2803                                   ; $42c0: $01 $03 $28
	nop                                              ; $42c3: $00
	ld   bc, $0458                                   ; $42c4: $01 $58 $04
	ld   a, e                                        ; $42c7: $7b
	sbc  d                                           ; $42c8: $9a
	ld   h, e                                        ; $42c9: $63
	adc  h                                           ; $42ca: $8c
	ld   [hl], l                                     ; $42cb: $75
	ld   h, l                                        ; $42cc: $65
	ld   l, l                                        ; $42cd: $6d
	sbc  a                                           ; $42ce: $9f
	dec  c                                           ; $42cf: $0d
	ld   [bc], a                                     ; $42d0: $02
	and  l                                           ; $42d1: $a5
	inc  b                                           ; $42d2: $04
	xor  d                                           ; $42d3: $aa
	ld   a, l                                        ; $42d4: $7d
	sbc  [hl]                                        ; $42d5: $9e
	sub  h                                           ; $42d6: $94
	ld   [hl], c                                     ; $42d7: $71
	ld   e, l                                        ; $42d8: $5d
	sbc  b                                           ; $42d9: $98
	inc  bc                                          ; $42da: $03
	and  a                                           ; $42db: $a7
	and  c                                           ; $42dc: $a1
	ld   [hl], l                                     ; $42dd: $75
	dec  c                                           ; $42de: $0d
	nop                                              ; $42df: $00
	dec  b                                           ; $42e0: $05
	add  b                                           ; $42e1: $80
	ld   c, $01                                      ; $42e2: $0e $01
	ld   bc, $0100                                   ; $42e4: $01 $00 $01
	ld   e, l                                        ; $42e7: $5d
	ld   l, [hl]                                     ; $42e8: $6e
	ld   h, e                                        ; $42e9: $63
	ld   d, d                                        ; $42ea: $52
	ld   a, e                                        ; $42eb: $7b
	sbc  a                                           ; $42ec: $9f
	dec  c                                           ; $42ed: $0d
	nop                                              ; $42ee: $00
	ld   a, [bc]                                     ; $42ef: $0a
	ld   bc, $9258                                   ; $42f0: $01 $58 $92
	ld   h, a                                        ; $42f3: $67
	adc  l                                           ; $42f4: $8d
	ld   a, b                                        ; $42f5: $78
	ld   h, e                                        ; $42f6: $63
	ld   d, d                                        ; $42f7: $52
	sbc  a                                           ; $42f8: $9f
	dec  c                                           ; $42f9: $0d
	ld   [$6300], sp                                 ; $42fa: $08 $00 $63
	and  c                                           ; $42fd: $a1
	sbc  a                                           ; $42fe: $9f
	dec  c                                           ; $42ff: $0d
	nop                                              ; $4300: $00
	ld   a, [bc]                                     ; $4301: $0a
	add  hl, hl                                      ; $4302: $29
	nop                                              ; $4303: $00
	nop                                              ; $4304: $00
	ld   bc, $9850                                   ; $4305: $01 $50 $98
	ld   e, d                                        ; $4308: $5a
	halt                                             ; $4309: $76
	ld   d, h                                        ; $430a: $54
	ld   h, d                                        ; $430b: $62
	ld   h, h                                        ; $430c: $64
	ld   d, d                                        ; $430d: $52
	adc  h                                           ; $430e: $8c
	ld   h, l                                        ; $430f: $65
	ld   l, l                                        ; $4310: $6d
	sbc  a                                           ; $4311: $9f
	dec  c                                           ; $4312: $0d
	inc  bc                                          ; $4313: $03
	ld   e, e                                        ; $4314: $5b
	ld   e, c                                        ; $4315: $59
	sbc  b                                           ; $4316: $98
	adc  h                                           ; $4317: $8c
	ld   h, l                                        ; $4318: $65
	ld   l, l                                        ; $4319: $6d
	sbc  a                                           ; $431a: $9f
	dec  c                                           ; $431b: $0d
	nop                                              ; $431c: $00
	ld   a, [bc]                                     ; $431d: $0a
	dec  e                                           ; $431e: $1d
	ld   b, b                                        ; $431f: $40
	ld   de, $1103                                   ; $4320: $11 $03 $11
	ld   bc, $2802                                   ; $4323: $01 $02 $28
	nop                                              ; $4326: $00
	ld   bc, $a502                                   ; $4327: $01 $02 $a5
	inc  b                                           ; $432a: $04
	xor  d                                           ; $432b: $aa
	ld   a, l                                        ; $432c: $7d
	sbc  [hl]                                        ; $432d: $9e
	ld   e, b                                        ; $432e: $58
	inc  b                                           ; $432f: $04
	ld   a, e                                        ; $4330: $7b
	sbc  d                                           ; $4331: $9a
	ld   h, e                                        ; $4332: $63
	adc  h                                           ; $4333: $8c
	ld   [hl], l                                     ; $4334: $75
	ld   h, l                                        ; $4335: $65
	ld   l, l                                        ; $4336: $6d
	sbc  a                                           ; $4337: $9f
	dec  c                                           ; $4338: $0d
	sub  h                                           ; $4339: $94
	ld   [hl], c                                     ; $433a: $71
	ld   e, l                                        ; $433b: $5d
	sbc  b                                           ; $433c: $98
	inc  bc                                          ; $433d: $03
	and  a                                           ; $433e: $a7
	and  c                                           ; $433f: $a1
	ld   [hl], l                                     ; $4340: $75
	ld   e, l                                        ; $4341: $5d
	ld   l, [hl]                                     ; $4342: $6e
	ld   h, e                                        ; $4343: $63
	ld   d, d                                        ; $4344: $52
	ld   a, e                                        ; $4345: $7b
	sbc  a                                           ; $4346: $9f
	dec  c                                           ; $4347: $0d
	nop                                              ; $4348: $00
	ld   a, [bc]                                     ; $4349: $0a
	dec  b                                           ; $434a: $05
	add  b                                           ; $434b: $80
	ld   c, $01                                      ; $434c: $0e $01
	ld   bc, $0100                                   ; $434e: $01 $00 $01
	ld   e, b                                        ; $4351: $58
	sub  d                                           ; $4352: $92
	ld   h, a                                        ; $4353: $67
	adc  l                                           ; $4354: $8d
	ld   a, b                                        ; $4355: $78
	ld   h, e                                        ; $4356: $63
	ld   d, d                                        ; $4357: $52
	sbc  a                                           ; $4358: $9f
	dec  c                                           ; $4359: $0d
	ld   [$6300], sp                                 ; $435a: $08 $00 $63
	and  c                                           ; $435d: $a1
	sbc  a                                           ; $435e: $9f
	dec  c                                           ; $435f: $0d
	nop                                              ; $4360: $00
	ld   a, [bc]                                     ; $4361: $0a
	dec  c                                           ; $4362: $0d
	nop                                              ; $4363: $00
	nop                                              ; $4364: $00
	rrca                                             ; $4365: $0f
	nop                                              ; $4366: $00
	ld   bc, $1e09                                   ; $4367: $01 $09 $1e
	add  hl, hl                                      ; $436a: $29
	nop                                              ; $436b: $00
	nop                                              ; $436c: $00
	inc  e                                           ; $436d: $1c
	ld   bc, $0000                                   ; $436e: $01 $00 $00
	dec  e                                           ; $4371: $1d
	ld   b, b                                        ; $4372: $40
	ld   de, $1103                                   ; $4373: $11 $03 $11
	ld   bc, $2801                                   ; $4376: $01 $01 $28
	nop                                              ; $4379: $00
	ld   bc, $a502                                   ; $437a: $01 $02 $a5
	inc  b                                           ; $437d: $04
	xor  d                                           ; $437e: $aa
	ld   a, l                                        ; $437f: $7d
	sbc  [hl]                                        ; $4380: $9e
	ld   e, b                                        ; $4381: $58
	inc  b                                           ; $4382: $04
	ld   a, e                                        ; $4383: $7b
	sbc  d                                           ; $4384: $9a
	ld   h, e                                        ; $4385: $63
	adc  h                                           ; $4386: $8c
	ld   [hl], l                                     ; $4387: $75
	ld   h, l                                        ; $4388: $65
	ld   l, l                                        ; $4389: $6d
	sbc  a                                           ; $438a: $9f
	dec  c                                           ; $438b: $0d
	sub  h                                           ; $438c: $94
	ld   [hl], c                                     ; $438d: $71
	ld   e, l                                        ; $438e: $5d
	sbc  b                                           ; $438f: $98
	inc  bc                                          ; $4390: $03
	and  a                                           ; $4391: $a7
	and  c                                           ; $4392: $a1
	ld   [hl], l                                     ; $4393: $75
	ld   e, l                                        ; $4394: $5d
	ld   l, [hl]                                     ; $4395: $6e
	ld   h, e                                        ; $4396: $63
	ld   d, d                                        ; $4397: $52
	ld   a, e                                        ; $4398: $7b
	sbc  a                                           ; $4399: $9f
	dec  c                                           ; $439a: $0d
	nop                                              ; $439b: $00
	ld   a, [bc]                                     ; $439c: $0a
	dec  b                                           ; $439d: $05
	add  b                                           ; $439e: $80
	ld   c, $01                                      ; $439f: $0e $01
	ld   bc, $0100                                   ; $43a1: $01 $00 $01
	ld   e, b                                        ; $43a4: $58
	sub  d                                           ; $43a5: $92
	ld   h, a                                        ; $43a6: $67
	adc  l                                           ; $43a7: $8d
	ld   a, b                                        ; $43a8: $78
	ld   h, e                                        ; $43a9: $63
	ld   d, d                                        ; $43aa: $52
	sbc  a                                           ; $43ab: $9f
	dec  c                                           ; $43ac: $0d
	ld   [$6300], sp                                 ; $43ad: $08 $00 $63
	and  c                                           ; $43b0: $a1
	sbc  a                                           ; $43b1: $9f
	dec  c                                           ; $43b2: $0d
	nop                                              ; $43b3: $00
	ld   a, [bc]                                     ; $43b4: $0a
	dec  c                                           ; $43b5: $0d
	nop                                              ; $43b6: $00
	nop                                              ; $43b7: $00
	rrca                                             ; $43b8: $0f
	nop                                              ; $43b9: $00
	ld   bc, $1e09                                   ; $43ba: $01 $09 $1e
	add  hl, hl                                      ; $43bd: $29
	nop                                              ; $43be: $00
	nop                                              ; $43bf: $00
	inc  e                                           ; $43c0: $1c
	ld   bc, $0707                                   ; $43c1: $01 $07 $07
	dec  e                                           ; $43c4: $1d
	ld   b, b                                        ; $43c5: $40
	ld   de, $1103                                   ; $43c6: $11 $03 $11
	ld   bc, $2902                                   ; $43c9: $01 $02 $29
	nop                                              ; $43cc: $00
	ld   bc, $ffff                                   ; $43cd: $01 $ff $ff
	sub  b                                           ; $43d0: $90
	ld   h, l                                        ; $43d1: $65
	ld   e, c                                        ; $43d2: $59
	ld   h, l                                        ; $43d3: $65
	ld   l, l                                        ; $43d4: $6d
	sub  a                                           ; $43d5: $97
	sbc  [hl]                                        ; $43d6: $9e
	dec  c                                           ; $43d7: $0d
	add  b                                           ; $43d8: $80
	halt                                             ; $43d9: $76
	sbc  b                                           ; $43da: $98
	ld   [hl], l                                     ; $43db: $75
	sub  d                                           ; $43dc: $92
	ld   [hl], c                                     ; $43dd: $71
	ld   l, l                                        ; $43de: $6d
	inc  b                                           ; $43df: $04
	ld   a, b                                        ; $43e0: $78
	ld   e, d                                        ; $43e1: $5a
	dec  c                                           ; $43e2: $0d
	inc  bc                                          ; $43e3: $03
	ld   [hl], b                                     ; $43e4: $70
	ld   e, c                                        ; $43e5: $59
	ld   [hl], c                                     ; $43e6: $71
	ld   l, l                                        ; $43e7: $6d
	ld   e, c                                        ; $43e8: $59
	sub  b                                           ; $43e9: $90
	ld   h, l                                        ; $43ea: $65
	sbc  d                                           ; $43eb: $9a
	adc  h                                           ; $43ec: $8c
	ld   l, c                                        ; $43ed: $69
	and  c                                           ; $43ee: $a1
	ld   e, d                                        ; $43ef: $5a
	rst  $38                                         ; $43f0: $ff
	rst  $38                                         ; $43f1: $ff
	dec  c                                           ; $43f2: $0d
	nop                                              ; $43f3: $00
	ld   a, [bc]                                     ; $43f4: $0a
	ld   bc, $5477                                   ; $43f5: $01 $77 $54
	sub  b                                           ; $43f8: $90
	sbc  [hl]                                        ; $43f9: $9e
	ld   e, b                                        ; $43fa: $58
	inc  b                                           ; $43fb: $04
	ld   a, e                                        ; $43fc: $7b
	sbc  d                                           ; $43fd: $9a
	ld   h, e                                        ; $43fe: $63
	adc  h                                           ; $43ff: $8c
	ld   [hl], l                                     ; $4400: $75
	ld   h, l                                        ; $4401: $65
	ld   l, l                                        ; $4402: $6d
	sbc  a                                           ; $4403: $9f
	dec  c                                           ; $4404: $0d
	nop                                              ; $4405: $00
	ld   a, [bc]                                     ; $4406: $0a
	dec  b                                           ; $4407: $05
	add  b                                           ; $4408: $80
	ld   c, $01                                      ; $4409: $0e $01
	ld   bc, $0d00                                   ; $440b: $01 $00 $0d
	nop                                              ; $440e: $00
	nop                                              ; $440f: $00
	rrca                                             ; $4410: $0f
	nop                                              ; $4411: $00
	ld   bc, $1e09                                   ; $4412: $01 $09 $1e
	add  hl, hl                                      ; $4415: $29
	nop                                              ; $4416: $00
	nop                                              ; $4417: $00
	nop                                              ; $4418: $00
	inc  bc                                          ; $4419: $03
	ld   [de], a                                     ; $441a: $12
	ld   bc, $25a0                                   ; $441b: $01 $a0 $25
	inc  b                                           ; $441e: $04
	add  b                                           ; $441f: $80
	dec  e                                           ; $4420: $1d
	ld   bc, $2000                                   ; $4421: $01 $00 $20
	inc  e                                           ; $4424: $1c
	inc  bc                                          ; $4425: $03
	ld   c, a                                        ; $4426: $4f
	ld   [bc], a                                     ; $4427: $02
	nop                                              ; $4428: $00
	inc  bc                                          ; $4429: $03
	ld   c, c                                        ; $442a: $49
	add  hl, hl                                      ; $442b: $29
	add  hl, hl                                      ; $442c: $29
	ld   bc, $2201                                   ; $442d: $01 $01 $22
	inc  e                                           ; $4430: $1c
	nop                                              ; $4431: $00
	ld   c, $01                                      ; $4432: $0e $01
	ld   [bc], a                                     ; $4434: $02
	ld   bc, $5083                                   ; $4435: $01 $83 $50
	db   $fc                                         ; $4438: $fc
	db   $fc                                         ; $4439: $fc
	db   $fc                                         ; $443a: $fc
	sbc  a                                           ; $443b: $9f
	sub  [hl]                                        ; $443c: $96
	ld   e, l                                        ; $443d: $5d
	inc  b                                           ; $443e: $04
	ld   b, d                                        ; $443f: $42
	ld   l, l                                        ; $4440: $6d
	sbc  a                                           ; $4441: $9f
	dec  c                                           ; $4442: $0d
	ld   h, e                                        ; $4443: $63
	ld   d, b                                        ; $4444: $50
	sbc  [hl]                                        ; $4445: $9e
	ld   [bc], a                                     ; $4446: $02
	and  l                                           ; $4447: $a5
	inc  b                                           ; $4448: $04
	xor  d                                           ; $4449: $aa
	sub  b                                           ; $444a: $90
	ld   e, d                                        ; $444b: $5a
	and  c                                           ; $444c: $a1
	ld   a, [hl]                                     ; $444d: $7e
	sbc  c                                           ; $444e: $99
	ld   l, h                                        ; $444f: $6c
	ld   a, [$000d]                                  ; $4450: $fa $0d $00
	ld   a, [bc]                                     ; $4453: $0a
	inc  d                                           ; $4454: $14
	ld   b, $01                                      ; $4455: $06 $01
	rrca                                             ; $4457: $0f
	ld   [bc], a                                     ; $4458: $02
	nop                                              ; $4459: $00
	ld   bc, $0008                                   ; $445a: $01 $08 $00
	ld   h, e                                        ; $445d: $63
	and  c                                           ; $445e: $a1
	sbc  a                                           ; $445f: $9f
	dec  c                                           ; $4460: $0d
	ld   l, a                                        ; $4461: $6f
	sub  l                                           ; $4462: $95
	ld   [hl], c                                     ; $4463: $71
	halt                                             ; $4464: $76
	sub  [hl]                                        ; $4465: $96
	sbc  e                                           ; $4466: $9b
	ld   h, l                                        ; $4467: $65
	ld   d, d                                        ; $4468: $52
	ld   e, c                                        ; $4469: $59
	ld   h, l                                        ; $446a: $65
	sub  a                                           ; $446b: $97
	ld   sp, hl                                      ; $446c: $f9
	dec  c                                           ; $446d: $0d
	nop                                              ; $446e: $00
	ld   a, [bc]                                     ; $446f: $0a
	rrca                                             ; $4470: $0f
	nop                                              ; $4471: $00
	ld   bc, $0a14                                   ; $4472: $01 $14 $0a
	ld   bc, $7d01                                   ; $4475: $01 $01 $7d
	ld   d, d                                        ; $4478: $52
	sbc  [hl]                                        ; $4479: $9e
	ld   [hl], a                                     ; $447a: $77
	ld   d, h                                        ; $447b: $54
	ld   l, h                                        ; $447c: $6c
	sbc  a                                           ; $447d: $9f
	dec  c                                           ; $447e: $0d
	nop                                              ; $447f: $00
	ld   a, [bc]                                     ; $4480: $0a
	inc  e                                           ; $4481: $1c
	ld   [bc], a                                     ; $4482: $02
	ld   bc, $0101                                   ; $4483: $01 $01 $01
	ld   e, b                                        ; $4486: $58
	ld   a, l                                        ; $4487: $7d
	sub  [hl]                                        ; $4488: $96
	ld   d, h                                        ; $4489: $54
	sbc  [hl]                                        ; $448a: $9e
	ld   [$6300], sp                                 ; $448b: $08 $00 $63
	and  c                                           ; $448e: $a1
	sbc  a                                           ; $448f: $9f
	dec  c                                           ; $4490: $0d
	nop                                              ; $4491: $00
	ld   a, [bc]                                     ; $4492: $0a
	rrca                                             ; $4493: $0f
	nop                                              ; $4494: $00
	ld   bc, $5801                                   ; $4495: $01 $01 $58
	ld   a, l                                        ; $4498: $7d
	sub  [hl]                                        ; $4499: $96
	ld   d, h                                        ; $449a: $54
	ld   h, d                                        ; $449b: $62
	ld   h, h                                        ; $449c: $64
	ld   d, d                                        ; $449d: $52
	adc  h                                           ; $449e: $8c
	ld   h, a                                        ; $449f: $67
	sbc  a                                           ; $44a0: $9f
	dec  c                                           ; $44a1: $0d
	ld   h, a                                        ; $44a2: $67
	adc  l                                           ; $44a3: $8d
	sbc  d                                           ; $44a4: $9a
	ld   h, e                                        ; $44a5: $63
	and  c                                           ; $44a6: $a1
	sbc  a                                           ; $44a7: $9f
	dec  c                                           ; $44a8: $0d
	nop                                              ; $44a9: $00
	ld   a, [bc]                                     ; $44aa: $0a
	inc  e                                           ; $44ab: $1c
	ld   [bc], a                                     ; $44ac: $02
	ld   bc, $0101                                   ; $44ad: $01 $01 $01
	ld   [$6300], sp                                 ; $44b0: $08 $00 $63
	and  c                                           ; $44b3: $a1
	ld   [hl], h                                     ; $44b4: $74
	sbc  [hl]                                        ; $44b5: $9e
	ld   [bc], a                                     ; $44b6: $02
	and  l                                           ; $44b7: $a5
	inc  b                                           ; $44b8: $04
	ld   e, d                                        ; $44b9: $5a
	ld   e, b                                        ; $44ba: $58
	add  b                                           ; $44bb: $80
	adc  h                                           ; $44bc: $8c
	dec  c                                           ; $44bd: $0d
	ld   [hl], l                                     ; $44be: $75
	ld   h, a                                        ; $44bf: $67
	ld   e, c                                        ; $44c0: $59
	ld   sp, hl                                      ; $44c1: $f9
	db   $10                                         ; $44c2: $10
	sub  b                                           ; $44c3: $90
	ld   h, l                                        ; $44c4: $65
	sub  [hl]                                        ; $44c5: $96
	sbc  e                                           ; $44c6: $9b
	ld   h, l                                        ; $44c7: $65
	ld   e, a                                        ; $44c8: $5f
	sbc  d                                           ; $44c9: $9a
	ld   a, [hl]                                     ; $44ca: $7e
	sbc  [hl]                                        ; $44cb: $9e
	dec  c                                           ; $44cc: $0d
	inc  b                                           ; $44cd: $04
	adc  [hl]                                        ; $44ce: $8e
	inc  b                                           ; $44cf: $04
	inc  c                                           ; $44d0: $0c
	ld   e, a                                        ; $44d1: $5f
	ld   d, d                                        ; $44d2: $52
	ld   h, c                                        ; $44d3: $61
	ld   a, h                                        ; $44d4: $7c
	ld   e, b                                        ; $44d5: $58
	ld   [bc], a                                     ; $44d6: $02
	ld   a, [de]                                     ; $44d7: $1a
	inc  bc                                          ; $44d8: $03
	ld   l, e                                        ; $44d9: $6b
	ld   a, b                                        ; $44da: $78
	ld   [hl], a                                     ; $44db: $77
	and  b                                           ; $44dc: $a0
	rst  $38                                         ; $44dd: $ff
	rst  $38                                         ; $44de: $ff
	dec  c                                           ; $44df: $0d
	nop                                              ; $44e0: $00
	ld   a, [bc]                                     ; $44e1: $0a
	add  hl, de                                      ; $44e2: $19
	dec  b                                           ; $44e3: $05
	ld   [bc], a                                     ; $44e4: $02
	ld   d, d                                        ; $44e5: $52
	ld   d, d                                        ; $44e6: $52
	ld   [hl], l                                     ; $44e7: $75
	ld   h, a                                        ; $44e8: $67
	sub  [hl]                                        ; $44e9: $96
	nop                                              ; $44ea: $00
	nop                                              ; $44eb: $00
	inc  b                                           ; $44ec: $04
	di                                               ; $44ed: $f3
	ld   [bc], a                                     ; $44ee: $02
	jp   $505a                                       ; $44ef: $c3 $5a $50


	sbc  c                                           ; $44f2: $99
	nop                                              ; $44f3: $00
	ld   bc, $d807                                   ; $44f4: $01 $07 $d8
	nop                                              ; $44f7: $00
	ld   [bc], a                                     ; $44f8: $02
	inc  bc                                          ; $44f9: $03
	ld   bc, $2000                                   ; $44fa: $01 $00 $20
	nop                                              ; $44fd: $00
	rlca                                             ; $44fe: $07
	ld   c, e                                        ; $44ff: $4b
	ld   bc, $0302                                   ; $4500: $01 $02 $03
	ld   bc, $2001                                   ; $4503: $01 $01 $20
	nop                                              ; $4506: $00
	ld   b, $b9                                      ; $4507: $06 $b9
	ld   bc, $000f                                   ; $4509: $01 $0f $00
	ld   bc, $5201                                   ; $450c: $01 $01 $52
	ld   d, d                                        ; $450f: $52
	ld   [hl], l                                     ; $4510: $75
	ld   h, a                                        ; $4511: $67
	sub  [hl]                                        ; $4512: $96
	sbc  a                                           ; $4513: $9f
	dec  c                                           ; $4514: $0d
	inc  b                                           ; $4515: $04
	ld   l, l                                        ; $4516: $6d
	ld   [hl], l                                     ; $4517: $75
	ld   e, b                                        ; $4518: $58
	inc  b                                           ; $4519: $04
	db   $ec                                         ; $451a: $ec
	ld   a, c                                        ; $451b: $79
	dec  b                                           ; $451c: $05
	ld   d, $74                                      ; $451d: $16 $74
	sbc  c                                           ; $451f: $99
	ld   a, b                                        ; $4520: $78
	sub  a                                           ; $4521: $97
	dec  c                                           ; $4522: $0d
	ld   e, b                                        ; $4523: $58
	sub  d                                           ; $4524: $92
	ld   h, a                                        ; $4525: $67
	ld   d, d                                        ; $4526: $52
	ld   h, d                                        ; $4527: $62
	inc  b                                           ; $4528: $04
	di                                               ; $4529: $f3
	ld   [hl], l                                     ; $452a: $75
	ld   h, a                                        ; $452b: $67
	sub  [hl]                                        ; $452c: $96
	sbc  a                                           ; $452d: $9f
	dec  c                                           ; $452e: $0d
	nop                                              ; $452f: $00
	ld   a, [bc]                                     ; $4530: $0a
	inc  e                                           ; $4531: $1c
	ld   [bc], a                                     ; $4532: $02
	ld   bc, $1d01                                   ; $4533: $01 $01 $1d
	ld   b, b                                        ; $4536: $40
	ld   [de], a                                     ; $4537: $12
	inc  bc                                          ; $4538: $03
	ld   [de], a                                     ; $4539: $12
	ld   bc, $2802                                   ; $453a: $01 $02 $28
	nop                                              ; $453d: $00
	ld   bc, $546b                                   ; $453e: $01 $6b $54
	ld   [hl], l                                     ; $4541: $75
	ld   h, a                                        ; $4542: $67
	ld   e, c                                        ; $4543: $59
	sbc  a                                           ; $4544: $9f
	dec  c                                           ; $4545: $0d
	nop                                              ; $4546: $00
	dec  b                                           ; $4547: $05
	add  b                                           ; $4548: $80
	dec  e                                           ; $4549: $1d
	ld   bc, $0001                                   ; $454a: $01 $01 $00
	ld   bc, $7d75                                   ; $454d: $01 $75 $7d
	sbc  [hl]                                        ; $4550: $9e
	ld   [bc], a                                     ; $4551: $02
	and  l                                           ; $4552: $a5
	inc  b                                           ; $4553: $04
	rst  $28                                         ; $4554: $ef
	sbc  [hl]                                        ; $4555: $9e
	inc  b                                           ; $4556: $04
	adc  [hl]                                        ; $4557: $8e
	inc  b                                           ; $4558: $04
	inc  c                                           ; $4559: $0c
	ld   [hl], l                                     ; $455a: $75
	dec  c                                           ; $455b: $0d
	nop                                              ; $455c: $00
	dec  b                                           ; $455d: $05
	ld   b, b                                        ; $455e: $40
	ld   l, c                                        ; $455f: $69
	ld   [bc], a                                     ; $4560: $02
	nop                                              ; $4561: $00
	nop                                              ; $4562: $00
	ld   bc, $0458                                   ; $4563: $01 $58 $04
	rla                                              ; $4566: $17
	ld   l, a                                        ; $4567: $6f
	ld   h, l                                        ; $4568: $65
	ld   [hl], h                                     ; $4569: $74
	ld   d, d                                        ; $456a: $52
	adc  h                                           ; $456b: $8c
	ld   h, a                                        ; $456c: $67
	sbc  l                                           ; $456d: $9d
	sbc  a                                           ; $456e: $9f
	dec  c                                           ; $456f: $0d
	nop                                              ; $4570: $00
	ld   a, [bc]                                     ; $4571: $0a
	dec  c                                           ; $4572: $0d
	nop                                              ; $4573: $00
	nop                                              ; $4574: $00
	rrca                                             ; $4575: $0f
	nop                                              ; $4576: $00
	ld   bc, $1e09                                   ; $4577: $01 $09 $1e
	add  hl, hl                                      ; $457a: $29
	ld   bc, $0f00                                   ; $457b: $01 $00 $0f
	nop                                              ; $457e: $00
	ld   bc, $6701                                   ; $457f: $01 $01 $67
	adc  l                                           ; $4582: $8d
	adc  h                                           ; $4583: $8c
	ld   l, c                                        ; $4584: $69
	and  c                                           ; $4585: $a1
	sbc  [hl]                                        ; $4586: $9e
	ld   [bc], a                                     ; $4587: $02
	and  l                                           ; $4588: $a5
	inc  b                                           ; $4589: $04
	ld   e, d                                        ; $458a: $5a
	ld   a, l                                        ; $458b: $7d
	dec  c                                           ; $458c: $0d
	ld   l, a                                        ; $458d: $6f
	sub  l                                           ; $458e: $95
	ld   [hl], c                                     ; $458f: $71
	halt                                             ; $4590: $76
	inc  b                                           ; $4591: $04
	di                                               ; $4592: $f3
	ld   e, d                                        ; $4593: $5a
	ld   d, b                                        ; $4594: $50
	sbc  b                                           ; $4595: $98
	adc  h                                           ; $4596: $8c
	ld   h, l                                        ; $4597: $65
	ld   [hl], h                                     ; $4598: $74
	rst  $38                                         ; $4599: $ff
	rst  $38                                         ; $459a: $ff
	dec  c                                           ; $459b: $0d
	nop                                              ; $459c: $00
	ld   a, [bc]                                     ; $459d: $0a
	inc  e                                           ; $459e: $1c
	ld   [bc], a                                     ; $459f: $02
	ld   [bc], a                                     ; $45a0: $02
	ld   [bc], a                                     ; $45a1: $02
	ld   bc, $a178                                   ; $45a2: $01 $78 $a1
	ld   [hl], l                                     ; $45a5: $75
	ld   h, a                                        ; $45a6: $67
	ld   [hl], c                                     ; $45a7: $71
	ld   [hl], h                                     ; $45a8: $74
	ld   a, [$610d]                                  ; $45a9: $fa $0d $61
	ld   a, h                                        ; $45ac: $7c
	sbc  l                                           ; $45ad: $9d
	ld   l, l                                        ; $45ae: $6d
	ld   e, l                                        ; $45af: $5d
	ld   h, l                                        ; $45b0: $65
	ld   a, h                                        ; $45b1: $7c
	ld   l, l                                        ; $45b2: $6d
	ld   a, h                                        ; $45b3: $7c
	adc  l                                           ; $45b4: $8d
	ld   h, d                                        ; $45b5: $62
	halt                                             ; $45b6: $76
	and  b                                           ; $45b7: $a0
	dec  c                                           ; $45b8: $0d
	ld   h, c                                        ; $45b9: $61
	halt                                             ; $45ba: $76
	sbc  l                                           ; $45bb: $9d
	sbc  c                                           ; $45bc: $99
	halt                                             ; $45bd: $76
	ld   d, d                                        ; $45be: $52
	ld   d, h                                        ; $45bf: $54
	ld   a, h                                        ; $45c0: $7c
	ld   [hl], l                                     ; $45c1: $75
	ld   h, a                                        ; $45c2: $67
	ld   e, c                                        ; $45c3: $59
	ld   a, [$000d]                                  ; $45c4: $fa $0d $00
	ld   a, [bc]                                     ; $45c7: $0a
	dec  e                                           ; $45c8: $1d
	ld   b, b                                        ; $45c9: $40
	ld   [de], a                                     ; $45ca: $12
	inc  bc                                          ; $45cb: $03
	ld   [de], a                                     ; $45cc: $12
	ld   bc, $2902                                   ; $45cd: $01 $02 $29
	nop                                              ; $45d0: $00
	ld   bc, $5490                                   ; $45d1: $01 $90 $54
	sbc  [hl]                                        ; $45d4: $9e
	ld   e, a                                        ; $45d5: $5f
	ld   [hl], c                                     ; $45d6: $71
	ld   h, c                                        ; $45d7: $61
	ld   d, h                                        ; $45d8: $54
	ld   [hl], l                                     ; $45d9: $75
	ld   h, a                                        ; $45da: $67
	sbc  l                                           ; $45db: $9d
	sbc  a                                           ; $45dc: $9f
	dec  c                                           ; $45dd: $0d
	nop                                              ; $45de: $00
	ld   a, [bc]                                     ; $45df: $0a
	dec  c                                           ; $45e0: $0d
	nop                                              ; $45e1: $00
	nop                                              ; $45e2: $00
	rrca                                             ; $45e3: $0f
	nop                                              ; $45e4: $00
	ld   bc, $1e09                                   ; $45e5: $01 $09 $1e
	add  hl, hl                                      ; $45e8: $29
	ld   bc, $1c00                                   ; $45e9: $01 $00 $1c
	ld   [bc], a                                     ; $45ec: $02
	rlca                                             ; $45ed: $07
	rlca                                             ; $45ee: $07
	dec  e                                           ; $45ef: $1d
	ld   b, b                                        ; $45f0: $40
	ld   [de], a                                     ; $45f1: $12
	inc  bc                                          ; $45f2: $03
	ld   [de], a                                     ; $45f3: $12
	ld   bc, $2902                                   ; $45f4: $01 $02 $29
	nop                                              ; $45f7: $00
	ld   bc, $5477                                   ; $45f8: $01 $77 $54
	ld   h, l                                        ; $45fb: $65
	ld   l, l                                        ; $45fc: $6d
	ld   a, h                                        ; $45fd: $7c
	ld   [hl], l                                     ; $45fe: $75
	ld   h, a                                        ; $45ff: $67
	ld   e, c                                        ; $4600: $59
	ld   sp, hl                                      ; $4601: $f9
	dec  c                                           ; $4602: $0d
	inc  b                                           ; $4603: $04
	sub  a                                           ; $4604: $97
	ld   [bc], a                                     ; $4605: $02
	jp   $505a                                       ; $4606: $c3 $5a $50


	sbc  b                                           ; $4609: $98
	adc  h                                           ; $460a: $8c
	ld   l, c                                        ; $460b: $69
	and  c                                           ; $460c: $a1
	sbc  l                                           ; $460d: $9d
	ld   a, e                                        ; $460e: $7b
	sbc  a                                           ; $460f: $9f
	dec  c                                           ; $4610: $0d
	sub  b                                           ; $4611: $90
	ld   d, h                                        ; $4612: $54
	sbc  [hl]                                        ; $4613: $9e
	ld   e, a                                        ; $4614: $5f
	ld   [hl], c                                     ; $4615: $71
	ld   h, c                                        ; $4616: $61
	ld   d, h                                        ; $4617: $54
	ld   [hl], l                                     ; $4618: $75
	ld   h, a                                        ; $4619: $67
	sbc  l                                           ; $461a: $9d
	sbc  a                                           ; $461b: $9f
	dec  c                                           ; $461c: $0d
	nop                                              ; $461d: $00
	ld   a, [bc]                                     ; $461e: $0a
	dec  c                                           ; $461f: $0d
	nop                                              ; $4620: $00
	nop                                              ; $4621: $00
	rrca                                             ; $4622: $0f
	nop                                              ; $4623: $00
	ld   bc, $1e09                                   ; $4624: $01 $09 $1e
	add  hl, hl                                      ; $4627: $29
	ld   bc, $0000                                   ; $4628: $01 $00 $00
	inc  bc                                          ; $462b: $03
	ld   de, $8c01                                   ; $462c: $11 $01 $8c
	dec  h                                           ; $462f: $25
	inc  b                                           ; $4630: $04
	add  b                                           ; $4631: $80
	dec  e                                           ; $4632: $1d
	ld   bc, $2000                                   ; $4633: $01 $00 $20
	inc  e                                           ; $4636: $1c
	inc  bc                                          ; $4637: $03
	ld   de, $8c01                                   ; $4638: $11 $01 $8c
	dec  h                                           ; $463b: $25
	ld   [bc], a                                     ; $463c: $02
	nop                                              ; $463d: $00
	ld   bc, $2014                                   ; $463e: $01 $14 $20
	inc  e                                           ; $4641: $1c
	inc  b                                           ; $4642: $04
	add  b                                           ; $4643: $80
	dec  e                                           ; $4644: $1d
	ld   bc, $20ff                                   ; $4645: $01 $ff $20
	inc  e                                           ; $4648: $1c
	inc  b                                           ; $4649: $04
	add  b                                           ; $464a: $80
	ld   e, $01                                      ; $464b: $1e $01
	rst  $38                                         ; $464d: $ff
	jr   nz, jr_055_466c                             ; $464e: $20 $1c

	dec  de                                          ; $4650: $1b
	nop                                              ; $4651: $00
	ld   c, $01                                      ; $4652: $0e $01
	rrca                                             ; $4654: $0f
	nop                                              ; $4655: $00
	ld   bc, $0102                                   ; $4656: $01 $02 $01
	and  c                                           ; $4659: $a1
	db   $fc                                         ; $465a: $fc
	inc  bc                                          ; $465b: $03
	ld   d, $6e                                      ; $465c: $16 $6e
	rst  $38                                         ; $465e: $ff
	rst  $38                                         ; $465f: $ff
	dec  c                                           ; $4660: $0d
	ld   h, e                                        ; $4661: $63
	ld   h, a                                        ; $4662: $67
	ld   e, d                                        ; $4663: $5a
	ld   a, c                                        ; $4664: $79
	inc  d                                           ; $4665: $14
	inc  bc                                          ; $4666: $03
	ld   a, c                                        ; $4667: $79
	inc  b                                           ; $4668: $04
	call nc, $9076                                   ; $4669: $d4 $76 $90

jr_055_466c:
	ld   a, b                                        ; $466c: $78
	sbc  c                                           ; $466d: $99
	halt                                             ; $466e: $76
	dec  c                                           ; $466f: $0d
	inc  b                                           ; $4670: $04
	ld   a, e                                        ; $4671: $7b
	sbc  d                                           ; $4672: $9a
	ld   e, d                                        ; $4673: $5a
	ld   l, l                                        ; $4674: $6d
	adc  h                                           ; $4675: $8c
	ld   [hl], c                                     ; $4676: $71
	ld   [hl], h                                     ; $4677: $74
	ld   e, l                                        ; $4678: $5d
	sbc  c                                           ; $4679: $99
	ld   a, b                                        ; $467a: $78
	ld   c, a                                        ; $467b: $4f
	rst  $38                                         ; $467c: $ff
	rst  $38                                         ; $467d: $ff
	dec  c                                           ; $467e: $0d
	nop                                              ; $467f: $00
	ld   a, [bc]                                     ; $4680: $0a
	inc  d                                           ; $4681: $14
	ld   b, $01                                      ; $4682: $06 $01
	rrca                                             ; $4684: $0f
	ld   bc, $0101                                   ; $4685: $01 $01 $01
	ld   [$6300], sp                                 ; $4688: $08 $00 $63
	and  c                                           ; $468b: $a1
	sbc  [hl]                                        ; $468c: $9e
	dec  c                                           ; $468d: $0d
	ld   d, d                                        ; $468e: $52
	sub  a                                           ; $468f: $97
	ld   [hl], c                                     ; $4690: $71
	ld   h, l                                        ; $4691: $65
	sub  c                                           ; $4692: $91
	ld   d, d                                        ; $4693: $52
	adc  h                                           ; $4694: $8c
	ld   h, a                                        ; $4695: $67
	ld   e, c                                        ; $4696: $59
	ld   sp, hl                                      ; $4697: $f9
	dec  c                                           ; $4698: $0d
	nop                                              ; $4699: $00
	ld   a, [bc]                                     ; $469a: $0a
	rrca                                             ; $469b: $0f
	nop                                              ; $469c: $00
	ld   bc, $7d01                                   ; $469d: $01 $01 $7d
	ld   d, d                                        ; $46a0: $52
	sbc  [hl]                                        ; $46a1: $9e
	ld   [hl], a                                     ; $46a2: $77
	ld   d, h                                        ; $46a3: $54
	ld   l, h                                        ; $46a4: $6c
	sbc  a                                           ; $46a5: $9f
	dec  c                                           ; $46a6: $0d
	nop                                              ; $46a7: $00
	ld   a, [bc]                                     ; $46a8: $0a
	inc  d                                           ; $46a9: $14
	ld   a, [bc]                                     ; $46aa: $0a
	ld   bc, $011c                                   ; $46ab: $01 $1c $01
	nop                                              ; $46ae: $00
	nop                                              ; $46af: $00
	ld   bc, $7d58                                   ; $46b0: $01 $58 $7d
	sub  [hl]                                        ; $46b3: $96
	ld   d, h                                        ; $46b4: $54
	ld   h, d                                        ; $46b5: $62
	ld   h, h                                        ; $46b6: $64
	ld   d, d                                        ; $46b7: $52
	adc  h                                           ; $46b8: $8c
	ld   h, a                                        ; $46b9: $67
	sbc  a                                           ; $46ba: $9f
	dec  c                                           ; $46bb: $0d
	nop                                              ; $46bc: $00
	ld   a, [bc]                                     ; $46bd: $0a
	inc  e                                           ; $46be: $1c
	ld   bc, $0404                                   ; $46bf: $01 $04 $04
	ld   bc, $7c50                                   ; $46c2: $01 $50 $7c
	rst  $38                                         ; $46c5: $ff
	rst  $38                                         ; $46c6: $ff
	dec  c                                           ; $46c7: $0d
	inc  bc                                          ; $46c8: $03
	adc  e                                           ; $46c9: $8b
	ld   a, l                                        ; $46ca: $7d
	ld   e, b                                        ; $46cb: $58
	ld   [bc], a                                     ; $46cc: $02
	add  b                                           ; $46cd: $80
	ld   d, d                                        ; $46ce: $52
	ld   h, l                                        ; $46cf: $65
	ld   l, l                                        ; $46d0: $6d
	ld   d, d                                        ; $46d1: $52
	ld   [bc], a                                     ; $46d2: $02
	jp   $0d5a                                       ; $46d3: $c3 $5a $0d


	ld   d, b                                        ; $46d6: $50
	sbc  b                                           ; $46d7: $98
	adc  h                                           ; $46d8: $8c
	ld   h, l                                        ; $46d9: $65
	ld   [hl], h                                     ; $46da: $74
	rst  $38                                         ; $46db: $ff
	rst  $38                                         ; $46dc: $ff
	dec  c                                           ; $46dd: $0d
	nop                                              ; $46de: $00
	ld   a, [bc]                                     ; $46df: $0a
	ld   bc, $a502                                   ; $46e0: $01 $02 $a5
	inc  b                                           ; $46e3: $04
	xor  d                                           ; $46e4: $aa
	ld   a, h                                        ; $46e5: $7c
	ld   e, b                                        ; $46e6: $58
	inc  b                                           ; $46e7: $04
	xor  l                                           ; $46e8: $ad
	ld   a, c                                        ; $46e9: $79
	sbc  [hl]                                        ; $46ea: $9e
	dec  c                                           ; $46eb: $0d
	inc  b                                           ; $46ec: $04
	ld   c, $04                                      ; $46ed: $0e $04
	ld   d, $02                                      ; $46ef: $16 $02
	xor  b                                           ; $46f1: $a8
	ld   a, h                                        ; $46f2: $7c
	inc  bc                                          ; $46f3: $03
	ld   a, e                                        ; $46f4: $7b
	dec  b                                           ; $46f5: $05
	ld   de, $0da0                                   ; $46f6: $11 $a0 $0d
	inc  bc                                          ; $46f9: $03
	ld   l, e                                        ; $46fa: $6b
	inc  b                                           ; $46fb: $04
	ld   [de], a                                     ; $46fc: $12
	ld   [hl], c                                     ; $46fd: $71
	ld   [hl], h                                     ; $46fe: $74
	adc  c                                           ; $46ff: $89
	ld   h, l                                        ; $4700: $65
	ld   d, d                                        ; $4701: $52
	and  c                                           ; $4702: $a1
	ld   [hl], l                                     ; $4703: $75
	ld   h, a                                        ; $4704: $67
	ld   e, a                                        ; $4705: $5f
	ld   [hl], a                                     ; $4706: $77
	rst  $38                                         ; $4707: $ff
	rst  $38                                         ; $4708: $ff
	dec  c                                           ; $4709: $0d
	nop                                              ; $470a: $00
	ld   a, [bc]                                     ; $470b: $0a
	add  hl, de                                      ; $470c: $19
	dec  b                                           ; $470d: $05
	ld   [bc], a                                     ; $470e: $02
	inc  bc                                          ; $470f: $03
	ld   l, e                                        ; $4710: $6b
	inc  b                                           ; $4711: $04
	ld   [de], a                                     ; $4712: $12
	ld   d, h                                        ; $4713: $54
	nop                                              ; $4714: $00
	nop                                              ; $4715: $00
	ld   h, c                                        ; $4716: $61
	halt                                             ; $4717: $76
	sbc  l                                           ; $4718: $9d
	sbc  c                                           ; $4719: $99
	nop                                              ; $471a: $00
	ld   bc, $df07                                   ; $471b: $01 $07 $df
	nop                                              ; $471e: $00
	ld   [bc], a                                     ; $471f: $02
	inc  bc                                          ; $4720: $03
	ld   bc, $2000                                   ; $4721: $01 $00 $20
	nop                                              ; $4724: $00
	rlca                                             ; $4725: $07
	ld   d, c                                        ; $4726: $51
	ld   bc, $0302                                   ; $4727: $01 $02 $03
	ld   bc, $2001                                   ; $472a: $01 $01 $20
	nop                                              ; $472d: $00
	ld   b, $a2                                      ; $472e: $06 $a2
	ld   bc, $000f                                   ; $4730: $01 $0f $00
	ld   bc, $5201                                   ; $4733: $01 $01 $52
	ld   d, d                                        ; $4736: $52
	ld   [hl], l                                     ; $4737: $75
	ld   h, a                                        ; $4738: $67
	sub  [hl]                                        ; $4739: $96
	sbc  a                                           ; $473a: $9f
	dec  c                                           ; $473b: $0d
	inc  b                                           ; $473c: $04
	ld   l, l                                        ; $473d: $6d
	ld   [hl], l                                     ; $473e: $75
	sub  [hl]                                        ; $473f: $96
	ld   e, a                                        ; $4740: $5f
	sbc  d                                           ; $4741: $9a
	ld   a, [hl]                                     ; $4742: $7e
	sbc  a                                           ; $4743: $9f
	dec  c                                           ; $4744: $0d
	nop                                              ; $4745: $00
	ld   a, [bc]                                     ; $4746: $0a
	inc  e                                           ; $4747: $1c
	ld   bc, $0101                                   ; $4748: $01 $01 $01
	dec  e                                           ; $474b: $1d
	ld   b, b                                        ; $474c: $40
	ld   de, $1103                                   ; $474d: $11 $03 $11
	ld   bc, $2802                                   ; $4750: $01 $02 $28
	nop                                              ; $4753: $00
	ld   bc, $9850                                   ; $4754: $01 $50 $98
	ld   e, d                                        ; $4757: $5a
	halt                                             ; $4758: $76
	ld   d, h                                        ; $4759: $54
	ld   h, d                                        ; $475a: $62
	ld   h, h                                        ; $475b: $64
	ld   d, d                                        ; $475c: $52
	adc  h                                           ; $475d: $8c
	ld   h, a                                        ; $475e: $67
	ld   a, [$000d]                                  ; $475f: $fa $0d $00
	ld   a, [bc]                                     ; $4762: $0a
	dec  b                                           ; $4763: $05
	add  b                                           ; $4764: $80
	ld   [$0101], sp                                 ; $4765: $08 $01 $01
	nop                                              ; $4768: $00
	dec  b                                           ; $4769: $05
	ld   b, b                                        ; $476a: $40
	ld   e, b                                        ; $476b: $58
	ld   [bc], a                                     ; $476c: $02
	nop                                              ; $476d: $00
	nop                                              ; $476e: $00
	ld   bc, $9166                                   ; $476f: $01 $66 $91
	sbc  [hl]                                        ; $4772: $9e
	ld   e, b                                        ; $4773: $58
	inc  b                                           ; $4774: $04
	xor  l                                           ; $4775: $ad
	ld   a, c                                        ; $4776: $79
	dec  c                                           ; $4777: $0d
	inc  b                                           ; $4778: $04
	ld   c, $04                                      ; $4779: $0e $04
	ld   d, $02                                      ; $477b: $16 $02
	xor  b                                           ; $477d: $a8
	inc  b                                           ; $477e: $04
	sub  l                                           ; $477f: $95
	ld   [bc], a                                     ; $4780: $02
	ld   hl, $0579                                   ; $4781: $21 $79 $05
	db   $10                                         ; $4784: $10
	ld   [hl], h                                     ; $4785: $74
	ld   [bc], a                                     ; $4786: $02
	inc  [hl]                                        ; $4787: $34
	ld   h, e                                        ; $4788: $63
	ld   d, d                                        ; $4789: $52
	sbc  a                                           ; $478a: $9f
	dec  c                                           ; $478b: $0d
	inc  b                                           ; $478c: $04
	rla                                              ; $478d: $17
	ld   [hl], c                                     ; $478e: $71
	ld   [hl], h                                     ; $478f: $74
	adc  h                                           ; $4790: $8c
	ld   h, a                                        ; $4791: $67
	ld   e, c                                        ; $4792: $59
	sub  a                                           ; $4793: $97
	sbc  a                                           ; $4794: $9f
	dec  c                                           ; $4795: $0d
	nop                                              ; $4796: $00
	ld   a, [bc]                                     ; $4797: $0a
	dec  c                                           ; $4798: $0d
	nop                                              ; $4799: $00
	nop                                              ; $479a: $00
	rrca                                             ; $479b: $0f
	nop                                              ; $479c: $00
	ld   bc, $1e09                                   ; $479d: $01 $09 $1e
	add  hl, hl                                      ; $47a0: $29
	ld   bc, $0f00                                   ; $47a1: $01 $00 $0f
	nop                                              ; $47a4: $00
	ld   bc, $6701                                   ; $47a5: $01 $01 $67
	adc  l                                           ; $47a8: $8d
	adc  h                                           ; $47a9: $8c
	ld   l, c                                        ; $47aa: $69
	and  c                                           ; $47ab: $a1
	rst  $38                                         ; $47ac: $ff
	rst  $38                                         ; $47ad: $ff
	dec  c                                           ; $47ae: $0d
	ld   [bc], a                                     ; $47af: $02
	and  l                                           ; $47b0: $a5
	inc  b                                           ; $47b1: $04
	xor  d                                           ; $47b2: $aa
	ld   a, l                                        ; $47b3: $7d
	ld   d, d                                        ; $47b4: $52
	ld   l, e                                        ; $47b5: $6b
	ld   e, d                                        ; $47b6: $5a
	ld   h, l                                        ; $47b7: $65
	ld   d, d                                        ; $47b8: $52
	ld   a, h                                        ; $47b9: $7c
	ld   [hl], l                                     ; $47ba: $75
	rst  $38                                         ; $47bb: $ff
	rst  $38                                         ; $47bc: $ff
	dec  c                                           ; $47bd: $0d
	nop                                              ; $47be: $00
	ld   a, [bc]                                     ; $47bf: $0a
	inc  e                                           ; $47c0: $1c
	ld   bc, $0404                                   ; $47c1: $01 $04 $04
	dec  e                                           ; $47c4: $1d
	ld   b, b                                        ; $47c5: $40
	ld   de, $1103                                   ; $47c6: $11 $03 $11
	ld   bc, $2901                                   ; $47c9: $01 $01 $29
	nop                                              ; $47cc: $00
	ld   bc, $546b                                   ; $47cd: $01 $6b $54
	ld   [hl], l                                     ; $47d0: $75
	ld   h, a                                        ; $47d1: $67
	ld   e, c                                        ; $47d2: $59
	rst  $38                                         ; $47d3: $ff
	rst  $38                                         ; $47d4: $ff
	dec  c                                           ; $47d5: $0d
	ld   h, a                                        ; $47d6: $67
	adc  l                                           ; $47d7: $8d
	adc  h                                           ; $47d8: $8c
	ld   l, c                                        ; $47d9: $69
	and  c                                           ; $47da: $a1
	sbc  [hl]                                        ; $47db: $9e
	dec  c                                           ; $47dc: $0d
	ld   e, b                                        ; $47dd: $58
	ld   h, [hl]                                     ; $47de: $66
	sub  c                                           ; $47df: $91
	adc  h                                           ; $47e0: $8c
	ld   h, l                                        ; $47e1: $65
	adc  h                                           ; $47e2: $8c
	ld   h, l                                        ; $47e3: $65
	ld   l, l                                        ; $47e4: $6d
	sbc  a                                           ; $47e5: $9f
	dec  c                                           ; $47e6: $0d
	nop                                              ; $47e7: $00
	ld   a, [bc]                                     ; $47e8: $0a
	dec  c                                           ; $47e9: $0d
	nop                                              ; $47ea: $00
	nop                                              ; $47eb: $00
	rrca                                             ; $47ec: $0f
	nop                                              ; $47ed: $00
	ld   bc, $1e09                                   ; $47ee: $01 $09 $1e
	add  hl, hl                                      ; $47f1: $29
	ld   bc, $1c00                                   ; $47f2: $01 $00 $1c
	ld   bc, $0707                                   ; $47f5: $01 $07 $07
	ld   bc, $8c6e                                   ; $47f8: $01 $6e $8c
	ld   [hl], c                                     ; $47fb: $71
	ld   [hl], h                                     ; $47fc: $74
	sbc  c                                           ; $47fd: $99
	ld   h, c                                        ; $47fe: $61
	halt                                             ; $47ff: $76
	ld   a, b                                        ; $4800: $78
	ld   d, d                                        ; $4801: $52
	ld   h, [hl]                                     ; $4802: $66
	sub  c                                           ; $4803: $91
	dec  c                                           ; $4804: $0d
	ld   d, b                                        ; $4805: $50
	sbc  b                                           ; $4806: $98
	adc  h                                           ; $4807: $8c
	ld   l, c                                        ; $4808: $69
	and  c                                           ; $4809: $a1
	ld   e, c                                        ; $480a: $59
	rst  $38                                         ; $480b: $ff
	rst  $38                                         ; $480c: $ff
	dec  c                                           ; $480d: $0d
	sub  b                                           ; $480e: $90
	ld   d, h                                        ; $480f: $54
	ld   e, a                                        ; $4810: $5f
	ld   [hl], c                                     ; $4811: $71
	ld   h, c                                        ; $4812: $61
	ld   d, h                                        ; $4813: $54
	ld   [hl], l                                     ; $4814: $75
	ld   h, a                                        ; $4815: $67
	ld   a, [$000d]                                  ; $4816: $fa $0d $00
	ld   a, [bc]                                     ; $4819: $0a
	dec  c                                           ; $481a: $0d
	nop                                              ; $481b: $00
	nop                                              ; $481c: $00
	rrca                                             ; $481d: $0f
	nop                                              ; $481e: $00
	ld   bc, $1e09                                   ; $481f: $01 $09 $1e
	add  hl, hl                                      ; $4822: $29
	ld   bc, $0000                                   ; $4823: $01 $00 $00
	inc  b                                           ; $4826: $04
	add  b                                           ; $4827: $80
	dec  e                                           ; $4828: $1d
	ld   bc, $20ff                                   ; $4829: $01 $ff $20
	inc  b                                           ; $482c: $04
	add  b                                           ; $482d: $80
	ld   e, $01                                      ; $482e: $1e $01
	nop                                              ; $4830: $00
	jr   nz, jr_055_484f                             ; $4831: $20 $1c

	inc  bc                                          ; $4833: $03
	ld   l, c                                        ; $4834: $69
	ld   [bc], a                                     ; $4835: $02
	nop                                              ; $4836: $00
	ld   bc, $2901                                   ; $4837: $01 $01 $29
	jr   nz, jr_055_4858                             ; $483a: $20 $1c

	nop                                              ; $483c: $00
	ld   c, $01                                      ; $483d: $0e $01
	rrca                                             ; $483f: $0f
	nop                                              ; $4840: $00
	ld   bc, $0102                                   ; $4841: $01 $02 $01
	sub  [hl]                                        ; $4844: $96
	ld   h, l                                        ; $4845: $65
	sbc  [hl]                                        ; $4846: $9e
	ld   [bc], a                                     ; $4847: $02
	and  l                                           ; $4848: $a5
	inc  b                                           ; $4849: $04
	xor  d                                           ; $484a: $aa
	sub  b                                           ; $484b: $90
	ld   d, d                                        ; $484c: $52
	ld   d, d                                        ; $484d: $52
	inc  b                                           ; $484e: $04

jr_055_484f:
	inc  de                                          ; $484f: $13
	ld   [bc], a                                     ; $4850: $02
	and  c                                           ; $4851: $a1
	ld   l, [hl]                                     ; $4852: $6e
	ld   a, [$5a0d]                                  ; $4853: $fa $0d $5a
	and  c                                           ; $4856: $a1
	ld   a, [hl]                                     ; $4857: $7e

jr_055_4858:
	sbc  c                                           ; $4858: $99
	ld   l, h                                        ; $4859: $6c
	ld   a, [$0dfa]                                  ; $485a: $fa $fa $0d
	nop                                              ; $485d: $00
	ld   a, [bc]                                     ; $485e: $0a
	inc  d                                           ; $485f: $14
	ld   b, $01                                      ; $4860: $06 $01
	rrca                                             ; $4862: $0f
	ld   [bc], a                                     ; $4863: $02
	ld   [bc], a                                     ; $4864: $02
	ld   bc, $0008                                   ; $4865: $01 $08 $00
	ld   h, e                                        ; $4868: $63
	and  c                                           ; $4869: $a1
	sbc  [hl]                                        ; $486a: $9e
	ld   d, d                                        ; $486b: $52
	adc  h                                           ; $486c: $8c
	ld   h, a                                        ; $486d: $67
	ld   a, h                                        ; $486e: $7c
	ld   sp, hl                                      ; $486f: $f9
	dec  c                                           ; $4870: $0d
	nop                                              ; $4871: $00
	ld   a, [bc]                                     ; $4872: $0a
	rrca                                             ; $4873: $0f
	nop                                              ; $4874: $00
	ld   bc, $0a14                                   ; $4875: $01 $14 $0a
	ld   bc, $7d01                                   ; $4878: $01 $01 $7d
	ld   d, d                                        ; $487b: $52
	sbc  [hl]                                        ; $487c: $9e
	ld   [hl], a                                     ; $487d: $77
	ld   d, h                                        ; $487e: $54
	ld   l, h                                        ; $487f: $6c
	sbc  a                                           ; $4880: $9f
	dec  c                                           ; $4881: $0d
	nop                                              ; $4882: $00
	ld   a, [bc]                                     ; $4883: $0a
	inc  e                                           ; $4884: $1c
	ld   [bc], a                                     ; $4885: $02
	ld   [bc], a                                     ; $4886: $02
	ld   [bc], a                                     ; $4887: $02
	ld   bc, $0008                                   ; $4888: $01 $08 $00
	ld   h, e                                        ; $488b: $63
	and  c                                           ; $488c: $a1
	sbc  a                                           ; $488d: $9f
	dec  c                                           ; $488e: $0d
	sbc  l                                           ; $488f: $9d
	ld   l, l                                        ; $4890: $6d
	ld   e, l                                        ; $4891: $5d
	ld   h, l                                        ; $4892: $65
	halt                                             ; $4893: $76
	ld   a, h                                        ; $4894: $7c
	inc  b                                           ; $4895: $04
	ldh  [$03], a                                    ; $4896: $e0 $03
	dec  hl                                          ; $4898: $2b
	dec  c                                           ; $4899: $0d
	inc  b                                           ; $489a: $04
	and  e                                           ; $489b: $a3
	sbc  d                                           ; $489c: $9a
	ld   [hl], h                                     ; $489d: $74
	adc  h                                           ; $489e: $8c
	ld   h, l                                        ; $489f: $65
	ld   l, l                                        ; $48a0: $6d
	sbc  l                                           ; $48a1: $9d
	ld   a, e                                        ; $48a2: $7b
	ld   sp, hl                                      ; $48a3: $f9
	dec  c                                           ; $48a4: $0d
	nop                                              ; $48a5: $00
	ld   a, [bc]                                     ; $48a6: $0a
	ld   bc, $4505                                   ; $48a7: $01 $05 $45
	inc  b                                           ; $48aa: $04
	rst  $28                                         ; $48ab: $ef
	sbc  [hl]                                        ; $48ac: $9e
	inc  b                                           ; $48ad: $04
	adc  [hl]                                        ; $48ae: $8e
	inc  b                                           ; $48af: $04
	inc  c                                           ; $48b0: $0c
	ld   e, a                                        ; $48b1: $5f
	ld   d, d                                        ; $48b2: $52
	ld   h, c                                        ; $48b3: $61
	and  b                                           ; $48b4: $a0
	ld   h, a                                        ; $48b5: $67
	sbc  c                                           ; $48b6: $99
	ld   e, c                                        ; $48b7: $59
	sub  a                                           ; $48b8: $97
	dec  c                                           ; $48b9: $0d
	inc  b                                           ; $48ba: $04
	adc  [hl]                                        ; $48bb: $8e
	inc  b                                           ; $48bc: $04
	inc  c                                           ; $48bd: $0c
	ld   a, c                                        ; $48be: $79
	ld   e, l                                        ; $48bf: $5d
	sbc  c                                           ; $48c0: $99
	sub  [hl]                                        ; $48c1: $96
	ld   d, h                                        ; $48c2: $54
	ld   a, c                                        ; $48c3: $79
	dec  c                                           ; $48c4: $0d
	ld   [bc], a                                     ; $48c5: $02
	sbc  l                                           ; $48c6: $9d
	ld   d, d                                        ; $48c7: $52
	adc  h                                           ; $48c8: $8c
	ld   h, l                                        ; $48c9: $65
	ld   l, l                                        ; $48ca: $6d
	sbc  l                                           ; $48cb: $9d
	sub  [hl]                                        ; $48cc: $96
	ld   a, e                                        ; $48cd: $7b
	sbc  a                                           ; $48ce: $9f
	dec  c                                           ; $48cf: $0d
	nop                                              ; $48d0: $00
	ld   a, [bc]                                     ; $48d1: $0a
	dec  e                                           ; $48d2: $1d
	ld   b, b                                        ; $48d3: $40
	ld   [de], a                                     ; $48d4: $12
	inc  bc                                          ; $48d5: $03
	ld   [de], a                                     ; $48d6: $12
	ld   bc, $2903                                   ; $48d7: $01 $03 $29
	nop                                              ; $48da: $00
	ld   bc, $6d9d                                   ; $48db: $01 $9d $6d
	ld   e, l                                        ; $48de: $5d
	ld   h, l                                        ; $48df: $65
	halt                                             ; $48e0: $76
	ld   a, h                                        ; $48e1: $7c
	inc  b                                           ; $48e2: $04
	ldh  [$03], a                                    ; $48e3: $e0 $03
	dec  hl                                          ; $48e5: $2b
	and  b                                           ; $48e6: $a0
	dec  c                                           ; $48e7: $0d
	sub  d                                           ; $48e8: $92
	add  h                                           ; $48e9: $84
	sbc  c                                           ; $48ea: $99
	ld   a, b                                        ; $48eb: $78
	and  c                                           ; $48ec: $a1
	ld   [hl], h                                     ; $48ed: $74
	sbc  [hl]                                        ; $48ee: $9e
	inc  bc                                          ; $48ef: $03
	ld   l, c                                        ; $48f0: $69
	inc  bc                                          ; $48f1: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48f2: $cf
	ld   [hl], l                                     ; $48f3: $75
	ld   h, a                                        ; $48f4: $67
	sbc  l                                           ; $48f5: $9d
	ld   a, [$040d]                                  ; $48f6: $fa $0d $04
	ld   e, h                                        ; $48f9: $5c
	ld   b, $c4                                      ; $48fa: $06 $c4
	ld   a, b                                        ; $48fc: $78
	ld   h, e                                        ; $48fd: $63
	ld   d, d                                        ; $48fe: $52
	sbc  a                                           ; $48ff: $9f
	dec  c                                           ; $4900: $0d
	nop                                              ; $4901: $00
	ld   a, [bc]                                     ; $4902: $0a
	inc  e                                           ; $4903: $1c
	ld   [bc], a                                     ; $4904: $02
	rlca                                             ; $4905: $07
	rlca                                             ; $4906: $07
	ld   bc, $9a61                                   ; $4907: $01 $61 $9a
	ld   e, c                                        ; $490a: $59
	sub  a                                           ; $490b: $97
	ld   a, l                                        ; $490c: $7d
	ld   [bc], a                                     ; $490d: $02
	and  c                                           ; $490e: $a1
	and  b                                           ; $490f: $a0
	ld   [hl], d                                     ; $4910: $72
	ld   e, a                                        ; $4911: $5f
	ld   a, b                                        ; $4912: $78
	ld   h, e                                        ; $4913: $63
	ld   d, d                                        ; $4914: $52
	sbc  a                                           ; $4915: $9f
	dec  c                                           ; $4916: $0d
	sbc  l                                           ; $4917: $9d
	ld   e, c                                        ; $4918: $59
	sbc  b                                           ; $4919: $98
	adc  h                                           ; $491a: $8c
	ld   h, l                                        ; $491b: $65
	ld   l, l                                        ; $491c: $6d
	sbc  l                                           ; $491d: $9d
	ld   a, e                                        ; $491e: $7b
	ld   sp, hl                                      ; $491f: $f9
	dec  c                                           ; $4920: $0d
	ld   [hl], l                                     ; $4921: $75
	ld   a, l                                        ; $4922: $7d
	sbc  [hl]                                        ; $4923: $9e
	inc  bc                                          ; $4924: $03
	add  e                                           ; $4925: $83
	dec  b                                           ; $4926: $05
	dec  c                                           ; $4927: $0d
	rst  $38                                         ; $4928: $ff
	rst  $38                                         ; $4929: $ff
	dec  c                                           ; $492a: $0d
	nop                                              ; $492b: $00
	ld   a, [bc]                                     ; $492c: $0a
	dec  c                                           ; $492d: $0d
	nop                                              ; $492e: $00
	nop                                              ; $492f: $00
	rrca                                             ; $4930: $0f
	nop                                              ; $4931: $00
	ld   bc, $1e09                                   ; $4932: $01 $09 $1e
	add  hl, hl                                      ; $4935: $29
	ld   bc, $0000                                   ; $4936: $01 $00 $00
	inc  b                                           ; $4939: $04
	add  b                                           ; $493a: $80
	add  l                                           ; $493b: $85
	ld   bc, $20ff                                   ; $493c: $01 $ff $20
	nop                                              ; $493f: $00
	ld   c, $01                                      ; $4940: $0e $01
	rrca                                             ; $4942: $0f
	nop                                              ; $4943: $00
	ld   bc, $0502                                   ; $4944: $01 $02 $05
	ld   b, b                                        ; $4947: $40
	ld   d, e                                        ; $4948: $53
	ld   bc, $0000                                   ; $4949: $01 $00 $00
	ld   bc, $a502                                   ; $494c: $01 $02 $a5
	inc  b                                           ; $494f: $04
	xor  d                                           ; $4950: $aa
	ld   a, l                                        ; $4951: $7d
	sbc  [hl]                                        ; $4952: $9e
	xor  h                                           ; $4953: $ac
	push af                                          ; $4954: $f5
	bit  4, e                                        ; $4955: $cb $63
	and  c                                           ; $4957: $a1
	halt                                             ; $4958: $76
	dec  c                                           ; $4959: $0d
	ld   e, b                                        ; $495a: $58
	inc  bc                                          ; $495b: $03
	add  b                                           ; $495c: $80
	ld   e, c                                        ; $495d: $59
	ld   e, a                                        ; $495e: $5f
	ld   l, [hl]                                     ; $495f: $6e
	sbc  a                                           ; $4960: $9f
	dec  c                                           ; $4961: $0d
	dec  b                                           ; $4962: $05
	jr   z, jr_055_49b7                              ; $4963: $28 $52

	ld   [hl], l                                     ; $4965: $75
	inc  b                                           ; $4966: $04
	rlca                                             ; $4967: $07
	dec  b                                           ; $4968: $05
	scf                                              ; $4969: $37
	ld   d, [hl]                                     ; $496a: $56
	ld   a, b                                        ; $496b: $78
	ld   e, l                                        ; $496c: $5d
	ld   l, a                                        ; $496d: $6f
	sub  c                                           ; $496e: $91
	sbc  a                                           ; $496f: $9f
	dec  c                                           ; $4970: $0d
	nop                                              ; $4971: $00
	ld   a, [bc]                                     ; $4972: $0a
	add  hl, de                                      ; $4973: $19
	inc  b                                           ; $4974: $04
	inc  bc                                          ; $4975: $03
	cp   b                                           ; $4976: $b8
	push hl                                          ; $4977: $e5
	push bc                                          ; $4978: $c5
	and  b                                           ; $4979: $a0
	inc  b                                           ; $497a: $04
	rlca                                             ; $497b: $07
	sbc  c                                           ; $497c: $99
	nop                                              ; $497d: $00
	nop                                              ; $497e: $00
	cp   b                                           ; $497f: $b8
	push hl                                          ; $4980: $e5
	or   d                                           ; $4981: $b2
	and  b                                           ; $4982: $a0
	inc  bc                                          ; $4983: $03
	dec  de                                          ; $4984: $1b
	sbc  c                                           ; $4985: $99
	nop                                              ; $4986: $00
	ld   bc, $e5b8                                   ; $4987: $01 $b8 $e5
	pop  af                                          ; $498a: $f1
	ei                                               ; $498b: $fb
	and  b                                           ; $498c: $a0
	ld   d, b                                        ; $498d: $50
	add  c                                           ; $498e: $81
	sbc  c                                           ; $498f: $99
	nop                                              ; $4990: $00
	ld   [bc], a                                     ; $4991: $02
	rlca                                             ; $4992: $07
	ld   [hl], b                                     ; $4993: $70
	nop                                              ; $4994: $00
	ld   [bc], a                                     ; $4995: $02
	inc  bc                                          ; $4996: $03
	ld   bc, $2000                                   ; $4997: $01 $00 $20
	nop                                              ; $499a: $00
	rlca                                             ; $499b: $07
	sub  c                                           ; $499c: $91
	nop                                              ; $499d: $00
	ld   [bc], a                                     ; $499e: $02
	inc  bc                                          ; $499f: $03
	ld   bc, $2001                                   ; $49a0: $01 $01 $20
	nop                                              ; $49a3: $00
	rlca                                             ; $49a4: $07
	call $0200                                       ; $49a5: $cd $00 $02
	inc  bc                                          ; $49a8: $03
	ld   bc, $2002                                   ; $49a9: $01 $02 $20
	nop                                              ; $49ac: $00
	ld   b, $0e                                      ; $49ad: $06 $0e
	ld   bc, $000f                                   ; $49af: $01 $0f $00
	ld   bc, $8c01                                   ; $49b2: $01 $01 $8c
	ld   l, b                                        ; $49b5: $68
	ld   a, l                                        ; $49b6: $7d

jr_055_49b7:
	sbc  [hl]                                        ; $49b7: $9e
	cp   b                                           ; $49b8: $b8
	push hl                                          ; $49b9: $e5
	push bc                                          ; $49ba: $c5
	and  b                                           ; $49bb: $a0
	inc  b                                           ; $49bc: $04
	rlca                                             ; $49bd: $07
	ld   [hl], h                                     ; $49be: $74
	halt                                             ; $49bf: $76
	rst  $38                                         ; $49c0: $ff
	rst  $38                                         ; $49c1: $ff
	dec  c                                           ; $49c2: $0d
	nop                                              ; $49c3: $00
	ld   a, [bc]                                     ; $49c4: $0a
	dec  b                                           ; $49c5: $05
	ld   b, b                                        ; $49c6: $40
	rst  $38                                         ; $49c7: $ff
	inc  bc                                          ; $49c8: $03
	rst  $38                                         ; $49c9: $ff
	ld   bc, $2801                                   ; $49ca: $01 $01 $28
	nop                                              ; $49cd: $00
	ld   b, $31                                      ; $49ce: $06 $31
	ld   bc, $000f                                   ; $49d0: $01 $0f $00
	ld   bc, $8c01                                   ; $49d3: $01 $01 $8c
	ld   l, b                                        ; $49d6: $68
	ld   a, l                                        ; $49d7: $7d
	sbc  [hl]                                        ; $49d8: $9e
	cp   b                                           ; $49d9: $b8
	push hl                                          ; $49da: $e5
	or   d                                           ; $49db: $b2
	and  b                                           ; $49dc: $a0
	inc  bc                                          ; $49dd: $03
	dec  de                                          ; $49de: $1b
	ld   [hl], c                                     ; $49df: $71
	ld   [hl], h                                     ; $49e0: $74
	rst  $38                                         ; $49e1: $ff
	rst  $38                                         ; $49e2: $ff
	dec  c                                           ; $49e3: $0d
	and  c                                           ; $49e4: $a1
	ld   sp, hl                                      ; $49e5: $f9
	db   $10                                         ; $49e6: $10
	ld   a, b                                        ; $49e7: $78
	and  c                                           ; $49e8: $a1
	ld   [hl], l                                     ; $49e9: $75
	cp   b                                           ; $49ea: $b8
	push hl                                          ; $49eb: $e5
	or   d                                           ; $49ec: $b2
	and  b                                           ; $49ed: $a0
	dec  c                                           ; $49ee: $0d
	nop                                              ; $49ef: $00
	dec  b                                           ; $49f0: $05
	ld   b, b                                        ; $49f1: $40
	rst  $38                                         ; $49f2: $ff
	inc  bc                                          ; $49f3: $03
	rst  $38                                         ; $49f4: $ff
	ld   bc, $2801                                   ; $49f5: $01 $01 $28
	nop                                              ; $49f8: $00
	ld   bc, $1b03                                   ; $49f9: $01 $03 $1b
	sub  a                                           ; $49fc: $97
	ld   a, b                                        ; $49fd: $78
	ld   e, e                                        ; $49fe: $5b
	sub  c                                           ; $49ff: $91
	ld   d, d                                        ; $4a00: $52
	ld   e, a                                        ; $4a01: $5f
	ld   a, b                                        ; $4a02: $78
	ld   d, d                                        ; $4a03: $52
	and  c                                           ; $4a04: $a1
	ld   l, [hl]                                     ; $4a05: $6e
	ld   sp, hl                                      ; $4a06: $f9
	dec  c                                           ; $4a07: $0d
	nop                                              ; $4a08: $00
	ld   a, [bc]                                     ; $4a09: $0a
	ld   b, $33                                      ; $4a0a: $06 $33
	nop                                              ; $4a0c: $00
	rrca                                             ; $4a0d: $0f
	nop                                              ; $4a0e: $00
	ld   bc, $8c01                                   ; $4a0f: $01 $01 $8c
	ld   l, b                                        ; $4a12: $68
	ld   a, l                                        ; $4a13: $7d
	rst  $38                                         ; $4a14: $ff
	rst  $38                                         ; $4a15: $ff
	cp   b                                           ; $4a16: $b8
	push hl                                          ; $4a17: $e5
	pop  af                                          ; $4a18: $f1
	ei                                               ; $4a19: $fb
	and  b                                           ; $4a1a: $a0
	ld   d, b                                        ; $4a1b: $50
	add  c                                           ; $4a1c: $81
	sub  [hl]                                        ; $4a1d: $96
	ld   d, h                                        ; $4a1e: $54
	dec  c                                           ; $4a1f: $0d
	ld   e, c                                        ; $4a20: $59
	ld   a, b                                        ; $4a21: $78
	ld   sp, hl                                      ; $4a22: $f9
	db   $10                                         ; $4a23: $10
	rst  $38                                         ; $4a24: $ff
	rst  $38                                         ; $4a25: $ff
	ld   d, d                                        ; $4a26: $52
	sub  d                                           ; $4a27: $92
	ld   d, d                                        ; $4a28: $52
	sub  d                                           ; $4a29: $92
	sbc  [hl]                                        ; $4a2a: $9e
	ld   l, e                                        ; $4a2b: $6b
	and  c                                           ; $4a2c: $a1
	ld   a, b                                        ; $4a2d: $78
	dec  c                                           ; $4a2e: $0d
	nop                                              ; $4a2f: $00
	dec  b                                           ; $4a30: $05
	ld   b, b                                        ; $4a31: $40
	rst  $38                                         ; $4a32: $ff
	inc  bc                                          ; $4a33: $03
	rst  $38                                         ; $4a34: $ff
	ld   bc, $2801                                   ; $4a35: $01 $01 $28
	nop                                              ; $4a38: $00
	ld   bc, $7661                                   ; $4a39: $01 $61 $76
	ld   h, l                                        ; $4a3c: $65
	ld   [hl], h                                     ; $4a3d: $74
	sbc  c                                           ; $4a3e: $99
	inc  bc                                          ; $4a3f: $03
	ld   l, a                                        ; $4a40: $6f
	ld   [bc], a                                     ; $4a41: $02
	xor  c                                           ; $4a42: $a9
	ld   a, l                                        ; $4a43: $7d
	ld   a, b                                        ; $4a44: $78
	ld   d, d                                        ; $4a45: $52
	ld   l, h                                        ; $4a46: $6c
	sbc  a                                           ; $4a47: $9f
	dec  c                                           ; $4a48: $0d
	nop                                              ; $4a49: $00
	ld   a, [bc]                                     ; $4a4a: $0a
	ld   b, $33                                      ; $4a4b: $06 $33
	nop                                              ; $4a4d: $00
	rrca                                             ; $4a4e: $0f
	nop                                              ; $4a4f: $00
	ld   bc, $8c01                                   ; $4a50: $01 $01 $8c
	ld   l, b                                        ; $4a53: $68
	ld   a, l                                        ; $4a54: $7d
	rst  $38                                         ; $4a55: $ff
	rst  $38                                         ; $4a56: $ff
	dec  c                                           ; $4a57: $0d
	ld   [hl], a                                     ; $4a58: $77
	ld   d, h                                        ; $4a59: $54
	ld   h, l                                        ; $4a5a: $65
	sub  [hl]                                        ; $4a5b: $96
	ld   d, h                                        ; $4a5c: $54
	ld   e, c                                        ; $4a5d: $59
	rst  $38                                         ; $4a5e: $ff
	rst  $38                                         ; $4a5f: $ff
	rst  $38                                         ; $4a60: $ff
	rst  $38                                         ; $4a61: $ff
	dec  c                                           ; $4a62: $0d
	nop                                              ; $4a63: $00
	ld   a, [bc]                                     ; $4a64: $0a
	dec  b                                           ; $4a65: $05
	ld   b, b                                        ; $4a66: $40
	rst  $38                                         ; $4a67: $ff
	inc  bc                                          ; $4a68: $03
	rst  $38                                         ; $4a69: $ff
	ld   bc, $2801                                   ; $4a6a: $01 $01 $28
	nop                                              ; $4a6d: $00
	ld   b, $33                                      ; $4a6e: $06 $33
	nop                                              ; $4a70: $00
	add  hl, de                                      ; $4a71: $19
	inc  b                                           ; $4a72: $04
	inc  bc                                          ; $4a73: $03
	ld   e, l                                        ; $4a74: $5d
	ld   [hl], d                                     ; $4a75: $72
	ld   h, l                                        ; $4a76: $65
	ld   l, l                                        ; $4a77: $6d
	and  b                                           ; $4a78: $a0
	ld   a, l                                        ; $4a79: $7d
	ld   e, l                                        ; $4a7a: $5d
	nop                                              ; $4a7b: $00
	nop                                              ; $4a7c: $00
	ld   e, l                                        ; $4a7d: $5d
	ld   [hl], d                                     ; $4a7e: $72
	ld   h, l                                        ; $4a7f: $65
	ld   l, l                                        ; $4a80: $6d
	and  b                                           ; $4a81: $a0
	ld   h, e                                        ; $4a82: $63
	ld   e, l                                        ; $4a83: $5d
	nop                                              ; $4a84: $00
	ld   bc, $715e                                   ; $4a85: $01 $5e $71
	ld   l, l                                        ; $4a88: $6d
	sbc  b                                           ; $4a89: $98
	halt                                             ; $4a8a: $76
	ld   h, a                                        ; $4a8b: $67
	sbc  c                                           ; $4a8c: $99
	nop                                              ; $4a8d: $00
	ld   [bc], a                                     ; $4a8e: $02
	rlca                                             ; $4a8f: $07
	ld   l, l                                        ; $4a90: $6d
	ld   bc, $0302                                   ; $4a91: $01 $02 $03
	ld   bc, $2000                                   ; $4a94: $01 $00 $20
	nop                                              ; $4a97: $00
	rlca                                             ; $4a98: $07
	adc  l                                           ; $4a99: $8d
	ld   bc, $0302                                   ; $4a9a: $01 $02 $03
	ld   bc, $2001                                   ; $4a9d: $01 $01 $20
	nop                                              ; $4aa0: $00
	rlca                                             ; $4aa1: $07
	rst  ToBoot                                         ; $4aa2: $c7
	ld   bc, $0302                                   ; $4aa3: $01 $02 $03
	ld   bc, $2002                                   ; $4aa6: $01 $02 $20
	nop                                              ; $4aa9: $00
	ld   b, $f8                                      ; $4aaa: $06 $f8
	ld   bc, $000f                                   ; $4aac: $01 $0f $00
	ld   bc, $0301                                   ; $4aaf: $01 $01 $03
	ld   l, b                                        ; $4ab2: $68
	ld   a, c                                        ; $4ab3: $79
	ld   e, l                                        ; $4ab4: $5d
	ld   [hl], d                                     ; $4ab5: $72
	ld   h, l                                        ; $4ab6: $65
	ld   l, l                                        ; $4ab7: $6d
	and  b                                           ; $4ab8: $a0
	ld   a, l                                        ; $4ab9: $7d
	ld   d, d                                        ; $4aba: $52
	ld   [hl], h                                     ; $4abb: $74
	rst  $38                                         ; $4abc: $ff
	rst  $38                                         ; $4abd: $ff
	dec  c                                           ; $4abe: $0d
	nop                                              ; $4abf: $00
	ld   a, [bc]                                     ; $4ac0: $0a
	dec  b                                           ; $4ac1: $05
	ld   b, b                                        ; $4ac2: $40
	rst  $38                                         ; $4ac3: $ff
	inc  bc                                          ; $4ac4: $03
	rst  $38                                         ; $4ac5: $ff
	ld   bc, $2801                                   ; $4ac6: $01 $01 $28
	nop                                              ; $4ac9: $00
	ld   b, $1b                                      ; $4aca: $06 $1b
	ld   [bc], a                                     ; $4acc: $02
	rrca                                             ; $4acd: $0f
	nop                                              ; $4ace: $00
	ld   bc, $0301                                   ; $4acf: $01 $01 $03
	ld   l, b                                        ; $4ad2: $68
	ld   a, c                                        ; $4ad3: $79
	sbc  [hl]                                        ; $4ad4: $9e
	ld   e, l                                        ; $4ad5: $5d
	ld   [hl], d                                     ; $4ad6: $72
	ld   h, l                                        ; $4ad7: $65
	ld   l, l                                        ; $4ad8: $6d
	and  b                                           ; $4ad9: $a0
	ld   h, e                                        ; $4ada: $63
	ld   d, d                                        ; $4adb: $52
	ld   [hl], h                                     ; $4adc: $74
	rst  $38                                         ; $4add: $ff
	rst  $38                                         ; $4ade: $ff
	dec  c                                           ; $4adf: $0d
	and  c                                           ; $4ae0: $a1
	ld   sp, hl                                      ; $4ae1: $f9
	db   $10                                         ; $4ae2: $10
	ld   h, e                                        ; $4ae3: $63
	ld   d, d                                        ; $4ae4: $52
	ld   [hl], h                                     ; $4ae5: $74
	ld   [hl], c                                     ; $4ae6: $71
	ld   [hl], h                                     ; $4ae7: $74
	rst  $38                                         ; $4ae8: $ff
	rst  $38                                         ; $4ae9: $ff
	dec  c                                           ; $4aea: $0d
	nop                                              ; $4aeb: $00
	dec  b                                           ; $4aec: $05
	ld   b, b                                        ; $4aed: $40
	rst  $38                                         ; $4aee: $ff
	inc  bc                                          ; $4aef: $03
	rst  $38                                         ; $4af0: $ff
	ld   bc, $2801                                   ; $4af1: $01 $01 $28
	nop                                              ; $4af4: $00
	ld   bc, $8492                                   ; $4af5: $01 $92 $84
	ld   [hl], c                                     ; $4af8: $71
	ld   l, a                                        ; $4af9: $6f
	sub  c                                           ; $4afa: $91
	pop  bc                                          ; $4afb: $c1
	db   $e3                                         ; $4afc: $e3
	ld   [hl], l                                     ; $4afd: $75
	ld   h, l                                        ; $4afe: $65
	sub  l                                           ; $4aff: $95
	sbc  a                                           ; $4b00: $9f
	dec  c                                           ; $4b01: $0d
	nop                                              ; $4b02: $00
	ld   a, [bc]                                     ; $4b03: $0a
	ld   b, $31                                      ; $4b04: $06 $31
	ld   bc, $000f                                   ; $4b06: $01 $0f $00
	ld   bc, $0301                                   ; $4b09: $01 $01 $03
	ld   l, b                                        ; $4b0c: $68
	ld   a, c                                        ; $4b0d: $79
	halt                                             ; $4b0e: $76
	rst  $38                                         ; $4b0f: $ff
	rst  $38                                         ; $4b10: $ff
	dec  c                                           ; $4b11: $0d
	ld   d, h                                        ; $4b12: $54
	db   $fc                                         ; $4b13: $fc
	and  c                                           ; $4b14: $a1
	sbc  [hl]                                        ; $4b15: $9e
	ld   e, [hl]                                     ; $4b16: $5e
	ld   [hl], c                                     ; $4b17: $71
	ld   l, l                                        ; $4b18: $6d
	sbc  b                                           ; $4b19: $98
	rst  $38                                         ; $4b1a: $ff
	rst  $38                                         ; $4b1b: $ff
	dec  c                                           ; $4b1c: $0d
	nop                                              ; $4b1d: $00
	dec  b                                           ; $4b1e: $05
	ld   b, b                                        ; $4b1f: $40
	rst  $38                                         ; $4b20: $ff
	inc  bc                                          ; $4b21: $03
	rst  $38                                         ; $4b22: $ff
	ld   bc, $2801                                   ; $4b23: $01 $01 $28
	nop                                              ; $4b26: $00
	ld   bc, $7471                                   ; $4b27: $01 $71 $74
	sbc  [hl]                                        ; $4b2a: $9e
	ld   l, a                                        ; $4b2b: $6f
	ld   e, d                                        ; $4b2c: $5a
	ld   d, h                                        ; $4b2d: $54
	ld   [hl], c                                     ; $4b2e: $71
	ld   [hl], h                                     ; $4b2f: $74
	ld   a, [$0dfa]                                  ; $4b30: $fa $fa $0d
	nop                                              ; $4b33: $00
	ld   a, [bc]                                     ; $4b34: $0a
	ld   b, $31                                      ; $4b35: $06 $31
	ld   bc, $000f                                   ; $4b37: $01 $0f $00
	ld   bc, $0301                                   ; $4b3a: $01 $01 $03
	ld   l, b                                        ; $4b3d: $68
	ld   a, c                                        ; $4b3e: $79
	rst  $38                                         ; $4b3f: $ff
	rst  $38                                         ; $4b40: $ff
	dec  c                                           ; $4b41: $0d
	ld   [hl], a                                     ; $4b42: $77
	ld   d, h                                        ; $4b43: $54
	ld   h, l                                        ; $4b44: $65
	sub  [hl]                                        ; $4b45: $96
	ld   d, h                                        ; $4b46: $54
	ld   e, c                                        ; $4b47: $59
	rst  $38                                         ; $4b48: $ff
	rst  $38                                         ; $4b49: $ff
	rst  $38                                         ; $4b4a: $ff
	rst  $38                                         ; $4b4b: $ff
	dec  c                                           ; $4b4c: $0d
	nop                                              ; $4b4d: $00
	ld   a, [bc]                                     ; $4b4e: $0a
	dec  b                                           ; $4b4f: $05
	ld   b, b                                        ; $4b50: $40
	rst  $38                                         ; $4b51: $ff
	inc  bc                                          ; $4b52: $03
	rst  $38                                         ; $4b53: $ff
	ld   bc, $2801                                   ; $4b54: $01 $01 $28
	nop                                              ; $4b57: $00
	ld   b, $31                                      ; $4b58: $06 $31
	ld   bc, $0419                                   ; $4b5a: $01 $19 $04
	inc  bc                                          ; $4b5d: $03
	cp   e                                           ; $4b5e: $bb
	db   $dd                                         ; $4b5f: $dd
	push af                                          ; $4b60: $f5
	and  b                                           ; $4b61: $a0
	ld   a, l                                        ; $4b62: $7d
	ld   e, l                                        ; $4b63: $5d
	nop                                              ; $4b64: $00
	nop                                              ; $4b65: $00
	cp   e                                           ; $4b66: $bb
	xor  [hl]                                        ; $4b67: $ae
	push af                                          ; $4b68: $f5
	and  b                                           ; $4b69: $a0
	ld   e, c                                        ; $4b6a: $59
	add  h                                           ; $4b6b: $84
	sbc  c                                           ; $4b6c: $99
	nop                                              ; $4b6d: $00
	ld   bc, $ddbb                                   ; $4b6e: $01 $bb $dd
	push af                                          ; $4b71: $f5
	and  b                                           ; $4b72: $a0
	ld   a, d                                        ; $4b73: $7a
	ld   e, [hl]                                     ; $4b74: $5e
	nop                                              ; $4b75: $00
	ld   [bc], a                                     ; $4b76: $02
	rlca                                             ; $4b77: $07
	ld   d, l                                        ; $4b78: $55
	ld   [bc], a                                     ; $4b79: $02
	ld   [bc], a                                     ; $4b7a: $02
	inc  bc                                          ; $4b7b: $03
	ld   bc, $2000                                   ; $4b7c: $01 $00 $20
	nop                                              ; $4b7f: $00
	rlca                                             ; $4b80: $07
	ld   [hl], l                                     ; $4b81: $75
	ld   [bc], a                                     ; $4b82: $02
	ld   [bc], a                                     ; $4b83: $02
	inc  bc                                          ; $4b84: $03
	ld   bc, $2001                                   ; $4b85: $01 $01 $20
	nop                                              ; $4b88: $00
	rlca                                             ; $4b89: $07
	xor  c                                           ; $4b8a: $a9
	ld   [bc], a                                     ; $4b8b: $02
	ld   [bc], a                                     ; $4b8c: $02
	inc  bc                                          ; $4b8d: $03
	ld   bc, $2002                                   ; $4b8e: $01 $02 $20
	nop                                              ; $4b91: $00
	ld   b, $db                                      ; $4b92: $06 $db
	ld   [bc], a                                     ; $4b94: $02
	rrca                                             ; $4b95: $0f
	nop                                              ; $4b96: $00
	ld   bc, $6b01                                   ; $4b97: $01 $01 $6b
	ld   h, l                                        ; $4b9a: $65
	ld   [hl], h                                     ; $4b9b: $74
	sbc  [hl]                                        ; $4b9c: $9e
	cp   e                                           ; $4b9d: $bb
	db   $dd                                         ; $4b9e: $dd
	push af                                          ; $4b9f: $f5
	and  b                                           ; $4ba0: $a0
	ld   a, l                                        ; $4ba1: $7d
	ld   d, d                                        ; $4ba2: $52
	ld   [hl], h                                     ; $4ba3: $74
	rst  $38                                         ; $4ba4: $ff
	rst  $38                                         ; $4ba5: $ff
	dec  c                                           ; $4ba6: $0d
	nop                                              ; $4ba7: $00
	ld   a, [bc]                                     ; $4ba8: $0a
	dec  b                                           ; $4ba9: $05
	ld   b, b                                        ; $4baa: $40
	rst  $38                                         ; $4bab: $ff
	inc  bc                                          ; $4bac: $03
	rst  $38                                         ; $4bad: $ff
	ld   bc, $2801                                   ; $4bae: $01 $01 $28
	nop                                              ; $4bb1: $00
	ld   b, $fe                                      ; $4bb2: $06 $fe
	ld   [bc], a                                     ; $4bb4: $02
	rrca                                             ; $4bb5: $0f
	nop                                              ; $4bb6: $00
	ld   bc, $bb01                                   ; $4bb7: $01 $01 $bb
	xor  [hl]                                        ; $4bba: $ae
	push af                                          ; $4bbb: $f5
	and  b                                           ; $4bbc: $a0
	ld   e, c                                        ; $4bbd: $59
	add  h                                           ; $4bbe: $84
	ld   [hl], c                                     ; $4bbf: $71
	ld   [hl], h                                     ; $4bc0: $74
	rst  $38                                         ; $4bc1: $ff
	rst  $38                                         ; $4bc2: $ff
	dec  c                                           ; $4bc3: $0d
	rst  $38                                         ; $4bc4: $ff
	rst  $38                                         ; $4bc5: $ff
	and  c                                           ; $4bc6: $a1
	ld   sp, hl                                      ; $4bc7: $f9
	db   $10                                         ; $4bc8: $10
	ld   a, b                                        ; $4bc9: $78
	and  c                                           ; $4bca: $a1
	ld   [hl], l                                     ; $4bcb: $75
	ld   l, e                                        ; $4bcc: $6b
	and  c                                           ; $4bcd: $a1
	ld   a, b                                        ; $4bce: $78
	sub  b                                           ; $4bcf: $90
	ld   a, h                                        ; $4bd0: $7c
	dec  c                                           ; $4bd1: $0d
	nop                                              ; $4bd2: $00
	dec  b                                           ; $4bd3: $05
	ld   b, b                                        ; $4bd4: $40
	rst  $38                                         ; $4bd5: $ff
	inc  bc                                          ; $4bd6: $03
	rst  $38                                         ; $4bd7: $ff
	ld   bc, $2801                                   ; $4bd8: $01 $01 $28
	nop                                              ; $4bdb: $00
	ld   bc, $8459                                   ; $4bdc: $01 $59 $84
	sbc  c                                           ; $4bdf: $99
	and  c                                           ; $4be0: $a1
	ld   l, [hl]                                     ; $4be1: $6e
	ld   sp, hl                                      ; $4be2: $f9
	dec  c                                           ; $4be3: $0d
	nop                                              ; $4be4: $00
	ld   a, [bc]                                     ; $4be5: $0a
	ld   b, $1b                                      ; $4be6: $06 $1b
	ld   [bc], a                                     ; $4be8: $02
	rrca                                             ; $4be9: $0f
	nop                                              ; $4bea: $00
	ld   bc, $6b01                                   ; $4beb: $01 $01 $6b
	ld   h, l                                        ; $4bee: $65
	ld   [hl], h                                     ; $4bef: $74
	sbc  [hl]                                        ; $4bf0: $9e
	cp   e                                           ; $4bf1: $bb
	db   $dd                                         ; $4bf2: $dd
	push af                                          ; $4bf3: $f5
	and  b                                           ; $4bf4: $a0
	ld   a, d                                        ; $4bf5: $7a
	ld   e, [hl]                                     ; $4bf6: $5e
	sbc  a                                           ; $4bf7: $9f
	dec  c                                           ; $4bf8: $0d
	rst  $38                                         ; $4bf9: $ff
	rst  $38                                         ; $4bfa: $ff
	rst  $38                                         ; $4bfb: $ff
	rst  $38                                         ; $4bfc: $ff
	and  c                                           ; $4bfd: $a1
	ld   sp, hl                                      ; $4bfe: $f9
	dec  c                                           ; $4bff: $0d
	nop                                              ; $4c00: $00
	dec  b                                           ; $4c01: $05
	ld   b, b                                        ; $4c02: $40
	rst  $38                                         ; $4c03: $ff
	inc  bc                                          ; $4c04: $03
	rst  $38                                         ; $4c05: $ff
	ld   bc, $2801                                   ; $4c06: $01 $01 $28
	nop                                              ; $4c09: $00
	ld   bc, $527a                                   ; $4c0a: $01 $7a $52
	ld   h, [hl]                                     ; $4c0d: $66
	sub  c                                           ; $4c0e: $91
	pop  bc                                          ; $4c0f: $c1
	db   $e3                                         ; $4c10: $e3
	ld   [hl], l                                     ; $4c11: $75
	ld   h, l                                        ; $4c12: $65
	sub  l                                           ; $4c13: $95
	ld   sp, hl                                      ; $4c14: $f9
	dec  c                                           ; $4c15: $0d
	nop                                              ; $4c16: $00
	ld   a, [bc]                                     ; $4c17: $0a
	ld   b, $1b                                      ; $4c18: $06 $1b
	ld   [bc], a                                     ; $4c1a: $02
	rrca                                             ; $4c1b: $0f
	nop                                              ; $4c1c: $00
	ld   bc, $6b01                                   ; $4c1d: $01 $01 $6b
	ld   h, l                                        ; $4c20: $65
	ld   [hl], h                                     ; $4c21: $74
	rst  $38                                         ; $4c22: $ff
	rst  $38                                         ; $4c23: $ff
	dec  c                                           ; $4c24: $0d
	ld   [hl], a                                     ; $4c25: $77
	ld   d, h                                        ; $4c26: $54
	ld   h, l                                        ; $4c27: $65
	sub  [hl]                                        ; $4c28: $96
	ld   d, h                                        ; $4c29: $54
	ld   e, c                                        ; $4c2a: $59
	rst  $38                                         ; $4c2b: $ff
	rst  $38                                         ; $4c2c: $ff
	rst  $38                                         ; $4c2d: $ff
	rst  $38                                         ; $4c2e: $ff
	dec  c                                           ; $4c2f: $0d
	nop                                              ; $4c30: $00
	ld   a, [bc]                                     ; $4c31: $0a
	dec  b                                           ; $4c32: $05
	ld   b, b                                        ; $4c33: $40
	rst  $38                                         ; $4c34: $ff
	inc  bc                                          ; $4c35: $03
	rst  $38                                         ; $4c36: $ff
	ld   bc, $2801                                   ; $4c37: $01 $01 $28
	nop                                              ; $4c3a: $00
	ld   b, $1b                                      ; $4c3b: $06 $1b
	ld   [bc], a                                     ; $4c3d: $02
	add  hl, de                                      ; $4c3e: $19
	inc  b                                           ; $4c3f: $04
	inc  bc                                          ; $4c40: $03
	jp   c, $c9ba                                    ; $4c41: $da $ba $c9

	and  b                                           ; $4c44: $a0
	inc  b                                           ; $4c45: $04
	rlca                                             ; $4c46: $07
	sbc  c                                           ; $4c47: $99
	nop                                              ; $4c48: $00
	nop                                              ; $4c49: $00
	jp   c, $c9ed                                    ; $4c4a: $da $ed $c9

	and  b                                           ; $4c4d: $a0
	sub  h                                           ; $4c4e: $94
	sbc  c                                           ; $4c4f: $99
	adc  a                                           ; $4c50: $8f
	sbc  c                                           ; $4c51: $99
	nop                                              ; $4c52: $00
	ld   bc, $bada                                   ; $4c53: $01 $da $ba
	ret                                              ; $4c56: $c9


	and  b                                           ; $4c57: $a0
	ld   l, l                                        ; $4c58: $6d
	ld   l, l                                        ; $4c59: $6d
	adc  [hl]                                        ; $4c5a: $8e
	nop                                              ; $4c5b: $00
	ld   [bc], a                                     ; $4c5c: $02
	rlca                                             ; $4c5d: $07
	dec  sp                                          ; $4c5e: $3b
	inc  bc                                          ; $4c5f: $03
	ld   [bc], a                                     ; $4c60: $02
	inc  bc                                          ; $4c61: $03
	ld   bc, $2000                                   ; $4c62: $01 $00 $20
	nop                                              ; $4c65: $00
	rlca                                             ; $4c66: $07
	ld   e, b                                        ; $4c67: $58
	inc  bc                                          ; $4c68: $03
	ld   [bc], a                                     ; $4c69: $02
	inc  bc                                          ; $4c6a: $03
	ld   bc, $2001                                   ; $4c6b: $01 $01 $20
	nop                                              ; $4c6e: $00
	rlca                                             ; $4c6f: $07
	sub  [hl]                                        ; $4c70: $96
	inc  bc                                          ; $4c71: $03
	ld   [bc], a                                     ; $4c72: $02
	inc  bc                                          ; $4c73: $03
	ld   bc, $2002                                   ; $4c74: $01 $02 $20
	nop                                              ; $4c77: $00
	ld   b, $cc                                      ; $4c78: $06 $cc
	inc  bc                                          ; $4c7a: $03
	rrca                                             ; $4c7b: $0f
	nop                                              ; $4c7c: $00
	ld   bc, $da01                                   ; $4c7d: $01 $01 $da
	cp   d                                           ; $4c80: $ba
	ret                                              ; $4c81: $c9


	and  b                                           ; $4c82: $a0
	inc  b                                           ; $4c83: $04
	rlca                                             ; $4c84: $07
	ld   [hl], h                                     ; $4c85: $74
	halt                                             ; $4c86: $76
	rst  $38                                         ; $4c87: $ff
	rst  $38                                         ; $4c88: $ff
	dec  c                                           ; $4c89: $0d
	nop                                              ; $4c8a: $00
	ld   a, [bc]                                     ; $4c8b: $0a
	dec  b                                           ; $4c8c: $05
	ld   b, b                                        ; $4c8d: $40
	rst  $38                                         ; $4c8e: $ff
	inc  bc                                          ; $4c8f: $03
	rst  $38                                         ; $4c90: $ff
	ld   bc, $2801                                   ; $4c91: $01 $01 $28
	nop                                              ; $4c94: $00
	ld   b, $eb                                      ; $4c95: $06 $eb
	inc  bc                                          ; $4c97: $03
	rrca                                             ; $4c98: $0f
	nop                                              ; $4c99: $00
	ld   bc, $da01                                   ; $4c9a: $01 $01 $da
	db   $ed                                         ; $4c9d: $ed
	ret                                              ; $4c9e: $c9


	and  b                                           ; $4c9f: $a0
	sub  h                                           ; $4ca0: $94
	sbc  c                                           ; $4ca1: $99
	adc  a                                           ; $4ca2: $8f
	ld   [hl], h                                     ; $4ca3: $74
	halt                                             ; $4ca4: $76
	rst  $38                                         ; $4ca5: $ff
	rst  $38                                         ; $4ca6: $ff
	dec  c                                           ; $4ca7: $0d
	and  c                                           ; $4ca8: $a1
	ld   sp, hl                                      ; $4ca9: $f9
	db   $10                                         ; $4caa: $10
	cp   e                                           ; $4cab: $bb
	db   $dd                                         ; $4cac: $dd
	push af                                          ; $4cad: $f5
	and  b                                           ; $4cae: $a0
	ld   a, d                                        ; $4caf: $7a
	ld   d, d                                        ; $4cb0: $52
	ld   h, [hl]                                     ; $4cb1: $66
	sub  c                                           ; $4cb2: $91
	pop  bc                                          ; $4cb3: $c1
	db   $e3                                         ; $4cb4: $e3
	dec  c                                           ; $4cb5: $0d
	nop                                              ; $4cb6: $00
	dec  b                                           ; $4cb7: $05
	ld   b, b                                        ; $4cb8: $40
	rst  $38                                         ; $4cb9: $ff
	inc  bc                                          ; $4cba: $03
	rst  $38                                         ; $4cbb: $ff
	ld   bc, $2801                                   ; $4cbc: $01 $01 $28
	nop                                              ; $4cbf: $00
	ld   bc, $6575                                   ; $4cc0: $01 $75 $65
	sub  l                                           ; $4cc3: $95
	sbc  a                                           ; $4cc4: $9f
	inc  bc                                          ; $4cc5: $03
	ld   h, l                                        ; $4cc6: $65
	inc  b                                           ; $4cc7: $04
	rlca                                             ; $4cc8: $07
	and  b                                           ; $4cc9: $a0
	inc  b                                           ; $4cca: $04
	rlca                                             ; $4ccb: $07
	ld   a, b                                        ; $4ccc: $78
	ld   d, d                                        ; $4ccd: $52
	halt                                             ; $4cce: $76
	sbc  a                                           ; $4ccf: $9f
	dec  c                                           ; $4cd0: $0d
	nop                                              ; $4cd1: $00
	ld   a, [bc]                                     ; $4cd2: $0a
	ld   b, $fe                                      ; $4cd3: $06 $fe
	ld   [bc], a                                     ; $4cd5: $02
	rrca                                             ; $4cd6: $0f
	nop                                              ; $4cd7: $00
	ld   bc, $da01                                   ; $4cd8: $01 $01 $da
	cp   d                                           ; $4cdb: $ba
	ret                                              ; $4cdc: $c9


	and  b                                           ; $4cdd: $a0
	ld   l, l                                        ; $4cde: $6d
	ld   l, l                                        ; $4cdf: $6d
	and  c                                           ; $4ce0: $a1
	ld   [hl], l                                     ; $4ce1: $75
	halt                                             ; $4ce2: $76
	rst  $38                                         ; $4ce3: $ff
	rst  $38                                         ; $4ce4: $ff
	dec  c                                           ; $4ce5: $0d
	and  c                                           ; $4ce6: $a1
	ld   sp, hl                                      ; $4ce7: $f9
	db   $10                                         ; $4ce8: $10
	ld   l, l                                        ; $4ce9: $6d
	ld   l, l                                        ; $4cea: $6d
	and  c                                           ; $4ceb: $a1
	ld   h, [hl]                                     ; $4cec: $66
	sub  c                                           ; $4ced: $91
	pop  bc                                          ; $4cee: $c1
	db   $e3                                         ; $4cef: $e3
	ld   [hl], l                                     ; $4cf0: $75
	ld   h, l                                        ; $4cf1: $65
	sub  l                                           ; $4cf2: $95
	sbc  a                                           ; $4cf3: $9f
	dec  c                                           ; $4cf4: $0d
	nop                                              ; $4cf5: $00
	dec  b                                           ; $4cf6: $05
	ld   b, b                                        ; $4cf7: $40
	rst  $38                                         ; $4cf8: $ff
	inc  bc                                          ; $4cf9: $03
	rst  $38                                         ; $4cfa: $ff
	ld   bc, $2801                                   ; $4cfb: $01 $01 $28
	nop                                              ; $4cfe: $00
	ld   bc, $0704                                   ; $4cff: $01 $04 $07
	ld   a, b                                        ; $4d02: $78
	ld   e, e                                        ; $4d03: $5b
	sub  c                                           ; $4d04: $91
	sbc  a                                           ; $4d05: $9f
	dec  c                                           ; $4d06: $0d
	nop                                              ; $4d07: $00
	ld   a, [bc]                                     ; $4d08: $0a
	ld   b, $fe                                      ; $4d09: $06 $fe
	ld   [bc], a                                     ; $4d0b: $02
	rrca                                             ; $4d0c: $0f
	nop                                              ; $4d0d: $00
	ld   bc, $ff01                                   ; $4d0e: $01 $01 $ff
	rst  $38                                         ; $4d11: $ff
	ld   [hl], a                                     ; $4d12: $77
	ld   d, h                                        ; $4d13: $54
	ld   h, l                                        ; $4d14: $65
	sub  [hl]                                        ; $4d15: $96
	ld   d, h                                        ; $4d16: $54
	ld   e, c                                        ; $4d17: $59
	rst  $38                                         ; $4d18: $ff
	rst  $38                                         ; $4d19: $ff
	rst  $38                                         ; $4d1a: $ff
	rst  $38                                         ; $4d1b: $ff
	dec  c                                           ; $4d1c: $0d
	nop                                              ; $4d1d: $00
	ld   a, [bc]                                     ; $4d1e: $0a
	dec  b                                           ; $4d1f: $05
	ld   b, b                                        ; $4d20: $40
	rst  $38                                         ; $4d21: $ff
	inc  bc                                          ; $4d22: $03
	rst  $38                                         ; $4d23: $ff
	ld   bc, $2801                                   ; $4d24: $01 $01 $28
	nop                                              ; $4d27: $00
	ld   b, $fe                                      ; $4d28: $06 $fe
	ld   [bc], a                                     ; $4d2a: $02
	add  hl, de                                      ; $4d2b: $19
	inc  b                                           ; $4d2c: $04
	inc  bc                                          ; $4d2d: $03
	inc  b                                           ; $4d2e: $04
	ld   l, d                                        ; $4d2f: $6a
	and  b                                           ; $4d30: $a0
	halt                                             ; $4d31: $76
	halt                                             ; $4d32: $76
	ld   a, h                                        ; $4d33: $7c
	ld   d, [hl]                                     ; $4d34: $56
	sbc  c                                           ; $4d35: $99
	nop                                              ; $4d36: $00
	nop                                              ; $4d37: $00
	inc  b                                           ; $4d38: $04
	adc  a                                           ; $4d39: $8f
	and  b                                           ; $4d3a: $a0
	halt                                             ; $4d3b: $76
	halt                                             ; $4d3c: $76
	ld   a, h                                        ; $4d3d: $7c
	ld   d, [hl]                                     ; $4d3e: $56
	sbc  c                                           ; $4d3f: $99
	nop                                              ; $4d40: $00
	ld   bc, $7877                                   ; $4d41: $01 $77 $78
	ld   l, l                                        ; $4d44: $6d
	halt                                             ; $4d45: $76
	ld   h, c                                        ; $4d46: $61
	ld   h, c                                        ; $4d47: $61
	sbc  e                                           ; $4d48: $9b
	ld   d, [hl]                                     ; $4d49: $56
	sbc  c                                           ; $4d4a: $99
	nop                                              ; $4d4b: $00
	ld   [bc], a                                     ; $4d4c: $02
	rlca                                             ; $4d4d: $07
	dec  hl                                          ; $4d4e: $2b
	inc  b                                           ; $4d4f: $04
	ld   [bc], a                                     ; $4d50: $02
	inc  bc                                          ; $4d51: $03
	ld   bc, $2000                                   ; $4d52: $01 $00 $20
	nop                                              ; $4d55: $00
	rlca                                             ; $4d56: $07
	ld   e, [hl]                                     ; $4d57: $5e
	inc  b                                           ; $4d58: $04
	ld   [bc], a                                     ; $4d59: $02
	inc  bc                                          ; $4d5a: $03
	ld   bc, $2001                                   ; $4d5b: $01 $01 $20
	nop                                              ; $4d5e: $00
	rlca                                             ; $4d5f: $07
	and  h                                           ; $4d60: $a4
	inc  b                                           ; $4d61: $04
	ld   [bc], a                                     ; $4d62: $02
	inc  bc                                          ; $4d63: $03
	ld   bc, $2002                                   ; $4d64: $01 $02 $20
	nop                                              ; $4d67: $00
	ld   b, $01                                      ; $4d68: $06 $01
	dec  b                                           ; $4d6a: $05
	rrca                                             ; $4d6b: $0f
	nop                                              ; $4d6c: $00
	ld   bc, $0301                                   ; $4d6d: $01 $01 $03
	dec  c                                           ; $4d70: $0d
	inc  bc                                          ; $4d71: $03
	ld   h, l                                        ; $4d72: $65
	ld   h, b                                        ; $4d73: $60
	ld   a, c                                        ; $4d74: $79
	sbc  [hl]                                        ; $4d75: $9e
	inc  b                                           ; $4d76: $04
	ld   l, d                                        ; $4d77: $6a
	and  b                                           ; $4d78: $a0
	halt                                             ; $4d79: $76
	halt                                             ; $4d7a: $76
	ld   a, h                                        ; $4d7b: $7c
	ld   d, [hl]                                     ; $4d7c: $56
	sbc  c                                           ; $4d7d: $99
	halt                                             ; $4d7e: $76
	dec  c                                           ; $4d7f: $0d
	rst  $38                                         ; $4d80: $ff
	rst  $38                                         ; $4d81: $ff
	rst  $38                                         ; $4d82: $ff
	rst  $38                                         ; $4d83: $ff
	dec  c                                           ; $4d84: $0d
	nop                                              ; $4d85: $00
	dec  b                                           ; $4d86: $05
	ld   b, b                                        ; $4d87: $40
	rst  $38                                         ; $4d88: $ff
	inc  bc                                          ; $4d89: $03
	rst  $38                                         ; $4d8a: $ff
	ld   bc, $2801                                   ; $4d8b: $01 $01 $28
	nop                                              ; $4d8e: $00
	ld   bc, $6596                                   ; $4d8f: $01 $96 $65
	ld   a, [$2910]                                  ; $4d92: $fa $10 $29
	dec  h                                           ; $4d95: $25
	ld   l, [hl]                                     ; $4d96: $6e
	ld   a, [$000d]                                  ; $4d97: $fa $0d $00
	ld   a, [bc]                                     ; $4d9a: $0a
	ld   b, $29                                      ; $4d9b: $06 $29
	dec  b                                           ; $4d9d: $05
	rrca                                             ; $4d9e: $0f
	nop                                              ; $4d9f: $00
	ld   bc, $0301                                   ; $4da0: $01 $01 $03
	dec  c                                           ; $4da3: $0d
	inc  bc                                          ; $4da4: $03
	ld   h, l                                        ; $4da5: $65
	ld   h, b                                        ; $4da6: $60
	ld   a, c                                        ; $4da7: $79
	sbc  [hl]                                        ; $4da8: $9e
	inc  b                                           ; $4da9: $04
	adc  a                                           ; $4daa: $8f
	and  b                                           ; $4dab: $a0
	halt                                             ; $4dac: $76
	halt                                             ; $4dad: $76
	ld   a, h                                        ; $4dae: $7c
	ld   d, [hl]                                     ; $4daf: $56
	sbc  c                                           ; $4db0: $99
	rst  $38                                         ; $4db1: $ff
	rst  $38                                         ; $4db2: $ff
	dec  c                                           ; $4db3: $0d
	rst  $38                                         ; $4db4: $ff
	rst  $38                                         ; $4db5: $ff
	rst  $38                                         ; $4db6: $ff
	rst  $38                                         ; $4db7: $ff
	and  c                                           ; $4db8: $a1
	ld   sp, hl                                      ; $4db9: $f9
	db   $10                                         ; $4dba: $10
	inc  b                                           ; $4dbb: $04
	adc  a                                           ; $4dbc: $8f
	ld   a, h                                        ; $4dbd: $7c
	inc  bc                                          ; $4dbe: $03
	ld   a, h                                        ; $4dbf: $7c
	dec  b                                           ; $4dc0: $05
	ld   de, $a178                                   ; $4dc1: $11 $78 $a1
	ld   e, c                                        ; $4dc4: $59
	dec  c                                           ; $4dc5: $0d
	nop                                              ; $4dc6: $00
	dec  b                                           ; $4dc7: $05
	ld   b, b                                        ; $4dc8: $40
	rst  $38                                         ; $4dc9: $ff
	inc  bc                                          ; $4dca: $03
	rst  $38                                         ; $4dcb: $ff
	ld   bc, $2801                                   ; $4dcc: $01 $01 $28
	nop                                              ; $4dcf: $00
	ld   bc, $7465                                   ; $4dd0: $01 $65 $74
	sbc  c                                           ; $4dd3: $99
	inc  b                                           ; $4dd4: $04
	ld   a, d                                        ; $4dd5: $7a
	ld   [bc], a                                     ; $4dd6: $02
	ld   a, e                                        ; $4dd7: $7b
	ld   h, [hl]                                     ; $4dd8: $66
	sub  c                                           ; $4dd9: $91
	ld   a, b                                        ; $4dda: $78
	ld   d, d                                        ; $4ddb: $52
	sub  [hl]                                        ; $4ddc: $96
	sbc  a                                           ; $4ddd: $9f
	dec  c                                           ; $4dde: $0d
	nop                                              ; $4ddf: $00
	ld   a, [bc]                                     ; $4de0: $0a
	ld   b, $eb                                      ; $4de1: $06 $eb
	inc  bc                                          ; $4de3: $03
	rrca                                             ; $4de4: $0f
	nop                                              ; $4de5: $00
	ld   bc, $0301                                   ; $4de6: $01 $01 $03
	dec  c                                           ; $4de9: $0d
	inc  bc                                          ; $4dea: $03
	ld   h, l                                        ; $4deb: $65
	ld   h, b                                        ; $4dec: $60
	ld   a, c                                        ; $4ded: $79
	rst  $38                                         ; $4dee: $ff
	rst  $38                                         ; $4def: $ff
	dec  c                                           ; $4df0: $0d
	ld   h, c                                        ; $4df1: $61
	ld   l, a                                        ; $4df2: $6f
	sub  a                                           ; $4df3: $97
	ld   a, c                                        ; $4df4: $79
	ld   e, b                                        ; $4df5: $58
	sbc  l                                           ; $4df6: $9d
	ld   h, a                                        ; $4df7: $67
	ld   e, b                                        ; $4df8: $58
	inc  b                                           ; $4df9: $04
	ld   a, b                                        ; $4dfa: $78
	and  b                                           ; $4dfb: $a0
	sbc  [hl]                                        ; $4dfc: $9e
	dec  c                                           ; $4dfd: $0d
	ld   [hl], a                                     ; $4dfe: $77
	ld   a, b                                        ; $4dff: $78
	ld   l, l                                        ; $4e00: $6d
	halt                                             ; $4e01: $76
	inc  bc                                          ; $4e02: $03
	ld   [hl], l                                     ; $4e03: $75
	ld   b, $02                                      ; $4e04: $06 $02
	sbc  c                                           ; $4e06: $99
	ld   a, [$000d]                                  ; $4e07: $fa $0d $00
	ld   a, [bc]                                     ; $4e0a: $0a
	ld   bc, $fc78                                   ; $4e0b: $01 $78 $fc
	and  c                                           ; $4e0e: $a1
	ld   [hl], h                                     ; $4e0f: $74
	ld   [bc], a                                     ; $4e10: $02
	sbc  l                                           ; $4e11: $9d
	ld   [hl], c                                     ; $4e12: $71
	ld   [hl], h                                     ; $4e13: $74
	sbc  c                                           ; $4e14: $99
	inc  b                                           ; $4e15: $04
	ld   a, d                                        ; $4e16: $7a
	ld   [bc], a                                     ; $4e17: $02
	ld   a, e                                        ; $4e18: $7b
	ld   h, [hl]                                     ; $4e19: $66
	sub  c                                           ; $4e1a: $91
	dec  c                                           ; $4e1b: $0d
	ld   a, b                                        ; $4e1c: $78
	ld   d, d                                        ; $4e1d: $52
	and  c                                           ; $4e1e: $a1
	ld   l, [hl]                                     ; $4e1f: $6e
	sub  [hl]                                        ; $4e20: $96
	ld   a, b                                        ; $4e21: $78
	sbc  a                                           ; $4e22: $9f
	dec  c                                           ; $4e23: $0d
	nop                                              ; $4e24: $00
	dec  b                                           ; $4e25: $05
	ld   b, b                                        ; $4e26: $40
	rst  $38                                         ; $4e27: $ff
	inc  bc                                          ; $4e28: $03
	rst  $38                                         ; $4e29: $ff
	ld   bc, $2801                                   ; $4e2a: $01 $01 $28
	nop                                              ; $4e2d: $00
	ld   bc, $2805                                   ; $4e2e: $01 $05 $28
	ld   e, d                                        ; $4e31: $5a
	ld   a, b                                        ; $4e32: $78
	ld   e, e                                        ; $4e33: $5b
	sub  c                                           ; $4e34: $91
	ld   e, b                                        ; $4e35: $58
	ld   e, l                                        ; $4e36: $5d
	sbc  d                                           ; $4e37: $9a
	sbc  c                                           ; $4e38: $99
	ld   l, h                                        ; $4e39: $6c
	sbc  a                                           ; $4e3a: $9f
	dec  c                                           ; $4e3b: $0d
	nop                                              ; $4e3c: $00
	ld   a, [bc]                                     ; $4e3d: $0a
	ld   b, $eb                                      ; $4e3e: $06 $eb
	inc  bc                                          ; $4e40: $03
	rrca                                             ; $4e41: $0f
	nop                                              ; $4e42: $00
	ld   bc, $0301                                   ; $4e43: $01 $01 $03
	dec  c                                           ; $4e46: $0d
	inc  bc                                          ; $4e47: $03
	ld   h, l                                        ; $4e48: $65
	ld   h, b                                        ; $4e49: $60
	ld   a, c                                        ; $4e4a: $79
	rst  $38                                         ; $4e4b: $ff
	rst  $38                                         ; $4e4c: $ff
	dec  c                                           ; $4e4d: $0d
	rst  $38                                         ; $4e4e: $ff
	rst  $38                                         ; $4e4f: $ff
	rst  $38                                         ; $4e50: $ff
	rst  $38                                         ; $4e51: $ff
	ld   [hl], a                                     ; $4e52: $77
	ld   d, h                                        ; $4e53: $54
	ld   h, l                                        ; $4e54: $65
	sub  [hl]                                        ; $4e55: $96
	ld   d, h                                        ; $4e56: $54
	ld   e, c                                        ; $4e57: $59
	rst  $38                                         ; $4e58: $ff
	rst  $38                                         ; $4e59: $ff
	dec  c                                           ; $4e5a: $0d
	nop                                              ; $4e5b: $00
	ld   a, [bc]                                     ; $4e5c: $0a
	dec  b                                           ; $4e5d: $05
	ld   b, b                                        ; $4e5e: $40
	rst  $38                                         ; $4e5f: $ff
	inc  bc                                          ; $4e60: $03
	rst  $38                                         ; $4e61: $ff
	ld   bc, $2801                                   ; $4e62: $01 $01 $28
	nop                                              ; $4e65: $00
	ld   b, $eb                                      ; $4e66: $06 $eb
	inc  bc                                          ; $4e68: $03
	rlca                                             ; $4e69: $07
	ld   b, h                                        ; $4e6a: $44
	dec  b                                           ; $4e6b: $05
	inc  bc                                          ; $4e6c: $03
	rst  $38                                         ; $4e6d: $ff
	ld   bc, $2005                                   ; $4e6e: $01 $05 $20
	nop                                              ; $4e71: $00
	rlca                                             ; $4e72: $07
	xor  l                                           ; $4e73: $ad
	dec  b                                           ; $4e74: $05
	inc  bc                                          ; $4e75: $03
	rst  $38                                         ; $4e76: $ff
	ld   bc, $2006                                   ; $4e77: $01 $06 $20
	nop                                              ; $4e7a: $00
	rlca                                             ; $4e7b: $07
	ld   a, [hl+]                                    ; $4e7c: $2a
	ld   b, $03                                      ; $4e7d: $06 $03
	rst  $38                                         ; $4e7f: $ff
	ld   bc, $2507                                   ; $4e80: $01 $07 $25
	nop                                              ; $4e83: $00
	inc  c                                           ; $4e84: $0c
	ld   [bc], a                                     ; $4e85: $02
	ld   c, $04                                      ; $4e86: $0e $04
	rrca                                             ; $4e88: $0f
	nop                                              ; $4e89: $00
	ld   bc, $060d                                   ; $4e8a: $01 $0d $06
	nop                                              ; $4e8d: $00
	ld   bc, $f5ac                                   ; $4e8e: $01 $ac $f5
	bit  4, e                                        ; $4e91: $cb $63
	and  c                                           ; $4e93: $a1
	sbc  a                                           ; $4e94: $9f
	dec  c                                           ; $4e95: $0d
	ld   e, b                                        ; $4e96: $58
	ld   a, l                                        ; $4e97: $7d
	sub  [hl]                                        ; $4e98: $96
	ld   d, h                                        ; $4e99: $54
	ld   h, d                                        ; $4e9a: $62
	ld   h, h                                        ; $4e9b: $64
	ld   d, d                                        ; $4e9c: $52
	adc  h                                           ; $4e9d: $8c
	ld   h, a                                        ; $4e9e: $67
	sbc  a                                           ; $4e9f: $9f
	dec  c                                           ; $4ea0: $0d
	nop                                              ; $4ea1: $00
	ld   a, [bc]                                     ; $4ea2: $0a
	inc  e                                           ; $4ea3: $1c
	ld   b, $01                                      ; $4ea4: $06 $01
	ld   bc, $401d                                   ; $4ea6: $01 $1d $40
	ld   d, $03                                      ; $4ea9: $16 $03
	ld   d, $01                                      ; $4eab: $16 $01
	ld   [bc], a                                     ; $4ead: $02
	jr   z, jr_055_4eb0                              ; $4eae: $28 $00

jr_055_4eb0:
	ld   bc, $5896                                   ; $4eb0: $01 $96 $58
	sbc  [hl]                                        ; $4eb3: $9e
	ld   [$9f00], sp                                 ; $4eb4: $08 $00 $9f
	dec  c                                           ; $4eb7: $0d
	ld   e, b                                        ; $4eb8: $58
	ld   a, l                                        ; $4eb9: $7d
	sub  [hl]                                        ; $4eba: $96
	ld   d, h                                        ; $4ebb: $54
	ld   a, [$000d]                                  ; $4ebc: $fa $0d $00
	ld   a, [bc]                                     ; $4ebf: $0a
	ld   bc, $6596                                   ; $4ec0: $01 $96 $65
	sbc  a                                           ; $4ec3: $9f
	dec  c                                           ; $4ec4: $0d
	ld   l, e                                        ; $4ec5: $6b
	sbc  d                                           ; $4ec6: $9a
	ld   h, [hl]                                     ; $4ec7: $66
	sub  c                                           ; $4ec8: $91
	sbc  [hl]                                        ; $4ec9: $9e
	ld   [bc], a                                     ; $4eca: $02
	ld   a, a                                        ; $4ecb: $7f
	ld   e, l                                        ; $4ecc: $5d
	ld   e, c                                        ; $4ecd: $59
	ld   a, [$030d]                                  ; $4ece: $fa $0d $03
	ld   h, l                                        ; $4ed1: $65
	inc  b                                           ; $4ed2: $04
	rst  $20                                         ; $4ed3: $e7
	ld   [bc], a                                     ; $4ed4: $02
	sbc  c                                           ; $4ed5: $99
	ld   [bc], a                                     ; $4ed6: $02
	inc  c                                           ; $4ed7: $0c
	adc  h                                           ; $4ed8: $8c
	ld   [hl], l                                     ; $4ed9: $75
	add  b                                           ; $4eda: $80
	halt                                             ; $4edb: $76
	ld   [hl], c                                     ; $4edc: $71
	dec  b                                           ; $4edd: $05
	cp   c                                           ; $4ede: $b9
	sbc  b                                           ; $4edf: $98
	sbc  a                                           ; $4ee0: $9f
	dec  c                                           ; $4ee1: $0d
	nop                                              ; $4ee2: $00
	ld   a, [bc]                                     ; $4ee3: $0a
	dec  c                                           ; $4ee4: $0d
	nop                                              ; $4ee5: $00
	nop                                              ; $4ee6: $00
	rrca                                             ; $4ee7: $0f
	nop                                              ; $4ee8: $00
	ld   bc, $8706                                   ; $4ee9: $01 $06 $87
	ld   b, $0c                                      ; $4eec: $06 $0c
	ld   [bc], a                                     ; $4eee: $02
	ld   c, $04                                      ; $4eef: $0e $04
	rrca                                             ; $4ef1: $0f
	nop                                              ; $4ef2: $00
	ld   bc, $060d                                   ; $4ef3: $01 $0d $06
	nop                                              ; $4ef6: $00
	ld   bc, $7d58                                   ; $4ef7: $01 $58 $7d
	sub  [hl]                                        ; $4efa: $96
	ld   d, h                                        ; $4efb: $54
	ld   h, d                                        ; $4efc: $62
	ld   h, h                                        ; $4efd: $64
	ld   d, d                                        ; $4efe: $52
	adc  h                                           ; $4eff: $8c
	ld   h, a                                        ; $4f00: $67
	sbc  a                                           ; $4f01: $9f
	dec  c                                           ; $4f02: $0d
	xor  h                                           ; $4f03: $ac
	push af                                          ; $4f04: $f5
	bit  4, e                                        ; $4f05: $cb $63
	and  c                                           ; $4f07: $a1
	sbc  a                                           ; $4f08: $9f
	dec  c                                           ; $4f09: $0d
	ld   e, b                                        ; $4f0a: $58
	inc  b                                           ; $4f0b: $04
	rla                                              ; $4f0c: $17
	ld   l, l                                        ; $4f0d: $6d
	ld   l, c                                        ; $4f0e: $69
	ld   h, l                                        ; $4f0f: $65
	ld   [hl], h                                     ; $4f10: $74
	ld   h, a                                        ; $4f11: $67
	adc  l                                           ; $4f12: $8d
	adc  h                                           ; $4f13: $8c
	ld   l, c                                        ; $4f14: $69
	and  c                                           ; $4f15: $a1
	sbc  a                                           ; $4f16: $9f
	dec  c                                           ; $4f17: $0d
	nop                                              ; $4f18: $00
	ld   a, [bc]                                     ; $4f19: $0a
	inc  e                                           ; $4f1a: $1c
	ld   b, $00                                      ; $4f1b: $06 $00
	nop                                              ; $4f1d: $00
	ld   bc, $5896                                   ; $4f1e: $01 $96 $58
	sbc  [hl]                                        ; $4f21: $9e
	ld   [$9f00], sp                                 ; $4f22: $08 $00 $9f
	dec  c                                           ; $4f25: $0d
	ld   e, b                                        ; $4f26: $58
	ld   a, l                                        ; $4f27: $7d
	sub  [hl]                                        ; $4f28: $96
	ld   d, h                                        ; $4f29: $54
	ld   a, [$500d]                                  ; $4f2a: $fa $0d $50
	ld   l, l                                        ; $4f2d: $6d
	ld   d, d                                        ; $4f2e: $52
	sub  b                                           ; $4f2f: $90
	sbc  [hl]                                        ; $4f30: $9e
	ld   [bc], a                                     ; $4f31: $02
	and  l                                           ; $4f32: $a5
	dec  b                                           ; $4f33: $05
	db   $10                                         ; $4f34: $10
	ld   l, l                                        ; $4f35: $6d
	halt                                             ; $4f36: $76
	ld   h, c                                        ; $4f37: $61
	ld   l, [hl]                                     ; $4f38: $6e
	sbc  a                                           ; $4f39: $9f
	dec  c                                           ; $4f3a: $0d
	nop                                              ; $4f3b: $00
	ld   a, [bc]                                     ; $4f3c: $0a
	ld   bc, $6596                                   ; $4f3d: $01 $96 $65
	sbc  a                                           ; $4f40: $9f
	dec  c                                           ; $4f41: $0d
	ld   l, e                                        ; $4f42: $6b
	sbc  d                                           ; $4f43: $9a
	ld   h, [hl]                                     ; $4f44: $66
	sub  c                                           ; $4f45: $91
	sbc  [hl]                                        ; $4f46: $9e
	ld   [bc], a                                     ; $4f47: $02
	ld   a, a                                        ; $4f48: $7f
	ld   e, l                                        ; $4f49: $5d
	ld   e, c                                        ; $4f4a: $59
	ld   a, [$030d]                                  ; $4f4b: $fa $0d $03
	ld   h, l                                        ; $4f4e: $65
	inc  b                                           ; $4f4f: $04
	rst  $20                                         ; $4f50: $e7
	ld   [bc], a                                     ; $4f51: $02
	sbc  c                                           ; $4f52: $99
	ld   [bc], a                                     ; $4f53: $02
	inc  c                                           ; $4f54: $0c
	adc  h                                           ; $4f55: $8c
	ld   [hl], l                                     ; $4f56: $75
	add  b                                           ; $4f57: $80
	halt                                             ; $4f58: $76
	ld   [hl], c                                     ; $4f59: $71
	dec  b                                           ; $4f5a: $05
	cp   c                                           ; $4f5b: $b9
	sbc  b                                           ; $4f5c: $98
	sbc  a                                           ; $4f5d: $9f
	dec  c                                           ; $4f5e: $0d
	nop                                              ; $4f5f: $00
	ld   a, [bc]                                     ; $4f60: $0a
	dec  c                                           ; $4f61: $0d
	nop                                              ; $4f62: $00
	nop                                              ; $4f63: $00
	rrca                                             ; $4f64: $0f
	nop                                              ; $4f65: $00
	ld   bc, $8706                                   ; $4f66: $01 $06 $87
	ld   b, $0c                                      ; $4f69: $06 $0c
	ld   [bc], a                                     ; $4f6b: $02
	ld   c, $04                                      ; $4f6c: $0e $04
	inc  e                                           ; $4f6e: $1c
	ld   b, $05                                      ; $4f6f: $06 $05
	dec  b                                           ; $4f71: $05
	dec  e                                           ; $4f72: $1d
	ld   b, b                                        ; $4f73: $40
	ld   d, $03                                      ; $4f74: $16 $03
	ld   d, $01                                      ; $4f76: $16 $01
	inc  bc                                          ; $4f78: $03
	add  hl, hl                                      ; $4f79: $29
	nop                                              ; $4f7a: $00
	ld   bc, $6b58                                   ; $4f7b: $01 $58 $6b
	ld   d, d                                        ; $4f7e: $52
	ld   l, d                                        ; $4f7f: $6a
	ld   a, [$0810]                                  ; $4f80: $fa $10 $08
	nop                                              ; $4f83: $00
	sbc  a                                           ; $4f84: $9f
	dec  c                                           ; $4f85: $0d
	ld   a, b                                        ; $4f86: $78
	ld   a, c                                        ; $4f87: $79
	or   c                                           ; $4f88: $b1
	cp   e                                           ; $4f89: $bb
	or   c                                           ; $4f8a: $b1
	cp   e                                           ; $4f8b: $bb
	ld   h, l                                        ; $4f8c: $65
	ld   [hl], h                                     ; $4f8d: $74
	and  c                                           ; $4f8e: $a1
	ld   l, [hl]                                     ; $4f8f: $6e
	sub  [hl]                                        ; $4f90: $96
	db   $fc                                         ; $4f91: $fc
	sbc  a                                           ; $4f92: $9f
	dec  c                                           ; $4f93: $0d
	nop                                              ; $4f94: $00
	ld   a, [bc]                                     ; $4f95: $0a
	inc  e                                           ; $4f96: $1c
	ld   b, $00                                      ; $4f97: $06 $00
	nop                                              ; $4f99: $00
	ld   bc, $508c                                   ; $4f9a: $01 $8c $50
	sbc  [hl]                                        ; $4f9d: $9e
	ld   d, d                                        ; $4f9e: $52
	ld   d, d                                        ; $4f9f: $52
	sub  d                                           ; $4fa0: $92
	sbc  a                                           ; $4fa1: $9f
	dec  c                                           ; $4fa2: $0d
	ld   [bc], a                                     ; $4fa3: $02
	ld   a, a                                        ; $4fa4: $7f
	ld   h, c                                        ; $4fa5: $61
	ld   d, h                                        ; $4fa6: $54
	ld   e, c                                        ; $4fa7: $59
	sbc  a                                           ; $4fa8: $9f
	dec  c                                           ; $4fa9: $0d
	inc  bc                                          ; $4faa: $03
	ld   h, l                                        ; $4fab: $65
	inc  b                                           ; $4fac: $04
	rst  $20                                         ; $4fad: $e7
	ld   [bc], a                                     ; $4fae: $02
	sbc  c                                           ; $4faf: $99
	ld   [bc], a                                     ; $4fb0: $02
	inc  c                                           ; $4fb1: $0c
	adc  h                                           ; $4fb2: $8c
	ld   [hl], l                                     ; $4fb3: $75
	add  b                                           ; $4fb4: $80
	halt                                             ; $4fb5: $76
	ld   [hl], c                                     ; $4fb6: $71
	dec  b                                           ; $4fb7: $05
	cp   c                                           ; $4fb8: $b9
	sbc  b                                           ; $4fb9: $98
	sbc  a                                           ; $4fba: $9f
	dec  c                                           ; $4fbb: $0d
	nop                                              ; $4fbc: $00
	ld   a, [bc]                                     ; $4fbd: $0a
	dec  c                                           ; $4fbe: $0d
	nop                                              ; $4fbf: $00
	nop                                              ; $4fc0: $00
	rrca                                             ; $4fc1: $0f
	nop                                              ; $4fc2: $00
	ld   bc, $8706                                   ; $4fc3: $01 $06 $87
	ld   b, $23                                      ; $4fc6: $06 $23
	sbc  e                                           ; $4fc8: $9b
	inc  e                                           ; $4fc9: $1c
	ld   b, $00                                      ; $4fca: $06 $00
	nop                                              ; $4fcc: $00
	ld   bc, $5063                                   ; $4fcd: $01 $63 $50
	sbc  [hl]                                        ; $4fd0: $9e
	ld   [hl], d                                     ; $4fd1: $72
	ld   d, d                                        ; $4fd2: $52
	ld   l, l                                        ; $4fd3: $6d
	ld   l, d                                        ; $4fd4: $6a
	sbc  a                                           ; $4fd5: $9f
	dec  c                                           ; $4fd6: $0d
	ld   [hl], a                                     ; $4fd7: $77
	ld   d, h                                        ; $4fd8: $54
	ld   l, [hl]                                     ; $4fd9: $6e
	ld   sp, hl                                      ; $4fda: $f9
	dec  c                                           ; $4fdb: $0d
	nop                                              ; $4fdc: $00
	ld   a, [bc]                                     ; $4fdd: $0a
	ld   sp, $2040                                   ; $4fde: $31 $40 $20
	inc  bc                                          ; $4fe1: $03
	jr   nz, jr_055_4fe5                             ; $4fe2: $20 $01

	inc  d                                           ; $4fe4: $14

jr_055_4fe5:
	add  hl, hl                                      ; $4fe5: $29
	nop                                              ; $4fe6: $00
	ld   b, $aa                                      ; $4fe7: $06 $aa
	ld   b, $19                                      ; $4fe9: $06 $19
	dec  b                                           ; $4feb: $05
	ld   [bc], a                                     ; $4fec: $02
	ld   h, l                                        ; $4fed: $65
	and  c                                           ; $4fee: $a1
	ld   [hl], a                                     ; $4fef: $77
	ld   d, d                                        ; $4ff0: $52
	ld   [hl], l                                     ; $4ff1: $75
	ld   h, a                                        ; $4ff2: $67
	nop                                              ; $4ff3: $00
	nop                                              ; $4ff4: $00
	inc  b                                           ; $4ff5: $04
	ld   c, $03                                      ; $4ff6: $0e $03
	sbc  l                                           ; $4ff8: $9d
	inc  b                                           ; $4ff9: $04
	and  [hl]                                        ; $4ffa: $a6
	ld   [hl], l                                     ; $4ffb: $75
	ld   h, a                                        ; $4ffc: $67
	nop                                              ; $4ffd: $00
	ld   bc, $d407                                   ; $4ffe: $01 $07 $d4
	ld   b, $02                                      ; $5001: $06 $02
	inc  bc                                          ; $5003: $03
	ld   bc, $2000                                   ; $5004: $01 $00 $20
	nop                                              ; $5007: $00
	rlca                                             ; $5008: $07
	dec  [hl]                                        ; $5009: $35
	rlca                                             ; $500a: $07
	ld   [bc], a                                     ; $500b: $02
	inc  bc                                          ; $500c: $03
	ld   bc, $2001                                   ; $500d: $01 $01 $20
	nop                                              ; $5010: $00
	ld   b, $12                                      ; $5011: $06 $12
	ld   [$0807], sp                                 ; $5013: $08 $07 $08
	rlca                                             ; $5016: $07
	inc  bc                                          ; $5017: $03
	jr   nz, jr_055_501b                             ; $5018: $20 $01

	ld   a, l                                        ; $501a: $7d

jr_055_501b:
	ld   [hl+], a                                    ; $501b: $22
	nop                                              ; $501c: $00
	inc  e                                           ; $501d: $1c
	ld   b, $02                                      ; $501e: $06 $02
	ld   [bc], a                                     ; $5020: $02
	ld   bc, $a165                                   ; $5021: $01 $65 $a1
	ld   [hl], a                                     ; $5024: $77
	ld   d, d                                        ; $5025: $52
	ld   sp, hl                                      ; $5026: $f9
	dec  c                                           ; $5027: $0d
	adc  h                                           ; $5028: $8c
	ld   l, [hl]                                     ; $5029: $6e
	inc  b                                           ; $502a: $04
	dec  c                                           ; $502b: $0d
	dec  b                                           ; $502c: $05
	ld   a, [bc]                                     ; $502d: $0a
	ld   e, d                                        ; $502e: $5a
	ld   a, h                                        ; $502f: $7c
	ld   h, c                                        ; $5030: $61
	ld   [hl], c                                     ; $5031: $71
	ld   [hl], h                                     ; $5032: $74
	sbc  c                                           ; $5033: $99
	dec  c                                           ; $5034: $0d
	ld   [bc], a                                     ; $5035: $02
	ld   [hl], d                                     ; $5036: $72
	ld   h, l                                        ; $5037: $65
	ld   [hl], h                                     ; $5038: $74
	sbc  c                                           ; $5039: $99
	ld   l, h                                        ; $503a: $6c
	sbc  a                                           ; $503b: $9f
	dec  c                                           ; $503c: $0d
	nop                                              ; $503d: $00
	ld   a, [bc]                                     ; $503e: $0a
	dec  c                                           ; $503f: $0d
	nop                                              ; $5040: $00
	nop                                              ; $5041: $00
	rrca                                             ; $5042: $0f
	nop                                              ; $5043: $00
	ld   bc, $4d06                                   ; $5044: $01 $06 $4d
	ld   [$061c], sp                                 ; $5047: $08 $1c $06
	dec  b                                           ; $504a: $05
	dec  b                                           ; $504b: $05
	ld   bc, $a165                                   ; $504c: $01 $65 $a1
	ld   [hl], a                                     ; $504f: $77
	ld   d, d                                        ; $5050: $52
	ld   sp, hl                                      ; $5051: $f9
	dec  c                                           ; $5052: $0d
	ld   d, b                                        ; $5053: $50
	sbc  b                                           ; $5054: $98
	sub  c                                           ; $5055: $91
	inc  b                                           ; $5056: $04
	adc  a                                           ; $5057: $8f
	inc  b                                           ; $5058: $04
	jr   jr_055_50c9                                 ; $5059: $18 $6e

	sbc  a                                           ; $505b: $9f
	dec  c                                           ; $505c: $0d
	sub  b                                           ; $505d: $90
	ld   d, h                                        ; $505e: $54
	add  e                                           ; $505f: $83
	sub  a                                           ; $5060: $97
	add  e                                           ; $5061: $83
	sub  a                                           ; $5062: $97
	ld   h, [hl]                                     ; $5063: $66
	sub  c                                           ; $5064: $91
	ld   a, b                                        ; $5065: $78
	ld   d, d                                        ; $5066: $52
	ld   e, c                                        ; $5067: $59
	sbc  a                                           ; $5068: $9f
	dec  c                                           ; $5069: $0d
	nop                                              ; $506a: $00
	ld   a, [bc]                                     ; $506b: $0a
	dec  c                                           ; $506c: $0d
	nop                                              ; $506d: $00
	nop                                              ; $506e: $00
	rrca                                             ; $506f: $0f
	nop                                              ; $5070: $00
	ld   bc, $4d06                                   ; $5071: $01 $06 $4d
	ld   [$ae07], sp                                 ; $5074: $08 $07 $ae
	rlca                                             ; $5077: $07
	inc  bc                                          ; $5078: $03
	jr   nz, jr_055_507c                             ; $5079: $20 $01

	ld   a, l                                        ; $507b: $7d

jr_055_507c:
	ld   [hl+], a                                    ; $507c: $22
	nop                                              ; $507d: $00
	inc  e                                           ; $507e: $1c
	ld   b, $00                                      ; $507f: $06 $00
	nop                                              ; $5081: $00
	ld   bc, $0e04                                   ; $5082: $01 $04 $0e
	inc  bc                                          ; $5085: $03
	sbc  l                                           ; $5086: $9d
	inc  b                                           ; $5087: $04
	and  [hl]                                        ; $5088: $a6
	ld   sp, hl                                      ; $5089: $f9
	dec  c                                           ; $508a: $0d
	ld   d, b                                        ; $508b: $50
	ld   d, b                                        ; $508c: $50
	sbc  [hl]                                        ; $508d: $9e
	adc  c                                           ; $508e: $89
	and  c                                           ; $508f: $a1
	halt                                             ; $5090: $76
	ld   l, [hl]                                     ; $5091: $6e
	sbc  a                                           ; $5092: $9f
	dec  c                                           ; $5093: $0d
	adc  h                                           ; $5094: $8c
	ld   l, [hl]                                     ; $5095: $6e
	adc  h                                           ; $5096: $8c
	ld   l, [hl]                                     ; $5097: $6e
	inc  b                                           ; $5098: $04
	ld   c, $03                                      ; $5099: $0e $03
	sbc  l                                           ; $509b: $9d
	inc  b                                           ; $509c: $04
	and  [hl]                                        ; $509d: $a6
	ld   l, e                                        ; $509e: $6b
	ld   d, h                                        ; $509f: $54
	ld   l, [hl]                                     ; $50a0: $6e
	ld   a, b                                        ; $50a1: $78
	sbc  a                                           ; $50a2: $9f
	dec  c                                           ; $50a3: $0d
	nop                                              ; $50a4: $00
	ld   a, [bc]                                     ; $50a5: $0a
	inc  e                                           ; $50a6: $1c
	ld   b, $01                                      ; $50a7: $06 $01
	ld   bc, $401d                                   ; $50a9: $01 $1d $40
	ld   d, $03                                      ; $50ac: $16 $03
	ld   d, $01                                      ; $50ae: $16 $01
	ld   [bc], a                                     ; $50b0: $02
	jr   z, jr_055_50b3                              ; $50b1: $28 $00

jr_055_50b3:
	ld   bc, $6763                                   ; $50b3: $01 $63 $67
	ld   e, d                                        ; $50b6: $5a
	ld   l, [hl]                                     ; $50b7: $6e
	ld   l, d                                        ; $50b8: $6a
	sbc  [hl]                                        ; $50b9: $9e
	ld   [$9f00], sp                                 ; $50ba: $08 $00 $9f
	dec  c                                           ; $50bd: $0d
	ld   l, a                                        ; $50be: $6f
	sub  c                                           ; $50bf: $91
	and  c                                           ; $50c0: $a1
	halt                                             ; $50c1: $76
	inc  b                                           ; $50c2: $04
	dec  c                                           ; $50c3: $0d
	and  b                                           ; $50c4: $a0
	ld   e, e                                        ; $50c5: $5b
	ld   l, l                                        ; $50c6: $6d
	ld   d, [hl]                                     ; $50c7: $56
	ld   [hl], h                                     ; $50c8: $74

jr_055_50c9:
	sbc  c                                           ; $50c9: $99
	dec  c                                           ; $50ca: $0d
	sub  [hl]                                        ; $50cb: $96
	ld   d, h                                        ; $50cc: $54
	ld   l, [hl]                                     ; $50cd: $6e
	ld   a, b                                        ; $50ce: $78
	sbc  a                                           ; $50cf: $9f
	dec  c                                           ; $50d0: $0d
	nop                                              ; $50d1: $00
	ld   a, [bc]                                     ; $50d2: $0a
	ld   bc, $9166                                   ; $50d3: $01 $66 $91
	ld   d, b                                        ; $50d6: $50
	sbc  [hl]                                        ; $50d7: $9e
	ld   l, a                                        ; $50d8: $6f
	sub  l                                           ; $50d9: $95
	ld   [hl], c                                     ; $50da: $71
	halt                                             ; $50db: $76
	inc  b                                           ; $50dc: $04
	sbc  a                                           ; $50dd: $9f
	ld   h, c                                        ; $50de: $61
	ld   d, h                                        ; $50df: $54
	ld   e, c                                        ; $50e0: $59
	sbc  a                                           ; $50e1: $9f
	dec  c                                           ; $50e2: $0d
	nop                                              ; $50e3: $00
	ld   a, [bc]                                     ; $50e4: $0a
	dec  c                                           ; $50e5: $0d
	nop                                              ; $50e6: $00
	nop                                              ; $50e7: $00
	rrca                                             ; $50e8: $0f
	nop                                              ; $50e9: $00
	ld   bc, $4d06                                   ; $50ea: $01 $06 $4d
	ld   [$061c], sp                                 ; $50ed: $08 $1c $06
	dec  b                                           ; $50f0: $05
	dec  b                                           ; $50f1: $05
	dec  e                                           ; $50f2: $1d
	ld   b, b                                        ; $50f3: $40
	ld   d, $03                                      ; $50f4: $16 $03
	ld   d, $01                                      ; $50f6: $16 $01
	ld   bc, $0028                                   ; $50f8: $01 $28 $00
	ld   bc, $0e04                                   ; $50fb: $01 $04 $0e
	inc  bc                                          ; $50fe: $03
	sbc  l                                           ; $50ff: $9d
	inc  b                                           ; $5100: $04
	and  [hl]                                        ; $5101: $a6
	ld   sp, hl                                      ; $5102: $f9
	dec  c                                           ; $5103: $0d
	ld   d, b                                        ; $5104: $50
	and  c                                           ; $5105: $a1
	adc  h                                           ; $5106: $8c
	sbc  b                                           ; $5107: $98
	ld   [bc], a                                     ; $5108: $02
	call nc, $995a                                   ; $5109: $d4 $5a $99
	ld   a, b                                        ; $510c: $78
	sub  [hl]                                        ; $510d: $96
	sbc  a                                           ; $510e: $9f
	dec  c                                           ; $510f: $0d
	sub  b                                           ; $5110: $90
	ld   d, h                                        ; $5111: $54
	ld   l, l                                        ; $5112: $6d
	ld   e, b                                        ; $5113: $58
	sbc  d                                           ; $5114: $9a
	ld   l, e                                        ; $5115: $6b
	ld   d, h                                        ; $5116: $54
	ld   h, [hl]                                     ; $5117: $66
	sub  c                                           ; $5118: $91
	ld   a, b                                        ; $5119: $78
	ld   d, d                                        ; $511a: $52
	ld   e, c                                        ; $511b: $59
	sbc  a                                           ; $511c: $9f
	dec  c                                           ; $511d: $0d
	nop                                              ; $511e: $00
	ld   a, [bc]                                     ; $511f: $0a
	ld   bc, $0e04                                   ; $5120: $01 $04 $0e
	inc  bc                                          ; $5123: $03
	sbc  l                                           ; $5124: $9d
	inc  b                                           ; $5125: $04
	and  [hl]                                        ; $5126: $a6
	ld   [hl], c                                     ; $5127: $71
	ld   [hl], h                                     ; $5128: $74
	ld   [bc], a                                     ; $5129: $02
	sbc  l                                           ; $512a: $9d
	ld   d, h                                        ; $512b: $54
	and  c                                           ; $512c: $a1
	ld   a, b                                        ; $512d: $78
	sub  a                                           ; $512e: $97
	dec  c                                           ; $512f: $0d
	ld   d, d                                        ; $5130: $52
	ld   d, d                                        ; $5131: $52
	ld   e, a                                        ; $5132: $5f
	ld   [hl], a                                     ; $5133: $77
	sub  [hl]                                        ; $5134: $96
	db   $fc                                         ; $5135: $fc
	sbc  a                                           ; $5136: $9f
	dec  c                                           ; $5137: $0d
	ld   h, [hl]                                     ; $5138: $66
	sub  c                                           ; $5139: $91
	ld   d, b                                        ; $513a: $50
	sbc  [hl]                                        ; $513b: $9e
	ld   l, a                                        ; $513c: $6f
	sub  l                                           ; $513d: $95
	ld   [hl], c                                     ; $513e: $71
	halt                                             ; $513f: $76
	inc  b                                           ; $5140: $04
	sbc  a                                           ; $5141: $9f
	ld   h, c                                        ; $5142: $61
	ld   d, h                                        ; $5143: $54
	ld   e, c                                        ; $5144: $59
	sbc  a                                           ; $5145: $9f
	dec  c                                           ; $5146: $0d
	nop                                              ; $5147: $00
	ld   a, [bc]                                     ; $5148: $0a
	dec  c                                           ; $5149: $0d
	nop                                              ; $514a: $00
	nop                                              ; $514b: $00
	rrca                                             ; $514c: $0f
	nop                                              ; $514d: $00
	ld   bc, $4d06                                   ; $514e: $01 $06 $4d
	ld   [$061c], sp                                 ; $5151: $08 $1c $06
	ld   [bc], a                                     ; $5154: $02
	ld   [bc], a                                     ; $5155: $02
	dec  e                                           ; $5156: $1d
	ld   b, b                                        ; $5157: $40
	ld   d, $03                                      ; $5158: $16 $03
	ld   d, $01                                      ; $515a: $16 $01
	ld   bc, $0029                                   ; $515c: $01 $29 $00
	ld   bc, $ebb4                                   ; $515f: $01 $b4 $eb
	sbc  [hl]                                        ; $5162: $9e
	db   $dd                                         ; $5163: $dd
	ei                                               ; $5164: $fb
	ld   [hl], c                                     ; $5165: $71
	halt                                             ; $5166: $76
	dec  c                                           ; $5167: $0d
	ld   h, a                                        ; $5168: $67
	sbc  c                                           ; $5169: $99
	and  c                                           ; $516a: $a1
	ld   h, [hl]                                     ; $516b: $66
	sub  c                                           ; $516c: $91
	ld   a, b                                        ; $516d: $78
	ld   d, d                                        ; $516e: $52
	sbc  a                                           ; $516f: $9f
	sub  b                                           ; $5170: $90
	ld   [hl], c                                     ; $5171: $71
	halt                                             ; $5172: $76
	dec  c                                           ; $5173: $0d
	cp   b                                           ; $5174: $b8
	push hl                                          ; $5175: $e5
	xor  [hl]                                        ; $5176: $ae
	call nz, Call_055_6576                           ; $5177: $c4 $76 $65
	sbc  e                                           ; $517a: $9b
	cp   b                                           ; $517b: $b8
	push hl                                          ; $517c: $e5
	xor  [hl]                                        ; $517d: $ae
	call nz, $9f76                                   ; $517e: $c4 $76 $9f
	dec  c                                           ; $5181: $0d
	nop                                              ; $5182: $00
	ld   a, [bc]                                     ; $5183: $0a
	dec  c                                           ; $5184: $0d
	nop                                              ; $5185: $00
	nop                                              ; $5186: $00
	rrca                                             ; $5187: $0f
	nop                                              ; $5188: $00
	ld   bc, $4d06                                   ; $5189: $01 $06 $4d
	ld   [$9423], sp                                 ; $518c: $08 $23 $94
	inc  e                                           ; $518f: $1c
	ld   b, $00                                      ; $5190: $06 $00
	nop                                              ; $5192: $00
	ld   bc, $6176                                   ; $5193: $01 $76 $61
	sbc  e                                           ; $5196: $9b
	ld   [hl], l                                     ; $5197: $75
	sbc  [hl]                                        ; $5198: $9e
	ld   e, b                                        ; $5199: $58
	inc  bc                                          ; $519a: $03
	ld   c, a                                        ; $519b: $4f
	dec  c                                           ; $519c: $0d
	ld   [hl], a                                     ; $519d: $77
	and  c                                           ; $519e: $a1
	ld   a, b                                        ; $519f: $78
	inc  b                                           ; $51a0: $04
	ldh  a, [c]                                      ; $51a1: $f2
	add  c                                           ; $51a2: $81
	ld   e, d                                        ; $51a3: $5a
	ld   [bc], a                                     ; $51a4: $02
	sbc  d                                           ; $51a5: $9a
	ld   e, e                                        ; $51a6: $5b
	ld   a, b                                        ; $51a7: $78
	and  c                                           ; $51a8: $a1
	ld   l, [hl]                                     ; $51a9: $6e
	ld   sp, hl                                      ; $51aa: $f9
	dec  c                                           ; $51ab: $0d
	nop                                              ; $51ac: $00
	ld   a, [bc]                                     ; $51ad: $0a
	add  hl, de                                      ; $51ae: $19
	dec  b                                           ; $51af: $05
	inc  bc                                          ; $51b0: $03
	ld   d, b                                        ; $51b1: $50
	sub  d                                           ; $51b2: $92
	halt                                             ; $51b3: $76
	sbc  b                                           ; $51b4: $98
	nop                                              ; $51b5: $00
	nop                                              ; $51b6: $00
	ld   h, a                                        ; $51b7: $67
	sub  b                                           ; $51b8: $90
	ld   d, h                                        ; $51b9: $54
	nop                                              ; $51ba: $00
	ld   bc, $9565                                   ; $51bb: $01 $65 $95
	ld   d, h                                        ; $51be: $54
	ld   e, h                                        ; $51bf: $5c
	nop                                              ; $51c0: $00
	ld   [bc], a                                     ; $51c1: $02
	rlca                                             ; $51c2: $07
	and  b                                           ; $51c3: $a0
	ld   [$0302], sp                                 ; $51c4: $08 $02 $03
	ld   bc, $2000                                   ; $51c7: $01 $00 $20
	nop                                              ; $51ca: $00
	rlca                                             ; $51cb: $07
	cp   $08                                         ; $51cc: $fe $08
	ld   [bc], a                                     ; $51ce: $02
	inc  bc                                          ; $51cf: $03
	ld   bc, $2001                                   ; $51d0: $01 $01 $20
	nop                                              ; $51d3: $00
	rlca                                             ; $51d4: $07
	ld   d, h                                        ; $51d5: $54
	add  hl, bc                                      ; $51d6: $09
	ld   [bc], a                                     ; $51d7: $02
	inc  bc                                          ; $51d8: $03
	ld   bc, $2002                                   ; $51d9: $01 $02 $20
	nop                                              ; $51dc: $00
	ld   b, $94                                      ; $51dd: $06 $94
	add  hl, bc                                      ; $51df: $09
	rrca                                             ; $51e0: $0f
	nop                                              ; $51e1: $00
	ld   bc, $5001                                   ; $51e2: $01 $01 $50
	sub  d                                           ; $51e5: $92
	halt                                             ; $51e6: $76
	sbc  b                                           ; $51e7: $98
	ld   a, b                                        ; $51e8: $78
	and  c                                           ; $51e9: $a1
	ld   e, c                                        ; $51ea: $59
	ld   [bc], a                                     ; $51eb: $02
	sbc  d                                           ; $51ec: $9a
	ld   e, e                                        ; $51ed: $5b
	ld   [hl], l                                     ; $51ee: $75
	ld   h, a                                        ; $51ef: $67
	ld   a, e                                        ; $51f0: $7b
	sbc  a                                           ; $51f1: $9f
	dec  c                                           ; $51f2: $0d
	nop                                              ; $51f3: $00
	ld   a, [bc]                                     ; $51f4: $0a
	inc  e                                           ; $51f5: $1c
	ld   b, $05                                      ; $51f6: $06 $05
	dec  b                                           ; $51f8: $05
	dec  e                                           ; $51f9: $1d
	ld   b, b                                        ; $51fa: $40
	ld   d, $03                                      ; $51fb: $16 $03
	ld   d, $01                                      ; $51fd: $16 $01
	ld   [bc], a                                     ; $51ff: $02
	add  hl, hl                                      ; $5200: $29
	nop                                              ; $5201: $00
	ld   bc, $9250                                   ; $5202: $01 $50 $92
	halt                                             ; $5205: $76
	sbc  b                                           ; $5206: $98
	ld   sp, hl                                      ; $5207: $f9
	db   $10                                         ; $5208: $10
	rst  $38                                         ; $5209: $ff
	rst  $38                                         ; $520a: $ff
	inc  bc                                          ; $520b: $03
	add  d                                           ; $520c: $82
	ld   a, h                                        ; $520d: $7c
	ld   h, l                                        ; $520e: $65
	sub  e                                           ; $520f: $93
	adc  l                                           ; $5210: $8d
	ld   a, c                                        ; $5211: $79
	dec  c                                           ; $5212: $0d
	ld   [bc], a                                     ; $5213: $02
	xor  [hl]                                        ; $5214: $ae
	inc  bc                                          ; $5215: $03
	add  b                                           ; $5216: $80
	ld   h, l                                        ; $5217: $65
	ld   l, l                                        ; $5218: $6d
	ld   e, c                                        ; $5219: $59
	ld   a, b                                        ; $521a: $78
	ld   d, d                                        ; $521b: $52
	ld   e, a                                        ; $521c: $5f
	ld   [hl], a                                     ; $521d: $77
	sbc  [hl]                                        ; $521e: $9e
	sub  b                                           ; $521f: $90
	ld   [hl], c                                     ; $5220: $71
	halt                                             ; $5221: $76
	dec  c                                           ; $5222: $0d
	inc  b                                           ; $5223: $04
	dec  c                                           ; $5224: $0d
	and  b                                           ; $5225: $a0
	inc  b                                           ; $5226: $04
	dec  de                                          ; $5227: $1b
	ld   e, c                                        ; $5228: $59
	ld   l, e                                        ; $5229: $6b
	ld   d, h                                        ; $522a: $54
	ld   l, d                                        ; $522b: $6a
	ld   a, [$7810]                                  ; $522c: $fa $10 $78
	ld   [hl], c                                     ; $522f: $71
	ld   a, [$0dfa]                                  ; $5230: $fa $fa $0d
	nop                                              ; $5233: $00
	ld   a, [bc]                                     ; $5234: $0a
	dec  c                                           ; $5235: $0d
	nop                                              ; $5236: $00
	nop                                              ; $5237: $00
	rrca                                             ; $5238: $0f
	nop                                              ; $5239: $00
	ld   bc, $c706                                   ; $523a: $01 $06 $c7
	add  hl, bc                                      ; $523d: $09
	rrca                                             ; $523e: $0f
	nop                                              ; $523f: $00
	ld   bc, $6701                                   ; $5240: $01 $01 $67
	sub  b                                           ; $5243: $90
	ld   d, h                                        ; $5244: $54
	ld   a, b                                        ; $5245: $78
	and  c                                           ; $5246: $a1
	ld   e, c                                        ; $5247: $59
	ld   [bc], a                                     ; $5248: $02
	sbc  d                                           ; $5249: $9a
	ld   e, e                                        ; $524a: $5b
	ld   [hl], l                                     ; $524b: $75
	ld   h, a                                        ; $524c: $67
	sub  [hl]                                        ; $524d: $96
	dec  c                                           ; $524e: $0d
	nop                                              ; $524f: $00
	ld   a, [bc]                                     ; $5250: $0a
	inc  e                                           ; $5251: $1c
	ld   b, $01                                      ; $5252: $06 $01
	ld   bc, $401d                                   ; $5254: $01 $1d $40
	ld   d, $03                                      ; $5257: $16 $03
	ld   d, $01                                      ; $5259: $16 $01
	ld   [bc], a                                     ; $525b: $02
	jr   z, jr_055_525e                              ; $525c: $28 $00

jr_055_525e:
	ld   bc, $5858                                   ; $525e: $01 $58 $58
	sbc  [hl]                                        ; $5261: $9e
	ld   d, d                                        ; $5262: $52
	ld   d, d                                        ; $5263: $52
	sub  [hl]                                        ; $5264: $96
	ld   a, b                                        ; $5265: $78
	sbc  a                                           ; $5266: $9f
	dec  c                                           ; $5267: $0d
	inc  b                                           ; $5268: $04
	xor  d                                           ; $5269: $aa
	inc  b                                           ; $526a: $04
	adc  a                                           ; $526b: $8f
	ld   [bc], a                                     ; $526c: $02
	or   c                                           ; $526d: $b1
	dec  b                                           ; $526e: $05
	db   $10                                         ; $526f: $10
	ld   a, h                                        ; $5270: $7c
	ld   [bc], a                                     ; $5271: $02
	ld   [hl], l                                     ; $5272: $75
	dec  b                                           ; $5273: $05
	rst  $38                                         ; $5274: $ff
	ld   [bc], a                                     ; $5275: $02
	adc  h                                           ; $5276: $8c
	sbc  a                                           ; $5277: $9f
	dec  c                                           ; $5278: $0d
	sub  d                                           ; $5279: $92
	ld   [hl], c                                     ; $527a: $71
	ld   a, a                                        ; $527b: $7f
	sbc  [hl]                                        ; $527c: $9e
	inc  b                                           ; $527d: $04
	dec  c                                           ; $527e: $0d
	inc  b                                           ; $527f: $04
	dec  de                                          ; $5280: $1b
	ld   e, c                                        ; $5281: $59
	ld   h, e                                        ; $5282: $63
	ld   a, b                                        ; $5283: $78
	ld   e, e                                        ; $5284: $5b
	sub  c                                           ; $5285: $91
	ld   a, b                                        ; $5286: $78
	sbc  a                                           ; $5287: $9f
	dec  c                                           ; $5288: $0d
	nop                                              ; $5289: $00
	ld   a, [bc]                                     ; $528a: $0a
	dec  c                                           ; $528b: $0d
	nop                                              ; $528c: $00
	nop                                              ; $528d: $00
	rrca                                             ; $528e: $0f
	nop                                              ; $528f: $00
	ld   bc, $c706                                   ; $5290: $01 $06 $c7
	add  hl, bc                                      ; $5293: $09
	rrca                                             ; $5294: $0f
	nop                                              ; $5295: $00
	ld   bc, $6501                                   ; $5296: $01 $01 $65
	sub  l                                           ; $5299: $95
	ld   d, h                                        ; $529a: $54
	ld   e, h                                        ; $529b: $5c
	halt                                             ; $529c: $76
	ld   e, c                                        ; $529d: $59
	ld   [bc], a                                     ; $529e: $02
	sbc  d                                           ; $529f: $9a
	ld   e, e                                        ; $52a0: $5b
	ld   [hl], l                                     ; $52a1: $75
	ld   h, a                                        ; $52a2: $67
	sub  [hl]                                        ; $52a3: $96
	sbc  a                                           ; $52a4: $9f
	dec  c                                           ; $52a5: $0d
	nop                                              ; $52a6: $00
	ld   a, [bc]                                     ; $52a7: $0a
	inc  e                                           ; $52a8: $1c
	ld   b, $05                                      ; $52a9: $06 $05
	dec  b                                           ; $52ab: $05
	ld   bc, $9565                                   ; $52ac: $01 $65 $95
	ld   d, h                                        ; $52af: $54
	ld   e, h                                        ; $52b0: $5c
	ld   sp, hl                                      ; $52b1: $f9
	dec  c                                           ; $52b2: $0d
	ld   d, h                                        ; $52b3: $54
	db   $fc                                         ; $52b4: $fc
	and  c                                           ; $52b5: $a1
	sbc  a                                           ; $52b6: $9f
	ld   e, b                                        ; $52b7: $58
	inc  bc                                          ; $52b8: $03
	ld   c, a                                        ; $52b9: $4f
	add  b                                           ; $52ba: $80
	sub  l                                           ; $52bb: $95
	ld   [hl], c                                     ; $52bc: $71
	halt                                             ; $52bd: $76
	ld   h, l                                        ; $52be: $65
	ld   [hl], h                                     ; $52bf: $74
	dec  c                                           ; $52c0: $0d
	inc  bc                                          ; $52c1: $03
	ret  c                                           ; $52c2: $d8

	ld   d, d                                        ; $52c3: $52
	ld   d, d                                        ; $52c4: $52
	ld   a, h                                        ; $52c5: $7c
	ld   e, c                                        ; $52c6: $59
	ld   sp, hl                                      ; $52c7: $f9
	dec  c                                           ; $52c8: $0d
	nop                                              ; $52c9: $00
	ld   a, [bc]                                     ; $52ca: $0a
	dec  c                                           ; $52cb: $0d
	nop                                              ; $52cc: $00
	nop                                              ; $52cd: $00
	rrca                                             ; $52ce: $0f
	nop                                              ; $52cf: $00
	ld   bc, $c706                                   ; $52d0: $01 $06 $c7
	add  hl, bc                                      ; $52d3: $09
	inc  e                                           ; $52d4: $1c
	ld   b, $03                                      ; $52d5: $06 $03
	inc  bc                                          ; $52d7: $03
	ld   bc, $5258                                   ; $52d8: $01 $58 $52
	ld   e, b                                        ; $52db: $58
	ld   d, d                                        ; $52dc: $52
	sbc  [hl]                                        ; $52dd: $9e
	inc  b                                           ; $52de: $04
	ld   c, $03                                      ; $52df: $0e $03
	sbc  l                                           ; $52e1: $9d
	inc  b                                           ; $52e2: $04
	and  [hl]                                        ; $52e3: $a6
	ld   e, c                                        ; $52e4: $59
	ld   sp, hl                                      ; $52e5: $f9
	dec  c                                           ; $52e6: $0d
	inc  b                                           ; $52e7: $04
	sub  a                                           ; $52e8: $97
	ld   [bc], a                                     ; $52e9: $02
	jp   $7590                                       ; $52ea: $c3 $90 $75


	ld   e, e                                        ; $52ed: $5b
	ld   a, b                                        ; $52ee: $78
	ld   d, d                                        ; $52ef: $52
	adc  c                                           ; $52f0: $89
	ld   [hl], a                                     ; $52f1: $77
	dec  c                                           ; $52f2: $0d
	ld   [hl], d                                     ; $52f3: $72
	ld   e, c                                        ; $52f4: $59
	sbc  d                                           ; $52f5: $9a
	ld   [hl], h                                     ; $52f6: $74
	and  c                                           ; $52f7: $a1
	ld   a, h                                        ; $52f8: $7c
	ld   e, c                                        ; $52f9: $59
	ld   sp, hl                                      ; $52fa: $f9
	dec  c                                           ; $52fb: $0d
	nop                                              ; $52fc: $00
	ld   a, [bc]                                     ; $52fd: $0a
	dec  c                                           ; $52fe: $0d
	nop                                              ; $52ff: $00
	nop                                              ; $5300: $00
	rrca                                             ; $5301: $0f
	nop                                              ; $5302: $00
	ld   bc, $c706                                   ; $5303: $01 $06 $c7
	add  hl, bc                                      ; $5306: $09
	inc  hl                                          ; $5307: $23
	add  e                                           ; $5308: $83
	inc  e                                           ; $5309: $1c
	ld   b, $00                                      ; $530a: $06 $00
	nop                                              ; $530c: $00
	ld   bc, $6176                                   ; $530d: $01 $76 $61
	sbc  e                                           ; $5310: $9b
	ld   [hl], l                                     ; $5311: $75
	sbc  [hl]                                        ; $5312: $9e
	ld   [$7d00], sp                                 ; $5313: $08 $00 $7d
	dec  c                                           ; $5316: $0d
	inc  bc                                          ; $5317: $03
	ld   h, h                                        ; $5318: $64
	dec  b                                           ; $5319: $05
	db   $10                                         ; $531a: $10
	sbc  [hl]                                        ; $531b: $9e
	ld   [hl], a                                     ; $531c: $77
	and  c                                           ; $531d: $a1
	ld   a, b                                        ; $531e: $78
	inc  b                                           ; $531f: $04
	ld   c, $03                                      ; $5320: $0e $03
	add  d                                           ; $5322: $82
	ld   a, c                                        ; $5323: $79
	ld   a, b                                        ; $5324: $78
	sbc  b                                           ; $5325: $98
	ld   l, l                                        ; $5326: $6d
	ld   d, d                                        ; $5327: $52
	dec  c                                           ; $5328: $0d
	halt                                             ; $5329: $76
	dec  b                                           ; $532a: $05
	pop  de                                          ; $532b: $d1
	ld   [hl], c                                     ; $532c: $71
	ld   [hl], h                                     ; $532d: $74
	sbc  c                                           ; $532e: $99
	ld   sp, hl                                      ; $532f: $f9
	dec  c                                           ; $5330: $0d
	nop                                              ; $5331: $00
	ld   a, [bc]                                     ; $5332: $0a
	add  hl, de                                      ; $5333: $19
	dec  b                                           ; $5334: $05
	inc  bc                                          ; $5335: $03
	ld   e, b                                        ; $5336: $58
	ld   [bc], a                                     ; $5337: $02
	dec  sp                                          ; $5338: $3b
	inc  bc                                          ; $5339: $03
	and  b                                           ; $533a: $a0
	ld   l, a                                        ; $533b: $6f
	nop                                              ; $533c: $00
	nop                                              ; $533d: $00
	inc  bc                                          ; $533e: $03
	ld   l, $03                                      ; $533f: $2e $03
	pop  hl                                          ; $5341: $e1
	ld   a, h                                        ; $5342: $7c
	inc  bc                                          ; $5343: $03
	add  d                                           ; $5344: $82
	nop                                              ; $5345: $00
	ld   bc, $4a03                                   ; $5346: $01 $03 $4a
	ld   [bc], a                                     ; $5349: $02
	ld   a, c                                        ; $534a: $79
	ld   a, h                                        ; $534b: $7c
	inc  bc                                          ; $534c: $03
	add  d                                           ; $534d: $82
	nop                                              ; $534e: $00
	ld   [bc], a                                     ; $534f: $02
	rlca                                             ; $5350: $07
	ld   l, $0a                                      ; $5351: $2e $0a
	ld   [bc], a                                     ; $5353: $02
	inc  bc                                          ; $5354: $03
	ld   bc, $2000                                   ; $5355: $01 $00 $20
	nop                                              ; $5358: $00
	rlca                                             ; $5359: $07
	ld   h, [hl]                                     ; $535a: $66
	ld   a, [bc]                                     ; $535b: $0a
	ld   [bc], a                                     ; $535c: $02
	inc  bc                                          ; $535d: $03
	ld   bc, $2001                                   ; $535e: $01 $01 $20
	nop                                              ; $5361: $00
	rlca                                             ; $5362: $07
	jp   $020a                                       ; $5363: $c3 $0a $02


	inc  bc                                          ; $5366: $03
	ld   bc, $2002                                   ; $5367: $01 $02 $20
	nop                                              ; $536a: $00
	ld   b, $2e                                      ; $536b: $06 $2e
	dec  bc                                          ; $536d: $0b
	rrca                                             ; $536e: $0f
	nop                                              ; $536f: $00
	ld   bc, $6b01                                   ; $5370: $01 $01 $6b
	sbc  b                                           ; $5373: $98
	sub  c                                           ; $5374: $91
	sbc  [hl]                                        ; $5375: $9e
	inc  b                                           ; $5376: $04
	ld   c, $02                                      ; $5377: $0e $02
	dec  sp                                          ; $5379: $3b
	inc  bc                                          ; $537a: $03
	and  b                                           ; $537b: $a0
	ld   l, a                                        ; $537c: $6f
	ld   [hl], l                                     ; $537d: $75
	ld   h, a                                        ; $537e: $67
	sub  [hl]                                        ; $537f: $96
	sbc  a                                           ; $5380: $9f
	dec  c                                           ; $5381: $0d
	nop                                              ; $5382: $00
	ld   a, [bc]                                     ; $5383: $0a
	inc  e                                           ; $5384: $1c
	ld   b, $03                                      ; $5385: $06 $03
	inc  bc                                          ; $5387: $03
	ld   bc, $3b02                                   ; $5388: $01 $02 $3b
	inc  bc                                          ; $538b: $03
	and  b                                           ; $538c: $a0
	ld   l, a                                        ; $538d: $6f
	ld   sp, hl                                      ; $538e: $f9
	dec  c                                           ; $538f: $0d
	ld   l, e                                        ; $5390: $6b
	ld   d, h                                        ; $5391: $54
	ld   e, c                                        ; $5392: $59
	sbc  [hl]                                        ; $5393: $9e
	ld   e, d                                        ; $5394: $5a
	and  c                                           ; $5395: $a1
	ld   a, [hl]                                     ; $5396: $7e
	sbc  d                                           ; $5397: $9a
	ld   a, b                                        ; $5398: $78
	sbc  a                                           ; $5399: $9f
	dec  c                                           ; $539a: $0d
	nop                                              ; $539b: $00
	ld   a, [bc]                                     ; $539c: $0a
	dec  c                                           ; $539d: $0d
	nop                                              ; $539e: $00
	nop                                              ; $539f: $00
	rrca                                             ; $53a0: $0f
	nop                                              ; $53a1: $00
	ld   bc, $6106                                   ; $53a2: $01 $06 $61
	dec  bc                                          ; $53a5: $0b
	rrca                                             ; $53a6: $0f
	nop                                              ; $53a7: $00
	ld   bc, $0301                                   ; $53a8: $01 $01 $03
	ld   l, $03                                      ; $53ab: $2e $03
	pop  hl                                          ; $53ad: $e1
	ld   [hl], l                                     ; $53ae: $75
	ld   d, d                                        ; $53af: $52
	ld   d, d                                        ; $53b0: $52
	ld   [hl], l                                     ; $53b1: $75
	ld   h, a                                        ; $53b2: $67
	sub  [hl]                                        ; $53b3: $96
	sbc  a                                           ; $53b4: $9f
	dec  c                                           ; $53b5: $0d
	inc  b                                           ; $53b6: $04
	xor  b                                           ; $53b7: $a8
	dec  b                                           ; $53b8: $05
	ld   hl, $0275                                   ; $53b9: $21 $75 $02
	ld   b, l                                        ; $53bc: $45
	ld   l, c                                        ; $53bd: $69
	ld   a, b                                        ; $53be: $78
	ld   [bc], a                                     ; $53bf: $02
	and  [hl]                                        ; $53c0: $a6
	inc  b                                           ; $53c1: $04
	rra                                              ; $53c2: $1f
	ld   e, d                                        ; $53c3: $5a
	dec  c                                           ; $53c4: $0d
	ld   e, e                                        ; $53c5: $5b
	ld   l, b                                        ; $53c6: $68
	ld   e, a                                        ; $53c7: $5f
	sbc  d                                           ; $53c8: $9a
	ld   a, [hl]                                     ; $53c9: $7e
	rst  $38                                         ; $53ca: $ff
	rst  $38                                         ; $53cb: $ff
	dec  c                                           ; $53cc: $0d
	nop                                              ; $53cd: $00
	ld   a, [bc]                                     ; $53ce: $0a
	inc  e                                           ; $53cf: $1c
	ld   b, $01                                      ; $53d0: $06 $01
	ld   bc, $401d                                   ; $53d2: $01 $1d $40
	ld   d, $03                                      ; $53d5: $16 $03
	ld   d, $01                                      ; $53d7: $16 $01
	ld   [bc], a                                     ; $53d9: $02
	jr   z, jr_055_53dc                              ; $53da: $28 $00

jr_055_53dc:
	ld   bc, $546b                                   ; $53dc: $01 $6b $54
	ld   l, [hl]                                     ; $53df: $6e
	sub  [hl]                                        ; $53e0: $96
	ld   a, b                                        ; $53e1: $78
	rst  $38                                         ; $53e2: $ff
	rst  $38                                         ; $53e3: $ff
	dec  c                                           ; $53e4: $0d
	ld   [bc], a                                     ; $53e5: $02
	ld   b, l                                        ; $53e6: $45
	ld   l, c                                        ; $53e7: $69
	ld   a, b                                        ; $53e8: $78
	ld   [bc], a                                     ; $53e9: $02
	and  [hl]                                        ; $53ea: $a6
	inc  b                                           ; $53eb: $04
	rra                                              ; $53ec: $1f
	ld   e, c                                        ; $53ed: $59
	rst  $38                                         ; $53ee: $ff
	rst  $38                                         ; $53ef: $ff
	dec  c                                           ; $53f0: $0d
	ld   e, d                                        ; $53f1: $5a
	and  c                                           ; $53f2: $a1
	ld   a, [hl]                                     ; $53f3: $7e
	sbc  d                                           ; $53f4: $9a
	sub  [hl]                                        ; $53f5: $96
	sbc  a                                           ; $53f6: $9f
	dec  c                                           ; $53f7: $0d
	nop                                              ; $53f8: $00
	ld   a, [bc]                                     ; $53f9: $0a
	dec  c                                           ; $53fa: $0d
	nop                                              ; $53fb: $00
	nop                                              ; $53fc: $00
	rrca                                             ; $53fd: $0f
	nop                                              ; $53fe: $00
	ld   bc, $6106                                   ; $53ff: $01 $06 $61
	dec  bc                                          ; $5402: $0b
	rrca                                             ; $5403: $0f
	nop                                              ; $5404: $00
	ld   bc, $0301                                   ; $5405: $01 $01 $03
	ld   c, d                                        ; $5408: $4a
	ld   [bc], a                                     ; $5409: $02
	ld   a, c                                        ; $540a: $79
	ld   a, h                                        ; $540b: $7c
	inc  bc                                          ; $540c: $03
	add  d                                           ; $540d: $82
	ld   [hl], l                                     ; $540e: $75
	ld   h, a                                        ; $540f: $67
	sbc  a                                           ; $5410: $9f
	dec  c                                           ; $5411: $0d
	ld   l, e                                        ; $5412: $6b
	ld   a, h                                        ; $5413: $7c
	inc  b                                           ; $5414: $04
	rst  ToBoot                                         ; $5415: $c7
	sub  b                                           ; $5416: $90
	sbc  [hl]                                        ; $5417: $9e
	inc  b                                           ; $5418: $04
	ld   [$9202], sp                                 ; $5419: $08 $02 $92
	ld   a, h                                        ; $541c: $7c
	sub  b                                           ; $541d: $90
	ld   e, h                                        ; $541e: $5c
	sbc  b                                           ; $541f: $98
	rst  $38                                         ; $5420: $ff
	rst  $38                                         ; $5421: $ff
	dec  c                                           ; $5422: $0d
	ld   [hl], l                                     ; $5423: $75
	ld   a, l                                        ; $5424: $7d
	ld   a, b                                        ; $5425: $78
	ld   e, l                                        ; $5426: $5d
	sbc  [hl]                                        ; $5427: $9e
	inc  b                                           ; $5428: $04
	ld   a, [bc]                                     ; $5429: $0a
	inc  bc                                          ; $542a: $03
	jp   nc, $0dfa                                   ; $542b: $d2 $fa $0d

	nop                                              ; $542e: $00
	ld   a, [bc]                                     ; $542f: $0a
	inc  e                                           ; $5430: $1c
	ld   b, $07                                      ; $5431: $06 $07
	rlca                                             ; $5433: $07
	dec  e                                           ; $5434: $1d
	ld   b, b                                        ; $5435: $40
	ld   d, $03                                      ; $5436: $16 $03
	ld   d, $01                                      ; $5438: $16 $01
	inc  bc                                          ; $543a: $03
	jr   z, jr_055_543d                              ; $543b: $28 $00

jr_055_543d:
	ld   bc, $7158                                   ; $543d: $01 $58 $71
	ld   a, [$5210]                                  ; $5440: $fa $10 $52
	ld   d, d                                        ; $5443: $52
	ld   a, e                                        ; $5444: $7b
	db   $fc                                         ; $5445: $fc
	sbc  a                                           ; $5446: $9f
	dec  c                                           ; $5447: $0d
	ld   [hl], l                                     ; $5448: $75
	ld   [hl], c                                     ; $5449: $71
	ld   e, c                                        ; $544a: $59
	ld   d, d                                        ; $544b: $52
	inc  b                                           ; $544c: $04
	call nc, $1f06                                   ; $544d: $d4 $06 $1f
	ld   l, [hl]                                     ; $5450: $6e
	ld   a, b                                        ; $5451: $78
	sbc  a                                           ; $5452: $9f
	dec  c                                           ; $5453: $0d
	ld   e, d                                        ; $5454: $5a
	and  c                                           ; $5455: $a1
	ld   a, [hl]                                     ; $5456: $7e
	sbc  d                                           ; $5457: $9a
	sub  [hl]                                        ; $5458: $96
	sbc  a                                           ; $5459: $9f
	ld   [bc], a                                     ; $545a: $02
	add  hl, bc                                      ; $545b: $09
	ld   [bc], a                                     ; $545c: $02
	ld   [$9967], sp                                 ; $545d: $08 $67 $99
	ld   l, d                                        ; $5460: $6a
	sbc  a                                           ; $5461: $9f
	dec  c                                           ; $5462: $0d
	nop                                              ; $5463: $00
	ld   a, [bc]                                     ; $5464: $0a
	dec  c                                           ; $5465: $0d
	nop                                              ; $5466: $00
	nop                                              ; $5467: $00
	rrca                                             ; $5468: $0f
	nop                                              ; $5469: $00
	ld   bc, $6106                                   ; $546a: $01 $06 $61
	dec  bc                                          ; $546d: $0b
	inc  e                                           ; $546e: $1c
	ld   b, $05                                      ; $546f: $06 $05
	dec  b                                           ; $5471: $05
	dec  e                                           ; $5472: $1d
	ld   b, b                                        ; $5473: $40
	ld   d, $03                                      ; $5474: $16 $03
	ld   d, $01                                      ; $5476: $16 $01
	ld   [bc], a                                     ; $5478: $02
	add  hl, hl                                      ; $5479: $29
	nop                                              ; $547a: $00
	ld   bc, $5258                                   ; $547b: $01 $58 $52
	ld   e, b                                        ; $547e: $58
	ld   d, d                                        ; $547f: $52
	sbc  [hl]                                        ; $5480: $9e
	inc  b                                           ; $5481: $04
	ld   c, $03                                      ; $5482: $0e $03
	sbc  l                                           ; $5484: $9d
	inc  b                                           ; $5485: $04
	and  [hl]                                        ; $5486: $a6
	ld   e, c                                        ; $5487: $59
	ld   sp, hl                                      ; $5488: $f9
	dec  c                                           ; $5489: $0d
	ld   l, e                                        ; $548a: $6b
	and  c                                           ; $548b: $a1
	ld   a, b                                        ; $548c: $78
	ld   a, c                                        ; $548d: $79
	inc  b                                           ; $548e: $04
	ld   a, e                                        ; $548f: $7b

Jump_055_5490:
	sbc  d                                           ; $5490: $9a
	ld   l, l                                        ; $5491: $6d
	ld   a, h                                        ; $5492: $7c
	ld   e, c                                        ; $5493: $59
	ld   sp, hl                                      ; $5494: $f9
	dec  c                                           ; $5495: $0d
	nop                                              ; $5496: $00
	ld   a, [bc]                                     ; $5497: $0a
	dec  c                                           ; $5498: $0d
	nop                                              ; $5499: $00
	nop                                              ; $549a: $00
	rrca                                             ; $549b: $0f
	nop                                              ; $549c: $00
	ld   bc, $6106                                   ; $549d: $01 $06 $61
	dec  bc                                          ; $54a0: $0b
	inc  hl                                          ; $54a1: $23
	sbc  e                                           ; $54a2: $9b
	inc  e                                           ; $54a3: $1c
	ld   b, $00                                      ; $54a4: $06 $00
	nop                                              ; $54a6: $00
	ld   bc, $9b6b                                   ; $54a7: $01 $6b $9b
	ld   l, e                                        ; $54aa: $6b
	sbc  e                                           ; $54ab: $9b
	ld   [bc], a                                     ; $54ac: $02
	or   l                                           ; $54ad: $b5
	sbc  e                                           ; $54ae: $9b
	ld   d, h                                        ; $54af: $54
	ld   e, c                                        ; $54b0: $59
	ld   sp, hl                                      ; $54b1: $f9
	dec  c                                           ; $54b2: $0d
	nop                                              ; $54b3: $00
	ld   a, [bc]                                     ; $54b4: $0a
	add  hl, de                                      ; $54b5: $19
	dec  b                                           ; $54b6: $05
	ld   [bc], a                                     ; $54b7: $02
	ld   l, e                                        ; $54b8: $6b
	ld   d, h                                        ; $54b9: $54
	ld   [hl], l                                     ; $54ba: $75
	ld   h, a                                        ; $54bb: $67
	ld   a, e                                        ; $54bc: $7b
	nop                                              ; $54bd: $00
	nop                                              ; $54be: $00
	sub  b                                           ; $54bf: $90
	ld   d, h                                        ; $54c0: $54
	ld   l, a                                        ; $54c1: $6f
	sub  l                                           ; $54c2: $95
	ld   [hl], c                                     ; $54c3: $71
	halt                                             ; $54c4: $76
	inc  b                                           ; $54c5: $04
	ldh  a, [c]                                      ; $54c6: $f2
	add  c                                           ; $54c7: $81
	ld   l, l                                        ; $54c8: $6d
	ld   d, d                                        ; $54c9: $52
	nop                                              ; $54ca: $00
	ld   bc, $a107                                   ; $54cb: $01 $07 $a1
	dec  bc                                          ; $54ce: $0b
	ld   [bc], a                                     ; $54cf: $02
	inc  bc                                          ; $54d0: $03
	ld   bc, $2000                                   ; $54d1: $01 $00 $20
	nop                                              ; $54d4: $00
	rlca                                             ; $54d5: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54d6: $cf
	dec  bc                                          ; $54d7: $0b
	ld   [bc], a                                     ; $54d8: $02
	inc  bc                                          ; $54d9: $03
	ld   bc, $2001                                   ; $54da: $01 $01 $20
	nop                                              ; $54dd: $00
	ld   b, $3b                                      ; $54de: $06 $3b
	inc  c                                           ; $54e0: $0c
	rrca                                             ; $54e1: $0f
	nop                                              ; $54e2: $00
	ld   bc, $6b01                                   ; $54e3: $01 $01 $6b
	ld   d, h                                        ; $54e6: $54
	ld   [hl], l                                     ; $54e7: $75
	ld   h, a                                        ; $54e8: $67
	ld   a, e                                        ; $54e9: $7b
	sbc  a                                           ; $54ea: $9f
	dec  c                                           ; $54eb: $0d
	ld   e, b                                        ; $54ec: $58
	ld   l, e                                        ; $54ed: $6b
	ld   e, l                                        ; $54ee: $5d
	ld   a, b                                        ; $54ef: $78
	ld   [hl], c                                     ; $54f0: $71
	ld   [hl], h                                     ; $54f1: $74
	sbc  [hl]                                        ; $54f2: $9e
	adc  l                                           ; $54f3: $8d
	and  c                                           ; $54f4: $a1
	ld   a, b                                        ; $54f5: $78
	ld   a, c                                        ; $54f6: $79
	inc  bc                                          ; $54f7: $03
	ld   [hl], l                                     ; $54f8: $75
	inc  b                                           ; $54f9: $04
	xor  e                                           ; $54fa: $ab
	dec  c                                           ; $54fb: $0d
	ld   e, c                                        ; $54fc: $59
	ld   e, a                                        ; $54fd: $5f
	ld   l, a                                        ; $54fe: $6f
	sub  c                                           ; $54ff: $91
	ld   d, d                                        ; $5500: $52
	ld   e, a                                        ; $5501: $5f
	adc  h                                           ; $5502: $8c
	ld   l, c                                        ; $5503: $69
	and  c                                           ; $5504: $a1
	ld   e, c                                        ; $5505: $59
	sub  a                                           ; $5506: $97
	ld   a, e                                        ; $5507: $7b
	sbc  a                                           ; $5508: $9f
	dec  c                                           ; $5509: $0d
	nop                                              ; $550a: $00
	ld   a, [bc]                                     ; $550b: $0a
	ld   b, $3b                                      ; $550c: $06 $3b
	inc  c                                           ; $550e: $0c
	rrca                                             ; $550f: $0f
	nop                                              ; $5510: $00
	ld   bc, $ac01                                   ; $5511: $01 $01 $ac
	push af                                          ; $5514: $f5
	bit  4, e                                        ; $5515: $cb $63
	and  c                                           ; $5517: $a1
	halt                                             ; $5518: $76
	ld   d, d                                        ; $5519: $52
	sbc  c                                           ; $551a: $99
	halt                                             ; $551b: $76
	dec  b                                           ; $551c: $05
	inc  de                                          ; $551d: $13
	ld   h, l                                        ; $551e: $65
	ld   d, d                                        ; $551f: $52
	ld   e, c                                        ; $5520: $59
	sub  a                                           ; $5521: $97
	dec  c                                           ; $5522: $0d
	sub  b                                           ; $5523: $90
	ld   d, h                                        ; $5524: $54
	ld   l, a                                        ; $5525: $6f
	sub  l                                           ; $5526: $95
	ld   [hl], c                                     ; $5527: $71
	halt                                             ; $5528: $76
	inc  b                                           ; $5529: $04
	ldh  a, [c]                                      ; $552a: $f2
	add  c                                           ; $552b: $81
	ld   l, l                                        ; $552c: $6d
	ld   d, d                                        ; $552d: $52
	ld   a, b                                        ; $552e: $78
	db   $fc                                         ; $552f: $fc
	dec  c                                           ; $5530: $0d
	ld   a, b                                        ; $5531: $78
	and  c                                           ; $5532: $a1
	ld   [hl], h                                     ; $5533: $74
	dec  b                                           ; $5534: $05
	pop  de                                          ; $5535: $d1
	ld   [hl], c                                     ; $5536: $71
	ld   [hl], h                                     ; $5537: $74
	sbc  c                                           ; $5538: $99
	and  c                                           ; $5539: $a1
	ld   [hl], l                                     ; $553a: $75
	ld   h, a                                        ; $553b: $67
	ld   e, d                                        ; $553c: $5a
	rst  $38                                         ; $553d: $ff
	dec  c                                           ; $553e: $0d
	nop                                              ; $553f: $00
	ld   a, [bc]                                     ; $5540: $0a
	inc  e                                           ; $5541: $1c
	ld   b, $04                                      ; $5542: $06 $04
	inc  b                                           ; $5544: $04
	dec  e                                           ; $5545: $1d
	ld   b, b                                        ; $5546: $40
	ld   d, $03                                      ; $5547: $16 $03
	ld   d, $01                                      ; $5549: $16 $01
	inc  bc                                          ; $554b: $03
	jr   z, jr_055_554e                              ; $554c: $28 $00

jr_055_554e:
	ld   bc, $5656                                   ; $554e: $01 $56 $56
	ld   [hl], c                                     ; $5551: $71
	dec  c                                           ; $5552: $0d
	nop                                              ; $5553: $00
	ld   a, [bc]                                     ; $5554: $0a
	ld   bc, $9075                                   ; $5555: $01 $75 $90
	rst  $38                                         ; $5558: $ff
	rst  $38                                         ; $5559: $ff
	dec  c                                           ; $555a: $0d
	sub  b                                           ; $555b: $90
	ld   d, h                                        ; $555c: $54
	ld   [bc], a                                     ; $555d: $02
	or   l                                           ; $555e: $b5
	sub  a                                           ; $555f: $97
	ld   a, b                                        ; $5560: $78
	ld   d, d                                        ; $5561: $52
	halt                                             ; $5562: $76
	adc  h                                           ; $5563: $8c
	ld   l, b                                        ; $5564: $68
	ld   d, d                                        ; $5565: $52
	ld   l, d                                        ; $5566: $6a
	sbc  a                                           ; $5567: $9f
	dec  c                                           ; $5568: $0d
	inc  bc                                          ; $5569: $03
	ld   hl, sp-$69                                  ; $556a: $f8 $97
	sbc  d                                           ; $556c: $9a
	sbc  c                                           ; $556d: $99
	sub  [hl]                                        ; $556e: $96
	sbc  [hl]                                        ; $556f: $9e
	rst  JumpTable                                         ; $5570: $df
	db   $ec                                         ; $5571: $ec
	and  e                                           ; $5572: $a3
	ld   a, c                                        ; $5573: $79
	sbc  a                                           ; $5574: $9f
	dec  c                                           ; $5575: $0d
	nop                                              ; $5576: $00
	ld   a, [bc]                                     ; $5577: $0a
	ld   b, $3b                                      ; $5578: $06 $3b
	inc  c                                           ; $557a: $0c
	ld   d, $23                                      ; $557b: $16 $23
	rrca                                             ; $557d: $0f
	ld   b, $01                                      ; $557e: $06 $01
	ld   bc, $9166                                   ; $5580: $01 $66 $91
	ld   d, b                                        ; $5583: $50
	sbc  [hl]                                        ; $5584: $9e
	adc  h                                           ; $5585: $8c
	ld   l, l                                        ; $5586: $6d
	dec  b                                           ; $5587: $05
	cp   c                                           ; $5588: $b9
	ld   [hl], c                                     ; $5589: $71
	ld   [hl], h                                     ; $558a: $74
	ld   [bc], a                                     ; $558b: $02
	or   l                                           ; $558c: $b5
	sbc  c                                           ; $558d: $99
	ld   l, h                                        ; $558e: $6c
	sbc  a                                           ; $558f: $9f
	dec  c                                           ; $5590: $0d
	nop                                              ; $5591: $00
	ld   a, [bc]                                     ; $5592: $0a
	rrca                                             ; $5593: $0f
	nop                                              ; $5594: $00
	ld   bc, $1e09                                   ; $5595: $01 $09 $1e
	inc  c                                           ; $5598: $0c
	ld   [bc], a                                     ; $5599: $02
	ld   c, $02                                      ; $559a: $0e $02
	ld   bc, $ffff                                   ; $559c: $01 $ff $ff
	add  e                                           ; $559f: $83
	ld   d, h                                        ; $55a0: $54
	sbc  [hl]                                        ; $55a1: $9e
	ld   [bc], a                                     ; $55a2: $02
	and  l                                           ; $55a3: $a5
	inc  b                                           ; $55a4: $04
	xor  d                                           ; $55a5: $aa
	ld   a, l                                        ; $55a6: $7d
	ld   l, l                                        ; $55a7: $6d
	ld   a, h                                        ; $55a8: $7c
	ld   h, l                                        ; $55a9: $65
	ld   e, c                                        ; $55aa: $59
	ld   [hl], c                                     ; $55ab: $71
	ld   l, l                                        ; $55ac: $6d
	dec  c                                           ; $55ad: $0d
	ld   a, b                                        ; $55ae: $78
	ld   d, b                                        ; $55af: $50
	rst  $38                                         ; $55b0: $ff
	rst  $38                                         ; $55b1: $ff
	dec  c                                           ; $55b2: $0d
	nop                                              ; $55b3: $00
	ld   a, [bc]                                     ; $55b4: $0a
	ld   bc, $7158                                   ; $55b5: $01 $58 $71
	halt                                             ; $55b8: $76
	sbc  [hl]                                        ; $55b9: $9e
	sub  b                                           ; $55ba: $90
	ld   d, h                                        ; $55bb: $54
	ld   h, c                                        ; $55bc: $61
	and  c                                           ; $55bd: $a1
	ld   a, b                                        ; $55be: $78
	inc  bc                                          ; $55bf: $03
	ld   l, a                                        ; $55c0: $6f
	ld   [bc], a                                     ; $55c1: $02
	xor  c                                           ; $55c2: $a9
	ld   e, c                                        ; $55c3: $59
	sbc  a                                           ; $55c4: $9f
	dec  c                                           ; $55c5: $0d
	ld   l, e                                        ; $55c6: $6b
	sbc  e                                           ; $55c7: $9b
	ld   l, e                                        ; $55c8: $6b
	sbc  e                                           ; $55c9: $9b
	inc  b                                           ; $55ca: $04
	ld   b, d                                        ; $55cb: $42
	ld   a, b                                        ; $55cc: $78
	ld   e, l                                        ; $55cd: $5d
	ld   l, a                                        ; $55ce: $6f
	sub  c                                           ; $55cf: $91
	rst  $38                                         ; $55d0: $ff
	rst  $38                                         ; $55d1: $ff
	dec  c                                           ; $55d2: $0d
	nop                                              ; $55d3: $00
	ld   a, [bc]                                     ; $55d4: $0a
	add  hl, hl                                      ; $55d5: $29
	nop                                              ; $55d6: $00
	nop                                              ; $55d7: $00
	nop                                              ; $55d8: $00
	inc  b                                           ; $55d9: $04
	add  b                                           ; $55da: $80
	ld   l, a                                        ; $55db: $6f
	ld   bc, $20ff                                   ; $55dc: $01 $ff $20
	nop                                              ; $55df: $00
	ld   c, $01                                      ; $55e0: $0e $01
	rrca                                             ; $55e2: $0f
	nop                                              ; $55e3: $00
	ld   bc, $0102                                   ; $55e4: $01 $02 $01
	ld   [bc], a                                     ; $55e7: $02
	and  l                                           ; $55e8: $a5
	inc  b                                           ; $55e9: $04
	xor  d                                           ; $55ea: $aa
	ld   a, l                                        ; $55eb: $7d
	sbc  [hl]                                        ; $55ec: $9e
	rst  JumpTable                                         ; $55ed: $df
	db   $ec                                         ; $55ee: $ec
	and  e                                           ; $55ef: $a3
	ld   h, e                                        ; $55f0: $63
	and  c                                           ; $55f1: $a1
	halt                                             ; $55f2: $76
	dec  c                                           ; $55f3: $0d
	ld   e, b                                        ; $55f4: $58
	ld   d, d                                        ; $55f5: $52
	ld   h, l                                        ; $55f6: $65
	ld   d, d                                        ; $55f7: $52
	or   h                                           ; $55f8: $b4
	ei                                               ; $55f9: $fb
	db   $d3                                         ; $55fa: $d3
	ei                                               ; $55fb: $fb
	and  b                                           ; $55fc: $a0
	dec  c                                           ; $55fd: $0d
	ld   [bc], a                                     ; $55fe: $02
	rlca                                             ; $55ff: $07
	adc  l                                           ; $5600: $8d
	ld   a, c                                        ; $5601: $79
	ld   [bc], a                                     ; $5602: $02
	ld   a, a                                        ; $5603: $7f
	ld   e, l                                        ; $5604: $5d
	and  c                                           ; $5605: $a1
	ld   l, [hl]                                     ; $5606: $6e
	sub  [hl]                                        ; $5607: $96
	ld   a, b                                        ; $5608: $78
	sbc  a                                           ; $5609: $9f
	dec  c                                           ; $560a: $0d
	nop                                              ; $560b: $00
	ld   a, [bc]                                     ; $560c: $0a
	ld   bc, $2805                                   ; $560d: $01 $05 $28
	ld   d, d                                        ; $5610: $52
	ld   [hl], l                                     ; $5611: $75
	inc  b                                           ; $5612: $04
	rlca                                             ; $5613: $07
	dec  b                                           ; $5614: $05
	scf                                              ; $5615: $37
	ld   d, [hl]                                     ; $5616: $56
	ld   a, b                                        ; $5617: $78
	ld   e, l                                        ; $5618: $5d
	ld   l, a                                        ; $5619: $6f
	sub  c                                           ; $561a: $91
	sbc  a                                           ; $561b: $9f
	dec  c                                           ; $561c: $0d
	nop                                              ; $561d: $00
	ld   a, [bc]                                     ; $561e: $0a
	add  hl, de                                      ; $561f: $19
	inc  b                                           ; $5620: $04
	inc  bc                                          ; $5621: $03
	cp   b                                           ; $5622: $b8
	push hl                                          ; $5623: $e5
	push bc                                          ; $5624: $c5
	and  b                                           ; $5625: $a0
	inc  b                                           ; $5626: $04
	rlca                                             ; $5627: $07
	sbc  c                                           ; $5628: $99
	nop                                              ; $5629: $00
	nop                                              ; $562a: $00
	cp   b                                           ; $562b: $b8
	push hl                                          ; $562c: $e5
	or   d                                           ; $562d: $b2
	and  b                                           ; $562e: $a0
	inc  bc                                          ; $562f: $03
	dec  de                                          ; $5630: $1b
	sbc  c                                           ; $5631: $99
	nop                                              ; $5632: $00
	ld   bc, $e5b8                                   ; $5633: $01 $b8 $e5
	pop  af                                          ; $5636: $f1
	ei                                               ; $5637: $fb
	and  b                                           ; $5638: $a0
	ld   d, b                                        ; $5639: $50
	add  c                                           ; $563a: $81
	sbc  c                                           ; $563b: $99
	nop                                              ; $563c: $00
	ld   [bc], a                                     ; $563d: $02
	rlca                                             ; $563e: $07
	ld   a, h                                        ; $563f: $7c
	nop                                              ; $5640: $00
	ld   [bc], a                                     ; $5641: $02
	inc  bc                                          ; $5642: $03
	ld   bc, $2000                                   ; $5643: $01 $00 $20
	nop                                              ; $5646: $00
	rlca                                             ; $5647: $07
	sbc  l                                           ; $5648: $9d
	nop                                              ; $5649: $00
	ld   [bc], a                                     ; $564a: $02
	inc  bc                                          ; $564b: $03
	ld   bc, $2001                                   ; $564c: $01 $01 $20
	nop                                              ; $564f: $00
	rlca                                             ; $5650: $07
	reti                                             ; $5651: $d9


	nop                                              ; $5652: $00
	ld   [bc], a                                     ; $5653: $02
	inc  bc                                          ; $5654: $03
	ld   bc, $2002                                   ; $5655: $01 $02 $20
	nop                                              ; $5658: $00
	ld   b, $1a                                      ; $5659: $06 $1a
	ld   bc, $000f                                   ; $565b: $01 $0f $00
	ld   bc, $8c01                                   ; $565e: $01 $01 $8c
	ld   l, b                                        ; $5661: $68
	ld   a, l                                        ; $5662: $7d
	sbc  [hl]                                        ; $5663: $9e
	cp   b                                           ; $5664: $b8
	push hl                                          ; $5665: $e5
	push bc                                          ; $5666: $c5
	and  b                                           ; $5667: $a0
	inc  b                                           ; $5668: $04
	rlca                                             ; $5669: $07
	ld   [hl], h                                     ; $566a: $74
	halt                                             ; $566b: $76
	rst  $38                                         ; $566c: $ff
	rst  $38                                         ; $566d: $ff
	dec  c                                           ; $566e: $0d
	nop                                              ; $566f: $00
	ld   a, [bc]                                     ; $5670: $0a
	dec  b                                           ; $5671: $05
	ld   b, b                                        ; $5672: $40
	rst  $38                                         ; $5673: $ff
	inc  bc                                          ; $5674: $03
	rst  $38                                         ; $5675: $ff
	ld   bc, $2801                                   ; $5676: $01 $01 $28
	nop                                              ; $5679: $00
	ld   b, $3d                                      ; $567a: $06 $3d
	ld   bc, $000f                                   ; $567c: $01 $0f $00
	ld   bc, $8c01                                   ; $567f: $01 $01 $8c
	ld   l, b                                        ; $5682: $68
	ld   a, l                                        ; $5683: $7d
	sbc  [hl]                                        ; $5684: $9e
	cp   b                                           ; $5685: $b8
	push hl                                          ; $5686: $e5
	or   d                                           ; $5687: $b2
	and  b                                           ; $5688: $a0
	inc  bc                                          ; $5689: $03
	dec  de                                          ; $568a: $1b
	ld   [hl], c                                     ; $568b: $71
	ld   [hl], h                                     ; $568c: $74
	rst  $38                                         ; $568d: $ff
	rst  $38                                         ; $568e: $ff
	dec  c                                           ; $568f: $0d
	and  c                                           ; $5690: $a1
	ld   sp, hl                                      ; $5691: $f9
	db   $10                                         ; $5692: $10
	ld   a, b                                        ; $5693: $78
	and  c                                           ; $5694: $a1
	ld   [hl], l                                     ; $5695: $75
	cp   b                                           ; $5696: $b8
	push hl                                          ; $5697: $e5
	or   d                                           ; $5698: $b2
	and  b                                           ; $5699: $a0
	dec  c                                           ; $569a: $0d
	nop                                              ; $569b: $00
	dec  b                                           ; $569c: $05
	ld   b, b                                        ; $569d: $40
	rst  $38                                         ; $569e: $ff
	inc  bc                                          ; $569f: $03
	rst  $38                                         ; $56a0: $ff
	ld   bc, $2801                                   ; $56a1: $01 $01 $28
	nop                                              ; $56a4: $00
	ld   bc, $1b03                                   ; $56a5: $01 $03 $1b
	sub  a                                           ; $56a8: $97
	ld   a, b                                        ; $56a9: $78
	ld   e, e                                        ; $56aa: $5b
	sub  c                                           ; $56ab: $91
	ld   d, d                                        ; $56ac: $52
	ld   e, a                                        ; $56ad: $5f
	ld   a, b                                        ; $56ae: $78
	ld   d, d                                        ; $56af: $52
	and  c                                           ; $56b0: $a1
	ld   l, [hl]                                     ; $56b1: $6e
	ld   sp, hl                                      ; $56b2: $f9
	dec  c                                           ; $56b3: $0d
	nop                                              ; $56b4: $00
	ld   a, [bc]                                     ; $56b5: $0a
	ld   b, $3f                                      ; $56b6: $06 $3f
	nop                                              ; $56b8: $00
	rrca                                             ; $56b9: $0f
	nop                                              ; $56ba: $00
	ld   bc, $8c01                                   ; $56bb: $01 $01 $8c
	ld   l, b                                        ; $56be: $68
	ld   a, l                                        ; $56bf: $7d
	rst  $38                                         ; $56c0: $ff
	rst  $38                                         ; $56c1: $ff
	cp   b                                           ; $56c2: $b8
	push hl                                          ; $56c3: $e5
	pop  af                                          ; $56c4: $f1
	ei                                               ; $56c5: $fb
	and  b                                           ; $56c6: $a0
	ld   d, b                                        ; $56c7: $50
	add  c                                           ; $56c8: $81
	sub  [hl]                                        ; $56c9: $96
	ld   d, h                                        ; $56ca: $54
	dec  c                                           ; $56cb: $0d
	ld   e, c                                        ; $56cc: $59
	ld   a, b                                        ; $56cd: $78
	ld   sp, hl                                      ; $56ce: $f9
	db   $10                                         ; $56cf: $10
	rst  $38                                         ; $56d0: $ff
	rst  $38                                         ; $56d1: $ff
	ld   d, d                                        ; $56d2: $52
	sub  d                                           ; $56d3: $92
	ld   d, d                                        ; $56d4: $52
	sub  d                                           ; $56d5: $92
	sbc  [hl]                                        ; $56d6: $9e
	ld   l, e                                        ; $56d7: $6b
	and  c                                           ; $56d8: $a1
	ld   a, b                                        ; $56d9: $78
	dec  c                                           ; $56da: $0d
	nop                                              ; $56db: $00
	dec  b                                           ; $56dc: $05
	ld   b, b                                        ; $56dd: $40
	rst  $38                                         ; $56de: $ff
	inc  bc                                          ; $56df: $03
	rst  $38                                         ; $56e0: $ff
	ld   bc, $2801                                   ; $56e1: $01 $01 $28
	nop                                              ; $56e4: $00
	ld   bc, $7661                                   ; $56e5: $01 $61 $76
	ld   h, l                                        ; $56e8: $65
	ld   [hl], h                                     ; $56e9: $74
	sbc  c                                           ; $56ea: $99
	inc  bc                                          ; $56eb: $03
	ld   l, a                                        ; $56ec: $6f
	ld   [bc], a                                     ; $56ed: $02
	xor  c                                           ; $56ee: $a9
	ld   a, l                                        ; $56ef: $7d
	ld   a, b                                        ; $56f0: $78
	ld   d, d                                        ; $56f1: $52
	ld   l, h                                        ; $56f2: $6c
	sbc  a                                           ; $56f3: $9f
	dec  c                                           ; $56f4: $0d
	nop                                              ; $56f5: $00
	ld   a, [bc]                                     ; $56f6: $0a
	ld   b, $3f                                      ; $56f7: $06 $3f
	nop                                              ; $56f9: $00
	rrca                                             ; $56fa: $0f
	nop                                              ; $56fb: $00
	ld   bc, $8c01                                   ; $56fc: $01 $01 $8c
	ld   l, b                                        ; $56ff: $68
	ld   a, l                                        ; $5700: $7d
	rst  $38                                         ; $5701: $ff
	rst  $38                                         ; $5702: $ff
	dec  c                                           ; $5703: $0d
	ld   [hl], a                                     ; $5704: $77
	ld   d, h                                        ; $5705: $54
	ld   h, l                                        ; $5706: $65
	sub  [hl]                                        ; $5707: $96
	ld   d, h                                        ; $5708: $54
	ld   e, c                                        ; $5709: $59
	rst  $38                                         ; $570a: $ff
	rst  $38                                         ; $570b: $ff
	rst  $38                                         ; $570c: $ff
	rst  $38                                         ; $570d: $ff
	dec  c                                           ; $570e: $0d
	nop                                              ; $570f: $00
	ld   a, [bc]                                     ; $5710: $0a
	dec  b                                           ; $5711: $05
	ld   b, b                                        ; $5712: $40
	rst  $38                                         ; $5713: $ff
	inc  bc                                          ; $5714: $03
	rst  $38                                         ; $5715: $ff
	ld   bc, $2801                                   ; $5716: $01 $01 $28
	nop                                              ; $5719: $00
	ld   b, $3f                                      ; $571a: $06 $3f
	nop                                              ; $571c: $00
	add  hl, de                                      ; $571d: $19
	inc  b                                           ; $571e: $04
	inc  bc                                          ; $571f: $03
	ld   e, l                                        ; $5720: $5d
	ld   [hl], d                                     ; $5721: $72
	ld   h, l                                        ; $5722: $65
	ld   l, l                                        ; $5723: $6d
	and  b                                           ; $5724: $a0
	ld   a, l                                        ; $5725: $7d
	ld   e, l                                        ; $5726: $5d
	nop                                              ; $5727: $00
	nop                                              ; $5728: $00
	ld   e, l                                        ; $5729: $5d
	ld   [hl], d                                     ; $572a: $72
	ld   h, l                                        ; $572b: $65
	ld   l, l                                        ; $572c: $6d
	and  b                                           ; $572d: $a0
	ld   h, e                                        ; $572e: $63
	ld   e, l                                        ; $572f: $5d
	nop                                              ; $5730: $00
	ld   bc, $715e                                   ; $5731: $01 $5e $71
	ld   l, l                                        ; $5734: $6d
	sbc  b                                           ; $5735: $98
	halt                                             ; $5736: $76
	ld   h, a                                        ; $5737: $67
	sbc  c                                           ; $5738: $99
	nop                                              ; $5739: $00
	ld   [bc], a                                     ; $573a: $02
	rlca                                             ; $573b: $07
	ld   a, c                                        ; $573c: $79
	ld   bc, $0302                                   ; $573d: $01 $02 $03
	ld   bc, $2000                                   ; $5740: $01 $00 $20
	nop                                              ; $5743: $00
	rlca                                             ; $5744: $07
	sbc  c                                           ; $5745: $99
	ld   bc, $0302                                   ; $5746: $01 $02 $03
	ld   bc, $2001                                   ; $5749: $01 $01 $20
	nop                                              ; $574c: $00
	rlca                                             ; $574d: $07
	db   $d3                                         ; $574e: $d3
	ld   bc, $0302                                   ; $574f: $01 $02 $03
	ld   bc, $2002                                   ; $5752: $01 $02 $20
	nop                                              ; $5755: $00
	ld   b, $04                                      ; $5756: $06 $04
	ld   [bc], a                                     ; $5758: $02
	rrca                                             ; $5759: $0f
	nop                                              ; $575a: $00
	ld   bc, $0301                                   ; $575b: $01 $01 $03
	ld   l, b                                        ; $575e: $68
	ld   a, c                                        ; $575f: $79
	ld   e, l                                        ; $5760: $5d
	ld   [hl], d                                     ; $5761: $72
	ld   h, l                                        ; $5762: $65
	ld   l, l                                        ; $5763: $6d
	and  b                                           ; $5764: $a0
	ld   a, l                                        ; $5765: $7d
	ld   d, d                                        ; $5766: $52
	ld   [hl], h                                     ; $5767: $74
	rst  $38                                         ; $5768: $ff
	rst  $38                                         ; $5769: $ff
	dec  c                                           ; $576a: $0d
	nop                                              ; $576b: $00
	ld   a, [bc]                                     ; $576c: $0a
	dec  b                                           ; $576d: $05
	ld   b, b                                        ; $576e: $40
	rst  $38                                         ; $576f: $ff
	inc  bc                                          ; $5770: $03
	rst  $38                                         ; $5771: $ff
	ld   bc, $2801                                   ; $5772: $01 $01 $28
	nop                                              ; $5775: $00
	ld   b, $27                                      ; $5776: $06 $27
	ld   [bc], a                                     ; $5778: $02
	rrca                                             ; $5779: $0f
	nop                                              ; $577a: $00
	ld   bc, $0301                                   ; $577b: $01 $01 $03
	ld   l, b                                        ; $577e: $68
	ld   a, c                                        ; $577f: $79
	sbc  [hl]                                        ; $5780: $9e
	ld   e, l                                        ; $5781: $5d
	ld   [hl], d                                     ; $5782: $72
	ld   h, l                                        ; $5783: $65
	ld   l, l                                        ; $5784: $6d
	and  b                                           ; $5785: $a0
	ld   h, e                                        ; $5786: $63
	ld   d, d                                        ; $5787: $52
	ld   [hl], h                                     ; $5788: $74
	rst  $38                                         ; $5789: $ff
	rst  $38                                         ; $578a: $ff
	dec  c                                           ; $578b: $0d
	and  c                                           ; $578c: $a1
	ld   sp, hl                                      ; $578d: $f9
	db   $10                                         ; $578e: $10
	ld   h, e                                        ; $578f: $63
	ld   d, d                                        ; $5790: $52
	ld   [hl], h                                     ; $5791: $74
	ld   [hl], c                                     ; $5792: $71
	ld   [hl], h                                     ; $5793: $74
	rst  $38                                         ; $5794: $ff
	rst  $38                                         ; $5795: $ff
	dec  c                                           ; $5796: $0d
	nop                                              ; $5797: $00
	dec  b                                           ; $5798: $05
	ld   b, b                                        ; $5799: $40
	rst  $38                                         ; $579a: $ff
	inc  bc                                          ; $579b: $03
	rst  $38                                         ; $579c: $ff
	ld   bc, $2801                                   ; $579d: $01 $01 $28
	nop                                              ; $57a0: $00
	ld   bc, $8492                                   ; $57a1: $01 $92 $84
	ld   [hl], c                                     ; $57a4: $71
	ld   l, a                                        ; $57a5: $6f
	sub  c                                           ; $57a6: $91
	pop  bc                                          ; $57a7: $c1
	db   $e3                                         ; $57a8: $e3
	ld   [hl], l                                     ; $57a9: $75
	ld   h, l                                        ; $57aa: $65
	sub  l                                           ; $57ab: $95
	sbc  a                                           ; $57ac: $9f
	dec  c                                           ; $57ad: $0d
	nop                                              ; $57ae: $00
	ld   a, [bc]                                     ; $57af: $0a
	ld   b, $3d                                      ; $57b0: $06 $3d
	ld   bc, $000f                                   ; $57b2: $01 $0f $00
	ld   bc, $0301                                   ; $57b5: $01 $01 $03
	ld   l, b                                        ; $57b8: $68
	ld   a, c                                        ; $57b9: $79
	halt                                             ; $57ba: $76
	rst  $38                                         ; $57bb: $ff
	rst  $38                                         ; $57bc: $ff
	dec  c                                           ; $57bd: $0d
	ld   d, h                                        ; $57be: $54
	db   $fc                                         ; $57bf: $fc
	and  c                                           ; $57c0: $a1
	sbc  [hl]                                        ; $57c1: $9e
	ld   e, [hl]                                     ; $57c2: $5e
	ld   [hl], c                                     ; $57c3: $71
	ld   l, l                                        ; $57c4: $6d
	sbc  b                                           ; $57c5: $98
	rst  $38                                         ; $57c6: $ff
	rst  $38                                         ; $57c7: $ff
	dec  c                                           ; $57c8: $0d
	nop                                              ; $57c9: $00
	dec  b                                           ; $57ca: $05
	ld   b, b                                        ; $57cb: $40
	rst  $38                                         ; $57cc: $ff
	inc  bc                                          ; $57cd: $03
	rst  $38                                         ; $57ce: $ff
	ld   bc, $2801                                   ; $57cf: $01 $01 $28
	nop                                              ; $57d2: $00
	ld   bc, $7471                                   ; $57d3: $01 $71 $74
	sbc  [hl]                                        ; $57d6: $9e
	ld   l, a                                        ; $57d7: $6f
	ld   e, d                                        ; $57d8: $5a
	ld   d, h                                        ; $57d9: $54
	ld   [hl], c                                     ; $57da: $71
	ld   [hl], h                                     ; $57db: $74
	ld   a, [$0dfa]                                  ; $57dc: $fa $fa $0d
	nop                                              ; $57df: $00
	ld   a, [bc]                                     ; $57e0: $0a
	ld   b, $3d                                      ; $57e1: $06 $3d
	ld   bc, $000f                                   ; $57e3: $01 $0f $00
	ld   bc, $0301                                   ; $57e6: $01 $01 $03
	ld   l, b                                        ; $57e9: $68
	ld   a, c                                        ; $57ea: $79
	rst  $38                                         ; $57eb: $ff
	rst  $38                                         ; $57ec: $ff
	dec  c                                           ; $57ed: $0d
	ld   [hl], a                                     ; $57ee: $77
	ld   d, h                                        ; $57ef: $54
	ld   h, l                                        ; $57f0: $65
	sub  [hl]                                        ; $57f1: $96
	ld   d, h                                        ; $57f2: $54
	ld   e, c                                        ; $57f3: $59
	rst  $38                                         ; $57f4: $ff
	rst  $38                                         ; $57f5: $ff
	rst  $38                                         ; $57f6: $ff
	rst  $38                                         ; $57f7: $ff
	dec  c                                           ; $57f8: $0d
	nop                                              ; $57f9: $00
	ld   a, [bc]                                     ; $57fa: $0a
	dec  b                                           ; $57fb: $05
	ld   b, b                                        ; $57fc: $40
	rst  $38                                         ; $57fd: $ff
	inc  bc                                          ; $57fe: $03
	rst  $38                                         ; $57ff: $ff
	ld   bc, $2801                                   ; $5800: $01 $01 $28
	nop                                              ; $5803: $00
	ld   b, $3d                                      ; $5804: $06 $3d
	ld   bc, $0419                                   ; $5806: $01 $19 $04
	inc  bc                                          ; $5809: $03
	cp   e                                           ; $580a: $bb
	db   $dd                                         ; $580b: $dd
	push af                                          ; $580c: $f5
	and  b                                           ; $580d: $a0
	ld   a, l                                        ; $580e: $7d
	ld   e, l                                        ; $580f: $5d
	nop                                              ; $5810: $00
	nop                                              ; $5811: $00
	cp   e                                           ; $5812: $bb
	xor  [hl]                                        ; $5813: $ae
	push af                                          ; $5814: $f5
	and  b                                           ; $5815: $a0
	ld   e, c                                        ; $5816: $59
	add  h                                           ; $5817: $84
	sbc  c                                           ; $5818: $99
	nop                                              ; $5819: $00
	ld   bc, $ddbb                                   ; $581a: $01 $bb $dd
	push af                                          ; $581d: $f5
	and  b                                           ; $581e: $a0
	ld   a, d                                        ; $581f: $7a
	ld   e, [hl]                                     ; $5820: $5e
	nop                                              ; $5821: $00
	ld   [bc], a                                     ; $5822: $02
	rlca                                             ; $5823: $07
	ld   h, c                                        ; $5824: $61
	ld   [bc], a                                     ; $5825: $02
	ld   [bc], a                                     ; $5826: $02
	inc  bc                                          ; $5827: $03
	ld   bc, $2000                                   ; $5828: $01 $00 $20
	nop                                              ; $582b: $00
	rlca                                             ; $582c: $07
	add  c                                           ; $582d: $81
	ld   [bc], a                                     ; $582e: $02
	ld   [bc], a                                     ; $582f: $02
	inc  bc                                          ; $5830: $03
	ld   bc, $2001                                   ; $5831: $01 $01 $20
	nop                                              ; $5834: $00
	rlca                                             ; $5835: $07
	or   l                                           ; $5836: $b5
	ld   [bc], a                                     ; $5837: $02
	ld   [bc], a                                     ; $5838: $02
	inc  bc                                          ; $5839: $03
	ld   bc, $2002                                   ; $583a: $01 $02 $20
	nop                                              ; $583d: $00
	ld   b, $e7                                      ; $583e: $06 $e7
	ld   [bc], a                                     ; $5840: $02
	rrca                                             ; $5841: $0f
	nop                                              ; $5842: $00
	ld   bc, $6b01                                   ; $5843: $01 $01 $6b
	ld   h, l                                        ; $5846: $65
	ld   [hl], h                                     ; $5847: $74
	sbc  [hl]                                        ; $5848: $9e
	cp   e                                           ; $5849: $bb
	db   $dd                                         ; $584a: $dd
	push af                                          ; $584b: $f5
	and  b                                           ; $584c: $a0
	ld   a, l                                        ; $584d: $7d
	ld   d, d                                        ; $584e: $52
	ld   [hl], h                                     ; $584f: $74
	rst  $38                                         ; $5850: $ff
	rst  $38                                         ; $5851: $ff
	dec  c                                           ; $5852: $0d
	nop                                              ; $5853: $00
	ld   a, [bc]                                     ; $5854: $0a
	dec  b                                           ; $5855: $05
	ld   b, b                                        ; $5856: $40
	rst  $38                                         ; $5857: $ff
	inc  bc                                          ; $5858: $03
	rst  $38                                         ; $5859: $ff
	ld   bc, $2801                                   ; $585a: $01 $01 $28
	nop                                              ; $585d: $00
	ld   b, $0a                                      ; $585e: $06 $0a
	inc  bc                                          ; $5860: $03
	rrca                                             ; $5861: $0f
	nop                                              ; $5862: $00
	ld   bc, $bb01                                   ; $5863: $01 $01 $bb
	xor  [hl]                                        ; $5866: $ae
	push af                                          ; $5867: $f5
	and  b                                           ; $5868: $a0
	ld   e, c                                        ; $5869: $59
	add  h                                           ; $586a: $84
	ld   [hl], c                                     ; $586b: $71
	ld   [hl], h                                     ; $586c: $74
	rst  $38                                         ; $586d: $ff
	rst  $38                                         ; $586e: $ff
	dec  c                                           ; $586f: $0d
	rst  $38                                         ; $5870: $ff
	rst  $38                                         ; $5871: $ff
	and  c                                           ; $5872: $a1
	ld   sp, hl                                      ; $5873: $f9
	db   $10                                         ; $5874: $10
	ld   a, b                                        ; $5875: $78
	and  c                                           ; $5876: $a1
	ld   [hl], l                                     ; $5877: $75
	ld   l, e                                        ; $5878: $6b
	and  c                                           ; $5879: $a1
	ld   a, b                                        ; $587a: $78
	sub  b                                           ; $587b: $90
	ld   a, h                                        ; $587c: $7c
	dec  c                                           ; $587d: $0d
	nop                                              ; $587e: $00
	dec  b                                           ; $587f: $05
	ld   b, b                                        ; $5880: $40
	rst  $38                                         ; $5881: $ff
	inc  bc                                          ; $5882: $03
	rst  $38                                         ; $5883: $ff
	ld   bc, $2801                                   ; $5884: $01 $01 $28
	nop                                              ; $5887: $00
	ld   bc, $8459                                   ; $5888: $01 $59 $84
	sbc  c                                           ; $588b: $99
	and  c                                           ; $588c: $a1
	ld   l, [hl]                                     ; $588d: $6e
	ld   sp, hl                                      ; $588e: $f9
	dec  c                                           ; $588f: $0d
	nop                                              ; $5890: $00
	ld   a, [bc]                                     ; $5891: $0a
	ld   b, $27                                      ; $5892: $06 $27
	ld   [bc], a                                     ; $5894: $02
	rrca                                             ; $5895: $0f
	nop                                              ; $5896: $00
	ld   bc, $6b01                                   ; $5897: $01 $01 $6b
	ld   h, l                                        ; $589a: $65
	ld   [hl], h                                     ; $589b: $74
	sbc  [hl]                                        ; $589c: $9e
	cp   e                                           ; $589d: $bb
	db   $dd                                         ; $589e: $dd
	push af                                          ; $589f: $f5
	and  b                                           ; $58a0: $a0
	ld   a, d                                        ; $58a1: $7a
	ld   e, [hl]                                     ; $58a2: $5e
	sbc  a                                           ; $58a3: $9f
	dec  c                                           ; $58a4: $0d
	rst  $38                                         ; $58a5: $ff
	rst  $38                                         ; $58a6: $ff
	rst  $38                                         ; $58a7: $ff
	rst  $38                                         ; $58a8: $ff
	and  c                                           ; $58a9: $a1
	ld   sp, hl                                      ; $58aa: $f9
	dec  c                                           ; $58ab: $0d
	nop                                              ; $58ac: $00
	dec  b                                           ; $58ad: $05
	ld   b, b                                        ; $58ae: $40
	rst  $38                                         ; $58af: $ff
	inc  bc                                          ; $58b0: $03
	rst  $38                                         ; $58b1: $ff
	ld   bc, $2801                                   ; $58b2: $01 $01 $28
	nop                                              ; $58b5: $00
	ld   bc, $527a                                   ; $58b6: $01 $7a $52
	ld   h, [hl]                                     ; $58b9: $66
	sub  c                                           ; $58ba: $91
	pop  bc                                          ; $58bb: $c1
	db   $e3                                         ; $58bc: $e3
	ld   [hl], l                                     ; $58bd: $75
	ld   h, l                                        ; $58be: $65
	sub  l                                           ; $58bf: $95
	ld   sp, hl                                      ; $58c0: $f9
	dec  c                                           ; $58c1: $0d
	nop                                              ; $58c2: $00
	ld   a, [bc]                                     ; $58c3: $0a
	ld   b, $27                                      ; $58c4: $06 $27
	ld   [bc], a                                     ; $58c6: $02
	rrca                                             ; $58c7: $0f
	nop                                              ; $58c8: $00
	ld   bc, $6b01                                   ; $58c9: $01 $01 $6b
	ld   h, l                                        ; $58cc: $65
	ld   [hl], h                                     ; $58cd: $74
	rst  $38                                         ; $58ce: $ff
	rst  $38                                         ; $58cf: $ff
	dec  c                                           ; $58d0: $0d
	ld   [hl], a                                     ; $58d1: $77
	ld   d, h                                        ; $58d2: $54
	ld   h, l                                        ; $58d3: $65
	sub  [hl]                                        ; $58d4: $96
	ld   d, h                                        ; $58d5: $54
	ld   e, c                                        ; $58d6: $59
	rst  $38                                         ; $58d7: $ff
	rst  $38                                         ; $58d8: $ff
	rst  $38                                         ; $58d9: $ff
	rst  $38                                         ; $58da: $ff
	dec  c                                           ; $58db: $0d
	nop                                              ; $58dc: $00
	ld   a, [bc]                                     ; $58dd: $0a
	dec  b                                           ; $58de: $05
	ld   b, b                                        ; $58df: $40
	rst  $38                                         ; $58e0: $ff
	inc  bc                                          ; $58e1: $03
	rst  $38                                         ; $58e2: $ff
	ld   bc, $2801                                   ; $58e3: $01 $01 $28
	nop                                              ; $58e6: $00
	ld   b, $27                                      ; $58e7: $06 $27
	ld   [bc], a                                     ; $58e9: $02
	add  hl, de                                      ; $58ea: $19
	inc  b                                           ; $58eb: $04
	inc  bc                                          ; $58ec: $03
	jp   c, $c9ba                                    ; $58ed: $da $ba $c9

	and  b                                           ; $58f0: $a0
	inc  b                                           ; $58f1: $04
	rlca                                             ; $58f2: $07
	sbc  c                                           ; $58f3: $99
	nop                                              ; $58f4: $00
	nop                                              ; $58f5: $00
	jp   c, $c9ed                                    ; $58f6: $da $ed $c9

	and  b                                           ; $58f9: $a0
	sub  h                                           ; $58fa: $94
	sbc  c                                           ; $58fb: $99
	adc  a                                           ; $58fc: $8f
	sbc  c                                           ; $58fd: $99
	nop                                              ; $58fe: $00
	ld   bc, $bada                                   ; $58ff: $01 $da $ba
	ret                                              ; $5902: $c9


	and  b                                           ; $5903: $a0
	ld   l, l                                        ; $5904: $6d
	ld   l, l                                        ; $5905: $6d
	adc  [hl]                                        ; $5906: $8e
	nop                                              ; $5907: $00
	ld   [bc], a                                     ; $5908: $02
	rlca                                             ; $5909: $07
	ld   b, a                                        ; $590a: $47
	inc  bc                                          ; $590b: $03
	ld   [bc], a                                     ; $590c: $02
	inc  bc                                          ; $590d: $03
	ld   bc, $2000                                   ; $590e: $01 $00 $20
	nop                                              ; $5911: $00
	rlca                                             ; $5912: $07
	ld   h, h                                        ; $5913: $64
	inc  bc                                          ; $5914: $03
	ld   [bc], a                                     ; $5915: $02
	inc  bc                                          ; $5916: $03
	ld   bc, $2001                                   ; $5917: $01 $01 $20
	nop                                              ; $591a: $00
	rlca                                             ; $591b: $07
	and  d                                           ; $591c: $a2
	inc  bc                                          ; $591d: $03
	ld   [bc], a                                     ; $591e: $02
	inc  bc                                          ; $591f: $03
	ld   bc, $2002                                   ; $5920: $01 $02 $20
	nop                                              ; $5923: $00
	ld   b, $d8                                      ; $5924: $06 $d8
	inc  bc                                          ; $5926: $03
	rrca                                             ; $5927: $0f
	nop                                              ; $5928: $00
	ld   bc, $da01                                   ; $5929: $01 $01 $da
	cp   d                                           ; $592c: $ba
	ret                                              ; $592d: $c9


	and  b                                           ; $592e: $a0
	inc  b                                           ; $592f: $04
	rlca                                             ; $5930: $07
	ld   [hl], h                                     ; $5931: $74
	halt                                             ; $5932: $76
	rst  $38                                         ; $5933: $ff
	rst  $38                                         ; $5934: $ff
	dec  c                                           ; $5935: $0d
	nop                                              ; $5936: $00
	ld   a, [bc]                                     ; $5937: $0a
	dec  b                                           ; $5938: $05
	ld   b, b                                        ; $5939: $40
	rst  $38                                         ; $593a: $ff
	inc  bc                                          ; $593b: $03
	rst  $38                                         ; $593c: $ff
	ld   bc, $2801                                   ; $593d: $01 $01 $28
	nop                                              ; $5940: $00
	ld   b, $f7                                      ; $5941: $06 $f7
	inc  bc                                          ; $5943: $03
	rrca                                             ; $5944: $0f
	nop                                              ; $5945: $00
	ld   bc, $da01                                   ; $5946: $01 $01 $da
	db   $ed                                         ; $5949: $ed
	ret                                              ; $594a: $c9


	and  b                                           ; $594b: $a0
	sub  h                                           ; $594c: $94
	sbc  c                                           ; $594d: $99
	adc  a                                           ; $594e: $8f
	ld   [hl], h                                     ; $594f: $74
	halt                                             ; $5950: $76
	rst  $38                                         ; $5951: $ff
	rst  $38                                         ; $5952: $ff
	dec  c                                           ; $5953: $0d
	and  c                                           ; $5954: $a1
	ld   sp, hl                                      ; $5955: $f9
	db   $10                                         ; $5956: $10
	cp   e                                           ; $5957: $bb
	db   $dd                                         ; $5958: $dd
	push af                                          ; $5959: $f5
	and  b                                           ; $595a: $a0
	ld   a, d                                        ; $595b: $7a
	ld   d, d                                        ; $595c: $52
	ld   h, [hl]                                     ; $595d: $66
	sub  c                                           ; $595e: $91
	pop  bc                                          ; $595f: $c1
	db   $e3                                         ; $5960: $e3
	dec  c                                           ; $5961: $0d
	nop                                              ; $5962: $00
	dec  b                                           ; $5963: $05
	ld   b, b                                        ; $5964: $40
	rst  $38                                         ; $5965: $ff
	inc  bc                                          ; $5966: $03
	rst  $38                                         ; $5967: $ff
	ld   bc, $2801                                   ; $5968: $01 $01 $28
	nop                                              ; $596b: $00
	ld   bc, $6575                                   ; $596c: $01 $75 $65
	sub  l                                           ; $596f: $95
	sbc  a                                           ; $5970: $9f
	inc  bc                                          ; $5971: $03
	ld   h, l                                        ; $5972: $65
	inc  b                                           ; $5973: $04
	rlca                                             ; $5974: $07
	and  b                                           ; $5975: $a0
	inc  b                                           ; $5976: $04
	rlca                                             ; $5977: $07
	ld   a, b                                        ; $5978: $78
	ld   d, d                                        ; $5979: $52
	halt                                             ; $597a: $76
	sbc  a                                           ; $597b: $9f
	dec  c                                           ; $597c: $0d
	nop                                              ; $597d: $00
	ld   a, [bc]                                     ; $597e: $0a
	ld   b, $0a                                      ; $597f: $06 $0a
	inc  bc                                          ; $5981: $03
	rrca                                             ; $5982: $0f
	nop                                              ; $5983: $00
	ld   bc, $da01                                   ; $5984: $01 $01 $da
	cp   d                                           ; $5987: $ba
	ret                                              ; $5988: $c9


	and  b                                           ; $5989: $a0
	ld   l, l                                        ; $598a: $6d
	ld   l, l                                        ; $598b: $6d
	and  c                                           ; $598c: $a1
	ld   [hl], l                                     ; $598d: $75
	halt                                             ; $598e: $76
	rst  $38                                         ; $598f: $ff
	rst  $38                                         ; $5990: $ff
	dec  c                                           ; $5991: $0d
	and  c                                           ; $5992: $a1
	ld   sp, hl                                      ; $5993: $f9
	db   $10                                         ; $5994: $10
	ld   l, l                                        ; $5995: $6d
	ld   l, l                                        ; $5996: $6d
	and  c                                           ; $5997: $a1
	ld   h, [hl]                                     ; $5998: $66
	sub  c                                           ; $5999: $91
	pop  bc                                          ; $599a: $c1
	db   $e3                                         ; $599b: $e3
	ld   [hl], l                                     ; $599c: $75
	ld   h, l                                        ; $599d: $65
	sub  l                                           ; $599e: $95
	sbc  a                                           ; $599f: $9f
	dec  c                                           ; $59a0: $0d
	nop                                              ; $59a1: $00
	dec  b                                           ; $59a2: $05
	ld   b, b                                        ; $59a3: $40
	rst  $38                                         ; $59a4: $ff
	inc  bc                                          ; $59a5: $03
	rst  $38                                         ; $59a6: $ff
	ld   bc, $2801                                   ; $59a7: $01 $01 $28
	nop                                              ; $59aa: $00
	ld   bc, $0704                                   ; $59ab: $01 $04 $07
	ld   a, b                                        ; $59ae: $78
	ld   e, e                                        ; $59af: $5b
	sub  c                                           ; $59b0: $91
	sbc  a                                           ; $59b1: $9f
	dec  c                                           ; $59b2: $0d
	nop                                              ; $59b3: $00
	ld   a, [bc]                                     ; $59b4: $0a
	ld   b, $0a                                      ; $59b5: $06 $0a
	inc  bc                                          ; $59b7: $03
	rrca                                             ; $59b8: $0f
	nop                                              ; $59b9: $00
	ld   bc, $ff01                                   ; $59ba: $01 $01 $ff
	rst  $38                                         ; $59bd: $ff
	ld   [hl], a                                     ; $59be: $77
	ld   d, h                                        ; $59bf: $54
	ld   h, l                                        ; $59c0: $65
	sub  [hl]                                        ; $59c1: $96
	ld   d, h                                        ; $59c2: $54
	ld   e, c                                        ; $59c3: $59
	rst  $38                                         ; $59c4: $ff
	rst  $38                                         ; $59c5: $ff
	rst  $38                                         ; $59c6: $ff
	rst  $38                                         ; $59c7: $ff
	dec  c                                           ; $59c8: $0d
	nop                                              ; $59c9: $00
	ld   a, [bc]                                     ; $59ca: $0a
	dec  b                                           ; $59cb: $05
	ld   b, b                                        ; $59cc: $40
	rst  $38                                         ; $59cd: $ff
	inc  bc                                          ; $59ce: $03
	rst  $38                                         ; $59cf: $ff
	ld   bc, $2801                                   ; $59d0: $01 $01 $28
	nop                                              ; $59d3: $00
	ld   b, $0a                                      ; $59d4: $06 $0a
	inc  bc                                          ; $59d6: $03
	add  hl, de                                      ; $59d7: $19
	inc  b                                           ; $59d8: $04
	inc  bc                                          ; $59d9: $03
	inc  b                                           ; $59da: $04
	ld   l, d                                        ; $59db: $6a
	and  b                                           ; $59dc: $a0
	halt                                             ; $59dd: $76
	halt                                             ; $59de: $76
	ld   a, h                                        ; $59df: $7c
	ld   d, [hl]                                     ; $59e0: $56
	sbc  c                                           ; $59e1: $99
	nop                                              ; $59e2: $00
	nop                                              ; $59e3: $00
	inc  b                                           ; $59e4: $04
	adc  a                                           ; $59e5: $8f
	and  b                                           ; $59e6: $a0
	halt                                             ; $59e7: $76
	halt                                             ; $59e8: $76
	ld   a, h                                        ; $59e9: $7c
	ld   d, [hl]                                     ; $59ea: $56
	sbc  c                                           ; $59eb: $99
	nop                                              ; $59ec: $00
	ld   bc, $7877                                   ; $59ed: $01 $77 $78
	ld   l, l                                        ; $59f0: $6d
	halt                                             ; $59f1: $76
	ld   h, c                                        ; $59f2: $61
	ld   h, c                                        ; $59f3: $61
	sbc  e                                           ; $59f4: $9b
	ld   d, [hl]                                     ; $59f5: $56
	sbc  c                                           ; $59f6: $99
	nop                                              ; $59f7: $00
	ld   [bc], a                                     ; $59f8: $02
	rlca                                             ; $59f9: $07
	scf                                              ; $59fa: $37
	inc  b                                           ; $59fb: $04
	ld   [bc], a                                     ; $59fc: $02
	inc  bc                                          ; $59fd: $03
	ld   bc, $2000                                   ; $59fe: $01 $00 $20
	nop                                              ; $5a01: $00
	rlca                                             ; $5a02: $07
	ld   l, d                                        ; $5a03: $6a
	inc  b                                           ; $5a04: $04
	ld   [bc], a                                     ; $5a05: $02
	inc  bc                                          ; $5a06: $03
	ld   bc, $2001                                   ; $5a07: $01 $01 $20
	nop                                              ; $5a0a: $00
	rlca                                             ; $5a0b: $07
	or   b                                           ; $5a0c: $b0
	inc  b                                           ; $5a0d: $04
	ld   [bc], a                                     ; $5a0e: $02
	inc  bc                                          ; $5a0f: $03
	ld   bc, $2002                                   ; $5a10: $01 $02 $20
	nop                                              ; $5a13: $00
	ld   b, $0d                                      ; $5a14: $06 $0d
	dec  b                                           ; $5a16: $05
	rrca                                             ; $5a17: $0f
	nop                                              ; $5a18: $00
	ld   bc, $0301                                   ; $5a19: $01 $01 $03
	dec  c                                           ; $5a1c: $0d
	inc  bc                                          ; $5a1d: $03
	ld   h, l                                        ; $5a1e: $65
	ld   h, b                                        ; $5a1f: $60
	ld   a, c                                        ; $5a20: $79
	sbc  [hl]                                        ; $5a21: $9e
	inc  b                                           ; $5a22: $04
	ld   l, d                                        ; $5a23: $6a
	and  b                                           ; $5a24: $a0
	halt                                             ; $5a25: $76
	halt                                             ; $5a26: $76
	ld   a, h                                        ; $5a27: $7c
	ld   d, [hl]                                     ; $5a28: $56
	sbc  c                                           ; $5a29: $99
	halt                                             ; $5a2a: $76
	dec  c                                           ; $5a2b: $0d
	rst  $38                                         ; $5a2c: $ff
	rst  $38                                         ; $5a2d: $ff
	rst  $38                                         ; $5a2e: $ff
	rst  $38                                         ; $5a2f: $ff
	dec  c                                           ; $5a30: $0d
	nop                                              ; $5a31: $00
	dec  b                                           ; $5a32: $05
	ld   b, b                                        ; $5a33: $40
	rst  $38                                         ; $5a34: $ff
	inc  bc                                          ; $5a35: $03
	rst  $38                                         ; $5a36: $ff
	ld   bc, $2801                                   ; $5a37: $01 $01 $28
	nop                                              ; $5a3a: $00
	ld   bc, $6596                                   ; $5a3b: $01 $96 $65
	ld   a, [$2910]                                  ; $5a3e: $fa $10 $29
	dec  h                                           ; $5a41: $25
	ld   l, [hl]                                     ; $5a42: $6e
	ld   a, [$000d]                                  ; $5a43: $fa $0d $00
	ld   a, [bc]                                     ; $5a46: $0a
	ld   b, $35                                      ; $5a47: $06 $35
	dec  b                                           ; $5a49: $05
	rrca                                             ; $5a4a: $0f
	nop                                              ; $5a4b: $00
	ld   bc, $0301                                   ; $5a4c: $01 $01 $03
	dec  c                                           ; $5a4f: $0d
	inc  bc                                          ; $5a50: $03
	ld   h, l                                        ; $5a51: $65
	ld   h, b                                        ; $5a52: $60
	ld   a, c                                        ; $5a53: $79
	sbc  [hl]                                        ; $5a54: $9e
	inc  b                                           ; $5a55: $04
	adc  a                                           ; $5a56: $8f
	and  b                                           ; $5a57: $a0
	halt                                             ; $5a58: $76
	halt                                             ; $5a59: $76
	ld   a, h                                        ; $5a5a: $7c
	ld   d, [hl]                                     ; $5a5b: $56
	sbc  c                                           ; $5a5c: $99
	rst  $38                                         ; $5a5d: $ff
	rst  $38                                         ; $5a5e: $ff
	dec  c                                           ; $5a5f: $0d
	rst  $38                                         ; $5a60: $ff
	rst  $38                                         ; $5a61: $ff
	rst  $38                                         ; $5a62: $ff
	rst  $38                                         ; $5a63: $ff
	and  c                                           ; $5a64: $a1
	ld   sp, hl                                      ; $5a65: $f9
	db   $10                                         ; $5a66: $10
	inc  b                                           ; $5a67: $04
	adc  a                                           ; $5a68: $8f
	ld   a, h                                        ; $5a69: $7c
	inc  bc                                          ; $5a6a: $03
	ld   a, h                                        ; $5a6b: $7c
	dec  b                                           ; $5a6c: $05
	ld   de, $a178                                   ; $5a6d: $11 $78 $a1
	ld   e, c                                        ; $5a70: $59
	dec  c                                           ; $5a71: $0d
	nop                                              ; $5a72: $00
	dec  b                                           ; $5a73: $05
	ld   b, b                                        ; $5a74: $40
	rst  $38                                         ; $5a75: $ff
	inc  bc                                          ; $5a76: $03
	rst  $38                                         ; $5a77: $ff
	ld   bc, $2801                                   ; $5a78: $01 $01 $28
	nop                                              ; $5a7b: $00
	ld   bc, $7465                                   ; $5a7c: $01 $65 $74
	sbc  c                                           ; $5a7f: $99
	inc  b                                           ; $5a80: $04
	ld   a, d                                        ; $5a81: $7a
	ld   [bc], a                                     ; $5a82: $02
	ld   a, e                                        ; $5a83: $7b
	ld   h, [hl]                                     ; $5a84: $66
	sub  c                                           ; $5a85: $91
	ld   a, b                                        ; $5a86: $78
	ld   d, d                                        ; $5a87: $52
	sub  [hl]                                        ; $5a88: $96
	sbc  a                                           ; $5a89: $9f
	dec  c                                           ; $5a8a: $0d
	nop                                              ; $5a8b: $00
	ld   a, [bc]                                     ; $5a8c: $0a
	ld   b, $f7                                      ; $5a8d: $06 $f7
	inc  bc                                          ; $5a8f: $03
	rrca                                             ; $5a90: $0f
	nop                                              ; $5a91: $00
	ld   bc, $0301                                   ; $5a92: $01 $01 $03
	dec  c                                           ; $5a95: $0d
	inc  bc                                          ; $5a96: $03
	ld   h, l                                        ; $5a97: $65
	ld   h, b                                        ; $5a98: $60
	ld   a, c                                        ; $5a99: $79
	rst  $38                                         ; $5a9a: $ff
	rst  $38                                         ; $5a9b: $ff
	dec  c                                           ; $5a9c: $0d
	ld   h, c                                        ; $5a9d: $61
	ld   l, a                                        ; $5a9e: $6f
	sub  a                                           ; $5a9f: $97
	ld   a, c                                        ; $5aa0: $79
	ld   e, b                                        ; $5aa1: $58
	sbc  l                                           ; $5aa2: $9d
	ld   h, a                                        ; $5aa3: $67
	ld   e, b                                        ; $5aa4: $58
	inc  b                                           ; $5aa5: $04
	ld   a, b                                        ; $5aa6: $78
	and  b                                           ; $5aa7: $a0
	sbc  [hl]                                        ; $5aa8: $9e
	dec  c                                           ; $5aa9: $0d
	ld   [hl], a                                     ; $5aaa: $77
	ld   a, b                                        ; $5aab: $78
	ld   l, l                                        ; $5aac: $6d
	halt                                             ; $5aad: $76
	inc  bc                                          ; $5aae: $03
	ld   [hl], l                                     ; $5aaf: $75
	ld   b, $02                                      ; $5ab0: $06 $02
	sbc  c                                           ; $5ab2: $99
	ld   a, [$000d]                                  ; $5ab3: $fa $0d $00
	ld   a, [bc]                                     ; $5ab6: $0a
	ld   bc, $fc78                                   ; $5ab7: $01 $78 $fc
	and  c                                           ; $5aba: $a1
	ld   [hl], h                                     ; $5abb: $74
	ld   [bc], a                                     ; $5abc: $02
	sbc  l                                           ; $5abd: $9d
	ld   [hl], c                                     ; $5abe: $71
	ld   [hl], h                                     ; $5abf: $74
	sbc  c                                           ; $5ac0: $99
	inc  b                                           ; $5ac1: $04
	ld   a, d                                        ; $5ac2: $7a
	ld   [bc], a                                     ; $5ac3: $02
	ld   a, e                                        ; $5ac4: $7b
	ld   h, [hl]                                     ; $5ac5: $66
	sub  c                                           ; $5ac6: $91
	dec  c                                           ; $5ac7: $0d
	ld   a, b                                        ; $5ac8: $78
	ld   d, d                                        ; $5ac9: $52
	and  c                                           ; $5aca: $a1
	ld   l, [hl]                                     ; $5acb: $6e
	sub  [hl]                                        ; $5acc: $96
	ld   a, b                                        ; $5acd: $78
	sbc  a                                           ; $5ace: $9f
	dec  c                                           ; $5acf: $0d
	nop                                              ; $5ad0: $00
	dec  b                                           ; $5ad1: $05
	ld   b, b                                        ; $5ad2: $40
	rst  $38                                         ; $5ad3: $ff
	inc  bc                                          ; $5ad4: $03
	rst  $38                                         ; $5ad5: $ff
	ld   bc, $2801                                   ; $5ad6: $01 $01 $28
	nop                                              ; $5ad9: $00
	ld   bc, $2805                                   ; $5ada: $01 $05 $28
	ld   e, d                                        ; $5add: $5a
	ld   a, b                                        ; $5ade: $78
	ld   e, e                                        ; $5adf: $5b
	sub  c                                           ; $5ae0: $91
	ld   e, b                                        ; $5ae1: $58
	ld   e, l                                        ; $5ae2: $5d
	sbc  d                                           ; $5ae3: $9a
	sbc  c                                           ; $5ae4: $99
	ld   l, h                                        ; $5ae5: $6c
	sbc  a                                           ; $5ae6: $9f
	dec  c                                           ; $5ae7: $0d
	nop                                              ; $5ae8: $00
	ld   a, [bc]                                     ; $5ae9: $0a
	ld   b, $f7                                      ; $5aea: $06 $f7
	inc  bc                                          ; $5aec: $03
	rrca                                             ; $5aed: $0f
	nop                                              ; $5aee: $00
	ld   bc, $0301                                   ; $5aef: $01 $01 $03
	dec  c                                           ; $5af2: $0d
	inc  bc                                          ; $5af3: $03
	ld   h, l                                        ; $5af4: $65

Jump_055_5af5:
	ld   h, b                                        ; $5af5: $60
	ld   a, c                                        ; $5af6: $79
	rst  $38                                         ; $5af7: $ff
	rst  $38                                         ; $5af8: $ff
	dec  c                                           ; $5af9: $0d
	rst  $38                                         ; $5afa: $ff
	rst  $38                                         ; $5afb: $ff
	rst  $38                                         ; $5afc: $ff
	rst  $38                                         ; $5afd: $ff
	ld   [hl], a                                     ; $5afe: $77
	ld   d, h                                        ; $5aff: $54
	ld   h, l                                        ; $5b00: $65
	sub  [hl]                                        ; $5b01: $96
	ld   d, h                                        ; $5b02: $54
	ld   e, c                                        ; $5b03: $59
	rst  $38                                         ; $5b04: $ff
	rst  $38                                         ; $5b05: $ff
	dec  c                                           ; $5b06: $0d
	nop                                              ; $5b07: $00
	ld   a, [bc]                                     ; $5b08: $0a
	dec  b                                           ; $5b09: $05
	ld   b, b                                        ; $5b0a: $40
	rst  $38                                         ; $5b0b: $ff
	inc  bc                                          ; $5b0c: $03
	rst  $38                                         ; $5b0d: $ff
	ld   bc, $2801                                   ; $5b0e: $01 $01 $28
	nop                                              ; $5b11: $00
	ld   b, $f7                                      ; $5b12: $06 $f7
	inc  bc                                          ; $5b14: $03
	rlca                                             ; $5b15: $07
	ld   d, b                                        ; $5b16: $50
	dec  b                                           ; $5b17: $05
	inc  bc                                          ; $5b18: $03
	rst  $38                                         ; $5b19: $ff
	ld   bc, $2005                                   ; $5b1a: $01 $05 $20
	nop                                              ; $5b1d: $00
	rlca                                             ; $5b1e: $07
	and  c                                           ; $5b1f: $a1
	dec  b                                           ; $5b20: $05
	inc  bc                                          ; $5b21: $03
	rst  $38                                         ; $5b22: $ff
	ld   bc, $2006                                   ; $5b23: $01 $06 $20
	nop                                              ; $5b26: $00
	rlca                                             ; $5b27: $07
	ld   h, $06                                      ; $5b28: $26 $06
	inc  bc                                          ; $5b2a: $03
	rst  $38                                         ; $5b2b: $ff
	ld   bc, $2507                                   ; $5b2c: $01 $07 $25
	nop                                              ; $5b2f: $00
	inc  hl                                          ; $5b30: $23
	inc  b                                           ; $5b31: $04
	rrca                                             ; $5b32: $0f
	nop                                              ; $5b33: $00
	ld   bc, $030d                                   ; $5b34: $01 $0d $03
	inc  bc                                          ; $5b37: $03
	ld   bc, $ecdf                                   ; $5b38: $01 $df $ec
	and  e                                           ; $5b3b: $a3
	ld   h, e                                        ; $5b3c: $63
	and  c                                           ; $5b3d: $a1
	sbc  a                                           ; $5b3e: $9f
	dec  c                                           ; $5b3f: $0d
	ld   e, b                                        ; $5b40: $58
	ld   a, l                                        ; $5b41: $7d
	sub  [hl]                                        ; $5b42: $96
	ld   d, h                                        ; $5b43: $54
	ld   h, d                                        ; $5b44: $62
	ld   h, h                                        ; $5b45: $64
	ld   d, d                                        ; $5b46: $52
	adc  h                                           ; $5b47: $8c
	ld   h, a                                        ; $5b48: $67
	sbc  a                                           ; $5b49: $9f
	dec  c                                           ; $5b4a: $0d
	nop                                              ; $5b4b: $00
	ld   a, [bc]                                     ; $5b4c: $0a
	inc  e                                           ; $5b4d: $1c
	inc  bc                                          ; $5b4e: $03
	inc  bc                                          ; $5b4f: $03
	inc  bc                                          ; $5b50: $03
	dec  e                                           ; $5b51: $1d
	ld   b, b                                        ; $5b52: $40
	inc  de                                          ; $5b53: $13
	inc  bc                                          ; $5b54: $03
	inc  de                                          ; $5b55: $13
	ld   bc, $2802                                   ; $5b56: $01 $02 $28
	nop                                              ; $5b59: $00
	ld   bc, $7d58                                   ; $5b5a: $01 $58 $7d
	sub  [hl]                                        ; $5b5d: $96
	ld   d, h                                        ; $5b5e: $54
	sbc  a                                           ; $5b5f: $9f
	dec  c                                           ; $5b60: $0d
	ld   [$5d00], sp                                 ; $5b61: $08 $00 $5d
	and  c                                           ; $5b64: $a1
	sbc  a                                           ; $5b65: $9f
	dec  c                                           ; $5b66: $0d
	ld   h, [hl]                                     ; $5b67: $66
	sub  c                                           ; $5b68: $91
	sbc  [hl]                                        ; $5b69: $9e
	ld   [bc], a                                     ; $5b6a: $02
	ld   a, a                                        ; $5b6b: $7f
	ld   e, e                                        ; $5b6c: $5b
	adc  h                                           ; $5b6d: $8c
	ld   h, l                                        ; $5b6e: $65
	sub  l                                           ; $5b6f: $95
	ld   d, h                                        ; $5b70: $54
	ld   e, c                                        ; $5b71: $59
	sbc  a                                           ; $5b72: $9f
	dec  c                                           ; $5b73: $0d
	nop                                              ; $5b74: $00
	ld   a, [bc]                                     ; $5b75: $0a
	dec  c                                           ; $5b76: $0d
	nop                                              ; $5b77: $00
	nop                                              ; $5b78: $00
	rrca                                             ; $5b79: $0f
	nop                                              ; $5b7a: $00
	ld   bc, $020c                                   ; $5b7b: $01 $0c $02
	ld   b, $8b                                      ; $5b7e: $06 $8b
	ld   b, $23                                      ; $5b80: $06 $23
	inc  b                                           ; $5b82: $04
	rrca                                             ; $5b83: $0f
	nop                                              ; $5b84: $00
	ld   bc, $030d                                   ; $5b85: $01 $0d $03
	nop                                              ; $5b88: $00
	ld   bc, $7d58                                   ; $5b89: $01 $58 $7d
	sub  [hl]                                        ; $5b8c: $96
	ld   d, h                                        ; $5b8d: $54
	ld   h, d                                        ; $5b8e: $62
	ld   h, h                                        ; $5b8f: $64
	ld   d, d                                        ; $5b90: $52
	adc  h                                           ; $5b91: $8c
	ld   h, a                                        ; $5b92: $67
	sbc  a                                           ; $5b93: $9f
	dec  c                                           ; $5b94: $0d
	rst  JumpTable                                         ; $5b95: $df
	db   $ec                                         ; $5b96: $ec
	and  e                                           ; $5b97: $a3
	ld   h, e                                        ; $5b98: $63
	and  c                                           ; $5b99: $a1
	sbc  a                                           ; $5b9a: $9f
	dec  c                                           ; $5b9b: $0d
	ld   e, b                                        ; $5b9c: $58
	inc  b                                           ; $5b9d: $04
	rla                                              ; $5b9e: $17
	ld   l, l                                        ; $5b9f: $6d
	ld   l, c                                        ; $5ba0: $69
	ld   h, l                                        ; $5ba1: $65
	ld   [hl], h                                     ; $5ba2: $74
	ld   h, a                                        ; $5ba3: $67
	adc  l                                           ; $5ba4: $8d
	adc  h                                           ; $5ba5: $8c
	ld   l, c                                        ; $5ba6: $69
	and  c                                           ; $5ba7: $a1
	sbc  a                                           ; $5ba8: $9f
	dec  c                                           ; $5ba9: $0d
	nop                                              ; $5baa: $00
	ld   a, [bc]                                     ; $5bab: $0a
	inc  e                                           ; $5bac: $1c
	inc  bc                                          ; $5bad: $03
	inc  bc                                          ; $5bae: $03
	inc  bc                                          ; $5baf: $03
	ld   bc, $7d58                                   ; $5bb0: $01 $58 $7d
	sub  [hl]                                        ; $5bb3: $96
	ld   d, h                                        ; $5bb4: $54
	sbc  a                                           ; $5bb5: $9f
	dec  c                                           ; $5bb6: $0d
	inc  bc                                          ; $5bb7: $03
	ld   l, a                                        ; $5bb8: $6f
	ld   [bc], a                                     ; $5bb9: $02
	xor  c                                           ; $5bba: $a9
	push de                                          ; $5bbb: $d5
	call nz, $ecc0                                   ; $5bbc: $c4 $c0 $ec
	ld   a, e                                        ; $5bbf: $7b
	sbc  a                                           ; $5bc0: $9f
	dec  c                                           ; $5bc1: $0d
	nop                                              ; $5bc2: $00
	ld   a, [bc]                                     ; $5bc3: $0a
	inc  e                                           ; $5bc4: $1c
	inc  bc                                          ; $5bc5: $03
	nop                                              ; $5bc6: $00
	nop                                              ; $5bc7: $00
	ld   bc, $775f                                   ; $5bc8: $01 $5f $77
	sbc  [hl]                                        ; $5bcb: $9e
	sub  b                                           ; $5bcc: $90
	ld   d, h                                        ; $5bcd: $54
	inc  bc                                          ; $5bce: $03
	ld   l, h                                        ; $5bcf: $6c
	ld   h, l                                        ; $5bd0: $65
	inc  b                                           ; $5bd1: $04
	pop  af                                          ; $5bd2: $f1
	ld   b, $28                                      ; $5bd3: $06 $28
	and  b                                           ; $5bd5: $a0
	sub  b                                           ; $5bd6: $90
	ld   [hl], h                                     ; $5bd7: $74
	sbc  c                                           ; $5bd8: $99
	dec  c                                           ; $5bd9: $0d
	sub  [hl]                                        ; $5bda: $96
	ld   d, h                                        ; $5bdb: $54
	sbc  [hl]                                        ; $5bdc: $9e
	ld   [bc], a                                     ; $5bdd: $02
	ld   a, a                                        ; $5bde: $7f
	inc  b                                           ; $5bdf: $04
	dec  de                                          ; $5be0: $1b
	ld   h, l                                        ; $5be1: $65
	ld   l, l                                        ; $5be2: $6d
	inc  b                                           ; $5be3: $04
	ld   a, b                                        ; $5be4: $78
	ld   e, d                                        ; $5be5: $5a
	ld   d, d                                        ; $5be6: $52
	ld   d, d                                        ; $5be7: $52
	sbc  l                                           ; $5be8: $9d
	sub  [hl]                                        ; $5be9: $96
	sbc  a                                           ; $5bea: $9f
	dec  c                                           ; $5beb: $0d
	ld   h, e                                        ; $5bec: $63
	ld   d, b                                        ; $5bed: $50
	sbc  [hl]                                        ; $5bee: $9e
	ld   [bc], a                                     ; $5bef: $02
	ld   a, a                                        ; $5bf0: $7f
	ld   e, e                                        ; $5bf1: $5b
	adc  h                                           ; $5bf2: $8c
	ld   h, l                                        ; $5bf3: $65
	sub  l                                           ; $5bf4: $95
	ld   d, h                                        ; $5bf5: $54
	ld   e, c                                        ; $5bf6: $59
	sbc  a                                           ; $5bf7: $9f
	dec  c                                           ; $5bf8: $0d
	nop                                              ; $5bf9: $00
	ld   a, [bc]                                     ; $5bfa: $0a
	dec  c                                           ; $5bfb: $0d
	nop                                              ; $5bfc: $00
	nop                                              ; $5bfd: $00
	rrca                                             ; $5bfe: $0f
	nop                                              ; $5bff: $00
	ld   bc, $020c                                   ; $5c00: $01 $0c $02
	ld   b, $8b                                      ; $5c03: $06 $8b
	ld   b, $23                                      ; $5c05: $06 $23
	inc  b                                           ; $5c07: $04
	inc  e                                           ; $5c08: $1c
	inc  bc                                          ; $5c09: $03
	ld   [bc], a                                     ; $5c0a: $02
	ld   [bc], a                                     ; $5c0b: $02
	dec  e                                           ; $5c0c: $1d
	ld   b, b                                        ; $5c0d: $40
	inc  de                                          ; $5c0e: $13
	inc  bc                                          ; $5c0f: $03
	inc  de                                          ; $5c10: $13
	ld   bc, $2903                                   ; $5c11: $01 $03 $29
	nop                                              ; $5c14: $00
	ld   bc, $0008                                   ; $5c15: $01 $08 $00
	ld   e, l                                        ; $5c18: $5d
	and  c                                           ; $5c19: $a1
	sbc  [hl]                                        ; $5c1a: $9e
	ld   e, b                                        ; $5c1b: $58
	ld   l, e                                        ; $5c1c: $6b
	ld   d, d                                        ; $5c1d: $52
	sbc  l                                           ; $5c1e: $9d
	sub  [hl]                                        ; $5c1f: $96
	sbc  a                                           ; $5c20: $9f
	dec  c                                           ; $5c21: $0d
	inc  b                                           ; $5c22: $04
	rla                                              ; $5c23: $17
	ld   l, a                                        ; $5c24: $6f
	ld   [bc], a                                     ; $5c25: $02
	ld   a, e                                        ; $5c26: $7b
	sbc  l                                           ; $5c27: $9d
	ld   l, c                                        ; $5c28: $69
	ld   a, h                                        ; $5c29: $7c
	inc  bc                                          ; $5c2a: $03
	ld   l, a                                        ; $5c2b: $6f
	ld   a, l                                        ; $5c2c: $7d
	sbc  [hl]                                        ; $5c2d: $9e
	inc  bc                                          ; $5c2e: $03
	ld   hl, $0d79                                   ; $5c2f: $21 $79 $0d
	ld   d, $04                                      ; $5c32: $16 $04
	sbc  [hl]                                        ; $5c34: $9e
	inc  bc                                          ; $5c35: $03
	ld   c, a                                        ; $5c36: $4f
	ld   a, c                                        ; $5c37: $79
	sbc  [hl]                                        ; $5c38: $9e
	ld   e, d                                        ; $5c39: $5a
	inc  bc                                          ; $5c3a: $03
	ld   hl, $3503                                   ; $5c3b: $21 $03 $35
	sub  [hl]                                        ; $5c3e: $96
	sbc  a                                           ; $5c3f: $9f
	dec  c                                           ; $5c40: $0d
	nop                                              ; $5c41: $00
	ld   a, [bc]                                     ; $5c42: $0a
	inc  e                                           ; $5c43: $1c
	inc  bc                                          ; $5c44: $03
	nop                                              ; $5c45: $00
	nop                                              ; $5c46: $00
	ld   bc, $599d                                   ; $5c47: $01 $9d $59
	sbc  b                                           ; $5c4a: $98
	adc  h                                           ; $5c4b: $8c
	ld   h, l                                        ; $5c4c: $65
	ld   l, l                                        ; $5c4d: $6d
	ld   e, c                                        ; $5c4e: $59
	ld   sp, hl                                      ; $5c4f: $f9
	dec  c                                           ; $5c50: $0d
	ld   [hl], l                                     ; $5c51: $75
	ld   a, l                                        ; $5c52: $7d
	sbc  [hl]                                        ; $5c53: $9e
	ld   [bc], a                                     ; $5c54: $02
	ld   a, a                                        ; $5c55: $7f
	ld   e, e                                        ; $5c56: $5b
	adc  h                                           ; $5c57: $8c
	ld   h, l                                        ; $5c58: $65
	sub  l                                           ; $5c59: $95
	ld   d, h                                        ; $5c5a: $54
	ld   e, c                                        ; $5c5b: $59
	sbc  a                                           ; $5c5c: $9f
	dec  c                                           ; $5c5d: $0d
	nop                                              ; $5c5e: $00
	ld   a, [bc]                                     ; $5c5f: $0a
	dec  c                                           ; $5c60: $0d
	nop                                              ; $5c61: $00
	nop                                              ; $5c62: $00
	rrca                                             ; $5c63: $0f
	nop                                              ; $5c64: $00
	ld   bc, $020c                                   ; $5c65: $01 $0c $02
	ld   b, $8b                                      ; $5c68: $06 $8b
	ld   b, $0e                                      ; $5c6a: $06 $0e
	sub  [hl]                                        ; $5c6c: $96
	rrca                                             ; $5c6d: $0f
	inc  bc                                          ; $5c6e: $03
	inc  bc                                          ; $5c6f: $03
	ld   bc, $7c61                                   ; $5c70: $01 $61 $7c
	ld   e, b                                        ; $5c73: $58
	inc  bc                                          ; $5c74: $03
	rst  $20                                         ; $5c75: $e7
	sub  [hl]                                        ; $5c76: $96
	sbc  a                                           ; $5c77: $9f
	dec  c                                           ; $5c78: $0d
	nop                                              ; $5c79: $00
	ld   a, [bc]                                     ; $5c7a: $0a
	dec  c                                           ; $5c7b: $0d
	inc  bc                                          ; $5c7c: $03
	inc  bc                                          ; $5c7d: $03
	ld   bc, $9e63                                   ; $5c7e: $01 $63 $9e
	inc  b                                           ; $5c81: $04
	ld   b, l                                        ; $5c82: $45
	sbc  b                                           ; $5c83: $98
	adc  h                                           ; $5c84: $8c
	ld   h, l                                        ; $5c85: $65
	sub  l                                           ; $5c86: $95
	ld   d, h                                        ; $5c87: $54
	sbc  a                                           ; $5c88: $9f
	dec  c                                           ; $5c89: $0d
	nop                                              ; $5c8a: $00
	ld   a, [bc]                                     ; $5c8b: $0a
	dec  c                                           ; $5c8c: $0d
	nop                                              ; $5c8d: $00
	nop                                              ; $5c8e: $00
	rrca                                             ; $5c8f: $0f
	nop                                              ; $5c90: $00
	ld   bc, $5009                                   ; $5c91: $01 $09 $50
	ld   c, $97                                      ; $5c94: $0e $97
	inc  e                                           ; $5c96: $1c
	inc  bc                                          ; $5c97: $03
	inc  bc                                          ; $5c98: $03
	inc  bc                                          ; $5c99: $03
	ld   bc, $5252                                   ; $5c9a: $01 $52 $52
	ld   e, c                                        ; $5c9d: $59
	ld   e, b                                        ; $5c9e: $58
	sbc  b                                           ; $5c9f: $98
	ld   a, e                                        ; $5ca0: $7b
	rst  $38                                         ; $5ca1: $ff
	rst  $38                                         ; $5ca2: $ff
	dec  c                                           ; $5ca3: $0d
	nop                                              ; $5ca4: $00
	ld   a, [bc]                                     ; $5ca5: $0a
	ld   bc, $0008                                   ; $5ca6: $01 $08 $00
	ld   e, l                                        ; $5ca9: $5d
	and  c                                           ; $5caa: $a1
	ld   a, l                                        ; $5cab: $7d
	dec  c                                           ; $5cac: $0d
	ld   e, b                                        ; $5cad: $58
	ld   h, e                                        ; $5cae: $63
	halt                                             ; $5caf: $76
	ld   d, h                                        ; $5cb0: $54
	sbc  [hl]                                        ; $5cb1: $9e
	ld   d, d                                        ; $5cb2: $52
	ld   e, l                                        ; $5cb3: $5d
	ld   [hl], d                                     ; $5cb4: $72
	ld   sp, hl                                      ; $5cb5: $f9
	dec  c                                           ; $5cb6: $0d
	nop                                              ; $5cb7: $00
	ld   a, [bc]                                     ; $5cb8: $0a
	add  hl, de                                      ; $5cb9: $19
	dec  b                                           ; $5cba: $05
	inc  bc                                          ; $5cbb: $03
	ld   [de], a                                     ; $5cbc: $12
	ld   [hl], d                                     ; $5cbd: $72
	nop                                              ; $5cbe: $00
	nop                                              ; $5cbf: $00
	inc  d                                           ; $5cc0: $14
	ld   [hl], d                                     ; $5cc1: $72
	nop                                              ; $5cc2: $00
	ld   bc, $1112                                   ; $5cc3: $01 $12 $11
	ld   h, c                                        ; $5cc6: $61
	nop                                              ; $5cc7: $00
	ld   [bc], a                                     ; $5cc8: $02
	rlca                                             ; $5cc9: $07
	rlca                                             ; $5cca: $07
	rlca                                             ; $5ccb: $07
	ld   [bc], a                                     ; $5ccc: $02
	inc  bc                                          ; $5ccd: $03
	ld   bc, $2000                                   ; $5cce: $01 $00 $20
	nop                                              ; $5cd1: $00
	rlca                                             ; $5cd2: $07
	jr   nc, jr_055_5cdc                             ; $5cd3: $30 $07

	ld   [bc], a                                     ; $5cd5: $02
	inc  bc                                          ; $5cd6: $03
	ld   bc, $2001                                   ; $5cd7: $01 $01 $20
	nop                                              ; $5cda: $00
	rlca                                             ; $5cdb: $07

jr_055_5cdc:
	ld   h, b                                        ; $5cdc: $60
	rlca                                             ; $5cdd: $07
	ld   [bc], a                                     ; $5cde: $02
	inc  bc                                          ; $5cdf: $03
	ld   bc, $2002                                   ; $5ce0: $01 $02 $20
	nop                                              ; $5ce3: $00
	ld   b, $8c                                      ; $5ce4: $06 $8c
	rlca                                             ; $5ce6: $07
	rrca                                             ; $5ce7: $0f
	nop                                              ; $5ce8: $00
	ld   bc, $6601                                   ; $5ce9: $01 $01 $66
	sub  c                                           ; $5cec: $91
	sbc  [hl]                                        ; $5ced: $9e
	ld   [de], a                                     ; $5cee: $12
	ld   [hl], d                                     ; $5cef: $72
	rst  $38                                         ; $5cf0: $ff
	rst  $38                                         ; $5cf1: $ff
	dec  c                                           ; $5cf2: $0d
	nop                                              ; $5cf3: $00
	ld   a, [bc]                                     ; $5cf4: $0a
	inc  e                                           ; $5cf5: $1c
	inc  bc                                          ; $5cf6: $03
	inc  bc                                          ; $5cf7: $03
	inc  bc                                          ; $5cf8: $03
	dec  e                                           ; $5cf9: $1d
	ld   b, b                                        ; $5cfa: $40
	inc  de                                          ; $5cfb: $13
	inc  bc                                          ; $5cfc: $03
	inc  de                                          ; $5cfd: $13
	ld   bc, $2802                                   ; $5cfe: $01 $02 $28
	nop                                              ; $5d01: $00
	ld   bc, $527d                                   ; $5d02: $01 $7d $52
	sbc  [hl]                                        ; $5d05: $9e
	ld   [hl], a                                     ; $5d06: $77
	ld   d, h                                        ; $5d07: $54
	ld   l, h                                        ; $5d08: $6c
	sbc  a                                           ; $5d09: $9f
	dec  c                                           ; $5d0a: $0d
	nop                                              ; $5d0b: $00
	ld   a, [bc]                                     ; $5d0c: $0a
	ld   b, $b3                                      ; $5d0d: $06 $b3
	rlca                                             ; $5d0f: $07
	rrca                                             ; $5d10: $0f
	nop                                              ; $5d11: $00
	ld   bc, $6601                                   ; $5d12: $01 $01 $66
	sub  c                                           ; $5d15: $91
	sbc  [hl]                                        ; $5d16: $9e
	inc  d                                           ; $5d17: $14
	ld   [hl], d                                     ; $5d18: $72
	rst  $38                                         ; $5d19: $ff
	rst  $38                                         ; $5d1a: $ff
	dec  c                                           ; $5d1b: $0d
	nop                                              ; $5d1c: $00
	ld   a, [bc]                                     ; $5d1d: $0a
	inc  e                                           ; $5d1e: $1c
	inc  bc                                          ; $5d1f: $03
	inc  bc                                          ; $5d20: $03
	inc  bc                                          ; $5d21: $03
	dec  e                                           ; $5d22: $1d
	ld   b, b                                        ; $5d23: $40
	inc  de                                          ; $5d24: $13
	inc  bc                                          ; $5d25: $03
	inc  de                                          ; $5d26: $13
	ld   bc, $2802                                   ; $5d27: $01 $02 $28
	nop                                              ; $5d2a: $00
	ld   bc, $d6d6                                   ; $5d2b: $01 $d6 $d6
	rst  $38                                         ; $5d2e: $ff
	rst  $38                                         ; $5d2f: $ff
	inc  bc                                          ; $5d30: $03
	add  [hl]                                        ; $5d31: $86
	ld   [bc], a                                     ; $5d32: $02
	xor  l                                           ; $5d33: $ad
	adc  l                                           ; $5d34: $8d
	ld   l, l                                        ; $5d35: $6d
	ld   d, d                                        ; $5d36: $52
	ld   l, [hl]                                     ; $5d37: $6e
	sbc  l                                           ; $5d38: $9d
	sbc  a                                           ; $5d39: $9f
	dec  c                                           ; $5d3a: $0d
	nop                                              ; $5d3b: $00
	ld   a, [bc]                                     ; $5d3c: $0a
	ld   b, $b3                                      ; $5d3d: $06 $b3
	rlca                                             ; $5d3f: $07
	rrca                                             ; $5d40: $0f
	nop                                              ; $5d41: $00
	ld   bc, $6601                                   ; $5d42: $01 $01 $66
	sub  c                                           ; $5d45: $91
	sbc  [hl]                                        ; $5d46: $9e
	ld   [de], a                                     ; $5d47: $12
	ld   de, $ff61                                   ; $5d48: $11 $61 $ff
	rst  $38                                         ; $5d4b: $ff
	dec  c                                           ; $5d4c: $0d
	nop                                              ; $5d4d: $00
	ld   a, [bc]                                     ; $5d4e: $0a
	inc  e                                           ; $5d4f: $1c
	inc  bc                                          ; $5d50: $03
	inc  b                                           ; $5d51: $04
	inc  b                                           ; $5d52: $04
	dec  e                                           ; $5d53: $1d
	ld   b, b                                        ; $5d54: $40
	inc  de                                          ; $5d55: $13
	inc  bc                                          ; $5d56: $03
	inc  de                                          ; $5d57: $13
	ld   bc, $2901                                   ; $5d58: $01 $01 $29
	nop                                              ; $5d5b: $00
	ld   bc, $ffff                                   ; $5d5c: $01 $ff $ff
	inc  b                                           ; $5d5f: $04
	ld   b, l                                        ; $5d60: $45
	sbc  d                                           ; $5d61: $9a
	ld   h, a                                        ; $5d62: $67
	ld   e, h                                        ; $5d63: $5c
	sub  [hl]                                        ; $5d64: $96
	sbc  a                                           ; $5d65: $9f
	dec  c                                           ; $5d66: $0d
	nop                                              ; $5d67: $00
	ld   a, [bc]                                     ; $5d68: $0a
	ld   b, $b3                                      ; $5d69: $06 $b3
	rlca                                             ; $5d6b: $07
	inc  e                                           ; $5d6c: $1c
	inc  bc                                          ; $5d6d: $03
	inc  bc                                          ; $5d6e: $03
	inc  bc                                          ; $5d6f: $03
	dec  e                                           ; $5d70: $1d
	ld   b, b                                        ; $5d71: $40
	inc  de                                          ; $5d72: $13
	inc  bc                                          ; $5d73: $03
	inc  de                                          ; $5d74: $13
	ld   bc, $2803                                   ; $5d75: $01 $03 $28
	nop                                              ; $5d78: $00
	ld   bc, $7663                                   ; $5d79: $01 $63 $76
	ld   d, h                                        ; $5d7c: $54
	ld   a, l                                        ; $5d7d: $7d
	inc  b                                           ; $5d7e: $04
	ld   b, l                                        ; $5d7f: $45
	sbc  d                                           ; $5d80: $9a
	ld   a, b                                        ; $5d81: $78
	ld   d, d                                        ; $5d82: $52
	ld   a, h                                        ; $5d83: $7c
	ld   a, e                                        ; $5d84: $7b
	ld   sp, hl                                      ; $5d85: $f9
	dec  c                                           ; $5d86: $0d
	inc  bc                                          ; $5d87: $03
	ret  z                                           ; $5d88: $c8

	halt                                             ; $5d89: $76
	inc  b                                           ; $5d8a: $04
	dec  e                                           ; $5d8b: $1d
	ld   h, [hl]                                     ; $5d8c: $66
	ld   l, [hl]                                     ; $5d8d: $6e
	sbc  l                                           ; $5d8e: $9d
	sbc  a                                           ; $5d8f: $9f
	dec  c                                           ; $5d90: $0d
	nop                                              ; $5d91: $00
	ld   a, [bc]                                     ; $5d92: $0a
	inc  e                                           ; $5d93: $1c
	inc  bc                                          ; $5d94: $03
	inc  bc                                          ; $5d95: $03
	inc  bc                                          ; $5d96: $03
	ld   bc, $7650                                   ; $5d97: $01 $50 $76
	sbc  [hl]                                        ; $5d9a: $9e
	inc  b                                           ; $5d9b: $04
	ld   c, c                                        ; $5d9c: $49
	ld   e, c                                        ; $5d9d: $59
	inc  b                                           ; $5d9e: $04
	ld   b, l                                        ; $5d9f: $45
	sbc  d                                           ; $5da0: $9a
	sbc  c                                           ; $5da1: $99
	ld   sp, hl                                      ; $5da2: $f9
	dec  c                                           ; $5da3: $0d
	nop                                              ; $5da4: $00
	ld   a, [bc]                                     ; $5da5: $0a
	add  hl, de                                      ; $5da6: $19
	dec  b                                           ; $5da7: $05
	inc  bc                                          ; $5da8: $03
	ldh  [$ed], a                                    ; $5da9: $e0 $ed
	or   b                                           ; $5dab: $b0
	and  b                                           ; $5dac: $a0
	inc  b                                           ; $5dad: $04
	ld   b, l                                        ; $5dae: $45
	sbc  d                                           ; $5daf: $9a
	sbc  c                                           ; $5db0: $99
	nop                                              ; $5db1: $00
	nop                                              ; $5db2: $00
	or   b                                           ; $5db3: $b0
	db   $ed                                         ; $5db4: $ed
	ldh  [hScriptOpcodeParams], a                                    ; $5db5: $e0 $a0
	inc  b                                           ; $5db7: $04
	ld   b, l                                        ; $5db8: $45
	sbc  d                                           ; $5db9: $9a
	sbc  c                                           ; $5dba: $99
	nop                                              ; $5dbb: $00
	ld   bc, $a5a7                                   ; $5dbc: $01 $a7 $a5
	push af                                          ; $5dbf: $f5
	res  4, b                                        ; $5dc0: $cb $a0
	inc  b                                           ; $5dc2: $04
	ld   b, l                                        ; $5dc3: $45
	sbc  d                                           ; $5dc4: $9a
	sbc  c                                           ; $5dc5: $99
	nop                                              ; $5dc6: $00
	ld   [bc], a                                     ; $5dc7: $02
	rlca                                             ; $5dc8: $07
	ld   b, $08                                      ; $5dc9: $06 $08
	ld   [bc], a                                     ; $5dcb: $02
	inc  bc                                          ; $5dcc: $03
	ld   bc, $2000                                   ; $5dcd: $01 $00 $20
	nop                                              ; $5dd0: $00
	rlca                                             ; $5dd1: $07
	inc  [hl]                                        ; $5dd2: $34
	ld   [$0302], sp                                 ; $5dd3: $08 $02 $03
	ld   bc, $2001                                   ; $5dd6: $01 $01 $20
	nop                                              ; $5dd9: $00
	rlca                                             ; $5dda: $07
	halt                                             ; $5ddb: $76
	ld   [$0302], sp                                 ; $5ddc: $08 $02 $03
	ld   bc, $2002                                   ; $5ddf: $01 $02 $20
	nop                                              ; $5de2: $00
	ld   b, $f7                                      ; $5de3: $06 $f7
	ld   [$000f], sp                                 ; $5de5: $08 $0f $00
	ld   bc, $e001                                   ; $5de8: $01 $01 $e0
	db   $ed                                         ; $5deb: $ed
	or   b                                           ; $5dec: $b0
	and  b                                           ; $5ded: $a0
	inc  b                                           ; $5dee: $04
	ld   b, l                                        ; $5def: $45
	sbc  d                                           ; $5df0: $9a
	ld   l, l                                        ; $5df1: $6d
	ld   d, d                                        ; $5df2: $52
	ld   [hl], l                                     ; $5df3: $75
	ld   h, a                                        ; $5df4: $67
	sbc  a                                           ; $5df5: $9f
	dec  c                                           ; $5df6: $0d
	nop                                              ; $5df7: $00
	ld   a, [bc]                                     ; $5df8: $0a
	inc  e                                           ; $5df9: $1c
	inc  bc                                          ; $5dfa: $03
	inc  bc                                          ; $5dfb: $03
	inc  bc                                          ; $5dfc: $03
	dec  e                                           ; $5dfd: $1d
	ld   b, b                                        ; $5dfe: $40
	inc  de                                          ; $5dff: $13
	inc  bc                                          ; $5e00: $03
	inc  de                                          ; $5e01: $13
	ld   bc, $2802                                   ; $5e02: $01 $02 $28
	nop                                              ; $5e05: $00
	ld   bc, $527d                                   ; $5e06: $01 $7d $52
	sbc  [hl]                                        ; $5e09: $9e
	ld   [hl], a                                     ; $5e0a: $77
	ld   d, h                                        ; $5e0b: $54
	ld   l, h                                        ; $5e0c: $6c
	sbc  a                                           ; $5e0d: $9f
	dec  c                                           ; $5e0e: $0d
	nop                                              ; $5e0f: $00
	ld   a, [bc]                                     ; $5e10: $0a
	ld   b, $21                                      ; $5e11: $06 $21
	add  hl, bc                                      ; $5e13: $09
	rrca                                             ; $5e14: $0f
	nop                                              ; $5e15: $00
	ld   bc, $b001                                   ; $5e16: $01 $01 $b0
	db   $ed                                         ; $5e19: $ed
	ldh  [hScriptOpcodeParams], a                                    ; $5e1a: $e0 $a0
	inc  b                                           ; $5e1c: $04
	ld   b, l                                        ; $5e1d: $45
	sbc  d                                           ; $5e1e: $9a
	ld   l, l                                        ; $5e1f: $6d
	ld   d, d                                        ; $5e20: $52
	ld   [hl], l                                     ; $5e21: $75
	ld   h, a                                        ; $5e22: $67
	sbc  a                                           ; $5e23: $9f
	dec  c                                           ; $5e24: $0d
	nop                                              ; $5e25: $00
	ld   a, [bc]                                     ; $5e26: $0a
	inc  e                                           ; $5e27: $1c
	inc  bc                                          ; $5e28: $03
	rlca                                             ; $5e29: $07
	rlca                                             ; $5e2a: $07
	ld   bc, $edb0                                   ; $5e2b: $01 $b0 $ed
	ldh  [$f9], a                                    ; $5e2e: $e0 $f9
	dec  c                                           ; $5e30: $0d
	ldh  [$ed], a                                    ; $5e31: $e0 $ed
	or   b                                           ; $5e33: $b0
	ld   a, h                                        ; $5e34: $7c
	ld   [bc], a                                     ; $5e35: $02
	xor  c                                           ; $5e36: $a9
	ld   [bc], a                                     ; $5e37: $02
	inc  d                                           ; $5e38: $14
	ld   d, d                                        ; $5e39: $52
	ld   [hl], l                                     ; $5e3a: $75
	ld   h, l                                        ; $5e3b: $65
	sub  l                                           ; $5e3c: $95
	sbc  a                                           ; $5e3d: $9f
	dec  c                                           ; $5e3e: $0d
	nop                                              ; $5e3f: $00
	ld   a, [bc]                                     ; $5e40: $0a
	ld   b, $21                                      ; $5e41: $06 $21
	add  hl, bc                                      ; $5e43: $09
	rrca                                             ; $5e44: $0f
	nop                                              ; $5e45: $00
	ld   bc, $6601                                   ; $5e46: $01 $01 $66
	sub  c                                           ; $5e49: $91
	ld   d, b                                        ; $5e4a: $50
	sbc  [hl]                                        ; $5e4b: $9e
	and  a                                           ; $5e4c: $a7
	and  l                                           ; $5e4d: $a5
	push af                                          ; $5e4e: $f5
	res  4, b                                        ; $5e4f: $cb $a0
	rst  $38                                         ; $5e51: $ff
	rst  $38                                         ; $5e52: $ff
	dec  c                                           ; $5e53: $0d
	nop                                              ; $5e54: $00
	ld   a, [bc]                                     ; $5e55: $0a
	inc  e                                           ; $5e56: $1c
	inc  bc                                          ; $5e57: $03
	rlca                                             ; $5e58: $07
	rlca                                             ; $5e59: $07
	ld   bc, $a5a7                                   ; $5e5a: $01 $a7 $a5
	push af                                          ; $5e5d: $f5
	set  7, c                                        ; $5e5e: $cb $f9
	dec  c                                           ; $5e60: $0d
	rst  $38                                         ; $5e61: $ff
	sub  b                                           ; $5e62: $90
	ld   h, l                                        ; $5e63: $65
	ld   e, c                                        ; $5e64: $59
	ld   h, l                                        ; $5e65: $65
	ld   [hl], h                                     ; $5e66: $74
	and  a                                           ; $5e67: $a7
	and  l                                           ; $5e68: $a5
	push af                                          ; $5e69: $f5
	res  6, h                                        ; $5e6a: $cb $b4
	ei                                               ; $5e6c: $fb
	db   $d3                                         ; $5e6d: $d3
	ei                                               ; $5e6e: $fb
	dec  c                                           ; $5e6f: $0d
	ld   a, h                                        ; $5e70: $7c
	ld   h, c                                        ; $5e71: $61
	halt                                             ; $5e72: $76
	and  b                                           ; $5e73: $a0
	ld   [bc], a                                     ; $5e74: $02
	sbc  l                                           ; $5e75: $9d
	ld   [hl], c                                     ; $5e76: $71
	ld   [hl], h                                     ; $5e77: $74
	sbc  c                                           ; $5e78: $99
	ld   a, h                                        ; $5e79: $7c
	ld   sp, hl                                      ; $5e7a: $f9
	dec  c                                           ; $5e7b: $0d
	nop                                              ; $5e7c: $00
	ld   a, [bc]                                     ; $5e7d: $0a
	inc  e                                           ; $5e7e: $1c
	inc  bc                                          ; $5e7f: $03
	inc  b                                           ; $5e80: $04
	inc  b                                           ; $5e81: $04
	ld   bc, $9a50                                   ; $5e82: $01 $50 $9a
	ld   a, l                                        ; $5e85: $7d
	ld   b, $12                                      ; $5e86: $06 $12
	dec  b                                           ; $5e88: $05
	ld   d, $74                                      ; $5e89: $16 $74
	ld   l, l                                        ; $5e8b: $6d
	inc  bc                                          ; $5e8c: $03
	ld   d, d                                        ; $5e8d: $52
	or   b                                           ; $5e8e: $b0
	db   $ec                                         ; $5e8f: $ec
	ei                                               ; $5e90: $fb
	ldh  [c], a                                      ; $5e91: $e2
	and  b                                           ; $5e92: $a0
	dec  c                                           ; $5e93: $0d
	ld   l, l                                        ; $5e94: $6d
	ld   [hl], c                                     ; $5e95: $71
	add  l                                           ; $5e96: $85
	sbc  b                                           ; $5e97: $98
	inc  b                                           ; $5e98: $04
	or   c                                           ; $5e99: $b1
	ld   e, c                                        ; $5e9a: $59
	ld   l, c                                        ; $5e9b: $69
	ld   l, l                                        ; $5e9c: $6d
	or   h                                           ; $5e9d: $b4
	ei                                               ; $5e9e: $fb
	db   $d3                                         ; $5e9f: $d3
	ei                                               ; $5ea0: $fb
	sub  [hl]                                        ; $5ea1: $96
	sbc  a                                           ; $5ea2: $9f
	dec  c                                           ; $5ea3: $0d
	nop                                              ; $5ea4: $00
	ld   a, [bc]                                     ; $5ea5: $0a
	dec  e                                           ; $5ea6: $1d
	ld   b, b                                        ; $5ea7: $40
	inc  de                                          ; $5ea8: $13
	inc  bc                                          ; $5ea9: $03
	inc  de                                          ; $5eaa: $13
	ld   bc, $2902                                   ; $5eab: $01 $02 $29
	nop                                              ; $5eae: $00
	ld   bc, $a5a7                                   ; $5eaf: $01 $a7 $a5
	push af                                          ; $5eb2: $f5
	res  4, b                                        ; $5eb3: $cb $a0
	inc  b                                           ; $5eb5: $04
	ld   b, l                                        ; $5eb6: $45
	sbc  d                                           ; $5eb7: $9a
	sbc  c                                           ; $5eb8: $99
	or   h                                           ; $5eb9: $b4
	ei                                               ; $5eba: $fb
	db   $d3                                         ; $5ebb: $d3
	ei                                               ; $5ebc: $fb
	dec  c                                           ; $5ebd: $0d
	ld   h, [hl]                                     ; $5ebe: $66
	sub  c                                           ; $5ebf: $91
	ld   a, b                                        ; $5ec0: $78
	ld   d, d                                        ; $5ec1: $52
	ld   a, h                                        ; $5ec2: $7c
	sub  [hl]                                        ; $5ec3: $96
	sbc  a                                           ; $5ec4: $9f
	dec  c                                           ; $5ec5: $0d
	ld   h, l                                        ; $5ec6: $65
	ld   [hl], c                                     ; $5ec7: $71
	ld   l, l                                        ; $5ec8: $6d
	ld   e, c                                        ; $5ec9: $59
	add  h                                           ; $5eca: $84
	sbc  b                                           ; $5ecb: $98
	ld   a, l                                        ; $5ecc: $7d
	pop  bc                                          ; $5ecd: $c1
	db   $e3                                         ; $5ece: $e3
	sub  [hl]                                        ; $5ecf: $96
	sbc  a                                           ; $5ed0: $9f
	dec  c                                           ; $5ed1: $0d
	nop                                              ; $5ed2: $00
	ld   a, [bc]                                     ; $5ed3: $0a
	ld   b, $21                                      ; $5ed4: $06 $21
	add  hl, bc                                      ; $5ed6: $09
	inc  e                                           ; $5ed7: $1c
	inc  bc                                          ; $5ed8: $03
	inc  bc                                          ; $5ed9: $03
	inc  bc                                          ; $5eda: $03
	dec  e                                           ; $5edb: $1d
	ld   b, b                                        ; $5edc: $40
	inc  de                                          ; $5edd: $13
	inc  bc                                          ; $5ede: $03
	inc  de                                          ; $5edf: $13
	ld   bc, $2803                                   ; $5ee0: $01 $03 $28
	nop                                              ; $5ee3: $00
	ld   bc, $ede0                                   ; $5ee4: $01 $e0 $ed
	or   b                                           ; $5ee7: $b0
	ld   a, b                                        ; $5ee8: $78
	and  c                                           ; $5ee9: $a1
	ld   e, c                                        ; $5eea: $59
	ld   a, l                                        ; $5eeb: $7d
	inc  b                                           ; $5eec: $04
	ld   b, l                                        ; $5eed: $45
	sbc  d                                           ; $5eee: $9a
	ld   a, b                                        ; $5eef: $78
	ld   d, d                                        ; $5ef0: $52
	ld   a, h                                        ; $5ef1: $7c
	ld   a, e                                        ; $5ef2: $7b
	ld   sp, hl                                      ; $5ef3: $f9
	dec  c                                           ; $5ef4: $0d
	inc  bc                                          ; $5ef5: $03
	ret  z                                           ; $5ef6: $c8

	halt                                             ; $5ef7: $76
	inc  b                                           ; $5ef8: $04
	dec  e                                           ; $5ef9: $1d
	ld   h, [hl]                                     ; $5efa: $66
	ld   l, [hl]                                     ; $5efb: $6e
	sbc  l                                           ; $5efc: $9d
	sbc  a                                           ; $5efd: $9f
	dec  c                                           ; $5efe: $0d
	nop                                              ; $5eff: $00
	ld   a, [bc]                                     ; $5f00: $0a
	inc  e                                           ; $5f01: $1c
	inc  bc                                          ; $5f02: $03
	nop                                              ; $5f03: $00
	nop                                              ; $5f04: $00
	ld   bc, $0458                                   ; $5f05: $01 $58 $04
	jp   nc, Jump_055_777d                           ; $5f08: $d2 $7d $77

	ld   d, h                                        ; $5f0b: $54
	ld   e, c                                        ; $5f0c: $59
	ld   h, l                                        ; $5f0d: $65
	sub  a                                           ; $5f0e: $97
	sbc  a                                           ; $5f0f: $9f
	dec  c                                           ; $5f10: $0d
	nop                                              ; $5f11: $00
	ld   a, [bc]                                     ; $5f12: $0a
	add  hl, de                                      ; $5f13: $19
	dec  b                                           ; $5f14: $05
	ld   [bc], a                                     ; $5f15: $02
	ld   e, b                                        ; $5f16: $58
	ld   d, d                                        ; $5f17: $52
	ld   h, l                                        ; $5f18: $65
	ld   d, d                                        ; $5f19: $52
	ld   a, [rRAMG]                                  ; $5f1a: $fa $00 $00
	ld   d, d                                        ; $5f1d: $52
	adc  h                                           ; $5f1e: $8c
	ld   d, d                                        ; $5f1f: $52
	ld   l, a                                        ; $5f20: $6f
	ld   [hl], l                                     ; $5f21: $75
	ld   h, a                                        ; $5f22: $67
	ld   a, e                                        ; $5f23: $7b
	nop                                              ; $5f24: $00
	ld   bc, $5b07                                   ; $5f25: $01 $07 $5b
	add  hl, bc                                      ; $5f28: $09
	ld   [bc], a                                     ; $5f29: $02
	inc  bc                                          ; $5f2a: $03
	ld   bc, $2000                                   ; $5f2b: $01 $00 $20
	nop                                              ; $5f2e: $00
	rlca                                             ; $5f2f: $07
	push af                                          ; $5f30: $f5
	add  hl, bc                                      ; $5f31: $09
	ld   [bc], a                                     ; $5f32: $02
	inc  bc                                          ; $5f33: $03
	ld   bc, $2001                                   ; $5f34: $01 $01 $20
	nop                                              ; $5f37: $00
	ld   b, $27                                      ; $5f38: $06 $27
	ld   a, [bc]                                     ; $5f3a: $0a
	rrca                                             ; $5f3b: $0f
	nop                                              ; $5f3c: $00
	ld   bc, $5801                                   ; $5f3d: $01 $01 $58
	ld   d, d                                        ; $5f40: $52
	ld   h, l                                        ; $5f41: $65
	ld   d, d                                        ; $5f42: $52
	ld   a, [$000d]                                  ; $5f43: $fa $0d $00
	ld   a, [bc]                                     ; $5f46: $0a
	ld   d, $1f                                      ; $5f47: $16 $1f
	rrca                                             ; $5f49: $0f
	inc  bc                                          ; $5f4a: $03
	inc  bc                                          ; $5f4b: $03
	dec  e                                           ; $5f4c: $1d
	ld   b, b                                        ; $5f4d: $40
	inc  de                                          ; $5f4e: $13
	inc  bc                                          ; $5f4f: $03
	inc  de                                          ; $5f50: $13
	ld   bc, $2802                                   ; $5f51: $01 $02 $28
	nop                                              ; $5f54: $00
	dec  b                                           ; $5f55: $05
	ld   b, b                                        ; $5f56: $40
	ld   d, b                                        ; $5f57: $50
	ld   bc, $0000                                   ; $5f58: $01 $00 $00
	ld   bc, $d6d6                                   ; $5f5b: $01 $d6 $d6
	rst  $38                                         ; $5f5e: $ff
	rst  $38                                         ; $5f5f: $ff
	sub  [hl]                                        ; $5f60: $96
	ld   e, c                                        ; $5f61: $59
	ld   [hl], c                                     ; $5f62: $71
	ld   l, l                                        ; $5f63: $6d
	sbc  a                                           ; $5f64: $9f
	dec  c                                           ; $5f65: $0d
	nop                                              ; $5f66: $00
	ld   a, [bc]                                     ; $5f67: $0a
	ld   bc, $546b                                   ; $5f68: $01 $6b $54
	ld   l, [hl]                                     ; $5f6b: $6e
	sbc  l                                           ; $5f6c: $9d
	sbc  [hl]                                        ; $5f6d: $9e
	ld   [$5d00], sp                                 ; $5f6e: $08 $00 $5d
	and  c                                           ; $5f71: $a1
	sbc  a                                           ; $5f72: $9f
	dec  c                                           ; $5f73: $0d
	inc  b                                           ; $5f74: $04
	dec  c                                           ; $5f75: $0d
	ld   [bc], a                                     ; $5f76: $02
	sub  [hl]                                        ; $5f77: $96
	inc  b                                           ; $5f78: $04
	ld   b, l                                        ; $5f79: $45
	inc  b                                           ; $5f7a: $04
	ld   a, [bc]                                     ; $5f7b: $0a
	ld   a, c                                        ; $5f7c: $79
	ld   [hl], d                                     ; $5f7d: $72
	ld   d, d                                        ; $5f7e: $52
	ld   [hl], h                                     ; $5f7f: $74
	inc  bc                                          ; $5f80: $03
	dec  bc                                          ; $5f81: $0b
	ld   bc, $0d14                                   ; $5f82: $01 $14 $0d
	ld   [bc], a                                     ; $5f85: $02
	jp   nz, Jump_055_6959                           ; $5f86: $c2 $59 $69

	ld   [hl], h                                     ; $5f89: $74
	ld   e, l                                        ; $5f8a: $5d
	sbc  d                                           ; $5f8b: $9a
	ld   a, b                                        ; $5f8c: $78
	ld   d, d                                        ; $5f8d: $52
	ld   e, c                                        ; $5f8e: $59
	ld   h, l                                        ; $5f8f: $65
	sub  a                                           ; $5f90: $97
	ld   sp, hl                                      ; $5f91: $f9
	dec  c                                           ; $5f92: $0d
	nop                                              ; $5f93: $00
	ld   a, [bc]                                     ; $5f94: $0a
	rrca                                             ; $5f95: $0f
	nop                                              ; $5f96: $00
	ld   bc, $020c                                   ; $5f97: $01 $0c $02
	add  hl, bc                                      ; $5f9a: $09
	ld   e, $0e                                      ; $5f9b: $1e $0e
	sub  a                                           ; $5f9d: $97
	inc  e                                           ; $5f9e: $1c
	inc  bc                                          ; $5f9f: $03
	inc  bc                                          ; $5fa0: $03
	inc  bc                                          ; $5fa1: $03
	ld   bc, $546b                                   ; $5fa2: $01 $6b $54
	ld   a, b                                        ; $5fa5: $78
	ld   a, h                                        ; $5fa6: $7c
	rst  $38                                         ; $5fa7: $ff
	rst  $38                                         ; $5fa8: $ff
	dec  c                                           ; $5fa9: $0d
	nop                                              ; $5faa: $00
	inc  e                                           ; $5fab: $1c
	inc  bc                                          ; $5fac: $03
	rlca                                             ; $5fad: $07
	rlca                                             ; $5fae: $07
	ld   bc, $7150                                   ; $5faf: $01 $50 $71
	sbc  [hl]                                        ; $5fb2: $9e
	ld   d, d                                        ; $5fb3: $52
	ld   e, a                                        ; $5fb4: $5f
	ld   a, b                                        ; $5fb5: $78
	ld   d, d                                        ; $5fb6: $52
	sbc  a                                           ; $5fb7: $9f
	dec  c                                           ; $5fb8: $0d
	sub  b                                           ; $5fb9: $90
	ld   d, h                                        ; $5fba: $54
	ld   h, c                                        ; $5fbb: $61
	and  c                                           ; $5fbc: $a1
	ld   a, b                                        ; $5fbd: $78
	inc  bc                                          ; $5fbe: $03
	ld   l, a                                        ; $5fbf: $6f
	ld   [bc], a                                     ; $5fc0: $02
	xor  c                                           ; $5fc1: $a9
	ld   l, [hl]                                     ; $5fc2: $6e
	sbc  l                                           ; $5fc3: $9d
	sbc  a                                           ; $5fc4: $9f
	dec  c                                           ; $5fc5: $0d
	nop                                              ; $5fc6: $00
	ld   a, [bc]                                     ; $5fc7: $0a
	dec  c                                           ; $5fc8: $0d
	nop                                              ; $5fc9: $00
	nop                                              ; $5fca: $00
	rrca                                             ; $5fcb: $0f
	nop                                              ; $5fcc: $00
	ld   bc, $020c                                   ; $5fcd: $01 $0c $02
	add  hl, bc                                      ; $5fd0: $09
	ld   d, b                                        ; $5fd1: $50
	ld   b, $62                                      ; $5fd2: $06 $62
	ld   a, [bc]                                     ; $5fd4: $0a
	rrca                                             ; $5fd5: $0f
	nop                                              ; $5fd6: $00
	ld   bc, $5201                                   ; $5fd7: $01 $01 $52
	adc  h                                           ; $5fda: $8c
	ld   d, d                                        ; $5fdb: $52
	ld   l, a                                        ; $5fdc: $6f
	ld   [hl], l                                     ; $5fdd: $75
	ld   h, a                                        ; $5fde: $67
	ld   a, e                                        ; $5fdf: $7b
	rst  $38                                         ; $5fe0: $ff
	rst  $38                                         ; $5fe1: $ff
	dec  c                                           ; $5fe2: $0d
	nop                                              ; $5fe3: $00
	ld   a, [bc]                                     ; $5fe4: $0a
	inc  e                                           ; $5fe5: $1c
	inc  bc                                          ; $5fe6: $03
	inc  b                                           ; $5fe7: $04
	inc  b                                           ; $5fe8: $04
	dec  e                                           ; $5fe9: $1d
	ld   b, b                                        ; $5fea: $40
	inc  de                                          ; $5feb: $13
	inc  bc                                          ; $5fec: $03
	inc  de                                          ; $5fed: $13
	ld   bc, $2902                                   ; $5fee: $01 $02 $29
	nop                                              ; $5ff1: $00
	ld   bc, $546b                                   ; $5ff2: $01 $6b $54
	rst  $38                                         ; $5ff5: $ff
	rst  $38                                         ; $5ff6: $ff
	dec  c                                           ; $5ff7: $0d
	nop                                              ; $5ff8: $00
	ld   a, [bc]                                     ; $5ff9: $0a
	dec  c                                           ; $5ffa: $0d
	nop                                              ; $5ffb: $00
	nop                                              ; $5ffc: $00
	rrca                                             ; $5ffd: $0f
	nop                                              ; $5ffe: $00
	ld   bc, $020c                                   ; $5fff: $01 $0c $02
	add  hl, bc                                      ; $6002: $09
	ld   e, $06                                      ; $6003: $1e $06
	ld   h, d                                        ; $6005: $62
	ld   a, [bc]                                     ; $6006: $0a
	inc  e                                           ; $6007: $1c
	inc  bc                                          ; $6008: $03
	inc  b                                           ; $6009: $04
	inc  b                                           ; $600a: $04
	dec  e                                           ; $600b: $1d
	ld   b, b                                        ; $600c: $40
	inc  de                                          ; $600d: $13
	inc  bc                                          ; $600e: $03
	inc  de                                          ; $600f: $13
	ld   bc, $2901                                   ; $6010: $01 $01 $29
	nop                                              ; $6013: $00
	ld   bc, $8c6e                                   ; $6014: $01 $6e $8c
	ld   [hl], c                                     ; $6017: $71
	ld   [hl], h                                     ; $6018: $74
	ld   d, d                                        ; $6019: $52
	ld   [hl], h                                     ; $601a: $74
	ld   a, l                                        ; $601b: $7d
	dec  c                                           ; $601c: $0d
	inc  b                                           ; $601d: $04
	sbc  [hl]                                        ; $601e: $9e
	ld   e, c                                        ; $601f: $59
	sub  a                                           ; $6020: $97
	ld   a, b                                        ; $6021: $78
	ld   d, d                                        ; $6022: $52
	sbc  l                                           ; $6023: $9d
	rst  $38                                         ; $6024: $ff
	rst  $38                                         ; $6025: $ff
	dec  c                                           ; $6026: $0d
	nop                                              ; $6027: $00
	ld   a, [bc]                                     ; $6028: $0a
	ld   bc, $9166                                   ; $6029: $01 $66 $91
	ld   d, b                                        ; $602c: $50
	sbc  [hl]                                        ; $602d: $9e
	ld   l, e                                        ; $602e: $6b
	sbc  e                                           ; $602f: $9b
	ld   l, e                                        ; $6030: $6b
	sbc  e                                           ; $6031: $9b
	dec  c                                           ; $6032: $0d
	ld   [bc], a                                     ; $6033: $02
	or   l                                           ; $6034: $b5
	sbc  b                                           ; $6035: $98
	adc  h                                           ; $6036: $8c
	ld   h, l                                        ; $6037: $65
	sub  l                                           ; $6038: $95
	ld   d, h                                        ; $6039: $54
	ld   e, c                                        ; $603a: $59
	sbc  a                                           ; $603b: $9f
	dec  c                                           ; $603c: $0d
	nop                                              ; $603d: $00
	ld   a, [bc]                                     ; $603e: $0a
	ld   b, $79                                      ; $603f: $06 $79
	ld   a, [bc]                                     ; $6041: $0a
	ld   c, $96                                      ; $6042: $0e $96
	inc  e                                           ; $6044: $1c
	inc  bc                                          ; $6045: $03
	nop                                              ; $6046: $00
	nop                                              ; $6047: $00
	ld   bc, $9b6b                                   ; $6048: $01 $6b $9b
	ld   l, e                                        ; $604b: $6b
	sbc  e                                           ; $604c: $9b
	ld   [bc], a                                     ; $604d: $02
	or   l                                           ; $604e: $b5
	sbc  b                                           ; $604f: $98
	adc  h                                           ; $6050: $8c
	ld   h, l                                        ; $6051: $65
	sub  l                                           ; $6052: $95
	ld   d, h                                        ; $6053: $54
	ld   e, c                                        ; $6054: $59
	ld   sp, hl                                      ; $6055: $f9
	dec  c                                           ; $6056: $0d
	nop                                              ; $6057: $00
	ld   a, [bc]                                     ; $6058: $0a
	add  hl, de                                      ; $6059: $19
	dec  b                                           ; $605a: $05
	ld   [bc], a                                     ; $605b: $02
	sub  b                                           ; $605c: $90
	ld   [hl], c                                     ; $605d: $71
	halt                                             ; $605e: $76
	ld   d, d                                        ; $605f: $52
	ld   [hl], c                                     ; $6060: $71
	ld   h, l                                        ; $6061: $65
	sub  l                                           ; $6062: $95
	ld   a, c                                        ; $6063: $79
	rst  $38                                         ; $6064: $ff
	rst  $38                                         ; $6065: $ff
	nop                                              ; $6066: $00
	nop                                              ; $6067: $00
	ld   l, e                                        ; $6068: $6b
	ld   d, h                                        ; $6069: $54
	ld   [hl], l                                     ; $606a: $75
	ld   h, a                                        ; $606b: $67
	ld   a, e                                        ; $606c: $7b
	nop                                              ; $606d: $00
	ld   bc, $a407                                   ; $606e: $01 $07 $a4
	ld   a, [bc]                                     ; $6071: $0a
	ld   [bc], a                                     ; $6072: $02
	inc  bc                                          ; $6073: $03
	ld   bc, $2000                                   ; $6074: $01 $00 $20
	nop                                              ; $6077: $00
	rlca                                             ; $6078: $07
	jr   nc, jr_055_6086                             ; $6079: $30 $0b

	ld   [bc], a                                     ; $607b: $02
	inc  bc                                          ; $607c: $03
	ld   bc, $2001                                   ; $607d: $01 $01 $20
	nop                                              ; $6080: $00
	ld   b, $3d                                      ; $6081: $06 $3d
	dec  bc                                          ; $6083: $0b
	rrca                                             ; $6084: $0f
	nop                                              ; $6085: $00

jr_055_6086:
	ld   bc, $9001                                   ; $6086: $01 $01 $90
	ld   [hl], c                                     ; $6089: $71
	halt                                             ; $608a: $76
	ld   d, d                                        ; $608b: $52
	ld   [hl], c                                     ; $608c: $71
	ld   h, l                                        ; $608d: $65
	sub  l                                           ; $608e: $95
	ld   a, c                                        ; $608f: $79
	rst  $38                                         ; $6090: $ff
	rst  $38                                         ; $6091: $ff
	dec  c                                           ; $6092: $0d
	nop                                              ; $6093: $00
	ld   a, [bc]                                     ; $6094: $0a
	rlca                                             ; $6095: $07
	add  hl, bc                                      ; $6096: $09
	dec  bc                                          ; $6097: $0b
	inc  bc                                          ; $6098: $03
	inc  de                                          ; $6099: $13
	ld   bc, $23a0                                   ; $609a: $01 $a0 $23
	nop                                              ; $609d: $00
	inc  e                                           ; $609e: $1c
	inc  bc                                          ; $609f: $03
	inc  bc                                          ; $60a0: $03
	inc  bc                                          ; $60a1: $03
	dec  e                                           ; $60a2: $1d
	ld   b, b                                        ; $60a3: $40
	inc  de                                          ; $60a4: $13
	inc  bc                                          ; $60a5: $03
	inc  de                                          ; $60a6: $13
	ld   bc, $2802                                   ; $60a7: $01 $02 $28
	nop                                              ; $60aa: $00
	ld   bc, $546b                                   ; $60ab: $01 $6b $54
	ld   [bc], a                                     ; $60ae: $02
	sbc  l                                           ; $60af: $9d
	sbc  l                                           ; $60b0: $9d
	sbc  d                                           ; $60b1: $9a
	sbc  c                                           ; $60b2: $99
	halt                                             ; $60b3: $76
	dec  c                                           ; $60b4: $0d
	ld   d, h                                        ; $60b5: $54
	sbc  d                                           ; $60b6: $9a
	ld   h, l                                        ; $60b7: $65
	ld   d, d                                        ; $60b8: $52
	sbc  l                                           ; $60b9: $9d
	ld   a, e                                        ; $60ba: $7b
	rst  $38                                         ; $60bb: $ff
	rst  $38                                         ; $60bc: $ff
	sub  $d6                                         ; $60bd: $d6 $d6
	dec  c                                           ; $60bf: $0d
	nop                                              ; $60c0: $00
	ld   a, [bc]                                     ; $60c1: $0a
	inc  e                                           ; $60c2: $1c
	inc  bc                                          ; $60c3: $03
	nop                                              ; $60c4: $00
	nop                                              ; $60c5: $00
	ld   bc, $9075                                   ; $60c6: $01 $75 $90
	sbc  [hl]                                        ; $60c9: $9e
	sub  b                                           ; $60ca: $90
	ld   d, h                                        ; $60cb: $54
	inc  bc                                          ; $60cc: $03
	ld   l, a                                        ; $60cd: $6f
	ld   [bc], a                                     ; $60ce: $02
	xor  c                                           ; $60cf: $a9
	sub  [hl]                                        ; $60d0: $96
	sbc  a                                           ; $60d1: $9f
	dec  c                                           ; $60d2: $0d
	ld   h, e                                        ; $60d3: $63
	sbc  [hl]                                        ; $60d4: $9e
	ld   [bc], a                                     ; $60d5: $02
	or   l                                           ; $60d6: $b5
	sbc  b                                           ; $60d7: $98
	adc  h                                           ; $60d8: $8c
	ld   h, l                                        ; $60d9: $65
	sub  l                                           ; $60da: $95
	ld   d, h                                        ; $60db: $54
	sbc  a                                           ; $60dc: $9f
	dec  c                                           ; $60dd: $0d
	nop                                              ; $60de: $00
	ld   a, [bc]                                     ; $60df: $0a
	dec  c                                           ; $60e0: $0d
	nop                                              ; $60e1: $00
	nop                                              ; $60e2: $00
	rrca                                             ; $60e3: $0f
	nop                                              ; $60e4: $00
	ld   bc, $5806                                   ; $60e5: $01 $06 $58
	dec  bc                                          ; $60e8: $0b
	inc  e                                           ; $60e9: $1c
	inc  bc                                          ; $60ea: $03
	nop                                              ; $60eb: $00
	nop                                              ; $60ec: $00
	ld   bc, $9075                                   ; $60ed: $01 $75 $90
	sbc  [hl]                                        ; $60f0: $9e
	sub  b                                           ; $60f1: $90
	ld   d, h                                        ; $60f2: $54
	inc  bc                                          ; $60f3: $03
	ld   l, a                                        ; $60f4: $6f
	ld   [bc], a                                     ; $60f5: $02
	xor  c                                           ; $60f6: $a9
	sub  [hl]                                        ; $60f7: $96
	sbc  a                                           ; $60f8: $9f
	dec  c                                           ; $60f9: $0d
	ld   h, e                                        ; $60fa: $63
	sbc  [hl]                                        ; $60fb: $9e
	ld   [bc], a                                     ; $60fc: $02
	or   l                                           ; $60fd: $b5
	sbc  b                                           ; $60fe: $98
	adc  h                                           ; $60ff: $8c
	ld   h, l                                        ; $6100: $65
	sub  l                                           ; $6101: $95
	ld   d, h                                        ; $6102: $54
	sbc  a                                           ; $6103: $9f
	dec  c                                           ; $6104: $0d
	nop                                              ; $6105: $00
	ld   a, [bc]                                     ; $6106: $0a
	dec  c                                           ; $6107: $0d
	nop                                              ; $6108: $00
	nop                                              ; $6109: $00
	rrca                                             ; $610a: $0f
	nop                                              ; $610b: $00
	ld   bc, $5806                                   ; $610c: $01 $06 $58
	dec  bc                                          ; $610f: $0b
	rrca                                             ; $6110: $0f
	nop                                              ; $6111: $00
	ld   bc, $6b01                                   ; $6112: $01 $01 $6b
	ld   d, h                                        ; $6115: $54
	ld   [hl], l                                     ; $6116: $75
	ld   h, a                                        ; $6117: $67
	ld   a, e                                        ; $6118: $7b
	sbc  a                                           ; $6119: $9f
	dec  c                                           ; $611a: $0d
	nop                                              ; $611b: $00
	ld   a, [bc]                                     ; $611c: $0a
	inc  e                                           ; $611d: $1c
	inc  bc                                          ; $611e: $03
	nop                                              ; $611f: $00
	nop                                              ; $6120: $00
	ld   bc, $9e63                                   ; $6121: $01 $63 $9e
	ld   [bc], a                                     ; $6124: $02
	or   l                                           ; $6125: $b5
	sbc  b                                           ; $6126: $98
	adc  h                                           ; $6127: $8c
	ld   h, l                                        ; $6128: $65
	sub  l                                           ; $6129: $95
	ld   d, h                                        ; $612a: $54
	sbc  a                                           ; $612b: $9f
	dec  c                                           ; $612c: $0d
	nop                                              ; $612d: $00
	ld   a, [bc]                                     ; $612e: $0a
	dec  c                                           ; $612f: $0d
	nop                                              ; $6130: $00
	nop                                              ; $6131: $00
	rrca                                             ; $6132: $0f
	nop                                              ; $6133: $00
	ld   bc, $5806                                   ; $6134: $01 $06 $58
	dec  bc                                          ; $6137: $0b
	inc  c                                           ; $6138: $0c
	ld   [bc], a                                     ; $6139: $02
	ld   c, $02                                      ; $613a: $0e $02
	ld   bc, $ffff                                   ; $613c: $01 $ff $ff
	add  e                                           ; $613f: $83
	ld   d, h                                        ; $6140: $54
	sbc  [hl]                                        ; $6141: $9e
	ld   [bc], a                                     ; $6142: $02
	and  l                                           ; $6143: $a5
	inc  b                                           ; $6144: $04
	xor  d                                           ; $6145: $aa
	ld   a, l                                        ; $6146: $7d
	ld   l, l                                        ; $6147: $6d
	ld   a, h                                        ; $6148: $7c
	ld   h, l                                        ; $6149: $65
	ld   e, c                                        ; $614a: $59
	ld   [hl], c                                     ; $614b: $71
	ld   l, l                                        ; $614c: $6d
	dec  c                                           ; $614d: $0d
	ld   a, b                                        ; $614e: $78
	ld   d, b                                        ; $614f: $50
	rst  $38                                         ; $6150: $ff
	rst  $38                                         ; $6151: $ff
	dec  c                                           ; $6152: $0d
	nop                                              ; $6153: $00
	ld   a, [bc]                                     ; $6154: $0a
	ld   bc, $7158                                   ; $6155: $01 $58 $71
	halt                                             ; $6158: $76
	sbc  [hl]                                        ; $6159: $9e
	sub  b                                           ; $615a: $90
	ld   d, h                                        ; $615b: $54
	ld   h, c                                        ; $615c: $61
	and  c                                           ; $615d: $a1
	ld   a, b                                        ; $615e: $78
	inc  bc                                          ; $615f: $03
	ld   l, a                                        ; $6160: $6f
	ld   [bc], a                                     ; $6161: $02
	xor  c                                           ; $6162: $a9
	ld   e, c                                        ; $6163: $59
	sbc  a                                           ; $6164: $9f
	dec  c                                           ; $6165: $0d
	ld   l, e                                        ; $6166: $6b
	sbc  e                                           ; $6167: $9b
	ld   l, e                                        ; $6168: $6b
	sbc  e                                           ; $6169: $9b
	inc  b                                           ; $616a: $04
	ld   b, d                                        ; $616b: $42
	ld   a, b                                        ; $616c: $78
	ld   e, l                                        ; $616d: $5d
	ld   l, a                                        ; $616e: $6f
	sub  c                                           ; $616f: $91
	rst  $38                                         ; $6170: $ff
	rst  $38                                         ; $6171: $ff
	dec  c                                           ; $6172: $0d
	nop                                              ; $6173: $00
	ld   a, [bc]                                     ; $6174: $0a
	add  hl, hl                                      ; $6175: $29
	nop                                              ; $6176: $00
	nop                                              ; $6177: $00
	nop                                              ; $6178: $00
	inc  b                                           ; $6179: $04
	add  b                                           ; $617a: $80
	ld   b, h                                        ; $617b: $44
	ld   bc, $20ff                                   ; $617c: $01 $ff $20
	nop                                              ; $617f: $00
	ld   c, $01                                      ; $6180: $0e $01
	rrca                                             ; $6182: $0f
	nop                                              ; $6183: $00
	ld   bc, $0502                                   ; $6184: $01 $02 $05
	ld   b, b                                        ; $6187: $40
	ld   d, c                                        ; $6188: $51
	ld   bc, $0000                                   ; $6189: $01 $00 $00
	ld   bc, $a502                                   ; $618c: $01 $02 $a5
	inc  b                                           ; $618f: $04
	xor  d                                           ; $6190: $aa
	ld   a, l                                        ; $6191: $7d
	sbc  [hl]                                        ; $6192: $9e
	and  e                                           ; $6193: $a3
	and  l                                           ; $6194: $a5
	db   $ec                                         ; $6195: $ec
	cp   d                                           ; $6196: $ba
	halt                                             ; $6197: $76
	dec  c                                           ; $6198: $0d
	ld   e, b                                        ; $6199: $58
	inc  bc                                          ; $619a: $03
	add  b                                           ; $619b: $80
	ld   e, c                                        ; $619c: $59
	ld   e, a                                        ; $619d: $5f
	ld   l, [hl]                                     ; $619e: $6e
	sbc  a                                           ; $619f: $9f
	dec  c                                           ; $61a0: $0d
	dec  b                                           ; $61a1: $05
	jr   z, jr_055_61f6                              ; $61a2: $28 $52

	ld   [hl], l                                     ; $61a4: $75
	inc  b                                           ; $61a5: $04
	rlca                                             ; $61a6: $07
	dec  b                                           ; $61a7: $05
	scf                                              ; $61a8: $37
	ld   d, [hl]                                     ; $61a9: $56
	ld   a, b                                        ; $61aa: $78
	ld   e, l                                        ; $61ab: $5d
	ld   l, a                                        ; $61ac: $6f
	sub  c                                           ; $61ad: $91
	sbc  a                                           ; $61ae: $9f
	dec  c                                           ; $61af: $0d
	nop                                              ; $61b0: $00
	ld   a, [bc]                                     ; $61b1: $0a
	add  hl, de                                      ; $61b2: $19
	inc  b                                           ; $61b3: $04
	inc  bc                                          ; $61b4: $03
	cp   b                                           ; $61b5: $b8
	push hl                                          ; $61b6: $e5
	push bc                                          ; $61b7: $c5
	and  b                                           ; $61b8: $a0
	inc  b                                           ; $61b9: $04
	rlca                                             ; $61ba: $07
	sbc  c                                           ; $61bb: $99
	nop                                              ; $61bc: $00
	nop                                              ; $61bd: $00
	cp   b                                           ; $61be: $b8
	push hl                                          ; $61bf: $e5
	or   d                                           ; $61c0: $b2
	and  b                                           ; $61c1: $a0
	inc  bc                                          ; $61c2: $03
	dec  de                                          ; $61c3: $1b
	sbc  c                                           ; $61c4: $99
	nop                                              ; $61c5: $00
	ld   bc, $e5b8                                   ; $61c6: $01 $b8 $e5
	pop  af                                          ; $61c9: $f1
	ei                                               ; $61ca: $fb
	and  b                                           ; $61cb: $a0
	ld   d, b                                        ; $61cc: $50
	add  c                                           ; $61cd: $81
	sbc  c                                           ; $61ce: $99
	nop                                              ; $61cf: $00
	ld   [bc], a                                     ; $61d0: $02
	rlca                                             ; $61d1: $07
	ld   l, a                                        ; $61d2: $6f
	nop                                              ; $61d3: $00
	ld   [bc], a                                     ; $61d4: $02
	inc  bc                                          ; $61d5: $03
	ld   bc, $2000                                   ; $61d6: $01 $00 $20
	nop                                              ; $61d9: $00
	rlca                                             ; $61da: $07
	sub  b                                           ; $61db: $90
	nop                                              ; $61dc: $00
	ld   [bc], a                                     ; $61dd: $02
	inc  bc                                          ; $61de: $03
	ld   bc, $2001                                   ; $61df: $01 $01 $20
	nop                                              ; $61e2: $00
	rlca                                             ; $61e3: $07
	call z, $0200                                    ; $61e4: $cc $00 $02
	inc  bc                                          ; $61e7: $03
	ld   bc, $2002                                   ; $61e8: $01 $02 $20
	nop                                              ; $61eb: $00
	ld   b, $0d                                      ; $61ec: $06 $0d
	ld   bc, $000f                                   ; $61ee: $01 $0f $00
	ld   bc, $8c01                                   ; $61f1: $01 $01 $8c
	ld   l, b                                        ; $61f4: $68
	ld   a, l                                        ; $61f5: $7d

jr_055_61f6:
	sbc  [hl]                                        ; $61f6: $9e
	cp   b                                           ; $61f7: $b8
	push hl                                          ; $61f8: $e5
	push bc                                          ; $61f9: $c5
	and  b                                           ; $61fa: $a0
	inc  b                                           ; $61fb: $04
	rlca                                             ; $61fc: $07
	ld   [hl], h                                     ; $61fd: $74
	halt                                             ; $61fe: $76
	rst  $38                                         ; $61ff: $ff
	rst  $38                                         ; $6200: $ff
	dec  c                                           ; $6201: $0d
	nop                                              ; $6202: $00
	ld   a, [bc]                                     ; $6203: $0a
	dec  b                                           ; $6204: $05
	ld   b, b                                        ; $6205: $40
	rst  $38                                         ; $6206: $ff
	inc  bc                                          ; $6207: $03
	rst  $38                                         ; $6208: $ff
	ld   bc, $2801                                   ; $6209: $01 $01 $28
	nop                                              ; $620c: $00
	ld   b, $30                                      ; $620d: $06 $30
	ld   bc, $000f                                   ; $620f: $01 $0f $00
	ld   bc, $8c01                                   ; $6212: $01 $01 $8c
	ld   l, b                                        ; $6215: $68
	ld   a, l                                        ; $6216: $7d
	sbc  [hl]                                        ; $6217: $9e
	cp   b                                           ; $6218: $b8
	push hl                                          ; $6219: $e5
	or   d                                           ; $621a: $b2
	and  b                                           ; $621b: $a0
	inc  bc                                          ; $621c: $03
	dec  de                                          ; $621d: $1b
	ld   [hl], c                                     ; $621e: $71
	ld   [hl], h                                     ; $621f: $74
	rst  $38                                         ; $6220: $ff
	rst  $38                                         ; $6221: $ff
	dec  c                                           ; $6222: $0d
	and  c                                           ; $6223: $a1
	ld   sp, hl                                      ; $6224: $f9
	db   $10                                         ; $6225: $10
	ld   a, b                                        ; $6226: $78
	and  c                                           ; $6227: $a1
	ld   [hl], l                                     ; $6228: $75
	cp   b                                           ; $6229: $b8
	push hl                                          ; $622a: $e5
	or   d                                           ; $622b: $b2
	and  b                                           ; $622c: $a0
	dec  c                                           ; $622d: $0d
	nop                                              ; $622e: $00
	dec  b                                           ; $622f: $05
	ld   b, b                                        ; $6230: $40
	rst  $38                                         ; $6231: $ff
	inc  bc                                          ; $6232: $03
	rst  $38                                         ; $6233: $ff
	ld   bc, $2801                                   ; $6234: $01 $01 $28
	nop                                              ; $6237: $00
	ld   bc, $1b03                                   ; $6238: $01 $03 $1b
	sub  a                                           ; $623b: $97
	ld   a, b                                        ; $623c: $78
	ld   e, e                                        ; $623d: $5b
	sub  c                                           ; $623e: $91
	ld   d, d                                        ; $623f: $52
	ld   e, a                                        ; $6240: $5f
	ld   a, b                                        ; $6241: $78
	ld   d, d                                        ; $6242: $52
	and  c                                           ; $6243: $a1
	ld   l, [hl]                                     ; $6244: $6e
	ld   sp, hl                                      ; $6245: $f9
	dec  c                                           ; $6246: $0d
	nop                                              ; $6247: $00
	ld   a, [bc]                                     ; $6248: $0a
	ld   b, $32                                      ; $6249: $06 $32
	nop                                              ; $624b: $00
	rrca                                             ; $624c: $0f
	nop                                              ; $624d: $00
	ld   bc, $8c01                                   ; $624e: $01 $01 $8c
	ld   l, b                                        ; $6251: $68
	ld   a, l                                        ; $6252: $7d
	rst  $38                                         ; $6253: $ff
	rst  $38                                         ; $6254: $ff
	cp   b                                           ; $6255: $b8
	push hl                                          ; $6256: $e5
	pop  af                                          ; $6257: $f1
	ei                                               ; $6258: $fb
	and  b                                           ; $6259: $a0
	ld   d, b                                        ; $625a: $50
	add  c                                           ; $625b: $81
	sub  [hl]                                        ; $625c: $96
	ld   d, h                                        ; $625d: $54
	dec  c                                           ; $625e: $0d
	ld   e, c                                        ; $625f: $59
	ld   a, b                                        ; $6260: $78
	ld   sp, hl                                      ; $6261: $f9
	db   $10                                         ; $6262: $10
	rst  $38                                         ; $6263: $ff
	rst  $38                                         ; $6264: $ff
	ld   d, d                                        ; $6265: $52
	sub  d                                           ; $6266: $92
	ld   d, d                                        ; $6267: $52
	sub  d                                           ; $6268: $92
	sbc  [hl]                                        ; $6269: $9e
	ld   l, e                                        ; $626a: $6b
	and  c                                           ; $626b: $a1
	ld   a, b                                        ; $626c: $78
	dec  c                                           ; $626d: $0d
	nop                                              ; $626e: $00
	dec  b                                           ; $626f: $05
	ld   b, b                                        ; $6270: $40
	rst  $38                                         ; $6271: $ff
	inc  bc                                          ; $6272: $03
	rst  $38                                         ; $6273: $ff
	ld   bc, $2801                                   ; $6274: $01 $01 $28
	nop                                              ; $6277: $00
	ld   bc, $7661                                   ; $6278: $01 $61 $76
	ld   h, l                                        ; $627b: $65
	ld   [hl], h                                     ; $627c: $74
	sbc  c                                           ; $627d: $99
	inc  bc                                          ; $627e: $03
	ld   l, a                                        ; $627f: $6f
	ld   [bc], a                                     ; $6280: $02
	xor  c                                           ; $6281: $a9
	ld   a, l                                        ; $6282: $7d
	ld   a, b                                        ; $6283: $78
	ld   d, d                                        ; $6284: $52
	ld   l, h                                        ; $6285: $6c
	sbc  a                                           ; $6286: $9f
	dec  c                                           ; $6287: $0d
	nop                                              ; $6288: $00
	ld   a, [bc]                                     ; $6289: $0a
	ld   b, $32                                      ; $628a: $06 $32
	nop                                              ; $628c: $00
	rrca                                             ; $628d: $0f
	nop                                              ; $628e: $00
	ld   bc, $8c01                                   ; $628f: $01 $01 $8c
	ld   l, b                                        ; $6292: $68
	ld   a, l                                        ; $6293: $7d
	rst  $38                                         ; $6294: $ff
	rst  $38                                         ; $6295: $ff
	dec  c                                           ; $6296: $0d
	ld   [hl], a                                     ; $6297: $77
	ld   d, h                                        ; $6298: $54
	ld   h, l                                        ; $6299: $65
	sub  [hl]                                        ; $629a: $96
	ld   d, h                                        ; $629b: $54
	ld   e, c                                        ; $629c: $59
	rst  $38                                         ; $629d: $ff
	rst  $38                                         ; $629e: $ff
	rst  $38                                         ; $629f: $ff
	rst  $38                                         ; $62a0: $ff
	dec  c                                           ; $62a1: $0d
	nop                                              ; $62a2: $00
	ld   a, [bc]                                     ; $62a3: $0a
	dec  b                                           ; $62a4: $05
	ld   b, b                                        ; $62a5: $40
	rst  $38                                         ; $62a6: $ff
	inc  bc                                          ; $62a7: $03
	rst  $38                                         ; $62a8: $ff
	ld   bc, $2801                                   ; $62a9: $01 $01 $28
	nop                                              ; $62ac: $00
	ld   b, $32                                      ; $62ad: $06 $32
	nop                                              ; $62af: $00
	add  hl, de                                      ; $62b0: $19
	inc  b                                           ; $62b1: $04
	inc  bc                                          ; $62b2: $03
	ld   e, l                                        ; $62b3: $5d
	ld   [hl], d                                     ; $62b4: $72
	ld   h, l                                        ; $62b5: $65
	ld   l, l                                        ; $62b6: $6d
	and  b                                           ; $62b7: $a0
	ld   a, l                                        ; $62b8: $7d
	ld   e, l                                        ; $62b9: $5d
	nop                                              ; $62ba: $00
	nop                                              ; $62bb: $00
	ld   e, l                                        ; $62bc: $5d
	ld   [hl], d                                     ; $62bd: $72
	ld   h, l                                        ; $62be: $65
	ld   l, l                                        ; $62bf: $6d
	and  b                                           ; $62c0: $a0
	ld   h, e                                        ; $62c1: $63
	ld   e, l                                        ; $62c2: $5d
	nop                                              ; $62c3: $00
	ld   bc, $715e                                   ; $62c4: $01 $5e $71
	ld   l, l                                        ; $62c7: $6d
	sbc  b                                           ; $62c8: $98
	halt                                             ; $62c9: $76
	ld   h, a                                        ; $62ca: $67
	sbc  c                                           ; $62cb: $99
	nop                                              ; $62cc: $00
	ld   [bc], a                                     ; $62cd: $02
	rlca                                             ; $62ce: $07
	ld   l, h                                        ; $62cf: $6c
	ld   bc, $0302                                   ; $62d0: $01 $02 $03
	ld   bc, $2000                                   ; $62d3: $01 $00 $20
	nop                                              ; $62d6: $00
	rlca                                             ; $62d7: $07
	adc  h                                           ; $62d8: $8c
	ld   bc, $0302                                   ; $62d9: $01 $02 $03
	ld   bc, $2001                                   ; $62dc: $01 $01 $20
	nop                                              ; $62df: $00
	rlca                                             ; $62e0: $07
	add  $01                                         ; $62e1: $c6 $01
	ld   [bc], a                                     ; $62e3: $02
	inc  bc                                          ; $62e4: $03
	ld   bc, $2002                                   ; $62e5: $01 $02 $20
	nop                                              ; $62e8: $00
	ld   b, $f7                                      ; $62e9: $06 $f7
	ld   bc, $000f                                   ; $62eb: $01 $0f $00
	ld   bc, $0301                                   ; $62ee: $01 $01 $03
	ld   l, b                                        ; $62f1: $68
	ld   a, c                                        ; $62f2: $79
	ld   e, l                                        ; $62f3: $5d
	ld   [hl], d                                     ; $62f4: $72
	ld   h, l                                        ; $62f5: $65
	ld   l, l                                        ; $62f6: $6d
	and  b                                           ; $62f7: $a0
	ld   a, l                                        ; $62f8: $7d
	ld   d, d                                        ; $62f9: $52
	ld   [hl], h                                     ; $62fa: $74
	rst  $38                                         ; $62fb: $ff
	rst  $38                                         ; $62fc: $ff
	dec  c                                           ; $62fd: $0d
	nop                                              ; $62fe: $00
	ld   a, [bc]                                     ; $62ff: $0a
	dec  b                                           ; $6300: $05
	ld   b, b                                        ; $6301: $40
	rst  $38                                         ; $6302: $ff
	inc  bc                                          ; $6303: $03
	rst  $38                                         ; $6304: $ff
	ld   bc, $2801                                   ; $6305: $01 $01 $28
	nop                                              ; $6308: $00
	ld   b, $1a                                      ; $6309: $06 $1a
	ld   [bc], a                                     ; $630b: $02
	rrca                                             ; $630c: $0f
	nop                                              ; $630d: $00
	ld   bc, $0301                                   ; $630e: $01 $01 $03
	ld   l, b                                        ; $6311: $68
	ld   a, c                                        ; $6312: $79
	sbc  [hl]                                        ; $6313: $9e
	ld   e, l                                        ; $6314: $5d
	ld   [hl], d                                     ; $6315: $72
	ld   h, l                                        ; $6316: $65
	ld   l, l                                        ; $6317: $6d
	and  b                                           ; $6318: $a0
	ld   h, e                                        ; $6319: $63
	ld   d, d                                        ; $631a: $52
	ld   [hl], h                                     ; $631b: $74
	rst  $38                                         ; $631c: $ff
	rst  $38                                         ; $631d: $ff
	dec  c                                           ; $631e: $0d
	and  c                                           ; $631f: $a1
	ld   sp, hl                                      ; $6320: $f9
	db   $10                                         ; $6321: $10
	ld   h, e                                        ; $6322: $63
	ld   d, d                                        ; $6323: $52
	ld   [hl], h                                     ; $6324: $74
	ld   [hl], c                                     ; $6325: $71
	ld   [hl], h                                     ; $6326: $74
	rst  $38                                         ; $6327: $ff
	rst  $38                                         ; $6328: $ff
	dec  c                                           ; $6329: $0d
	nop                                              ; $632a: $00
	dec  b                                           ; $632b: $05
	ld   b, b                                        ; $632c: $40
	rst  $38                                         ; $632d: $ff
	inc  bc                                          ; $632e: $03
	rst  $38                                         ; $632f: $ff
	ld   bc, $2801                                   ; $6330: $01 $01 $28
	nop                                              ; $6333: $00
	ld   bc, $8492                                   ; $6334: $01 $92 $84
	ld   [hl], c                                     ; $6337: $71
	ld   l, a                                        ; $6338: $6f
	sub  c                                           ; $6339: $91
	pop  bc                                          ; $633a: $c1
	db   $e3                                         ; $633b: $e3
	ld   [hl], l                                     ; $633c: $75
	ld   h, l                                        ; $633d: $65
	sub  l                                           ; $633e: $95
	sbc  a                                           ; $633f: $9f
	dec  c                                           ; $6340: $0d
	nop                                              ; $6341: $00
	ld   a, [bc]                                     ; $6342: $0a
	ld   b, $30                                      ; $6343: $06 $30
	ld   bc, $000f                                   ; $6345: $01 $0f $00
	ld   bc, $0301                                   ; $6348: $01 $01 $03
	ld   l, b                                        ; $634b: $68
	ld   a, c                                        ; $634c: $79
	halt                                             ; $634d: $76
	rst  $38                                         ; $634e: $ff
	rst  $38                                         ; $634f: $ff
	dec  c                                           ; $6350: $0d
	ld   d, h                                        ; $6351: $54
	db   $fc                                         ; $6352: $fc
	and  c                                           ; $6353: $a1
	sbc  [hl]                                        ; $6354: $9e
	ld   e, [hl]                                     ; $6355: $5e
	ld   [hl], c                                     ; $6356: $71
	ld   l, l                                        ; $6357: $6d
	sbc  b                                           ; $6358: $98
	rst  $38                                         ; $6359: $ff
	rst  $38                                         ; $635a: $ff
	dec  c                                           ; $635b: $0d
	nop                                              ; $635c: $00
	dec  b                                           ; $635d: $05
	ld   b, b                                        ; $635e: $40
	rst  $38                                         ; $635f: $ff
	inc  bc                                          ; $6360: $03
	rst  $38                                         ; $6361: $ff
	ld   bc, $2801                                   ; $6362: $01 $01 $28
	nop                                              ; $6365: $00
	ld   bc, $7471                                   ; $6366: $01 $71 $74
	sbc  [hl]                                        ; $6369: $9e
	ld   l, a                                        ; $636a: $6f
	ld   e, d                                        ; $636b: $5a
	ld   d, h                                        ; $636c: $54
	ld   [hl], c                                     ; $636d: $71
	ld   [hl], h                                     ; $636e: $74
	ld   a, [$0dfa]                                  ; $636f: $fa $fa $0d
	nop                                              ; $6372: $00
	ld   a, [bc]                                     ; $6373: $0a
	ld   b, $30                                      ; $6374: $06 $30
	ld   bc, $000f                                   ; $6376: $01 $0f $00
	ld   bc, $0301                                   ; $6379: $01 $01 $03
	ld   l, b                                        ; $637c: $68
	ld   a, c                                        ; $637d: $79
	rst  $38                                         ; $637e: $ff
	rst  $38                                         ; $637f: $ff
	dec  c                                           ; $6380: $0d
	ld   [hl], a                                     ; $6381: $77
	ld   d, h                                        ; $6382: $54
	ld   h, l                                        ; $6383: $65
	sub  [hl]                                        ; $6384: $96
	ld   d, h                                        ; $6385: $54
	ld   e, c                                        ; $6386: $59
	rst  $38                                         ; $6387: $ff
	rst  $38                                         ; $6388: $ff
	rst  $38                                         ; $6389: $ff
	rst  $38                                         ; $638a: $ff
	dec  c                                           ; $638b: $0d
	nop                                              ; $638c: $00
	ld   a, [bc]                                     ; $638d: $0a
	dec  b                                           ; $638e: $05
	ld   b, b                                        ; $638f: $40
	rst  $38                                         ; $6390: $ff
	inc  bc                                          ; $6391: $03
	rst  $38                                         ; $6392: $ff
	ld   bc, $2801                                   ; $6393: $01 $01 $28
	nop                                              ; $6396: $00
	ld   b, $30                                      ; $6397: $06 $30
	ld   bc, $0419                                   ; $6399: $01 $19 $04
	inc  bc                                          ; $639c: $03
	cp   e                                           ; $639d: $bb
	db   $dd                                         ; $639e: $dd
	push af                                          ; $639f: $f5
	and  b                                           ; $63a0: $a0
	ld   a, l                                        ; $63a1: $7d
	ld   e, l                                        ; $63a2: $5d
	nop                                              ; $63a3: $00
	nop                                              ; $63a4: $00
	cp   e                                           ; $63a5: $bb
	xor  [hl]                                        ; $63a6: $ae
	push af                                          ; $63a7: $f5
	and  b                                           ; $63a8: $a0
	ld   e, c                                        ; $63a9: $59
	add  h                                           ; $63aa: $84
	sbc  c                                           ; $63ab: $99
	nop                                              ; $63ac: $00
	ld   bc, $ddbb                                   ; $63ad: $01 $bb $dd
	push af                                          ; $63b0: $f5
	and  b                                           ; $63b1: $a0
	ld   a, d                                        ; $63b2: $7a
	ld   e, [hl]                                     ; $63b3: $5e
	nop                                              ; $63b4: $00
	ld   [bc], a                                     ; $63b5: $02
	rlca                                             ; $63b6: $07
	ld   d, h                                        ; $63b7: $54
	ld   [bc], a                                     ; $63b8: $02
	ld   [bc], a                                     ; $63b9: $02
	inc  bc                                          ; $63ba: $03
	ld   bc, $2000                                   ; $63bb: $01 $00 $20
	nop                                              ; $63be: $00
	rlca                                             ; $63bf: $07
	ld   [hl], h                                     ; $63c0: $74
	ld   [bc], a                                     ; $63c1: $02
	ld   [bc], a                                     ; $63c2: $02
	inc  bc                                          ; $63c3: $03
	ld   bc, $2001                                   ; $63c4: $01 $01 $20
	nop                                              ; $63c7: $00
	rlca                                             ; $63c8: $07
	xor  b                                           ; $63c9: $a8
	ld   [bc], a                                     ; $63ca: $02
	ld   [bc], a                                     ; $63cb: $02
	inc  bc                                          ; $63cc: $03
	ld   bc, $2002                                   ; $63cd: $01 $02 $20
	nop                                              ; $63d0: $00
	ld   b, $da                                      ; $63d1: $06 $da
	ld   [bc], a                                     ; $63d3: $02
	rrca                                             ; $63d4: $0f
	nop                                              ; $63d5: $00
	ld   bc, $6b01                                   ; $63d6: $01 $01 $6b
	ld   h, l                                        ; $63d9: $65
	ld   [hl], h                                     ; $63da: $74
	sbc  [hl]                                        ; $63db: $9e
	cp   e                                           ; $63dc: $bb
	db   $dd                                         ; $63dd: $dd
	push af                                          ; $63de: $f5
	and  b                                           ; $63df: $a0
	ld   a, l                                        ; $63e0: $7d
	ld   d, d                                        ; $63e1: $52
	ld   [hl], h                                     ; $63e2: $74
	rst  $38                                         ; $63e3: $ff
	rst  $38                                         ; $63e4: $ff
	dec  c                                           ; $63e5: $0d
	nop                                              ; $63e6: $00
	ld   a, [bc]                                     ; $63e7: $0a
	dec  b                                           ; $63e8: $05
	ld   b, b                                        ; $63e9: $40
	rst  $38                                         ; $63ea: $ff
	inc  bc                                          ; $63eb: $03
	rst  $38                                         ; $63ec: $ff
	ld   bc, $2801                                   ; $63ed: $01 $01 $28
	nop                                              ; $63f0: $00
	ld   b, $fd                                      ; $63f1: $06 $fd
	ld   [bc], a                                     ; $63f3: $02
	rrca                                             ; $63f4: $0f
	nop                                              ; $63f5: $00
	ld   bc, $bb01                                   ; $63f6: $01 $01 $bb
	xor  [hl]                                        ; $63f9: $ae
	push af                                          ; $63fa: $f5
	and  b                                           ; $63fb: $a0
	ld   e, c                                        ; $63fc: $59
	add  h                                           ; $63fd: $84
	ld   [hl], c                                     ; $63fe: $71
	ld   [hl], h                                     ; $63ff: $74
	rst  $38                                         ; $6400: $ff
	rst  $38                                         ; $6401: $ff
	dec  c                                           ; $6402: $0d
	rst  $38                                         ; $6403: $ff
	rst  $38                                         ; $6404: $ff
	and  c                                           ; $6405: $a1
	ld   sp, hl                                      ; $6406: $f9
	db   $10                                         ; $6407: $10
	ld   a, b                                        ; $6408: $78
	and  c                                           ; $6409: $a1
	ld   [hl], l                                     ; $640a: $75
	ld   l, e                                        ; $640b: $6b
	and  c                                           ; $640c: $a1
	ld   a, b                                        ; $640d: $78
	sub  b                                           ; $640e: $90
	ld   a, h                                        ; $640f: $7c
	dec  c                                           ; $6410: $0d
	nop                                              ; $6411: $00
	dec  b                                           ; $6412: $05
	ld   b, b                                        ; $6413: $40
	rst  $38                                         ; $6414: $ff
	inc  bc                                          ; $6415: $03
	rst  $38                                         ; $6416: $ff
	ld   bc, $2801                                   ; $6417: $01 $01 $28
	nop                                              ; $641a: $00
	ld   bc, $8459                                   ; $641b: $01 $59 $84
	sbc  c                                           ; $641e: $99
	and  c                                           ; $641f: $a1
	ld   l, [hl]                                     ; $6420: $6e
	ld   sp, hl                                      ; $6421: $f9
	dec  c                                           ; $6422: $0d
	nop                                              ; $6423: $00
	ld   a, [bc]                                     ; $6424: $0a
	ld   b, $1a                                      ; $6425: $06 $1a
	ld   [bc], a                                     ; $6427: $02
	rrca                                             ; $6428: $0f
	nop                                              ; $6429: $00
	ld   bc, $6b01                                   ; $642a: $01 $01 $6b
	ld   h, l                                        ; $642d: $65
	ld   [hl], h                                     ; $642e: $74
	sbc  [hl]                                        ; $642f: $9e
	cp   e                                           ; $6430: $bb
	db   $dd                                         ; $6431: $dd
	push af                                          ; $6432: $f5
	and  b                                           ; $6433: $a0
	ld   a, d                                        ; $6434: $7a
	ld   e, [hl]                                     ; $6435: $5e
	sbc  a                                           ; $6436: $9f
	dec  c                                           ; $6437: $0d
	rst  $38                                         ; $6438: $ff
	rst  $38                                         ; $6439: $ff
	rst  $38                                         ; $643a: $ff
	rst  $38                                         ; $643b: $ff
	and  c                                           ; $643c: $a1
	ld   sp, hl                                      ; $643d: $f9
	dec  c                                           ; $643e: $0d
	nop                                              ; $643f: $00
	dec  b                                           ; $6440: $05
	ld   b, b                                        ; $6441: $40
	rst  $38                                         ; $6442: $ff
	inc  bc                                          ; $6443: $03
	rst  $38                                         ; $6444: $ff
	ld   bc, $2801                                   ; $6445: $01 $01 $28
	nop                                              ; $6448: $00
	ld   bc, $527a                                   ; $6449: $01 $7a $52
	ld   h, [hl]                                     ; $644c: $66
	sub  c                                           ; $644d: $91
	pop  bc                                          ; $644e: $c1
	db   $e3                                         ; $644f: $e3
	ld   [hl], l                                     ; $6450: $75
	ld   h, l                                        ; $6451: $65
	sub  l                                           ; $6452: $95
	ld   sp, hl                                      ; $6453: $f9
	dec  c                                           ; $6454: $0d
	nop                                              ; $6455: $00
	ld   a, [bc]                                     ; $6456: $0a
	ld   b, $1a                                      ; $6457: $06 $1a
	ld   [bc], a                                     ; $6459: $02
	rrca                                             ; $645a: $0f
	nop                                              ; $645b: $00
	ld   bc, $6b01                                   ; $645c: $01 $01 $6b
	ld   h, l                                        ; $645f: $65
	ld   [hl], h                                     ; $6460: $74
	rst  $38                                         ; $6461: $ff
	rst  $38                                         ; $6462: $ff
	dec  c                                           ; $6463: $0d
	ld   [hl], a                                     ; $6464: $77
	ld   d, h                                        ; $6465: $54
	ld   h, l                                        ; $6466: $65
	sub  [hl]                                        ; $6467: $96
	ld   d, h                                        ; $6468: $54
	ld   e, c                                        ; $6469: $59
	rst  $38                                         ; $646a: $ff
	rst  $38                                         ; $646b: $ff
	rst  $38                                         ; $646c: $ff
	rst  $38                                         ; $646d: $ff
	dec  c                                           ; $646e: $0d
	nop                                              ; $646f: $00
	ld   a, [bc]                                     ; $6470: $0a
	dec  b                                           ; $6471: $05
	ld   b, b                                        ; $6472: $40
	rst  $38                                         ; $6473: $ff
	inc  bc                                          ; $6474: $03
	rst  $38                                         ; $6475: $ff
	ld   bc, $2801                                   ; $6476: $01 $01 $28
	nop                                              ; $6479: $00
	ld   b, $1a                                      ; $647a: $06 $1a
	ld   [bc], a                                     ; $647c: $02
	add  hl, de                                      ; $647d: $19
	inc  b                                           ; $647e: $04
	inc  bc                                          ; $647f: $03
	jp   c, $c9ba                                    ; $6480: $da $ba $c9

	and  b                                           ; $6483: $a0
	inc  b                                           ; $6484: $04
	rlca                                             ; $6485: $07
	sbc  c                                           ; $6486: $99
	nop                                              ; $6487: $00
	nop                                              ; $6488: $00
	jp   c, $c9ed                                    ; $6489: $da $ed $c9

	and  b                                           ; $648c: $a0
	sub  h                                           ; $648d: $94
	sbc  c                                           ; $648e: $99
	adc  a                                           ; $648f: $8f
	sbc  c                                           ; $6490: $99
	nop                                              ; $6491: $00
	ld   bc, $bada                                   ; $6492: $01 $da $ba
	ret                                              ; $6495: $c9


	and  b                                           ; $6496: $a0
	ld   l, l                                        ; $6497: $6d
	ld   l, l                                        ; $6498: $6d
	adc  [hl]                                        ; $6499: $8e
	nop                                              ; $649a: $00
	ld   [bc], a                                     ; $649b: $02
	rlca                                             ; $649c: $07
	ld   a, [hl-]                                    ; $649d: $3a
	inc  bc                                          ; $649e: $03
	ld   [bc], a                                     ; $649f: $02
	inc  bc                                          ; $64a0: $03
	ld   bc, $2000                                   ; $64a1: $01 $00 $20
	nop                                              ; $64a4: $00
	rlca                                             ; $64a5: $07
	ld   d, a                                        ; $64a6: $57
	inc  bc                                          ; $64a7: $03
	ld   [bc], a                                     ; $64a8: $02
	inc  bc                                          ; $64a9: $03
	ld   bc, $2001                                   ; $64aa: $01 $01 $20
	nop                                              ; $64ad: $00
	rlca                                             ; $64ae: $07
	sub  l                                           ; $64af: $95
	inc  bc                                          ; $64b0: $03
	ld   [bc], a                                     ; $64b1: $02
	inc  bc                                          ; $64b2: $03
	ld   bc, $2002                                   ; $64b3: $01 $02 $20
	nop                                              ; $64b6: $00
	ld   b, $cb                                      ; $64b7: $06 $cb
	inc  bc                                          ; $64b9: $03
	rrca                                             ; $64ba: $0f
	nop                                              ; $64bb: $00
	ld   bc, $da01                                   ; $64bc: $01 $01 $da
	cp   d                                           ; $64bf: $ba
	ret                                              ; $64c0: $c9


	and  b                                           ; $64c1: $a0
	inc  b                                           ; $64c2: $04
	rlca                                             ; $64c3: $07
	ld   [hl], h                                     ; $64c4: $74
	halt                                             ; $64c5: $76
	rst  $38                                         ; $64c6: $ff
	rst  $38                                         ; $64c7: $ff
	dec  c                                           ; $64c8: $0d
	nop                                              ; $64c9: $00
	ld   a, [bc]                                     ; $64ca: $0a
	dec  b                                           ; $64cb: $05
	ld   b, b                                        ; $64cc: $40
	rst  $38                                         ; $64cd: $ff
	inc  bc                                          ; $64ce: $03
	rst  $38                                         ; $64cf: $ff
	ld   bc, $2801                                   ; $64d0: $01 $01 $28
	nop                                              ; $64d3: $00
	ld   b, $ea                                      ; $64d4: $06 $ea
	inc  bc                                          ; $64d6: $03
	rrca                                             ; $64d7: $0f
	nop                                              ; $64d8: $00
	ld   bc, $da01                                   ; $64d9: $01 $01 $da
	db   $ed                                         ; $64dc: $ed
	ret                                              ; $64dd: $c9


	and  b                                           ; $64de: $a0
	sub  h                                           ; $64df: $94
	sbc  c                                           ; $64e0: $99
	adc  a                                           ; $64e1: $8f
	ld   [hl], h                                     ; $64e2: $74
	halt                                             ; $64e3: $76
	rst  $38                                         ; $64e4: $ff
	rst  $38                                         ; $64e5: $ff
	dec  c                                           ; $64e6: $0d
	and  c                                           ; $64e7: $a1
	ld   sp, hl                                      ; $64e8: $f9
	db   $10                                         ; $64e9: $10
	cp   e                                           ; $64ea: $bb
	db   $dd                                         ; $64eb: $dd
	push af                                          ; $64ec: $f5
	and  b                                           ; $64ed: $a0
	ld   a, d                                        ; $64ee: $7a
	ld   d, d                                        ; $64ef: $52
	ld   h, [hl]                                     ; $64f0: $66
	sub  c                                           ; $64f1: $91
	pop  bc                                          ; $64f2: $c1
	db   $e3                                         ; $64f3: $e3
	dec  c                                           ; $64f4: $0d
	nop                                              ; $64f5: $00
	dec  b                                           ; $64f6: $05
	ld   b, b                                        ; $64f7: $40
	rst  $38                                         ; $64f8: $ff
	inc  bc                                          ; $64f9: $03
	rst  $38                                         ; $64fa: $ff
	ld   bc, $2801                                   ; $64fb: $01 $01 $28
	nop                                              ; $64fe: $00
	ld   bc, $6575                                   ; $64ff: $01 $75 $65
	sub  l                                           ; $6502: $95
	sbc  a                                           ; $6503: $9f
	inc  bc                                          ; $6504: $03
	ld   h, l                                        ; $6505: $65
	inc  b                                           ; $6506: $04
	rlca                                             ; $6507: $07
	and  b                                           ; $6508: $a0
	inc  b                                           ; $6509: $04
	rlca                                             ; $650a: $07
	ld   a, b                                        ; $650b: $78
	ld   d, d                                        ; $650c: $52
	halt                                             ; $650d: $76
	sbc  a                                           ; $650e: $9f
	dec  c                                           ; $650f: $0d
	nop                                              ; $6510: $00
	ld   a, [bc]                                     ; $6511: $0a
	ld   b, $fd                                      ; $6512: $06 $fd
	ld   [bc], a                                     ; $6514: $02
	rrca                                             ; $6515: $0f
	nop                                              ; $6516: $00
	ld   bc, $da01                                   ; $6517: $01 $01 $da
	cp   d                                           ; $651a: $ba
	ret                                              ; $651b: $c9


	and  b                                           ; $651c: $a0
	ld   l, l                                        ; $651d: $6d
	ld   l, l                                        ; $651e: $6d
	and  c                                           ; $651f: $a1
	ld   [hl], l                                     ; $6520: $75
	halt                                             ; $6521: $76
	rst  $38                                         ; $6522: $ff
	rst  $38                                         ; $6523: $ff
	dec  c                                           ; $6524: $0d
	and  c                                           ; $6525: $a1
	ld   sp, hl                                      ; $6526: $f9
	db   $10                                         ; $6527: $10
	ld   l, l                                        ; $6528: $6d
	ld   l, l                                        ; $6529: $6d
	and  c                                           ; $652a: $a1
	ld   h, [hl]                                     ; $652b: $66
	sub  c                                           ; $652c: $91
	pop  bc                                          ; $652d: $c1
	db   $e3                                         ; $652e: $e3
	ld   [hl], l                                     ; $652f: $75
	ld   h, l                                        ; $6530: $65
	sub  l                                           ; $6531: $95
	sbc  a                                           ; $6532: $9f
	dec  c                                           ; $6533: $0d
	nop                                              ; $6534: $00
	dec  b                                           ; $6535: $05
	ld   b, b                                        ; $6536: $40
	rst  $38                                         ; $6537: $ff
	inc  bc                                          ; $6538: $03
	rst  $38                                         ; $6539: $ff
	ld   bc, $2801                                   ; $653a: $01 $01 $28
	nop                                              ; $653d: $00
	ld   bc, $0704                                   ; $653e: $01 $04 $07
	ld   a, b                                        ; $6541: $78
	ld   e, e                                        ; $6542: $5b
	sub  c                                           ; $6543: $91
	sbc  a                                           ; $6544: $9f
	dec  c                                           ; $6545: $0d
	nop                                              ; $6546: $00
	ld   a, [bc]                                     ; $6547: $0a
	ld   b, $fd                                      ; $6548: $06 $fd
	ld   [bc], a                                     ; $654a: $02
	rrca                                             ; $654b: $0f
	nop                                              ; $654c: $00
	ld   bc, $ff01                                   ; $654d: $01 $01 $ff
	rst  $38                                         ; $6550: $ff
	ld   [hl], a                                     ; $6551: $77
	ld   d, h                                        ; $6552: $54
	ld   h, l                                        ; $6553: $65
	sub  [hl]                                        ; $6554: $96
	ld   d, h                                        ; $6555: $54
	ld   e, c                                        ; $6556: $59
	rst  $38                                         ; $6557: $ff
	rst  $38                                         ; $6558: $ff
	rst  $38                                         ; $6559: $ff
	rst  $38                                         ; $655a: $ff
	dec  c                                           ; $655b: $0d
	nop                                              ; $655c: $00
	ld   a, [bc]                                     ; $655d: $0a
	dec  b                                           ; $655e: $05
	ld   b, b                                        ; $655f: $40
	rst  $38                                         ; $6560: $ff
	inc  bc                                          ; $6561: $03
	rst  $38                                         ; $6562: $ff
	ld   bc, $2801                                   ; $6563: $01 $01 $28
	nop                                              ; $6566: $00
	ld   b, $fd                                      ; $6567: $06 $fd
	ld   [bc], a                                     ; $6569: $02
	add  hl, de                                      ; $656a: $19
	inc  b                                           ; $656b: $04
	inc  bc                                          ; $656c: $03
	inc  b                                           ; $656d: $04
	ld   l, d                                        ; $656e: $6a
	and  b                                           ; $656f: $a0
	halt                                             ; $6570: $76
	halt                                             ; $6571: $76
	ld   a, h                                        ; $6572: $7c
	ld   d, [hl]                                     ; $6573: $56
	sbc  c                                           ; $6574: $99
	nop                                              ; $6575: $00

Call_055_6576:
	nop                                              ; $6576: $00
	inc  b                                           ; $6577: $04
	adc  a                                           ; $6578: $8f
	and  b                                           ; $6579: $a0
	halt                                             ; $657a: $76
	halt                                             ; $657b: $76
	ld   a, h                                        ; $657c: $7c
	ld   d, [hl]                                     ; $657d: $56
	sbc  c                                           ; $657e: $99
	nop                                              ; $657f: $00
	ld   bc, $7877                                   ; $6580: $01 $77 $78
	ld   l, l                                        ; $6583: $6d
	halt                                             ; $6584: $76
	ld   h, c                                        ; $6585: $61
	ld   h, c                                        ; $6586: $61
	sbc  e                                           ; $6587: $9b
	ld   d, [hl]                                     ; $6588: $56
	sbc  c                                           ; $6589: $99
	nop                                              ; $658a: $00
	ld   [bc], a                                     ; $658b: $02
	rlca                                             ; $658c: $07
	ld   a, [hl+]                                    ; $658d: $2a
	inc  b                                           ; $658e: $04
	ld   [bc], a                                     ; $658f: $02
	inc  bc                                          ; $6590: $03
	ld   bc, $2000                                   ; $6591: $01 $00 $20
	nop                                              ; $6594: $00
	rlca                                             ; $6595: $07
	ld   e, l                                        ; $6596: $5d
	inc  b                                           ; $6597: $04
	ld   [bc], a                                     ; $6598: $02
	inc  bc                                          ; $6599: $03
	ld   bc, $2001                                   ; $659a: $01 $01 $20
	nop                                              ; $659d: $00
	rlca                                             ; $659e: $07
	and  e                                           ; $659f: $a3
	inc  b                                           ; $65a0: $04
	ld   [bc], a                                     ; $65a1: $02
	inc  bc                                          ; $65a2: $03
	ld   bc, $2002                                   ; $65a3: $01 $02 $20
	nop                                              ; $65a6: $00
	ld   b, $00                                      ; $65a7: $06 $00
	dec  b                                           ; $65a9: $05
	rrca                                             ; $65aa: $0f
	nop                                              ; $65ab: $00
	ld   bc, $0301                                   ; $65ac: $01 $01 $03
	dec  c                                           ; $65af: $0d
	inc  bc                                          ; $65b0: $03
	ld   h, l                                        ; $65b1: $65
	ld   h, b                                        ; $65b2: $60
	ld   a, c                                        ; $65b3: $79
	sbc  [hl]                                        ; $65b4: $9e
	inc  b                                           ; $65b5: $04
	ld   l, d                                        ; $65b6: $6a
	and  b                                           ; $65b7: $a0
	halt                                             ; $65b8: $76
	halt                                             ; $65b9: $76
	ld   a, h                                        ; $65ba: $7c
	ld   d, [hl]                                     ; $65bb: $56
	sbc  c                                           ; $65bc: $99
	halt                                             ; $65bd: $76
	dec  c                                           ; $65be: $0d
	rst  $38                                         ; $65bf: $ff
	rst  $38                                         ; $65c0: $ff
	rst  $38                                         ; $65c1: $ff
	rst  $38                                         ; $65c2: $ff
	dec  c                                           ; $65c3: $0d
	nop                                              ; $65c4: $00
	dec  b                                           ; $65c5: $05
	ld   b, b                                        ; $65c6: $40
	rst  $38                                         ; $65c7: $ff
	inc  bc                                          ; $65c8: $03
	rst  $38                                         ; $65c9: $ff
	ld   bc, $2801                                   ; $65ca: $01 $01 $28
	nop                                              ; $65cd: $00
	ld   bc, $6596                                   ; $65ce: $01 $96 $65
	ld   a, [$2910]                                  ; $65d1: $fa $10 $29
	dec  h                                           ; $65d4: $25
	ld   l, [hl]                                     ; $65d5: $6e
	ld   a, [$000d]                                  ; $65d6: $fa $0d $00
	ld   a, [bc]                                     ; $65d9: $0a
	ld   b, $28                                      ; $65da: $06 $28
	dec  b                                           ; $65dc: $05
	rrca                                             ; $65dd: $0f
	nop                                              ; $65de: $00
	ld   bc, $0301                                   ; $65df: $01 $01 $03
	dec  c                                           ; $65e2: $0d
	inc  bc                                          ; $65e3: $03
	ld   h, l                                        ; $65e4: $65
	ld   h, b                                        ; $65e5: $60
	ld   a, c                                        ; $65e6: $79
	sbc  [hl]                                        ; $65e7: $9e
	inc  b                                           ; $65e8: $04
	adc  a                                           ; $65e9: $8f
	and  b                                           ; $65ea: $a0
	halt                                             ; $65eb: $76
	halt                                             ; $65ec: $76
	ld   a, h                                        ; $65ed: $7c
	ld   d, [hl]                                     ; $65ee: $56
	sbc  c                                           ; $65ef: $99
	rst  $38                                         ; $65f0: $ff
	rst  $38                                         ; $65f1: $ff
	dec  c                                           ; $65f2: $0d
	rst  $38                                         ; $65f3: $ff
	rst  $38                                         ; $65f4: $ff
	rst  $38                                         ; $65f5: $ff
	rst  $38                                         ; $65f6: $ff
	and  c                                           ; $65f7: $a1
	ld   sp, hl                                      ; $65f8: $f9
	db   $10                                         ; $65f9: $10
	inc  b                                           ; $65fa: $04
	adc  a                                           ; $65fb: $8f
	ld   a, h                                        ; $65fc: $7c
	inc  bc                                          ; $65fd: $03
	ld   a, h                                        ; $65fe: $7c
	dec  b                                           ; $65ff: $05
	ld   de, $a178                                   ; $6600: $11 $78 $a1
	ld   e, c                                        ; $6603: $59
	dec  c                                           ; $6604: $0d
	nop                                              ; $6605: $00
	dec  b                                           ; $6606: $05
	ld   b, b                                        ; $6607: $40
	rst  $38                                         ; $6608: $ff
	inc  bc                                          ; $6609: $03
	rst  $38                                         ; $660a: $ff
	ld   bc, $2801                                   ; $660b: $01 $01 $28
	nop                                              ; $660e: $00
	ld   bc, $7465                                   ; $660f: $01 $65 $74
	sbc  c                                           ; $6612: $99
	inc  b                                           ; $6613: $04
	ld   a, d                                        ; $6614: $7a
	ld   [bc], a                                     ; $6615: $02
	ld   a, e                                        ; $6616: $7b
	ld   h, [hl]                                     ; $6617: $66
	sub  c                                           ; $6618: $91
	ld   a, b                                        ; $6619: $78
	ld   d, d                                        ; $661a: $52
	sub  [hl]                                        ; $661b: $96
	sbc  a                                           ; $661c: $9f
	dec  c                                           ; $661d: $0d
	nop                                              ; $661e: $00
	ld   a, [bc]                                     ; $661f: $0a
	ld   b, $ea                                      ; $6620: $06 $ea
	inc  bc                                          ; $6622: $03
	rrca                                             ; $6623: $0f
	nop                                              ; $6624: $00
	ld   bc, $0301                                   ; $6625: $01 $01 $03
	dec  c                                           ; $6628: $0d
	inc  bc                                          ; $6629: $03
	ld   h, l                                        ; $662a: $65
	ld   h, b                                        ; $662b: $60
	ld   a, c                                        ; $662c: $79
	rst  $38                                         ; $662d: $ff
	rst  $38                                         ; $662e: $ff
	dec  c                                           ; $662f: $0d
	ld   h, c                                        ; $6630: $61
	ld   l, a                                        ; $6631: $6f
	sub  a                                           ; $6632: $97
	ld   a, c                                        ; $6633: $79
	ld   e, b                                        ; $6634: $58
	sbc  l                                           ; $6635: $9d
	ld   h, a                                        ; $6636: $67
	ld   e, b                                        ; $6637: $58
	inc  b                                           ; $6638: $04
	ld   a, b                                        ; $6639: $78
	and  b                                           ; $663a: $a0
	sbc  [hl]                                        ; $663b: $9e
	dec  c                                           ; $663c: $0d
	ld   [hl], a                                     ; $663d: $77
	ld   a, b                                        ; $663e: $78
	ld   l, l                                        ; $663f: $6d
	halt                                             ; $6640: $76
	inc  bc                                          ; $6641: $03
	ld   [hl], l                                     ; $6642: $75
	ld   b, $02                                      ; $6643: $06 $02
	sbc  c                                           ; $6645: $99
	ld   a, [$000d]                                  ; $6646: $fa $0d $00
	ld   a, [bc]                                     ; $6649: $0a
	ld   bc, $fc78                                   ; $664a: $01 $78 $fc
	and  c                                           ; $664d: $a1
	ld   [hl], h                                     ; $664e: $74
	ld   [bc], a                                     ; $664f: $02
	sbc  l                                           ; $6650: $9d
	ld   [hl], c                                     ; $6651: $71
	ld   [hl], h                                     ; $6652: $74
	sbc  c                                           ; $6653: $99
	inc  b                                           ; $6654: $04
	ld   a, d                                        ; $6655: $7a
	ld   [bc], a                                     ; $6656: $02
	ld   a, e                                        ; $6657: $7b
	ld   h, [hl]                                     ; $6658: $66
	sub  c                                           ; $6659: $91
	dec  c                                           ; $665a: $0d
	ld   a, b                                        ; $665b: $78
	ld   d, d                                        ; $665c: $52
	and  c                                           ; $665d: $a1
	ld   l, [hl]                                     ; $665e: $6e
	sub  [hl]                                        ; $665f: $96
	ld   a, b                                        ; $6660: $78
	sbc  a                                           ; $6661: $9f
	dec  c                                           ; $6662: $0d
	nop                                              ; $6663: $00
	dec  b                                           ; $6664: $05
	ld   b, b                                        ; $6665: $40
	rst  $38                                         ; $6666: $ff
	inc  bc                                          ; $6667: $03
	rst  $38                                         ; $6668: $ff
	ld   bc, $2801                                   ; $6669: $01 $01 $28
	nop                                              ; $666c: $00
	ld   bc, $2805                                   ; $666d: $01 $05 $28
	ld   e, d                                        ; $6670: $5a
	ld   a, b                                        ; $6671: $78
	ld   e, e                                        ; $6672: $5b
	sub  c                                           ; $6673: $91
	ld   e, b                                        ; $6674: $58
	ld   e, l                                        ; $6675: $5d
	sbc  d                                           ; $6676: $9a
	sbc  c                                           ; $6677: $99
	ld   l, h                                        ; $6678: $6c
	sbc  a                                           ; $6679: $9f
	dec  c                                           ; $667a: $0d
	nop                                              ; $667b: $00
	ld   a, [bc]                                     ; $667c: $0a
	ld   b, $ea                                      ; $667d: $06 $ea
	inc  bc                                          ; $667f: $03
	rrca                                             ; $6680: $0f
	nop                                              ; $6681: $00
	ld   bc, $0301                                   ; $6682: $01 $01 $03
	dec  c                                           ; $6685: $0d
	inc  bc                                          ; $6686: $03
	ld   h, l                                        ; $6687: $65
	ld   h, b                                        ; $6688: $60
	ld   a, c                                        ; $6689: $79
	rst  $38                                         ; $668a: $ff
	rst  $38                                         ; $668b: $ff
	dec  c                                           ; $668c: $0d
	rst  $38                                         ; $668d: $ff
	rst  $38                                         ; $668e: $ff
	rst  $38                                         ; $668f: $ff
	rst  $38                                         ; $6690: $ff
	ld   [hl], a                                     ; $6691: $77
	ld   d, h                                        ; $6692: $54
	ld   h, l                                        ; $6693: $65
	sub  [hl]                                        ; $6694: $96
	ld   d, h                                        ; $6695: $54
	ld   e, c                                        ; $6696: $59
	rst  $38                                         ; $6697: $ff
	rst  $38                                         ; $6698: $ff
	dec  c                                           ; $6699: $0d
	nop                                              ; $669a: $00
	ld   a, [bc]                                     ; $669b: $0a
	dec  b                                           ; $669c: $05
	ld   b, b                                        ; $669d: $40
	rst  $38                                         ; $669e: $ff
	inc  bc                                          ; $669f: $03
	rst  $38                                         ; $66a0: $ff
	ld   bc, $2801                                   ; $66a1: $01 $01 $28
	nop                                              ; $66a4: $00
	ld   b, $ea                                      ; $66a5: $06 $ea
	inc  bc                                          ; $66a7: $03
	rlca                                             ; $66a8: $07
	ld   b, e                                        ; $66a9: $43
	dec  b                                           ; $66aa: $05
	inc  bc                                          ; $66ab: $03
	rst  $38                                         ; $66ac: $ff
	ld   bc, $2005                                   ; $66ad: $01 $05 $20
	nop                                              ; $66b0: $00
	rlca                                             ; $66b1: $07
	adc  b                                           ; $66b2: $88
	dec  b                                           ; $66b3: $05
	inc  bc                                          ; $66b4: $03
	rst  $38                                         ; $66b5: $ff
	ld   bc, $2006                                   ; $66b6: $01 $06 $20
	nop                                              ; $66b9: $00
	rlca                                             ; $66ba: $07
	jp   hl                                          ; $66bb: $e9


	dec  b                                           ; $66bc: $05
	inc  bc                                          ; $66bd: $03
	rst  $38                                         ; $66be: $ff
	ld   bc, $2507                                   ; $66bf: $01 $07 $25
	nop                                              ; $66c2: $00
	inc  c                                           ; $66c3: $0c
	ld   [bc], a                                     ; $66c4: $02
	ld   c, $04                                      ; $66c5: $0e $04
	rrca                                             ; $66c7: $0f
	nop                                              ; $66c8: $00
	ld   bc, $a301                                   ; $66c9: $01 $01 $a3
	and  l                                           ; $66cc: $a5
	db   $ec                                         ; $66cd: $ec
	cp   d                                           ; $66ce: $ba
	sbc  a                                           ; $66cf: $9f
	dec  c                                           ; $66d0: $0d
	ld   e, b                                        ; $66d1: $58
	ld   a, l                                        ; $66d2: $7d
	sub  [hl]                                        ; $66d3: $96
	ld   d, h                                        ; $66d4: $54
	ld   a, [$000d]                                  ; $66d5: $fa $0d $00
	ld   a, [bc]                                     ; $66d8: $0a
	inc  e                                           ; $66d9: $1c
	inc  b                                           ; $66da: $04
	ld   bc, $1d01                                   ; $66db: $01 $01 $1d
	ld   b, b                                        ; $66de: $40
	inc  d                                           ; $66df: $14
	inc  bc                                          ; $66e0: $03
	inc  d                                           ; $66e1: $14
	ld   bc, $2802                                   ; $66e2: $01 $02 $28
	nop                                              ; $66e5: $00
	ld   bc, $7d58                                   ; $66e6: $01 $58 $7d
	sub  [hl]                                        ; $66e9: $96
	ld   d, h                                        ; $66ea: $54
	sbc  [hl]                                        ; $66eb: $9e
	ld   l, a                                        ; $66ec: $6f
	ld   d, d                                        ; $66ed: $52
	ld   [bc], a                                     ; $66ee: $02
	inc  de                                          ; $66ef: $13
	ld   l, a                                        ; $66f0: $6f
	sub  c                                           ; $66f1: $91
	and  c                                           ; $66f2: $a1
	dec  c                                           ; $66f3: $0d
	ld   h, [hl]                                     ; $66f4: $66
	sub  c                                           ; $66f5: $91
	sbc  [hl]                                        ; $66f6: $9e
	ld   [bc], a                                     ; $66f7: $02
	ld   a, a                                        ; $66f8: $7f
	ld   h, c                                        ; $66f9: $61
	ld   d, h                                        ; $66fa: $54
	ld   a, [$000d]                                  ; $66fb: $fa $0d $00
	ld   a, [bc]                                     ; $66fe: $0a
	dec  c                                           ; $66ff: $0d
	nop                                              ; $6700: $00
	nop                                              ; $6701: $00
	rrca                                             ; $6702: $0f
	nop                                              ; $6703: $00
	ld   bc, $1506                                   ; $6704: $01 $06 $15
	ld   b, $0c                                      ; $6707: $06 $0c
	ld   [bc], a                                     ; $6709: $02
	ld   c, $04                                      ; $670a: $0e $04
	rrca                                             ; $670c: $0f
	nop                                              ; $670d: $00
	ld   bc, $040d                                   ; $670e: $01 $0d $04
	nop                                              ; $6711: $00
	ld   bc, $7d58                                   ; $6712: $01 $58 $7d
	sub  [hl]                                        ; $6715: $96
	ld   d, h                                        ; $6716: $54
	sbc  [hl]                                        ; $6717: $9e
	and  e                                           ; $6718: $a3
	and  l                                           ; $6719: $a5
	db   $ec                                         ; $671a: $ec
	cp   d                                           ; $671b: $ba
	sbc  a                                           ; $671c: $9f
	dec  c                                           ; $671d: $0d
	ld   h, d                                        ; $671e: $62
	adc  a                                           ; $671f: $8f
	and  c                                           ; $6720: $a1
	ld   a, e                                        ; $6721: $7b
	sbc  [hl]                                        ; $6722: $9e
	inc  b                                           ; $6723: $04
	rla                                              ; $6724: $17
	ld   l, l                                        ; $6725: $6d
	ld   l, c                                        ; $6726: $69
	ld   l, a                                        ; $6727: $6f
	sub  c                                           ; $6728: $91
	ld   [hl], c                                     ; $6729: $71
	ld   [hl], h                                     ; $672a: $74
	sbc  a                                           ; $672b: $9f
	dec  c                                           ; $672c: $0d
	nop                                              ; $672d: $00
	ld   a, [bc]                                     ; $672e: $0a
	inc  e                                           ; $672f: $1c
	inc  b                                           ; $6730: $04
	nop                                              ; $6731: $00
	nop                                              ; $6732: $00
	ld   bc, $526e                                   ; $6733: $01 $6e $52
	ld   h, [hl]                                     ; $6736: $66
	sub  l                                           ; $6737: $95
	ld   d, h                                        ; $6738: $54
	add  h                                           ; $6739: $84
	ld   l, [hl]                                     ; $673a: $6e
	sub  [hl]                                        ; $673b: $96
	sbc  a                                           ; $673c: $9f
	dec  c                                           ; $673d: $0d
	and  e                                           ; $673e: $a3
	and  l                                           ; $673f: $a5
	db   $ec                                         ; $6740: $ec
	cp   d                                           ; $6741: $ba
	sub  b                                           ; $6742: $90
	sbc  [hl]                                        ; $6743: $9e
	dec  c                                           ; $6744: $0d
	ld   d, d                                        ; $6745: $52
	adc  h                                           ; $6746: $8c
	sbc  [hl]                                        ; $6747: $9e
	ld   e, e                                        ; $6748: $5b
	ld   l, l                                        ; $6749: $6d
	halt                                             ; $674a: $76
	ld   h, c                                        ; $674b: $61
	ld   l, [hl]                                     ; $674c: $6e
	ld   e, c                                        ; $674d: $59
	sub  a                                           ; $674e: $97
	sbc  a                                           ; $674f: $9f
	dec  c                                           ; $6750: $0d
	nop                                              ; $6751: $00
	ld   a, [bc]                                     ; $6752: $0a
	ld   bc, $9166                                   ; $6753: $01 $66 $91
	sbc  [hl]                                        ; $6756: $9e
	xor  $c4                                         ; $6757: $ee $c4
	push bc                                          ; $6759: $c5
	or   l                                           ; $675a: $b5
	ei                                               ; $675b: $fb
	ld   a, [$000d]                                  ; $675c: $fa $0d $00
	ld   a, [bc]                                     ; $675f: $0a
	dec  c                                           ; $6760: $0d
	nop                                              ; $6761: $00
	nop                                              ; $6762: $00
	rrca                                             ; $6763: $0f
	nop                                              ; $6764: $00
	ld   bc, $1506                                   ; $6765: $01 $06 $15
	ld   b, $0c                                      ; $6768: $06 $0c
	ld   [bc], a                                     ; $676a: $02
	ld   c, $04                                      ; $676b: $0e $04
	inc  e                                           ; $676d: $1c
	inc  b                                           ; $676e: $04
	rlca                                             ; $676f: $07
	rlca                                             ; $6770: $07
	dec  e                                           ; $6771: $1d
	ld   b, b                                        ; $6772: $40
	inc  d                                           ; $6773: $14
	inc  bc                                          ; $6774: $03
	inc  d                                           ; $6775: $14
	ld   bc, $2903                                   ; $6776: $01 $03 $29
	nop                                              ; $6779: $00
	ld   bc, $526f                                   ; $677a: $01 $6f $52
	ld   [bc], a                                     ; $677d: $02
	inc  de                                          ; $677e: $13
	ld   l, a                                        ; $677f: $6f
	sub  c                                           ; $6780: $91
	and  c                                           ; $6781: $a1
	sbc  a                                           ; $6782: $9f
	dec  c                                           ; $6783: $0d
	ld   e, b                                        ; $6784: $58
	ld   l, e                                        ; $6785: $6b
	ld   d, d                                        ; $6786: $52
	rst  $38                                         ; $6787: $ff
	rst  $38                                         ; $6788: $ff
	dec  c                                           ; $6789: $0d
	nop                                              ; $678a: $00
	ld   a, [bc]                                     ; $678b: $0a
	dec  c                                           ; $678c: $0d
	nop                                              ; $678d: $00
	nop                                              ; $678e: $00
	rrca                                             ; $678f: $0f
	nop                                              ; $6790: $00
	ld   bc, $1506                                   ; $6791: $01 $06 $15
	ld   b, $0c                                      ; $6794: $06 $0c
	ld   [bc], a                                     ; $6796: $02
	ld   c, $7d                                      ; $6797: $0e $7d
	inc  e                                           ; $6799: $1c
	inc  b                                           ; $679a: $04
	ld   b, $06                                      ; $679b: $06 $06
	ld   bc, $6267                                   ; $679d: $01 $67 $62
	ld   d, d                                        ; $67a0: $52
	ld   a, c                                        ; $67a1: $79
	ld   e, h                                        ; $67a2: $5c
	sub  d                                           ; $67a3: $92
	ld   e, c                                        ; $67a4: $59
	rst  $38                                         ; $67a5: $ff
	rst  $38                                         ; $67a6: $ff
	dec  c                                           ; $67a7: $0d
	adc  l                                           ; $67a8: $8d
	and  c                                           ; $67a9: $a1
	ld   a, b                                        ; $67aa: $78
	call z, $dec4                                    ; $67ab: $cc $c4 $de
	push af                                          ; $67ae: $f5
	ld   h, [hl]                                     ; $67af: $66
	and  c                                           ; $67b0: $a1
	dec  c                                           ; $67b1: $0d
	ld   a, b                                        ; $67b2: $78
	and  c                                           ; $67b3: $a1
	ld   l, [hl]                                     ; $67b4: $6e
	ld   a, e                                        ; $67b5: $7b
	rst  $38                                         ; $67b6: $ff
	rst  $38                                         ; $67b7: $ff
	dec  c                                           ; $67b8: $0d
	nop                                              ; $67b9: $00
	ld   a, [bc]                                     ; $67ba: $0a
	inc  e                                           ; $67bb: $1c
	inc  b                                           ; $67bc: $04
	nop                                              ; $67bd: $00
	nop                                              ; $67be: $00
	ld   bc, $786f                                   ; $67bf: $01 $6f $78
	adc  l                                           ; $67c2: $8d
	ld   a, c                                        ; $67c3: $79
	and  e                                           ; $67c4: $a3
	and  l                                           ; $67c5: $a5
	db   $ec                                         ; $67c6: $ec
	cp   d                                           ; $67c7: $ba
	ld   a, l                                        ; $67c8: $7d
	dec  c                                           ; $67c9: $0d
	sub  $eb                                         ; $67ca: $d6 $eb
	push af                                          ; $67cc: $f5
	cp   d                                           ; $67cd: $ba
	ld   h, [hl]                                     ; $67ce: $66
	and  c                                           ; $67cf: $a1
	ld   a, b                                        ; $67d0: $78
	and  c                                           ; $67d1: $a1
	ld   l, [hl]                                     ; $67d2: $6e
	sub  [hl]                                        ; $67d3: $96
	sbc  a                                           ; $67d4: $9f
	dec  c                                           ; $67d5: $0d
	nop                                              ; $67d6: $00
	ld   a, [bc]                                     ; $67d7: $0a
	add  hl, de                                      ; $67d8: $19
	dec  b                                           ; $67d9: $05
	inc  bc                                          ; $67da: $03
	ld   l, e                                        ; $67db: $6b
	ld   d, h                                        ; $67dc: $54
	ld   a, b                                        ; $67dd: $78
	and  c                                           ; $67de: $a1
	ld   l, [hl]                                     ; $67df: $6e
	nop                                              ; $67e0: $00
	nop                                              ; $67e1: $00
	jp   nc, Jump_055_5af5                           ; $67e2: $d2 $f5 $5a

	sbc  [hl]                                        ; $67e5: $9e
	ld   e, c                                        ; $67e6: $59
	ld   l, l                                        ; $67e7: $6d
	ld   d, d                                        ; $67e8: $52
	sub  [hl]                                        ; $67e9: $96
	ld   a, e                                        ; $67ea: $7b
	nop                                              ; $67eb: $00
	ld   bc, $a18d                                   ; $67ec: $01 $8d $a1
	ld   a, b                                        ; $67ef: $78
	ld   [bc], a                                     ; $67f0: $02
	rlc  e                                           ; $67f1: $cb $03
	add  d                                           ; $67f3: $82
	ld   l, [hl]                                     ; $67f4: $6e
	sub  [hl]                                        ; $67f5: $96
	ld   a, e                                        ; $67f6: $7b
	nop                                              ; $67f7: $00
	ld   [bc], a                                     ; $67f8: $02
	rlca                                             ; $67f9: $07
	sub  a                                           ; $67fa: $97
	ld   b, $02                                      ; $67fb: $06 $02
	inc  bc                                          ; $67fd: $03
	ld   bc, $2000                                   ; $67fe: $01 $00 $20
	nop                                              ; $6801: $00
	rlca                                             ; $6802: $07
	db   $db                                         ; $6803: $db
	ld   b, $02                                      ; $6804: $06 $02
	inc  bc                                          ; $6806: $03
	ld   bc, $2001                                   ; $6807: $01 $01 $20
	nop                                              ; $680a: $00
	rlca                                             ; $680b: $07
	dec  de                                          ; $680c: $1b
	rlca                                             ; $680d: $07
	ld   [bc], a                                     ; $680e: $02
	inc  bc                                          ; $680f: $03
	ld   bc, $2002                                   ; $6810: $01 $02 $20
	nop                                              ; $6813: $00
	ld   b, $63                                      ; $6814: $06 $63
	rlca                                             ; $6816: $07
	rrca                                             ; $6817: $0f
	nop                                              ; $6818: $00
	ld   bc, $6b01                                   ; $6819: $01 $01 $6b
	ld   d, h                                        ; $681c: $54
	ld   a, b                                        ; $681d: $78
	and  c                                           ; $681e: $a1
	ld   l, [hl]                                     ; $681f: $6e
	rst  $38                                         ; $6820: $ff
	rst  $38                                         ; $6821: $ff
	dec  c                                           ; $6822: $0d
	ld   [hl], a                                     ; $6823: $77
	ld   d, h                                        ; $6824: $54
	sbc  b                                           ; $6825: $98
	ld   [hl], l                                     ; $6826: $75
	sbc  [hl]                                        ; $6827: $9e
	ld   e, c                                        ; $6828: $59
	sbc  l                                           ; $6829: $9d
	ld   d, d                                        ; $682a: $52
	ld   d, d                                        ; $682b: $52
	sbc  l                                           ; $682c: $9d
	ld   e, a                                        ; $682d: $5f
	ld   l, [hl]                                     ; $682e: $6e
	sbc  a                                           ; $682f: $9f
	dec  c                                           ; $6830: $0d
	nop                                              ; $6831: $00
	ld   a, [bc]                                     ; $6832: $0a
	inc  e                                           ; $6833: $1c
	inc  b                                           ; $6834: $04
	dec  b                                           ; $6835: $05
	dec  b                                           ; $6836: $05
	dec  e                                           ; $6837: $1d
	ld   b, b                                        ; $6838: $40
	inc  d                                           ; $6839: $14
	inc  bc                                          ; $683a: $03
	inc  d                                           ; $683b: $14
	ld   bc, $2802                                   ; $683c: $01 $02 $28
	nop                                              ; $683f: $00
	ld   bc, $d9a9                                   ; $6840: $01 $a9 $d9
	reti                                             ; $6843: $d9


	rst  $38                                         ; $6844: $ff
	rst  $38                                         ; $6845: $ff
	dec  c                                           ; $6846: $0d
	ld   l, a                                        ; $6847: $6f
	ld   d, d                                        ; $6848: $52
	ld   [bc], a                                     ; $6849: $02
	inc  de                                          ; $684a: $13
	ld   l, a                                        ; $684b: $6f
	sub  c                                           ; $684c: $91
	and  c                                           ; $684d: $a1
	sbc  [hl]                                        ; $684e: $9e
	ld   e, b                                        ; $684f: $58
	ld   h, [hl]                                     ; $6850: $66
	sub  l                                           ; $6851: $95
	ld   d, h                                        ; $6852: $54
	ld   l, b                                        ; $6853: $68
	sbc  a                                           ; $6854: $9f
	dec  c                                           ; $6855: $0d
	nop                                              ; $6856: $00
	ld   a, [bc]                                     ; $6857: $0a
	ld   b, $63                                      ; $6858: $06 $63
	rlca                                             ; $685a: $07
	rrca                                             ; $685b: $0f
	nop                                              ; $685c: $00
	ld   bc, $d201                                   ; $685d: $01 $01 $d2
	push af                                          ; $6860: $f5
	ld   e, d                                        ; $6861: $5a
	sbc  [hl]                                        ; $6862: $9e
	ld   e, c                                        ; $6863: $59
	ld   l, l                                        ; $6864: $6d
	ld   d, d                                        ; $6865: $52
	sub  [hl]                                        ; $6866: $96
	ld   a, e                                        ; $6867: $7b
	sbc  a                                           ; $6868: $9f
	dec  c                                           ; $6869: $0d
	sub  $eb                                         ; $686a: $d6 $eb
	push af                                          ; $686c: $f5
	cp   d                                           ; $686d: $ba
	ld   [hl], c                                     ; $686e: $71
	ld   [hl], h                                     ; $686f: $74
	rst  $38                                         ; $6870: $ff
	rst  $38                                         ; $6871: $ff
	dec  c                                           ; $6872: $0d
	nop                                              ; $6873: $00
	ld   a, [bc]                                     ; $6874: $0a
	inc  e                                           ; $6875: $1c
	inc  b                                           ; $6876: $04
	nop                                              ; $6877: $00
	nop                                              ; $6878: $00
	ld   bc, $546b                                   ; $6879: $01 $6b $54
	ld   l, [hl]                                     ; $687c: $6e
	sub  [hl]                                        ; $687d: $96
	sbc  a                                           ; $687e: $9f
	dec  c                                           ; $687f: $0d
	ld   [hl], l                                     ; $6880: $75
	sub  b                                           ; $6881: $90
	sub  d                                           ; $6882: $92
	sbc  l                                           ; $6883: $9d
	sub  a                                           ; $6884: $97
	ld   e, c                                        ; $6885: $59
	ld   d, d                                        ; $6886: $52
	or   b                                           ; $6887: $b0
	rst  $28                                         ; $6888: $ef
	pop  af                                          ; $6889: $f1
	call nz, $f5b6                                   ; $688a: $c4 $b6 $f5
	dec  c                                           ; $688d: $0d
	sub  b                                           ; $688e: $90
	ld   d, b                                        ; $688f: $50
	sbc  c                                           ; $6890: $99
	and  c                                           ; $6891: $a1
	ld   l, [hl]                                     ; $6892: $6e
	sub  [hl]                                        ; $6893: $96
	sbc  a                                           ; $6894: $9f
	dec  c                                           ; $6895: $0d
	nop                                              ; $6896: $00
	ld   a, [bc]                                     ; $6897: $0a
	ld   b, $63                                      ; $6898: $06 $63
	rlca                                             ; $689a: $07
	rrca                                             ; $689b: $0f
	nop                                              ; $689c: $00
	ld   bc, $8d01                                   ; $689d: $01 $01 $8d
	and  c                                           ; $68a0: $a1
	ld   a, b                                        ; $68a1: $78
	ld   [bc], a                                     ; $68a2: $02
	rlc  e                                           ; $68a3: $cb $03
	add  d                                           ; $68a5: $82
	ld   l, [hl]                                     ; $68a6: $6e
	sub  [hl]                                        ; $68a7: $96
	ld   a, e                                        ; $68a8: $7b
	sbc  a                                           ; $68a9: $9f
	dec  c                                           ; $68aa: $0d
	nop                                              ; $68ab: $00
	ld   a, [bc]                                     ; $68ac: $0a
	inc  e                                           ; $68ad: $1c
	inc  b                                           ; $68ae: $04
	inc  bc                                          ; $68af: $03
	inc  bc                                          ; $68b0: $03
	dec  e                                           ; $68b1: $1d
	ld   b, b                                        ; $68b2: $40
	inc  d                                           ; $68b3: $14
	inc  bc                                          ; $68b4: $03
	inc  d                                           ; $68b5: $14
	ld   bc, $2901                                   ; $68b6: $01 $01 $29
	nop                                              ; $68b9: $00
	ld   bc, $5a6f                                   ; $68ba: $01 $6f $5a
	ld   d, h                                        ; $68bd: $54
	sub  [hl]                                        ; $68be: $96
	sbc  a                                           ; $68bf: $9f
	sub  $eb                                         ; $68c0: $d6 $eb
	push af                                          ; $68c2: $f5
	cp   d                                           ; $68c3: $ba
	ld   a, c                                        ; $68c4: $79
	ld   d, d                                        ; $68c5: $52
	sbc  c                                           ; $68c6: $99
	dec  c                                           ; $68c7: $0d
	sub  $eb                                         ; $68c8: $d6 $eb
	push af                                          ; $68ca: $f5
	cp   d                                           ; $68cb: $ba
	ld   h, [hl]                                     ; $68cc: $66
	and  c                                           ; $68cd: $a1
	ld   a, l                                        ; $68ce: $7d
	sbc  [hl]                                        ; $68cf: $9e
	ld   e, d                                        ; $68d0: $5a
	ld   d, d                                        ; $68d1: $52
	ld   h, [hl]                                     ; $68d2: $66
	and  c                                           ; $68d3: $a1
	ld   h, [hl]                                     ; $68d4: $66
	sub  c                                           ; $68d5: $91
	dec  c                                           ; $68d6: $0d
	ld   a, b                                        ; $68d7: $78
	ld   d, d                                        ; $68d8: $52
	and  c                                           ; $68d9: $a1
	ld   l, [hl]                                     ; $68da: $6e
	sub  [hl]                                        ; $68db: $96
	sbc  a                                           ; $68dc: $9f
	dec  c                                           ; $68dd: $0d
	nop                                              ; $68de: $00
	ld   a, [bc]                                     ; $68df: $0a
	ld   b, $63                                      ; $68e0: $06 $63
	rlca                                             ; $68e2: $07
	inc  e                                           ; $68e3: $1c
	inc  b                                           ; $68e4: $04
	inc  bc                                          ; $68e5: $03
	inc  bc                                          ; $68e6: $03
	ld   bc, $567b                                   ; $68e7: $01 $7b $56
	sbc  [hl]                                        ; $68ea: $9e
	ld   l, a                                        ; $68eb: $6f
	ld   d, d                                        ; $68ec: $52
	ld   [bc], a                                     ; $68ed: $02
	inc  de                                          ; $68ee: $13
	ld   l, a                                        ; $68ef: $6f
	sub  c                                           ; $68f0: $91
	and  c                                           ; $68f1: $a1
	sbc  a                                           ; $68f2: $9f
	dec  c                                           ; $68f3: $0d
	and  e                                           ; $68f4: $a3
	and  l                                           ; $68f5: $a5
	db   $ec                                         ; $68f6: $ec
	cp   d                                           ; $68f7: $ba
	ld   e, b                                        ; $68f8: $58
	ld   a, b                                        ; $68f9: $78
	ld   e, c                                        ; $68fa: $59
	ld   h, a                                        ; $68fb: $67
	ld   d, d                                        ; $68fc: $52
	ld   l, l                                        ; $68fd: $6d
	rst  $38                                         ; $68fe: $ff
	rst  $38                                         ; $68ff: $ff
	dec  c                                           ; $6900: $0d
	nop                                              ; $6901: $00
	ld   a, [bc]                                     ; $6902: $0a
	add  hl, de                                      ; $6903: $19
	dec  b                                           ; $6904: $05
	inc  bc                                          ; $6905: $03
	xor  h                                           ; $6906: $ac
	push bc                                          ; $6907: $c5
	inc  b                                           ; $6908: $04
	inc  bc                                          ; $6909: $03
	inc  bc                                          ; $690a: $03
	ld   l, d                                        ; $690b: $6a
	add  a                                           ; $690c: $87
	sbc  c                                           ; $690d: $99
	ld   sp, hl                                      ; $690e: $f9
	nop                                              ; $690f: $00
	nop                                              ; $6910: $00
	or   d                                           ; $6911: $b2
	ei                                               ; $6912: $fb
	xor  [hl]                                        ; $6913: $ae
	ld   [hl], l                                     ; $6914: $75
	sub  b                                           ; $6915: $90
	inc  bc                                          ; $6916: $03
	ld   l, d                                        ; $6917: $6a
	add  a                                           ; $6918: $87
	sbc  c                                           ; $6919: $99
	ld   sp, hl                                      ; $691a: $f9
	nop                                              ; $691b: $00
	ld   bc, $e3a3                                   ; $691c: $01 $a3 $e3
	ld   [hl], l                                     ; $691f: $75
	sub  b                                           ; $6920: $90
	ld   a, b                                        ; $6921: $78
	adc  a                                           ; $6922: $8f
	sbc  c                                           ; $6923: $99
	ld   sp, hl                                      ; $6924: $f9
	nop                                              ; $6925: $00
	ld   [bc], a                                     ; $6926: $02
	rlca                                             ; $6927: $07
	push bc                                          ; $6928: $c5
	rlca                                             ; $6929: $07
	ld   [bc], a                                     ; $692a: $02
	inc  bc                                          ; $692b: $03
	ld   bc, $2000                                   ; $692c: $01 $00 $20
	nop                                              ; $692f: $00
	rlca                                             ; $6930: $07
	dec  c                                           ; $6931: $0d
	ld   [$0302], sp                                 ; $6932: $08 $02 $03
	ld   bc, $2001                                   ; $6935: $01 $01 $20
	nop                                              ; $6938: $00
	rlca                                             ; $6939: $07
	ld   c, c                                        ; $693a: $49
	ld   [$0302], sp                                 ; $693b: $08 $02 $03
	ld   bc, $2002                                   ; $693e: $01 $02 $20
	nop                                              ; $6941: $00
	ld   b, $85                                      ; $6942: $06 $85
	ld   [$000f], sp                                 ; $6944: $08 $0f $00
	ld   bc, $ac01                                   ; $6947: $01 $01 $ac
	push bc                                          ; $694a: $c5
	inc  b                                           ; $694b: $04
	inc  bc                                          ; $694c: $03
	inc  bc                                          ; $694d: $03
	ld   l, d                                        ; $694e: $6a
	add  a                                           ; $694f: $87
	sbc  c                                           ; $6950: $99
	ld   sp, hl                                      ; $6951: $f9
	dec  c                                           ; $6952: $0d
	nop                                              ; $6953: $00
	ld   a, [bc]                                     ; $6954: $0a
	rrca                                             ; $6955: $0f
	inc  b                                           ; $6956: $04
	inc  bc                                          ; $6957: $03
	dec  e                                           ; $6958: $1d

Jump_055_6959:
	ld   b, b                                        ; $6959: $40
	inc  d                                           ; $695a: $14
	inc  bc                                          ; $695b: $03
	inc  d                                           ; $695c: $14
	ld   bc, $2902                                   ; $695d: $01 $02 $29
	nop                                              ; $6960: $00
	ld   bc, $a16b                                   ; $6961: $01 $6b $a1
	ld   a, b                                        ; $6964: $78
	ld   d, b                                        ; $6965: $50
	add  h                                           ; $6966: $84
	sub  a                                           ; $6967: $97
	ld   [hl], c                                     ; $6968: $71
	ld   h, c                                        ; $6969: $61
	ld   d, d                                        ; $696a: $52
	ld   a, h                                        ; $696b: $7c
	dec  c                                           ; $696c: $0d
	and  $c1                                         ; $696d: $e6 $c1
	db   $fc                                         ; $696f: $fc
	rst  $38                                         ; $6970: $ff
	rst  $38                                         ; $6971: $ff
	and  e                                           ; $6972: $a3
	and  l                                           ; $6973: $a5
	db   $ec                                         ; $6974: $ec
	cp   d                                           ; $6975: $ba
	sbc  [hl]                                        ; $6976: $9e
	dec  c                                           ; $6977: $0d
	or   d                                           ; $6978: $b2
	ei                                               ; $6979: $fb
	xor  [hl]                                        ; $697a: $ae
	ld   l, l                                        ; $697b: $6d
	add  a                                           ; $697c: $87
	sbc  c                                           ; $697d: $99
	ld   d, e                                        ; $697e: $53
	rst  $38                                         ; $697f: $ff
	rst  $38                                         ; $6980: $ff
	dec  c                                           ; $6981: $0d
	nop                                              ; $6982: $00
	ld   a, [bc]                                     ; $6983: $0a
	dec  c                                           ; $6984: $0d
	nop                                              ; $6985: $00
	nop                                              ; $6986: $00
	rrca                                             ; $6987: $0f
	nop                                              ; $6988: $00
	ld   bc, $ac06                                   ; $6989: $01 $06 $ac
	ld   [$000f], sp                                 ; $698c: $08 $0f $00
	ld   bc, $b201                                   ; $698f: $01 $01 $b2
	ei                                               ; $6992: $fb
	xor  [hl]                                        ; $6993: $ae
	ld   [hl], l                                     ; $6994: $75
	sub  b                                           ; $6995: $90
	inc  bc                                          ; $6996: $03
	ld   l, d                                        ; $6997: $6a
	add  a                                           ; $6998: $87
	sbc  c                                           ; $6999: $99
	ld   sp, hl                                      ; $699a: $f9
	dec  c                                           ; $699b: $0d
	nop                                              ; $699c: $00
	ld   a, [bc]                                     ; $699d: $0a
	inc  e                                           ; $699e: $1c
	inc  b                                           ; $699f: $04
	ld   bc, $1d01                                   ; $69a0: $01 $01 $1d
	ld   b, b                                        ; $69a3: $40
	inc  d                                           ; $69a4: $14
	inc  bc                                          ; $69a5: $03
	inc  d                                           ; $69a6: $14
	ld   bc, $2803                                   ; $69a7: $01 $03 $28
	nop                                              ; $69aa: $00
	ld   bc, $a154                                   ; $69ab: $01 $54 $a1
	ld   a, [$a30d]                                  ; $69ae: $fa $0d $a3
	and  l                                           ; $69b1: $a5
	db   $ec                                         ; $69b2: $ec
	cp   d                                           ; $69b3: $ba
	sbc  [hl]                                        ; $69b4: $9e
	or   d                                           ; $69b5: $b2
	ei                                               ; $69b6: $fb
	xor  [hl]                                        ; $69b7: $ae
	ld   l, l                                        ; $69b8: $6d
	add  a                                           ; $69b9: $87
	ld   l, l                                        ; $69ba: $6d
	ld   d, d                                        ; $69bb: $52
	ld   a, [$000d]                                  ; $69bc: $fa $0d $00
	ld   a, [bc]                                     ; $69bf: $0a
	dec  c                                           ; $69c0: $0d
	nop                                              ; $69c1: $00
	nop                                              ; $69c2: $00
	rrca                                             ; $69c3: $0f
	nop                                              ; $69c4: $00
	ld   bc, $ac06                                   ; $69c5: $01 $06 $ac
	ld   [$000f], sp                                 ; $69c8: $08 $0f $00
	ld   bc, $a301                                   ; $69cb: $01 $01 $a3
	db   $e3                                         ; $69ce: $e3
	ld   [hl], l                                     ; $69cf: $75
	sub  b                                           ; $69d0: $90
	ld   a, b                                        ; $69d1: $78
	adc  a                                           ; $69d2: $8f
	sbc  c                                           ; $69d3: $99
	ld   sp, hl                                      ; $69d4: $f9
	dec  c                                           ; $69d5: $0d
	nop                                              ; $69d6: $00
	ld   a, [bc]                                     ; $69d7: $0a
	inc  e                                           ; $69d8: $1c
	inc  b                                           ; $69d9: $04
	inc  bc                                          ; $69da: $03
	inc  bc                                          ; $69db: $03
	dec  e                                           ; $69dc: $1d
	ld   b, b                                        ; $69dd: $40
	inc  d                                           ; $69de: $14
	inc  bc                                          ; $69df: $03
	inc  d                                           ; $69e0: $14
	ld   bc, $2901                                   ; $69e1: $01 $01 $29
	nop                                              ; $69e4: $00
	ld   bc, $a16b                                   ; $69e5: $01 $6b $a1
	ld   a, b                                        ; $69e8: $78
	and  c                                           ; $69e9: $a1
	ld   h, [hl]                                     ; $69ea: $66
	sub  c                                           ; $69eb: $91
	dec  c                                           ; $69ec: $0d
	ld   e, b                                        ; $69ed: $58
	ld   a, b                                        ; $69ee: $78
	ld   e, c                                        ; $69ef: $59
	add  e                                           ; $69f0: $83
	ld   e, l                                        ; $69f1: $5d
	sbc  d                                           ; $69f2: $9a
	ld   a, b                                        ; $69f3: $78
	ld   d, d                                        ; $69f4: $52
	sub  [hl]                                        ; $69f5: $96
	db   $fc                                         ; $69f6: $fc
	sbc  a                                           ; $69f7: $9f
	dec  c                                           ; $69f8: $0d
	or   d                                           ; $69f9: $b2
	ei                                               ; $69fa: $fb
	xor  [hl]                                        ; $69fb: $ae
	ld   e, d                                        ; $69fc: $5a
	ld   d, d                                        ; $69fd: $52
	ld   d, d                                        ; $69fe: $52
	sub  [hl]                                        ; $69ff: $96
	db   $fc                                         ; $6a00: $fc
	sbc  a                                           ; $6a01: $9f
	dec  c                                           ; $6a02: $0d
	nop                                              ; $6a03: $00
	ld   a, [bc]                                     ; $6a04: $0a
	rrca                                             ; $6a05: $0f
	inc  b                                           ; $6a06: $04
	inc  bc                                          ; $6a07: $03
	ld   bc, $526f                                   ; $6a08: $01 $6f $52
	ld   [bc], a                                     ; $6a0b: $02
	inc  de                                          ; $6a0c: $13
	ld   l, a                                        ; $6a0d: $6f
	sub  c                                           ; $6a0e: $91
	and  c                                           ; $6a0f: $a1
	rst  $38                                         ; $6a10: $ff
	rst  $38                                         ; $6a11: $ff
	dec  c                                           ; $6a12: $0d
	or   d                                           ; $6a13: $b2
	ei                                               ; $6a14: $fb
	xor  [hl]                                        ; $6a15: $ae
	ld   l, l                                        ; $6a16: $6d
	add  a                                           ; $6a17: $87
	ld   a, c                                        ; $6a18: $79
	ld   d, d                                        ; $6a19: $52
	ld   h, c                                        ; $6a1a: $61
	ld   d, h                                        ; $6a1b: $54
	sub  [hl]                                        ; $6a1c: $96
	db   $fc                                         ; $6a1d: $fc
	rst  $38                                         ; $6a1e: $ff
	rst  $38                                         ; $6a1f: $ff
	dec  c                                           ; $6a20: $0d
	nop                                              ; $6a21: $00
	ld   a, [bc]                                     ; $6a22: $0a
	dec  c                                           ; $6a23: $0d
	nop                                              ; $6a24: $00
	nop                                              ; $6a25: $00
	rrca                                             ; $6a26: $0f
	nop                                              ; $6a27: $00
	ld   bc, $ac06                                   ; $6a28: $01 $06 $ac
	ld   [$9623], sp                                 ; $6a2b: $08 $23 $96
	add  hl, bc                                      ; $6a2e: $09
	ld   e, $1c                                      ; $6a2f: $1e $1c
	inc  b                                           ; $6a31: $04
	ld   b, $06                                      ; $6a32: $06 $06
	ld   bc, $7150                                   ; $6a34: $01 $50 $71
	sbc  [hl]                                        ; $6a37: $9e
	ld   l, a                                        ; $6a38: $6f
	ld   d, d                                        ; $6a39: $52
	ld   [bc], a                                     ; $6a3a: $02
	inc  de                                          ; $6a3b: $13
	ld   l, a                                        ; $6a3c: $6f
	sub  c                                           ; $6a3d: $91
	and  c                                           ; $6a3e: $a1
	ld   a, [$000d]                                  ; $6a3f: $fa $0d $00
	inc  e                                           ; $6a42: $1c
	inc  b                                           ; $6a43: $04
	ld   bc, $0101                                   ; $6a44: $01 $01 $01
	ld   h, c                                        ; $6a47: $61
	ld   h, c                                        ; $6a48: $61
	sbc  [hl]                                        ; $6a49: $9e
	ld   h, a                                        ; $6a4a: $67
	ld   [hl], c                                     ; $6a4b: $71
	ld   h, d                                        ; $6a4c: $62
	ld   e, l                                        ; $6a4d: $5d
	or   d                                           ; $6a4e: $b2
	ei                                               ; $6a4f: $fb
	xor  [hl]                                        ; $6a50: $ae
	ld   e, d                                        ; $6a51: $5a
	dec  c                                           ; $6a52: $0d
	ld   e, b                                        ; $6a53: $58
	ld   d, d                                        ; $6a54: $52
	ld   h, l                                        ; $6a55: $65
	ld   d, d                                        ; $6a56: $52
	ld   e, b                                        ; $6a57: $58
	adc  l                                           ; $6a58: $8d
	ld   l, c                                        ; $6a59: $69
	ld   a, b                                        ; $6a5a: $78
	and  c                                           ; $6a5b: $a1
	ld   l, [hl]                                     ; $6a5c: $6e
	ld   [hl], c                                     ; $6a5d: $71
	ld   [hl], h                                     ; $6a5e: $74
	ld   a, [$000d]                                  ; $6a5f: $fa $0d $00
	ld   a, [bc]                                     ; $6a62: $0a
	rrca                                             ; $6a63: $0f
	nop                                              ; $6a64: $00
	ld   bc, $9601                                   ; $6a65: $01 $01 $96
	ld   h, l                                        ; $6a68: $65
	sbc  [hl]                                        ; $6a69: $9e
	ld   l, e                                        ; $6a6a: $6b
	sbc  d                                           ; $6a6b: $9a
	ld   h, [hl]                                     ; $6a6c: $66
	sub  c                                           ; $6a6d: $91
	ld   d, b                                        ; $6a6e: $50
	dec  c                                           ; $6a6f: $0d
	ld   h, c                                        ; $6a70: $61
	ld   h, c                                        ; $6a71: $61
	ld   [hl], l                                     ; $6a72: $75
	inc  bc                                          ; $6a73: $03
	ld   l, d                                        ; $6a74: $6a
	add  a                                           ; $6a75: $87
	sub  [hl]                                        ; $6a76: $96
	ld   d, h                                        ; $6a77: $54
	ld   e, c                                        ; $6a78: $59
	ld   sp, hl                                      ; $6a79: $f9
	dec  c                                           ; $6a7a: $0d
	nop                                              ; $6a7b: $00
	ld   a, [bc]                                     ; $6a7c: $0a
	rrca                                             ; $6a7d: $0f
	inc  b                                           ; $6a7e: $04
	ld   bc, $dc01                                   ; $6a7f: $01 $01 $dc
	push af                                          ; $6a82: $f5
	ret                                              ; $6a83: $c9


	ld   a, [$0df9]                                  ; $6a84: $fa $f9 $0d
	sbc  l                                           ; $6a87: $9d
	db   $fc                                         ; $6a88: $fc
	ld   d, d                                        ; $6a89: $52
	ld   a, [$6f0d]                                  ; $6a8a: $fa $0d $6f
	ld   d, d                                        ; $6a8d: $52
	ld   [bc], a                                     ; $6a8e: $02
	inc  de                                          ; $6a8f: $13
	ld   l, a                                        ; $6a90: $6f
	sub  c                                           ; $6a91: $91
	and  c                                           ; $6a92: $a1
	sbc  [hl]                                        ; $6a93: $9e
	ld   l, [hl]                                     ; $6a94: $6e
	ld   d, d                                        ; $6a95: $52
	ld   h, a                                        ; $6a96: $67
	ld   e, e                                        ; $6a97: $5b
	ld   a, [$0dfa]                                  ; $6a98: $fa $fa $0d
	nop                                              ; $6a9b: $00
	ld   a, [bc]                                     ; $6a9c: $0a
	dec  c                                           ; $6a9d: $0d
	nop                                              ; $6a9e: $00
	nop                                              ; $6a9f: $00
	rrca                                             ; $6aa0: $0f
	nop                                              ; $6aa1: $00
	ld   bc, $9723                                   ; $6aa2: $01 $23 $97
	inc  e                                           ; $6aa5: $1c
	inc  b                                           ; $6aa6: $04
	ld   b, $06                                      ; $6aa7: $06 $06
	ld   bc, $9d54                                   ; $6aa9: $01 $54 $9d
	ld   d, b                                        ; $6aac: $50
	db   $fc                                         ; $6aad: $fc
	ld   a, [$dc0d]                                  ; $6aae: $fa $0d $dc
	push af                                          ; $6ab1: $f5
	ret                                              ; $6ab2: $c9


	ld   a, c                                        ; $6ab3: $79
	ld   e, b                                        ; $6ab4: $58
	ld   d, d                                        ; $6ab5: $52
	ld   h, l                                        ; $6ab6: $65
	ld   l, e                                        ; $6ab7: $6b
	ld   d, h                                        ; $6ab8: $54
	ld   l, [hl]                                     ; $6ab9: $6e
	ld   a, e                                        ; $6aba: $7b
	ld   a, [$000d]                                  ; $6abb: $fa $0d $00
	ld   a, [bc]                                     ; $6abe: $0a
	inc  e                                           ; $6abf: $1c
	inc  b                                           ; $6ac0: $04
	ld   bc, $0101                                   ; $6ac1: $01 $01 $01
	ld   l, e                                        ; $6ac4: $6b
	sbc  d                                           ; $6ac5: $9a
	ld   h, [hl]                                     ; $6ac6: $66
	sub  c                                           ; $6ac7: $91
	sbc  [hl]                                        ; $6ac8: $9e
	dec  c                                           ; $6ac9: $0d
	ld   d, d                                        ; $6aca: $52
	ld   l, l                                        ; $6acb: $6d
	ld   l, [hl]                                     ; $6acc: $6e
	ld   e, e                                        ; $6acd: $5b
	adc  h                                           ; $6ace: $8c
	db   $fc                                         ; $6acf: $fc
	ld   h, a                                        ; $6ad0: $67
	ld   a, [$0dfa]                                  ; $6ad1: $fa $fa $0d
	nop                                              ; $6ad4: $00
	ld   a, [bc]                                     ; $6ad5: $0a
	ld   d, $2b                                      ; $6ad6: $16 $2b
	rrca                                             ; $6ad8: $0f
	inc  b                                           ; $6ad9: $04
	ld   bc, $5801                                   ; $6ada: $01 $01 $58
	ld   d, d                                        ; $6add: $52
	ld   h, l                                        ; $6ade: $65
	ld   d, d                                        ; $6adf: $52
	ld   a, e                                        ; $6ae0: $7b
	sbc  a                                           ; $6ae1: $9f
	dec  c                                           ; $6ae2: $0d
	ld   l, a                                        ; $6ae3: $6f
	ld   d, d                                        ; $6ae4: $52
	ld   [bc], a                                     ; $6ae5: $02
	inc  de                                          ; $6ae6: $13
	ld   l, a                                        ; $6ae7: $6f
	sub  c                                           ; $6ae8: $91
	and  c                                           ; $6ae9: $a1
	sbc  a                                           ; $6aea: $9f
	dec  c                                           ; $6aeb: $0d
	nop                                              ; $6aec: $00
	ld   a, [bc]                                     ; $6aed: $0a
	ld   c, $96                                      ; $6aee: $0e $96
	inc  e                                           ; $6af0: $1c
	inc  b                                           ; $6af1: $04
	ld   bc, $0101                                   ; $6af2: $01 $01 $01
	ld   d, b                                        ; $6af5: $50
	db   $fc                                         ; $6af6: $fc
	ld   e, b                                        ; $6af7: $58
	ld   d, d                                        ; $6af8: $52
	ld   h, l                                        ; $6af9: $65
	ld   e, c                                        ; $6afa: $59
	ld   [hl], c                                     ; $6afb: $71
	ld   l, l                                        ; $6afc: $6d
	rst  $38                                         ; $6afd: $ff
	rst  $38                                         ; $6afe: $ff
	dec  c                                           ; $6aff: $0d
	nop                                              ; $6b00: $00
	ld   a, [bc]                                     ; $6b01: $0a
	rrca                                             ; $6b02: $0f
	nop                                              ; $6b03: $00
	ld   bc, $6301                                   ; $6b04: $01 $01 $63
	ld   d, b                                        ; $6b07: $50
	sbc  [hl]                                        ; $6b08: $9e
	ld   l, e                                        ; $6b09: $6b
	sbc  e                                           ; $6b0a: $9b
	ld   l, e                                        ; $6b0b: $6b
	sbc  e                                           ; $6b0c: $9b
	ld   [bc], a                                     ; $6b0d: $02
	or   l                                           ; $6b0e: $b5
	sbc  e                                           ; $6b0f: $9b
	ld   d, h                                        ; $6b10: $54
	ld   e, c                                        ; $6b11: $59
	sbc  a                                           ; $6b12: $9f
	dec  c                                           ; $6b13: $0d
	nop                                              ; $6b14: $00
	ld   a, [bc]                                     ; $6b15: $0a
	inc  e                                           ; $6b16: $1c
	inc  b                                           ; $6b17: $04
	inc  bc                                          ; $6b18: $03
	inc  bc                                          ; $6b19: $03
	ld   bc, $526f                                   ; $6b1a: $01 $6f $52
	ld   [bc], a                                     ; $6b1d: $02
	inc  de                                          ; $6b1e: $13
	ld   l, a                                        ; $6b1f: $6f
	sub  c                                           ; $6b20: $91
	and  c                                           ; $6b21: $a1
	rst  $38                                         ; $6b22: $ff
	rst  $38                                         ; $6b23: $ff
	dec  c                                           ; $6b24: $0d
	and  e                                           ; $6b25: $a3
	and  l                                           ; $6b26: $a5
	db   $ec                                         ; $6b27: $ec
	cp   d                                           ; $6b28: $ba
	sbc  [hl]                                        ; $6b29: $9e
	ld   a, e                                        ; $6b2a: $7b
	adc  [hl]                                        ; $6b2b: $8e
	ld   e, l                                        ; $6b2c: $5d
	ld   a, b                                        ; $6b2d: $78
	ld   [hl], c                                     ; $6b2e: $71
	ld   [hl], h                                     ; $6b2f: $74
	dec  c                                           ; $6b30: $0d
	ld   e, e                                        ; $6b31: $5b
	ld   l, a                                        ; $6b32: $6f
	sub  c                                           ; $6b33: $91
	ld   [hl], c                                     ; $6b34: $71
	ld   l, l                                        ; $6b35: $6d
	sub  [hl]                                        ; $6b36: $96
	db   $fc                                         ; $6b37: $fc
	dec  c                                           ; $6b38: $0d
	nop                                              ; $6b39: $00
	ld   a, [bc]                                     ; $6b3a: $0a
	add  hl, de                                      ; $6b3b: $19
	dec  b                                           ; $6b3c: $05
	inc  bc                                          ; $6b3d: $03
	ld   [bc], a                                     ; $6b3e: $02
	rst  $30                                         ; $6b3f: $f7
	ld   b, $02                                      ; $6b40: $06 $02
	ld   h, a                                        ; $6b42: $67
	sbc  c                                           ; $6b43: $99
	nop                                              ; $6b44: $00
	nop                                              ; $6b45: $00
	ld   e, b                                        ; $6b46: $58
	and  c                                           ; $6b47: $a1
	add  h                                           ; $6b48: $84
	ld   h, a                                        ; $6b49: $67
	sbc  c                                           ; $6b4a: $99
	nop                                              ; $6b4b: $00
	ld   bc, $a703                                   ; $6b4c: $01 $03 $a7
	and  c                                           ; $6b4f: $a1
	ld   [hl], l                                     ; $6b50: $75
	ld   d, d                                        ; $6b51: $52
	ld   e, l                                        ; $6b52: $5d
	nop                                              ; $6b53: $00
	ld   [bc], a                                     ; $6b54: $02
	rlca                                             ; $6b55: $07
	di                                               ; $6b56: $f3
	add  hl, bc                                      ; $6b57: $09
	ld   [bc], a                                     ; $6b58: $02
	inc  bc                                          ; $6b59: $03
	ld   bc, $2000                                   ; $6b5a: $01 $00 $20
	nop                                              ; $6b5d: $00
	rlca                                             ; $6b5e: $07
	ld   h, a                                        ; $6b5f: $67
	ld   a, [bc]                                     ; $6b60: $0a
	ld   [bc], a                                     ; $6b61: $02
	inc  bc                                          ; $6b62: $03
	ld   bc, $2001                                   ; $6b63: $01 $01 $20
	nop                                              ; $6b66: $00
	rlca                                             ; $6b67: $07
	jp   $020a                                       ; $6b68: $c3 $0a $02


	inc  bc                                          ; $6b6b: $03
	ld   bc, $2002                                   ; $6b6c: $01 $02 $20
	nop                                              ; $6b6f: $00
	ld   b, $f6                                      ; $6b70: $06 $f6
	ld   a, [bc]                                     ; $6b72: $0a
	rrca                                             ; $6b73: $0f
	nop                                              ; $6b74: $00
	ld   bc, $a301                                   ; $6b75: $01 $01 $a3
	and  l                                           ; $6b78: $a5
	db   $ec                                         ; $6b79: $ec
	cp   d                                           ; $6b7a: $ba
	ld   a, l                                        ; $6b7b: $7d
	inc  b                                           ; $6b7c: $04
	ld   c, $03                                      ; $6b7d: $0e $03
	add  d                                           ; $6b7f: $82
	ld   l, [hl]                                     ; $6b80: $6e
	sbc  e                                           ; $6b81: $9b
	ld   sp, hl                                      ; $6b82: $f9
	dec  c                                           ; $6b83: $0d
	ld   l, [hl]                                     ; $6b84: $6e
	ld   [hl], c                                     ; $6b85: $71
	ld   l, l                                        ; $6b86: $6d
	sub  a                                           ; $6b87: $97
	sbc  [hl]                                        ; $6b88: $9e
	ld   l, a                                        ; $6b89: $6f
	sub  c                                           ; $6b8a: $91
	and  c                                           ; $6b8b: $a1
	halt                                             ; $6b8c: $76
	inc  bc                                          ; $6b8d: $03
	sub  h                                           ; $6b8e: $94
	inc  b                                           ; $6b8f: $04
	sbc  [hl]                                        ; $6b90: $9e
	ld   [hl], l                                     ; $6b91: $75
	dec  c                                           ; $6b92: $0d
	inc  b                                           ; $6b93: $04
	sbc  a                                           ; $6b94: $9f
	ld   d, d                                        ; $6b95: $52
	ld   [hl], h                                     ; $6b96: $74
	ld   [bc], a                                     ; $6b97: $02
	or   l                                           ; $6b98: $b5
	sbc  e                                           ; $6b99: $9b
	ld   d, h                                        ; $6b9a: $54
	ld   a, e                                        ; $6b9b: $7b
	sbc  a                                           ; $6b9c: $9f
	dec  c                                           ; $6b9d: $0d
	nop                                              ; $6b9e: $00
	ld   a, [bc]                                     ; $6b9f: $0a
	inc  e                                           ; $6ba0: $1c
	inc  b                                           ; $6ba1: $04
	inc  b                                           ; $6ba2: $04
	inc  b                                           ; $6ba3: $04
	dec  e                                           ; $6ba4: $1d
	ld   b, b                                        ; $6ba5: $40
	inc  d                                           ; $6ba6: $14
	inc  bc                                          ; $6ba7: $03
	inc  d                                           ; $6ba8: $14
	ld   bc, $2902                                   ; $6ba9: $01 $02 $29
	nop                                              ; $6bac: $00
	ld   bc, $fc92                                   ; $6bad: $01 $92 $fc
	ld   l, [hl]                                     ; $6bb0: $6e
	db   $fc                                         ; $6bb1: $fc
	rst  $38                                         ; $6bb2: $ff
	rst  $38                                         ; $6bb3: $ff
	and  e                                           ; $6bb4: $a3
	and  l                                           ; $6bb5: $a5
	db   $ec                                         ; $6bb6: $ec
	cp   d                                           ; $6bb7: $ba
	sbc  [hl]                                        ; $6bb8: $9e
	dec  c                                           ; $6bb9: $0d
	ld   e, b                                        ; $6bba: $58
	halt                                             ; $6bbb: $76
	ld   a, b                                        ; $6bbc: $78
	ld   h, [hl]                                     ; $6bbd: $66
	sub  c                                           ; $6bbe: $91
	ld   a, b                                        ; $6bbf: $78
	ld   d, d                                        ; $6bc0: $52
	sub  b                                           ; $6bc1: $90
	and  c                                           ; $6bc2: $a1
	ld   a, [$580d]                                  ; $6bc3: $fa $0d $58
	and  c                                           ; $6bc6: $a1
	add  h                                           ; $6bc7: $84
	ld   d, e                                        ; $6bc8: $53
	rst  $38                                         ; $6bc9: $ff
	rst  $38                                         ; $6bca: $ff
	dec  c                                           ; $6bcb: $0d
	nop                                              ; $6bcc: $00
	ld   a, [bc]                                     ; $6bcd: $0a
	rrca                                             ; $6bce: $0f
	nop                                              ; $6bcf: $00
	ld   bc, $0101                                   ; $6bd0: $01 $01 $01
	inc  bc                                          ; $6bd3: $03
	sub  d                                           ; $6bd4: $92
	sbc  d                                           ; $6bd5: $9a
	sub  d                                           ; $6bd6: $92
	sbc  d                                           ; $6bd7: $9a
	rst  $38                                         ; $6bd8: $ff
	rst  $38                                         ; $6bd9: $ff
	ld   bc, $0d04                                   ; $6bda: $01 $04 $0d
	nop                                              ; $6bdd: $00
	ld   a, [bc]                                     ; $6bde: $0a
	dec  c                                           ; $6bdf: $0d
	nop                                              ; $6be0: $00
	nop                                              ; $6be1: $00
	inc  c                                           ; $6be2: $0c
	ld   [bc], a                                     ; $6be3: $02
	ld   b, $c2                                      ; $6be4: $06 $c2
	dec  bc                                          ; $6be6: $0b
	rrca                                             ; $6be7: $0f
	nop                                              ; $6be8: $00
	ld   bc, $6501                                   ; $6be9: $01 $01 $65
	sub  l                                           ; $6bec: $95
	ld   d, h                                        ; $6bed: $54
	ld   e, d                                        ; $6bee: $5a
	ld   a, b                                        ; $6bef: $78
	ld   d, d                                        ; $6bf0: $52
	ld   a, b                                        ; $6bf1: $78
	rst  $38                                         ; $6bf2: $ff
	rst  $38                                         ; $6bf3: $ff
	dec  c                                           ; $6bf4: $0d
	adc  c                                           ; $6bf5: $89
	sub  a                                           ; $6bf6: $97
	sbc  [hl]                                        ; $6bf7: $9e
	ld   e, b                                        ; $6bf8: $58
	and  c                                           ; $6bf9: $a1
	add  h                                           ; $6bfa: $84
	ld   h, l                                        ; $6bfb: $65
	ld   [hl], h                                     ; $6bfc: $74
	ld   d, b                                        ; $6bfd: $50
	ld   h, b                                        ; $6bfe: $60
	sbc  c                                           ; $6bff: $99
	sub  [hl]                                        ; $6c00: $96
	sbc  a                                           ; $6c01: $9f
	dec  c                                           ; $6c02: $0d
	nop                                              ; $6c03: $00
	ld   a, [bc]                                     ; $6c04: $0a
	inc  e                                           ; $6c05: $1c
	inc  b                                           ; $6c06: $04
	dec  b                                           ; $6c07: $05
	dec  b                                           ; $6c08: $05
	dec  e                                           ; $6c09: $1d
	ld   b, b                                        ; $6c0a: $40
	inc  d                                           ; $6c0b: $14
	inc  bc                                          ; $6c0c: $03
	inc  d                                           ; $6c0d: $14
	ld   bc, $2803                                   ; $6c0e: $01 $03 $28
	nop                                              ; $6c11: $00
	ld   bc, $fb9d                                   ; $6c12: $01 $9d $fb
	ld   d, d                                        ; $6c15: $52
	ld   a, [$6f0d]                                  ; $6c16: $fa $0d $6f
	ld   d, d                                        ; $6c19: $52
	ld   [bc], a                                     ; $6c1a: $02
	inc  de                                          ; $6c1b: $13
	ld   l, a                                        ; $6c1c: $6f
	sub  c                                           ; $6c1d: $91
	and  c                                           ; $6c1e: $a1
	sbc  [hl]                                        ; $6c1f: $9e
	ld   l, [hl]                                     ; $6c20: $6e
	ld   d, d                                        ; $6c21: $52
	ld   h, a                                        ; $6c22: $67
	ld   e, e                                        ; $6c23: $5b
	ld   a, [$ff0d]                                  ; $6c24: $fa $0d $ff
	rst  $38                                         ; $6c27: $ff
	ld   e, b                                        ; $6c28: $58
	ld   [bc], a                                     ; $6c29: $02
	inc  de                                          ; $6c2a: $13
	ld   l, a                                        ; $6c2b: $6f
	sub  c                                           ; $6c2c: $91
	and  c                                           ; $6c2d: $a1
	ld   a, h                                        ; $6c2e: $7c
	ld   [hl], d                                     ; $6c2f: $72
	ld   e, h                                        ; $6c30: $5c
	ld   l, [hl]                                     ; $6c31: $6e
	ld   e, a                                        ; $6c32: $5f
	ld   [hl], a                                     ; $6c33: $77
	sbc  a                                           ; $6c34: $9f
	dec  c                                           ; $6c35: $0d
	nop                                              ; $6c36: $00
	ld   a, [bc]                                     ; $6c37: $0a
	dec  c                                           ; $6c38: $0d
	nop                                              ; $6c39: $00
	nop                                              ; $6c3a: $00
	rrca                                             ; $6c3b: $0f
	nop                                              ; $6c3c: $00
	ld   bc, $020c                                   ; $6c3d: $01 $0c $02
	ld   b, $c2                                      ; $6c40: $06 $c2
	dec  bc                                          ; $6c42: $0b
	rrca                                             ; $6c43: $0f
	nop                                              ; $6c44: $00
	ld   bc, $6601                                   ; $6c45: $01 $01 $66
	sub  c                                           ; $6c48: $91
	ld   d, b                                        ; $6c49: $50
	sbc  [hl]                                        ; $6c4a: $9e
	inc  bc                                          ; $6c4b: $03
	ld   l, h                                        ; $6c4c: $6c
	ld   h, l                                        ; $6c4d: $65
	inc  bc                                          ; $6c4e: $03
	and  a                                           ; $6c4f: $a7
	and  c                                           ; $6c50: $a1
	ld   [hl], l                                     ; $6c51: $75
	ld   e, c                                        ; $6c52: $59
	sub  a                                           ; $6c53: $97
	dec  c                                           ; $6c54: $0d
	ld   [bc], a                                     ; $6c55: $02
	or   l                                           ; $6c56: $b5
	sbc  e                                           ; $6c57: $9b
	ld   d, h                                        ; $6c58: $54
	ld   e, c                                        ; $6c59: $59
	sbc  a                                           ; $6c5a: $9f
	dec  c                                           ; $6c5b: $0d
	nop                                              ; $6c5c: $00
	ld   a, [bc]                                     ; $6c5d: $0a
	inc  e                                           ; $6c5e: $1c
	inc  b                                           ; $6c5f: $04
	inc  bc                                          ; $6c60: $03
	inc  bc                                          ; $6c61: $03
	ld   bc, $a154                                   ; $6c62: $01 $54 $a1
	sbc  a                                           ; $6c65: $9f
	dec  c                                           ; $6c66: $0d
	nop                                              ; $6c67: $00
	ld   a, [bc]                                     ; $6c68: $0a
	dec  c                                           ; $6c69: $0d
	nop                                              ; $6c6a: $00
	nop                                              ; $6c6b: $00
	rrca                                             ; $6c6c: $0f
	nop                                              ; $6c6d: $00
	ld   bc, $020c                                   ; $6c6e: $01 $0c $02
	add  hl, bc                                      ; $6c71: $09
	ld   d, b                                        ; $6c72: $50
	ld   b, $c2                                      ; $6c73: $06 $c2
	dec  bc                                          ; $6c75: $0b
	rrca                                             ; $6c76: $0f
	nop                                              ; $6c77: $00
	ld   bc, $ff01                                   ; $6c78: $01 $01 $ff
	rst  $38                                         ; $6c7b: $ff
	rst  $38                                         ; $6c7c: $ff
	rst  $38                                         ; $6c7d: $ff
	rst  $38                                         ; $6c7e: $ff
	rst  $38                                         ; $6c7f: $ff
	dec  c                                           ; $6c80: $0d
	nop                                              ; $6c81: $00
	ld   a, [bc]                                     ; $6c82: $0a
	inc  e                                           ; $6c83: $1c
	inc  b                                           ; $6c84: $04
	ld   b, $06                                      ; $6c85: $06 $06
	ld   bc, $5477                                   ; $6c87: $01 $77 $54
	ld   h, l                                        ; $6c8a: $65
	ld   l, l                                        ; $6c8b: $6d
	ld   a, h                                        ; $6c8c: $7c
	sbc  [hl]                                        ; $6c8d: $9e
	ld   l, a                                        ; $6c8e: $6f
	ld   d, d                                        ; $6c8f: $52
	ld   [bc], a                                     ; $6c90: $02
	inc  de                                          ; $6c91: $13
	ld   l, a                                        ; $6c92: $6f
	sub  c                                           ; $6c93: $91
	and  c                                           ; $6c94: $a1
	ld   sp, hl                                      ; $6c95: $f9
	dec  c                                           ; $6c96: $0d
	and  e                                           ; $6c97: $a3
	and  l                                           ; $6c98: $a5
	db   $ec                                         ; $6c99: $ec
	cp   d                                           ; $6c9a: $ba
	and  b                                           ; $6c9b: $a0
	adc  l                                           ; $6c9c: $8d
	ld   [hl], d                                     ; $6c9d: $72
	adc  a                                           ; $6c9e: $8f
	ld   [hl], h                                     ; $6c9f: $74
	rst  $38                                         ; $6ca0: $ff
	rst  $38                                         ; $6ca1: $ff
	dec  c                                           ; $6ca2: $0d
	nop                                              ; $6ca3: $00
	ld   a, [bc]                                     ; $6ca4: $0a
	rrca                                             ; $6ca5: $0f
	nop                                              ; $6ca6: $00
	ld   bc, $a301                                   ; $6ca7: $01 $01 $a3
	and  l                                           ; $6caa: $a5
	db   $ec                                         ; $6cab: $ec
	cp   d                                           ; $6cac: $ba
	ld   [hl], c                                     ; $6cad: $71
	ld   [hl], h                                     ; $6cae: $74
	sbc  [hl]                                        ; $6caf: $9e
	inc  b                                           ; $6cb0: $04
	call nc, $035a                                   ; $6cb1: $d4 $5a $03
	ld   a, [bc]                                     ; $6cb4: $0a
	ld   e, l                                        ; $6cb5: $5d
	ld   [hl], h                                     ; $6cb6: $74
	dec  c                                           ; $6cb7: $0d
	inc  b                                           ; $6cb8: $04
	adc  a                                           ; $6cb9: $8f
	inc  b                                           ; $6cba: $04
	jr   jr_055_6d36                                 ; $6cbb: $18 $79

	ld   e, b                                        ; $6cbd: $58
	inc  bc                                          ; $6cbe: $03
	add  d                                           ; $6cbf: $82
	ld   [bc], a                                     ; $6cc0: $02
	ld   a, $63                                      ; $6cc1: $3e $63
	and  c                                           ; $6cc3: $a1
	adc  l                                           ; $6cc4: $8d
	ld   l, l                                        ; $6cc5: $6d
	ld   d, d                                        ; $6cc6: $52
	ld   [hl], l                                     ; $6cc7: $75
	dec  c                                           ; $6cc8: $0d
	ld   e, c                                        ; $6cc9: $59
	sbc  l                                           ; $6cca: $9d
	ld   d, d                                        ; $6ccb: $52
	ld   d, d                                        ; $6ccc: $52
	ld   a, e                                        ; $6ccd: $7b
	sbc  a                                           ; $6cce: $9f
	dec  c                                           ; $6ccf: $0d
	nop                                              ; $6cd0: $00
	ld   a, [bc]                                     ; $6cd1: $0a
	inc  e                                           ; $6cd2: $1c
	inc  b                                           ; $6cd3: $04
	dec  b                                           ; $6cd4: $05
	dec  b                                           ; $6cd5: $05
	dec  e                                           ; $6cd6: $1d
	ld   b, b                                        ; $6cd7: $40
	inc  d                                           ; $6cd8: $14
	inc  bc                                          ; $6cd9: $03
	inc  d                                           ; $6cda: $14
	ld   bc, $2802                                   ; $6cdb: $01 $02 $28
	nop                                              ; $6cde: $00
	ld   bc, $a5a3                                   ; $6cdf: $01 $a3 $a5
	db   $ec                                         ; $6ce2: $ec
	cp   d                                           ; $6ce3: $ba
	ld   e, c                                        ; $6ce4: $59
	sbc  l                                           ; $6ce5: $9d
	ld   d, d                                        ; $6ce6: $52
	ld   d, d                                        ; $6ce7: $52
	ld   sp, hl                                      ; $6ce8: $f9
	dec  c                                           ; $6ce9: $0d
	sbc  l                                           ; $6cea: $9d
	ei                                               ; $6ceb: $fb
	ld   d, d                                        ; $6cec: $52
	sbc  [hl]                                        ; $6ced: $9e
	ld   l, a                                        ; $6cee: $6f
	ld   d, d                                        ; $6cef: $52
	ld   [bc], a                                     ; $6cf0: $02
	inc  de                                          ; $6cf1: $13
	ld   l, a                                        ; $6cf2: $6f
	sub  c                                           ; $6cf3: $91
	and  c                                           ; $6cf4: $a1
	ld   a, c                                        ; $6cf5: $79
	dec  c                                           ; $6cf6: $0d
	adc  c                                           ; $6cf7: $89
	adc  a                                           ; $6cf8: $8f
	sub  a                                           ; $6cf9: $97
	sbc  d                                           ; $6cfa: $9a
	ld   l, l                                        ; $6cfb: $6d
	ei                                               ; $6cfc: $fb
	sbc  a                                           ; $6cfd: $9f
	dec  c                                           ; $6cfe: $0d
	nop                                              ; $6cff: $00
	ld   a, [bc]                                     ; $6d00: $0a
	rrca                                             ; $6d01: $0f
	nop                                              ; $6d02: $00
	ld   bc, $6601                                   ; $6d03: $01 $01 $66
	sub  c                                           ; $6d06: $91
	ld   d, b                                        ; $6d07: $50
	rst  $38                                         ; $6d08: $ff
	rst  $38                                         ; $6d09: $ff
	ld   [bc], a                                     ; $6d0a: $02
	or   l                                           ; $6d0b: $b5
	sbc  e                                           ; $6d0c: $9b
	ld   d, h                                        ; $6d0d: $54
	ld   e, c                                        ; $6d0e: $59
	sbc  a                                           ; $6d0f: $9f
	dec  c                                           ; $6d10: $0d
	nop                                              ; $6d11: $00
	ld   a, [bc]                                     ; $6d12: $0a
	inc  e                                           ; $6d13: $1c
	inc  b                                           ; $6d14: $04
	inc  bc                                          ; $6d15: $03
	inc  bc                                          ; $6d16: $03
	ld   bc, $fb50                                   ; $6d17: $01 $50 $fb
	and  c                                           ; $6d1a: $a1
	rst  $38                                         ; $6d1b: $ff
	rst  $38                                         ; $6d1c: $ff
	dec  c                                           ; $6d1d: $0d
	ld   e, b                                        ; $6d1e: $58
	and  c                                           ; $6d1f: $a1
	add  h                                           ; $6d20: $84
	ld   d, e                                        ; $6d21: $53
	sbc  [hl]                                        ; $6d22: $9e
	ld   e, b                                        ; $6d23: $58
	and  c                                           ; $6d24: $a1
	add  h                                           ; $6d25: $84
	ld   d, e                                        ; $6d26: $53
	rst  $38                                         ; $6d27: $ff
	rst  $38                                         ; $6d28: $ff
	dec  c                                           ; $6d29: $0d
	nop                                              ; $6d2a: $00
	ld   a, [bc]                                     ; $6d2b: $0a
	rrca                                             ; $6d2c: $0f
	nop                                              ; $6d2d: $00
	ld   bc, $0101                                   ; $6d2e: $01 $01 $01
	inc  bc                                          ; $6d31: $03
	sub  d                                           ; $6d32: $92
	sbc  d                                           ; $6d33: $9a
	sub  d                                           ; $6d34: $92
	sbc  d                                           ; $6d35: $9a

jr_055_6d36:
	rst  $38                                         ; $6d36: $ff
	rst  $38                                         ; $6d37: $ff
	ld   bc, $0d04                                   ; $6d38: $01 $04 $0d
	nop                                              ; $6d3b: $00
	ld   a, [bc]                                     ; $6d3c: $0a
	dec  c                                           ; $6d3d: $0d
	nop                                              ; $6d3e: $00
	nop                                              ; $6d3f: $00
	inc  c                                           ; $6d40: $0c
	ld   [bc], a                                     ; $6d41: $02
	ld   c, $06                                      ; $6d42: $0e $06
	inc  e                                           ; $6d44: $1c
	inc  b                                           ; $6d45: $04
	ld   bc, $0101                                   ; $6d46: $01 $01 $01
	ld   e, e                                        ; $6d49: $5b
	sub  l                                           ; $6d4a: $95
	ld   d, h                                        ; $6d4b: $54
	ld   a, l                                        ; $6d4c: $7d
	sbc  [hl]                                        ; $6d4d: $9e
	ld   l, l                                        ; $6d4e: $6d
	ld   a, h                                        ; $6d4f: $7c
	ld   h, l                                        ; $6d50: $65
	ld   e, c                                        ; $6d51: $59
	ld   [hl], c                                     ; $6d52: $71
	ld   l, l                                        ; $6d53: $6d
	ld   a, e                                        ; $6d54: $7b
	sbc  [hl]                                        ; $6d55: $9e
	dec  c                                           ; $6d56: $0d
	ld   l, a                                        ; $6d57: $6f
	ld   d, d                                        ; $6d58: $52
	ld   [bc], a                                     ; $6d59: $02
	inc  de                                          ; $6d5a: $13
	ld   l, a                                        ; $6d5b: $6f
	sub  c                                           ; $6d5c: $91
	and  c                                           ; $6d5d: $a1
	sbc  a                                           ; $6d5e: $9f
	dec  c                                           ; $6d5f: $0d
	adc  h                                           ; $6d60: $8c
	ld   l, l                                        ; $6d61: $6d
	sbc  [hl]                                        ; $6d62: $9e
	ld   d, d                                        ; $6d63: $52
	ld   h, c                                        ; $6d64: $61
	ld   d, h                                        ; $6d65: $54
	ld   a, e                                        ; $6d66: $7b
	sbc  a                                           ; $6d67: $9f
	dec  c                                           ; $6d68: $0d
	nop                                              ; $6d69: $00
	ld   a, [bc]                                     ; $6d6a: $0a
	dec  c                                           ; $6d6b: $0d
	nop                                              ; $6d6c: $00
	nop                                              ; $6d6d: $00
	rrca                                             ; $6d6e: $0f
	nop                                              ; $6d6f: $00
	ld   bc, $020c                                   ; $6d70: $01 $0c $02
	ld   c, $02                                      ; $6d73: $0e $02
	ld   bc, $ffff                                   ; $6d75: $01 $ff $ff
	add  e                                           ; $6d78: $83
	ld   d, h                                        ; $6d79: $54
	sbc  [hl]                                        ; $6d7a: $9e
	ld   [bc], a                                     ; $6d7b: $02
	and  l                                           ; $6d7c: $a5
	inc  b                                           ; $6d7d: $04
	xor  d                                           ; $6d7e: $aa
	ld   a, l                                        ; $6d7f: $7d
	ld   l, l                                        ; $6d80: $6d
	ld   a, h                                        ; $6d81: $7c
	ld   h, l                                        ; $6d82: $65
	ld   e, c                                        ; $6d83: $59
	ld   [hl], c                                     ; $6d84: $71
	ld   l, l                                        ; $6d85: $6d
	dec  c                                           ; $6d86: $0d
	ld   a, b                                        ; $6d87: $78
	ld   d, b                                        ; $6d88: $50
	rst  $38                                         ; $6d89: $ff
	rst  $38                                         ; $6d8a: $ff
	dec  c                                           ; $6d8b: $0d
	nop                                              ; $6d8c: $00
	ld   a, [bc]                                     ; $6d8d: $0a
	ld   bc, $7158                                   ; $6d8e: $01 $58 $71
	halt                                             ; $6d91: $76
	sbc  [hl]                                        ; $6d92: $9e
	sub  b                                           ; $6d93: $90
	ld   d, h                                        ; $6d94: $54
	ld   h, c                                        ; $6d95: $61
	and  c                                           ; $6d96: $a1
	ld   a, b                                        ; $6d97: $78
	inc  bc                                          ; $6d98: $03
	ld   l, a                                        ; $6d99: $6f
	ld   [bc], a                                     ; $6d9a: $02
	xor  c                                           ; $6d9b: $a9
	ld   e, c                                        ; $6d9c: $59
	sbc  a                                           ; $6d9d: $9f
	dec  c                                           ; $6d9e: $0d
	ld   l, e                                        ; $6d9f: $6b
	sbc  e                                           ; $6da0: $9b
	ld   l, e                                        ; $6da1: $6b
	sbc  e                                           ; $6da2: $9b
	inc  b                                           ; $6da3: $04
	ld   b, d                                        ; $6da4: $42
	ld   a, b                                        ; $6da5: $78
	ld   e, l                                        ; $6da6: $5d
	ld   l, a                                        ; $6da7: $6f
	sub  c                                           ; $6da8: $91
	rst  $38                                         ; $6da9: $ff
	rst  $38                                         ; $6daa: $ff
	dec  c                                           ; $6dab: $0d
	nop                                              ; $6dac: $00
	ld   a, [bc]                                     ; $6dad: $0a
	add  hl, hl                                      ; $6dae: $29
	nop                                              ; $6daf: $00
	nop                                              ; $6db0: $00
	nop                                              ; $6db1: $00
	inc  b                                           ; $6db2: $04
	add  b                                           ; $6db3: $80
	ld   a, [hl+]                                    ; $6db4: $2a
	ld   bc, $20ff                                   ; $6db5: $01 $ff $20
	nop                                              ; $6db8: $00
	ld   c, $01                                      ; $6db9: $0e $01
	rrca                                             ; $6dbb: $0f
	nop                                              ; $6dbc: $00
	ld   bc, $0102                                   ; $6dbd: $01 $02 $01
	ld   [bc], a                                     ; $6dc0: $02
	and  l                                           ; $6dc1: $a5
	inc  b                                           ; $6dc2: $04
	xor  d                                           ; $6dc3: $aa
	ld   a, l                                        ; $6dc4: $7d
	ld   [bc], a                                     ; $6dc5: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dc6: $cf
	dec  b                                           ; $6dc7: $05
	ld   a, [de]                                     ; $6dc8: $1a
	ld   h, e                                        ; $6dc9: $63
	and  c                                           ; $6dca: $a1
	halt                                             ; $6dcb: $76
	ld   e, b                                        ; $6dcc: $58
	inc  bc                                          ; $6dcd: $03
	add  b                                           ; $6dce: $80
	ld   e, c                                        ; $6dcf: $59
	ld   e, a                                        ; $6dd0: $5f
	ld   l, [hl]                                     ; $6dd1: $6e
	sbc  a                                           ; $6dd2: $9f
	dec  c                                           ; $6dd3: $0d
	dec  b                                           ; $6dd4: $05
	jr   z, jr_055_6e29                              ; $6dd5: $28 $52

	ld   [hl], l                                     ; $6dd7: $75
	inc  b                                           ; $6dd8: $04
	rlca                                             ; $6dd9: $07
	dec  b                                           ; $6dda: $05
	scf                                              ; $6ddb: $37
	ld   d, [hl]                                     ; $6ddc: $56
	ld   a, b                                        ; $6ddd: $78
	ld   e, l                                        ; $6dde: $5d
	ld   l, a                                        ; $6ddf: $6f
	sub  c                                           ; $6de0: $91
	sbc  a                                           ; $6de1: $9f
	dec  c                                           ; $6de2: $0d
	nop                                              ; $6de3: $00
	ld   a, [bc]                                     ; $6de4: $0a
	add  hl, de                                      ; $6de5: $19
	inc  b                                           ; $6de6: $04
	inc  bc                                          ; $6de7: $03
	cp   b                                           ; $6de8: $b8
	push hl                                          ; $6de9: $e5
	push bc                                          ; $6dea: $c5
	and  b                                           ; $6deb: $a0
	inc  b                                           ; $6dec: $04
	rlca                                             ; $6ded: $07
	sbc  c                                           ; $6dee: $99
	nop                                              ; $6def: $00
	nop                                              ; $6df0: $00
	cp   b                                           ; $6df1: $b8
	push hl                                          ; $6df2: $e5
	or   d                                           ; $6df3: $b2
	and  b                                           ; $6df4: $a0
	inc  bc                                          ; $6df5: $03
	dec  de                                          ; $6df6: $1b
	sbc  c                                           ; $6df7: $99
	nop                                              ; $6df8: $00
	ld   bc, $e5b8                                   ; $6df9: $01 $b8 $e5
	pop  af                                          ; $6dfc: $f1
	ei                                               ; $6dfd: $fb
	and  b                                           ; $6dfe: $a0
	ld   d, b                                        ; $6dff: $50
	add  c                                           ; $6e00: $81
	sbc  c                                           ; $6e01: $99
	nop                                              ; $6e02: $00
	ld   [bc], a                                     ; $6e03: $02
	rlca                                             ; $6e04: $07
	ld   l, c                                        ; $6e05: $69
	nop                                              ; $6e06: $00
	ld   [bc], a                                     ; $6e07: $02
	inc  bc                                          ; $6e08: $03
	ld   bc, $2000                                   ; $6e09: $01 $00 $20
	nop                                              ; $6e0c: $00
	rlca                                             ; $6e0d: $07
	adc  d                                           ; $6e0e: $8a
	nop                                              ; $6e0f: $00
	ld   [bc], a                                     ; $6e10: $02
	inc  bc                                          ; $6e11: $03
	ld   bc, $2001                                   ; $6e12: $01 $01 $20
	nop                                              ; $6e15: $00
	rlca                                             ; $6e16: $07
	add  $00                                         ; $6e17: $c6 $00
	ld   [bc], a                                     ; $6e19: $02
	inc  bc                                          ; $6e1a: $03
	ld   bc, $2002                                   ; $6e1b: $01 $02 $20
	nop                                              ; $6e1e: $00
	ld   b, $07                                      ; $6e1f: $06 $07
	ld   bc, $000f                                   ; $6e21: $01 $0f $00
	ld   bc, $8c01                                   ; $6e24: $01 $01 $8c
	ld   l, b                                        ; $6e27: $68
	ld   a, l                                        ; $6e28: $7d

jr_055_6e29:
	sbc  [hl]                                        ; $6e29: $9e
	cp   b                                           ; $6e2a: $b8
	push hl                                          ; $6e2b: $e5
	push bc                                          ; $6e2c: $c5
	and  b                                           ; $6e2d: $a0
	inc  b                                           ; $6e2e: $04
	rlca                                             ; $6e2f: $07
	ld   [hl], h                                     ; $6e30: $74
	halt                                             ; $6e31: $76
	rst  $38                                         ; $6e32: $ff
	rst  $38                                         ; $6e33: $ff
	dec  c                                           ; $6e34: $0d
	nop                                              ; $6e35: $00
	ld   a, [bc]                                     ; $6e36: $0a
	dec  b                                           ; $6e37: $05
	ld   b, b                                        ; $6e38: $40
	rst  $38                                         ; $6e39: $ff
	inc  bc                                          ; $6e3a: $03
	rst  $38                                         ; $6e3b: $ff
	ld   bc, $2801                                   ; $6e3c: $01 $01 $28
	nop                                              ; $6e3f: $00
	ld   b, $2a                                      ; $6e40: $06 $2a
	ld   bc, $000f                                   ; $6e42: $01 $0f $00
	ld   bc, $8c01                                   ; $6e45: $01 $01 $8c
	ld   l, b                                        ; $6e48: $68
	ld   a, l                                        ; $6e49: $7d
	sbc  [hl]                                        ; $6e4a: $9e
	cp   b                                           ; $6e4b: $b8
	push hl                                          ; $6e4c: $e5
	or   d                                           ; $6e4d: $b2
	and  b                                           ; $6e4e: $a0
	inc  bc                                          ; $6e4f: $03
	dec  de                                          ; $6e50: $1b
	ld   [hl], c                                     ; $6e51: $71
	ld   [hl], h                                     ; $6e52: $74
	rst  $38                                         ; $6e53: $ff
	rst  $38                                         ; $6e54: $ff
	dec  c                                           ; $6e55: $0d
	and  c                                           ; $6e56: $a1
	ld   sp, hl                                      ; $6e57: $f9
	db   $10                                         ; $6e58: $10
	ld   a, b                                        ; $6e59: $78
	and  c                                           ; $6e5a: $a1
	ld   [hl], l                                     ; $6e5b: $75
	cp   b                                           ; $6e5c: $b8
	push hl                                          ; $6e5d: $e5
	or   d                                           ; $6e5e: $b2
	and  b                                           ; $6e5f: $a0
	dec  c                                           ; $6e60: $0d
	nop                                              ; $6e61: $00
	dec  b                                           ; $6e62: $05
	ld   b, b                                        ; $6e63: $40
	rst  $38                                         ; $6e64: $ff
	inc  bc                                          ; $6e65: $03
	rst  $38                                         ; $6e66: $ff
	ld   bc, $2801                                   ; $6e67: $01 $01 $28
	nop                                              ; $6e6a: $00
	ld   bc, $1b03                                   ; $6e6b: $01 $03 $1b
	sub  a                                           ; $6e6e: $97
	ld   a, b                                        ; $6e6f: $78
	ld   e, e                                        ; $6e70: $5b
	sub  c                                           ; $6e71: $91
	ld   d, d                                        ; $6e72: $52
	ld   e, a                                        ; $6e73: $5f
	ld   a, b                                        ; $6e74: $78
	ld   d, d                                        ; $6e75: $52
	and  c                                           ; $6e76: $a1
	ld   l, [hl]                                     ; $6e77: $6e
	ld   sp, hl                                      ; $6e78: $f9
	dec  c                                           ; $6e79: $0d
	nop                                              ; $6e7a: $00
	ld   a, [bc]                                     ; $6e7b: $0a
	ld   b, $2c                                      ; $6e7c: $06 $2c
	nop                                              ; $6e7e: $00
	rrca                                             ; $6e7f: $0f
	nop                                              ; $6e80: $00
	ld   bc, $8c01                                   ; $6e81: $01 $01 $8c
	ld   l, b                                        ; $6e84: $68
	ld   a, l                                        ; $6e85: $7d
	rst  $38                                         ; $6e86: $ff
	rst  $38                                         ; $6e87: $ff
	cp   b                                           ; $6e88: $b8
	push hl                                          ; $6e89: $e5
	pop  af                                          ; $6e8a: $f1
	ei                                               ; $6e8b: $fb
	and  b                                           ; $6e8c: $a0
	ld   d, b                                        ; $6e8d: $50
	add  c                                           ; $6e8e: $81
	sub  [hl]                                        ; $6e8f: $96
	ld   d, h                                        ; $6e90: $54
	dec  c                                           ; $6e91: $0d
	ld   e, c                                        ; $6e92: $59
	ld   a, b                                        ; $6e93: $78
	ld   sp, hl                                      ; $6e94: $f9
	db   $10                                         ; $6e95: $10
	rst  $38                                         ; $6e96: $ff
	rst  $38                                         ; $6e97: $ff
	ld   d, d                                        ; $6e98: $52
	sub  d                                           ; $6e99: $92
	ld   d, d                                        ; $6e9a: $52
	sub  d                                           ; $6e9b: $92
	sbc  [hl]                                        ; $6e9c: $9e
	ld   l, e                                        ; $6e9d: $6b
	and  c                                           ; $6e9e: $a1
	ld   a, b                                        ; $6e9f: $78
	dec  c                                           ; $6ea0: $0d
	nop                                              ; $6ea1: $00
	dec  b                                           ; $6ea2: $05
	ld   b, b                                        ; $6ea3: $40
	rst  $38                                         ; $6ea4: $ff
	inc  bc                                          ; $6ea5: $03
	rst  $38                                         ; $6ea6: $ff
	ld   bc, $2801                                   ; $6ea7: $01 $01 $28
	nop                                              ; $6eaa: $00
	ld   bc, $7661                                   ; $6eab: $01 $61 $76
	ld   h, l                                        ; $6eae: $65
	ld   [hl], h                                     ; $6eaf: $74
	sbc  c                                           ; $6eb0: $99
	inc  bc                                          ; $6eb1: $03
	ld   l, a                                        ; $6eb2: $6f
	ld   [bc], a                                     ; $6eb3: $02
	xor  c                                           ; $6eb4: $a9
	ld   a, l                                        ; $6eb5: $7d
	ld   a, b                                        ; $6eb6: $78
	ld   d, d                                        ; $6eb7: $52
	ld   l, h                                        ; $6eb8: $6c
	sbc  a                                           ; $6eb9: $9f
	dec  c                                           ; $6eba: $0d
	nop                                              ; $6ebb: $00
	ld   a, [bc]                                     ; $6ebc: $0a
	ld   b, $2c                                      ; $6ebd: $06 $2c
	nop                                              ; $6ebf: $00
	rrca                                             ; $6ec0: $0f
	nop                                              ; $6ec1: $00
	ld   bc, $8c01                                   ; $6ec2: $01 $01 $8c
	ld   l, b                                        ; $6ec5: $68
	ld   a, l                                        ; $6ec6: $7d
	rst  $38                                         ; $6ec7: $ff
	rst  $38                                         ; $6ec8: $ff
	dec  c                                           ; $6ec9: $0d
	ld   [hl], a                                     ; $6eca: $77
	ld   d, h                                        ; $6ecb: $54
	ld   h, l                                        ; $6ecc: $65
	sub  [hl]                                        ; $6ecd: $96
	ld   d, h                                        ; $6ece: $54
	ld   e, c                                        ; $6ecf: $59
	rst  $38                                         ; $6ed0: $ff
	rst  $38                                         ; $6ed1: $ff
	rst  $38                                         ; $6ed2: $ff
	rst  $38                                         ; $6ed3: $ff
	dec  c                                           ; $6ed4: $0d
	nop                                              ; $6ed5: $00
	ld   a, [bc]                                     ; $6ed6: $0a
	dec  b                                           ; $6ed7: $05
	ld   b, b                                        ; $6ed8: $40
	rst  $38                                         ; $6ed9: $ff
	inc  bc                                          ; $6eda: $03
	rst  $38                                         ; $6edb: $ff
	ld   bc, $2801                                   ; $6edc: $01 $01 $28
	nop                                              ; $6edf: $00
	ld   b, $2c                                      ; $6ee0: $06 $2c
	nop                                              ; $6ee2: $00
	add  hl, de                                      ; $6ee3: $19
	inc  b                                           ; $6ee4: $04
	inc  bc                                          ; $6ee5: $03
	ld   e, l                                        ; $6ee6: $5d
	ld   [hl], d                                     ; $6ee7: $72
	ld   h, l                                        ; $6ee8: $65
	ld   l, l                                        ; $6ee9: $6d
	and  b                                           ; $6eea: $a0
	ld   a, l                                        ; $6eeb: $7d
	ld   e, l                                        ; $6eec: $5d
	nop                                              ; $6eed: $00
	nop                                              ; $6eee: $00
	ld   e, l                                        ; $6eef: $5d
	ld   [hl], d                                     ; $6ef0: $72
	ld   h, l                                        ; $6ef1: $65
	ld   l, l                                        ; $6ef2: $6d
	and  b                                           ; $6ef3: $a0
	ld   h, e                                        ; $6ef4: $63
	ld   e, l                                        ; $6ef5: $5d
	nop                                              ; $6ef6: $00
	ld   bc, $715e                                   ; $6ef7: $01 $5e $71
	ld   l, l                                        ; $6efa: $6d
	sbc  b                                           ; $6efb: $98
	halt                                             ; $6efc: $76
	ld   h, a                                        ; $6efd: $67
	sbc  c                                           ; $6efe: $99
	nop                                              ; $6eff: $00
	ld   [bc], a                                     ; $6f00: $02
	rlca                                             ; $6f01: $07
	ld   h, [hl]                                     ; $6f02: $66
	ld   bc, $0302                                   ; $6f03: $01 $02 $03
	ld   bc, $2000                                   ; $6f06: $01 $00 $20
	nop                                              ; $6f09: $00
	rlca                                             ; $6f0a: $07
	add  [hl]                                        ; $6f0b: $86
	ld   bc, $0302                                   ; $6f0c: $01 $02 $03
	ld   bc, $2001                                   ; $6f0f: $01 $01 $20
	nop                                              ; $6f12: $00
	rlca                                             ; $6f13: $07
	ret  nz                                          ; $6f14: $c0

	ld   bc, $0302                                   ; $6f15: $01 $02 $03
	ld   bc, $2002                                   ; $6f18: $01 $02 $20
	nop                                              ; $6f1b: $00
	ld   b, $f1                                      ; $6f1c: $06 $f1
	ld   bc, $000f                                   ; $6f1e: $01 $0f $00
	ld   bc, $0301                                   ; $6f21: $01 $01 $03
	ld   l, b                                        ; $6f24: $68
	ld   a, c                                        ; $6f25: $79
	ld   e, l                                        ; $6f26: $5d
	ld   [hl], d                                     ; $6f27: $72
	ld   h, l                                        ; $6f28: $65
	ld   l, l                                        ; $6f29: $6d
	and  b                                           ; $6f2a: $a0
	ld   a, l                                        ; $6f2b: $7d
	ld   d, d                                        ; $6f2c: $52
	ld   [hl], h                                     ; $6f2d: $74
	rst  $38                                         ; $6f2e: $ff
	rst  $38                                         ; $6f2f: $ff
	dec  c                                           ; $6f30: $0d
	nop                                              ; $6f31: $00
	ld   a, [bc]                                     ; $6f32: $0a
	dec  b                                           ; $6f33: $05
	ld   b, b                                        ; $6f34: $40
	rst  $38                                         ; $6f35: $ff
	inc  bc                                          ; $6f36: $03
	rst  $38                                         ; $6f37: $ff
	ld   bc, $2801                                   ; $6f38: $01 $01 $28
	nop                                              ; $6f3b: $00
	ld   b, $14                                      ; $6f3c: $06 $14
	ld   [bc], a                                     ; $6f3e: $02
	rrca                                             ; $6f3f: $0f
	nop                                              ; $6f40: $00
	ld   bc, $0301                                   ; $6f41: $01 $01 $03
	ld   l, b                                        ; $6f44: $68
	ld   a, c                                        ; $6f45: $79
	sbc  [hl]                                        ; $6f46: $9e
	ld   e, l                                        ; $6f47: $5d
	ld   [hl], d                                     ; $6f48: $72
	ld   h, l                                        ; $6f49: $65
	ld   l, l                                        ; $6f4a: $6d
	and  b                                           ; $6f4b: $a0
	ld   h, e                                        ; $6f4c: $63
	ld   d, d                                        ; $6f4d: $52
	ld   [hl], h                                     ; $6f4e: $74
	rst  $38                                         ; $6f4f: $ff
	rst  $38                                         ; $6f50: $ff
	dec  c                                           ; $6f51: $0d
	and  c                                           ; $6f52: $a1
	ld   sp, hl                                      ; $6f53: $f9
	db   $10                                         ; $6f54: $10
	ld   h, e                                        ; $6f55: $63
	ld   d, d                                        ; $6f56: $52
	ld   [hl], h                                     ; $6f57: $74
	ld   [hl], c                                     ; $6f58: $71
	ld   [hl], h                                     ; $6f59: $74
	rst  $38                                         ; $6f5a: $ff
	rst  $38                                         ; $6f5b: $ff
	dec  c                                           ; $6f5c: $0d
	nop                                              ; $6f5d: $00
	dec  b                                           ; $6f5e: $05
	ld   b, b                                        ; $6f5f: $40
	rst  $38                                         ; $6f60: $ff
	inc  bc                                          ; $6f61: $03
	rst  $38                                         ; $6f62: $ff
	ld   bc, $2801                                   ; $6f63: $01 $01 $28
	nop                                              ; $6f66: $00
	ld   bc, $8492                                   ; $6f67: $01 $92 $84
	ld   [hl], c                                     ; $6f6a: $71
	ld   l, a                                        ; $6f6b: $6f
	sub  c                                           ; $6f6c: $91
	pop  bc                                          ; $6f6d: $c1
	db   $e3                                         ; $6f6e: $e3
	ld   [hl], l                                     ; $6f6f: $75
	ld   h, l                                        ; $6f70: $65
	sub  l                                           ; $6f71: $95
	sbc  a                                           ; $6f72: $9f
	dec  c                                           ; $6f73: $0d
	nop                                              ; $6f74: $00
	ld   a, [bc]                                     ; $6f75: $0a
	ld   b, $2a                                      ; $6f76: $06 $2a
	ld   bc, $000f                                   ; $6f78: $01 $0f $00
	ld   bc, $0301                                   ; $6f7b: $01 $01 $03
	ld   l, b                                        ; $6f7e: $68
	ld   a, c                                        ; $6f7f: $79
	halt                                             ; $6f80: $76
	rst  $38                                         ; $6f81: $ff
	rst  $38                                         ; $6f82: $ff
	dec  c                                           ; $6f83: $0d
	ld   d, h                                        ; $6f84: $54
	db   $fc                                         ; $6f85: $fc
	and  c                                           ; $6f86: $a1
	sbc  [hl]                                        ; $6f87: $9e
	ld   e, [hl]                                     ; $6f88: $5e
	ld   [hl], c                                     ; $6f89: $71
	ld   l, l                                        ; $6f8a: $6d
	sbc  b                                           ; $6f8b: $98
	rst  $38                                         ; $6f8c: $ff
	rst  $38                                         ; $6f8d: $ff
	dec  c                                           ; $6f8e: $0d
	nop                                              ; $6f8f: $00
	dec  b                                           ; $6f90: $05
	ld   b, b                                        ; $6f91: $40
	rst  $38                                         ; $6f92: $ff
	inc  bc                                          ; $6f93: $03
	rst  $38                                         ; $6f94: $ff
	ld   bc, $2801                                   ; $6f95: $01 $01 $28
	nop                                              ; $6f98: $00
	ld   bc, $7471                                   ; $6f99: $01 $71 $74
	sbc  [hl]                                        ; $6f9c: $9e
	ld   l, a                                        ; $6f9d: $6f
	ld   e, d                                        ; $6f9e: $5a
	ld   d, h                                        ; $6f9f: $54
	ld   [hl], c                                     ; $6fa0: $71
	ld   [hl], h                                     ; $6fa1: $74
	ld   a, [$0dfa]                                  ; $6fa2: $fa $fa $0d
	nop                                              ; $6fa5: $00
	ld   a, [bc]                                     ; $6fa6: $0a
	ld   b, $2a                                      ; $6fa7: $06 $2a
	ld   bc, $000f                                   ; $6fa9: $01 $0f $00
	ld   bc, $0301                                   ; $6fac: $01 $01 $03
	ld   l, b                                        ; $6faf: $68
	ld   a, c                                        ; $6fb0: $79
	rst  $38                                         ; $6fb1: $ff
	rst  $38                                         ; $6fb2: $ff
	dec  c                                           ; $6fb3: $0d
	ld   [hl], a                                     ; $6fb4: $77
	ld   d, h                                        ; $6fb5: $54
	ld   h, l                                        ; $6fb6: $65
	sub  [hl]                                        ; $6fb7: $96
	ld   d, h                                        ; $6fb8: $54
	ld   e, c                                        ; $6fb9: $59
	rst  $38                                         ; $6fba: $ff
	rst  $38                                         ; $6fbb: $ff
	rst  $38                                         ; $6fbc: $ff
	rst  $38                                         ; $6fbd: $ff
	dec  c                                           ; $6fbe: $0d
	nop                                              ; $6fbf: $00
	ld   a, [bc]                                     ; $6fc0: $0a
	dec  b                                           ; $6fc1: $05
	ld   b, b                                        ; $6fc2: $40
	rst  $38                                         ; $6fc3: $ff
	inc  bc                                          ; $6fc4: $03
	rst  $38                                         ; $6fc5: $ff
	ld   bc, $2801                                   ; $6fc6: $01 $01 $28
	nop                                              ; $6fc9: $00
	ld   b, $2a                                      ; $6fca: $06 $2a
	ld   bc, $0419                                   ; $6fcc: $01 $19 $04
	inc  bc                                          ; $6fcf: $03
	cp   e                                           ; $6fd0: $bb
	db   $dd                                         ; $6fd1: $dd
	push af                                          ; $6fd2: $f5
	and  b                                           ; $6fd3: $a0
	ld   a, l                                        ; $6fd4: $7d
	ld   e, l                                        ; $6fd5: $5d
	nop                                              ; $6fd6: $00
	nop                                              ; $6fd7: $00
	cp   e                                           ; $6fd8: $bb
	xor  [hl]                                        ; $6fd9: $ae
	push af                                          ; $6fda: $f5
	and  b                                           ; $6fdb: $a0
	ld   e, c                                        ; $6fdc: $59
	add  h                                           ; $6fdd: $84
	sbc  c                                           ; $6fde: $99
	nop                                              ; $6fdf: $00
	ld   bc, $ddbb                                   ; $6fe0: $01 $bb $dd
	push af                                          ; $6fe3: $f5
	and  b                                           ; $6fe4: $a0
	ld   a, d                                        ; $6fe5: $7a
	ld   e, [hl]                                     ; $6fe6: $5e
	nop                                              ; $6fe7: $00
	ld   [bc], a                                     ; $6fe8: $02
	rlca                                             ; $6fe9: $07
	ld   c, [hl]                                     ; $6fea: $4e
	ld   [bc], a                                     ; $6feb: $02
	ld   [bc], a                                     ; $6fec: $02
	inc  bc                                          ; $6fed: $03
	ld   bc, $2000                                   ; $6fee: $01 $00 $20
	nop                                              ; $6ff1: $00
	rlca                                             ; $6ff2: $07
	ld   l, [hl]                                     ; $6ff3: $6e
	ld   [bc], a                                     ; $6ff4: $02
	ld   [bc], a                                     ; $6ff5: $02
	inc  bc                                          ; $6ff6: $03
	ld   bc, $2001                                   ; $6ff7: $01 $01 $20
	nop                                              ; $6ffa: $00
	rlca                                             ; $6ffb: $07
	and  d                                           ; $6ffc: $a2
	ld   [bc], a                                     ; $6ffd: $02
	ld   [bc], a                                     ; $6ffe: $02
	inc  bc                                          ; $6fff: $03
	ld   bc, $2002                                   ; $7000: $01 $02 $20
	nop                                              ; $7003: $00
	ld   b, $d4                                      ; $7004: $06 $d4
	ld   [bc], a                                     ; $7006: $02
	rrca                                             ; $7007: $0f
	nop                                              ; $7008: $00
	ld   bc, $6b01                                   ; $7009: $01 $01 $6b
	ld   h, l                                        ; $700c: $65
	ld   [hl], h                                     ; $700d: $74
	sbc  [hl]                                        ; $700e: $9e
	cp   e                                           ; $700f: $bb
	db   $dd                                         ; $7010: $dd
	push af                                          ; $7011: $f5
	and  b                                           ; $7012: $a0
	ld   a, l                                        ; $7013: $7d
	ld   d, d                                        ; $7014: $52
	ld   [hl], h                                     ; $7015: $74
	rst  $38                                         ; $7016: $ff
	rst  $38                                         ; $7017: $ff
	dec  c                                           ; $7018: $0d
	nop                                              ; $7019: $00
	ld   a, [bc]                                     ; $701a: $0a
	dec  b                                           ; $701b: $05
	ld   b, b                                        ; $701c: $40
	rst  $38                                         ; $701d: $ff
	inc  bc                                          ; $701e: $03
	rst  $38                                         ; $701f: $ff
	ld   bc, $2801                                   ; $7020: $01 $01 $28
	nop                                              ; $7023: $00
	ld   b, $f7                                      ; $7024: $06 $f7
	ld   [bc], a                                     ; $7026: $02
	rrca                                             ; $7027: $0f
	nop                                              ; $7028: $00
	ld   bc, $bb01                                   ; $7029: $01 $01 $bb
	xor  [hl]                                        ; $702c: $ae
	push af                                          ; $702d: $f5
	and  b                                           ; $702e: $a0
	ld   e, c                                        ; $702f: $59
	add  h                                           ; $7030: $84
	ld   [hl], c                                     ; $7031: $71
	ld   [hl], h                                     ; $7032: $74
	rst  $38                                         ; $7033: $ff
	rst  $38                                         ; $7034: $ff
	dec  c                                           ; $7035: $0d
	rst  $38                                         ; $7036: $ff
	rst  $38                                         ; $7037: $ff
	and  c                                           ; $7038: $a1
	ld   sp, hl                                      ; $7039: $f9
	db   $10                                         ; $703a: $10
	ld   a, b                                        ; $703b: $78
	and  c                                           ; $703c: $a1
	ld   [hl], l                                     ; $703d: $75
	ld   l, e                                        ; $703e: $6b
	and  c                                           ; $703f: $a1
	ld   a, b                                        ; $7040: $78
	sub  b                                           ; $7041: $90
	ld   a, h                                        ; $7042: $7c
	dec  c                                           ; $7043: $0d
	nop                                              ; $7044: $00
	dec  b                                           ; $7045: $05
	ld   b, b                                        ; $7046: $40
	rst  $38                                         ; $7047: $ff
	inc  bc                                          ; $7048: $03
	rst  $38                                         ; $7049: $ff
	ld   bc, $2801                                   ; $704a: $01 $01 $28
	nop                                              ; $704d: $00
	ld   bc, $8459                                   ; $704e: $01 $59 $84
	sbc  c                                           ; $7051: $99
	and  c                                           ; $7052: $a1
	ld   l, [hl]                                     ; $7053: $6e
	ld   sp, hl                                      ; $7054: $f9
	dec  c                                           ; $7055: $0d
	nop                                              ; $7056: $00
	ld   a, [bc]                                     ; $7057: $0a
	ld   b, $14                                      ; $7058: $06 $14
	ld   [bc], a                                     ; $705a: $02
	rrca                                             ; $705b: $0f
	nop                                              ; $705c: $00
	ld   bc, $6b01                                   ; $705d: $01 $01 $6b
	ld   h, l                                        ; $7060: $65
	ld   [hl], h                                     ; $7061: $74
	sbc  [hl]                                        ; $7062: $9e
	cp   e                                           ; $7063: $bb
	db   $dd                                         ; $7064: $dd
	push af                                          ; $7065: $f5
	and  b                                           ; $7066: $a0
	ld   a, d                                        ; $7067: $7a
	ld   e, [hl]                                     ; $7068: $5e
	sbc  a                                           ; $7069: $9f
	dec  c                                           ; $706a: $0d
	rst  $38                                         ; $706b: $ff
	rst  $38                                         ; $706c: $ff
	rst  $38                                         ; $706d: $ff
	rst  $38                                         ; $706e: $ff
	and  c                                           ; $706f: $a1
	ld   sp, hl                                      ; $7070: $f9
	dec  c                                           ; $7071: $0d
	nop                                              ; $7072: $00
	dec  b                                           ; $7073: $05
	ld   b, b                                        ; $7074: $40
	rst  $38                                         ; $7075: $ff
	inc  bc                                          ; $7076: $03
	rst  $38                                         ; $7077: $ff
	ld   bc, $2801                                   ; $7078: $01 $01 $28
	nop                                              ; $707b: $00
	ld   bc, $527a                                   ; $707c: $01 $7a $52
	ld   h, [hl]                                     ; $707f: $66
	sub  c                                           ; $7080: $91
	pop  bc                                          ; $7081: $c1
	db   $e3                                         ; $7082: $e3
	ld   [hl], l                                     ; $7083: $75
	ld   h, l                                        ; $7084: $65
	sub  l                                           ; $7085: $95
	ld   sp, hl                                      ; $7086: $f9
	dec  c                                           ; $7087: $0d
	nop                                              ; $7088: $00
	ld   a, [bc]                                     ; $7089: $0a
	ld   b, $14                                      ; $708a: $06 $14
	ld   [bc], a                                     ; $708c: $02
	rrca                                             ; $708d: $0f
	nop                                              ; $708e: $00
	ld   bc, $6b01                                   ; $708f: $01 $01 $6b
	ld   h, l                                        ; $7092: $65
	ld   [hl], h                                     ; $7093: $74
	rst  $38                                         ; $7094: $ff
	rst  $38                                         ; $7095: $ff
	dec  c                                           ; $7096: $0d
	ld   [hl], a                                     ; $7097: $77
	ld   d, h                                        ; $7098: $54
	ld   h, l                                        ; $7099: $65
	sub  [hl]                                        ; $709a: $96
	ld   d, h                                        ; $709b: $54
	ld   e, c                                        ; $709c: $59
	rst  $38                                         ; $709d: $ff
	rst  $38                                         ; $709e: $ff
	rst  $38                                         ; $709f: $ff
	rst  $38                                         ; $70a0: $ff
	dec  c                                           ; $70a1: $0d
	nop                                              ; $70a2: $00
	ld   a, [bc]                                     ; $70a3: $0a
	dec  b                                           ; $70a4: $05
	ld   b, b                                        ; $70a5: $40
	rst  $38                                         ; $70a6: $ff
	inc  bc                                          ; $70a7: $03
	rst  $38                                         ; $70a8: $ff
	ld   bc, $2801                                   ; $70a9: $01 $01 $28
	nop                                              ; $70ac: $00
	ld   b, $14                                      ; $70ad: $06 $14
	ld   [bc], a                                     ; $70af: $02
	add  hl, de                                      ; $70b0: $19
	inc  b                                           ; $70b1: $04
	inc  bc                                          ; $70b2: $03
	jp   c, $c9ba                                    ; $70b3: $da $ba $c9

	and  b                                           ; $70b6: $a0
	inc  b                                           ; $70b7: $04
	rlca                                             ; $70b8: $07
	sbc  c                                           ; $70b9: $99
	nop                                              ; $70ba: $00
	nop                                              ; $70bb: $00
	jp   c, $c9ed                                    ; $70bc: $da $ed $c9

	and  b                                           ; $70bf: $a0
	sub  h                                           ; $70c0: $94
	sbc  c                                           ; $70c1: $99
	adc  a                                           ; $70c2: $8f
	sbc  c                                           ; $70c3: $99
	nop                                              ; $70c4: $00
	ld   bc, $bada                                   ; $70c5: $01 $da $ba
	ret                                              ; $70c8: $c9


	and  b                                           ; $70c9: $a0
	ld   l, l                                        ; $70ca: $6d
	ld   l, l                                        ; $70cb: $6d
	adc  [hl]                                        ; $70cc: $8e
	nop                                              ; $70cd: $00
	ld   [bc], a                                     ; $70ce: $02
	rlca                                             ; $70cf: $07
	inc  [hl]                                        ; $70d0: $34
	inc  bc                                          ; $70d1: $03
	ld   [bc], a                                     ; $70d2: $02
	inc  bc                                          ; $70d3: $03
	ld   bc, $2000                                   ; $70d4: $01 $00 $20
	nop                                              ; $70d7: $00
	rlca                                             ; $70d8: $07
	ld   d, c                                        ; $70d9: $51
	inc  bc                                          ; $70da: $03
	ld   [bc], a                                     ; $70db: $02
	inc  bc                                          ; $70dc: $03
	ld   bc, $2001                                   ; $70dd: $01 $01 $20
	nop                                              ; $70e0: $00
	rlca                                             ; $70e1: $07
	adc  a                                           ; $70e2: $8f
	inc  bc                                          ; $70e3: $03
	ld   [bc], a                                     ; $70e4: $02
	inc  bc                                          ; $70e5: $03
	ld   bc, $2002                                   ; $70e6: $01 $02 $20
	nop                                              ; $70e9: $00
	ld   b, $c5                                      ; $70ea: $06 $c5
	inc  bc                                          ; $70ec: $03
	rrca                                             ; $70ed: $0f
	nop                                              ; $70ee: $00
	ld   bc, $da01                                   ; $70ef: $01 $01 $da
	cp   d                                           ; $70f2: $ba
	ret                                              ; $70f3: $c9


	and  b                                           ; $70f4: $a0
	inc  b                                           ; $70f5: $04
	rlca                                             ; $70f6: $07
	ld   [hl], h                                     ; $70f7: $74
	halt                                             ; $70f8: $76
	rst  $38                                         ; $70f9: $ff
	rst  $38                                         ; $70fa: $ff
	dec  c                                           ; $70fb: $0d
	nop                                              ; $70fc: $00
	ld   a, [bc]                                     ; $70fd: $0a
	dec  b                                           ; $70fe: $05
	ld   b, b                                        ; $70ff: $40
	rst  $38                                         ; $7100: $ff
	inc  bc                                          ; $7101: $03
	rst  $38                                         ; $7102: $ff
	ld   bc, $2801                                   ; $7103: $01 $01 $28
	nop                                              ; $7106: $00
	ld   b, $e4                                      ; $7107: $06 $e4
	inc  bc                                          ; $7109: $03
	rrca                                             ; $710a: $0f
	nop                                              ; $710b: $00
	ld   bc, $da01                                   ; $710c: $01 $01 $da
	db   $ed                                         ; $710f: $ed
	ret                                              ; $7110: $c9


	and  b                                           ; $7111: $a0
	sub  h                                           ; $7112: $94
	sbc  c                                           ; $7113: $99
	adc  a                                           ; $7114: $8f
	ld   [hl], h                                     ; $7115: $74
	halt                                             ; $7116: $76
	rst  $38                                         ; $7117: $ff
	rst  $38                                         ; $7118: $ff
	dec  c                                           ; $7119: $0d
	and  c                                           ; $711a: $a1
	ld   sp, hl                                      ; $711b: $f9
	db   $10                                         ; $711c: $10
	cp   e                                           ; $711d: $bb
	db   $dd                                         ; $711e: $dd
	push af                                          ; $711f: $f5
	and  b                                           ; $7120: $a0
	ld   a, d                                        ; $7121: $7a
	ld   d, d                                        ; $7122: $52
	ld   h, [hl]                                     ; $7123: $66
	sub  c                                           ; $7124: $91
	pop  bc                                          ; $7125: $c1
	db   $e3                                         ; $7126: $e3
	dec  c                                           ; $7127: $0d
	nop                                              ; $7128: $00
	dec  b                                           ; $7129: $05
	ld   b, b                                        ; $712a: $40
	rst  $38                                         ; $712b: $ff
	inc  bc                                          ; $712c: $03
	rst  $38                                         ; $712d: $ff
	ld   bc, $2801                                   ; $712e: $01 $01 $28
	nop                                              ; $7131: $00
	ld   bc, $6575                                   ; $7132: $01 $75 $65
	sub  l                                           ; $7135: $95
	sbc  a                                           ; $7136: $9f
	inc  bc                                          ; $7137: $03
	ld   h, l                                        ; $7138: $65
	inc  b                                           ; $7139: $04
	rlca                                             ; $713a: $07
	and  b                                           ; $713b: $a0
	inc  b                                           ; $713c: $04
	rlca                                             ; $713d: $07
	ld   a, b                                        ; $713e: $78
	ld   d, d                                        ; $713f: $52
	halt                                             ; $7140: $76
	sbc  a                                           ; $7141: $9f
	dec  c                                           ; $7142: $0d
	nop                                              ; $7143: $00
	ld   a, [bc]                                     ; $7144: $0a
	ld   b, $f7                                      ; $7145: $06 $f7
	ld   [bc], a                                     ; $7147: $02
	rrca                                             ; $7148: $0f
	nop                                              ; $7149: $00
	ld   bc, $da01                                   ; $714a: $01 $01 $da
	cp   d                                           ; $714d: $ba
	ret                                              ; $714e: $c9


	and  b                                           ; $714f: $a0
	ld   l, l                                        ; $7150: $6d
	ld   l, l                                        ; $7151: $6d
	and  c                                           ; $7152: $a1
	ld   [hl], l                                     ; $7153: $75
	halt                                             ; $7154: $76
	rst  $38                                         ; $7155: $ff
	rst  $38                                         ; $7156: $ff
	dec  c                                           ; $7157: $0d
	and  c                                           ; $7158: $a1
	ld   sp, hl                                      ; $7159: $f9
	db   $10                                         ; $715a: $10
	ld   l, l                                        ; $715b: $6d
	ld   l, l                                        ; $715c: $6d
	and  c                                           ; $715d: $a1
	ld   h, [hl]                                     ; $715e: $66
	sub  c                                           ; $715f: $91
	pop  bc                                          ; $7160: $c1
	db   $e3                                         ; $7161: $e3
	ld   [hl], l                                     ; $7162: $75
	ld   h, l                                        ; $7163: $65
	sub  l                                           ; $7164: $95
	sbc  a                                           ; $7165: $9f
	dec  c                                           ; $7166: $0d
	nop                                              ; $7167: $00
	dec  b                                           ; $7168: $05
	ld   b, b                                        ; $7169: $40
	rst  $38                                         ; $716a: $ff
	inc  bc                                          ; $716b: $03
	rst  $38                                         ; $716c: $ff
	ld   bc, $2801                                   ; $716d: $01 $01 $28
	nop                                              ; $7170: $00
	ld   bc, $0704                                   ; $7171: $01 $04 $07
	ld   a, b                                        ; $7174: $78
	ld   e, e                                        ; $7175: $5b
	sub  c                                           ; $7176: $91
	sbc  a                                           ; $7177: $9f
	dec  c                                           ; $7178: $0d
	nop                                              ; $7179: $00
	ld   a, [bc]                                     ; $717a: $0a
	ld   b, $f7                                      ; $717b: $06 $f7
	ld   [bc], a                                     ; $717d: $02
	rrca                                             ; $717e: $0f
	nop                                              ; $717f: $00
	ld   bc, $ff01                                   ; $7180: $01 $01 $ff
	rst  $38                                         ; $7183: $ff
	ld   [hl], a                                     ; $7184: $77
	ld   d, h                                        ; $7185: $54
	ld   h, l                                        ; $7186: $65
	sub  [hl]                                        ; $7187: $96
	ld   d, h                                        ; $7188: $54
	ld   e, c                                        ; $7189: $59
	rst  $38                                         ; $718a: $ff
	rst  $38                                         ; $718b: $ff
	rst  $38                                         ; $718c: $ff
	rst  $38                                         ; $718d: $ff
	dec  c                                           ; $718e: $0d
	nop                                              ; $718f: $00
	ld   a, [bc]                                     ; $7190: $0a
	dec  b                                           ; $7191: $05
	ld   b, b                                        ; $7192: $40
	rst  $38                                         ; $7193: $ff
	inc  bc                                          ; $7194: $03
	rst  $38                                         ; $7195: $ff
	ld   bc, $2801                                   ; $7196: $01 $01 $28
	nop                                              ; $7199: $00
	ld   b, $f7                                      ; $719a: $06 $f7
	ld   [bc], a                                     ; $719c: $02
	add  hl, de                                      ; $719d: $19
	inc  b                                           ; $719e: $04
	inc  bc                                          ; $719f: $03
	inc  b                                           ; $71a0: $04
	ld   l, d                                        ; $71a1: $6a
	and  b                                           ; $71a2: $a0
	halt                                             ; $71a3: $76
	halt                                             ; $71a4: $76
	ld   a, h                                        ; $71a5: $7c
	ld   d, [hl]                                     ; $71a6: $56
	sbc  c                                           ; $71a7: $99
	nop                                              ; $71a8: $00
	nop                                              ; $71a9: $00
	inc  b                                           ; $71aa: $04
	adc  a                                           ; $71ab: $8f
	and  b                                           ; $71ac: $a0
	halt                                             ; $71ad: $76
	halt                                             ; $71ae: $76
	ld   a, h                                        ; $71af: $7c
	ld   d, [hl]                                     ; $71b0: $56
	sbc  c                                           ; $71b1: $99
	nop                                              ; $71b2: $00
	ld   bc, $7877                                   ; $71b3: $01 $77 $78
	ld   l, l                                        ; $71b6: $6d
	halt                                             ; $71b7: $76
	ld   h, c                                        ; $71b8: $61
	ld   h, c                                        ; $71b9: $61
	sbc  e                                           ; $71ba: $9b
	ld   d, [hl]                                     ; $71bb: $56
	sbc  c                                           ; $71bc: $99
	nop                                              ; $71bd: $00
	ld   [bc], a                                     ; $71be: $02
	rlca                                             ; $71bf: $07
	inc  h                                           ; $71c0: $24
	inc  b                                           ; $71c1: $04
	ld   [bc], a                                     ; $71c2: $02
	inc  bc                                          ; $71c3: $03
	ld   bc, $2000                                   ; $71c4: $01 $00 $20
	nop                                              ; $71c7: $00
	rlca                                             ; $71c8: $07
	ld   d, a                                        ; $71c9: $57
	inc  b                                           ; $71ca: $04
	ld   [bc], a                                     ; $71cb: $02
	inc  bc                                          ; $71cc: $03
	ld   bc, $2001                                   ; $71cd: $01 $01 $20
	nop                                              ; $71d0: $00
	rlca                                             ; $71d1: $07
	sbc  l                                           ; $71d2: $9d
	inc  b                                           ; $71d3: $04
	ld   [bc], a                                     ; $71d4: $02
	inc  bc                                          ; $71d5: $03
	ld   bc, $2002                                   ; $71d6: $01 $02 $20
	nop                                              ; $71d9: $00
	ld   b, $fa                                      ; $71da: $06 $fa
	inc  b                                           ; $71dc: $04
	rrca                                             ; $71dd: $0f
	nop                                              ; $71de: $00
	ld   bc, $0301                                   ; $71df: $01 $01 $03
	dec  c                                           ; $71e2: $0d
	inc  bc                                          ; $71e3: $03
	ld   h, l                                        ; $71e4: $65
	ld   h, b                                        ; $71e5: $60
	ld   a, c                                        ; $71e6: $79
	sbc  [hl]                                        ; $71e7: $9e
	inc  b                                           ; $71e8: $04
	ld   l, d                                        ; $71e9: $6a
	and  b                                           ; $71ea: $a0
	halt                                             ; $71eb: $76
	halt                                             ; $71ec: $76
	ld   a, h                                        ; $71ed: $7c
	ld   d, [hl]                                     ; $71ee: $56
	sbc  c                                           ; $71ef: $99
	halt                                             ; $71f0: $76
	dec  c                                           ; $71f1: $0d
	rst  $38                                         ; $71f2: $ff
	rst  $38                                         ; $71f3: $ff
	rst  $38                                         ; $71f4: $ff
	rst  $38                                         ; $71f5: $ff
	dec  c                                           ; $71f6: $0d
	nop                                              ; $71f7: $00
	dec  b                                           ; $71f8: $05
	ld   b, b                                        ; $71f9: $40
	rst  $38                                         ; $71fa: $ff
	inc  bc                                          ; $71fb: $03
	rst  $38                                         ; $71fc: $ff
	ld   bc, $2801                                   ; $71fd: $01 $01 $28
	nop                                              ; $7200: $00
	ld   bc, $6596                                   ; $7201: $01 $96 $65
	ld   a, [$2910]                                  ; $7204: $fa $10 $29
	dec  h                                           ; $7207: $25
	ld   l, [hl]                                     ; $7208: $6e
	ld   a, [$000d]                                  ; $7209: $fa $0d $00
	ld   a, [bc]                                     ; $720c: $0a
	ld   b, $22                                      ; $720d: $06 $22
	dec  b                                           ; $720f: $05
	rrca                                             ; $7210: $0f
	nop                                              ; $7211: $00
	ld   bc, $0301                                   ; $7212: $01 $01 $03
	dec  c                                           ; $7215: $0d
	inc  bc                                          ; $7216: $03
	ld   h, l                                        ; $7217: $65
	ld   h, b                                        ; $7218: $60
	ld   a, c                                        ; $7219: $79
	sbc  [hl]                                        ; $721a: $9e
	inc  b                                           ; $721b: $04
	adc  a                                           ; $721c: $8f
	and  b                                           ; $721d: $a0
	halt                                             ; $721e: $76
	halt                                             ; $721f: $76
	ld   a, h                                        ; $7220: $7c
	ld   d, [hl]                                     ; $7221: $56
	sbc  c                                           ; $7222: $99
	rst  $38                                         ; $7223: $ff
	rst  $38                                         ; $7224: $ff
	dec  c                                           ; $7225: $0d
	rst  $38                                         ; $7226: $ff
	rst  $38                                         ; $7227: $ff
	rst  $38                                         ; $7228: $ff
	rst  $38                                         ; $7229: $ff
	and  c                                           ; $722a: $a1
	ld   sp, hl                                      ; $722b: $f9
	db   $10                                         ; $722c: $10
	inc  b                                           ; $722d: $04
	adc  a                                           ; $722e: $8f
	ld   a, h                                        ; $722f: $7c
	inc  bc                                          ; $7230: $03
	ld   a, h                                        ; $7231: $7c
	dec  b                                           ; $7232: $05
	ld   de, $a178                                   ; $7233: $11 $78 $a1
	ld   e, c                                        ; $7236: $59
	dec  c                                           ; $7237: $0d
	nop                                              ; $7238: $00
	dec  b                                           ; $7239: $05
	ld   b, b                                        ; $723a: $40
	rst  $38                                         ; $723b: $ff
	inc  bc                                          ; $723c: $03
	rst  $38                                         ; $723d: $ff
	ld   bc, $2801                                   ; $723e: $01 $01 $28
	nop                                              ; $7241: $00
	ld   bc, $7465                                   ; $7242: $01 $65 $74
	sbc  c                                           ; $7245: $99
	inc  b                                           ; $7246: $04
	ld   a, d                                        ; $7247: $7a
	ld   [bc], a                                     ; $7248: $02
	ld   a, e                                        ; $7249: $7b
	ld   h, [hl]                                     ; $724a: $66
	sub  c                                           ; $724b: $91
	ld   a, b                                        ; $724c: $78
	ld   d, d                                        ; $724d: $52
	sub  [hl]                                        ; $724e: $96
	sbc  a                                           ; $724f: $9f
	dec  c                                           ; $7250: $0d
	nop                                              ; $7251: $00
	ld   a, [bc]                                     ; $7252: $0a
	ld   b, $e4                                      ; $7253: $06 $e4
	inc  bc                                          ; $7255: $03
	rrca                                             ; $7256: $0f
	nop                                              ; $7257: $00
	ld   bc, $0301                                   ; $7258: $01 $01 $03
	dec  c                                           ; $725b: $0d
	inc  bc                                          ; $725c: $03
	ld   h, l                                        ; $725d: $65
	ld   h, b                                        ; $725e: $60
	ld   a, c                                        ; $725f: $79
	rst  $38                                         ; $7260: $ff
	rst  $38                                         ; $7261: $ff
	dec  c                                           ; $7262: $0d
	ld   h, c                                        ; $7263: $61
	ld   l, a                                        ; $7264: $6f
	sub  a                                           ; $7265: $97
	ld   a, c                                        ; $7266: $79
	ld   e, b                                        ; $7267: $58
	sbc  l                                           ; $7268: $9d
	ld   h, a                                        ; $7269: $67
	ld   e, b                                        ; $726a: $58
	inc  b                                           ; $726b: $04
	ld   a, b                                        ; $726c: $78
	and  b                                           ; $726d: $a0
	sbc  [hl]                                        ; $726e: $9e
	dec  c                                           ; $726f: $0d
	ld   [hl], a                                     ; $7270: $77
	ld   a, b                                        ; $7271: $78
	ld   l, l                                        ; $7272: $6d
	halt                                             ; $7273: $76
	inc  bc                                          ; $7274: $03
	ld   [hl], l                                     ; $7275: $75
	ld   b, $02                                      ; $7276: $06 $02
	sbc  c                                           ; $7278: $99
	ld   a, [$000d]                                  ; $7279: $fa $0d $00
	ld   a, [bc]                                     ; $727c: $0a
	ld   bc, $fc78                                   ; $727d: $01 $78 $fc
	and  c                                           ; $7280: $a1
	ld   [hl], h                                     ; $7281: $74
	ld   [bc], a                                     ; $7282: $02
	sbc  l                                           ; $7283: $9d
	ld   [hl], c                                     ; $7284: $71
	ld   [hl], h                                     ; $7285: $74
	sbc  c                                           ; $7286: $99
	inc  b                                           ; $7287: $04
	ld   a, d                                        ; $7288: $7a
	ld   [bc], a                                     ; $7289: $02
	ld   a, e                                        ; $728a: $7b
	ld   h, [hl]                                     ; $728b: $66
	sub  c                                           ; $728c: $91
	dec  c                                           ; $728d: $0d
	ld   a, b                                        ; $728e: $78
	ld   d, d                                        ; $728f: $52
	and  c                                           ; $7290: $a1
	ld   l, [hl]                                     ; $7291: $6e
	sub  [hl]                                        ; $7292: $96
	ld   a, b                                        ; $7293: $78
	sbc  a                                           ; $7294: $9f
	dec  c                                           ; $7295: $0d
	nop                                              ; $7296: $00
	dec  b                                           ; $7297: $05
	ld   b, b                                        ; $7298: $40
	rst  $38                                         ; $7299: $ff
	inc  bc                                          ; $729a: $03
	rst  $38                                         ; $729b: $ff
	ld   bc, $2801                                   ; $729c: $01 $01 $28
	nop                                              ; $729f: $00
	ld   bc, $2805                                   ; $72a0: $01 $05 $28
	ld   e, d                                        ; $72a3: $5a
	ld   a, b                                        ; $72a4: $78
	ld   e, e                                        ; $72a5: $5b
	sub  c                                           ; $72a6: $91
	ld   e, b                                        ; $72a7: $58
	ld   e, l                                        ; $72a8: $5d
	sbc  d                                           ; $72a9: $9a
	sbc  c                                           ; $72aa: $99
	ld   l, h                                        ; $72ab: $6c
	sbc  a                                           ; $72ac: $9f
	dec  c                                           ; $72ad: $0d
	nop                                              ; $72ae: $00
	ld   a, [bc]                                     ; $72af: $0a
	ld   b, $e4                                      ; $72b0: $06 $e4
	inc  bc                                          ; $72b2: $03
	rrca                                             ; $72b3: $0f
	nop                                              ; $72b4: $00
	ld   bc, $0301                                   ; $72b5: $01 $01 $03
	dec  c                                           ; $72b8: $0d
	inc  bc                                          ; $72b9: $03
	ld   h, l                                        ; $72ba: $65
	ld   h, b                                        ; $72bb: $60
	ld   a, c                                        ; $72bc: $79
	rst  $38                                         ; $72bd: $ff
	rst  $38                                         ; $72be: $ff
	dec  c                                           ; $72bf: $0d
	rst  $38                                         ; $72c0: $ff
	rst  $38                                         ; $72c1: $ff
	rst  $38                                         ; $72c2: $ff
	rst  $38                                         ; $72c3: $ff
	ld   [hl], a                                     ; $72c4: $77
	ld   d, h                                        ; $72c5: $54
	ld   h, l                                        ; $72c6: $65
	sub  [hl]                                        ; $72c7: $96
	ld   d, h                                        ; $72c8: $54
	ld   e, c                                        ; $72c9: $59
	rst  $38                                         ; $72ca: $ff
	rst  $38                                         ; $72cb: $ff
	dec  c                                           ; $72cc: $0d
	nop                                              ; $72cd: $00
	ld   a, [bc]                                     ; $72ce: $0a
	dec  b                                           ; $72cf: $05
	ld   b, b                                        ; $72d0: $40
	rst  $38                                         ; $72d1: $ff
	inc  bc                                          ; $72d2: $03
	rst  $38                                         ; $72d3: $ff
	ld   bc, $2801                                   ; $72d4: $01 $01 $28
	nop                                              ; $72d7: $00
	ld   b, $e4                                      ; $72d8: $06 $e4
	inc  bc                                          ; $72da: $03
	rlca                                             ; $72db: $07
	dec  a                                           ; $72dc: $3d
	dec  b                                           ; $72dd: $05
	inc  bc                                          ; $72de: $03
	rst  $38                                         ; $72df: $ff
	ld   bc, $2005                                   ; $72e0: $01 $05 $20
	nop                                              ; $72e3: $00
	rlca                                             ; $72e4: $07
	ld   a, h                                        ; $72e5: $7c
	dec  b                                           ; $72e6: $05
	inc  bc                                          ; $72e7: $03
	rst  $38                                         ; $72e8: $ff
	ld   bc, $2006                                   ; $72e9: $01 $06 $20
	nop                                              ; $72ec: $00
	rlca                                             ; $72ed: $07
	and  h                                           ; $72ee: $a4
	dec  b                                           ; $72ef: $05
	inc  bc                                          ; $72f0: $03
	rst  $38                                         ; $72f1: $ff
	ld   bc, $2507                                   ; $72f2: $01 $07 $25
	nop                                              ; $72f5: $00
	inc  hl                                          ; $72f6: $23
	inc  b                                           ; $72f7: $04
	inc  e                                           ; $72f8: $1c
	dec  b                                           ; $72f9: $05
	ld   bc, $1d01                                   ; $72fa: $01 $01 $1d
	ld   b, b                                        ; $72fd: $40
	dec  d                                           ; $72fe: $15
	inc  bc                                          ; $72ff: $03
	dec  d                                           ; $7300: $15
	ld   bc, $2803                                   ; $7301: $01 $03 $28
	nop                                              ; $7304: $00
	ld   bc, $7d58                                   ; $7305: $01 $58 $7d
	sub  [hl]                                        ; $7308: $96
	ld   d, h                                        ; $7309: $54
	sbc  a                                           ; $730a: $9f
	ld   [$7d00], sp                                 ; $730b: $08 $00 $7d
	and  c                                           ; $730e: $a1
	sbc  a                                           ; $730f: $9f
	dec  c                                           ; $7310: $0d
	inc  bc                                          ; $7311: $03
	ld   l, a                                        ; $7312: $6f
	ld   [bc], a                                     ; $7313: $02
	xor  c                                           ; $7314: $a9
	push de                                          ; $7315: $d5
	call nz, $ecc0                                   ; $7316: $c4 $c0 $ec
	sub  d                                           ; $7319: $92
	sbc  a                                           ; $731a: $9f
	dec  c                                           ; $731b: $0d
	nop                                              ; $731c: $00
	ld   a, [bc]                                     ; $731d: $0a
	ld   bc, $7889                                   ; $731e: $01 $89 $78
	sbc  [hl]                                        ; $7321: $9e
	ld   [bc], a                                     ; $7322: $02
	ld   a, a                                        ; $7323: $7f
	ld   h, c                                        ; $7324: $61
	ld   e, c                                        ; $7325: $59
	sbc  a                                           ; $7326: $9f
	dec  c                                           ; $7327: $0d
	nop                                              ; $7328: $00
	ld   a, [bc]                                     ; $7329: $0a
	dec  c                                           ; $732a: $0d
	nop                                              ; $732b: $00
	nop                                              ; $732c: $00
	rrca                                             ; $732d: $0f
	nop                                              ; $732e: $00
	ld   bc, $020c                                   ; $732f: $01 $0c $02
	ld   b, $f5                                      ; $7332: $06 $f5
	dec  b                                           ; $7334: $05
	ld   c, $04                                      ; $7335: $0e $04
	inc  e                                           ; $7337: $1c
	dec  b                                           ; $7338: $05
	nop                                              ; $7339: $00
	nop                                              ; $733a: $00
	ld   bc, $7d58                                   ; $733b: $01 $58 $7d
	sub  [hl]                                        ; $733e: $96
	ld   d, h                                        ; $733f: $54
	sbc  a                                           ; $7340: $9f
	ld   [$7d00], sp                                 ; $7341: $08 $00 $7d
	and  c                                           ; $7344: $a1
	sbc  a                                           ; $7345: $9f
	dec  c                                           ; $7346: $0d
	adc  c                                           ; $7347: $89
	ld   a, b                                        ; $7348: $78
	sbc  [hl]                                        ; $7349: $9e
	ld   [bc], a                                     ; $734a: $02
	ld   a, a                                        ; $734b: $7f
	ld   h, c                                        ; $734c: $61
	ld   e, c                                        ; $734d: $59
	sbc  a                                           ; $734e: $9f
	dec  c                                           ; $734f: $0d
	nop                                              ; $7350: $00
	ld   a, [bc]                                     ; $7351: $0a
	dec  c                                           ; $7352: $0d
	nop                                              ; $7353: $00
	nop                                              ; $7354: $00
	rrca                                             ; $7355: $0f
	nop                                              ; $7356: $00
	ld   bc, $020c                                   ; $7357: $01 $0c $02
	ld   b, $f5                                      ; $735a: $06 $f5
	dec  b                                           ; $735c: $05
	ld   c, $04                                      ; $735d: $0e $04
	inc  e                                           ; $735f: $1c
	dec  b                                           ; $7360: $05
	rlca                                             ; $7361: $07
	rlca                                             ; $7362: $07
	dec  e                                           ; $7363: $1d
	ld   b, b                                        ; $7364: $40
	dec  d                                           ; $7365: $15
	inc  bc                                          ; $7366: $03
	dec  d                                           ; $7367: $15
	ld   bc, $2901                                   ; $7368: $01 $01 $29
	nop                                              ; $736b: $00
	ld   bc, $7d58                                   ; $736c: $01 $58 $7d
	sub  [hl]                                        ; $736f: $96
	ld   d, h                                        ; $7370: $54
	sbc  a                                           ; $7371: $9f
	ld   [$7d00], sp                                 ; $7372: $08 $00 $7d
	and  c                                           ; $7375: $a1
	sbc  a                                           ; $7376: $9f
	dec  c                                           ; $7377: $0d
	ld   e, b                                        ; $7378: $58
	ld   l, e                                        ; $7379: $6b
	ld   e, c                                        ; $737a: $59
	ld   [hl], c                                     ; $737b: $71
	ld   l, l                                        ; $737c: $6d
	sub  d                                           ; $737d: $92
	and  c                                           ; $737e: $a1
	ld   e, c                                        ; $737f: $59
	sbc  a                                           ; $7380: $9f
	dec  c                                           ; $7381: $0d
	ld   d, d                                        ; $7382: $52
	ld   [hl], c                                     ; $7383: $71
	ld   l, l                                        ; $7384: $6d
	ld   d, d                                        ; $7385: $52
	inc  b                                           ; $7386: $04
	ld   c, c                                        ; $7387: $49
	ld   h, l                                        ; $7388: $65
	ld   [hl], h                                     ; $7389: $74
	ld   l, l                                        ; $738a: $6d
	and  c                                           ; $738b: $a1
	ld   sp, hl                                      ; $738c: $f9
	dec  c                                           ; $738d: $0d
	nop                                              ; $738e: $00
	ld   a, [bc]                                     ; $738f: $0a
	inc  e                                           ; $7390: $1c
	dec  b                                           ; $7391: $05
	nop                                              ; $7392: $00
	nop                                              ; $7393: $00
	ld   bc, $508c                                   ; $7394: $01 $8c $50
	ld   d, [hl]                                     ; $7397: $56
	ld   d, [hl]                                     ; $7398: $56
	sbc  l                                           ; $7399: $9d
	sbc  a                                           ; $739a: $9f
	ld   [bc], a                                     ; $739b: $02
	ld   a, a                                        ; $739c: $7f
	ld   h, c                                        ; $739d: $61
	ld   e, c                                        ; $739e: $59
	sbc  a                                           ; $739f: $9f
	dec  c                                           ; $73a0: $0d
	nop                                              ; $73a1: $00
	ld   a, [bc]                                     ; $73a2: $0a
	dec  c                                           ; $73a3: $0d
	nop                                              ; $73a4: $00
	nop                                              ; $73a5: $00
	rrca                                             ; $73a6: $0f
	nop                                              ; $73a7: $00
	ld   bc, $020c                                   ; $73a8: $01 $0c $02
	ld   b, $f5                                      ; $73ab: $06 $f5
	dec  b                                           ; $73ad: $05
	ld   c, $94                                      ; $73ae: $0e $94
	inc  e                                           ; $73b0: $1c
	dec  b                                           ; $73b1: $05
	nop                                              ; $73b2: $00
	nop                                              ; $73b3: $00
	ld   bc, $a189                                   ; $73b4: $01 $89 $a1
	adc  h                                           ; $73b7: $8c
	sbc  [hl]                                        ; $73b8: $9e
	ld   a, c                                        ; $73b9: $79
	ld   e, h                                        ; $73ba: $5c
	sub  d                                           ; $73bb: $92
	ld   e, c                                        ; $73bc: $59
	sub  d                                           ; $73bd: $92
	ld   a, b                                        ; $73be: $78
	ld   d, b                                        ; $73bf: $50
	db   $fc                                         ; $73c0: $fc
	sbc  a                                           ; $73c1: $9f
	dec  c                                           ; $73c2: $0d
	ld   [$7d00], sp                                 ; $73c3: $08 $00 $7d
	and  c                                           ; $73c6: $a1
	ld   a, l                                        ; $73c7: $7d
	sbc  [hl]                                        ; $73c8: $9e
	dec  c                                           ; $73c9: $0d
	ld   h, c                                        ; $73ca: $61
	ld   d, h                                        ; $73cb: $54
	ld   d, d                                        ; $73cc: $52
	ld   d, h                                        ; $73cd: $54
	halt                                             ; $73ce: $76
	ld   h, c                                        ; $73cf: $61
	ld   [bc], a                                     ; $73d0: $02
	sbc  d                                           ; $73d1: $9a
	ld   e, e                                        ; $73d2: $5b
	ld   e, c                                        ; $73d3: $59
	ld   sp, hl                                      ; $73d4: $f9
	dec  c                                           ; $73d5: $0d
	nop                                              ; $73d6: $00
	ld   a, [bc]                                     ; $73d7: $0a
	add  hl, de                                      ; $73d8: $19
	dec  b                                           ; $73d9: $05
	ld   [bc], a                                     ; $73da: $02
	ld   [bc], a                                     ; $73db: $02
	sbc  d                                           ; $73dc: $9a
	ld   e, e                                        ; $73dd: $5b
	nop                                              ; $73de: $00
	nop                                              ; $73df: $00
	ld   d, d                                        ; $73e0: $52
	adc  h                                           ; $73e1: $8c
	ld   d, d                                        ; $73e2: $52
	ld   l, a                                        ; $73e3: $6f
	nop                                              ; $73e4: $00
	ld   bc, $4207                                   ; $73e5: $01 $07 $42
	ld   b, $02                                      ; $73e8: $06 $02
	inc  bc                                          ; $73ea: $03
	ld   bc, $2000                                   ; $73eb: $01 $00 $20
	nop                                              ; $73ee: $00
	rlca                                             ; $73ef: $07
	adc  b                                           ; $73f0: $88
	ld   b, $02                                      ; $73f1: $06 $02
	inc  bc                                          ; $73f3: $03
	ld   bc, $2001                                   ; $73f4: $01 $01 $20
	nop                                              ; $73f7: $00
	ld   b, $e1                                      ; $73f8: $06 $e1
	ld   b, $0f                                      ; $73fa: $06 $0f
	nop                                              ; $73fc: $00
	ld   bc, $0201                                   ; $73fd: $01 $01 $02
	sbc  d                                           ; $7400: $9a
	ld   e, e                                        ; $7401: $5b
	ld   [hl], l                                     ; $7402: $75
	ld   h, a                                        ; $7403: $67
	sub  [hl]                                        ; $7404: $96
	sbc  a                                           ; $7405: $9f
	dec  c                                           ; $7406: $0d
	dec  b                                           ; $7407: $05
	inc  de                                          ; $7408: $13
	ld   h, l                                        ; $7409: $65
	ld   d, d                                        ; $740a: $52
	ld   [hl], l                                     ; $740b: $75
	ld   h, a                                        ; $740c: $67
	ld   e, c                                        ; $740d: $59
	sub  a                                           ; $740e: $97
	sbc  a                                           ; $740f: $9f
	dec  c                                           ; $7410: $0d
	nop                                              ; $7411: $00
	ld   a, [bc]                                     ; $7412: $0a
	inc  e                                           ; $7413: $1c
	dec  b                                           ; $7414: $05
	ld   bc, $1d01                                   ; $7415: $01 $01 $1d
	ld   b, b                                        ; $7418: $40
	dec  d                                           ; $7419: $15
	inc  bc                                          ; $741a: $03
	dec  d                                           ; $741b: $15
	ld   bc, $2802                                   ; $741c: $01 $02 $28
	nop                                              ; $741f: $00
	ld   bc, $546b                                   ; $7420: $01 $6b $54
	ld   [bc], a                                     ; $7423: $02
	sbc  l                                           ; $7424: $9d
	ld   [hl], c                                     ; $7425: $71
	ld   [hl], h                                     ; $7426: $74
	ld   e, l                                        ; $7427: $5d
	sbc  d                                           ; $7428: $9a
	sbc  c                                           ; $7429: $99
	halt                                             ; $742a: $76
	dec  c                                           ; $742b: $0d
	and  a                                           ; $742c: $a7
	jp   nz, Jump_055_5490                           ; $742d: $c2 $90 $54

	sbc  d                                           ; $7430: $9a
	ld   h, l                                        ; $7431: $65
	ld   d, d                                        ; $7432: $52
	sbc  l                                           ; $7433: $9d
	sbc  a                                           ; $7434: $9f
	dec  c                                           ; $7435: $0d
	nop                                              ; $7436: $00
	ld   a, [bc]                                     ; $7437: $0a
	dec  c                                           ; $7438: $0d
	nop                                              ; $7439: $00
	nop                                              ; $743a: $00
	rrca                                             ; $743b: $0f
	nop                                              ; $743c: $00
	ld   bc, $2b06                                   ; $743d: $01 $06 $2b
	rlca                                             ; $7440: $07
	rrca                                             ; $7441: $0f
	nop                                              ; $7442: $00
	ld   bc, $5201                                   ; $7443: $01 $01 $52
	adc  h                                           ; $7446: $8c
	ld   d, d                                        ; $7447: $52
	ld   l, a                                        ; $7448: $6f
	ld   [bc], a                                     ; $7449: $02
	sbc  d                                           ; $744a: $9a
	ld   e, e                                        ; $744b: $5b
	ld   h, [hl]                                     ; $744c: $66
	sub  c                                           ; $744d: $91
	ld   a, b                                        ; $744e: $78
	ld   d, d                                        ; $744f: $52
	dec  c                                           ; $7450: $0d
	and  c                                           ; $7451: $a1
	ld   [hl], l                                     ; $7452: $75
	ld   h, a                                        ; $7453: $67
	sub  [hl]                                        ; $7454: $96
	sbc  a                                           ; $7455: $9f
	dec  c                                           ; $7456: $0d
	inc  bc                                          ; $7457: $03
	add  d                                           ; $7458: $82
	ld   b, $41                                      ; $7459: $06 $41
	adc  l                                           ; $745b: $8d
	ld   e, d                                        ; $745c: $5a
	ld   [bc], a                                     ; $745d: $02
	sub  h                                           ; $745e: $94
	inc  bc                                          ; $745f: $03
	ld   l, e                                        ; $7460: $6b
	ld   [hl], l                                     ; $7461: $75
	rst  $38                                         ; $7462: $ff
	rst  $38                                         ; $7463: $ff
	dec  c                                           ; $7464: $0d
	nop                                              ; $7465: $00
	ld   a, [bc]                                     ; $7466: $0a
	inc  e                                           ; $7467: $1c
	dec  b                                           ; $7468: $05
	ld   [bc], a                                     ; $7469: $02
	ld   [bc], a                                     ; $746a: $02
	dec  e                                           ; $746b: $1d
	ld   b, b                                        ; $746c: $40
	dec  d                                           ; $746d: $15
	inc  bc                                          ; $746e: $03
	dec  d                                           ; $746f: $15
	ld   bc, $2901                                   ; $7470: $01 $01 $29
	nop                                              ; $7473: $00
	ld   bc, $546b                                   ; $7474: $01 $6b $54
	ld   e, c                                        ; $7477: $59
	rst  $38                                         ; $7478: $ff
	rst  $38                                         ; $7479: $ff
	rst  $38                                         ; $747a: $ff
	rst  $38                                         ; $747b: $ff
	dec  c                                           ; $747c: $0d
	adc  c                                           ; $747d: $89
	ld   a, b                                        ; $747e: $78
	sbc  [hl]                                        ; $747f: $9e
	ld   e, b                                        ; $7480: $58
	adc  l                                           ; $7481: $8d
	ld   e, l                                        ; $7482: $5d
	ld   h, [hl]                                     ; $7483: $66
	ld   [bc], a                                     ; $7484: $02
	inc  l                                           ; $7485: $2c
	ld   d, d                                        ; $7486: $52
	ld   [hl], h                                     ; $7487: $74
	dec  c                                           ; $7488: $0d
	ld   [bc], a                                     ; $7489: $02
	or   l                                           ; $748a: $b5
	sbc  e                                           ; $748b: $9b
	ld   e, c                                        ; $748c: $59
	sbc  a                                           ; $748d: $9f
	dec  c                                           ; $748e: $0d
	nop                                              ; $748f: $00
	ld   a, [bc]                                     ; $7490: $0a
	dec  c                                           ; $7491: $0d
	nop                                              ; $7492: $00
	nop                                              ; $7493: $00
	rrca                                             ; $7494: $0f
	nop                                              ; $7495: $00
	ld   bc, $0706                                   ; $7496: $01 $06 $07
	dec  c                                           ; $7499: $0d
	inc  e                                           ; $749a: $1c
	dec  b                                           ; $749b: $05
	ld   [bc], a                                     ; $749c: $02
	ld   [bc], a                                     ; $749d: $02
	ld   bc, $ffff                                   ; $749e: $01 $ff $ff
	ld   d, b                                        ; $74a1: $50
	rst  $38                                         ; $74a2: $ff
	rst  $38                                         ; $74a3: $ff
	ld   d, b                                        ; $74a4: $50
	and  c                                           ; $74a5: $a1
	adc  h                                           ; $74a6: $8c
	sbc  b                                           ; $74a7: $98
	dec  c                                           ; $74a8: $0d
	ld   a, c                                        ; $74a9: $79
	ld   e, h                                        ; $74aa: $5c
	sub  d                                           ; $74ab: $92
	ld   e, c                                        ; $74ac: $59
	ld   a, b                                        ; $74ad: $78
	ld   a, h                                        ; $74ae: $7c
	ld   a, l                                        ; $74af: $7d
	ld   [bc], a                                     ; $74b0: $02
	sbc  d                                           ; $74b1: $9a
	ld   e, c                                        ; $74b2: $59
	and  c                                           ; $74b3: $a1
	dec  c                                           ; $74b4: $0d
	sub  [hl]                                        ; $74b5: $96
	ld   d, h                                        ; $74b6: $54
	sub  d                                           ; $74b7: $92
	ld   a, b                                        ; $74b8: $78
	rst  $38                                         ; $74b9: $ff
	rst  $38                                         ; $74ba: $ff
	dec  c                                           ; $74bb: $0d
	nop                                              ; $74bc: $00
	ld   a, [bc]                                     ; $74bd: $0a
	dec  e                                           ; $74be: $1d
	ld   b, b                                        ; $74bf: $40
	dec  d                                           ; $74c0: $15
	inc  bc                                          ; $74c1: $03
	dec  d                                           ; $74c2: $15
	ld   bc, $2901                                   ; $74c3: $01 $01 $29
	nop                                              ; $74c6: $00
	ld   bc, $7889                                   ; $74c7: $01 $89 $78
	ld   e, b                                        ; $74ca: $58
	adc  l                                           ; $74cb: $8d
	ld   e, l                                        ; $74cc: $5d
	ld   h, [hl]                                     ; $74cd: $66
	ld   [bc], a                                     ; $74ce: $02
	inc  l                                           ; $74cf: $2c
	ld   d, d                                        ; $74d0: $52
	ld   [hl], h                                     ; $74d1: $74
	dec  c                                           ; $74d2: $0d
	ld   [bc], a                                     ; $74d3: $02
	or   l                                           ; $74d4: $b5
	sbc  e                                           ; $74d5: $9b
	ld   e, c                                        ; $74d6: $59
	sbc  a                                           ; $74d7: $9f
	dec  c                                           ; $74d8: $0d
	nop                                              ; $74d9: $00
	ld   a, [bc]                                     ; $74da: $0a
	dec  c                                           ; $74db: $0d
	nop                                              ; $74dc: $00
	nop                                              ; $74dd: $00
	rrca                                             ; $74de: $0f
	nop                                              ; $74df: $00
	ld   bc, $0706                                   ; $74e0: $01 $06 $07
	dec  c                                           ; $74e3: $0d
	inc  hl                                          ; $74e4: $23
	add  e                                           ; $74e5: $83
	inc  e                                           ; $74e6: $1c
	dec  b                                           ; $74e7: $05
	ld   bc, $0101                                   ; $74e8: $01 $01 $01
	ld   [bc], a                                     ; $74eb: $02
	ld   hl, $0c04                                   ; $74ec: $21 $04 $0c
	ld   e, d                                        ; $74ef: $5a
	ld   d, d                                        ; $74f0: $52
	ld   [hl], c                                     ; $74f1: $71
	ld   a, a                                        ; $74f2: $7f
	ld   d, d                                        ; $74f3: $52
	inc  bc                                          ; $74f4: $03
	add  b                                           ; $74f5: $80
	ld   [hl], h                                     ; $74f6: $74
	sbc  c                                           ; $74f7: $99
	ld   a, b                                        ; $74f8: $78
	db   $fc                                         ; $74f9: $fc
	sbc  a                                           ; $74fa: $9f
	dec  c                                           ; $74fb: $0d
	ld   l, e                                        ; $74fc: $6b
	ld   d, h                                        ; $74fd: $54
	sub  d                                           ; $74fe: $92
	sbc  [hl]                                        ; $74ff: $9e
	ld   [$7d00], sp                                 ; $7500: $08 $00 $7d
	and  c                                           ; $7503: $a1
	ld   a, h                                        ; $7504: $7c
	dec  c                                           ; $7505: $0d
	ld   [bc], a                                     ; $7506: $02
	sbc  d                                           ; $7507: $9a
	ld   e, e                                        ; $7508: $5b
	ld   a, b                                        ; $7509: $78
	inc  bc                                          ; $750a: $03
	ld   l, d                                        ; $750b: $6a
	add  a                                           ; $750c: $87
	inc  b                                           ; $750d: $04
	sub  d                                           ; $750e: $92
	ld   a, l                                        ; $750f: $7d
	ld   sp, hl                                      ; $7510: $f9
	dec  c                                           ; $7511: $0d
	nop                                              ; $7512: $00
	ld   a, [bc]                                     ; $7513: $0a
	add  hl, de                                      ; $7514: $19
	dec  b                                           ; $7515: $05
	inc  bc                                          ; $7516: $03
	cp   d                                           ; $7517: $ba
	rst  ToBoot                                         ; $7518: $c7
	ei                                               ; $7519: $fb
	xor  [hl]                                        ; $751a: $ae
	nop                                              ; $751b: $00
	nop                                              ; $751c: $00
	sub  b                                           ; $751d: $90
	and  c                                           ; $751e: $a1
	ld   h, [hl]                                     ; $751f: $66
	sub  c                                           ; $7520: $91
	nop                                              ; $7521: $00
	ld   bc, $616d                                   ; $7522: $01 $6d $61
	inc  bc                                          ; $7525: $03
	ld   c, $5b                                      ; $7526: $0e $5b
	nop                                              ; $7528: $00
	ld   [bc], a                                     ; $7529: $02
	rlca                                             ; $752a: $07
	adc  a                                           ; $752b: $8f
	rlca                                             ; $752c: $07
	ld   [bc], a                                     ; $752d: $02
	inc  bc                                          ; $752e: $03
	ld   bc, $2000                                   ; $752f: $01 $00 $20
	nop                                              ; $7532: $00
	rlca                                             ; $7533: $07
	rst  $38                                         ; $7534: $ff
	rlca                                             ; $7535: $07
	ld   [bc], a                                     ; $7536: $02
	inc  bc                                          ; $7537: $03
	ld   bc, $2001                                   ; $7538: $01 $01 $20
	nop                                              ; $753b: $00
	rlca                                             ; $753c: $07
	ld   d, b                                        ; $753d: $50
	ld   [$0302], sp                                 ; $753e: $08 $02 $03
	ld   bc, $2002                                   ; $7541: $01 $02 $20
	nop                                              ; $7544: $00
	ld   b, $af                                      ; $7545: $06 $af
	ld   [$000f], sp                                 ; $7547: $08 $0f $00
	ld   bc, $9201                                   ; $754a: $01 $01 $92
	ld   [hl], c                                     ; $754d: $71
	ld   a, a                                        ; $754e: $7f
	cp   d                                           ; $754f: $ba
	rst  ToBoot                                         ; $7550: $c7
	ei                                               ; $7551: $fb
	xor  [hl]                                        ; $7552: $ae
	ld   [hl], l                                     ; $7553: $75
	ld   h, l                                        ; $7554: $65
	sub  l                                           ; $7555: $95
	ld   d, h                                        ; $7556: $54
	sbc  a                                           ; $7557: $9f
	dec  c                                           ; $7558: $0d
	nop                                              ; $7559: $00
	ld   a, [bc]                                     ; $755a: $0a
	inc  e                                           ; $755b: $1c
	dec  b                                           ; $755c: $05
	nop                                              ; $755d: $00
	nop                                              ; $755e: $00
	dec  e                                           ; $755f: $1d
	ld   b, b                                        ; $7560: $40
	dec  d                                           ; $7561: $15
	inc  bc                                          ; $7562: $03
	dec  d                                           ; $7563: $15
	ld   bc, $2801                                   ; $7564: $01 $01 $28
	nop                                              ; $7567: $00
	ld   bc, $fb89                                   ; $7568: $01 $89 $fb
	sbc  [hl]                                        ; $756b: $9e
	ld   h, c                                        ; $756c: $61
	sbc  d                                           ; $756d: $9a
	adc  h                                           ; $756e: $8c
	ld   l, l                                        ; $756f: $6d
	ld   l, d                                        ; $7570: $6a
	ld   d, d                                        ; $7571: $52
	ld   l, l                                        ; $7572: $6d
	ld   e, l                                        ; $7573: $5d
	ld   a, b                                        ; $7574: $78
	sbc  a                                           ; $7575: $9f
	dec  c                                           ; $7576: $0d
	adc  c                                           ; $7577: $89
	and  c                                           ; $7578: $a1
	ld   [hl], l                                     ; $7579: $75
	sub  b                                           ; $757a: $90
	sbc  [hl]                                        ; $757b: $9e
	cp   d                                           ; $757c: $ba
	rst  ToBoot                                         ; $757d: $c7
	ei                                               ; $757e: $fb
	xor  [hl]                                        ; $757f: $ae
	sub  d                                           ; $7580: $92
	ld   [hl], c                                     ; $7581: $71
	ld   l, l                                        ; $7582: $6d
	sub  a                                           ; $7583: $97
	dec  c                                           ; $7584: $0d
	inc  bc                                          ; $7585: $03
	sub  b                                           ; $7586: $90
	dec  b                                           ; $7587: $05
	push af                                          ; $7588: $f5
	sub  d                                           ; $7589: $92
	ld   a, b                                        ; $758a: $78
	sbc  a                                           ; $758b: $9f
	dec  c                                           ; $758c: $0d
	nop                                              ; $758d: $00
	ld   a, [bc]                                     ; $758e: $0a
	ld   bc, $9003                                   ; $758f: $01 $03 $90
	dec  b                                           ; $7592: $05
	push af                                          ; $7593: $f5
	ld   a, c                                        ; $7594: $79
	ld   [bc], a                                     ; $7595: $02
	ld   a, a                                        ; $7596: $7f
	ld   e, l                                        ; $7597: $5d
	ld   h, c                                        ; $7598: $61
	halt                                             ; $7599: $76
	ld   d, b                                        ; $759a: $50
	ld   [hl], c                                     ; $759b: $71
	ld   l, l                                        ; $759c: $6d
	sub  a                                           ; $759d: $97
	dec  c                                           ; $759e: $0d
	inc  bc                                          ; $759f: $03
	ld   l, d                                        ; $75a0: $6a
	add  a                                           ; $75a1: $87
	ld   [hl], h                                     ; $75a2: $74
	adc  l                                           ; $75a3: $8d
	sbc  a                                           ; $75a4: $9f
	dec  c                                           ; $75a5: $0d
	ld   d, h                                        ; $75a6: $54
	adc  h                                           ; $75a7: $8c
	ld   d, d                                        ; $75a8: $52
	ld   [hl], l                                     ; $75a9: $75
	db   $fc                                         ; $75aa: $fc
	sbc  a                                           ; $75ab: $9f
	dec  c                                           ; $75ac: $0d
	nop                                              ; $75ad: $00
	ld   a, [bc]                                     ; $75ae: $0a
	dec  c                                           ; $75af: $0d
	nop                                              ; $75b0: $00
	nop                                              ; $75b1: $00
	rrca                                             ; $75b2: $0f
	nop                                              ; $75b3: $00
	ld   bc, $d306                                   ; $75b4: $01 $06 $d3
	ld   [$000f], sp                                 ; $75b7: $08 $0f $00
	ld   bc, $9001                                   ; $75ba: $01 $01 $90
	and  c                                           ; $75bd: $a1
	ld   h, [hl]                                     ; $75be: $66
	sub  c                                           ; $75bf: $91
	ld   a, b                                        ; $75c0: $78
	and  c                                           ; $75c1: $a1
	ld   e, c                                        ; $75c2: $59
	ld   [bc], a                                     ; $75c3: $02
	sbc  d                                           ; $75c4: $9a
	ld   e, e                                        ; $75c5: $5b
	ld   [hl], l                                     ; $75c6: $75
	ld   h, a                                        ; $75c7: $67
	ld   a, e                                        ; $75c8: $7b
	sbc  a                                           ; $75c9: $9f
	dec  c                                           ; $75ca: $0d
	nop                                              ; $75cb: $00
	ld   a, [bc]                                     ; $75cc: $0a
	inc  e                                           ; $75cd: $1c
	dec  b                                           ; $75ce: $05
	nop                                              ; $75cf: $00
	nop                                              ; $75d0: $00
	dec  e                                           ; $75d1: $1d
	ld   b, b                                        ; $75d2: $40
	dec  d                                           ; $75d3: $15
	inc  bc                                          ; $75d4: $03
	dec  d                                           ; $75d5: $15
	ld   bc, $2802                                   ; $75d6: $01 $02 $28
	nop                                              ; $75d9: $00
	ld   bc, $0804                                   ; $75da: $01 $04 $08
	inc  b                                           ; $75dd: $04
	cpl                                              ; $75de: $2f
	ld   a, c                                        ; $75df: $79
	dec  b                                           ; $75e0: $05
	db   $10                                         ; $75e1: $10
	ld   l, l                                        ; $75e2: $6d
	sub  a                                           ; $75e3: $97
	dec  c                                           ; $75e4: $0d
	sub  b                                           ; $75e5: $90
	and  c                                           ; $75e6: $a1
	ld   h, [hl]                                     ; $75e7: $66
	sub  c                                           ; $75e8: $91
	sub  d                                           ; $75e9: $92
	sub  b                                           ; $75ea: $90
	and  c                                           ; $75eb: $a1
	ld   a, b                                        ; $75ec: $78
	sbc  a                                           ; $75ed: $9f
	dec  c                                           ; $75ee: $0d
	ld   [bc], a                                     ; $75ef: $02
	and  l                                           ; $75f0: $a5
	inc  b                                           ; $75f1: $04
	add  hl, hl                                      ; $75f2: $29
	sbc  [hl]                                        ; $75f3: $9e
	inc  bc                                          ; $75f4: $03
	ld   l, d                                        ; $75f5: $6a
	add  a                                           ; $75f6: $87
	ld   a, c                                        ; $75f7: $79
	ld   [bc], a                                     ; $75f8: $02
	ld   a, a                                        ; $75f9: $7f
	ld   h, c                                        ; $75fa: $61
	ld   a, b                                        ; $75fb: $78
	sbc  a                                           ; $75fc: $9f
	dec  c                                           ; $75fd: $0d
	nop                                              ; $75fe: $00
	ld   a, [bc]                                     ; $75ff: $0a
	dec  c                                           ; $7600: $0d
	nop                                              ; $7601: $00
	nop                                              ; $7602: $00
	rrca                                             ; $7603: $0f
	nop                                              ; $7604: $00
	ld   bc, $d306                                   ; $7605: $01 $06 $d3
	ld   [$000f], sp                                 ; $7608: $08 $0f $00
	ld   bc, $6d01                                   ; $760b: $01 $01 $6d
	ld   h, c                                        ; $760e: $61
	inc  bc                                          ; $760f: $03
	ld   c, $5b                                      ; $7610: $0e $5b
	ld   e, d                                        ; $7612: $5a
	ld   [bc], a                                     ; $7613: $02
	sbc  d                                           ; $7614: $9a
	ld   e, e                                        ; $7615: $5b
	ld   [hl], l                                     ; $7616: $75
	ld   h, a                                        ; $7617: $67
	sbc  a                                           ; $7618: $9f
	dec  c                                           ; $7619: $0d
	nop                                              ; $761a: $00
	ld   a, [bc]                                     ; $761b: $0a
	inc  e                                           ; $761c: $1c
	dec  b                                           ; $761d: $05
	ld   bc, $1d01                                   ; $761e: $01 $01 $1d
	ld   b, b                                        ; $7621: $40
	dec  d                                           ; $7622: $15
	inc  bc                                          ; $7623: $03
	dec  d                                           ; $7624: $15
	ld   bc, $2803                                   ; $7625: $01 $03 $28
	nop                                              ; $7628: $00
	ld   bc, $fa58                                   ; $7629: $01 $58 $fa
	db   $10                                         ; $762c: $10
	sub  d                                           ; $762d: $92
	ld   [hl], c                                     ; $762e: $71
	ld   a, a                                        ; $762f: $7f
	sbc  b                                           ; $7630: $98
	ld   l, e                                        ; $7631: $6b
	ld   d, h                                        ; $7632: $54
	ld   e, c                                        ; $7633: $59
	ld   a, [$6d0d]                                  ; $7634: $fa $0d $6d
	ld   h, c                                        ; $7637: $61
	inc  bc                                          ; $7638: $03
	ld   c, $5b                                      ; $7639: $0e $5b
	ld   a, l                                        ; $763b: $7d
	ld   [bc], a                                     ; $763c: $02
	ld   hl, $0c04                                   ; $763d: $21 $04 $0c
	ld   a, h                                        ; $7640: $7c
	ld   [bc], a                                     ; $7641: $02
	inc  hl                                          ; $7642: $23
	inc  bc                                          ; $7643: $03
	sbc  b                                           ; $7644: $98
	dec  c                                           ; $7645: $0d
	sub  d                                           ; $7646: $92
	ld   e, c                                        ; $7647: $59
	sub  a                                           ; $7648: $97
	ld   a, b                                        ; $7649: $78
	sbc  a                                           ; $764a: $9f
	dec  c                                           ; $764b: $0d
	nop                                              ; $764c: $00
	ld   a, [bc]                                     ; $764d: $0a
	ld   bc, wRandomNumStruct                                   ; $764e: $01 $a7 $c2
	sub  b                                           ; $7651: $90
	inc  b                                           ; $7652: $04
	ld   c, $02                                      ; $7653: $0e $02
	sbc  d                                           ; $7655: $9a
	inc  b                                           ; $7656: $04
	sub  d                                           ; $7657: $92
	ld   a, b                                        ; $7658: $78
	and  c                                           ; $7659: $a1
	sub  d                                           ; $765a: $92
	sbc  a                                           ; $765b: $9f
	dec  c                                           ; $765c: $0d
	nop                                              ; $765d: $00
	ld   a, [bc]                                     ; $765e: $0a
	dec  c                                           ; $765f: $0d
	nop                                              ; $7660: $00
	nop                                              ; $7661: $00
	rrca                                             ; $7662: $0f
	nop                                              ; $7663: $00
	ld   bc, $d306                                   ; $7664: $01 $06 $d3
	ld   [$051c], sp                                 ; $7667: $08 $1c $05
	nop                                              ; $766a: $00
	nop                                              ; $766b: $00
	ld   bc, $f9a1                                   ; $766c: $01 $a1 $f9
	dec  c                                           ; $766f: $0d
	ld   a, b                                        ; $7670: $78
	sub  d                                           ; $7671: $92
	adc  [hl]                                        ; $7672: $8e
	adc  c                                           ; $7673: $89
	ld   [hl], a                                     ; $7674: $77
	ld   e, h                                        ; $7675: $5c
	sub  l                                           ; $7676: $95
	ld   d, h                                        ; $7677: $54
	ld   h, e                                        ; $7678: $63
	and  c                                           ; $7679: $a1
	dec  c                                           ; $767a: $0d
	ld   d, b                                        ; $767b: $50
	sbc  c                                           ; $767c: $99
	and  c                                           ; $767d: $a1
	ld   e, c                                        ; $767e: $59
	ld   sp, hl                                      ; $767f: $f9
	dec  c                                           ; $7680: $0d
	nop                                              ; $7681: $00
	ld   a, [bc]                                     ; $7682: $0a
	dec  c                                           ; $7683: $0d
	nop                                              ; $7684: $00
	nop                                              ; $7685: $00
	rrca                                             ; $7686: $0f
	nop                                              ; $7687: $00
	ld   bc, $d306                                   ; $7688: $01 $06 $d3
	ld   [$9523], sp                                 ; $768b: $08 $23 $95
	inc  e                                           ; $768e: $1c
	dec  b                                           ; $768f: $05
	ld   bc, $0101                                   ; $7690: $01 $01 $01
	ld   d, b                                        ; $7693: $50
	ld   [hl], c                                     ; $7694: $71
	ld   a, [$5810]                                  ; $7695: $fa $10 $58
	adc  l                                           ; $7698: $8d
	ld   e, l                                        ; $7699: $5d
	ld   h, [hl]                                     ; $769a: $66
	sub  d                                           ; $769b: $92
	and  c                                           ; $769c: $a1
	ld   e, c                                        ; $769d: $59
	sbc  a                                           ; $769e: $9f
	dec  c                                           ; $769f: $0d
	nop                                              ; $76a0: $00
	ld   a, [bc]                                     ; $76a1: $0a
	inc  e                                           ; $76a2: $1c
	dec  b                                           ; $76a3: $05
	nop                                              ; $76a4: $00
	nop                                              ; $76a5: $00
	ld   bc, $9b6b                                   ; $76a6: $01 $6b $9b
	ld   l, e                                        ; $76a9: $6b
	sbc  e                                           ; $76aa: $9b
	ld   [bc], a                                     ; $76ab: $02
	or   l                                           ; $76ac: $b5
	sbc  c                                           ; $76ad: $99
	inc  bc                                          ; $76ae: $03
	ld   l, a                                        ; $76af: $6f
	ld   [bc], a                                     ; $76b0: $02
	xor  c                                           ; $76b1: $a9
	sub  d                                           ; $76b2: $92
	ld   e, a                                        ; $76b3: $5f
	ld   [hl], a                                     ; $76b4: $77
	dec  c                                           ; $76b5: $0d
	inc  bc                                          ; $76b6: $03
	ld   l, c                                        ; $76b7: $69
	ld   [bc], a                                     ; $76b8: $02
	xor  d                                           ; $76b9: $aa
	ld   a, c                                        ; $76ba: $79
	ld   e, b                                        ; $76bb: $58
	adc  l                                           ; $76bc: $8d
	ld   e, l                                        ; $76bd: $5d
	ld   h, [hl]                                     ; $76be: $66
	ld   [bc], a                                     ; $76bf: $02
	inc  l                                           ; $76c0: $2c
	ld   d, d                                        ; $76c1: $52
	ld   [hl], h                                     ; $76c2: $74
	ld   [bc], a                                     ; $76c3: $02
	ld   a, a                                        ; $76c4: $7f
	ld   h, c                                        ; $76c5: $61
	ld   e, c                                        ; $76c6: $59
	sbc  a                                           ; $76c7: $9f
	dec  c                                           ; $76c8: $0d
	adc  h                                           ; $76c9: $8c
	ld   l, b                                        ; $76ca: $68
	and  a                                           ; $76cb: $a7
	jp   nz, $9759                                   ; $76cc: $c2 $59 $97

	ld   a, b                                        ; $76cf: $78
	sbc  a                                           ; $76d0: $9f
	dec  c                                           ; $76d1: $0d
	nop                                              ; $76d2: $00
	ld   a, [bc]                                     ; $76d3: $0a
	dec  c                                           ; $76d4: $0d
	nop                                              ; $76d5: $00
	nop                                              ; $76d6: $00
	rrca                                             ; $76d7: $0f
	dec  b                                           ; $76d8: $05
	ld   bc, $5801                                   ; $76d9: $01 $01 $58
	sbc  [hl]                                        ; $76dc: $9e
	ld   bc, $0307                                   ; $76dd: $01 $07 $03
	db   $d3                                         ; $76e0: $d3
	dec  b                                           ; $76e1: $05
	ld   a, [bc]                                     ; $76e2: $0a
	ld   h, a                                        ; $76e3: $67
	sbc  d                                           ; $76e4: $9a
	ld   a, [hl]                                     ; $76e5: $7e
	ld   b, $45                                      ; $76e6: $06 $45
	ld   d, h                                        ; $76e8: $54
	di                                               ; $76e9: $f3
	dec  b                                           ; $76ea: $05
	adc  h                                           ; $76eb: $8c
	ld   bc, $0d08                                   ; $76ec: $01 $08 $0d
	ld   a, b                                        ; $76ef: $78
	ld   e, c                                        ; $76f0: $59
	ld   a, b                                        ; $76f1: $78
	ld   e, c                                        ; $76f2: $59
	sbc  [hl]                                        ; $76f3: $9e
	xor  c                                           ; $76f4: $a9
	xor  c                                           ; $76f5: $a9
	sub  d                                           ; $76f6: $92
	and  c                                           ; $76f7: $a1
	sbc  a                                           ; $76f8: $9f
	dec  c                                           ; $76f9: $0d
	adc  c                                           ; $76fa: $89
	ld   a, b                                        ; $76fb: $78
	sbc  [hl]                                        ; $76fc: $9e
	ld   [$7d00], sp                                 ; $76fd: $08 $00 $7d
	and  c                                           ; $7700: $a1
	sbc  a                                           ; $7701: $9f
	dec  c                                           ; $7702: $0d
	nop                                              ; $7703: $00
	ld   a, [bc]                                     ; $7704: $0a
	add  hl, de                                      ; $7705: $19
	dec  b                                           ; $7706: $05
	inc  bc                                          ; $7707: $03
	ld   [bc], a                                     ; $7708: $02
	inc  e                                           ; $7709: $1c
	ld   a, h                                        ; $770a: $7c
	ld   e, b                                        ; $770b: $58
	adc  l                                           ; $770c: $8d
	ld   e, l                                        ; $770d: $5d
	ld   h, [hl]                                     ; $770e: $66
	and  b                                           ; $770f: $a0
	ld   [bc], a                                     ; $7710: $02
	inc  l                                           ; $7711: $2c
	ld   e, l                                        ; $7712: $5d
	nop                                              ; $7713: $00
	nop                                              ; $7714: $00
	inc  bc                                          ; $7715: $03
	xor  l                                           ; $7716: $ad
	and  c                                           ; $7717: $a1
	inc  b                                           ; $7718: $04
	dec  bc                                          ; $7719: $0b
	ld   a, h                                        ; $771a: $7c
	ld   e, b                                        ; $771b: $58
	adc  l                                           ; $771c: $8d
	ld   e, l                                        ; $771d: $5d
	ld   h, [hl]                                     ; $771e: $66
	and  b                                           ; $771f: $a0
	ld   [bc], a                                     ; $7720: $02
	inc  l                                           ; $7721: $2c
	ld   e, l                                        ; $7722: $5d
	nop                                              ; $7723: $00
	ld   bc, $6003                                   ; $7724: $01 $03 $60
	ld   a, h                                        ; $7727: $7c
	ld   e, b                                        ; $7728: $58
	adc  l                                           ; $7729: $8d
	ld   e, l                                        ; $772a: $5d
	ld   h, [hl]                                     ; $772b: $66
	and  b                                           ; $772c: $a0
	ld   [bc], a                                     ; $772d: $02
	inc  l                                           ; $772e: $2c
	ld   e, l                                        ; $772f: $5d
	nop                                              ; $7730: $00
	ld   [bc], a                                     ; $7731: $02
	rlca                                             ; $7732: $07
	sub  a                                           ; $7733: $97
	add  hl, bc                                      ; $7734: $09
	ld   [bc], a                                     ; $7735: $02
	inc  bc                                          ; $7736: $03
	ld   bc, $2000                                   ; $7737: $01 $00 $20
	nop                                              ; $773a: $00
	rlca                                             ; $773b: $07
	or   l                                           ; $773c: $b5
	add  hl, bc                                      ; $773d: $09
	ld   [bc], a                                     ; $773e: $02
	inc  bc                                          ; $773f: $03
	ld   bc, $2001                                   ; $7740: $01 $01 $20
	nop                                              ; $7743: $00
	rlca                                             ; $7744: $07
	push hl                                          ; $7745: $e5
	add  hl, bc                                      ; $7746: $09
	ld   [bc], a                                     ; $7747: $02
	inc  bc                                          ; $7748: $03
	ld   bc, $2002                                   ; $7749: $01 $02 $20
	nop                                              ; $774c: $00
	ld   b, $d3                                      ; $774d: $06 $d3
	ld   a, [bc]                                     ; $774f: $0a
	rlca                                             ; $7750: $07
	dec  d                                           ; $7751: $15
	ld   a, [bc]                                     ; $7752: $0a
	inc  bc                                          ; $7753: $03
	dec  d                                           ; $7754: $15
	ld   bc, $25be                                   ; $7755: $01 $be $25
	nop                                              ; $7758: $00
	rlca                                             ; $7759: $07
	ld   b, h                                        ; $775a: $44
	ld   a, [bc]                                     ; $775b: $0a
	inc  bc                                          ; $775c: $03
	dec  d                                           ; $775d: $15
	ld   bc, $25b4                                   ; $775e: $01 $b4 $25
	nop                                              ; $7761: $00
	rlca                                             ; $7762: $07
	ld   [hl], c                                     ; $7763: $71
	ld   a, [bc]                                     ; $7764: $0a
	inc  bc                                          ; $7765: $03
	dec  d                                           ; $7766: $15
	ld   bc, $25ac                                   ; $7767: $01 $ac $25
	nop                                              ; $776a: $00
	ld   b, $a0                                      ; $776b: $06 $a0
	ld   a, [bc]                                     ; $776d: $0a
	rlca                                             ; $776e: $07
	dec  d                                           ; $776f: $15
	ld   a, [bc]                                     ; $7770: $0a
	inc  bc                                          ; $7771: $03
	jr   nz, @+$03                                   ; $7772: $20 $01

	and  $25                                         ; $7774: $e6 $25
	nop                                              ; $7776: $00
	rlca                                             ; $7777: $07
	ld   b, h                                        ; $7778: $44
	ld   a, [bc]                                     ; $7779: $0a
	inc  bc                                          ; $777a: $03
	jr   nz, jr_055_777e                             ; $777b: $20 $01

Jump_055_777d:
	sub  [hl]                                        ; $777d: $96

jr_055_777e:
	dec  h                                           ; $777e: $25
	inc  bc                                          ; $777f: $03
	jr   nz, jr_055_7783                             ; $7780: $20 $01

	push hl                                          ; $7782: $e5

jr_055_7783:
	inc  hl                                          ; $7783: $23
	inc  e                                           ; $7784: $1c
	nop                                              ; $7785: $00
	rlca                                             ; $7786: $07
	ld   [hl], c                                     ; $7787: $71
	ld   a, [bc]                                     ; $7788: $0a
	ld   bc, $0364                                   ; $7789: $01 $64 $03
	jr   nz, @+$25                                   ; $778c: $20 $23

	inc  bc                                          ; $778e: $03
	jr   nz, jr_055_7792                             ; $778f: $20 $01

	sub  l                                           ; $7791: $95

jr_055_7792:
	inc  hl                                          ; $7792: $23
	inc  e                                           ; $7793: $1c
	nop                                              ; $7794: $00
	rlca                                             ; $7795: $07
	and  b                                           ; $7796: $a0
	ld   a, [bc]                                     ; $7797: $0a
	inc  bc                                          ; $7798: $03
	jr   nz, jr_055_779c                             ; $7799: $20 $01

	ld   h, e                                        ; $779b: $63

jr_055_779c:
	inc  hl                                          ; $779c: $23
	nop                                              ; $779d: $00
	rlca                                             ; $779e: $07
	dec  d                                           ; $779f: $15
	ld   a, [bc]                                     ; $77a0: $0a
	inc  bc                                          ; $77a1: $03
	ld   hl, $e601                                   ; $77a2: $21 $01 $e6
	dec  h                                           ; $77a5: $25
	nop                                              ; $77a6: $00
	rlca                                             ; $77a7: $07
	ld   b, h                                        ; $77a8: $44
	ld   a, [bc]                                     ; $77a9: $0a
	inc  bc                                          ; $77aa: $03
	ld   hl, $9601                                   ; $77ab: $21 $01 $96
	dec  h                                           ; $77ae: $25
	inc  bc                                          ; $77af: $03
	ld   hl, $e501                                   ; $77b0: $21 $01 $e5
	inc  hl                                          ; $77b3: $23
	inc  e                                           ; $77b4: $1c
	nop                                              ; $77b5: $00
	rlca                                             ; $77b6: $07
	ld   [hl], c                                     ; $77b7: $71
	ld   a, [bc]                                     ; $77b8: $0a
	ld   bc, $0364                                   ; $77b9: $01 $64 $03
	ld   hl, $0323                                   ; $77bc: $21 $23 $03
	ld   hl, $9501                                   ; $77bf: $21 $01 $95
	inc  hl                                          ; $77c2: $23
	inc  e                                           ; $77c3: $1c
	nop                                              ; $77c4: $00
	rlca                                             ; $77c5: $07
	and  b                                           ; $77c6: $a0
	ld   a, [bc]                                     ; $77c7: $0a
	inc  bc                                          ; $77c8: $03
	ld   hl, $6301                                   ; $77c9: $21 $01 $63
	inc  hl                                          ; $77cc: $23
	nop                                              ; $77cd: $00
	rrca                                             ; $77ce: $0f
	nop                                              ; $77cf: $00
	ld   bc, $0101                                   ; $77d0: $01 $01 $01
	rlca                                             ; $77d3: $07
	inc  b                                           ; $77d4: $04
	ld   c, $05                                      ; $77d5: $0e $05
	adc  h                                           ; $77d7: $8c
	ld   bc, $7508                                   ; $77d8: $01 $08 $75
	ld   h, a                                        ; $77db: $67
	sbc  a                                           ; $77dc: $9f
	dec  c                                           ; $77dd: $0d
	nop                                              ; $77de: $00
	ld   a, [bc]                                     ; $77df: $0a
	inc  e                                           ; $77e0: $1c
	dec  b                                           ; $77e1: $05
	ld   bc, $1d01                                   ; $77e2: $01 $01 $1d
	ld   b, b                                        ; $77e5: $40
	dec  d                                           ; $77e6: $15
	inc  bc                                          ; $77e7: $03
	dec  d                                           ; $77e8: $15
	ld   bc, $2803                                   ; $77e9: $01 $03 $28
	nop                                              ; $77ec: $00
	ld   bc, $5858                                   ; $77ed: $01 $58 $58
	sbc  [hl]                                        ; $77f0: $9e
	ld   d, [hl]                                     ; $77f1: $56
	ld   d, [hl]                                     ; $77f2: $56
	sub  d                                           ; $77f3: $92
	and  c                                           ; $77f4: $a1
	ld   e, c                                        ; $77f5: $59
	sbc  a                                           ; $77f6: $9f
	dec  c                                           ; $77f7: $0d
	nop                                              ; $77f8: $00
	ld   a, [bc]                                     ; $77f9: $0a
	ld   b, $d3                                      ; $77fa: $06 $d3
	ld   a, [bc]                                     ; $77fc: $0a
	rrca                                             ; $77fd: $0f
	nop                                              ; $77fe: $00
	ld   bc, $0101                                   ; $77ff: $01 $01 $01
	rlca                                             ; $7802: $07
	dec  b                                           ; $7803: $05
	adc  h                                           ; $7804: $8c
	ld   bc, $7508                                   ; $7805: $01 $08 $75
	ld   h, a                                        ; $7808: $67
	sbc  a                                           ; $7809: $9f
	dec  c                                           ; $780a: $0d
	nop                                              ; $780b: $00
	ld   a, [bc]                                     ; $780c: $0a
	inc  e                                           ; $780d: $1c
	dec  b                                           ; $780e: $05
	ld   bc, $1d01                                   ; $780f: $01 $01 $1d
	ld   b, b                                        ; $7812: $40
	dec  d                                           ; $7813: $15
	inc  bc                                          ; $7814: $03

jr_055_7815:
	dec  d                                           ; $7815: $15
	ld   bc, $2802                                   ; $7816: $01 $02 $28
	nop                                              ; $7819: $00
	ld   bc, $a154                                   ; $781a: $01 $54 $a1
	sbc  [hl]                                        ; $781d: $9e
	pop  de                                          ; $781e: $d1
	call nz, $ecc2                                   ; $781f: $c4 $c2 $ec
	sub  d                                           ; $7822: $92
	sbc  a                                           ; $7823: $9f
	dec  c                                           ; $7824: $0d
	nop                                              ; $7825: $00
	ld   a, [bc]                                     ; $7826: $0a
	ld   b, $d3                                      ; $7827: $06 $d3
	ld   a, [bc]                                     ; $7829: $0a
	rrca                                             ; $782a: $0f
	nop                                              ; $782b: $00
	ld   bc, $0101                                   ; $782c: $01 $01 $01
	rlca                                             ; $782f: $07
	inc  bc                                          ; $7830: $03
	xor  a                                           ; $7831: $af
	dec  b                                           ; $7832: $05
	adc  h                                           ; $7833: $8c
	ld   bc, $7508                                   ; $7834: $01 $08 $75
	ld   h, a                                        ; $7837: $67
	sbc  a                                           ; $7838: $9f
	dec  c                                           ; $7839: $0d
	nop                                              ; $783a: $00
	ld   a, [bc]                                     ; $783b: $0a
	inc  e                                           ; $783c: $1c
	dec  b                                           ; $783d: $05
	nop                                              ; $783e: $00
	nop                                              ; $783f: $00
	dec  e                                           ; $7840: $1d
	ld   b, b                                        ; $7841: $40
	dec  d                                           ; $7842: $15
	inc  bc                                          ; $7843: $03
	dec  d                                           ; $7844: $15
	ld   bc, $2801                                   ; $7845: $01 $01 $28
	nop                                              ; $7848: $00
	ld   bc, $508c                                   ; $7849: $01 $8c $50
	sbc  [hl]                                        ; $784c: $9e
	ld   d, [hl]                                     ; $784d: $56
	ld   d, [hl]                                     ; $784e: $56
	sub  d                                           ; $784f: $92
	and  c                                           ; $7850: $a1
	ld   e, c                                        ; $7851: $59
	sbc  a                                           ; $7852: $9f
	dec  c                                           ; $7853: $0d
	nop                                              ; $7854: $00
	ld   a, [bc]                                     ; $7855: $0a
	ld   b, $d3                                      ; $7856: $06 $d3
	ld   a, [bc]                                     ; $7858: $0a
	rrca                                             ; $7859: $0f
	nop                                              ; $785a: $00
	ld   bc, $0101                                   ; $785b: $01 $01 $01
	rlca                                             ; $785e: $07
	dec  b                                           ; $785f: $05
	add  d                                           ; $7860: $82
	ld   bc, $7508                                   ; $7861: $01 $08 $75
	ld   h, a                                        ; $7864: $67
	sbc  a                                           ; $7865: $9f
	dec  c                                           ; $7866: $0d
	nop                                              ; $7867: $00
	ld   a, [bc]                                     ; $7868: $0a
	inc  e                                           ; $7869: $1c
	dec  b                                           ; $786a: $05
	inc  bc                                          ; $786b: $03
	inc  bc                                          ; $786c: $03
	ld   bc, $c4b3                                   ; $786d: $01 $b3 $c4
	ld   a, [$8f0d]                                  ; $7870: $fa $0d $8f
	ld   l, b                                        ; $7873: $68
	sub  a                                           ; $7874: $97
	ld   h, l                                        ; $7875: $65
	ld   d, d                                        ; $7876: $52
	ld   a, b                                        ; $7877: $78
	db   $fc                                         ; $7878: $fc
	sbc  a                                           ; $7879: $9f
	dec  c                                           ; $787a: $0d
	ld   e, a                                        ; $787b: $5f
	ld   [hl], a                                     ; $787c: $77
	sbc  [hl]                                        ; $787d: $9e
	inc  bc                                          ; $787e: $03
	ld   l, c                                        ; $787f: $69
	ld   [bc], a                                     ; $7880: $02
	jr   z, jr_055_7815                              ; $7881: $28 $92

	ld   a, b                                        ; $7883: $78
	db   $fc                                         ; $7884: $fc
	sbc  a                                           ; $7885: $9f
	dec  c                                           ; $7886: $0d
	nop                                              ; $7887: $00
	ld   a, [bc]                                     ; $7888: $0a
	ld   b, $d3                                      ; $7889: $06 $d3
	ld   a, [bc]                                     ; $788b: $0a
	ld   d, $27                                      ; $788c: $16 $27
	rrca                                             ; $788e: $0f
	dec  b                                           ; $788f: $05
	nop                                              ; $7890: $00
	ld   bc, $7889                                   ; $7891: $01 $89 $78
	sbc  [hl]                                        ; $7894: $9e
	ld   e, b                                        ; $7895: $58
	adc  l                                           ; $7896: $8d
	ld   e, l                                        ; $7897: $5d
	ld   h, [hl]                                     ; $7898: $66
	adc  [hl]                                        ; $7899: $8e
	ld   h, a                                        ; $789a: $67
	adc  d                                           ; $789b: $8a
	sbc  a                                           ; $789c: $9f
	dec  c                                           ; $789d: $0d
	nop                                              ; $789e: $00
	ld   a, [bc]                                     ; $789f: $0a
	rrca                                             ; $78a0: $0f
	nop                                              ; $78a1: $00
	ld   bc, $ed06                                   ; $78a2: $01 $06 $ed
	ld   a, [bc]                                     ; $78a5: $0a
	inc  hl                                          ; $78a6: $23
	add  h                                           ; $78a7: $84
	inc  e                                           ; $78a8: $1c
	dec  b                                           ; $78a9: $05
	nop                                              ; $78aa: $00
	nop                                              ; $78ab: $00
	ld   bc, $0008                                   ; $78ac: $01 $08 $00
	ld   a, l                                        ; $78af: $7d
	and  c                                           ; $78b0: $a1
	sbc  [hl]                                        ; $78b1: $9e
	ld   [bc], a                                     ; $78b2: $02
	and  l                                           ; $78b3: $a5
	inc  b                                           ; $78b4: $04
	xor  d                                           ; $78b5: $aa
	ld   a, l                                        ; $78b6: $7d
	dec  c                                           ; $78b7: $0d
	ld   [hl], a                                     ; $78b8: $77
	ld   d, h                                        ; $78b9: $54
	sub  d                                           ; $78ba: $92
	ld   [hl], c                                     ; $78bb: $71
	ld   l, l                                        ; $78bc: $6d
	ld   sp, hl                                      ; $78bd: $f9
	dec  c                                           ; $78be: $0d
	nop                                              ; $78bf: $00
	ld   a, [bc]                                     ; $78c0: $0a
	add  hl, de                                      ; $78c1: $19
	dec  b                                           ; $78c2: $05
	inc  bc                                          ; $78c3: $03
	dec  b                                           ; $78c4: $05
	inc  de                                          ; $78c5: $13
	ld   h, l                                        ; $78c6: $65
	ld   e, c                                        ; $78c7: $59
	ld   [hl], c                                     ; $78c8: $71
	ld   l, l                                        ; $78c9: $6d
	nop                                              ; $78ca: $00
	nop                                              ; $78cb: $00
	inc  b                                           ; $78cc: $04
	ld   a, e                                        ; $78cd: $7b
	sbc  d                                           ; $78ce: $9a
	ld   l, l                                        ; $78cf: $6d
	nop                                              ; $78d0: $00
	ld   bc, $508c                                   ; $78d1: $01 $8c $50
	adc  h                                           ; $78d4: $8c
	ld   d, b                                        ; $78d5: $50
	nop                                              ; $78d6: $00
	ld   [bc], a                                     ; $78d7: $02
	rlca                                             ; $78d8: $07
	dec  a                                           ; $78d9: $3d
	dec  bc                                          ; $78da: $0b
	ld   [bc], a                                     ; $78db: $02
	inc  bc                                          ; $78dc: $03
	ld   bc, $2000                                   ; $78dd: $01 $00 $20
	nop                                              ; $78e0: $00
	rlca                                             ; $78e1: $07
	push hl                                          ; $78e2: $e5
	dec  bc                                          ; $78e3: $0b
	ld   [bc], a                                     ; $78e4: $02
	inc  bc                                          ; $78e5: $03
	ld   bc, $2001                                   ; $78e6: $01 $01 $20
	nop                                              ; $78e9: $00
	rlca                                             ; $78ea: $07
	ld   [hl], $0c                                   ; $78eb: $36 $0c
	ld   [bc], a                                     ; $78ed: $02
	inc  bc                                          ; $78ee: $03
	ld   bc, $2002                                   ; $78ef: $01 $02 $20
	nop                                              ; $78f2: $00
	ld   b, $8d                                      ; $78f3: $06 $8d
	inc  c                                           ; $78f5: $0c
	rrca                                             ; $78f6: $0f
	nop                                              ; $78f7: $00
	ld   bc, $0501                                   ; $78f8: $01 $01 $05
	inc  de                                          ; $78fb: $13
	ld   h, l                                        ; $78fc: $65
	ld   e, c                                        ; $78fd: $59
	ld   [hl], c                                     ; $78fe: $71
	ld   l, l                                        ; $78ff: $6d
	ld   [hl], l                                     ; $7900: $75
	ld   h, a                                        ; $7901: $67
	sub  [hl]                                        ; $7902: $96
	sbc  a                                           ; $7903: $9f
	dec  c                                           ; $7904: $0d
	ld   a, b                                        ; $7905: $78
	and  c                                           ; $7906: $a1
	ld   l, c                                        ; $7907: $69
	sbc  [hl]                                        ; $7908: $9e
	ld   [bc], a                                     ; $7909: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $790a: $cf
	dec  b                                           ; $790b: $05
	ld   a, [de]                                     ; $790c: $1a
	ld   h, e                                        ; $790d: $63
	and  c                                           ; $790e: $a1
	halt                                             ; $790f: $76
	ld   d, d                                        ; $7910: $52
	ld   [hl], c                                     ; $7911: $71
	ld   h, l                                        ; $7912: $65
	sub  l                                           ; $7913: $95
	dec  c                                           ; $7914: $0d
	ld   a, c                                        ; $7915: $79
	ld   d, b                                        ; $7916: $50
	ld   l, e                                        ; $7917: $6b
	add  a                                           ; $7918: $87
	adc  h                                           ; $7919: $8c
	ld   h, l                                        ; $791a: $65
	ld   l, l                                        ; $791b: $6d
	ld   e, c                                        ; $791c: $59
	sub  a                                           ; $791d: $97
	sbc  a                                           ; $791e: $9f
	dec  c                                           ; $791f: $0d
	nop                                              ; $7920: $00
	ld   a, [bc]                                     ; $7921: $0a
	inc  e                                           ; $7922: $1c
	dec  b                                           ; $7923: $05
	inc  b                                           ; $7924: $04
	inc  b                                           ; $7925: $04
	dec  e                                           ; $7926: $1d
	ld   b, b                                        ; $7927: $40
	dec  d                                           ; $7928: $15
	inc  bc                                          ; $7929: $03
	dec  d                                           ; $792a: $15
	ld   bc, $2803                                   ; $792b: $01 $03 $28
	nop                                              ; $792e: $00
	ld   bc, $d9d9                                   ; $792f: $01 $d9 $d9
	reti                                             ; $7932: $d9


	sbc  a                                           ; $7933: $9f
	dec  c                                           ; $7934: $0d
	ld   l, e                                        ; $7935: $6b
	sub  a                                           ; $7936: $97
	sbc  [hl]                                        ; $7937: $9e
	sub  [hl]                                        ; $7938: $96
	ld   e, c                                        ; $7939: $59
	ld   [hl], c                                     ; $793a: $71
	ld   l, l                                        ; $793b: $6d
	ld   a, b                                        ; $793c: $78
	ld   c, a                                        ; $793d: $4f
	sbc  a                                           ; $793e: $9f
	dec  c                                           ; $793f: $0d
	nop                                              ; $7940: $00
	ld   a, [bc]                                     ; $7941: $0a
	ld   bc, $7889                                   ; $7942: $01 $89 $78
	sbc  [hl]                                        ; $7945: $9e
	ld   [bc], a                                     ; $7946: $02
	or   l                                           ; $7947: $b5
	sbc  e                                           ; $7948: $9b
	ld   e, c                                        ; $7949: $59
	sbc  a                                           ; $794a: $9f
	dec  c                                           ; $794b: $0d
	nop                                              ; $794c: $00
	ld   a, [bc]                                     ; $794d: $0a
	rrca                                             ; $794e: $0f
	nop                                              ; $794f: $00
	ld   bc, $7d01                                   ; $7950: $01 $01 $7d
	ld   d, d                                        ; $7953: $52
	sbc  a                                           ; $7954: $9f
	dec  c                                           ; $7955: $0d
	nop                                              ; $7956: $00
	ld   a, [bc]                                     ; $7957: $0a
	dec  c                                           ; $7958: $0d
	nop                                              ; $7959: $00
	nop                                              ; $795a: $00
	rrca                                             ; $795b: $0f
	nop                                              ; $795c: $00
	ld   bc, $020c                                   ; $795d: $01 $0c $02
	ld   c, $02                                      ; $7960: $0e $02
	ld   bc, $ffff                                   ; $7962: $01 $ff $ff
	add  e                                           ; $7965: $83
	ld   d, h                                        ; $7966: $54
	sbc  [hl]                                        ; $7967: $9e
	ld   [bc], a                                     ; $7968: $02
	and  l                                           ; $7969: $a5
	inc  b                                           ; $796a: $04
	xor  d                                           ; $796b: $aa
	ld   a, l                                        ; $796c: $7d
	dec  b                                           ; $796d: $05
	inc  de                                          ; $796e: $13
	ld   h, l                                        ; $796f: $65
	ld   e, c                                        ; $7970: $59
	ld   [hl], c                                     ; $7971: $71
	ld   l, l                                        ; $7972: $6d
	dec  c                                           ; $7973: $0d
	ld   a, b                                        ; $7974: $78
	ld   d, b                                        ; $7975: $50
	rst  $38                                         ; $7976: $ff
	rst  $38                                         ; $7977: $ff
	dec  c                                           ; $7978: $0d
	nop                                              ; $7979: $00
	ld   a, [bc]                                     ; $797a: $0a
	ld   bc, $7158                                   ; $797b: $01 $58 $71
	halt                                             ; $797e: $76
	sbc  [hl]                                        ; $797f: $9e
	sub  b                                           ; $7980: $90
	ld   d, h                                        ; $7981: $54
	ld   h, c                                        ; $7982: $61
	and  c                                           ; $7983: $a1
	ld   a, b                                        ; $7984: $78
	inc  bc                                          ; $7985: $03
	ld   l, a                                        ; $7986: $6f
	ld   [bc], a                                     ; $7987: $02
	xor  c                                           ; $7988: $a9
	ld   e, c                                        ; $7989: $59
	sbc  a                                           ; $798a: $9f
	dec  c                                           ; $798b: $0d
	ld   l, e                                        ; $798c: $6b
	sbc  e                                           ; $798d: $9b
	ld   l, e                                        ; $798e: $6b
	sbc  e                                           ; $798f: $9b
	inc  b                                           ; $7990: $04
	ld   b, d                                        ; $7991: $42
	ld   a, b                                        ; $7992: $78
	ld   e, l                                        ; $7993: $5d
	ld   l, a                                        ; $7994: $6f
	sub  c                                           ; $7995: $91
	rst  $38                                         ; $7996: $ff
	rst  $38                                         ; $7997: $ff
	dec  c                                           ; $7998: $0d
	nop                                              ; $7999: $00
	ld   a, [bc]                                     ; $799a: $0a
	add  hl, hl                                      ; $799b: $29
	nop                                              ; $799c: $00
	nop                                              ; $799d: $00
	rrca                                             ; $799e: $0f
	nop                                              ; $799f: $00
	ld   bc, $5201                                   ; $79a0: $01 $01 $52
	sub  d                                           ; $79a3: $92
	db   $fc                                         ; $79a4: $fc
	sbc  [hl]                                        ; $79a5: $9e
	inc  b                                           ; $79a6: $04
	ld   a, e                                        ; $79a7: $7b
	sbc  d                                           ; $79a8: $9a
	adc  h                                           ; $79a9: $8c
	ld   h, l                                        ; $79aa: $65
	ld   l, l                                        ; $79ab: $6d
	sub  [hl]                                        ; $79ac: $96
	sbc  a                                           ; $79ad: $9f
	dec  c                                           ; $79ae: $0d
	inc  bc                                          ; $79af: $03
	add  d                                           ; $79b0: $82
	ld   b, $41                                      ; $79b1: $06 $41
	adc  l                                           ; $79b3: $8d
	ld   a, l                                        ; $79b4: $7d
	sbc  [hl]                                        ; $79b5: $9e
	inc  b                                           ; $79b6: $04
	ld   a, e                                        ; $79b7: $7b
	sbc  d                                           ; $79b8: $9a
	adc  h                                           ; $79b9: $8c
	ld   h, a                                        ; $79ba: $67
	ld   a, e                                        ; $79bb: $7b
	sbc  a                                           ; $79bc: $9f
	dec  c                                           ; $79bd: $0d
	nop                                              ; $79be: $00
	ld   a, [bc]                                     ; $79bf: $0a
	inc  e                                           ; $79c0: $1c
	dec  b                                           ; $79c1: $05
	ld   [bc], a                                     ; $79c2: $02
	ld   [bc], a                                     ; $79c3: $02
	dec  e                                           ; $79c4: $1d
	ld   b, b                                        ; $79c5: $40
	dec  d                                           ; $79c6: $15
	inc  bc                                          ; $79c7: $03
	dec  d                                           ; $79c8: $15
	ld   bc, $2901                                   ; $79c9: $01 $01 $29
	nop                                              ; $79cc: $00
	ld   bc, $546b                                   ; $79cd: $01 $6b $54
	ld   e, c                                        ; $79d0: $59
	sbc  a                                           ; $79d1: $9f
	ld   [$7d00], sp                                 ; $79d2: $08 $00 $7d
	and  c                                           ; $79d5: $a1
	ld   a, l                                        ; $79d6: $7d
	dec  c                                           ; $79d7: $0d
	ld   a, c                                        ; $79d8: $79
	ld   e, h                                        ; $79d9: $5c
	sub  d                                           ; $79da: $92
	ld   e, c                                        ; $79db: $59
	ld   a, b                                        ; $79dc: $78
	halt                                             ; $79dd: $76
	ld   h, c                                        ; $79de: $61
	sbc  e                                           ; $79df: $9b
	ld   e, d                                        ; $79e0: $5a
	dec  c                                           ; $79e1: $0d
	ld   d, b                                        ; $79e2: $50
	ld   e, c                                        ; $79e3: $59
	and  c                                           ; $79e4: $a1
	ld   a, e                                        ; $79e5: $7b
	and  c                                           ; $79e6: $a1
	ld   a, b                                        ; $79e7: $78
	sbc  a                                           ; $79e8: $9f
	dec  c                                           ; $79e9: $0d
	nop                                              ; $79ea: $00
	ld   a, [bc]                                     ; $79eb: $0a
	ld   b, $70                                      ; $79ec: $06 $70
	inc  c                                           ; $79ee: $0c
	rrca                                             ; $79ef: $0f
	nop                                              ; $79f0: $00
	ld   bc, $8c01                                   ; $79f1: $01 $01 $8c
	ld   d, b                                        ; $79f4: $50
	adc  h                                           ; $79f5: $8c
	ld   d, b                                        ; $79f6: $50
	ld   [hl], l                                     ; $79f7: $75
	ld   h, l                                        ; $79f8: $65
	ld   l, l                                        ; $79f9: $6d
	ld   a, e                                        ; $79fa: $7b
	sbc  a                                           ; $79fb: $9f
	dec  c                                           ; $79fc: $0d
	nop                                              ; $79fd: $00
	ld   a, [bc]                                     ; $79fe: $0a
	inc  e                                           ; $79ff: $1c
	dec  b                                           ; $7a00: $05
	rlca                                             ; $7a01: $07
	rlca                                             ; $7a02: $07
	dec  e                                           ; $7a03: $1d
	ld   b, b                                        ; $7a04: $40
	dec  d                                           ; $7a05: $15
	inc  bc                                          ; $7a06: $03
	dec  d                                           ; $7a07: $15
	ld   bc, $2902                                   ; $7a08: $01 $02 $29
	nop                                              ; $7a0b: $00
	ld   bc, $508c                                   ; $7a0c: $01 $8c $50
	adc  h                                           ; $7a0f: $8c
	ld   d, b                                        ; $7a10: $50
	ld   [hl], h                                     ; $7a11: $74
	sbc  [hl]                                        ; $7a12: $9e
	ld   a, b                                        ; $7a13: $78
	and  c                                           ; $7a14: $a1
	sub  d                                           ; $7a15: $92
	dec  c                                           ; $7a16: $0d
	inc  b                                           ; $7a17: $04
	dec  bc                                          ; $7a18: $0b
	inc  b                                           ; $7a19: $04
	ld   [hl-], a                                    ; $7a1a: $32
	inc  b                                           ; $7a1b: $04
	ld   [hl], d                                     ; $7a1c: $72
	inc  b                                           ; $7a1d: $04
	sbc  e                                           ; $7a1e: $9b
	sub  d                                           ; $7a1f: $92
	ld   a, b                                        ; $7a20: $78
	db   $fc                                         ; $7a21: $fc
	sbc  a                                           ; $7a22: $9f
	dec  c                                           ; $7a23: $0d
	nop                                              ; $7a24: $00
	ld   a, [bc]                                     ; $7a25: $0a
	ld   b, $70                                      ; $7a26: $06 $70
	inc  c                                           ; $7a28: $0c
	inc  e                                           ; $7a29: $1c
	dec  b                                           ; $7a2a: $05
	nop                                              ; $7a2b: $00
	nop                                              ; $7a2c: $00
	ld   bc, $7889                                   ; $7a2d: $01 $89 $78
	sbc  [hl]                                        ; $7a30: $9e
	ld   [bc], a                                     ; $7a31: $02
	or   l                                           ; $7a32: $b5
	sbc  e                                           ; $7a33: $9b
	ld   e, c                                        ; $7a34: $59
	sbc  a                                           ; $7a35: $9f
	dec  c                                           ; $7a36: $0d
	nop                                              ; $7a37: $00
	ld   a, [bc]                                     ; $7a38: $0a
	rrca                                             ; $7a39: $0f
	nop                                              ; $7a3a: $00
	ld   bc, $7d01                                   ; $7a3b: $01 $01 $7d
	ld   d, d                                        ; $7a3e: $52
	sbc  a                                           ; $7a3f: $9f
	dec  c                                           ; $7a40: $0d
	nop                                              ; $7a41: $00
	ld   a, [bc]                                     ; $7a42: $0a
	ld   b, $bf                                      ; $7a43: $06 $bf
	inc  c                                           ; $7a45: $0c
	inc  e                                           ; $7a46: $1c
	dec  b                                           ; $7a47: $05
	ld   [bc], a                                     ; $7a48: $02
	ld   [bc], a                                     ; $7a49: $02
	dec  e                                           ; $7a4a: $1d
	ld   b, b                                        ; $7a4b: $40
	dec  d                                           ; $7a4c: $15
	inc  bc                                          ; $7a4d: $03
	dec  d                                           ; $7a4e: $15
	ld   bc, $2901                                   ; $7a4f: $01 $01 $29
	nop                                              ; $7a52: $00
	ld   bc, $a178                                   ; $7a53: $01 $78 $a1
	sub  d                                           ; $7a56: $92
	ld   sp, hl                                      ; $7a57: $f9
	dec  c                                           ; $7a58: $0d
	inc  b                                           ; $7a59: $04
	ld   a, e                                        ; $7a5a: $7b
	sbc  d                                           ; $7a5b: $9a
	ld   l, l                                        ; $7a5c: $6d
	and  c                                           ; $7a5d: $a1
	ld   e, c                                        ; $7a5e: $59
	ld   d, d                                        ; $7a5f: $52
	ld   a, b                                        ; $7a60: $78
	sbc  a                                           ; $7a61: $9f
	dec  c                                           ; $7a62: $0d
	nop                                              ; $7a63: $00
	ld   a, [bc]                                     ; $7a64: $0a
	inc  e                                           ; $7a65: $1c
	dec  b                                           ; $7a66: $05
	nop                                              ; $7a67: $00
	nop                                              ; $7a68: $00
	ld   bc, $7889                                   ; $7a69: $01 $89 $78
	sbc  [hl]                                        ; $7a6c: $9e
	inc  bc                                          ; $7a6d: $03
	ld   [hl], b                                     ; $7a6e: $70
	sub  [hl]                                        ; $7a6f: $96
	ld   [bc], a                                     ; $7a70: $02
	or   l                                           ; $7a71: $b5
	sbc  e                                           ; $7a72: $9b
	ld   e, c                                        ; $7a73: $59
	sbc  a                                           ; $7a74: $9f
	dec  c                                           ; $7a75: $0d
	nop                                              ; $7a76: $00
	ld   a, [bc]                                     ; $7a77: $0a
	dec  c                                           ; $7a78: $0d
	nop                                              ; $7a79: $00
	nop                                              ; $7a7a: $00
	rrca                                             ; $7a7b: $0f
	nop                                              ; $7a7c: $00
	ld   bc, $020c                                   ; $7a7d: $01 $0c $02
	inc  de                                          ; $7a80: $13
	nop                                              ; $7a81: $00
	ld   c, $02                                      ; $7a82: $0e $02
	inc  de                                          ; $7a84: $13
	ld   [bc], a                                     ; $7a85: $02
	ld   bc, $ffff                                   ; $7a86: $01 $ff $ff
	add  e                                           ; $7a89: $83
	ld   d, h                                        ; $7a8a: $54
	sbc  [hl]                                        ; $7a8b: $9e
	ld   [bc], a                                     ; $7a8c: $02
	and  l                                           ; $7a8d: $a5
	inc  b                                           ; $7a8e: $04
	xor  d                                           ; $7a8f: $aa
	ld   a, l                                        ; $7a90: $7d
	inc  b                                           ; $7a91: $04
	ld   a, e                                        ; $7a92: $7b
	sbc  d                                           ; $7a93: $9a
	ld   l, l                                        ; $7a94: $6d
	dec  c                                           ; $7a95: $0d
	ld   a, b                                        ; $7a96: $78
	ld   d, b                                        ; $7a97: $50
	rst  $38                                         ; $7a98: $ff
	rst  $38                                         ; $7a99: $ff
	dec  c                                           ; $7a9a: $0d
	nop                                              ; $7a9b: $00
	ld   a, [bc]                                     ; $7a9c: $0a
	ld   bc, $7158                                   ; $7a9d: $01 $58 $71
	halt                                             ; $7aa0: $76
	sbc  [hl]                                        ; $7aa1: $9e
	sub  b                                           ; $7aa2: $90
	ld   d, h                                        ; $7aa3: $54
	ld   h, c                                        ; $7aa4: $61
	and  c                                           ; $7aa5: $a1
	ld   a, b                                        ; $7aa6: $78
	inc  bc                                          ; $7aa7: $03
	ld   l, a                                        ; $7aa8: $6f
	ld   [bc], a                                     ; $7aa9: $02
	xor  c                                           ; $7aaa: $a9
	ld   e, c                                        ; $7aab: $59
	sbc  a                                           ; $7aac: $9f
	dec  c                                           ; $7aad: $0d
	ld   l, e                                        ; $7aae: $6b
	sbc  e                                           ; $7aaf: $9b
	ld   l, e                                        ; $7ab0: $6b
	sbc  e                                           ; $7ab1: $9b
	inc  b                                           ; $7ab2: $04
	ld   b, d                                        ; $7ab3: $42
	ld   a, b                                        ; $7ab4: $78
	ld   e, l                                        ; $7ab5: $5d
	ld   l, a                                        ; $7ab6: $6f
	sub  c                                           ; $7ab7: $91
	rst  $38                                         ; $7ab8: $ff
	rst  $38                                         ; $7ab9: $ff
	dec  c                                           ; $7aba: $0d
	nop                                              ; $7abb: $00
	ld   a, [bc]                                     ; $7abc: $0a
	add  hl, hl                                      ; $7abd: $29
	nop                                              ; $7abe: $00
	nop                                              ; $7abf: $00
	ld   c, $95                                      ; $7ac0: $0e $95
	inc  e                                           ; $7ac2: $1c
	dec  b                                           ; $7ac3: $05
	nop                                              ; $7ac4: $00
	nop                                              ; $7ac5: $00
	ld   bc, $7192                                   ; $7ac6: $01 $92 $71
	ld   a, a                                        ; $7ac9: $7f
	sbc  [hl]                                        ; $7aca: $9e
	inc  bc                                          ; $7acb: $03
	sub  b                                           ; $7acc: $90
	inc  bc                                          ; $7acd: $03
	cpl                                              ; $7ace: $2f
	ld   a, c                                        ; $7acf: $79
	dec  b                                           ; $7ad0: $05
	db   $10                                         ; $7ad1: $10
	ld   l, l                                        ; $7ad2: $6d
	sub  a                                           ; $7ad3: $97
	dec  c                                           ; $7ad4: $0d
	ld   e, b                                        ; $7ad5: $58
	adc  l                                           ; $7ad6: $8d
	ld   e, l                                        ; $7ad7: $5d
	ld   h, [hl]                                     ; $7ad8: $66
	ld   [bc], a                                     ; $7ad9: $02
	inc  l                                           ; $7ada: $2c
	ld   e, c                                        ; $7adb: $59
	ld   a, b                                        ; $7adc: $78
	ld   a, b                                        ; $7add: $78
	sbc  a                                           ; $7ade: $9f
	dec  c                                           ; $7adf: $0d
	adc  h                                           ; $7ae0: $8c
	ld   l, b                                        ; $7ae1: $68
	and  a                                           ; $7ae2: $a7
	jp   nz, $9759                                   ; $7ae3: $c2 $59 $97

	ld   a, b                                        ; $7ae6: $78
	sbc  a                                           ; $7ae7: $9f
	dec  c                                           ; $7ae8: $0d
	nop                                              ; $7ae9: $00
	ld   a, [bc]                                     ; $7aea: $0a
	dec  c                                           ; $7aeb: $0d
	nop                                              ; $7aec: $00
	nop                                              ; $7aed: $00
	rrca                                             ; $7aee: $0f
	dec  b                                           ; $7aef: $05
	inc  bc                                          ; $7af0: $03
	ld   bc, $4904                                   ; $7af1: $01 $04 $49
	ld   bc, $9e14                                   ; $7af4: $01 $14 $9e
	ld   bc, $0407                                   ; $7af7: $01 $07 $04
	cp   [hl]                                        ; $7afa: $be
	ld   a, l                                        ; $7afb: $7d
	inc  b                                           ; $7afc: $04
	cp   [hl]                                        ; $7afd: $be
	di                                               ; $7afe: $f3
	dec  b                                           ; $7aff: $05
	add  d                                           ; $7b00: $82
	ld   bc, $0d08                                   ; $7b01: $01 $08 $0d
	or   e                                           ; $7b04: $b3
	call nz, $10fa                                   ; $7b05: $c4 $fa $10
	ld   a, b                                        ; $7b08: $78
	and  c                                           ; $7b09: $a1
	sub  d                                           ; $7b0a: $92
	ld   h, c                                        ; $7b0b: $61
	sbc  d                                           ; $7b0c: $9a
	ld   a, l                                        ; $7b0d: $7d
	ld   a, [$0df9]                                  ; $7b0e: $fa $f9 $0d
	and  e                                           ; $7b11: $a3
	xor  h                                           ; $7b12: $ac
	push af                                          ; $7b13: $f5
	ld   e, d                                        ; $7b14: $5a
	ld   a, b                                        ; $7b15: $78
	db   $fc                                         ; $7b16: $fc
	sbc  a                                           ; $7b17: $9f
	dec  c                                           ; $7b18: $0d
	nop                                              ; $7b19: $00
	ld   a, [bc]                                     ; $7b1a: $0a
	rrca                                             ; $7b1b: $0f
	dec  b                                           ; $7b1c: $05
	ld   [bc], a                                     ; $7b1d: $02
	ld   bc, $7889                                   ; $7b1e: $01 $89 $78
	sbc  [hl]                                        ; $7b21: $9e
	ld   [$7d00], sp                                 ; $7b22: $08 $00 $7d
	and  c                                           ; $7b25: $a1
	sbc  a                                           ; $7b26: $9f
	dec  c                                           ; $7b27: $0d
	ld   e, d                                        ; $7b28: $5a
	and  c                                           ; $7b29: $a1
	ld   a, [hl]                                     ; $7b2a: $7e
	ld   [hl], c                                     ; $7b2b: $71
	ld   [hl], h                                     ; $7b2c: $74
	xor  c                                           ; $7b2d: $a9
	xor  c                                           ; $7b2e: $a9
	sub  d                                           ; $7b2f: $92
	ld   [hl], d                                     ; $7b30: $72
	dec  c                                           ; $7b31: $0d
	ld   [bc], a                                     ; $7b32: $02
	inc  l                                           ; $7b33: $2c
	ld   d, d                                        ; $7b34: $52
	ld   [hl], h                                     ; $7b35: $74
	sub  d                                           ; $7b36: $92
	sbc  a                                           ; $7b37: $9f
	dec  c                                           ; $7b38: $0d
	nop                                              ; $7b39: $00
	ld   a, [bc]                                     ; $7b3a: $0a
	add  hl, de                                      ; $7b3b: $19
	dec  b                                           ; $7b3c: $05
	inc  bc                                          ; $7b3d: $03
	ld   [bc], a                                     ; $7b3e: $02
	inc  e                                           ; $7b3f: $1c
	ld   a, h                                        ; $7b40: $7c
	ld   e, b                                        ; $7b41: $58
	adc  l                                           ; $7b42: $8d
	ld   e, l                                        ; $7b43: $5d
	ld   h, [hl]                                     ; $7b44: $66
	and  b                                           ; $7b45: $a0
	ld   [bc], a                                     ; $7b46: $02
	inc  l                                           ; $7b47: $2c
	ld   e, l                                        ; $7b48: $5d
	nop                                              ; $7b49: $00
	nop                                              ; $7b4a: $00
	inc  bc                                          ; $7b4b: $03
	xor  l                                           ; $7b4c: $ad
	and  c                                           ; $7b4d: $a1
	inc  b                                           ; $7b4e: $04
	dec  bc                                          ; $7b4f: $0b
	ld   a, h                                        ; $7b50: $7c
	ld   e, b                                        ; $7b51: $58
	adc  l                                           ; $7b52: $8d
	ld   e, l                                        ; $7b53: $5d
	ld   h, [hl]                                     ; $7b54: $66
	and  b                                           ; $7b55: $a0
	ld   [bc], a                                     ; $7b56: $02
	inc  l                                           ; $7b57: $2c
	ld   e, l                                        ; $7b58: $5d
	nop                                              ; $7b59: $00
	ld   bc, $6003                                   ; $7b5a: $01 $03 $60
	ld   a, h                                        ; $7b5d: $7c
	ld   e, b                                        ; $7b5e: $58
	adc  l                                           ; $7b5f: $8d
	ld   e, l                                        ; $7b60: $5d
	ld   h, [hl]                                     ; $7b61: $66
	and  b                                           ; $7b62: $a0
	ld   [bc], a                                     ; $7b63: $02
	inc  l                                           ; $7b64: $2c
	ld   e, l                                        ; $7b65: $5d
	nop                                              ; $7b66: $00
	ld   [bc], a                                     ; $7b67: $02
	rlca                                             ; $7b68: $07
	call $020d                                       ; $7b69: $cd $0d $02
	inc  bc                                          ; $7b6c: $03
	ld   bc, $2000                                   ; $7b6d: $01 $00 $20
	nop                                              ; $7b70: $00
	rlca                                             ; $7b71: $07
	db   $eb                                         ; $7b72: $eb
	dec  c                                           ; $7b73: $0d
	ld   [bc], a                                     ; $7b74: $02
	inc  bc                                          ; $7b75: $03
	ld   bc, $2001                                   ; $7b76: $01 $01 $20
	nop                                              ; $7b79: $00
	rlca                                             ; $7b7a: $07
	dec  de                                          ; $7b7b: $1b
	ld   c, $02                                      ; $7b7c: $0e $02
	inc  bc                                          ; $7b7e: $03
	ld   bc, $2002                                   ; $7b7f: $01 $02 $20
	nop                                              ; $7b82: $00
	ld   b, $12                                      ; $7b83: $06 $12
	rrca                                             ; $7b85: $0f
	rlca                                             ; $7b86: $07
	ld   c, e                                        ; $7b87: $4b
	ld   c, $03                                      ; $7b88: $0e $03
	dec  d                                           ; $7b8a: $15
	ld   bc, $25be                                   ; $7b8b: $01 $be $25
	nop                                              ; $7b8e: $00
	rlca                                             ; $7b8f: $07
	ld   a, h                                        ; $7b90: $7c
	ld   c, $03                                      ; $7b91: $0e $03
	dec  d                                           ; $7b93: $15
	ld   bc, $25b4                                   ; $7b94: $01 $b4 $25
	nop                                              ; $7b97: $00
	rlca                                             ; $7b98: $07
	xor  c                                           ; $7b99: $a9
	ld   c, $03                                      ; $7b9a: $0e $03
	dec  d                                           ; $7b9c: $15
	ld   bc, $25ac                                   ; $7b9d: $01 $ac $25
	nop                                              ; $7ba0: $00
	ld   b, $d8                                      ; $7ba1: $06 $d8
	ld   c, $07                                      ; $7ba3: $0e $07
	ld   c, e                                        ; $7ba5: $4b
	ld   c, $03                                      ; $7ba6: $0e $03
	jr   nz, @+$03                                   ; $7ba8: $20 $01

	and  $25                                         ; $7baa: $e6 $25
	nop                                              ; $7bac: $00
	rlca                                             ; $7bad: $07
	ld   a, h                                        ; $7bae: $7c
	ld   c, $03                                      ; $7baf: $0e $03
	jr   nz, jr_055_7bb4                             ; $7bb1: $20 $01

	sub  [hl]                                        ; $7bb3: $96

jr_055_7bb4:
	dec  h                                           ; $7bb4: $25
	inc  bc                                          ; $7bb5: $03
	jr   nz, jr_055_7bb9                             ; $7bb6: $20 $01

	push hl                                          ; $7bb8: $e5

jr_055_7bb9:
	inc  hl                                          ; $7bb9: $23
	inc  e                                           ; $7bba: $1c
	nop                                              ; $7bbb: $00
	rlca                                             ; $7bbc: $07
	xor  c                                           ; $7bbd: $a9
	ld   c, $01                                      ; $7bbe: $0e $01
	ld   h, h                                        ; $7bc0: $64
	inc  bc                                          ; $7bc1: $03
	jr   nz, @+$25                                   ; $7bc2: $20 $23

	inc  bc                                          ; $7bc4: $03
	jr   nz, jr_055_7bc8                             ; $7bc5: $20 $01

	sub  l                                           ; $7bc7: $95

jr_055_7bc8:
	inc  hl                                          ; $7bc8: $23
	inc  e                                           ; $7bc9: $1c
	nop                                              ; $7bca: $00
	rlca                                             ; $7bcb: $07
	ret  c                                           ; $7bcc: $d8

	ld   c, $03                                      ; $7bcd: $0e $03
	jr   nz, jr_055_7bd2                             ; $7bcf: $20 $01

	ld   h, e                                        ; $7bd1: $63

jr_055_7bd2:
	inc  hl                                          ; $7bd2: $23
	nop                                              ; $7bd3: $00
	rlca                                             ; $7bd4: $07
	ld   c, e                                        ; $7bd5: $4b
	ld   c, $03                                      ; $7bd6: $0e $03
	ld   hl, $e601                                   ; $7bd8: $21 $01 $e6
	dec  h                                           ; $7bdb: $25
	nop                                              ; $7bdc: $00
	rlca                                             ; $7bdd: $07
	ld   a, h                                        ; $7bde: $7c
	ld   c, $03                                      ; $7bdf: $0e $03
	ld   hl, $9601                                   ; $7be1: $21 $01 $96
	dec  h                                           ; $7be4: $25
	inc  bc                                          ; $7be5: $03
	ld   hl, $e501                                   ; $7be6: $21 $01 $e5
	inc  hl                                          ; $7be9: $23
	inc  e                                           ; $7bea: $1c
	nop                                              ; $7beb: $00
	rlca                                             ; $7bec: $07
	xor  c                                           ; $7bed: $a9
	ld   c, $01                                      ; $7bee: $0e $01
	ld   h, h                                        ; $7bf0: $64
	inc  bc                                          ; $7bf1: $03
	ld   hl, $0323                                   ; $7bf2: $21 $23 $03
	ld   hl, $9501                                   ; $7bf5: $21 $01 $95
	inc  hl                                          ; $7bf8: $23
	inc  e                                           ; $7bf9: $1c
	nop                                              ; $7bfa: $00
	rlca                                             ; $7bfb: $07
	ret  c                                           ; $7bfc: $d8

	ld   c, $03                                      ; $7bfd: $0e $03
	ld   hl, $6301                                   ; $7bff: $21 $01 $63
	inc  hl                                          ; $7c02: $23
	nop                                              ; $7c03: $00
	rrca                                             ; $7c04: $0f
	nop                                              ; $7c05: $00
	ld   bc, $0101                                   ; $7c06: $01 $01 $01
	rlca                                             ; $7c09: $07
	inc  b                                           ; $7c0a: $04
	ld   c, $05                                      ; $7c0b: $0e $05
	adc  h                                           ; $7c0d: $8c
	ld   bc, $7508                                   ; $7c0e: $01 $08 $75
	ld   h, a                                        ; $7c11: $67
	sbc  a                                           ; $7c12: $9f
	dec  c                                           ; $7c13: $0d
	nop                                              ; $7c14: $00
	ld   a, [bc]                                     ; $7c15: $0a
	inc  e                                           ; $7c16: $1c
	dec  b                                           ; $7c17: $05
	ld   bc, $1d01                                   ; $7c18: $01 $01 $1d
	ld   b, b                                        ; $7c1b: $40
	dec  d                                           ; $7c1c: $15
	inc  bc                                          ; $7c1d: $03
	dec  d                                           ; $7c1e: $15
	ld   bc, $2803                                   ; $7c1f: $01 $03 $28
	nop                                              ; $7c22: $00
	ld   bc, $7192                                   ; $7c23: $01 $92 $71
	ld   l, l                                        ; $7c26: $6d
	ld   a, [$5610]                                  ; $7c27: $fa $10 $56
	ld   d, [hl]                                     ; $7c2a: $56
	sub  d                                           ; $7c2b: $92
	and  c                                           ; $7c2c: $a1
	ld   e, c                                        ; $7c2d: $59
	ld   a, [$000d]                                  ; $7c2e: $fa $0d $00
	ld   a, [bc]                                     ; $7c31: $0a
	ld   b, $12                                      ; $7c32: $06 $12
	rrca                                             ; $7c34: $0f
	rrca                                             ; $7c35: $0f
	nop                                              ; $7c36: $00
	ld   bc, $0101                                   ; $7c37: $01 $01 $01
	rlca                                             ; $7c3a: $07
	dec  b                                           ; $7c3b: $05
	adc  h                                           ; $7c3c: $8c
	ld   bc, $7508                                   ; $7c3d: $01 $08 $75
	ld   h, a                                        ; $7c40: $67
	sbc  a                                           ; $7c41: $9f
	dec  c                                           ; $7c42: $0d
	nop                                              ; $7c43: $00
	ld   a, [bc]                                     ; $7c44: $0a
	inc  e                                           ; $7c45: $1c
	dec  b                                           ; $7c46: $05
	ld   bc, $1d01                                   ; $7c47: $01 $01 $1d
	ld   b, b                                        ; $7c4a: $40
	dec  d                                           ; $7c4b: $15
	inc  bc                                          ; $7c4c: $03
	dec  d                                           ; $7c4d: $15
	ld   bc, $2802                                   ; $7c4e: $01 $02 $28
	nop                                              ; $7c51: $00
	ld   bc, $a154                                   ; $7c52: $01 $54 $a1
	sbc  [hl]                                        ; $7c55: $9e
	pop  de                                          ; $7c56: $d1
	call nz, $ecc2                                   ; $7c57: $c4 $c2 $ec
	sub  d                                           ; $7c5a: $92
	sbc  a                                           ; $7c5b: $9f
	dec  c                                           ; $7c5c: $0d
	nop                                              ; $7c5d: $00
	ld   a, [bc]                                     ; $7c5e: $0a
	ld   b, $12                                      ; $7c5f: $06 $12
	rrca                                             ; $7c61: $0f
	rrca                                             ; $7c62: $0f
	nop                                              ; $7c63: $00
	ld   bc, $0101                                   ; $7c64: $01 $01 $01
	rlca                                             ; $7c67: $07
	inc  bc                                          ; $7c68: $03
	xor  a                                           ; $7c69: $af
	dec  b                                           ; $7c6a: $05
	adc  h                                           ; $7c6b: $8c
	ld   bc, $7508                                   ; $7c6c: $01 $08 $75
	ld   h, a                                        ; $7c6f: $67
	sbc  a                                           ; $7c70: $9f
	dec  c                                           ; $7c71: $0d
	nop                                              ; $7c72: $00
	ld   a, [bc]                                     ; $7c73: $0a
	inc  e                                           ; $7c74: $1c
	dec  b                                           ; $7c75: $05
	nop                                              ; $7c76: $00
	nop                                              ; $7c77: $00
	dec  e                                           ; $7c78: $1d
	ld   b, b                                        ; $7c79: $40
	dec  d                                           ; $7c7a: $15
	inc  bc                                          ; $7c7b: $03
	dec  d                                           ; $7c7c: $15
	ld   bc, $2801                                   ; $7c7d: $01 $01 $28
	nop                                              ; $7c80: $00
	ld   bc, $508c                                   ; $7c81: $01 $8c $50
	sbc  [hl]                                        ; $7c84: $9e
	ld   d, [hl]                                     ; $7c85: $56
	ld   d, [hl]                                     ; $7c86: $56
	sub  d                                           ; $7c87: $92
	and  c                                           ; $7c88: $a1
	ld   e, c                                        ; $7c89: $59
	sbc  a                                           ; $7c8a: $9f
	dec  c                                           ; $7c8b: $0d
	nop                                              ; $7c8c: $00
	ld   a, [bc]                                     ; $7c8d: $0a
	ld   b, $12                                      ; $7c8e: $06 $12
	rrca                                             ; $7c90: $0f
	rrca                                             ; $7c91: $0f
	nop                                              ; $7c92: $00
	ld   bc, $0101                                   ; $7c93: $01 $01 $01
	rlca                                             ; $7c96: $07
	dec  b                                           ; $7c97: $05
	add  d                                           ; $7c98: $82
	ld   bc, $7508                                   ; $7c99: $01 $08 $75
	ld   h, a                                        ; $7c9c: $67
	sbc  a                                           ; $7c9d: $9f
	dec  c                                           ; $7c9e: $0d
	nop                                              ; $7c9f: $00
	ld   a, [bc]                                     ; $7ca0: $0a
	inc  e                                           ; $7ca1: $1c
	dec  b                                           ; $7ca2: $05
	inc  bc                                          ; $7ca3: $03
	inc  bc                                          ; $7ca4: $03
	dec  e                                           ; $7ca5: $1d
	ld   b, b                                        ; $7ca6: $40
	dec  d                                           ; $7ca7: $15
	inc  bc                                          ; $7ca8: $03
	dec  d                                           ; $7ca9: $15
	ld   bc, $2902                                   ; $7caa: $01 $02 $29
	nop                                              ; $7cad: $00
	ld   bc, $c4b3                                   ; $7cae: $01 $b3 $c4
	ld   a, [$500d]                                  ; $7cb1: $fa $0d $50
	and  c                                           ; $7cb4: $a1
	ld   l, l                                        ; $7cb5: $6d
	sub  b                                           ; $7cb6: $90
	ld   e, c                                        ; $7cb7: $59
	ld   d, d                                        ; $7cb8: $52
	ld   a, b                                        ; $7cb9: $78
	db   $fc                                         ; $7cba: $fc
	sbc  a                                           ; $7cbb: $9f
	dec  c                                           ; $7cbc: $0d
	inc  bc                                          ; $7cbd: $03
	ld   l, c                                        ; $7cbe: $69
	ld   [bc], a                                     ; $7cbf: $02
	jr   z, @-$6c                                    ; $7cc0: $28 $92

	ld   a, b                                        ; $7cc2: $78
	db   $fc                                         ; $7cc3: $fc
	sbc  a                                           ; $7cc4: $9f
	dec  c                                           ; $7cc5: $0d
	nop                                              ; $7cc6: $00
	ld   a, [bc]                                     ; $7cc7: $0a
	ld   b, $12                                      ; $7cc8: $06 $12
	rrca                                             ; $7cca: $0f
	inc  e                                           ; $7ccb: $1c
	dec  b                                           ; $7ccc: $05
	nop                                              ; $7ccd: $00
	nop                                              ; $7cce: $00
	ld   bc, $7889                                   ; $7ccf: $01 $89 $78
	sbc  [hl]                                        ; $7cd2: $9e
	ld   [bc], a                                     ; $7cd3: $02
	or   l                                           ; $7cd4: $b5
	sbc  e                                           ; $7cd5: $9b
	ld   e, c                                        ; $7cd6: $59
	sbc  a                                           ; $7cd7: $9f
	dec  c                                           ; $7cd8: $0d
	nop                                              ; $7cd9: $00
	ld   a, [bc]                                     ; $7cda: $0a
	rrca                                             ; $7cdb: $0f
	nop                                              ; $7cdc: $00
	ld   bc, $7d01                                   ; $7cdd: $01 $01 $7d
	ld   d, d                                        ; $7ce0: $52
	sbc  a                                           ; $7ce1: $9f
	dec  c                                           ; $7ce2: $0d
	nop                                              ; $7ce3: $00
	ld   a, [bc]                                     ; $7ce4: $0a
	ld   b, $bf                                      ; $7ce5: $06 $bf
	inc  c                                           ; $7ce7: $0c
	nop                                              ; $7ce8: $00
	inc  b                                           ; $7ce9: $04
	add  b                                           ; $7cea: $80
	rra                                              ; $7ceb: $1f
	ld   bc, $20ff                                   ; $7cec: $01 $ff $20
	nop                                              ; $7cef: $00
	ld   c, $01                                      ; $7cf0: $0e $01
	rrca                                             ; $7cf2: $0f
	nop                                              ; $7cf3: $00
	ld   bc, $0102                                   ; $7cf4: $01 $02 $01
	ld   [bc], a                                     ; $7cf7: $02
	and  l                                           ; $7cf8: $a5
	inc  b                                           ; $7cf9: $04
	xor  d                                           ; $7cfa: $aa
	ld   a, l                                        ; $7cfb: $7d
	sbc  [hl]                                        ; $7cfc: $9e
	ld   h, a                                        ; $7cfd: $67
	adc  l                                           ; $7cfe: $8d
	sbc  d                                           ; $7cff: $9a
	ld   h, e                                        ; $7d00: $63
	and  c                                           ; $7d01: $a1
	halt                                             ; $7d02: $76
	dec  c                                           ; $7d03: $0d
	ld   e, b                                        ; $7d04: $58
	inc  b                                           ; $7d05: $04
	adc  l                                           ; $7d06: $8d
	ld   d, d                                        ; $7d07: $52
	inc  b                                           ; $7d08: $04
	sub  d                                           ; $7d09: $92
	ld   l, [hl]                                     ; $7d0a: $6e
	sbc  a                                           ; $7d0b: $9f
	dec  c                                           ; $7d0c: $0d
	dec  b                                           ; $7d0d: $05
	jr   z, jr_055_7d62                              ; $7d0e: $28 $52

	ld   [hl], l                                     ; $7d10: $75
	inc  b                                           ; $7d11: $04
	rlca                                             ; $7d12: $07
	dec  b                                           ; $7d13: $05
	scf                                              ; $7d14: $37
	ld   d, [hl]                                     ; $7d15: $56
	ld   a, b                                        ; $7d16: $78
	ld   e, l                                        ; $7d17: $5d
	ld   l, a                                        ; $7d18: $6f
	sub  c                                           ; $7d19: $91
	sbc  a                                           ; $7d1a: $9f
	dec  c                                           ; $7d1b: $0d
	nop                                              ; $7d1c: $00
	ld   a, [bc]                                     ; $7d1d: $0a
	add  hl, de                                      ; $7d1e: $19
	inc  b                                           ; $7d1f: $04
	inc  bc                                          ; $7d20: $03
	cp   b                                           ; $7d21: $b8
	push hl                                          ; $7d22: $e5
	push bc                                          ; $7d23: $c5
	and  b                                           ; $7d24: $a0
	inc  b                                           ; $7d25: $04
	rlca                                             ; $7d26: $07
	sbc  c                                           ; $7d27: $99
	nop                                              ; $7d28: $00
	nop                                              ; $7d29: $00
	cp   b                                           ; $7d2a: $b8
	push hl                                          ; $7d2b: $e5
	or   d                                           ; $7d2c: $b2
	and  b                                           ; $7d2d: $a0
	inc  bc                                          ; $7d2e: $03
	dec  de                                          ; $7d2f: $1b
	sbc  c                                           ; $7d30: $99
	nop                                              ; $7d31: $00
	ld   bc, $e5b8                                   ; $7d32: $01 $b8 $e5
	pop  af                                          ; $7d35: $f1
	ei                                               ; $7d36: $fb
	and  b                                           ; $7d37: $a0
	ld   d, b                                        ; $7d38: $50
	add  c                                           ; $7d39: $81
	sbc  c                                           ; $7d3a: $99
	nop                                              ; $7d3b: $00
	ld   [bc], a                                     ; $7d3c: $02
	rlca                                             ; $7d3d: $07
	ld   l, e                                        ; $7d3e: $6b
	nop                                              ; $7d3f: $00
	ld   [bc], a                                     ; $7d40: $02
	inc  bc                                          ; $7d41: $03
	ld   bc, $2000                                   ; $7d42: $01 $00 $20
	nop                                              ; $7d45: $00
	rlca                                             ; $7d46: $07
	adc  h                                           ; $7d47: $8c
	nop                                              ; $7d48: $00
	ld   [bc], a                                     ; $7d49: $02
	inc  bc                                          ; $7d4a: $03
	ld   bc, $2001                                   ; $7d4b: $01 $01 $20
	nop                                              ; $7d4e: $00
	rlca                                             ; $7d4f: $07
	ret  z                                           ; $7d50: $c8

	nop                                              ; $7d51: $00
	ld   [bc], a                                     ; $7d52: $02
	inc  bc                                          ; $7d53: $03
	ld   bc, $2002                                   ; $7d54: $01 $02 $20
	nop                                              ; $7d57: $00
	ld   b, $09                                      ; $7d58: $06 $09
	ld   bc, $000f                                   ; $7d5a: $01 $0f $00
	ld   bc, $8c01                                   ; $7d5d: $01 $01 $8c
	ld   l, b                                        ; $7d60: $68
	ld   a, l                                        ; $7d61: $7d

jr_055_7d62:
	sbc  [hl]                                        ; $7d62: $9e
	cp   b                                           ; $7d63: $b8
	push hl                                          ; $7d64: $e5
	push bc                                          ; $7d65: $c5
	and  b                                           ; $7d66: $a0
	inc  b                                           ; $7d67: $04
	rlca                                             ; $7d68: $07
	ld   [hl], h                                     ; $7d69: $74
	halt                                             ; $7d6a: $76
	rst  $38                                         ; $7d6b: $ff
	rst  $38                                         ; $7d6c: $ff
	dec  c                                           ; $7d6d: $0d
	nop                                              ; $7d6e: $00
	ld   a, [bc]                                     ; $7d6f: $0a
	dec  b                                           ; $7d70: $05
	ld   b, b                                        ; $7d71: $40
	rst  $38                                         ; $7d72: $ff
	inc  bc                                          ; $7d73: $03
	rst  $38                                         ; $7d74: $ff
	ld   bc, $2801                                   ; $7d75: $01 $01 $28
	nop                                              ; $7d78: $00
	ld   b, $2c                                      ; $7d79: $06 $2c
	ld   bc, $000f                                   ; $7d7b: $01 $0f $00
	ld   bc, $8c01                                   ; $7d7e: $01 $01 $8c
	ld   l, b                                        ; $7d81: $68
	ld   a, l                                        ; $7d82: $7d
	sbc  [hl]                                        ; $7d83: $9e
	cp   b                                           ; $7d84: $b8
	push hl                                          ; $7d85: $e5
	or   d                                           ; $7d86: $b2
	and  b                                           ; $7d87: $a0
	inc  bc                                          ; $7d88: $03
	dec  de                                          ; $7d89: $1b
	ld   [hl], c                                     ; $7d8a: $71
	ld   [hl], h                                     ; $7d8b: $74
	rst  $38                                         ; $7d8c: $ff
	rst  $38                                         ; $7d8d: $ff
	dec  c                                           ; $7d8e: $0d
	and  c                                           ; $7d8f: $a1
	ld   sp, hl                                      ; $7d90: $f9
	db   $10                                         ; $7d91: $10
	ld   a, b                                        ; $7d92: $78
	and  c                                           ; $7d93: $a1
	ld   [hl], l                                     ; $7d94: $75
	cp   b                                           ; $7d95: $b8
	push hl                                          ; $7d96: $e5
	or   d                                           ; $7d97: $b2
	and  b                                           ; $7d98: $a0
	dec  c                                           ; $7d99: $0d
	nop                                              ; $7d9a: $00
	dec  b                                           ; $7d9b: $05
	ld   b, b                                        ; $7d9c: $40
	rst  $38                                         ; $7d9d: $ff
	inc  bc                                          ; $7d9e: $03
	rst  $38                                         ; $7d9f: $ff
	ld   bc, $2801                                   ; $7da0: $01 $01 $28
	nop                                              ; $7da3: $00
	ld   bc, $1b03                                   ; $7da4: $01 $03 $1b
	sub  a                                           ; $7da7: $97
	ld   a, b                                        ; $7da8: $78
	ld   e, e                                        ; $7da9: $5b
	sub  c                                           ; $7daa: $91
	ld   d, d                                        ; $7dab: $52
	ld   e, a                                        ; $7dac: $5f
	ld   a, b                                        ; $7dad: $78
	ld   d, d                                        ; $7dae: $52
	and  c                                           ; $7daf: $a1
	ld   l, [hl]                                     ; $7db0: $6e
	ld   sp, hl                                      ; $7db1: $f9
	dec  c                                           ; $7db2: $0d
	nop                                              ; $7db3: $00
	ld   a, [bc]                                     ; $7db4: $0a
	ld   b, $2e                                      ; $7db5: $06 $2e
	nop                                              ; $7db7: $00
	rrca                                             ; $7db8: $0f
	nop                                              ; $7db9: $00
	ld   bc, $8c01                                   ; $7dba: $01 $01 $8c
	ld   l, b                                        ; $7dbd: $68
	ld   a, l                                        ; $7dbe: $7d
	rst  $38                                         ; $7dbf: $ff
	rst  $38                                         ; $7dc0: $ff
	cp   b                                           ; $7dc1: $b8
	push hl                                          ; $7dc2: $e5
	pop  af                                          ; $7dc3: $f1
	ei                                               ; $7dc4: $fb
	and  b                                           ; $7dc5: $a0
	ld   d, b                                        ; $7dc6: $50
	add  c                                           ; $7dc7: $81
	sub  [hl]                                        ; $7dc8: $96
	ld   d, h                                        ; $7dc9: $54
	dec  c                                           ; $7dca: $0d
	ld   e, c                                        ; $7dcb: $59
	ld   a, b                                        ; $7dcc: $78
	ld   sp, hl                                      ; $7dcd: $f9
	db   $10                                         ; $7dce: $10
	rst  $38                                         ; $7dcf: $ff
	rst  $38                                         ; $7dd0: $ff
	ld   d, d                                        ; $7dd1: $52
	sub  d                                           ; $7dd2: $92
	ld   d, d                                        ; $7dd3: $52
	sub  d                                           ; $7dd4: $92
	sbc  [hl]                                        ; $7dd5: $9e
	ld   l, e                                        ; $7dd6: $6b
	and  c                                           ; $7dd7: $a1
	ld   a, b                                        ; $7dd8: $78
	dec  c                                           ; $7dd9: $0d
	nop                                              ; $7dda: $00
	dec  b                                           ; $7ddb: $05
	ld   b, b                                        ; $7ddc: $40
	rst  $38                                         ; $7ddd: $ff
	inc  bc                                          ; $7dde: $03
	rst  $38                                         ; $7ddf: $ff
	ld   bc, $2801                                   ; $7de0: $01 $01 $28
	nop                                              ; $7de3: $00
	ld   bc, $7661                                   ; $7de4: $01 $61 $76
	ld   h, l                                        ; $7de7: $65
	ld   [hl], h                                     ; $7de8: $74
	sbc  c                                           ; $7de9: $99
	inc  bc                                          ; $7dea: $03
	ld   l, a                                        ; $7deb: $6f
	ld   [bc], a                                     ; $7dec: $02
	xor  c                                           ; $7ded: $a9
	ld   a, l                                        ; $7dee: $7d
	ld   a, b                                        ; $7def: $78
	ld   d, d                                        ; $7df0: $52
	ld   l, h                                        ; $7df1: $6c
	sbc  a                                           ; $7df2: $9f
	dec  c                                           ; $7df3: $0d
	nop                                              ; $7df4: $00
	ld   a, [bc]                                     ; $7df5: $0a
	ld   b, $2e                                      ; $7df6: $06 $2e
	nop                                              ; $7df8: $00
	rrca                                             ; $7df9: $0f
	nop                                              ; $7dfa: $00
	ld   bc, $8c01                                   ; $7dfb: $01 $01 $8c
	ld   l, b                                        ; $7dfe: $68
	ld   a, l                                        ; $7dff: $7d
	rst  $38                                         ; $7e00: $ff
	rst  $38                                         ; $7e01: $ff
	dec  c                                           ; $7e02: $0d
	ld   [hl], a                                     ; $7e03: $77
	ld   d, h                                        ; $7e04: $54
	ld   h, l                                        ; $7e05: $65
	sub  [hl]                                        ; $7e06: $96
	ld   d, h                                        ; $7e07: $54
	ld   e, c                                        ; $7e08: $59
	rst  $38                                         ; $7e09: $ff
	rst  $38                                         ; $7e0a: $ff
	rst  $38                                         ; $7e0b: $ff
	rst  $38                                         ; $7e0c: $ff
	dec  c                                           ; $7e0d: $0d
	nop                                              ; $7e0e: $00
	ld   a, [bc]                                     ; $7e0f: $0a
	dec  b                                           ; $7e10: $05
	ld   b, b                                        ; $7e11: $40
	rst  $38                                         ; $7e12: $ff
	inc  bc                                          ; $7e13: $03
	rst  $38                                         ; $7e14: $ff
	ld   bc, $2801                                   ; $7e15: $01 $01 $28
	nop                                              ; $7e18: $00
	ld   b, $2e                                      ; $7e19: $06 $2e
	nop                                              ; $7e1b: $00
	add  hl, de                                      ; $7e1c: $19
	inc  b                                           ; $7e1d: $04
	inc  bc                                          ; $7e1e: $03
	ld   e, l                                        ; $7e1f: $5d
	ld   [hl], d                                     ; $7e20: $72
	ld   h, l                                        ; $7e21: $65
	ld   l, l                                        ; $7e22: $6d
	and  b                                           ; $7e23: $a0
	ld   a, l                                        ; $7e24: $7d
	ld   e, l                                        ; $7e25: $5d
	nop                                              ; $7e26: $00
	nop                                              ; $7e27: $00
	ld   e, l                                        ; $7e28: $5d
	ld   [hl], d                                     ; $7e29: $72
	ld   h, l                                        ; $7e2a: $65
	ld   l, l                                        ; $7e2b: $6d
	and  b                                           ; $7e2c: $a0
	ld   h, e                                        ; $7e2d: $63
	ld   e, l                                        ; $7e2e: $5d
	nop                                              ; $7e2f: $00
	ld   bc, $715e                                   ; $7e30: $01 $5e $71
	ld   l, l                                        ; $7e33: $6d
	sbc  b                                           ; $7e34: $98
	halt                                             ; $7e35: $76
	ld   h, a                                        ; $7e36: $67
	sbc  c                                           ; $7e37: $99
	nop                                              ; $7e38: $00
	ld   [bc], a                                     ; $7e39: $02
	rlca                                             ; $7e3a: $07
	ld   l, b                                        ; $7e3b: $68
	ld   bc, $0302                                   ; $7e3c: $01 $02 $03
	ld   bc, $2000                                   ; $7e3f: $01 $00 $20
	nop                                              ; $7e42: $00
	rlca                                             ; $7e43: $07
	adc  b                                           ; $7e44: $88
	ld   bc, $0302                                   ; $7e45: $01 $02 $03
	ld   bc, $2001                                   ; $7e48: $01 $01 $20
	nop                                              ; $7e4b: $00
	rlca                                             ; $7e4c: $07
	jp   nz, $0201                                   ; $7e4d: $c2 $01 $02

	inc  bc                                          ; $7e50: $03
	ld   bc, $2002                                   ; $7e51: $01 $02 $20
	nop                                              ; $7e54: $00
	ld   b, $f3                                      ; $7e55: $06 $f3
	ld   bc, $000f                                   ; $7e57: $01 $0f $00
	ld   bc, $0301                                   ; $7e5a: $01 $01 $03
	ld   l, b                                        ; $7e5d: $68
	ld   a, c                                        ; $7e5e: $79
	ld   e, l                                        ; $7e5f: $5d
	ld   [hl], d                                     ; $7e60: $72
	ld   h, l                                        ; $7e61: $65
	ld   l, l                                        ; $7e62: $6d
	and  b                                           ; $7e63: $a0
	ld   a, l                                        ; $7e64: $7d
	ld   d, d                                        ; $7e65: $52
	ld   [hl], h                                     ; $7e66: $74
	rst  $38                                         ; $7e67: $ff
	rst  $38                                         ; $7e68: $ff
	dec  c                                           ; $7e69: $0d
	nop                                              ; $7e6a: $00
	ld   a, [bc]                                     ; $7e6b: $0a
	dec  b                                           ; $7e6c: $05
	ld   b, b                                        ; $7e6d: $40
	rst  $38                                         ; $7e6e: $ff
	inc  bc                                          ; $7e6f: $03
	rst  $38                                         ; $7e70: $ff
	ld   bc, $2801                                   ; $7e71: $01 $01 $28
	nop                                              ; $7e74: $00
	ld   b, $16                                      ; $7e75: $06 $16
	ld   [bc], a                                     ; $7e77: $02
	rrca                                             ; $7e78: $0f
	nop                                              ; $7e79: $00
	ld   bc, $0301                                   ; $7e7a: $01 $01 $03
	ld   l, b                                        ; $7e7d: $68
	ld   a, c                                        ; $7e7e: $79
	sbc  [hl]                                        ; $7e7f: $9e
	ld   e, l                                        ; $7e80: $5d
	ld   [hl], d                                     ; $7e81: $72
	ld   h, l                                        ; $7e82: $65
	ld   l, l                                        ; $7e83: $6d
	and  b                                           ; $7e84: $a0
	ld   h, e                                        ; $7e85: $63
	ld   d, d                                        ; $7e86: $52
	ld   [hl], h                                     ; $7e87: $74
	rst  $38                                         ; $7e88: $ff
	rst  $38                                         ; $7e89: $ff
	dec  c                                           ; $7e8a: $0d
	and  c                                           ; $7e8b: $a1
	ld   sp, hl                                      ; $7e8c: $f9
	db   $10                                         ; $7e8d: $10
	ld   h, e                                        ; $7e8e: $63
	ld   d, d                                        ; $7e8f: $52
	ld   [hl], h                                     ; $7e90: $74
	ld   [hl], c                                     ; $7e91: $71
	ld   [hl], h                                     ; $7e92: $74
	rst  $38                                         ; $7e93: $ff
	rst  $38                                         ; $7e94: $ff
	dec  c                                           ; $7e95: $0d
	nop                                              ; $7e96: $00
	dec  b                                           ; $7e97: $05
	ld   b, b                                        ; $7e98: $40
	rst  $38                                         ; $7e99: $ff
	inc  bc                                          ; $7e9a: $03
	rst  $38                                         ; $7e9b: $ff
	ld   bc, $2801                                   ; $7e9c: $01 $01 $28
	nop                                              ; $7e9f: $00
	ld   bc, $8492                                   ; $7ea0: $01 $92 $84
	ld   [hl], c                                     ; $7ea3: $71
	ld   l, a                                        ; $7ea4: $6f
	sub  c                                           ; $7ea5: $91
	pop  bc                                          ; $7ea6: $c1
	db   $e3                                         ; $7ea7: $e3
	ld   [hl], l                                     ; $7ea8: $75
	ld   h, l                                        ; $7ea9: $65
	sub  l                                           ; $7eaa: $95
	sbc  a                                           ; $7eab: $9f
	dec  c                                           ; $7eac: $0d
	nop                                              ; $7ead: $00
	ld   a, [bc]                                     ; $7eae: $0a
	ld   b, $2c                                      ; $7eaf: $06 $2c
	ld   bc, $000f                                   ; $7eb1: $01 $0f $00
	ld   bc, $0301                                   ; $7eb4: $01 $01 $03
	ld   l, b                                        ; $7eb7: $68
	ld   a, c                                        ; $7eb8: $79
	halt                                             ; $7eb9: $76
	rst  $38                                         ; $7eba: $ff
	rst  $38                                         ; $7ebb: $ff
	dec  c                                           ; $7ebc: $0d
	ld   d, h                                        ; $7ebd: $54
	db   $fc                                         ; $7ebe: $fc
	and  c                                           ; $7ebf: $a1
	sbc  [hl]                                        ; $7ec0: $9e
	ld   e, [hl]                                     ; $7ec1: $5e
	ld   [hl], c                                     ; $7ec2: $71
	ld   l, l                                        ; $7ec3: $6d
	sbc  b                                           ; $7ec4: $98
	rst  $38                                         ; $7ec5: $ff
	rst  $38                                         ; $7ec6: $ff
	dec  c                                           ; $7ec7: $0d
	nop                                              ; $7ec8: $00
	dec  b                                           ; $7ec9: $05
	ld   b, b                                        ; $7eca: $40
	rst  $38                                         ; $7ecb: $ff
	inc  bc                                          ; $7ecc: $03
	rst  $38                                         ; $7ecd: $ff
	ld   bc, $2801                                   ; $7ece: $01 $01 $28
	nop                                              ; $7ed1: $00
	ld   bc, $7471                                   ; $7ed2: $01 $71 $74
	sbc  [hl]                                        ; $7ed5: $9e
	ld   l, a                                        ; $7ed6: $6f
	ld   e, d                                        ; $7ed7: $5a
	ld   d, h                                        ; $7ed8: $54
	ld   [hl], c                                     ; $7ed9: $71
	ld   [hl], h                                     ; $7eda: $74
	ld   a, [$0dfa]                                  ; $7edb: $fa $fa $0d
	nop                                              ; $7ede: $00
	ld   a, [bc]                                     ; $7edf: $0a
	ld   b, $2c                                      ; $7ee0: $06 $2c
	ld   bc, $000f                                   ; $7ee2: $01 $0f $00
	ld   bc, $0301                                   ; $7ee5: $01 $01 $03
	ld   l, b                                        ; $7ee8: $68
	ld   a, c                                        ; $7ee9: $79
	rst  $38                                         ; $7eea: $ff
	rst  $38                                         ; $7eeb: $ff
	dec  c                                           ; $7eec: $0d
	ld   [hl], a                                     ; $7eed: $77
	ld   d, h                                        ; $7eee: $54
	ld   h, l                                        ; $7eef: $65
	sub  [hl]                                        ; $7ef0: $96
	ld   d, h                                        ; $7ef1: $54
	ld   e, c                                        ; $7ef2: $59
	rst  $38                                         ; $7ef3: $ff
	rst  $38                                         ; $7ef4: $ff
	rst  $38                                         ; $7ef5: $ff
	rst  $38                                         ; $7ef6: $ff
	dec  c                                           ; $7ef7: $0d
	nop                                              ; $7ef8: $00
	ld   a, [bc]                                     ; $7ef9: $0a
	dec  b                                           ; $7efa: $05
	ld   b, b                                        ; $7efb: $40
	rst  $38                                         ; $7efc: $ff
	inc  bc                                          ; $7efd: $03
	rst  $38                                         ; $7efe: $ff
	ld   bc, $2801                                   ; $7eff: $01 $01 $28
	nop                                              ; $7f02: $00
	ld   b, $2c                                      ; $7f03: $06 $2c
	ld   bc, $0419                                   ; $7f05: $01 $19 $04
	inc  bc                                          ; $7f08: $03
	cp   e                                           ; $7f09: $bb
	db   $dd                                         ; $7f0a: $dd
	push af                                          ; $7f0b: $f5
	and  b                                           ; $7f0c: $a0
	ld   a, l                                        ; $7f0d: $7d
	ld   e, l                                        ; $7f0e: $5d
	nop                                              ; $7f0f: $00
	nop                                              ; $7f10: $00
	cp   e                                           ; $7f11: $bb
	xor  [hl]                                        ; $7f12: $ae
	push af                                          ; $7f13: $f5
	and  b                                           ; $7f14: $a0
	ld   e, c                                        ; $7f15: $59
	add  h                                           ; $7f16: $84
	sbc  c                                           ; $7f17: $99
	nop                                              ; $7f18: $00
	ld   bc, $ddbb                                   ; $7f19: $01 $bb $dd
	push af                                          ; $7f1c: $f5
	and  b                                           ; $7f1d: $a0
	ld   a, d                                        ; $7f1e: $7a
	ld   e, [hl]                                     ; $7f1f: $5e
	nop                                              ; $7f20: $00
	ld   [bc], a                                     ; $7f21: $02
	rlca                                             ; $7f22: $07
	ld   d, b                                        ; $7f23: $50
	ld   [bc], a                                     ; $7f24: $02
	ld   [bc], a                                     ; $7f25: $02
	inc  bc                                          ; $7f26: $03
	ld   bc, $2000                                   ; $7f27: $01 $00 $20
	nop                                              ; $7f2a: $00
	rlca                                             ; $7f2b: $07
	ld   [hl], b                                     ; $7f2c: $70
	ld   [bc], a                                     ; $7f2d: $02
	ld   [bc], a                                     ; $7f2e: $02
	inc  bc                                          ; $7f2f: $03
	ld   bc, $2001                                   ; $7f30: $01 $01 $20
	nop                                              ; $7f33: $00
	rlca                                             ; $7f34: $07
	and  h                                           ; $7f35: $a4
	ld   [bc], a                                     ; $7f36: $02
	ld   [bc], a                                     ; $7f37: $02
	inc  bc                                          ; $7f38: $03
	ld   bc, $2002                                   ; $7f39: $01 $02 $20
	nop                                              ; $7f3c: $00
	ld   b, $d6                                      ; $7f3d: $06 $d6
	ld   [bc], a                                     ; $7f3f: $02
	rrca                                             ; $7f40: $0f
	nop                                              ; $7f41: $00
	ld   bc, $6b01                                   ; $7f42: $01 $01 $6b
	ld   h, l                                        ; $7f45: $65
	ld   [hl], h                                     ; $7f46: $74
	sbc  [hl]                                        ; $7f47: $9e
	cp   e                                           ; $7f48: $bb
	db   $dd                                         ; $7f49: $dd
	push af                                          ; $7f4a: $f5
	and  b                                           ; $7f4b: $a0
	ld   a, l                                        ; $7f4c: $7d
	ld   d, d                                        ; $7f4d: $52
	ld   [hl], h                                     ; $7f4e: $74
	rst  $38                                         ; $7f4f: $ff
	rst  $38                                         ; $7f50: $ff
	dec  c                                           ; $7f51: $0d
	nop                                              ; $7f52: $00
	ld   a, [bc]                                     ; $7f53: $0a
	dec  b                                           ; $7f54: $05
	ld   b, b                                        ; $7f55: $40
	rst  $38                                         ; $7f56: $ff
	inc  bc                                          ; $7f57: $03
	rst  $38                                         ; $7f58: $ff
	ld   bc, $2801                                   ; $7f59: $01 $01 $28
	nop                                              ; $7f5c: $00
	ld   b, $f9                                      ; $7f5d: $06 $f9
	ld   [bc], a                                     ; $7f5f: $02
	rrca                                             ; $7f60: $0f
	nop                                              ; $7f61: $00
	ld   bc, $bb01                                   ; $7f62: $01 $01 $bb
	xor  [hl]                                        ; $7f65: $ae
	push af                                          ; $7f66: $f5
	and  b                                           ; $7f67: $a0
	ld   e, c                                        ; $7f68: $59
	add  h                                           ; $7f69: $84
	ld   [hl], c                                     ; $7f6a: $71
	ld   [hl], h                                     ; $7f6b: $74
	rst  $38                                         ; $7f6c: $ff
	rst  $38                                         ; $7f6d: $ff
	dec  c                                           ; $7f6e: $0d
	rst  $38                                         ; $7f6f: $ff
	rst  $38                                         ; $7f70: $ff
	and  c                                           ; $7f71: $a1
	ld   sp, hl                                      ; $7f72: $f9
	db   $10                                         ; $7f73: $10
	ld   a, b                                        ; $7f74: $78
	and  c                                           ; $7f75: $a1
	ld   [hl], l                                     ; $7f76: $75
	ld   l, e                                        ; $7f77: $6b
	and  c                                           ; $7f78: $a1
	ld   a, b                                        ; $7f79: $78
	sub  b                                           ; $7f7a: $90
	ld   a, h                                        ; $7f7b: $7c
	dec  c                                           ; $7f7c: $0d
	nop                                              ; $7f7d: $00
	dec  b                                           ; $7f7e: $05
	ld   b, b                                        ; $7f7f: $40
	rst  $38                                         ; $7f80: $ff
	inc  bc                                          ; $7f81: $03
	rst  $38                                         ; $7f82: $ff
	ld   bc, $2801                                   ; $7f83: $01 $01 $28
	nop                                              ; $7f86: $00
	ld   bc, $8459                                   ; $7f87: $01 $59 $84
	sbc  c                                           ; $7f8a: $99
	and  c                                           ; $7f8b: $a1
	ld   l, [hl]                                     ; $7f8c: $6e
	ld   sp, hl                                      ; $7f8d: $f9
	dec  c                                           ; $7f8e: $0d
	nop                                              ; $7f8f: $00
	ld   a, [bc]                                     ; $7f90: $0a
	ld   b, $16                                      ; $7f91: $06 $16
	ld   [bc], a                                     ; $7f93: $02
	rrca                                             ; $7f94: $0f
	nop                                              ; $7f95: $00
	ld   bc, $6b01                                   ; $7f96: $01 $01 $6b
	ld   h, l                                        ; $7f99: $65
	ld   [hl], h                                     ; $7f9a: $74
	sbc  [hl]                                        ; $7f9b: $9e
	cp   e                                           ; $7f9c: $bb
	db   $dd                                         ; $7f9d: $dd
	push af                                          ; $7f9e: $f5
	and  b                                           ; $7f9f: $a0
	ld   a, d                                        ; $7fa0: $7a
	ld   e, [hl]                                     ; $7fa1: $5e
	sbc  a                                           ; $7fa2: $9f
	dec  c                                           ; $7fa3: $0d
	rst  $38                                         ; $7fa4: $ff
	rst  $38                                         ; $7fa5: $ff
	rst  $38                                         ; $7fa6: $ff
	rst  $38                                         ; $7fa7: $ff
	and  c                                           ; $7fa8: $a1
	ld   sp, hl                                      ; $7fa9: $f9
	dec  c                                           ; $7faa: $0d
	nop                                              ; $7fab: $00
	dec  b                                           ; $7fac: $05
	ld   b, b                                        ; $7fad: $40
	rst  $38                                         ; $7fae: $ff
	inc  bc                                          ; $7faf: $03
	rst  $38                                         ; $7fb0: $ff
	ld   bc, $2801                                   ; $7fb1: $01 $01 $28
	nop                                              ; $7fb4: $00
	ld   bc, $527a                                   ; $7fb5: $01 $7a $52
	ld   h, [hl]                                     ; $7fb8: $66
	sub  c                                           ; $7fb9: $91
	pop  bc                                          ; $7fba: $c1
	db   $e3                                         ; $7fbb: $e3
	ld   [hl], l                                     ; $7fbc: $75
	ld   h, l                                        ; $7fbd: $65
	sub  l                                           ; $7fbe: $95
	ld   sp, hl                                      ; $7fbf: $f9
	dec  c                                           ; $7fc0: $0d
	nop                                              ; $7fc1: $00
	ld   a, [bc]                                     ; $7fc2: $0a
	ld   b, $16                                      ; $7fc3: $06 $16
	ld   [bc], a                                     ; $7fc5: $02
	rrca                                             ; $7fc6: $0f
	nop                                              ; $7fc7: $00
	ld   bc, $6b01                                   ; $7fc8: $01 $01 $6b
	ld   h, l                                        ; $7fcb: $65
	ld   [hl], h                                     ; $7fcc: $74
	rst  $38                                         ; $7fcd: $ff
	rst  $38                                         ; $7fce: $ff
	dec  c                                           ; $7fcf: $0d
	ld   [hl], a                                     ; $7fd0: $77
	ld   d, h                                        ; $7fd1: $54
	ld   h, l                                        ; $7fd2: $65
	sub  [hl]                                        ; $7fd3: $96
	ld   d, h                                        ; $7fd4: $54
	ld   e, c                                        ; $7fd5: $59
	rst  $38                                         ; $7fd6: $ff
	rst  $38                                         ; $7fd7: $ff
	rst  $38                                         ; $7fd8: $ff
	rst  $38                                         ; $7fd9: $ff
	dec  c                                           ; $7fda: $0d
	nop                                              ; $7fdb: $00
	ld   a, [bc]                                     ; $7fdc: $0a
	dec  b                                           ; $7fdd: $05
	ld   b, b                                        ; $7fde: $40
	rst  $38                                         ; $7fdf: $ff
	inc  bc                                          ; $7fe0: $03
	rst  $38                                         ; $7fe1: $ff
	ld   bc, $2801                                   ; $7fe2: $01 $01 $28
	nop                                              ; $7fe5: $00
	ld   b, $16                                      ; $7fe6: $06 $16
	ld   [bc], a                                     ; $7fe8: $02
	add  hl, de                                      ; $7fe9: $19
	inc  b                                           ; $7fea: $04
	inc  bc                                          ; $7feb: $03
	jp   c, $c9ba                                    ; $7fec: $da $ba $c9

	and  b                                           ; $7fef: $a0
	inc  b                                           ; $7ff0: $04
	rlca                                             ; $7ff1: $07
	sbc  c                                           ; $7ff2: $99
	nop                                              ; $7ff3: $00
	nop                                              ; $7ff4: $00
	jp   c, $c9ed                                    ; $7ff5: $da $ed $c9

	and  b                                           ; $7ff8: $a0
	sub  h                                           ; $7ff9: $94
	sbc  c                                           ; $7ffa: $99
	adc  a                                           ; $7ffb: $8f
	sbc  c                                           ; $7ffc: $99
	nop                                              ; $7ffd: $00
	db   $01                                         ; $7ffe: $01
	db   $da                                         ; $7fff: $da
