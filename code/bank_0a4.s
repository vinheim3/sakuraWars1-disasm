; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0a4", ROMX[$4000], BANK[$a4]

	nop                                              ; $4000: $00
	jr   z, jr_0a4_4004                              ; $4001: $28 $01

	rla                                              ; $4003: $17

jr_0a4_4004:
	nop                                              ; $4004: $00
	ld   c, b                                        ; $4005: $48
	inc  b                                           ; $4006: $04
	nop                                              ; $4007: $00
	rla                                              ; $4008: $17
	rla                                              ; $4009: $17
	ld   bc, $6800                                   ; $400a: $01 $00 $68
	dec  b                                           ; $400d: $05
	ld   [bc], a                                     ; $400e: $02
	rla                                              ; $400f: $17
	rla                                              ; $4010: $17
	inc  bc                                          ; $4011: $03

jr_0a4_4012:
	rla                                              ; $4012: $17
	nop                                              ; $4013: $00
	adc  b                                           ; $4014: $88
	dec  b                                           ; $4015: $05
	rla                                              ; $4016: $17
	rla                                              ; $4017: $17
	rla                                              ; $4018: $17
	rla                                              ; $4019: $17
	rla                                              ; $401a: $17
	nop                                              ; $401b: $00
	xor  c                                           ; $401c: $a9
	inc  b                                           ; $401d: $04
	rla                                              ; $401e: $17
	rla                                              ; $401f: $17
	rla                                              ; $4020: $17
	rla                                              ; $4021: $17
	nop                                              ; $4022: $00
	jp   z, $1703                                    ; $4023: $ca $03 $17

	rla                                              ; $4026: $17
	inc  b                                           ; $4027: $04
	nop                                              ; $4028: $00

jr_0a4_4029:
	ld   [$8503], a                                  ; $4029: $ea $03 $85
	add  [hl]                                        ; $402c: $86
	rlca                                             ; $402d: $07
	ld   bc, $0707                                   ; $402e: $01 $07 $07
	adc  b                                           ; $4031: $88
	adc  c                                           ; $4032: $89
	adc  d                                           ; $4033: $8a
	adc  e                                           ; $4034: $8b
	inc  c                                           ; $4035: $0c
	dec  c                                           ; $4036: $0d
	ld   c, $01                                      ; $4037: $0e $01
	ld   h, $08                                      ; $4039: $26 $08
	adc  a                                           ; $403b: $8f
	sub  b                                           ; $403c: $90
	sub  c                                           ; $403d: $91
	sub  d                                           ; $403e: $92
	inc  de                                          ; $403f: $13
	inc  d                                           ; $4040: $14
	dec  d                                           ; $4041: $15
	ld   d, $ff                                      ; $4042: $16 $ff
	nop                                              ; $4044: $00
	dec  b                                           ; $4045: $05
	ld   [bc], a                                     ; $4046: $02
	ld   a, [de]                                     ; $4047: $1a
	ld   a, [de]                                     ; $4048: $1a
	nop                                              ; $4049: $00
	dec  h                                           ; $404a: $25
	ld   [bc], a                                     ; $404b: $02
	dec  de                                          ; $404c: $1b
	ld   a, [de]                                     ; $404d: $1a
	nop                                              ; $404e: $00
	ld   b, l                                        ; $404f: $45
	inc  bc                                          ; $4050: $03
	ld   a, [de]                                     ; $4051: $1a
	ld   a, [de]                                     ; $4052: $1a
	ld   a, [de]                                     ; $4053: $1a
	nop                                              ; $4054: $00
	ld   h, l                                        ; $4055: $65
	inc  bc                                          ; $4056: $03
	ld   a, [de]                                     ; $4057: $1a
	ld   a, [de]                                     ; $4058: $1a
	ld   a, [de]                                     ; $4059: $1a
	nop                                              ; $405a: $00
	add  [hl]                                        ; $405b: $86
	ld   [bc], a                                     ; $405c: $02
	add  b                                           ; $405d: $80
	ld   a, [de]                                     ; $405e: $1a
	nop                                              ; $405f: $00
	and  [hl]                                        ; $4060: $a6
	ld   bc, $0081                                   ; $4061: $01 $81 $00
	jp   $0206                                       ; $4064: $c3 $06 $02


	inc  bc                                          ; $4067: $03
	inc  b                                           ; $4068: $04
	dec  b                                           ; $4069: $05
	ld   b, $07                                      ; $406a: $06 $07
	nop                                              ; $406c: $00
	db   $e3                                         ; $406d: $e3
	ld   b, $08                                      ; $406e: $06 $08
	add  hl, bc                                      ; $4070: $09
	ld   a, [bc]                                     ; $4071: $0a
	dec  bc                                          ; $4072: $0b
	inc  c                                           ; $4073: $0c
	dec  c                                           ; $4074: $0d
	ld   bc, $0603                                   ; $4075: $01 $03 $06
	ld   c, $0f                                      ; $4078: $0e $0f
	db   $10                                         ; $407a: $10
	ld   de, $1312                                   ; $407b: $11 $12 $13
	ld   bc, $0623                                   ; $407e: $01 $23 $06
	inc  d                                           ; $4081: $14
	sub  l                                           ; $4082: $95
	sub  [hl]                                        ; $4083: $96
	sub  a                                           ; $4084: $97
	sbc  b                                           ; $4085: $98
	add  hl, de                                      ; $4086: $19
	rst  $38                                         ; $4087: $ff
	nop                                              ; $4088: $00
	add  hl, hl                                      ; $4089: $29
	ld   [bc], a                                     ; $408a: $02
	jr   jr_0a4_40a5                                 ; $408b: $18 $18

	nop                                              ; $408d: $00
	ld   c, b                                        ; $408e: $48
	inc  b                                           ; $408f: $04
	jr   jr_0a4_4012                                 ; $4090: $18 $80

	add  c                                           ; $4092: $81
	jr   jr_0a4_4095                                 ; $4093: $18 $00

jr_0a4_4095:
	ld   l, b                                        ; $4095: $68

jr_0a4_4096:
	inc  b                                           ; $4096: $04
	jr   jr_0a4_40b1                                 ; $4097: $18 $18

	jr   jr_0a4_40b3                                 ; $4099: $18 $18

	nop                                              ; $409b: $00
	adc  b                                           ; $409c: $88
	inc  b                                           ; $409d: $04
	jr   jr_0a4_40b8                                 ; $409e: $18 $18

	jr   @+$1a                                       ; $40a0: $18 $18

	nop                                              ; $40a2: $00
	and  a                                           ; $40a3: $a7
	dec  b                                           ; $40a4: $05

jr_0a4_40a5:
	jr   jr_0a4_4029                                 ; $40a5: $18 $82

	add  e                                           ; $40a7: $83
	add  h                                           ; $40a8: $84
	add  l                                           ; $40a9: $85
	nop                                              ; $40aa: $00
	rst  ToBoot                                         ; $40ab: $c7
	dec  b                                           ; $40ac: $05
	jr   jr_0a4_40c7                                 ; $40ad: $18 $18

	add  [hl]                                        ; $40af: $86
	add  a                                           ; $40b0: $87

jr_0a4_40b1:
	adc  b                                           ; $40b1: $88
	nop                                              ; $40b2: $00

jr_0a4_40b3:
	jp   hl                                          ; $40b3: $e9


	inc  bc                                          ; $40b4: $03
	adc  c                                           ; $40b5: $89
	adc  d                                           ; $40b6: $8a
	dec  bc                                          ; $40b7: $0b

jr_0a4_40b8:
	ld   bc, $0607                                   ; $40b8: $01 $07 $06
	inc  c                                           ; $40bb: $0c
	dec  c                                           ; $40bc: $0d
	ld   c, $0f                                      ; $40bd: $0e $0f
	db   $10                                         ; $40bf: $10
	ld   de, $2701                                   ; $40c0: $11 $01 $27
	ld   b, $12                                      ; $40c3: $06 $12
	inc  de                                          ; $40c5: $13
	inc  d                                           ; $40c6: $14

jr_0a4_40c7:
	dec  d                                           ; $40c7: $15
	ld   d, $17                                      ; $40c8: $16 $17
	rst  $38                                         ; $40ca: $ff
	nop                                              ; $40cb: $00
	ld   c, b                                        ; $40cc: $48
	inc  b                                           ; $40cd: $04
	nop                                              ; $40ce: $00
	jr   jr_0a4_40e9                                 ; $40cf: $18 $18

	jr   jr_0a4_40d3                                 ; $40d1: $18 $00

jr_0a4_40d3:
	ld   h, a                                        ; $40d3: $67
	rlca                                             ; $40d4: $07
	ld   bc, $1802                                   ; $40d5: $01 $02 $18
	jr   jr_0a4_40f2                                 ; $40d8: $18 $18

	add  hl, bc                                      ; $40da: $09
	jr   jr_0a4_40dd                                 ; $40db: $18 $00

jr_0a4_40dd:
	add  [hl]                                        ; $40dd: $86
	ld   [$0403], sp                                 ; $40de: $08 $03 $04
	jr   @+$1a                                       ; $40e1: $18 $18

	jr   @+$1a                                       ; $40e3: $18 $18

	ld   a, [bc]                                     ; $40e5: $0a
	dec  bc                                          ; $40e6: $0b
	nop                                              ; $40e7: $00
	and  [hl]                                        ; $40e8: $a6

jr_0a4_40e9:
	ld   [$0605], sp                                 ; $40e9: $08 $05 $06
	jr   jr_0a4_4106                                 ; $40ec: $18 $18

	jr   @+$1a                                       ; $40ee: $18 $18

	inc  c                                           ; $40f0: $0c
	dec  c                                           ; $40f1: $0d

jr_0a4_40f2:
	nop                                              ; $40f2: $00
	add  $06                                         ; $40f3: $c6 $06
	rlca                                             ; $40f5: $07
	ld   [$9418], sp                                 ; $40f6: $08 $18 $94
	sub  l                                           ; $40f9: $95
	jr   jr_0a4_40fc                                 ; $40fa: $18 $00

jr_0a4_40fc:
	add  sp, $03                                     ; $40fc: $e8 $03
	jr   jr_0a4_4096                                 ; $40fe: $18 $96

	sub  a                                           ; $4100: $97
	ld   bc, $0308                                   ; $4101: $01 $08 $03
	adc  [hl]                                        ; $4104: $8e
	adc  a                                           ; $4105: $8f

jr_0a4_4106:
	sub  b                                           ; $4106: $90
	ld   bc, $0328                                   ; $4107: $01 $28 $03
	sub  c                                           ; $410a: $91
	sub  d                                           ; $410b: $92
	sub  e                                           ; $410c: $93
	rst  $38                                         ; $410d: $ff
	nop                                              ; $410e: $00
	add  hl, hl                                      ; $410f: $29
	ld   [bc], a                                     ; $4110: $02
	ld   [de], a                                     ; $4111: $12
	ld   [de], a                                     ; $4112: $12
	nop                                              ; $4113: $00
	ld   c, b                                        ; $4114: $48
	inc  b                                           ; $4115: $04
	nop                                              ; $4116: $00
	ld   bc, $1202                                   ; $4117: $01 $02 $12
	nop                                              ; $411a: $00
	ld   l, b                                        ; $411b: $68
	inc  b                                           ; $411c: $04
	ld   [de], a                                     ; $411d: $12
	ld   [de], a                                     ; $411e: $12
	ld   [de], a                                     ; $411f: $12
	ld   [de], a                                     ; $4120: $12
	nop                                              ; $4121: $00
	adc  b                                           ; $4122: $88
	inc  b                                           ; $4123: $04
	ld   [de], a                                     ; $4124: $12
	ld   [de], a                                     ; $4125: $12
	ld   [de], a                                     ; $4126: $12
	ld   [de], a                                     ; $4127: $12
	nop                                              ; $4128: $00
	xor  c                                           ; $4129: $a9
	ld   [bc], a                                     ; $412a: $02
	dec  d                                           ; $412b: $15
	ld   d, $00                                      ; $412c: $16 $00
	ret                                              ; $412e: $c9


	ld   [bc], a                                     ; $412f: $02
	inc  de                                          ; $4130: $13
	inc  d                                           ; $4131: $14
	nop                                              ; $4132: $00
	add  sp, $03                                     ; $4133: $e8 $03
	add  e                                           ; $4135: $83
	inc  b                                           ; $4136: $04
	dec  b                                           ; $4137: $05
	ld   bc, $0805                                   ; $4138: $01 $05 $08
	ld   [de], a                                     ; $413b: $12
	add  [hl]                                        ; $413c: $86
	add  a                                           ; $413d: $87
	adc  b                                           ; $413e: $88
	add  hl, bc                                      ; $413f: $09
	ld   a, [bc]                                     ; $4140: $0a
	ld   [de], a                                     ; $4141: $12
	ld   [de], a                                     ; $4142: $12
	ld   bc, $0925                                   ; $4143: $01 $25 $09
	adc  e                                           ; $4146: $8b
	adc  h                                           ; $4147: $8c
	adc  l                                           ; $4148: $8d
	adc  [hl]                                        ; $4149: $8e
	adc  a                                           ; $414a: $8f
	ld   [de], a                                     ; $414b: $12
	ld   [de], a                                     ; $414c: $12
	sub  b                                           ; $414d: $90
	sub  c                                           ; $414e: $91
	rst  $38                                         ; $414f: $ff
	nop                                              ; $4150: $00
	ld   a, [bc]                                     ; $4151: $0a
	ld   bc, $0000                                   ; $4152: $01 $00 $00
	add  hl, hl                                      ; $4155: $29
	ld   [bc], a                                     ; $4156: $02
	ld   bc, $0002                                   ; $4157: $01 $02 $00
	ld   c, b                                        ; $415a: $48
	inc  b                                           ; $415b: $04
	inc  bc                                          ; $415c: $03
	inc  b                                           ; $415d: $04
	dec  b                                           ; $415e: $05
	ld   b, $00                                      ; $415f: $06 $00
	ld   l, d                                        ; $4161: $6a
	ld   bc, $0007                                   ; $4162: $01 $07 $00
	and  a                                           ; $4165: $a7
	ld   b, $88                                      ; $4166: $06 $88
	adc  c                                           ; $4168: $89
	ld   a, [bc]                                     ; $4169: $0a
	dec  bc                                          ; $416a: $0b
	adc  h                                           ; $416b: $8c
	adc  l                                           ; $416c: $8d
	nop                                              ; $416d: $00
	add  $08                                         ; $416e: $c6 $08
	ld   c, $8f                                      ; $4170: $0e $8f
	sub  b                                           ; $4172: $90
	ld   de, $9312                                   ; $4173: $11 $12 $93
	sub  h                                           ; $4176: $94
	dec  d                                           ; $4177: $15
	nop                                              ; $4178: $00
	and  $08                                         ; $4179: $e6 $08
	ld   d, $97                                      ; $417b: $16 $97
	sbc  b                                           ; $417d: $98
	add  hl, de                                      ; $417e: $19
	ld   a, [de]                                     ; $417f: $1a
	sbc  e                                           ; $4180: $9b
	sbc  h                                           ; $4181: $9c
	dec  e                                           ; $4182: $1d
	ld   bc, $0408                                   ; $4183: $01 $08 $04
	sbc  [hl]                                        ; $4186: $9e
	sbc  a                                           ; $4187: $9f
	and  b                                           ; $4188: $a0
	and  c                                           ; $4189: $a1
	ld   bc, $0428                                   ; $418a: $01 $28 $04
	and  d                                           ; $418d: $a2
	and  e                                           ; $418e: $a3

jr_0a4_418f:
	and  h                                           ; $418f: $a4
	and  l                                           ; $4190: $a5
	rst  $38                                         ; $4191: $ff
	nop                                              ; $4192: $00
	jr   z, @+$03                                    ; $4193: $28 $01

	stop                                             ; $4195: $10 $00
	ld   c, b                                        ; $4197: $48
	inc  b                                           ; $4198: $04
	db   $10                                         ; $4199: $10
	db   $10                                         ; $419a: $10
	db   $10                                         ; $419b: $10
	stop                                             ; $419c: $10 $00
	ld   l, b                                        ; $419e: $68
	dec  b                                           ; $419f: $05
	db   $10                                         ; $41a0: $10
	db   $10                                         ; $41a1: $10
	db   $10                                         ; $41a2: $10
	db   $10                                         ; $41a3: $10
	stop                                             ; $41a4: $10 $00
	adc  b                                           ; $41a6: $88
	dec  b                                           ; $41a7: $05
	db   $10                                         ; $41a8: $10
	db   $10                                         ; $41a9: $10
	db   $10                                         ; $41aa: $10
	db   $10                                         ; $41ab: $10
	stop                                             ; $41ac: $10 $00
	xor  c                                           ; $41ae: $a9
	inc  b                                           ; $41af: $04
	db   $10                                         ; $41b0: $10
	db   $10                                         ; $41b1: $10
	db   $10                                         ; $41b2: $10
	stop                                             ; $41b3: $10 $00
	jp   z, $1003                                    ; $41b5: $ca $03 $10

	add  b                                           ; $41b8: $80
	add  c                                           ; $41b9: $81
	nop                                              ; $41ba: $00
	ld   [$1003], a                                  ; $41bb: $ea $03 $10
	ld   [bc], a                                     ; $41be: $02
	add  e                                           ; $41bf: $83
	ld   bc, $0608                                   ; $41c0: $01 $08 $06
	add  h                                           ; $41c3: $84
	dec  b                                           ; $41c4: $05
	ld   b, $87                                      ; $41c5: $06 $87
	ld   [$0189], sp                                 ; $41c7: $08 $89 $01
	jr   z, jr_0a4_41d2                              ; $41ca: $28 $06

	adc  d                                           ; $41cc: $8a
	dec  bc                                          ; $41cd: $0b
	inc  c                                           ; $41ce: $0c
	adc  l                                           ; $41cf: $8d
	ld   c, $8f                                      ; $41d0: $0e $8f

jr_0a4_41d2:
	rst  $38                                         ; $41d2: $ff
	nop                                              ; $41d3: $00
	ld   b, a                                        ; $41d4: $47
	ld   b, $80                                      ; $41d5: $06 $80
	add  c                                           ; $41d7: $81
	jr   @+$1a                                       ; $41d8: $18 $18

	add  h                                           ; $41da: $84
	add  l                                           ; $41db: $85
	nop                                              ; $41dc: $00
	ld   h, a                                        ; $41dd: $67
	ld   b, $82                                      ; $41de: $06 $82
	add  e                                           ; $41e0: $83
	jr   @+$1a                                       ; $41e1: $18 $18

	add  [hl]                                        ; $41e3: $86
	add  a                                           ; $41e4: $87
	nop                                              ; $41e5: $00
	adc  b                                           ; $41e6: $88
	inc  b                                           ; $41e7: $04
	jr   @+$1a                                       ; $41e8: $18 $18

	jr   jr_0a4_4204                                 ; $41ea: $18 $18

	nop                                              ; $41ec: $00
	xor  b                                           ; $41ed: $a8
	inc  b                                           ; $41ee: $04
	jr   @+$1a                                       ; $41ef: $18 $18

	jr   @+$1a                                       ; $41f1: $18 $18

	nop                                              ; $41f3: $00
	rst  ToBoot                                         ; $41f4: $c7
	ld   b, $18                                      ; $41f5: $06 $18
	jr   jr_0a4_418f                                 ; $41f7: $18 $96

	sub  a                                           ; $41f9: $97
	jr   jr_0a4_4214                                 ; $41fa: $18 $18

	nop                                              ; $41fc: $00
	jp   hl                                          ; $41fd: $e9


	ld   [bc], a                                     ; $41fe: $02
	adc  b                                           ; $41ff: $88
	adc  c                                           ; $4200: $89
	ld   bc, $0607                                   ; $4201: $01 $07 $06

jr_0a4_4204:
	ld   a, [bc]                                     ; $4204: $0a
	dec  bc                                          ; $4205: $0b
	adc  h                                           ; $4206: $8c
	adc  l                                           ; $4207: $8d
	ld   c, $0f                                      ; $4208: $0e $0f
	ld   bc, $0627                                   ; $420a: $01 $27 $06
	db   $10                                         ; $420d: $10
	ld   de, $9392                                   ; $420e: $11 $92 $93
	inc  d                                           ; $4211: $14
	dec  d                                           ; $4212: $15
	rst  $38                                         ; $4213: $ff

jr_0a4_4214:
	nop                                              ; $4214: $00
	ld   b, a                                        ; $4215: $47
	dec  b                                           ; $4216: $05
	add  b                                           ; $4217: $80
	add  c                                           ; $4218: $81
	add  d                                           ; $4219: $82
	add  e                                           ; $421a: $83
	add  h                                           ; $421b: $84
	nop                                              ; $421c: $00
	ld   h, a                                        ; $421d: $67
	dec  b                                           ; $421e: $05
	add  l                                           ; $421f: $85
	add  [hl]                                        ; $4220: $86
	add  a                                           ; $4221: $87
	adc  b                                           ; $4222: $88
	adc  c                                           ; $4223: $89
	nop                                              ; $4224: $00
	adc  b                                           ; $4225: $88
	inc  b                                           ; $4226: $04
	adc  h                                           ; $4227: $8c
	adc  h                                           ; $4228: $8c
	adc  h                                           ; $4229: $8c
	adc  d                                           ; $422a: $8a
	nop                                              ; $422b: $00
	xor  b                                           ; $422c: $a8
	inc  b                                           ; $422d: $04
	adc  h                                           ; $422e: $8c
	adc  h                                           ; $422f: $8c
	adc  h                                           ; $4230: $8c
	adc  e                                           ; $4231: $8b
	nop                                              ; $4232: $00
	ret                                              ; $4233: $c9


	ld   bc, $008d                                   ; $4234: $01 $8d $00
	rst  $20                                         ; $4237: $e7
	inc  bc                                          ; $4238: $03
	ld   c, $0f                                      ; $4239: $0e $0f
	stop                                             ; $423b: $10 $00
	db   $ec                                         ; $423d: $ec
	ld   bc, $0111                                   ; $423e: $01 $11 $01
	ld   b, $07                                      ; $4241: $06 $07
	ld   [de], a                                     ; $4243: $12
	inc  de                                          ; $4244: $13
	inc  d                                           ; $4245: $14
	dec  d                                           ; $4246: $15
	ld   d, $17                                      ; $4247: $16 $17
	jr   @+$03                                       ; $4249: $18 $01

	ld   h, $07                                      ; $424b: $26 $07
	add  hl, de                                      ; $424d: $19
	ld   a, [de]                                     ; $424e: $1a
	dec  de                                          ; $424f: $1b
	inc  e                                           ; $4250: $1c
	dec  e                                           ; $4251: $1d
	ld   e, $1f                                      ; $4252: $1e $1f
	rst  $38                                         ; $4254: $ff
	nop                                              ; $4255: $00
	add  hl, hl                                      ; $4256: $29
	ld   [bc], a                                     ; $4257: $02
	ld   a, [de]                                     ; $4258: $1a
	ld   a, [de]                                     ; $4259: $1a
	nop                                              ; $425a: $00
	ld   c, b                                        ; $425b: $48
	inc  b                                           ; $425c: $04
	nop                                              ; $425d: $00
	ld   bc, $1a02                                   ; $425e: $01 $02 $1a
	nop                                              ; $4261: $00
	ld   l, b                                        ; $4262: $68
	inc  b                                           ; $4263: $04
	ld   a, [de]                                     ; $4264: $1a
	ld   a, [de]                                     ; $4265: $1a
	ld   a, [de]                                     ; $4266: $1a
	ld   a, [de]                                     ; $4267: $1a
	nop                                              ; $4268: $00
	adc  b                                           ; $4269: $88
	inc  b                                           ; $426a: $04
	ld   a, [de]                                     ; $426b: $1a
	ld   a, [de]                                     ; $426c: $1a
	ld   a, [de]                                     ; $426d: $1a
	ld   a, [de]                                     ; $426e: $1a
	nop                                              ; $426f: $00
	xor  c                                           ; $4270: $a9
	ld   [bc], a                                     ; $4271: $02
	inc  bc                                          ; $4272: $03
	inc  b                                           ; $4273: $04
	nop                                              ; $4274: $00
	ret                                              ; $4275: $c9


	ld   [bc], a                                     ; $4276: $02
	dec  b                                           ; $4277: $05
	ld   b, $00                                      ; $4278: $06 $00
	rst  $20                                         ; $427a: $e7
	inc  b                                           ; $427b: $04
	add  a                                           ; $427c: $87
	adc  b                                           ; $427d: $88
	adc  c                                           ; $427e: $89
	adc  d                                           ; $427f: $8a
	ld   bc, $0607                                   ; $4280: $01 $07 $06
	adc  e                                           ; $4283: $8b
	adc  h                                           ; $4284: $8c
	adc  l                                           ; $4285: $8d
	adc  [hl]                                        ; $4286: $8e
	adc  a                                           ; $4287: $8f
	sub  b                                           ; $4288: $90
	ld   bc, $0925                                   ; $4289: $01 $25 $09
	sub  c                                           ; $428c: $91
	sub  d                                           ; $428d: $92
	sub  e                                           ; $428e: $93
	sub  h                                           ; $428f: $94
	sub  l                                           ; $4290: $95
	sub  [hl]                                        ; $4291: $96
	sub  a                                           ; $4292: $97
	sbc  b                                           ; $4293: $98
	sbc  c                                           ; $4294: $99
	rst  $38                                         ; $4295: $ff
	nop                                              ; $4296: $00
	dec  hl                                          ; $4297: $2b
	ld   bc, $0080                                   ; $4298: $01 $80 $00
	ld   c, b                                        ; $429b: $48
	dec  b                                           ; $429c: $05
	ld   bc, $0302                                   ; $429d: $01 $02 $03
	inc  b                                           ; $42a0: $04
	dec  b                                           ; $42a1: $05
	nop                                              ; $42a2: $00
	ld   l, c                                        ; $42a3: $69
	inc  b                                           ; $42a4: $04
	jr   nz, @+$08                                   ; $42a5: $20 $06

	rlca                                             ; $42a7: $07
	ld   [$8900], sp                                 ; $42a8: $08 $00 $89
	inc  b                                           ; $42ab: $04
	jr   nz, jr_0a4_42b7                             ; $42ac: $20 $09

	ld   a, [bc]                                     ; $42ae: $0a
	dec  bc                                          ; $42af: $0b
	nop                                              ; $42b0: $00
	xor  d                                           ; $42b1: $aa
	inc  bc                                          ; $42b2: $03
	adc  h                                           ; $42b3: $8c
	dec  c                                           ; $42b4: $0d
	ld   c, $00                                      ; $42b5: $0e $00

jr_0a4_42b7:
	jp   z, $9001                                    ; $42b7: $ca $01 $90

	nop                                              ; $42ba: $00
	call z, $0f01                                    ; $42bb: $cc $01 $0f
	nop                                              ; $42be: $00
	rst  $20                                         ; $42bf: $e7
	inc  b                                           ; $42c0: $04
	sub  c                                           ; $42c1: $91
	sub  d                                           ; $42c2: $92
	sub  e                                           ; $42c3: $93
	sub  h                                           ; $42c4: $94
	ld   bc, $0507                                   ; $42c5: $01 $07 $05
	sub  l                                           ; $42c8: $95
	sub  [hl]                                        ; $42c9: $96
	sub  a                                           ; $42ca: $97
	sbc  b                                           ; $42cb: $98
	sbc  c                                           ; $42cc: $99
	ld   bc, $0627                                   ; $42cd: $01 $27 $06
	sbc  d                                           ; $42d0: $9a
	sbc  e                                           ; $42d1: $9b
	sbc  h                                           ; $42d2: $9c
	sbc  l                                           ; $42d3: $9d
	sbc  [hl]                                        ; $42d4: $9e
	sbc  a                                           ; $42d5: $9f
	rst  $38                                         ; $42d6: $ff
	nop                                              ; $42d7: $00
	add  hl, hl                                      ; $42d8: $29
	ld   [bc], a                                     ; $42d9: $02
	ld   d, $16                                      ; $42da: $16 $16
	nop                                              ; $42dc: $00
	ld   c, b                                        ; $42dd: $48
	inc  bc                                          ; $42de: $03
	ld   d, $16                                      ; $42df: $16 $16
	ld   d, $00                                      ; $42e1: $16 $00
	ld   l, b                                        ; $42e3: $68
	inc  bc                                          ; $42e4: $03
	ld   d, $16                                      ; $42e5: $16 $16
	ld   d, $00                                      ; $42e7: $16 $00
	adc  b                                           ; $42e9: $88
	inc  bc                                          ; $42ea: $03
	ld   d, $16                                      ; $42eb: $16 $16
	ld   d, $00                                      ; $42ed: $16 $00
	xor  c                                           ; $42ef: $a9
	ld   [bc], a                                     ; $42f0: $02
	ld   d, $16                                      ; $42f1: $16 $16
	nop                                              ; $42f3: $00
	ret                                              ; $42f4: $c9


	inc  bc                                          ; $42f5: $03
	add  b                                           ; $42f6: $80
	add  c                                           ; $42f7: $81
	add  d                                           ; $42f8: $82
	nop                                              ; $42f9: $00
	add  sp, $04                                     ; $42fa: $e8 $04
	add  e                                           ; $42fc: $83
	add  h                                           ; $42fd: $84
	dec  b                                           ; $42fe: $05
	ld   b, $01                                      ; $42ff: $06 $01
	ld   b, $08                                      ; $4301: $06 $08
	ld   d, $07                                      ; $4303: $16 $07
	ld   [$0a89], sp                                 ; $4305: $08 $89 $0a
	dec  bc                                          ; $4308: $0b
	adc  h                                           ; $4309: $8c
	ld   d, $01                                      ; $430a: $16 $01
	ld   h, $09                                      ; $430c: $26 $09
	adc  l                                           ; $430e: $8d
	ld   c, $8f                                      ; $430f: $0e $8f
	sub  b                                           ; $4311: $90
	ld   de, $9392                                   ; $4312: $11 $92 $93
	sub  h                                           ; $4315: $94
	sub  l                                           ; $4316: $95
	rst  $38                                         ; $4317: $ff
	nop                                              ; $4318: $00
	add  hl, bc                                      ; $4319: $09
	ld   [bc], a                                     ; $431a: $02
	add  b                                           ; $431b: $80
	add  c                                           ; $431c: $81
	nop                                              ; $431d: $00
	add  hl, hl                                      ; $431e: $29
	inc  bc                                          ; $431f: $03
	add  d                                           ; $4320: $82
	add  e                                           ; $4321: $83
	add  h                                           ; $4322: $84
	nop                                              ; $4323: $00
	ld   c, b                                        ; $4324: $48
	inc  b                                           ; $4325: $04
	add  l                                           ; $4326: $85
	add  [hl]                                        ; $4327: $86
	add  [hl]                                        ; $4328: $86
	add  [hl]                                        ; $4329: $86
	nop                                              ; $432a: $00
	ld   l, b                                        ; $432b: $68
	inc  b                                           ; $432c: $04
	rlca                                             ; $432d: $07
	add  [hl]                                        ; $432e: $86
	add  [hl]                                        ; $432f: $86
	add  [hl]                                        ; $4330: $86
	nop                                              ; $4331: $00
	xor  b                                           ; $4332: $a8
	inc  bc                                          ; $4333: $03
	ld   [$0a09], sp                                 ; $4334: $08 $09 $0a
	nop                                              ; $4337: $00

Call_0a4_4338:
	rst  ToBoot                                         ; $4338: $c7
	dec  b                                           ; $4339: $05
	dec  bc                                          ; $433a: $0b
	inc  c                                           ; $433b: $0c
	dec  c                                           ; $433c: $0d
	ld   c, $0f                                      ; $433d: $0e $0f
	nop                                              ; $433f: $00
	rst  $20                                         ; $4340: $e7
	ld   b, $10                                      ; $4341: $06 $10
	ld   de, $1312                                   ; $4343: $11 $12 $13
	inc  d                                           ; $4346: $14
	dec  d                                           ; $4347: $15
	ld   bc, $0508                                   ; $4348: $01 $08 $05
	ld   d, $17                                      ; $434b: $16 $17
	jr   jr_0a4_4368                                 ; $434d: $18 $19

	ld   a, [de]                                     ; $434f: $1a
	ld   bc, $0528                                   ; $4350: $01 $28 $05
	dec  de                                          ; $4353: $1b
	inc  e                                           ; $4354: $1c
	dec  e                                           ; $4355: $1d
	ld   e, $1f                                      ; $4356: $1e $1f
	rst  $38                                         ; $4358: $ff
	nop                                              ; $4359: $00
	add  hl, hl                                      ; $435a: $29
	ld   [bc], a                                     ; $435b: $02
	dec  d                                           ; $435c: $15
	dec  d                                           ; $435d: $15
	nop                                              ; $435e: $00
	ld   c, b                                        ; $435f: $48
	inc  b                                           ; $4360: $04
	nop                                              ; $4361: $00
	ld   bc, $1502                                   ; $4362: $01 $02 $15
	nop                                              ; $4365: $00
	ld   l, b                                        ; $4366: $68
	inc  b                                           ; $4367: $04

jr_0a4_4368:
	inc  bc                                          ; $4368: $03
	dec  d                                           ; $4369: $15
	dec  d                                           ; $436a: $15
	inc  b                                           ; $436b: $04
	nop                                              ; $436c: $00
	adc  b                                           ; $436d: $88
	inc  b                                           ; $436e: $04
	dec  d                                           ; $436f: $15
	dec  d                                           ; $4370: $15
	dec  d                                           ; $4371: $15
	dec  d                                           ; $4372: $15
	nop                                              ; $4373: $00
	xor  b                                           ; $4374: $a8
	inc  b                                           ; $4375: $04
	dec  d                                           ; $4376: $15
	dec  d                                           ; $4377: $15
	dec  d                                           ; $4378: $15
	dec  d                                           ; $4379: $15
	nop                                              ; $437a: $00
	jp   z, $1502                                    ; $437b: $ca $02 $15

	dec  b                                           ; $437e: $05
	nop                                              ; $437f: $00
	jp   hl                                          ; $4380: $e9


	inc  bc                                          ; $4381: $03
	add  [hl]                                        ; $4382: $86
	rlca                                             ; $4383: $07
	ld   [$0701], sp                                 ; $4384: $08 $01 $07
	ld   b, $15                                      ; $4387: $06 $15
	adc  c                                           ; $4389: $89
	adc  d                                           ; $438a: $8a
	adc  e                                           ; $438b: $8b
	adc  h                                           ; $438c: $8c
	adc  l                                           ; $438d: $8d
	ld   bc, $0727                                   ; $438e: $01 $27 $07
	adc  [hl]                                        ; $4391: $8e
	adc  a                                           ; $4392: $8f
	sub  b                                           ; $4393: $90
	sub  c                                           ; $4394: $91
	sub  d                                           ; $4395: $92
	sub  e                                           ; $4396: $93
	sub  h                                           ; $4397: $94
	rst  $38                                         ; $4398: $ff
	inc  b                                           ; $4399: $04
	inc  b                                           ; $439a: $04
	inc  b                                           ; $439b: $04
	inc  b                                           ; $439c: $04
	inc  b                                           ; $439d: $04
	inc  b                                           ; $439e: $04
	inc  b                                           ; $439f: $04
	inc  b                                           ; $43a0: $04
	inc  b                                           ; $43a1: $04
	inc  b                                           ; $43a2: $04
	inc  b                                           ; $43a3: $04
	inc  b                                           ; $43a4: $04
	inc  b                                           ; $43a5: $04
	inc  b                                           ; $43a6: $04
	inc  b                                           ; $43a7: $04
	inc  b                                           ; $43a8: $04
	inc  b                                           ; $43a9: $04
	inc  b                                           ; $43aa: $04
	inc  b                                           ; $43ab: $04
	inc  b                                           ; $43ac: $04
	inc  b                                           ; $43ad: $04
	inc  b                                           ; $43ae: $04
	inc  b                                           ; $43af: $04
	inc  b                                           ; $43b0: $04
	inc  b                                           ; $43b1: $04
	inc  b                                           ; $43b2: $04
	inc  b                                           ; $43b3: $04
	inc  b                                           ; $43b4: $04
	inc  b                                           ; $43b5: $04
	inc  b                                           ; $43b6: $04
	inc  b                                           ; $43b7: $04
	inc  b                                           ; $43b8: $04
	adc  d                                           ; $43b9: $8a
	adc  e                                           ; $43ba: $8b
	adc  h                                           ; $43bb: $8c
	adc  l                                           ; $43bc: $8d
	adc  [hl]                                        ; $43bd: $8e
	adc  a                                           ; $43be: $8f
	sub  b                                           ; $43bf: $90
	sub  c                                           ; $43c0: $91
	sub  d                                           ; $43c1: $92
	sub  e                                           ; $43c2: $93
	sub  h                                           ; $43c3: $94
	sub  l                                           ; $43c4: $95
	sub  [hl]                                        ; $43c5: $96
	sub  a                                           ; $43c6: $97
	sbc  b                                           ; $43c7: $98
	sbc  c                                           ; $43c8: $99
	sbc  d                                           ; $43c9: $9a
	sbc  e                                           ; $43ca: $9b
	sbc  h                                           ; $43cb: $9c
	sbc  l                                           ; $43cc: $9d
	sbc  [hl]                                        ; $43cd: $9e
	sbc  [hl]                                        ; $43ce: $9e
	sbc  a                                           ; $43cf: $9f
	and  b                                           ; $43d0: $a0
	and  c                                           ; $43d1: $a1
	and  d                                           ; $43d2: $a2
	and  e                                           ; $43d3: $a3
	and  h                                           ; $43d4: $a4
	and  l                                           ; $43d5: $a5
	and  [hl]                                        ; $43d6: $a6
	and  a                                           ; $43d7: $a7
	xor  b                                           ; $43d8: $a8
	nop                                              ; $43d9: $00
	add  hl, hl                                      ; $43da: $29
	ld   [bc], a                                     ; $43db: $02
	ld   de, $0011                                   ; $43dc: $11 $11 $00
	ld   c, b                                        ; $43df: $48
	inc  b                                           ; $43e0: $04
	ld   de, $1111                                   ; $43e1: $11 $11 $11
	ld   de, $6800                                   ; $43e4: $11 $00 $68
	inc  b                                           ; $43e7: $04
	ld   de, $1111                                   ; $43e8: $11 $11 $11
	ld   de, $8900                                   ; $43eb: $11 $00 $89
	ld   [bc], a                                     ; $43ee: $02
	ld   de, $0011                                   ; $43ef: $11 $11 $00
	xor  c                                           ; $43f2: $a9
	ld   [bc], a                                     ; $43f3: $02
	ld   de, $0011                                   ; $43f4: $11 $11 $00
	ret                                              ; $43f7: $c9


	ld   [bc], a                                     ; $43f8: $02
	ld   de, $0011                                   ; $43f9: $11 $11 $00
	add  sp, $04                                     ; $43fc: $e8 $04
	add  b                                           ; $43fe: $80
	add  c                                           ; $43ff: $81
	add  d                                           ; $4400: $82
	inc  bc                                          ; $4401: $03
	ld   bc, $0507                                   ; $4402: $01 $07 $05
	add  h                                           ; $4405: $84
	add  l                                           ; $4406: $85
	ld   de, $0786                                   ; $4407: $11 $86 $07
	ld   bc, $0a25                                   ; $440a: $01 $25 $0a
	ld   [$0a09], sp                                 ; $440d: $08 $09 $0a
	dec  bc                                          ; $4410: $0b
	ld   de, $0d0c                                   ; $4411: $11 $0c $0d
	ld   c, $0f                                      ; $4414: $0e $0f
	db   $10                                         ; $4416: $10
	rst  $38                                         ; $4417: $ff
	nop                                              ; $4418: $00
	add  hl, hl                                      ; $4419: $29
	ld   [bc], a                                     ; $441a: $02
	dec  c                                           ; $441b: $0d
	dec  c                                           ; $441c: $0d
	nop                                              ; $441d: $00
	ld   c, b                                        ; $441e: $48
	inc  b                                           ; $441f: $04
	dec  c                                           ; $4420: $0d
	dec  c                                           ; $4421: $0d
	dec  c                                           ; $4422: $0d
	dec  c                                           ; $4423: $0d
	nop                                              ; $4424: $00
	ld   l, b                                        ; $4425: $68
	inc  b                                           ; $4426: $04
	dec  c                                           ; $4427: $0d
	dec  c                                           ; $4428: $0d
	dec  c                                           ; $4429: $0d
	dec  c                                           ; $442a: $0d
	nop                                              ; $442b: $00
	adc  b                                           ; $442c: $88
	inc  b                                           ; $442d: $04
	dec  c                                           ; $442e: $0d
	dec  c                                           ; $442f: $0d
	dec  c                                           ; $4430: $0d
	dec  c                                           ; $4431: $0d
	nop                                              ; $4432: $00
	xor  b                                           ; $4433: $a8
	inc  b                                           ; $4434: $04
	dec  c                                           ; $4435: $0d
	dec  c                                           ; $4436: $0d
	dec  c                                           ; $4437: $0d
	dec  c                                           ; $4438: $0d
	nop                                              ; $4439: $00
	ret                                              ; $443a: $c9


	inc  bc                                          ; $443b: $03
	dec  c                                           ; $443c: $0d
	dec  c                                           ; $443d: $0d
	add  b                                           ; $443e: $80
	nop                                              ; $443f: $00
	add  sp, $04                                     ; $4440: $e8 $04
	ld   [bc], a                                     ; $4442: $02
	inc  bc                                          ; $4443: $03
	dec  c                                           ; $4444: $0d
	add  c                                           ; $4445: $81
	ld   bc, $0508                                   ; $4446: $01 $08 $05
	inc  b                                           ; $4449: $04
	dec  b                                           ; $444a: $05
	ld   b, $87                                      ; $444b: $06 $87
	dec  c                                           ; $444d: $0d
	ld   bc, $0528                                   ; $444e: $01 $28 $05
	ld   [$0a09], sp                                 ; $4451: $08 $09 $0a
	adc  e                                           ; $4454: $8b
	adc  h                                           ; $4455: $8c
	rst  $38                                         ; $4456: $ff
	nop                                              ; $4457: $00
	add  hl, hl                                      ; $4458: $29
	ld   [bc], a                                     ; $4459: $02
	inc  de                                          ; $445a: $13
	inc  de                                          ; $445b: $13
	nop                                              ; $445c: $00
	ld   c, b                                        ; $445d: $48
	inc  b                                           ; $445e: $04
	add  b                                           ; $445f: $80
	add  c                                           ; $4460: $81
	add  d                                           ; $4461: $82
	inc  de                                          ; $4462: $13
	nop                                              ; $4463: $00
	ld   l, b                                        ; $4464: $68
	inc  b                                           ; $4465: $04
	inc  de                                          ; $4466: $13
	inc  de                                          ; $4467: $13
	inc  de                                          ; $4468: $13
	add  e                                           ; $4469: $83
	nop                                              ; $446a: $00
	adc  b                                           ; $446b: $88
	inc  b                                           ; $446c: $04
	inc  de                                          ; $446d: $13
	inc  de                                          ; $446e: $13
	inc  de                                          ; $446f: $13
	inc  de                                          ; $4470: $13
	nop                                              ; $4471: $00
	xor  b                                           ; $4472: $a8
	inc  b                                           ; $4473: $04
	inc  de                                          ; $4474: $13
	inc  de                                          ; $4475: $13
	inc  de                                          ; $4476: $13
	inc  de                                          ; $4477: $13
	nop                                              ; $4478: $00
	jp   z, $1301                                    ; $4479: $ca $01 $13

	nop                                              ; $447c: $00
	add  sp, $03                                     ; $447d: $e8 $03
	add  h                                           ; $447f: $84
	add  l                                           ; $4480: $85
	add  [hl]                                        ; $4481: $86
	ld   bc, $0607                                   ; $4482: $01 $07 $06
	rlca                                             ; $4485: $07
	adc  b                                           ; $4486: $88
	adc  c                                           ; $4487: $89
	adc  d                                           ; $4488: $8a
	dec  bc                                          ; $4489: $0b
	inc  c                                           ; $448a: $0c
	ld   bc, $0627                                   ; $448b: $01 $27 $06
	dec  c                                           ; $448e: $0d
	adc  [hl]                                        ; $448f: $8e
	adc  a                                           ; $4490: $8f
	sub  b                                           ; $4491: $90
	ld   de, rAUD1ENV                                   ; $4492: $11 $12 $ff
	nop                                              ; $4495: $00
	add  hl, hl                                      ; $4496: $29
	ld   [bc], a                                     ; $4497: $02
	ld   [de], a                                     ; $4498: $12
	ld   [de], a                                     ; $4499: $12
	nop                                              ; $449a: $00
	ld   c, b                                        ; $449b: $48
	inc  b                                           ; $449c: $04
	add  c                                           ; $449d: $81
	add  d                                           ; $449e: $82
	add  e                                           ; $449f: $83
	ld   [de], a                                     ; $44a0: $12
	nop                                              ; $44a1: $00
	ld   l, b                                        ; $44a2: $68
	inc  b                                           ; $44a3: $04
	add  b                                           ; $44a4: $80
	ld   [de], a                                     ; $44a5: $12
	ld   [de], a                                     ; $44a6: $12
	add  h                                           ; $44a7: $84
	nop                                              ; $44a8: $00
	adc  b                                           ; $44a9: $88
	inc  b                                           ; $44aa: $04
	ld   [de], a                                     ; $44ab: $12
	ld   [de], a                                     ; $44ac: $12
	ld   [de], a                                     ; $44ad: $12
	ld   [de], a                                     ; $44ae: $12
	nop                                              ; $44af: $00
	xor  b                                           ; $44b0: $a8
	inc  b                                           ; $44b1: $04
	ld   [de], a                                     ; $44b2: $12
	ld   [de], a                                     ; $44b3: $12
	ld   [de], a                                     ; $44b4: $12
	ld   [de], a                                     ; $44b5: $12
	nop                                              ; $44b6: $00
	jp   z, $1201                                    ; $44b7: $ca $01 $12

	nop                                              ; $44ba: $00
	ld   [$1201], a                                  ; $44bb: $ea $01 $12
	ld   bc, $0607                                   ; $44be: $01 $07 $06
	dec  b                                           ; $44c1: $05
	ld   b, $07                                      ; $44c2: $06 $07
	ld   [$0a09], sp                                 ; $44c4: $08 $09 $0a
	ld   bc, $0727                                   ; $44c7: $01 $27 $07
	dec  bc                                          ; $44ca: $0b
	inc  c                                           ; $44cb: $0c
	dec  c                                           ; $44cc: $0d
	ld   c, $0f                                      ; $44cd: $0e $0f
	db   $10                                         ; $44cf: $10
	ld   de, $00ff                                   ; $44d0: $11 $ff $00
	add  hl, hl                                      ; $44d3: $29
	ld   [bc], a                                     ; $44d4: $02
	ld   c, $0e                                      ; $44d5: $0e $0e
	nop                                              ; $44d7: $00
	ld   c, b                                        ; $44d8: $48
	inc  b                                           ; $44d9: $04
	ld   c, $0e                                      ; $44da: $0e $0e
	ld   c, $0e                                      ; $44dc: $0e $0e
	nop                                              ; $44de: $00
	ld   l, b                                        ; $44df: $68
	inc  b                                           ; $44e0: $04
	ld   c, $0e                                      ; $44e1: $0e $0e
	ld   c, $0e                                      ; $44e3: $0e $0e
	nop                                              ; $44e5: $00
	adc  b                                           ; $44e6: $88
	inc  b                                           ; $44e7: $04
	ld   c, $0e                                      ; $44e8: $0e $0e
	ld   c, $0e                                      ; $44ea: $0e $0e
	nop                                              ; $44ec: $00
	xor  c                                           ; $44ed: $a9
	inc  bc                                          ; $44ee: $03
	ld   c, $0e                                      ; $44ef: $0e $0e
	ld   c, $00                                      ; $44f1: $0e $00
	ret                                              ; $44f3: $c9


	ld   bc, $000e                                   ; $44f4: $01 $0e $00
	jp   hl                                          ; $44f7: $e9


	ld   [bc], a                                     ; $44f8: $02
	nop                                              ; $44f9: $00
	ld   bc, $0701                                   ; $44fa: $01 $01 $07
	ld   b, $82                                      ; $44fd: $06 $82
	inc  bc                                          ; $44ff: $03
	inc  b                                           ; $4500: $04
	dec  b                                           ; $4501: $05
	ld   b, $0e                                      ; $4502: $06 $0e
	ld   bc, $0726                                   ; $4504: $01 $26 $07
	add  a                                           ; $4507: $87
	adc  b                                           ; $4508: $88
	adc  c                                           ; $4509: $89
	ld   a, [bc]                                     ; $450a: $0a
	dec  bc                                          ; $450b: $0b
	adc  h                                           ; $450c: $8c
	adc  l                                           ; $450d: $8d
	rst  $38                                         ; $450e: $ff
	dec  e                                           ; $450f: $1d
	nop                                              ; $4510: $00
	sbc  a                                           ; $4511: $9f
	nop                                              ; $4512: $00
	sbc  [hl]                                        ; $4513: $9e
	rst  $38                                         ; $4514: $ff
	rst  $38                                         ; $4515: $ff
	nop                                              ; $4516: $00
	call nz, $0000                                  ; $4517: $c4 $00 $00
	rst  $38                                         ; $451a: $ff
	add  b                                           ; $451b: $80
	nop                                              ; $451c: $00
	add  d                                           ; $451d: $82
	rst  $38                                         ; $451e: $ff
	add  d                                           ; $451f: $82
	nop                                              ; $4520: $00
	add  d                                           ; $4521: $82
	rst  $38                                         ; $4522: $ff
	ld   bc, $ff00                                   ; $4523: $01 $00 $ff
	add  l                                           ; $4526: $85
	nop                                              ; $4527: $00
	add  a                                           ; $4528: $87
	rst  $38                                         ; $4529: $ff
	nop                                              ; $452a: $00
	ldh  a, [$82]                                    ; $452b: $f0 $82
	rst  $30                                         ; $452d: $f7
	or   h                                           ; $452e: $b4
	or   $81                                         ; $452f: $f6 $81
	ldh  a, [$80]                                    ; $4531: $f0 $80
	or   $80                                         ; $4533: $f6 $80
	xor  $80                                         ; $4535: $ee $80
	sbc  $80                                         ; $4537: $de $80
	cp   [hl]                                        ; $4539: $be
	add  d                                           ; $453a: $82
	ld   a, [hl]                                     ; $453b: $7e
	add  b                                           ; $453c: $80
	cp   [hl]                                        ; $453d: $be
	add  b                                           ; $453e: $80
	sbc  $80                                         ; $453f: $de $80
	xor  $80                                         ; $4541: $ee $80
	or   $00                                         ; $4543: $f6 $00
	ldh  a, [$82]                                    ; $4545: $f0 $82
	or   $00                                         ; $4547: $f6 $00
	rrca                                             ; $4549: $0f
	db   $fd                                         ; $454a: $fd
	nop                                              ; $454b: $00
	nop                                              ; $454c: $00
	add  hl, hl                                      ; $454d: $29
	ld   [bc], a                                     ; $454e: $02
	ld   de, $0011                                   ; $454f: $11 $11 $00
	ld   c, b                                        ; $4552: $48
	inc  b                                           ; $4553: $04
	add  b                                           ; $4554: $80
	add  c                                           ; $4555: $81
	add  d                                           ; $4556: $82
	ld   de, $6800                                   ; $4557: $11 $00 $68
	inc  b                                           ; $455a: $04
	add  e                                           ; $455b: $83
	ld   de, $8411                                   ; $455c: $11 $11 $84
	nop                                              ; $455f: $00
	adc  b                                           ; $4560: $88
	inc  b                                           ; $4561: $04
	ld   de, $1111                                   ; $4562: $11 $11 $11
	ld   de, $a800                                   ; $4565: $11 $00 $a8
	inc  b                                           ; $4568: $04
	ld   de, $1111                                   ; $4569: $11 $11 $11
	ld   de, $ca00                                   ; $456c: $11 $00 $ca
	ld   bc, $0011                                   ; $456f: $01 $11 $00
	ld   [$1101], a                                  ; $4572: $ea $01 $11
	ld   bc, $0607                                   ; $4575: $01 $07 $06
	dec  b                                           ; $4578: $05
	ld   b, $07                                      ; $4579: $06 $07
	ld   [$0a09], sp                                 ; $457b: $08 $09 $0a
	ld   bc, $0627                                   ; $457e: $01 $27 $06
	dec  bc                                          ; $4581: $0b
	inc  c                                           ; $4582: $0c
	dec  c                                           ; $4583: $0d
	ld   c, $0f                                      ; $4584: $0e $0f
	db   $10                                         ; $4586: $10
	rst  $38                                         ; $4587: $ff
	nop                                              ; $4588: $00
	jr   z, jr_0a4_458e                              ; $4589: $28 $03

	add  b                                           ; $458b: $80
	add  c                                           ; $458c: $81
	add  d                                           ; $458d: $82

jr_0a4_458e:
	nop                                              ; $458e: $00
	ld   c, b                                        ; $458f: $48
	inc  b                                           ; $4590: $04
	add  e                                           ; $4591: $83
	sbc  l                                           ; $4592: $9d
	add  h                                           ; $4593: $84
	add  l                                           ; $4594: $85
	nop                                              ; $4595: $00
	ld   l, b                                        ; $4596: $68
	inc  b                                           ; $4597: $04
	add  [hl]                                        ; $4598: $86
	sbc  h                                           ; $4599: $9c
	add  a                                           ; $459a: $87
	adc  b                                           ; $459b: $88
	nop                                              ; $459c: $00
	adc  b                                           ; $459d: $88
	ld   [bc], a                                     ; $459e: $02
	adc  c                                           ; $459f: $89
	sbc  h                                           ; $45a0: $9c
	nop                                              ; $45a1: $00
	xor  b                                           ; $45a2: $a8
	ld   [bc], a                                     ; $45a3: $02
	ld   a, [bc]                                     ; $45a4: $0a
	ld   e, $00                                      ; $45a5: $1e $00
	rst  ToBoot                                         ; $45a7: $c7
	inc  bc                                          ; $45a8: $03
	dec  bc                                          ; $45a9: $0b
	inc  c                                           ; $45aa: $0c
	dec  c                                           ; $45ab: $0d
	nop                                              ; $45ac: $00
	rst  $20                                         ; $45ad: $e7
	inc  b                                           ; $45ae: $04
	ld   c, $0f                                      ; $45af: $0e $0f
	db   $10                                         ; $45b1: $10
	ld   de, $0701                                   ; $45b2: $11 $01 $07
	dec  b                                           ; $45b5: $05
	ld   [de], a                                     ; $45b6: $12
	inc  de                                          ; $45b7: $13
	inc  d                                           ; $45b8: $14
	dec  d                                           ; $45b9: $15
	ld   d, $01                                      ; $45ba: $16 $01
	daa                                              ; $45bc: $27
	dec  b                                           ; $45bd: $05
	rla                                              ; $45be: $17
	jr   jr_0a4_45da                                 ; $45bf: $18 $19

	ld   a, [de]                                     ; $45c1: $1a
	dec  de                                          ; $45c2: $1b
	rst  $38                                         ; $45c3: $ff
	nop                                              ; $45c4: $00
	ld   c, b                                        ; $45c5: $48
	inc  b                                           ; $45c6: $04
	rrca                                             ; $45c7: $0f
	rrca                                             ; $45c8: $0f
	rrca                                             ; $45c9: $0f
	rrca                                             ; $45ca: $0f
	nop                                              ; $45cb: $00
	ld   l, b                                        ; $45cc: $68
	inc  b                                           ; $45cd: $04
	add  b                                           ; $45ce: $80
	add  c                                           ; $45cf: $81
	rrca                                             ; $45d0: $0f
	add  d                                           ; $45d1: $82
	nop                                              ; $45d2: $00
	adc  b                                           ; $45d3: $88
	inc  b                                           ; $45d4: $04
	rrca                                             ; $45d5: $0f
	rrca                                             ; $45d6: $0f
	rrca                                             ; $45d7: $0f
	rrca                                             ; $45d8: $0f
	nop                                              ; $45d9: $00

jr_0a4_45da:
	xor  c                                           ; $45da: $a9
	inc  bc                                          ; $45db: $03
	rrca                                             ; $45dc: $0f
	rrca                                             ; $45dd: $0f
	rrca                                             ; $45de: $0f
	nop                                              ; $45df: $00
	jp   z, $0f02                                    ; $45e0: $ca $02 $0f

	rrca                                             ; $45e3: $0f
	nop                                              ; $45e4: $00
	add  sp, $01                                     ; $45e5: $e8 $01
	stop                                             ; $45e7: $10 $00
	ld   [$8302], a                                  ; $45e9: $ea $02 $83
	rrca                                             ; $45ec: $0f
	ld   bc, $0508                                   ; $45ed: $01 $08 $05
	inc  b                                           ; $45f0: $04
	dec  b                                           ; $45f1: $05
	ld   b, $07                                      ; $45f2: $06 $07
	ld   [$2701], sp                                 ; $45f4: $08 $01 $27
	ld   b, $09                                      ; $45f7: $06 $09
	ld   a, [bc]                                     ; $45f9: $0a
	dec  bc                                          ; $45fa: $0b
	inc  c                                           ; $45fb: $0c

jr_0a4_45fc:
	dec  c                                           ; $45fc: $0d
	ld   c, $ff                                      ; $45fd: $0e $ff
	nop                                              ; $45ff: $00
	ld   b, a                                        ; $4600: $47
	inc  bc                                          ; $4601: $03
	add  b                                           ; $4602: $80
	add  c                                           ; $4603: $81
	add  d                                           ; $4604: $82
	nop                                              ; $4605: $00

jr_0a4_4606:
	ld   h, a                                        ; $4606: $67
	dec  b                                           ; $4607: $05
	add  e                                           ; $4608: $83
	add  h                                           ; $4609: $84
	add  l                                           ; $460a: $85
	add  [hl]                                        ; $460b: $86
	sbc  e                                           ; $460c: $9b
	nop                                              ; $460d: $00
	adc  b                                           ; $460e: $88
	inc  b                                           ; $460f: $04
	inc  e                                           ; $4610: $1c
	inc  e                                           ; $4611: $1c
	inc  e                                           ; $4612: $1c
	add  a                                           ; $4613: $87
	nop                                              ; $4614: $00
	xor  b                                           ; $4615: $a8
	inc  b                                           ; $4616: $04
	inc  e                                           ; $4617: $1c
	inc  e                                           ; $4618: $1c
	inc  e                                           ; $4619: $1c
	adc  b                                           ; $461a: $88
	nop                                              ; $461b: $00
	ret                                              ; $461c: $c9


	ld   [bc], a                                     ; $461d: $02
	adc  c                                           ; $461e: $89
	adc  d                                           ; $461f: $8a
	nop                                              ; $4620: $00
	jp   hl                                          ; $4621: $e9


	ld   [bc], a                                     ; $4622: $02
	dec  bc                                          ; $4623: $0b
	inc  c                                           ; $4624: $0c
	ld   bc, $0607                                   ; $4625: $01 $07 $06
	dec  c                                           ; $4628: $0d
	ld   c, $0f                                      ; $4629: $0e $0f
	db   $10                                         ; $462b: $10
	ld   de, $0112                                   ; $462c: $11 $12 $01
	ld   h, $08                                      ; $462f: $26 $08
	sub  e                                           ; $4631: $93
	inc  d                                           ; $4632: $14
	dec  d                                           ; $4633: $15
	ld   d, $17                                      ; $4634: $16 $17
	jr   @+$1b                                       ; $4636: $18 $19

	sbc  d                                           ; $4638: $9a
	rst  $38                                         ; $4639: $ff
	nop                                              ; $463a: $00
	add  hl, hl                                      ; $463b: $29
	ld   [bc], a                                     ; $463c: $02
	db   $10                                         ; $463d: $10
	stop                                             ; $463e: $10 $00
	ld   c, b                                        ; $4640: $48
	inc  bc                                          ; $4641: $03
	db   $10                                         ; $4642: $10
	db   $10                                         ; $4643: $10
	stop                                             ; $4644: $10 $00
	ld   l, b                                        ; $4646: $68
	inc  bc                                          ; $4647: $03
	db   $10                                         ; $4648: $10
	db   $10                                         ; $4649: $10
	stop                                             ; $464a: $10 $00
	adc  b                                           ; $464c: $88
	inc  bc                                          ; $464d: $03
	db   $10                                         ; $464e: $10
	db   $10                                         ; $464f: $10
	stop                                             ; $4650: $10 $00
	xor  c                                           ; $4652: $a9
	ld   [bc], a                                     ; $4653: $02
	db   $10                                         ; $4654: $10
	stop                                             ; $4655: $10 $00
	ret                                              ; $4657: $c9


	ld   [bc], a                                     ; $4658: $02
	nop                                              ; $4659: $00
	ld   bc, $e900                                   ; $465a: $01 $00 $e9
	ld   [bc], a                                     ; $465d: $02
	ld   [bc], a                                     ; $465e: $02
	inc  bc                                          ; $465f: $03
	ld   bc, $0606                                   ; $4660: $01 $06 $06
	ld   c, $0e                                      ; $4663: $0e $0e
	inc  b                                           ; $4665: $04
	dec  b                                           ; $4666: $05
	ld   b, $87                                      ; $4667: $06 $87
	ld   bc, $0826                                   ; $4669: $01 $26 $08
	ld   c, $0e                                      ; $466c: $0e $0e
	ld   [$8a09], sp                                 ; $466e: $08 $09 $8a
	adc  e                                           ; $4671: $8b
	adc  h                                           ; $4672: $8c
	adc  l                                           ; $4673: $8d
	rst  $38                                         ; $4674: $ff
	nop                                              ; $4675: $00
	ld   c, b                                        ; $4676: $48
	inc  b                                           ; $4677: $04
	add  b                                           ; $4678: $80
	jr   jr_0a4_45fc                                 ; $4679: $18 $81

	add  d                                           ; $467b: $82
	nop                                              ; $467c: $00
	ld   l, b                                        ; $467d: $68
	inc  b                                           ; $467e: $04
	jr   @+$1a                                       ; $467f: $18 $18

	jr   jr_0a4_4606                                 ; $4681: $18 $83

	nop                                              ; $4683: $00
	adc  c                                           ; $4684: $89
	inc  bc                                          ; $4685: $03
	jr   jr_0a4_46a0                                 ; $4686: $18 $18

	add  h                                           ; $4688: $84
	nop                                              ; $4689: $00
	xor  c                                           ; $468a: $a9
	ld   [bc], a                                     ; $468b: $02
	jr   jr_0a4_46a6                                 ; $468c: $18 $18

	nop                                              ; $468e: $00
	ret                                              ; $468f: $c9


	ld   [bc], a                                     ; $4690: $02
	dec  b                                           ; $4691: $05
	ld   b, $00                                      ; $4692: $06 $00
	add  sp, $04                                     ; $4694: $e8 $04
	rlca                                             ; $4696: $07
	ld   [$1809], sp                                 ; $4697: $08 $09 $18
	ld   bc, $0607                                   ; $469a: $01 $07 $06
	ld   a, [bc]                                     ; $469d: $0a
	dec  bc                                          ; $469e: $0b
	inc  c                                           ; $469f: $0c

jr_0a4_46a0:
	dec  c                                           ; $46a0: $0d
	ld   c, $0f                                      ; $46a1: $0e $0f
	ld   bc, $0826                                   ; $46a3: $01 $26 $08

jr_0a4_46a6:
	db   $10                                         ; $46a6: $10
	ld   de, $1312                                   ; $46a7: $11 $12 $13
	inc  d                                           ; $46aa: $14
	dec  d                                           ; $46ab: $15
	ld   d, $17                                      ; $46ac: $16 $17
	rst  $38                                         ; $46ae: $ff
	nop                                              ; $46af: $00
	ld   c, b                                        ; $46b0: $48
	inc  b                                           ; $46b1: $04
	sub  a                                           ; $46b2: $97
	add  b                                           ; $46b3: $80
	add  c                                           ; $46b4: $81
	add  d                                           ; $46b5: $82
	nop                                              ; $46b6: $00
	ld   l, b                                        ; $46b7: $68
	inc  b                                           ; $46b8: $04
	sub  a                                           ; $46b9: $97
	add  e                                           ; $46ba: $83
	add  h                                           ; $46bb: $84
	add  l                                           ; $46bc: $85
	nop                                              ; $46bd: $00
	adc  b                                           ; $46be: $88
	inc  b                                           ; $46bf: $04
	sub  a                                           ; $46c0: $97
	sub  a                                           ; $46c1: $97
	sub  a                                           ; $46c2: $97
	add  [hl]                                        ; $46c3: $86
	nop                                              ; $46c4: $00
	xor  b                                           ; $46c5: $a8
	inc  b                                           ; $46c6: $04
	sub  a                                           ; $46c7: $97
	sub  a                                           ; $46c8: $97
	sub  a                                           ; $46c9: $97
	add  a                                           ; $46ca: $87
	nop                                              ; $46cb: $00
	ret  z                                           ; $46cc: $c8

	inc  bc                                          ; $46cd: $03
	sub  a                                           ; $46ce: $97
	adc  b                                           ; $46cf: $88
	adc  c                                           ; $46d0: $89
	nop                                              ; $46d1: $00
	jp   hl                                          ; $46d2: $e9


	inc  b                                           ; $46d3: $04
	ld   a, [bc]                                     ; $46d4: $0a
	dec  bc                                          ; $46d5: $0b
	sub  a                                           ; $46d6: $97
	inc  c                                           ; $46d7: $0c
	ld   bc, $0409                                   ; $46d8: $01 $09 $04
	dec  c                                           ; $46db: $0d
	ld   c, $0f                                      ; $46dc: $0e $0f
	db   $10                                         ; $46de: $10
	ld   bc, $0628                                   ; $46df: $01 $28 $06
	ld   de, $1312                                   ; $46e2: $11 $12 $13
	inc  d                                           ; $46e5: $14
	dec  d                                           ; $46e6: $15
	sub  [hl]                                        ; $46e7: $96
	rst  $38                                         ; $46e8: $ff
	nop                                              ; $46e9: $00
	ld   c, b                                        ; $46ea: $48
	inc  b                                           ; $46eb: $04
	ld   de, $1111                                   ; $46ec: $11 $11 $11
	ld   de, $6800                                   ; $46ef: $11 $00 $68
	inc  b                                           ; $46f2: $04
	ld   de, $1111                                   ; $46f3: $11 $11 $11
	ld   de, $8900                                   ; $46f6: $11 $00 $89
	inc  bc                                          ; $46f9: $03
	ld   de, $1111                                   ; $46fa: $11 $11 $11
	nop                                              ; $46fd: $00
	xor  c                                           ; $46fe: $a9
	ld   [bc], a                                     ; $46ff: $02
	ld   de, $0011                                   ; $4700: $11 $11 $00
	ret                                              ; $4703: $c9


	ld   [bc], a                                     ; $4704: $02
	ld   de, $0011                                   ; $4705: $11 $11 $00
	jp   hl                                          ; $4708: $e9


	inc  bc                                          ; $4709: $03
	nop                                              ; $470a: $00
	add  c                                           ; $470b: $81
	ld   [bc], a                                     ; $470c: $02
	ld   bc, $0607                                   ; $470d: $01 $07 $06
	ld   de, $0403                                   ; $4710: $11 $03 $04
	add  l                                           ; $4713: $85
	ld   b, $07                                      ; $4714: $06 $07
	ld   bc, $0926                                   ; $4716: $01 $26 $09
	ld   [$0a09], sp                                 ; $4719: $08 $09 $0a
	adc  e                                           ; $471c: $8b
	inc  c                                           ; $471d: $0c
	dec  c                                           ; $471e: $0d
	ld   c, $0f                                      ; $471f: $0e $0f
	db   $10                                         ; $4721: $10
	rst  $38                                         ; $4722: $ff
	nop                                              ; $4723: $00
	add  hl, hl                                      ; $4724: $29
	ld   [bc], a                                     ; $4725: $02
	db   $10                                         ; $4726: $10
	stop                                             ; $4727: $10 $00
	ld   c, b                                        ; $4729: $48
	inc  bc                                          ; $472a: $03
	db   $10                                         ; $472b: $10
	db   $10                                         ; $472c: $10
	stop                                             ; $472d: $10 $00
	ld   l, b                                        ; $472f: $68
	inc  bc                                          ; $4730: $03
	db   $10                                         ; $4731: $10
	db   $10                                         ; $4732: $10
	stop                                             ; $4733: $10 $00
	adc  b                                           ; $4735: $88
	inc  bc                                          ; $4736: $03
	db   $10                                         ; $4737: $10
	db   $10                                         ; $4738: $10
	stop                                             ; $4739: $10 $00
	xor  c                                           ; $473b: $a9
	ld   [bc], a                                     ; $473c: $02
	db   $10                                         ; $473d: $10
	stop                                             ; $473e: $10 $00
	ret                                              ; $4740: $c9


	ld   [bc], a                                     ; $4741: $02
	nop                                              ; $4742: $00
	ld   bc, $e900                                   ; $4743: $01 $00 $e9
	ld   [bc], a                                     ; $4746: $02
	ld   [bc], a                                     ; $4747: $02
	inc  bc                                          ; $4748: $03
	ld   bc, $0408                                   ; $4749: $01 $08 $04
	inc  b                                           ; $474c: $04
	dec  b                                           ; $474d: $05
	ld   b, $87                                      ; $474e: $06 $87
	ld   bc, $0826                                   ; $4750: $01 $26 $08
	adc  b                                           ; $4753: $88
	adc  c                                           ; $4754: $89
	ld   a, [bc]                                     ; $4755: $0a
	dec  bc                                          ; $4756: $0b
	adc  h                                           ; $4757: $8c
	adc  l                                           ; $4758: $8d
	adc  [hl]                                        ; $4759: $8e
	adc  a                                           ; $475a: $8f
	rst  $38                                         ; $475b: $ff
	nop                                              ; $475c: $00
	ld   [$8003], sp                                 ; $475d: $08 $03 $80
	add  c                                           ; $4760: $81
	add  d                                           ; $4761: $82
	nop                                              ; $4762: $00
	jr   z, jr_0a4_4768                              ; $4763: $28 $03

	add  e                                           ; $4765: $83
	add  h                                           ; $4766: $84
	add  l                                           ; $4767: $85

jr_0a4_4768:
	nop                                              ; $4768: $00
	ld   c, b                                        ; $4769: $48
	inc  b                                           ; $476a: $04
	add  [hl]                                        ; $476b: $86
	add  a                                           ; $476c: $87
	adc  b                                           ; $476d: $88
	adc  c                                           ; $476e: $89
	nop                                              ; $476f: $00
	ld   l, c                                        ; $4770: $69
	ld   [bc], a                                     ; $4771: $02
	adc  d                                           ; $4772: $8a
	adc  e                                           ; $4773: $8b
	nop                                              ; $4774: $00
	xor  c                                           ; $4775: $a9
	inc  b                                           ; $4776: $04
	inc  c                                           ; $4777: $0c
	dec  c                                           ; $4778: $0d
	ld   c, $8f                                      ; $4779: $0e $8f
	nop                                              ; $477b: $00
	ret                                              ; $477c: $c9


	inc  bc                                          ; $477d: $03
	db   $10                                         ; $477e: $10
	ld   de, $0092                                   ; $477f: $11 $92 $00
	add  sp, $04                                     ; $4782: $e8 $04
	inc  de                                          ; $4784: $13
	inc  d                                           ; $4785: $14
	dec  d                                           ; $4786: $15
	sub  [hl]                                        ; $4787: $96
	ld   bc, $0308                                   ; $4788: $01 $08 $03
	rla                                              ; $478b: $17
	jr   jr_0a4_47a7                                 ; $478c: $18 $19

	ld   bc, $0328                                   ; $478e: $01 $28 $03
	ld   a, [de]                                     ; $4791: $1a
	dec  de                                          ; $4792: $1b
	inc  e                                           ; $4793: $1c
	rst  $38                                         ; $4794: $ff
	rst  $38                                         ; $4795: $ff
	ld   a, a                                        ; $4796: $7f
	rst  JumpTable                                         ; $4797: $df
	ld   e, l                                        ; $4798: $5d
	dec  b                                           ; $4799: $05
	add  hl, hl                                      ; $479a: $29
	ld   b, e                                        ; $479b: $43
	db   $10                                         ; $479c: $10
	rst  $38                                         ; $479d: $ff
	ld   a, a                                        ; $479e: $7f
	rst  JumpTable                                         ; $479f: $df
	ld   e, l                                        ; $47a0: $5d
	ld   l, a                                        ; $47a1: $6f
	halt                                             ; $47a2: $76
	ld   b, e                                        ; $47a3: $43
	db   $10                                         ; $47a4: $10
	rst  $38                                         ; $47a5: $ff
	ld   a, a                                        ; $47a6: $7f

jr_0a4_47a7:
	ld   e, a                                        ; $47a7: $5f
	ld   c, $05                                      ; $47a8: $0e $05
	add  hl, hl                                      ; $47aa: $29
	ld   b, e                                        ; $47ab: $43
	db   $10                                         ; $47ac: $10
	rst  $38                                         ; $47ad: $ff
	ld   a, a                                        ; $47ae: $7f
	ld   e, a                                        ; $47af: $5f
	nop                                              ; $47b0: $00
	dec  b                                           ; $47b1: $05
	add  hl, hl                                      ; $47b2: $29
	ld   b, e                                        ; $47b3: $43
	db   $10                                         ; $47b4: $10
	rst  $38                                         ; $47b5: $ff
	ld   a, a                                        ; $47b6: $7f
	rst  $38                                         ; $47b7: $ff
	ld   a, a                                        ; $47b8: $7f
	dec  b                                           ; $47b9: $05
	add  hl, hl                                      ; $47ba: $29
	ld   b, e                                        ; $47bb: $43
	db   $10                                         ; $47bc: $10
	rst  $38                                         ; $47bd: $ff
	ld   a, a                                        ; $47be: $7f
	ld   e, a                                        ; $47bf: $5f
	nop                                              ; $47c0: $00
	rst  $38                                         ; $47c1: $ff
	ld   a, a                                        ; $47c2: $7f
	ld   b, e                                        ; $47c3: $43
	db   $10                                         ; $47c4: $10
	rst  $38                                         ; $47c5: $ff
	ld   a, a                                        ; $47c6: $7f
	ld   e, a                                        ; $47c7: $5f
	ld   c, $1b                                      ; $47c8: $0e $1b
	ld   b, c                                        ; $47ca: $41
	ld   b, e                                        ; $47cb: $43
	db   $10                                         ; $47cc: $10
	rst  $38                                         ; $47cd: $ff
	ld   a, a                                        ; $47ce: $7f
	pop  de                                          ; $47cf: $d1
	ld   [hl], d                                     ; $47d0: $72
	ccf                                              ; $47d1: $3f
	ld   b, [hl]                                     ; $47d2: $46
	ld   b, e                                        ; $47d3: $43
	db   $10                                         ; $47d4: $10
	rst  $38                                         ; $47d5: $ff
	ld   a, a                                        ; $47d6: $7f
	ld   e, a                                        ; $47d7: $5f
	ld   c, $05                                      ; $47d8: $0e $05
	add  hl, hl                                      ; $47da: $29
	ld   b, e                                        ; $47db: $43
	db   $10                                         ; $47dc: $10
	rst  $38                                         ; $47dd: $ff
	ld   a, a                                        ; $47de: $7f
	ld   e, a                                        ; $47df: $5f
	ld   c, $05                                      ; $47e0: $0e $05
	add  hl, hl                                      ; $47e2: $29
	ld   b, e                                        ; $47e3: $43
	db   $10                                         ; $47e4: $10
	rst  $38                                         ; $47e5: $ff
	ld   a, a                                        ; $47e6: $7f
	rst  $38                                         ; $47e7: $ff
	ld   a, a                                        ; $47e8: $7f
	dec  b                                           ; $47e9: $05
	add  hl, hl                                      ; $47ea: $29
	ld   b, e                                        ; $47eb: $43
	db   $10                                         ; $47ec: $10
	rst  $38                                         ; $47ed: $ff
	ld   a, a                                        ; $47ee: $7f
	pop  de                                          ; $47ef: $d1
	ld   [hl], d                                     ; $47f0: $72
	rst  $38                                         ; $47f1: $ff
	ld   a, a                                        ; $47f2: $7f
	ld   b, e                                        ; $47f3: $43
	stop                                             ; $47f4: $10 $00
	nop                                              ; $47f6: $00
	nop                                              ; $47f7: $00
	nop                                              ; $47f8: $00
	nop                                              ; $47f9: $00
	nop                                              ; $47fa: $00
	nop                                              ; $47fb: $00
	nop                                              ; $47fc: $00
	nop                                              ; $47fd: $00
	nop                                              ; $47fe: $00
	nop                                              ; $47ff: $00
	nop                                              ; $4800: $00
	nop                                              ; $4801: $00
	nop                                              ; $4802: $00
	nop                                              ; $4803: $00
	nop                                              ; $4804: $00
	rst  $38                                         ; $4805: $ff
	ld   a, a                                        ; $4806: $7f
	rst  $30                                         ; $4807: $f7
	inc  a                                           ; $4808: $3c
	rst  JumpTable                                         ; $4809: $df
	ld   e, l                                        ; $480a: $5d
	ld   b, e                                        ; $480b: $43
	db   $10                                         ; $480c: $10
	rst  $38                                         ; $480d: $ff
	ld   a, a                                        ; $480e: $7f
	ld   e, a                                        ; $480f: $5f
	nop                                              ; $4810: $00
	dec  b                                           ; $4811: $05
	add  hl, hl                                      ; $4812: $29
	ld   b, e                                        ; $4813: $43
	db   $10                                         ; $4814: $10
	rst  $38                                         ; $4815: $ff
	ld   a, a                                        ; $4816: $7f
	ld   e, a                                        ; $4817: $5f
	ld   c, $05                                      ; $4818: $0e $05
	add  hl, hl                                      ; $481a: $29
	ld   b, e                                        ; $481b: $43
	db   $10                                         ; $481c: $10
	rst  $38                                         ; $481d: $ff
	ld   a, a                                        ; $481e: $7f
	ld   e, a                                        ; $481f: $5f
	nop                                              ; $4820: $00
	dec  b                                           ; $4821: $05
	add  hl, hl                                      ; $4822: $29
	ld   b, e                                        ; $4823: $43
	db   $10                                         ; $4824: $10
	rst  $38                                         ; $4825: $ff
	ld   a, a                                        ; $4826: $7f
	rst  $38                                         ; $4827: $ff
	ld   a, a                                        ; $4828: $7f
	dec  b                                           ; $4829: $05
	add  hl, hl                                      ; $482a: $29
	ld   b, e                                        ; $482b: $43
	db   $10                                         ; $482c: $10
	rst  $38                                         ; $482d: $ff
	ld   a, a                                        ; $482e: $7f
	rst  $30                                         ; $482f: $f7
	inc  a                                           ; $4830: $3c
	rst  JumpTable                                         ; $4831: $df
	ld   e, l                                        ; $4832: $5d
	ld   b, e                                        ; $4833: $43
	db   $10                                         ; $4834: $10
	rst  $38                                         ; $4835: $ff
	ld   a, a                                        ; $4836: $7f
	rst  $38                                         ; $4837: $ff
	ld   a, a                                        ; $4838: $7f
	call Call_0a4_4338                               ; $4839: $cd $38 $43
	db   $10                                         ; $483c: $10
	rst  $38                                         ; $483d: $ff
	ld   a, a                                        ; $483e: $7f
	ld   e, a                                        ; $483f: $5f
	ld   c, $0b                                      ; $4840: $0e $0b
	ld   c, h                                        ; $4842: $4c
	ld   b, l                                        ; $4843: $45
	db   $10                                         ; $4844: $10
	rst  $38                                         ; $4845: $ff
	ld   a, a                                        ; $4846: $7f
	ld   l, a                                        ; $4847: $6f
	halt                                             ; $4848: $76
	db   $ed                                         ; $4849: $ed
	db   $10                                         ; $484a: $10
	ld   b, l                                        ; $484b: $45
	db   $10                                         ; $484c: $10
	rst  $38                                         ; $484d: $ff
	ld   a, a                                        ; $484e: $7f
	ld   e, a                                        ; $484f: $5f
	ld   c, $ed                                      ; $4850: $0e $ed
	db   $10                                         ; $4852: $10
	ld   b, l                                        ; $4853: $45
	db   $10                                         ; $4854: $10
	rst  $38                                         ; $4855: $ff
	ld   a, a                                        ; $4856: $7f
	ld   l, a                                        ; $4857: $6f
	halt                                             ; $4858: $76
	db   $ed                                         ; $4859: $ed
	db   $10                                         ; $485a: $10
	ld   b, l                                        ; $485b: $45
	db   $10                                         ; $485c: $10
	rst  $38                                         ; $485d: $ff
	ld   a, a                                        ; $485e: $7f
	rst  $38                                         ; $485f: $ff
	ld   a, a                                        ; $4860: $7f
	db   $ed                                         ; $4861: $ed
	db   $10                                         ; $4862: $10
	ld   b, l                                        ; $4863: $45
	db   $10                                         ; $4864: $10
	rst  $38                                         ; $4865: $ff
	ld   a, a                                        ; $4866: $7f
	rst  $38                                         ; $4867: $ff
	ld   a, a                                        ; $4868: $7f
	dec  bc                                          ; $4869: $0b
	ld   c, h                                        ; $486a: $4c
	ld   b, l                                        ; $486b: $45
	db   $10                                         ; $486c: $10
	rst  $38                                         ; $486d: $ff
	ld   a, a                                        ; $486e: $7f
	ld   e, a                                        ; $486f: $5f
	ld   c, $14                                      ; $4870: $0e $14
	nop                                              ; $4872: $00
	ld   b, l                                        ; $4873: $45
	db   $10                                         ; $4874: $10
	rst  $38                                         ; $4875: $ff
	ld   a, a                                        ; $4876: $7f
	ld   l, a                                        ; $4877: $6f
	halt                                             ; $4878: $76
	db   $ed                                         ; $4879: $ed
	db   $10                                         ; $487a: $10
	ld   b, l                                        ; $487b: $45
	db   $10                                         ; $487c: $10
	rst  $38                                         ; $487d: $ff
	ld   a, a                                        ; $487e: $7f
	ld   l, a                                        ; $487f: $6f
	halt                                             ; $4880: $76
	dec  bc                                          ; $4881: $0b
	ld   c, h                                        ; $4882: $4c
	ld   b, l                                        ; $4883: $45
	db   $10                                         ; $4884: $10
	rst  $38                                         ; $4885: $ff
	ld   a, a                                        ; $4886: $7f
	ld   e, a                                        ; $4887: $5f
	ld   c, $ed                                      ; $4888: $0e $ed
	db   $10                                         ; $488a: $10
	ld   b, l                                        ; $488b: $45
	db   $10                                         ; $488c: $10
	rst  $38                                         ; $488d: $ff
	ld   a, a                                        ; $488e: $7f
	ld   l, a                                        ; $488f: $6f
	halt                                             ; $4890: $76
	db   $ed                                         ; $4891: $ed
	db   $10                                         ; $4892: $10
	ld   b, l                                        ; $4893: $45
	db   $10                                         ; $4894: $10
	rst  $38                                         ; $4895: $ff
	ld   a, a                                        ; $4896: $7f
	rst  $38                                         ; $4897: $ff
	ld   a, a                                        ; $4898: $7f
	db   $ed                                         ; $4899: $ed
	db   $10                                         ; $489a: $10
	ld   b, l                                        ; $489b: $45
	db   $10                                         ; $489c: $10
	rst  $38                                         ; $489d: $ff
	ld   a, a                                        ; $489e: $7f
	rst  $38                                         ; $489f: $ff
	ld   a, a                                        ; $48a0: $7f
	dec  bc                                          ; $48a1: $0b
	ld   c, h                                        ; $48a2: $4c
	ld   b, l                                        ; $48a3: $45
	db   $10                                         ; $48a4: $10
	rst  $38                                         ; $48a5: $ff
	ld   a, a                                        ; $48a6: $7f
	db   $ed                                         ; $48a7: $ed
	db   $10                                         ; $48a8: $10
	dec  bc                                          ; $48a9: $0b
	ld   c, h                                        ; $48aa: $4c
	ld   b, l                                        ; $48ab: $45
	db   $10                                         ; $48ac: $10
	rst  $38                                         ; $48ad: $ff
	ld   a, a                                        ; $48ae: $7f
	ld   e, a                                        ; $48af: $5f
	ld   c, $0b                                      ; $48b0: $0e $0b
	ld   c, h                                        ; $48b2: $4c
	ld   b, l                                        ; $48b3: $45
	db   $10                                         ; $48b4: $10
	rst  $38                                         ; $48b5: $ff
	ld   a, a                                        ; $48b6: $7f
	ld   l, a                                        ; $48b7: $6f
	halt                                             ; $48b8: $76
	db   $ed                                         ; $48b9: $ed
	db   $10                                         ; $48ba: $10
	ld   b, l                                        ; $48bb: $45
	db   $10                                         ; $48bc: $10
	rst  $38                                         ; $48bd: $ff
	ld   a, a                                        ; $48be: $7f
	ld   e, a                                        ; $48bf: $5f
	ld   c, $ed                                      ; $48c0: $0e $ed
	db   $10                                         ; $48c2: $10
	ld   b, l                                        ; $48c3: $45
	db   $10                                         ; $48c4: $10
	rst  $38                                         ; $48c5: $ff
	ld   a, a                                        ; $48c6: $7f
	ld   l, a                                        ; $48c7: $6f
	halt                                             ; $48c8: $76
	db   $ed                                         ; $48c9: $ed
	db   $10                                         ; $48ca: $10
	ld   b, l                                        ; $48cb: $45
	db   $10                                         ; $48cc: $10
	rst  $38                                         ; $48cd: $ff
	ld   a, a                                        ; $48ce: $7f
	rst  $38                                         ; $48cf: $ff
	ld   a, a                                        ; $48d0: $7f
	db   $ed                                         ; $48d1: $ed
	db   $10                                         ; $48d2: $10
	ld   b, l                                        ; $48d3: $45
	db   $10                                         ; $48d4: $10
	rst  $38                                         ; $48d5: $ff
	ld   a, a                                        ; $48d6: $7f
	ld   e, a                                        ; $48d7: $5f
	ld   c, $ff                                      ; $48d8: $0e $ff
	ld   a, a                                        ; $48da: $7f
	ld   b, l                                        ; $48db: $45
	db   $10                                         ; $48dc: $10
	rst  $38                                         ; $48dd: $ff
	ld   a, a                                        ; $48de: $7f
	ld   e, a                                        ; $48df: $5f
	ld   c, $14                                      ; $48e0: $0e $14
	nop                                              ; $48e2: $00
	ld   b, l                                        ; $48e3: $45
	db   $10                                         ; $48e4: $10
	rst  $38                                         ; $48e5: $ff
	ld   a, a                                        ; $48e6: $7f
	ld   e, a                                        ; $48e7: $5f
	ld   c, $0b                                      ; $48e8: $0e $0b
	ld   c, h                                        ; $48ea: $4c
	ld   b, l                                        ; $48eb: $45
	db   $10                                         ; $48ec: $10
	rst  $38                                         ; $48ed: $ff
	ld   a, a                                        ; $48ee: $7f
	ld   e, a                                        ; $48ef: $5f
	ld   c, $ed                                      ; $48f0: $0e $ed
	db   $10                                         ; $48f2: $10
	ld   b, l                                        ; $48f3: $45
	db   $10                                         ; $48f4: $10
	rst  $38                                         ; $48f5: $ff
	ld   a, a                                        ; $48f6: $7f
	ld   e, a                                        ; $48f7: $5f
	ld   c, $ed                                      ; $48f8: $0e $ed
	db   $10                                         ; $48fa: $10
	ld   b, l                                        ; $48fb: $45
	db   $10                                         ; $48fc: $10
	rst  $38                                         ; $48fd: $ff
	ld   a, a                                        ; $48fe: $7f
	ld   l, a                                        ; $48ff: $6f
	halt                                             ; $4900: $76
	db   $ed                                         ; $4901: $ed
	db   $10                                         ; $4902: $10
	ld   b, l                                        ; $4903: $45
	db   $10                                         ; $4904: $10
	rst  $38                                         ; $4905: $ff
	ld   a, a                                        ; $4906: $7f
	rst  $38                                         ; $4907: $ff
	ld   a, a                                        ; $4908: $7f
	db   $ed                                         ; $4909: $ed
	db   $10                                         ; $490a: $10
	ld   b, l                                        ; $490b: $45
	db   $10                                         ; $490c: $10
	rst  $38                                         ; $490d: $ff
	ld   a, a                                        ; $490e: $7f
	rst  $38                                         ; $490f: $ff
	ld   a, a                                        ; $4910: $7f
	dec  bc                                          ; $4911: $0b
	ld   c, h                                        ; $4912: $4c
	ld   b, l                                        ; $4913: $45
	db   $10                                         ; $4914: $10
	rst  $38                                         ; $4915: $ff
	ld   a, a                                        ; $4916: $7f
	ld   e, a                                        ; $4917: $5f
	ld   c, $50                                      ; $4918: $0e $50
	inc  c                                           ; $491a: $0c
	ld   b, l                                        ; $491b: $45
	db   $10                                         ; $491c: $10
	rst  $38                                         ; $491d: $ff
	ld   a, a                                        ; $491e: $7f
	ret  nc                                          ; $491f: $d0

	ld   sp, $1d2b                                   ; $4920: $31 $2b $1d
	and  [hl]                                        ; $4923: $a6
	ld   [$7fff], sp                                 ; $4924: $08 $ff $7f
	rst  $30                                         ; $4927: $f7
	ld   a, [de]                                     ; $4928: $1a
	rst  $38                                         ; $4929: $ff
	inc  sp                                          ; $492a: $33
	and  [hl]                                        ; $492b: $a6
	ld   [$7fff], sp                                 ; $492c: $08 $ff $7f
	ld   e, a                                        ; $492f: $5f
	ld   c, $ff                                      ; $4930: $0e $ff
	inc  sp                                          ; $4932: $33
	and  [hl]                                        ; $4933: $a6
	ld   [$7fff], sp                                 ; $4934: $08 $ff $7f
	rst  $30                                         ; $4937: $f7
	ld   a, [de]                                     ; $4938: $1a
	rst  $38                                         ; $4939: $ff
	inc  sp                                          ; $493a: $33
	and  [hl]                                        ; $493b: $a6
	ld   [$7fff], sp                                 ; $493c: $08 $ff $7f
	ret  nc                                          ; $493f: $d0

	ld   sp, $1d2b                                   ; $4940: $31 $2b $1d
	and  [hl]                                        ; $4943: $a6
	ld   [$7fff], sp                                 ; $4944: $08 $ff $7f
	ld   e, a                                        ; $4947: $5f
	ld   c, $2b                                      ; $4948: $0e $2b
	dec  e                                           ; $494a: $1d
	and  [hl]                                        ; $494b: $a6
	ld   [$7fff], sp                                 ; $494c: $08 $ff $7f
	rst  $30                                         ; $494f: $f7
	ld   a, [de]                                     ; $4950: $1a
	rst  $38                                         ; $4951: $ff
	ld   a, a                                        ; $4952: $7f
	and  [hl]                                        ; $4953: $a6
	ld   [$7fff], sp                                 ; $4954: $08 $ff $7f
	ld   l, a                                        ; $4957: $6f
	halt                                             ; $4958: $76
	dec  hl                                          ; $4959: $2b
	add  hl, hl                                      ; $495a: $29
	and  [hl]                                        ; $495b: $a6
	ld   [$7fff], sp                                 ; $495c: $08 $ff $7f
	rst  $30                                         ; $495f: $f7
	ld   a, [de]                                     ; $4960: $1a
	rst  $38                                         ; $4961: $ff
	inc  sp                                          ; $4962: $33
	and  [hl]                                        ; $4963: $a6
	ld   [$7fff], sp                                 ; $4964: $08 $ff $7f
	ld   e, a                                        ; $4967: $5f
	ld   c, $ff                                      ; $4968: $0e $ff
	inc  sp                                          ; $496a: $33
	and  [hl]                                        ; $496b: $a6
	ld   [$7fff], sp                                 ; $496c: $08 $ff $7f
	rst  $30                                         ; $496f: $f7
	ld   a, [de]                                     ; $4970: $1a
	rst  $38                                         ; $4971: $ff
	inc  sp                                          ; $4972: $33
	and  [hl]                                        ; $4973: $a6
	ld   [$7fff], sp                                 ; $4974: $08 $ff $7f
	rst  $38                                         ; $4977: $ff
	ld   a, a                                        ; $4978: $7f
	dec  hl                                          ; $4979: $2b
	add  hl, hl                                      ; $497a: $29
	and  [hl]                                        ; $497b: $a6
	ld   [$7fff], sp                                 ; $497c: $08 $ff $7f
	ld   e, a                                        ; $497f: $5f
	ld   c, $6f                                      ; $4980: $0e $6f
	halt                                             ; $4982: $76
	and  [hl]                                        ; $4983: $a6
	ld   [rRAMG], sp                                 ; $4984: $08 $00 $00
	nop                                              ; $4987: $00
	nop                                              ; $4988: $00
	nop                                              ; $4989: $00
	nop                                              ; $498a: $00
	nop                                              ; $498b: $00
	nop                                              ; $498c: $00
	rst  $38                                         ; $498d: $ff
	ld   a, a                                        ; $498e: $7f
	db   $eb                                         ; $498f: $eb
	inc  bc                                          ; $4990: $03
	or   $10                                         ; $4991: $f6 $10
	and  [hl]                                        ; $4993: $a6
	ld   [$7fff], sp                                 ; $4994: $08 $ff $7f
	ld   e, a                                        ; $4997: $5f
	ld   c, $f6                                      ; $4998: $0e $f6
	db   $10                                         ; $499a: $10
	and  [hl]                                        ; $499b: $a6
	ld   [$7fff], sp                                 ; $499c: $08 $ff $7f
	ld   e, a                                        ; $499f: $5f
	ld   c, $7f                                      ; $49a0: $0e $7f
	rrca                                             ; $49a2: $0f
	and  [hl]                                        ; $49a3: $a6
	ld   [$7fff], sp                                 ; $49a4: $08 $ff $7f
	db   $dd                                         ; $49a7: $dd
	add  hl, sp                                      ; $49a8: $39
	ld   a, a                                        ; $49a9: $7f
	rrca                                             ; $49aa: $0f
	and  [hl]                                        ; $49ab: $a6
	ld   [$7fff], sp                                 ; $49ac: $08 $ff $7f
	db   $dd                                         ; $49af: $dd
	add  hl, sp                                      ; $49b0: $39
	rst  $38                                         ; $49b1: $ff
	ld   a, a                                        ; $49b2: $7f
	and  [hl]                                        ; $49b3: $a6
	ld   [$7fff], sp                                 ; $49b4: $08 $ff $7f
	db   $eb                                         ; $49b7: $eb
	inc  bc                                          ; $49b8: $03
	or   $10                                         ; $49b9: $f6 $10
	and  [hl]                                        ; $49bb: $a6
	ld   [$7fff], sp                                 ; $49bc: $08 $ff $7f
	ld   e, a                                        ; $49bf: $5f
	ld   c, $f6                                      ; $49c0: $0e $f6
	db   $10                                         ; $49c2: $10
	and  [hl]                                        ; $49c3: $a6
	ld   [$7fff], sp                                 ; $49c4: $08 $ff $7f
	ld   l, a                                        ; $49c7: $6f
	halt                                             ; $49c8: $76
	ld   a, a                                        ; $49c9: $7f
	rrca                                             ; $49ca: $0f
	and  [hl]                                        ; $49cb: $a6
	ld   [$7fff], sp                                 ; $49cc: $08 $ff $7f
	ld   e, a                                        ; $49cf: $5f
	ld   c, $7f                                      ; $49d0: $0e $7f
	rrca                                             ; $49d2: $0f
	and  [hl]                                        ; $49d3: $a6
	ld   [$7fff], sp                                 ; $49d4: $08 $ff $7f
	ld   e, a                                        ; $49d7: $5f
	ld   c, $7f                                      ; $49d8: $0e $7f
	rrca                                             ; $49da: $0f
	and  [hl]                                        ; $49db: $a6
	ld   [$7fff], sp                                 ; $49dc: $08 $ff $7f
	db   $dd                                         ; $49df: $dd
	add  hl, sp                                      ; $49e0: $39
	ld   a, a                                        ; $49e1: $7f
	rrca                                             ; $49e2: $0f
	and  [hl]                                        ; $49e3: $a6
	ld   [$7fff], sp                                 ; $49e4: $08 $ff $7f
	db   $dd                                         ; $49e7: $dd
	add  hl, sp                                      ; $49e8: $39
	rst  $38                                         ; $49e9: $ff
	ld   a, a                                        ; $49ea: $7f
	and  [hl]                                        ; $49eb: $a6
	ld   [$7fff], sp                                 ; $49ec: $08 $ff $7f
	ld   a, a                                        ; $49ef: $7f
	rrca                                             ; $49f0: $0f
	rst  $38                                         ; $49f1: $ff
	ld   a, a                                        ; $49f2: $7f
	and  [hl]                                        ; $49f3: $a6
	ld   [$7fff], sp                                 ; $49f4: $08 $ff $7f
	ld   l, a                                        ; $49f7: $6f
	halt                                             ; $49f8: $76
	rst  $38                                         ; $49f9: $ff
	ld   a, a                                        ; $49fa: $7f
	and  [hl]                                        ; $49fb: $a6
	ld   [$7fff], sp                                 ; $49fc: $08 $ff $7f
	db   $dd                                         ; $49ff: $dd
	add  hl, sp                                      ; $4a00: $39
	add  [hl]                                        ; $4a01: $86
	ld   l, l                                        ; $4a02: $6d
	and  [hl]                                        ; $4a03: $a6
	ld   [$7fff], sp                                 ; $4a04: $08 $ff $7f
	db   $dd                                         ; $4a07: $dd
	add  hl, sp                                      ; $4a08: $39
	ld   a, a                                        ; $4a09: $7f
	rrca                                             ; $4a0a: $0f
	and  [hl]                                        ; $4a0b: $a6
	ld   [$7fff], sp                                 ; $4a0c: $08 $ff $7f
	ld   e, a                                        ; $4a0f: $5f
	ld   c, $7f                                      ; $4a10: $0e $7f
	rrca                                             ; $4a12: $0f
	and  [hl]                                        ; $4a13: $a6
	ld   [$7fff], sp                                 ; $4a14: $08 $ff $7f
	db   $dd                                         ; $4a17: $dd
	add  hl, sp                                      ; $4a18: $39
	ld   a, a                                        ; $4a19: $7f
	rrca                                             ; $4a1a: $0f
	and  [hl]                                        ; $4a1b: $a6
	ld   [$7fff], sp                                 ; $4a1c: $08 $ff $7f
	db   $dd                                         ; $4a1f: $dd
	add  hl, sp                                      ; $4a20: $39
	rst  $38                                         ; $4a21: $ff
	ld   a, a                                        ; $4a22: $7f
	and  [hl]                                        ; $4a23: $a6
	ld   [$7fff], sp                                 ; $4a24: $08 $ff $7f
	db   $dd                                         ; $4a27: $dd
	add  hl, sp                                      ; $4a28: $39
	add  [hl]                                        ; $4a29: $86
	ld   l, l                                        ; $4a2a: $6d
	and  [hl]                                        ; $4a2b: $a6
	ld   [$7fff], sp                                 ; $4a2c: $08 $ff $7f
	add  [hl]                                        ; $4a2f: $86
	ld   l, l                                        ; $4a30: $6d
	ld   a, a                                        ; $4a31: $7f
	rrca                                             ; $4a32: $0f
	and  [hl]                                        ; $4a33: $a6
	ld   [$7fff], sp                                 ; $4a34: $08 $ff $7f
	db   $d3                                         ; $4a37: $d3
	halt                                             ; $4a38: $76
	ld   a, a                                        ; $4a39: $7f
	rrca                                             ; $4a3a: $0f
	and  [hl]                                        ; $4a3b: $a6
	ld   [$7fff], sp                                 ; $4a3c: $08 $ff $7f
	ld   e, a                                        ; $4a3f: $5f
	ld   c, $bd                                      ; $4a40: $0e $bd
	ld   bc, $08a6                                   ; $4a42: $01 $a6 $08
	rst  $38                                         ; $4a45: $ff
	ld   a, a                                        ; $4a46: $7f
	ld   e, a                                        ; $4a47: $5f
	ld   c, $7f                                      ; $4a48: $0e $7f
	rrca                                             ; $4a4a: $0f
	and  [hl]                                        ; $4a4b: $a6
	ld   [$7fff], sp                                 ; $4a4c: $08 $ff $7f
	ld   e, a                                        ; $4a4f: $5f
	ld   c, $bd                                      ; $4a50: $0e $bd
	ld   bc, $08a6                                   ; $4a52: $01 $a6 $08
	rst  $38                                         ; $4a55: $ff
	ld   a, a                                        ; $4a56: $7f
	ld   e, a                                        ; $4a57: $5f
	ld   c, $ff                                      ; $4a58: $0e $ff
	ld   a, a                                        ; $4a5a: $7f
	and  [hl]                                        ; $4a5b: $a6
	ld   [$7fff], sp                                 ; $4a5c: $08 $ff $7f
	db   $d3                                         ; $4a5f: $d3
	halt                                             ; $4a60: $76
	ld   a, a                                        ; $4a61: $7f
	rrca                                             ; $4a62: $0f
	and  [hl]                                        ; $4a63: $a6
	ld   [rRAMG], sp                                 ; $4a64: $08 $00 $00
	nop                                              ; $4a67: $00
	nop                                              ; $4a68: $00
	nop                                              ; $4a69: $00
	nop                                              ; $4a6a: $00
	nop                                              ; $4a6b: $00
	nop                                              ; $4a6c: $00
	rst  $38                                         ; $4a6d: $ff
	ld   a, a                                        ; $4a6e: $7f
	db   $dd                                         ; $4a6f: $dd
	add  hl, sp                                      ; $4a70: $39
	db   $d3                                         ; $4a71: $d3
	halt                                             ; $4a72: $76
	and  [hl]                                        ; $4a73: $a6
	ld   [$7fff], sp                                 ; $4a74: $08 $ff $7f
	db   $dd                                         ; $4a77: $dd
	add  hl, sp                                      ; $4a78: $39
	ld   a, a                                        ; $4a79: $7f
	rrca                                             ; $4a7a: $0f
	and  [hl]                                        ; $4a7b: $a6
	ld   [$7fff], sp                                 ; $4a7c: $08 $ff $7f
	ld   e, a                                        ; $4a7f: $5f
	ld   c, $7f                                      ; $4a80: $0e $7f
	rrca                                             ; $4a82: $0f
	and  [hl]                                        ; $4a83: $a6
	ld   [$7fff], sp                                 ; $4a84: $08 $ff $7f
	db   $dd                                         ; $4a87: $dd
	add  hl, sp                                      ; $4a88: $39
	rst  $38                                         ; $4a89: $ff
	ld   a, a                                        ; $4a8a: $7f
	and  [hl]                                        ; $4a8b: $a6
	ld   [$7fff], sp                                 ; $4a8c: $08 $ff $7f
	rst  $38                                         ; $4a8f: $ff
	ld   a, a                                        ; $4a90: $7f
	ld   a, a                                        ; $4a91: $7f
	rrca                                             ; $4a92: $0f
	and  [hl]                                        ; $4a93: $a6
	ld   [$7fff], sp                                 ; $4a94: $08 $ff $7f
	db   $dd                                         ; $4a97: $dd
	add  hl, sp                                      ; $4a98: $39
	db   $d3                                         ; $4a99: $d3
	halt                                             ; $4a9a: $76
	and  [hl]                                        ; $4a9b: $a6
	ld   [$7fff], sp                                 ; $4a9c: $08 $ff $7f
	ld   e, a                                        ; $4a9f: $5f
	ld   c, $ff                                      ; $4aa0: $0e $ff
	ld   a, a                                        ; $4aa2: $7f
	and  [hl]                                        ; $4aa3: $a6
	ld   [$7fff], sp                                 ; $4aa4: $08 $ff $7f
	ld   e, a                                        ; $4aa7: $5f
	nop                                              ; $4aa8: $00
	rst  $38                                         ; $4aa9: $ff
	inc  bc                                          ; $4aaa: $03
	and  [hl]                                        ; $4aab: $a6
	ld   [$7fff], sp                                 ; $4aac: $08 $ff $7f
	ld   e, a                                        ; $4aaf: $5f
	ld   c, $0b                                      ; $4ab0: $0e $0b
	dec  l                                           ; $4ab2: $2d
	and  [hl]                                        ; $4ab3: $a6
	ld   [$7fff], sp                                 ; $4ab4: $08 $ff $7f
	ld   e, a                                        ; $4ab7: $5f
	ld   c, $0b                                      ; $4ab8: $0e $0b
	dec  l                                           ; $4aba: $2d
	and  [hl]                                        ; $4abb: $a6
	ld   [$7fff], sp                                 ; $4abc: $08 $ff $7f
	rst  $38                                         ; $4abf: $ff
	ld   a, a                                        ; $4ac0: $7f
	dec  bc                                          ; $4ac1: $0b
	dec  l                                           ; $4ac2: $2d
	and  [hl]                                        ; $4ac3: $a6
	ld   [$7fff], sp                                 ; $4ac4: $08 $ff $7f
	ld   e, a                                        ; $4ac7: $5f
	nop                                              ; $4ac8: $00
	dec  bc                                          ; $4ac9: $0b
	dec  l                                           ; $4aca: $2d
	and  [hl]                                        ; $4acb: $a6
	ld   [$7fff], sp                                 ; $4acc: $08 $ff $7f
	rst  $38                                         ; $4acf: $ff
	inc  bc                                          ; $4ad0: $03
	dec  bc                                          ; $4ad1: $0b
	dec  l                                           ; $4ad2: $2d
	and  [hl]                                        ; $4ad3: $a6
	ld   [$7fff], sp                                 ; $4ad4: $08 $ff $7f
	ld   e, a                                        ; $4ad7: $5f
	ld   c, $ff                                      ; $4ad8: $0e $ff
	inc  bc                                          ; $4ada: $03
	and  [hl]                                        ; $4adb: $a6
	ld   [$7fff], sp                                 ; $4adc: $08 $ff $7f
	add  b                                           ; $4adf: $80
	ld   a, [hl+]                                    ; $4ae0: $2a
	ld   b, b                                        ; $4ae1: $40
	ld   de, $08a6                                   ; $4ae2: $11 $a6 $08
	rst  $38                                         ; $4ae5: $ff
	ld   a, a                                        ; $4ae6: $7f
	ld   e, a                                        ; $4ae7: $5f
	ld   c, $0b                                      ; $4ae8: $0e $0b
	dec  l                                           ; $4aea: $2d
	and  [hl]                                        ; $4aeb: $a6
	ld   [$7ff3], sp                                 ; $4aec: $08 $f3 $7f
	ld   e, a                                        ; $4aef: $5f
	ld   c, $0b                                      ; $4af0: $0e $0b
	dec  l                                           ; $4af2: $2d
	and  [hl]                                        ; $4af3: $a6
	ld   [$7ff3], sp                                 ; $4af4: $08 $f3 $7f
	rst  $38                                         ; $4af7: $ff
	ld   a, a                                        ; $4af8: $7f
	dec  bc                                          ; $4af9: $0b
	dec  l                                           ; $4afa: $2d
	and  [hl]                                        ; $4afb: $a6
	ld   [$7ff3], sp                                 ; $4afc: $08 $f3 $7f
	add  b                                           ; $4aff: $80
	ld   a, [hl+]                                    ; $4b00: $2a
	rst  $38                                         ; $4b01: $ff
	ld   a, a                                        ; $4b02: $7f
	and  [hl]                                        ; $4b03: $a6
	ld   [$7ff3], sp                                 ; $4b04: $08 $f3 $7f
	rst  $38                                         ; $4b07: $ff
	inc  bc                                          ; $4b08: $03
	dec  bc                                          ; $4b09: $0b
	dec  l                                           ; $4b0a: $2d
	and  [hl]                                        ; $4b0b: $a6
	ld   [$7ff3], sp                                 ; $4b0c: $08 $f3 $7f
	ld   l, a                                        ; $4b0f: $6f
	halt                                             ; $4b10: $76
	ld   b, b                                        ; $4b11: $40
	ld   de, $7fff                                   ; $4b12: $11 $ff $7f
	ld   e, a                                        ; $4b15: $5f
	ld   c, $ff                                      ; $4b16: $0e $ff
	inc  bc                                          ; $4b18: $03
	ld   e, a                                        ; $4b19: $5f
	nop                                              ; $4b1a: $00
	and  [hl]                                        ; $4b1b: $a6
	ld   [$7fff], sp                                 ; $4b1c: $08 $ff $7f
	ld   e, a                                        ; $4b1f: $5f
	ld   c, $0b                                      ; $4b20: $0e $0b
	dec  l                                           ; $4b22: $2d
	and  [hl]                                        ; $4b23: $a6
	ld   [$7fff], sp                                 ; $4b24: $08 $ff $7f
	ld   e, a                                        ; $4b27: $5f
	ld   c, $0b                                      ; $4b28: $0e $0b
	dec  l                                           ; $4b2a: $2d
	and  [hl]                                        ; $4b2b: $a6
	ld   [$7fff], sp                                 ; $4b2c: $08 $ff $7f
	rst  $38                                         ; $4b2f: $ff
	ld   a, a                                        ; $4b30: $7f
	dec  bc                                          ; $4b31: $0b
	dec  l                                           ; $4b32: $2d
	and  [hl]                                        ; $4b33: $a6
	ld   [$7fff], sp                                 ; $4b34: $08 $ff $7f
	ld   e, a                                        ; $4b37: $5f
	ld   c, $5f                                      ; $4b38: $0e $5f
	nop                                              ; $4b3a: $00
	and  [hl]                                        ; $4b3b: $a6
	ld   [$7fff], sp                                 ; $4b3c: $08 $ff $7f
	rst  $38                                         ; $4b3f: $ff
	inc  bc                                          ; $4b40: $03
	ld   e, a                                        ; $4b41: $5f
	nop                                              ; $4b42: $00
	and  [hl]                                        ; $4b43: $a6
	ld   [$7fff], sp                                 ; $4b44: $08 $ff $7f
	ld   e, a                                        ; $4b47: $5f
	ld   c, $ff                                      ; $4b48: $0e $ff
	ld   a, a                                        ; $4b4a: $7f
	and  [hl]                                        ; $4b4b: $a6
	ld   [$7fff], sp                                 ; $4b4c: $08 $ff $7f
	ld   e, a                                        ; $4b4f: $5f
	ld   c, $79                                      ; $4b50: $0e $79
	inc  b                                           ; $4b52: $04
	and  [hl]                                        ; $4b53: $a6
	ld   [$7fff], sp                                 ; $4b54: $08 $ff $7f
	rst  $38                                         ; $4b57: $ff
	ccf                                              ; $4b58: $3f
	rst  $30                                         ; $4b59: $f7
	ld   h, $a6                                      ; $4b5a: $26 $a6
	ld   [$7fff], sp                                 ; $4b5c: $08 $ff $7f
	ld   e, a                                        ; $4b5f: $5f
	ld   c, $79                                      ; $4b60: $0e $79
	inc  b                                           ; $4b62: $04
	and  [hl]                                        ; $4b63: $a6
	ld   [$7fff], sp                                 ; $4b64: $08 $ff $7f
	rst  $38                                         ; $4b67: $ff
	ccf                                              ; $4b68: $3f
	rst  $30                                         ; $4b69: $f7
	ld   h, $a6                                      ; $4b6a: $26 $a6
	ld   [$7fff], sp                                 ; $4b6c: $08 $ff $7f
	rst  $38                                         ; $4b6f: $ff
	ld   a, a                                        ; $4b70: $7f
	ld   a, c                                        ; $4b71: $79
	inc  b                                           ; $4b72: $04
	and  [hl]                                        ; $4b73: $a6
	ld   [$7fff], sp                                 ; $4b74: $08 $ff $7f
	rst  $38                                         ; $4b77: $ff
	ld   a, a                                        ; $4b78: $7f
	rst  $38                                         ; $4b79: $ff
	ccf                                              ; $4b7a: $3f
	and  [hl]                                        ; $4b7b: $a6
	ld   [$7fff], sp                                 ; $4b7c: $08 $ff $7f
	ld   e, a                                        ; $4b7f: $5f
	ld   c, $f7                                      ; $4b80: $0e $f7
	ld   h, $a6                                      ; $4b82: $26 $a6
	ld   [$7fff], sp                                 ; $4b84: $08 $ff $7f
	ld   e, a                                        ; $4b87: $5f
	ld   c, $79                                      ; $4b88: $0e $79
	inc  b                                           ; $4b8a: $04
	and  [hl]                                        ; $4b8b: $a6
	ld   [$7fff], sp                                 ; $4b8c: $08 $ff $7f
	ld   l, a                                        ; $4b8f: $6f
	halt                                             ; $4b90: $76
	ld   d, l                                        ; $4b91: $55
	nop                                              ; $4b92: $00
	and  [hl]                                        ; $4b93: $a6
	ld   [$7fff], sp                                 ; $4b94: $08 $ff $7f
	ld   e, a                                        ; $4b97: $5f
	ld   c, $79                                      ; $4b98: $0e $79
	inc  b                                           ; $4b9a: $04
	and  [hl]                                        ; $4b9b: $a6
	ld   [$7fff], sp                                 ; $4b9c: $08 $ff $7f
	rst  $38                                         ; $4b9f: $ff
	ld   a, a                                        ; $4ba0: $7f
	ld   d, l                                        ; $4ba1: $55
	nop                                              ; $4ba2: $00
	and  [hl]                                        ; $4ba3: $a6
	ld   [$7fff], sp                                 ; $4ba4: $08 $ff $7f
	rst  $38                                         ; $4ba7: $ff
	ld   a, a                                        ; $4ba8: $7f
	ld   a, c                                        ; $4ba9: $79
	inc  b                                           ; $4baa: $04
	and  [hl]                                        ; $4bab: $a6
	ld   [$7fff], sp                                 ; $4bac: $08 $ff $7f
	ld   e, a                                        ; $4baf: $5f
	ld   c, $6f                                      ; $4bb0: $0e $6f
	halt                                             ; $4bb2: $76
	and  [hl]                                        ; $4bb3: $a6
	ld   [rRAMG], sp                                 ; $4bb4: $08 $00 $00
	nop                                              ; $4bb7: $00
	nop                                              ; $4bb8: $00
	nop                                              ; $4bb9: $00
	nop                                              ; $4bba: $00
	nop                                              ; $4bbb: $00
	nop                                              ; $4bbc: $00
	rst  $38                                         ; $4bbd: $ff
	ld   a, a                                        ; $4bbe: $7f
	ld   a, [de]                                     ; $4bbf: $1a
	ld   e, $29                                      ; $4bc0: $1e $29
	ld   hl, $0485                                   ; $4bc2: $21 $85 $04
	rst  $38                                         ; $4bc5: $ff
	rrca                                             ; $4bc6: $0f
	ld   a, [de]                                     ; $4bc7: $1a
	ld   e, $1f                                      ; $4bc8: $1e $1f
	dec  sp                                          ; $4bca: $3b
	add  l                                           ; $4bcb: $85
	inc  b                                           ; $4bcc: $04
	rst  $38                                         ; $4bcd: $ff
	ld   a, a                                        ; $4bce: $7f
	ld   a, [de]                                     ; $4bcf: $1a
	ld   e, $1f                                      ; $4bd0: $1e $1f
	dec  sp                                          ; $4bd2: $3b
	add  l                                           ; $4bd3: $85
	inc  b                                           ; $4bd4: $04
	rst  $38                                         ; $4bd5: $ff
	ld   a, a                                        ; $4bd6: $7f
	rra                                              ; $4bd7: $1f
	dec  sp                                          ; $4bd8: $3b
	add  hl, hl                                      ; $4bd9: $29
	ld   hl, $0485                                   ; $4bda: $21 $85 $04
	rst  $38                                         ; $4bdd: $ff
	ld   a, a                                        ; $4bde: $7f
	rst  $38                                         ; $4bdf: $ff
	ld   a, a                                        ; $4be0: $7f
	add  hl, hl                                      ; $4be1: $29
	ld   hl, $0485                                   ; $4be2: $21 $85 $04
	rst  $38                                         ; $4be5: $ff
	ld   a, a                                        ; $4be6: $7f
	rst  $38                                         ; $4be7: $ff
	rrca                                             ; $4be8: $0f
	ld   [hl], c                                     ; $4be9: $71
	nop                                              ; $4bea: $00
	add  l                                           ; $4beb: $85
	inc  b                                           ; $4bec: $04
	nop                                              ; $4bed: $00
	nop                                              ; $4bee: $00
	nop                                              ; $4bef: $00
	nop                                              ; $4bf0: $00
	nop                                              ; $4bf1: $00
	nop                                              ; $4bf2: $00
	nop                                              ; $4bf3: $00
	nop                                              ; $4bf4: $00
	rst  $38                                         ; $4bf5: $ff
	ld   a, a                                        ; $4bf6: $7f
	rst  $20                                         ; $4bf7: $e7
	jr   jr_0a4_4c4b                                 ; $4bf8: $18 $51

	ld   d, [hl]                                     ; $4bfa: $56
	ld   b, e                                        ; $4bfb: $43
	db   $10                                         ; $4bfc: $10
	rst  $38                                         ; $4bfd: $ff
	ld   a, a                                        ; $4bfe: $7f
	ld   e, a                                        ; $4bff: $5f
	ld   c, $51                                      ; $4c00: $0e $51
	ld   d, [hl]                                     ; $4c02: $56
	ld   b, e                                        ; $4c03: $43
	db   $10                                         ; $4c04: $10
	rst  $38                                         ; $4c05: $ff
	ld   a, a                                        ; $4c06: $7f
	ld   e, a                                        ; $4c07: $5f
	ld   c, $51                                      ; $4c08: $0e $51
	ld   d, [hl]                                     ; $4c0a: $56
	ld   b, e                                        ; $4c0b: $43
	db   $10                                         ; $4c0c: $10
	rst  $38                                         ; $4c0d: $ff
	ld   a, a                                        ; $4c0e: $7f
	rst  $38                                         ; $4c0f: $ff
	ld   a, a                                        ; $4c10: $7f
	ld   d, c                                        ; $4c11: $51
	ld   d, [hl]                                     ; $4c12: $56
	ld   b, e                                        ; $4c13: $43
	db   $10                                         ; $4c14: $10
	rst  $38                                         ; $4c15: $ff
	ld   a, a                                        ; $4c16: $7f
	rst  $38                                         ; $4c17: $ff
	inc  bc                                          ; $4c18: $03
	ld   d, d                                        ; $4c19: $52
	nop                                              ; $4c1a: $00
	ld   b, e                                        ; $4c1b: $43
	db   $10                                         ; $4c1c: $10
	rst  $38                                         ; $4c1d: $ff
	ld   a, a                                        ; $4c1e: $7f
	rst  $20                                         ; $4c1f: $e7
	jr   jr_0a4_4c73                                 ; $4c20: $18 $51

	ld   d, [hl]                                     ; $4c22: $56
	ld   b, e                                        ; $4c23: $43
	stop                                             ; $4c24: $10 $00
	nop                                              ; $4c26: $00
	nop                                              ; $4c27: $00
	nop                                              ; $4c28: $00
	nop                                              ; $4c29: $00
	nop                                              ; $4c2a: $00
	nop                                              ; $4c2b: $00
	nop                                              ; $4c2c: $00
	rst  $38                                         ; $4c2d: $ff
	ld   a, a                                        ; $4c2e: $7f
	ld   h, b                                        ; $4c2f: $60
	add  hl, bc                                      ; $4c30: $09
	ldh  a, [$59]                                    ; $4c31: $f0 $59
	add  l                                           ; $4c33: $85
	inc  b                                           ; $4c34: $04
	rst  $38                                         ; $4c35: $ff
	ld   a, a                                        ; $4c36: $7f
	ld   a, e                                        ; $4c37: $7b
	ld   bc, $0efc                                   ; $4c38: $01 $fc $0e
	add  l                                           ; $4c3b: $85
	inc  b                                           ; $4c3c: $04
	rst  $38                                         ; $4c3d: $ff
	ld   a, a                                        ; $4c3e: $7f
	ld   e, a                                        ; $4c3f: $5f
	ld   c, $4c                                      ; $4c40: $0e $4c
	ld   de, $0485                                   ; $4c42: $11 $85 $04
	rst  $38                                         ; $4c45: $ff
	ld   a, a                                        ; $4c46: $7f
	ld   e, a                                        ; $4c47: $5f
	ld   c, $ff                                      ; $4c48: $0e $ff
	ld   a, a                                        ; $4c4a: $7f

jr_0a4_4c4b:
	add  l                                           ; $4c4b: $85
	inc  b                                           ; $4c4c: $04
	rst  $38                                         ; $4c4d: $ff
	ld   a, a                                        ; $4c4e: $7f
	ld   e, a                                        ; $4c4f: $5f
	ld   c, $f0                                      ; $4c50: $0e $f0
	ld   e, c                                        ; $4c52: $59
	add  l                                           ; $4c53: $85
	inc  b                                           ; $4c54: $04
	rst  $38                                         ; $4c55: $ff
	ld   a, a                                        ; $4c56: $7f
	rst  $38                                         ; $4c57: $ff
	ld   a, a                                        ; $4c58: $7f
	ldh  a, [$59]                                    ; $4c59: $f0 $59
	add  l                                           ; $4c5b: $85
	inc  b                                           ; $4c5c: $04
	rst  $38                                         ; $4c5d: $ff
	ld   a, a                                        ; $4c5e: $7f
	ld   a, e                                        ; $4c5f: $7b
	ld   bc, $7fff                                   ; $4c60: $01 $ff $7f
	add  l                                           ; $4c63: $85
	inc  b                                           ; $4c64: $04
	rst  $38                                         ; $4c65: $ff
	ld   a, a                                        ; $4c66: $7f
	rst  $38                                         ; $4c67: $ff
	inc  bc                                          ; $4c68: $03
	ld   h, b                                        ; $4c69: $60
	ld   d, b                                        ; $4c6a: $50
	add  l                                           ; $4c6b: $85
	inc  b                                           ; $4c6c: $04
	rst  $38                                         ; $4c6d: $ff
	ld   a, a                                        ; $4c6e: $7f
	rst  $38                                         ; $4c6f: $ff
	inc  bc                                          ; $4c70: $03
	ldh  a, [$59]                                    ; $4c71: $f0 $59

jr_0a4_4c73:
	add  l                                           ; $4c73: $85
	inc  b                                           ; $4c74: $04
	rst  $38                                         ; $4c75: $ff
	ld   a, a                                        ; $4c76: $7f
	ld   e, a                                        ; $4c77: $5f
	ld   c, $4c                                      ; $4c78: $0e $4c
	ld   de, $0485                                   ; $4c7a: $11 $85 $04
	rst  $38                                         ; $4c7d: $ff
	ld   a, a                                        ; $4c7e: $7f
	ld   e, a                                        ; $4c7f: $5f
	ld   c, $ff                                      ; $4c80: $0e $ff
	ld   a, a                                        ; $4c82: $7f
	add  l                                           ; $4c83: $85
	inc  b                                           ; $4c84: $04
	rst  $38                                         ; $4c85: $ff
	ld   a, a                                        ; $4c86: $7f
	rst  $38                                         ; $4c87: $ff
	inc  bc                                          ; $4c88: $03
	rst  $38                                         ; $4c89: $ff
	ld   a, a                                        ; $4c8a: $7f
	add  l                                           ; $4c8b: $85
	inc  b                                           ; $4c8c: $04
	rst  $38                                         ; $4c8d: $ff
	ld   a, a                                        ; $4c8e: $7f
	rst  $38                                         ; $4c8f: $ff
	ld   a, a                                        ; $4c90: $7f
	ldh  a, [$59]                                    ; $4c91: $f0 $59
	add  l                                           ; $4c93: $85
	inc  b                                           ; $4c94: $04
	nop                                              ; $4c95: $00
	nop                                              ; $4c96: $00
	nop                                              ; $4c97: $00
	nop                                              ; $4c98: $00
	nop                                              ; $4c99: $00
	nop                                              ; $4c9a: $00
	nop                                              ; $4c9b: $00
	nop                                              ; $4c9c: $00
	rst  $38                                         ; $4c9d: $ff
	ld   a, a                                        ; $4c9e: $7f
	xor  [hl]                                        ; $4c9f: $ae
	dec  h                                           ; $4ca0: $25
	ld   c, e                                        ; $4ca1: $4b
	add  hl, de                                      ; $4ca2: $19
	add  l                                           ; $4ca3: $85
	inc  b                                           ; $4ca4: $04
	rst  $38                                         ; $4ca5: $ff
	ld   a, a                                        ; $4ca6: $7f
	xor  [hl]                                        ; $4ca7: $ae
	dec  h                                           ; $4ca8: $25
	nop                                              ; $4ca9: $00
	ld   [bc], a                                     ; $4caa: $02
	add  l                                           ; $4cab: $85
	inc  b                                           ; $4cac: $04
	rst  $38                                         ; $4cad: $ff
	ld   a, a                                        ; $4cae: $7f
	ld   e, a                                        ; $4caf: $5f
	ld   c, $6e                                      ; $4cb0: $0e $6e
	ld   bc, $0485                                   ; $4cb2: $01 $85 $04
	rst  $38                                         ; $4cb5: $ff
	ld   a, a                                        ; $4cb6: $7f
	xor  [hl]                                        ; $4cb7: $ae
	dec  h                                           ; $4cb8: $25
	ld   c, e                                        ; $4cb9: $4b
	add  hl, de                                      ; $4cba: $19
	add  l                                           ; $4cbb: $85
	inc  b                                           ; $4cbc: $04
	rst  $38                                         ; $4cbd: $ff
	ld   a, a                                        ; $4cbe: $7f
	ld   c, e                                        ; $4cbf: $4b
	add  hl, de                                      ; $4cc0: $19
	rst  $38                                         ; $4cc1: $ff
	ld   a, a                                        ; $4cc2: $7f
	add  l                                           ; $4cc3: $85
	inc  b                                           ; $4cc4: $04
	rst  $38                                         ; $4cc5: $ff
	ld   a, a                                        ; $4cc6: $7f
	ld   e, a                                        ; $4cc7: $5f
	ld   c, $ff                                      ; $4cc8: $0e $ff
	ld   a, a                                        ; $4cca: $7f
	add  l                                           ; $4ccb: $85
	inc  b                                           ; $4ccc: $04
	rst  $38                                         ; $4ccd: $ff
	ld   a, a                                        ; $4cce: $7f
	xor  [hl]                                        ; $4ccf: $ae
	dec  h                                           ; $4cd0: $25
	ldh  [rLCDC], a                                  ; $4cd1: $e0 $40
	add  l                                           ; $4cd3: $85
	inc  b                                           ; $4cd4: $04
	ld   e, a                                        ; $4cd5: $5f
	ld   c, $1f                                      ; $4cd6: $0e $1f
	nop                                              ; $4cd8: $00
	rst  ToBoot                                         ; $4cd9: $c7
	dec  c                                           ; $4cda: $0d
	nop                                              ; $4cdb: $00
	nop                                              ; $4cdc: $00
	rst  $38                                         ; $4cdd: $ff
	ld   a, a                                        ; $4cde: $7f
	rst  ToBoot                                         ; $4cdf: $c7
	dec  c                                           ; $4ce0: $0d
	and  [hl]                                        ; $4ce1: $a6
	jr   z, jr_0a4_4ce4                              ; $4ce2: $28 $00

jr_0a4_4ce4:
	nop                                              ; $4ce4: $00
	rst  $30                                         ; $4ce5: $f7
	ld   a, a                                        ; $4ce6: $7f
	ld   e, a                                        ; $4ce7: $5f
	ld   c, $6e                                      ; $4ce8: $0e $6e
	ld   bc, $0000                                   ; $4cea: $01 $00 $00
	ld   e, a                                        ; $4ced: $5f
	ld   l, e                                        ; $4cee: $6b
	rst  ToBoot                                         ; $4cef: $c7
	dec  c                                           ; $4cf0: $0d
	rra                                              ; $4cf1: $1f
	nop                                              ; $4cf2: $00
	nop                                              ; $4cf3: $00
	nop                                              ; $4cf4: $00
	rst  $30                                         ; $4cf5: $f7
	ld   e, a                                        ; $4cf6: $5f
	rst  ToBoot                                         ; $4cf7: $c7
	dec  c                                           ; $4cf8: $0d
	ld   e, a                                        ; $4cf9: $5f
	ld   c, $00                                      ; $4cfa: $0e $00
	nop                                              ; $4cfc: $00
	rst  $30                                         ; $4cfd: $f7
	ld   a, a                                        ; $4cfe: $7f
	ld   e, a                                        ; $4cff: $5f
	ld   c, $ff                                      ; $4d00: $0e $ff
	ld   a, a                                        ; $4d02: $7f
	nop                                              ; $4d03: $00
	nop                                              ; $4d04: $00
	ld   a, l                                        ; $4d05: $7d
	ld   a, [hl]                                     ; $4d06: $7e
	ld   e, a                                        ; $4d07: $5f
	ld   c, $1f                                      ; $4d08: $0e $1f
	nop                                              ; $4d0a: $00
	nop                                              ; $4d0b: $00
	nop                                              ; $4d0c: $00
	rst  $38                                         ; $4d0d: $ff
	ld   a, a                                        ; $4d0e: $7f
	ld   e, a                                        ; $4d0f: $5f
	ld   c, $b5                                      ; $4d10: $0e $b5
	db   $10                                         ; $4d12: $10
	ld   b, e                                        ; $4d13: $43
	db   $10                                         ; $4d14: $10
	rst  $38                                         ; $4d15: $ff
	ld   a, a                                        ; $4d16: $7f
	rst  ToBoot                                         ; $4d17: $c7
	dec  c                                           ; $4d18: $0d
	rra                                              ; $4d19: $1f
	nop                                              ; $4d1a: $00
	ld   b, e                                        ; $4d1b: $43
	db   $10                                         ; $4d1c: $10
	rst  $38                                         ; $4d1d: $ff
	ld   a, a                                        ; $4d1e: $7f
	ld   e, a                                        ; $4d1f: $5f
	ld   c, $b5                                      ; $4d20: $0e $b5
	db   $10                                         ; $4d22: $10
	ld   b, e                                        ; $4d23: $43
	db   $10                                         ; $4d24: $10
	rst  $38                                         ; $4d25: $ff
	ld   a, a                                        ; $4d26: $7f
	rst  $38                                         ; $4d27: $ff
	ld   a, a                                        ; $4d28: $7f
	or   l                                           ; $4d29: $b5
	db   $10                                         ; $4d2a: $10
	ld   b, e                                        ; $4d2b: $43
	db   $10                                         ; $4d2c: $10
	rst  $38                                         ; $4d2d: $ff
	ld   a, a                                        ; $4d2e: $7f
	rst  $38                                         ; $4d2f: $ff
	ld   a, a                                        ; $4d30: $7f
	ld   e, a                                        ; $4d31: $5f
	ld   c, $43                                      ; $4d32: $0e $43
	db   $10                                         ; $4d34: $10
	rst  $38                                         ; $4d35: $ff
	ld   a, a                                        ; $4d36: $7f
	ld   e, a                                        ; $4d37: $5f
	ld   c, $1f                                      ; $4d38: $0e $1f
	nop                                              ; $4d3a: $00
	ld   b, e                                        ; $4d3b: $43
	db   $10                                         ; $4d3c: $10
	rst  $38                                         ; $4d3d: $ff
	ld   a, a                                        ; $4d3e: $7f
	rst  ToBoot                                         ; $4d3f: $c7
	dec  c                                           ; $4d40: $0d
	rra                                              ; $4d41: $1f
	nop                                              ; $4d42: $00
	ld   b, e                                        ; $4d43: $43
	db   $10                                         ; $4d44: $10
	rst  $38                                         ; $4d45: $ff
	ld   a, a                                        ; $4d46: $7f
	ld   e, a                                        ; $4d47: $5f
	ld   c, $b5                                      ; $4d48: $0e $b5
	db   $10                                         ; $4d4a: $10
	ld   b, e                                        ; $4d4b: $43
	db   $10                                         ; $4d4c: $10
	rst  $38                                         ; $4d4d: $ff
	ld   a, a                                        ; $4d4e: $7f
	rst  $20                                         ; $4d4f: $e7
	ld   b, b                                        ; $4d50: $40
	rst  ToBoot                                         ; $4d51: $c7
	dec  c                                           ; $4d52: $0d
	ld   b, e                                        ; $4d53: $43
	db   $10                                         ; $4d54: $10
	rst  $38                                         ; $4d55: $ff
	ld   a, a                                        ; $4d56: $7f
	ld   e, a                                        ; $4d57: $5f
	ld   c, $b5                                      ; $4d58: $0e $b5
	db   $10                                         ; $4d5a: $10
	ld   b, e                                        ; $4d5b: $43
	db   $10                                         ; $4d5c: $10
	rst  $38                                         ; $4d5d: $ff
	ld   a, a                                        ; $4d5e: $7f
	rst  $38                                         ; $4d5f: $ff
	ld   a, a                                        ; $4d60: $7f
	or   l                                           ; $4d61: $b5
	db   $10                                         ; $4d62: $10
	ld   b, e                                        ; $4d63: $43
	db   $10                                         ; $4d64: $10
	rst  $38                                         ; $4d65: $ff
	ld   a, a                                        ; $4d66: $7f
	rst  $20                                         ; $4d67: $e7
	ld   b, b                                        ; $4d68: $40
	rst  $38                                         ; $4d69: $ff
	ld   a, a                                        ; $4d6a: $7f
	ld   b, e                                        ; $4d6b: $43
	db   $10                                         ; $4d6c: $10
	rst  $38                                         ; $4d6d: $ff
	ld   a, a                                        ; $4d6e: $7f
	ld   b, e                                        ; $4d6f: $43
	ld   bc, $0dc7                                   ; $4d70: $01 $c7 $0d
	ld   b, e                                        ; $4d73: $43
	db   $10                                         ; $4d74: $10
	rst  $38                                         ; $4d75: $ff
	ld   a, a                                        ; $4d76: $7f
	ld   e, a                                        ; $4d77: $5f
	ld   c, $e7                                      ; $4d78: $0e $e7
	ld   b, b                                        ; $4d7a: $40
	ld   b, e                                        ; $4d7b: $43
	db   $10                                         ; $4d7c: $10
	rst  $38                                         ; $4d7d: $ff
	ld   a, a                                        ; $4d7e: $7f
	sub  [hl]                                        ; $4d7f: $96
	ld   l, c                                        ; $4d80: $69
	di                                               ; $4d81: $f3
	ld   b, b                                        ; $4d82: $40
	ld   b, e                                        ; $4d83: $43
	db   $10                                         ; $4d84: $10
	rst  $38                                         ; $4d85: $ff
	ld   a, a                                        ; $4d86: $7f
	adc  e                                           ; $4d87: $8b
	ld   bc, $40f3                                   ; $4d88: $01 $f3 $40
	ld   b, e                                        ; $4d8b: $43
	db   $10                                         ; $4d8c: $10
	rst  $38                                         ; $4d8d: $ff
	ld   a, a                                        ; $4d8e: $7f
	ld   e, a                                        ; $4d8f: $5f
	ld   c, $8b                                      ; $4d90: $0e $8b
	ld   bc, $1043                                   ; $4d92: $01 $43 $10
	rst  $38                                         ; $4d95: $ff
	ld   a, a                                        ; $4d96: $7f
	sub  [hl]                                        ; $4d97: $96
	ld   l, c                                        ; $4d98: $69
	di                                               ; $4d99: $f3
	ld   b, b                                        ; $4d9a: $40
	ld   b, e                                        ; $4d9b: $43
	db   $10                                         ; $4d9c: $10
	rst  $38                                         ; $4d9d: $ff
	ld   a, a                                        ; $4d9e: $7f
	adc  e                                           ; $4d9f: $8b
	ld   bc, $40f3                                   ; $4da0: $01 $f3 $40
	ld   b, e                                        ; $4da3: $43
	db   $10                                         ; $4da4: $10
	rst  $38                                         ; $4da5: $ff
	ld   a, a                                        ; $4da6: $7f
	inc  de                                          ; $4da7: $13
	inc  h                                           ; $4da8: $24
	ld   [$431b], a                                  ; $4da9: $ea $1b $43
	stop                                             ; $4dac: $10 $00
	nop                                              ; $4dae: $00
	nop                                              ; $4daf: $00
	nop                                              ; $4db0: $00
	nop                                              ; $4db1: $00
	nop                                              ; $4db2: $00
	nop                                              ; $4db3: $00
	nop                                              ; $4db4: $00
	rst  $38                                         ; $4db5: $ff
	ld   a, a                                        ; $4db6: $7f
	ld   e, d                                        ; $4db7: $5a
	nop                                              ; $4db8: $00
	nop                                              ; $4db9: $00
	rla                                              ; $4dba: $17
	add  l                                           ; $4dbb: $85
	inc  b                                           ; $4dbc: $04
	rst  $38                                         ; $4dbd: $ff
	ld   a, a                                        ; $4dbe: $7f
	ld   e, a                                        ; $4dbf: $5f
	ld   c, $4f                                      ; $4dc0: $0e $4f
	dec  c                                           ; $4dc2: $0d
	add  l                                           ; $4dc3: $85
	inc  b                                           ; $4dc4: $04
	rst  $38                                         ; $4dc5: $ff
	ld   a, a                                        ; $4dc6: $7f
	ld   e, a                                        ; $4dc7: $5f
	ld   c, $4f                                      ; $4dc8: $0e $4f
	dec  c                                           ; $4dca: $0d
	add  l                                           ; $4dcb: $85
	inc  b                                           ; $4dcc: $04
	rst  $38                                         ; $4dcd: $ff
	ld   a, a                                        ; $4dce: $7f
	ld   e, d                                        ; $4dcf: $5a
	nop                                              ; $4dd0: $00
	ld   c, a                                        ; $4dd1: $4f
	dec  c                                           ; $4dd2: $0d
	add  l                                           ; $4dd3: $85
	inc  b                                           ; $4dd4: $04
	rst  $38                                         ; $4dd5: $ff
	ld   a, a                                        ; $4dd6: $7f
	ld   e, a                                        ; $4dd7: $5f
	ld   c, $ff                                      ; $4dd8: $0e $ff
	ld   a, a                                        ; $4dda: $7f
	add  l                                           ; $4ddb: $85
	inc  b                                           ; $4ddc: $04
	rst  $38                                         ; $4ddd: $ff
	ld   a, a                                        ; $4dde: $7f
	ld   e, d                                        ; $4ddf: $5a
	nop                                              ; $4de0: $00
	nop                                              ; $4de1: $00
	rla                                              ; $4de2: $17
	add  l                                           ; $4de3: $85
	inc  b                                           ; $4de4: $04
	rst  $38                                         ; $4de5: $ff
	ld   a, a                                        ; $4de6: $7f
	ld   e, a                                        ; $4de7: $5f
	ld   c, $00                                      ; $4de8: $0e $00
	rla                                              ; $4dea: $17
	add  l                                           ; $4deb: $85
	inc  b                                           ; $4dec: $04
	rst  $38                                         ; $4ded: $ff
	ld   a, a                                        ; $4dee: $7f
	sbc  b                                           ; $4def: $98
	dec  b                                           ; $4df0: $05
	rst  $38                                         ; $4df1: $ff
	inc  bc                                          ; $4df2: $03
	add  l                                           ; $4df3: $85
	inc  b                                           ; $4df4: $04
	rst  $38                                         ; $4df5: $ff
	ld   a, a                                        ; $4df6: $7f
	sbc  b                                           ; $4df7: $98
	dec  b                                           ; $4df8: $05
	di                                               ; $4df9: $f3
	nop                                              ; $4dfa: $00
	add  l                                           ; $4dfb: $85
	inc  b                                           ; $4dfc: $04
	rst  $38                                         ; $4dfd: $ff
	ld   a, a                                        ; $4dfe: $7f
	ld   e, a                                        ; $4dff: $5f
	ld   c, $ab                                      ; $4e00: $0e $ab
	nop                                              ; $4e02: $00
	add  l                                           ; $4e03: $85
	inc  b                                           ; $4e04: $04
	rst  $38                                         ; $4e05: $ff
	ld   a, a                                        ; $4e06: $7f
	sbc  b                                           ; $4e07: $98
	dec  b                                           ; $4e08: $05
	di                                               ; $4e09: $f3
	nop                                              ; $4e0a: $00
	add  l                                           ; $4e0b: $85
	inc  b                                           ; $4e0c: $04
	rst  $38                                         ; $4e0d: $ff
	ld   a, a                                        ; $4e0e: $7f
	rst  $38                                         ; $4e0f: $ff
	ld   a, a                                        ; $4e10: $7f
	xor  e                                           ; $4e11: $ab
	nop                                              ; $4e12: $00
	add  l                                           ; $4e13: $85
	inc  b                                           ; $4e14: $04
	rst  $38                                         ; $4e15: $ff
	ld   a, a                                        ; $4e16: $7f
	sbc  b                                           ; $4e17: $98
	dec  b                                           ; $4e18: $05
	rst  $38                                         ; $4e19: $ff
	inc  bc                                          ; $4e1a: $03
	add  l                                           ; $4e1b: $85
	inc  b                                           ; $4e1c: $04
	rst  $38                                         ; $4e1d: $ff
	ld   a, a                                        ; $4e1e: $7f
	sbc  b                                           ; $4e1f: $98
	dec  b                                           ; $4e20: $05
	cpl                                              ; $4e21: $2f
	ld   a, a                                        ; $4e22: $7f
	add  l                                           ; $4e23: $85
	inc  b                                           ; $4e24: $04
	rst  $38                                         ; $4e25: $ff
	ld   a, a                                        ; $4e26: $7f
	ldh  a, [$59]                                    ; $4e27: $f0 $59
	ld   [hl], e                                     ; $4e29: $73
	ld   [$0485], sp                                 ; $4e2a: $08 $85 $04
	rst  $38                                         ; $4e2d: $ff
	ld   a, a                                        ; $4e2e: $7f
	ld   c, h                                        ; $4e2f: $4c
	ld   de, $0873                                   ; $4e30: $11 $73 $08
	add  l                                           ; $4e33: $85
	inc  b                                           ; $4e34: $04
	rst  $38                                         ; $4e35: $ff
	ld   a, a                                        ; $4e36: $7f
	ld   e, a                                        ; $4e37: $5f
	ld   c, $4c                                      ; $4e38: $0e $4c
	ld   de, $0485                                   ; $4e3a: $11 $85 $04
	rst  $38                                         ; $4e3d: $ff
	ld   a, a                                        ; $4e3e: $7f
	ldh  a, [$59]                                    ; $4e3f: $f0 $59
	rst  $38                                         ; $4e41: $ff
	ld   a, a                                        ; $4e42: $7f
	add  l                                           ; $4e43: $85
	inc  b                                           ; $4e44: $04
	rst  $38                                         ; $4e45: $ff
	ld   a, a                                        ; $4e46: $7f
	rst  $38                                         ; $4e47: $ff
	ld   a, a                                        ; $4e48: $7f
	ld   c, h                                        ; $4e49: $4c
	ld   de, $0485                                   ; $4e4a: $11 $85 $04
	rst  $38                                         ; $4e4d: $ff
	ld   a, a                                        ; $4e4e: $7f
	ld   e, a                                        ; $4e4f: $5f
	ld   c, $ff                                      ; $4e50: $0e $ff
	ld   a, a                                        ; $4e52: $7f
	add  l                                           ; $4e53: $85
	inc  b                                           ; $4e54: $04
	nop                                              ; $4e55: $00
	nop                                              ; $4e56: $00
	nop                                              ; $4e57: $00
	nop                                              ; $4e58: $00
	nop                                              ; $4e59: $00
	nop                                              ; $4e5a: $00
	nop                                              ; $4e5b: $00
	nop                                              ; $4e5c: $00
	rst  $38                                         ; $4e5d: $ff
	ld   a, a                                        ; $4e5e: $7f
	ldh  a, [$59]                                    ; $4e5f: $f0 $59
	ld   [hl], e                                     ; $4e61: $73
	ld   [$0485], sp                                 ; $4e62: $08 $85 $04
	rst  $38                                         ; $4e65: $ff
	ld   a, a                                        ; $4e66: $7f
	ldh  a, [$59]                                    ; $4e67: $f0 $59
	ld   c, h                                        ; $4e69: $4c
	ld   de, $0485                                   ; $4e6a: $11 $85 $04
	rst  $38                                         ; $4e6d: $ff
	ld   a, a                                        ; $4e6e: $7f
	ld   e, a                                        ; $4e6f: $5f
	ld   c, $4c                                      ; $4e70: $0e $4c
	ld   de, $0485                                   ; $4e72: $11 $85 $04
	rst  $38                                         ; $4e75: $ff
	ld   a, a                                        ; $4e76: $7f
	ldh  a, [$59]                                    ; $4e77: $f0 $59
	rst  $38                                         ; $4e79: $ff
	ld   a, a                                        ; $4e7a: $7f
	add  l                                           ; $4e7b: $85
	inc  b                                           ; $4e7c: $04
	rst  $38                                         ; $4e7d: $ff
	ld   a, a                                        ; $4e7e: $7f
	rst  $38                                         ; $4e7f: $ff
	ld   a, a                                        ; $4e80: $7f
	ld   c, h                                        ; $4e81: $4c
	ld   de, $0485                                   ; $4e82: $11 $85 $04
	nop                                              ; $4e85: $00
	nop                                              ; $4e86: $00
	nop                                              ; $4e87: $00
	nop                                              ; $4e88: $00
	nop                                              ; $4e89: $00
	nop                                              ; $4e8a: $00
	nop                                              ; $4e8b: $00
	nop                                              ; $4e8c: $00
	nop                                              ; $4e8d: $00
	nop                                              ; $4e8e: $00
	nop                                              ; $4e8f: $00
	nop                                              ; $4e90: $00
	nop                                              ; $4e91: $00
	nop                                              ; $4e92: $00
	nop                                              ; $4e93: $00
	nop                                              ; $4e94: $00
	nop                                              ; $4e95: $00
	ld   c, b                                        ; $4e96: $48
	inc  b                                           ; $4e97: $04
	add  b                                           ; $4e98: $80
	inc  d                                           ; $4e99: $14
	add  c                                           ; $4e9a: $81
	add  d                                           ; $4e9b: $82
	nop                                              ; $4e9c: $00
	ld   l, b                                        ; $4e9d: $68
	inc  b                                           ; $4e9e: $04
	inc  d                                           ; $4e9f: $14
	inc  d                                           ; $4ea0: $14
	inc  d                                           ; $4ea1: $14
	add  e                                           ; $4ea2: $83
	nop                                              ; $4ea3: $00
	adc  c                                           ; $4ea4: $89
	ld   [bc], a                                     ; $4ea5: $02
	inc  d                                           ; $4ea6: $14
	inc  d                                           ; $4ea7: $14
	nop                                              ; $4ea8: $00
	xor  c                                           ; $4ea9: $a9
	ld   [bc], a                                     ; $4eaa: $02
	inc  d                                           ; $4eab: $14
	inc  d                                           ; $4eac: $14
	nop                                              ; $4ead: $00
	ret  z                                           ; $4eae: $c8

	inc  bc                                          ; $4eaf: $03
	inc  d                                           ; $4eb0: $14
	inc  d                                           ; $4eb1: $14
	inc  d                                           ; $4eb2: $14
	nop                                              ; $4eb3: $00
	add  sp, $02                                     ; $4eb4: $e8 $02
	inc  b                                           ; $4eb6: $04
	dec  b                                           ; $4eb7: $05
	ld   bc, $0607                                   ; $4eb8: $01 $07 $06
	ld   b, $07                                      ; $4ebb: $06 $07
	ld   [$0a09], sp                                 ; $4ebd: $08 $09 $0a
	dec  bc                                          ; $4ec0: $0b
	ld   bc, $0826                                   ; $4ec1: $01 $26 $08
	inc  c                                           ; $4ec4: $0c
	dec  c                                           ; $4ec5: $0d
	ld   c, $0f                                      ; $4ec6: $0e $0f
	db   $10                                         ; $4ec8: $10
	ld   de, $1312                                   ; $4ec9: $11 $12 $13
	rst  $38                                         ; $4ecc: $ff
	nop                                              ; $4ecd: $00
	ld   c, c                                        ; $4ece: $49
	inc  bc                                          ; $4ecf: $03
	nop                                              ; $4ed0: $00
	ld   bc, $0002                                   ; $4ed1: $01 $02 $00
	ld   l, b                                        ; $4ed4: $68
	dec  b                                           ; $4ed5: $05
	inc  d                                           ; $4ed6: $14
	inc  bc                                          ; $4ed7: $03
	inc  b                                           ; $4ed8: $04
	dec  b                                           ; $4ed9: $05
	dec  d                                           ; $4eda: $15

jr_0a4_4edb:
	nop                                              ; $4edb: $00
	adc  c                                           ; $4edc: $89
	inc  bc                                          ; $4edd: $03
	inc  de                                          ; $4ede: $13
	inc  de                                          ; $4edf: $13
	inc  de                                          ; $4ee0: $13
	nop                                              ; $4ee1: $00
	xor  c                                           ; $4ee2: $a9

jr_0a4_4ee3:
	inc  bc                                          ; $4ee3: $03
	inc  de                                          ; $4ee4: $13
	inc  de                                          ; $4ee5: $13
	inc  de                                          ; $4ee6: $13
	nop                                              ; $4ee7: $00
	ret                                              ; $4ee8: $c9


	ld   [bc], a                                     ; $4ee9: $02
	add  [hl]                                        ; $4eea: $86
	inc  de                                          ; $4eeb: $13
	nop                                              ; $4eec: $00
	jp   hl                                          ; $4eed: $e9


	ld   [bc], a                                     ; $4eee: $02
	add  a                                           ; $4eef: $87
	inc  de                                          ; $4ef0: $13
	ld   bc, $0606                                   ; $4ef1: $01 $06 $06
	inc  de                                          ; $4ef4: $13
	adc  b                                           ; $4ef5: $88
	adc  c                                           ; $4ef6: $89
	adc  d                                           ; $4ef7: $8a
	adc  e                                           ; $4ef8: $8b
	adc  h                                           ; $4ef9: $8c
	ld   bc, $0726                                   ; $4efa: $01 $26 $07
	adc  l                                           ; $4efd: $8d
	adc  [hl]                                        ; $4efe: $8e
	adc  a                                           ; $4eff: $8f
	sub  b                                           ; $4f00: $90
	sub  c                                           ; $4f01: $91
	sub  d                                           ; $4f02: $92
	sub  [hl]                                        ; $4f03: $96
	rst  $38                                         ; $4f04: $ff
	rst  $38                                         ; $4f05: $ff
	ld   a, a                                        ; $4f06: $7f
	ld   e, a                                        ; $4f07: $5f
	nop                                              ; $4f08: $00
	rst  JumpTable                                         ; $4f09: $df
	ld   e, l                                        ; $4f0a: $5d
	rst  ToBoot                                         ; $4f0b: $c7
	inc  d                                           ; $4f0c: $14
	rst  $38                                         ; $4f0d: $ff
	ld   a, a                                        ; $4f0e: $7f
	ld   e, a                                        ; $4f0f: $5f
	ld   c, $ea                                      ; $4f10: $0e $ea
	jr   nz, jr_0a4_4edb                             ; $4f12: $20 $c7

	inc  d                                           ; $4f14: $14
	rst  $38                                         ; $4f15: $ff
	ld   a, a                                        ; $4f16: $7f
	ld   e, a                                        ; $4f17: $5f
	ld   c, $ea                                      ; $4f18: $0e $ea
	jr   nz, jr_0a4_4ee3                             ; $4f1a: $20 $c7

	inc  d                                           ; $4f1c: $14
	rst  $38                                         ; $4f1d: $ff
	ld   a, a                                        ; $4f1e: $7f
	ld   e, a                                        ; $4f1f: $5f
	nop                                              ; $4f20: $00
	ld   [$c720], a                                  ; $4f21: $ea $20 $c7
	inc  d                                           ; $4f24: $14
	rst  $38                                         ; $4f25: $ff
	ld   a, a                                        ; $4f26: $7f
	ld   e, a                                        ; $4f27: $5f
	ld   c, $df                                      ; $4f28: $0e $df
	ld   e, l                                        ; $4f2a: $5d
	rst  ToBoot                                         ; $4f2b: $c7
	inc  d                                           ; $4f2c: $14
	rst  $38                                         ; $4f2d: $ff
	ld   a, a                                        ; $4f2e: $7f
	ld   e, a                                        ; $4f2f: $5f
	ld   c, $e0                                      ; $4f30: $0e $e0
	inc  bc                                          ; $4f32: $03
	rst  ToBoot                                         ; $4f33: $c7
	inc  d                                           ; $4f34: $14
	rst  $38                                         ; $4f35: $ff
	ld   a, a                                        ; $4f36: $7f
	rst  $38                                         ; $4f37: $ff
	ld   a, a                                        ; $4f38: $7f
	ld   [$c720], a                                  ; $4f39: $ea $20 $c7
	inc  d                                           ; $4f3c: $14
	nop                                              ; $4f3d: $00
	nop                                              ; $4f3e: $00
	nop                                              ; $4f3f: $00
	nop                                              ; $4f40: $00
	nop                                              ; $4f41: $00
	nop                                              ; $4f42: $00
	nop                                              ; $4f43: $00
	nop                                              ; $4f44: $00
	nop                                              ; $4f45: $00
	nop                                              ; $4f46: $00
	nop                                              ; $4f47: $00
	nop                                              ; $4f48: $00
	nop                                              ; $4f49: $00
	nop                                              ; $4f4a: $00
	nop                                              ; $4f4b: $00
	nop                                              ; $4f4c: $00
	rst  $38                                         ; $4f4d: $ff
	ld   a, a                                        ; $4f4e: $7f
	sbc  c                                           ; $4f4f: $99
	ld   c, e                                        ; $4f50: $4b
	push af                                          ; $4f51: $f5
	ld   c, d                                        ; $4f52: $4a
	rst  $10                                         ; $4f53: $d7
	ld   a, $ff                                      ; $4f54: $3e $ff
	ld   a, a                                        ; $4f56: $7f
	sbc  a                                           ; $4f57: $9f
	ld   d, $fa                                      ; $4f58: $16 $fa
	ld   bc, $19ae                                   ; $4f5a: $01 $ae $19
	rst  $38                                         ; $4f5d: $ff
	ld   a, a                                        ; $4f5e: $7f
	or   e                                           ; $4f5f: $b3
	ld   b, d                                        ; $4f60: $42
	push af                                          ; $4f61: $f5
	ld   c, d                                        ; $4f62: $4a
	rst  $10                                         ; $4f63: $d7
	ld   a, $ff                                      ; $4f64: $3e $ff
	ld   a, a                                        ; $4f66: $7f
	rst  $38                                         ; $4f67: $ff
	ld   a, a                                        ; $4f68: $7f
	nop                                              ; $4f69: $00
	nop                                              ; $4f6a: $00
	nop                                              ; $4f6b: $00
	nop                                              ; $4f6c: $00
	nop                                              ; $4f6d: $00
	nop                                              ; $4f6e: $00
	nop                                              ; $4f6f: $00
	nop                                              ; $4f70: $00
	nop                                              ; $4f71: $00
	nop                                              ; $4f72: $00
	nop                                              ; $4f73: $00
	nop                                              ; $4f74: $00
	nop                                              ; $4f75: $00
	nop                                              ; $4f76: $00
	nop                                              ; $4f77: $00
	nop                                              ; $4f78: $00
	nop                                              ; $4f79: $00
	nop                                              ; $4f7a: $00
	nop                                              ; $4f7b: $00
	nop                                              ; $4f7c: $00
	nop                                              ; $4f7d: $00
	nop                                              ; $4f7e: $00
	nop                                              ; $4f7f: $00
	nop                                              ; $4f80: $00
	nop                                              ; $4f81: $00
	nop                                              ; $4f82: $00
	nop                                              ; $4f83: $00
	nop                                              ; $4f84: $00
	rst  $38                                         ; $4f85: $ff
	ld   a, a                                        ; $4f86: $7f
	sbc  c                                           ; $4f87: $99
	ld   c, e                                        ; $4f88: $4b
	sbc  b                                           ; $4f89: $98
	ld   [hl], $d7                                   ; $4f8a: $36 $d7
	ld   a, $ff                                      ; $4f8c: $3e $ff
	ld   a, a                                        ; $4f8e: $7f
	sbc  a                                           ; $4f8f: $9f
	ld   d, $fa                                      ; $4f90: $16 $fa
	ld   bc, $19ae                                   ; $4f92: $01 $ae $19
	rst  $38                                         ; $4f95: $ff
	ld   a, a                                        ; $4f96: $7f
	ld   d, [hl]                                     ; $4f97: $56
	ld   l, $98                                      ; $4f98: $2e $98
	ld   [hl], $d7                                   ; $4f9a: $36 $d7
	ld   a, $ff                                      ; $4f9c: $3e $ff
	ld   a, a                                        ; $4f9e: $7f
	rst  $38                                         ; $4f9f: $ff
	ld   a, a                                        ; $4fa0: $7f
	nop                                              ; $4fa1: $00
	nop                                              ; $4fa2: $00
	nop                                              ; $4fa3: $00
	nop                                              ; $4fa4: $00
	nop                                              ; $4fa5: $00
	nop                                              ; $4fa6: $00
	nop                                              ; $4fa7: $00
	nop                                              ; $4fa8: $00
	nop                                              ; $4fa9: $00
	nop                                              ; $4faa: $00
	nop                                              ; $4fab: $00
	nop                                              ; $4fac: $00
	nop                                              ; $4fad: $00
	nop                                              ; $4fae: $00
	nop                                              ; $4faf: $00
	nop                                              ; $4fb0: $00
	nop                                              ; $4fb1: $00
	nop                                              ; $4fb2: $00
	nop                                              ; $4fb3: $00
	nop                                              ; $4fb4: $00
	nop                                              ; $4fb5: $00
	nop                                              ; $4fb6: $00
	nop                                              ; $4fb7: $00
	nop                                              ; $4fb8: $00
	nop                                              ; $4fb9: $00
	nop                                              ; $4fba: $00
	nop                                              ; $4fbb: $00
	nop                                              ; $4fbc: $00
	rst  $38                                         ; $4fbd: $ff
	ld   a, a                                        ; $4fbe: $7f
	sbc  c                                           ; $4fbf: $99
	ld   c, e                                        ; $4fc0: $4b
	ld   a, [hl-]                                    ; $4fc1: $3a
	scf                                              ; $4fc2: $37
	rst  $10                                         ; $4fc3: $d7
	ld   a, $ff                                      ; $4fc4: $3e $ff
	ld   a, a                                        ; $4fc6: $7f
	sbc  a                                           ; $4fc7: $9f
	ld   d, $fa                                      ; $4fc8: $16 $fa
	ld   bc, $19ae                                   ; $4fca: $01 $ae $19
	rst  $38                                         ; $4fcd: $ff
	ld   a, a                                        ; $4fce: $7f
	rst  $38                                         ; $4fcf: $ff
	scf                                              ; $4fd0: $37
	rst  $38                                         ; $4fd1: $ff
	ld   d, a                                        ; $4fd2: $57
	xor  [hl]                                        ; $4fd3: $ae
	add  hl, de                                      ; $4fd4: $19
	rst  $38                                         ; $4fd5: $ff
	ld   a, a                                        ; $4fd6: $7f
	rst  $38                                         ; $4fd7: $ff
	ld   a, a                                        ; $4fd8: $7f
	nop                                              ; $4fd9: $00
	nop                                              ; $4fda: $00
	nop                                              ; $4fdb: $00
	nop                                              ; $4fdc: $00
	nop                                              ; $4fdd: $00
	nop                                              ; $4fde: $00
	nop                                              ; $4fdf: $00
	nop                                              ; $4fe0: $00
	nop                                              ; $4fe1: $00
	nop                                              ; $4fe2: $00
	nop                                              ; $4fe3: $00
	nop                                              ; $4fe4: $00
	nop                                              ; $4fe5: $00
	nop                                              ; $4fe6: $00
	nop                                              ; $4fe7: $00
	nop                                              ; $4fe8: $00
	nop                                              ; $4fe9: $00
	nop                                              ; $4fea: $00
	nop                                              ; $4feb: $00
	nop                                              ; $4fec: $00
	nop                                              ; $4fed: $00
	nop                                              ; $4fee: $00
	nop                                              ; $4fef: $00
	nop                                              ; $4ff0: $00
	nop                                              ; $4ff1: $00
	nop                                              ; $4ff2: $00
	nop                                              ; $4ff3: $00
	nop                                              ; $4ff4: $00
	rst  $38                                         ; $4ff5: $ff
	ld   a, a                                        ; $4ff6: $7f
	sbc  c                                           ; $4ff7: $99
	ld   c, e                                        ; $4ff8: $4b
	or   [hl]                                        ; $4ff9: $b6
	ld   [hl], $d7                                   ; $4ffa: $36 $d7
	ld   a, $ff                                      ; $4ffc: $3e $ff
	ld   a, a                                        ; $4ffe: $7f
	sbc  a                                           ; $4fff: $9f
	ld   d, $fa                                      ; $5000: $16 $fa
	ld   bc, $19ae                                   ; $5002: $01 $ae $19
	rst  $38                                         ; $5005: $ff
	ld   a, a                                        ; $5006: $7f
	pop  af                                          ; $5007: $f1
	add  hl, de                                      ; $5008: $19
	or   l                                           ; $5009: $b5
	ld   a, [hl+]                                    ; $500a: $2a
	xor  [hl]                                        ; $500b: $ae
	add  hl, de                                      ; $500c: $19
	rst  $38                                         ; $500d: $ff
	ld   a, a                                        ; $500e: $7f
	rst  $38                                         ; $500f: $ff
	ld   a, a                                        ; $5010: $7f
	nop                                              ; $5011: $00
	nop                                              ; $5012: $00
	nop                                              ; $5013: $00
	nop                                              ; $5014: $00
	nop                                              ; $5015: $00
	nop                                              ; $5016: $00
	nop                                              ; $5017: $00
	nop                                              ; $5018: $00
	nop                                              ; $5019: $00
	nop                                              ; $501a: $00
	nop                                              ; $501b: $00
	nop                                              ; $501c: $00
	nop                                              ; $501d: $00
	nop                                              ; $501e: $00
	nop                                              ; $501f: $00
	nop                                              ; $5020: $00
	nop                                              ; $5021: $00
	nop                                              ; $5022: $00
	nop                                              ; $5023: $00
	nop                                              ; $5024: $00
	nop                                              ; $5025: $00
	nop                                              ; $5026: $00
	nop                                              ; $5027: $00
	nop                                              ; $5028: $00
	nop                                              ; $5029: $00
	nop                                              ; $502a: $00
	nop                                              ; $502b: $00
	nop                                              ; $502c: $00
	rst  $38                                         ; $502d: $ff
	ld   a, a                                        ; $502e: $7f
	sbc  c                                           ; $502f: $99
	ld   c, e                                        ; $5030: $4b
	or   [hl]                                        ; $5031: $b6
	ld   c, d                                        ; $5032: $4a
	rst  $10                                         ; $5033: $d7
	ld   a, $ff                                      ; $5034: $3e $ff
	ld   a, a                                        ; $5036: $7f
	sbc  a                                           ; $5037: $9f
	ld   d, $fa                                      ; $5038: $16 $fa
	ld   bc, $19ae                                   ; $503a: $01 $ae $19
	rst  $38                                         ; $503d: $ff
	ld   a, a                                        ; $503e: $7f
	ld   [hl], h                                     ; $503f: $74
	ld   b, d                                        ; $5040: $42
	or   [hl]                                        ; $5041: $b6
	ld   c, d                                        ; $5042: $4a
	xor  [hl]                                        ; $5043: $ae
	add  hl, de                                      ; $5044: $19
	rst  $38                                         ; $5045: $ff
	ld   a, a                                        ; $5046: $7f
	rst  $38                                         ; $5047: $ff
	ld   a, a                                        ; $5048: $7f
	nop                                              ; $5049: $00
	nop                                              ; $504a: $00
	nop                                              ; $504b: $00
	nop                                              ; $504c: $00
	nop                                              ; $504d: $00
	nop                                              ; $504e: $00
	nop                                              ; $504f: $00
	nop                                              ; $5050: $00
	nop                                              ; $5051: $00
	nop                                              ; $5052: $00
	nop                                              ; $5053: $00
	nop                                              ; $5054: $00
	nop                                              ; $5055: $00
	nop                                              ; $5056: $00
	nop                                              ; $5057: $00
	nop                                              ; $5058: $00
	nop                                              ; $5059: $00
	nop                                              ; $505a: $00
	nop                                              ; $505b: $00
	nop                                              ; $505c: $00
	nop                                              ; $505d: $00
	nop                                              ; $505e: $00
	nop                                              ; $505f: $00
	nop                                              ; $5060: $00
	nop                                              ; $5061: $00
	nop                                              ; $5062: $00
	nop                                              ; $5063: $00
	nop                                              ; $5064: $00
	rst  $38                                         ; $5065: $ff
	ld   a, a                                        ; $5066: $7f
	sbc  c                                           ; $5067: $99
	ld   c, e                                        ; $5068: $4b
	ld   a, [hl-]                                    ; $5069: $3a
	scf                                              ; $506a: $37
	rst  $10                                         ; $506b: $d7
	ld   a, $ff                                      ; $506c: $3e $ff
	ld   a, a                                        ; $506e: $7f
	sbc  a                                           ; $506f: $9f
	ld   d, $fa                                      ; $5070: $16 $fa
	ld   bc, $19ae                                   ; $5072: $01 $ae $19
	rst  $38                                         ; $5075: $ff
	ld   a, a                                        ; $5076: $7f
	rst  $38                                         ; $5077: $ff
	scf                                              ; $5078: $37
	rst  $38                                         ; $5079: $ff
	ld   d, a                                        ; $507a: $57
	xor  [hl]                                        ; $507b: $ae
	add  hl, de                                      ; $507c: $19
	rst  $38                                         ; $507d: $ff
	ld   a, a                                        ; $507e: $7f
	rst  $38                                         ; $507f: $ff
	ld   a, a                                        ; $5080: $7f
	nop                                              ; $5081: $00
	nop                                              ; $5082: $00
	nop                                              ; $5083: $00
	nop                                              ; $5084: $00
	nop                                              ; $5085: $00
	nop                                              ; $5086: $00
	nop                                              ; $5087: $00
	nop                                              ; $5088: $00
	nop                                              ; $5089: $00
	nop                                              ; $508a: $00
	nop                                              ; $508b: $00
	nop                                              ; $508c: $00
	nop                                              ; $508d: $00
	nop                                              ; $508e: $00
	nop                                              ; $508f: $00
	nop                                              ; $5090: $00
	nop                                              ; $5091: $00
	nop                                              ; $5092: $00
	nop                                              ; $5093: $00
	nop                                              ; $5094: $00
	nop                                              ; $5095: $00
	nop                                              ; $5096: $00
	nop                                              ; $5097: $00
	nop                                              ; $5098: $00
	nop                                              ; $5099: $00
	nop                                              ; $509a: $00
	nop                                              ; $509b: $00
	nop                                              ; $509c: $00
	rst  $38                                         ; $509d: $ff
	ld   a, a                                        ; $509e: $7f
	sbc  c                                           ; $509f: $99
	ld   c, e                                        ; $50a0: $4b
	ld   [hl], d                                     ; $50a1: $72
	ld   a, [hl-]                                    ; $50a2: $3a
	rst  $10                                         ; $50a3: $d7
	ld   a, $ff                                      ; $50a4: $3e $ff
	ld   a, a                                        ; $50a6: $7f
	sbc  a                                           ; $50a7: $9f
	ld   d, $fa                                      ; $50a8: $16 $fa
	ld   bc, $19ae                                   ; $50aa: $01 $ae $19
	rst  $38                                         ; $50ad: $ff
	ld   a, a                                        ; $50ae: $7f
	ld   [hl], d                                     ; $50af: $72
	ld   a, [hl-]                                    ; $50b0: $3a
	push de                                          ; $50b1: $d5
	ld   b, d                                        ; $50b2: $42
	rst  $10                                         ; $50b3: $d7
	ld   a, $ff                                      ; $50b4: $3e $ff
	ld   a, a                                        ; $50b6: $7f
	rst  $38                                         ; $50b7: $ff
	ld   a, a                                        ; $50b8: $7f
	nop                                              ; $50b9: $00
	nop                                              ; $50ba: $00
	nop                                              ; $50bb: $00
	nop                                              ; $50bc: $00
	nop                                              ; $50bd: $00
	nop                                              ; $50be: $00
	nop                                              ; $50bf: $00
	nop                                              ; $50c0: $00
	nop                                              ; $50c1: $00
	nop                                              ; $50c2: $00
	nop                                              ; $50c3: $00
	nop                                              ; $50c4: $00
	nop                                              ; $50c5: $00
	nop                                              ; $50c6: $00
	nop                                              ; $50c7: $00
	nop                                              ; $50c8: $00
	nop                                              ; $50c9: $00
	nop                                              ; $50ca: $00
	nop                                              ; $50cb: $00
	nop                                              ; $50cc: $00
	nop                                              ; $50cd: $00
	nop                                              ; $50ce: $00
	nop                                              ; $50cf: $00
	nop                                              ; $50d0: $00
	nop                                              ; $50d1: $00
	nop                                              ; $50d2: $00
	nop                                              ; $50d3: $00
	nop                                              ; $50d4: $00
	rst  $38                                         ; $50d5: $ff
	ld   a, a                                        ; $50d6: $7f
	sbc  c                                           ; $50d7: $99
	ld   c, e                                        ; $50d8: $4b
	or   h                                           ; $50d9: $b4
	ld   a, $d7                                      ; $50da: $3e $d7
	ld   a, $ff                                      ; $50dc: $3e $ff
	ld   a, a                                        ; $50de: $7f
	sbc  a                                           ; $50df: $9f
	ld   d, $fa                                      ; $50e0: $16 $fa
	ld   bc, $19ae                                   ; $50e2: $01 $ae $19
	nop                                              ; $50e5: $00
	nop                                              ; $50e6: $00
	nop                                              ; $50e7: $00
	nop                                              ; $50e8: $00
	nop                                              ; $50e9: $00
	nop                                              ; $50ea: $00
	nop                                              ; $50eb: $00
	nop                                              ; $50ec: $00
	rst  $38                                         ; $50ed: $ff
	ld   a, a                                        ; $50ee: $7f
	rst  $38                                         ; $50ef: $ff
	ld   a, a                                        ; $50f0: $7f
	nop                                              ; $50f1: $00
	nop                                              ; $50f2: $00
	nop                                              ; $50f3: $00
	nop                                              ; $50f4: $00
	nop                                              ; $50f5: $00
	nop                                              ; $50f6: $00
	nop                                              ; $50f7: $00
	nop                                              ; $50f8: $00
	nop                                              ; $50f9: $00
	nop                                              ; $50fa: $00
	nop                                              ; $50fb: $00
	nop                                              ; $50fc: $00
	rst  $38                                         ; $50fd: $ff
	ld   a, a                                        ; $50fe: $7f
	ld   e, a                                        ; $50ff: $5f
	nop                                              ; $5100: $00
	rst  $38                                         ; $5101: $ff
	inc  bc                                          ; $5102: $03
	and  [hl]                                        ; $5103: $a6
	ld   [$7fff], sp                                 ; $5104: $08 $ff $7f
	ld   e, a                                        ; $5107: $5f
	ld   c, $0b                                      ; $5108: $0e $0b
	dec  l                                           ; $510a: $2d
	and  [hl]                                        ; $510b: $a6
	ld   [$7fff], sp                                 ; $510c: $08 $ff $7f
	ld   e, a                                        ; $510f: $5f
	ld   c, $0b                                      ; $5110: $0e $0b
	dec  l                                           ; $5112: $2d
	and  [hl]                                        ; $5113: $a6
	ld   [$7fff], sp                                 ; $5114: $08 $ff $7f
	rst  $38                                         ; $5117: $ff
	ld   a, a                                        ; $5118: $7f
	dec  bc                                          ; $5119: $0b
	dec  l                                           ; $511a: $2d
	and  [hl]                                        ; $511b: $a6
	ld   [$7fff], sp                                 ; $511c: $08 $ff $7f
	ld   e, a                                        ; $511f: $5f
	nop                                              ; $5120: $00
	dec  bc                                          ; $5121: $0b
	dec  l                                           ; $5122: $2d
	and  [hl]                                        ; $5123: $a6
	ld   [$7fff], sp                                 ; $5124: $08 $ff $7f
	rst  $38                                         ; $5127: $ff
	ld   a, a                                        ; $5128: $7f
	ld   e, a                                        ; $5129: $5f
	ld   c, $a6                                      ; $512a: $0e $a6
	ld   [$7fff], sp                                 ; $512c: $08 $ff $7f
	ld   e, a                                        ; $512f: $5f
	nop                                              ; $5130: $00
	rst  $38                                         ; $5131: $ff
	inc  bc                                          ; $5132: $03
	and  [hl]                                        ; $5133: $a6
	ld   [rRAMG], sp                                 ; $5134: $08 $00 $00
	nop                                              ; $5137: $00
	nop                                              ; $5138: $00
	nop                                              ; $5139: $00
	nop                                              ; $513a: $00
	nop                                              ; $513b: $00
	nop                                              ; $513c: $00
	nop                                              ; $513d: $00
	nop                                              ; $513e: $00
	nop                                              ; $513f: $00
	nop                                              ; $5140: $00
	nop                                              ; $5141: $00
	nop                                              ; $5142: $00
	nop                                              ; $5143: $00
	nop                                              ; $5144: $00
	nop                                              ; $5145: $00
	nop                                              ; $5146: $00
	sbc  $0b                                         ; $5147: $de $0b
	ld   a, $2a                                      ; $5149: $3e $2a
	rst  ToBoot                                         ; $514b: $c7
	inc  d                                           ; $514c: $14
	nop                                              ; $514d: $00
	nop                                              ; $514e: $00
	jp   hl                                          ; $514f: $e9


	dec  de                                          ; $5150: $1b
	ld   a, e                                        ; $5151: $7b
	ld   l, a                                        ; $5152: $6f
	rst  ToBoot                                         ; $5153: $c7
	inc  d                                           ; $5154: $14
	nop                                              ; $5155: $00
	nop                                              ; $5156: $00
	dec  e                                           ; $5157: $1d
	ld   h, l                                        ; $5158: $65
	jp   hl                                          ; $5159: $e9


	dec  de                                          ; $515a: $1b
	ld   [hl], l                                     ; $515b: $75
	dec  d                                           ; $515c: $15
	nop                                              ; $515d: $00
	nop                                              ; $515e: $00
	ld   b, l                                        ; $515f: $45
	dec  [hl]                                        ; $5160: $35
	adc  l                                           ; $5161: $8d
	ld   a, [hl]                                     ; $5162: $7e
	ld   a, [de]                                     ; $5163: $1a
	nop                                              ; $5164: $00
	nop                                              ; $5165: $00
	nop                                              ; $5166: $00
	nop                                              ; $5167: $00
	nop                                              ; $5168: $00
	nop                                              ; $5169: $00
	nop                                              ; $516a: $00
	nop                                              ; $516b: $00
	nop                                              ; $516c: $00
	rst  $38                                         ; $516d: $ff
	ld   a, a                                        ; $516e: $7f
	rst  JumpTable                                         ; $516f: $df
	ld   e, l                                        ; $5170: $5d
	dec  de                                          ; $5171: $1b
	ld   b, c                                        ; $5172: $41
	ld   b, e                                        ; $5173: $43
	db   $10                                         ; $5174: $10
	rst  $38                                         ; $5175: $ff
	ld   a, a                                        ; $5176: $7f
	rst  JumpTable                                         ; $5177: $df
	ld   e, l                                        ; $5178: $5d
	dec  b                                           ; $5179: $05
	add  hl, hl                                      ; $517a: $29
	ld   b, e                                        ; $517b: $43
	db   $10                                         ; $517c: $10
	ld   l, [hl]                                     ; $517d: $6e
	ld   a, a                                        ; $517e: $7f
	rst  $38                                         ; $517f: $ff
	ld   a, a                                        ; $5180: $7f
	dec  b                                           ; $5181: $05
	add  hl, hl                                      ; $5182: $29
	ld   b, e                                        ; $5183: $43
	db   $10                                         ; $5184: $10
	ld   l, [hl]                                     ; $5185: $6e
	ld   a, a                                        ; $5186: $7f
	ld   e, a                                        ; $5187: $5f
	nop                                              ; $5188: $00
	ld   d, d                                        ; $5189: $52
	nop                                              ; $518a: $00
	ld   b, e                                        ; $518b: $43
	db   $10                                         ; $518c: $10
	ld   l, [hl]                                     ; $518d: $6e
	ld   a, a                                        ; $518e: $7f
	ld   e, a                                        ; $518f: $5f
	ld   c, $91                                      ; $5190: $0e $91
	ld   d, h                                        ; $5192: $54
	rst  $38                                         ; $5193: $ff
	ld   a, a                                        ; $5194: $7f
	ld   l, [hl]                                     ; $5195: $6e
	ld   a, a                                        ; $5196: $7f
	rst  JumpTable                                         ; $5197: $df
	ld   e, l                                        ; $5198: $5d
	dec  de                                          ; $5199: $1b
	ld   b, c                                        ; $519a: $41
	ld   b, e                                        ; $519b: $43
	db   $10                                         ; $519c: $10
	ld   l, [hl]                                     ; $519d: $6e
	ld   a, a                                        ; $519e: $7f
	ld   e, a                                        ; $519f: $5f
	ld   c, $05                                      ; $51a0: $0e $05
	add  hl, hl                                      ; $51a2: $29
	ld   b, e                                        ; $51a3: $43
	db   $10                                         ; $51a4: $10
	rst  $38                                         ; $51a5: $ff
	ld   a, a                                        ; $51a6: $7f
	ld   e, a                                        ; $51a7: $5f
	ld   c, $05                                      ; $51a8: $0e $05
	add  hl, hl                                      ; $51aa: $29
	ld   b, e                                        ; $51ab: $43
	db   $10                                         ; $51ac: $10
	rst  $38                                         ; $51ad: $ff
	ld   a, a                                        ; $51ae: $7f
	rst  JumpTable                                         ; $51af: $df
	ld   e, l                                        ; $51b0: $5d
	dec  de                                          ; $51b1: $1b
	ld   b, c                                        ; $51b2: $41
	ld   b, e                                        ; $51b3: $43
	db   $10                                         ; $51b4: $10
	db   $fd                                         ; $51b5: $fd
	ld   d, a                                        ; $51b6: $57
	rst  $38                                         ; $51b7: $ff
	ld   a, a                                        ; $51b8: $7f
	ld   e, a                                        ; $51b9: $5f
	ld   c, $43                                      ; $51ba: $0e $43
	db   $10                                         ; $51bc: $10
	db   $fd                                         ; $51bd: $fd
	ld   d, a                                        ; $51be: $57
	ld   e, a                                        ; $51bf: $5f
	nop                                              ; $51c0: $00
	ld   d, d                                        ; $51c1: $52
	nop                                              ; $51c2: $00
	ld   b, e                                        ; $51c3: $43
	db   $10                                         ; $51c4: $10
	db   $fd                                         ; $51c5: $fd
	ld   d, a                                        ; $51c6: $57
	ld   d, d                                        ; $51c7: $52
	nop                                              ; $51c8: $00
	dec  b                                           ; $51c9: $05
	add  hl, hl                                      ; $51ca: $29
	rst  $38                                         ; $51cb: $ff
	ld   a, a                                        ; $51cc: $7f
	db   $fd                                         ; $51cd: $fd
	ld   d, a                                        ; $51ce: $57
	rst  JumpTable                                         ; $51cf: $df
	ld   e, l                                        ; $51d0: $5d
	dec  b                                           ; $51d1: $05
	add  hl, hl                                      ; $51d2: $29
	ld   b, e                                        ; $51d3: $43
	db   $10                                         ; $51d4: $10
	db   $fd                                         ; $51d5: $fd
	ld   d, a                                        ; $51d6: $57
	sub  c                                           ; $51d7: $91
	ld   d, h                                        ; $51d8: $54
	ld   e, a                                        ; $51d9: $5f
	ld   c, $0b                                      ; $51da: $0e $0b
	inc  a                                           ; $51dc: $3c
	rst  $38                                         ; $51dd: $ff
	ld   a, a                                        ; $51de: $7f
	rst  JumpTable                                         ; $51df: $df
	ld   e, l                                        ; $51e0: $5d
	dec  de                                          ; $51e1: $1b
	ld   b, c                                        ; $51e2: $41
	ld   b, e                                        ; $51e3: $43
	db   $10                                         ; $51e4: $10
	rst  $38                                         ; $51e5: $ff
	ld   a, a                                        ; $51e6: $7f
	rst  JumpTable                                         ; $51e7: $df
	ld   e, l                                        ; $51e8: $5d
	dec  b                                           ; $51e9: $05
	add  hl, hl                                      ; $51ea: $29
	ld   b, e                                        ; $51eb: $43
	db   $10                                         ; $51ec: $10
	and  $7f                                         ; $51ed: $e6 $7f
	ld   e, a                                        ; $51ef: $5f
	nop                                              ; $51f0: $00
	ld   d, d                                        ; $51f1: $52
	nop                                              ; $51f2: $00
	ld   b, e                                        ; $51f3: $43
	db   $10                                         ; $51f4: $10
	and  $7f                                         ; $51f5: $e6 $7f
	rst  $38                                         ; $51f7: $ff
	ld   a, a                                        ; $51f8: $7f
	ld   e, a                                        ; $51f9: $5f
	ld   c, $43                                      ; $51fa: $0e $43
	db   $10                                         ; $51fc: $10
	and  $7f                                         ; $51fd: $e6 $7f
	ld   e, a                                        ; $51ff: $5f
	ld   c, $91                                      ; $5200: $0e $91
	ld   d, h                                        ; $5202: $54
	ld   b, e                                        ; $5203: $43
	db   $10                                         ; $5204: $10
	and  $7f                                         ; $5205: $e6 $7f
	rst  $38                                         ; $5207: $ff
	ld   a, a                                        ; $5208: $7f
	dec  b                                           ; $5209: $05
	add  hl, hl                                      ; $520a: $29
	ld   b, e                                        ; $520b: $43
	db   $10                                         ; $520c: $10
	and  $7f                                         ; $520d: $e6 $7f
	rst  JumpTable                                         ; $520f: $df
	ld   e, l                                        ; $5210: $5d
	rst  $38                                         ; $5211: $ff
	ld   a, a                                        ; $5212: $7f
	ld   b, e                                        ; $5213: $43
	db   $10                                         ; $5214: $10
	rst  $38                                         ; $5215: $ff
	ld   a, a                                        ; $5216: $7f
	rst  JumpTable                                         ; $5217: $df
	ld   e, l                                        ; $5218: $5d
	dec  de                                          ; $5219: $1b
	ld   b, c                                        ; $521a: $41
	ld   b, e                                        ; $521b: $43
	db   $10                                         ; $521c: $10
	rst  $38                                         ; $521d: $ff
	ld   a, a                                        ; $521e: $7f
	rst  JumpTable                                         ; $521f: $df
	ld   e, l                                        ; $5220: $5d
	dec  b                                           ; $5221: $05
	add  hl, hl                                      ; $5222: $29
	ld   b, e                                        ; $5223: $43
	db   $10                                         ; $5224: $10
	call nc, Call_0a4_5f7f                           ; $5225: $d4 $7f $5f
	nop                                              ; $5228: $00
	ld   d, d                                        ; $5229: $52
	nop                                              ; $522a: $00
	ld   b, e                                        ; $522b: $43
	db   $10                                         ; $522c: $10
	call nc, $ff7f                                   ; $522d: $d4 $7f $ff
	ld   a, a                                        ; $5230: $7f
	ld   e, a                                        ; $5231: $5f
	ld   c, $43                                      ; $5232: $0e $43
	db   $10                                         ; $5234: $10
	call nc, $917f                                   ; $5235: $d4 $7f $91
	ld   d, h                                        ; $5238: $54
	ld   hl, sp+$47                                  ; $5239: $f8 $47
	ld   c, l                                        ; $523b: $4d
	ld   a, a                                        ; $523c: $7f
	call nc, $ff7f                                   ; $523d: $d4 $7f $ff
	ld   a, a                                        ; $5240: $7f
	dec  b                                           ; $5241: $05
	add  hl, hl                                      ; $5242: $29
	ld   b, e                                        ; $5243: $43
	db   $10                                         ; $5244: $10
	call nc, $ff7f                                   ; $5245: $d4 $7f $ff
	ld   a, a                                        ; $5248: $7f
	rst  JumpTable                                         ; $5249: $df
	ld   e, l                                        ; $524a: $5d
	ld   b, e                                        ; $524b: $43
	db   $10                                         ; $524c: $10
	rst  $38                                         ; $524d: $ff
	ld   a, a                                        ; $524e: $7f
	ld   e, a                                        ; $524f: $5f
	ld   c, $0b                                      ; $5250: $0e $0b
	ld   c, h                                        ; $5252: $4c
	ld   b, l                                        ; $5253: $45
	db   $10                                         ; $5254: $10
	inc  [hl]                                        ; $5255: $34
	nop                                              ; $5256: $00
	ld   e, a                                        ; $5257: $5f
	ld   c, $0b                                      ; $5258: $0e $0b
	ld   c, h                                        ; $525a: $4c
	ld   b, l                                        ; $525b: $45
	db   $10                                         ; $525c: $10
	rst  $38                                         ; $525d: $ff
	ld   a, a                                        ; $525e: $7f
	ld   e, a                                        ; $525f: $5f
	ld   c, $ed                                      ; $5260: $0e $ed
	db   $10                                         ; $5262: $10
	ld   b, l                                        ; $5263: $45
	db   $10                                         ; $5264: $10
	rst  $38                                         ; $5265: $ff
	ld   a, a                                        ; $5266: $7f
	ld   l, a                                        ; $5267: $6f
	halt                                             ; $5268: $76
	db   $ed                                         ; $5269: $ed
	db   $10                                         ; $526a: $10
	ld   b, l                                        ; $526b: $45
	db   $10                                         ; $526c: $10
	rst  $38                                         ; $526d: $ff
	ld   a, a                                        ; $526e: $7f
	rst  $38                                         ; $526f: $ff
	ld   a, a                                        ; $5270: $7f
	db   $ed                                         ; $5271: $ed
	db   $10                                         ; $5272: $10
	ld   b, l                                        ; $5273: $45
	db   $10                                         ; $5274: $10
	rst  $38                                         ; $5275: $ff
	ld   a, a                                        ; $5276: $7f
	rst  $38                                         ; $5277: $ff
	ld   a, a                                        ; $5278: $7f
	dec  bc                                          ; $5279: $0b
	ld   c, h                                        ; $527a: $4c
	ld   b, l                                        ; $527b: $45
	stop                                             ; $527c: $10 $00
	nop                                              ; $527e: $00
	nop                                              ; $527f: $00
	nop                                              ; $5280: $00
	nop                                              ; $5281: $00
	nop                                              ; $5282: $00
	nop                                              ; $5283: $00
	nop                                              ; $5284: $00
	rst  $38                                         ; $5285: $ff
	ld   a, a                                        ; $5286: $7f
	ld   e, a                                        ; $5287: $5f
	ld   c, $0b                                      ; $5288: $0e $0b
	ld   c, h                                        ; $528a: $4c
	ld   b, l                                        ; $528b: $45
	db   $10                                         ; $528c: $10
	rst  $38                                         ; $528d: $ff
	ld   a, a                                        ; $528e: $7f
	ld   e, a                                        ; $528f: $5f
	ld   c, $ed                                      ; $5290: $0e $ed
	db   $10                                         ; $5292: $10
	ld   b, l                                        ; $5293: $45
	db   $10                                         ; $5294: $10
	rst  $38                                         ; $5295: $ff
	ld   a, a                                        ; $5296: $7f
	ld   e, a                                        ; $5297: $5f
	ld   c, $ed                                      ; $5298: $0e $ed
	db   $10                                         ; $529a: $10
	ld   b, l                                        ; $529b: $45
	db   $10                                         ; $529c: $10
	rst  $38                                         ; $529d: $ff
	ld   a, a                                        ; $529e: $7f
	ld   l, a                                        ; $529f: $6f
	halt                                             ; $52a0: $76
	db   $ed                                         ; $52a1: $ed
	db   $10                                         ; $52a2: $10
	ld   b, l                                        ; $52a3: $45
	db   $10                                         ; $52a4: $10
	rst  $38                                         ; $52a5: $ff
	ld   a, a                                        ; $52a6: $7f
	rst  $38                                         ; $52a7: $ff
	ld   a, a                                        ; $52a8: $7f
	db   $ed                                         ; $52a9: $ed
	db   $10                                         ; $52aa: $10
	ld   b, l                                        ; $52ab: $45
	db   $10                                         ; $52ac: $10
	rst  $38                                         ; $52ad: $ff
	ld   a, a                                        ; $52ae: $7f
	rst  $38                                         ; $52af: $ff
	ld   a, a                                        ; $52b0: $7f
	dec  bc                                          ; $52b1: $0b
	ld   c, h                                        ; $52b2: $4c
	ld   b, l                                        ; $52b3: $45
	db   $10                                         ; $52b4: $10
	rst  $38                                         ; $52b5: $ff
	ld   a, a                                        ; $52b6: $7f
	cp   a                                           ; $52b7: $bf
	inc  bc                                          ; $52b8: $03
	inc  [hl]                                        ; $52b9: $34
	nop                                              ; $52ba: $00
	ld   b, l                                        ; $52bb: $45
	db   $10                                         ; $52bc: $10
	rst  $38                                         ; $52bd: $ff
	ld   a, a                                        ; $52be: $7f
	ld   e, a                                        ; $52bf: $5f
	ld   c, $0b                                      ; $52c0: $0e $0b
	ld   c, h                                        ; $52c2: $4c
	ld   b, l                                        ; $52c3: $45
	db   $10                                         ; $52c4: $10
	rst  $38                                         ; $52c5: $ff
	ld   a, a                                        ; $52c6: $7f
	ld   e, a                                        ; $52c7: $5f
	ld   c, $ed                                      ; $52c8: $0e $ed
	db   $10                                         ; $52ca: $10
	ld   b, l                                        ; $52cb: $45
	db   $10                                         ; $52cc: $10
	rst  $38                                         ; $52cd: $ff
	ld   a, a                                        ; $52ce: $7f
	ld   e, a                                        ; $52cf: $5f
	ld   c, $ed                                      ; $52d0: $0e $ed
	db   $10                                         ; $52d2: $10
	ld   b, l                                        ; $52d3: $45
	db   $10                                         ; $52d4: $10
	rst  $38                                         ; $52d5: $ff
	ld   a, a                                        ; $52d6: $7f
	ld   l, a                                        ; $52d7: $6f
	halt                                             ; $52d8: $76
	db   $ed                                         ; $52d9: $ed
	db   $10                                         ; $52da: $10
	ld   b, l                                        ; $52db: $45
	db   $10                                         ; $52dc: $10
	rst  $38                                         ; $52dd: $ff
	ld   a, a                                        ; $52de: $7f
	rst  $38                                         ; $52df: $ff
	ld   a, a                                        ; $52e0: $7f
	db   $ed                                         ; $52e1: $ed
	db   $10                                         ; $52e2: $10
	ld   b, l                                        ; $52e3: $45
	db   $10                                         ; $52e4: $10
	rst  $38                                         ; $52e5: $ff
	ld   a, a                                        ; $52e6: $7f
	rst  $38                                         ; $52e7: $ff
	ld   a, a                                        ; $52e8: $7f
	dec  bc                                          ; $52e9: $0b
	ld   c, h                                        ; $52ea: $4c
	ld   b, l                                        ; $52eb: $45
	db   $10                                         ; $52ec: $10
	rst  $38                                         ; $52ed: $ff
	ld   a, a                                        ; $52ee: $7f
	cp   a                                           ; $52ef: $bf
	inc  bc                                          ; $52f0: $03
	inc  [hl]                                        ; $52f1: $34
	nop                                              ; $52f2: $00
	ld   b, l                                        ; $52f3: $45
	db   $10                                         ; $52f4: $10
	rst  $38                                         ; $52f5: $ff
	ld   a, a                                        ; $52f6: $7f
	ld   e, a                                        ; $52f7: $5f
	ld   c, $0b                                      ; $52f8: $0e $0b
	ld   c, h                                        ; $52fa: $4c
	ld   b, l                                        ; $52fb: $45
	db   $10                                         ; $52fc: $10
	cp   a                                           ; $52fd: $bf
	inc  bc                                          ; $52fe: $03
	ld   e, a                                        ; $52ff: $5f
	ld   c, $34                                      ; $5300: $0e $34
	nop                                              ; $5302: $00
	ld   b, l                                        ; $5303: $45
	db   $10                                         ; $5304: $10
	rst  $38                                         ; $5305: $ff
	ld   a, a                                        ; $5306: $7f
	ld   e, a                                        ; $5307: $5f
	ld   c, $ed                                      ; $5308: $0e $ed
	db   $10                                         ; $530a: $10
	ld   b, l                                        ; $530b: $45
	db   $10                                         ; $530c: $10
	rst  $38                                         ; $530d: $ff
	ld   a, a                                        ; $530e: $7f
	ld   l, a                                        ; $530f: $6f
	halt                                             ; $5310: $76
	db   $ed                                         ; $5311: $ed
	db   $10                                         ; $5312: $10
	ld   b, l                                        ; $5313: $45
	db   $10                                         ; $5314: $10
	rst  $38                                         ; $5315: $ff
	ld   a, a                                        ; $5316: $7f
	rst  $38                                         ; $5317: $ff
	ld   a, a                                        ; $5318: $7f
	db   $ed                                         ; $5319: $ed
	db   $10                                         ; $531a: $10
	ld   b, l                                        ; $531b: $45
	db   $10                                         ; $531c: $10
	rst  $38                                         ; $531d: $ff
	ld   a, a                                        ; $531e: $7f
	ld   e, a                                        ; $531f: $5f
	ld   c, $ff                                      ; $5320: $0e $ff
	ld   a, a                                        ; $5322: $7f
	ld   b, l                                        ; $5323: $45
	db   $10                                         ; $5324: $10
	rst  $38                                         ; $5325: $ff
	ld   a, a                                        ; $5326: $7f
	cp   a                                           ; $5327: $bf
	inc  bc                                          ; $5328: $03
	dec  bc                                          ; $5329: $0b
	ld   c, h                                        ; $532a: $4c
	ld   b, l                                        ; $532b: $45
	db   $10                                         ; $532c: $10
	ld   e, a                                        ; $532d: $5f
	ld   c, $ff                                      ; $532e: $0e $ff
	inc  sp                                          ; $5330: $33
	rst  $30                                         ; $5331: $f7
	ld   a, [de]                                     ; $5332: $1a
	and  [hl]                                        ; $5333: $a6
	ld   [$7fff], sp                                 ; $5334: $08 $ff $7f
	ret  nc                                          ; $5337: $d0

	ld   sp, $1d2b                                   ; $5338: $31 $2b $1d
	and  [hl]                                        ; $533b: $a6
	ld   [$7f0f], sp                                 ; $533c: $08 $0f $7f
	ret  nc                                          ; $533f: $d0

	ld   sp, $1d2b                                   ; $5340: $31 $2b $1d
	and  [hl]                                        ; $5343: $a6
	ld   [$7f0f], sp                                 ; $5344: $08 $0f $7f
	rst  $38                                         ; $5347: $ff
	inc  sp                                          ; $5348: $33
	rst  $30                                         ; $5349: $f7
	ld   a, [de]                                     ; $534a: $1a
	and  [hl]                                        ; $534b: $a6
	ld   [$7f0f], sp                                 ; $534c: $08 $0f $7f
	dec  hl                                          ; $534f: $2b
	dec  e                                           ; $5350: $1d
	rst  $30                                         ; $5351: $f7
	ld   a, [de]                                     ; $5352: $1a
	and  [hl]                                        ; $5353: $a6
	ld   [$7f0f], sp                                 ; $5354: $08 $0f $7f
	ret  nc                                          ; $5357: $d0

	inc  d                                           ; $5358: $14
	nop                                              ; $5359: $00
	nop                                              ; $535a: $00
	and  [hl]                                        ; $535b: $a6
	ld   [$7f0f], sp                                 ; $535c: $08 $0f $7f
	rst  $38                                         ; $535f: $ff
	ld   a, a                                        ; $5360: $7f
	ld   e, a                                        ; $5361: $5f
	ld   c, $a6                                      ; $5362: $0e $a6
	ld   [$0e5f], sp                                 ; $5364: $08 $5f $0e
	ret  nc                                          ; $5367: $d0

	ld   sp, $1d2b                                   ; $5368: $31 $2b $1d
	and  [hl]                                        ; $536b: $a6
	ld   [$7fff], sp                                 ; $536c: $08 $ff $7f
	rst  $38                                         ; $536f: $ff
	inc  sp                                          ; $5370: $33
	rst  $30                                         ; $5371: $f7
	ld   a, [de]                                     ; $5372: $1a
	and  [hl]                                        ; $5373: $a6
	ld   [$7fe9], sp                                 ; $5374: $08 $e9 $7f
	rst  $30                                         ; $5377: $f7
	ld   a, [de]                                     ; $5378: $1a
	rst  $38                                         ; $5379: $ff
	ld   a, a                                        ; $537a: $7f
	and  [hl]                                        ; $537b: $a6
	ld   [$7fe9], sp                                 ; $537c: $08 $e9 $7f
	pop  af                                          ; $537f: $f1
	db   $10                                         ; $5380: $10
	dec  hl                                          ; $5381: $2b
	dec  e                                           ; $5382: $1d
	and  [hl]                                        ; $5383: $a6
	ld   [$7fe9], sp                                 ; $5384: $08 $e9 $7f
	ret  nc                                          ; $5387: $d0

	ld   sp, $1d2b                                   ; $5388: $31 $2b $1d
	and  [hl]                                        ; $538b: $a6
	ld   [$7fe9], sp                                 ; $538c: $08 $e9 $7f
	rst  $38                                         ; $538f: $ff
	ld   a, a                                        ; $5390: $7f
	ld   e, a                                        ; $5391: $5f
	ld   c, $a6                                      ; $5392: $0e $a6
	ld   [$7fe9], sp                                 ; $5394: $08 $e9 $7f
	rst  $38                                         ; $5397: $ff
	inc  sp                                          ; $5398: $33
	rst  $30                                         ; $5399: $f7
	ld   a, [de]                                     ; $539a: $1a
	and  [hl]                                        ; $539b: $a6
	ld   [$0e5f], sp                                 ; $539c: $08 $5f $0e
	ret  nc                                          ; $539f: $d0

	ld   sp, $1d2b                                   ; $53a0: $31 $2b $1d
	and  [hl]                                        ; $53a3: $a6
	ld   [$0e5f], sp                                 ; $53a4: $08 $5f $0e
	rst  $30                                         ; $53a7: $f7
	ld   a, [de]                                     ; $53a8: $1a
	rst  $38                                         ; $53a9: $ff
	inc  sp                                          ; $53aa: $33
	and  [hl]                                        ; $53ab: $a6
	ld   [$7fec], sp                                 ; $53ac: $08 $ec $7f
	ld   e, a                                        ; $53af: $5f
	ld   c, $ff                                      ; $53b0: $0e $ff
	ld   a, a                                        ; $53b2: $7f
	and  [hl]                                        ; $53b3: $a6
	ld   [$7fec], sp                                 ; $53b4: $08 $ec $7f
	rst  $30                                         ; $53b7: $f7
	ld   a, [de]                                     ; $53b8: $1a
	rst  $38                                         ; $53b9: $ff
	inc  sp                                          ; $53ba: $33
	and  [hl]                                        ; $53bb: $a6
	ld   [$7fec], sp                                 ; $53bc: $08 $ec $7f
	cp   a                                           ; $53bf: $bf
	ld   l, e                                        ; $53c0: $6b
	pop  af                                          ; $53c1: $f1
	db   $10                                         ; $53c2: $10
	and  [hl]                                        ; $53c3: $a6
	ld   [$7fec], sp                                 ; $53c4: $08 $ec $7f
	ret  nc                                          ; $53c7: $d0

	ld   sp, $1d2b                                   ; $53c8: $31 $2b $1d
	and  [hl]                                        ; $53cb: $a6
	ld   [rRAMG], sp                                 ; $53cc: $08 $00 $00
	nop                                              ; $53cf: $00
	nop                                              ; $53d0: $00
	nop                                              ; $53d1: $00
	nop                                              ; $53d2: $00
	nop                                              ; $53d3: $00
	nop                                              ; $53d4: $00
	rst  $38                                         ; $53d5: $ff
	ld   a, a                                        ; $53d6: $7f
	ld   e, a                                        ; $53d7: $5f
	ld   c, $79                                      ; $53d8: $0e $79
	inc  b                                           ; $53da: $04
	and  [hl]                                        ; $53db: $a6
	ld   [$7fff], sp                                 ; $53dc: $08 $ff $7f
	rst  $38                                         ; $53df: $ff
	ccf                                              ; $53e0: $3f
	rst  $30                                         ; $53e1: $f7
	ld   h, $a6                                      ; $53e2: $26 $a6
	ld   [$7f52], sp                                 ; $53e4: $08 $52 $7f
	rst  $38                                         ; $53e7: $ff
	ld   a, a                                        ; $53e8: $7f
	ld   a, c                                        ; $53e9: $79
	inc  b                                           ; $53ea: $04
	and  [hl]                                        ; $53eb: $a6
	ld   [$7f52], sp                                 ; $53ec: $08 $52 $7f
	rst  $38                                         ; $53ef: $ff
	ld   a, a                                        ; $53f0: $7f
	ld   e, a                                        ; $53f1: $5f
	ld   c, $a6                                      ; $53f2: $0e $a6
	ld   [$7f52], sp                                 ; $53f4: $08 $52 $7f
	rst  $38                                         ; $53f7: $ff
	ccf                                              ; $53f8: $3f
	rst  $30                                         ; $53f9: $f7
	ld   h, $a6                                      ; $53fa: $26 $a6
	ld   [$7f52], sp                                 ; $53fc: $08 $52 $7f
	rst  $38                                         ; $53ff: $ff
	ld   a, a                                        ; $5400: $7f
	rst  $38                                         ; $5401: $ff
	ccf                                              ; $5402: $3f
	and  [hl]                                        ; $5403: $a6
	ld   [$7f52], sp                                 ; $5404: $08 $52 $7f
	ld   e, a                                        ; $5407: $5f
	ld   c, $79                                      ; $5408: $0e $79
	inc  b                                           ; $540a: $04
	and  [hl]                                        ; $540b: $a6
	ld   [$7fff], sp                                 ; $540c: $08 $ff $7f
	ld   e, a                                        ; $540f: $5f
	ld   c, $79                                      ; $5410: $0e $79
	inc  b                                           ; $5412: $04
	and  [hl]                                        ; $5413: $a6
	ld   [$7fff], sp                                 ; $5414: $08 $ff $7f
	rst  $38                                         ; $5417: $ff
	ccf                                              ; $5418: $3f
	rst  $30                                         ; $5419: $f7
	ld   h, $a6                                      ; $541a: $26 $a6
	ld   [$7f52], sp                                 ; $541c: $08 $52 $7f
	rst  $38                                         ; $541f: $ff
	ld   a, a                                        ; $5420: $7f
	ld   a, c                                        ; $5421: $79
	inc  b                                           ; $5422: $04
	and  [hl]                                        ; $5423: $a6
	ld   [$7f52], sp                                 ; $5424: $08 $52 $7f
	rst  $38                                         ; $5427: $ff
	ld   a, a                                        ; $5428: $7f
	ld   e, a                                        ; $5429: $5f
	ld   c, $a6                                      ; $542a: $0e $a6
	ld   [$7f52], sp                                 ; $542c: $08 $52 $7f
	rst  $38                                         ; $542f: $ff
	ccf                                              ; $5430: $3f
	rst  $30                                         ; $5431: $f7
	ld   h, $a6                                      ; $5432: $26 $a6
	ld   [$7f52], sp                                 ; $5434: $08 $52 $7f
	rst  $38                                         ; $5437: $ff
	ld   a, a                                        ; $5438: $7f
	rst  $38                                         ; $5439: $ff
	ccf                                              ; $543a: $3f
	and  [hl]                                        ; $543b: $a6
	ld   [$7f52], sp                                 ; $543c: $08 $52 $7f
	ld   e, a                                        ; $543f: $5f
	ld   c, $79                                      ; $5440: $0e $79
	inc  b                                           ; $5442: $04
	and  [hl]                                        ; $5443: $a6
	ld   [$7fff], sp                                 ; $5444: $08 $ff $7f
	ld   e, a                                        ; $5447: $5f
	ld   c, $79                                      ; $5448: $0e $79
	inc  b                                           ; $544a: $04
	and  [hl]                                        ; $544b: $a6
	ld   [$7fff], sp                                 ; $544c: $08 $ff $7f
	rst  $38                                         ; $544f: $ff
	ccf                                              ; $5450: $3f
	rst  $30                                         ; $5451: $f7
	ld   h, $a6                                      ; $5452: $26 $a6
	ld   [rRAMG], sp                                 ; $5454: $08 $00 $00
	rst  $38                                         ; $5457: $ff
	ccf                                              ; $5458: $3f
	ld   a, c                                        ; $5459: $79
	inc  b                                           ; $545a: $04
	and  [hl]                                        ; $545b: $a6
	ld   [rRAMG], sp                                 ; $545c: $08 $00 $00
	rst  $38                                         ; $545f: $ff
	ccf                                              ; $5460: $3f
	rst  $30                                         ; $5461: $f7
	ld   h, $a6                                      ; $5462: $26 $a6
	ld   [rRAMG], sp                                 ; $5464: $08 $00 $00
	rst  $38                                         ; $5467: $ff
	ccf                                              ; $5468: $3f
	ld   e, a                                        ; $5469: $5f
	ld   c, $a6                                      ; $546a: $0e $a6
	ld   [rRAMG], sp                                 ; $546c: $08 $00 $00
	rst  $30                                         ; $546f: $f7
	ld   h, $5f                                      ; $5470: $26 $5f
	ld   c, $a6                                      ; $5472: $0e $a6
	ld   [rRAMG], sp                                 ; $5474: $08 $00 $00
	ld   e, a                                        ; $5477: $5f
	ld   c, $79                                      ; $5478: $0e $79
	inc  b                                           ; $547a: $04
	and  [hl]                                        ; $547b: $a6
	ld   [$7fff], sp                                 ; $547c: $08 $ff $7f
	ld   e, a                                        ; $547f: $5f
	nop                                              ; $5480: $00
	rst  $38                                         ; $5481: $ff
	inc  bc                                          ; $5482: $03
	and  [hl]                                        ; $5483: $a6
	ld   [$7fff], sp                                 ; $5484: $08 $ff $7f
	ld   e, a                                        ; $5487: $5f
	ld   c, $0b                                      ; $5488: $0e $0b
	dec  l                                           ; $548a: $2d
	and  [hl]                                        ; $548b: $a6
	ld   [$7fff], sp                                 ; $548c: $08 $ff $7f
	ld   e, a                                        ; $548f: $5f
	ld   c, $0b                                      ; $5490: $0e $0b
	dec  l                                           ; $5492: $2d
	and  [hl]                                        ; $5493: $a6
	ld   [$7fff], sp                                 ; $5494: $08 $ff $7f
	rst  $38                                         ; $5497: $ff
	ld   a, a                                        ; $5498: $7f
	dec  bc                                          ; $5499: $0b
	dec  l                                           ; $549a: $2d
	and  [hl]                                        ; $549b: $a6
	ld   [$7fff], sp                                 ; $549c: $08 $ff $7f
	ld   e, a                                        ; $549f: $5f
	nop                                              ; $54a0: $00
	dec  bc                                          ; $54a1: $0b
	dec  l                                           ; $54a2: $2d
	and  [hl]                                        ; $54a3: $a6
	ld   [$7fff], sp                                 ; $54a4: $08 $ff $7f
	ld   e, a                                        ; $54a7: $5f
	ld   c, $ff                                      ; $54a8: $0e $ff
	ld   a, a                                        ; $54aa: $7f
	and  [hl]                                        ; $54ab: $a6
	ld   [$7fff], sp                                 ; $54ac: $08 $ff $7f
	ld   e, a                                        ; $54af: $5f
	nop                                              ; $54b0: $00
	rst  $38                                         ; $54b1: $ff
	inc  bc                                          ; $54b2: $03
	and  [hl]                                        ; $54b3: $a6
	ld   [$7fff], sp                                 ; $54b4: $08 $ff $7f
	ld   e, a                                        ; $54b7: $5f
	nop                                              ; $54b8: $00
	rst  $38                                         ; $54b9: $ff
	inc  bc                                          ; $54ba: $03
	and  [hl]                                        ; $54bb: $a6
	ld   [$7fff], sp                                 ; $54bc: $08 $ff $7f
	ld   e, a                                        ; $54bf: $5f
	ld   c, $0b                                      ; $54c0: $0e $0b
	dec  l                                           ; $54c2: $2d
	and  [hl]                                        ; $54c3: $a6
	ld   [$7fff], sp                                 ; $54c4: $08 $ff $7f
	ld   e, a                                        ; $54c7: $5f
	ld   c, $0b                                      ; $54c8: $0e $0b
	dec  l                                           ; $54ca: $2d
	and  [hl]                                        ; $54cb: $a6
	ld   [$7fff], sp                                 ; $54cc: $08 $ff $7f
	rst  $38                                         ; $54cf: $ff
	ld   a, a                                        ; $54d0: $7f
	dec  bc                                          ; $54d1: $0b
	dec  l                                           ; $54d2: $2d
	and  [hl]                                        ; $54d3: $a6
	ld   [$7fff], sp                                 ; $54d4: $08 $ff $7f
	ld   e, a                                        ; $54d7: $5f
	nop                                              ; $54d8: $00
	dec  bc                                          ; $54d9: $0b
	dec  l                                           ; $54da: $2d
	and  [hl]                                        ; $54db: $a6
	ld   [$7fff], sp                                 ; $54dc: $08 $ff $7f
	ld   e, a                                        ; $54df: $5f
	ld   c, $ff                                      ; $54e0: $0e $ff
	ld   a, a                                        ; $54e2: $7f
	and  [hl]                                        ; $54e3: $a6
	ld   [$7fff], sp                                 ; $54e4: $08 $ff $7f
	ld   e, a                                        ; $54e7: $5f
	nop                                              ; $54e8: $00
	rst  $38                                         ; $54e9: $ff
	inc  bc                                          ; $54ea: $03
	and  [hl]                                        ; $54eb: $a6
	ld   [$7fff], sp                                 ; $54ec: $08 $ff $7f
	ld   e, a                                        ; $54ef: $5f
	nop                                              ; $54f0: $00
	dec  bc                                          ; $54f1: $0b
	dec  l                                           ; $54f2: $2d
	and  [hl]                                        ; $54f3: $a6
	ld   [$7fff], sp                                 ; $54f4: $08 $ff $7f
	ld   e, a                                        ; $54f7: $5f
	ld   c, $e6                                      ; $54f8: $0e $e6
	ld   bc, $08a6                                   ; $54fa: $01 $a6 $08
	rst  $38                                         ; $54fd: $ff
	ld   a, a                                        ; $54fe: $7f
	ld   e, a                                        ; $54ff: $5f
	ld   c, $0b                                      ; $5500: $0e $0b
	dec  l                                           ; $5502: $2d
	and  [hl]                                        ; $5503: $a6
	ld   [$7fff], sp                                 ; $5504: $08 $ff $7f
	rst  $38                                         ; $5507: $ff
	ld   a, a                                        ; $5508: $7f
	dec  bc                                          ; $5509: $0b
	dec  l                                           ; $550a: $2d
	and  [hl]                                        ; $550b: $a6
	ld   [$7fff], sp                                 ; $550c: $08 $ff $7f
	ld   e, a                                        ; $550f: $5f
	nop                                              ; $5510: $00
	dec  bc                                          ; $5511: $0b
	dec  l                                           ; $5512: $2d
	and  [hl]                                        ; $5513: $a6
	ld   [$7fff], sp                                 ; $5514: $08 $ff $7f
	ld   e, a                                        ; $5517: $5f
	ld   c, $ff                                      ; $5518: $0e $ff
	ld   a, a                                        ; $551a: $7f
	and  [hl]                                        ; $551b: $a6
	ld   [$7fff], sp                                 ; $551c: $08 $ff $7f
	ld   e, a                                        ; $551f: $5f
	ld   c, $ff                                      ; $5520: $0e $ff
	inc  bc                                          ; $5522: $03
	and  [hl]                                        ; $5523: $a6
	ld   [$7fff], sp                                 ; $5524: $08 $ff $7f
	ld   e, a                                        ; $5527: $5f
	ld   c, $0b                                      ; $5528: $0e $0b
	dec  l                                           ; $552a: $2d
	and  [hl]                                        ; $552b: $a6
	ld   [$7fff], sp                                 ; $552c: $08 $ff $7f
	ld   e, a                                        ; $552f: $5f
	ld   c, $5f                                      ; $5530: $0e $5f
	nop                                              ; $5532: $00
	and  [hl]                                        ; $5533: $a6
	ld   [$7fff], sp                                 ; $5534: $08 $ff $7f
	ld   e, a                                        ; $5537: $5f
	ld   c, $0b                                      ; $5538: $0e $0b
	dec  l                                           ; $553a: $2d
	and  [hl]                                        ; $553b: $a6
	ld   [$7fff], sp                                 ; $553c: $08 $ff $7f
	rst  $38                                         ; $553f: $ff
	ld   a, a                                        ; $5540: $7f
	dec  bc                                          ; $5541: $0b
	dec  l                                           ; $5542: $2d
	and  [hl]                                        ; $5543: $a6
	ld   [$7fff], sp                                 ; $5544: $08 $ff $7f
	ld   e, a                                        ; $5547: $5f
	ld   c, $5f                                      ; $5548: $0e $5f
	nop                                              ; $554a: $00
	and  [hl]                                        ; $554b: $a6
	ld   [$7fff], sp                                 ; $554c: $08 $ff $7f
	ld   e, a                                        ; $554f: $5f
	ld   c, $ff                                      ; $5550: $0e $ff
	ld   a, a                                        ; $5552: $7f
	and  [hl]                                        ; $5553: $a6
	ld   [$7fff], sp                                 ; $5554: $08 $ff $7f
	rst  $38                                         ; $5557: $ff
	inc  bc                                          ; $5558: $03
	dec  bc                                          ; $5559: $0b
	dec  l                                           ; $555a: $2d
	and  [hl]                                        ; $555b: $a6
	ld   [$7fff], sp                                 ; $555c: $08 $ff $7f
	ld   e, a                                        ; $555f: $5f
	ld   c, $eb                                      ; $5560: $0e $eb
	inc  bc                                          ; $5562: $03
	and  [hl]                                        ; $5563: $a6
	ld   [$7fff], sp                                 ; $5564: $08 $ff $7f
	ld   e, a                                        ; $5567: $5f
	ld   c, $7f                                      ; $5568: $0e $7f
	rrca                                             ; $556a: $0f
	and  [hl]                                        ; $556b: $a6
	ld   [$7ad1], sp                                 ; $556c: $08 $d1 $7a
	rst  $38                                         ; $556f: $ff
	ld   a, a                                        ; $5570: $7f
	db   $dd                                         ; $5571: $dd
	add  hl, sp                                      ; $5572: $39
	and  [hl]                                        ; $5573: $a6
	ld   [$7ad1], sp                                 ; $5574: $08 $d1 $7a
	rst  $38                                         ; $5577: $ff
	ld   a, a                                        ; $5578: $7f
	ld   a, a                                        ; $5579: $7f
	rrca                                             ; $557a: $0f
	halt                                             ; $557b: $76
	ld   a, a                                        ; $557c: $7f
	pop  de                                          ; $557d: $d1
	ld   a, d                                        ; $557e: $7a
	rst  $38                                         ; $557f: $ff
	ld   a, a                                        ; $5580: $7f
	db   $eb                                         ; $5581: $eb
	inc  bc                                          ; $5582: $03
	and  [hl]                                        ; $5583: $a6
	ld   [$7ad1], sp                                 ; $5584: $08 $d1 $7a
	rst  $38                                         ; $5587: $ff
	ld   a, a                                        ; $5588: $7f
	ld   e, a                                        ; $5589: $5f
	ld   c, $a6                                      ; $558a: $0e $a6
	ld   [$7ad1], sp                                 ; $558c: $08 $d1 $7a
	or   $10                                         ; $558f: $f6 $10
	ld   a, a                                        ; $5591: $7f
	rrca                                             ; $5592: $0f
	and  [hl]                                        ; $5593: $a6
	ld   [$7fff], sp                                 ; $5594: $08 $ff $7f
	ld   e, a                                        ; $5597: $5f
	ld   c, $eb                                      ; $5598: $0e $eb
	inc  bc                                          ; $559a: $03
	and  [hl]                                        ; $559b: $a6
	ld   [$7fff], sp                                 ; $559c: $08 $ff $7f
	ld   e, a                                        ; $559f: $5f
	ld   c, $7f                                      ; $55a0: $0e $7f
	rrca                                             ; $55a2: $0f
	and  [hl]                                        ; $55a3: $a6
	ld   [$7e92], sp                                 ; $55a4: $08 $92 $7e
	ld   e, a                                        ; $55a7: $5f
	ld   c, $ff                                      ; $55a8: $0e $ff
	ld   a, a                                        ; $55aa: $7f
	and  [hl]                                        ; $55ab: $a6
	ld   [$7e92], sp                                 ; $55ac: $08 $92 $7e
	db   $dd                                         ; $55af: $dd
	add  hl, sp                                      ; $55b0: $39
	rst  $38                                         ; $55b1: $ff
	ld   a, a                                        ; $55b2: $7f
	and  [hl]                                        ; $55b3: $a6
	ld   [$7e92], sp                                 ; $55b4: $08 $92 $7e
	ld   e, a                                        ; $55b7: $5f
	ld   c, $f6                                      ; $55b8: $0e $f6
	db   $10                                         ; $55ba: $10
	and  [hl]                                        ; $55bb: $a6
	ld   [$7e92], sp                                 ; $55bc: $08 $92 $7e
	rst  $38                                         ; $55bf: $ff
	ld   a, a                                        ; $55c0: $7f
	db   $eb                                         ; $55c1: $eb
	inc  bc                                          ; $55c2: $03
	and  [hl]                                        ; $55c3: $a6
	ld   [$7e92], sp                                 ; $55c4: $08 $92 $7e
	ld   e, a                                        ; $55c7: $5f
	ld   c, $7f                                      ; $55c8: $0e $7f
	rrca                                             ; $55ca: $0f
	and  [hl]                                        ; $55cb: $a6
	ld   [rRAMG], sp                                 ; $55cc: $08 $00 $00
	nop                                              ; $55cf: $00
	nop                                              ; $55d0: $00
	nop                                              ; $55d1: $00
	nop                                              ; $55d2: $00
	nop                                              ; $55d3: $00
	nop                                              ; $55d4: $00
	rst  $38                                         ; $55d5: $ff
	ld   a, a                                        ; $55d6: $7f
	ld   e, a                                        ; $55d7: $5f
	ld   c, $eb                                      ; $55d8: $0e $eb
	inc  bc                                          ; $55da: $03
	and  [hl]                                        ; $55db: $a6
	ld   [$7fcd], sp                                 ; $55dc: $08 $cd $7f
	ld   e, a                                        ; $55df: $5f
	ld   c, $f6                                      ; $55e0: $0e $f6
	db   $10                                         ; $55e2: $10
	and  [hl]                                        ; $55e3: $a6
	ld   [$7fcd], sp                                 ; $55e4: $08 $cd $7f
	nop                                              ; $55e7: $00
	nop                                              ; $55e8: $00
	nop                                              ; $55e9: $00
	nop                                              ; $55ea: $00
	add  hl, bc                                      ; $55eb: $09
	ld   bc, $7fcd                                   ; $55ec: $01 $cd $7f
	ld   [hl], l                                     ; $55ef: $75
	ld   bc, $1afe                                   ; $55f0: $01 $fe $1a
	ld   c, h                                        ; $55f3: $4c
	nop                                              ; $55f4: $00
	call $ff7f                                       ; $55f5: $cd $7f $ff
	ld   a, a                                        ; $55f8: $7f
	or   $10                                         ; $55f9: $f6 $10
	inc  c                                           ; $55fb: $0c
	ld   b, [hl]                                     ; $55fc: $46
	call Call_0a4_5f7f                               ; $55fd: $cd $7f $5f
	ld   c, $eb                                      ; $5600: $0e $eb
	inc  bc                                          ; $5602: $03
	and  [hl]                                        ; $5603: $a6
	ld   [$7fff], sp                                 ; $5604: $08 $ff $7f
	and  c                                           ; $5607: $a1
	ld   [bc], a                                     ; $5608: $02
	db   $eb                                         ; $5609: $eb
	inc  bc                                          ; $560a: $03
	and  [hl]                                        ; $560b: $a6
	ld   [$7fff], sp                                 ; $560c: $08 $ff $7f
	ld   e, a                                        ; $560f: $5f
	ld   c, $7f                                      ; $5610: $0e $7f
	rrca                                             ; $5612: $0f
	and  [hl]                                        ; $5613: $a6
	ld   [$6ace], sp                                 ; $5614: $08 $ce $6a
	rst  $38                                         ; $5617: $ff
	ld   a, a                                        ; $5618: $7f
	db   $dd                                         ; $5619: $dd
	add  hl, sp                                      ; $561a: $39
	and  [hl]                                        ; $561b: $a6
	ld   [$6ace], sp                                 ; $561c: $08 $ce $6a
	rst  $38                                         ; $561f: $ff
	ld   a, a                                        ; $5620: $7f
	ld   a, a                                        ; $5621: $7f
	rrca                                             ; $5622: $0f
	and  [hl]                                        ; $5623: $a6
	ld   [$6ace], sp                                 ; $5624: $08 $ce $6a
	rst  $38                                         ; $5627: $ff
	ld   a, a                                        ; $5628: $7f
	ld   e, a                                        ; $5629: $5f
	ld   c, $a6                                      ; $562a: $0e $a6
	ld   [$6ace], sp                                 ; $562c: $08 $ce $6a
	ld   e, a                                        ; $562f: $5f
	ld   c, $7f                                      ; $5630: $0e $7f
	rrca                                             ; $5632: $0f
	and  [hl]                                        ; $5633: $a6
	ld   [$6ace], sp                                 ; $5634: $08 $ce $6a
	and  c                                           ; $5637: $a1
	ld   [bc], a                                     ; $5638: $02
	db   $eb                                         ; $5639: $eb
	inc  bc                                          ; $563a: $03
	and  [hl]                                        ; $563b: $a6
	ld   [$7fff], sp                                 ; $563c: $08 $ff $7f
	ld   e, a                                        ; $563f: $5f
	ld   c, $df                                      ; $5640: $0e $df
	ld   e, l                                        ; $5642: $5d
	ld   b, e                                        ; $5643: $43
	db   $10                                         ; $5644: $10
	rst  $38                                         ; $5645: $ff
	ld   a, a                                        ; $5646: $7f
	call $1b38                                       ; $5647: $cd $38 $1b
	ld   b, c                                        ; $564a: $41
	ld   b, e                                        ; $564b: $43
	db   $10                                         ; $564c: $10
	rst  $38                                         ; $564d: $ff
	ld   a, a                                        ; $564e: $7f
	ld   e, a                                        ; $564f: $5f
	ld   c, $05                                      ; $5650: $0e $05
	add  hl, hl                                      ; $5652: $29
	ld   b, e                                        ; $5653: $43
	db   $10                                         ; $5654: $10
	rst  $38                                         ; $5655: $ff
	ld   a, a                                        ; $5656: $7f
	ld   e, a                                        ; $5657: $5f
	nop                                              ; $5658: $00
	dec  b                                           ; $5659: $05
	add  hl, hl                                      ; $565a: $29
	ld   b, e                                        ; $565b: $43
	db   $10                                         ; $565c: $10
	rst  $38                                         ; $565d: $ff
	ld   a, a                                        ; $565e: $7f
	call $df38                                       ; $565f: $cd $38 $df
	ld   e, l                                        ; $5662: $5d
	ld   b, e                                        ; $5663: $43
	db   $10                                         ; $5664: $10
	rst  $38                                         ; $5665: $ff
	ld   a, a                                        ; $5666: $7f
	ld   e, a                                        ; $5667: $5f
	nop                                              ; $5668: $00
	rst  $38                                         ; $5669: $ff
	ld   a, a                                        ; $566a: $7f
	ld   b, e                                        ; $566b: $43
	db   $10                                         ; $566c: $10
	rst  $38                                         ; $566d: $ff
	ld   a, a                                        ; $566e: $7f
	rst  JumpTable                                         ; $566f: $df
	ld   e, l                                        ; $5670: $5d
	rst  $38                                         ; $5671: $ff
	ld   a, a                                        ; $5672: $7f
	ld   b, e                                        ; $5673: $43
	db   $10                                         ; $5674: $10
	rst  $38                                         ; $5675: $ff
	ld   a, a                                        ; $5676: $7f
	ld   e, a                                        ; $5677: $5f
	ld   c, $0b                                      ; $5678: $0e $0b
	ld   c, h                                        ; $567a: $4c
	ld   b, l                                        ; $567b: $45
	db   $10                                         ; $567c: $10
	rst  $38                                         ; $567d: $ff
	ld   a, a                                        ; $567e: $7f
	ld   l, a                                        ; $567f: $6f
	halt                                             ; $5680: $76
	db   $ed                                         ; $5681: $ed
	db   $10                                         ; $5682: $10
	ld   b, l                                        ; $5683: $45
	db   $10                                         ; $5684: $10
	ld   d, b                                        ; $5685: $50
	halt                                             ; $5686: $76
	rst  $38                                         ; $5687: $ff
	ld   a, a                                        ; $5688: $7f
	ld   l, a                                        ; $5689: $6f
	halt                                             ; $568a: $76
	ld   b, l                                        ; $568b: $45
	db   $10                                         ; $568c: $10
	ld   d, b                                        ; $568d: $50
	halt                                             ; $568e: $76
	inc  [hl]                                        ; $568f: $34
	nop                                              ; $5690: $00
	dec  bc                                          ; $5691: $0b
	ld   c, h                                        ; $5692: $4c
	ld   b, l                                        ; $5693: $45
	db   $10                                         ; $5694: $10
	ld   d, b                                        ; $5695: $50
	halt                                             ; $5696: $76
	rst  $38                                         ; $5697: $ff
	ld   a, a                                        ; $5698: $7f
	db   $ed                                         ; $5699: $ed
	db   $10                                         ; $569a: $10
	ld   b, l                                        ; $569b: $45
	db   $10                                         ; $569c: $10
	ld   d, b                                        ; $569d: $50
	halt                                             ; $569e: $76
	rst  $38                                         ; $569f: $ff
	ld   a, a                                        ; $56a0: $7f
	dec  bc                                          ; $56a1: $0b
	ld   c, h                                        ; $56a2: $4c
	ld   b, l                                        ; $56a3: $45
	db   $10                                         ; $56a4: $10
	ld   d, b                                        ; $56a5: $50
	halt                                             ; $56a6: $76
	rst  $38                                         ; $56a7: $ff
	ld   a, a                                        ; $56a8: $7f
	ld   e, a                                        ; $56a9: $5f
	ld   c, $45                                      ; $56aa: $0e $45
	db   $10                                         ; $56ac: $10
	pop  af                                          ; $56ad: $f1
	db   $10                                         ; $56ae: $10
	ret  nc                                          ; $56af: $d0

	ld   sp, $1d2b                                   ; $56b0: $31 $2b $1d
	and  [hl]                                        ; $56b3: $a6
	ld   [$0e5f], sp                                 ; $56b4: $08 $5f $0e
	rst  $30                                         ; $56b7: $f7
	ld   a, [de]                                     ; $56b8: $1a
	rst  $38                                         ; $56b9: $ff
	inc  sp                                          ; $56ba: $33
	and  [hl]                                        ; $56bb: $a6
	ld   [$7eeb], sp                                 ; $56bc: $08 $eb $7e
	rst  $30                                         ; $56bf: $f7
	ld   a, [de]                                     ; $56c0: $1a
	rst  $38                                         ; $56c1: $ff
	inc  sp                                          ; $56c2: $33
	and  [hl]                                        ; $56c3: $a6
	ld   [$7eeb], sp                                 ; $56c4: $08 $eb $7e
	rst  $38                                         ; $56c7: $ff
	ld   a, a                                        ; $56c8: $7f
	ld   e, a                                        ; $56c9: $5f
	ld   c, $a6                                      ; $56ca: $0e $a6
	ld   [$7eeb], sp                                 ; $56cc: $08 $eb $7e
	ld   e, a                                        ; $56cf: $5f
	ld   c, $2b                                      ; $56d0: $0e $2b
	dec  e                                           ; $56d2: $1d
	and  [hl]                                        ; $56d3: $a6
	ld   [$7eeb], sp                                 ; $56d4: $08 $eb $7e
	ret  nc                                          ; $56d7: $d0

	ld   sp, $1d2b                                   ; $56d8: $31 $2b $1d
	and  [hl]                                        ; $56db: $a6
	ld   [$7eeb], sp                                 ; $56dc: $08 $eb $7e
	dec  hl                                          ; $56df: $2b
	dec  e                                           ; $56e0: $1d
	pop  af                                          ; $56e1: $f1
	db   $10                                         ; $56e2: $10
	and  [hl]                                        ; $56e3: $a6
	ld   [$7fff], sp                                 ; $56e4: $08 $ff $7f
	ld   e, a                                        ; $56e7: $5f
	ld   c, $79                                      ; $56e8: $0e $79
	inc  b                                           ; $56ea: $04
	and  [hl]                                        ; $56eb: $a6
	ld   [$2129], sp                                 ; $56ec: $08 $29 $21
	rst  $38                                         ; $56ef: $ff
	ccf                                              ; $56f0: $3f
	rst  $30                                         ; $56f1: $f7
	ld   h, $a6                                      ; $56f2: $26 $a6
	ld   [$7fff], sp                                 ; $56f4: $08 $ff $7f
	ld   e, a                                        ; $56f7: $5f
	ld   c, $79                                      ; $56f8: $0e $79
	inc  b                                           ; $56fa: $04
	and  [hl]                                        ; $56fb: $a6
	ld   [$7fff], sp                                 ; $56fc: $08 $ff $7f
	rst  $38                                         ; $56ff: $ff
	ccf                                              ; $5700: $3f
	rst  $30                                         ; $5701: $f7
	ld   h, $a6                                      ; $5702: $26 $a6
	ld   [$7fff], sp                                 ; $5704: $08 $ff $7f
	ld   e, a                                        ; $5707: $5f
	ld   c, $ff                                      ; $5708: $0e $ff
	ld   a, a                                        ; $570a: $7f
	and  [hl]                                        ; $570b: $a6
	ld   [$7fff], sp                                 ; $570c: $08 $ff $7f
	rst  $38                                         ; $570f: $ff
	ccf                                              ; $5710: $3f
	ld   a, c                                        ; $5711: $79
	inc  b                                           ; $5712: $04
	and  [hl]                                        ; $5713: $a6
	ld   [$7fff], sp                                 ; $5714: $08 $ff $7f
	add  hl, hl                                      ; $5717: $29
	ld   hl, $26f7                                   ; $5718: $21 $f7 $26
	and  [hl]                                        ; $571b: $a6
	ld   [$7fff], sp                                 ; $571c: $08 $ff $7f
	ld   e, a                                        ; $571f: $5f
	nop                                              ; $5720: $00
	rst  $38                                         ; $5721: $ff
	inc  bc                                          ; $5722: $03
	and  [hl]                                        ; $5723: $a6
	ld   [$7fff], sp                                 ; $5724: $08 $ff $7f
	ld   e, a                                        ; $5727: $5f
	ld   c, $0b                                      ; $5728: $0e $0b
	dec  l                                           ; $572a: $2d
	and  [hl]                                        ; $572b: $a6
	ld   [$7f92], sp                                 ; $572c: $08 $92 $7f
	rst  $38                                         ; $572f: $ff
	ld   a, a                                        ; $5730: $7f
	dec  bc                                          ; $5731: $0b
	dec  l                                           ; $5732: $2d
	and  [hl]                                        ; $5733: $a6
	ld   [$7f92], sp                                 ; $5734: $08 $92 $7f
	rst  $38                                         ; $5737: $ff
	inc  bc                                          ; $5738: $03
	dec  bc                                          ; $5739: $0b
	dec  l                                           ; $573a: $2d
	and  [hl]                                        ; $573b: $a6
	ld   [$7f92], sp                                 ; $573c: $08 $92 $7f
	ld   e, a                                        ; $573f: $5f
	nop                                              ; $5740: $00
	rst  $38                                         ; $5741: $ff
	inc  bc                                          ; $5742: $03
	and  [hl]                                        ; $5743: $a6
	ld   [$7f92], sp                                 ; $5744: $08 $92 $7f
	ld   e, a                                        ; $5747: $5f
	ld   c, $ff                                      ; $5748: $0e $ff
	ld   a, a                                        ; $574a: $7f

jr_0a4_574b:
	and  [hl]                                        ; $574b: $a6
	ld   [$7f92], sp                                 ; $574c: $08 $92 $7f
	ld   e, a                                        ; $574f: $5f
	nop                                              ; $5750: $00
	rst  $38                                         ; $5751: $ff
	ld   a, a                                        ; $5752: $7f
	and  [hl]                                        ; $5753: $a6
	ld   [$7fff], sp                                 ; $5754: $08 $ff $7f
	db   $eb                                         ; $5757: $eb
	inc  bc                                          ; $5758: $03
	or   $10                                         ; $5759: $f6 $10
	and  [hl]                                        ; $575b: $a6
	ld   [$7fff], sp                                 ; $575c: $08 $ff $7f
	ld   e, a                                        ; $575f: $5f
	ld   c, $f6                                      ; $5760: $0e $f6
	db   $10                                         ; $5762: $10
	and  [hl]                                        ; $5763: $a6
	ld   [$7fff], sp                                 ; $5764: $08 $ff $7f
	ld   e, a                                        ; $5767: $5f
	ld   c, $7f                                      ; $5768: $0e $7f
	rrca                                             ; $576a: $0f
	and  [hl]                                        ; $576b: $a6
	ld   [$7fff], sp                                 ; $576c: $08 $ff $7f
	db   $dd                                         ; $576f: $dd
	add  hl, sp                                      ; $5770: $39
	ld   a, a                                        ; $5771: $7f
	rrca                                             ; $5772: $0f
	and  [hl]                                        ; $5773: $a6
	ld   [$7fff], sp                                 ; $5774: $08 $ff $7f
	db   $dd                                         ; $5777: $dd
	add  hl, sp                                      ; $5778: $39
	rst  $38                                         ; $5779: $ff
	ld   a, a                                        ; $577a: $7f
	and  [hl]                                        ; $577b: $a6
	ld   [$7fff], sp                                 ; $577c: $08 $ff $7f
	db   $eb                                         ; $577f: $eb
	inc  bc                                          ; $5780: $03
	or   $10                                         ; $5781: $f6 $10
	and  [hl]                                        ; $5783: $a6
	ld   [$7fff], sp                                 ; $5784: $08 $ff $7f
	ld   e, a                                        ; $5787: $5f
	ld   c, $ff                                      ; $5788: $0e $ff
	ld   a, a                                        ; $578a: $7f
	and  [hl]                                        ; $578b: $a6
	ld   [$0e5f], sp                                 ; $578c: $08 $5f $0e
	rst  JumpTable                                         ; $578f: $df
	ld   e, l                                        ; $5790: $5d
	dec  de                                          ; $5791: $1b
	ld   b, c                                        ; $5792: $41
	rst  ToBoot                                         ; $5793: $c7
	inc  d                                           ; $5794: $14
	nop                                              ; $5795: $00
	nop                                              ; $5796: $00
	nop                                              ; $5797: $00
	nop                                              ; $5798: $00
	nop                                              ; $5799: $00
	nop                                              ; $579a: $00
	nop                                              ; $579b: $00
	nop                                              ; $579c: $00
	rst  $38                                         ; $579d: $ff
	ld   a, a                                        ; $579e: $7f
	rst  JumpTable                                         ; $579f: $df
	ld   e, l                                        ; $57a0: $5d
	ld   e, a                                        ; $57a1: $5f
	ld   c, $c7                                      ; $57a2: $0e $c7
	inc  d                                           ; $57a4: $14
	rst  $38                                         ; $57a5: $ff
	ld   a, a                                        ; $57a6: $7f
	rst  JumpTable                                         ; $57a7: $df
	ld   e, l                                        ; $57a8: $5d
	dec  de                                          ; $57a9: $1b
	ld   b, c                                        ; $57aa: $41
	rst  ToBoot                                         ; $57ab: $c7
	inc  d                                           ; $57ac: $14
	rst  $38                                         ; $57ad: $ff
	ld   a, a                                        ; $57ae: $7f
	ld   d, a                                        ; $57af: $57
	jr   nz, jr_0a4_57bf                             ; $57b0: $20 $0d

	ld   [$14c7], sp                                 ; $57b2: $08 $c7 $14
	rst  $38                                         ; $57b5: $ff
	ld   a, a                                        ; $57b6: $7f
	ld   d, a                                        ; $57b7: $57
	jr   nz, jr_0a4_574b                             ; $57b8: $20 $91

	ld   d, h                                        ; $57ba: $54
	rst  ToBoot                                         ; $57bb: $c7
	inc  d                                           ; $57bc: $14
	rst  $38                                         ; $57bd: $ff
	ld   a, a                                        ; $57be: $7f

jr_0a4_57bf:
	ld   d, a                                        ; $57bf: $57
	jr   nz, @+$07                                   ; $57c0: $20 $05

	add  hl, hl                                      ; $57c2: $29
	rst  ToBoot                                         ; $57c3: $c7
	inc  d                                           ; $57c4: $14
	ld   e, a                                        ; $57c5: $5f
	ld   c, $48                                      ; $57c6: $0e $48
	ld   c, h                                        ; $57c8: $4c
	adc  d                                           ; $57c9: $8a
	ld   d, h                                        ; $57ca: $54
	rst  ToBoot                                         ; $57cb: $c7
	inc  d                                           ; $57cc: $14
	ld   e, a                                        ; $57cd: $5f
	ld   c, $cd                                      ; $57ce: $0e $cd
	inc  b                                           ; $57d0: $04
	push af                                          ; $57d1: $f5
	ld   l, [hl]                                     ; $57d2: $6e
	rst  ToBoot                                         ; $57d3: $c7
	inc  d                                           ; $57d4: $14
	rst  $38                                         ; $57d5: $ff
	ld   a, a                                        ; $57d6: $7f
	adc  d                                           ; $57d7: $8a
	ld   d, h                                        ; $57d8: $54
	ld   c, b                                        ; $57d9: $48
	ld   c, h                                        ; $57da: $4c
	rst  ToBoot                                         ; $57db: $c7
	inc  d                                           ; $57dc: $14
	rra                                              ; $57dd: $1f
	ld   a, l                                        ; $57de: $7d
	sbc  h                                           ; $57df: $9c
	ld   [hl], e                                     ; $57e0: $73
	ld   e, a                                        ; $57e1: $5f
	ld   c, $95                                      ; $57e2: $0e $95
	inc  c                                           ; $57e4: $0c
	rst  $38                                         ; $57e5: $ff
	ld   a, a                                        ; $57e6: $7f
	adc  d                                           ; $57e7: $8a
	ld   d, h                                        ; $57e8: $54
	call $c704                                       ; $57e9: $cd $04 $c7
	inc  d                                           ; $57ec: $14
	rst  $38                                         ; $57ed: $ff
	ld   a, a                                        ; $57ee: $7f
	adc  d                                           ; $57ef: $8a
	ld   d, h                                        ; $57f0: $54
	ld   e, a                                        ; $57f1: $5f
	ld   c, $c7                                      ; $57f2: $0e $c7
	inc  d                                           ; $57f4: $14
	rst  $38                                         ; $57f5: $ff
	ld   a, a                                        ; $57f6: $7f
	call Call_0a4_5f04                               ; $57f7: $cd $04 $5f
	ld   c, $c7                                      ; $57fa: $0e $c7
	inc  d                                           ; $57fc: $14
	nop                                              ; $57fd: $00
	nop                                              ; $57fe: $00
	nop                                              ; $57ff: $00
	nop                                              ; $5800: $00
	nop                                              ; $5801: $00
	nop                                              ; $5802: $00
	nop                                              ; $5803: $00
	nop                                              ; $5804: $00
	rst  $38                                         ; $5805: $ff
	ld   a, a                                        ; $5806: $7f
	ret  nc                                          ; $5807: $d0

	ld   sp, $1d2b                                   ; $5808: $31 $2b $1d
	and  [hl]                                        ; $580b: $a6
	ld   [$7fff], sp                                 ; $580c: $08 $ff $7f
	db   $d3                                         ; $580f: $d3
	inc  c                                           ; $5810: $0c
	dec  hl                                          ; $5811: $2b
	dec  e                                           ; $5812: $1d
	and  [hl]                                        ; $5813: $a6
	ld   [$7fff], sp                                 ; $5814: $08 $ff $7f
	ret  nc                                          ; $5817: $d0

	ld   sp, $1d2b                                   ; $5818: $31 $2b $1d
	and  [hl]                                        ; $581b: $a6
	ld   [$7fff], sp                                 ; $581c: $08 $ff $7f
	db   $d3                                         ; $581f: $d3
	inc  c                                           ; $5820: $0c
	rst  JumpTable                                         ; $5821: $df
	ld   [hl+], a                                    ; $5822: $22
	and  [hl]                                        ; $5823: $a6
	ld   [$7fff], sp                                 ; $5824: $08 $ff $7f
	sbc  l                                           ; $5827: $9d
	daa                                              ; $5828: $27
	ld   [hl], e                                     ; $5829: $73
	ld   a, [bc]                                     ; $582a: $0a
	and  [hl]                                        ; $582b: $a6
	ld   [rRAMG], sp                                 ; $582c: $08 $00 $00
	nop                                              ; $582f: $00
	nop                                              ; $5830: $00
	nop                                              ; $5831: $00
	nop                                              ; $5832: $00
	nop                                              ; $5833: $00
	nop                                              ; $5834: $00
	rst  $38                                         ; $5835: $ff
	ld   a, a                                        ; $5836: $7f
	adc  $7e                                         ; $5837: $ce $7e
	dec  h                                           ; $5839: $25
	inc  bc                                          ; $583a: $03
	rst  ToBoot                                         ; $583b: $c7
	inc  d                                           ; $583c: $14
	nop                                              ; $583d: $00
	nop                                              ; $583e: $00
	nop                                              ; $583f: $00
	nop                                              ; $5840: $00
	nop                                              ; $5841: $00
	nop                                              ; $5842: $00
	nop                                              ; $5843: $00
	nop                                              ; $5844: $00
	rst  $38                                         ; $5845: $ff
	ld   a, a                                        ; $5846: $7f
	ld   a, a                                        ; $5847: $7f
	rrca                                             ; $5848: $0f
	ld   e, a                                        ; $5849: $5f
	ld   c, $c7                                      ; $584a: $0e $c7
	inc  d                                           ; $584c: $14
	rst  $38                                         ; $584d: $ff
	ld   a, a                                        ; $584e: $7f
	db   $dd                                         ; $584f: $dd
	add  hl, sp                                      ; $5850: $39
	rla                                              ; $5851: $17
	ld   hl, $0000                                   ; $5852: $21 $00 $00
	rst  $38                                         ; $5855: $ff
	ld   a, a                                        ; $5856: $7f
	dec  h                                           ; $5857: $25
	inc  bc                                          ; $5858: $03
	ld   hl, $c702                                   ; $5859: $21 $02 $c7
	inc  d                                           ; $585c: $14
	rst  $38                                         ; $585d: $ff
	ld   a, a                                        ; $585e: $7f
	ld   e, d                                        ; $585f: $5a
	ld   l, e                                        ; $5860: $6b
	adc  $7e                                         ; $5861: $ce $7e
	rst  ToBoot                                         ; $5863: $c7
	inc  d                                           ; $5864: $14
	rst  $38                                         ; $5865: $ff
	ld   a, a                                        ; $5866: $7f
	or   $10                                         ; $5867: $f6 $10
	ld   e, a                                        ; $5869: $5f
	ld   c, $c7                                      ; $586a: $0e $c7
	inc  d                                           ; $586c: $14
	ld   a, [bc]                                     ; $586d: $0a
	ld   [bc], a                                     ; $586e: $02
	ld   d, d                                        ; $586f: $52
	nop                                              ; $5870: $00
	or   l                                           ; $5871: $b5
	ld   [bc], a                                     ; $5872: $02
	rst  ToBoot                                         ; $5873: $c7
	inc  d                                           ; $5874: $14
	nop                                              ; $5875: $00
	nop                                              ; $5876: $00
	nop                                              ; $5877: $00
	nop                                              ; $5878: $00
	nop                                              ; $5879: $00
	nop                                              ; $587a: $00
	nop                                              ; $587b: $00
	nop                                              ; $587c: $00
	nop                                              ; $587d: $00
	nop                                              ; $587e: $00
	ld   e, a                                        ; $587f: $5f
	ld   c, $c8                                      ; $5880: $0e $c8
	jr   nz, @-$37                                   ; $5882: $20 $c7

	inc  d                                           ; $5884: $14
	nop                                              ; $5885: $00
	nop                                              ; $5886: $00
	ld   d, d                                        ; $5887: $52
	nop                                              ; $5888: $00
	or   l                                           ; $5889: $b5
	ld   [bc], a                                     ; $588a: $02
	rst  ToBoot                                         ; $588b: $c7
	inc  d                                           ; $588c: $14
	nop                                              ; $588d: $00
	nop                                              ; $588e: $00
	ld   e, a                                        ; $588f: $5f
	ld   c, $0a                                      ; $5890: $0e $0a
	nop                                              ; $5892: $00
	rst  ToBoot                                         ; $5893: $c7
	inc  d                                           ; $5894: $14
	nop                                              ; $5895: $00
	nop                                              ; $5896: $00
	nop                                              ; $5897: $00
	nop                                              ; $5898: $00
	nop                                              ; $5899: $00
	nop                                              ; $589a: $00
	nop                                              ; $589b: $00
	nop                                              ; $589c: $00
	nop                                              ; $589d: $00
	nop                                              ; $589e: $00
	nop                                              ; $589f: $00
	nop                                              ; $58a0: $00
	nop                                              ; $58a1: $00
	nop                                              ; $58a2: $00
	nop                                              ; $58a3: $00
	nop                                              ; $58a4: $00

jr_0a4_58a5:
	nop                                              ; $58a5: $00
	nop                                              ; $58a6: $00
	nop                                              ; $58a7: $00
	nop                                              ; $58a8: $00
	nop                                              ; $58a9: $00
	nop                                              ; $58aa: $00
	nop                                              ; $58ab: $00
	nop                                              ; $58ac: $00
	nop                                              ; $58ad: $00
	nop                                              ; $58ae: $00
	nop                                              ; $58af: $00
	nop                                              ; $58b0: $00
	nop                                              ; $58b1: $00
	nop                                              ; $58b2: $00
	nop                                              ; $58b3: $00
	nop                                              ; $58b4: $00
	rra                                              ; $58b5: $1f
	ld   a, h                                        ; $58b6: $7c
	rst  $38                                         ; $58b7: $ff
	ld   a, a                                        ; $58b8: $7f
	rra                                              ; $58b9: $1f
	ld   de, $190c                                   ; $58ba: $11 $0c $19
	nop                                              ; $58bd: $00
	nop                                              ; $58be: $00
	nop                                              ; $58bf: $00
	nop                                              ; $58c0: $00
	nop                                              ; $58c1: $00
	nop                                              ; $58c2: $00
	nop                                              ; $58c3: $00
	nop                                              ; $58c4: $00
	nop                                              ; $58c5: $00
	nop                                              ; $58c6: $00
	nop                                              ; $58c7: $00
	nop                                              ; $58c8: $00
	nop                                              ; $58c9: $00
	nop                                              ; $58ca: $00
	nop                                              ; $58cb: $00
	nop                                              ; $58cc: $00
	nop                                              ; $58cd: $00
	nop                                              ; $58ce: $00
	nop                                              ; $58cf: $00
	nop                                              ; $58d0: $00
	nop                                              ; $58d1: $00
	nop                                              ; $58d2: $00
	nop                                              ; $58d3: $00
	nop                                              ; $58d4: $00
	nop                                              ; $58d5: $00
	nop                                              ; $58d6: $00
	nop                                              ; $58d7: $00
	nop                                              ; $58d8: $00
	nop                                              ; $58d9: $00
	nop                                              ; $58da: $00
	nop                                              ; $58db: $00
	nop                                              ; $58dc: $00
	nop                                              ; $58dd: $00
	nop                                              ; $58de: $00
	nop                                              ; $58df: $00
	nop                                              ; $58e0: $00
	nop                                              ; $58e1: $00
	nop                                              ; $58e2: $00
	nop                                              ; $58e3: $00
	nop                                              ; $58e4: $00
	nop                                              ; $58e5: $00
	nop                                              ; $58e6: $00
	nop                                              ; $58e7: $00
	nop                                              ; $58e8: $00
	nop                                              ; $58e9: $00
	nop                                              ; $58ea: $00
	nop                                              ; $58eb: $00
	nop                                              ; $58ec: $00
	rst  $38                                         ; $58ed: $ff
	ld   a, a                                        ; $58ee: $7f
	ld   c, b                                        ; $58ef: $48
	jr   z, jr_0a4_58a5                              ; $58f0: $28 $b3

	inc  d                                           ; $58f2: $14
	dec  sp                                          ; $58f3: $3b
	ld   [hl-], a                                    ; $58f4: $32
	rst  $38                                         ; $58f5: $ff
	ld   a, a                                        ; $58f6: $7f
	ld   c, b                                        ; $58f7: $48
	jr   z, jr_0a4_5936                              ; $58f8: $28 $3c

	ld   e, d                                        ; $58fa: $5a
	ld   [$0039], sp                                 ; $58fb: $08 $39 $00
	nop                                              ; $58fe: $00
	nop                                              ; $58ff: $00
	nop                                              ; $5900: $00
	nop                                              ; $5901: $00
	nop                                              ; $5902: $00
	nop                                              ; $5903: $00
	nop                                              ; $5904: $00
	nop                                              ; $5905: $00
	nop                                              ; $5906: $00
	nop                                              ; $5907: $00
	nop                                              ; $5908: $00
	nop                                              ; $5909: $00
	nop                                              ; $590a: $00
	nop                                              ; $590b: $00
	nop                                              ; $590c: $00
	nop                                              ; $590d: $00
	nop                                              ; $590e: $00
	nop                                              ; $590f: $00
	nop                                              ; $5910: $00
	nop                                              ; $5911: $00
	nop                                              ; $5912: $00
	nop                                              ; $5913: $00
	nop                                              ; $5914: $00
	nop                                              ; $5915: $00
	nop                                              ; $5916: $00
	nop                                              ; $5917: $00
	nop                                              ; $5918: $00
	nop                                              ; $5919: $00
	nop                                              ; $591a: $00
	nop                                              ; $591b: $00
	nop                                              ; $591c: $00
	nop                                              ; $591d: $00
	nop                                              ; $591e: $00
	nop                                              ; $591f: $00
	nop                                              ; $5920: $00
	nop                                              ; $5921: $00
	nop                                              ; $5922: $00
	nop                                              ; $5923: $00
	nop                                              ; $5924: $00
	rst  $38                                         ; $5925: $ff
	ld   a, a                                        ; $5926: $7f
	sbc  c                                           ; $5927: $99
	ld   c, e                                        ; $5928: $4b
	ld   [hl], d                                     ; $5929: $72
	ld   a, [hl-]                                    ; $592a: $3a
	rst  $10                                         ; $592b: $d7
	ld   a, $ff                                      ; $592c: $3e $ff
	ld   a, a                                        ; $592e: $7f
	sbc  a                                           ; $592f: $9f
	ld   d, $fa                                      ; $5930: $16 $fa
	ld   bc, $19ae                                   ; $5932: $01 $ae $19
	nop                                              ; $5935: $00

jr_0a4_5936:
	nop                                              ; $5936: $00
	nop                                              ; $5937: $00
	nop                                              ; $5938: $00
	nop                                              ; $5939: $00
	nop                                              ; $593a: $00
	nop                                              ; $593b: $00
	nop                                              ; $593c: $00
	rst  $38                                         ; $593d: $ff
	ld   a, a                                        ; $593e: $7f
	rst  $38                                         ; $593f: $ff
	ld   a, a                                        ; $5940: $7f
	nop                                              ; $5941: $00
	nop                                              ; $5942: $00
	nop                                              ; $5943: $00
	nop                                              ; $5944: $00
	nop                                              ; $5945: $00
	nop                                              ; $5946: $00
	nop                                              ; $5947: $00
	nop                                              ; $5948: $00
	nop                                              ; $5949: $00
	nop                                              ; $594a: $00
	nop                                              ; $594b: $00
	nop                                              ; $594c: $00
	nop                                              ; $594d: $00
	nop                                              ; $594e: $00
	nop                                              ; $594f: $00
	nop                                              ; $5950: $00
	nop                                              ; $5951: $00
	nop                                              ; $5952: $00
	nop                                              ; $5953: $00
	nop                                              ; $5954: $00
	rst  $38                                         ; $5955: $ff
	ld   a, a                                        ; $5956: $7f
	cpl                                              ; $5957: $2f
	ld   bc, $2679                                   ; $5958: $01 $79 $26
	ld   b, e                                        ; $595b: $43
	db   $10                                         ; $595c: $10
	rst  $38                                         ; $595d: $ff
	ld   e, a                                        ; $595e: $5f
	rst  $38                                         ; $595f: $ff
	ld   a, a                                        ; $5960: $7f
	ld   a, c                                        ; $5961: $79
	ld   h, $43                                      ; $5962: $26 $43
	db   $10                                         ; $5964: $10
	ld   e, a                                        ; $5965: $5f
	ld   l, e                                        ; $5966: $6b
	cpl                                              ; $5967: $2f
	ld   bc, $2679                                   ; $5968: $01 $79 $26
	ld   b, e                                        ; $596b: $43
	db   $10                                         ; $596c: $10
	rst  $30                                         ; $596d: $f7
	ld   a, a                                        ; $596e: $7f
	rst  $38                                         ; $596f: $ff
	ld   a, a                                        ; $5970: $7f
	ldh  [$67], a                                    ; $5971: $e0 $67
	ld   b, e                                        ; $5973: $43
	db   $10                                         ; $5974: $10
	xor  l                                           ; $5975: $ad
	ld   e, e                                        ; $5976: $5b
	ld   sp, $1f46                                   ; $5977: $31 $46 $1f
	nop                                              ; $597a: $00
	ld   b, e                                        ; $597b: $43
	stop                                             ; $597c: $10 $00
	nop                                              ; $597e: $00
	nop                                              ; $597f: $00
	nop                                              ; $5980: $00
	nop                                              ; $5981: $00
	nop                                              ; $5982: $00
	nop                                              ; $5983: $00
	nop                                              ; $5984: $00
	nop                                              ; $5985: $00
	nop                                              ; $5986: $00
	nop                                              ; $5987: $00
	nop                                              ; $5988: $00
	nop                                              ; $5989: $00
	nop                                              ; $598a: $00
	nop                                              ; $598b: $00
	nop                                              ; $598c: $00
	rst  $38                                         ; $598d: $ff
	ld   a, a                                        ; $598e: $7f
	cpl                                              ; $598f: $2f
	ld   bc, $2679                                   ; $5990: $01 $79 $26
	ld   b, e                                        ; $5993: $43
	db   $10                                         ; $5994: $10
	rst  $38                                         ; $5995: $ff
	ld   e, a                                        ; $5996: $5f
	rst  $38                                         ; $5997: $ff
	ld   a, a                                        ; $5998: $7f
	ld   a, c                                        ; $5999: $79
	ld   h, $43                                      ; $599a: $26 $43
	db   $10                                         ; $599c: $10
	ld   e, a                                        ; $599d: $5f
	ld   l, e                                        ; $599e: $6b
	cpl                                              ; $599f: $2f
	ld   bc, $2679                                   ; $59a0: $01 $79 $26
	ld   b, e                                        ; $59a3: $43
	db   $10                                         ; $59a4: $10
	rst  $30                                         ; $59a5: $f7
	ld   a, a                                        ; $59a6: $7f
	rst  $38                                         ; $59a7: $ff
	ld   a, a                                        ; $59a8: $7f
	ldh  [$67], a                                    ; $59a9: $e0 $67
	ld   b, e                                        ; $59ab: $43
	db   $10                                         ; $59ac: $10
	xor  l                                           ; $59ad: $ad
	ld   e, e                                        ; $59ae: $5b
	ld   sp, $1f46                                   ; $59af: $31 $46 $1f
	nop                                              ; $59b2: $00
	ld   b, e                                        ; $59b3: $43
	db   $10                                         ; $59b4: $10
	cp   c                                           ; $59b5: $b9
	halt                                             ; $59b6: $76
	rst  $38                                         ; $59b7: $ff
	ld   a, a                                        ; $59b8: $7f
	cpl                                              ; $59b9: $2f
	ld   bc, $1043                                   ; $59ba: $01 $43 $10
	rst  $38                                         ; $59bd: $ff
	ld   a, a                                        ; $59be: $7f
	ld   h, b                                        ; $59bf: $60
	add  hl, bc                                      ; $59c0: $09
	ldh  a, [$59]                                    ; $59c1: $f0 $59
	add  l                                           ; $59c3: $85
	inc  b                                           ; $59c4: $04
	rst  $38                                         ; $59c5: $ff
	ld   a, a                                        ; $59c6: $7f
	ld   a, e                                        ; $59c7: $7b
	ld   bc, $0efc                                   ; $59c8: $01 $fc $0e
	add  l                                           ; $59cb: $85
	inc  b                                           ; $59cc: $04
	rst  $38                                         ; $59cd: $ff
	ld   a, a                                        ; $59ce: $7f
	ld   e, a                                        ; $59cf: $5f
	ld   c, $4c                                      ; $59d0: $0e $4c
	ld   de, $0485                                   ; $59d2: $11 $85 $04
	rst  $38                                         ; $59d5: $ff
	ld   a, a                                        ; $59d6: $7f
	ld   e, a                                        ; $59d7: $5f
	ld   c, $ff                                      ; $59d8: $0e $ff
	ld   a, a                                        ; $59da: $7f
	add  l                                           ; $59db: $85
	inc  b                                           ; $59dc: $04
	rst  $38                                         ; $59dd: $ff
	ld   a, a                                        ; $59de: $7f
	ld   e, a                                        ; $59df: $5f
	ld   c, $f0                                      ; $59e0: $0e $f0
	ld   e, c                                        ; $59e2: $59
	add  l                                           ; $59e3: $85
	inc  b                                           ; $59e4: $04
	rst  $38                                         ; $59e5: $ff
	ld   a, a                                        ; $59e6: $7f
	rst  $38                                         ; $59e7: $ff
	ld   a, a                                        ; $59e8: $7f
	ldh  a, [$59]                                    ; $59e9: $f0 $59
	add  l                                           ; $59eb: $85
	inc  b                                           ; $59ec: $04
	rst  $38                                         ; $59ed: $ff
	ld   a, a                                        ; $59ee: $7f
	ld   a, e                                        ; $59ef: $7b
	ld   bc, $7fff                                   ; $59f0: $01 $ff $7f
	add  l                                           ; $59f3: $85
	inc  b                                           ; $59f4: $04
	nop                                              ; $59f5: $00
	nop                                              ; $59f6: $00
	nop                                              ; $59f7: $00
	nop                                              ; $59f8: $00
	nop                                              ; $59f9: $00
	nop                                              ; $59fa: $00
	nop                                              ; $59fb: $00
	nop                                              ; $59fc: $00
	nop                                              ; $59fd: $00
	nop                                              ; $59fe: $00
	nop                                              ; $59ff: $00
	nop                                              ; $5a00: $00
	nop                                              ; $5a01: $00
	nop                                              ; $5a02: $00
	nop                                              ; $5a03: $00
	nop                                              ; $5a04: $00
	rst  $38                                         ; $5a05: $ff
	ld   a, a                                        ; $5a06: $7f
	sbc  l                                           ; $5a07: $9d
	dec  sp                                          ; $5a08: $3b
	sbc  b                                           ; $5a09: $98
	ld   de, $14c7                                   ; $5a0a: $11 $c7 $14
	nop                                              ; $5a0d: $00
	nop                                              ; $5a0e: $00
	nop                                              ; $5a0f: $00
	nop                                              ; $5a10: $00
	nop                                              ; $5a11: $00
	nop                                              ; $5a12: $00
	nop                                              ; $5a13: $00
	nop                                              ; $5a14: $00
	nop                                              ; $5a15: $00
	nop                                              ; $5a16: $00
	nop                                              ; $5a17: $00
	nop                                              ; $5a18: $00
	nop                                              ; $5a19: $00
	nop                                              ; $5a1a: $00
	nop                                              ; $5a1b: $00
	nop                                              ; $5a1c: $00
	nop                                              ; $5a1d: $00
	nop                                              ; $5a1e: $00
	nop                                              ; $5a1f: $00
	nop                                              ; $5a20: $00
	nop                                              ; $5a21: $00
	nop                                              ; $5a22: $00
	nop                                              ; $5a23: $00
	nop                                              ; $5a24: $00
	nop                                              ; $5a25: $00
	nop                                              ; $5a26: $00
	nop                                              ; $5a27: $00
	nop                                              ; $5a28: $00
	nop                                              ; $5a29: $00
	nop                                              ; $5a2a: $00
	nop                                              ; $5a2b: $00
	nop                                              ; $5a2c: $00
	rst  $38                                         ; $5a2d: $ff
	ld   a, a                                        ; $5a2e: $7f
	ld   e, a                                        ; $5a2f: $5f
	ld   c, $0b                                      ; $5a30: $0e $0b
	ld   c, h                                        ; $5a32: $4c
	ld   b, l                                        ; $5a33: $45
	db   $10                                         ; $5a34: $10
	rst  $38                                         ; $5a35: $ff
	ld   a, a                                        ; $5a36: $7f
	ld   l, a                                        ; $5a37: $6f
	halt                                             ; $5a38: $76
	db   $ed                                         ; $5a39: $ed
	db   $10                                         ; $5a3a: $10
	ld   b, l                                        ; $5a3b: $45
	db   $10                                         ; $5a3c: $10
	rst  $38                                         ; $5a3d: $ff
	ld   a, a                                        ; $5a3e: $7f
	ld   e, a                                        ; $5a3f: $5f
	ld   c, $ed                                      ; $5a40: $0e $ed
	db   $10                                         ; $5a42: $10
	ld   b, l                                        ; $5a43: $45
	db   $10                                         ; $5a44: $10
	rst  $38                                         ; $5a45: $ff
	ld   a, a                                        ; $5a46: $7f
	ld   l, a                                        ; $5a47: $6f
	halt                                             ; $5a48: $76
	db   $ed                                         ; $5a49: $ed
	db   $10                                         ; $5a4a: $10
	ld   b, l                                        ; $5a4b: $45
	db   $10                                         ; $5a4c: $10
	rst  $38                                         ; $5a4d: $ff
	ld   a, a                                        ; $5a4e: $7f
	rst  $38                                         ; $5a4f: $ff
	ld   a, a                                        ; $5a50: $7f
	db   $ed                                         ; $5a51: $ed
	db   $10                                         ; $5a52: $10
	ld   b, l                                        ; $5a53: $45
	db   $10                                         ; $5a54: $10
	rst  $38                                         ; $5a55: $ff
	ld   a, a                                        ; $5a56: $7f
	rst  $38                                         ; $5a57: $ff
	ld   a, a                                        ; $5a58: $7f
	dec  bc                                          ; $5a59: $0b
	ld   c, h                                        ; $5a5a: $4c
	ld   b, l                                        ; $5a5b: $45
	db   $10                                         ; $5a5c: $10
	rst  $38                                         ; $5a5d: $ff
	ld   a, a                                        ; $5a5e: $7f
	ld   e, a                                        ; $5a5f: $5f
	ld   c, $14                                      ; $5a60: $0e $14
	nop                                              ; $5a62: $00
	ld   b, l                                        ; $5a63: $45
	db   $10                                         ; $5a64: $10
	rst  $38                                         ; $5a65: $ff
	ld   a, a                                        ; $5a66: $7f
	rst  $38                                         ; $5a67: $ff
	ld   h, b                                        ; $5a68: $60
	rst  $20                                         ; $5a69: $e7
	inc  e                                           ; $5a6a: $1c
	nop                                              ; $5a6b: $00
	nop                                              ; $5a6c: $00
	nop                                              ; $5a6d: $00
	nop                                              ; $5a6e: $00
	nop                                              ; $5a6f: $00
	nop                                              ; $5a70: $00
	nop                                              ; $5a71: $00
	nop                                              ; $5a72: $00
	nop                                              ; $5a73: $00
	nop                                              ; $5a74: $00
	rst  $38                                         ; $5a75: $ff
	ld   a, a                                        ; $5a76: $7f
	inc  e                                           ; $5a77: $1c
	nop                                              ; $5a78: $00
	jp   z, $512b                                    ; $5a79: $ca $2b $51

	jr   nc, @+$01                                   ; $5a7c: $30 $ff

	ld   a, a                                        ; $5a7e: $7f
	rra                                              ; $5a7f: $1f
	rlca                                             ; $5a80: $07
	nop                                              ; $5a81: $00
	nop                                              ; $5a82: $00
	ld   d, c                                        ; $5a83: $51
	jr   nc, jr_0a4_5a86                             ; $5a84: $30 $00

jr_0a4_5a86:
	nop                                              ; $5a86: $00
	nop                                              ; $5a87: $00
	nop                                              ; $5a88: $00
	nop                                              ; $5a89: $00
	nop                                              ; $5a8a: $00
	nop                                              ; $5a8b: $00
	nop                                              ; $5a8c: $00
	nop                                              ; $5a8d: $00
	nop                                              ; $5a8e: $00
	nop                                              ; $5a8f: $00
	nop                                              ; $5a90: $00
	nop                                              ; $5a91: $00
	nop                                              ; $5a92: $00
	nop                                              ; $5a93: $00
	nop                                              ; $5a94: $00
	nop                                              ; $5a95: $00
	nop                                              ; $5a96: $00
	nop                                              ; $5a97: $00
	nop                                              ; $5a98: $00
	nop                                              ; $5a99: $00
	nop                                              ; $5a9a: $00
	nop                                              ; $5a9b: $00
	nop                                              ; $5a9c: $00
	rst  $38                                         ; $5a9d: $ff
	ld   a, a                                        ; $5a9e: $7f
	ld   [hl], d                                     ; $5a9f: $72
	ld   l, b                                        ; $5aa0: $68
	rst  $20                                         ; $5aa1: $e7
	inc  e                                           ; $5aa2: $1c
	nop                                              ; $5aa3: $00
	nop                                              ; $5aa4: $00
	nop                                              ; $5aa5: $00
	nop                                              ; $5aa6: $00
	nop                                              ; $5aa7: $00
	nop                                              ; $5aa8: $00
	nop                                              ; $5aa9: $00
	nop                                              ; $5aaa: $00
	nop                                              ; $5aab: $00
	nop                                              ; $5aac: $00
	rst  $38                                         ; $5aad: $ff
	ld   a, a                                        ; $5aae: $7f
	inc  e                                           ; $5aaf: $1c
	nop                                              ; $5ab0: $00
	jp   z, $0d2b                                    ; $5ab1: $ca $2b $0d

	ld   d, h                                        ; $5ab4: $54
	rst  $38                                         ; $5ab5: $ff
	ld   a, a                                        ; $5ab6: $7f
	rra                                              ; $5ab7: $1f
	rlca                                             ; $5ab8: $07
	inc  e                                           ; $5ab9: $1c
	nop                                              ; $5aba: $00
	dec  c                                           ; $5abb: $0d
	ld   d, h                                        ; $5abc: $54
	rst  $38                                         ; $5abd: $ff
	ld   a, a                                        ; $5abe: $7f
	rst  $38                                         ; $5abf: $ff
	ld   a, a                                        ; $5ac0: $7f
	rst  $20                                         ; $5ac1: $e7
	inc  e                                           ; $5ac2: $1c
	nop                                              ; $5ac3: $00
	nop                                              ; $5ac4: $00
	rst  $38                                         ; $5ac5: $ff
	ld   a, a                                        ; $5ac6: $7f
	rst  $38                                         ; $5ac7: $ff
	ld   a, a                                        ; $5ac8: $7f
	ld   [hl], d                                     ; $5ac9: $72
	ld   l, b                                        ; $5aca: $68
	nop                                              ; $5acb: $00
	nop                                              ; $5acc: $00
	nop                                              ; $5acd: $00
	nop                                              ; $5ace: $00
	nop                                              ; $5acf: $00
	nop                                              ; $5ad0: $00
	nop                                              ; $5ad1: $00
	nop                                              ; $5ad2: $00
	nop                                              ; $5ad3: $00
	nop                                              ; $5ad4: $00
	rst  $38                                         ; $5ad5: $ff
	ld   a, a                                        ; $5ad6: $7f
	rst  $28                                         ; $5ad7: $ef
	dec  a                                           ; $5ad8: $3d
	add  hl, hl                                      ; $5ad9: $29
	dec  h                                           ; $5ada: $25
	nop                                              ; $5adb: $00
	nop                                              ; $5adc: $00
	nop                                              ; $5add: $00
	nop                                              ; $5ade: $00
	nop                                              ; $5adf: $00
	nop                                              ; $5ae0: $00
	nop                                              ; $5ae1: $00
	nop                                              ; $5ae2: $00
	nop                                              ; $5ae3: $00
	nop                                              ; $5ae4: $00
	rst  $38                                         ; $5ae5: $ff
	ld   a, a                                        ; $5ae6: $7f
	inc  e                                           ; $5ae7: $1c
	nop                                              ; $5ae8: $00
	jp   z, $002b                                    ; $5ae9: $ca $2b $00

	nop                                              ; $5aec: $00
	rst  $38                                         ; $5aed: $ff
	ld   a, a                                        ; $5aee: $7f
	rst  $38                                         ; $5aef: $ff
	ld   a, a                                        ; $5af0: $7f
	add  hl, hl                                      ; $5af1: $29
	dec  h                                           ; $5af2: $25
	nop                                              ; $5af3: $00
	nop                                              ; $5af4: $00
	nop                                              ; $5af5: $00
	nop                                              ; $5af6: $00
	nop                                              ; $5af7: $00
	nop                                              ; $5af8: $00
	nop                                              ; $5af9: $00
	nop                                              ; $5afa: $00
	nop                                              ; $5afb: $00
	nop                                              ; $5afc: $00
	nop                                              ; $5afd: $00
	nop                                              ; $5afe: $00
	nop                                              ; $5aff: $00
	nop                                              ; $5b00: $00
	nop                                              ; $5b01: $00
	nop                                              ; $5b02: $00
	nop                                              ; $5b03: $00
	nop                                              ; $5b04: $00
	nop                                              ; $5b05: $00
	nop                                              ; $5b06: $00
	nop                                              ; $5b07: $00
	nop                                              ; $5b08: $00
	nop                                              ; $5b09: $00
	nop                                              ; $5b0a: $00
	nop                                              ; $5b0b: $00
	nop                                              ; $5b0c: $00
	rst  $38                                         ; $5b0d: $ff
	ld   a, a                                        ; $5b0e: $7f
	ld   a, a                                        ; $5b0f: $7f
	inc  bc                                          ; $5b10: $03
	add  hl, hl                                      ; $5b11: $29
	dec  h                                           ; $5b12: $25
	nop                                              ; $5b13: $00
	nop                                              ; $5b14: $00
	nop                                              ; $5b15: $00
	nop                                              ; $5b16: $00
	nop                                              ; $5b17: $00
	nop                                              ; $5b18: $00
	nop                                              ; $5b19: $00
	nop                                              ; $5b1a: $00
	nop                                              ; $5b1b: $00
	nop                                              ; $5b1c: $00
	rst  $38                                         ; $5b1d: $ff
	ld   a, a                                        ; $5b1e: $7f
	inc  e                                           ; $5b1f: $1c
	nop                                              ; $5b20: $00
	rra                                              ; $5b21: $1f
	rlca                                             ; $5b22: $07
	inc  de                                          ; $5b23: $13
	ld   [bc], a                                     ; $5b24: $02
	rst  $38                                         ; $5b25: $ff
	ld   a, a                                        ; $5b26: $7f
	jp   z, $002b                                    ; $5b27: $ca $2b $00

	nop                                              ; $5b2a: $00
	inc  de                                          ; $5b2b: $13
	ld   [bc], a                                     ; $5b2c: $02
	rst  $38                                         ; $5b2d: $ff
	ld   a, a                                        ; $5b2e: $7f
	rst  $38                                         ; $5b2f: $ff
	ld   a, a                                        ; $5b30: $7f
	ld   a, a                                        ; $5b31: $7f
	inc  bc                                          ; $5b32: $03
	nop                                              ; $5b33: $00
	nop                                              ; $5b34: $00
	nop                                              ; $5b35: $00
	nop                                              ; $5b36: $00
	nop                                              ; $5b37: $00
	nop                                              ; $5b38: $00
	nop                                              ; $5b39: $00
	nop                                              ; $5b3a: $00
	nop                                              ; $5b3b: $00
	nop                                              ; $5b3c: $00
	nop                                              ; $5b3d: $00
	nop                                              ; $5b3e: $00
	nop                                              ; $5b3f: $00
	nop                                              ; $5b40: $00
	nop                                              ; $5b41: $00
	nop                                              ; $5b42: $00
	nop                                              ; $5b43: $00
	nop                                              ; $5b44: $00
	rst  $38                                         ; $5b45: $ff
	ld   a, a                                        ; $5b46: $7f
	adc  d                                           ; $5b47: $8a
	ld   a, [hl+]                                    ; $5b48: $2a
	add  hl, hl                                      ; $5b49: $29
	dec  h                                           ; $5b4a: $25
	nop                                              ; $5b4b: $00
	nop                                              ; $5b4c: $00
	nop                                              ; $5b4d: $00
	nop                                              ; $5b4e: $00
	nop                                              ; $5b4f: $00
	nop                                              ; $5b50: $00
	nop                                              ; $5b51: $00
	nop                                              ; $5b52: $00
	nop                                              ; $5b53: $00
	nop                                              ; $5b54: $00
	rst  $38                                         ; $5b55: $ff
	ld   a, a                                        ; $5b56: $7f
	inc  e                                           ; $5b57: $1c
	nop                                              ; $5b58: $00
	rra                                              ; $5b59: $1f
	rlca                                             ; $5b5a: $07
	ld   h, h                                        ; $5b5b: $64
	ld   de, $7fff                                   ; $5b5c: $11 $ff $7f
	inc  e                                           ; $5b5f: $1c
	nop                                              ; $5b60: $00
	jp   z, $642b                            ; $5b61: $ca $2b $64

	ld   de, $7fff                                   ; $5b64: $11 $ff $7f
	rst  $38                                         ; $5b67: $ff
	ld   a, a                                        ; $5b68: $7f
	adc  d                                           ; $5b69: $8a
	ld   a, [hl+]                                    ; $5b6a: $2a
	nop                                              ; $5b6b: $00
	nop                                              ; $5b6c: $00
	nop                                              ; $5b6d: $00
	nop                                              ; $5b6e: $00
	nop                                              ; $5b6f: $00
	nop                                              ; $5b70: $00
	nop                                              ; $5b71: $00
	nop                                              ; $5b72: $00
	nop                                              ; $5b73: $00
	nop                                              ; $5b74: $00
	nop                                              ; $5b75: $00
	nop                                              ; $5b76: $00
	nop                                              ; $5b77: $00
	nop                                              ; $5b78: $00
	nop                                              ; $5b79: $00
	nop                                              ; $5b7a: $00
	nop                                              ; $5b7b: $00
	nop                                              ; $5b7c: $00
	rst  $38                                         ; $5b7d: $ff
	ld   a, a                                        ; $5b7e: $7f
	add  hl, de                                      ; $5b7f: $19
	nop                                              ; $5b80: $00
	add  hl, hl                                      ; $5b81: $29
	dec  h                                           ; $5b82: $25
	nop                                              ; $5b83: $00
	nop                                              ; $5b84: $00
	nop                                              ; $5b85: $00
	nop                                              ; $5b86: $00
	nop                                              ; $5b87: $00
	nop                                              ; $5b88: $00
	nop                                              ; $5b89: $00
	nop                                              ; $5b8a: $00
	nop                                              ; $5b8b: $00
	nop                                              ; $5b8c: $00
	rst  $38                                         ; $5b8d: $ff
	ld   a, a                                        ; $5b8e: $7f
	inc  e                                           ; $5b8f: $1c
	nop                                              ; $5b90: $00
	jp   z, $102b                                    ; $5b91: $ca $2b $10

	nop                                              ; $5b94: $00
	rst  $38                                         ; $5b95: $ff
	ld   a, a                                        ; $5b96: $7f
	rra                                              ; $5b97: $1f
	rlca                                             ; $5b98: $07
	nop                                              ; $5b99: $00
	nop                                              ; $5b9a: $00
	stop                                             ; $5b9b: $10 $00
	rst  $38                                         ; $5b9d: $ff
	ld   a, a                                        ; $5b9e: $7f
	add  hl, hl                                      ; $5b9f: $29
	dec  h                                           ; $5ba0: $25
	rst  $38                                         ; $5ba1: $ff
	ld   a, a                                        ; $5ba2: $7f
	nop                                              ; $5ba3: $00
	nop                                              ; $5ba4: $00
	nop                                              ; $5ba5: $00
	nop                                              ; $5ba6: $00
	nop                                              ; $5ba7: $00
	nop                                              ; $5ba8: $00
	nop                                              ; $5ba9: $00
	nop                                              ; $5baa: $00
	nop                                              ; $5bab: $00
	nop                                              ; $5bac: $00
	nop                                              ; $5bad: $00
	nop                                              ; $5bae: $00
	nop                                              ; $5baf: $00
	nop                                              ; $5bb0: $00
	nop                                              ; $5bb1: $00
	nop                                              ; $5bb2: $00
	nop                                              ; $5bb3: $00
	nop                                              ; $5bb4: $00
	rst  $38                                         ; $5bb5: $ff
	ld   a, a                                        ; $5bb6: $7f
	ld   d, l                                        ; $5bb7: $55
	ld   a, a                                        ; $5bb8: $7f
	xor  d                                           ; $5bb9: $aa
	dec  l                                           ; $5bba: $2d
	add  sp, $30                                     ; $5bbb: $e8 $30
	rst  $38                                         ; $5bbd: $ff
	ld   a, a                                        ; $5bbe: $7f
	scf                                              ; $5bbf: $37
	ld   d, a                                        ; $5bc0: $57
	pop  af                                          ; $5bc1: $f1
	ld   sp, $210d                                   ; $5bc2: $31 $0d $21
	rst  $38                                         ; $5bc5: $ff
	ld   a, a                                        ; $5bc6: $7f
	adc  a                                           ; $5bc7: $8f
	halt                                             ; $5bc8: $76
	and  $4c                                         ; $5bc9: $e6 $4c
	ld   b, d                                        ; $5bcb: $42
	inc  d                                           ; $5bcc: $14
	ldh  [$03], a                                    ; $5bcd: $e0 $03
	rst  $38                                         ; $5bcf: $ff
	ld   a, a                                        ; $5bd0: $7f
	sbc  a                                           ; $5bd1: $9f
	ld   [hl], $00                                   ; $5bd2: $36 $00
	nop                                              ; $5bd4: $00
	ret  nz                                          ; $5bd5: $c0

	ld   a, l                                        ; $5bd6: $7d
	rst  $38                                         ; $5bd7: $ff
	ld   a, a                                        ; $5bd8: $7f
	ret  nz                                          ; $5bd9: $c0

	ld   a, l                                        ; $5bda: $7d
	nop                                              ; $5bdb: $00
	nop                                              ; $5bdc: $00
	rst  $38                                         ; $5bdd: $ff
	nop                                              ; $5bde: $00
	rst  $38                                         ; $5bdf: $ff
	ld   a, a                                        ; $5be0: $7f
	rst  $38                                         ; $5be1: $ff
	nop                                              ; $5be2: $00
	nop                                              ; $5be3: $00
	nop                                              ; $5be4: $00
	ldh  [$03], a                                    ; $5be5: $e0 $03
	adc  a                                           ; $5be7: $8f
	halt                                             ; $5be8: $76
	and  $4c                                         ; $5be9: $e6 $4c
	nop                                              ; $5beb: $00
	nop                                              ; $5bec: $00
	nop                                              ; $5bed: $00
	ld   c, c                                        ; $5bee: $49
	inc  bc                                          ; $5bef: $03
	nop                                              ; $5bf0: $00
	ld   bc, $0002                                   ; $5bf1: $01 $02 $00
	ld   l, b                                        ; $5bf4: $68
	dec  b                                           ; $5bf5: $05
	inc  bc                                          ; $5bf6: $03
	inc  b                                           ; $5bf7: $04
	dec  b                                           ; $5bf8: $05
	ld   b, $07                                      ; $5bf9: $06 $07
	nop                                              ; $5bfb: $00
	adc  b                                           ; $5bfc: $88
	inc  b                                           ; $5bfd: $04
	adc  a                                           ; $5bfe: $8f
	adc  a                                           ; $5bff: $8f
	adc  a                                           ; $5c00: $8f
	adc  a                                           ; $5c01: $8f
	nop                                              ; $5c02: $00
	xor  c                                           ; $5c03: $a9
	inc  bc                                          ; $5c04: $03
	adc  a                                           ; $5c05: $8f
	adc  a                                           ; $5c06: $8f
	adc  a                                           ; $5c07: $8f
	nop                                              ; $5c08: $00
	ret                                              ; $5c09: $c9


	ld   [bc], a                                     ; $5c0a: $02
	adc  a                                           ; $5c0b: $8f
	adc  a                                           ; $5c0c: $8f
	nop                                              ; $5c0d: $00
	jp   hl                                          ; $5c0e: $e9


	ld   [bc], a                                     ; $5c0f: $02
	adc  a                                           ; $5c10: $8f
	adc  a                                           ; $5c11: $8f
	ld   bc, $0408                                   ; $5c12: $01 $08 $04
	adc  a                                           ; $5c15: $8f
	adc  b                                           ; $5c16: $88
	adc  c                                           ; $5c17: $89
	adc  d                                           ; $5c18: $8a
	ld   bc, $0527                                   ; $5c19: $01 $27 $05
	adc  e                                           ; $5c1c: $8b
	adc  a                                           ; $5c1d: $8f
	adc  h                                           ; $5c1e: $8c
	adc  l                                           ; $5c1f: $8d
	adc  [hl]                                        ; $5c20: $8e
	rst  $38                                         ; $5c21: $ff
	nop                                              ; $5c22: $00
	ld   c, b                                        ; $5c23: $48
	inc  b                                           ; $5c24: $04
	add  b                                           ; $5c25: $80
	add  c                                           ; $5c26: $81
	add  d                                           ; $5c27: $82
	add  e                                           ; $5c28: $83
	nop                                              ; $5c29: $00
	ld   l, b                                        ; $5c2a: $68
	inc  b                                           ; $5c2b: $04
	dec  c                                           ; $5c2c: $0d
	dec  c                                           ; $5c2d: $0d
	dec  c                                           ; $5c2e: $0d
	adc  [hl]                                        ; $5c2f: $8e
	nop                                              ; $5c30: $00
	adc  b                                           ; $5c31: $88
	inc  b                                           ; $5c32: $04
	dec  c                                           ; $5c33: $0d
	dec  c                                           ; $5c34: $0d
	dec  c                                           ; $5c35: $0d
	adc  a                                           ; $5c36: $8f
	nop                                              ; $5c37: $00
	xor  c                                           ; $5c38: $a9
	inc  bc                                          ; $5c39: $03
	dec  c                                           ; $5c3a: $0d
	dec  c                                           ; $5c3b: $0d
	dec  c                                           ; $5c3c: $0d
	nop                                              ; $5c3d: $00
	jp   z, $0d01                                    ; $5c3e: $ca $01 $0d

	nop                                              ; $5c41: $00
	jp   hl                                          ; $5c42: $e9


	ld   [bc], a                                     ; $5c43: $02
	inc  b                                           ; $5c44: $04
	dec  b                                           ; $5c45: $05
	ld   bc, $0408                                   ; $5c46: $01 $08 $04
	dec  c                                           ; $5c49: $0d
	ld   b, $07                                      ; $5c4a: $06 $07
	ld   [$2801], sp                                 ; $5c4c: $08 $01 $28
	dec  b                                           ; $5c4f: $05
	dec  c                                           ; $5c50: $0d
	add  hl, bc                                      ; $5c51: $09
	ld   a, [bc]                                     ; $5c52: $0a
	dec  bc                                          ; $5c53: $0b
	inc  c                                           ; $5c54: $0c
	rst  $38                                         ; $5c55: $ff
	nop                                              ; $5c56: $00
	add  hl, hl                                      ; $5c57: $29
	ld   bc, $0094                                   ; $5c58: $01 $94 $00
	ld   c, c                                        ; $5c5b: $49
	ld   [bc], a                                     ; $5c5c: $02
	add  h                                           ; $5c5d: $84
	add  l                                           ; $5c5e: $85
	nop                                              ; $5c5f: $00
	ld   l, c                                        ; $5c60: $69
	ld   [bc], a                                     ; $5c61: $02
	add  [hl]                                        ; $5c62: $86
	add  a                                           ; $5c63: $87
	nop                                              ; $5c64: $00
	adc  c                                           ; $5c65: $89
	ld   [bc], a                                     ; $5c66: $02
	ld   [$0009], sp                                 ; $5c67: $08 $09 $00
	and  a                                           ; $5c6a: $a7
	ld   bc, $0015                                   ; $5c6b: $01 $15 $00
	xor  c                                           ; $5c6e: $a9
	ld   [bc], a                                     ; $5c6f: $02
	ld   a, [bc]                                     ; $5c70: $0a
	dec  bc                                          ; $5c71: $0b
	nop                                              ; $5c72: $00
	ret                                              ; $5c73: $c9


	ld   [bc], a                                     ; $5c74: $02
	inc  c                                           ; $5c75: $0c
	dec  c                                           ; $5c76: $0d
	nop                                              ; $5c77: $00
	jp   hl                                          ; $5c78: $e9


	ld   [bc], a                                     ; $5c79: $02
	ld   c, $0f                                      ; $5c7a: $0e $0f
	ld   bc, $0209                                   ; $5c7c: $01 $09 $02
	db   $10                                         ; $5c7f: $10
	ld   de, $2901                                   ; $5c80: $11 $01 $29
	ld   [bc], a                                     ; $5c83: $02
	ld   [de], a                                     ; $5c84: $12
	inc  de                                          ; $5c85: $13
	rst  $38                                         ; $5c86: $ff
	nop                                              ; $5c87: $00
	and  a                                           ; $5c88: $a7
	ld   [bc], a                                     ; $5c89: $02
	add  b                                           ; $5c8a: $80
	add  c                                           ; $5c8b: $81
	nop                                              ; $5c8c: $00
	xor  d                                           ; $5c8d: $aa
	ld   bc, $0082                                   ; $5c8e: $01 $82 $00
	ret  z                                           ; $5c91: $c8

	dec  b                                           ; $5c92: $05
	add  e                                           ; $5c93: $83
	add  h                                           ; $5c94: $84
	add  l                                           ; $5c95: $85
	add  [hl]                                        ; $5c96: $86
	add  a                                           ; $5c97: $87
	nop                                              ; $5c98: $00
	add  sp, $06                                     ; $5c99: $e8 $06
	adc  b                                           ; $5c9b: $88
	adc  c                                           ; $5c9c: $89
	adc  d                                           ; $5c9d: $8a
	adc  e                                           ; $5c9e: $8b
	adc  h                                           ; $5c9f: $8c
	adc  l                                           ; $5ca0: $8d
	ld   bc, $0408                                   ; $5ca1: $01 $08 $04
	adc  [hl]                                        ; $5ca4: $8e
	adc  a                                           ; $5ca5: $8f
	sub  b                                           ; $5ca6: $90
	sub  c                                           ; $5ca7: $91
	ld   bc, $0428                                   ; $5ca8: $01 $28 $04
	sub  d                                           ; $5cab: $92
	sub  e                                           ; $5cac: $93
	sub  h                                           ; $5cad: $94
	sub  l                                           ; $5cae: $95
	rst  $38                                         ; $5caf: $ff
	stop                                             ; $5cb0: $10 $00
	rst  $38                                         ; $5cb2: $ff
	nop                                              ; $5cb3: $00
	rst  $38                                         ; $5cb4: $ff
	nop                                              ; $5cb5: $00
	rst  $38                                         ; $5cb6: $ff
	nop                                              ; $5cb7: $00
	rst  $38                                         ; $5cb8: $ff
	nop                                              ; $5cb9: $00
	rst  $38                                         ; $5cba: $ff
	nop                                              ; $5cbb: $00
	rst  $38                                         ; $5cbc: $ff
	nop                                              ; $5cbd: $00
	rst  $38                                         ; $5cbe: $ff
	nop                                              ; $5cbf: $00
	rst  $38                                         ; $5cc0: $ff
	nop                                              ; $5cc1: $00
	rst  $38                                         ; $5cc2: $ff
	nop                                              ; $5cc3: $00
	rst  $38                                         ; $5cc4: $ff
	nop                                              ; $5cc5: $00
	rst  $38                                         ; $5cc6: $ff
	nop                                              ; $5cc7: $00
	rst  $38                                         ; $5cc8: $ff
	nop                                              ; $5cc9: $00
	rst  $38                                         ; $5cca: $ff
	nop                                              ; $5ccb: $00
	rst  $38                                         ; $5ccc: $ff
	nop                                              ; $5ccd: $00
	rst  $38                                         ; $5cce: $ff
	nop                                              ; $5ccf: $00
	rst  $28                                         ; $5cd0: $ef
	nop                                              ; $5cd1: $00
	stop                                             ; $5cd2: $10 $00
	rst  $38                                         ; $5cd4: $ff
	nop                                              ; $5cd5: $00
	rst  $38                                         ; $5cd6: $ff
	nop                                              ; $5cd7: $00
	rst  $38                                         ; $5cd8: $ff
	nop                                              ; $5cd9: $00
	rst  $38                                         ; $5cda: $ff
	nop                                              ; $5cdb: $00
	rst  $38                                         ; $5cdc: $ff
	nop                                              ; $5cdd: $00
	rst  $38                                         ; $5cde: $ff
	nop                                              ; $5cdf: $00
	rst  $38                                         ; $5ce0: $ff
	nop                                              ; $5ce1: $00
	rst  $38                                         ; $5ce2: $ff
	nop                                              ; $5ce3: $00
	rst  $38                                         ; $5ce4: $ff
	nop                                              ; $5ce5: $00
	rst  $38                                         ; $5ce6: $ff
	nop                                              ; $5ce7: $00
	rst  $38                                         ; $5ce8: $ff
	nop                                              ; $5ce9: $00
	rst  $38                                         ; $5cea: $ff
	nop                                              ; $5ceb: $00
	rst  $38                                         ; $5cec: $ff
	nop                                              ; $5ced: $00
	rst  $38                                         ; $5cee: $ff
	nop                                              ; $5cef: $00
	rst  $38                                         ; $5cf0: $ff
	nop                                              ; $5cf1: $00
	rst  $28                                         ; $5cf2: $ef
	nop                                              ; $5cf3: $00
	stop                                             ; $5cf4: $10 $00
	rst  $38                                         ; $5cf6: $ff
	nop                                              ; $5cf7: $00
	rst  $38                                         ; $5cf8: $ff
	nop                                              ; $5cf9: $00
	rst  $38                                         ; $5cfa: $ff
	nop                                              ; $5cfb: $00
	rst  $38                                         ; $5cfc: $ff
	nop                                              ; $5cfd: $00
	rst  $38                                         ; $5cfe: $ff
	nop                                              ; $5cff: $00
	rst  $38                                         ; $5d00: $ff
	nop                                              ; $5d01: $00
	rst  $38                                         ; $5d02: $ff
	nop                                              ; $5d03: $00
	rst  $38                                         ; $5d04: $ff
	nop                                              ; $5d05: $00
	rst  $38                                         ; $5d06: $ff
	nop                                              ; $5d07: $00
	rst  $38                                         ; $5d08: $ff
	nop                                              ; $5d09: $00
	rst  $38                                         ; $5d0a: $ff
	nop                                              ; $5d0b: $00
	rst  $38                                         ; $5d0c: $ff
	nop                                              ; $5d0d: $00
	rst  $38                                         ; $5d0e: $ff
	nop                                              ; $5d0f: $00
	rst  $38                                         ; $5d10: $ff
	nop                                              ; $5d11: $00
	rst  $38                                         ; $5d12: $ff
	nop                                              ; $5d13: $00
	rst  $28                                         ; $5d14: $ef
	nop                                              ; $5d15: $00
	stop                                             ; $5d16: $10 $00
	rst  $38                                         ; $5d18: $ff
	nop                                              ; $5d19: $00
	rst  $38                                         ; $5d1a: $ff
	nop                                              ; $5d1b: $00
	rst  $38                                         ; $5d1c: $ff
	nop                                              ; $5d1d: $00
	rst  $38                                         ; $5d1e: $ff
	nop                                              ; $5d1f: $00
	rst  $38                                         ; $5d20: $ff
	nop                                              ; $5d21: $00
	rst  $38                                         ; $5d22: $ff
	nop                                              ; $5d23: $00
	rst  $38                                         ; $5d24: $ff
	nop                                              ; $5d25: $00
	rst  $38                                         ; $5d26: $ff
	nop                                              ; $5d27: $00
	rst  $38                                         ; $5d28: $ff
	nop                                              ; $5d29: $00
	rst  $38                                         ; $5d2a: $ff
	nop                                              ; $5d2b: $00
	rst  $38                                         ; $5d2c: $ff
	nop                                              ; $5d2d: $00
	rst  $38                                         ; $5d2e: $ff
	nop                                              ; $5d2f: $00
	rst  $38                                         ; $5d30: $ff
	nop                                              ; $5d31: $00
	rst  $38                                         ; $5d32: $ff
	nop                                              ; $5d33: $00
	rst  $38                                         ; $5d34: $ff
	nop                                              ; $5d35: $00
	rst  $28                                         ; $5d36: $ef
	nop                                              ; $5d37: $00
	stop                                             ; $5d38: $10 $00
	rst  $38                                         ; $5d3a: $ff
	nop                                              ; $5d3b: $00
	rst  $38                                         ; $5d3c: $ff
	nop                                              ; $5d3d: $00
	rst  $38                                         ; $5d3e: $ff
	nop                                              ; $5d3f: $00
	rst  $38                                         ; $5d40: $ff
	nop                                              ; $5d41: $00
	rst  $38                                         ; $5d42: $ff
	nop                                              ; $5d43: $00
	rst  $38                                         ; $5d44: $ff
	nop                                              ; $5d45: $00
	rst  $38                                         ; $5d46: $ff
	nop                                              ; $5d47: $00
	rst  $38                                         ; $5d48: $ff
	nop                                              ; $5d49: $00
	rst  $38                                         ; $5d4a: $ff
	nop                                              ; $5d4b: $00
	rst  $38                                         ; $5d4c: $ff
	nop                                              ; $5d4d: $00
	rst  $38                                         ; $5d4e: $ff
	nop                                              ; $5d4f: $00
	rst  $38                                         ; $5d50: $ff
	nop                                              ; $5d51: $00
	rst  $38                                         ; $5d52: $ff
	nop                                              ; $5d53: $00
	rst  $38                                         ; $5d54: $ff
	nop                                              ; $5d55: $00
	rst  $38                                         ; $5d56: $ff
	nop                                              ; $5d57: $00
	rst  $28                                         ; $5d58: $ef
	nop                                              ; $5d59: $00
	stop                                             ; $5d5a: $10 $00
	rst  $38                                         ; $5d5c: $ff
	nop                                              ; $5d5d: $00
	rst  $38                                         ; $5d5e: $ff
	nop                                              ; $5d5f: $00
	rst  $38                                         ; $5d60: $ff
	nop                                              ; $5d61: $00
	rst  $38                                         ; $5d62: $ff
	nop                                              ; $5d63: $00
	rst  $38                                         ; $5d64: $ff
	nop                                              ; $5d65: $00
	rst  $38                                         ; $5d66: $ff
	nop                                              ; $5d67: $00
	rst  $38                                         ; $5d68: $ff
	nop                                              ; $5d69: $00
	rst  $38                                         ; $5d6a: $ff
	nop                                              ; $5d6b: $00
	rst  $38                                         ; $5d6c: $ff
	nop                                              ; $5d6d: $00
	rst  $38                                         ; $5d6e: $ff
	nop                                              ; $5d6f: $00
	rst  $38                                         ; $5d70: $ff
	nop                                              ; $5d71: $00
	rst  $38                                         ; $5d72: $ff
	nop                                              ; $5d73: $00
	rst  $38                                         ; $5d74: $ff
	nop                                              ; $5d75: $00
	rst  $38                                         ; $5d76: $ff
	nop                                              ; $5d77: $00
	rst  $38                                         ; $5d78: $ff
	nop                                              ; $5d79: $00
	rst  $28                                         ; $5d7a: $ef
	nop                                              ; $5d7b: $00
	stop                                             ; $5d7c: $10 $00
	rst  $38                                         ; $5d7e: $ff
	nop                                              ; $5d7f: $00
	rst  $38                                         ; $5d80: $ff
	nop                                              ; $5d81: $00
	rst  $38                                         ; $5d82: $ff
	nop                                              ; $5d83: $00
	rst  $38                                         ; $5d84: $ff
	nop                                              ; $5d85: $00
	rst  $38                                         ; $5d86: $ff
	nop                                              ; $5d87: $00
	rst  $38                                         ; $5d88: $ff
	nop                                              ; $5d89: $00
	rst  $38                                         ; $5d8a: $ff
	nop                                              ; $5d8b: $00
	rst  $38                                         ; $5d8c: $ff
	nop                                              ; $5d8d: $00
	rst  $38                                         ; $5d8e: $ff
	nop                                              ; $5d8f: $00
	rst  $38                                         ; $5d90: $ff
	nop                                              ; $5d91: $00
	rst  $38                                         ; $5d92: $ff
	nop                                              ; $5d93: $00
	rst  $38                                         ; $5d94: $ff
	nop                                              ; $5d95: $00
	rst  $38                                         ; $5d96: $ff
	nop                                              ; $5d97: $00
	rst  $38                                         ; $5d98: $ff
	nop                                              ; $5d99: $00
	rst  $38                                         ; $5d9a: $ff
	nop                                              ; $5d9b: $00
	rst  $28                                         ; $5d9c: $ef
	nop                                              ; $5d9d: $00
	stop                                             ; $5d9e: $10 $00
	rst  $38                                         ; $5da0: $ff
	nop                                              ; $5da1: $00
	rst  $38                                         ; $5da2: $ff
	nop                                              ; $5da3: $00
	rst  $38                                         ; $5da4: $ff
	nop                                              ; $5da5: $00
	rst  $38                                         ; $5da6: $ff
	nop                                              ; $5da7: $00
	rst  $38                                         ; $5da8: $ff
	nop                                              ; $5da9: $00
	rst  $38                                         ; $5daa: $ff
	nop                                              ; $5dab: $00
	rst  $38                                         ; $5dac: $ff
	nop                                              ; $5dad: $00
	rst  $38                                         ; $5dae: $ff
	nop                                              ; $5daf: $00
	rst  $38                                         ; $5db0: $ff
	nop                                              ; $5db1: $00
	rst  $38                                         ; $5db2: $ff
	nop                                              ; $5db3: $00
	rst  $38                                         ; $5db4: $ff
	nop                                              ; $5db5: $00
	rst  $38                                         ; $5db6: $ff
	nop                                              ; $5db7: $00
	rst  $38                                         ; $5db8: $ff
	nop                                              ; $5db9: $00
	rst  $38                                         ; $5dba: $ff
	nop                                              ; $5dbb: $00
	rst  $38                                         ; $5dbc: $ff
	nop                                              ; $5dbd: $00
	rst  $28                                         ; $5dbe: $ef
	nop                                              ; $5dbf: $00
	stop                                             ; $5dc0: $10 $00
	rst  $38                                         ; $5dc2: $ff
	nop                                              ; $5dc3: $00
	rst  $38                                         ; $5dc4: $ff
	nop                                              ; $5dc5: $00
	rst  $38                                         ; $5dc6: $ff
	nop                                              ; $5dc7: $00
	rst  $38                                         ; $5dc8: $ff
	nop                                              ; $5dc9: $00
	rst  $38                                         ; $5dca: $ff
	nop                                              ; $5dcb: $00
	rst  $38                                         ; $5dcc: $ff
	nop                                              ; $5dcd: $00
	rst  $38                                         ; $5dce: $ff
	nop                                              ; $5dcf: $00
	rst  $38                                         ; $5dd0: $ff
	nop                                              ; $5dd1: $00
	rst  $38                                         ; $5dd2: $ff
	nop                                              ; $5dd3: $00
	rst  $38                                         ; $5dd4: $ff
	nop                                              ; $5dd5: $00
	rst  $38                                         ; $5dd6: $ff
	nop                                              ; $5dd7: $00
	rst  $38                                         ; $5dd8: $ff
	nop                                              ; $5dd9: $00
	rst  $38                                         ; $5dda: $ff
	nop                                              ; $5ddb: $00
	rst  $38                                         ; $5ddc: $ff
	nop                                              ; $5ddd: $00
	rst  $38                                         ; $5dde: $ff
	nop                                              ; $5ddf: $00
	rst  $28                                         ; $5de0: $ef
	nop                                              ; $5de1: $00
	stop                                             ; $5de2: $10 $00
	rst  $38                                         ; $5de4: $ff
	nop                                              ; $5de5: $00
	rst  $38                                         ; $5de6: $ff
	nop                                              ; $5de7: $00
	rst  $38                                         ; $5de8: $ff
	nop                                              ; $5de9: $00
	rst  $38                                         ; $5dea: $ff
	nop                                              ; $5deb: $00
	rst  $38                                         ; $5dec: $ff
	nop                                              ; $5ded: $00
	rst  $38                                         ; $5dee: $ff
	nop                                              ; $5def: $00
	rst  $38                                         ; $5df0: $ff
	nop                                              ; $5df1: $00
	rst  $38                                         ; $5df2: $ff
	nop                                              ; $5df3: $00
	rst  $38                                         ; $5df4: $ff
	nop                                              ; $5df5: $00
	rst  $38                                         ; $5df6: $ff
	nop                                              ; $5df7: $00
	rst  $38                                         ; $5df8: $ff
	nop                                              ; $5df9: $00
	rst  $38                                         ; $5dfa: $ff
	nop                                              ; $5dfb: $00
	rst  $38                                         ; $5dfc: $ff
	nop                                              ; $5dfd: $00
	rst  $38                                         ; $5dfe: $ff
	nop                                              ; $5dff: $00
	rst  $38                                         ; $5e00: $ff
	nop                                              ; $5e01: $00
	rst  $28                                         ; $5e02: $ef
	nop                                              ; $5e03: $00
	stop                                             ; $5e04: $10 $00
	rst  $38                                         ; $5e06: $ff
	nop                                              ; $5e07: $00
	rst  $38                                         ; $5e08: $ff
	nop                                              ; $5e09: $00
	rst  $38                                         ; $5e0a: $ff
	nop                                              ; $5e0b: $00
	rst  $38                                         ; $5e0c: $ff
	nop                                              ; $5e0d: $00
	rst  $38                                         ; $5e0e: $ff
	nop                                              ; $5e0f: $00
	rst  $38                                         ; $5e10: $ff
	nop                                              ; $5e11: $00
	rst  $38                                         ; $5e12: $ff
	nop                                              ; $5e13: $00
	rst  $38                                         ; $5e14: $ff
	nop                                              ; $5e15: $00
	rst  $38                                         ; $5e16: $ff
	nop                                              ; $5e17: $00
	rst  $38                                         ; $5e18: $ff
	nop                                              ; $5e19: $00
	rst  $38                                         ; $5e1a: $ff
	nop                                              ; $5e1b: $00
	rst  $38                                         ; $5e1c: $ff
	nop                                              ; $5e1d: $00
	rst  $38                                         ; $5e1e: $ff
	nop                                              ; $5e1f: $00
	rst  $38                                         ; $5e20: $ff
	nop                                              ; $5e21: $00
	rst  $38                                         ; $5e22: $ff
	nop                                              ; $5e23: $00
	rst  $28                                         ; $5e24: $ef
	nop                                              ; $5e25: $00
	stop                                             ; $5e26: $10 $00
	rst  $38                                         ; $5e28: $ff
	nop                                              ; $5e29: $00
	rst  $38                                         ; $5e2a: $ff
	nop                                              ; $5e2b: $00
	rst  $38                                         ; $5e2c: $ff
	nop                                              ; $5e2d: $00
	rst  $38                                         ; $5e2e: $ff
	nop                                              ; $5e2f: $00
	rst  $38                                         ; $5e30: $ff
	nop                                              ; $5e31: $00
	rst  $38                                         ; $5e32: $ff
	nop                                              ; $5e33: $00
	rst  $38                                         ; $5e34: $ff
	nop                                              ; $5e35: $00
	rst  $38                                         ; $5e36: $ff
	nop                                              ; $5e37: $00
	rst  $38                                         ; $5e38: $ff
	nop                                              ; $5e39: $00
	rst  $38                                         ; $5e3a: $ff
	nop                                              ; $5e3b: $00
	rst  $38                                         ; $5e3c: $ff
	nop                                              ; $5e3d: $00
	rst  $38                                         ; $5e3e: $ff
	nop                                              ; $5e3f: $00
	rst  $38                                         ; $5e40: $ff
	nop                                              ; $5e41: $00
	rst  $38                                         ; $5e42: $ff
	nop                                              ; $5e43: $00
	rst  $38                                         ; $5e44: $ff
	nop                                              ; $5e45: $00
	rst  $28                                         ; $5e46: $ef
	nop                                              ; $5e47: $00
	stop                                             ; $5e48: $10 $00
	rst  $38                                         ; $5e4a: $ff
	nop                                              ; $5e4b: $00
	rst  $38                                         ; $5e4c: $ff
	nop                                              ; $5e4d: $00
	rst  $38                                         ; $5e4e: $ff
	nop                                              ; $5e4f: $00
	rst  $38                                         ; $5e50: $ff
	nop                                              ; $5e51: $00
	rst  $38                                         ; $5e52: $ff
	nop                                              ; $5e53: $00
	rst  $38                                         ; $5e54: $ff
	nop                                              ; $5e55: $00
	rst  $38                                         ; $5e56: $ff
	nop                                              ; $5e57: $00
	rst  $38                                         ; $5e58: $ff
	nop                                              ; $5e59: $00
	rst  $38                                         ; $5e5a: $ff
	nop                                              ; $5e5b: $00
	rst  $38                                         ; $5e5c: $ff
	nop                                              ; $5e5d: $00
	rst  $38                                         ; $5e5e: $ff
	nop                                              ; $5e5f: $00
	rst  $38                                         ; $5e60: $ff
	nop                                              ; $5e61: $00
	rst  $38                                         ; $5e62: $ff
	nop                                              ; $5e63: $00
	rst  $38                                         ; $5e64: $ff
	nop                                              ; $5e65: $00
	rst  $38                                         ; $5e66: $ff
	nop                                              ; $5e67: $00
	rst  $28                                         ; $5e68: $ef
	nop                                              ; $5e69: $00
	stop                                             ; $5e6a: $10 $00
	rst  $38                                         ; $5e6c: $ff
	nop                                              ; $5e6d: $00
	rst  $38                                         ; $5e6e: $ff
	nop                                              ; $5e6f: $00
	rst  $38                                         ; $5e70: $ff
	nop                                              ; $5e71: $00
	rst  $38                                         ; $5e72: $ff
	nop                                              ; $5e73: $00
	rst  $38                                         ; $5e74: $ff
	nop                                              ; $5e75: $00
	rst  $38                                         ; $5e76: $ff
	nop                                              ; $5e77: $00
	rst  $38                                         ; $5e78: $ff
	nop                                              ; $5e79: $00
	rst  $38                                         ; $5e7a: $ff
	nop                                              ; $5e7b: $00
	rst  $38                                         ; $5e7c: $ff
	nop                                              ; $5e7d: $00
	rst  $38                                         ; $5e7e: $ff
	nop                                              ; $5e7f: $00
	rst  $38                                         ; $5e80: $ff
	nop                                              ; $5e81: $00
	rst  $38                                         ; $5e82: $ff
	nop                                              ; $5e83: $00
	rst  $38                                         ; $5e84: $ff
	nop                                              ; $5e85: $00
	rst  $38                                         ; $5e86: $ff
	nop                                              ; $5e87: $00
	rst  $38                                         ; $5e88: $ff
	nop                                              ; $5e89: $00
	rst  $28                                         ; $5e8a: $ef
	nop                                              ; $5e8b: $00
	stop                                             ; $5e8c: $10 $00
	rst  $38                                         ; $5e8e: $ff
	nop                                              ; $5e8f: $00
	rst  $38                                         ; $5e90: $ff
	nop                                              ; $5e91: $00
	rst  $38                                         ; $5e92: $ff
	nop                                              ; $5e93: $00
	rst  $38                                         ; $5e94: $ff
	nop                                              ; $5e95: $00
	rst  $38                                         ; $5e96: $ff
	nop                                              ; $5e97: $00
	rst  $38                                         ; $5e98: $ff
	nop                                              ; $5e99: $00
	rst  $38                                         ; $5e9a: $ff
	nop                                              ; $5e9b: $00
	rst  $38                                         ; $5e9c: $ff
	nop                                              ; $5e9d: $00
	rst  $38                                         ; $5e9e: $ff
	nop                                              ; $5e9f: $00
	rst  $38                                         ; $5ea0: $ff
	nop                                              ; $5ea1: $00
	rst  $38                                         ; $5ea2: $ff
	nop                                              ; $5ea3: $00
	rst  $38                                         ; $5ea4: $ff
	nop                                              ; $5ea5: $00
	rst  $38                                         ; $5ea6: $ff
	nop                                              ; $5ea7: $00
	rst  $38                                         ; $5ea8: $ff
	nop                                              ; $5ea9: $00
	rst  $38                                         ; $5eaa: $ff
	nop                                              ; $5eab: $00
	rst  $28                                         ; $5eac: $ef
	nop                                              ; $5ead: $00
	stop                                             ; $5eae: $10 $00
	rst  $38                                         ; $5eb0: $ff
	nop                                              ; $5eb1: $00
	rst  $38                                         ; $5eb2: $ff
	nop                                              ; $5eb3: $00
	rst  $38                                         ; $5eb4: $ff
	nop                                              ; $5eb5: $00
	rst  $38                                         ; $5eb6: $ff
	nop                                              ; $5eb7: $00
	rst  $38                                         ; $5eb8: $ff
	nop                                              ; $5eb9: $00
	rst  $38                                         ; $5eba: $ff
	nop                                              ; $5ebb: $00
	rst  $38                                         ; $5ebc: $ff
	nop                                              ; $5ebd: $00
	rst  $38                                         ; $5ebe: $ff
	nop                                              ; $5ebf: $00
	rst  $38                                         ; $5ec0: $ff
	nop                                              ; $5ec1: $00
	rst  $38                                         ; $5ec2: $ff
	nop                                              ; $5ec3: $00
	rst  $38                                         ; $5ec4: $ff
	nop                                              ; $5ec5: $00
	rst  $38                                         ; $5ec6: $ff
	nop                                              ; $5ec7: $00
	rst  $38                                         ; $5ec8: $ff
	nop                                              ; $5ec9: $00
	rst  $38                                         ; $5eca: $ff
	nop                                              ; $5ecb: $00
	rst  $38                                         ; $5ecc: $ff
	nop                                              ; $5ecd: $00
	rst  $28                                         ; $5ece: $ef
	nop                                              ; $5ecf: $00
	stop                                             ; $5ed0: $10 $00
	rst  $38                                         ; $5ed2: $ff
	nop                                              ; $5ed3: $00
	rst  $38                                         ; $5ed4: $ff
	nop                                              ; $5ed5: $00
	rst  $38                                         ; $5ed6: $ff
	nop                                              ; $5ed7: $00
	rst  $38                                         ; $5ed8: $ff
	nop                                              ; $5ed9: $00
	rst  $38                                         ; $5eda: $ff
	nop                                              ; $5edb: $00
	rst  $38                                         ; $5edc: $ff
	nop                                              ; $5edd: $00
	rst  $38                                         ; $5ede: $ff
	nop                                              ; $5edf: $00
	rst  $38                                         ; $5ee0: $ff
	nop                                              ; $5ee1: $00
	rst  $38                                         ; $5ee2: $ff
	nop                                              ; $5ee3: $00
	rst  $38                                         ; $5ee4: $ff
	nop                                              ; $5ee5: $00
	rst  $38                                         ; $5ee6: $ff
	nop                                              ; $5ee7: $00
	rst  $38                                         ; $5ee8: $ff
	nop                                              ; $5ee9: $00
	rst  $38                                         ; $5eea: $ff
	nop                                              ; $5eeb: $00
	rst  $38                                         ; $5eec: $ff
	nop                                              ; $5eed: $00
	rst  $38                                         ; $5eee: $ff
	nop                                              ; $5eef: $00
	rst  $28                                         ; $5ef0: $ef
	nop                                              ; $5ef1: $00
	stop                                             ; $5ef2: $10 $00
	rst  $38                                         ; $5ef4: $ff
	nop                                              ; $5ef5: $00
	rst  $38                                         ; $5ef6: $ff
	nop                                              ; $5ef7: $00
	rst  $38                                         ; $5ef8: $ff
	nop                                              ; $5ef9: $00
	rst  $38                                         ; $5efa: $ff
	nop                                              ; $5efb: $00
	rst  $38                                         ; $5efc: $ff
	nop                                              ; $5efd: $00
	rst  $38                                         ; $5efe: $ff
	nop                                              ; $5eff: $00
	rst  $38                                         ; $5f00: $ff
	nop                                              ; $5f01: $00
	rst  $38                                         ; $5f02: $ff
	nop                                              ; $5f03: $00

Call_0a4_5f04:
	rst  $38                                         ; $5f04: $ff
	nop                                              ; $5f05: $00
	rst  $38                                         ; $5f06: $ff
	nop                                              ; $5f07: $00
	rst  $38                                         ; $5f08: $ff
	nop                                              ; $5f09: $00
	rst  $38                                         ; $5f0a: $ff
	nop                                              ; $5f0b: $00
	rst  $38                                         ; $5f0c: $ff
	nop                                              ; $5f0d: $00
	rst  $38                                         ; $5f0e: $ff
	nop                                              ; $5f0f: $00
	rst  $38                                         ; $5f10: $ff
	nop                                              ; $5f11: $00
	rst  $28                                         ; $5f12: $ef
	nop                                              ; $5f13: $00
	stop                                             ; $5f14: $10 $00
	rst  $38                                         ; $5f16: $ff
	nop                                              ; $5f17: $00
	rst  $38                                         ; $5f18: $ff
	nop                                              ; $5f19: $00
	rst  $38                                         ; $5f1a: $ff
	nop                                              ; $5f1b: $00
	rst  $38                                         ; $5f1c: $ff
	nop                                              ; $5f1d: $00
	rst  $38                                         ; $5f1e: $ff
	nop                                              ; $5f1f: $00
	rst  $38                                         ; $5f20: $ff
	nop                                              ; $5f21: $00
	rst  $38                                         ; $5f22: $ff
	nop                                              ; $5f23: $00
	rst  $38                                         ; $5f24: $ff
	nop                                              ; $5f25: $00
	rst  $38                                         ; $5f26: $ff
	nop                                              ; $5f27: $00
	rst  $38                                         ; $5f28: $ff
	nop                                              ; $5f29: $00
	rst  $38                                         ; $5f2a: $ff
	nop                                              ; $5f2b: $00
	rst  $38                                         ; $5f2c: $ff
	nop                                              ; $5f2d: $00
	rst  $38                                         ; $5f2e: $ff
	nop                                              ; $5f2f: $00
	rst  $38                                         ; $5f30: $ff
	nop                                              ; $5f31: $00
	rst  $38                                         ; $5f32: $ff
	nop                                              ; $5f33: $00
	rst  $28                                         ; $5f34: $ef
	nop                                              ; $5f35: $00
	stop                                             ; $5f36: $10 $00
	rst  $38                                         ; $5f38: $ff
	nop                                              ; $5f39: $00
	rst  $38                                         ; $5f3a: $ff
	nop                                              ; $5f3b: $00
	rst  $38                                         ; $5f3c: $ff
	nop                                              ; $5f3d: $00
	rst  $38                                         ; $5f3e: $ff
	nop                                              ; $5f3f: $00
	rst  $38                                         ; $5f40: $ff
	nop                                              ; $5f41: $00
	rst  $38                                         ; $5f42: $ff
	nop                                              ; $5f43: $00
	rst  $38                                         ; $5f44: $ff
	nop                                              ; $5f45: $00
	rst  $38                                         ; $5f46: $ff
	nop                                              ; $5f47: $00
	rst  $38                                         ; $5f48: $ff
	nop                                              ; $5f49: $00
	rst  $38                                         ; $5f4a: $ff
	nop                                              ; $5f4b: $00
	rst  $38                                         ; $5f4c: $ff
	nop                                              ; $5f4d: $00
	rst  $38                                         ; $5f4e: $ff
	nop                                              ; $5f4f: $00
	rst  $38                                         ; $5f50: $ff
	nop                                              ; $5f51: $00
	rst  $38                                         ; $5f52: $ff
	nop                                              ; $5f53: $00
	rst  $38                                         ; $5f54: $ff
	nop                                              ; $5f55: $00
	rst  $28                                         ; $5f56: $ef
	nop                                              ; $5f57: $00
	stop                                             ; $5f58: $10 $00
	rst  $38                                         ; $5f5a: $ff
	nop                                              ; $5f5b: $00
	rst  $38                                         ; $5f5c: $ff
	nop                                              ; $5f5d: $00
	rst  $38                                         ; $5f5e: $ff
	nop                                              ; $5f5f: $00
	rst  $38                                         ; $5f60: $ff
	nop                                              ; $5f61: $00
	rst  $38                                         ; $5f62: $ff
	nop                                              ; $5f63: $00
	rst  $38                                         ; $5f64: $ff
	nop                                              ; $5f65: $00
	rst  $38                                         ; $5f66: $ff
	nop                                              ; $5f67: $00
	rst  $38                                         ; $5f68: $ff
	nop                                              ; $5f69: $00
	rst  $38                                         ; $5f6a: $ff
	nop                                              ; $5f6b: $00
	rst  $38                                         ; $5f6c: $ff
	nop                                              ; $5f6d: $00
	rst  $38                                         ; $5f6e: $ff
	nop                                              ; $5f6f: $00
	rst  $38                                         ; $5f70: $ff
	nop                                              ; $5f71: $00
	rst  $38                                         ; $5f72: $ff
	nop                                              ; $5f73: $00
	rst  $38                                         ; $5f74: $ff
	nop                                              ; $5f75: $00
	rst  $38                                         ; $5f76: $ff
	nop                                              ; $5f77: $00
	rst  $28                                         ; $5f78: $ef
	nop                                              ; $5f79: $00
	stop                                             ; $5f7a: $10 $00
	rst  $38                                         ; $5f7c: $ff
	nop                                              ; $5f7d: $00
	rst  $38                                         ; $5f7e: $ff

Call_0a4_5f7f:
	nop                                              ; $5f7f: $00
	rst  $38                                         ; $5f80: $ff
	nop                                              ; $5f81: $00
	rst  $38                                         ; $5f82: $ff
	nop                                              ; $5f83: $00
	rst  $38                                         ; $5f84: $ff
	nop                                              ; $5f85: $00
	rst  $38                                         ; $5f86: $ff
	nop                                              ; $5f87: $00
	rst  $38                                         ; $5f88: $ff
	nop                                              ; $5f89: $00
	rst  $38                                         ; $5f8a: $ff
	nop                                              ; $5f8b: $00
	rst  $38                                         ; $5f8c: $ff
	nop                                              ; $5f8d: $00
	rst  $38                                         ; $5f8e: $ff
	nop                                              ; $5f8f: $00
	rst  $38                                         ; $5f90: $ff
	nop                                              ; $5f91: $00
	rst  $38                                         ; $5f92: $ff
	nop                                              ; $5f93: $00
	rst  $38                                         ; $5f94: $ff
	nop                                              ; $5f95: $00
	rst  $38                                         ; $5f96: $ff
	nop                                              ; $5f97: $00
	rst  $38                                         ; $5f98: $ff
	nop                                              ; $5f99: $00
	rst  $28                                         ; $5f9a: $ef
	nop                                              ; $5f9b: $00
	stop                                             ; $5f9c: $10 $00
	rst  $38                                         ; $5f9e: $ff
	nop                                              ; $5f9f: $00
	rst  $38                                         ; $5fa0: $ff
	nop                                              ; $5fa1: $00
	rst  $38                                         ; $5fa2: $ff
	nop                                              ; $5fa3: $00
	rst  $38                                         ; $5fa4: $ff
	nop                                              ; $5fa5: $00
	rst  $38                                         ; $5fa6: $ff
	nop                                              ; $5fa7: $00
	rst  $38                                         ; $5fa8: $ff
	nop                                              ; $5fa9: $00
	rst  $38                                         ; $5faa: $ff
	nop                                              ; $5fab: $00
	rst  $38                                         ; $5fac: $ff
	nop                                              ; $5fad: $00
	rst  $38                                         ; $5fae: $ff
	nop                                              ; $5faf: $00
	rst  $38                                         ; $5fb0: $ff
	nop                                              ; $5fb1: $00
	rst  $38                                         ; $5fb2: $ff
	nop                                              ; $5fb3: $00
	rst  $38                                         ; $5fb4: $ff
	nop                                              ; $5fb5: $00
	rst  $38                                         ; $5fb6: $ff
	nop                                              ; $5fb7: $00
	rst  $38                                         ; $5fb8: $ff
	nop                                              ; $5fb9: $00
	rst  $38                                         ; $5fba: $ff
	nop                                              ; $5fbb: $00
	rst  $28                                         ; $5fbc: $ef
	nop                                              ; $5fbd: $00
	stop                                             ; $5fbe: $10 $00
	rst  $38                                         ; $5fc0: $ff
	nop                                              ; $5fc1: $00
	rst  $38                                         ; $5fc2: $ff
	nop                                              ; $5fc3: $00
	rst  $38                                         ; $5fc4: $ff
	nop                                              ; $5fc5: $00
	rst  $38                                         ; $5fc6: $ff
	nop                                              ; $5fc7: $00
	rst  $38                                         ; $5fc8: $ff
	nop                                              ; $5fc9: $00
	rst  $38                                         ; $5fca: $ff
	nop                                              ; $5fcb: $00
	rst  $38                                         ; $5fcc: $ff
	nop                                              ; $5fcd: $00
	rst  $38                                         ; $5fce: $ff
	nop                                              ; $5fcf: $00
	rst  $38                                         ; $5fd0: $ff
	nop                                              ; $5fd1: $00
	rst  $38                                         ; $5fd2: $ff
	nop                                              ; $5fd3: $00
	rst  $38                                         ; $5fd4: $ff
	nop                                              ; $5fd5: $00
	rst  $38                                         ; $5fd6: $ff
	nop                                              ; $5fd7: $00
	rst  $38                                         ; $5fd8: $ff
	nop                                              ; $5fd9: $00
	rst  $38                                         ; $5fda: $ff
	nop                                              ; $5fdb: $00
	rst  $38                                         ; $5fdc: $ff
	nop                                              ; $5fdd: $00
	rst  $28                                         ; $5fde: $ef
	nop                                              ; $5fdf: $00
	stop                                             ; $5fe0: $10 $00
	rst  $38                                         ; $5fe2: $ff
	nop                                              ; $5fe3: $00
	rst  $38                                         ; $5fe4: $ff
	nop                                              ; $5fe5: $00
	rst  $38                                         ; $5fe6: $ff
	nop                                              ; $5fe7: $00
	rst  $38                                         ; $5fe8: $ff
	nop                                              ; $5fe9: $00
	rst  $38                                         ; $5fea: $ff
	nop                                              ; $5feb: $00
	rst  $38                                         ; $5fec: $ff
	nop                                              ; $5fed: $00
	rst  $38                                         ; $5fee: $ff
	nop                                              ; $5fef: $00
	rst  $38                                         ; $5ff0: $ff
	nop                                              ; $5ff1: $00
	rst  $38                                         ; $5ff2: $ff
	nop                                              ; $5ff3: $00
	rst  $38                                         ; $5ff4: $ff
	nop                                              ; $5ff5: $00
	rst  $38                                         ; $5ff6: $ff
	nop                                              ; $5ff7: $00
	rst  $38                                         ; $5ff8: $ff
	nop                                              ; $5ff9: $00
	rst  $38                                         ; $5ffa: $ff
	nop                                              ; $5ffb: $00
	rst  $38                                         ; $5ffc: $ff
	nop                                              ; $5ffd: $00
	rst  $38                                         ; $5ffe: $ff
	nop                                              ; $5fff: $00
	rst  $28                                         ; $6000: $ef
	nop                                              ; $6001: $00
	stop                                             ; $6002: $10 $00
	rst  $38                                         ; $6004: $ff
	nop                                              ; $6005: $00
	rst  $38                                         ; $6006: $ff
	nop                                              ; $6007: $00
	rst  $38                                         ; $6008: $ff
	nop                                              ; $6009: $00
	rst  $38                                         ; $600a: $ff
	nop                                              ; $600b: $00
	rst  $38                                         ; $600c: $ff
	nop                                              ; $600d: $00
	rst  $38                                         ; $600e: $ff
	nop                                              ; $600f: $00
	rst  $38                                         ; $6010: $ff
	nop                                              ; $6011: $00
	rst  $38                                         ; $6012: $ff
	nop                                              ; $6013: $00
	rst  $38                                         ; $6014: $ff
	nop                                              ; $6015: $00
	rst  $38                                         ; $6016: $ff
	nop                                              ; $6017: $00
	rst  $38                                         ; $6018: $ff
	nop                                              ; $6019: $00
	rst  $38                                         ; $601a: $ff
	nop                                              ; $601b: $00
	rst  $38                                         ; $601c: $ff
	nop                                              ; $601d: $00
	rst  $38                                         ; $601e: $ff
	nop                                              ; $601f: $00
	rst  $38                                         ; $6020: $ff
	nop                                              ; $6021: $00
	rst  $28                                         ; $6022: $ef
	nop                                              ; $6023: $00
	stop                                             ; $6024: $10 $00
	rst  $38                                         ; $6026: $ff
	nop                                              ; $6027: $00
	rst  $38                                         ; $6028: $ff
	nop                                              ; $6029: $00
	rst  $38                                         ; $602a: $ff
	nop                                              ; $602b: $00
	rst  $38                                         ; $602c: $ff
	nop                                              ; $602d: $00
	rst  $38                                         ; $602e: $ff
	nop                                              ; $602f: $00
	rst  $38                                         ; $6030: $ff
	nop                                              ; $6031: $00
	rst  $38                                         ; $6032: $ff
	nop                                              ; $6033: $00
	rst  $38                                         ; $6034: $ff
	nop                                              ; $6035: $00
	rst  $38                                         ; $6036: $ff
	nop                                              ; $6037: $00
	rst  $38                                         ; $6038: $ff
	nop                                              ; $6039: $00
	rst  $38                                         ; $603a: $ff
	nop                                              ; $603b: $00
	rst  $38                                         ; $603c: $ff
	nop                                              ; $603d: $00
	rst  $38                                         ; $603e: $ff
	nop                                              ; $603f: $00
	rst  $38                                         ; $6040: $ff
	nop                                              ; $6041: $00
	rst  $38                                         ; $6042: $ff
	nop                                              ; $6043: $00
	rst  $28                                         ; $6044: $ef
	nop                                              ; $6045: $00
	stop                                             ; $6046: $10 $00
	rst  $38                                         ; $6048: $ff
	nop                                              ; $6049: $00
	rst  $38                                         ; $604a: $ff
	nop                                              ; $604b: $00
	rst  $38                                         ; $604c: $ff
	nop                                              ; $604d: $00
	rst  $38                                         ; $604e: $ff
	nop                                              ; $604f: $00
	rst  $38                                         ; $6050: $ff
	nop                                              ; $6051: $00
	rst  $38                                         ; $6052: $ff
	nop                                              ; $6053: $00
	rst  $38                                         ; $6054: $ff
	nop                                              ; $6055: $00
	rst  $38                                         ; $6056: $ff
	nop                                              ; $6057: $00
	rst  $38                                         ; $6058: $ff
	nop                                              ; $6059: $00
	rst  $38                                         ; $605a: $ff
	nop                                              ; $605b: $00
	rst  $38                                         ; $605c: $ff
	nop                                              ; $605d: $00
	rst  $38                                         ; $605e: $ff
	nop                                              ; $605f: $00
	rst  $38                                         ; $6060: $ff
	nop                                              ; $6061: $00
	rst  $38                                         ; $6062: $ff
	nop                                              ; $6063: $00
	rst  $38                                         ; $6064: $ff
	nop                                              ; $6065: $00
	rst  $28                                         ; $6066: $ef
	nop                                              ; $6067: $00
	db   $fc                                         ; $6068: $fc
	ld   [hl], a                                     ; $6069: $77
	inc  sp                                          ; $606a: $33
	ld   [hl], e                                     ; $606b: $73
	ld   c, $3e                                      ; $606c: $0e $3e
	adc  [hl]                                        ; $606e: $8e
	ld   b, c                                        ; $606f: $41
	db   $fc                                         ; $6070: $fc
	ld   [hl], a                                     ; $6071: $77
	scf                                              ; $6072: $37
	ccf                                              ; $6073: $3f
	ld   d, h                                        ; $6074: $54
	ld   a, $91                                      ; $6075: $3e $91
	ld   sp, $77fc                                   ; $6077: $31 $fc $77
	db   $fd                                         ; $607a: $fd
	ld   [hl], $dd                                   ; $607b: $36 $dd
	dec  a                                           ; $607d: $3d
	or   b                                           ; $607e: $b0
	dec  h                                           ; $607f: $25
	nop                                              ; $6080: $00
	nop                                              ; $6081: $00
	nop                                              ; $6082: $00
	nop                                              ; $6083: $00
	nop                                              ; $6084: $00
	nop                                              ; $6085: $00
	nop                                              ; $6086: $00
	nop                                              ; $6087: $00
	rst  $38                                         ; $6088: $ff
	ld   e, a                                        ; $6089: $5f
	rst  $38                                         ; $608a: $ff
	ld   a, a                                        ; $608b: $7f
	sbc  a                                           ; $608c: $9f
	ld   [hl], $83                                   ; $608d: $36 $83
	inc  d                                           ; $608f: $14
	ld   e, a                                        ; $6090: $5f
	ld   l, e                                        ; $6091: $6b
	rst  $38                                         ; $6092: $ff
	ld   a, a                                        ; $6093: $7f
	sbc  a                                           ; $6094: $9f
	ld   [hl], $80                                   ; $6095: $36 $80
	ld   c, h                                        ; $6097: $4c
	rst  $30                                         ; $6098: $f7
	ld   a, a                                        ; $6099: $7f
	rst  $38                                         ; $609a: $ff
	ld   a, a                                        ; $609b: $7f
	db   $dd                                         ; $609c: $dd
	ld   e, $62                                      ; $609d: $1e $62
	inc  e                                           ; $609f: $1c
	nop                                              ; $60a0: $00
	nop                                              ; $60a1: $00
	nop                                              ; $60a2: $00
	nop                                              ; $60a3: $00
	nop                                              ; $60a4: $00
	nop                                              ; $60a5: $00
	nop                                              ; $60a6: $00
	nop                                              ; $60a7: $00
	rst  $38                                         ; $60a8: $ff
	ld   e, a                                        ; $60a9: $5f
	rst  $38                                         ; $60aa: $ff
	ld   a, a                                        ; $60ab: $7f
	sbc  a                                           ; $60ac: $9f
	ld   [hl], $83                                   ; $60ad: $36 $83
	inc  d                                           ; $60af: $14
	ld   e, a                                        ; $60b0: $5f
	ld   l, e                                        ; $60b1: $6b
	rst  $38                                         ; $60b2: $ff
	ld   a, a                                        ; $60b3: $7f
	sbc  a                                           ; $60b4: $9f
	ld   [hl], $80                                   ; $60b5: $36 $80
	ld   c, h                                        ; $60b7: $4c
	rst  $30                                         ; $60b8: $f7
	ld   a, a                                        ; $60b9: $7f
	rst  $38                                         ; $60ba: $ff
	ld   a, a                                        ; $60bb: $7f
	db   $dd                                         ; $60bc: $dd
	ld   e, $62                                      ; $60bd: $1e $62
	inc  e                                           ; $60bf: $1c
	nop                                              ; $60c0: $00
	nop                                              ; $60c1: $00
	nop                                              ; $60c2: $00
	nop                                              ; $60c3: $00
	nop                                              ; $60c4: $00
	nop                                              ; $60c5: $00
	nop                                              ; $60c6: $00
	nop                                              ; $60c7: $00
	rst  $38                                         ; $60c8: $ff
	ld   e, a                                        ; $60c9: $5f
	rst  $38                                         ; $60ca: $ff
	ld   a, a                                        ; $60cb: $7f
	sbc  a                                           ; $60cc: $9f
	ld   [hl], $83                                   ; $60cd: $36 $83
	inc  d                                           ; $60cf: $14
	ld   e, a                                        ; $60d0: $5f
	ld   l, e                                        ; $60d1: $6b
	rst  $38                                         ; $60d2: $ff
	ld   a, a                                        ; $60d3: $7f
	sbc  a                                           ; $60d4: $9f
	ld   [hl], $80                                   ; $60d5: $36 $80
	ld   c, h                                        ; $60d7: $4c
	rst  $30                                         ; $60d8: $f7
	ld   a, a                                        ; $60d9: $7f
	rst  $38                                         ; $60da: $ff
	ld   a, a                                        ; $60db: $7f
	db   $dd                                         ; $60dc: $dd
	ld   e, $62                                      ; $60dd: $1e $62
	inc  e                                           ; $60df: $1c
	nop                                              ; $60e0: $00
	nop                                              ; $60e1: $00
	nop                                              ; $60e2: $00
	nop                                              ; $60e3: $00
	nop                                              ; $60e4: $00
	nop                                              ; $60e5: $00
	nop                                              ; $60e6: $00
	nop                                              ; $60e7: $00
	rst  $38                                         ; $60e8: $ff
	ld   e, a                                        ; $60e9: $5f
	rst  $38                                         ; $60ea: $ff
	ld   a, a                                        ; $60eb: $7f
	sbc  a                                           ; $60ec: $9f
	ld   [hl], $83                                   ; $60ed: $36 $83
	inc  d                                           ; $60ef: $14
	ld   e, a                                        ; $60f0: $5f
	ld   l, e                                        ; $60f1: $6b
	rst  $38                                         ; $60f2: $ff
	ld   a, a                                        ; $60f3: $7f
	sbc  a                                           ; $60f4: $9f
	ld   [hl], $80                                   ; $60f5: $36 $80
	ld   c, h                                        ; $60f7: $4c
	rst  $30                                         ; $60f8: $f7
	ld   a, a                                        ; $60f9: $7f
	rst  $38                                         ; $60fa: $ff
	ld   a, a                                        ; $60fb: $7f
	db   $dd                                         ; $60fc: $dd
	ld   e, $62                                      ; $60fd: $1e $62
	inc  e                                           ; $60ff: $1c
	cp   c                                           ; $6100: $b9
	halt                                             ; $6101: $76
	sbc  l                                           ; $6102: $9d
	dec  sp                                          ; $6103: $3b
	sbc  b                                           ; $6104: $98
	ld   de, $1483                                   ; $6105: $11 $83 $14
	rst  $38                                         ; $6108: $ff
	ld   e, a                                        ; $6109: $5f
	rst  $38                                         ; $610a: $ff
	ld   a, a                                        ; $610b: $7f
	sbc  a                                           ; $610c: $9f
	ld   [hl], $83                                   ; $610d: $36 $83
	inc  d                                           ; $610f: $14
	ld   e, a                                        ; $6110: $5f
	ld   l, e                                        ; $6111: $6b
	rst  $38                                         ; $6112: $ff
	ld   a, a                                        ; $6113: $7f
	sbc  a                                           ; $6114: $9f
	ld   [hl], $80                                   ; $6115: $36 $80
	ld   c, h                                        ; $6117: $4c
	rst  $30                                         ; $6118: $f7
	ld   a, a                                        ; $6119: $7f
	rst  $38                                         ; $611a: $ff
	ld   a, a                                        ; $611b: $7f
	db   $dd                                         ; $611c: $dd
	ld   e, $62                                      ; $611d: $1e $62
	inc  e                                           ; $611f: $1c
	xor  l                                           ; $6120: $ad
	ld   e, e                                        ; $6121: $5b
	ld   sp, $205e                                   ; $6122: $31 $5e $20
	ld   [hl], d                                     ; $6125: $72
	add  b                                           ; $6126: $80
	ld   c, h                                        ; $6127: $4c
	rst  $38                                         ; $6128: $ff
	ld   e, a                                        ; $6129: $5f
	rst  $38                                         ; $612a: $ff
	ld   a, a                                        ; $612b: $7f
	sbc  a                                           ; $612c: $9f
	ld   [hl], $83                                   ; $612d: $36 $83
	inc  d                                           ; $612f: $14
	ld   e, a                                        ; $6130: $5f
	ld   l, e                                        ; $6131: $6b
	rst  $38                                         ; $6132: $ff
	ld   a, a                                        ; $6133: $7f
	sbc  a                                           ; $6134: $9f
	ld   [hl], $80                                   ; $6135: $36 $80
	ld   c, h                                        ; $6137: $4c
	rst  $30                                         ; $6138: $f7
	ld   a, a                                        ; $6139: $7f
	rst  $38                                         ; $613a: $ff
	ld   a, a                                        ; $613b: $7f
	db   $dd                                         ; $613c: $dd
	ld   e, $62                                      ; $613d: $1e $62
	inc  e                                           ; $613f: $1c
	nop                                              ; $6140: $00
	nop                                              ; $6141: $00
	nop                                              ; $6142: $00
	nop                                              ; $6143: $00
	nop                                              ; $6144: $00
	nop                                              ; $6145: $00
	nop                                              ; $6146: $00
	nop                                              ; $6147: $00
	rst  $30                                         ; $6148: $f7
	ld   a, a                                        ; $6149: $7f
	rst  $38                                         ; $614a: $ff
	ld   a, a                                        ; $614b: $7f
	db   $dd                                         ; $614c: $dd
	ld   e, $62                                      ; $614d: $1e $62
	inc  e                                           ; $614f: $1c
	rst  $38                                         ; $6150: $ff
	ld   e, a                                        ; $6151: $5f
	rst  $38                                         ; $6152: $ff
	ld   a, a                                        ; $6153: $7f
	sbc  a                                           ; $6154: $9f
	ld   [hl], $83                                   ; $6155: $36 $83
	inc  d                                           ; $6157: $14
	ld   e, a                                        ; $6158: $5f
	ld   l, e                                        ; $6159: $6b
	sub  l                                           ; $615a: $95
	ld   bc, $1811                                   ; $615b: $01 $11 $18
	ld   b, h                                        ; $615e: $44
	nop                                              ; $615f: $00
	ld   a, l                                        ; $6160: $7d
	ld   a, [hl]                                     ; $6161: $7e
	ldh  [rSC], a                                    ; $6162: $e0 $02
	ld   h, b                                        ; $6164: $60
	ld   bc, $341b                                   ; $6165: $01 $1b $34
	rst  $30                                         ; $6168: $f7
	ld   a, a                                        ; $6169: $7f
	rst  $38                                         ; $616a: $ff
	ld   a, a                                        ; $616b: $7f
	sbc  a                                           ; $616c: $9f
	ld   [hl], $44                                   ; $616d: $36 $44
	nop                                              ; $616f: $00
	rst  $38                                         ; $6170: $ff
	ld   e, a                                        ; $6171: $5f
	rst  $38                                         ; $6172: $ff
	ld   a, a                                        ; $6173: $7f
	db   $dd                                         ; $6174: $dd
	ld   e, $62                                      ; $6175: $1e $62
	inc  e                                           ; $6177: $1c
	ld   e, a                                        ; $6178: $5f
	ld   l, e                                        ; $6179: $6b
	sub  l                                           ; $617a: $95
	ld   bc, $1811                                   ; $617b: $01 $11 $18
	ld   b, h                                        ; $617e: $44
	nop                                              ; $617f: $00
	ld   a, l                                        ; $6180: $7d
	ld   a, [hl]                                     ; $6181: $7e
	nop                                              ; $6182: $00
	dec  de                                          ; $6183: $1b
	ld   h, b                                        ; $6184: $60
	ld   bc, $7fff                                   ; $6185: $01 $ff $7f
	rst  $30                                         ; $6188: $f7
	ld   a, a                                        ; $6189: $7f
	rst  $38                                         ; $618a: $ff
	ld   a, a                                        ; $618b: $7f
	db   $dd                                         ; $618c: $dd
	ld   e, $62                                      ; $618d: $1e $62
	inc  e                                           ; $618f: $1c
	rst  $38                                         ; $6190: $ff
	ld   e, a                                        ; $6191: $5f
	rst  $38                                         ; $6192: $ff
	ld   a, a                                        ; $6193: $7f
	sbc  a                                           ; $6194: $9f
	ld   [hl], $83                                   ; $6195: $36 $83
	inc  d                                           ; $6197: $14
	ld   e, a                                        ; $6198: $5f
	ld   l, e                                        ; $6199: $6b
	rst  $38                                         ; $619a: $ff
	ld   a, a                                        ; $619b: $7f
	sub  l                                           ; $619c: $95
	ld   bc, $1811                                   ; $619d: $01 $11 $18
	nop                                              ; $61a0: $00
	nop                                              ; $61a1: $00
	nop                                              ; $61a2: $00
	nop                                              ; $61a3: $00
	nop                                              ; $61a4: $00
	nop                                              ; $61a5: $00
	nop                                              ; $61a6: $00
	nop                                              ; $61a7: $00
	ldh  [$7f], a                                    ; $61a8: $e0 $7f
	rst  $38                                         ; $61aa: $ff
	ld   a, a                                        ; $61ab: $7f
	db   $dd                                         ; $61ac: $dd
	ld   e, $62                                      ; $61ad: $1e $62
	inc  e                                           ; $61af: $1c
	ldh  [$7f], a                                    ; $61b0: $e0 $7f
	rst  $38                                         ; $61b2: $ff
	ld   a, a                                        ; $61b3: $7f
	sbc  a                                           ; $61b4: $9f
	ld   [hl], $83                                   ; $61b5: $36 $83
	inc  d                                           ; $61b7: $14
	ldh  [$7f], a                                    ; $61b8: $e0 $7f
	sub  l                                           ; $61ba: $95
	ld   bc, $00ec                                   ; $61bb: $01 $ec $00
	ld   a, [de]                                     ; $61be: $1a
	nop                                              ; $61bf: $00
	nop                                              ; $61c0: $00
	nop                                              ; $61c1: $00
	nop                                              ; $61c2: $00
	nop                                              ; $61c3: $00
	nop                                              ; $61c4: $00
	nop                                              ; $61c5: $00
	nop                                              ; $61c6: $00
	nop                                              ; $61c7: $00
	rst  $30                                         ; $61c8: $f7
	ld   a, a                                        ; $61c9: $7f
	rst  $38                                         ; $61ca: $ff
	ld   a, a                                        ; $61cb: $7f
	db   $dd                                         ; $61cc: $dd
	ld   e, $62                                      ; $61cd: $1e $62
	inc  e                                           ; $61cf: $1c
	rst  $38                                         ; $61d0: $ff
	ld   e, a                                        ; $61d1: $5f
	rst  $38                                         ; $61d2: $ff
	ld   a, a                                        ; $61d3: $7f
	sbc  a                                           ; $61d4: $9f
	ld   [hl], $83                                   ; $61d5: $36 $83
	inc  d                                           ; $61d7: $14
	rst  $38                                         ; $61d8: $ff
	ld   a, a                                        ; $61d9: $7f
	or   $7f                                         ; $61da: $f6 $7f
	sbc  a                                           ; $61dc: $9f
	inc  h                                           ; $61dd: $24
	add  e                                           ; $61de: $83
	inc  d                                           ; $61df: $14
	nop                                              ; $61e0: $00
	nop                                              ; $61e1: $00
	nop                                              ; $61e2: $00
	nop                                              ; $61e3: $00
	nop                                              ; $61e4: $00
	nop                                              ; $61e5: $00
	nop                                              ; $61e6: $00
	nop                                              ; $61e7: $00
	rst  $30                                         ; $61e8: $f7
	ld   a, a                                        ; $61e9: $7f
	rst  $38                                         ; $61ea: $ff
	ld   a, a                                        ; $61eb: $7f
	sbc  a                                           ; $61ec: $9f
	ld   [hl], $83                                   ; $61ed: $36 $83
	inc  d                                           ; $61ef: $14
	rst  $38                                         ; $61f0: $ff
	ld   e, a                                        ; $61f1: $5f
	rst  $38                                         ; $61f2: $ff
	ld   a, a                                        ; $61f3: $7f
	db   $dd                                         ; $61f4: $dd
	ld   e, $62                                      ; $61f5: $1e $62
	inc  e                                           ; $61f7: $1c
	ld   e, a                                        ; $61f8: $5f
	ld   l, e                                        ; $61f9: $6b
	rst  JumpTable                                         ; $61fa: $df
	jr   jr_0a4_620c                                 ; $61fb: $18 $0f

	dec  b                                           ; $61fd: $05
	sub  d                                           ; $61fe: $92
	dec  l                                           ; $61ff: $2d
	nop                                              ; $6200: $00
	nop                                              ; $6201: $00
	nop                                              ; $6202: $00
	nop                                              ; $6203: $00
	nop                                              ; $6204: $00
	nop                                              ; $6205: $00
	nop                                              ; $6206: $00
	nop                                              ; $6207: $00
	rst  $38                                         ; $6208: $ff
	ld   e, a                                        ; $6209: $5f
	rst  $38                                         ; $620a: $ff
	ld   a, a                                        ; $620b: $7f

jr_0a4_620c:
	sbc  a                                           ; $620c: $9f
	ld   [hl], $83                                   ; $620d: $36 $83
	inc  d                                           ; $620f: $14
	ld   e, a                                        ; $6210: $5f

jr_0a4_6211:
	ld   l, e                                        ; $6211: $6b
	rst  $38                                         ; $6212: $ff
	ld   a, a                                        ; $6213: $7f
	sbc  a                                           ; $6214: $9f
	ld   [hl], $80                                   ; $6215: $36 $80
	ld   c, h                                        ; $6217: $4c
	rst  $30                                         ; $6218: $f7

jr_0a4_6219:
	ld   a, a                                        ; $6219: $7f
	rst  $38                                         ; $621a: $ff
	ld   a, a                                        ; $621b: $7f
	db   $dd                                         ; $621c: $dd
	ld   e, $62                                      ; $621d: $1e $62
	inc  e                                           ; $621f: $1c
	nop                                              ; $6220: $00
	nop                                              ; $6221: $00
	nop                                              ; $6222: $00
	nop                                              ; $6223: $00
	nop                                              ; $6224: $00
	nop                                              ; $6225: $00
	nop                                              ; $6226: $00
	nop                                              ; $6227: $00
	ldh  [$03], a                                    ; $6228: $e0 $03
	rst  $38                                         ; $622a: $ff
	ld   a, a                                        ; $622b: $7f
	sbc  a                                           ; $622c: $9f
	ld   [hl], $00                                   ; $622d: $36 $00
	nop                                              ; $622f: $00
	rst  $38                                         ; $6230: $ff
	ld   e, [hl]                                     ; $6231: $5e
	rst  $38                                         ; $6232: $ff
	ld   a, a                                        ; $6233: $7f
	ldh  [$7d], a                                    ; $6234: $e0 $7d
	nop                                              ; $6236: $00
	nop                                              ; $6237: $00
	nop                                              ; $6238: $00
	nop                                              ; $6239: $00
	nop                                              ; $623a: $00
	nop                                              ; $623b: $00
	nop                                              ; $623c: $00
	nop                                              ; $623d: $00
	nop                                              ; $623e: $00
	nop                                              ; $623f: $00
	nop                                              ; $6240: $00
	nop                                              ; $6241: $00
	nop                                              ; $6242: $00
	nop                                              ; $6243: $00
	nop                                              ; $6244: $00
	nop                                              ; $6245: $00
	nop                                              ; $6246: $00
	nop                                              ; $6247: $00
	ret  nz                                          ; $6248: $c0

	inc  bc                                          ; $6249: $03
	ld   a, [hl]                                     ; $624a: $7e
	ld   l, a                                        ; $624b: $6f
	add  hl, bc                                      ; $624c: $09
	ld   c, d                                        ; $624d: $4a
	ld   b, d                                        ; $624e: $42
	jr   nz, jr_0a4_6211                             ; $624f: $20 $c0

	inc  bc                                          ; $6251: $03
	add  hl, sp                                      ; $6252: $39
	ld   a, e                                        ; $6253: $7b
	cpl                                              ; $6254: $2f
	ld   e, d                                        ; $6255: $5a
	ld   b, d                                        ; $6256: $42
	jr   nz, jr_0a4_6219                             ; $6257: $20 $c0

	inc  bc                                          ; $6259: $03
	ld   c, a                                        ; $625a: $4f
	ld   [$26fc], sp                                 ; $625b: $08 $fc $26
	ld   b, d                                        ; $625e: $42
	jr   nz, jr_0a4_6261                             ; $625f: $20 $00

jr_0a4_6261:
	nop                                              ; $6261: $00
	nop                                              ; $6262: $00
	nop                                              ; $6263: $00
	nop                                              ; $6264: $00
	nop                                              ; $6265: $00
	nop                                              ; $6266: $00
	nop                                              ; $6267: $00
	nop                                              ; $6268: $00
	xor  e                                           ; $6269: $ab
	ld   bc, $0004                                   ; $626a: $01 $04 $00
	or   b                                           ; $626d: $b0
	ld   bc, $0085                                   ; $626e: $01 $85 $00
	rlc  c                                           ; $6271: $cb $01
	nop                                              ; $6273: $00
	nop                                              ; $6274: $00
	db   $eb                                         ; $6275: $eb
	ld   bc, $0101                                   ; $6276: $01 $01 $01
	dec  bc                                          ; $6279: $0b
	ld   bc, $0102                                   ; $627a: $01 $02 $01
	dec  hl                                          ; $627d: $2b
	ld   bc, $ff83                                   ; $627e: $01 $83 $ff
	nop                                              ; $6281: $00
	ld   c, c                                        ; $6282: $49
	ld   [bc], a                                     ; $6283: $02
	or   d                                           ; $6284: $b2
	inc  sp                                          ; $6285: $33
	nop                                              ; $6286: $00
	ld   l, c                                        ; $6287: $69
	ld   bc, $0034                                   ; $6288: $01 $34 $00
	adc  c                                           ; $628b: $89
	ld   bc, $0035                                   ; $628c: $01 $35 $00
	xor  c                                           ; $628f: $a9
	ld   bc, $0036                                   ; $6290: $01 $36 $00
	ret                                              ; $6293: $c9


	ld   bc, $ff37                                   ; $6294: $01 $37 $ff
	nop                                              ; $6297: $00
	ld   l, c                                        ; $6298: $69
	ld   [bc], a                                     ; $6299: $02
	ld   h, $27                                      ; $629a: $26 $27
	nop                                              ; $629c: $00
	adc  c                                           ; $629d: $89
	ld   [bc], a                                     ; $629e: $02
	jr   z, jr_0a4_62ca                              ; $629f: $28 $29

	nop                                              ; $62a1: $00
	xor  c                                           ; $62a2: $a9
	ld   [bc], a                                     ; $62a3: $02
	ld   a, [hl+]                                    ; $62a4: $2a
	dec  hl                                          ; $62a5: $2b
	nop                                              ; $62a6: $00
	ret                                              ; $62a7: $c9


	ld   [bc], a                                     ; $62a8: $02
	inc  l                                           ; $62a9: $2c
	dec  l                                           ; $62aa: $2d
	rst  $38                                         ; $62ab: $ff
	nop                                              ; $62ac: $00
	ld   c, c                                        ; $62ad: $49
	ld   bc, $002a                                   ; $62ae: $01 $2a $00
	ld   l, c                                        ; $62b1: $69
	ld   bc, $0026                                   ; $62b2: $01 $26 $00
	adc  c                                           ; $62b5: $89
	ld   bc, $0027                                   ; $62b6: $01 $27 $00
	xor  c                                           ; $62b9: $a9
	ld   bc, $0028                                   ; $62ba: $01 $28 $00
	ret                                              ; $62bd: $c9


	ld   bc, $ff29                                   ; $62be: $01 $29 $ff
	nop                                              ; $62c1: $00
	add  h                                           ; $62c2: $84
	ld   bc, $0080                                   ; $62c3: $01 $80 $00
	and  h                                           ; $62c6: $a4
	ld   bc, $0081                                   ; $62c7: $01 $81 $00

jr_0a4_62ca:
	call nz, $8201                                   ; $62ca: $c4 $01 $82
	nop                                              ; $62cd: $00
	db   $e4                                         ; $62ce: $e4
	ld   bc, $ff83                                   ; $62cf: $01 $83 $ff
	nop                                              ; $62d2: $00
	nop                                              ; $62d3: $00
	nop                                              ; $62d4: $00

if def(VWF)

EnLoadSakuraMiniGameTileMap::
	ld   a, BANK(.base1)
	ldbc 16, 4
	ld   de, .base1
	ld   hl, $d000+$240
	call FarCopyLayout

	ld   a, BANK(.base2)
	ldbc 18, 4
	ld   de, .base2
	ld   hl, $d000+$2c1
	call FarCopyLayout

	ld   a, BANK(.base3)
	ldbc 18, 4
	ld   de, .base3
	ld   hl, $d000+$341
	call FarCopyLayout
	ret
.base1:
	db $91, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70
	db $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80
	db $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90
	db $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0
.base2:
	db $90, $91, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $04, $05
	db $a0, $a1, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $7a, $7a
	db $b0, $b1, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $06, $07
	db $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cb, $cc, $ce, $cf, $08, $09
.base3:
	db $90, $91, $92, $93, $cd, $ce, $cf, $da, $db, $dc, $dd, $de, $df, $ea, $9e, $9f, $04, $05
	db $a0, $a1, $a2, $a3, $eb, $ec, $ed, $ee, $ef, $fa, $fb, $fc, $fd, $fe, $ae, $af, $7a, $7a
	db $b0, $b1, $b2, $b3, $ff, $00, $01, $02, $03, $04, $05, $06, $07, $08, $be, $bf, $06, $07
	db $c0, $c1, $c2, $c3, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $ce, $cf, $08, $09


EnLoadSakuraMiniGameTileAttr::
	ld   a, BANK(.base1)
	ldbc 16, 4
	ld   de, .base1
	ld   hl, $d400+$240
	call FarCopyLayout

	ld   a, BANK(.base2)
	ldbc 18, 4
	ld   de, .base2
	ld   hl, $d400+$2c1
	call FarCopyLayout

	ld   a, BANK(.base3)
	ldbc 18, 4
	ld   de, .base3
	ld   hl, $d400+$341
	call FarCopyLayout
	ret
.base1:
	db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
	db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $04, $04, $04, $04, $0c
	db $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0c, $0c, $0c, $0c
	db $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
.base2:
	db $03, $04, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $04, $04
	db $03, $03, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0c, $0c, $0c, $0c, $0c, $0c
	db $03, $03, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0c, $0c, $0c, $04, $04
	db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $0b, $0b, $03, $03, $03, $03
.base3:
	db $03, $04, $04, $04, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $04, $04, $04, $04
	db $03, $03, $03, $03, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0c, $0c, $04, $04, $0c, $0c
	db $03, $03, $03, $03, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0c, $04, $04, $04, $04
	db $03, $03, $03, $03, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $03, $03, $03, $03

endc